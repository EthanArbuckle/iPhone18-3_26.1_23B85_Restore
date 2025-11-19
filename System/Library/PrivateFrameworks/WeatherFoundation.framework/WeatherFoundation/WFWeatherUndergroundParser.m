@interface WFWeatherUndergroundParser
+ (NSSet)componentsForCurrentForecast;
+ (NSSet)componentsForHourlyForecasts;
+ (unint64_t)conditionFromWeatherUndergroundPhrase:(id)a3;
- (id)dateFromUTCDict:(id)a3 toUnitGranularity:(unint64_t)a4;
- (id)parseForecastData:(id)a3 types:(unint64_t)a4 location:(id)a5 locale:(id)a6 date:(id)a7 error:(id *)a8 rules:(id)a9;
- (id)parseHistoricalForecast:(id)a3 error:(id *)a4;
- (id)sanitizedNumberForKeyPath:(id)a3 dict:(id)a4;
- (id)sanitizedTemperatureForCelsiusKeyPath:(id)a3 fahrenheitKeyPath:(id)a4 dict:(id)a5;
- (void)logParsingErrorAtKeyPath:(id)a3 error:(id *)a4;
@end

@implementation WFWeatherUndergroundParser

- (id)parseForecastData:(id)a3 types:(unint64_t)a4 location:(id)a5 locale:(id)a6 date:(id)a7 error:(id *)a8 rules:(id)a9
{
  v26[1] = *MEMORY[0x277D85DE8];
  v24 = 0;
  v11 = [MEMORY[0x277CCAAA0] JSONObjectWithData:a3 options:0 error:{&v24, a6, a7}];
  v12 = v24;
  if (v11)
  {
    v13 = [(WFWeatherUndergroundParser *)self parseHistoricalForecast:v11 error:a8];
  }

  else
  {
    v14 = WFLogForCategory(7uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(WFWeatherUndergroundParser *)v12 parseForecastData:v14 types:v15 location:v16 locale:v17 date:v18 error:v19 rules:v20];
    }

    if (v12)
    {
      v21 = MEMORY[0x277CCA9B8];
      v25 = *MEMORY[0x277CCA450];
      v26[0] = @"Failed to parse JSON forecast data";
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      *a8 = [v21 wf_errorWithCode:1 encapsulatedError:v12 userInfo:v22];
    }

    v13 = 0;
  }

  return v13;
}

