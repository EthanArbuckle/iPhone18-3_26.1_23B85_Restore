@interface CloudGeniusOnlyIfNonZeroIntegerTransform
- (id)geniusValueForMLValue:(id)value;
@end

@implementation CloudGeniusOnlyIfNonZeroIntegerTransform

- (id)geniusValueForMLValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [valueCopy longLongValue])
  {
    v4 = valueCopy;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end