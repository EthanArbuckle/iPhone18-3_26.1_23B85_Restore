@interface CloudGeniusDateTransform
- (id)geniusValueForMLValue:(id)a3;
@end

@implementation CloudGeniusDateTransform

- (id)geniusValueForMLValue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v3 doubleValue], v4 > 2.22044605e-16))
  {
    [v3 doubleValue];
    v5 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end