+ (NSSet)componentsForCurrentForecast
{
  v6[12] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6[0] = @"WFWeatherForecastDateComponent";
  v6[1] = @"WFWeatherTemperatureComponent";
  v6[2] = @"WFWeatherHighTemperatureComponent";
  v6[3] = @"WFWeatherLowTemperatureComponent";
  v6[4] = @"WFWeatherWindSpeedComponent";
  v6[5] = @"WFWeatherWindDirectionComponent";
  v6[6] = @"WFWeatherPrecipitationAmountComponent";
  v6[7] = @"WFWeatherDewpointComponent";
  v6[8] = @"WFWeatherVisibilityComponent";
  v6[9] = @"WFWeatherPressureComponent";
  v6[10] = @"WFWeatherSunsetDateComponent";
  v6[11] = @"WFWeatherSunriseDateComponent";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:12];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (NSSet)componentsForHourlyForecasts
{
  v6[12] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6[0] = @"WFWeatherForecastDateComponent";
  v6[1] = @"WFWeatherConditionComponent";
  v6[2] = @"WFWeatherTemperatureComponent";
  v6[3] = @"WFWeatherWindSpeedComponent";
  v6[4] = @"WFWeatherWindDirectionComponent";
  v6[5] = @"WFWeatherPrecipitationAmountComponent";
  v6[6] = @"WFWeatherHumidityComponent";
  v6[7] = @"WFWeatherDewpointComponent";
  v6[8] = @"WFWeatherVisibilityComponent";
  v6[9] = @"WFWeatherPressureComponent";
  v6[10] = @"WFWeatherSunsetDateComponent";
  v6[11] = @"WFWeatherSunriseDateComponent";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:12];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (id)parseHistoricalForecast:(id)a3 error:(id *)a4
{
  v65[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 wf_stringForKeyPath:&unk_288254B98];
  if (v7)
  {
    v8 = WFLogForCategory(7uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(WFWeatherUndergroundParser *)v7 parseHistoricalForecast:v8 error:v9, v10, v11, v12, v13, v14];
    }

    if (!a4)
    {
      v17 = 0;
      goto LABEL_24;
    }

    v15 = MEMORY[0x277CCA9B8];
    v64 = *MEMORY[0x277CCA450];
    v65[0] = v7;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:&v64 count:1];
    [v15 wf_errorWithCode:1 userInfo:v16];
    *a4 = v17 = 0;
  }

  else
  {
    v16 = [v6 wf_dictionaryForKeyPath:&unk_288254BB0];
    if (v16)
    {
      v18 = objc_alloc_init(WFParsedForecastData);
      v19 = [v16 wf_arrayForKeyPath:&unk_288254BE0];
      v20 = [v19 firstObject];

      if (v20)
      {
        v21 = objc_alloc_init(WFWeatherConditions);
        v22 = [v16 wf_dictionaryForKeyPath:&unk_288254BF8];
        v23 = [(WFWeatherUndergroundParser *)self dateFromUTCDict:v22 toUnitGranularity:16];
        [(WFWeatherConditions *)v21 setValue:v23 forComponent:?];

        v24 = [(WFWeatherUndergroundParser *)self sanitizedTemperatureForCelsiusKeyPath:&unk_288254C10 fahrenheitKeyPath:&unk_288254C28 dict:v20];
        [(WFWeatherConditions *)v21 setValue:v24 forComponent:?];

        v25 = [(WFWeatherUndergroundParser *)self sanitizedTemperatureForCelsiusKeyPath:&unk_288254C40 fahrenheitKeyPath:&unk_288254C58 dict:v20];
        [(WFWeatherConditions *)v21 setValue:v25 forComponent:@"WFWeatherHighTemperatureComponent"];

        v26 = [(WFWeatherUndergroundParser *)self sanitizedTemperatureForCelsiusKeyPath:&unk_288254C70 fahrenheitKeyPath:&unk_288254C88 dict:v20];
        [(WFWeatherConditions *)v21 setValue:v26 forComponent:@"WFWeatherLowTemperatureComponent"];

        v27 = [(WFWeatherUndergroundParser *)self sanitizedNumberForKeyPath:&unk_288254CA0 dict:v20];
        [(WFWeatherConditions *)v21 setValue:v27 forComponent:?];

        v28 = [(WFWeatherUndergroundParser *)self sanitizedNumberForKeyPath:&unk_288254CB8 dict:v20];
        [(WFWeatherConditions *)v21 setValue:v28 forComponent:?];

        v29 = [(WFWeatherUndergroundParser *)self sanitizedNumberForKeyPath:&unk_288254CD0 dict:v20];
        [(WFWeatherConditions *)v21 setValue:v29 forComponent:?];

        v30 = [(WFWeatherUndergroundParser *)self sanitizedNumberForKeyPath:&unk_288254CE8 dict:v20];
        [(WFWeatherConditions *)v21 setValue:v30 forComponent:?];

        v31 = [(WFWeatherUndergroundParser *)self sanitizedNumberForKeyPath:&unk_288254D00 dict:v20];
        [(WFWeatherConditions *)v21 setValue:v31 forComponent:?];

        v56 = v20;
        v32 = [(WFWeatherUndergroundParser *)self sanitizedNumberForKeyPath:&unk_288254D18 dict:v20];
        [(WFWeatherConditions *)v21 setValue:v32 forComponent:?];

        [(WFParsedForecastData *)v18 setCurrentConditions:v21];
        v33 = [v16 wf_arrayForKeyPath:&unk_288254D48];
        if ([v33 count])
        {
          v54 = v18;
          v55 = v6;
          v58 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v33, "count")}];
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          v53 = v33;
          obj = v33;
          v34 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
          if (v34)
          {
            v35 = v34;
            v36 = *v60;
            do
            {
              for (i = 0; i != v35; ++i)
              {
                if (*v60 != v36)
                {
                  objc_enumerationMutation(obj);
                }

                v38 = *(*(&v59 + 1) + 8 * i);
                v39 = objc_alloc_init(WFWeatherConditions);
                v40 = [v38 wf_dictionaryForKeyPath:&unk_288254D60];
                v41 = [(WFWeatherUndergroundParser *)self dateFromUTCDict:v40 toUnitGranularity:32];
                [(WFWeatherConditions *)v39 setValue:v41 forComponent:@"WFWeatherForecastDateComponent"];

                v42 = [(WFWeatherUndergroundParser *)self sanitizedTemperatureForCelsiusKeyPath:&unk_288254D78 fahrenheitKeyPath:&unk_288254D90 dict:v38];
                [(WFWeatherConditions *)v39 setValue:v42 forComponent:@"WFWeatherTemperatureComponent"];

                v43 = [(WFWeatherUndergroundParser *)self sanitizedNumberForKeyPath:&unk_288254DA8 dict:v38];
                [(WFWeatherConditions *)v39 setValue:v43 forComponent:@"WFWeatherWindSpeedComponent"];

                v44 = [(WFWeatherUndergroundParser *)self sanitizedNumberForKeyPath:&unk_288254DC0 dict:v38];
                [(WFWeatherConditions *)v39 setValue:v44 forComponent:@"WFWeatherWindDirectionComponent"];

                v45 = [WFWeatherUndergroundParser conditionFromWeatherUndergroundPhrase:@"conds"];
                v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v45];
                [(WFWeatherConditions *)v39 setValue:v46 forComponent:@"WFWeatherConditionComponent"];

                v47 = [(WFWeatherUndergroundParser *)self sanitizedNumberForKeyPath:&unk_288254DD8 dict:v38];
                [(WFWeatherConditions *)v39 setValue:v47 forComponent:@"WFWeatherVisibilityComponent"];

                v48 = [(WFWeatherUndergroundParser *)self sanitizedNumberForKeyPath:&unk_288254DF0 dict:v38];
                [(WFWeatherConditions *)v39 setValue:v48 forComponent:@"WFWeatherPressureComponent"];

                v49 = [(WFWeatherUndergroundParser *)self sanitizedNumberForKeyPath:&unk_288254E08 dict:v38];
                [(WFWeatherConditions *)v39 setValue:v49 forComponent:@"WFWeatherDewpointComponent"];

                v50 = [(WFWeatherUndergroundParser *)self sanitizedNumberForKeyPath:&unk_288254E20 dict:v38];
                [(WFWeatherConditions *)v39 setValue:v50 forComponent:@"WFWeatherHumidityComponent"];

                v51 = [(WFWeatherUndergroundParser *)self sanitizedNumberForKeyPath:&unk_288254E38 dict:v38];
                [(WFWeatherConditions *)v39 setValue:v51 forComponent:@"WFWeatherPrecipitationAmountComponent"];

                [v58 addObject:v39];
              }

              v35 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
            }

            while (v35);
          }

          v18 = v54;
          [(WFParsedForecastData *)v54 setHourlyForecasts:v58];

          v17 = v54;
          v6 = v55;
          v33 = v53;
        }

        else
        {
          [(WFWeatherUndergroundParser *)self logParsingErrorAtKeyPath:&unk_288254E50 error:a4];
          v17 = 0;
        }

        v20 = v56;
      }

      else
      {
        [(WFWeatherUndergroundParser *)self logParsingErrorAtKeyPath:&unk_288254D30 error:a4];
        v17 = 0;
      }
    }

    else
    {
      [(WFWeatherUndergroundParser *)self logParsingErrorAtKeyPath:&unk_288254BC8 error:a4];
      v17 = 0;
    }
  }

