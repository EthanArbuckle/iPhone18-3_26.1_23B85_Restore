@interface CloudGeniusOnlyIfDoesNotHaveValueTransform
- (id)geniusValueForMLValue:(id)value;
@end

@implementation CloudGeniusOnlyIfDoesNotHaveValueTransform

- (id)geniusValueForMLValue:(id)value
{
  v7.receiver = self;
  v7.super_class = CloudGeniusOnlyIfDoesNotHaveValueTransform;
  v3 = [(CloudGeniusHasValueTransform *)&v7 geniusValueForMLValue:value];
  if ([v3 BOOLValue])
  {
    v4 = 0;
  }

  else
  {
    v4 = &__kCFBooleanTrue;
  }

  v5 = v4;

  return v4;
}

@end