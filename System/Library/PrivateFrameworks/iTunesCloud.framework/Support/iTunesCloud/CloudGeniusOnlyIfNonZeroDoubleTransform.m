@interface CloudGeniusOnlyIfNonZeroDoubleTransform
- (id)geniusValueForMLValue:(id)a3;
@end

@implementation CloudGeniusOnlyIfNonZeroDoubleTransform

- (id)geniusValueForMLValue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v3 doubleValue], v4 == 0.0))
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

@end