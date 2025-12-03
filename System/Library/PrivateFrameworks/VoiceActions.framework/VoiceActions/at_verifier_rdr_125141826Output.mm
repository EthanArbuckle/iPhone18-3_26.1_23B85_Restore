@interface at_verifier_rdr_125141826Output
- (NSSet)featureNames;
- (id)featureValueForName:(id)name;
@end

@implementation at_verifier_rdr_125141826Output

- (NSSet)featureNames
{
  v2 = *self->provider;

  featureNames = [v2 featureNames];
  sub_272377D8C();

  v4 = sub_272377D7C();

  return v4;
}

- (id)featureValueForName:(id)name
{
  featureValueForName_ = [*self->provider featureValueForName_];

  return featureValueForName_;
}

@end