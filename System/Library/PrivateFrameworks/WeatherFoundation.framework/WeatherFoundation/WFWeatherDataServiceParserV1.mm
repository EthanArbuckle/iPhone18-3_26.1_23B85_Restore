@interface WFWeatherDataServiceParserV1
+ (id)dateFormatter;
- (BOOL)isProviderAttribution:(id)attribution stillValidWithMetadata:(id)metadata;
- (id)airQualityDictFromData:(id)data types:(unint64_t)types;
- (id)changeForecastDictFromData:(id)data types:(unint64_t)types;
- (id)currentObservationsDictFromData:(id)data types:(unint64_t)types;
- (id)dailyAlmanacDictFromData:(id)data types:(unint64_t)types;
- (id)dailyForecastDictFromData:(id)data types:(unint64_t)types;
- (id)dailyHistoryDictFromData:(id)data types:(unint64_t)types;
- (id)hourlyForecastDictFromData:(id)data types:(unint64_t)types;
- (id)hourlyHistoryDictFromData:(id)data types:(unint64_t)types;
- (id)nextHourPrecipitationEventDictFromData:(id)data types:(unint64_t)types;
- (id)nowLinksDictFromData:(id)data types:(unint64_t)types;
- (id)parseAQIScaleNamed:(id)named data:(id)data error:(id *)error;
- (id)parseAirQualityFromData:(id)data locale:(id)locale;
- (id)parseAlmanacFromData:(id)data withUnit:(int)unit;
- (id)parseChangeForecastFromData:(id)data withUnit:(int)unit;
- (id)parseDailyForecastFromData:(id)data withUnit:(int)unit;
- (id)parseDailyHistoryFromData:(id)data withUnit:(int)unit;
- (id)parseForecastData:(id)data types:(unint64_t)types location:(id)location units:(int)units locale:(id)locale date:(id)date error:(id *)error rules:(id)self0;
- (id)parseForecastDataFromDict:(id)dict types:(unint64_t)types location:(id)location units:(int)units locale:(id)locale date:(id)date error:(id *)error rules:(id)self0;
- (id)parseHourlyForecastFromData:(id)data withUnit:(int)unit;
- (id)parseHourlyHistoryFromData:(id)data withUnit:(int)unit;
- (id)parseMetaDataFromData:(id)data;
- (id)parseNextHourPrecipitationFromData:(id)data withUnit:(int)unit;
- (id)parsePollenFromData:(id)data;
- (id)parsePollutants:(id)pollutants;
- (id)parseSevereWeatherEventsFromData:(id)data withUnit:(int)unit;
- (id)parseWeatherComponentsFromData:(id)data withUnit:(int)unit;
- (id)parsedCategoryFromDictionary:(id)dictionary;
- (id)parsedGradientStopFromDictionary:(id)dictionary;
- (id)pollenDictFromData:(id)data types:(unint64_t)types;
- (id)severeWeatherEventDictFromData:(id)data types:(unint64_t)types;
- (void)parseNowLinksFromData:(id)data intoConditions:(id)conditions;
- (void)parseWeatherComponentsFromData:(id)data intoConditions:(id)conditions withUnit:(int)unit;
@end

@implementation WFWeatherDataServiceParserV1

uint64_t __60__WFWeatherDataServiceParserV1_ParseNextHour__dateFormatter__block_invoke()
{
  dateFormatter_dateFormatter = objc_alloc_init(MEMORY[0x277CCAA68]);

  return MEMORY[0x2821F96F8]();
}

- (id)parseNextHourPrecipitationFromData:(id)data withUnit:(int)unit
{
  v113 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v81 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v76 = dataCopy;
  [dataCopy objectForKey:@"minutes"];
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  obj = v108 = 0u;
  v5 = [obj countByEnumeratingWithState:&v105 objects:v112 count:16];
  if (v5)
  {
    v6 = v5;
    v90 = *v106;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v106 != v90)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v105 + 1) + 8 * i);
        v9 = [v8 objectForKey:@"precipChance"];
        v10 = [v8 objectForKey:@"precipIntensity"];
        v11 = [v8 objectForKey:@"perceivedIntensity"];
        v12 = [v8 objectForKey:@"startAt"];
        v13 = v12;
        if (v12)
        {
          v14 = MEMORY[0x277CBEAA8];
          [v12 doubleValue];
          v15 = [v14 dateWithTimeIntervalSince1970:?];
        }

        else
        {
          v15 = 0;
        }

        v16 = [WFNextHourPrecipitationMinute alloc];
        [v10 doubleValue];
        v18 = v17;
        [v9 doubleValue];
        v20 = v19;
        [v11 doubleValue];
        v22 = [(WFNextHourPrecipitationMinute *)v16 initWithIntensity:v15 chance:v18 perceivedIntensity:v20 date:v21];
        [v81 addObject:v22];
      }

      v6 = [obj countByEnumeratingWithState:&v105 objects:v112 count:16];
    }

    while (v6);
  }

  v23 = [v76 objectForKey:@"metadata"];
  v24 = [v23 objectForKey:@"expire_time"];
  v74 = v24;
  if (v24)
  {
    v25 = MEMORY[0x277CBEAA8];
    [v24 doubleValue];
    v73 = [v25 dateWithTimeIntervalSince1970:?];
  }

  else
  {
    v73 = 0;
  }

  v26 = [v76 objectForKey:@"startTime"];
  v72 = v26;
  if (v26)
  {
    v27 = MEMORY[0x277CBEAA8];
    [v26 doubleValue];
    v71 = [v27 dateWithTimeIntervalSince1970:?];
  }

  else
  {
    v71 = 0;
  }

  v28 = [v23 objectForKey:@"read_time"];
  v70 = v28;
  if (v28)
  {
    v29 = MEMORY[0x277CBEAA8];
    [v28 doubleValue];
    v69 = [v29 dateWithTimeIntervalSince1970:?];
  }

  else
  {
    v69 = 0;
  }

  v75 = v23;
  array = [MEMORY[0x277CBEB18] array];
  [v76 objectForKey:@"condition"];
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v77 = v104 = 0u;
  v82 = [v77 countByEnumeratingWithState:&v101 objects:v111 count:16];
  if (v82)
  {
    v79 = *v102;
    do
    {
      for (j = 0; j != v82; ++j)
      {
        if (*v102 != v79)
        {
          objc_enumerationMutation(v77);
        }

        v31 = *(*(&v101 + 1) + 8 * j);
        v32 = [v31 objectForKey:@"token"];
        v33 = [v31 objectForKey:@"shortTemplate"];
        v34 = [v31 objectForKey:@"longTemplate"];
        v35 = [v31 objectForKey:@"validUntil"];
        v36 = v35;
        if (v35)
        {
          v37 = MEMORY[0x277CBEAA8];
          [v35 doubleValue];
          v38 = [v37 dateWithTimeIntervalSince1970:?];
        }

        else
        {
          v38 = 0;
        }

        v39 = [v31 objectForKey:@"parameters"];
        if ([v39 count])
        {
          v85 = v38;
          v86 = v36;
          v87 = v34;
          v88 = v33;
          v91 = v32;
          dictionary = [MEMORY[0x277CBEB38] dictionary];
          v97 = 0u;
          v98 = 0u;
          v99 = 0u;
          v100 = 0u;
          v83 = v39;
          v41 = v39;
          v42 = [v41 countByEnumeratingWithState:&v97 objects:v110 count:16];
          if (v42)
          {
            v43 = v42;
            v44 = *v98;
            do
            {
              for (k = 0; k != v43; ++k)
              {
                if (*v98 != v44)
                {
                  objc_enumerationMutation(v41);
                }

                v46 = *(*(&v97 + 1) + 8 * k);
                v47 = [v41 objectForKey:v46];
                v48 = MEMORY[0x277CBEAA8];
                [v47 doubleValue];
                v49 = [v48 dateWithTimeIntervalSince1970:?];
                [dictionary setValue:v49 forKey:v46];
              }

              v43 = [v41 countByEnumeratingWithState:&v97 objects:v110 count:16];
            }

            while (v43);
          }

          v33 = v88;
          v32 = v91;
          v36 = v86;
          v34 = v87;
          v39 = v83;
          v38 = v85;
        }

        else
        {
          dictionary = 0;
        }

        v50 = [[WFNextHourPrecipitationDescription alloc] initWithToken:v32 shortTemplate:v33 longTemplate:v34 parameters:dictionary validUntil:v38];
        [array addObject:v50];
      }

      v82 = [v77 countByEnumeratingWithState:&v101 objects:v111 count:16];
    }

    while (v82);
  }

  array2 = [MEMORY[0x277CBEB18] array];
  [v76 objectForKey:@"summary"];
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v84 = v96 = 0u;
  v51 = [v84 countByEnumeratingWithState:&v93 objects:v109 count:16];
  if (v51)
  {
    v52 = v51;
    v89 = *v94;
    do
    {
      for (m = 0; m != v52; ++m)
      {
        if (*v94 != v89)
        {
          objc_enumerationMutation(v84);
        }

        v54 = *(*(&v93 + 1) + 8 * m);
        v55 = [v54 objectForKey:@"condition"];
        v56 = [v54 objectForKey:@"probability"];
        v57 = [v54 objectForKey:@"intensity"];
        v58 = [v54 objectForKey:@"validUntil"];
        v59 = v58;
        if (v58)
        {
          v60 = MEMORY[0x277CBEAA8];
          [v58 doubleValue];
          v61 = [v60 dateWithTimeIntervalSince1970:?];
        }

        else
        {
          v61 = 0;
        }

        v62 = [WFNextHourPrecipitationCondition alloc];
        [v57 doubleValue];
        v64 = v63;
        [v56 doubleValue];
        v66 = [(WFNextHourPrecipitationCondition *)v62 initWithType:v55 intensity:v61 probability:v64 validUntil:v65];
        [array2 addObject:v66];
      }

      v52 = [v84 countByEnumeratingWithState:&v93 objects:v109 count:16];
    }

    while (v52);
  }

  v67 = [[WFNextHourPrecipitation alloc] initWithReadDate:v69 startDate:v71 expirationDate:v73 minutes:v81 conditions:array2 descriptions:array];

  return v67;
}

