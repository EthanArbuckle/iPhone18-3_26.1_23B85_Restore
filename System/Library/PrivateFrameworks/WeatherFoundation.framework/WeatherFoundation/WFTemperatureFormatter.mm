@interface WFTemperatureFormatter
+ (id)temperatureFormatterWithInputUnit:(int)a3 outputUnit:(int)a4;
- (NSString)fallbackTemperatureString;
- (UAMeasureFormat)measureFormatter;
- (WFTemperatureFormatter)init;
- (id)_formatTemperatureValue:(id)a3 toUnit:(int)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)formattedStringFromTemperature:(id)a3;
- (id)formattedTemperatureFromString:(id)a3;
- (id)stringForObjectValue:(id)a3;
- (void)dealloc;
- (void)setLocale:(id)a3;
- (void)setMaximumFractionDigits:(unint64_t)a3;
- (void)setMeasureFormatter:(UAMeasureFormat *)a3;
- (void)setRoundingMode:(unint64_t)a3;
@end

@implementation WFTemperatureFormatter

+ (id)temperatureFormatterWithInputUnit:(int)a3 outputUnit:(int)a4
{
  v4 = 0;
  if (a3)
  {
    v5 = *&a4;
    if (a4)
    {
      v6 = *&a3;
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
    v3 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
    [(WFTemperatureFormatter *)v2 setLocale:v3];

    [(WFTemperatureFormatter *)v2 setInputUnit:2];
    [(WFTemperatureFormatter *)v2 setOutputUnit:2];
    [(WFTemperatureFormatter *)v2 setFallbackTemperatureString:@"--"];
    [(WFTemperatureFormatter *)v2 setMaximumFractionDigits:0];
    [(WFTemperatureFormatter *)v2 setRoundingMode:0];
    [(WFTemperatureFormatter *)v2 setSymbolType:1];
    v2->_includeDegreeSymbol = 1;
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:v2 selector:sel__localeDidChangeNotification_ name:*MEMORY[0x277CBE620] object:0];
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v4 = objc_opt_new();
  v5 = [(WFTemperatureFormatter *)self locale];
  [v4 setLocale:v5];

  [v4 setInputUnit:{-[WFTemperatureFormatter inputUnit](self, "inputUnit")}];
  [v4 setOutputUnit:{-[WFTemperatureFormatter outputUnit](self, "outputUnit")}];
  v6 = [(WFTemperatureFormatter *)self fallbackTemperatureString];
  [v4 setFallbackTemperatureString:v6];

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

- (void)setLocale:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_locale] & 1) == 0)
  {
    objc_storeStrong(&self->_locale, a3);
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

- (void)setRoundingMode:(unint64_t)a3
{
  if (self->_roundingMode != a3)
  {
    self->_roundingMode = a3;
    [(WFTemperatureFormatter *)self setMeasureFormatter:0];
  }
}

- (void)setMaximumFractionDigits:(unint64_t)a3
{
  if (self->_maximumFractionDigits != a3)
  {
    self->_maximumFractionDigits = a3;
    [(WFTemperatureFormatter *)self setMeasureFormatter:0];
  }
}

- (UAMeasureFormat)measureFormatter
{
  result = self->_measureFormatter;
  if (!result)
  {
    v4 = [(WFTemperatureFormatter *)self locale];
    v5 = [v4 localeIdentifier];
    [v5 cStringUsingEncoding:4];

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

- (void)setMeasureFormatter:(UAMeasureFormat *)a3
{
  measureFormatter = self->_measureFormatter;
  if (measureFormatter != a3)
  {
    if (!a3)
    {
      if (measureFormatter)
      {
        uameasfmt_close();
      }

      a3 = 0;
    }

    self->_measureFormatter = a3;
  }
}

- (id)stringForObjectValue:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(WFTemperatureFormatter *)self formattedTemperatureFromString:v4];
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
      [(WFTemperatureFormatter *)self formattedStringFromTemperature:v4];
    }

    else
    {
      [(WFTemperatureFormatter *)self fallbackTemperatureString];
    }
    v5 = ;
    goto LABEL_3;
  }

  v7 = [v4 stringValue];
  v6 = [(WFTemperatureFormatter *)self formattedTemperatureFromString:v7];

LABEL_6:

  return v6;
}

- (id)formattedStringFromTemperature:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [v4 temperatureForUnit:{-[WFTemperatureFormatter outputUnit](self, "outputUnit")}];
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    v6 = [(WFTemperatureFormatter *)self _formatTemperatureValue:v5 toUnit:[(WFTemperatureFormatter *)self outputUnit]];
  }

  else
  {
    v6 = [(WFTemperatureFormatter *)self fallbackTemperatureString];
  }

  return v6;
}

- (id)formattedTemperatureFromString:(id)a3
{
  v4 = a3;
  if ([v4 length] && !objc_msgSend(v4, "isEqualToString:", @"--"))
  {
    [v4 doubleValue];
    v7 = v6;
    v8 = [(WFTemperatureFormatter *)self inputUnit];
    v9 = [(WFTemperatureFormatter *)self outputUnit];
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:{WFConvertTemperature(v8, v9, v7)}];
    v5 = [(WFTemperatureFormatter *)self _formatTemperatureValue:v10 toUnit:v9];
  }

  else
  {
    v5 = [(WFTemperatureFormatter *)self fallbackTemperatureString];
  }

  return v5;
}

- (id)_formatTemperatureValue:(id)a3 toUnit:(int)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (![(WFTemperatureFormatter *)self measureFormatter])
  {
    v9 = [(WFTemperatureFormatter *)self fallbackTemperatureString];
    goto LABEL_14;
  }

  pErrorCode = U_ZERO_ERROR;
  [v5 doubleValue];
  uameasfmt_format();
  u_strToUTF8(dest, 100, 0, src, -1, &pErrorCode);
  v6 = [MEMORY[0x277CCACA8] stringWithCString:dest encoding:4];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [(WFTemperatureFormatter *)self fallbackTemperatureString];
  }

  v9 = v8;

  if (self->_includeDegreeSymbol && [(WFTemperatureFormatter *)self symbolType])
  {
    if ([(WFTemperatureFormatter *)self symbolType]!= 2)
    {
      goto LABEL_12;
    }

    v10 = [v9 stringWithTemperatureUnit:{-[WFTemperatureFormatter outputUnit](self, "outputUnit")}];
  }

  else
  {
    v10 = [v9 stringByReplacingOccurrencesOfString:@"°" withString:&stru_28823D638];
  }

  v11 = v10;

  v9 = v11;
LABEL_12:
  if ([v9 hasPrefix:@"-0"])
  {
    v12 = [v9 stringByReplacingCharactersInRange:0 withString:{1, &stru_28823D638}];

    v9 = v12;
  }

LABEL_14:

  return v9;
}

@end