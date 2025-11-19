@interface WFWeatherHistorical1DayParserV2
- (id)parseForecastConditionsFromObservations:(id)a3;
- (id)parseForecastData:(id)a3 types:(unint64_t)a4 location:(id)a5 locale:(id)a6 date:(id)a7 error:(id *)a8 rules:(id)a9;
- (id)parseHistoricalForecast:(id)a3 location:(id)a4 date:(id)a5 error:(id *)a6;
- (id)parseHistoricalForecastConditionsFromObservations:(id)a3 forDate:(id)a4;
@end

@implementation WFWeatherHistorical1DayParserV2

- (id)parseForecastData:(id)a3 types:(unint64_t)a4 location:(id)a5 locale:(id)a6 date:(id)a7 error:(id *)a8 rules:(id)a9
{
  v24[1] = *MEMORY[0x277D85DE8];
  v13 = a5;
  v14 = a7;
  v22 = 0;
  v15 = [MEMORY[0x277CCAAA0] JSONObjectWithData:a3 options:0 error:&v22];
  v16 = v22;
  if (v15)
  {
    v17 = [(WFWeatherHistorical1DayParserV2 *)self parseHistoricalForecast:v15 location:v13 date:v14 error:a8];
  }

  else
  {
    v18 = WFLogForCategory(7uLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [WFWeatherHistorical1DayParserV2 parseForecastData:v16 types:v18 location:? locale:? date:? error:? rules:?];
    }

    if (v16)
    {
      v19 = MEMORY[0x277CCA9B8];
      v23 = *MEMORY[0x277CCA450];
      v24[0] = @"Failed to parse JSON historical 1 day forecast data";
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      *a8 = [v19 wf_errorWithCode:1 encapsulatedError:v16 userInfo:v20];
    }

    v17 = 0;
  }

  return v17;
}

- (id)parseHistoricalForecast:(id)a3 location:(id)a4 date:(id)a5 error:(id *)a6
{
  v9 = a4;
  v10 = a5;
  v11 = [a3 arrayForKey:@"observations"];
  if (v11)
  {
    v12 = [(WFWeatherHistorical1DayParserV2 *)self parseHistoricalForecastConditionsFromObservations:v11 forDate:v10];
    v13 = [v12 currentConditions];
    [v13 setLocation:v9];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)parseHistoricalForecastConditionsFromObservations:(id)a3 forDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(WFParsedForecastData);
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  [v7 timeIntervalSince1970];
  v11 = v10;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  v50[0] = 0;
  v50[1] = v50;
  v50[2] = 0x2020000000;
  v50[3] = 0x7FFFFFFFFFFFFFFFLL;
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x2020000000;
  v49[3] = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0xC061800000000000;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0x4061800000000000;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __93__WFWeatherHistorical1DayParserV2_parseHistoricalForecastConditionsFromObservations_forDate___block_invoke;
  v32[3] = &unk_279E6F548;
  v12 = v9;
  v33 = v12;
  v34 = self;
  v40 = v11;
  v35 = v50;
  v36 = &v51;
  v37 = &v45;
  v38 = &v41;
  v39 = v49;
  [v6 enumerateObjectsUsingBlock:v32];
  [(WFParsedForecastData *)v8 setHourlyForecasts:v12];
  v13 = [v12 objectAtIndexedSubscript:v52[3]];
  [(WFParsedForecastData *)v8 setCurrentConditions:v13];

  v14 = [(WFParsedForecastData *)v8 currentConditions];
  v15 = [v14 objectForKeyedSubscript:@"WFWeatherForecastDateComponent"];

  if (!v15)
  {
    v16 = [(WFParsedForecastData *)v8 currentConditions];
    [v16 setObject:v7 forKeyedSubscript:@"WFWeatherForecastDateComponent"];
  }

  v17 = [v6 lastObject];
  v18 = [v17 objectForKeyedSubscript:@"max_temp"];

  v19 = [v6 lastObject];
  v20 = [v19 objectForKeyedSubscript:@"min_temp"];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    if (v46[3] < v42[3])
    {
      goto LABEL_9;
    }

    v21 = [WFTemperature alloc];
    v22 = [(WFTemperature *)v21 initWithTemperatureUnit:2 value:v46[3]];
    v23 = [(WFParsedForecastData *)v8 currentConditions];
    [v23 setObject:v22 forKeyedSubscript:@"WFWeatherHighTemperatureComponent"];

    v24 = [WFTemperature alloc];
    v25 = [(WFTemperature *)v24 initWithTemperatureUnit:2 value:v42[3]];
    v26 = [(WFParsedForecastData *)v8 currentConditions];
    [v26 setObject:v25 forKeyedSubscript:@"WFWeatherLowTemperatureComponent"];
  }

  else
  {
    v27 = [WFTemperature alloc];
    [v18 doubleValue];
    v28 = [(WFTemperature *)v27 initWithTemperatureUnit:2 value:?];
    v29 = [(WFParsedForecastData *)v8 currentConditions];
    [v29 setObject:v28 forKeyedSubscript:@"WFWeatherHighTemperatureComponent"];

    v30 = [WFTemperature alloc];
    [v20 doubleValue];
    v25 = [(WFTemperature *)v30 initWithTemperatureUnit:2 value:?];
    v26 = [(WFParsedForecastData *)v8 currentConditions];
    [v26 setObject:v25 forKeyedSubscript:@"WFWeatherLowTemperatureComponent"];
  }

