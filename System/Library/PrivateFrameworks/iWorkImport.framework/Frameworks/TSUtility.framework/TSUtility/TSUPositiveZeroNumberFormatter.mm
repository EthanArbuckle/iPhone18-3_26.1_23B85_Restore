@interface TSUPositiveZeroNumberFormatter
- (id)stringForObjectValue:(id)value;
@end

@implementation TSUPositiveZeroNumberFormatter

- (id)stringForObjectValue:(id)value
{
  if (objc_opt_respondsToSelector())
  {
    [value floatValue];
    v6 = v5;
    [-[TSUPositiveZeroNumberFormatter multiplier](self "multiplier")];
    if (v7 != 0.0)
    {
      v6 = v6 * v7;
    }

    if (v6 > pow(0.1, [(TSUPositiveZeroNumberFormatter *)self maximumFractionDigits]) * -0.5 && v6 <= 0.0)
    {
      value = &unk_28864BBF0;
    }
  }

  v10.receiver = self;
  v10.super_class = TSUPositiveZeroNumberFormatter;
  return [(TSUPositiveZeroNumberFormatter *)&v10 stringForObjectValue:value];
}

@end