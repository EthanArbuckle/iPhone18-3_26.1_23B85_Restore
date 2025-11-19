@interface PSAppDataUsagePolicySwitchSpecifier
- (PSAppDataUsagePolicySwitchSpecifier)initWithBundleID:(id)a3 displayName:(id)a4 statisticsCache:(id)a5;
- (id)usagePolicy;
- (void)setUsagePolicy:(id)a3;
@end

@implementation PSAppDataUsagePolicySwitchSpecifier

- (PSAppDataUsagePolicySwitchSpecifier)initWithBundleID:(id)a3 displayName:(id)a4 statisticsCache:(id)a5
{
  v8 = a3;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = PSAppDataUsagePolicySwitchSpecifier;
  v10 = [(PSAppDataUsagePolicySwitchSpecifier *)&v13 initWithName:a4 target:self set:sel_setUsagePolicy_ get:sel_usagePolicy detail:0 cell:6 edit:0];
  v11 = v10;
  if (v10)
  {
    [(PSAppCellularUsageSpecifier *)v10 setStatisticsCache:v9];
    [(PSAppCellularUsageSpecifier *)v11 setBundleID:v8];
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
    v5 = [(PSAppCellularUsageSpecifier *)self dataUsageString];
    [(PSAppDataUsagePolicySwitchSpecifier *)self setProperty:v5 forKey:*MEMORY[0x277D40160]];
  }

  v6 = +[PSAppDataUsagePolicyCache sharedInstance];
  v7 = [(PSAppCellularUsageSpecifier *)self bundleID];
  v8 = [v6 policiesFor:v7];

  if (v8)
  {
    if ([(PSAppCellularUsageSpecifier *)self usageType]== 1)
    {
      v9 = [v8 satellite];
    }

    else
    {
      v9 = [v8 cellular];
    }

    v10 = [MEMORY[0x277CCABB0] numberWithBool:v9 != 0];
  }

  else
  {
    [(PSAppDataUsagePolicySwitchSpecifier *)self setProperty:MEMORY[0x277CBEC28] forKey:v4];
    v10 = &unk_287732648;
  }

  return v10;
}

- (void)setUsagePolicy:(id)a3
{
  v4 = a3;
  v5 = +[PSAppDataUsagePolicyCache sharedInstance];
  v6 = [(PSAppCellularUsageSpecifier *)self bundleID];
  v7 = [v5 policiesFor:v6];

  if (v7)
  {
    v8 = [(PSAppCellularUsageSpecifier *)self usageType];
    v9 = [v4 integerValue];
    if (v8 == 1)
    {
      [v7 setSatellite:v9];
    }

    else
    {
      [v7 setCellular:v9];
    }

    v12 = +[PSAppDataUsagePolicyCache sharedInstance];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __54__PSAppDataUsagePolicySwitchSpecifier_setUsagePolicy___block_invoke;
    v13[3] = &unk_279BA8530;
    v13[4] = self;
    [v12 setPolicies:v7 completion:v13];
    goto LABEL_8;
  }

  v10 = [(PSAppCellularUsageSpecifier *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(PSAppCellularUsageSpecifier *)self delegate];
    [v12 didFailToSetPolicyForSpecifier:self];
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