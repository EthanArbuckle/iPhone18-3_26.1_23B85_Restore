@interface WeatherVisibilityFormatter
+ (id)convenienceFormatter;
- (WeatherVisibilityFormatter)init;
- (id)stringFromDistance:(double)a3 isDataMetric:(BOOL)a4;
- (void)setLocale:(id)a3;
@end

@implementation WeatherVisibilityFormatter

+ (id)convenienceFormatter
{
  v2 = convenienceFormatter_distanceFormatter;
  if (!convenienceFormatter_distanceFormatter)
  {
    if (convenienceFormatter_onceToken_1 != -1)
    {
      +[WeatherVisibilityFormatter convenienceFormatter];
    }

    v2 = convenienceFormatter_distanceFormatter;
  }

  return v2;
}

uint64_t __50__WeatherVisibilityFormatter_convenienceFormatter__block_invoke()
{
  v0 = objc_alloc_init(WeatherVisibilityFormatter);
  v1 = convenienceFormatter_distanceFormatter;
  convenienceFormatter_distanceFormatter = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (WeatherVisibilityFormatter)init
{
  v7.receiver = self;
  v7.super_class = WeatherVisibilityFormatter;
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
  if (!a4)
  {
    a3 = a3 * 1.60934;
  }

  v6.receiver = self;
  v6.super_class = WeatherVisibilityFormatter;
  v4 = [(NSLengthFormatter *)&v6 stringFromMeters:a3 * 1000.0];

  return v4;
}

@end