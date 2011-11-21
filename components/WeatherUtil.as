/*
Copyright (c) 2008 Yahoo! Inc.  All rights reserved.  
The copyrights embodied in the content of this file are licensed under the BSD (revised) open source license
*/
package components
{
	import com.yahoo.webapis.weather.Weather;
	
	public class WeatherUtil
	{
		public static function parseLocation(weather:Weather):String
		{
			var location:String = weather.location.city;
			if(weather.location.region)
			{
				location += ", " + weather.location.region;
			}
			else if(weather.location.country)
			{
				location += ", " + weather.location.country;
			}
			return location;
		}
		
		public static function parseConutry(weather:Weather):String
		{
			var country:String = weather.location.country;
			return country;
		}

	}
}