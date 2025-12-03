@interface PSAppDataUsagePolicyTernaryControlSpecifier
- (PSAppDataUsagePolicyTernaryControlSpecifier)initWithBundleID:(id)d displayName:(id)name appName:(id)appName statisticsCache:(id)cache;
- (id)cellularUsagePolicy;
- (void)finishInitializing:(unint64_t)initializing;
- (void)setCellularUsagePolicy:(id)policy;
@end

@implementation PSAppDataUsagePolicyTernaryControlSpecifier

- (PSAppDataUsagePolicyTernaryControlSpecifier)initWithBundleID:(id)d displayName:(id)name appName:(id)appName statisticsCache:(id)cache
{
  dCopy = d;
  nameCopy = name;
  appNameCopy = appName;
  cacheCopy = cache;
  v14 = objc_opt_class();
  v18.receiver = self;
  v18.super_class = PSAppDataUsagePolicyTernaryControlSpecifier;
  v15 = [(PSAppDataUsagePolicyTernaryControlSpecifier *)&v18 initWithName:nameCopy target:self set:sel_setCellularUsagePolicy_ get:sel_cellularUsagePolicy detail:v14 cell:2 edit:0];
  v16 = v15;
  if (v15)
  {
    [(PSAppCellularUsageSpecifier *)v15 setStatisticsCache:cacheCopy];
    [(PSAppCellularUsageSpecifier *)v16 setBundleID:dCopy];
    [(PSAppDataUsagePolicyTernaryControlSpecifier *)v16 setDisplayName:nameCopy];
    [(PSAppDataUsagePolicyTernaryControlSpecifier *)v16 setAppName:appNameCopy];
    [(PSAppDataUsagePolicyTernaryControlSpecifier *)v16 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    [(PSAppDataUsagePolicyTernaryControlSpecifier *)v16 finishInitializing:3];
    v16->_fullyInitialized = 0;
  }

  return v16;
}

- (void)finishInitializing:(unint64_t)initializing
{
  isRestricted = [(PSAppCellularUsageSpecifier *)self isRestricted];
  if (initializing == 3 || !isRestricted)
  {
    v39 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
    v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = SFLocalizableWAPIStringKeyForKey();
    v23 = [v21 localizedStringForKey:v22 value:&stru_287730CE8 table:@"WirelessData"];
    [v39 addObject:v23];

    v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v25 = SFLocalizableWAPIStringKeyForKey();
    v26 = [v24 localizedStringForKey:v25 value:&stru_287730CE8 table:@"WirelessData"];
    [v39 addObject:v26];

    v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v28 = SFLocalizableWAPIStringKeyForKey();
    v29 = [v27 localizedStringForKey:v28 value:&stru_287730CE8 table:@"WirelessData"];
    [v39 addObject:v29];

    v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
    v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v31 = SFLocalizableWAPIStringKeyForKey();
    v32 = [v30 localizedStringForKey:v31 value:&stru_287730CE8 table:@"WirelessData"];
    [v12 addObject:v32];

    v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v34 = SFLocalizableWAPIStringKeyForKey();
    v35 = [v33 localizedStringForKey:v34 value:&stru_287730CE8 table:@"WirelessData"];
    [v12 addObject:v35];

    v36 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v37 = SFLocalizableWAPIStringKeyForKey();
    v38 = [v36 localizedStringForKey:v37 value:&stru_287730CE8 table:@"WirelessData"];
    [v12 addObject:v38];

    v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
    [v19 addObject:&unk_287732660];
    [v19 addObject:&unk_287732678];
    v20 = &unk_287732690;
  }

  else
  {
    v39 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = SFLocalizableWAPIStringKeyForKey();
    v8 = [v6 localizedStringForKey:v7 value:&stru_287730CE8 table:@"WirelessData"];
    [v39 addObject:v8];

    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = SFLocalizableWAPIStringKeyForKey();
    v11 = [v9 localizedStringForKey:v10 value:&stru_287730CE8 table:@"WirelessData"];
    [v39 addObject:v11];

    v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = SFLocalizableWAPIStringKeyForKey();
    v15 = [v13 localizedStringForKey:v14 value:&stru_287730CE8 table:@"WirelessData"];
    [v12 addObject:v15];

    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = SFLocalizableWAPIStringKeyForKey();
    v18 = [v16 localizedStringForKey:v17 value:&stru_287730CE8 table:@"WirelessData"];
    [v12 addObject:v18];

    v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
    [v19 addObject:&unk_287732660];
    v20 = &unk_287732678;
  }

  [v19 addObject:v20];
  [(PSAppDataUsagePolicyTernaryControlSpecifier *)self setValues:v19 titles:v39 shortTitles:v12];
}

- (id)cellularUsagePolicy
{
  v3 = [MEMORY[0x277CCABB0] numberWithInt:{-[PSAppCellularUsageSpecifier isRestricted](self, "isRestricted") ^ 1}];
  v4 = *MEMORY[0x277D3FF38];
  [(PSAppDataUsagePolicyTernaryControlSpecifier *)self setProperty:v3 forKey:*MEMORY[0x277D3FF38]];

  if ([(PSAppCellularUsageSpecifier *)self shouldShowUsage])
  {
    dataUsageString = [(PSAppCellularUsageSpecifier *)self dataUsageString];
    [(PSAppDataUsagePolicyTernaryControlSpecifier *)self setProperty:dataUsageString forKey:*MEMORY[0x277D40160]];
  }

  v6 = +[PSAppDataUsagePolicyCache sharedInstance];
  bundleID = [(PSAppCellularUsageSpecifier *)self bundleID];
  v8 = [v6 policiesFor:bundleID];

  if (!v8)
  {
    [(PSAppDataUsagePolicyTernaryControlSpecifier *)self setProperty:MEMORY[0x277CBEC28] forKey:v4];
  }

  wifi = [v8 wifi];
  cellular = [v8 cellular];
  v11 = 2;
  if (wifi)
  {
    v11 = 3;
  }

  if (cellular)
  {
    v12 = v11;
  }

  else
  {
    v12 = wifi != 0;
  }

  if (!self->_fullyInitialized)
  {
    [(PSAppDataUsagePolicyTernaryControlSpecifier *)self finishInitializing:v12];
    self->_fullyInitialized = 1;
  }

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:v12];

  return v13;
}

- (void)setCellularUsagePolicy:(id)policy
{
  policyCopy = policy;
  v5 = +[PSAppDataUsagePolicyCache sharedInstance];
  bundleID = [(PSAppCellularUsageSpecifier *)self bundleID];
  v7 = [v5 policiesFor:bundleID];

  if (v7)
  {
    unsignedIntegerValue = [policyCopy unsignedIntegerValue];
    v9 = unsignedIntegerValue;
    [v7 setCellular:(unsignedIntegerValue >> 1) & 1];
    [v7 setWifi:v9 & 1];
    delegate = +[PSAppDataUsagePolicyCache sharedInstance];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __70__PSAppDataUsagePolicyTernaryControlSpecifier_setCellularUsagePolicy___block_invoke;
    v11[3] = &unk_279BA8530;
    v11[4] = self;
    [delegate setPolicies:v7 completion:v11];
  }

  else
  {
    delegate = [(PSAppCellularUsageSpecifier *)self delegate];
    [delegate didFailToSetPolicyForSpecifier:self];
  }
}

void __70__PSAppDataUsagePolicyTernaryControlSpecifier_setCellularUsagePolicy___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) delegate];
    [v3 didFailToSetPolicyForSpecifier:*(a1 + 32)];
  }
}

@end