- (id)nextHourPrecipitationEventDictFromData:(id)data types:(unint64_t)types
{
  dataCopy = data;
  if (WFForecastTypeIsRequestedInTypes(2048, types))
  {
    v6 = [dataCopy objectForKey:@"next_hour"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)parseAlmanacFromData:(id)data withUnit:(int)unit
{
  v4 = *&unit;
  dataCopy = data;
  v6 = objc_opt_new();
  v7 = [dataCopy numberForKey:@"precipitationAverage"];
  if (v7)
  {
    [v6 setObject:v7 forKeyedSubscript:@"WFWeatherPrecipitationAmountComponent"];
  }

  v8 = [dataCopy numberForKey:@"temperatureAverageMax"];
  if (v8)
  {
    v9 = [WFTemperature alloc];
    [v8 doubleValue];
    v10 = [(WFTemperature *)v9 initWithTemperatureUnit:v4 value:?];
    [v6 setObject:v10 forKeyedSubscript:@"WFWeatherHighTemperatureComponent"];
  }

  v11 = [dataCopy numberForKey:@"temperatureAverageMin"];
  if (v11)
  {
    v12 = [WFTemperature alloc];
    [v11 doubleValue];
    v13 = [(WFTemperature *)v12 initWithTemperatureUnit:v4 value:?];
    [v6 setObject:v13 forKeyedSubscript:@"WFWeatherLowTemperatureComponent"];
  }

  return v6;
}

- (id)dailyAlmanacDictFromData:(id)data types:(unint64_t)types
{
  dataCopy = data;
  if (WFForecastTypeIsRequestedInTypes(128, types))
  {
    v6 = [dataCopy dictionaryForKey:@"daily_almanac"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)parsePollenFromData:(id)data
{
  v41 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  allKeys = [dataCopy allKeys];
  firstObject = [allKeys firstObject];
  v5 = [dataCopy objectForKeyedSubscript:firstObject];
  v6 = [v5 count];

  [MEMORY[0x277CBEB18] arrayWithCapacity:v6];
  v34 = v33 = v6;
  if (v6)
  {
    v7 = 0;
    v32 = @"treePollenIndex";
    do
    {
      v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(allKeys, "count", v32)}];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v9 = allKeys;
      v10 = [v9 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v37;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v37 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v36 + 1) + 8 * i);
            v15 = [dataCopy arrayForKey:v14];
            v16 = [v15 objectAtIndexedSubscript:v7];
            [v8 setObject:v16 forKeyedSubscript:v14];
          }

          v11 = [v9 countByEnumeratingWithState:&v36 objects:v40 count:16];
        }

        while (v11);
      }

      v17 = objc_opt_new();
      v18 = [v8 numberForKey:@"validTimeUtc"];
      v19 = v18;
      if (v18)
      {
        v20 = MEMORY[0x277CBEAA8];
        [v18 doubleValue];
        v21 = [v20 dateWithTimeIntervalSince1970:?];
        [v17 setDate:v21];
      }

      v22 = [v8 stringForKey:@"dayOrNight"];
      v23 = v22;
      if (v22)
      {
        [v17 setTimeOfDay:WFTimeOfDayForString(v22)];
      }

      v24 = [v8 numberForKey:@"grassPollenIndex"];
      v25 = v24;
      if (v24)
      {
        [v17 setGrassIndex:{objc_msgSend(v24, "unsignedIntegerValue")}];
      }

      v26 = [v8 numberForKey:@"ragweedPollenIndex"];
      v27 = v26;
      if (v26)
      {
        [v17 setRagweedIndex:{objc_msgSend(v26, "unsignedIntegerValue")}];
      }

      v28 = [v8 numberForKey:v32];
      v29 = v28;
      if (v28)
      {
        [v17 setTreeIndex:{objc_msgSend(v28, "unsignedIntegerValue")}];
      }

      [v34 addObject:v17];

      ++v7;
    }

    while (v7 != v33);
  }

  v30 = [v34 copy];

  return v30;
}

- (id)pollenDictFromData:(id)data types:(unint64_t)types
{
  dataCopy = data;
  if (WFForecastTypeIsRequestedInTypes(16, types))
  {
    v6 = [dataCopy dictionaryForKey:@"pollen"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)parseHourlyForecastFromData:(id)data withUnit:(int)unit
{
  v4 = *&unit;
  v23 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v7 = objc_opt_new();
  v8 = [dataCopy dictionaryForKey:@"metadata"];
  if (v8)
  {
    [(WFWeatherDataServiceParserV1 *)self parseMetaDataFromData:v8];
  }

  v9 = [dataCopy arrayForKey:@"hours"];
  v10 = v9;
  if (v9)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [(WFWeatherDataServiceParserV1 *)self parseWeatherComponentsFromData:*(*(&v18 + 1) + 8 * i) withUnit:v4];
          [v7 addObject:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }
  }

  v16 = [v7 copy];

  return v16;
}

- (id)hourlyForecastDictFromData:(id)data types:(unint64_t)types
{
  dataCopy = data;
  if (WFForecastTypeIsRequestedInTypes(4, types))
  {
    v6 = [dataCopy dictionaryForKey:@"hourly_forecast"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)dateFormatter
{
  if (dateFormatter_onceToken_0 != -1)
  {
    +[WFWeatherDataServiceParserV1(ParseSevereWeather) dateFormatter];
  }

  v3 = dateFormatter_dateFormatter_0;

  return v3;
}

uint64_t __65__WFWeatherDataServiceParserV1_ParseSevereWeather__dateFormatter__block_invoke()
{
  dateFormatter_dateFormatter_0 = objc_alloc_init(MEMORY[0x277CCAA68]);

  return MEMORY[0x2821F96F8]();
}

- (id)parseSevereWeatherEventsFromData:(id)data withUnit:(int)unit
{
  v30 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  array = [MEMORY[0x277CBEB18] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = dataCopy;
  v21 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v21)
  {
    v19 = *v26;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v25 + 1) + 8 * i);
        v24 = [v6 objectForKey:@"areaName"];
        v23 = [v6 objectForKey:@"description"];
        v7 = [v6 objectForKey:@"expireTime"];
        v8 = [v6 objectForKey:@"id"];
        v22 = [v6 objectForKey:@"source"];
        v9 = [v6 objectForKey:@"learnMoreURL"];
        v10 = [v6 numberForKey:@"isImportant"];
        v11 = v10;
        if (v10)
        {
          bOOLValue = [v10 BOOLValue];
          if (v7)
          {
            goto LABEL_8;
          }
        }

        else
        {
          bOOLValue = 0;
          if (v7)
          {
LABEL_8:
            dateFormatter = [objc_opt_class() dateFormatter];
            v14 = [dateFormatter dateFromString:v7];

            goto LABEL_11;
          }
        }

        v14 = 0;
LABEL_11:
        if (v9)
        {
          v15 = [MEMORY[0x277CBEBC0] URLWithString:v9];
        }

        else
        {
          v15 = 0;
        }

        v16 = [[WFSevereWeatherEvent alloc] initWithIdentifier:v8 areaName:v24 eventDescription:v23 source:v22 expirationDate:v14 URL:v15 importance:bOOLValue];
        [array addObject:v16];
      }

      v21 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v21);
  }

  return array;
}