LABEL_9:
  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(v49, 8);
  _Block_object_dispose(v50, 8);
  _Block_object_dispose(&v51, 8);

  return v8;
}

void __93__WFWeatherHistorical1DayParserV2_parseHistoricalForecastConditionsFromObservations_forDate___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = a2;
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) parseForecastConditionsFromObservations:v20];
  [v5 addObject:v6];

  v7 = [v20 numberForKey:@"valid_time_gmt"];
  v8 = v7;
  if (v7)
  {
    v9 = vabdd_f64(*(a1 + 88), [v7 integerValue]);
    v10 = *(*(a1 + 48) + 8);
    if (*(v10 + 24) > v9)
    {
      *(v10 + 24) = v9;
      *(*(*(a1 + 56) + 8) + 24) = a3;
    }
  }

  v11 = [v20 numberForKey:@"temp"];
  v12 = v11;
  if (v11)
  {
    v13 = *(*(*(a1 + 64) + 8) + 24);
    [v11 doubleValue];
    if (v13 >= v14)
    {
      v14 = v13;
    }

    *(*(*(a1 + 64) + 8) + 24) = v14;
    v15 = *(*(*(a1 + 72) + 8) + 24);
    [v12 doubleValue];
    if (v15 < v16)
    {
      v16 = v15;
    }

    *(*(*(a1 + 72) + 8) + 24) = v16;
  }

  v17 = [v20 numberForKey:@"precip_hrly"];
  v18 = v17;
  if (v17)
  {
    [v17 doubleValue];
    *(*(*(a1 + 80) + 8) + 24) = v19 + *(*(*(a1 + 80) + 8) + 24);
  }
}

