@interface TSKRulerUnits
+ (id)formatterForRulerUnits:(int)units decimalPlaces:(int)places trailingZeros:(BOOL)zeros lenient:(BOOL)lenient;
+ (id)instance;
- (TSKRulerUnits)init;
- (double)convertPointsToRulerUnits:(double)units;
- (double)convertRulerUnitsToPoints:(double)points;
- (id)compatibleRulerUnits;
- (id)formatter:(BOOL)formatter lenient:(BOOL)lenient;
- (id)localizedCompatibleRulerUnits;
- (void)dealloc;
- (void)setCenterRulerOrigin:(BOOL)origin;
- (void)setRulerUnits:(int)units;
- (void)setShowRulerAsPercentage:(BOOL)percentage;
@end

@implementation TSKRulerUnits

+ (id)instance
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSKRulerUnits instance]"];
    [currentHandler handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKRulerUnits.m"), 68, @"Trying to acquire TSKRulerUnits singleton from a secondary thread - this class is not thread safe."}];
  }

  result = instance_instance;
  if (!instance_instance)
  {
    result = objc_alloc_init(TSKRulerUnits);
    instance_instance = result;
  }

  return result;
}

- (TSKRulerUnits)init
{
  v5.receiver = self;
  v5.super_class = TSKRulerUnits;
  v2 = [(TSKRulerUnits *)&v5 init];
  if (v2)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2->_rulerUnits = [standardUserDefaults integerForKey:TSKDefaultsRulerUnits];
    v2->_showRulerAsPercentage = [standardUserDefaults BOOLForKey:TSKDefaultsShowRulerAsPercentage];
    v2->_centerRulerOrigin = [standardUserDefaults BOOLForKey:TSKDefaultsCenterRulerOrigin];
    v2->_preferredPixelUnit = 2;
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSKRulerUnits;
  [(TSKRulerUnits *)&v3 dealloc];
}

- (void)setRulerUnits:(int)units
{
  if (self->_rulerUnits != units)
  {
    self->_rulerUnits = units;

    self->_formatter = 0;
    self->_lenientFormatter = 0;

    self->_highPrecisionFormatter = 0;
    self->_lenientHighPrecisionFormatter = 0;
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults setInteger:self->_rulerUnits forKey:TSKDefaultsRulerUnits];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v7 = TSKRulerUnitsDidChangeNotification;

    [defaultCenter postNotificationName:v7 object:self];
  }
}

- (void)setShowRulerAsPercentage:(BOOL)percentage
{
  if (self->_showRulerAsPercentage != percentage)
  {
    self->_showRulerAsPercentage = percentage;
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults setBool:self->_showRulerAsPercentage forKey:TSKDefaultsShowRulerAsPercentage];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v7 = TSKShowRulerAsPercentageDidChangeNotification;

    [defaultCenter postNotificationName:v7 object:self];
  }
}

- (void)setCenterRulerOrigin:(BOOL)origin
{
  if (self->_centerRulerOrigin != origin)
  {
    self->_centerRulerOrigin = origin;
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults setBool:self->_centerRulerOrigin forKey:TSKDefaultsCenterRulerOrigin];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v7 = TSKCenterRulerOriginDidChangeNotification;

    [defaultCenter postNotificationName:v7 object:self];
  }
}

- (double)convertRulerUnitsToPoints:(double)points
{
  rulerUnits = self->_rulerUnits;
  v4 = 1.0;
  if (rulerUnits <= 3)
  {
    v4 = dbl_26CA63D10[rulerUnits];
  }

  return v4 * points;
}

- (double)convertPointsToRulerUnits:(double)units
{
  rulerUnits = self->_rulerUnits;
  v4 = 1.0;
  if (rulerUnits <= 3)
  {
    v4 = dbl_26CA63D10[rulerUnits];
  }

  return units / v4;
}