- (id)severeWeatherEventDictFromData:(id)data types:(unint64_t)types
{
  dataCopy = data;
  if (WFForecastTypeIsRequestedInTypes(1024, types))
  {
    v6 = [dataCopy arrayForKey:@"severe_weather_events"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)parseChangeForecastFromData:(id)data withUnit:(int)unit
{
  v4 = MEMORY[0x277CBEB18];
  dataCopy = data;
  array = [v4 array];
  v7 = [dataCopy stringForKey:@"messageSameTimezone"];
  v8 = [dataCopy stringForKey:@"messageDifferentTimezone"];

  v9 = [WFChangeForecast alloc];
  date = [MEMORY[0x277CBEAA8] date];
  v11 = [(WFChangeForecast *)v9 initWithDate:date descriptionSameTimeZone:v7 descriptionDifferentTimeZone:v8];

  [array addObject:v11];

  return array;
}

- (id)changeForecastDictFromData:(id)data types:(unint64_t)types
{
  dataCopy = data;
  if (WFForecastTypeIsRequestedInTypes(512, types))
  {
    v6 = [dataCopy dictionaryForKey:@"change_forecast"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)parseHourlyHistoryFromData:(id)data withUnit:(int)unit
{
  v4 = *&unit;
  v23 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v7 = objc_opt_new();
  v8 = [dataCopy dictionaryForKey:@"metadata"];
  if (v8)
  {
    [(WFWeatherDataServiceParserV1 *)self parseMetaDataFromData:v8];
  }

  v9 = [dataCopy arrayForKey:@"hours"];
  v10 = v9;
  if (v9)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [(WFWeatherDataServiceParserV1 *)self parseWeatherComponentsFromData:*(*(&v18 + 1) + 8 * i) withUnit:v4];
          [v7 addObject:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }
  }

  v16 = [v7 copy];

  return v16;
}

- (id)hourlyHistoryDictFromData:(id)data types:(unint64_t)types
{
  dataCopy = data;
  if (WFForecastTypeIsRequestedInTypes(32, types))
  {
    v6 = [dataCopy dictionaryForKey:@"hourly_history"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)parseForecastData:(id)data types:(unint64_t)types location:(id)location units:(int)units locale:(id)locale date:(id)date error:(id *)error rules:(id)self0
{
  v29[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  locationCopy = location;
  localeCopy = locale;
  dateCopy = date;
  rulesCopy = rules;
  if (dataCopy)
  {
    v27 = 0;
    v20 = [MEMORY[0x277CCAAA0] JSONObjectWithData:dataCopy options:0 error:&v27];
    v21 = v27;
    if (v21)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v20 = 0;
  }

  if ([v20 count])
  {
    v22 = [(WFWeatherDataServiceParserV1 *)self parseForecastDataFromDict:v20 types:types location:locationCopy units:units locale:localeCopy date:dateCopy error:error rules:rulesCopy];
    goto LABEL_9;
  }

  v21 = 0;
LABEL_8:
  v23 = MEMORY[0x277CCA9B8];
  v28 = *MEMORY[0x277CCA450];
  v29[0] = @"Failed to parse JSON forecast data";
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
  *error = [v23 wf_errorWithCode:1 encapsulatedError:v21 userInfo:v24];

  v22 = 0;
LABEL_9:

  return v22;
}

- (id)parseForecastDataFromDict:(id)dict types:(unint64_t)types location:(id)location units:(int)units locale:(id)locale date:(id)date error:(id *)error rules:(id)self0
{
  dictCopy = dict;
  locationCopy = location;
  localeCopy = locale;
  dateCopy = date;
  if (units)
  {
    unitsCopy = units;
  }

  else
  {
    unitsCopy = 2;
  }

  v20 = objc_alloc_init(WFParsedForecastData);
  v21 = [(WFWeatherDataServiceParserV1 *)self currentObservationsDictFromData:dictCopy types:types];
  v62 = unitsCopy;
  if (v21)
  {
    v22 = v21;
    v23 = [(WFWeatherDataServiceParserV1 *)self parseCurrentObservationsFromData:v21 withUnit:unitsCopy];
LABEL_8:
    v25 = v23;
    [(WFParsedForecastData *)v20 setCurrentConditions:v23];
    goto LABEL_9;
  }

  v24 = [(WFWeatherDataServiceParserV1 *)self dailyAlmanacDictFromData:dictCopy types:types];
  if (v24)
  {
    v22 = v24;
    v23 = [(WFWeatherDataServiceParserV1 *)self parseAlmanacFromData:v24 withUnit:unitsCopy];
    goto LABEL_8;
  }

  v54 = [(WFWeatherDataServiceParserV1 *)self dailyHistoryDictFromData:dictCopy types:types];
  if (!v54)
  {
    goto LABEL_10;
  }

  v22 = v54;
  v25 = [(WFWeatherDataServiceParserV1 *)self parseDailyHistoryFromData:v54 withUnit:unitsCopy];
  firstObject = [v25 firstObject];
  [(WFParsedForecastData *)v20 setCurrentConditions:firstObject];

LABEL_9:
LABEL_10:
  currentConditions = [(WFParsedForecastData *)v20 currentConditions];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    currentConditions2 = [(WFParsedForecastData *)v20 currentConditions];
    [currentConditions2 setLocation:locationCopy];

    currentConditions3 = [(WFParsedForecastData *)v20 currentConditions];
    v30 = [currentConditions3 objectForKeyedSubscript:@"WFWeatherForecastDateComponent"];

    if (!v30)
    {
      currentConditions4 = [(WFParsedForecastData *)v20 currentConditions];
      [currentConditions4 setObject:dateCopy forKeyedSubscript:@"WFWeatherForecastDateComponent"];
    }
  }

  v32 = [(WFWeatherDataServiceParserV1 *)self hourlyHistoryDictFromData:dictCopy types:types];
  v33 = v62;
  if (v32)
  {
    v34 = [(WFWeatherDataServiceParserV1 *)self parseHourlyHistoryFromData:v32 withUnit:v62];
    [(WFParsedForecastData *)v20 setLastTwentyFourHoursOfObservations:v34];
  }

  v35 = [(WFWeatherDataServiceParserV1 *)self dailyForecastDictFromData:dictCopy types:types];
  if (v35)
  {
    v36 = [(WFWeatherDataServiceParserV1 *)self parseDailyForecastFromData:v35 withUnit:v62];
    [(WFParsedForecastData *)v20 setDailyForecasts:v36];
  }

  v57 = v35;
  v58 = v32;
  v37 = [(WFWeatherDataServiceParserV1 *)self hourlyForecastDictFromData:dictCopy types:types];
  if (v37)
  {
    v38 = [(WFWeatherDataServiceParserV1 *)self parseHourlyForecastFromData:v37 withUnit:v62];
    [(WFParsedForecastData *)v20 setHourlyForecasts:v38];
  }

  v56 = v37;
  v39 = [(WFWeatherDataServiceParserV1 *)self airQualityDictFromData:dictCopy types:types];
  if (v39)
  {
    v40 = [(WFWeatherDataServiceParserV1 *)self parseAirQualityFromData:v39 locale:localeCopy];
    [(WFParsedForecastData *)v20 setAirQualityObservations:v40];
  }

  v59 = dateCopy;
  v60 = localeCopy;
  v41 = [(WFWeatherDataServiceParserV1 *)self pollenDictFromData:dictCopy types:types];
  if (v41)
  {
    v42 = [(WFWeatherDataServiceParserV1 *)self parsePollenFromData:v41];
    [(WFParsedForecastData *)v20 setPollenForecasts:v42];
  }

  currentConditions5 = [(WFParsedForecastData *)v20 currentConditions];
  if (currentConditions5)
  {
    v44 = currentConditions5;
    v45 = [(WFWeatherDataServiceParserV1 *)self nowLinksDictFromData:dictCopy types:types];

    if (v45)
    {
      currentConditions6 = [(WFParsedForecastData *)v20 currentConditions];
      [(WFWeatherDataServiceParserV1 *)self parseNowLinksFromData:v45 intoConditions:currentConditions6];
    }
  }

  v47 = [(WFWeatherDataServiceParserV1 *)self changeForecastDictFromData:dictCopy types:types];
  if (v47)
  {
    v48 = [(WFWeatherDataServiceParserV1 *)self parseChangeForecastFromData:v47 withUnit:v62];
    [(WFParsedForecastData *)v20 setChangeForecasts:v48];
  }

  v49 = [(WFWeatherDataServiceParserV1 *)self severeWeatherEventDictFromData:dictCopy types:types];
  if (v49)
  {
    v50 = [(WFWeatherDataServiceParserV1 *)self parseSevereWeatherEventsFromData:v49 withUnit:v62];
    [(WFParsedForecastData *)v20 setSevereWeatherEvents:v50];

    v33 = v62;
  }

  v51 = [(WFWeatherDataServiceParserV1 *)self nextHourPrecipitationEventDictFromData:dictCopy types:types];
  if (v51)
  {
    v52 = [(WFWeatherDataServiceParserV1 *)self parseNextHourPrecipitationFromData:v51 withUnit:v33];
    [(WFParsedForecastData *)v20 setNextHourPrecipitation:v52];
  }

  return v20;
}

- (id)parseAQIScaleNamed:(id)named data:(id)data error:(id *)error
{
  v120[1] = *MEMORY[0x277D85DE8];
  namedCopy = named;
  dataCopy = data;
  if (dataCopy)
  {
    v92 = 0;
    v10 = [MEMORY[0x277CCAAA0] JSONObjectWithData:dataCopy options:0 error:&v92];
    v11 = v92;
    if (v11 || ![v10 count])
    {
      v117 = *MEMORY[0x277CCA450];
      v118 = @"Failed to parse JSON for remote AQI scale data";
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v118 forKeys:&v117 count:1];
      *error = [MEMORY[0x277CCA9B8] wf_errorWithCode:1 encapsulatedError:v11 userInfo:v12];

      v13 = 0;
      v10 = v11;
      goto LABEL_80;
    }

    v15 = [v10 objectForKeyedSubscript:@"aqi"];
    if ([v15 count])
    {
      if (namedCopy)
      {
        v16 = objc_alloc_init(WFAQIScale);
        [(WFAQIScale *)v16 setIdentifier:namedCopy];
        v17 = [v15 objectForKeyedSubscript:@"numerical"];
        v18 = v17;
        if (v17)
        {
          -[WFAQIScale setNumerical:](v16, "setNumerical:", [v17 BOOLValue]);
          v19 = [v15 objectForKeyedSubscript:@"ascending"];
          v20 = v19;
          if (v19)
          {
            -[WFAQIScale setAscending:](v16, "setAscending:", [v19 BOOLValue]);
            v21 = [v10 objectForKeyedSubscript:@"displayName"];
            v81 = v18;
            v82 = v21;
            if (v21)
            {
              [(WFAQIScale *)v16 setDisplayName:v21];
              v22 = [v10 objectForKeyedSubscript:@"displayLabel"];
              v78 = v22;
              if (v22)
              {
                [(WFAQIScale *)v16 setDisplayLabel:v22];
                v23 = [v15 objectForKeyedSubscript:@"range"];
                if ([v23 count] == 2)
                {
                  v77 = v20;
                  v24 = [v23 objectAtIndexedSubscript:0];
                  v25 = [v23 objectAtIndexedSubscript:1];
                  v75 = v24;
                  unsignedIntegerValue = [v24 unsignedIntegerValue];
                  v74 = v25;
                  -[WFAQIScale setRange:](v16, "setRange:", unsignedIntegerValue, [v25 unsignedIntegerValue] - unsignedIntegerValue);
                  v27 = [v15 objectForKeyedSubscript:@"categories"];
                  v28 = [v27 count];
                  v76 = v23;
                  v73 = v27;
                  if (v28)
                  {
                    v71 = v15;
                    v83 = [MEMORY[0x277CBEB18] arrayWithCapacity:v28];
                    v88 = 0u;
                    v89 = 0u;
                    v90 = 0u;
                    v91 = 0u;
                    obj = v27;
                    v29 = [obj countByEnumeratingWithState:&v88 objects:v100 count:16];
                    if (v29)
                    {
                      v30 = v29;
                      v31 = *v89;
                      while (2)
                      {
                        for (i = 0; i != v30; ++i)
                        {
                          if (*v89 != v31)
                          {
                            objc_enumerationMutation(obj);
                          }

                          v33 = [(WFWeatherDataServiceParserV1 *)self parsedCategoryFromDictionary:*(*(&v88 + 1) + 8 * i)];
                          if (!v33)
                          {

                            v60 = WFLogForCategory(7uLL);
                            if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                            {
                              [WFWeatherDataServiceParserV1 parseAQIScaleNamed:data:error:];
                            }

                            v98 = *MEMORY[0x277CCA450];
                            v99 = @"Encountered a nil category property while parsing the categories";
                            v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v99 forKeys:&v98 count:1];
                            [MEMORY[0x277CCA9B8] wf_errorWithCode:3 encapsulatedError:0 userInfo:v35];
                            *error = v13 = 0;
                            v15 = v71;
                            v20 = v77;
                            v53 = v82;
                            goto LABEL_72;
                          }

                          v34 = v33;
                          [v83 addObject:v33];
                        }

                        v30 = [obj countByEnumeratingWithState:&v88 objects:v100 count:16];
                        if (v30)
                        {
                          continue;
                        }

                        break;
                      }
                    }

                    [(WFAQIScale *)v16 setCategories:v83];
                    v15 = v71;
                    v35 = [v71 objectForKeyedSubscript:@"gradient"];
                    v36 = [v35 objectForKeyedSubscript:@"stops"];
                    v37 = [v36 count];
                    v70 = v36;
                    if (v37)
                    {
                      v69 = v35;
                      obja = [MEMORY[0x277CBEB18] arrayWithCapacity:v37];
                      v84 = 0u;
                      v85 = 0u;
                      v86 = 0u;
                      v87 = 0u;
                      v72 = v36;
                      v38 = [v72 countByEnumeratingWithState:&v84 objects:v95 count:16];
                      if (v38)
                      {
                        v39 = v38;
                        v40 = *v85;
                        while (2)
                        {
                          for (j = 0; j != v39; ++j)
                          {
                            if (*v85 != v40)
                            {
                              objc_enumerationMutation(v72);
                            }

                            v42 = [(WFWeatherDataServiceParserV1 *)self parsedGradientStopFromDictionary:*(*(&v84 + 1) + 8 * j)];
                            if (!v42)
                            {

                              v63 = WFLogForCategory(7uLL);
                              if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
                              {
                                [WFWeatherDataServiceParserV1 parseAQIScaleNamed:data:error:];
                              }

                              v93 = *MEMORY[0x277CCA450];
                              v94 = @"Encountered a nil gradient property while parsing the gradient";
                              v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
                              *error = [MEMORY[0x277CCA9B8] wf_errorWithCode:3 userInfo:v64];

                              v13 = 0;
                              goto LABEL_67;
                            }

                            v43 = v42;
                            [obja addObject:v42];
                          }

                          v39 = [v72 countByEnumeratingWithState:&v84 objects:v95 count:16];
                          if (v39)
                          {
                            continue;
                          }

                          break;
                        }
                      }

                      v44 = [[WFAQIScaleGradient alloc] initWithStops:obja];
                      [(WFAQIScale *)v16 setGradient:v44];

                      v45 = WFLogForCategory(7uLL);
                      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
                      {
                        [WFWeatherDataServiceParserV1 parseAQIScaleNamed:v16 data:v45 error:?];
                      }

                      v13 = v16;
LABEL_67:
                      v15 = v71;
                      v20 = v77;
                      v53 = v82;
                      v35 = v69;
                      v65 = obja;
                    }

                    else
                    {
                      v66 = WFLogForCategory(7uLL);
                      v20 = v77;
                      if (os_log_type_enabled(v66, OS_LOG_TYPE_FAULT))
                      {
                        [WFWeatherDataServiceParserV1 parseAQIScaleNamed:data:error:];
                      }

                      v96 = *MEMORY[0x277CCA450];
                      v97 = @"No gradient stops found";
                      v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
                      [MEMORY[0x277CCA9B8] wf_errorWithCode:3 userInfo:v67];
                      *error = v13 = 0;
                      v65 = v67;
                      v53 = v82;
                    }

LABEL_72:
                    v59 = v75;

                    v62 = v83;
                  }

                  else
                  {
                    v61 = WFLogForCategory(7uLL);
                    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
                    {
                      [WFWeatherDataServiceParserV1 parseAQIScaleNamed:data:error:];
                    }

                    v101 = *MEMORY[0x277CCA450];
                    v102 = @"Encountered a nil categories property in AQI scale data";
                    v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
                    [MEMORY[0x277CCA9B8] wf_errorWithCode:3 userInfo:v62];
                    *error = v13 = 0;
                    v20 = v77;
                    v53 = v82;
                    v59 = v75;
                  }

                  v23 = v76;
                }

                else
                {
                  v57 = WFLogForCategory(7uLL);
                  if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                  {
                    [WFWeatherDataServiceParserV1 parseAQIScaleNamed:data:error:];
                  }

                  v103 = *MEMORY[0x277CCA450];
                  v104 = @"Encountered a nil range property in AQI scale data";
                  v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
                  [MEMORY[0x277CCA9B8] wf_errorWithCode:3 userInfo:v58];
                  *error = v13 = 0;
                  v59 = v58;
                  v53 = v82;
                }
              }

              else
              {
                v56 = WFLogForCategory(7uLL);
                if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                {
                  [WFWeatherDataServiceParserV1 parseAQIScaleNamed:data:error:];
                }

                v105 = *MEMORY[0x277CCA450];
                v106 = @"Encountered a nil displayLabel property in AQI scale data";
                v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v106 forKeys:&v105 count:1];
                [MEMORY[0x277CCA9B8] wf_errorWithCode:3 userInfo:v23];
                *error = v13 = 0;
                v53 = v82;
              }

              v55 = v78;
            }

            else
            {
              v54 = WFLogForCategory(7uLL);
              if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
              {
                [WFWeatherDataServiceParserV1 parseAQIScaleNamed:data:error:];
              }

              v107 = *MEMORY[0x277CCA450];
              v108 = @"Encountered a nil displayName property in AQI scale data";
              v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
              [MEMORY[0x277CCA9B8] wf_errorWithCode:3 userInfo:v55];
              *error = v13 = 0;
              v53 = 0;
            }

            v18 = v81;
          }

          else
          {
            v52 = WFLogForCategory(7uLL);
            if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
              [WFWeatherDataServiceParserV1 parseAQIScaleNamed:data:error:];
            }

            v109 = *MEMORY[0x277CCA450];
            v110 = @"Encountered a nil ascending property in AQI scale data";
            v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
            [MEMORY[0x277CCA9B8] wf_errorWithCode:3 userInfo:v53];
            *error = v13 = 0;
          }
        }

        else
        {
          v51 = WFLogForCategory(7uLL);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            [WFWeatherDataServiceParserV1 parseAQIScaleNamed:data:error:];
          }

          v111 = *MEMORY[0x277CCA450];
          v112 = @"Encountered a nil nnumerical property in AQI scale data";
          v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
          [MEMORY[0x277CCA9B8] wf_errorWithCode:3 userInfo:v20];
          *error = v13 = 0;
        }

        goto LABEL_79;
      }

      v50 = WFLogForCategory(7uLL);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        [WFWeatherDataServiceParserV1 parseAQIScaleNamed:data:error:];
      }

      v113 = *MEMORY[0x277CCA450];
      v114 = @"Encountered a nil name property in AQI scale data";
      v47 = MEMORY[0x277CBEAC0];
      v48 = &v114;
      v49 = &v113;
    }

    else
    {
      v46 = WFLogForCategory(7uLL);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        [WFWeatherDataServiceParserV1 parseAQIScaleNamed:data:error:];
      }

      v115 = *MEMORY[0x277CCA450];
      v116 = @"Encountered an empty scale";
      v47 = MEMORY[0x277CBEAC0];
      v48 = &v116;
      v49 = &v115;
    }

    v16 = [v47 dictionaryWithObjects:v48 forKeys:v49 count:1];
    [MEMORY[0x277CCA9B8] wf_errorWithCode:3 userInfo:v16];
    *error = v13 = 0;
