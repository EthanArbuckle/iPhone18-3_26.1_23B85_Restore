@interface WFWeatherChannelParserV3
- (WFWeatherChannelParserV3)init;
- (id)_parseCurrentConditions:(id)conditions;
- (id)_parseDailyForecastedConditions:(id)conditions;
- (id)_parseDailyPollenForecastedConditions:(id)conditions;
- (id)_parseForecastedConditions:(id)conditions individualForecastProcessingBlock:(id)block uniqueParsingBlock:(id)parsingBlock;
- (id)_parseHourlyForecastedConditions:(id)conditions;
- (id)_parseLastTwentyFourHoursOfObservations:(id)observations;
- (id)_parsePollutants:(id)pollutants;
- (id)parseAirQualityData:(id)data location:(id)location locale:(id)locale error:(id *)error;
- (id)parseForecastData:(id)data types:(unint64_t)types location:(id)location locale:(id)locale date:(id)date error:(id *)error rules:(id)rules;
- (void)_parseCommonComponents:(id)components intoConditions:(id)conditions;
- (void)_parseWebLinks:(id)links intoWeatherConditions:(id)conditions;
@end

@implementation WFWeatherChannelParserV3

- (WFWeatherChannelParserV3)init
{
  v8.receiver = self;
  v8.super_class = WFWeatherChannelParserV3;
  v2 = [(WFWeatherChannelParserV3 *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CBEA80]);
    v4 = [v3 initWithCalendarIdentifier:*MEMORY[0x277CBE5D0]];
    v5 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"GMT"];
    [(NSCalendar *)v4 setTimeZone:v5];

    calendar = v2->_calendar;
    v2->_calendar = v4;
  }

  return v2;
}

- (void)_parseCommonComponents:(id)components intoConditions:(id)conditions
{
  componentsCopy = components;
  conditionsCopy = conditions;
  v6 = [componentsCopy numberForKey:@"validTimeUtc"];
  v7 = v6;
  if (v6)
  {
    v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{objc_msgSend(v6, "unsignedIntegerValue")}];
    [conditionsCopy setObject:v8 forKeyedSubscript:@"WFWeatherForecastDateComponent"];
  }

  v9 = [componentsCopy numberForKey:@"expirationTimeUtc"];

  if (v9)
  {
    v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{objc_msgSend(v9, "unsignedIntegerValue")}];
    [conditionsCopy setObject:v10 forKeyedSubscript:@"WFWeatherForecastExpirationDateComponent"];
  }

  v11 = [componentsCopy numberForKey:@"iconCode"];
  if (v11)
  {
    [conditionsCopy setObject:v11 forKeyedSubscript:@"__THIS_WILL_BE_DEPRECATED__WFWeatherLegacyConditionComponent"];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{WFConditionCodeFromLegacyWeatherConditionCode(objc_msgSend(v11, "unsignedIntegerValue"))}];
    [conditionsCopy setObject:v12 forKeyedSubscript:@"WFWeatherConditionComponent"];
  }

  v13 = [componentsCopy numberForKey:@"relativeHumidity"];
  [conditionsCopy setObject:v13 forKeyedSubscript:@"WFWeatherHumidityComponent"];

  v14 = [componentsCopy numberForKey:@"qpf"];
  if (v14 || ([componentsCopy numberForKey:@"precip24Hour"], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v15 = v14;
    [conditionsCopy setObject:v14 forKeyedSubscript:@"WFWeatherPrecipitationAmountComponent"];
  }

  v16 = [componentsCopy numberForKey:@"precipChance"];
  [conditionsCopy setObject:v16 forKeyedSubscript:@"WFWeatherPrecipitationChanceComponent"];

  v17 = [componentsCopy numberForKey:@"sunriseTimeUtc"];

  if (v17)
  {
    v18 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{objc_msgSend(v17, "unsignedIntegerValue")}];
    [conditionsCopy setObject:v18 forKeyedSubscript:@"WFWeatherSunriseDateComponent"];
  }

  v19 = [componentsCopy numberForKey:@"sunsetTimeUtc"];

  if (v19)
  {
    v20 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{objc_msgSend(v19, "unsignedIntegerValue")}];
    [conditionsCopy setObject:v20 forKeyedSubscript:@"WFWeatherSunsetDateComponent"];
  }

  v21 = [componentsCopy numberForKey:@"temperature"];
  if (v21)
  {
    v22 = [WFTemperature alloc];
    [v21 doubleValue];
    v23 = [(WFTemperature *)v22 initWithTemperatureUnit:2 value:?];
    [conditionsCopy setObject:v23 forKeyedSubscript:@"WFWeatherTemperatureComponent"];
  }

  v24 = [componentsCopy numberForKey:@"temperatureFeelsLike"];

  if (v24)
  {
    v25 = [WFTemperature alloc];
    [v24 doubleValue];
    v26 = [(WFTemperature *)v25 initWithTemperatureUnit:2 value:?];
    [conditionsCopy setObject:v26 forKeyedSubscript:@"WFWeatherFeelsLikeTemperatureComponent"];
  }

  v27 = [componentsCopy numberForKey:@"uvIndex"];
  [conditionsCopy setObject:v27 forKeyedSubscript:@"WFWeatherUVIndexComponent"];

  v28 = [componentsCopy numberForKey:@"visibility"];
  if (v28)
  {
    [conditionsCopy setObject:v28 forKeyedSubscript:@"WFWeatherVisibilityComponent"];
  }

  v29 = [componentsCopy numberForKey:@"windDirection"];
  [conditionsCopy setObject:v29 forKeyedSubscript:@"WFWeatherWindDirectionComponent"];

  v30 = [componentsCopy numberForKey:@"windSpeed"];
  if (v30)
  {
    [conditionsCopy setObject:v30 forKeyedSubscript:@"WFWeatherWindSpeedComponent"];
  }

  v31 = [componentsCopy numberForKey:@"pressureAltimeter"];
  if (v31)
  {
    [conditionsCopy setObject:v31 forKeyedSubscript:@"WFWeatherPressureComponent"];
  }

  v32 = [componentsCopy numberForKey:@"pressureTendencyCode"];
  if (v32)
  {
    [conditionsCopy setObject:v32 forKeyedSubscript:@"WFWeatherPressureTrendComponent"];
  }
}

