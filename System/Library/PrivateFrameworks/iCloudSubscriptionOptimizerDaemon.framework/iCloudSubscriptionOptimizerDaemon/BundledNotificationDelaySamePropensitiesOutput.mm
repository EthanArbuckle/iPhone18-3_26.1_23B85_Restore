@interface BundledNotificationDelaySamePropensitiesOutput
- (NSSet)featureNames;
- (id)featureValueForName:(id)a3;
@end

@implementation BundledNotificationDelaySamePropensitiesOutput

- (NSSet)featureNames
{
  v2 = *self->provider;

  v3 = [v2 featureNames];
  sub_275B7AF2C();

  v4 = sub_275B7AF1C();

  return v4;
}

- (id)featureValueForName:(id)a3
{
  v3 = [*self->provider featureValueForName_];

  return v3;
}

@end