@interface WFWeatherChannelAPIConfiguration
- (BOOL)isValid;
- (WFWeatherChannelAPIConfiguration)initWithVersion:(id)version;
- (id)copyWithZone:(_NSZone *)zone;
- (id)forecastRequestForTypes:(unint64_t)types location:(id)location units:(int)units date:(id)date error:(id *)error rules:(id)rules options:(id)options;
- (id)hostUrl;
- (id)parseForecast:(unint64_t)forecast data:(id)data location:(id)location units:(int)units locale:(id)locale date:(id)date error:(id *)error rules:(id)self0;
- (void)setRequestFormatter:(Class)formatter forForecastType:(unint64_t)type;
- (void)setRequestParser:(id)parser forForecastType:(unint64_t)type;
@end

@implementation WFWeatherChannelAPIConfiguration

- (WFWeatherChannelAPIConfiguration)initWithVersion:(id)version
{
  versionCopy = version;
  v5 = [(WFWeatherChannelAPIConfiguration *)self init];
  if (v5)
  {
    v6 = objc_opt_new();
    v7 = objc_opt_class();
    v8 = +[WFWeatherChannelRequestFormatterV2 hostURLForService];
    if ([@"v3" isEqualToString:versionCopy])
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

- (id)forecastRequestForTypes:(unint64_t)types location:(id)location units:(int)units date:(id)date error:(id *)error rules:(id)rules options:(id)options
{
  v11 = *&units;
  optionsCopy = options;
  rulesCopy = rules;
  dateCopy = date;
  locationCopy = location;
  requestFormatterForForecastType = [(WFWeatherChannelAPIConfiguration *)self requestFormatterForForecastType];
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:types];
  defaultForecastRequestFormatterClass = [requestFormatterForForecastType objectForKeyedSubscript:v20];
  if (!defaultForecastRequestFormatterClass)
  {
    defaultForecastRequestFormatterClass = [(WFWeatherChannelAPIConfiguration *)self defaultForecastRequestFormatterClass];
  }

  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v23 = [(objc_class *)defaultForecastRequestFormatterClass forecastRequest:types forLocation:locationCopy withUnits:v11 locale:currentLocale date:dateCopy rules:rulesCopy options:optionsCopy];

  return v23;
}

- (id)parseForecast:(unint64_t)forecast data:(id)data location:(id)location units:(int)units locale:(id)locale date:(id)date error:(id *)error rules:(id)self0
{
  rulesCopy = rules;
  dateCopy = date;
  localeCopy = locale;
  locationCopy = location;
  dataCopy = data;
  requestParserForForecastType = [(WFWeatherChannelAPIConfiguration *)self requestParserForForecastType];
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:forecast];
  v23 = [requestParserForForecastType objectForKeyedSubscript:v22];
  v24 = v23;
  if (v23)
  {
    defaultForecastParser = v23;
  }

  else
  {
    defaultForecastParser = [(WFWeatherChannelAPIConfiguration *)self defaultForecastParser];
  }

  v26 = defaultForecastParser;

  v27 = [v26 parseForecastData:dataCopy types:forecast location:locationCopy locale:localeCopy date:dateCopy error:error rules:rulesCopy];

  return v27;
}

- (void)setRequestFormatter:(Class)formatter forForecastType:(unint64_t)type
{
  requestFormatterForForecastType = [(WFWeatherChannelAPIConfiguration *)self requestFormatterForForecastType];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  [requestFormatterForForecastType setObject:formatter forKeyedSubscript:v6];
}

- (void)setRequestParser:(id)parser forForecastType:(unint64_t)type
{
  parserCopy = parser;
  requestParserForForecastType = [(WFWeatherChannelAPIConfiguration *)self requestParserForForecastType];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  [requestParserForForecastType setObject:parserCopy forKeyedSubscript:v7];
}

- (id)hostUrl
{
  defaultForecastRequestFormatterClass = [(WFWeatherChannelAPIConfiguration *)self defaultForecastRequestFormatterClass];

  return [(objc_class *)defaultForecastRequestFormatterClass hostURLForService];
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v4 = objc_opt_new();
  requestParserForForecastType = [(WFWeatherChannelAPIConfiguration *)self requestParserForForecastType];
  v6 = [requestParserForForecastType copy];
  [v4 setRequestParserForForecastType:v6];

  requestFormatterForForecastType = [(WFWeatherChannelAPIConfiguration *)self requestFormatterForForecastType];
  v8 = [requestFormatterForForecastType copy];
  [v4 setRequestFormatterForForecastType:v8];

  [v4 setDefaultForecastRequestFormatterClass:{-[WFWeatherChannelAPIConfiguration defaultForecastRequestFormatterClass](self, "defaultForecastRequestFormatterClass")}];
  defaultForecastParser = [(WFWeatherChannelAPIConfiguration *)self defaultForecastParser];
  [v4 setDefaultForecastParser:defaultForecastParser];

  return v4;
}

- (BOOL)isValid
{
  requestFormatterForForecastType = [(WFWeatherChannelAPIConfiguration *)self requestFormatterForForecastType];
  if ([requestFormatterForForecastType count])
  {
    requestParserForForecastType = [(WFWeatherChannelAPIConfiguration *)self requestParserForForecastType];
    if ([requestParserForForecastType count])
    {
      requestFormatterForForecastType2 = [(WFWeatherChannelAPIConfiguration *)self requestFormatterForForecastType];
      allKeys = [requestFormatterForForecastType2 allKeys];
      requestParserForForecastType2 = [(WFWeatherChannelAPIConfiguration *)self requestParserForForecastType];
      allKeys2 = [requestParserForForecastType2 allKeys];
      if ([allKeys isEqualToArray:allKeys2] && -[WFWeatherChannelAPIConfiguration defaultForecastRequestFormatterClass](self, "defaultForecastRequestFormatterClass"))
      {
        defaultForecastParser = [(WFWeatherChannelAPIConfiguration *)self defaultForecastParser];
        v10 = defaultForecastParser != 0;
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