- (id)_parseCurrentConditions:(id)conditions
{
  conditionsCopy = conditions;
  if (conditionsCopy)
  {
    v5 = objc_opt_new();
    [(WFWeatherChannelParserV3 *)self _parseCommonComponents:conditionsCopy intoConditions:v5];
    v6 = [conditionsCopy numberForKey:@"temperatureDewPoint"];
    if (v6)
    {
      [v5 setObject:v6 forKeyedSubscript:@"WFWeatherDewpointComponent"];
      v7 = [WFTemperature alloc];
      [v6 doubleValue];
      v8 = [(WFTemperature *)v7 initWithTemperatureUnit:2 value:?];
      [v5 setObject:v8 forKeyedSubscript:@"WFWeatherDewpointTemperatureComponent"];
    }

    v9 = [conditionsCopy numberForKey:@"temperatureMaxSince7Am"];
    if (v9)
    {
      v10 = [WFTemperature alloc];
      [v9 doubleValue];
      v11 = [(WFTemperature *)v10 initWithTemperatureUnit:2 value:?];
      [v5 setObject:v11 forKeyedSubscript:@"WFWeatherHighTemperatureComponent"];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_parseForecastedConditions:(id)conditions individualForecastProcessingBlock:(id)block uniqueParsingBlock:(id)parsingBlock
{
  v41 = *MEMORY[0x277D85DE8];
  conditionsCopy = conditions;
  blockCopy = block;
  parsingBlockCopy = parsingBlock;
  allKeys = [conditionsCopy allKeys];
  firstObject = [allKeys firstObject];
  v10 = [conditionsCopy objectForKeyedSubscript:firstObject];
  v11 = [v10 count];

  v31 = [MEMORY[0x277CBEB18] arrayWithCapacity:v11];
  v29 = v11;
  if (v11)
  {
    v12 = 0;
    v13 = blockCopy + 16;
    do
    {
      v34 = v12;
      v14 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(allKeys, "count")}];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      obj = allKeys;
      v15 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v37;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v37 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v36 + 1) + 8 * i);
            if (((*(blockCopy + 2))(blockCopy, v14, conditionsCopy, v19, v12) & 1) == 0)
            {
              [conditionsCopy objectForKeyedSubscript:v19];
              v21 = v20 = v13;
              v22 = [v21 objectAtIndexedSubscript:v12];
              [v14 setObject:v22 forKeyedSubscript:v19];

              v12 = v34;
              v13 = v20;
            }
          }

          v16 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
        }

        while (v16);
      }

      v23 = objc_opt_new();
      [(WFWeatherChannelParserV3 *)self _parseCommonComponents:v14 intoConditions:v23];
      v24 = v12 + 1;
      [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v24];
      v26 = v25 = v24;
      [v23 setObject:v26 forKeyedSubscript:@"__THIS_WILL_BE_DEPRECATED__WFWeatherSeriesIndexComponent"];

      v12 = v25;
      parsingBlockCopy[2](parsingBlockCopy, v23, v14);
      [v31 addObject:v23];
    }

    while (v25 != v29);
  }

  v27 = [v31 copy];

  return v27;
}

