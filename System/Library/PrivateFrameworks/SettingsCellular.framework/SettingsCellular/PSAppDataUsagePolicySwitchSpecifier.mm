@interface PSAppDataUsagePolicySwitchSpecifier
- (PSAppDataUsagePolicySwitchSpecifier)initWithBundleID:(id)d displayName:(id)name statisticsCache:(id)cache;
- (id)usagePolicy;
- (void)setUsagePolicy:(id)policy;
@end

@implementation PSAppDataUsagePolicySwitchSpecifier

- (PSAppDataUsagePolicySwitchSpecifier)initWithBundleID:(id)d displayName:(id)name statisticsCache:(id)cache
{
  dCopy = d;
  cacheCopy = cache;
  v13.receiver = self;
  v13.super_class = PSAppDataUsagePolicySwitchSpecifier;
  v10 = [(PSAppDataUsagePolicySwitchSpecifier *)&v13 initWithName:name target:self set:sel_setUsagePolicy_ get:sel_usagePolicy detail:0 cell:6 edit:0];
  v11 = v10;
  if (v10)
  {
    [(PSAppCellularUsageSpecifier *)v10 setStatisticsCache:cacheCopy];
    [(PSAppCellularUsageSpecifier *)v11 setBundleID:dCopy];
  }

  return v11;
}

- (id)usagePolicy
{
  v3 = [MEMORY[0x277CCABB0] numberWithInt:{-[PSAppCellularUsageSpecifier isRestricted](self, "isRestricted") ^ 1}];
  v4 = *MEMORY[0x277D3FF38];
  [(PSAppDataUsagePolicySwitchSpecifier *)self setProperty:v3 forKey:*MEMORY[0x277D3FF38]];

  if ([(PSAppCellularUsageSpecifier *)self shouldShowUsage])
  {
    dataUsageString = [(PSAppCellularUsageSpecifier *)self dataUsageString];
    [(PSAppDataUsagePolicySwitchSpecifier *)self setProperty:dataUsageString forKey:*MEMORY[0x277D40160]];
  }

  v6 = +[PSAppDataUsagePolicyCache sharedInstance];
  bundleID = [(PSAppCellularUsageSpecifier *)self bundleID];
  v8 = [v6 policiesFor:bundleID];

  if (v8)
  {
    if ([(PSAppCellularUsageSpecifier *)self usageType]== 1)
    {
      satellite = [v8 satellite];
    }

    else
    {
      satellite = [v8 cellular];
    }

    v10 = [MEMORY[0x277CCABB0] numberWithBool:satellite != 0];
  }

  else
  {
    [(PSAppDataUsagePolicySwitchSpecifier *)self setProperty:MEMORY[0x277CBEC28] forKey:v4];
    v10 = &unk_287732648;
  }

  return v10;
}

- (void)setUsagePolicy:(id)policy
{
  policyCopy = policy;
  v5 = +[PSAppDataUsagePolicyCache sharedInstance];
  bundleID = [(PSAppCellularUsageSpecifier *)self bundleID];
  v7 = [v5 policiesFor:bundleID];

  if (v7)
  {
    usageType = [(PSAppCellularUsageSpecifier *)self usageType];
    integerValue = [policyCopy integerValue];
    if (usageType == 1)
    {
      [v7 setSatellite:integerValue];
    }

    else
    {
      [v7 setCellular:integerValue];
    }

    delegate2 = +[PSAppDataUsagePolicyCache sharedInstance];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __54__PSAppDataUsagePolicySwitchSpecifier_setUsagePolicy___block_invoke;
    v13[3] = &unk_279BA8530;
    v13[4] = self;
    [delegate2 setPolicies:v7 completion:v13];
    goto LABEL_8;
  }

  delegate = [(PSAppCellularUsageSpecifier *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    delegate2 = [(PSAppCellularUsageSpecifier *)self delegate];
    [delegate2 didFailToSetPolicyForSpecifier:self];
LABEL_8:

    goto LABEL_9;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2658CA000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Delegate does not respond to didFailToSetPolicyForSpecifier:", buf, 2u);
  }

LABEL_9:
}

void __54__PSAppDataUsagePolicySwitchSpecifier_setUsagePolicy___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [*(a1 + 32) delegate];
      [v6 didFailToSetPolicyForSpecifier:*(a1 + 32)];
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_2658CA000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Delegate does not respond to didFailToSetPolicyForSpecifier:", v7, 2u);
    }
  }
}

@end