LABEL_24:

  return v17;
}

- (void)logParsingErrorAtKeyPath:(id)a3 error:(id *)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCACA8];
  v6 = [WFForecastDataParserUtils stringFromKeyPath:a3];
  v7 = [v5 stringWithFormat:@"Missing object at key path %@", v6];

  v8 = WFLogForCategory(7uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(WFWeatherUndergroundParser *)v7 logParsingErrorAtKeyPath:v8 error:v9, v10, v11, v12, v13, v14];
  }

  if (a4)
  {
    v15 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CCA450];
    v18[0] = v7;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    *a4 = [v15 wf_errorWithCode:1 userInfo:v16];
  }
}

- (id)sanitizedNumberForKeyPath:(id)a3 dict:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 wf_integerForKeyPath:v5];
  v8 = 0;
  if (v7 != -9999 && v7 != -999)
  {
    v9 = MEMORY[0x277CCABB0];
    [v6 wf_floatForKeyPath:v5];
    v8 = [v9 numberWithFloat:?];
  }

  return v8;
}

- (id)sanitizedTemperatureForCelsiusKeyPath:(id)a3 fahrenheitKeyPath:(id)a4 dict:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(WFWeatherUndergroundParser *)self sanitizedNumberForKeyPath:a4 dict:v8];
  v11 = [(WFWeatherUndergroundParser *)self sanitizedNumberForKeyPath:v9 dict:v8];

  if (v10 | v11)
  {
    v12 = objc_opt_new();
    if (v11)
    {
      [v11 floatValue];
      [v12 setCelsius:v13];
    }

    if (v10)
    {
      [v10 floatValue];
      [v12 setFahrenheit:v14];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (unint64_t)conditionFromWeatherUndergroundPhrase:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"^(Light|Heavy)\\s" options:0 error:0];
  v5 = [v4 firstMatchInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}];
  v6 = v5;
  v7 = v3;
  if (v5)
  {
    v8 = [v5 rangeAtIndex:1];
    v7 = [v3 substringWithRange:{v8, v9}];

    [v6 range];
    v11 = v10;
    v12 = [v3 length];
    [v6 range];
    [v3 substringWithRange:{v11, v12 - v13}];
  }

  if ([v7 isEqual:@"Drizzle"])
  {
    goto LABEL_4;
  }

  if ([v7 isEqual:@"Rain"])
  {
    v14 = 13;
    goto LABEL_20;
  }

  if ([v7 isEqual:@"Snow"])
  {
    v14 = 17;
    goto LABEL_20;
  }

  if ([v7 isEqual:@"Snow Grains"])
  {
    v14 = 14;
    goto LABEL_20;
  }

  if ([v7 isEqual:@"Ice Crystals"])
  {
    v14 = 19;
    goto LABEL_20;
  }

  if ([v7 isEqual:@"Ice Pellets"] & 1) != 0 || (objc_msgSend(v7, "isEqual:", @"Hail"))
  {
LABEL_15:
    v14 = 18;
    goto LABEL_20;
  }

  if ([v7 isEqual:@"Mist"] & 1) != 0 || (objc_msgSend(v7, "isEqual:", @"Fog") & 1) != 0 || (objc_msgSend(v7, "isEqual:", @"Fog Patches"))
  {
LABEL_19:
    v14 = 21;
    goto LABEL_20;
  }

  if ([v7 isEqual:@"Smoke"] & 1) != 0 || (objc_msgSend(v7, "isEqual:", @"Volcanic Ash"))
  {
    v14 = 23;
    goto LABEL_20;
  }

  if ([v7 isEqual:@"Widespread Dust"] & 1) != 0 || (objc_msgSend(v7, "isEqual:", @"Sand"))
  {
    goto LABEL_26;
  }

  if ([v7 isEqual:@"Haze"])
  {
    v14 = 22;
    goto LABEL_20;
  }

  if ([v7 isEqual:@"Spray"])
  {
    goto LABEL_19;
  }

  if ([v7 isEqual:@"Dust Whirls"] & 1) != 0 || (objc_msgSend(v7, "isEqual:", @"Sandstorm"))
  {
    goto LABEL_26;
  }

  if ([v7 isEqual:@"Low Drifting Snow"])
  {
    goto LABEL_33;
  }

  if ([v7 isEqual:@"Low Drifting Widespread Dust"] & 1) != 0 || (objc_msgSend(v7, "isEqual:", @"Low Drifting Sand"))
  {
    goto LABEL_26;
  }

  if ([v7 isEqual:@"Blowing Snow"])
  {
    goto LABEL_33;
  }

  if ([v7 isEqual:@"Blowing Widespread Dust"] & 1) != 0 || (objc_msgSend(v7, "isEqual:", @"Blowing Sand"))
  {
LABEL_26:
    v14 = 20;
    goto LABEL_20;
  }

  if ([v7 isEqual:@"Rain Mist"])
  {
LABEL_4:
    v14 = 10;
    goto LABEL_20;
  }

  if ([v7 isEqual:@"Rain Showers"])
  {
    v14 = 12;
    goto LABEL_20;
  }

  if ([v7 isEqual:@"Snow Showers"])
  {
    v14 = 15;
    goto LABEL_20;
  }

  if ([v7 isEqual:@"Snow Blowing Snow Mist"])
  {
LABEL_33:
    v14 = 16;
    goto LABEL_20;
  }

  if ([v7 isEqual:@"Ice Pellet Showers"] & 1) != 0 || (objc_msgSend(v7, "isEqual:", @"Hail Showers"))
  {
    v14 = 36;
    goto LABEL_20;
  }

  if ([v7 isEqual:@"Small Hail Showers"])
  {
    goto LABEL_15;
  }

  if ([v7 isEqual:@"Thunderstorm"] & 1) != 0 || (objc_msgSend(v7, "isEqual:", @"Thunderstorms and Rain") & 1) != 0 || (objc_msgSend(v7, "isEqual:", @"Thunderstorms and Snow") & 1) != 0 || (objc_msgSend(v7, "isEqual:", @"Thunderstorms and Ice Pellets") & 1) != 0 || (objc_msgSend(v7, "isEqual:", @"Thunderstorms with Hail") & 1) != 0 || (objc_msgSend(v7, "isEqual:", @"Thunderstorms with Small Hail"))
  {
    v14 = 5;
    goto LABEL_20;
  }

  if ([v7 isEqual:@"Freezing Drizzle"])
  {
    v14 = 9;
    goto LABEL_20;
  }

  if ([v7 isEqual:@"Freezing Rain"])
  {
    v14 = 11;
    goto LABEL_20;
  }

  if ([v7 isEqual:@"Freezing Fog"] & 1) != 0 || (objc_msgSend(v7, "isEqual:", @"Patches of Fog") & 1) != 0 || (objc_msgSend(v7, "isEqual:", @"Shallow Fog") & 1) != 0 || (objc_msgSend(v7, "isEqual:", @"Partial Fog"))
  {
    goto LABEL_19;
  }

  if ([v7 isEqual:@"Overcast"])
  {
    v14 = 27;
    goto LABEL_20;
  }

  if ([v7 isEqual:@"Clear"])
  {
    v14 = 33;
    goto LABEL_20;
  }

  if ([v7 isEqual:@"Partly Cloudy"])
  {
    goto LABEL_72;
  }

  if ([v7 isEqual:@"Mostly Cloudy"])
  {
    goto LABEL_70;
  }

  if ([v7 isEqual:@"Scattered Clouds"])
  {
LABEL_72:
    v14 = 31;
    goto LABEL_20;
  }

  if ([v7 isEqual:@"Small Hail"])
  {
    goto LABEL_15;
  }

  if ([v7 isEqual:@"Squalls"])
  {
LABEL_70:
    v14 = 29;
    goto LABEL_20;
  }

  if ([v7 isEqual:@"Funnel Cloud"])
  {
    v14 = 1;
  }

  else
  {
    if (([v7 isEqual:@"Unknown Precipitation"] & 1) == 0)
    {
      [v7 isEqual:@"Unknown"];
    }

    v14 = 0;
  }

