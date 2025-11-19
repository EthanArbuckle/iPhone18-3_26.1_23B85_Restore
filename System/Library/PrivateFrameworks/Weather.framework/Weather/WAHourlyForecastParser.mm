@interface WAHourlyForecastParser
+ (id)parseForecasts:(id)a3 temperature:(id)a4 currentTime:(unint64_t)a5 condition:(int64_t)a6 sunrise:(unint64_t)a7 sunset:(unint64_t)a8;
+ (void)addSunEventIntoForecasts:(id)a3 eventType:(unint64_t)a4 forecastDetail:(id)a5 eventTime:(unint64_t)a6 currentTime:(unint64_t)a7;
@end

@implementation WAHourlyForecastParser

+ (void)addSunEventIntoForecasts:(id)a3 eventType:(unint64_t)a4 forecastDetail:(id)a5 eventTime:(unint64_t)a6 currentTime:(unint64_t)a7
{
  v11 = a3;
  v12 = a5;
  if ([v11 count])
  {
    v13 = [MEMORY[0x277CCAB68] stringWithFormat:@"%04lu", a6];
    [v13 insertString:@":" atIndex:2];
    v14 = [v11 objectAtIndexedSubscript:0];
    v15 = [v14 time];
    v16 = TimeStringToIntValue(v15);

    if (a6 > a7)
    {
      v17 = 0;
      if (v16 > a6)
      {
        goto LABEL_4;
      }
    }

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __98__WAHourlyForecastParser_addSunEventIntoForecasts_eventType_forecastDetail_eventTime_currentTime___block_invoke;
    v23[3] = &__block_descriptor_40_e33_B32__0__WAHourlyForecast_8Q16_B24l;
    v23[4] = a6;
    v19 = [v11 indexOfObjectPassingTest:v23];
    if (v19 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = v19;
      if (a4 != 1)
      {
        v20 = [v11 objectAtIndexedSubscript:v19];
        v21 = [v20 time];
        v22 = [v21 isEqualToString:v13];

        if (v22)
        {
          goto LABEL_4;
        }
      }

      if (++v17 != 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_4:
        v18 = objc_alloc_init(WAHourlyForecast);
        [(WAHourlyForecast *)v18 setEventType:a4];
        [(WAHourlyForecast *)v18 setTime:v13];
        [(WAHourlyForecast *)v18 setForecastDetail:v12];
        [v11 insertObject:v18 atIndex:v17];
      }
    }
  }
}

BOOL __98__WAHourlyForecastParser_addSunEventIntoForecasts_eventType_forecastDetail_eventTime_currentTime___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 time];
  v4 = TimeStringToIntValue(v3);

  v5 = *(a1 + 32);
  return v5 >= v4 && v5 < v4 + 100;
}

+ (id)parseForecasts:(id)a3 temperature:(id)a4 currentTime:(unint64_t)a5 condition:(int64_t)a6 sunrise:(unint64_t)a7 sunset:(unint64_t)a8
{
  v13 = a3;
  v14 = a4;
  if ([v13 count])
  {
    v28 = a7;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __90__WAHourlyForecastParser_parseForecasts_temperature_currentTime_condition_sunrise_sunset___block_invoke;
    v31[3] = &__block_descriptor_40_e33_B32__0__WAHourlyForecast_8Q16_B24l;
    v31[4] = a5;
    v15 = [v13 indexOfObjectPassingTest:v31];
    v30 = a6;
    v29 = a8;
    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = WALogForCategory(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [WAHourlyForecastParser parseForecasts:v13 temperature:a5 currentTime:v16 condition:? sunrise:? sunset:?];
      }

      v17 = [MEMORY[0x277CBEB18] arrayWithArray:v13];
    }

    else
    {
      v18 = MEMORY[0x277CBEB18];
      v19 = [v13 subarrayWithRange:{v15, objc_msgSend(v13, "count") - v15}];
      v17 = [v18 arrayWithArray:v19];
    }

    v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"SUNRISE_COMPACT" value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
    [WAHourlyForecastParser addSunEventIntoForecasts:v17 eventType:1 forecastDetail:v21 eventTime:v28 currentTime:a5];

    v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:@"SUNSET_COMPACT" value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
    [WAHourlyForecastParser addSunEventIntoForecasts:v17 eventType:2 forecastDetail:v23 eventTime:v29 currentTime:a5];

    v24 = objc_alloc_init(WAHourlyForecast);
    [(WAHourlyForecast *)v24 setEventType:3];
    v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v26 = [v25 localizedStringForKey:@"NOW" value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
    [(WAHourlyForecast *)v24 setTime:v26];

    [(WAHourlyForecast *)v24 setTemperature:v14];
    [(WAHourlyForecast *)v24 setPercentPrecipitation:-1.0];
    [(WAHourlyForecast *)v24 setConditionCode:v30];
    [v17 insertObject:v24 atIndex:0];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

BOOL __90__WAHourlyForecastParser_parseForecasts_temperature_currentTime_condition_sunrise_sunset___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 time];
  v4 = *(a1 + 32) < TimeStringToIntValue(v3);

  return v4;
}

+ (void)parseForecasts:(os_log_t)log temperature:currentTime:condition:sunrise:sunset:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218242;
  v5 = a2;
  v6 = 2112;
  v7 = a1;
  _os_log_error_impl(&dword_272ACF000, log, OS_LOG_TYPE_ERROR, "Unable to locate current hour (%ld) within new hourly forecasts: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end