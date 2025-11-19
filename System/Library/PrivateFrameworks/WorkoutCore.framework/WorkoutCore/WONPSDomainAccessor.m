@interface WONPSDomainAccessor
- (BOOL)BOOLForKey:(id)a3;
- (BOOL)_FIBoolForPerGizmoDomainAndKey:(id)a3 defaultValue:(BOOL)a4;
- (BOOL)isWorkoutExtendedModeSupported;
- (WONPSDomainAccessor)init;
- (id)dataForPerGizmoDomainAndKey:(id)a3;
- (id)valueForKey:(id)a3;
- (void)pairedDeviceStateChanged;
- (void)removeDataPerGizmoDomainAndKey:(id)a3;
- (void)setupNotificationObservers;
- (void)writeBoolPerGizmoDomainAndKey:(id)a3 value:(BOOL)a4;
- (void)writeDataPerGizmoDomainAndKey:(id)a3 data:(id)a4;
@end

@implementation WONPSDomainAccessor

- (WONPSDomainAccessor)init
{
  v9 = a2;
  v10 = 0;
  v8.receiver = self;
  v8.super_class = WONPSDomainAccessor;
  v7 = [(WONPSDomainAccessor *)&v8 init];
  v10 = v7;
  objc_storeStrong(&v10, v7);
  if (v7)
  {
    v2 = objc_alloc(MEMORY[0x277D095A0]);
    v3 = [v2 initWithDomain:*MEMORY[0x277D09618]];
    domainAccessor = v10->_domainAccessor;
    v10->_domainAccessor = v3;
    MEMORY[0x277D82BD8](domainAccessor);
    [(WONPSDomainAccessor *)v10 setupNotificationObservers];
  }

  v6 = MEMORY[0x277D82BE0](v10);
  objc_storeStrong(&v10, 0);
  return v6;
}

- (BOOL)isWorkoutExtendedModeSupported
{
  v8 = self;
  location[1] = a2;
  location[0] = FIGetActivePairedDevice();
  v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"C26AD300-9198-11EC-8BC2-0800200C9A66"];
  v4 = [location[0] supportsCapability:?];
  MEMORY[0x277D82BD8](v3);
  v6 = [(WONPSDomainAccessor *)v8 _FIBoolForPerGizmoDomainAndKey:@"WorkoutExtendedModeForceHardwareSupportEnabled" defaultValue:0];
  v5 = 1;
  if ((v4 & 1) == 0)
  {
    v5 = v6;
  }

  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (BOOL)_FIBoolForPerGizmoDomainAndKey:(id)a3 defaultValue:(BOOL)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = a4;
  v9 = a4;
  v8 = [(FINPSDomainAccessorWrapper *)v12->_domainAccessor synchronize];
  if (v8)
  {
    NSLog(&cfstr_Wonpsdomainacc_0.isa, v8);
  }

  v7 = [(FINPSDomainAccessorWrapper *)v12->_domainAccessor objectForKey:location[0]];
  if (v7)
  {
    v9 = [v7 BOOLValue];
  }

  v5 = v9;
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (id)valueForKey:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(FINPSDomainAccessorWrapper *)v7->_domainAccessor synchronize];
  if (v5)
  {
    NSLog(&cfstr_Wonpsdomainacc_0.isa, v5);
  }

  v4 = [(FINPSDomainAccessorWrapper *)v7->_domainAccessor objectForKey:location[0]];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (BOOL)BOOLForKey:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(FINPSDomainAccessorWrapper *)v7->_domainAccessor synchronize];
  if (v5)
  {
    NSLog(&cfstr_Wonpsdomainacc_0.isa, v5);
  }

  v4 = [(FINPSDomainAccessorWrapper *)v7->_domainAccessor BOOLForKey:location[0]];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  return v4;
}

- (void)removeDataPerGizmoDomainAndKey:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(FINPSDomainAccessorWrapper *)v5->_domainAccessor setObject:0 forKey:location[0]];
  v3 = [(FINPSDomainAccessorWrapper *)v5->_domainAccessor synchronize];
  if (v3)
  {
    NSLog(&cfstr_Wonpsdomainacc_0.isa, v3);
  }

  objc_storeStrong(&v3, 0);
  objc_storeStrong(location, 0);
}

