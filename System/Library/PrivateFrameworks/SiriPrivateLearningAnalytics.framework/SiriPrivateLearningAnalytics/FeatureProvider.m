@interface FeatureProvider
- (NSSet)featureNames;
- (id)featureValueForName:(id)a3;
@end

@implementation FeatureProvider

- (NSSet)featureNames
{
  v2 = *(self + 5);

  v3 = sub_222B027D8();

  return v3;
}

- (id)featureValueForName:(id)a3
{
  v3 = sub_222B02388();
  v5 = v4;

  v6 = sub_222A26A40(v3, v5);

  return v6;
}

@end