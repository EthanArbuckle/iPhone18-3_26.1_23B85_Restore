@interface WFWeatherChannelParserV2
+ (NSSet)componentsForCurrentForecast;
+ (NSSet)componentsForDailyForecasts;
+ (NSSet)componentsForHourlyForecasts;
- (WFWeatherChannelParserV2)init;
- (id)parseAirQualityData:(id)a3 location:(id)a4 error:(id *)a5;
- (id)parseCurrentCondition:(id)a3;
- (id)parseDailyForecasts:(id)a3;
- (id)parseForecastData:(id)a3 types:(unint64_t)a4 location:(id)a5 locale:(id)a6 date:(id)a7 error:(id *)a8 rules:(id)a9;
- (id)parseHourlyForecasts:(id)a3;
- (unint64_t)_pressureTrendFromWeatherChannelCode:(id)a3;
- (void)parseCommonComponents:(id)a3 data:(id)a4;
@end

@implementation WFWeatherChannelParserV2

- (WFWeatherChannelParserV2)init
{
  v9.receiver = self;
  v9.super_class = WFWeatherChannelParserV2;
  v2 = [(WFWeatherChannelParserV2 *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CBEA80]);
    v4 = [v3 initWithCalendarIdentifier:*MEMORY[0x277CBE5D0]];
    calendar = v2->_calendar;
    v2->_calendar = v4;

    v6 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"GMT"];
    v7 = [(WFWeatherChannelParserV2 *)v2 calendar];
    [v7 setTimeZone:v6];
  }

  return v2;
}

- (id)parseForecastData:(id)a3 types:(unint64_t)a4 location:(id)a5 locale:(id)a6 date:(id)a7 error:(id *)a8 rules:(id)a9
{
  v63 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a9;
  if (!v15)
  {
    v21 = 0;
    goto LABEL_9;
  }

  v54 = self;
  v59 = 0;
  v20 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v15 options:0 error:&v59];
  v21 = v59;
  if (!v20)
  {
LABEL_9:
    v25 = WFLogForCategory(7uLL);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [WFWeatherChannelParserV2 parseForecastData:types:location:locale:date:error:rules:];
    }

    if (!v21)
    {
      v23 = 0;
      goto LABEL_34;
    }

    v26 = MEMORY[0x277CCA9B8];
    v60 = *MEMORY[0x277CCA450];
    v61 = @"Failed to parse JSON forecast data";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
    [v26 wf_errorWithCode:1 encapsulatedError:v21 userInfo:v20];
    *a8 = v23 = 0;
    goto LABEL_33;
  }

  v22 = WFLogForCategory(7uLL);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    [WFWeatherChannelParserV2 parseForecastData:types:location:locale:date:error:rules:];
  }

  v23 = objc_alloc_init(WFParsedForecastData);
  if (a4 != 1)
  {
    v47 = v21;
    v48 = v19;
    v49 = v18;
    v50 = v17;
    v51 = v16;
    v52 = v15;
    v53 = [(WFWeatherChannelParserV2 *)v54 parseCurrentCondition:v20];
    v27 = [v53 valueForComponent:@"WFWeatherForecastDateComponent"];
    v28 = +[WFWeatherConditions calendar];
    v29 = v20;
    v30 = v28;
    v46 = v29;
    [(WFWeatherChannelParserV2 *)v54 parseDailyForecasts:?];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v31 = v58 = 0u;
    v32 = [v31 countByEnumeratingWithState:&v55 objects:v62 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v56;
LABEL_16:
      v35 = 0;
      while (1)
      {
        if (*v56 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v55 + 1) + 8 * v35);
        v37 = [v36 valueForComponent:@"WFWeatherForecastDateComponent"];
        if ([v30 isDate:v37 inSameDayAsDate:v27])
        {
          break;
        }

        if (v33 == ++v35)
        {
          v33 = [v31 countByEnumeratingWithState:&v55 objects:v62 count:16];
          if (v33)
          {
            goto LABEL_16;
          }

          goto LABEL_22;
        }
      }

      v39 = [v36 valueForComponent:@"WFWeatherHighTemperatureComponent"];
      v38 = [v36 valueForComponent:@"WFWeatherLowTemperatureComponent"];

      if (v39)
      {
        v40 = v38 == 0;
      }

      else
      {
        v40 = 1;
      }

      v45 = v39;
      if (!v40)
      {
        [v53 setValue:v39 forComponent:@"WFWeatherHighTemperatureComponent"];
        v44 = v38;
        [v53 setValue:v38 forComponent:@"WFWeatherLowTemperatureComponent"];
        v16 = v51;
        v15 = v52;
        v17 = v50;
        goto LABEL_31;
      }
    }

    else
    {
LABEL_22:

      v45 = 0;
      v38 = 0;
    }

    v16 = v51;
    v15 = v52;
    v41 = WFLogForCategory(7uLL);
    v17 = v50;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      [WFWeatherChannelParserV2 parseForecastData:types:location:locale:date:error:rules:];
    }

    v44 = v38;

