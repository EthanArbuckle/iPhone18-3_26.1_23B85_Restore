id WAImageForLegacyConditionCode(uint64_t a1, unint64_t a2)
{
  if (a2 > 1)
  {
    v4 = [WeatherImageLoader conditionImageNameWithConditionIndex:a1];
    v2 = [WeatherImageLoader conditionImageNamed:v4 style:a2];
  }

  else
  {
    v2 = WAMapsImageForLegacyConditionCode(a1, a2 == 1);
  }

  return v2;
}

id WAMapsImageForLegacyConditionCode(uint64_t a1, uint64_t a2)
{
  switch(a1)
  {
    case 0:
      v3 = 1;
      goto LABEL_47;
    case 1:
      v3 = 2;
      goto LABEL_47;
    case 2:
      v3 = 3;
      goto LABEL_47;
    case 3:
      v3 = 4;
      goto LABEL_47;
    case 4:
      v3 = 5;
      goto LABEL_47;
    case 5:
      v3 = 6;
      goto LABEL_47;
    case 6:
      v3 = 7;
      goto LABEL_47;
    case 7:
      v3 = 8;
      goto LABEL_47;
    case 8:
      v3 = 9;
      goto LABEL_47;
    case 9:
      v3 = 10;
      goto LABEL_47;
    case 10:
      v3 = 11;
      goto LABEL_47;
    case 11:
      v3 = 12;
      goto LABEL_47;
    case 12:
      v3 = 13;
      goto LABEL_47;
    case 13:
      v3 = 14;
      goto LABEL_47;
    case 14:
      v3 = 15;
      goto LABEL_47;
    case 15:
      v3 = 16;
      goto LABEL_47;
    case 16:
      v3 = 17;
      goto LABEL_47;
    case 17:
      v3 = 18;
      goto LABEL_47;
    case 18:
      v3 = 19;
      goto LABEL_47;
    case 19:
      v3 = 20;
      goto LABEL_47;
    case 20:
      v3 = 21;
      goto LABEL_47;
    case 21:
      v3 = 22;
      goto LABEL_47;
    case 22:
      v3 = 23;
      goto LABEL_47;
    case 23:
      v3 = 24;
      goto LABEL_47;
    case 24:
      v3 = 25;
      goto LABEL_47;
    case 25:
      v3 = 26;
      goto LABEL_47;
    case 26:
      v3 = 27;
      goto LABEL_47;
    case 27:
      v3 = 29;
      goto LABEL_43;
    case 28:
      v3 = 29;
      goto LABEL_47;
    case 29:
      v3 = 31;
      goto LABEL_43;
    case 30:
      v3 = 31;
      goto LABEL_47;
    case 31:
    case 33:
      v3 = 33;
LABEL_43:
      v4 = 0;
      goto LABEL_48;
    case 32:
    case 34:
      v3 = 33;
      goto LABEL_47;
    case 35:
      v3 = 36;
      goto LABEL_47;
    case 36:
      v3 = 37;
      goto LABEL_47;
    case 37:
      v3 = 38;
      goto LABEL_47;
    case 38:
      v3 = 39;
      goto LABEL_47;
    case 39:
    case 45:
      v3 = 40;
      goto LABEL_47;
    case 40:
      v3 = 41;
      goto LABEL_47;
    case 41:
    case 46:
      v3 = 42;
      goto LABEL_47;
    case 42:
      v3 = 43;
      goto LABEL_47;
    case 43:
      v3 = 44;
      goto LABEL_47;
    case 47:
      v3 = 45;
      goto LABEL_47;
    default:
      v3 = 0;
LABEL_47:
      v4 = 1;
LABEL_48:
      v5 = WAImageForConditionCode(v3, v4, a2);

      return v5;
  }
}

id WAMapsImageWithinBundle(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (a2 == 1)
  {
    v5 = @"-black";
  }

  else
  {
    if (a2)
    {
      goto LABEL_6;
    }

    v5 = @"-white";
  }

  v6 = [v3 stringByAppendingString:v5];

  v4 = v6;
LABEL_6:
  v7 = MEMORY[0x277D755B8];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v7 imageNamed:v4 inBundle:v8];

  return v9;
}

id WAImageForConditionCode(uint64_t a1, int a2, uint64_t a3)
{
  v4 = @"blowingsnow";
  switch(a1)
  {
    case 1:
      v4 = @"tornado";
      break;
    case 2:
      v4 = @"tropical_storm";
      break;
    case 3:
      v4 = @"hurricane";
      break;
    case 4:
      v5 = @"severe_thunderstorm_night";
      v6 = @"severe_thunderstorm_day";
      goto LABEL_25;
    case 5:
    case 38:
    case 39:
    case 45:
      v5 = @"scattered-thunderstorm-night";
      v6 = @"scattered-thunderstorm-day";
      goto LABEL_25;
    case 6:
    case 7:
    case 8:
    case 9:
    case 11:
    case 36:
      v5 = @"mix-rainfall_night";
      v6 = @"mix-rainfall_day";
      goto LABEL_25;
    case 10:
      v5 = @"drizzle_night";
      v6 = @"drizzle_day";
      goto LABEL_25;
    case 12:
    case 13:
      v5 = @"rain_night";
      v6 = @"rain_day";
      goto LABEL_25;
    case 14:
      v4 = @"flurry";
      break;
    case 15:
    case 17:
    case 26:
    case 42:
      v4 = @"flurry_snow_shower";
      break;
    case 16:
      break;
    case 18:
      v5 = @"hail_night";
      v6 = @"hail_day";
      goto LABEL_25;
    case 19:
      v5 = @"sleet_night";
      v6 = @"sleet_day";
      goto LABEL_25;
    case 20:
      v4 = @"dust";
      break;
    case 21:
      v5 = @"fog_night";
      v6 = @"fog_day";
      goto LABEL_25;
    case 22:
      v4 = @"haze";
      break;
    case 23:
      v4 = @"smoke";
      break;
    case 24:
    case 25:
      v4 = @"breezy";
      break;
    case 27:
    case 29:
      v5 = @"mostly-cloudy_night";
      v6 = @"mostly-cloudy_day";
      goto LABEL_25;
    case 31:
      v5 = @"partly-cloudy-night";
      v6 = @"partly-cloudy-day";
      goto LABEL_25;
    case 33:
    case 35:
      v5 = @"clear-night";
      v6 = @"mostly-sunny";
      goto LABEL_25;
    case 37:
      v4 = @"hot";
      break;
    case 40:
      v5 = @"scattered-showers-night";
      v6 = @"scattered-showers-day";
      goto LABEL_25;
    case 41:
      v5 = @"heavy-rain_night";
      v6 = @"heavy-rain_day";
      goto LABEL_25;
    case 43:
    case 44:
      v5 = @"blizzard_night";
      v6 = @"blizzard_day";
LABEL_25:
      if (a2)
      {
        v5 = v6;
      }

      v4 = v5;
      break;
    default:
      v4 = @"no_report";
      break;
  }

  v7 = WAMapsImageWithinBundle(v4, a3);

  return v7;
}

id WADetailColor()
{
  v0 = [MEMORY[0x277D75348] labelColor];
  v1 = [v0 colorWithAlphaComponent:0.5];

  return v1;
}

uint64_t _WAAirQualityIsAQI(void *a1)
{
  v1 = _WAAirQualityIsAQI_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    _WAAirQualityIsAQI_cold_1();
  }

  v3 = _WAAirQualityIsAQI_AQICountries;
  v4 = [v2 uppercaseString];

  v5 = [v3 containsObject:v4];
  return v5;
}

uint64_t _WAAirQualityIsDAQI(void *a1)
{
  v1 = _WAAirQualityIsDAQI_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    _WAAirQualityIsDAQI_cold_1();
  }

  v3 = _WAAirQualityIsDAQI_DAQICountries;
  v4 = [v2 uppercaseString];

  v5 = [v3 containsObject:v4];
  return v5;
}

uint64_t _WAAirQualityIsUBA(void *a1)
{
  v1 = _WAAirQualityIsUBA_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    _WAAirQualityIsUBA_cold_1();
  }

  v3 = _WAAirQualityIsUBA_UBACountries;
  v4 = [v2 uppercaseString];

  v5 = [v3 containsObject:v4];
  return v5;
}

uint64_t WAAirQualityIsSignificantForCategory(unint64_t a1, void *a2)
{
  v3 = a2;
  if (_WAAirQualityIsAQI(v3))
  {
    v4 = a1 > 2;
    goto LABEL_5;
  }

  if (_WAAirQualityIsDAQI(v3))
  {
    v4 = a1 > 6;
LABEL_5:
    v5 = v4;
    goto LABEL_11;
  }

  IsUBA = _WAAirQualityIsUBA(v3);
  if (a1 > 3)
  {
    v5 = IsUBA;
  }

  else
  {
    v5 = 0;
  }

LABEL_11:

  return v5;
}

id WAAirQualityDescriptionForCategory(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"WFAirQualityCategoryUnknown" value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];

  if (_WAAirQualityIsAQI(v3))
  {
    v6 = a1 - 1;
    if ((a1 - 1) >= 6)
    {
      goto LABEL_11;
    }

    v7 = off_279E67A50;
    goto LABEL_10;
  }

  if (_WAAirQualityIsDAQI(v3))
  {
    v6 = a1 - 1;
    if ((a1 - 1) >= 0xA)
    {
      goto LABEL_11;
    }

    v7 = off_279E67A80;
    goto LABEL_10;
  }

  if (_WAAirQualityIsUBA(v3))
  {
    v6 = a1 - 1;
    if ((a1 - 1) < 5)
    {
      v7 = off_279E67AD0;
LABEL_10:
      v8 = v7[v6];
      v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v10 = [v9 localizedStringForKey:v8 value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];

      v5 = v10;
    }
  }

LABEL_11:

  return v5;
}

id WAAirQualityLongDescriptionForCategory(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"WFAirQualityCategoryUnknown-Long" value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];

  if (_WAAirQualityIsAQI(v3))
  {
    v6 = a1 - 1;
    if ((a1 - 1) >= 6)
    {
      goto LABEL_11;
    }

    v7 = off_279E67AF8;
    goto LABEL_10;
  }

  if (_WAAirQualityIsDAQI(v3))
  {
    v6 = a1 - 1;
    if ((a1 - 1) >= 0xA)
    {
      goto LABEL_11;
    }

    v7 = off_279E67B28;
    goto LABEL_10;
  }

  if (_WAAirQualityIsUBA(v3))
  {
    v6 = a1 - 1;
    if ((a1 - 1) < 5)
    {
      v7 = off_279E67B78;
LABEL_10:
      v8 = v7[v6];
      v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v10 = [v9 localizedStringForKey:v8 value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];

      v5 = v10;
    }
  }

LABEL_11:

  return v5;
}

uint64_t WAHexStringFromColor(void *a1)
{
  Components = CGColorGetComponents([a1 CGColor]);
  v2 = *Components * 255.0;
  v3 = llroundf(v2);
  v4 = Components[1] * 255.0;
  v5 = llroundf(v4);
  v6 = Components[2] * 255.0;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"#%02lX%02lX%02lX", v3, v5, llroundf(v6)];
}

