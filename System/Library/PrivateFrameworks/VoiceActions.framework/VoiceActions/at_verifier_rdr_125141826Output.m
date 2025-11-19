@interface at_verifier_rdr_125141826Output
- (NSSet)featureNames;
- (id)featureValueForName:(id)a3;
@end

@implementation at_verifier_rdr_125141826Output

- (NSSet)featureNames
{
  v2 = *self->provider;

  v3 = [v2 featureNames];
  sub_272377D8C();

  v4 = sub_272377D7C();

  return v4;
}

- (id)featureValueForName:(id)a3
{
  v3 = [*self->provider featureValueForName_];

  return v3;
}

@end