LABEL_79:

    goto LABEL_80;
  }

  v14 = WFLogForCategory(7uLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [WFWeatherDataServiceParserV1 parseAQIScaleNamed:data:error:];
  }

  v119 = *MEMORY[0x277CCA450];
  v120[0] = @"The passed in data is nil";
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v120 forKeys:&v119 count:1];
  [MEMORY[0x277CCA9B8] wf_errorWithCode:3 userInfo:v10];
  *error = v13 = 0;
LABEL_80:

  return v13;
}

- (id)parsedCategoryFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if ([dictionaryCopy count])
  {
    v4 = objc_alloc_init(WFAQIScaleCategory);
    v5 = [dictionaryCopy objectForKeyedSubscript:@"categoryName"];
    [(WFAQIScaleCategory *)v4 setCategoryName:v5];
    v6 = [dictionaryCopy objectForKeyedSubscript:@"categoryNumber"];
    -[WFAQIScaleCategory setCategoryNumber:](v4, "setCategoryNumber:", [v6 unsignedIntegerValue]);
    v7 = [dictionaryCopy objectForKeyedSubscript:@"color"];
    [(WFAQIScaleCategory *)v4 setColor:v7];
    v8 = [dictionaryCopy objectForKeyedSubscript:@"glyph"];
    [(WFAQIScaleCategory *)v4 setGlyph:v8];
    v9 = [dictionaryCopy objectForKeyedSubscript:@"recommendation"];
    [(WFAQIScaleCategory *)v4 setRecommendation:v9];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"range"];
    if ([v10 count] == 2)
    {
      v21 = [v10 objectAtIndexedSubscript:0];
      v11 = [v10 objectAtIndexedSubscript:1];
      v12 = v8;
      v13 = v7;
      v14 = v6;
      v15 = v5;
      unsignedIntegerValue = [v21 unsignedIntegerValue];
      v17 = [v11 unsignedIntegerValue] - unsignedIntegerValue;
      v18 = unsignedIntegerValue;
      v5 = v15;
      v6 = v14;
      v7 = v13;
      v8 = v12;
      [(WFAQIScaleCategory *)v4 setRange:v18, v17];
    }
  }

  else
  {
    v19 = WFLogForCategory(7uLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      [WFWeatherDataServiceParserV1 parsedCategoryFromDictionary:];
    }

    v4 = 0;
  }

  return v4;
}