id WAConditionsLineStringFromConditionCode(uint64_t a1)
{
  if (a1 <= 47)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v1 = [v3 localizedStringForKey:*(&WeatherDescription + a1) value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

__CFString *WASymbolGlyphFromConditionCode(uint64_t a1, int a2, int a3)
{
  if (a1 <= 47)
  {
    v6 = 48;
    if (a2)
    {
      v6 = 38;
    }

    v7 = 49;
    if (a2)
    {
      v7 = 40;
    }

    if (a1 != 38)
    {
      v6 = a1;
    }

    if (v6 == 40)
    {
      v6 = v7;
    }

    v8 = &SymbolGlyphs;
    if (a3)
    {
      v8 = &FilledSymbolGlyphs;
    }

    v4 = v8[v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id WASymbolGlyphHexColorsFromConditionCode(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = WASymbolGlyphColorsFromConditionCode(a1);
  v2 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = WAHexStringFromColor(*(*(&v12 + 1) + 8 * i));
        [v2 addObject:{v8, v12}];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = [MEMORY[0x277CBEA60] arrayWithArray:v2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

id WASymbolGlyphColorsFromConditionCode(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] array];
  if ([v1 isEqualToString:@"sun.max.fill"])
  {
    v3 = [MEMORY[0x277D75348] systemYellowColor];
    [v2 addObject:v3];
  }

  if ([v1 isEqualToString:@"cloud.sun.fill"])
  {
    v4 = [MEMORY[0x277D75348] systemWhiteColor];
    [v2 addObject:v4];

    v5 = [MEMORY[0x277D75348] systemYellowColor];
    [v2 addObject:v5];
  }

  if ([v1 isEqualToString:@"cloud.drizzle.fill"])
  {
    v6 = [MEMORY[0x277D75348] systemWhiteColor];
    [v2 addObject:v6];

    v7 = [MEMORY[0x277D75348] systemTealColor];
    [v2 addObject:v7];
  }

  if ([v1 isEqualToString:@"cloud.rain.fill"])
  {
    v8 = [MEMORY[0x277D75348] systemWhiteColor];
    [v2 addObject:v8];

    v9 = [MEMORY[0x277D75348] systemTealColor];
    [v2 addObject:v9];
  }

  if ([v1 isEqualToString:@"cloud.sun.rain.fill"])
  {
    v10 = [MEMORY[0x277D75348] systemWhiteColor];
    [v2 addObject:v10];

    v11 = [MEMORY[0x277D75348] systemYellowColor];
    [v2 addObject:v11];

    v12 = [MEMORY[0x277D75348] systemTealColor];
    [v2 addObject:v12];
  }

  if ([v1 isEqualToString:@"cloud.moon.rain.fill"])
  {
    v13 = [MEMORY[0x277D75348] systemWhiteColor];
    [v2 addObject:v13];

    v14 = [MEMORY[0x277D75348] systemWhiteColor];
    [v2 addObject:v14];

    v15 = [MEMORY[0x277D75348] systemTealColor];
    [v2 addObject:v15];
  }

  if ([v1 isEqualToString:@"cloud.sun.bolt.fill"])
  {
    v16 = [MEMORY[0x277D75348] systemWhiteColor];
    [v2 addObject:v16];

    v17 = [MEMORY[0x277D75348] systemYellowColor];
    [v2 addObject:v17];

    v18 = [MEMORY[0x277D75348] systemWhiteColor];
    [v2 addObject:v18];
  }

  if ([v1 isEqualToString:@"cloud.bolt.rain.fill"])
  {
    v19 = [MEMORY[0x277D75348] systemWhiteColor];
    [v2 addObject:v19];

    v20 = [MEMORY[0x277D75348] systemWhiteColor];
    [v2 addObject:v20];

    v21 = [MEMORY[0x277D75348] systemTealColor];
    [v2 addObject:v21];
  }

  if (([v1 isEqualToString:@"sun.dust.fill"] & 1) != 0 || objc_msgSend(v1, "isEqualToString:", @"sun.haze.fill"))
  {
    v22 = [MEMORY[0x277D75348] systemYellowColor];
    [v2 addObject:v22];
  }

  if ([v1 isEqualToString:@"thermometer.snowflake"])
  {
    v23 = [MEMORY[0x277D75348] systemTealColor];
    [v2 addObject:v23];
  }

  if ([v1 isEqualToString:@"thermometer.sun"])
  {
    v24 = [MEMORY[0x277D75348] systemRedColor];
    [v2 addObject:v24];

    v25 = [MEMORY[0x277D75348] systemYellowColor];
    [v2 addObject:v25];
  }

  if (([v1 isEqualToString:@"sunrise.fill"] & 1) != 0 || objc_msgSend(v1, "isEqualToString:", @"sunset.fill"))
  {
    v26 = [MEMORY[0x277D75348] systemYellowColor];
    [v2 addObject:v26];
  }

  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v2];

  return v27;
}

id WAConditionsLineStringFromCurrentForecasts(void *a1)
{
  v1 = [a1 conditionCode];

  return WAConditionsLineStringFromConditionCode(v1);
}

id WAConditionsLine2StringFromHourlyForecasts(void *a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (WAConditionsLine2StringFromHourlyForecasts_onceToken != -1)
  {
    WAConditionsLine2StringFromHourlyForecasts_cold_1();
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v2 = v1;
  v3 = [v2 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (!v3)
  {

    goto LABEL_35;
  }

  v4 = v3;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = *v35;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v35 != v10)
      {
        objc_enumerationMutation(v2);
      }

      v12 = *(*(&v34 + 1) + 8 * i);
      v13 = [v12 conditionCode];
      if (((0x1017FFF80001uLL >> v13) & 1) == 0)
      {
        v14 = PrecipitationTypeMap[v13];
        if (!v5)
        {
          v5 = PrecipitationTypeMap[v13];
        }

        if (v14 == 4)
        {
          v15 = v9 + 1;
        }

        else
        {
          v15 = v9;
        }

        if (v14 == 3)
        {
          v16 = v7 + 1;
        }

        else
        {
          v16 = v7;
        }

        if (v14 == 3)
        {
          v15 = v9;
        }

        if (v14 == 2)
        {
          ++v8;
        }

        else
        {
          v7 = v16;
        }

        if (v14 != 2)
        {
          v9 = v15;
        }
      }

      v17 = [v12 temperature];
      [v17 temperatureForUnit:2];
      v19 = v18;

      if (v19 < 0.0)
      {
        ++v6;
      }
    }

    v4 = [v2 countByEnumeratingWithState:&v34 objects:v38 count:16];
  }

  while (v4);

  if (v8 >= 1 && v8 > v7)
  {
    goto LABEL_35;
  }

  if (v7 >= 1 && v7 > v8)
  {
    goto LABEL_32;
  }

  if (v9 < 1 || v9 <= v8 || v9 <= v7)
  {
    if (v5)
    {
      v20 = ChanceOfRainWithHourlyForecasts(v2);
      if (v5 == 4)
      {
        goto LABEL_44;
      }

      if (v5 == 3)
      {
        goto LABEL_33;
      }

LABEL_36:
      v21 = @"CHANCE_OF_RAIN_WIDGET";
      goto LABEL_37;
    }

    if (v6)
    {
LABEL_32:
      v20 = ChanceOfRainWithHourlyForecasts(v2);
LABEL_33:
      v21 = @"CHANCE_OF_SNOW";
      goto LABEL_37;
    }

LABEL_35:
    v20 = ChanceOfRainWithHourlyForecasts(v2);
    goto LABEL_36;
  }

  v20 = ChanceOfRainWithHourlyForecasts(v2);
LABEL_44:
  v21 = @"CHANCE_OF_HAIL";
LABEL_37:
  v22 = MEMORY[0x277CCACA8];
  v23 = v20 / 100.0;
  v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v25 = [v24 localizedStringForKey:@"DETAIL_FORMAT_STRING_WIDGET" value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
  v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v27 = [v26 localizedStringForKey:v21 value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
  v28 = WAConditionsLine2StringFromHourlyForecasts__percentFormatter;
  v29 = [MEMORY[0x277CCABB0] numberWithDouble:v23];
  v30 = [v28 stringFromNumber:v29];
  v31 = [v22 localizedStringWithFormat:v25, v27, v30];

  v32 = *MEMORY[0x277D85DE8];

  return v31;
}

uint64_t __WAConditionsLine2StringFromHourlyForecasts_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v1 = WAConditionsLine2StringFromHourlyForecasts__percentFormatter;
  WAConditionsLine2StringFromHourlyForecasts__percentFormatter = v0;

  [WAConditionsLine2StringFromHourlyForecasts__percentFormatter setNumberStyle:3];
  v2 = WAConditionsLine2StringFromHourlyForecasts__percentFormatter;

  return [v2 setMaximumFractionDigits:0];
}

id WAHourlyConditionsTimeLabelFont(int a1)
{
  if (a1)
  {
    v1 = 32770;
  }

  else
  {
    v1 = 0x8000;
  }

  v2 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] addingSymbolicTraits:v1 options:2];
  v3 = [MEMORY[0x277D74300] fontWithDescriptor:v2 size:0.0];

  return v3;
}

id WAHourlyConditionsTemperatureLabelAttributesDictionary(int a1)
{
  v10[2] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = 32770;
  }

  else
  {
    v1 = 0x8000;
  }

  v2 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] addingSymbolicTraits:v1 options:2];
  v3 = [MEMORY[0x277D74300] fontWithDescriptor:v2 size:0.0];
  v4 = [MEMORY[0x277D75348] labelColor];
  v5 = *MEMORY[0x277D740C0];
  v9[0] = *MEMORY[0x277D740A8];
  v9[1] = v5;
  v10[0] = v3;
  v10[1] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

void WASetupVibrancyOnView(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v4 layer];
  [v5 setFilters:0];

  v6 = [v3 effectConfig];

  v7 = [v6 contentConfig];

  [v7 configureLayerView:v4];
}

