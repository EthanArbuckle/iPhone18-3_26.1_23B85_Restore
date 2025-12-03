@interface USRegisteredBudget
- (id)queryForInterval:(id)interval;
@end

@implementation USRegisteredBudget

- (id)queryForInterval:(id)interval
{
  intervalCopy = interval;
  budgetedApplications = [(USRegisteredBudget *)self budgetedApplications];
  v6 = [budgetedApplications valueForKey:@"bundleIdentifier"];

  exemptApplications = [(USRegisteredBudget *)self exemptApplications];
  v8 = [exemptApplications valueForKey:@"bundleIdentifier"];

  budgetedWebDomains = [(USRegisteredBudget *)self budgetedWebDomains];
  v10 = [budgetedWebDomains valueForKey:@"webDomain"];

  budgetedCategories = [(USRegisteredBudget *)self budgetedCategories];
  v12 = [budgetedCategories valueForKey:@"categoryIdentifier"];

  v13 = [[_TtC18UsageTrackingAgent19DeviceActivityQuery alloc] initWithBundleIdentifiers:v6 exemptBundleIdentifiers:v8 categoryIdentifiers:v12 domains:v10 interval:intervalCopy];

  return v13;
}

@end