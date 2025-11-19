@interface DomainPredictionModelInput
- (NSSet)featureNames;
- (id)featureValueForName:(id)a3;
@end

@implementation DomainPredictionModelInput

- (NSSet)featureNames
{

  sub_1D9B976BC(v2);
  v3 = sub_1D9C7E02C();

  return v3;
}

- (id)featureValueForName:(id)a3
{
  v3 = sub_1D9C7DC7C();
  v5 = v4;

  v6 = sub_1D99C8D88(v3, v5);

  return v6;
}

@end