id WATodayLoadSavedLastForecastModelFromPreferences(void *a1)
{
  if (a1)
  {
    v1 = [a1 localWeatherCity];
    if (v1)
    {
      v2 = objc_opt_new();
      v3 = [v1 name];
      [v2 setDisplayName:v3];

      v4 = [v1 timeZone];
      [v2 setTimeZone:v4];

      v5 = [v1 location];
      [v2 setGeoLocation:v5];

      v6 = [v1 ISO3166CountryAbbreviation];
      [v2 setCountryAbbreviation:v6];

      v7 = [v1 weatherDisplayName];
      [v2 setWeatherDisplayName:v7];

      v8 = [v1 weatherLocationName];
      [v2 setWeatherLocationName:v8];

      v9 = objc_opt_new();
      v10 = [v1 temperature];
      [v9 setTemperature:v10];

      v11 = [v1 feelsLike];
      [v9 setFeelsLike:v11];

      [v1 windSpeed];
      [v9 setWindSpeed:?];
      [v1 windDirection];
      [v9 setWindDirection:?];
      [v1 humidity];
      [v9 setHumidity:?];
      [v1 dewPoint];
      [v9 setDewPoint:?];
      [v1 visibility];
      [v9 setVisibility:?];
      [v1 pressure];
      [v9 setPressure:?];
      [v9 setPressureRising:{objc_msgSend(v1, "pressureRising")}];
      [v9 setUVIndex:{objc_msgSend(v1, "uvIndex")}];
      [v1 precipitationPast24Hours];
      *&v12 = v12;
      [v9 setPrecipitationPast24Hours:v12];
      [v9 setConditionCode:{objc_msgSend(v1, "conditionCode")}];
      [v9 setObservationTime:{objc_msgSend(v1, "observationTime")}];
      v13 = objc_opt_new();
      [v13 setLocation:v2];
      v14 = [v1 airQualityIdx];
      [v13 setLocalizedAirQualityIndex:{objc_msgSend(v14, "unsignedIntegerValue")}];

      v15 = [v1 airQualityScaleCategory];
      [v13 setLocalizedAirQualityScaleCategory:v15];

      v16 = [v1 airQualityCategory];
      [v13 setCategory:{objc_msgSend(v16, "unsignedIntegerValue")}];

      v17 = objc_opt_new();
      [v17 setCurrentConditions:v9];
      v18 = [v1 hourlyForecasts];
      [v17 setHourlyForecasts:v18];

      v19 = [v1 dayForecasts];
      [v17 setDailyForecasts:v19];

      v20 = [MEMORY[0x277CBEAA8] date];
      v21 = [v2 sunriseForDate:v20];
      [v17 setSunrise:v21];

      v22 = [MEMORY[0x277CBEAA8] date];
      v23 = [v2 sunsetForDate:v22];
      [v17 setSunset:v23];

      [v17 setLocation:v2];
      [v17 setCity:v1];
      [v17 setAirQualityConditions:v13];
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

id WATodayLoadSavedFirstCityFromPreferences(void *a1)
{
  if (a1)
  {
    v1 = [a1 loadSavedCities];
    v2 = [v1 na_filter:&__block_literal_global_318];
    v3 = [v2 firstObject];

    if (v3)
    {
      v4 = objc_opt_new();
      v5 = [v3 name];
      [v4 setDisplayName:v5];

      v6 = [v3 timeZone];
      [v4 setTimeZone:v6];

      v7 = [v3 location];
      [v4 setGeoLocation:v7];

      v8 = [v3 ISO3166CountryAbbreviation];
      [v4 setCountryAbbreviation:v8];

      v9 = [v3 weatherDisplayName];
      [v4 setWeatherDisplayName:v9];

      v10 = [v3 weatherLocationName];
      [v4 setWeatherLocationName:v10];

      v11 = objc_opt_new();
      v12 = [v3 temperature];
      [v11 setTemperature:v12];

      v13 = [v3 feelsLike];
      [v11 setFeelsLike:v13];

      [v3 windSpeed];
      [v11 setWindSpeed:?];
      [v3 windDirection];
      [v11 setWindDirection:?];
      [v3 humidity];
      [v11 setHumidity:?];
      [v3 dewPoint];
      [v11 setDewPoint:?];
      [v3 visibility];
      [v11 setVisibility:?];
      [v3 pressure];
      [v11 setPressure:?];
      [v11 setPressureRising:{objc_msgSend(v3, "pressureRising")}];
      [v11 setUVIndex:{objc_msgSend(v3, "uvIndex")}];
      [v3 precipitationPast24Hours];
      *&v14 = v14;
      [v11 setPrecipitationPast24Hours:v14];
      [v11 setConditionCode:{objc_msgSend(v3, "conditionCode")}];
      [v11 setObservationTime:{objc_msgSend(v3, "observationTime")}];
      v15 = objc_opt_new();
      [v15 setLocation:v4];
      v16 = [v3 airQualityIdx];
      [v15 setLocalizedAirQualityIndex:{objc_msgSend(v16, "unsignedIntegerValue")}];

      v17 = [v3 airQualityScaleCategory];
      [v15 setLocalizedAirQualityScaleCategory:v17];

      v18 = [v3 airQualityCategory];
      [v15 setCategory:{objc_msgSend(v18, "unsignedIntegerValue")}];

      v19 = objc_opt_new();
      [v19 setCurrentConditions:v11];
      v20 = [v3 hourlyForecasts];
      [v19 setHourlyForecasts:v20];

      v21 = [v3 dayForecasts];
      [v19 setDailyForecasts:v21];

      v22 = [MEMORY[0x277CBEAA8] date];
      v23 = [v4 sunriseForDate:v22];
      [v19 setSunrise:v23];

      v24 = [MEMORY[0x277CBEAA8] date];
      v25 = [v4 sunsetForDate:v24];
      [v19 setSunset:v25];

      [v19 setLocation:v4];
      [v19 setCity:v3];
      [v19 setAirQualityConditions:v15];
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

id WANumberFormatterForDisplayingAQI()
{
  if (WANumberFormatterForDisplayingAQI_onceToken != -1)
  {
    WANumberFormatterForDisplayingAQI_cold_1();
  }

  v1 = WANumberFormatterForDisplayingAQI_aqiNumberFormatter;

  return v1;
}

uint64_t __WANumberFormatterForDisplayingAQI_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v1 = WANumberFormatterForDisplayingAQI_aqiNumberFormatter;
  WANumberFormatterForDisplayingAQI_aqiNumberFormatter = v0;

  v2 = WANumberFormatterForDisplayingAQI_aqiNumberFormatter;

  return [v2 setNumberStyle:1];
}

void sub_272AD31C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_272AD372C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_272AD3DC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id WACityFromForecastModel(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v3 = [v1 location];
  v4 = [v3 displayName];
  [v2 setName:v4];

  v5 = [v1 location];
  v6 = [v5 geoLocation];
  [v2 setLocation:v6];

  [v2 updateCityForModel:v1];

  return v2;
}

id TWCFallbackURL()
{
  if (TWCFallbackURL_onceToken != -1)
  {
    TWCFallbackURL_cold_1();
  }

  v1 = TWCFallbackURL_TWCFallbackURL;

  return v1;
}

void __TWCFallbackURL_block_invoke()
{
  v8 = [MEMORY[0x277CCACE0] componentsWithString:@"http://www.weather.com/wx/today/"];
  v0 = [v8 queryItems];
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = MEMORY[0x277CBEBF8];
  }

  v3 = [MEMORY[0x277CCAD18] queryItemWithName:@"par" value:@"apple_"];
  v4 = [v2 arrayByAddingObject:v3];
  [v8 setQueryItems:v4];

  v5 = [v8 URL];
  v6 = [v5 absoluteString];
  v7 = TWCFallbackURL_TWCFallbackURL;
  TWCFallbackURL_TWCFallbackURL = v6;
}

id TWCAttributionURLForTrafficParameter(void *a1)
{
  v30[3] = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (TWCAttributionURLForTrafficParameter_onceToken != -1)
  {
    TWCAttributionURLForTrafficParameter_cold_1();
  }

  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = [v2 canOpenURL:TWCAttributionURLForTrafficParameter_sTWCAppiPadURL];

  if (v3)
  {
    v4 = TWCAttributionURLForTrafficParameter_sTWCAppiPadURL;
LABEL_7:
    v7 = v4;
    goto LABEL_17;
  }

  v5 = [MEMORY[0x277D75128] sharedApplication];
  v6 = [v5 canOpenURL:TWCAttributionURLForTrafficParameter_sTWCAppiPhoneURL];

  if (v6)
  {
    v4 = TWCAttributionURLForTrafficParameter_sTWCAppiPhoneURL;
    goto LABEL_7;
  }

  v8 = [MEMORY[0x277CCACE0] componentsWithString:@"http://www.weather.com/wx/today/"];
  if (![(__CFString *)v1 length])
  {

    v1 = @"TWC";
  }

  v9 = MEMORY[0x277CCAD18];
  v10 = [@"apple_" stringByAppendingString:v1];
  v11 = [v9 queryItemWithName:@"par" value:v10];

  if (WAUserTemperatureUnit() == 1)
  {
    v12 = @"e";
  }

  else
  {
    v12 = @"m";
  }

  v13 = [MEMORY[0x277CCAD18] queryItemWithName:@"units" value:v12];
  v28 = v13;
  v14 = [MEMORY[0x277CBEAF8] currentLocale];
  v15 = [v14 objectForKey:*MEMORY[0x277CBE690]];
  v29 = [v15 uppercaseString];

  v16 = [v14 objectForKey:*MEMORY[0x277CBE6C8]];
  v17 = [v16 lowercaseString];

  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v17, v29];
  v19 = [MEMORY[0x277CCAD18] queryItemWithName:@"locale" value:v18];
  v20 = [v8 queryItems];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = MEMORY[0x277CBEBF8];
  }

  v30[0] = v11;
  v30[1] = v19;
  v30[2] = v13;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:3];
  v24 = [v22 arrayByAddingObjectsFromArray:v23];
  [v8 setQueryItems:v24];

  v7 = [v8 URL];

LABEL_17:
  v25 = WALogForCategory(0);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    TWCAttributionURLForTrafficParameter_cold_2(v7, v25);
  }

  v26 = *MEMORY[0x277D85DE8];

  return v7;
}

uint64_t __TWCAttributionURLForTrafficParameter_block_invoke()
{
  v0 = [MEMORY[0x277CBEBC0] URLWithString:@"twcweather://now"];
  v1 = TWCAttributionURLForTrafficParameter_sTWCAppiPhoneURL;
  TWCAttributionURLForTrafficParameter_sTWCAppiPhoneURL = v0;

  v2 = [MEMORY[0x277CBEBC0] URLWithString:@"twc://now"];
  v3 = TWCAttributionURLForTrafficParameter_sTWCAppiPadURL;
  TWCAttributionURLForTrafficParameter_sTWCAppiPadURL = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

id WeatherChannelBaseURL()
{
  v0 = +[WeatherInternalPreferences sharedInternalPreferences];
  v1 = [v0 objectForKey:@"WeatherChannelBaseURL"];

  if (v1)
  {
    v2 = [v1 copy];
  }

  else
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"https://%@/v1/geocode", @"api.weather.com"];
    v2 = [v3 copy];
  }

  return v2;
}

id WAAttributionString()
{
  v20 = *MEMORY[0x277D85DE8];
  v0 = +[WAProviderAttributionManager sharedManager];
  v1 = [v0 providerName];

  v2 = [v1 length];
  v3 = WALogForCategory(0);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 138412290;
      v19 = v1;
      _os_log_impl(&dword_272ACF000, v3, OS_LOG_TYPE_DEFAULT, "WAAttributionString: we got a provider name: %@", buf, 0xCu);
    }

    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v3 = [v5 localizedStringForKey:@"WFAttributionSourceNameLocalizedAttributionString" value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];

    v6 = MEMORY[0x277CCACA8];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"WFAttributionSourceProviderLocalizedAttributionString" value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
    v9 = [v6 stringWithFormat:v8, v3];

    v10 = [v9 rangeOfString:v3 options:1];
    v12 = v11;
    v13 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v9];
    if (v12)
    {
      v14 = *MEMORY[0x277D740E8];
      v15 = [MEMORY[0x277CBEBC0] URLWithString:@"https://weather.com/?par=apple_notificationcenter"];
      [v13 addAttribute:v14 value:v15 range:{v10, v12}];

      [v13 addAttribute:*MEMORY[0x277D741F0] value:MEMORY[0x277CBEC38] range:{v10, v12}];
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      WAAttributionString_cold_1(v3, v9);
    }
  }

  else
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_272ACF000, v3, OS_LOG_TYPE_DEFAULT, "WAAttributionString: No provider name, returning nil", buf, 2u);
    }

    v13 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v13;
}