- (id)parseForecastConditionsFromObservations:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(WFWeatherConditions);
  v5 = [v3 numberForKey:@"valid_time_gmt"];
  v6 = v5;
  if (v5)
  {
    v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{objc_msgSend(v5, "unsignedIntegerValue")}];
    [(WFWeatherConditions *)v4 setObject:v7 forKeyedSubscript:@"WFWeatherForecastDateComponent"];
  }

  v8 = [v3 numberForKey:@"expire_time_gmt"];

  if (v8)
  {
    v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{objc_msgSend(v8, "unsignedIntegerValue")}];
    [(WFWeatherConditions *)v4 setObject:v9 forKeyedSubscript:@"WFWeatherForecastExpirationDateComponent"];
  }

  v10 = [v3 numberForKey:@"wx_icon"];
  if (v10)
  {
    [(WFWeatherConditions *)v4 setObject:v10 forKeyedSubscript:@"__THIS_WILL_BE_DEPRECATED__WFWeatherLegacyConditionComponent"];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{WFConditionCodeFromLegacyWeatherConditionCode(objc_msgSend(v10, "unsignedIntegerValue"))}];
    [(WFWeatherConditions *)v4 setObject:v11 forKeyedSubscript:@"WFWeatherConditionComponent"];
  }

  v12 = [v3 numberForKey:@"rh"];
  [(WFWeatherConditions *)v4 setObject:v12 forKeyedSubscript:@"WFWeatherHumidityComponent"];

  v13 = [v3 numberForKey:@"dewPt"];
  if (v13)
  {
    [(WFWeatherConditions *)v4 setObject:v13 forKeyedSubscript:@"WFWeatherDewpointComponent"];
    v14 = [WFTemperature alloc];
    [v13 doubleValue];
    v15 = [(WFTemperature *)v14 initWithTemperatureUnit:2 value:?];
    [(WFWeatherConditions *)v4 setObject:v15 forKeyedSubscript:@"WFWeatherDewpointTemperatureComponent"];
  }

  v16 = [v3 numberForKey:@"precip_hrly"];
  if (v16 || ([v3 numberForKey:@"precip_total"], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v17 = v16;
    [(WFWeatherConditions *)v4 setObject:v16 forKeyedSubscript:@"WFWeatherPrecipitationAmountComponent"];
  }

  v18 = [v3 numberForKey:@"temp"];
  if (v18)
  {
    v19 = [WFTemperature alloc];
    [v18 doubleValue];
    v20 = [(WFTemperature *)v19 initWithTemperatureUnit:2 value:?];
    [(WFWeatherConditions *)v4 setObject:v20 forKeyedSubscript:@"WFWeatherTemperatureComponent"];
  }

  v21 = [v3 numberForKey:@"feels_like"];

  if (v21)
  {
    v22 = [WFTemperature alloc];
    [v21 doubleValue];
    v23 = [(WFTemperature *)v22 initWithTemperatureUnit:2 value:?];
    [(WFWeatherConditions *)v4 setObject:v23 forKeyedSubscript:@"WFWeatherFeelsLikeTemperatureComponent"];
  }

  v24 = [v3 numberForKey:@"uv_index"];
  [(WFWeatherConditions *)v4 setObject:v24 forKeyedSubscript:@"WFWeatherUVIndexComponent"];

  v25 = [v3 numberForKey:@"vis"];
  if (v25)
  {
    [(WFWeatherConditions *)v4 setObject:v25 forKeyedSubscript:@"WFWeatherVisibilityComponent"];
  }

  v26 = [v3 numberForKey:@"wdir"];
  [(WFWeatherConditions *)v4 setObject:v26 forKeyedSubscript:@"WFWeatherWindDirectionComponent"];

  v27 = [v3 numberForKey:@"wspd"];
  if (v27)
  {
    [(WFWeatherConditions *)v4 setObject:v27 forKeyedSubscript:@"WFWeatherWindSpeedComponent"];
  }

  v28 = [v3 numberForKey:@"pressure"];
  if (v28)
  {
    [(WFWeatherConditions *)v4 setObject:v28 forKeyedSubscript:@"WFWeatherPressureComponent"];
  }

  v29 = [v3 numberForKey:@"pressure_tend"];
  if (v29)
  {
    [(WFWeatherConditions *)v4 setObject:v29 forKeyedSubscript:@"WFWeatherPressureTrendComponent"];
  }

  return v4;
}

- (void)parseForecastData:(uint64_t)a1 types:(NSObject *)a2 location:locale:date:error:rules:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_272B94000, a2, OS_LOG_TYPE_ERROR, "Failed to parse JSON historical 1 day forecast data with error %@", &v2, 0xCu);
}

@end