LABEL_31:
    v19 = v48;
    [(WFParsedForecastData *)v23 setDailyForecasts:v31];
    v42 = [(WFWeatherChannelParserV2 *)v54 parseHourlyForecasts:v46];
    [(WFParsedForecastData *)v23 setHourlyForecasts:v42];

    v24 = v53;
    [(WFParsedForecastData *)v23 setCurrentConditions:v53];
    [(WFParsedForecastData *)v23 setRawData:v15];

    v20 = v46;
    v18 = v49;
    v21 = v47;
    goto LABEL_32;
  }

  if ([WFResponseParsingRules aqiEnabledByRules:v19 forLocation:v16])
  {
    v24 = [(WFWeatherChannelParserV2 *)v54 parseAirQualityData:v15 location:v16 error:a8];
    [(WFParsedForecastData *)v23 setAirQualityObservations:v24];
LABEL_32:
  }

LABEL_33:

LABEL_34:

  return v23;
}

+ (NSSet)componentsForCurrentForecast
{
  v6[22] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6[0] = @"WFWeatherForecastDateComponent";
  v6[1] = @"WFWeatherForecastExpirationDateComponent";
  v6[2] = @"WFWeatherConditionComponent";
  v6[3] = @"WFWeatherFeelsLikeTemperatureComponent";
  v6[4] = @"WFWeatherTemperatureComponent";
  v6[5] = @"WFWeatherHighTemperatureComponent";
  v6[6] = @"WFWeatherLowTemperatureComponent";
  v6[7] = @"WFWeatherWindSpeedComponent";
  v6[8] = @"WFWeatherWindDirectionComponent";
  v6[9] = @"WFWeatherPrecipitationAmountComponent";
  v6[10] = @"WFWeatherHumidityComponent";
  v6[11] = @"WFWeatherDewpointComponent";
  v6[12] = @"WFWeatherPressureComponent";
  v6[13] = @"WFWeatherPressureTrendComponent";
  v6[14] = @"WFWeatherUVIndexComponent";
  v6[15] = @"WFWeatherVisibilityComponent";
  v6[16] = @"WFWeatherSunriseDateComponent";
  v6[17] = @"WFWeatherSunsetDateComponent";
  v6[18] = @"WFWeatherIOSLinkComponent";
  v6[19] = @"WFWeatherWebLinkComponent";
  v6[20] = @"WFWeatherMobileLinkComponent";
  v6[21] = @"__THIS_WILL_BE_DEPRECATED__WFWeatherLegacyConditionComponent";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:22];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (NSSet)componentsForHourlyForecasts
{
  v6[15] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6[0] = @"WFWeatherForecastDateComponent";
  v6[1] = @"WFWeatherForecastExpirationDateComponent";
  v6[2] = @"WFWeatherConditionComponent";
  v6[3] = @"WFWeatherTemperatureComponent";
  v6[4] = @"WFWeatherWindSpeedComponent";
  v6[5] = @"WFWeatherWindDirectionComponent";
  v6[6] = @"WFWeatherPrecipitationChanceComponent";
  v6[7] = @"WFWeatherHumidityComponent";
  v6[8] = @"WFWeatherDewpointComponent";
  v6[9] = @"WFWeatherUVIndexComponent";
  v6[10] = @"WFWeatherVisibilityComponent";
  v6[11] = @"__THIS_WILL_BE_DEPRECATED__WFWeatherLegacyConditionComponent";
  v6[12] = @"__THIS_WILL_BE_DEPRECATED__WFWeatherSeriesIndexComponent";
  v6[13] = @"WFWeatherSunsetDateComponent";
  v6[14] = @"WFWeatherSunriseDateComponent";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:15];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (NSSet)componentsForDailyForecasts
{
  v6[11] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6[0] = @"WFWeatherForecastDateComponent";
  v6[1] = @"WFWeatherForecastExpirationDateComponent";
  v6[2] = @"WFWeatherConditionComponent";
  v6[3] = @"WFWeatherHighTemperatureComponent";
  v6[4] = @"WFWeatherLowTemperatureComponent";
  v6[5] = @"WFWeatherPrecipitationChanceComponent";
  v6[6] = @"WFWeatherSunriseDateComponent";
  v6[7] = @"WFWeatherSunsetDateComponent";
  v6[8] = @"WFWeatherUVIndexComponent";
  v6[9] = @"__THIS_WILL_BE_DEPRECATED__WFWeatherLegacyConditionComponent";
  v6[10] = @"__THIS_WILL_BE_DEPRECATED__WFWeatherSeriesIndexComponent";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:11];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (unint64_t)_pressureTrendFromWeatherChannelCode:(id)a3
{
  v3 = [a3 intValue] - 1;
  if (v3 > 3)
  {
    return 0;
  }

  else
  {
    return qword_272BE4A80[v3];
  }
}