- (id)dataForPerGizmoDomainAndKey:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [(FINPSDomainAccessorWrapper *)v8->_domainAccessor synchronize];
  if (v6)
  {
    NSLog(&cfstr_Wonpsdomainacc_0.isa, v6);
  }

  v5 = [(FINPSDomainAccessorWrapper *)v8->_domainAccessor objectForKey:location[0]];
  if (v5)
  {
    v9 = MEMORY[0x277D82BE0](v5);
  }

  else
  {
    v9 = 0;
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  v3 = v9;

  return v3;
}

- (void)writeDataPerGizmoDomainAndKey:(id)a3 data:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  [(FINPSDomainAccessorWrapper *)v11->_domainAccessor setObject:v9 forKey:location[0]];
  v8 = [(FINPSDomainAccessorWrapper *)v11->_domainAccessor synchronize];
  if (v8)
  {
    NSLog(&cfstr_Wonpsdomainacc_0.isa, v8);
  }

  else
  {
    v6 = objc_opt_new();
    v4 = *MEMORY[0x277D09618];
    v5 = [MEMORY[0x277CBEB98] setWithObject:location[0]];
    [v6 synchronizeNanoDomain:v4 keys:?];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)writeBoolPerGizmoDomainAndKey:(id)a3 value:(BOOL)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = a4;
  [(FINPSDomainAccessorWrapper *)v11->_domainAccessor setBool:a4 forKey:location[0]];
  v8 = [(FINPSDomainAccessorWrapper *)v11->_domainAccessor synchronize];
  if (v8)
  {
    NSLog(&cfstr_Wonpsdomainacc_0.isa, v8);
  }

  else
  {
    v6 = objc_opt_new();
    v4 = *MEMORY[0x277D09618];
    v5 = [MEMORY[0x277CBEB98] setWithObject:location[0]];
    [v6 synchronizeNanoDomain:v4 keys:?];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)setupNotificationObservers
{
  v14[4] = *MEMORY[0x277D85DE8];
  v12 = self;
  v11[1] = a2;
  v11[0] = [MEMORY[0x277CCAB98] defaultCenter];
  v14[0] = *MEMORY[0x277D2BC68];
  v14[1] = *MEMORY[0x277D2BC78];
  v14[2] = *MEMORY[0x277D2BC48];
  v14[3] = *MEMORY[0x277D2BC50];
  location = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:4];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](location);
  v7 = [obj countByEnumeratingWithState:__b objects:v13 count:16];
  if (v7)
  {
    v3 = *__b[2];
    v4 = 0;
    v5 = v7;
    while (1)
    {
      v2 = v4;
      if (*__b[2] != v3)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(__b[1] + 8 * v4);
      [v11[0] addObserver:v12 selector:sel_pairedDeviceStateChanged name:v9 object:0];
      ++v4;
      if (v2 + 1 >= v5)
      {
        v4 = 0;
        v5 = [obj countByEnumeratingWithState:__b objects:v13 count:16];
        if (!v5)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v11, 0);
  *MEMORY[0x277D85DE8];
}

- (void)pairedDeviceStateChanged
{
  v14 = self;
  v13[1] = a2;
  NSLog(&cfstr_Wonpsdomainacc_1.isa);
  v2 = objc_alloc(MEMORY[0x277D095A0]);
  v3 = [v2 initWithDomain:*MEMORY[0x277D09618]];
  domainAccessor = v14->_domainAccessor;
  v14->_domainAccessor = v3;
  MEMORY[0x277D82BD8](domainAccessor);
  v6 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __47__WONPSDomainAccessor_pairedDeviceStateChanged__block_invoke;
  v12 = &unk_277D88890;
  v13[0] = MEMORY[0x277D82BE0](v14);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v13, 0);
}

uint64_t __47__WONPSDomainAccessor_pairedDeviceStateChanged__block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"WONPSDomainAccessorDidRefreshNotification" object:*(a1 + 32)];
  return MEMORY[0x277D82BD8](v3);
}

@end