@interface WeatherPressureFormatter
+ (id)convenienceFormatter;
- (WeatherPressureFormatter)init;
- (float)convertInchesHGPressure:(float)result toUnit:(int)a4;
- (float)convertMBarPressure:(float)result toUnit:(int)a4;
- (id)fallbackStringForPressure:(float)a3;
- (id)formatStringForPressure:(float)a3 inUnit:(int)a4;
- (id)stringForObjectValue:(id)a3;
- (id)stringFromInchesHG:(float)a3;
- (id)stringFromMillibars:(float)a3;
- (id)stringFromPressure:(float)a3 isDataMetric:(BOOL)a4;
- (int)pressureUnit;
- (void)createNumberFormatter;
- (void)dealloc;
- (void)setLocale:(id)a3;
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
    v3 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
    locale = v2->_locale;
    v2->_locale = v3;

    numberFormatter = [(WeatherPressureFormatter *)v2 createNumberFormatter];
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:v2 selector:sel_resetFormatter name:*MEMORY[0x277CBE620] object:0];
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

- (void)setLocale:(id)a3
{
  objc_storeStrong(&self->_locale, a3);

  [(WeatherPressureFormatter *)self resetFormatter];
}

- (id)stringFromPressure:(float)a3 isDataMetric:(BOOL)a4
{
  if (a4)
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

- (id)stringFromMillibars:(float)a3
{
  v5 = [(WeatherPressureFormatter *)self pressureUnit];
  *&v6 = a3;
  [(WeatherPressureFormatter *)self convertMBarPressure:v5 toUnit:v6];
  v7 = [(WeatherPressureFormatter *)self formatStringForPressure:v5 inUnit:?];
  v9 = v7;
  if (v7)
  {
    v10 = v7;
  }

  else
  {
    *&v8 = a3;
    v10 = [(WeatherPressureFormatter *)self fallbackStringForPressure:v8];
  }

  v11 = v10;

  return v11;
}

- (id)stringFromInchesHG:(float)a3
{
  v5 = [(WeatherPressureFormatter *)self pressureUnit];
  *&v6 = a3;
  [(WeatherPressureFormatter *)self convertInchesHGPressure:v5 toUnit:v6];
  v7 = [(WeatherPressureFormatter *)self formatStringForPressure:v5 inUnit:?];
  v9 = v7;
  if (v7)
  {
    v10 = v7;
  }

  else
  {
    *&v8 = a3;
    [(WeatherPressureFormatter *)self convertInchesHGPressure:2050 toUnit:v8];
    v10 = [(WeatherPressureFormatter *)self fallbackStringForPressure:?];
  }

  v11 = v10;

  return v11;
}

- (id)formatStringForPressure:(float)a3 inUnit:(int)a4
{
  v18 = *MEMORY[0x277D85DE8];
  pErrorCode = U_ZERO_ERROR;
  v4 = [(WeatherPressureFormatter *)self locale];
  v5 = [v4 localeIdentifier];

  if (v5)
  {
    [v5 UTF8String];
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

- (id)fallbackStringForPressure:(float)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"HECTOPASCAL" value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
  v7 = [v3 localizedStringWithFormat:@"%d %@", v4, v6];

  return v7;
}

- (void)createNumberFormatter
{
  v3 = [(WeatherPressureFormatter *)self locale];
  v4 = [v3 localeIdentifier];

  [v4 UTF8String];
  numberFormatter = unum_open();
  unum_setAttribute();
  [(WeatherPressureFormatter *)self pressureUnit];
  unum_setAttribute();
  v5 = numberFormatter;

  return v5;
}

- (int)pressureUnit
{
  v3 = [(WeatherPressureFormatter *)self locale];

  v4 = 2048;
  if (v3)
  {
    v5 = [(WeatherPressureFormatter *)self locale];
    v6 = [v5 objectForKey:*MEMORY[0x277CBE718]];
    v7 = [v6 BOOLValue];

    v8 = [(WeatherPressureFormatter *)self locale];
    v9 = [v8 objectForKey:*MEMORY[0x277CBE690]];

    v10 = [&unk_288235640 containsObject:v9];
    if (v7)
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

- (float)convertMBarPressure:(float)result toUnit:(int)a4
{
  if (a4 == 2051)
  {
    v4 = 1.3332;
  }

  else
  {
    if (a4 != 2049)
    {
      return result;
    }

    v4 = 33.864;
  }

  return result / v4;
}

- (float)convertInchesHGPressure:(float)result toUnit:(int)a4
{
  if (a4 == 2051)
  {
    v4 = 25.4;
  }

  else
  {
    if (a4 != 2048)
    {
      return result;
    }

    v4 = 33.864;
  }

  return result * v4;
}

- (id)stringForObjectValue:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [v4 floatValue];
    v5 = [(WeatherPressureFormatter *)self stringFromMillibars:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end