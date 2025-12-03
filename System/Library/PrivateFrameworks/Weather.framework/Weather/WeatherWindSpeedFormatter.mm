@interface WeatherWindSpeedFormatter
+ (id)convenienceFormatter;
- (WeatherWindSpeedFormatter)init;
- (double)speedByConvertingToUserUnit:(double)unit;
- (id)attributedFormattedStringForSpeed:(float)speed direction:(float)direction;
- (id)fallbackStringForWindSpeed:(float)speed;
- (id)fallbackUnitString;
- (id)stringForObjectValue:(id)value;
- (id)stringForWindDirection:(float)direction shortDescription:(BOOL)description;
- (id)stringForWindSpeed:(float)speed;
- (int)windSpeedUnit;
@end

@implementation WeatherWindSpeedFormatter

+ (id)convenienceFormatter
{
  if (convenienceFormatter_onceToken != -1)
  {
    +[WeatherWindSpeedFormatter convenienceFormatter];
  }

  v3 = convenienceFormatter_convenienceFormatter;

  return v3;
}

uint64_t __49__WeatherWindSpeedFormatter_convenienceFormatter__block_invoke()
{
  v0 = objc_alloc_init(WeatherWindSpeedFormatter);
  v1 = convenienceFormatter_convenienceFormatter;
  convenienceFormatter_convenienceFormatter = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (WeatherWindSpeedFormatter)init
{
  v7.receiver = self;
  v7.super_class = WeatherWindSpeedFormatter;
  v2 = [(WeatherWindSpeedFormatter *)&v7 init];
  if (v2)
  {
    autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
    locale = v2->_locale;
    v2->_locale = autoupdatingCurrentLocale;

    v5 = v2;
  }

  return v2;
}

- (id)stringForObjectValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [valueCopy floatValue];
    v5 = [WeatherWindSpeedFormatter formattedStringForSpeed:"formattedStringForSpeed:direction:" direction:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)attributedFormattedStringForSpeed:(float)speed direction:(float)direction
{
  directionSubstringAttributes = [(WeatherWindSpeedFormatter *)self directionSubstringAttributes];

  if (directionSubstringAttributes)
  {
    *&v8 = speed;
    *&v9 = direction;
    v10 = [(WeatherWindSpeedFormatter *)self templateStringForSpeed:v8 direction:v9];
    *&v11 = speed;
    *&v12 = direction;
    v13 = [(WeatherWindSpeedFormatter *)self formattedStringForSpeed:v11 direction:v12];
    *&v14 = direction;
    v15 = [(WeatherWindSpeedFormatter *)self stringForWindDirection:1 shortDescription:v14];
    v16 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v13];
    v17 = [v10 rangeOfString:@"%@"];
    if (v17 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = v17;
      v19 = [v15 length];
      directionSubstringAttributes2 = [(WeatherWindSpeedFormatter *)self directionSubstringAttributes];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __73__WeatherWindSpeedFormatter_attributedFormattedStringForSpeed_direction___block_invoke;
      v26[3] = &unk_279E67DB8;
      v27 = v16;
      v28 = v18;
      v29 = v19;
      [directionSubstringAttributes2 enumerateKeysAndObjectsUsingBlock:v26];
    }
  }

  else
  {
    v21 = objc_alloc(MEMORY[0x277CCA898]);
    *&v22 = speed;
    *&v23 = direction;
    v24 = [(WeatherWindSpeedFormatter *)self formattedStringForSpeed:v22 direction:v23];
    v16 = [v21 initWithString:v24];
  }

  return v16;
}

- (id)stringForWindSpeed:(float)speed
{
  v19 = *MEMORY[0x277D85DE8];
  pErrorCode = U_ZERO_ERROR;
  locale = [(WeatherWindSpeedFormatter *)self locale];
  localeIdentifier = [locale localeIdentifier];

  if (localeIdentifier)
  {
    [localeIdentifier cStringUsingEncoding:4];
    uameasfmt_open();
    [(WeatherWindSpeedFormatter *)self windSpeedUnit];
    uameasfmt_format();
    pDestLength = 0;
    u_strToUTF8(dest, 100, &pDestLength, src, -1, &pErrorCode);
    uameasfmt_close();
    v8 = [MEMORY[0x277CCACA8] stringWithCString:dest encoding:4];
    v10 = v8;
    if (v8)
    {
      v11 = v8;
    }

    else
    {
      *&v9 = speed;
      v11 = [(WeatherWindSpeedFormatter *)self fallbackStringForWindSpeed:v9];
    }

    v12 = v11;
  }

  else
  {
    *&v7 = speed;
    v12 = [(WeatherWindSpeedFormatter *)self fallbackStringForWindSpeed:v7];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)fallbackStringForWindSpeed:(float)speed
{
  v3 = MEMORY[0x277CCACA8];
  speedCopy = speed;
  fallbackUnitString = [(WeatherWindSpeedFormatter *)self fallbackUnitString];
  v6 = [v3 stringWithFormat:@"%.0f %@", *&speedCopy, fallbackUnitString];

  return v6;
}

- (id)fallbackUnitString
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"km/h" value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];

  return v3;
}

- (id)stringForWindDirection:(float)direction shortDescription:(BOOL)description
{
  if (direction < 0.0 || direction == 1.1755e-38)
  {
    v9 = 0;
  }

  else
  {
    descriptionCopy = description;
    v8 = CardinalDirectionFromAngle(direction);
    v9 = CardinalDirectionStringForIndex(v8, descriptionCopy);
  }

  return v9;
}

- (int)windSpeedUnit
{
  locale = [(WeatherWindSpeedFormatter *)self locale];

  if (!locale)
  {
    return 2305;
  }

  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"CN", @"JP", @"KR", @"RU", @"SE", @"TW", @"NO", @"FI", @"DK", 0}];
  locale2 = [(WeatherWindSpeedFormatter *)self locale];
  v6 = [locale2 objectForKey:*MEMORY[0x277CBE690]];

  locale3 = [(WeatherWindSpeedFormatter *)self locale];
  v8 = [locale3 objectForKey:*MEMORY[0x277CBE718]];
  if ([v8 BOOLValue])
  {
    locale4 = [(WeatherWindSpeedFormatter *)self locale];
    localeIdentifier = [locale4 localeIdentifier];
    if ([localeIdentifier isEqualToString:@"en_GB"])
    {
      v11 = 2306;
    }

    else
    {
      v11 = 2305;
    }
  }

  else
  {
    v11 = 2306;
  }

  if (v6 && ([v4 containsObject:v6] & 1) != 0)
  {
    v11 = 2304;
  }

  return v11;
}

- (double)speedByConvertingToUserUnit:(double)unit
{
  windSpeedUnit = [(WeatherWindSpeedFormatter *)self windSpeedUnit];
  if (windSpeedUnit != 2305)
  {
    if (windSpeedUnit == 2304)
    {
      v5 = 0.278;
    }

    else
    {
      v5 = 0.621;
    }

    unit = unit * v5;
  }

  unitCopy = unit;
  return roundf(unitCopy);
}

@end