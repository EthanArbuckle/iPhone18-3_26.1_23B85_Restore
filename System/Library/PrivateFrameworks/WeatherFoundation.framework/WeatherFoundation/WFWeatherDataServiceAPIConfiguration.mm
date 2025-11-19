@interface WFWeatherDataServiceAPIConfiguration
- (BOOL)isValid;
- (WFWeatherDataServiceAPIConfiguration)initWithVersion:(id)a3 environment:(id)a4;
- (id)aqiRequestForScaleNamed:(id)a3 language:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)forecastRequestForTypes:(unint64_t)a3 location:(id)a4 units:(int)a5 date:(id)a6 error:(id *)a7 rules:(id)a8 options:(id)a9;
- (id)hostUrl;
- (id)parseAQIScaleNamed:(id)a3 data:(id)a4 error:(id *)a5;
- (id)parseForecast:(unint64_t)a3 data:(id)a4 location:(id)a5 units:(int)a6 locale:(id)a7 date:(id)a8 error:(id *)a9 rules:(id)a10;
@end

@implementation WFWeatherDataServiceAPIConfiguration

- (WFWeatherDataServiceAPIConfiguration)initWithVersion:(id)a3 environment:(id)a4
{
  v6 = a4;
  v7 = [(WFWeatherDataServiceAPIConfiguration *)self init];
  if (v7)
  {
    [(WFWeatherDataServiceAPIConfiguration *)v7 setForecastRequestFormatterClass:objc_opt_class()];
    v8 = objc_opt_new();
    [(WFWeatherDataServiceAPIConfiguration *)v7 setForecastParser:v8];

    objc_storeStrong(&v7->_environment, a4);
  }

  return v7;
}

- (BOOL)isValid
{
  if (![(WFWeatherDataServiceAPIConfiguration *)self forecastRequestFormatterClass])
  {
    return 0;
  }

  v3 = [(WFWeatherDataServiceAPIConfiguration *)self forecastParser];
  v4 = v3 != 0;

  return v4;
}

- (id)hostUrl
{
  v3 = [(WFWeatherDataServiceAPIConfiguration *)self forecastRequestFormatterClass];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(WFWeatherDataServiceAPIConfiguration *)self environment];
    v5 = [(objc_class *)v3 hostURLForEnvironment:v4];
  }

  else
  {
    v5 = [(objc_class *)v3 hostURLForService];
  }

  return v5;
}

- (id)forecastRequestForTypes:(unint64_t)a3 location:(id)a4 units:(int)a5 date:(id)a6 error:(id *)a7 rules:(id)a8 options:(id)a9
{
  v11 = *&a5;
  v15 = a9;
  v16 = a8;
  v17 = a6;
  v18 = a4;
  v19 = [(WFWeatherDataServiceAPIConfiguration *)self forecastRequestFormatterClass];
  v20 = [MEMORY[0x277CBEAF8] currentLocale];
  v21 = [(objc_class *)v19 forecastRequest:a3 forLocation:v18 withUnits:v11 locale:v20 date:v17 rules:v16 options:v15];

  return v21;
}

- (id)parseForecast:(unint64_t)a3 data:(id)a4 location:(id)a5 units:(int)a6 locale:(id)a7 date:(id)a8 error:(id *)a9 rules:(id)a10
{
  v12 = *&a6;
  v17 = a10;
  v18 = a8;
  v19 = a7;
  v20 = a5;
  v21 = a4;
  v22 = [(WFWeatherDataServiceAPIConfiguration *)self forecastParser];
  v23 = [v22 parseForecastData:v21 types:a3 location:v20 units:v12 locale:v19 date:v18 error:a9 rules:v17];

  return v23;
}

- (id)aqiRequestForScaleNamed:(id)a3 language:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(objc_class *)[(WFWeatherDataServiceAPIConfiguration *)self forecastRequestFormatterClass] aqiRequestForScaleNamed:v7 language:v6];

  return v8;
}

- (id)parseAQIScaleNamed:(id)a3 data:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(WFWeatherDataServiceAPIConfiguration *)self forecastParser];
  v11 = [v10 parseAQIScaleNamed:v9 data:v8 error:a5];

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(WFWeatherDataServiceAPIConfiguration);
  [(WFWeatherDataServiceAPIConfiguration *)v4 setForecastRequestFormatterClass:[(WFWeatherDataServiceAPIConfiguration *)self forecastRequestFormatterClass]];
  v5 = [(WFWeatherDataServiceAPIConfiguration *)self forecastParser];
  [(WFWeatherDataServiceAPIConfiguration *)v4 setForecastParser:v5];

  return v4;
}

@end