- (id)parsedGradientStopFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if ([dictionaryCopy count])
  {
    v4 = [dictionaryCopy objectForKeyedSubscript:@"location"];
    v5 = v4;
    if (v4)
    {
      [v4 floatValue];
      v7 = v6;
      v8 = [dictionaryCopy objectForKeyedSubscript:@"color"];
      if (v8)
      {
        v9 = [WFAQIScaleGradientStop alloc];
        LODWORD(v10) = v7;
        v11 = [(WFAQIScaleGradientStop *)v9 initWithLocation:v8 color:v10];
LABEL_14:

        goto LABEL_15;
      }

      v12 = WFLogForCategory(7uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        [WFWeatherDataServiceParserV1 parsedGradientStopFromDictionary:];
      }
    }

    else
    {
      v8 = WFLogForCategory(7uLL);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [WFWeatherDataServiceParserV1 parsedGradientStopFromDictionary:];
      }
    }

    v11 = 0;
    goto LABEL_14;
  }

  v5 = WFLogForCategory(7uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [WFWeatherDataServiceParserV1 parsedGradientStopFromDictionary:];
  }

  v11 = 0;
LABEL_15:

  return v11;
}

- (id)currentObservationsDictFromData:(id)data types:(unint64_t)types
{
  dataCopy = data;
  if (WFForecastTypeIsRequestedInTypes(2, types))
  {
    v6 = [dataCopy dictionaryForKey:@"current_observations"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)parseMetaDataFromData:(id)data
{
  dataCopy = data;
  v4 = objc_alloc_init(WFWeatherDataServiceParserMetadataV1);
  v5 = [dataCopy numberForKey:@"reported_time"];
  v6 = v5;
  if (v5)
  {
    v7 = MEMORY[0x277CBEAA8];
    [v5 doubleValue];
    v8 = [v7 dateWithTimeIntervalSince1970:?];
    [(WFWeatherDataServiceParserMetadataV1 *)v4 setReadDate:v8];
  }

  v9 = [dataCopy numberForKey:@"expirationTimeUtc"];
  v10 = v9;
  if (v9)
  {
    v11 = MEMORY[0x277CBEAA8];
    [v9 doubleValue];
    v12 = [v11 dateWithTimeIntervalSince1970:?];
    [(WFWeatherDataServiceParserMetadataV1 *)v4 setExpireDate:v12];
  }

  v13 = [dataCopy numberForKey:@"version"];
  v14 = v13;
  if (v13)
  {
    -[WFWeatherDataServiceParserMetadataV1 setVersion:](v4, "setVersion:", [v13 unsignedIntegerValue]);
  }

  v15 = [dataCopy stringForKey:@"provider_name"];
  [(WFWeatherDataServiceParserMetadataV1 *)v4 setProviderName:v15];

  v16 = [dataCopy stringForKey:@"provider_logo"];
  if (v16)
  {
    v17 = [MEMORY[0x277CBEBC0] URLWithString:v16];
    [(WFWeatherDataServiceParserMetadataV1 *)v4 setProviderLogoURL:v17];
  }

  v18 = [dataCopy numberForKey:@"data_source"];
  v19 = v18;
  if (v18)
  {
    unsignedIntegerValue = [v18 unsignedIntegerValue];
    v21 = 0x7FFFFFFFFFFFFFFFLL;
    if (unsignedIntegerValue == 1)
    {
      v21 = 1;
    }

    if (unsignedIntegerValue)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    [(WFWeatherDataServiceParserMetadataV1 *)v4 setDataOrigination:v22];
  }

  v23 = [dataCopy numberForKey:@"latitude"];
  if (v23)
  {
    v24 = [dataCopy numberForKey:@"longitude"];
    if (v24)
    {
      v25 = v24;
      v35 = v6;
      v26 = objc_opt_new();
      v27 = objc_alloc(MEMORY[0x277CE41F8]);
      [v23 doubleValue];
      v29 = v28;
      [v25 doubleValue];
      v31 = [v27 initWithLatitude:v29 longitude:v30];
      [v26 setGeoLocation:v31];

      [(WFWeatherDataServiceParserMetadataV1 *)v4 setLocation:v26];
      if ([(WFWeatherDataServiceParserMetadataV1 *)v4 dataOrigination]== 0x7FFFFFFFFFFFFFFFLL)
      {
        [(WFWeatherDataServiceParserMetadataV1 *)v4 setDataOrigination:0];
      }

      v6 = v35;
    }
  }

  v32 = [dataCopy numberForKey:@"temporarily_unavailable"];
  v33 = v32;
  if (v32)
  {
    -[WFWeatherDataServiceParserMetadataV1 setTemporarilyUnavailable:](v4, "setTemporarilyUnavailable:", [v32 BOOLValue]);
  }

  return v4;
}

- (id)parseWeatherComponentsFromData:(id)data withUnit:(int)unit
{
  v4 = *&unit;
  dataCopy = data;
  v7 = objc_alloc_init(WFWeatherConditions);
  [(WFWeatherDataServiceParserV1 *)self parseWeatherComponentsFromData:dataCopy intoConditions:v7 withUnit:v4];

  return v7;
}

- (void)parseWeatherComponentsFromData:(id)data intoConditions:(id)conditions withUnit:(int)unit
{
  v5 = *&unit;
  dataCopy = data;
  conditionsCopy = conditions;
  v9 = [dataCopy numberForKey:@"validTimeUtc"];
  v10 = v9;
  if (v9)
  {
    v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{objc_msgSend(v9, "unsignedIntegerValue")}];
    [conditionsCopy setObject:v11 forKeyedSubscript:@"WFWeatherForecastDateComponent"];
  }

  v12 = [dataCopy numberForKey:@"expirationTimeUtc"];

  if (v12)
  {
    v13 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{objc_msgSend(v12, "unsignedIntegerValue")}];
    [conditionsCopy setObject:v13 forKeyedSubscript:@"WFWeatherForecastExpirationDateComponent"];
  }

  v14 = [dataCopy dictionaryForKey:@"metadata"];
  if (v14)
  {
    v15 = [(WFWeatherDataServiceParserV1 *)self parseMetaDataFromData:v14];
    providerName = [v15 providerName];
    [conditionsCopy setObject:providerName forKeyedSubscript:@"WFWeatherDataProviderName"];
  }

  v17 = [dataCopy numberForKey:@"iconCode"];
  if (v17 || ([dataCopy numberForKey:@"iconCodeDay"], (v17 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(dataCopy, "numberForKey:", @"iconCodeNight"), (v17 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v18 = v17;
    [conditionsCopy setObject:v17 forKeyedSubscript:@"__THIS_WILL_BE_DEPRECATED__WFWeatherLegacyConditionComponent"];
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{WFConditionCodeFromLegacyWeatherConditionCode(objc_msgSend(v18, "unsignedIntegerValue"))}];
    [conditionsCopy setObject:v19 forKeyedSubscript:@"WFWeatherConditionComponent"];
  }

  v20 = [dataCopy numberForKey:@"relativeHumidity"];
  if (v20)
  {
    [conditionsCopy setObject:v20 forKeyedSubscript:@"WFWeatherHumidityComponent"];
  }

  v21 = [dataCopy numberForKey:{@"precip1Hour", v20}];
  if (v21 || ([dataCopy numberForKey:@"precip24Hour"], (v21 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v22 = v21;
    [conditionsCopy setObject:v21 forKeyedSubscript:@"WFWeatherPrecipitationAmountComponent"];
  }

  v48 = v14;
  v49 = v12;
  v23 = [dataCopy numberForKey:@"precipChance"];
  if (v23)
  {
    [conditionsCopy setObject:v23 forKeyedSubscript:@"WFWeatherPrecipitationChanceComponent"];
  }

  v24 = [dataCopy stringForKey:@"precipType"];
  if (v24)
  {
    [conditionsCopy setObject:v24 forKeyedSubscript:@"WFWeatherPrecipitationTypeComponent"];
  }

  v25 = [dataCopy stringForKey:@"dayOrNight"];
  if (v25)
  {
    [conditionsCopy setNightForecast:{objc_msgSend(@"N", "isEqualToString:", v25)}];
  }

  v26 = [dataCopy numberForKey:@"temperature"];
  if (v26)
  {
    v27 = [WFTemperature alloc];
    [v26 doubleValue];
    v28 = [(WFTemperature *)v27 initWithTemperatureUnit:v5 value:?];
    [conditionsCopy setObject:v28 forKeyedSubscript:@"WFWeatherTemperatureComponent"];
  }

  v29 = [dataCopy numberForKey:@"temperatureMax24Hour"];
  if (v29 || ([dataCopy numberForKey:@"temperatureMax"], (v29 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v30 = v29;
    v31 = [WFTemperature alloc];
    [v30 doubleValue];
    v32 = [(WFTemperature *)v31 initWithTemperatureUnit:v5 value:?];
    [conditionsCopy setObject:v32 forKeyedSubscript:@"WFWeatherHighTemperatureComponent"];
  }

  v33 = [dataCopy numberForKey:@"temperatureMin24Hour"];
  if (v33 || ([dataCopy numberForKey:@"temperatureMin"], (v33 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v34 = v33;
    v35 = [WFTemperature alloc];
    [v34 doubleValue];
    v36 = [(WFTemperature *)v35 initWithTemperatureUnit:v5 value:?];
    [conditionsCopy setObject:v36 forKeyedSubscript:@"WFWeatherLowTemperatureComponent"];
  }

  v37 = [dataCopy numberForKey:@"temperatureFeelsLike"];

  if (v37)
  {
    v38 = [WFTemperature alloc];
    [v37 doubleValue];
    v39 = [(WFTemperature *)v38 initWithTemperatureUnit:v5 value:?];
    [conditionsCopy setObject:v39 forKeyedSubscript:@"WFWeatherFeelsLikeTemperatureComponent"];
  }

  v40 = [dataCopy numberForKey:@"uvIndex"];
  if (v40)
  {
    [conditionsCopy setObject:v40 forKeyedSubscript:@"WFWeatherUVIndexComponent"];
  }

  v41 = [dataCopy numberForKey:@"visibility"];
  if (v41)
  {
    [conditionsCopy setObject:v41 forKeyedSubscript:@"WFWeatherVisibilityComponent"];
  }

  v42 = [dataCopy numberForKey:@"windDirection"];
  if (v42)
  {
    [conditionsCopy setObject:v42 forKeyedSubscript:@"WFWeatherWindDirectionComponent"];
  }

  v43 = [dataCopy numberForKey:@"windSpeed"];
  if (v43)
  {
    [conditionsCopy setObject:v43 forKeyedSubscript:@"WFWeatherWindSpeedComponent"];
  }

  v44 = [dataCopy numberForKey:@"pressureAltimeter"];
  if (v44 || ([dataCopy numberForKey:@"pressureMeanSeaLevel"], (v44 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v45 = v44;
    [conditionsCopy setObject:v44 forKeyedSubscript:@"WFWeatherPressureComponent"];
  }

  v46 = [dataCopy numberForKey:@"pressureTendencyCode"];
  if (v46)
  {
    [conditionsCopy setObject:v46 forKeyedSubscript:@"WFWeatherPressureTrendComponent"];
  }
}

- (id)parseAirQualityFromData:(id)data locale:(id)locale
{
  v59 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  localeCopy = locale;
  v8 = objc_alloc_init(WFAirQualityConditions);
  [dataCopy dictionaryForKey:@"metadata"];
  v54 = v53 = localeCopy;
  if (v54)
  {
    v9 = [(WFWeatherDataServiceParserV1 *)self parseMetaDataFromData:v54];
    expireDate = [v9 expireDate];
    [(WFAirQualityConditions *)v8 setExpirationDate:expireDate];

    readDate = [v9 readDate];
    [(WFAirQualityConditions *)v8 setDate:readDate];

    if ([v9 dataOrigination])
    {
      v12 = 0;
    }

    else
    {
      v13 = [WFAirQualityProviderStation alloc];
      location = [v9 location];
      geoLocation = [location geoLocation];
      readDate2 = [v9 readDate];
      v12 = [(WFAirQualityProviderStation *)v13 initWithLocation:geoLocation lastReadDate:readDate2];
    }

    v17 = +[WFAirQualityProviderAttributionManager sharedManager];
    providerName = [v9 providerName];
    v19 = [v17 cachedAttributionForProvider:providerName];

    if (![(WFWeatherDataServiceParserV1 *)self isProviderAttribution:v19 stillValidWithMetadata:v9])
    {
      v20 = [WFAirQualityProviderAttribution alloc];
      providerName2 = [v9 providerName];
      providerLogoURL = [v9 providerLogoURL];
      v23 = -[WFAirQualityProviderAttribution initWithName:logoURL:dataOrigination:station:](v20, "initWithName:logoURL:dataOrigination:station:", providerName2, providerLogoURL, [v9 dataOrigination], v12);

      localeCopy = v53;
      [v17 registerProviderAttribution:v23];
      v19 = v23;
    }

    [(WFAirQualityConditions *)v8 setProviderAttribution:v19];
    -[WFAirQualityConditions setTemporarilyUnavailable:](v8, "setTemporarilyUnavailable:", [v9 temporarilyUnavailable]);
  }

  [(WFAirQualityConditions *)v8 setLocale:localeCopy];
  v24 = [dataCopy stringForKey:@"source"];
  [(WFAirQualityConditions *)v8 setProvider:v24];

  v25 = [dataCopy stringForKey:@"disclaimer"];
  [(WFAirQualityConditions *)v8 setLocalizedDisclaimer:v25];

  v26 = [dataCopy numberForKey:@"airQualityIndex"];
  v27 = v26;
  if (v26)
  {
    -[WFAirQualityConditions setLocalizedAirQualityIndex:](v8, "setLocalizedAirQualityIndex:", [v26 unsignedIntegerValue]);
    -[WFAirQualityConditions setAirQualityIndex:](v8, "setAirQualityIndex:", [v27 unsignedIntegerValue]);
  }

  v28 = [dataCopy numberForKey:@"airQualityCategoryIndex"];
  v29 = v28;
  if (v28)
  {
    -[WFAirQualityConditions setCategory:](v8, "setCategory:", [v28 integerValue]);
    -[WFAirQualityConditions setCurrentCategoryIndex:](v8, "setCurrentCategoryIndex:", [v29 integerValue]);
  }

  v30 = [dataCopy stringForKey:@"airQualityCategory"];
  [(WFAirQualityConditions *)v8 setLocalizedAirQualityCategory:v30];

  v31 = [dataCopy stringForKey:@"airQualityScale"];
  [(WFAirQualityConditions *)v8 setAirQualityScale:v31];

  v32 = [dataCopy stringForKey:@"airQualityScale"];
  [(WFAirQualityConditions *)v8 setScaleIdentifier:v32];

  [(WFAirQualityConditions *)v8 setSignificance:0];
  v33 = [dataCopy numberForKey:@"isSignificant"];
  v34 = v33;
  if (v33)
  {
    if ([v33 BOOLValue])
    {
      v35 = 1;
    }

    else
    {
      v35 = 2;
    }

    [(WFAirQualityConditions *)v8 setSignificance:v35];
  }

  v36 = [dataCopy stringForKey:@"learnMoreURL"];
  v37 = v36;
  if (v36)
  {
    v38 = [v36 stringByReplacingOccurrencesOfString:@"{products}" withString:@"AppleWeatherService"];
    v39 = [MEMORY[0x277CBEBC0] URLWithString:v38];
    [(WFAirQualityConditions *)v8 setLearnMoreURL:v39];
  }

  v40 = [dataCopy dictionaryForKey:@"pollutants"];
  v41 = [(WFWeatherDataServiceParserV1 *)self parsePollutants:v40];

  allValues = [v41 allValues];
  [(WFAirQualityConditions *)v8 setPollutants:allValues];

  v43 = [dataCopy stringForKey:@"primaryPollutant"];
  if (v43)
  {
    v44 = [v41 objectForKeyedSubscript:v43];
    if (v44)
    {
      [(WFAirQualityConditions *)v8 setPrimaryPollutant:v44];
    }

    else
    {
      v45 = WFLogForCategory(7uLL);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        pollutants = [(WFAirQualityConditions *)v8 pollutants];
        log = v45;
        v50 = NSStringFromSelector(sel_localizedName);
        v46 = [pollutants valueForKeyPath:v50];
        v49 = [v46 componentsJoinedByString:{@", "}];
        *buf = 138543618;
        v56 = v43;
        v57 = 2114;
        v58 = v49;
        _os_log_impl(&dword_272B94000, log, OS_LOG_TYPE_DEFAULT, "Did not find primary pollutant %{public}@ in list of pollutants: %{public}@", buf, 0x16u);

        v45 = log;
      }
    }
  }

  v47 = WFLogForCategory(7uLL);
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
  {
    [WFWeatherDataServiceParserV1(ParseAirQuality) parseAirQualityFromData:v8 locale:v47];
  }

  return v8;
}

- (id)parsePollutants:(id)pollutants
{
  if (pollutants)
  {
    v3 = MEMORY[0x277CBEB38];
    pollutantsCopy = pollutants;
    v5 = [v3 dictionaryWithCapacity:{objc_msgSend(pollutantsCopy, "count")}];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __65__WFWeatherDataServiceParserV1_ParseAirQuality__parsePollutants___block_invoke;
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

void __65__WFWeatherDataServiceParserV1_ParseAirQuality__parsePollutants___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)airQualityDictFromData:(id)data types:(unint64_t)types
{
  dataCopy = data;
  if (WFForecastTypeIsRequestedInTypes(1, types))
  {
    v6 = [dataCopy dictionaryForKey:@"air_quality"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isProviderAttribution:(id)attribution stillValidWithMetadata:(id)metadata
{
  attributionCopy = attribution;
  metadataCopy = metadata;
  v7 = metadataCopy;
  v8 = 0;
  if (attributionCopy && metadataCopy)
  {
    name = [attributionCopy name];
    providerName = [v7 providerName];
    v11 = [name isEqualToString:providerName];

    if (v11 && ([attributionCopy logoURL], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "absoluteString"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "providerLogoURL"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "absoluteString"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v13, "isEqualToString:", v15), v15, v14, v13, v12, v16))
    {
      dataOrigination = [attributionCopy dataOrigination];
      v8 = dataOrigination == [v7 dataOrigination];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)parseDailyHistoryFromData:(id)data withUnit:(int)unit
{
  v4 = *&unit;
  v23 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v7 = objc_opt_new();
  v8 = [dataCopy dictionaryForKey:@"metadata"];
  if (v8)
  {
    [(WFWeatherDataServiceParserV1 *)self parseMetaDataFromData:v8];
  }

  v9 = [dataCopy arrayForKey:@"days"];
  v10 = v9;
  if (v9)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [(WFWeatherDataServiceParserV1 *)self parseWeatherComponentsFromData:*(*(&v18 + 1) + 8 * i) withUnit:v4];
          [v7 addObject:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }
  }

  v16 = [v7 copy];

  return v16;
}

- (id)dailyHistoryDictFromData:(id)data types:(unint64_t)types
{
  dataCopy = data;
  if (WFForecastTypeIsRequestedInTypes(64, types))
  {
    v6 = [dataCopy dictionaryForKey:@"daily_history"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)parseDailyForecastFromData:(id)data withUnit:(int)unit
{
  v4 = *&unit;
  dataCopy = data;
  v7 = objc_opt_new();
  v8 = [dataCopy arrayForKey:@"days"];
  v26 = dataCopy;
  v9 = [dataCopy arrayForKey:@"dayParts"];
  if ([v8 count])
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v27 = v7;
    v29 = v9;
    v28 = v8;
    do
    {
      v13 = objc_opt_new();
      v14 = v12 + v10;
      if ([v9 count] > (v12 + v10))
      {
        v30 = v12;
        v15 = v14;
        if (!v14)
        {
          v16 = [v9 objectAtIndexedSubscript:0];
          v17 = [v16 valueForKey:@"dayOrNight"];

          v9 = v29;
          v18 = [@"N" isEqualToString:v17];
          v19 = v12;
          if (v18)
          {
            v19 = -1;
          }

          v30 = v19;
        }

        v20 = [v9 objectAtIndexedSubscript:v15];
        [(WFWeatherDataServiceParserV1 *)self parseWeatherComponentsFromData:v20 intoConditions:v13 withUnit:v4];
        v21 = [v20 valueForKey:@"dayOrNight"];
        [v13 setNightForecast:{objc_msgSend(@"N", "isEqualToString:", v21)}];

        v7 = v27;
        v8 = v28;
        v12 = v30;
      }

      v22 = [v8 objectAtIndexedSubscript:v11];
      [(WFWeatherDataServiceParserV1 *)self parseWeatherComponentsFromData:v22 intoConditions:v13 withUnit:v4];
      v23 = [MEMORY[0x277CCABB0] numberWithInt:++v11];
      [v13 setObject:v23 forKeyedSubscript:@"__THIS_WILL_BE_DEPRECATED__WFWeatherSeriesIndexComponent"];

      [v7 addObject:v13];
      v10 += 2;
      v9 = v29;
    }

    while ([v8 count] > v11);
  }

  v24 = [v7 copy];

  return v24;
}

- (id)dailyForecastDictFromData:(id)data types:(unint64_t)types
{
  dataCopy = data;
  if (WFForecastTypeIsRequestedInTypes(8, types))
  {
    v6 = [dataCopy dictionaryForKey:@"daily_forecast"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)parseNowLinksFromData:(id)data intoConditions:(id)conditions
{
  v5 = MEMORY[0x277CBEBC0];
  conditionsCopy = conditions;
  dataCopy = data;
  v8 = [dataCopy stringForKey:@"iosNow"];
  v9 = [v5 URLWithString:v8];
  [conditionsCopy setObject:v9 forKeyedSubscript:@"WFWeatherIOSLinkComponent"];

  v10 = MEMORY[0x277CBEBC0];
  v11 = [dataCopy stringForKey:@"web"];
  v12 = [v10 URLWithString:v11];
  [conditionsCopy setObject:v12 forKeyedSubscript:@"WFWeatherMobileLinkComponent"];

  v13 = MEMORY[0x277CBEBC0];
  v14 = [dataCopy stringForKey:@"web"];
  v15 = [v13 URLWithString:v14];
  [conditionsCopy setObject:v15 forKeyedSubscript:@"WFWeatherWebLinkComponent"];

  v16 = MEMORY[0x277CBEBC0];
  v17 = [dataCopy stringForKey:@"webForecastHourly"];
  v18 = [v16 URLWithString:v17];
  [conditionsCopy setObject:v18 forKeyedSubscript:@"WFWeatherWebForecastHourlyLinkComponent"];

  v19 = MEMORY[0x277CBEBC0];
  v20 = [dataCopy stringForKey:@"webForecastDaily10"];
  v21 = [v19 URLWithString:v20];
  [conditionsCopy setObject:v21 forKeyedSubscript:@"WFWeatherWebForecastDailyLinkComponent"];

  v22 = MEMORY[0x277CBEBC0];
  v23 = [dataCopy stringForKey:@"webForecastMonthly"];
  v24 = [v22 URLWithString:v23];
  [conditionsCopy setObject:v24 forKeyedSubscript:@"WFWeatherWebForecastMonthlyLinkComponent"];

  v25 = MEMORY[0x277CBEBC0];
  v26 = [dataCopy stringForKey:@"webRadar"];
  v27 = [v25 URLWithString:v26];
  [conditionsCopy setObject:v27 forKeyedSubscript:@"WFWeatherWebRadarLinkComponent"];

  v28 = MEMORY[0x277CBEBC0];
  v30 = [dataCopy stringForKey:@"webAllergy"];

  v29 = [v28 URLWithString:v30];
  [conditionsCopy setObject:v29 forKeyedSubscript:@"WFWeatherWebAllergyLinkComponent"];
}

- (id)nowLinksDictFromData:(id)data types:(unint64_t)types
{
  dataCopy = data;
  if (WFForecastTypeIsRequestedInTypes(256, types))
  {
    v6 = [dataCopy dictionaryForKey:@"now_links"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)parseAQIScaleNamed:(uint64_t)a1 data:(NSObject *)a2 error:.cold.4(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_272B94000, a2, OS_LOG_TYPE_DEBUG, "Successfully parsed aqi scale: %@", &v2, 0xCu);
}

@end