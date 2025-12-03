@interface WFWeatherDataServiceAPIConfiguration
- (BOOL)isValid;
- (WFWeatherDataServiceAPIConfiguration)initWithVersion:(id)version environment:(id)environment;
- (id)aqiRequestForScaleNamed:(id)named language:(id)language;
- (id)copyWithZone:(_NSZone *)zone;
- (id)forecastRequestForTypes:(unint64_t)types location:(id)location units:(int)units date:(id)date error:(id *)error rules:(id)rules options:(id)options;
- (id)hostUrl;
- (id)parseAQIScaleNamed:(id)named data:(id)data error:(id *)error;
- (id)parseForecast:(unint64_t)forecast data:(id)data location:(id)location units:(int)units locale:(id)locale date:(id)date error:(id *)error rules:(id)self0;
@end

@implementation WFWeatherDataServiceAPIConfiguration

- (WFWeatherDataServiceAPIConfiguration)initWithVersion:(id)version environment:(id)environment
{
  environmentCopy = environment;
  v7 = [(WFWeatherDataServiceAPIConfiguration *)self init];
  if (v7)
  {
    [(WFWeatherDataServiceAPIConfiguration *)v7 setForecastRequestFormatterClass:objc_opt_class()];
    v8 = objc_opt_new();
    [(WFWeatherDataServiceAPIConfiguration *)v7 setForecastParser:v8];

    objc_storeStrong(&v7->_environment, environment);
  }

  return v7;
}

- (BOOL)isValid
{
  if (![(WFWeatherDataServiceAPIConfiguration *)self forecastRequestFormatterClass])
  {
    return 0;
  }

  forecastParser = [(WFWeatherDataServiceAPIConfiguration *)self forecastParser];
  v4 = forecastParser != 0;

  return v4;
}

- (id)hostUrl
{
  forecastRequestFormatterClass = [(WFWeatherDataServiceAPIConfiguration *)self forecastRequestFormatterClass];
  if (objc_opt_respondsToSelector())
  {
    environment = [(WFWeatherDataServiceAPIConfiguration *)self environment];
    hostURLForService = [(objc_class *)forecastRequestFormatterClass hostURLForEnvironment:environment];
  }

  else
  {
    hostURLForService = [(objc_class *)forecastRequestFormatterClass hostURLForService];
  }

  return hostURLForService;
}

- (id)forecastRequestForTypes:(unint64_t)types location:(id)location units:(int)units date:(id)date error:(id *)error rules:(id)rules options:(id)options
{
  v11 = *&units;
  optionsCopy = options;
  rulesCopy = rules;
  dateCopy = date;
  locationCopy = location;
  forecastRequestFormatterClass = [(WFWeatherDataServiceAPIConfiguration *)self forecastRequestFormatterClass];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v21 = [(objc_class *)forecastRequestFormatterClass forecastRequest:types forLocation:locationCopy withUnits:v11 locale:currentLocale date:dateCopy rules:rulesCopy options:optionsCopy];

  return v21;
}

- (id)parseForecast:(unint64_t)forecast data:(id)data location:(id)location units:(int)units locale:(id)locale date:(id)date error:(id *)error rules:(id)self0
{
  v12 = *&units;
  rulesCopy = rules;
  dateCopy = date;
  localeCopy = locale;
  locationCopy = location;
  dataCopy = data;
  forecastParser = [(WFWeatherDataServiceAPIConfiguration *)self forecastParser];
  v23 = [forecastParser parseForecastData:dataCopy types:forecast location:locationCopy units:v12 locale:localeCopy date:dateCopy error:error rules:rulesCopy];

  return v23;
}

- (id)aqiRequestForScaleNamed:(id)named language:(id)language
{
  languageCopy = language;
  namedCopy = named;
  v8 = [(objc_class *)[(WFWeatherDataServiceAPIConfiguration *)self forecastRequestFormatterClass] aqiRequestForScaleNamed:namedCopy language:languageCopy];

  return v8;
}

- (id)parseAQIScaleNamed:(id)named data:(id)data error:(id *)error
{
  dataCopy = data;
  namedCopy = named;
  forecastParser = [(WFWeatherDataServiceAPIConfiguration *)self forecastParser];
  v11 = [forecastParser parseAQIScaleNamed:namedCopy data:dataCopy error:error];

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(WFWeatherDataServiceAPIConfiguration);
  [(WFWeatherDataServiceAPIConfiguration *)v4 setForecastRequestFormatterClass:[(WFWeatherDataServiceAPIConfiguration *)self forecastRequestFormatterClass]];
  forecastParser = [(WFWeatherDataServiceAPIConfiguration *)self forecastParser];
  [(WFWeatherDataServiceAPIConfiguration *)v4 setForecastParser:forecastParser];

  return v4;
}

@end