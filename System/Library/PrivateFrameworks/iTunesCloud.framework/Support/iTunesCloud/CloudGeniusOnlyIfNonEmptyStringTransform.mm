@interface CloudGeniusOnlyIfNonEmptyStringTransform
- (id)geniusValueForMLValue:(id)a3;
@end

@implementation CloudGeniusOnlyIfNonEmptyStringTransform

- (id)geniusValueForMLValue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 length])
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