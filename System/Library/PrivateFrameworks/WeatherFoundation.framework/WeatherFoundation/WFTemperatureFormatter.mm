@interface WFTemperatureFormatter
+ (id)temperatureFormatterWithInputUnit:(int)unit outputUnit:(int)outputUnit;
- (NSString)fallbackTemperatureString;
- (UAMeasureFormat)measureFormatter;
- (WFTemperatureFormatter)init;
- (id)_formatTemperatureValue:(id)value toUnit:(int)unit;
- (id)copyWithZone:(_NSZone *)zone;
- (id)formattedStringFromTemperature:(id)temperature;
- (id)formattedTemperatureFromString:(id)string;
- (id)stringForObjectValue:(id)value;
- (void)dealloc;
- (void)setLocale:(id)locale;
- (void)setMaximumFractionDigits:(unint64_t)digits;
- (void)setMeasureFormatter:(UAMeasureFormat *)formatter;
- (void)setRoundingMode:(unint64_t)mode;
@end

@implementation WFTemperatureFormatter

+ (id)temperatureFormatterWithInputUnit:(int)unit outputUnit:(int)outputUnit
{
  v4 = 0;
  if (unit)
  {
    v5 = *&outputUnit;
    if (outputUnit)
    {
      v6 = *&unit;
      v4 = objc_alloc_init(WFTemperatureFormatter);
      [(WFTemperatureFormatter *)v4 setInputUnit:v6];
      [(WFTemperatureFormatter *)v4 setOutputUnit:v5];
    }
  }

  return v4;
}

- (WFTemperatureFormatter)init
{
  v6.receiver = self;
  v6.super_class = WFTemperatureFormatter;
  v2 = [(WFTemperatureFormatter *)&v6 init];
  if (v2)
  {
    autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
    [(WFTemperatureFormatter *)v2 setLocale:autoupdatingCurrentLocale];

    [(WFTemperatureFormatter *)v2 setInputUnit:2];
    [(WFTemperatureFormatter *)v2 setOutputUnit:2];
    [(WFTemperatureFormatter *)v2 setFallbackTemperatureString:@"--"];
    [(WFTemperatureFormatter *)v2 setMaximumFractionDigits:0];
    [(WFTemperatureFormatter *)v2 setRoundingMode:0];
    [(WFTemperatureFormatter *)v2 setSymbolType:1];
    v2->_includeDegreeSymbol = 1;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__localeDidChangeNotification_ name:*MEMORY[0x277CBE620] object:0];
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v4 = objc_opt_new();
  locale = [(WFTemperatureFormatter *)self locale];
  [v4 setLocale:locale];

  [v4 setInputUnit:{-[WFTemperatureFormatter inputUnit](self, "inputUnit")}];
  [v4 setOutputUnit:{-[WFTemperatureFormatter outputUnit](self, "outputUnit")}];
  fallbackTemperatureString = [(WFTemperatureFormatter *)self fallbackTemperatureString];
  [v4 setFallbackTemperatureString:fallbackTemperatureString];

  [v4 setMaximumFractionDigits:{-[WFTemperatureFormatter maximumFractionDigits](self, "maximumFractionDigits")}];
  [v4 setRoundingMode:{-[WFTemperatureFormatter roundingMode](self, "roundingMode")}];
  [v4 setSymbolType:{-[WFTemperatureFormatter symbolType](self, "symbolType")}];
  return v4;
}

- (void)dealloc
{
  [(WFTemperatureFormatter *)self setMeasureFormatter:0];
  v3.receiver = self;
  v3.super_class = WFTemperatureFormatter;
  [(WFTemperatureFormatter *)&v3 dealloc];
}

- (void)setLocale:(id)locale
{
  localeCopy = locale;
  if (([localeCopy isEqual:self->_locale] & 1) == 0)
  {
    objc_storeStrong(&self->_locale, locale);
    [(WFTemperatureFormatter *)self setMeasureFormatter:0];
  }
}

- (NSString)fallbackTemperatureString
{
  v3 = self->_fallbackTemperatureString;
  if (self->_includeDegreeSymbol && [(WFTemperatureFormatter *)self symbolType])
  {
    if ([(WFTemperatureFormatter *)self symbolType]!= 2)
    {
      goto LABEL_7;
    }

    v4 = [(NSString *)v3 stringWithTemperatureUnit:[(WFTemperatureFormatter *)self outputUnit]];
  }

  else
  {
    v4 = [(NSString *)v3 stringByReplacingOccurrencesOfString:@"°" withString:&stru_28823D638];
  }

  v5 = v4;

  v3 = v5;
LABEL_7:

  return v3;
}

- (void)setRoundingMode:(unint64_t)mode
{
  if (self->_roundingMode != mode)
  {
    self->_roundingMode = mode;
    [(WFTemperatureFormatter *)self setMeasureFormatter:0];
  }
}