- (id)_parseDailyForecastedConditions:(id)conditions
{
  if (conditions)
  {
    v4 = [(WFWeatherChannelParserV3 *)self _parseForecastedConditions:conditions individualForecastProcessingBlock:&__block_literal_global_22 uniqueParsingBlock:&__block_literal_global_12];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __60__WFWeatherChannelParserV3__parseDailyForecastedConditions___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = [@"daypart" isEqualToString:v10];
  if (v11)
  {
    v30 = v9;
    v12 = [v9 objectForKeyedSubscript:v10];
    v13 = [v12 firstObject];

    v29 = v11;
    v28 = v10;
    if (a5)
    {
      v14 = 0;
    }

    else
    {
      v15 = [v13 objectForKeyedSubscript:@"dayOrNight"];
      v16 = [v15 firstObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      v14 = isKindOfClass & 1;
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v18 = [v13 allKeys];
    v19 = [v18 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v32;
      v22 = v14 | (2 * a5);
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v32 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v24 = *(*(&v31 + 1) + 8 * i);
          v25 = [v13 objectForKeyedSubscript:v24];
          v26 = [v25 objectAtIndexedSubscript:v22];
          [v8 setObject:v26 forKeyedSubscript:v24];
        }

        v20 = [v18 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v20);
    }

    v9 = v30;
    v11 = v29;
    v10 = v28;
  }

  return v11;
}

void __60__WFWeatherChannelParserV3__parseDailyForecastedConditions___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v4 = a3;
  v5 = [v4 stringForKey:@"dayOrNight"];
  if (v5)
  {
    [v12 setNightForecast:{objc_msgSend(@"N", "isEqualToString:", v5)}];
  }

  v6 = [v4 numberForKey:@"temperatureMax"];
  if (v6)
  {
    v7 = [WFTemperature alloc];
    [v6 doubleValue];
    v8 = [(WFTemperature *)v7 initWithTemperatureUnit:2 value:?];
    [v12 setObject:v8 forKeyedSubscript:@"WFWeatherHighTemperatureComponent"];
  }

  v9 = [v4 numberForKey:@"temperatureMin"];
  if (v9)
  {
    v10 = [WFTemperature alloc];
    [v9 doubleValue];
    v11 = [(WFTemperature *)v10 initWithTemperatureUnit:2 value:?];
    [v12 setObject:v11 forKeyedSubscript:@"WFWeatherLowTemperatureComponent"];
  }
}

- (id)_parseDailyPollenForecastedConditions:(id)conditions
{
  v42 = *MEMORY[0x277D85DE8];
  conditionsCopy = conditions;
  v4 = conditionsCopy;
  if (conditionsCopy)
  {
    allKeys = [conditionsCopy allKeys];
    firstObject = [allKeys firstObject];
    v6 = [v4 objectForKeyedSubscript:firstObject];
    v7 = [v6 count];

    [MEMORY[0x277CBEB18] arrayWithCapacity:v7];
    v35 = v34 = v7;
    if (v7)
    {
      v8 = 0;
      v33 = @"treePollenIndex";
      do
      {
        v9 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(allKeys, "count", v33)}];
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v10 = allKeys;
        v11 = [v10 countByEnumeratingWithState:&v37 objects:v41 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v38;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v38 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v37 + 1) + 8 * i);
              v16 = [v4 arrayForKey:v15];
              v17 = [v16 objectAtIndexedSubscript:v8];
              [v9 setObject:v17 forKeyedSubscript:v15];
            }

            v12 = [v10 countByEnumeratingWithState:&v37 objects:v41 count:16];
          }

          while (v12);
        }

        v18 = objc_opt_new();
        v19 = [v9 numberForKey:@"fcstValid"];
        v20 = v19;
        if (v19)
        {
          v21 = MEMORY[0x277CBEAA8];
          [v19 doubleValue];
          v22 = [v21 dateWithTimeIntervalSince1970:?];
          [v18 setDate:v22];
        }

        v23 = [v9 stringForKey:@"dayInd"];
        v24 = v23;
        if (v23)
        {
          [v18 setTimeOfDay:WFTimeOfDayForString(v23)];
        }

        v25 = [v9 numberForKey:@"grassPollenIndex"];
        v26 = v25;
        if (v25)
        {
          [v18 setGrassIndex:{objc_msgSend(v25, "unsignedIntegerValue")}];
        }

        v27 = [v9 numberForKey:@"ragweedPollenIndex"];
        v28 = v27;
        if (v27)
        {
          [v18 setRagweedIndex:{objc_msgSend(v27, "unsignedIntegerValue")}];
        }

        v29 = [v9 numberForKey:v33];
        v30 = v29;
        if (v29)
        {
          [v18 setTreeIndex:{objc_msgSend(v29, "unsignedIntegerValue")}];
        }

        [v35 addObject:v18];

        ++v8;
      }

      while (v8 != v34);
    }

    v31 = [v35 copy];
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (id)_parseHourlyForecastedConditions:(id)conditions
{
  if (conditions)
  {
    v4 = [(WFWeatherChannelParserV3 *)self _parseForecastedConditions:conditions individualForecastProcessingBlock:&__block_literal_global_18 uniqueParsingBlock:&__block_literal_global_20];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __61__WFWeatherChannelParserV3__parseHourlyForecastedConditions___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v4 = a3;
  v5 = [v4 numberForKey:@"temperatureDewPoint"];
  if (v5)
  {
    [v9 setObject:v5 forKeyedSubscript:@"WFWeatherDewpointComponent"];
    v6 = [WFTemperature alloc];
    [v5 doubleValue];
    v7 = [(WFTemperature *)v6 initWithTemperatureUnit:2 value:?];
    [v9 setObject:v7 forKeyedSubscript:@"WFWeatherDewpointTemperatureComponent"];
  }

  v8 = [v4 numberForKey:@"wxSeverity"];
  [v9 setObject:v8 forKeyedSubscript:@"WFWeatherSeverityComponent"];
}

- (id)_parseLastTwentyFourHoursOfObservations:(id)observations
{
  if (observations)
  {
    v4 = [(WFWeatherChannelParserV3 *)self _parseForecastedConditions:observations individualForecastProcessingBlock:&__block_literal_global_22_0 uniqueParsingBlock:&__block_literal_global_24];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __68__WFWeatherChannelParserV3__parseLastTwentyFourHoursOfObservations___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v4 = [a3 numberForKey:@"temperatureDewPoint"];
  if (v4)
  {
    [v7 setObject:v4 forKeyedSubscript:@"WFWeatherDewpointComponent"];
    v5 = [WFTemperature alloc];
    [v4 doubleValue];
    v6 = [(WFTemperature *)v5 initWithTemperatureUnit:2 value:?];
    [v7 setObject:v6 forKeyedSubscript:@"WFWeatherDewpointTemperatureComponent"];
  }
}

- (id)_parsePollutants:(id)pollutants
{
  if (pollutants)
  {
    v3 = MEMORY[0x277CBEB38];
    pollutantsCopy = pollutants;
    v5 = [v3 dictionaryWithCapacity:{objc_msgSend(pollutantsCopy, "count")}];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __45__WFWeatherChannelParserV3__parsePollutants___block_invoke;
    v9[3] = &unk_279E6F5C8;
    v10 = v5;
    v6 = v5;
    [pollutantsCopy enumerateKeysAndObjectsUsingBlock:v9];

    v7 = [v6 copy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __45__WFWeatherChannelParserV3__parsePollutants___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v14 = objc_opt_new();
  v7 = [v5 stringForKey:@"name"];
  [v14 setLocalizedName:v7];

  v8 = [v5 stringForKey:@"phrase"];
  [v14 setLocalizedDescription:v8];

  v9 = [v5 numberForKey:@"amount"];
  [v9 doubleValue];
  [v14 setAmount:?];

  v10 = [v5 stringForKey:@"unit"];
  [v14 setUnit:v10];

  v11 = [v5 stringForKey:@"category"];
  [v14 setLocalizedCategoryDescription:v11];

  v12 = [v5 numberForKey:@"categoryIndex"];
  [v14 setCategoryIndex:{objc_msgSend(v12, "unsignedIntegerValue")}];

  v13 = [v5 numberForKey:@"index"];

  [v14 setIndex:{objc_msgSend(v13, "unsignedIntegerValue")}];
  [*(a1 + 32) setObject:v14 forKeyedSubscript:v6];
}

- (void)_parseWebLinks:(id)links intoWeatherConditions:(id)conditions
{
  if (links)
  {
    v5 = MEMORY[0x277CBEBC0];
    conditionsCopy = conditions;
    linksCopy = links;
    v8 = [linksCopy stringForKey:@"web"];
    v9 = [v5 URLWithString:v8];
    [conditionsCopy setObject:v9 forKeyedSubscript:@"WFWeatherWebLinkComponent"];

    v10 = MEMORY[0x277CBEBC0];
    v12 = [linksCopy stringForKey:@"web"];

    v11 = [v10 URLWithString:v12];
    [conditionsCopy setObject:v11 forKeyedSubscript:@"WFWeatherMobileLinkComponent"];
  }
}

- (id)parseForecastData:(id)data types:(unint64_t)types location:(id)location locale:(id)locale date:(id)date error:(id *)error rules:(id)rules
{
  v154[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  locationCopy = location;
  localeCopy = locale;
  dateCopy = date;
  rulesCopy = rules;
  if (dataCopy)
  {
    v139 = 0;
    v19 = [MEMORY[0x277CCAAA0] JSONObjectWithData:dataCopy options:0 error:&v139];
    v20 = v139;
  }

  else
  {
    v19 = 0;
    v20 = 0;
  }

  v21 = [v19 arrayForKey:@"errors"];
  v133 = v21;
  if (v20 || (v26 = v21, ![v19 count]))
  {
    v22 = MEMORY[0x277CCA9B8];
    v153 = *MEMORY[0x277CCA450];
    v154[0] = @"Failed to parse JSON forecast data";
    currentConditions = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v154 forKeys:&v153 count:1];
    [v22 wf_errorWithCode:1 encapsulatedError:v20 userInfo:currentConditions];
    *error = v24 = 0;
    goto LABEL_6;
  }

  v130 = v19;
  if ([v26 count])
  {
    currentConditions = [MEMORY[0x277CCACA8] stringWithFormat:@"Server error %@", v26];
    v27 = MEMORY[0x277CCA9B8];
    v151 = *MEMORY[0x277CCA068];
    v152 = currentConditions;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v152 forKeys:&v151 count:1];
    *error = [v27 wf_errorWithCode:17 userInfo:v28];

    v19 = v130;
    v24 = 0;
    goto LABEL_6;
  }

  v129 = objc_opt_new();
  IsRequestedInTypes = WFForecastTypeIsRequestedInTypes(2, types);
  v128 = dateCopy;
  if (types == 2)
  {
    v30 = v19;
  }

  else
  {
    if (!IsRequestedInTypes)
    {
      v31 = 0;
      goto LABEL_23;
    }

    v30 = [v19 dictionaryForKey:@"v3-wx-observations-current"];
  }

  v31 = v30;
  if (!v30)
  {
LABEL_23:
    v33 = 0;
    goto LABEL_24;
  }

  v32 = [(WFWeatherChannelParserV3 *)self _parseCurrentConditions:v30];
  if (!v32)
  {
    v34 = WFLogForCategory(7uLL);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [(WFWeatherChannelParserV3 *)v34 parseForecastData:v35 types:v36 location:v37 locale:v38 date:v39 error:v40 rules:v41];
    }

    v42 = MEMORY[0x277CCA9B8];
    v149 = *MEMORY[0x277CCA068];
    v150 = @"Failed to parse current observations from response.";
    v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v150 forKeys:&v149 count:1];
    *error = [v42 wf_errorWithCode:1 userInfo:v43];

    goto LABEL_23;
  }

  v33 = v32;
LABEL_24:
  if (WFForecastTypeIsRequestedInTypes(256, types))
  {
    v44 = [v130 dictionaryForKey:@"v3-links"];
    if (v44)
    {
      v45 = v44;
      [(WFWeatherChannelParserV3 *)self _parseWebLinks:v44 intoWeatherConditions:v33];
    }
  }

  [v129 setCurrentConditions:v33];
  v46 = WFForecastTypeIsRequestedInTypes(32, types);
  v127 = rulesCopy;
  if (types == 32)
  {
    v47 = v130;
  }

  else
  {
    if (!v46)
    {
      v48 = 0;
      v49 = 0;
      dateCopy = v128;
      goto LABEL_38;
    }

    v47 = [v130 dictionaryForKey:@"v3-wx-conditions-historical-hourly-1day"];
  }

  v48 = v47;
  dateCopy = v128;
  if (v47)
  {
    v49 = [(WFWeatherChannelParserV3 *)self _parseLastTwentyFourHoursOfObservations:v47];
    if (![v49 count])
    {
      v50 = localeCopy;
      v51 = WFLogForCategory(7uLL);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        [(WFWeatherChannelParserV3 *)v51 parseForecastData:v52 types:v53 location:v54 locale:v55 date:v56 error:v57 rules:v58];
      }

      v59 = MEMORY[0x277CCA9B8];
      v147 = *MEMORY[0x277CCA068];
      v148 = @"Failed to parse last twenty-four hours of observations from response.";
      v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v148 forKeys:&v147 count:1];
      *error = [v59 wf_errorWithCode:1 userInfo:v60];

      localeCopy = v50;
      rulesCopy = v127;
      dateCopy = v128;
    }
  }

  else
  {
    v49 = 0;
  }

