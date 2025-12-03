@interface TSUDurationFormatter
- (BOOL)getObjectValue:(id *)value forString:(id)string errorDescription:(id *)description;
- (TSUDurationFormatter)init;
- (TSUDurationFormatter)initWithCoder:(id)coder;
- (id)stringForObjectValue:(id)value;
- (void)dealloc;
@end

@implementation TSUDurationFormatter

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

- (TSUDurationFormatter)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = TSUDurationFormatter;
  v3 = [(TSUDurationFormatter *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(TSUDurationFormatter *)v3 p_commonInit];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSUDurationFormatter;
  [(TSUDurationFormatter *)&v3 dealloc];
}

- (id)stringForObjectValue:(id)value
{
  if (!value || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return &stru_287DDF830;
  }

  [value doubleValue];
  v6 = v5;
  format = [(TSUDurationFormatter *)self format];

  return TSUDurationFormatterStringFromTimeIntervalWithFormatAndRoundingAndSingularOption(format, 0, 0, v6);
}

- (BOOL)getObjectValue:(id *)value forString:(id)string errorDescription:(id *)description
{
  v9 = NAN;
  started = TSUDurationFormatterTimeIntervalFromStringWithCompactStyleStartUnit(string, &v9, 0, 0, [(TSUDurationFormatter *)self compactStyleStartUnit]);
  if (started)
  {
    *value = [MEMORY[0x277CCABB0] numberWithDouble:v9];
  }

  else if (description)
  {
    *description = [SFUBundle() localizedStringForKey:@"The time is invalid." value:&stru_287DDF830 table:@"TSUtility"];
  }

  return started;
}

@end