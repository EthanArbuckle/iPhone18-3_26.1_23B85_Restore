@interface USRegisteredBudget
- (id)queryForInterval:(id)a3;
@end

@implementation USRegisteredBudget

- (id)queryForInterval:(id)a3
{
  v4 = a3;
  v5 = [(USRegisteredBudget *)self budgetedApplications];
  v6 = [v5 valueForKey:@"bundleIdentifier"];

  v7 = [(USRegisteredBudget *)self exemptApplications];
  v8 = [v7 valueForKey:@"bundleIdentifier"];

  v9 = [(USRegisteredBudget *)self budgetedWebDomains];
  v10 = [v9 valueForKey:@"webDomain"];

  v11 = [(USRegisteredBudget *)self budgetedCategories];
  v12 = [v11 valueForKey:@"categoryIdentifier"];

  v13 = [[_TtC18UsageTrackingAgent19DeviceActivityQuery alloc] initWithBundleIdentifiers:v6 exemptBundleIdentifiers:v8 categoryIdentifiers:v12 domains:v10 interval:v4];

  return v13;
}

@end