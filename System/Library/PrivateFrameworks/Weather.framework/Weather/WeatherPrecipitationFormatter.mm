@interface WeatherPrecipitationFormatter
+ (id)convenienceFormatter;
- (WeatherPrecipitationFormatter)init;
- (double)convertDistanceInImperial:(double)result to:(int64_t)a4;
- (double)convertDistanceInMetric:(double)result to:(int64_t)a4;
- (id)stringForObjectValue:(id)a3;
- (id)stringFromDistance:(double)a3 isDataMetric:(BOOL)a4;
- (int64_t)precipitationUnit;
- (void)setLocale:(id)a3;
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
    v3 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
    locale = v2->_locale;
    v2->_locale = v3;

    v5 = [(NSLengthFormatter *)v2 numberFormatter];
    [v5 setMaximumFractionDigits:1];
  }

  return v2;
}

- (void)setLocale:(id)a3
{
  objc_storeStrong(&self->_locale, a3);
  v5 = a3;
  v6 = [(NSLengthFormatter *)self numberFormatter];
  [v6 setLocale:v5];
}

- (id)stringFromDistance:(double)a3 isDataMetric:(BOOL)a4
{
  v4 = a4;
  v7 = @"--";
  if (1.1755e-38 != a3)
  {
    v8 = [(WeatherPrecipitationFormatter *)self precipitationUnit];
    if (v4)
    {
      [(WeatherPrecipitationFormatter *)self convertDistanceInMetric:v8 to:a3];
    }

    else
    {
      [(WeatherPrecipitationFormatter *)self convertDistanceInImperial:v8 to:a3];
    }

    v9 = [(NSLengthFormatter *)self stringFromValue:v8 unit:?];

    v7 = v9;
  }

  return v7;
}

- (double)convertDistanceInImperial:(double)result to:(int64_t)a4
{
  if (a4 != 1281)
  {
    result = result * 2.54;
    if (a4 == 8)
    {
      return result * 10.0;
    }
  }

  return result;
}

- (double)convertDistanceInMetric:(double)result to:(int64_t)a4
{
  if (a4 == 8)
  {
    return result * 10.0;
  }

  if (a4 == 1281)
  {
    return result / 2.54;
  }

  return result;
}

- (int64_t)precipitationUnit
{
  v3 = [(WeatherPrecipitationFormatter *)self locale];

  if (!v3)
  {
    return 9;
  }

  v4 = [(WeatherPrecipitationFormatter *)self locale];
  v5 = [v4 objectForKey:*MEMORY[0x277CBE690]];

  v6 = [(WeatherPrecipitationFormatter *)self locale];
  v7 = [v6 objectForKey:*MEMORY[0x277CBE718]];
  v8 = [v7 BOOLValue];

  if (v8)
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

- (id)stringForObjectValue:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [v4 doubleValue];
    v5 = [(WeatherPrecipitationFormatter *)self stringFromCentimeters:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end