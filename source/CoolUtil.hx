package;

import lime.utils.Assets;

using StringTools;

class CoolUtil
{
	public static var difficultyArray:Array<String> = ['EASY', "NORMAL", "HARD"];

	public static function difficultyString(?diff:Int = -1):String
	{
		if(diff == -1)
			diff = PlayState.storyDifficulty;

		if(diff < 2 && diff >= 0)
			return difficultyArray[diff];
		else
			return "HARD";
	}

	public static function coolTextFile(path:String):Array<String>
	{
		var daList:Array<String> = Assets.getText(path).trim().split('\n');

		for (i in 0...daList.length)
		{
			daList[i] = daList[i].trim();
		}

		return daList;
	}

	public static function numberArray(max:Int, ?min = 0):Array<Int>
	{
		var dumbArray:Array<Int> = [];

		for (i in min...max)
		{
			dumbArray.push(i);
		}

		return dumbArray;
	}

	public static function camLerpShit(ratio:Float)
	{
		return ((1.0 / Main.fpsCounter.currentFPS) / (1 / 60)) * ratio;
	}

	public static function colorLerpShit(ratio:Float)
	{
		return ((1 / 60) / (1.0 / Main.fpsCounter.currentFPS)) * ratio;
	}

	public static function coolLerp(a:Float, b:Float, ratio:Float)
	{
		return a + camLerpShit(ratio) * (b - a);
	}
}
