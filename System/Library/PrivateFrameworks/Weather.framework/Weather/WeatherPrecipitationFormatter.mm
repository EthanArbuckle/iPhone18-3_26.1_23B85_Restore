@interface WeatherPrecipitationFormatter
+ (id)convenienceFormatter;
- (WeatherPrecipitationFormatter)init;
- (double)convertDistanceInImperial:(double)result to:(int64_t)to;
- (double)convertDistanceInMetric:(double)result to:(int64_t)to;
- (id)stringForObjectValue:(id)value;
- (id)stringFromDistance:(double)distance isDataMetric:(BOOL)metric;
- (int64_t)precipitationUnit;
- (void)setLocale:(id)locale;
@end

@implementation WeatherPrecipitationFormatter

+ (id)convenienceFormatter
{
  if (convenienceFormatter_onceToken_0 != -1)
  {
    +[WeatherPrecipitationFormatter convenienceFormatter];
  }

  v3 = convenienceFormatter_precipitationFormatter;

  return v3;
}

void __53__WeatherPrecipitationFormatter_convenienceFormatter__block_invoke()
{
  if (!convenienceFormatter_precipitationFormatter)
  {
    v0 = objc_alloc_init(WeatherPrecipitationFormatter);
    v1 = convenienceFormatter_precipitationFormatter;
    convenienceFormatter_precipitationFormatter = v0;

    MEMORY[0x2821F96F8](v0, v1);
  }
}

- (WeatherPrecipitationFormatter)init
{
  v7.receiver = self;
  v7.super_class = WeatherPrecipitationFormatter;
  v2 = [(NSLengthFormatter *)&v7 init];
  if (v2)
  {
    autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
    locale = v2->_locale;
    v2->_locale = autoupdatingCurrentLocale;

    numberFormatter = [(NSLengthFormatter *)v2 numberFormatter];
    [numberFormatter setMaximumFractionDigits:1];
  }

  return v2;
}

- (void)setLocale:(id)locale
{
  objc_storeStrong(&self->_locale, locale);
  localeCopy = locale;
  numberFormatter = [(NSLengthFormatter *)self numberFormatter];
  [numberFormatter setLocale:localeCopy];
}

- (id)stringFromDistance:(double)distance isDataMetric:(BOOL)metric
{
  metricCopy = metric;
  v7 = @"--";
  if (1.1755e-38 != distance)
  {
    precipitationUnit = [(WeatherPrecipitationFormatter *)self precipitationUnit];
    if (metricCopy)
    {
      [(WeatherPrecipitationFormatter *)self convertDistanceInMetric:precipitationUnit to:distance];
    }

    else
    {
      [(WeatherPrecipitationFormatter *)self convertDistanceInImperial:precipitationUnit to:distance];
    }

    v9 = [(NSLengthFormatter *)self stringFromValue:precipitationUnit unit:?];

    v7 = v9;
  }

  return v7;
}

- (double)convertDistanceInImperial:(double)result to:(int64_t)to
{
  if (to != 1281)
  {
    result = result * 2.54;
    if (to == 8)
    {
      return result * 10.0;
    }
  }

  return result;
}

- (double)convertDistanceInMetric:(double)result to:(int64_t)to
{
  if (to == 8)
  {
    return result * 10.0;
  }

  if (to == 1281)
  {
    return result / 2.54;
  }

  return result;
}

- (int64_t)precipitationUnit
{
  locale = [(WeatherPrecipitationFormatter *)self locale];

  if (!locale)
  {
    return 9;
  }

  locale2 = [(WeatherPrecipitationFormatter *)self locale];
  v5 = [locale2 objectForKey:*MEMORY[0x277CBE690]];

  locale3 = [(WeatherPrecipitationFormatter *)self locale];
  v7 = [locale3 objectForKey:*MEMORY[0x277CBE718]];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue)
  {
    if ([&unk_288235208 containsObject:v5])
    {
      v9 = 8;
    }

    else
    {
      v9 = 9;
    }
  }

  else
  {
    v9 = 1281;
  }

  return v9;
}

- (id)stringForObjectValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [valueCopy doubleValue];
    v5 = [(WeatherPrecipitationFormatter *)self stringFromCentimeters:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end