@interface TRIAllocationStatusEntitlementSet
- (TRIAllocationStatusEntitlementSet)initWithAllowedDeploymentEnvironments:(id)a3;
@end

@implementation TRIAllocationStatusEntitlementSet

- (TRIAllocationStatusEntitlementSet)initWithAllowedDeploymentEnvironments:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TRIAllocationStatusEntitlementSet;
  v6 = [(TRIAllocationStatusEntitlementSet *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_allowedDeploymentEnvironments, a3);
  }

  return v7;
}

@end