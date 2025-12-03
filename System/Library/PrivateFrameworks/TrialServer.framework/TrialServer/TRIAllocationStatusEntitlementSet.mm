@interface TRIAllocationStatusEntitlementSet
- (TRIAllocationStatusEntitlementSet)initWithAllowedDeploymentEnvironments:(id)environments;
@end

@implementation TRIAllocationStatusEntitlementSet

- (TRIAllocationStatusEntitlementSet)initWithAllowedDeploymentEnvironments:(id)environments
{
  environmentsCopy = environments;
  v9.receiver = self;
  v9.super_class = TRIAllocationStatusEntitlementSet;
  v6 = [(TRIAllocationStatusEntitlementSet *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_allowedDeploymentEnvironments, environments);
  }

  return v7;
}

@end