@interface FeatureProvider
- (NSSet)featureNames;
- (id)featureValueForName:(id)a3;
- (void)setFeatureNames:(id)a3;
@end

@implementation FeatureProvider

- (NSSet)featureNames
{
  swift_beginAccess();
  v3 = *(self + 13);

  v4 = sub_275B7AF1C();

  return v4;
}

- (void)setFeatureNames:(id)a3
{
  v4 = sub_275B7AF2C();
  swift_beginAccess();
  v5 = *(self + 13);
  *(self + 13) = v4;
}

- (id)featureValueForName:(id)a3
{
  sub_275B7AD0C();

  v4 = _s33iCloudSubscriptionOptimizerDaemon11FeatureNameO10fromStringyACSgSSFZ_0();

  if (v4 == 55)
  {
    v5 = 0;
  }

  else
  {
    v6 = (*(*self + 400))(v4);

    v5 = *(v6 + 24);
  }

  return v5;
}

@end