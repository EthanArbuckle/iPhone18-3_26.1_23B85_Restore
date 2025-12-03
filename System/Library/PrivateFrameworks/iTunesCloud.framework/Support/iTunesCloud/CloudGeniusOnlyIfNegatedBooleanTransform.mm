@interface CloudGeniusOnlyIfNegatedBooleanTransform
- (id)geniusValueForMLValue:(id)value;
@end

@implementation CloudGeniusOnlyIfNegatedBooleanTransform

- (id)geniusValueForMLValue:(id)value
{
  v7.receiver = self;
  v7.super_class = CloudGeniusOnlyIfNegatedBooleanTransform;
  v3 = [(CloudGeniusBooleanTransform *)&v7 geniusValueForMLValue:value];
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