@interface CloudGeniusOnlyIfNonZeroIntegerTransform
- (id)geniusValueForMLValue:(id)a3;
@end

@implementation CloudGeniusOnlyIfNonZeroIntegerTransform

- (id)geniusValueForMLValue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 longLongValue])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end