LABEL_20:

  return v14;
}

- (id)dateFromUTCDict:(id)a3 toUnitGranularity:(unint64_t)a4
{
  v5 = a3;
  if (!v5)
  {
    v8 = 0;
    goto LABEL_14;
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  v7 = __ROR8__(a4 - 4, 2);
  if (v7 > 2)
  {
    if (v7 == 3)
    {
LABEL_11:
      [v6 setDay:{objc_msgSend(v5, "wf_integerForKeyPath:", &unk_288254E98)}];
      goto LABEL_12;
    }

    if (v7 == 7)
    {
LABEL_10:
      [v6 setHour:{objc_msgSend(v5, "wf_integerForKeyPath:", &unk_288254E80)}];
      goto LABEL_11;
    }

LABEL_9:
    [v6 setMinute:{objc_msgSend(v5, "wf_integerForKeyPath:", &unk_288254E68)}];
    goto LABEL_10;
  }

  if (v7)
  {
    if (v7 == 1)
    {
LABEL_12:
      [v6 setMonth:{objc_msgSend(v5, "wf_integerForKeyPath:", &unk_288254EB0)}];
      goto LABEL_13;
    }

    goto LABEL_9;
  }

LABEL_13:
  [v6 setYear:{objc_msgSend(v5, "wf_integerForKeyPath:", &unk_288254EC8)}];
  v9 = +[WFWeatherConditions calendar];
  v8 = [v9 dateFromComponents:v6];

LABEL_14:

  return v8;
}

@end