id CardinalDirectionStringForIndex(unint64_t a1, int a2)
{
  if (a1 <= 0xF)
  {
    v4 = &unk_2882351F0;
    v5 = __cardinalDirections;
    if (a2)
    {
      v4 = &unk_2882351D8;
    }

    __cardinalDirections = v4;

    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [__cardinalDirections objectAtIndexedSubscript:a1];
    v2 = [v6 localizedStringForKey:v7 value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id WeatherFrameworkBundle()
{
  if (WeatherFrameworkBundle_onceToken != -1)
  {
    WeatherFrameworkBundle_cold_1();
  }

  v1 = __bundle;

  return v1;
}

uint64_t __WeatherFrameworkBundle_block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v1 = __bundle;
  __bundle = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

BOOL IsLoDPI()
{
  v0 = [MEMORY[0x277D759A0] mainScreen];
  [v0 scale];
  v2 = v1 < 2.0;

  return v2;
}

uint64_t IsInternalInstall()
{
  if (IsInternalInstall_onceToken != -1)
  {
    IsInternalInstall_cold_1();
  }

  return IsInternalInstall___isInternalInstall;
}

uint64_t __IsInternalInstall_block_invoke()
{
  result = MGGetBoolAnswer();
  IsInternalInstall___isInternalInstall = result;
  return result;
}

uint64_t IsTallDevice()
{
  if (IsTallDevice_onceToken != -1)
  {
    IsTallDevice_cold_1();
  }

  return IsTallDevice___isTallDevice;
}

void __IsTallDevice_block_invoke()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (!v1)
  {
    v2 = [MEMORY[0x277D759A0] mainScreen];
    [v2 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11.origin.x = v4;
    v11.origin.y = v6;
    v11.size.width = v8;
    v11.size.height = v10;
    IsTallDevice___isTallDevice = CGRectGetHeight(v11) + -568.0 > -2.22044605e-16;
  }
}

double GetDeviceWidth()
{
  v0 = [MEMORY[0x277D759A0] mainScreen];
  [v0 _referenceBounds];
  v2 = v1;

  return v2;
}

double GetDeviceHeight()
{
  v0 = [MEMORY[0x277D759A0] mainScreen];
  [v0 _referenceBounds];
  v2 = v1;

  return v2;
}

uint64_t SupportsLandscapeWeather()
{
  if (SupportsLandscapeWeather_onceToken != -1)
  {
    SupportsLandscapeWeather_cold_1();
  }

  return SupportsLandscapeWeather_support;
}

uint64_t __SupportsLandscapeWeather_block_invoke()
{
  result = [MEMORY[0x277D2C950] naui_isPad];
  SupportsLandscapeWeather_support = result;
  return result;
}

id TemperatureDegreeSign(int a1)
{
  v1 = @"TEMP_UNIT_FAHRENHEIT";
  if (a1)
  {
    v1 = @"TEMP_UNIT_CELSIUS";
  }

  v2 = MEMORY[0x277CCA8D8];
  v3 = v1;
  v4 = [v2 bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:v3 value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];

  return v5;
}

id TemperatureDegreeSignShort(int a1)
{
  v1 = @"TEMP_UNIT_FAHRENHEIT_SHORT";
  if (a1)
  {
    v1 = @"TEMP_UNIT_CELSIUS_SHORT";
  }

  v2 = MEMORY[0x277CCA8D8];
  v3 = v1;
  v4 = [v2 bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:v3 value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];

  return v5;
}

__CFString *PrecipitationDescription(void *a1)
{
  v1 = [a1 precipitationForecast];
  v2 = @"CHANCE_OF_RAIN";
  if (v1 == 4)
  {
    v2 = @"CHANCE_OF_HAIL";
  }

  if (v1 == 3)
  {
    return @"CHANCE_OF_SNOW";
  }

  else
  {
    return v2;
  }
}

double SpecialTemperatureForCity(void *a1, __CFString **a2)
{
  v3 = a1;
  v4 = [v3 feelsLike];
  [v4 temperatureForUnit:WAUserTemperatureUnit()];
  v6 = v5;

  [v3 windChill];
  v8 = v7;
  [v3 heatIndex];
  v10 = v9;

  if (*&CityMaxWindChillTemperature >= v8)
  {
    v11 = @"WIND_CHILL";
  }

  else
  {
    v8 = v10;
    if (*&CityMinHeatIndexTemperature <= v10)
    {
      v11 = @"HEAT_INDEX";
    }

    else
    {
      v11 = @"FEELS_LIKE";
      v8 = v6;
    }
  }

  *a2 = v11;
  return v8;
}

uint64_t WAUserTemperatureUnit()
{
  v0 = [MEMORY[0x277D7B2D8] sharedObserver];
  v1 = [v0 temperatureUnit];

  return v1;
}

double ChanceOfRainWithHourlyForecasts(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v15 objects:v19 count:16];
  v3 = 0.0;
  v4 = 0.0;
  if (v2)
  {
    v5 = v2;
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v15 + 1) + 8 * v7) percentPrecipitation];
        v4 = v4 + v8;
        v3 = v3 + 1.0;
        ++v7;
      }

      while (v5 != v7);
      v5 = [v1 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v9 = v4 / v3 / 10.0;
  if (v3 <= 0.0)
  {
    v9 = 0.0;
  }

  v10 = round(v9) * 10.0;
  v11 = fmax(v10, 10.0);
  if (v4 <= 0.0)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t TimeStringToIntValue(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 length] > 2)
  {
    v4 = [v1 stringByReplacingOccurrencesOfString:@":" withString:&stru_2882270E8 options:0 range:{2, 1}];
    v3 = [v4 intValue];
  }

  else
  {
    v2 = WALogForCategory(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v1;
      _os_log_impl(&dword_272ACF000, v2, OS_LOG_TYPE_DEFAULT, "Malformed Time String %@", &v7, 0xCu);
    }

    v3 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t IsPrecipitationCondition(unint64_t a1)
{
  v1 = 0xEFE800070000uLL >> a1;
  if (a1 > 0x2F)
  {
    LOBYTE(v1) = 0;
  }

  if (a1 - 3 >= 0xC)
  {
    v2 = v1;
  }

  else
  {
    v2 = 1;
  }

  if (a1 == 1)
  {
    v2 = 1;
  }

  return v2 & 1;
}

id WoeidFromLocationID(void *a1)
{
  v1 = a1;
  v2 = [v1 componentsSeparatedByString:@"|"];
  if ([v2 count] < 2)
  {
    v3 = v1;
  }

  else
  {
    v3 = [v2 objectAtIndex:1];
  }

  v4 = v3;

  return v4;
}

id WATemperatureStringFromString(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x277D7B2C0];
  v4 = a1;
  v5 = [v3 alloc];
  [v4 doubleValue];
  v7 = v6;

  v8 = [v5 initWithTemperatureUnit:a2 value:v7];
  v9 = WATemperatureString(v8);

  return v9;
}

id WATemperatureString(void *a1)
{
  v1 = a1;
  v2 = WAUserTemperatureUnit();
  v3 = WATemperatureStringForOutputUnit(v1, v2);

  return v3;
}

__CFString *WATemperatureStringForOutputUnit(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    if (v3)
    {
      v5 = [v3 temperatureForUnit:a2];
      LODWORD(v5) = llround(v6);
      v7 = LocalizedDecimalString(v5);
    }

    else
    {
      v7 = @"--";
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id LocalizedDecimalString(uint64_t a1)
{
  v2 = __decimalNumberFormatter;
  if (!__decimalNumberFormatter)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v4 = __decimalNumberFormatter;
    __decimalNumberFormatter = v3;

    [__decimalNumberFormatter setNumberStyle:1];
    v2 = __decimalNumberFormatter;
  }

  v5 = [MEMORY[0x277CCABB0] numberWithInt:a1];
  v6 = [v2 stringFromNumber:v5];

  return v6;
}

BOOL WAIsChinaSKUAndSimplifiedChinese()
{
  v0 = CPGetDeviceRegionCode();
  if ([v0 isEqualToString:@"CH"])
  {
    v1 = [MEMORY[0x277CBEAF8] currentLocale];
    v2 = [v1 localeIdentifier];

    v3 = ([v2 hasPrefix:@"zh-Hans"] & 1) != 0 || objc_msgSend(v2, "hasPrefix:", @"zh_CN");
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t WAIsPadAndChinaSKU()
{
  result = [MEMORY[0x277D2C950] naui_isPad];
  if (result)
  {
    v1 = CPGetDeviceRegionCode();
    v2 = [v1 isEqualToString:@"CH"];

    return v2;
  }

  return result;
}

void WAPresentFirstUsageDialogIfNeeded()
{
  network_usage_policy_create_client();
  v0 = dispatch_semaphore_create(0);
  network_use_flow = perform_first_network_use_flow();
  if (network_use_flow)
  {
    v2 = network_use_flow;
    v3 = WALogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      WAPresentFirstUsageDialogIfNeeded_cold_1(v2, v3);
    }
  }

  else
  {
    v4 = dispatch_time(0, 60000000000);
    dispatch_semaphore_wait(v0, v4);
  }

  network_usage_policy_destroy_client();
}

intptr_t __WAPresentFirstUsageDialogIfNeeded_block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = WALogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_272ACF000, v3, OS_LOG_TYPE_DEFAULT, "Presenting first usage dialog", v5, 2u);
    }
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t IsAllCapsMeridiemIndicatorRegion()
{
  if (IsAllCapsMeridiemIndicatorRegion_onceToken != -1)
  {
    IsAllCapsMeridiemIndicatorRegion_cold_1();
  }

  return IsAllCapsMeridiemIndicatorRegion_isAllCapsLanguage;
}

void __IsAllCapsMeridiemIndicatorRegion_block_invoke()
{
  v0 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v1 = [v0 objectAtIndex:0];

  if ([v1 hasPrefix:@"en"])
  {
    IsAllCapsMeridiemIndicatorRegion_isAllCapsLanguage = 1;
  }
}

uint64_t IsUIRTL()
{
  if (IsUIRTL_onceToken != -1)
  {
    IsUIRTL_cold_1();
  }

  return IsUIRTL_isUIRTL;
}

uint64_t __IsUIRTL_block_invoke()
{
  result = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
  IsUIRTL_isUIRTL = result == 1;
  return result;
}

uint64_t IsNumberRTL()
{
  if ((gIsNumberRTLSet & 1) == 0)
  {
    v0 = __percentNumberFormatter;
    if (!__percentNumberFormatter)
    {
      v1 = objc_alloc_init(MEMORY[0x277CCABB8]);
      v2 = __percentNumberFormatter;
      __percentNumberFormatter = v1;

      [__percentNumberFormatter setNumberStyle:3];
      v0 = __percentNumberFormatter;
    }

    gIsNumberRTL = 1;
    v3 = [v0 stringFromNumber:&unk_288235778];
    v4 = [v3 rangeOfString:@"%"];

    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      gIsNumberRTL = 0;
    }

    gIsNumberRTLSet = 1;
  }

  return gIsNumberRTL;
}

uint64_t IsDynamicTypeLargeOrSmaller()
{
  v0 = [MEMORY[0x277D75128] sharedApplication];
  v1 = [v0 preferredContentSizeCategory];

  if ([v1 isEqualToString:*MEMORY[0x277D76830]] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x277D76858]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x277D76840]))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:*MEMORY[0x277D76838]];
  }

  return v2;
}

id FormatShortTime(void *a1, int a2, int a3)
{
  v5 = a1;
  if (__timeFormatter)
  {
    if (a2)
    {
LABEL_3:
      v6 = &__formatStringWithMinutes;
      v7 = __formatStringWithMinutes;
      if (__formatStringWithMinutes)
      {
        goto LABEL_9;
      }

      v8 = @"jmm";
      goto LABEL_8;
    }
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x277CCA968]);
    v10 = __timeFormatter;
    __timeFormatter = v9;

    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = &__formatStringWithoutMinutes;
  v7 = __formatStringWithoutMinutes;
  if (__formatStringWithoutMinutes)
  {
    goto LABEL_9;
  }

  v8 = @"j";
LABEL_8:
  v11 = MEMORY[0x277CCA968];
  v12 = [MEMORY[0x277CBEAF8] currentLocale];
  v13 = [v11 dateFormatFromTemplate:v8 options:0 locale:v12];
  v14 = [v13 copy];
  v15 = *v6;
  *v6 = v14;

  v7 = *v6;
LABEL_9:
  v16 = v7;
  if (a3)
  {
    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"STRING_TO_REMOVE_FROM_CONDENSED_TIME_FORMAT" value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
    v19 = [v16 stringByReplacingOccurrencesOfString:v18 withString:&stru_2882270E8];

    v16 = v19;
  }

  [__timeFormatter setDateFormat:v16];
  v20 = [__timeFormatter stringFromDate:v5];

  return v20;
}

id TimeInRegionFormatFromFourDigitTime(void *a1, int a2)
{
  v3 = a1;
  v4 = [v3 length];
  if (v4 < 3)
  {
    v14 = 0;
  }

  else
  {
    v5 = v4 - 2;
    v6 = [v3 substringWithRange:{v4 - 2, 2}];
    v7 = [v3 substringWithRange:{0, v5}];
    v8 = CFLocaleCopyCurrent();
    v9 = __components;
    if (!__components)
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEAB8]);
      v11 = __components;
      __components = v10;

      v9 = __components;
    }

    [v9 setHour:{objc_msgSend(v7, "intValue")}];
    [__components setMinute:{objc_msgSend(v6, "intValue")}];
    v12 = GetCurrentCalendar();
    v13 = [v12 dateFromComponents:__components];
    v14 = FormatShortTime(v13, 1, a2);

    if (v8)
    {
      CFRelease(v8);
    }
  }

  return v14;
}

id GetCurrentCalendar()
{
  v0 = __currentCalendar;
  if (!__currentCalendar)
  {
    v1 = [MEMORY[0x277CBEA80] currentCalendar];
    v2 = __currentCalendar;
    __currentCalendar = v1;

    v0 = __currentCalendar;
  }

  return v0;
}

