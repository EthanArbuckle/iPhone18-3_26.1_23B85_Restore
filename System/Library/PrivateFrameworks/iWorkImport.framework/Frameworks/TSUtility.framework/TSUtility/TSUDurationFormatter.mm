@interface TSUDurationFormatter
- (BOOL)getObjectValue:(id *)a3 forString:(id)a4 errorDescription:(id *)a5;
- (TSUDurationFormatter)init;
- (TSUDurationFormatter)initWithCoder:(id)a3;
- (TSUDurationFormatter)initWithLocale:(id)a3;
- (id)stringForObjectValue:(id)a3;
- (void)dealloc;
- (void)p_commonInit;
@end

@implementation TSUDurationFormatter

- (TSUDurationFormatter)initWithLocale:(id)a3
{
  v6.receiver = self;
  v6.super_class = TSUDurationFormatter;
  v4 = [(TSUDurationFormatter *)&v6 init];
  if (v4)
  {
    v4->mLocale = a3;
    [(TSUDurationFormatter *)v4 p_commonInit];
  }

  return v4;
}

- (TSUDurationFormatter)init
{
  v5.receiver = self;
  v5.super_class = TSUDurationFormatter;
  v2 = [(TSUDurationFormatter *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TSUDurationFormatter *)v2 p_commonInit];
  }

  return v3;
}

- (TSUDurationFormatter)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = TSUDurationFormatter;
  v3 = [(TSUDurationFormatter *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(TSUDurationFormatter *)v3 p_commonInit];
  }

  return v4;
}

- (void)p_commonInit
{
  self->mFormat = [@"hh:mm:ss" copy];
  self->mCompactStyleStartUnit = 0;
  if (!self->mLocale)
  {
    self->mLocale = +[TSULocale currentLocale];
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSUDurationFormatter;
  [(TSUDurationFormatter *)&v3 dealloc];
}

- (id)stringForObjectValue:(id)a3
{
  if (!a3 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return &stru_28862C2A0;
  }

  [a3 doubleValue];
  v6 = v5;
  v7 = [(TSUDurationFormatter *)self format];
  v8 = [(TSUDurationFormatter *)self locale];

  return TSUDurationFormatterStringFromTimeIntervalWithFormatAndRounding(v7, 1, v8, v6);
}

- (BOOL)getObjectValue:(id *)a3 forString:(id)a4 errorDescription:(id *)a5
{
  v9 = NAN;
  started = TSUDurationFormatterTimeIntervalFromStringWithCompactStyleStartUnit(a4, &v9, 0, 0, [(TSUDurationFormatter *)self compactStyleStartUnit], [(TSUDurationFormatter *)self locale]);
  if (started)
  {
    *a3 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
  }

  else if (a5)
  {
    *a5 = [SFUMainBundle() localizedStringForKey:@"The time is invalid." value:&stru_28862C2A0 table:@"TSUtility"];
  }

  return started;
}

@end