- (id)parseDailyForecasts:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v4 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZ"];
  v5 = [MEMORY[0x277CBEBB0] timeZoneWithAbbreviation:@"GMT"];
  [v4 setTimeZone:v5];

  v40 = v3;
  v6 = [v3 wf_arrayForKeyPath:&unk_2882545B0];
  v7 = v6;
  if (v6)
  {
    v37 = v4;
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v35 = v7;
    obj = v7;
    v9 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v44;
      v38 = *v44;
      v39 = v8;
      do
      {
        v12 = 0;
        v41 = v10;
        do
        {
          if (*v44 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v43 + 1) + 8 * v12);
          v14 = WFLogForCategory(7uLL);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v48 = v13;
            _os_log_debug_impl(&dword_272B94000, v14, OS_LOG_TYPE_DEBUG, "Parsing daily forecast: %@", buf, 0xCu);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = v13;
            v16 = objc_alloc_init(WFWeatherConditions);
            v17 = [(WFWeatherConditions *)v15 wf_numberForKeyPath:&unk_2882545E0];
            v18 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{objc_msgSend(v17, "unsignedIntegerValue")}];
            [(WFWeatherConditions *)v16 setValue:v18 forComponent:@"WFWeatherForecastDateComponent"];
            v19 = [v40 wf_numberForKeyPath:&unk_2882545F8];
            v20 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{objc_msgSend(v19, "unsignedIntegerValue")}];
            [(WFWeatherConditions *)v16 setValue:v20 forComponent:@"WFWeatherForecastExpirationDateComponent"];
            v21 = [(WFWeatherConditions *)v15 wf_temperatureWithCelsiusKeyPath:&unk_288254610 fahrenheitKeyPath:&unk_288254628];
            [(WFWeatherConditions *)v16 setValue:v21 forComponent:@"WFWeatherHighTemperatureComponent"];

            v22 = [(WFWeatherConditions *)v15 wf_temperatureWithCelsiusKeyPath:&unk_288254640 fahrenheitKeyPath:&unk_288254658];
            [(WFWeatherConditions *)v16 setValue:v22 forComponent:@"WFWeatherLowTemperatureComponent"];

            v23 = [(WFWeatherConditions *)v15 wf_numberForKeyPath:&unk_288254670];
            [(WFWeatherConditions *)v16 setValue:v23 forComponent:@"__THIS_WILL_BE_DEPRECATED__WFWeatherSeriesIndexComponent"];

            v24 = [(WFWeatherConditions *)v15 wf_dictionaryForKeyPath:&unk_288254688];
            if (!v24)
            {
              v24 = [(WFWeatherConditions *)v15 wf_dictionaryForKeyPath:&unk_2882546A0];
              [(WFWeatherConditions *)v16 setNightForecast:1];
            }

            v25 = [v24 wf_numberForKeyPath:{&unk_2882546B8, v35}];
            [(WFWeatherConditions *)v16 setValue:v25 forComponent:@"__THIS_WILL_BE_DEPRECATED__WFWeatherLegacyConditionComponent"];
            v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{WFConditionCodeFromLegacyWeatherConditionCode(objc_msgSend(v25, "unsignedIntegerValue"))}];
            [(WFWeatherConditions *)v16 setValue:v26 forComponent:@"WFWeatherConditionComponent"];

            v27 = [v24 wf_numberForKeyPath:&unk_2882546D0];
            [(WFWeatherConditions *)v16 setValue:v27 forComponent:@"WFWeatherPrecipitationChanceComponent"];

            v28 = [v24 wf_numberForKeyPath:&unk_2882546E8];
            [(WFWeatherConditions *)v16 setValue:v28 forComponent:@"WFWeatherUVIndexComponent"];

            v29 = WFLogForCategory(7uLL);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v48 = v16;
              _os_log_debug_impl(&dword_272B94000, v29, OS_LOG_TYPE_DEBUG, "Parsed daily forecast into: %@", buf, 0xCu);
            }

            v8 = v39;
            [v39 addObject:v16];

            v10 = v41;
            v11 = v38;
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v10);
    }

    v30 = [v8 count];
    v4 = v37;
    if (v30 != +[WFWeatherChannelParserV2 expectedDailyForecastCount])
    {
      v31 = WFLogForCategory(7uLL);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [WFWeatherChannelParserV2 parseDailyForecasts:v8];
      }
    }

    v32 = +[WFForecastDataParserUtils ascendingTimeComparator];
    v33 = [v8 sortedArrayUsingComparator:v32];

    v7 = v36;
  }

  else
  {
    v8 = WFLogForCategory(7uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [WFWeatherChannelParserV2 parseDailyForecasts:];
    }

    v33 = 0;
  }

  return v33;
}

