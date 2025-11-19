@interface WFWeatherDataServiceParserV1
+ (id)dateFormatter;
- (BOOL)isProviderAttribution:(id)a3 stillValidWithMetadata:(id)a4;
- (id)airQualityDictFromData:(id)a3 types:(unint64_t)a4;
- (id)changeForecastDictFromData:(id)a3 types:(unint64_t)a4;
- (id)currentObservationsDictFromData:(id)a3 types:(unint64_t)a4;
- (id)dailyAlmanacDictFromData:(id)a3 types:(unint64_t)a4;
- (id)dailyForecastDictFromData:(id)a3 types:(unint64_t)a4;
- (id)dailyHistoryDictFromData:(id)a3 types:(unint64_t)a4;
- (id)hourlyForecastDictFromData:(id)a3 types:(unint64_t)a4;
- (id)hourlyHistoryDictFromData:(id)a3 types:(unint64_t)a4;
- (id)nextHourPrecipitationEventDictFromData:(id)a3 types:(unint64_t)a4;
- (id)nowLinksDictFromData:(id)a3 types:(unint64_t)a4;
- (id)parseAQIScaleNamed:(id)a3 data:(id)a4 error:(id *)a5;
- (id)parseAirQualityFromData:(id)a3 locale:(id)a4;
- (id)parseAlmanacFromData:(id)a3 withUnit:(int)a4;
- (id)parseChangeForecastFromData:(id)a3 withUnit:(int)a4;
- (id)parseDailyForecastFromData:(id)a3 withUnit:(int)a4;
- (id)parseDailyHistoryFromData:(id)a3 withUnit:(int)a4;
- (id)parseForecastData:(id)a3 types:(unint64_t)a4 location:(id)a5 units:(int)a6 locale:(id)a7 date:(id)a8 error:(id *)a9 rules:(id)a10;
- (id)parseForecastDataFromDict:(id)a3 types:(unint64_t)a4 location:(id)a5 units:(int)a6 locale:(id)a7 date:(id)a8 error:(id *)a9 rules:(id)a10;
- (id)parseHourlyForecastFromData:(id)a3 withUnit:(int)a4;
- (id)parseHourlyHistoryFromData:(id)a3 withUnit:(int)a4;
- (id)parseMetaDataFromData:(id)a3;
- (id)parseNextHourPrecipitationFromData:(id)a3 withUnit:(int)a4;
- (id)parsePollenFromData:(id)a3;
- (id)parsePollutants:(id)a3;
- (id)parseSevereWeatherEventsFromData:(id)a3 withUnit:(int)a4;
- (id)parseWeatherComponentsFromData:(id)a3 withUnit:(int)a4;
- (id)parsedCategoryFromDictionary:(id)a3;
- (id)parsedGradientStopFromDictionary:(id)a3;
- (id)pollenDictFromData:(id)a3 types:(unint64_t)a4;
- (id)severeWeatherEventDictFromData:(id)a3 types:(unint64_t)a4;
- (void)parseNowLinksFromData:(id)a3 intoConditions:(id)a4;
- (void)parseWeatherComponentsFromData:(id)a3 intoConditions:(id)a4 withUnit:(int)a5;
@end

@implementation WFWeatherDataServiceParserV1

uint64_t __60__WFWeatherDataServiceParserV1_ParseNextHour__dateFormatter__block_invoke()
{
  dateFormatter_dateFormatter = objc_alloc_init(MEMORY[0x277CCAA68]);

  return MEMORY[0x2821F96F8]();
}

- (id)parseNextHourPrecipitationFromData:(id)a3 withUnit:(int)a4
{
  v113 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v81 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v76 = v4;
  [v4 objectForKey:@"minutes"];
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
  v80 = [MEMORY[0x277CBEB18] array];
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
          v40 = [MEMORY[0x277CBEB38] dictionary];
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
                [v40 setValue:v49 forKey:v46];
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
          v40 = 0;
        }

        v50 = [[WFNextHourPrecipitationDescription alloc] initWithToken:v32 shortTemplate:v33 longTemplate:v34 parameters:v40 validUntil:v38];
        [v80 addObject:v50];
      }

      v82 = [v77 countByEnumeratingWithState:&v101 objects:v111 count:16];
    }

    while (v82);
  }

  v92 = [MEMORY[0x277CBEB18] array];
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
        [v92 addObject:v66];
      }

      v52 = [v84 countByEnumeratingWithState:&v93 objects:v109 count:16];
    }

    while (v52);
  }

  v67 = [[WFNextHourPrecipitation alloc] initWithReadDate:v69 startDate:v71 expirationDate:v73 minutes:v81 conditions:v92 descriptions:v80];

  return v67;
}