- (id)formatter:(BOOL)formatter lenient:(BOOL)lenient
{
  lenientCopy = lenient;
  if (!formatter)
  {
    if (lenient)
    {
LABEL_6:
      v7 = 0;
      v8 = 32;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  rulerUnits = self->_rulerUnits;
  if (lenient)
  {
    if (!rulerUnits)
    {
      v7 = 1;
      v8 = 48;
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  if (rulerUnits)
  {
LABEL_8:
    v7 = 0;
    v8 = 24;
    goto LABEL_9;
  }

  v7 = 1;
  v8 = 40;
LABEL_9:
  result = *(&self->super.isa + v8);
  if (!result)
  {
    v10 = self->_rulerUnits;
    if (v7)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10)
    {
      v11 = 0;
    }

    if (v10 == 1)
    {
      v12 = 2;
    }

    else
    {
      v12 = v11;
    }

    result = [objc_opt_class() formatterForRulerUnits:self->_rulerUnits decimalPlaces:v12 trailingZeros:0 lenient:lenient];
    v13 = 32;
    if (v7)
    {
      v13 = 48;
    }

    v14 = 24;
    if (v7)
    {
      v14 = 40;
    }

    if (!lenientCopy)
    {
      v13 = v14;
    }

    *(&self->super.isa + v13) = result;
  }

  return result;
}

- (id)compatibleRulerUnits
{
  rulerUnits = self->_rulerUnits;
  if (rulerUnits > 4)
  {
    return 0;
  }

  else
  {
    return off_279D478C0[rulerUnits];
  }
}

- (id)localizedCompatibleRulerUnits
{
  rulerUnits = self->_rulerUnits;
  if (rulerUnits > 4)
  {
    return 0;
  }

  v4 = off_279D478C0[rulerUnits];
  v5 = TSKBundle();

  return [v5 localizedStringForKey:v4 value:&stru_287D36338 table:@"TSKit"];
}

+ (id)formatterForRulerUnits:(int)units decimalPlaces:(int)places trailingZeros:(BOOL)zeros lenient:(BOOL)lenient
{
  if (units == 3)
  {
    v6 = -[TSKPicaFormatter initWithPicaSeparator:]([TSKPicaFormatter alloc], "initWithPicaSeparator:", [TSKBundle() localizedStringForKey:@"p" value:&stru_287D36338 table:@"TSKit"]);
    goto LABEL_22;
  }

  lenientCopy = lenient;
  if (places < 1)
  {
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:@"0"];
  }

  else if (zeros)
  {
    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%%.%df", *&places];
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v10, 0];
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"0."];
    v12 = places + 1;
    do
    {
      [v11 appendString:@"#"];
      --v12;
    }

    while (v12 > 1);
  }

  if (units <= 1)
  {
    if (units)
    {
      if (units != 1)
      {
        goto LABEL_25;
      }

      v14 = [TSKBundle() localizedStringForKey:@"0 cm" value:&stru_287D36338 table:@"TSKit"];
      v15 = TSKBundle();
      v16 = @"%@ cm";
    }

    else
    {
      v14 = [TSKBundle() localizedStringForKey:@"0 in" value:&stru_287D36338 table:@"TSKit"];
      v15 = TSKBundle();
      v16 = @"%@ in";
    }

LABEL_20:
    v13 = [v15 localizedStringForKey:v16 value:&stru_287D36338 table:@"TSKit"];
    goto LABEL_21;
  }

  if (units == 2)
  {
    v14 = [TSKBundle() localizedStringForKey:@"0 pt" value:&stru_287D36338 table:@"TSKit"];
    v15 = TSKBundle();
    v16 = @"%@ pt";
    goto LABEL_20;
  }

  if (units == 4)
  {
    v14 = [TSKBundle() localizedStringForKey:@"0 px" value:&stru_287D36338 table:@"TSKit"];
    v15 = TSKBundle();
    v16 = @"%@ px";
    goto LABEL_20;
  }

  if (units != 5)
  {
LABEL_25:
    v14 = &stru_287D36338;
    v13 = &stru_287D36338;
    goto LABEL_21;
  }

  v13 = @"%@";
  v14 = @"0";
LABEL_21:
  v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v13, v11];
  v6 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [(TSKPicaFormatter *)v6 setPositiveFormat:v17];
  -[TSKPicaFormatter setNegativeFormat:](v6, "setNegativeFormat:", [@"-" stringByAppendingString:v17]);
  [(TSKPicaFormatter *)v6 setZeroSymbol:v14];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  -[TSKPicaFormatter setDecimalSeparator:](v6, "setDecimalSeparator:", [currentLocale objectForKey:*MEMORY[0x277CBE6A8]]);
  [(TSKPicaFormatter *)v6 setLenient:lenientCopy];

LABEL_22:

  return v6;
}

@end