id WAUIFormattedTimeString(void *a1, void *a2)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1 mutableCopy];
  v30 = *MEMORY[0x277D74338];
  v5 = *MEMORY[0x277D74388];
  v27[0] = *MEMORY[0x277D74398];
  v27[1] = v5;
  v28[0] = &unk_288235670;
  v28[1] = &unk_288235688;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
  v29 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
  v31[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];

  v9 = [v3 fontDescriptor];
  v10 = [v9 fontDescriptorByAddingAttributes:v8];

  v11 = [MEMORY[0x277D74300] fontWithDescriptor:v10 size:0.0];
  v12 = [MEMORY[0x277CBEAF8] currentLocale];
  v13 = [v12 languageCode];

  LOBYTE(v12) = [v13 isEqualToString:@"en"];
  v14 = [v4 length];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __WAUIFormattedTimeString_block_invoke;
  v22[3] = &unk_279E67EA8;
  v26 = v12;
  v15 = v4;
  v23 = v15;
  v24 = v11;
  v25 = v3;
  v16 = v3;
  v17 = v11;
  [v15 enumerateAttributesInRange:0 options:v14 usingBlock:{0, v22}];
  v18 = v25;
  v19 = v15;

  v20 = *MEMORY[0x277D85DE8];
  return v15;
}

void __WAUIFormattedTimeString_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (*(a1 + 56) == 1)
  {
    v8 = [*(a1 + 32) string];
    v9 = [v8 substringWithRange:{a3, a4}];

    v10 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v11 = [v9 stringByTrimmingCharactersInSet:v10];

    if (![v11 length])
    {
      [*(a1 + 32) deleteCharactersInRange:{a3, a4}];
      goto LABEL_7;
    }
  }

  v9 = [v7 objectForKeyedSubscript:*MEMORY[0x277CBE628]];
  v12 = [v9 isEqualToString:@"a"];
  v13 = 48;
  if (v12)
  {
    v13 = 40;
  }

  v11 = *(a1 + v13);
  v16 = *MEMORY[0x277D740A8];
  v17[0] = v11;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  [*(a1 + 32) setAttributes:v14 range:{a3, a4}];

LABEL_7:
  v15 = *MEMORY[0x277D85DE8];
}

id WATimeInRegionFormat(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 componentsSeparatedByString:@":"];
  if ([v4 count] < 2)
  {
    v16 = 0;
  }

  else
  {
    v5 = [v4 objectAtIndex:0];
    v6 = [v4 objectAtIndex:1];
    v7 = __components;
    if (!__components)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEAB8]);
      v9 = __components;
      __components = v8;

      v7 = __components;
    }

    [v7 setHour:{objc_msgSend(v5, "intValue")}];
    [__components setMinute:{objc_msgSend(v6, "intValue")}];
    if (gDateFormatter)
    {
      goto LABEL_6;
    }

    v10 = objc_alloc_init(MEMORY[0x277CCA968]);
    v11 = gDateFormatter;
    gDateFormatter = v10;

    [gDateFormatter setDateStyle:0];
    [gDateFormatter setTimeStyle:1];
    v12 = [MEMORY[0x277CBEAF8] currentLocale];
    [gDateFormatter setLocale:v12];

    if (gDateFormatter)
    {
LABEL_6:
      v13 = GetCurrentCalendar();
      v14 = [v13 dateFromComponents:__components];

      v15 = [gDateFormatter _attributedStringWithFieldsFromDate:v14];
      v16 = WAUIFormattedTimeString(v15, v3);
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

id WATimeInRegionFormatFromFourDigitTime(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v4 substringToIndex:2];
  v6 = [v4 substringFromIndex:2];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v5, v6];
  v8 = WATimeInRegionFormat(v7, v3);

  return v8;
}

id WACondensedTimeInRegionFormat(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 componentsSeparatedByString:@":"];
  if ([v4 count] < 2)
  {
    v20 = 0;
  }

  else
  {
    v5 = [v4 objectAtIndex:0];
    v6 = [v4 objectAtIndex:1];
    v7 = __components;
    if (!__components)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEAB8]);
      v9 = __components;
      __components = v8;

      v7 = __components;
    }

    [v7 setHour:{objc_msgSend(v5, "intValue")}];
    [__components setMinute:{objc_msgSend(v6, "intValue")}];
    if (gCondensedTimeFormatter)
    {
      goto LABEL_8;
    }

    if (!__formatStringWithoutMinutes)
    {
      v10 = MEMORY[0x277CCA968];
      v11 = [MEMORY[0x277CBEAF8] currentLocale];
      v12 = [v10 dateFormatFromTemplate:@"j" options:0 locale:v11];
      v13 = [v12 copy];
      v14 = __formatStringWithoutMinutes;
      __formatStringWithoutMinutes = v13;
    }

    v15 = objc_alloc_init(MEMORY[0x277CCA968]);
    v16 = gCondensedTimeFormatter;
    gCondensedTimeFormatter = v15;

    [gCondensedTimeFormatter setDateFormat:__formatStringWithoutMinutes];
    if (gCondensedTimeFormatter)
    {
LABEL_8:
      v17 = GetCurrentCalendar();
      v18 = [v17 dateFromComponents:__components];

      v19 = [gCondensedTimeFormatter _attributedStringWithFieldsFromDate:v18];
      v20 = WAUIFormattedTimeString(v19, v3);
    }

    else
    {
      v20 = 0;
    }
  }

  return v20;
}

id weatherWeekdayFormatter()
{
  v0 = gWeekdayFormatter;
  if (!gWeekdayFormatter)
  {
    v1 = objc_alloc_init(MEMORY[0x277CCA968]);
    v2 = gWeekdayFormatter;
    gWeekdayFormatter = v1;

    [gWeekdayFormatter setDateStyle:0];
    [gWeekdayFormatter setTimeStyle:0];
    v3 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
    [gWeekdayFormatter setLocale:v3];

    [gWeekdayFormatter setFormattingContext:2];
    v0 = gWeekdayFormatter;
  }

  return v0;
}

id weekdayNameForDayOfWeekHelper(unint64_t a1, int a2)
{
  v4 = weatherWeekdayFormatter();
  v5 = v4;
  if (a2)
  {
    v6 = gShortWeekdayNames;
    if (gShortWeekdayNames)
    {
      goto LABEL_7;
    }

    v7 = [v4 shortStandaloneWeekdaySymbols];
    v8 = &gShortWeekdayNames;
  }

  else
  {
    v6 = gWeekdayNames;
    if (gWeekdayNames)
    {
      goto LABEL_7;
    }

    v7 = [v4 standaloneWeekdaySymbols];
    v8 = &gWeekdayNames;
  }

  v9 = *v8;
  *v8 = v7;

  v6 = *v8;
LABEL_7:
  v10 = v6;
  v11 = v10;
  v12 = 7;
  if (a1 < 7)
  {
    v12 = a1;
  }

  if (v12 <= 1)
  {
    v12 = 1;
  }

  v13 = [v10 objectAtIndex:v12 - 1];

  return v13;
}

id weekdayNameForDate(void *a1)
{
  v1 = a1;
  v2 = weatherWeekdayFormatter();
  v3 = [v2 stringFromDate:v1];

  return v3;
}

id WAMonospacedFont(void *a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v1 = [a1 fontDescriptor];
  v13 = *MEMORY[0x277D74338];
  v2 = *MEMORY[0x277D74388];
  v10[0] = *MEMORY[0x277D74398];
  v10[1] = v2;
  v11[0] = &unk_2882356A0;
  v11[1] = &unk_2882356B8;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v12 = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  v14[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v6 = [v1 fontDescriptorByAddingAttributes:v5];

  v7 = [MEMORY[0x277D74300] fontWithDescriptor:v6 size:0.0];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

void WAWeatherUtilityResetForTimeChange()
{
  v0 = __currentCalendar;
  __currentCalendar = 0;
}

id LocalizedPercentageString(double a1)
{
  v1 = LODWORD(a1);
  v2 = __percentNumberFormatter;
  if (!__percentNumberFormatter)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v4 = __percentNumberFormatter;
    __percentNumberFormatter = v3;

    [__percentNumberFormatter setNumberStyle:3];
    v2 = __percentNumberFormatter;
  }

  LODWORD(a1) = v1;
  v5 = [MEMORY[0x277CCABB0] numberWithFloat:a1];
  v6 = [v2 stringFromNumber:v5];

  return v6;
}

uint64_t LocalizedPercentageSign()
{
  v0 = __percentNumberFormatter;
  if (!__percentNumberFormatter)
  {
    v1 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v2 = __percentNumberFormatter;
    __percentNumberFormatter = v1;

    [__percentNumberFormatter setNumberStyle:3];
    v0 = __percentNumberFormatter;
  }

  return [v0 percentSymbol];
}

void WeatherUtilityFunctionsLocaleChanged()
{
  v0 = gDateFormatter;
  gDateFormatter = 0;

  v1 = gCondensedTimeFormatter;
  gCondensedTimeFormatter = 0;

  v2 = gWeekdayFormatter;
  gWeekdayFormatter = 0;

  v3 = gWeekdayNames;
  gWeekdayNames = 0;

  v4 = gShortWeekdayNames;
  gShortWeekdayNames = 0;

  v5 = __components;
  __components = 0;

  v6 = __currentCalendar;
  __currentCalendar = 0;

  v7 = __percentNumberFormatter;
  __percentNumberFormatter = 0;

  v8 = __decimalNumberFormatter;
  __decimalNumberFormatter = 0;

  v9 = __timeFormatter;
  __timeFormatter = 0;

  v10 = __formatStringWithoutMinutes;
  __formatStringWithoutMinutes = 0;

  v11 = __formatStringWithMinutes;
  __formatStringWithMinutes = 0;

  gIsNumberRTL = 0;
  gIsNumberRTLSet = 0;
}

uint64_t Time24StringToInt(void *a1)
{
  v1 = [a1 stringByReplacingOccurrencesOfString:@":" withString:&stru_2882270E8];
  v2 = [v1 intValue];
  if (v2 >= 100)
  {
    v3 = v2;
  }

  else
  {
    v3 = (v2 + 2400);
  }

  return v3;
}

uint64_t RemapSmallIconForDayOrNight(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result - 27;
    if (result - 27) < 7 && ((0x55u >> v2))
    {
      v3 = &unk_272B1F7C8;
      return v3[v2];
    }
  }

  else
  {
    v2 = result - 28;
    if (result - 28) < 7 && ((0x55u >> v2))
    {
      v3 = &unk_272B1F800;
      return v3[v2];
    }
  }

  return result;
}

uint64_t RemapStringIndexForDayOrNight(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result - 27;
    if (result - 27) < 7 && ((0x55u >> v2))
    {
      v3 = &unk_272B1F7C8;
      return v3[v2];
    }
  }

  else
  {
    v2 = result - 28;
    if (result - 28) < 7 && ((0x55u >> v2))
    {
      v3 = &unk_272B1F800;
      return v3[v2];
    }
  }

  return result;
}

float haversineDistance(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v4 coordinate];
  v6 = v5;
  [v3 coordinate];
  v8 = v7;
  [v4 coordinate];
  v10 = v9;

  v11 = v10;
  [v3 coordinate];
  v13 = v12;

  v14 = v13;
  v15 = (v8 - v6) * 0.0174532925;
  v16 = (v14 - v11) * 0.0174532925;
  *&v13 = v6 * 0.0174532925;
  v17 = v8 * 0.0174532925;
  v18 = sinf(v15 * 0.5);
  v19 = sinf(v16 * 0.5);
  *&v13 = cosf(*&v13) * (v19 * v19);
  v20 = cosf(v17);
  v21 = atan2(sqrt(((v20 * *&v13) + (v18 * v18))), sqrt((1.0 - ((v20 * *&v13) + (v18 * v18)))));
  *&v21 = v21 + v21;
  return *&v21 * 6371.0;
}