- (id)nextHourPrecipitationEventDictFromData:(id)a3 types:(unint64_t)a4
{
  v5 = a3;
  if (WFForecastTypeIsRequestedInTypes(2048, a4))
  {
    v6 = [v5 objectForKey:@"next_hour"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)parseAlmanacFromData:(id)a3 withUnit:(int)a4
{
  v4 = *&a4;
  v5 = a3;
  v6 = objc_opt_new();
  v7 = [v5 numberForKey:@"precipitationAverage"];
  if (v7)
  {
    [v6 setObject:v7 forKeyedSubscript:@"WFWeatherPrecipitationAmountComponent"];
  }

  v8 = [v5 numberForKey:@"temperatureAverageMax"];
  if (v8)
  {
    v9 = [WFTemperature alloc];
    [v8 doubleValue];
    v10 = [(WFTemperature *)v9 initWithTemperatureUnit:v4 value:?];
    [v6 setObject:v10 forKeyedSubscript:@"WFWeatherHighTemperatureComponent"];
  }

  v11 = [v5 numberForKey:@"temperatureAverageMin"];
  if (v11)
  {
    v12 = [WFTemperature alloc];
    [v11 doubleValue];
    v13 = [(WFTemperature *)v12 initWithTemperatureUnit:v4 value:?];
    [v6 setObject:v13 forKeyedSubscript:@"WFWeatherLowTemperatureComponent"];
  }

  return v6;
}

- (id)dailyAlmanacDictFromData:(id)a3 types:(unint64_t)a4
{
  v5 = a3;
  if (WFForecastTypeIsRequestedInTypes(128, a4))
  {
    v6 = [v5 dictionaryForKey:@"daily_almanac"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)parsePollenFromData:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v35 = [v3 allKeys];
  v4 = [v35 firstObject];
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = [v5 count];

  [MEMORY[0x277CBEB18] arrayWithCapacity:v6];
  v34 = v33 = v6;
  if (v6)
  {
    v7 = 0;
    v32 = @"treePollenIndex";
    do
    {
      v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v35, "count", v32)}];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v9 = v35;
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
            v15 = [v3 arrayForKey:v14];
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

- (id)pollenDictFromData:(id)a3 types:(unint64_t)a4
{
  v5 = a3;
  if (WFForecastTypeIsRequestedInTypes(16, a4))
  {
    v6 = [v5 dictionaryForKey:@"pollen"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)parseHourlyForecastFromData:(id)a3 withUnit:(int)a4
{
  v4 = *&a4;
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_opt_new();
  v8 = [v6 dictionaryForKey:@"metadata"];
  if (v8)
  {
    [(WFWeatherDataServiceParserV1 *)self parseMetaDataFromData:v8];
  }

  v9 = [v6 arrayForKey:@"hours"];
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

- (id)hourlyForecastDictFromData:(id)a3 types:(unint64_t)a4
{
  v5 = a3;
  if (WFForecastTypeIsRequestedInTypes(4, a4))
  {
    v6 = [v5 dictionaryForKey:@"hourly_forecast"];
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

- (id)parseSevereWeatherEventsFromData:(id)a3 withUnit:(int)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20 = [MEMORY[0x277CBEB18] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v4;
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
          v12 = [v10 BOOLValue];
          if (v7)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v12 = 0;
          if (v7)
          {
LABEL_8:
            v13 = [objc_opt_class() dateFormatter];
            v14 = [v13 dateFromString:v7];

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

        v16 = [[WFSevereWeatherEvent alloc] initWithIdentifier:v8 areaName:v24 eventDescription:v23 source:v22 expirationDate:v14 URL:v15 importance:v12];
        [v20 addObject:v16];
      }

      v21 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v21);
  }

  return v20;
}

- (id)severeWeatherEventDictFromData:(id)a3 types:(unint64_t)a4
{
  v5 = a3;
  if (WFForecastTypeIsRequestedInTypes(1024, a4))
  {
    v6 = [v5 arrayForKey:@"severe_weather_events"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)parseChangeForecastFromData:(id)a3 withUnit:(int)a4
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = [v4 array];
  v7 = [v5 stringForKey:@"messageSameTimezone"];
  v8 = [v5 stringForKey:@"messageDifferentTimezone"];

  v9 = [WFChangeForecast alloc];
  v10 = [MEMORY[0x277CBEAA8] date];
  v11 = [(WFChangeForecast *)v9 initWithDate:v10 descriptionSameTimeZone:v7 descriptionDifferentTimeZone:v8];

  [v6 addObject:v11];

  return v6;
}

- (id)changeForecastDictFromData:(id)a3 types:(unint64_t)a4
{
  v5 = a3;
  if (WFForecastTypeIsRequestedInTypes(512, a4))
  {
    v6 = [v5 dictionaryForKey:@"change_forecast"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)parseHourlyHistoryFromData:(id)a3 withUnit:(int)a4
{
  v4 = *&a4;
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_opt_new();
  v8 = [v6 dictionaryForKey:@"metadata"];
  if (v8)
  {
    [(WFWeatherDataServiceParserV1 *)self parseMetaDataFromData:v8];
  }

  v9 = [v6 arrayForKey:@"hours"];
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

- (id)hourlyHistoryDictFromData:(id)a3 types:(unint64_t)a4
{
  v5 = a3;
  if (WFForecastTypeIsRequestedInTypes(32, a4))
  {
    v6 = [v5 dictionaryForKey:@"hourly_history"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)parseForecastData:(id)a3 types:(unint64_t)a4 location:(id)a5 units:(int)a6 locale:(id)a7 date:(id)a8 error:(id *)a9 rules:(id)a10
{
  v29[1] = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v19 = a10;
  if (v15)
  {
    v27 = 0;
    v20 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v15 options:0 error:&v27];
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
    v22 = [(WFWeatherDataServiceParserV1 *)self parseForecastDataFromDict:v20 types:a4 location:v16 units:a6 locale:v17 date:v18 error:a9 rules:v19];
    goto LABEL_9;
  }

  v21 = 0;
LABEL_8:
  v23 = MEMORY[0x277CCA9B8];
  v28 = *MEMORY[0x277CCA450];
  v29[0] = @"Failed to parse JSON forecast data";
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
  *a9 = [v23 wf_errorWithCode:1 encapsulatedError:v21 userInfo:v24];

  v22 = 0;
LABEL_9:

  return v22;
}

- (id)parseForecastDataFromDict:(id)a3 types:(unint64_t)a4 location:(id)a5 units:(int)a6 locale:(id)a7 date:(id)a8 error:(id *)a9 rules:(id)a10
{
  v16 = a3;
  v61 = a5;
  v17 = a7;
  v18 = a8;
  if (a6)
  {
    v19 = a6;
  }

  else
  {
    v19 = 2;
  }

  v20 = objc_alloc_init(WFParsedForecastData);
  v21 = [(WFWeatherDataServiceParserV1 *)self currentObservationsDictFromData:v16 types:a4];
  v62 = v19;
  if (v21)
  {
    v22 = v21;
    v23 = [(WFWeatherDataServiceParserV1 *)self parseCurrentObservationsFromData:v21 withUnit:v19];
LABEL_8:
    v25 = v23;
    [(WFParsedForecastData *)v20 setCurrentConditions:v23];
    goto LABEL_9;
  }

  v24 = [(WFWeatherDataServiceParserV1 *)self dailyAlmanacDictFromData:v16 types:a4];
  if (v24)
  {
    v22 = v24;
    v23 = [(WFWeatherDataServiceParserV1 *)self parseAlmanacFromData:v24 withUnit:v19];
    goto LABEL_8;
  }

  v54 = [(WFWeatherDataServiceParserV1 *)self dailyHistoryDictFromData:v16 types:a4];
  if (!v54)
  {
    goto LABEL_10;
  }

  v22 = v54;
  v25 = [(WFWeatherDataServiceParserV1 *)self parseDailyHistoryFromData:v54 withUnit:v19];
  v55 = [v25 firstObject];
  [(WFParsedForecastData *)v20 setCurrentConditions:v55];

LABEL_9:
LABEL_10:
  v26 = [(WFParsedForecastData *)v20 currentConditions];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v28 = [(WFParsedForecastData *)v20 currentConditions];
    [v28 setLocation:v61];

    v29 = [(WFParsedForecastData *)v20 currentConditions];
    v30 = [v29 objectForKeyedSubscript:@"WFWeatherForecastDateComponent"];

    if (!v30)
    {
      v31 = [(WFParsedForecastData *)v20 currentConditions];
      [v31 setObject:v18 forKeyedSubscript:@"WFWeatherForecastDateComponent"];
    }
  }

  v32 = [(WFWeatherDataServiceParserV1 *)self hourlyHistoryDictFromData:v16 types:a4];
  v33 = v62;
  if (v32)
  {
    v34 = [(WFWeatherDataServiceParserV1 *)self parseHourlyHistoryFromData:v32 withUnit:v62];
    [(WFParsedForecastData *)v20 setLastTwentyFourHoursOfObservations:v34];
  }

  v35 = [(WFWeatherDataServiceParserV1 *)self dailyForecastDictFromData:v16 types:a4];
  if (v35)
  {
    v36 = [(WFWeatherDataServiceParserV1 *)self parseDailyForecastFromData:v35 withUnit:v62];
    [(WFParsedForecastData *)v20 setDailyForecasts:v36];
  }

  v57 = v35;
  v58 = v32;
  v37 = [(WFWeatherDataServiceParserV1 *)self hourlyForecastDictFromData:v16 types:a4];
  if (v37)
  {
    v38 = [(WFWeatherDataServiceParserV1 *)self parseHourlyForecastFromData:v37 withUnit:v62];
    [(WFParsedForecastData *)v20 setHourlyForecasts:v38];
  }

  v56 = v37;
  v39 = [(WFWeatherDataServiceParserV1 *)self airQualityDictFromData:v16 types:a4];
  if (v39)
  {
    v40 = [(WFWeatherDataServiceParserV1 *)self parseAirQualityFromData:v39 locale:v17];
    [(WFParsedForecastData *)v20 setAirQualityObservations:v40];
  }

  v59 = v18;
  v60 = v17;
  v41 = [(WFWeatherDataServiceParserV1 *)self pollenDictFromData:v16 types:a4];
  if (v41)
  {
    v42 = [(WFWeatherDataServiceParserV1 *)self parsePollenFromData:v41];
    [(WFParsedForecastData *)v20 setPollenForecasts:v42];
  }

  v43 = [(WFParsedForecastData *)v20 currentConditions];
  if (v43)
  {
    v44 = v43;
    v45 = [(WFWeatherDataServiceParserV1 *)self nowLinksDictFromData:v16 types:a4];

    if (v45)
    {
      v46 = [(WFParsedForecastData *)v20 currentConditions];
      [(WFWeatherDataServiceParserV1 *)self parseNowLinksFromData:v45 intoConditions:v46];
    }
  }

  v47 = [(WFWeatherDataServiceParserV1 *)self changeForecastDictFromData:v16 types:a4];
  if (v47)
  {
    v48 = [(WFWeatherDataServiceParserV1 *)self parseChangeForecastFromData:v47 withUnit:v62];
    [(WFParsedForecastData *)v20 setChangeForecasts:v48];
  }

  v49 = [(WFWeatherDataServiceParserV1 *)self severeWeatherEventDictFromData:v16 types:a4];
  if (v49)
  {
    v50 = [(WFWeatherDataServiceParserV1 *)self parseSevereWeatherEventsFromData:v49 withUnit:v62];
    [(WFParsedForecastData *)v20 setSevereWeatherEvents:v50];

    v33 = v62;
  }

  v51 = [(WFWeatherDataServiceParserV1 *)self nextHourPrecipitationEventDictFromData:v16 types:a4];
  if (v51)
  {
    v52 = [(WFWeatherDataServiceParserV1 *)self parseNextHourPrecipitationFromData:v51 withUnit:v33];
    [(WFParsedForecastData *)v20 setNextHourPrecipitation:v52];
  }

  return v20;
}

- (id)parseAQIScaleNamed:(id)a3 data:(id)a4 error:(id *)a5
{
  v120[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v92 = 0;
    v10 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v9 options:0 error:&v92];
    v11 = v92;
    if (v11 || ![v10 count])
    {
      v117 = *MEMORY[0x277CCA450];
      v118 = @"Failed to parse JSON for remote AQI scale data";
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v118 forKeys:&v117 count:1];
      *a5 = [MEMORY[0x277CCA9B8] wf_errorWithCode:1 encapsulatedError:v11 userInfo:v12];

      v13 = 0;
      v10 = v11;
      goto LABEL_80;
    }

    v15 = [v10 objectForKeyedSubscript:@"aqi"];
    if ([v15 count])
    {
      if (v8)
      {
        v16 = objc_alloc_init(WFAQIScale);
        [(WFAQIScale *)v16 setIdentifier:v8];
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
                  v26 = [v24 unsignedIntegerValue];
                  v74 = v25;
                  -[WFAQIScale setRange:](v16, "setRange:", v26, [v25 unsignedIntegerValue] - v26);
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
                            *a5 = v13 = 0;
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
                              *a5 = [MEMORY[0x277CCA9B8] wf_errorWithCode:3 userInfo:v64];

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
                      *a5 = v13 = 0;
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
                    *a5 = v13 = 0;
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
                  *a5 = v13 = 0;
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
                *a5 = v13 = 0;
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
              *a5 = v13 = 0;
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
            *a5 = v13 = 0;
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
          *a5 = v13 = 0;
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
    *a5 = v13 = 0;
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
  *a5 = v13 = 0;
LABEL_80:

  return v13;
}

- (id)parsedCategoryFromDictionary:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = objc_alloc_init(WFAQIScaleCategory);
    v5 = [v3 objectForKeyedSubscript:@"categoryName"];
    [(WFAQIScaleCategory *)v4 setCategoryName:v5];
    v6 = [v3 objectForKeyedSubscript:@"categoryNumber"];
    -[WFAQIScaleCategory setCategoryNumber:](v4, "setCategoryNumber:", [v6 unsignedIntegerValue]);
    v7 = [v3 objectForKeyedSubscript:@"color"];
    [(WFAQIScaleCategory *)v4 setColor:v7];
    v8 = [v3 objectForKeyedSubscript:@"glyph"];
    [(WFAQIScaleCategory *)v4 setGlyph:v8];
    v9 = [v3 objectForKeyedSubscript:@"recommendation"];
    [(WFAQIScaleCategory *)v4 setRecommendation:v9];
    v10 = [v3 objectForKeyedSubscript:@"range"];
    if ([v10 count] == 2)
    {
      v21 = [v10 objectAtIndexedSubscript:0];
      v11 = [v10 objectAtIndexedSubscript:1];
      v12 = v8;
      v13 = v7;
      v14 = v6;
      v15 = v5;
      v16 = [v21 unsignedIntegerValue];
      v17 = [v11 unsignedIntegerValue] - v16;
      v18 = v16;
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

- (id)parsedGradientStopFromDictionary:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 objectForKeyedSubscript:@"location"];
    v5 = v4;
    if (v4)
    {
      [v4 floatValue];
      v7 = v6;
      v8 = [v3 objectForKeyedSubscript:@"color"];
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

- (id)currentObservationsDictFromData:(id)a3 types:(unint64_t)a4
{
  v5 = a3;
  if (WFForecastTypeIsRequestedInTypes(2, a4))
  {
    v6 = [v5 dictionaryForKey:@"current_observations"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)parseMetaDataFromData:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(WFWeatherDataServiceParserMetadataV1);
  v5 = [v3 numberForKey:@"reported_time"];
  v6 = v5;
  if (v5)
  {
    v7 = MEMORY[0x277CBEAA8];
    [v5 doubleValue];
    v8 = [v7 dateWithTimeIntervalSince1970:?];
    [(WFWeatherDataServiceParserMetadataV1 *)v4 setReadDate:v8];
  }

  v9 = [v3 numberForKey:@"expirationTimeUtc"];
  v10 = v9;
  if (v9)
  {
    v11 = MEMORY[0x277CBEAA8];
    [v9 doubleValue];
    v12 = [v11 dateWithTimeIntervalSince1970:?];
    [(WFWeatherDataServiceParserMetadataV1 *)v4 setExpireDate:v12];
  }

  v13 = [v3 numberForKey:@"version"];
  v14 = v13;
  if (v13)
  {
    -[WFWeatherDataServiceParserMetadataV1 setVersion:](v4, "setVersion:", [v13 unsignedIntegerValue]);
  }

  v15 = [v3 stringForKey:@"provider_name"];
  [(WFWeatherDataServiceParserMetadataV1 *)v4 setProviderName:v15];

  v16 = [v3 stringForKey:@"provider_logo"];
  if (v16)
  {
    v17 = [MEMORY[0x277CBEBC0] URLWithString:v16];
    [(WFWeatherDataServiceParserMetadataV1 *)v4 setProviderLogoURL:v17];
  }

  v18 = [v3 numberForKey:@"data_source"];
  v19 = v18;
  if (v18)
  {
    v20 = [v18 unsignedIntegerValue];
    v21 = 0x7FFFFFFFFFFFFFFFLL;
    if (v20 == 1)
    {
      v21 = 1;
    }

    if (v20)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    [(WFWeatherDataServiceParserMetadataV1 *)v4 setDataOrigination:v22];
  }

  v23 = [v3 numberForKey:@"latitude"];
  if (v23)
  {
    v24 = [v3 numberForKey:@"longitude"];
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

  v32 = [v3 numberForKey:@"temporarily_unavailable"];
  v33 = v32;
  if (v32)
  {
    -[WFWeatherDataServiceParserMetadataV1 setTemporarilyUnavailable:](v4, "setTemporarilyUnavailable:", [v32 BOOLValue]);
  }

  return v4;
}

- (id)parseWeatherComponentsFromData:(id)a3 withUnit:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = objc_alloc_init(WFWeatherConditions);
  [(WFWeatherDataServiceParserV1 *)self parseWeatherComponentsFromData:v6 intoConditions:v7 withUnit:v4];

  return v7;
}

- (void)parseWeatherComponentsFromData:(id)a3 intoConditions:(id)a4 withUnit:(int)a5
{
  v5 = *&a5;
  v50 = a3;
  v8 = a4;
  v9 = [v50 numberForKey:@"validTimeUtc"];
  v10 = v9;
  if (v9)
  {
    v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{objc_msgSend(v9, "unsignedIntegerValue")}];
    [v8 setObject:v11 forKeyedSubscript:@"WFWeatherForecastDateComponent"];
  }

  v12 = [v50 numberForKey:@"expirationTimeUtc"];

  if (v12)
  {
    v13 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{objc_msgSend(v12, "unsignedIntegerValue")}];
    [v8 setObject:v13 forKeyedSubscript:@"WFWeatherForecastExpirationDateComponent"];
  }

  v14 = [v50 dictionaryForKey:@"metadata"];
  if (v14)
  {
    v15 = [(WFWeatherDataServiceParserV1 *)self parseMetaDataFromData:v14];
    v16 = [v15 providerName];
    [v8 setObject:v16 forKeyedSubscript:@"WFWeatherDataProviderName"];
  }

  v17 = [v50 numberForKey:@"iconCode"];
  if (v17 || ([v50 numberForKey:@"iconCodeDay"], (v17 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v50, "numberForKey:", @"iconCodeNight"), (v17 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v18 = v17;
    [v8 setObject:v17 forKeyedSubscript:@"__THIS_WILL_BE_DEPRECATED__WFWeatherLegacyConditionComponent"];
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{WFConditionCodeFromLegacyWeatherConditionCode(objc_msgSend(v18, "unsignedIntegerValue"))}];
    [v8 setObject:v19 forKeyedSubscript:@"WFWeatherConditionComponent"];
  }

  v20 = [v50 numberForKey:@"relativeHumidity"];
  if (v20)
  {
    [v8 setObject:v20 forKeyedSubscript:@"WFWeatherHumidityComponent"];
  }

  v21 = [v50 numberForKey:{@"precip1Hour", v20}];
  if (v21 || ([v50 numberForKey:@"precip24Hour"], (v21 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v22 = v21;
    [v8 setObject:v21 forKeyedSubscript:@"WFWeatherPrecipitationAmountComponent"];
  }

  v48 = v14;
  v49 = v12;
  v23 = [v50 numberForKey:@"precipChance"];
  if (v23)
  {
    [v8 setObject:v23 forKeyedSubscript:@"WFWeatherPrecipitationChanceComponent"];
  }

  v24 = [v50 stringForKey:@"precipType"];
  if (v24)
  {
    [v8 setObject:v24 forKeyedSubscript:@"WFWeatherPrecipitationTypeComponent"];
  }

  v25 = [v50 stringForKey:@"dayOrNight"];
  if (v25)
  {
    [v8 setNightForecast:{objc_msgSend(@"N", "isEqualToString:", v25)}];
  }

  v26 = [v50 numberForKey:@"temperature"];
  if (v26)
  {
    v27 = [WFTemperature alloc];
    [v26 doubleValue];
    v28 = [(WFTemperature *)v27 initWithTemperatureUnit:v5 value:?];
    [v8 setObject:v28 forKeyedSubscript:@"WFWeatherTemperatureComponent"];
  }

  v29 = [v50 numberForKey:@"temperatureMax24Hour"];
  if (v29 || ([v50 numberForKey:@"temperatureMax"], (v29 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v30 = v29;
    v31 = [WFTemperature alloc];
    [v30 doubleValue];
    v32 = [(WFTemperature *)v31 initWithTemperatureUnit:v5 value:?];
    [v8 setObject:v32 forKeyedSubscript:@"WFWeatherHighTemperatureComponent"];
  }

  v33 = [v50 numberForKey:@"temperatureMin24Hour"];
  if (v33 || ([v50 numberForKey:@"temperatureMin"], (v33 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v34 = v33;
    v35 = [WFTemperature alloc];
    [v34 doubleValue];
    v36 = [(WFTemperature *)v35 initWithTemperatureUnit:v5 value:?];
    [v8 setObject:v36 forKeyedSubscript:@"WFWeatherLowTemperatureComponent"];
  }

  v37 = [v50 numberForKey:@"temperatureFeelsLike"];

  if (v37)
  {
    v38 = [WFTemperature alloc];
    [v37 doubleValue];
    v39 = [(WFTemperature *)v38 initWithTemperatureUnit:v5 value:?];
    [v8 setObject:v39 forKeyedSubscript:@"WFWeatherFeelsLikeTemperatureComponent"];
  }

  v40 = [v50 numberForKey:@"uvIndex"];
  if (v40)
  {
    [v8 setObject:v40 forKeyedSubscript:@"WFWeatherUVIndexComponent"];
  }

  v41 = [v50 numberForKey:@"visibility"];
  if (v41)
  {
    [v8 setObject:v41 forKeyedSubscript:@"WFWeatherVisibilityComponent"];
  }

  v42 = [v50 numberForKey:@"windDirection"];
  if (v42)
  {
    [v8 setObject:v42 forKeyedSubscript:@"WFWeatherWindDirectionComponent"];
  }

  v43 = [v50 numberForKey:@"windSpeed"];
  if (v43)
  {
    [v8 setObject:v43 forKeyedSubscript:@"WFWeatherWindSpeedComponent"];
  }

  v44 = [v50 numberForKey:@"pressureAltimeter"];
  if (v44 || ([v50 numberForKey:@"pressureMeanSeaLevel"], (v44 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v45 = v44;
    [v8 setObject:v44 forKeyedSubscript:@"WFWeatherPressureComponent"];
  }

  v46 = [v50 numberForKey:@"pressureTendencyCode"];
  if (v46)
  {
    [v8 setObject:v46 forKeyedSubscript:@"WFWeatherPressureTrendComponent"];
  }
}

- (id)parseAirQualityFromData:(id)a3 locale:(id)a4
{
  v59 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(WFAirQualityConditions);
  [v6 dictionaryForKey:@"metadata"];
  v54 = v53 = v7;
  if (v54)
  {
    v9 = [(WFWeatherDataServiceParserV1 *)self parseMetaDataFromData:v54];
    v10 = [v9 expireDate];
    [(WFAirQualityConditions *)v8 setExpirationDate:v10];

    v11 = [v9 readDate];
    [(WFAirQualityConditions *)v8 setDate:v11];

    if ([v9 dataOrigination])
    {
      v12 = 0;
    }

    else
    {
      v13 = [WFAirQualityProviderStation alloc];
      v14 = [v9 location];
      v15 = [v14 geoLocation];
      v16 = [v9 readDate];
      v12 = [(WFAirQualityProviderStation *)v13 initWithLocation:v15 lastReadDate:v16];
    }

    v17 = +[WFAirQualityProviderAttributionManager sharedManager];
    v18 = [v9 providerName];
    v19 = [v17 cachedAttributionForProvider:v18];

    if (![(WFWeatherDataServiceParserV1 *)self isProviderAttribution:v19 stillValidWithMetadata:v9])
    {
      v20 = [WFAirQualityProviderAttribution alloc];
      v21 = [v9 providerName];
      v22 = [v9 providerLogoURL];
      v23 = -[WFAirQualityProviderAttribution initWithName:logoURL:dataOrigination:station:](v20, "initWithName:logoURL:dataOrigination:station:", v21, v22, [v9 dataOrigination], v12);

      v7 = v53;
      [v17 registerProviderAttribution:v23];
      v19 = v23;
    }

    [(WFAirQualityConditions *)v8 setProviderAttribution:v19];
    -[WFAirQualityConditions setTemporarilyUnavailable:](v8, "setTemporarilyUnavailable:", [v9 temporarilyUnavailable]);
  }

  [(WFAirQualityConditions *)v8 setLocale:v7];
  v24 = [v6 stringForKey:@"source"];
  [(WFAirQualityConditions *)v8 setProvider:v24];

  v25 = [v6 stringForKey:@"disclaimer"];
  [(WFAirQualityConditions *)v8 setLocalizedDisclaimer:v25];

  v26 = [v6 numberForKey:@"airQualityIndex"];
  v27 = v26;
  if (v26)
  {
    -[WFAirQualityConditions setLocalizedAirQualityIndex:](v8, "setLocalizedAirQualityIndex:", [v26 unsignedIntegerValue]);
    -[WFAirQualityConditions setAirQualityIndex:](v8, "setAirQualityIndex:", [v27 unsignedIntegerValue]);
  }

  v28 = [v6 numberForKey:@"airQualityCategoryIndex"];
  v29 = v28;
  if (v28)
  {
    -[WFAirQualityConditions setCategory:](v8, "setCategory:", [v28 integerValue]);
    -[WFAirQualityConditions setCurrentCategoryIndex:](v8, "setCurrentCategoryIndex:", [v29 integerValue]);
  }

  v30 = [v6 stringForKey:@"airQualityCategory"];
  [(WFAirQualityConditions *)v8 setLocalizedAirQualityCategory:v30];

  v31 = [v6 stringForKey:@"airQualityScale"];
  [(WFAirQualityConditions *)v8 setAirQualityScale:v31];

  v32 = [v6 stringForKey:@"airQualityScale"];
  [(WFAirQualityConditions *)v8 setScaleIdentifier:v32];

  [(WFAirQualityConditions *)v8 setSignificance:0];
  v33 = [v6 numberForKey:@"isSignificant"];
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

  v36 = [v6 stringForKey:@"learnMoreURL"];
  v37 = v36;
  if (v36)
  {
    v38 = [v36 stringByReplacingOccurrencesOfString:@"{products}" withString:@"AppleWeatherService"];
    v39 = [MEMORY[0x277CBEBC0] URLWithString:v38];
    [(WFAirQualityConditions *)v8 setLearnMoreURL:v39];
  }

  v40 = [v6 dictionaryForKey:@"pollutants"];
  v41 = [(WFWeatherDataServiceParserV1 *)self parsePollutants:v40];

  v42 = [v41 allValues];
  [(WFAirQualityConditions *)v8 setPollutants:v42];

  v43 = [v6 stringForKey:@"primaryPollutant"];
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
        v51 = [(WFAirQualityConditions *)v8 pollutants];
        log = v45;
        v50 = NSStringFromSelector(sel_localizedName);
        v46 = [v51 valueForKeyPath:v50];
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

- (id)parsePollutants:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x277CBEB38];
    v4 = a3;
    v5 = [v3 dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __65__WFWeatherDataServiceParserV1_ParseAirQuality__parsePollutants___block_invoke;
    v9[3] = &unk_279E6F5C8;
    v10 = v5;
    v6 = v5;
    [v4 enumerateKeysAndObjectsUsingBlock:v9];

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

- (id)airQualityDictFromData:(id)a3 types:(unint64_t)a4
{
  v5 = a3;
  if (WFForecastTypeIsRequestedInTypes(1, a4))
  {
    v6 = [v5 dictionaryForKey:@"air_quality"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isProviderAttribution:(id)a3 stillValidWithMetadata:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v9 = [v5 name];
    v10 = [v7 providerName];
    v11 = [v9 isEqualToString:v10];

    if (v11 && ([v5 logoURL], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "absoluteString"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "providerLogoURL"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "absoluteString"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v13, "isEqualToString:", v15), v15, v14, v13, v12, v16))
    {
      v17 = [v5 dataOrigination];
      v8 = v17 == [v7 dataOrigination];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)parseDailyHistoryFromData:(id)a3 withUnit:(int)a4
{
  v4 = *&a4;
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_opt_new();
  v8 = [v6 dictionaryForKey:@"metadata"];
  if (v8)
  {
    [(WFWeatherDataServiceParserV1 *)self parseMetaDataFromData:v8];
  }

  v9 = [v6 arrayForKey:@"days"];
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

- (id)dailyHistoryDictFromData:(id)a3 types:(unint64_t)a4
{
  v5 = a3;
  if (WFForecastTypeIsRequestedInTypes(64, a4))
  {
    v6 = [v5 dictionaryForKey:@"daily_history"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)parseDailyForecastFromData:(id)a3 withUnit:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = objc_opt_new();
  v8 = [v6 arrayForKey:@"days"];
  v26 = v6;
  v9 = [v6 arrayForKey:@"dayParts"];
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

- (id)dailyForecastDictFromData:(id)a3 types:(unint64_t)a4
{
  v5 = a3;
  if (WFForecastTypeIsRequestedInTypes(8, a4))
  {
    v6 = [v5 dictionaryForKey:@"daily_forecast"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)parseNowLinksFromData:(id)a3 intoConditions:(id)a4
{
  v5 = MEMORY[0x277CBEBC0];
  v6 = a4;
  v7 = a3;
  v8 = [v7 stringForKey:@"iosNow"];
  v9 = [v5 URLWithString:v8];
  [v6 setObject:v9 forKeyedSubscript:@"WFWeatherIOSLinkComponent"];

  v10 = MEMORY[0x277CBEBC0];
  v11 = [v7 stringForKey:@"web"];
  v12 = [v10 URLWithString:v11];
  [v6 setObject:v12 forKeyedSubscript:@"WFWeatherMobileLinkComponent"];

  v13 = MEMORY[0x277CBEBC0];
  v14 = [v7 stringForKey:@"web"];
  v15 = [v13 URLWithString:v14];
  [v6 setObject:v15 forKeyedSubscript:@"WFWeatherWebLinkComponent"];

  v16 = MEMORY[0x277CBEBC0];
  v17 = [v7 stringForKey:@"webForecastHourly"];
  v18 = [v16 URLWithString:v17];
  [v6 setObject:v18 forKeyedSubscript:@"WFWeatherWebForecastHourlyLinkComponent"];

  v19 = MEMORY[0x277CBEBC0];
  v20 = [v7 stringForKey:@"webForecastDaily10"];
  v21 = [v19 URLWithString:v20];
  [v6 setObject:v21 forKeyedSubscript:@"WFWeatherWebForecastDailyLinkComponent"];

  v22 = MEMORY[0x277CBEBC0];
  v23 = [v7 stringForKey:@"webForecastMonthly"];
  v24 = [v22 URLWithString:v23];
  [v6 setObject:v24 forKeyedSubscript:@"WFWeatherWebForecastMonthlyLinkComponent"];

  v25 = MEMORY[0x277CBEBC0];
  v26 = [v7 stringForKey:@"webRadar"];
  v27 = [v25 URLWithString:v26];
  [v6 setObject:v27 forKeyedSubscript:@"WFWeatherWebRadarLinkComponent"];

  v28 = MEMORY[0x277CBEBC0];
  v30 = [v7 stringForKey:@"webAllergy"];

  v29 = [v28 URLWithString:v30];
  [v6 setObject:v29 forKeyedSubscript:@"WFWeatherWebAllergyLinkComponent"];
}

- (id)nowLinksDictFromData:(id)a3 types:(unint64_t)a4
{
  v5 = a3;
  if (WFForecastTypeIsRequestedInTypes(256, a4))
  {
    v6 = [v5 dictionaryForKey:@"now_links"];
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