- (id)parseHourlyForecasts:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v31 = a3;
  v3 = [v31 wf_arrayForKeyPath:&unk_288254700];
  v4 = v3;
  if (v3)
  {
    v30 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v28 = v4;
    obj = v4;
    v5 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v35;
      do
      {
        v8 = 0;
        v32 = v6;
        do
        {
          if (*v35 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v34 + 1) + 8 * v8);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = v9;
            v11 = WFLogForCategory(7uLL);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v39 = v10;
              _os_log_debug_impl(&dword_272B94000, v11, OS_LOG_TYPE_DEBUG, "Parsing hourly forecast: %@", buf, 0xCu);
            }

            v12 = objc_alloc_init(WFWeatherConditions);
            v13 = [(WFWeatherConditions *)v10 wf_numberForKeyPath:&unk_288254730];
            v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{objc_msgSend(v13, "unsignedIntegerValue")}];
            [(WFWeatherConditions *)v12 setValue:v14 forComponent:@"WFWeatherForecastDateComponent"];
            v15 = [v31 wf_numberForKeyPath:&unk_288254748];
            v16 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{objc_msgSend(v15, "unsignedIntegerValue")}];
            [(WFWeatherConditions *)v12 setValue:v16 forComponent:@"WFWeatherForecastExpirationDateComponent"];
            v17 = [(WFWeatherConditions *)v10 wf_numberForKeyPath:&unk_288254760];
            [(WFWeatherConditions *)v12 setValue:v17 forComponent:@"__THIS_WILL_BE_DEPRECATED__WFWeatherSeriesIndexComponent"];

            v18 = [(WFWeatherConditions *)v10 wf_numberForKeyPath:&unk_288254778];
            v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{WFConditionCodeFromLegacyWeatherConditionCode(objc_msgSend(v18, "unsignedIntegerValue"))}];
            [(WFWeatherConditions *)v12 setValue:v19 forComponent:@"WFWeatherConditionComponent"];

            [(WFWeatherConditions *)v12 setValue:v18 forComponent:@"__THIS_WILL_BE_DEPRECATED__WFWeatherLegacyConditionComponent"];
            v20 = [(WFWeatherConditions *)v10 wf_numberForKeyPath:&unk_288254790];
            [(WFWeatherConditions *)v12 setValue:v20 forComponent:@"WFWeatherPrecipitationChanceComponent"];

            [(WFWeatherChannelParserV2 *)self parseCommonComponents:v12 data:v10];
            [v30 addObject:v12];
            v21 = WFLogForCategory(7uLL);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v39 = v12;
              _os_log_debug_impl(&dword_272B94000, v21, OS_LOG_TYPE_DEBUG, "Parsed hourly forecast into: %@", buf, 0xCu);
            }

            v6 = v32;
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v6);
    }

    v22 = v30;
    v23 = [v30 count];
    if (v23 != +[WFWeatherChannelParserV2 expectedHourlyForecastCount])
    {
      v24 = WFLogForCategory(7uLL);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [WFWeatherChannelParserV2 parseHourlyForecasts:v30];
      }
    }

    v25 = +[WFForecastDataParserUtils ascendingTimeComparator];
    v26 = [v30 sortedArrayUsingComparator:v25];

    v4 = v28;
  }

  else
  {
    v22 = WFLogForCategory(7uLL);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [WFWeatherChannelParserV2 parseHourlyForecasts:];
    }

    v26 = 0;
  }

  return v26;
}

