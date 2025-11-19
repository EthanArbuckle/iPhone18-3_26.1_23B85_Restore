@interface PlayMediaAppSelectionOutput
- (NSSet)featureNames;
- (id)featureValueForName:(id)a3;
@end

@implementation PlayMediaAppSelectionOutput

- (NSSet)featureNames
{
  v2 = *self->provider;

  v3 = [v2 featureNames];
  sub_2664E0608();

  v4 = sub_2664E05F8();

  return v4;
}

- (id)featureValueForName:(id)a3
{
  v3 = [*self->provider featureValueForName_];

  return v3;
}

@end