@interface WeatherVisibilityFormatter
+ (id)convenienceFormatter;
- (WeatherVisibilityFormatter)init;
- (id)stringFromDistance:(double)distance isDataMetric:(BOOL)metric;
- (void)setLocale:(id)locale;
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
  if (!metric)
  {
    distance = distance * 1.60934;
  }

  v6.receiver = self;
  v6.super_class = WeatherVisibilityFormatter;
  v4 = [(NSLengthFormatter *)&v6 stringFromMeters:distance * 1000.0];

  return v4;
}

@end