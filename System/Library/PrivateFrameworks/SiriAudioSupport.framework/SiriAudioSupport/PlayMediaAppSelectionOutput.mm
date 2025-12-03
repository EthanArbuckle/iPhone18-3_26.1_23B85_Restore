@interface PlayMediaAppSelectionOutput
- (NSSet)featureNames;
- (id)featureValueForName:(id)name;
@end

@implementation PlayMediaAppSelectionOutput

- (NSSet)featureNames
{
  v2 = *self->provider;

  featureNames = [v2 featureNames];
  sub_2664E0608();

  v4 = sub_2664E05F8();

  return v4;
}

- (id)featureValueForName:(id)name
{
  featureValueForName_ = [*self->provider featureValueForName_];

  return featureValueForName_;
}

@end