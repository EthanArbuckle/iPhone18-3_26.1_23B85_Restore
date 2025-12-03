@interface CloudGeniusOnlyIfNonEmptyStringTransform
- (id)geniusValueForMLValue:(id)value;
@end

@implementation CloudGeniusOnlyIfNonEmptyStringTransform

- (id)geniusValueForMLValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [valueCopy length])
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