id FirstValidTWCLinkFromLinks(void *a1)
{
  v1 = a1;
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __FirstValidTWCLinkFromLinks_block_invoke;
  v4[3] = &unk_279E67ED0;
  v4[4] = &v5;
  [v1 enumerateObjectsUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_272ADE5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __FirstValidTWCLinkFromLinks_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([*MEMORY[0x277D76620] canOpenURL:?])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

id SelectTWCLinkForCity(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v3 = [v1 deeplink];
  [v2 na_safeAddObject:v3];

  v4 = [v1 link];

  [v2 na_safeAddObject:v4];
  v5 = MEMORY[0x277CBEBC0];
  v6 = TWCFallbackURL();
  v7 = [v5 URLWithString:v6];
  [v2 na_safeAddObject:v7];

  v8 = [MEMORY[0x277CBEB40] orderedSetWithArray:v2];
  v9 = FirstValidTWCLinkFromLinks(v8);

  return v9;
}

void OpenTWCLinksInOrder(void *a1)
{
  v1 = a1;
  v2 = [v1 firstObject];
  if (v2)
  {
    v3 = *MEMORY[0x277D76620];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __OpenTWCLinksInOrder_block_invoke;
    v4[3] = &unk_279E67E80;
    v5 = v1;
    [v3 openURL:v2 withCompletionHandler:v4];
  }
}

void __OpenTWCLinksInOrder_block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = [*(a1 + 32) mutableCopy];
    [v3 removeObjectAtIndex:0];
    OpenTWCLinksInOrder(v3);
  }
}

void OpenTWCLinkForCity(void *a1)
{
  v1 = a1;
  v8 = objc_opt_new();
  v2 = [v1 deeplink];
  [v8 na_safeAddObject:v2];

  v3 = [v1 link];

  [v8 na_safeAddObject:v3];
  v4 = MEMORY[0x277CBEBC0];
  v5 = TWCFallbackURL();
  v6 = [v4 URLWithString:v5];
  [v8 na_safeAddObject:v6];

  v7 = [MEMORY[0x277CBEB40] orderedSetWithArray:v8];
  OpenTWCLinksInOrder(v7);
}

uint64_t DateIsTodayInTimezone(void *a1, void *a2)
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a2;
  v5 = a1;
  v6 = [v3 currentCalendar];
  [v6 setTimeZone:v4];

  v7 = [v6 isDateInToday:v5];
  return v7;
}

uint64_t DateIsYesterdayInTimezone(void *a1, void *a2)
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a2;
  v5 = a1;
  v6 = [v3 currentCalendar];
  [v6 setTimeZone:v4];

  v7 = [v6 isDateInYesterday:v5];
  return v7;
}

BOOL DatesAreNotWithinSameHour(void *a1, void *a2)
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a2;
  v5 = a1;
  v6 = [v3 currentCalendar];
  v7 = [v6 component:16 fromDate:v5];
  v8 = [v6 component:32 fromDate:v5];

  v9 = [v6 component:16 fromDate:v4];
  v10 = [v6 component:32 fromDate:v4];

  v12 = v7 != v9 || v8 != v10;
  return v12;
}

id DateByAddingOneDay(void *a1)
{
  v1 = MEMORY[0x277CBEA80];
  v2 = a1;
  v3 = [v1 currentCalendar];
  v4 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v4 setDay:1];
  v5 = [v3 dateByAddingComponents:v4 toDate:v2 options:0];

  return v5;
}

uint64_t WFTemperatureUnitFromIsCelsiusValue(int a1)
{
  if (a1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t WAObjectIsEqual(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  else
  {
    return [a1 isEqual:a2];
  }
}

uint64_t CardinalDirectionFromAngle(double a1)
{
  v1 = (a1 + 11.25) / 22.5;
  if (v1 <= 0)
  {
    return -(-v1 & 0xF);
  }

  else
  {
    return v1 & 0xF;
  }
}

void sub_272AE0164(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_272AE17D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  objc_destroyWeak((v8 + 40));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v9 - 40));
  _Unwind_Resume(a1);
}

void MigrateDataProtectionClassOfPath(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = open([v1 fileSystemRepresentation], 0, 0);
    if ((v3 & 0x80000000) == 0)
    {
      v4 = v3;
      v5 = fcntl(v3, 64, 4);
      v6 = WALogForCategory(0);
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      if (v5 == -1)
      {
        if (v7)
        {
          *buf = 138412290;
          v11 = v2;
          v8 = "Failed to Migrate Data Protection Class of %@";
          goto LABEL_8;
        }
      }

      else if (v7)
      {
        *buf = 138412290;
        v11 = v2;
        v8 = "Migrated Data Protection Class of %@";
LABEL_8:
        _os_log_impl(&dword_272ACF000, v6, OS_LOG_TYPE_DEFAULT, v8, buf, 0xCu);
      }

      close(v4);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

id _WAWeatherIconCachePath()
{
  v0 = _WAWeatherIconCachePath___cacheDirectoryPath;
  if (!_WAWeatherIconCachePath___cacheDirectoryPath)
  {
    v1 = [MEMORY[0x277D75128] sharedApplication];
    v2 = [v1 userCachesDirectory];
    v3 = [v2 stringByAppendingPathComponent:@"Weather/MiniIcons/"];
    v4 = _WAWeatherIconCachePath___cacheDirectoryPath;
    _WAWeatherIconCachePath___cacheDirectoryPath = v3;

    v0 = _WAWeatherIconCachePath___cacheDirectoryPath;
  }

  return v0;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id WATodayHeaderViewDegreeAttributedStringWithTemperatureObject(int a1, void *a2)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __TemperatureFont_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = 0x4045800000000000;
    if (TemperatureFont_onceToken != -1)
    {
      dispatch_once(&TemperatureFont_onceToken, block);
    }

    v4 = TemperatureFont_font;
    v5 = objc_alloc(MEMORY[0x277CCAB48]);
    v6 = *MEMORY[0x277D740A8];
    v21 = *MEMORY[0x277D740A8];
    v22[0] = v4;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v8 = [v5 initWithString:v3 attributes:v7];

    if (a1)
    {
      v9 = [MEMORY[0x277D74300] systemFontOfSize:18.0 weight:*MEMORY[0x277D74408]];
      v10 = *MEMORY[0x277D74078];
      v19[0] = v6;
      v19[1] = v10;
      v20[0] = v9;
      v11 = [MEMORY[0x277CCABB0] numberWithDouble:18.0];
      v20[1] = v11;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C", 176];
      v14 = [v3 rangeOfString:v13];
      [v8 addAttributes:v12 range:{v14, v15}];
    }
  }

  else
  {
    v8 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v8;
}

void __TemperatureFont_block_invoke(uint64_t a1)
{
  v15[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D74310];
  v3 = *MEMORY[0x277CC4860];
  v15[0] = *MEMORY[0x277CC4890];
  v4 = *MEMORY[0x277CC4950];
  v14[0] = v3;
  v14[1] = v4;
  v12 = *MEMORY[0x277CC48F0];
  v13 = &unk_2882356E8;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v15[1] = v5;
  v14[2] = *MEMORY[0x277CC4938];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 32)];
  v15[2] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v8 = [v2 fontDescriptorWithFontAttributes:v7];

  v9 = [MEMORY[0x277D74300] fontWithDescriptor:v8 size:0.0];
  v10 = TemperatureFont_font;
  TemperatureFont_font = v9;

  v11 = *MEMORY[0x277D85DE8];
}

BOOL WATodayPadViewFormatForSize(double a1, double a2)
{
  if (a1 < a2)
  {
    a1 = a2;
  }

  return a1 >= 1366.0;
}

void sub_272AE93FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id WALogForCategory(uint64_t a1)
{
  if (WALogForCategory_onceToken != -1)
  {
    WALogForCategory_cold_1();
  }

  v2 = WALogForCategory_logObjects[a1];

  return v2;
}

uint64_t __WALogForCategory_block_invoke()
{
  v0 = os_log_create("com.apple.weather", "Weather");
  v1 = WALogForCategory_logObjects[0];
  WALogForCategory_logObjects[0] = v0;

  v2 = os_log_create("com.apple.weather", "WeatherData");
  v3 = qword_28159ADA0;
  qword_28159ADA0 = v2;

  v4 = os_log_create("com.apple.weather", "DUET");
  v5 = qword_28159ADA8;
  qword_28159ADA8 = v4;

  v6 = os_log_create("com.apple.weather", "Left-Of-Home");
  v7 = qword_28159ADB0;
  qword_28159ADB0 = v6;

  v8 = os_log_create("com.apple.weather", "Location");
  v9 = qword_28159ADB8;
  qword_28159ADB8 = v8;

  v10 = os_log_create("com.apple.weather", "Routing");
  v11 = qword_28159ADE0;
  qword_28159ADE0 = v10;

  v12 = os_log_create("com.apple.weather", "Preferences");
  v13 = qword_28159ADC0;
  qword_28159ADC0 = v12;

  v14 = os_log_create("com.apple.weather", "PrefsMigration");
  v15 = qword_28159AE08;
  qword_28159AE08 = v14;

  v16 = os_log_create("com.apple.weather", "Reachability");
  v17 = qword_28159ADC8;
  qword_28159ADC8 = v16;

  v18 = os_log_create("com.apple.weather", "Privacy");
  v19 = qword_28159ADF8;
  qword_28159ADF8 = v18;

  v20 = os_log_create("com.apple.weather", "Search");
  v21 = qword_28159ADD0;
  qword_28159ADD0 = v20;

  v22 = os_log_create("com.apple.weather", "ORB");
  v23 = qword_28159ADD8;
  qword_28159ADD8 = v22;

  v24 = os_log_create("com.apple.weather", "Today Notification Center");
  v25 = qword_28159ADE8;
  qword_28159ADE8 = v24;

  v26 = os_log_create("com.apple.weather", "Watch");
  v27 = qword_28159ADF0;
  qword_28159ADF0 = v26;

  v28 = os_log_create("com.apple.weather", "Next Hour");
  v29 = qword_28159AE00;
  qword_28159AE00 = v28;

  return MEMORY[0x2821F96F8](v28, v29);
}

uint64_t CityTimeDigitForTimeZone(void *a1)
{
  v23[2] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CBEAA8];
  v2 = a1;
  v3 = [v1 date];
  if (CityTimeDigitForTimeZone_onceToken != -1)
  {
    CityTimeDigitForTimeZone_cold_1();
  }

  v4 = [v2 secondsFromGMT];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
  v6 = [CityTimeDigitForTimeZone___timeZoneCache objectForKey:v5];
  v7 = [v6 objectForKey:@"ExpiryTime"];
  v8 = [v6 objectForKey:@"TimeValue"];
  v9 = [v8 integerValue];

  if (!v6 || ([v3 timeIntervalSinceDate:v7], v10 >= 0.0))
  {
    v11 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:v4];
    [CityTimeDigitForTimeZone___currentTimeCalendar setTimeZone:v11];
    v12 = [CityTimeDigitForTimeZone___currentTimeCalendar components:96 fromDate:v3];
    v13 = [v12 hour];
    v21 = v7;
    v14 = v3;
    v9 = [v12 minute] + 100 * v13;
    v15 = CityTimeDigitForTimeZone___timeZoneCache;
    v22[0] = @"TimeValue";
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
    v22[1] = @"ExpiryTime";
    v23[0] = v16;
    v17 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:60.0];
    v23[1] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
    [v15 setObject:v18 forKey:v5];

    v3 = v14;
    v7 = v21;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t __CityTimeDigitForTimeZone_block_invoke()
{
  v0 = [MEMORY[0x277CBEA80] currentCalendar];
  v1 = CityTimeDigitForTimeZone___currentTimeCalendar;
  CityTimeDigitForTimeZone___currentTimeCalendar = v0;

  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = CityTimeDigitForTimeZone___timeZoneCache;
  CityTimeDigitForTimeZone___timeZoneCache = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

void sub_272AEB1D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *LocalizedWeatherDescription(uint64_t a1, int a2, int a3)
{
  if (a1 == 3200)
  {
    v3 = &stru_2882270E8;
  }

  else
  {
    v7 = RemapSmallIconForDayOrNight(a1, a2);
    v8 = *(&WeatherDescription + v7);
    if (!v8)
    {
      v9 = @"ShowingNight";
      if (a2)
      {
        v9 = @"Showing Day";
      }

      NSLog(&cfstr_WarningNullWea.isa, a1, v7, v9);
    }

    if (a3)
    {
      v10 = @"%@-Leader";
    }

    else
    {
      v10 = @"%@-Embedded";
    }

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:v10, v8];
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v3 = [v12 localizedStringForKey:v11 value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
  }

  return v3;
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xEu);
}

