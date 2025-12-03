@interface CloudGeniusDateTransform
- (id)geniusValueForMLValue:(id)value;
@end

@implementation CloudGeniusDateTransform

- (id)geniusValueForMLValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([valueCopy doubleValue], v4 > 2.22044605e-16))
  {
    [valueCopy doubleValue];
    v5 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end