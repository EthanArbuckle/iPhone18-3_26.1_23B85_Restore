@interface WeatherPressureFormatter
+ (id)convenienceFormatter;
- (WeatherPressureFormatter)init;
- (float)convertInchesHGPressure:(float)result toUnit:(int)unit;
- (float)convertMBarPressure:(float)result toUnit:(int)unit;
- (id)fallbackStringForPressure:(float)pressure;
- (id)formatStringForPressure:(float)pressure inUnit:(int)unit;
- (id)stringForObjectValue:(id)value;
- (id)stringFromInchesHG:(float)g;
- (id)stringFromMillibars:(float)millibars;
- (id)stringFromPressure:(float)pressure isDataMetric:(BOOL)metric;
- (int)pressureUnit;
- (void)createNumberFormatter;
- (void)dealloc;
- (void)setLocale:(id)locale;
@end

@implementation WeatherPressureFormatter

+ (id)convenienceFormatter
{
  if (convenienceFormatter_onceToken_2 != -1)
  {
    +[WeatherPressureFormatter convenienceFormatter];
  }

  v3 = convenienceFormatter_pressureFormatter;

  return v3;
}

void __48__WeatherPressureFormatter_convenienceFormatter__block_invoke()
{
  if (!convenienceFormatter_pressureFormatter)
  {
    v0 = objc_alloc_init(WeatherPressureFormatter);
    v1 = convenienceFormatter_pressureFormatter;
    convenienceFormatter_pressureFormatter = v0;

    MEMORY[0x2821F96F8](v0, v1);
  }
}

- (WeatherPressureFormatter)init
{
  v7.receiver = self;
  v7.super_class = WeatherPressureFormatter;
  v2 = [(WeatherPressureFormatter *)&v7 init];
  if (v2)
  {
    autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
    locale = v2->_locale;
    v2->_locale = autoupdatingCurrentLocale;

    numberFormatter = [(WeatherPressureFormatter *)v2 createNumberFormatter];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_resetFormatter name:*MEMORY[0x277CBE620] object:0];
  }

  return v2;
}

- (void)dealloc
{
  unum_close();
  v3.receiver = self;
  v3.super_class = WeatherPressureFormatter;
  [(WeatherPressureFormatter *)&v3 dealloc];
}

- (void)setLocale:(id)locale
{
  objc_storeStrong(&self->_locale, locale);

  [(WeatherPressureFormatter *)self resetFormatter];
}

- (id)stringFromPressure:(float)pressure isDataMetric:(BOOL)metric
{
  if (metric)
  {
    [(WeatherPressureFormatter *)self stringFromMillibars:?];
  }

  else
  {
    [(WeatherPressureFormatter *)self stringFromInchesHG:?];
  }
  v4 = ;

  return v4;
}

- (id)stringFromMillibars:(float)millibars
{
  pressureUnit = [(WeatherPressureFormatter *)self pressureUnit];
  *&v6 = millibars;
  [(WeatherPressureFormatter *)self convertMBarPressure:pressureUnit toUnit:v6];
  v7 = [(WeatherPressureFormatter *)self formatStringForPressure:pressureUnit inUnit:?];
  v9 = v7;
  if (v7)
  {
    v10 = v7;
  }

  else
  {
    *&v8 = millibars;
    v10 = [(WeatherPressureFormatter *)self fallbackStringForPressure:v8];
  }

  v11 = v10;

  return v11;
}

- (id)stringFromInchesHG:(float)g
{
  pressureUnit = [(WeatherPressureFormatter *)self pressureUnit];
  *&v6 = g;
  [(WeatherPressureFormatter *)self convertInchesHGPressure:pressureUnit toUnit:v6];
  v7 = [(WeatherPressureFormatter *)self formatStringForPressure:pressureUnit inUnit:?];
  v9 = v7;
  if (v7)
  {
    v10 = v7;
  }

  else
  {
    *&v8 = g;
    [(WeatherPressureFormatter *)self convertInchesHGPressure:2050 toUnit:v8];
    v10 = [(WeatherPressureFormatter *)self fallbackStringForPressure:?];
  }

  v11 = v10;

  return v11;
}

- (id)formatStringForPressure:(float)pressure inUnit:(int)unit
{
  v18 = *MEMORY[0x277D85DE8];
  pErrorCode = U_ZERO_ERROR;
  locale = [(WeatherPressureFormatter *)self locale];
  localeIdentifier = [locale localeIdentifier];

  if (localeIdentifier)
  {
    [localeIdentifier UTF8String];
    unum_clone();
    uameasfmt_open();
    uameasfmt_format();
    pDestLength = 0;
    u_strToUTF8(dest, 100, &pDestLength, src, -1, &pErrorCode);
    uameasfmt_close();
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:dest];
    v7 = v6;
    if (v6 && pErrorCode < U_ILLEGAL_ARGUMENT_ERROR)
    {
      v8 = v6;
    }

    else
    {
      v9 = WALogForCategory(1);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v15 = pErrorCode;
        _os_log_impl(&dword_272ACF000, v9, OS_LOG_TYPE_DEFAULT, "#Formatter Something went wrong - returning nil. Error %i", buf, 8u);
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)fallbackStringForPressure:(float)pressure
{
  v3 = MEMORY[0x277CCACA8];
  pressureCopy = pressure;
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"HECTOPASCAL" value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
  v7 = [v3 localizedStringWithFormat:@"%d %@", pressureCopy, v6];

  return v7;
}

- (void)createNumberFormatter
{
  locale = [(WeatherPressureFormatter *)self locale];
  localeIdentifier = [locale localeIdentifier];

  [localeIdentifier UTF8String];
  numberFormatter = unum_open();
  unum_setAttribute();
  [(WeatherPressureFormatter *)self pressureUnit];
  unum_setAttribute();
  v5 = numberFormatter;

  return v5;
}

- (int)pressureUnit
{
  locale = [(WeatherPressureFormatter *)self locale];

  v4 = 2048;
  if (locale)
  {
    locale2 = [(WeatherPressureFormatter *)self locale];
    v6 = [locale2 objectForKey:*MEMORY[0x277CBE718]];
    bOOLValue = [v6 BOOLValue];

    locale3 = [(WeatherPressureFormatter *)self locale];
    v9 = [locale3 objectForKey:*MEMORY[0x277CBE690]];

    v10 = [&unk_288235640 containsObject:v9];
    if (bOOLValue)
    {
      v11 = 2048;
    }

    else
    {
      v11 = 2049;
    }

    if (v10)
    {
      v4 = 2051;
    }

    else
    {
      v4 = v11;
    }
  }

  return v4;
}

- (float)convertMBarPressure:(float)result toUnit:(int)unit
{
  if (unit == 2051)
  {
    v4 = 1.3332;
  }

  else
  {
    if (unit != 2049)
    {
      return result;
    }

    v4 = 33.864;
  }

  return result / v4;
}

- (float)convertInchesHGPressure:(float)result toUnit:(int)unit
{
  if (unit == 2051)
  {
    v4 = 25.4;
  }

  else
  {
    if (unit != 2048)
    {
      return result;
    }

    v4 = 33.864;
  }

  return result * v4;
}

- (id)stringForObjectValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [valueCopy floatValue];
    v5 = [(WeatherPressureFormatter *)self stringFromMillibars:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end