- (void)setMaximumFractionDigits:(unint64_t)digits
{
  if (self->_maximumFractionDigits != digits)
  {
    self->_maximumFractionDigits = digits;
    [(WFTemperatureFormatter *)self setMeasureFormatter:0];
  }
}

- (UAMeasureFormat)measureFormatter
{
  result = self->_measureFormatter;
  if (!result)
  {
    locale = [(WFTemperatureFormatter *)self locale];
    localeIdentifier = [locale localeIdentifier];
    [localeIdentifier cStringUsingEncoding:4];

    unum_open();
    [(WFTemperatureFormatter *)self maximumFractionDigits];
    unum_setAttribute();
    [(WFTemperatureFormatter *)self roundingMode];
    unum_setAttribute();
    result = uameasfmt_open();
    self->_measureFormatter = result;
  }

  return result;
}

- (void)setMeasureFormatter:(UAMeasureFormat *)formatter
{
  measureFormatter = self->_measureFormatter;
  if (measureFormatter != formatter)
  {
    if (!formatter)
    {
      if (measureFormatter)
      {
        uameasfmt_close();
      }

      formatter = 0;
    }

    self->_measureFormatter = formatter;
  }
}

- (id)stringForObjectValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(WFTemperatureFormatter *)self formattedTemperatureFromString:valueCopy];
LABEL_3:
    v6 = v5;
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(WFTemperatureFormatter *)self formattedStringFromTemperature:valueCopy];
    }

    else
    {
      [(WFTemperatureFormatter *)self fallbackTemperatureString];
    }
    v5 = ;
    goto LABEL_3;
  }

  stringValue = [valueCopy stringValue];
  v6 = [(WFTemperatureFormatter *)self formattedTemperatureFromString:stringValue];

LABEL_6:

  return v6;
}

- (id)formattedStringFromTemperature:(id)temperature
{
  temperatureCopy = temperature;
  if (temperatureCopy)
  {
    [temperatureCopy temperatureForUnit:{-[WFTemperatureFormatter outputUnit](self, "outputUnit")}];
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    fallbackTemperatureString = [(WFTemperatureFormatter *)self _formatTemperatureValue:v5 toUnit:[(WFTemperatureFormatter *)self outputUnit]];
  }

  else
  {
    fallbackTemperatureString = [(WFTemperatureFormatter *)self fallbackTemperatureString];
  }

  return fallbackTemperatureString;
}

- (id)formattedTemperatureFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy length] && !objc_msgSend(stringCopy, "isEqualToString:", @"--"))
  {
    [stringCopy doubleValue];
    v7 = v6;
    inputUnit = [(WFTemperatureFormatter *)self inputUnit];
    outputUnit = [(WFTemperatureFormatter *)self outputUnit];
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:{WFConvertTemperature(inputUnit, outputUnit, v7)}];
    fallbackTemperatureString = [(WFTemperatureFormatter *)self _formatTemperatureValue:v10 toUnit:outputUnit];
  }

  else
  {
    fallbackTemperatureString = [(WFTemperatureFormatter *)self fallbackTemperatureString];
  }

  return fallbackTemperatureString;
}

- (id)_formatTemperatureValue:(id)value toUnit:(int)unit
{
  v17 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  if (![(WFTemperatureFormatter *)self measureFormatter])
  {
    fallbackTemperatureString = [(WFTemperatureFormatter *)self fallbackTemperatureString];
    goto LABEL_14;
  }

  pErrorCode = U_ZERO_ERROR;
  [valueCopy doubleValue];
  uameasfmt_format();
  u_strToUTF8(dest, 100, 0, src, -1, &pErrorCode);
  v6 = [MEMORY[0x277CCACA8] stringWithCString:dest encoding:4];
  v7 = v6;
  if (v6)
  {
    fallbackTemperatureString2 = v6;
  }

  else
  {
    fallbackTemperatureString2 = [(WFTemperatureFormatter *)self fallbackTemperatureString];
  }

  fallbackTemperatureString = fallbackTemperatureString2;

  if (self->_includeDegreeSymbol && [(WFTemperatureFormatter *)self symbolType])
  {
    if ([(WFTemperatureFormatter *)self symbolType]!= 2)
    {
      goto LABEL_12;
    }

    v10 = [fallbackTemperatureString stringWithTemperatureUnit:{-[WFTemperatureFormatter outputUnit](self, "outputUnit")}];
  }

  else
  {
    v10 = [fallbackTemperatureString stringByReplacingOccurrencesOfString:@"°" withString:&stru_28823D638];
  }

  v11 = v10;

  fallbackTemperatureString = v11;
LABEL_12:
  if ([fallbackTemperatureString hasPrefix:@"-0"])
  {
    v12 = [fallbackTemperatureString stringByReplacingCharactersInRange:0 withString:{1, &stru_28823D638}];

    fallbackTemperatureString = v12;
  }

LABEL_14:

  return fallbackTemperatureString;
}

@end