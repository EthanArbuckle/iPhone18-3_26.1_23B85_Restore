@interface TSUNumberOrDateOrDurationFormatter
- (BOOL)getObjectValue:(id *)a3 forString:(id)a4 errorDescription:(id *)a5;
- (TSUNumberOrDateOrDurationFormatter)init;
- (id)stringForObjectValue:(id)a3;
- (void)dealloc;
@end

@implementation TSUNumberOrDateOrDurationFormatter

- (TSUNumberOrDateOrDurationFormatter)init
{
  v6.receiver = self;
  v6.super_class = TSUNumberOrDateOrDurationFormatter;
  v2 = [(TSUNumberOrDateOrDurationFormatter *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v2->mNumberFormatter = v3;
    [(NSNumberFormatter *)v3 setFormatterBehavior:1040];
    v4 = [MEMORY[0x277CBEAF8] currentLocale];
    -[NSNumberFormatter setDecimalSeparator:](v2->mNumberFormatter, "setDecimalSeparator:", [v4 objectForKey:*MEMORY[0x277CBE6A8]]);
    -[NSNumberFormatter setGroupingSeparator:](v2->mNumberFormatter, "setGroupingSeparator:", [v4 objectForKey:*MEMORY[0x277CBE6B8]]);
    [(NSNumberFormatter *)v2->mNumberFormatter setPositiveFormat:@"#.#########"];
    [(NSNumberFormatter *)v2->mNumberFormatter setZeroSymbol:@"0"];
    [(NSNumberFormatter *)v2->mNumberFormatter setNegativeFormat:@"-#.#########"];
  }

  return v2;
}

- (void)dealloc
{
  self->mNumberFormatter = 0;
  v3.receiver = self;
  v3.super_class = TSUNumberOrDateOrDurationFormatter;
  [(TSUNumberOrDateOrDurationFormatter *)&v3 dealloc];
}

- (id)stringForObjectValue:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mNumberFormatter = self->mNumberFormatter;

    return [(NSNumberFormatter *)mNumberFormatter stringForObjectValue:a3];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = MEMORY[0x26D6AACB0](a3);
      v8 = TSUGetGMTTimeZone();
      GregorianDate = CFAbsoluteTimeGetGregorianDate(v7, v8);
      v10 = TSUDateFormatterCopyFormatStringForDateAndTimeStyles(kCFDateFormatterShortStyle, (2 * ((*&GregorianDate.second & 0x7FFFFFFFFFFFFFFFLL | HIWORD(*&GregorianDate.year)) != 0)));
      v11 = TSUDateFormatterStringFromDateWithFormat(a3, v10);

      return v11;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [a3 timeInterval];
        v13 = v12;
        v14 = TSUDurationFormatterDurationUnitsNecessaryToFullyDisplayDuration(2, 1, v12);
        v15 = TSUDurationFormatterFormatFromDurationUnits(v14, 1, 0);

        return TSUDurationFormatterStringFromTimeIntervalWithFormat(v15, v13);
      }

      else
      {
        return 0;
      }
    }
  }
}

- (BOOL)getObjectValue:(id *)a3 forString:(id)a4 errorDescription:(id *)a5
{
  v8 = TSUCreateDateFromString(a4, 0, 0);
  if (v8)
  {
    if (!a3)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v12 = 0.0;
  if (TSUGetNumberValueAndTypeFromString(a4, 0, &v12, 0, 0, 0))
  {
    if (!a3)
    {
LABEL_8:
      LOBYTE(v9) = 1;
      return v9;
    }

    v8 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
LABEL_7:
    *a3 = v8;
    goto LABEL_8;
  }

  v11 = 0.0;
  v9 = TSUDurationFormatterTimeIntervalFromString(a4, &v11, 0, 0);
  if (v9)
  {
    if (a3)
    {
      *a3 = [TSUDuration durationWithTimeInterval:v11];
    }
  }

  else if (a5)
  {
    *a5 = @"Failed to parse a number, date, or duration!";
  }

  return v9;
}

@end