- (id)parseCurrentCondition:(id)a3
{
  v4 = a3;
  v5 = [v4 wf_dictionaryForKeyPath:&unk_2882547A8];
  v6 = WFLogForCategory(7uLL);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [WFWeatherChannelParserV2 parseCurrentCondition:];
    }

    v8 = objc_alloc_init(WFWeatherConditions);
    v7 = [v5 wf_numberForKeyPath:&unk_2882547D8];
    v32 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{objc_msgSend(v7, "unsignedIntegerValue")}];
    [WFWeatherConditions setValue:v8 forComponent:"setValue:forComponent:"];
    v31 = [v4 wf_numberForKeyPath:&unk_2882547F0];
    v30 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{objc_msgSend(v31, "unsignedIntegerValue")}];
    [WFWeatherConditions setValue:v8 forComponent:"setValue:forComponent:"];
    v9 = [v5 wf_temperatureWithCelsiusKeyPath:&unk_288254808 fahrenheitKeyPath:&unk_288254820];
    [(WFWeatherConditions *)v8 setValue:v9 forComponent:@"WFWeatherFeelsLikeTemperatureComponent"];

    v10 = [v5 wf_numberForKeyPath:&unk_288254838];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{WFConditionCodeFromLegacyWeatherConditionCode(objc_msgSend(v10, "unsignedIntegerValue"))}];
    [(WFWeatherConditions *)v8 setValue:v11 forComponent:@"WFWeatherConditionComponent"];

    v29 = v10;
    [(WFWeatherConditions *)v8 setValue:v10 forComponent:@"__THIS_WILL_BE_DEPRECATED__WFWeatherLegacyConditionComponent"];
    v12 = MEMORY[0x277CCABB0];
    v13 = [v5 wf_numberForKeyPath:&unk_288254850];
    [v13 floatValue];
    v15 = [v12 numberWithDouble:v14 * 25.4];

    [(WFWeatherConditions *)v8 setValue:v15 forComponent:@"WFWeatherPrecipitationAmountComponent"];
    v16 = [v5 wf_numberForKeyPath:&unk_288254868];
    [(WFWeatherConditions *)v8 setValue:v16 forComponent:@"WFWeatherPressureComponent"];

    v17 = [v5 wf_numberForKeyPath:&unk_288254880];
    v18 = v17;
    if (v17 && [v17 unsignedIntegerValue] <= 4)
    {
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[WFWeatherChannelParserV2 _pressureTrendFromWeatherChannelCode:](self, "_pressureTrendFromWeatherChannelCode:", v18)}];
      [(WFWeatherConditions *)v8 setValue:v19 forComponent:@"WFWeatherPressureTrendComponent"];
    }

    v33 = self;
    v34 = v4;
    v20 = [v4 wf_dictionaryForKeyPath:&unk_288254898];
    v21 = [v20 wf_stringForKeyPath:&unk_2882548B0];
    v22 = [v20 wf_stringForKeyPath:&unk_2882548C8];
    v23 = [v20 wf_stringForKeyPath:&unk_2882548E0];
    if (v21)
    {
      v24 = [MEMORY[0x277CBEBC0] URLWithString:v21];
      [(WFWeatherConditions *)v8 setValue:v24 forComponent:@"WFWeatherWebLinkComponent"];
    }

    if (v22)
    {
      v25 = [MEMORY[0x277CBEBC0] URLWithString:v22];
      [(WFWeatherConditions *)v8 setValue:v25 forComponent:@"WFWeatherIOSLinkComponent"];
    }

    if (v23)
    {
      v26 = [MEMORY[0x277CBEBC0] URLWithString:v23];
      [(WFWeatherConditions *)v8 setValue:v26 forComponent:@"WFWeatherMobileLinkComponent"];
    }

    [(WFWeatherChannelParserV2 *)v33 parseCommonComponents:v8 data:v5];
    v27 = WFLogForCategory(7uLL);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [WFWeatherChannelParserV2 parseCurrentCondition:];
    }

    v4 = v34;
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [WFWeatherChannelParserV2 parseCurrentCondition:];
    }

    v8 = 0;
  }

  return v8;
}