void sub_272AF16D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_272AFA98C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, id location, char a31)
{
  objc_destroyWeak((v31 + 56));
  _Block_object_dispose((v32 - 192), 8);
  _Block_object_dispose(&a26, 8);
  objc_destroyWeak(&location);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *NSStringFromWAUpdateStatus(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"(Unknown WAUpdateStatus)";
  }

  else
  {
    return off_279E685E8[a1];
  }
}

__CFString *NSStringFromWAUpdateErrorCode(unint64_t a1)
{
  if (a1 > 7)
  {
    return @"(Unknown WAUpdateErrorCode)";
  }

  else
  {
    return off_279E68600[a1];
  }
}

__CFString *NSStringFromWAWeatherDataAge(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"(Unknown WAWeatherDataAge)";
  }

  else
  {
    return off_279E68640[a1];
  }
}

__CFString *NSStringFromWAWeatherPressureState(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"(Unknown WAWeatherPressureState)";
  }

  else
  {
    return off_279E68658[a1];
  }
}

__CFString *NSStringFromWeatherConditionCode(uint64_t a1)
{
  if (a1 == 3200)
  {
    v2 = @"(Unknown WeatherCondition)";
  }

  else
  {
    v2 = *(&WeatherDescription + a1);
  }

  return v2;
}