LABEL_38:

  [v129 setLastTwentyFourHoursOfObservations:v49];
  v61 = WFForecastTypeIsRequestedInTypes(4, types);
  if (types == 4)
  {
    v62 = v130;
  }

  else
  {
    if (!v61)
    {
      v63 = 0;
      goto LABEL_48;
    }

    v62 = [v130 dictionaryForKey:@"v3-wx-forecast-hourly-1day"];
  }

  v63 = v62;
  if (!v62)
  {
LABEL_48:
    v64 = 0;
    goto LABEL_49;
  }

  v64 = [(WFWeatherChannelParserV3 *)self _parseHourlyForecastedConditions:v62];
  if (![v64 count])
  {
    v65 = localeCopy;
    v66 = WFLogForCategory(7uLL);
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      [(WFWeatherChannelParserV3 *)v66 parseForecastData:v67 types:v68 location:v69 locale:v70 date:v71 error:v72 rules:v73];
    }

    v74 = MEMORY[0x277CCA9B8];
    v145 = *MEMORY[0x277CCA068];
    v146 = @"Failed to parse daily forecasted conditions from response.";
    v75 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v146 forKeys:&v145 count:1];
    *error = [v74 wf_errorWithCode:1 userInfo:v75];

    localeCopy = v65;
    rulesCopy = v127;
    dateCopy = v128;
  }

