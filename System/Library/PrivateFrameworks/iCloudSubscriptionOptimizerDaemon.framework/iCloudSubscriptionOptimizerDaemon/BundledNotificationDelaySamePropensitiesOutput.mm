@interface BundledNotificationDelaySamePropensitiesOutput
- (NSSet)featureNames;
- (id)featureValueForName:(id)name;
@end

@implementation BundledNotificationDelaySamePropensitiesOutput

- (NSSet)featureNames
{
  v2 = *self->provider;

  featureNames = [v2 featureNames];
  sub_275B7AF2C();

  v4 = sub_275B7AF1C();

  return v4;
}

- (id)featureValueForName:(id)name
{
  featureValueForName_ = [*self->provider featureValueForName_];

  return featureValueForName_;
}

@end