id WAErrorWithCode(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [a4 mutableCopy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = objc_opt_new();
  }

  v12 = v11;

  if (v7)
  {
    [v12 setObject:v7 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  if (v8)
  {
    [v12 setObject:v8 forKeyedSubscript:@"kWAUpdateErrorCityKey"];
  }

  v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.weather.errorDomain" code:a1 userInfo:v12];

  return v13;
}

id WASmallWeatherIconsMap()
{
  if (WASmallWeatherIconsMap_onceToken != -1)
  {
    WASmallWeatherIconsMap_cold_1();
  }

  v1 = WASmallWeatherIconsMap_s_smallWeatherIconsMap;

  return v1;
}

void __WASmallWeatherIconsMap_block_invoke()
{
  v219[43] = *MEMORY[0x277D85DE8];
  v218[0] = @"blizzard-day";
  v217[0] = &unk_288235220;
  v216[0] = @"WeatherMapColors";
  v216[1] = @"WeatherMapPadding";
  v131 = xmmword_272B1FAF0;
  v86 = [MEMORY[0x277CCAE60] valueWithBytes:&v131 objCType:"{CGPoint=dd}"];
  v217[1] = v86;
  v85 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v217 forKeys:v216 count:2];
  v219[0] = v85;
  v218[1] = @"blizzard-night";
  v215[0] = &unk_288235238;
  v214[0] = @"WeatherMapColors";
  v214[1] = @"WeatherMapPadding";
  v130 = xmmword_272B1FAF0;
  v84 = [MEMORY[0x277CCAE60] valueWithBytes:&v130 objCType:"{CGPoint=dd}"];
  v215[1] = v84;
  v83 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v215 forKeys:v214 count:2];
  v219[1] = v83;
  v218[2] = @"blowingsnow";
  v213[0] = &unk_288235250;
  v212[0] = @"WeatherMapColors";
  v212[1] = @"WeatherMapPadding";
  v129[1] = 0;
  v129[0] = 0;
  v82 = [MEMORY[0x277CCAE60] valueWithBytes:v129 objCType:"{CGPoint=dd}"];
  v213[1] = v82;
  v81 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v213 forKeys:v212 count:2];
  v219[2] = v81;
  v218[3] = @"breezy";
  v211[0] = &unk_288235268;
  v210[0] = @"WeatherMapColors";
  v210[1] = @"WeatherMapPadding";
  v128[1] = 0;
  v128[0] = 0;
  v80 = [MEMORY[0x277CCAE60] valueWithBytes:v128 objCType:"{CGPoint=dd}"];
  v211[1] = v80;
  v79 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v211 forKeys:v210 count:2];
  v219[3] = v79;
  v218[4] = @"clear-night";
  v209[0] = &unk_288235280;
  v208[0] = @"WeatherMapColors";
  v208[1] = @"WeatherMapPadding";
  v127[1] = 0;
  v127[0] = 0;
  v78 = [MEMORY[0x277CCAE60] valueWithBytes:v127 objCType:"{CGPoint=dd}"];
  v209[1] = v78;
  v77 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v209 forKeys:v208 count:2];
  v219[4] = v77;
  v218[5] = @"drizzle-day";
  v207[0] = &unk_288235298;
  v206[0] = @"WeatherMapColors";
  v206[1] = @"WeatherMapPadding";
  v126 = xmmword_272B1FAF0;
  v76 = [MEMORY[0x277CCAE60] valueWithBytes:&v126 objCType:"{CGPoint=dd}"];
  v207[1] = v76;
  v75 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v207 forKeys:v206 count:2];
  v219[5] = v75;
  v218[6] = @"drizzle-night";
  v205[0] = &unk_2882352B0;
  v204[0] = @"WeatherMapColors";
  v204[1] = @"WeatherMapPadding";
  v125 = xmmword_272B1FAF0;
  v74 = [MEMORY[0x277CCAE60] valueWithBytes:&v125 objCType:"{CGPoint=dd}"];
  v205[1] = v74;
  v73 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v205 forKeys:v204 count:2];
  v219[6] = v73;
  v218[7] = @"dust";
  v203[0] = &unk_2882352C8;
  v202[0] = @"WeatherMapColors";
  v202[1] = @"WeatherMapPadding";
  v124[1] = 0;
  v124[0] = 0;
  v72 = [MEMORY[0x277CCAE60] valueWithBytes:v124 objCType:"{CGPoint=dd}"];
  v203[1] = v72;
  v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v203 forKeys:v202 count:2];
  v219[7] = v71;
  v218[8] = @"flurry-snow-shower";
  v201[0] = &unk_2882352E0;
  v200[0] = @"WeatherMapColors";
  v200[1] = @"WeatherMapPadding";
  v123[1] = 0;
  v123[0] = 0;
  v70 = [MEMORY[0x277CCAE60] valueWithBytes:v123 objCType:"{CGPoint=dd}"];
  v201[1] = v70;
  v69 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v201 forKeys:v200 count:2];
  v219[8] = v69;
  v218[9] = @"flurry";
  v199[0] = &unk_2882352F8;
  v198[0] = @"WeatherMapColors";
  v198[1] = @"WeatherMapPadding";
  v122[1] = 0;
  v122[0] = 0;
  v68 = [MEMORY[0x277CCAE60] valueWithBytes:v122 objCType:"{CGPoint=dd}"];
  v199[1] = v68;
  v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v199 forKeys:v198 count:2];
  v219[9] = v67;
  v218[10] = @"fog-day";
  v197[0] = &unk_288235310;
  v196[0] = @"WeatherMapColors";
  v196[1] = @"WeatherMapPadding";
  v121 = xmmword_272B1FB00;
  v66 = [MEMORY[0x277CCAE60] valueWithBytes:&v121 objCType:"{CGPoint=dd}"];
  v197[1] = v66;
  v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v197 forKeys:v196 count:2];
  v219[10] = v65;
  v218[11] = @"fog-night";
  v195[0] = &unk_288235328;
  v194[0] = @"WeatherMapColors";
  v194[1] = @"WeatherMapPadding";
  v120 = xmmword_272B1FB00;
  v64 = [MEMORY[0x277CCAE60] valueWithBytes:&v120 objCType:"{CGPoint=dd}"];
  v195[1] = v64;
  v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v195 forKeys:v194 count:2];
  v219[11] = v63;
  v218[12] = @"hail-day";
  v193[0] = &unk_288235340;
  v192[0] = @"WeatherMapColors";
  v192[1] = @"WeatherMapPadding";
  v119 = xmmword_272B1FAF0;
  v62 = [MEMORY[0x277CCAE60] valueWithBytes:&v119 objCType:"{CGPoint=dd}"];
  v193[1] = v62;
  v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v193 forKeys:v192 count:2];
  v219[12] = v61;
  v218[13] = @"hail-night";
  v191[0] = &unk_288235358;
  v190[0] = @"WeatherMapColors";
  v190[1] = @"WeatherMapPadding";
  v118 = xmmword_272B1FAF0;
  v60 = [MEMORY[0x277CCAE60] valueWithBytes:&v118 objCType:"{CGPoint=dd}"];
  v191[1] = v60;
  v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v191 forKeys:v190 count:2];
  v219[13] = v59;
  v218[14] = @"haze";
  v189[0] = &unk_288235370;
  v188[0] = @"WeatherMapColors";
  v188[1] = @"WeatherMapPadding";
  v117[1] = 0;
  v117[0] = 0;
  v58 = [MEMORY[0x277CCAE60] valueWithBytes:v117 objCType:"{CGPoint=dd}"];
  v189[1] = v58;
  v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v189 forKeys:v188 count:2];
  v219[14] = v57;
  v218[15] = @"heavy-rain-day";
  v187[0] = &unk_288235388;
  v186[0] = @"WeatherMapColors";
  v186[1] = @"WeatherMapPadding";
  v116 = xmmword_272B1FAF0;
  v56 = [MEMORY[0x277CCAE60] valueWithBytes:&v116 objCType:"{CGPoint=dd}"];
  v187[1] = v56;
  v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v187 forKeys:v186 count:2];
  v219[15] = v55;
  v218[16] = @"heavy-rain-night";
  v185[0] = &unk_2882353A0;
  v184[0] = @"WeatherMapColors";
  v184[1] = @"WeatherMapPadding";
  v115 = xmmword_272B1FAF0;
  v87 = [MEMORY[0x277CCAE60] valueWithBytes:&v115 objCType:"{CGPoint=dd}"];
  v185[1] = v87;
  v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v185 forKeys:v184 count:2];
  v219[16] = v54;
  v218[17] = @"hot";
  v183[0] = &unk_2882353B8;
  v182[0] = @"WeatherMapColors";
  v182[1] = @"WeatherMapPadding";
  v114[1] = 0;
  v114[0] = 0;
  v53 = [MEMORY[0x277CCAE60] valueWithBytes:v114 objCType:"{CGPoint=dd}"];
  v183[1] = v53;
  v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v183 forKeys:v182 count:2];
  v219[17] = v52;
  v218[18] = @"hurricane";
  v181[0] = &unk_2882353D0;
  v180[0] = @"WeatherMapColors";
  v180[1] = @"WeatherMapPadding";
  v113[1] = 0;
  v113[0] = 0;
  v51 = [MEMORY[0x277CCAE60] valueWithBytes:v113 objCType:"{CGPoint=dd}"];
  v181[1] = v51;
  v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v181 forKeys:v180 count:2];
  v219[18] = v50;
  v218[19] = @"ice";
  v179[0] = &unk_2882353E8;
  v178[0] = @"WeatherMapColors";
  v178[1] = @"WeatherMapPadding";
  v112[1] = 0;
  v112[0] = 0;
  v49 = [MEMORY[0x277CCAE60] valueWithBytes:v112 objCType:"{CGPoint=dd}"];
  v179[1] = v49;
  v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v179 forKeys:v178 count:2];
  v219[19] = v48;
  v218[20] = @"mix-rainfall-day";
  v177[0] = &unk_288235400;
  v176[0] = @"WeatherMapColors";
  v176[1] = @"WeatherMapPadding";
  v111 = xmmword_272B1FB00;
  v47 = [MEMORY[0x277CCAE60] valueWithBytes:&v111 objCType:"{CGPoint=dd}"];
  v177[1] = v47;
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v177 forKeys:v176 count:2];
  v219[20] = v46;
  v218[21] = @"mix-rainfall-night";
  v175[0] = &unk_288235418;
  v174[0] = @"WeatherMapColors";
  v174[1] = @"WeatherMapPadding";
  v110 = xmmword_272B1FB00;
  v45 = [MEMORY[0x277CCAE60] valueWithBytes:&v110 objCType:"{CGPoint=dd}"];
  v175[1] = v45;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v175 forKeys:v174 count:2];
  v219[21] = v44;
  v218[22] = @"mostly-cloudy-day";
  v173[0] = &unk_288235430;
  v172[0] = @"WeatherMapColors";
  v172[1] = @"WeatherMapPadding";
  v109[1] = 0;
  v109[0] = 0;
  v43 = [MEMORY[0x277CCAE60] valueWithBytes:v109 objCType:"{CGPoint=dd}"];
  v173[1] = v43;
  v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v173 forKeys:v172 count:2];
  v219[22] = v42;
  v218[23] = @"mostly-cloudy-night";
  v171[0] = &unk_288235448;
  v170[0] = @"WeatherMapColors";
  v170[1] = @"WeatherMapPadding";
  v108[1] = 0;
  v108[0] = 0;
  v41 = [MEMORY[0x277CCAE60] valueWithBytes:v108 objCType:"{CGPoint=dd}"];
  v171[1] = v41;
  v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v171 forKeys:v170 count:2];
  v219[23] = v40;
  v218[24] = @"mostly-sunny";
  v169[0] = &unk_288235460;
  v168[0] = @"WeatherMapColors";
  v168[1] = @"WeatherMapPadding";
  v107[1] = 0;
  v107[0] = 0;
  v39 = [MEMORY[0x277CCAE60] valueWithBytes:v107 objCType:"{CGPoint=dd}"];
  v169[1] = v39;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v169 forKeys:v168 count:2];
  v219[24] = v38;
  v218[25] = @"no-report";
  v167[0] = &unk_288235478;
  v166[0] = @"WeatherMapColors";
  v166[1] = @"WeatherMapPadding";
  v106[1] = 0;
  v106[0] = 0;
  v37 = [MEMORY[0x277CCAE60] valueWithBytes:v106 objCType:"{CGPoint=dd}"];
  v167[1] = v37;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v167 forKeys:v166 count:2];
  v219[25] = v36;
  v218[26] = @"partly-cloudy-day";
  v165[0] = &unk_288235490;
  v164[0] = @"WeatherMapColors";
  v164[1] = @"WeatherMapPadding";
  v105 = xmmword_272B1FB10;
  v35 = [MEMORY[0x277CCAE60] valueWithBytes:&v105 objCType:"{CGPoint=dd}"];
  v165[1] = v35;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v165 forKeys:v164 count:2];
  v219[26] = v34;
  v218[27] = @"partly-cloudy-night";
  v163[0] = &unk_2882354A8;
  v162[0] = @"WeatherMapColors";
  v162[1] = @"WeatherMapPadding";
  v104 = xmmword_272B1FB20;
  v33 = [MEMORY[0x277CCAE60] valueWithBytes:&v104 objCType:"{CGPoint=dd}"];
  v163[1] = v33;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v163 forKeys:v162 count:2];
  v219[27] = v32;
  v218[28] = @"rain-day";
  v161[0] = &unk_2882354C0;
  v160[0] = @"WeatherMapColors";
  v160[1] = @"WeatherMapPadding";
  v103 = xmmword_272B1FB00;
  v31 = [MEMORY[0x277CCAE60] valueWithBytes:&v103 objCType:"{CGPoint=dd}"];
  v161[1] = v31;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v161 forKeys:v160 count:2];
  v219[28] = v30;
  v218[29] = @"rain-night";
  v159[0] = &unk_2882354D8;
  v158[0] = @"WeatherMapColors";
  v158[1] = @"WeatherMapPadding";
  v102 = xmmword_272B1FB00;
  v29 = [MEMORY[0x277CCAE60] valueWithBytes:&v102 objCType:"{CGPoint=dd}"];
  v159[1] = v29;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v159 forKeys:v158 count:2];
  v219[29] = v28;
  v218[30] = @"scattered-showers";
  v157[0] = &unk_2882354F0;
  v156[0] = @"WeatherMapColors";
  v156[1] = @"WeatherMapPadding";
  v101[0] = 0;
  v101[1] = 0;
  v27 = [MEMORY[0x277CCAE60] valueWithBytes:v101 objCType:"{CGPoint=dd}"];
  v157[1] = v27;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v157 forKeys:v156 count:2];
  v219[30] = v26;
  v218[31] = @"scattered-showers-night";
  v155[0] = &unk_288235508;
  v154[0] = @"WeatherMapColors";
  v154[1] = @"WeatherMapPadding";
  v100 = xmmword_272B1FB30;
  v25 = [MEMORY[0x277CCAE60] valueWithBytes:&v100 objCType:"{CGPoint=dd}"];
  v155[1] = v25;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v155 forKeys:v154 count:2];
  v219[31] = v24;
  v218[32] = @"scattered-thunderstorm";
  v153[0] = &unk_288235520;
  v152[0] = @"WeatherMapColors";
  v152[1] = @"WeatherMapPadding";
  v99[0] = 0;
  v99[1] = 0;
  v23 = [MEMORY[0x277CCAE60] valueWithBytes:v99 objCType:"{CGPoint=dd}"];
  v153[1] = v23;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v153 forKeys:v152 count:2];
  v219[32] = v22;
  v218[33] = @"scattered-thunderstorm-night";
  v151[0] = &unk_288235538;
  v150[0] = @"WeatherMapColors";
  v150[1] = @"WeatherMapPadding";
  v98 = xmmword_272B1FB30;
  v21 = [MEMORY[0x277CCAE60] valueWithBytes:&v98 objCType:"{CGPoint=dd}"];
  v151[1] = v21;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v151 forKeys:v150 count:2];
  v219[33] = v20;
  v218[34] = @"severe-thunderstorm-day";
  v149[0] = &unk_288235550;
  v148[0] = @"WeatherMapColors";
  v148[1] = @"WeatherMapPadding";
  v97 = xmmword_272B1FB00;
  v19 = [MEMORY[0x277CCAE60] valueWithBytes:&v97 objCType:"{CGPoint=dd}"];
  v149[1] = v19;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v149 forKeys:v148 count:2];
  v219[34] = v17;
  v218[35] = @"severe-thunderstorm-night";
  v147[0] = &unk_288235568;
  v146[0] = @"WeatherMapColors";
  v146[1] = @"WeatherMapPadding";
  v96 = xmmword_272B1FB00;
  v88 = [MEMORY[0x277CCAE60] valueWithBytes:&v96 objCType:"{CGPoint=dd}"];
  v147[1] = v88;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v147 forKeys:v146 count:2];
  v219[35] = v16;
  v218[36] = @"sleet-day";
  v145[0] = &unk_288235580;
  v144[0] = @"WeatherMapColors";
  v144[1] = @"WeatherMapPadding";
  v95 = xmmword_272B1FB40;
  v15 = [MEMORY[0x277CCAE60] valueWithBytes:&v95 objCType:"{CGPoint=dd}"];
  v145[1] = v15;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v145 forKeys:v144 count:2];
  v219[36] = v14;
  v218[37] = @"sleet-night";
  v143[0] = &unk_288235598;
  v142[0] = @"WeatherMapColors";
  v142[1] = @"WeatherMapPadding";
  v94 = xmmword_272B1FB40;
  v13 = [MEMORY[0x277CCAE60] valueWithBytes:&v94 objCType:"{CGPoint=dd}"];
  v143[1] = v13;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v143 forKeys:v142 count:2];
  v219[37] = v12;
  v218[38] = @"smoke";
  v141[0] = &unk_2882355B0;
  v140[0] = @"WeatherMapColors";
  v140[1] = @"WeatherMapPadding";
  v93 = xmmword_272B1FB20;
  v18 = [MEMORY[0x277CCAE60] valueWithBytes:&v93 objCType:"{CGPoint=dd}"];
  v141[1] = v18;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v141 forKeys:v140 count:2];
  v219[38] = v11;
  v218[39] = @"sunrise";
  v139[0] = &unk_2882355C8;
  v138[0] = @"WeatherMapColors";
  v138[1] = @"WeatherMapPadding";
  v92[0] = 0;
  v92[1] = 0;
  v10 = [MEMORY[0x277CCAE60] valueWithBytes:v92 objCType:"{CGPoint=dd}"];
  v139[1] = v10;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v139 forKeys:v138 count:2];
  v219[39] = v0;
  v218[40] = @"sunset";
  v137[0] = &unk_2882355E0;
  v136[0] = @"WeatherMapColors";
  v136[1] = @"WeatherMapPadding";
  v91[0] = 0;
  v91[1] = 0;
  v1 = [MEMORY[0x277CCAE60] valueWithBytes:v91 objCType:"{CGPoint=dd}"];
  v137[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v137 forKeys:v136 count:2];
  v219[40] = v2;
  v218[41] = @"tornado";
  v135[0] = &unk_2882355F8;
  v134[0] = @"WeatherMapColors";
  v134[1] = @"WeatherMapPadding";
  v90[0] = 0;
  v90[1] = 0;
  v3 = [MEMORY[0x277CCAE60] valueWithBytes:v90 objCType:"{CGPoint=dd}"];
  v135[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v135 forKeys:v134 count:2];
  v219[41] = v4;
  v218[42] = @"tropical-storm";
  v133[0] = &unk_288235610;
  v132[0] = @"WeatherMapColors";
  v132[1] = @"WeatherMapPadding";
  v89[0] = 0;
  v89[1] = 0;
  v5 = [MEMORY[0x277CCAE60] valueWithBytes:v89 objCType:"{CGPoint=dd}"];
  v133[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v133 forKeys:v132 count:2];
  v219[42] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v219 forKeys:v218 count:43];
  v8 = WASmallWeatherIconsMap_s_smallWeatherIconsMap;
  WASmallWeatherIconsMap_s_smallWeatherIconsMap = v7;

  v9 = *MEMORY[0x277D85DE8];
}

id WAG2FontWithSize(double a1)
{
  v15[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D74310];
  v3 = *MEMORY[0x277CC4860];
  v15[0] = *MEMORY[0x277CC4890];
  v4 = *MEMORY[0x277CC4950];
  v14[0] = v3;
  v14[1] = v4;
  v12 = *MEMORY[0x277CC48F0];
  v13 = &unk_288235700;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v15[1] = v5;
  v14[2] = *MEMORY[0x277CC4938];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:a1];
  v15[2] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v8 = [v2 fontDescriptorWithFontAttributes:v7];

  v9 = [MEMORY[0x277D74300] fontWithDescriptor:v8 size:0.0];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

void sub_272B00C14(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_272B010CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_272B0263C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_272B05654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_272B08E2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_272B09028(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_272B0F0F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_272B0F878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_272B0F9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_272B104AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void TWCAttributionURLForTrafficParameter_cold_2(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 description];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_272ACF000, a2, OS_LOG_TYPE_ERROR, "########### Logo URL %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void WAAttributionString_cold_1(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v5 = [v4 objectAtIndex:0];
  v7 = 138412802;
  v8 = a1;
  v9 = 2112;
  v10 = a2;
  v11 = 2112;
  v12 = v5;
  _os_log_error_impl(&dword_272ACF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "#Attribution Warning! Missing (%@) from string (%@)! (Lang: %@)", &v7, 0x20u);

  v6 = *MEMORY[0x277D85DE8];
}

void WAPresentFirstUsageDialogIfNeeded_cold_1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_272ACF000, a2, OS_LOG_TYPE_ERROR, "Failed to present first usage dialog %d@", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x282136CD0](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}