LABEL_49:

  [v129 setHourlyForecasts:v64];
  v76 = WFForecastTypeIsRequestedInTypes(8, types);
  if (types == 8)
  {
    v77 = v130;
  }

  else
  {
    if (!v76)
    {
      v78 = 0;
      goto LABEL_59;
    }

    v77 = [v130 dictionaryForKey:@"v3-wx-forecast-daily-10day"];
  }

  v78 = v77;
  if (!v77)
  {
LABEL_59:
    v79 = 0;
    goto LABEL_60;
  }

  v79 = [(WFWeatherChannelParserV3 *)self _parseDailyForecastedConditions:v77];
  if (![v79 count])
  {
    v80 = localeCopy;
    v81 = WFLogForCategory(7uLL);
    if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
    {
      [(WFWeatherChannelParserV3 *)v81 parseForecastData:v82 types:v83 location:v84 locale:v85 date:v86 error:v87 rules:v88];
    }

    v89 = MEMORY[0x277CCA9B8];
    v143 = *MEMORY[0x277CCA068];
    v144 = @"Failed to parse daily forecasted conditions from response.";
    v90 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v144 forKeys:&v143 count:1];
    *error = [v89 wf_errorWithCode:1 userInfo:v90];

    localeCopy = v80;
    rulesCopy = v127;
    dateCopy = v128;
  }

