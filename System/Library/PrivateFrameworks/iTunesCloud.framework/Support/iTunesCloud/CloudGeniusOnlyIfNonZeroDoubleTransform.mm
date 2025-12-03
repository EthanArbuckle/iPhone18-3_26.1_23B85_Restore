@interface CloudGeniusOnlyIfNonZeroDoubleTransform
- (id)geniusValueForMLValue:(id)value;
@end

@implementation CloudGeniusOnlyIfNonZeroDoubleTransform

- (id)geniusValueForMLValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([valueCopy doubleValue], v4 == 0.0))
  {
    v5 = 0;
  }

  else
  {
    v5 = valueCopy;
  }

  return v5;
}

@end