- (void)parseCommonComponents:(id)a3 data:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 wf_temperatureWithCelsiusKeyPath:&unk_2882548F8 fahrenheitKeyPath:&unk_288254910];
  [v6 setValue:v7 forComponent:@"WFWeatherTemperatureComponent"];

  v8 = [v5 wf_numberForKeyPath:&unk_288254928];
  [v6 setValue:v8 forComponent:@"WFWeatherWindDirectionComponent"];

  v9 = [v5 wf_numberForKeyPath:&unk_288254940];
  [v6 setValue:v9 forComponent:@"WFWeatherWindSpeedComponent"];

  v10 = [v5 wf_numberForKeyPath:&unk_288254958];
  [v6 setValue:v10 forComponent:@"WFWeatherHumidityComponent"];

  v11 = [v5 wf_numberForKeyPath:&unk_288254970];
  [v6 setValue:v11 forComponent:@"WFWeatherDewpointComponent"];

  v12 = [v5 wf_numberForKeyPath:&unk_288254988];
  [v6 setValue:v12 forComponent:@"WFWeatherUVIndexComponent"];

  v13 = [v5 wf_numberForKeyPath:&unk_2882549A0];

  [v6 setValue:v13 forComponent:@"WFWeatherVisibilityComponent"];
}

- (id)parseAirQualityData:(id)a3 location:(id)a4 error:(id *)a5
{
  v88[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = WFLogForCategory(7uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [WFWeatherChannelParserV2 parseAirQualityData:v9 location:? error:?];
    }

    v85 = 0;
    v10 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:4 error:&v85];
    v11 = v85;
    v12 = v11;
    if (!v10 || v11)
    {
      if (a5)
      {
        *a5 = [MEMORY[0x277CCA9B8] wf_errorWithCode:1 encapsulatedError:v11 userInfo:0];
      }

      v22 = WFLogForCategory(7uLL);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [WFWeatherChannelParserV2 parseAirQualityData:location:error:];
      }

      goto LABEL_18;
    }

    v13 = [v10 wf_numberForKeyPath:&unk_2882549B8];
    v14 = [v13 integerValue];

    v15 = [v10 wf_numberForKeyPath:&unk_2882549D0];
    [v15 doubleValue];
    v17 = v16;

    v18 = [v10 wf_numberForKeyPath:&unk_2882549E8];
    [v18 doubleValue];
    v20 = v19;

    v21 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:v17 longitude:v20];
    v22 = v21;
    if (v14 == 200)
    {
      [v21 coordinate];
      if (!CLLocationCoordinate2DIsValid(v90))
      {
        v32 = MEMORY[0x277CCA9B8];
        v87 = @"location";
        v88[0] = v22;
        v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:&v87 count:1];
        v12 = [v32 wf_errorWithCode:4 userInfo:v33];

        if (v12)
        {
          goto LABEL_42;
        }
      }
    }

    else
    {
      if (v14 == 204)
      {
        v23 = 10;
      }

      else
      {
        v23 = 8;
      }

      v12 = [MEMORY[0x277CCA9B8] wf_errorWithCode:v23];
      if (v12)
      {
LABEL_42:
        if (a5)
        {
          v67 = WFLogForCategory(7uLL);
          if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
          {
            [WFWeatherChannelParserV2 parseAirQualityData:location:error:];
          }

          v68 = v12;
          v31 = 0;
          *a5 = v12;
          goto LABEL_46;
        }

LABEL_18:
        v31 = 0;
LABEL_46:

        goto LABEL_47;
      }
    }

    v34 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v34 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZ"];
    v35 = [MEMORY[0x277CBEBB0] timeZoneWithAbbreviation:@"GMT"];
    [v34 setTimeZone:v35];

    v36 = objc_opt_new();
    [v36 setLocation:v8];
    v37 = [v10 wf_stringForKeyPath:&unk_288254A00];
    v38 = [v37 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

    v39 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v38];
    v40 = [v10 wf_arrayForKeyPath:&unk_288254A18];
    v41 = [v40 firstObject];

    if (!v41)
    {
      v41 = [v10 wf_dictionaryForKeyPath:&unk_288254A30];
    }

    v75 = v38;
    v78 = v8;
    v79 = v7;
    v77 = v10;
    v42 = [v10 wf_numberForKeyPath:&unk_288254A48];
    [v41 wf_stringForKeyPath:&unk_288254A60];
    v71 = v76 = v34;
    v43 = [v34 dateFromString:?];
    [v36 setDate:v43];

    v72 = v42;
    v44 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{objc_msgSend(v42, "unsignedIntegerValue")}];
    [v36 setExpirationDate:v44];

    v45 = [v41 wf_stringForKeyPath:&unk_288254A78];
    [v36 setProvider:v45];

    v74 = v39;
    [v36 setLocale:v39];
    v46 = [v41 wf_numberForKeyPath:&unk_288254A90];
    [v36 setLocalizedAirQualityIndex:{objc_msgSend(v46, "integerValue")}];

    v47 = [v41 wf_stringForKeyPath:&unk_288254AA8];
    [v36 setAirQualityScale:v47];

    v48 = [v41 wf_stringForKeyPath:&unk_288254AC0];
    [v36 setLocalizedAirQualityCategory:v48];

    v49 = [v41 wf_numberForKeyPath:&unk_288254AD8];
    v50 = v49;
    if (v49)
    {
      [v36 setCategory:{objc_msgSend(v49, "integerValue")}];
    }

    v70 = v50;
    v51 = v36;
    v73 = v41;
    v52 = [v41 wf_arrayForKeyPath:&unk_288254AF0];
    v53 = objc_opt_new();
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    obj = v52;
    v54 = [obj countByEnumeratingWithState:&v81 objects:v86 count:16];
    if (v54)
    {
      v55 = v54;
      v56 = *v82;
      do
      {
        for (i = 0; i != v55; ++i)
        {
          if (*v82 != v56)
          {
            objc_enumerationMutation(obj);
          }

          v58 = *(*(&v81 + 1) + 8 * i);
          v59 = objc_opt_new();
          v60 = [v58 wf_stringForKeyPath:&unk_288254B08];
          [v59 setLocalizedName:v60];

          v61 = [v58 wf_stringForKeyPath:&unk_288254B20];
          [v59 setLocalizedDescription:v61];

          v62 = [v58 wf_numberForKeyPath:&unk_288254B38];
          [v62 doubleValue];
          [v59 setAmount:?];

          v63 = [v58 wf_stringForKeyPath:&unk_288254B50];
          v64 = [v63 BOOLValue];

          v65 = [v51 primaryPollutant];

          if (!v65 && v64)
          {
            [v51 setPrimaryPollutant:v59];
          }

          [v53 addObject:v59];
        }

        v55 = [obj countByEnumeratingWithState:&v81 objects:v86 count:16];
      }

      while (v55);
    }

    v31 = v51;
    if ([v53 count])
    {
      [v51 setPollutants:v53];
    }

    v66 = WFLogForCategory(7uLL);
    v8 = v78;
    v7 = v79;
    v22 = v75;
    v12 = v76;
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
    {
      [WFWeatherChannelParserV2 parseAirQualityData:location:error:];
    }

    v10 = v77;
    goto LABEL_46;
  }

  if (a5)
  {
    *a5 = [MEMORY[0x277CCA9B8] wf_errorWithCode:1];
  }

  v10 = WFLogForCategory(7uLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [(WFWeatherChannelParserV2 *)v10 parseAirQualityData:v24 location:v25 error:v26, v27, v28, v29, v30];
  }

  v31 = 0;
LABEL_47:

  return v31;
}

- (void)parseDailyForecasts:(void *)a1 .cold.1(void *a1)
{
  [a1 count];
  +[WFWeatherChannelParserV2 expectedDailyForecastCount];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)parseDailyForecasts:.cold.2()
{
  v0 = [WFForecastDataParserUtils stringFromKeyPath:&unk_2882545C8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)parseHourlyForecasts:(void *)a1 .cold.1(void *a1)
{
  [a1 count];
  +[WFWeatherChannelParserV2 expectedHourlyForecastCount];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)parseHourlyForecasts:.cold.2()
{
  v0 = [WFForecastDataParserUtils stringFromKeyPath:&unk_288254718];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)parseCurrentCondition:.cold.3()
{
  v0 = [WFForecastDataParserUtils stringFromKeyPath:&unk_2882547C0];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

@end