LABEL_60:

  [v129 setDailyForecasts:v79];
  if (WFForecastTypeIsRequestedInTypes(1, types))
  {
    v91 = v130;
    if ([WFResponseParsingRules aqiEnabledByRules:rulesCopy forLocation:locationCopy])
    {
      v92 = [(WFWeatherChannelParserV3 *)self parseAirQualityData:v130 location:locationCopy locale:localeCopy error:error];
    }

    else
    {
      v92 = 0;
    }
  }

  else
  {
    v92 = 0;
    v91 = v130;
  }

  [v129 setAirQualityObservations:v92];

  v93 = WFForecastTypeIsRequestedInTypes(16, types);
  if (types == 16)
  {
    v94 = v91;
LABEL_69:
    v95 = v94;
    goto LABEL_71;
  }

  if (v93)
  {
    v94 = [v91 dictionaryForKey:@"v2idxPollenDaypart10"];
    goto LABEL_69;
  }

  v95 = 0;
LABEL_71:
  v96 = [v95 dictionaryForKey:@"pollenForecast12hour"];

  if (v96)
  {
    v97 = [(WFWeatherChannelParserV3 *)self _parseDailyPollenForecastedConditions:v96];
    if (![v97 count])
    {
      v98 = WFLogForCategory(7uLL);
      if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
      {
        [(WFWeatherChannelParserV3 *)v98 parseForecastData:v99 types:v100 location:v101 locale:v102 date:v103 error:v104 rules:v105];
      }

      v106 = MEMORY[0x277CCA9B8];
      v141 = *MEMORY[0x277CCA068];
      v142 = @"Failed to parse daily pollen forecasted conditions from response.";
      v107 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v142 forKeys:&v141 count:1];
      *error = [v106 wf_errorWithCode:1 userInfo:v107];

      dateCopy = v128;
    }
  }

  else
  {
    v97 = 0;
  }

  v24 = v129;
  [v129 setPollenForecasts:v97];

  currentConditions = [v129 currentConditions];
  if (currentConditions)
  {
    dailyForecasts = [v129 dailyForecasts];
    v109 = [dailyForecasts count];

    if (v109)
    {
      v124 = localeCopy;
      v126 = dataCopy;
      v110 = WFLogForCategory(7uLL);
      if (os_log_type_enabled(v110, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_272B94000, v110, OS_LOG_TYPE_INFO, "Found current conditions in response; let's try to update the high/low for our current conditions with the matching daily forecasted conditions.", buf, 2u);
      }

      currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
      v125 = locationCopy;
      timeZone = [locationCopy timeZone];
      [currentCalendar setTimeZone:timeZone];

      v113 = [currentConditions objectForKeyedSubscript:@"WFWeatherForecastDateComponent"];
      v134 = 0u;
      v135 = 0u;
      v136 = 0u;
      v137 = 0u;
      obja = [v129 dailyForecasts];
      v114 = [obja countByEnumeratingWithState:&v134 objects:v140 count:16];
      if (v114)
      {
        v115 = v114;
        v116 = *v135;
        while (2)
        {
          for (i = 0; i != v115; ++i)
          {
            if (*v135 != v116)
            {
              objc_enumerationMutation(obja);
            }

            v118 = *(*(&v134 + 1) + 8 * i);
            v119 = [v118 objectForKeyedSubscript:@"WFWeatherForecastDateComponent"];
            if ([currentCalendar isDate:v119 inSameDayAsDate:v113])
            {
              v120 = [v118 objectForKeyedSubscript:@"WFWeatherHighTemperatureComponent"];
              if (v120)
              {
                v121 = [v118 objectForKeyedSubscript:@"WFWeatherHighTemperatureComponent"];
                v122 = currentConditions;
              }

              else
              {
                v121 = [currentConditions objectForKeyedSubscript:@"WFWeatherHighTemperatureComponent"];
                v122 = v118;
              }

              [v122 setObject:v121 forKeyedSubscript:@"WFWeatherHighTemperatureComponent"];

              v123 = [v118 objectForKeyedSubscript:@"WFWeatherLowTemperatureComponent"];
              [currentConditions setObject:v123 forKeyedSubscript:@"WFWeatherLowTemperatureComponent"];

              goto LABEL_95;
            }
          }

          v115 = [obja countByEnumeratingWithState:&v134 objects:v140 count:16];
          if (v115)
          {
            continue;
          }

          break;
        }
      }

LABEL_95:

      locationCopy = v125;
      dataCopy = v126;
      localeCopy = v124;
      rulesCopy = v127;
      dateCopy = v128;
    }

    v24 = v129;
    v19 = v130;
  }

  else
  {
    v19 = v130;
  }

