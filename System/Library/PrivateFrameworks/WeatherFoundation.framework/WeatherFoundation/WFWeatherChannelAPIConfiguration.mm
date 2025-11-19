@interface WFWeatherChannelAPIConfiguration
- (BOOL)isValid;
- (WFWeatherChannelAPIConfiguration)initWithVersion:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)forecastRequestForTypes:(unint64_t)a3 location:(id)a4 units:(int)a5 date:(id)a6 error:(id *)a7 rules:(id)a8 options:(id)a9;
- (id)hostUrl;
- (id)parseForecast:(unint64_t)a3 data:(id)a4 location:(id)a5 units:(int)a6 locale:(id)a7 date:(id)a8 error:(id *)a9 rules:(id)a10;
- (void)setRequestFormatter:(Class)a3 forForecastType:(unint64_t)a4;
- (void)setRequestParser:(id)a3 forForecastType:(unint64_t)a4;
@end

@implementation WFWeatherChannelAPIConfiguration

- (WFWeatherChannelAPIConfiguration)initWithVersion:(id)a3
{
  v4 = a3;
  v5 = [(WFWeatherChannelAPIConfiguration *)self init];
  if (v5)
  {
    v6 = objc_opt_new();
    v7 = objc_opt_class();
    v8 = +[WFWeatherChannelRequestFormatterV2 hostURLForService];
    if ([@"v3" isEqualToString:v4])
    {
      v9 = objc_opt_new();

      v7 = objc_opt_class();
      v10 = +[WFWeatherChannelRequestFormatterV3 hostURLForService];

      v6 = v9;
      v8 = v10;
    }

    [(WFWeatherChannelAPIConfiguration *)v5 setDefaultForecastFormatter:v7];
    [(WFWeatherChannelAPIConfiguration *)v5 setDefaultForecastParser:v6];
    v11 = objc_opt_new();
    [(WFWeatherChannelAPIConfiguration *)v5 setRequestFormatterForForecastType:v11];

    v12 = objc_opt_new();
    [(WFWeatherChannelAPIConfiguration *)v5 setRequestParserForForecastType:v12];

    [(WFWeatherChannelAPIConfiguration *)v5 setRequestFormatter:objc_opt_class() forForecastType:64];
    v13 = objc_opt_new();
    [(WFWeatherChannelAPIConfiguration *)v5 setRequestParser:v13 forForecastType:64];

    [(WFWeatherChannelAPIConfiguration *)v5 setRequestFormatter:objc_opt_class() forForecastType:128];
    v14 = objc_opt_new();
    [(WFWeatherChannelAPIConfiguration *)v5 setRequestParser:v14 forForecastType:128];
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
  v19 = [(WFWeatherChannelAPIConfiguration *)self requestFormatterForForecastType];
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v21 = [v19 objectForKeyedSubscript:v20];
  if (!v21)
  {
    v21 = [(WFWeatherChannelAPIConfiguration *)self defaultForecastRequestFormatterClass];
  }

  v22 = [MEMORY[0x277CBEAF8] currentLocale];
  v23 = [(objc_class *)v21 forecastRequest:a3 forLocation:v18 withUnits:v11 locale:v22 date:v17 rules:v16 options:v15];

  return v23;
}

- (id)parseForecast:(unint64_t)a3 data:(id)a4 location:(id)a5 units:(int)a6 locale:(id)a7 date:(id)a8 error:(id *)a9 rules:(id)a10
{
  v16 = a10;
  v17 = a8;
  v18 = a7;
  v19 = a5;
  v20 = a4;
  v21 = [(WFWeatherChannelAPIConfiguration *)self requestParserForForecastType];
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v23 = [v21 objectForKeyedSubscript:v22];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = [(WFWeatherChannelAPIConfiguration *)self defaultForecastParser];
  }

  v26 = v25;

  v27 = [v26 parseForecastData:v20 types:a3 location:v19 locale:v18 date:v17 error:a9 rules:v16];

  return v27;
}

- (void)setRequestFormatter:(Class)a3 forForecastType:(unint64_t)a4
{
  v7 = [(WFWeatherChannelAPIConfiguration *)self requestFormatterForForecastType];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  [v7 setObject:a3 forKeyedSubscript:v6];
}

- (void)setRequestParser:(id)a3 forForecastType:(unint64_t)a4
{
  v6 = a3;
  v8 = [(WFWeatherChannelAPIConfiguration *)self requestParserForForecastType];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  [v8 setObject:v6 forKeyedSubscript:v7];
}

- (id)hostUrl
{
  v2 = [(WFWeatherChannelAPIConfiguration *)self defaultForecastRequestFormatterClass];

  return [(objc_class *)v2 hostURLForService];
}

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v4 = objc_opt_new();
  v5 = [(WFWeatherChannelAPIConfiguration *)self requestParserForForecastType];
  v6 = [v5 copy];
  [v4 setRequestParserForForecastType:v6];

  v7 = [(WFWeatherChannelAPIConfiguration *)self requestFormatterForForecastType];
  v8 = [v7 copy];
  [v4 setRequestFormatterForForecastType:v8];

  [v4 setDefaultForecastRequestFormatterClass:{-[WFWeatherChannelAPIConfiguration defaultForecastRequestFormatterClass](self, "defaultForecastRequestFormatterClass")}];
  v9 = [(WFWeatherChannelAPIConfiguration *)self defaultForecastParser];
  [v4 setDefaultForecastParser:v9];

  return v4;
}

- (BOOL)isValid
{
  v3 = [(WFWeatherChannelAPIConfiguration *)self requestFormatterForForecastType];
  if ([v3 count])
  {
    v4 = [(WFWeatherChannelAPIConfiguration *)self requestParserForForecastType];
    if ([v4 count])
    {
      v5 = [(WFWeatherChannelAPIConfiguration *)self requestFormatterForForecastType];
      v6 = [v5 allKeys];
      v7 = [(WFWeatherChannelAPIConfiguration *)self requestParserForForecastType];
      v8 = [v7 allKeys];
      if ([v6 isEqualToArray:v8] && -[WFWeatherChannelAPIConfiguration defaultForecastRequestFormatterClass](self, "defaultForecastRequestFormatterClass"))
      {
        v9 = [(WFWeatherChannelAPIConfiguration *)self defaultForecastParser];
        v10 = v9 != 0;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end