LABEL_6:

  return v24;
}

- (id)parseAirQualityData:(id)data location:(id)location locale:(id)locale error:(id *)error
{
  v49 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  localeCopy = locale;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = dataCopy;
    v12 = [v11 objectForKeyedSubscript:@"v3-wx-globalAirQuality"];

    if (v12)
    {
      v13 = [v11 objectForKeyedSubscript:@"v3-wx-globalAirQuality"];

      v11 = v13;
    }

    v14 = [v11 objectForKeyedSubscript:@"globalairquality"];
  }

  else
  {
    v14 = 0;
  }

  if ([v14 count])
  {
    v15 = objc_opt_new();
    [v15 setLocale:localeCopy];
    v16 = objc_opt_new();
    [v15 setDate:v16];

    v17 = [v14 numberForKey:@"expireTimeGmt"];
    v18 = v17;
    if (v17)
    {
      v19 = MEMORY[0x277CBEAA8];
      [v17 doubleValue];
      v20 = [v19 dateWithTimeIntervalSince1970:?];
      [v15 setExpirationDate:v20];
    }

    v21 = [v14 stringForKey:@"source"];
    [v15 setProvider:v21];

    v22 = [v14 stringForKey:@"disclaimer"];
    [v15 setLocalizedDisclaimer:v22];

    v42 = localeCopy;
    countryCode = [localeCopy countryCode];
    v24 = AqiScaleForCountryCode(countryCode);

    v25 = [v14 numberForKey:@"airQualityIndex"];
    v41 = v24;
    if (v25)
    {
      v26 = [v14 stringForKey:@"airQualityCategory"];
      if (v26)
      {
        v27 = [v14 numberForKey:@"airQualityCategoryIndex"];
        if (v27)
        {
          [v15 setLocalizedAirQualityIndex:{objc_msgSend(v25, "unsignedIntegerValue")}];
          v28 = [v24 scaleCategoryForCategoryIndex:objc_msgSend(v27 localizedCategoryDescription:{"unsignedIntegerValue"), v26}];
          [v15 setLocalizedAirQualityScaleCategory:v28];

          [v15 setCategory:{objc_msgSend(v27, "integerValue")}];
        }
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      v27 = 0;
      v26 = 0;
    }

    v30 = [v14 dictionaryForKey:@"pollutants"];
    v31 = [(WFWeatherChannelParserV3 *)self _parsePollutants:v30];

    allValues = [v31 allValues];
    [v15 setPollutants:allValues];

    v33 = [v14 stringForKey:@"primaryPollutant"];
    if (v33)
    {
      v34 = [v31 objectForKeyedSubscript:v33];
      if (v34)
      {
        [v15 setPrimaryPollutant:v34];
      }

      else
      {
        log = WFLogForCategory(7uLL);
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
        {
          pollutants = [v15 pollutants];
          v38 = NSStringFromSelector(sel_localizedName);
          v37 = [pollutants valueForKeyPath:v38];
          v36 = [v37 componentsJoinedByString:{@", "}];
          *buf = 138543618;
          v46 = v33;
          v47 = 2114;
          v48 = v36;
          _os_log_impl(&dword_272B94000, log, OS_LOG_TYPE_DEFAULT, "Did not find primary pollutant %{public}@ in list of pollutants: %{public}@", buf, 0x16u);
        }
      }
    }

    localeCopy = v42;
  }

  else
  {
    v29 = MEMORY[0x277CCA9B8];
    v43 = *MEMORY[0x277CCA450];
    v44 = @"Failed to parse JSON air quality data";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    [v29 wf_errorWithCode:1 userInfo:v18];
    *error = v15 = 0;
  }

  return v15;
}

@end