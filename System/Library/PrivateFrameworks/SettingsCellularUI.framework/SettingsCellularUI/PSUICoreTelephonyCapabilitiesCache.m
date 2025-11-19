@interface PSUICoreTelephonyCapabilitiesCache
+ (id)sharedInstance;
- (BOOL)canSetCapabilityForContext:(id)a3 cache:(id)a4;
- (BOOL)canSetCapabilityVoLTE:(id)a3;
- (BOOL)canSetCapabilityVoNR:(id)a3;
- (BOOL)canSetNetworkSlicing:(id)a3;
- (BOOL)canSetSatelliteCapability:(id)a3;
- (BOOL)canSetTurnOffCellular:(id)a3;
- (BOOL)cannotChangeVoLTESettingCallCarrier:(id)a3;
- (BOOL)capabilityEnabledForContext:(id)a3 cache:(id)a4;
- (BOOL)capabilityEnabledVoLTE:(id)a3;
- (BOOL)capabilityEnabledVoNR:(id)a3;
- (BOOL)fetchDeviceAndPlan5GSupport:(id)a3;
- (BOOL)getCapabilityInfo:(id)a3 forContext:(id)a4 cache:(id)a5;
- (BOOL)getNetworkSlicing:(id)a3;
- (BOOL)getSatelliteCapability:(id)a3;
- (BOOL)getTurnOffCellular:(id)a3;
- (BOOL)isVoLTEStillProvisioningForContext:(id)a3;
- (PSUICoreTelephonyCapabilitiesCache)init;
- (id)getCapabilityInfoObject:(id)a3 forContext:(id)a4 cache:(id)a5;
- (id)initPrivate;
- (id)networkSlicingCategories:(id)a3;
- (void)clearCache;
- (void)context:(id)a3 capabilitiesChanged:(id)a4;
- (void)fetchCanSetCapabilityWithCache:(id)a3 forContext:(id)a4;
- (void)fetchCapabilityEnabledWithCache:(id)a3 forContext:(id)a4;
- (void)setCapabilityInfoObject:(id)a3 forKey:(id)a4 forContext:(id)a5 cache:(id)a6;
- (void)setNetworkSlicingCategories:(id)a3 forContext:(id)a4;
@end

@implementation PSUICoreTelephonyCapabilitiesCache

+ (id)sharedInstance
{
  if (qword_28156A680 != -1)
  {
    dispatch_once(&qword_28156A680, &__block_literal_global_0);
  }

  v3 = _MergedGlobals_57;

  return v3;
}

uint64_t __52__PSUICoreTelephonyCapabilitiesCache_sharedInstance__block_invoke()
{
  _MergedGlobals_57 = [[PSUICoreTelephonyCapabilitiesCache alloc] initPrivate];

  return MEMORY[0x2821F96F8]();
}

- (id)initPrivate
{
  v21.receiver = self;
  v21.super_class = PSUICoreTelephonyCapabilitiesCache;
  v2 = [(PSUICoreTelephonyCapabilitiesCache *)&v21 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CC37B0]);
    v4 = [MEMORY[0x277D4D878] createCTClientSerialQueue:@"capabilities_cache"];
    v5 = [v3 initWithQueue:v4];
    client = v2->_client;
    v2->_client = v5;

    [(CoreTelephonyClient *)v2->_client setDelegate:v2];
    v7 = [MEMORY[0x277D4D868] sharedInstance];
    simStatusCache = v2->_simStatusCache;
    v2->_simStatusCache = v7;

    v9 = [CTCapability alloc];
    v10 = [(CTCapability *)v9 initWithCapabilityName:*MEMORY[0x277CC37F8]];
    [(PSUICoreTelephonyCapabilitiesCache *)v2 setVolteCapability:v10];

    v11 = [CTCapability alloc];
    v12 = [(CTCapability *)v11 initWithCapabilityName:*MEMORY[0x277CC3800]];
    [(PSUICoreTelephonyCapabilitiesCache *)v2 setVonrCapability:v12];

    v13 = [CTCapability alloc];
    v14 = [(CTCapability *)v13 initWithCapabilityName:*MEMORY[0x277CC3840]];
    [(PSUICoreTelephonyCapabilitiesCache *)v2 setTurnOffCellularCapability:v14];

    v15 = [CTCapability alloc];
    v16 = [(CTCapability *)v15 initWithCapabilityName:*MEMORY[0x277CC3828]];
    [(PSUICoreTelephonyCapabilitiesCache *)v2 setNetworkSlicingCapability:v16];

    v17 = [CTCapability alloc];
    v18 = [(CTCapability *)v17 initWithCapabilityName:*MEMORY[0x277CC3830]];
    [(PSUICoreTelephonyCapabilitiesCache *)v2 setSatelliteCapability:v18];

    v19 = [MEMORY[0x277CCAB98] defaultCenter];
    [v19 addObserver:v2 selector:sel_willEnterForeground name:*MEMORY[0x277D76758] object:0];
  }

  return v2;
}

- (PSUICoreTelephonyCapabilitiesCache)init
{
  v4 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = 136315138;
    v3 = "[PSUICoreTelephonyCapabilitiesCache init]";
    _os_log_error_impl(&dword_2658DE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unsupported initializer called: %s", &v2, 0xCu);
  }

  objc_exception_throw([objc_alloc(MEMORY[0x277CBEAD8]) initWithName:@"Unsupported initializer" reason:@"Unsupported initializer called" userInfo:0]);
}

- (void)fetchCanSetCapabilityWithCache:(id)a3 forContext:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PSUICoreTelephonyCapabilitiesCache *)self getLogger];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v7;
    _os_log_impl(&dword_2658DE000, v8, OS_LOG_TYPE_DEFAULT, "Executing can set capability fetch for %@", buf, 0xCu);
  }

  v22 = 0;
  client = self->_client;
  v10 = [v6 capabilityName];
  v21 = 0;
  v11 = [(CoreTelephonyClient *)client context:v7 canSetCapability:v10 allowed:&v22 with:&v21];
  v12 = v21;

  if (v11)
  {
    v13 = [(PSUICoreTelephonyCapabilitiesCache *)self getLogger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v24 = v7;
      v25 = 2112;
      v26 = v11;
      _os_log_error_impl(&dword_2658DE000, v13, OS_LOG_TYPE_ERROR, "Can set fetch for %@ failed: %@", buf, 0x16u);
    }

    v14 = 0;
  }

  else
  {
    v15 = [v12 objectForKey:*MEMORY[0x277CC3838]];
    v14 = [v15 BOOLValue];

    v13 = [(PSUICoreTelephonyCapabilitiesCache *)self getLogger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = @"NO";
      *buf = 138413058;
      if (v22)
      {
        v17 = @"YES";
      }

      else
      {
        v17 = @"NO";
      }

      v24 = v7;
      if (v14)
      {
        v16 = @"YES";
      }

      v25 = 2112;
      v26 = v17;
      v27 = 2112;
      v28 = v16;
      v29 = 2112;
      v30 = v12;
      _os_log_impl(&dword_2658DE000, v13, OS_LOG_TYPE_DEFAULT, "Can set fetch for %@, Allowed: %@, Enabled: %@, %@", buf, 0x2Au);
    }
  }

  v18 = self;
  objc_sync_enter(v18);
  v19 = [v7 slotID];
  [v6 acceptCapabilityforSlotID:v19 status:v14 canSet:v22 info:v12];
  objc_sync_exit(v18);

  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)canSetCapabilityForContext:(id)a3 cache:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "slotID")}];
  v9 = [v7 capabilityFetched];
  v10 = [v9 objectForKeyedSubscript:v8];
  v11 = [v10 isEqual:MEMORY[0x277CBEC38]];

  if ((v11 & 1) == 0)
  {
    [(PSUICoreTelephonyCapabilitiesCache *)self fetchCanSetCapabilityWithCache:v7 forContext:v6];
  }

  v12 = self;
  objc_sync_enter(v12);
  v13 = [v7 getCapabilityForSlotID:{objc_msgSend(v6, "slotID")}];
  objc_sync_exit(v12);

  return v13;
}

- (BOOL)getCapabilityInfo:(id)a3 forContext:(id)a4 cache:(id)a5
{
  v5 = [(PSUICoreTelephonyCapabilitiesCache *)self getCapabilityInfoObject:a3 forContext:a4 cache:a5];
  v6 = [v5 BOOLValue];

  return v6;
}

- (id)getCapabilityInfoObject:(id)a3 forContext:(id)a4 cache:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "slotID")}];
  v12 = [v10 capabilityFetched];
  v13 = [v12 objectForKeyedSubscript:v11];
  v14 = [v13 isEqual:MEMORY[0x277CBEC38]];

  if ((v14 & 1) == 0)
  {
    [(PSUICoreTelephonyCapabilitiesCache *)self fetchCanSetCapabilityWithCache:v10 forContext:v9];
  }

  v15 = self;
  objc_sync_enter(v15);
  v16 = [v10 getCapabilityInfoObject:v8 forSlotID:{objc_msgSend(v9, "slotID")}];
  objc_sync_exit(v15);

  return v16;
}

- (void)setCapabilityInfoObject:(id)a3 forKey:(id)a4 forContext:(id)a5 cache:(id)a6
{
  v14 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = self;
  objc_sync_enter(v13);
  [v12 setCapabilityInfoObject:v14 forKey:v10 forSlotID:{objc_msgSend(v11, "slotID")}];
  objc_sync_exit(v13);
}

- (void)fetchCapabilityEnabledWithCache:(id)a3 forContext:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PSUICoreTelephonyCapabilitiesCache *)self getLogger];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2658DE000, v8, OS_LOG_TYPE_DEFAULT, "Executing capability enabled fetch", buf, 2u);
  }

  v22 = 0;
  client = self->_client;
  v10 = [v6 capabilityName];
  v21 = 0;
  v11 = [(CoreTelephonyClient *)client context:v7 getCapability:v10 status:&v22 with:&v21];
  v12 = v21;

  if (v11)
  {
    v13 = [(PSUICoreTelephonyCapabilitiesCache *)self getLogger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v24 = v7;
      v25 = 2112;
      v26 = v11;
      _os_log_error_impl(&dword_2658DE000, v13, OS_LOG_TYPE_ERROR, "Capability enabled fetch failed for %@: %@", buf, 0x16u);
    }

    v14 = 0;
  }

  else
  {
    v15 = [v12 objectForKey:*MEMORY[0x277CC3818]];
    v14 = [v15 BOOLValue];

    v13 = [(PSUICoreTelephonyCapabilitiesCache *)self getLogger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = @"NO";
      *buf = 138413058;
      if (v14)
      {
        v17 = @"YES";
      }

      else
      {
        v17 = @"NO";
      }

      v24 = v7;
      v25 = 2112;
      if (v22)
      {
        v16 = @"YES";
      }

      v26 = v17;
      v27 = 2112;
      v28 = v16;
      v29 = 2112;
      v30 = v12;
      _os_log_impl(&dword_2658DE000, v13, OS_LOG_TYPE_DEFAULT, "Fetch for capability for %@, Allowed: %@, Enabled: %@, %@", buf, 0x2Au);
    }
  }

  v18 = self;
  objc_sync_enter(v18);
  v19 = [v7 slotID];
  [v6 acceptCapabilityforSlotID:v19 status:v22 canSet:v14 info:v12];
  objc_sync_exit(v18);

  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)capabilityEnabledForContext:(id)a3 cache:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "slotID")}];
  v9 = [v7 enabledFetched];
  v10 = [v9 objectForKeyedSubscript:v8];
  v11 = [v10 isEqual:MEMORY[0x277CBEC38]];

  if ((v11 & 1) == 0)
  {
    [(PSUICoreTelephonyCapabilitiesCache *)self fetchCapabilityEnabledWithCache:v7 forContext:v6];
  }

  v12 = self;
  objc_sync_enter(v12);
  v13 = [v7 getEnabledForSlotID:{objc_msgSend(v6, "slotID")}];
  objc_sync_exit(v12);

  return v13;
}

- (BOOL)canSetCapabilityVoLTE:(id)a3
{
  v4 = a3;
  v5 = [(PSUICoreTelephonyCapabilitiesCache *)self volteCapability];
  LOBYTE(self) = [(PSUICoreTelephonyCapabilitiesCache *)self canSetCapabilityForContext:v4 cache:v5];

  return self;
}

- (BOOL)cannotChangeVoLTESettingCallCarrier:(id)a3
{
  v4 = *MEMORY[0x277CC3820];
  v5 = a3;
  v6 = [(PSUICoreTelephonyCapabilitiesCache *)self volteCapability];
  LOBYTE(self) = [(PSUICoreTelephonyCapabilitiesCache *)self getCapabilityInfo:v4 forContext:v5 cache:v6];

  return self;
}

- (BOOL)isVoLTEStillProvisioningForContext:(id)a3
{
  v4 = *MEMORY[0x277CC3810];
  v5 = a3;
  v6 = [(PSUICoreTelephonyCapabilitiesCache *)self volteCapability];
  LOBYTE(self) = [(PSUICoreTelephonyCapabilitiesCache *)self getCapabilityInfo:v4 forContext:v5 cache:v6];

  return self;
}

- (BOOL)capabilityEnabledVoLTE:(id)a3
{
  v4 = a3;
  v5 = [(PSUICoreTelephonyCapabilitiesCache *)self volteCapability];
  LOBYTE(self) = [(PSUICoreTelephonyCapabilitiesCache *)self capabilityEnabledForContext:v4 cache:v5];

  return self;
}

- (BOOL)fetchDeviceAndPlan5GSupport:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  client = self->_client;
  v15 = 0;
  v6 = [(CoreTelephonyClient *)client getSupports5G:v4 error:&v15];
  v7 = v15;
  v8 = [(PSUICoreTelephonyCapabilitiesCache *)self getLogger];
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v7;
      _os_log_error_impl(&dword_2658DE000, v9, OS_LOG_TYPE_ERROR, "Fetch failed: %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v6 BOOLValue];
    v11 = @"NO";
    if (v10)
    {
      v11 = @"YES";
    }

    *buf = 138412546;
    v17 = v4;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&dword_2658DE000, v9, OS_LOG_TYPE_DEFAULT, "Fetch succeeded: %@, %@", buf, 0x16u);
  }

  v12 = [v6 BOOLValue];
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)canSetCapabilityVoNR:(id)a3
{
  v4 = a3;
  v5 = [(PSUICoreTelephonyCapabilitiesCache *)self vonrCapability];
  LOBYTE(self) = [(PSUICoreTelephonyCapabilitiesCache *)self canSetCapabilityForContext:v4 cache:v5];

  return self;
}

- (BOOL)capabilityEnabledVoNR:(id)a3
{
  v4 = a3;
  v5 = [(PSUICoreTelephonyCapabilitiesCache *)self vonrCapability];
  LOBYTE(self) = [(PSUICoreTelephonyCapabilitiesCache *)self capabilityEnabledForContext:v4 cache:v5];

  return self;
}

- (BOOL)canSetTurnOffCellular:(id)a3
{
  v4 = a3;
  v5 = [(PSUICoreTelephonyCapabilitiesCache *)self turnOffCellularCapability];
  LOBYTE(self) = [(PSUICoreTelephonyCapabilitiesCache *)self canSetCapabilityForContext:v4 cache:v5];

  return self;
}

- (BOOL)getTurnOffCellular:(id)a3
{
  v4 = a3;
  v5 = [(PSUICoreTelephonyCapabilitiesCache *)self turnOffCellularCapability];
  LOBYTE(self) = [(PSUICoreTelephonyCapabilitiesCache *)self capabilityEnabledForContext:v4 cache:v5];

  return self;
}

- (BOOL)canSetNetworkSlicing:(id)a3
{
  v4 = a3;
  v5 = [(PSUICoreTelephonyCapabilitiesCache *)self networkSlicingCapability];
  LOBYTE(self) = [(PSUICoreTelephonyCapabilitiesCache *)self canSetCapabilityForContext:v4 cache:v5];

  return self;
}

- (BOOL)getNetworkSlicing:(id)a3
{
  v4 = a3;
  v5 = [(PSUICoreTelephonyCapabilitiesCache *)self networkSlicingCapability];
  LOBYTE(self) = [(PSUICoreTelephonyCapabilitiesCache *)self capabilityEnabledForContext:v4 cache:v5];

  return self;
}

- (id)networkSlicingCategories:(id)a3
{
  v4 = *MEMORY[0x277CC3B28];
  v5 = a3;
  v6 = [(PSUICoreTelephonyCapabilitiesCache *)self networkSlicingCapability];
  v7 = [(PSUICoreTelephonyCapabilitiesCache *)self getCapabilityInfoObject:v4 forContext:v5 cache:v6];

  return v7;
}

- (void)setNetworkSlicingCategories:(id)a3 forContext:(id)a4
{
  v6 = *MEMORY[0x277CC3B28];
  v7 = a4;
  v8 = a3;
  v9 = [(PSUICoreTelephonyCapabilitiesCache *)self networkSlicingCapability];
  [(PSUICoreTelephonyCapabilitiesCache *)self setCapabilityInfoObject:v8 forKey:v6 forContext:v7 cache:v9];
}

- (BOOL)canSetSatelliteCapability:(id)a3
{
  v4 = a3;
  v5 = [(PSUICoreTelephonyCapabilitiesCache *)self satelliteCapability];
  LOBYTE(self) = [(PSUICoreTelephonyCapabilitiesCache *)self canSetCapabilityForContext:v4 cache:v5];

  return self;
}

- (BOOL)getSatelliteCapability:(id)a3
{
  v4 = a3;
  v5 = [(PSUICoreTelephonyCapabilitiesCache *)self satelliteCapability];
  LOBYTE(self) = [(PSUICoreTelephonyCapabilitiesCache *)self capabilityEnabledForContext:v4 cache:v5];

  return self;
}

- (void)context:(id)a3 capabilitiesChanged:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PSUICoreTelephonyCapabilitiesCache *)self getLogger];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v47 = 138412546;
    v48 = v6;
    v49 = 2112;
    v50 = v7;
    _os_log_impl(&dword_2658DE000, v8, OS_LOG_TYPE_DEFAULT, "capabilitiesChanged: %@, %@", &v47, 0x16u);
  }

  v9 = [v7 objectForKey:*MEMORY[0x277CC37F8]];
  v10 = v9;
  v11 = MEMORY[0x277CC3818];
  v12 = MEMORY[0x277CC3838];
  if (v9)
  {
    v13 = [v9 objectForKey:*MEMORY[0x277CC3818]];
    v14 = [v13 BOOLValue];

    v15 = [v10 objectForKey:*v12];
    v16 = [v15 BOOLValue];

    v17 = [(PSUICoreTelephonyCapabilitiesCache *)self volteCapability];
    [v17 acceptCapabilityforSlotID:objc_msgSend(v6 status:"slotID") canSet:v16 info:{v14, v10}];
  }

  v18 = [v7 objectForKey:*MEMORY[0x277CC3800]];
  v19 = v18;
  if (v18)
  {
    v20 = [v18 objectForKey:*v11];
    v21 = [v20 BOOLValue];

    v22 = [v19 objectForKey:*v12];
    v23 = [v22 BOOLValue];

    v24 = [(PSUICoreTelephonyCapabilitiesCache *)self vonrCapability];
    [v24 acceptCapabilityforSlotID:objc_msgSend(v6 status:"slotID") canSet:v23 info:{v21, v19}];
  }

  v25 = [v7 objectForKey:*MEMORY[0x277CC3840]];
  v26 = v25;
  if (v25)
  {
    v27 = [v25 objectForKey:*v11];
    v28 = [v27 BOOLValue];

    v29 = [v26 objectForKey:*v12];
    v30 = [v29 BOOLValue];

    v31 = [(PSUICoreTelephonyCapabilitiesCache *)self turnOffCellularCapability];
    [v31 acceptCapabilityforSlotID:objc_msgSend(v6 status:"slotID") canSet:v30 info:{v28, v26}];
  }

  v32 = [v7 objectForKey:*MEMORY[0x277CC3828]];
  v33 = v32;
  if (v32)
  {
    v34 = [v32 objectForKey:*v11];
    v35 = [v34 BOOLValue];

    v36 = [v33 objectForKey:*v12];
    v37 = [v36 BOOLValue];

    v38 = [(PSUICoreTelephonyCapabilitiesCache *)self networkSlicingCapability];
    [v38 acceptCapabilityforSlotID:objc_msgSend(v6 status:"slotID") canSet:v37 info:{v35, v33}];
  }

  v39 = [v7 objectForKey:*MEMORY[0x277CC3830]];
  v40 = v39;
  if (v39)
  {
    v41 = [v39 objectForKey:*v11];
    v42 = [v41 BOOLValue];

    v43 = [v40 objectForKey:*v12];
    v44 = [v43 BOOLValue];

    v45 = [(PSUICoreTelephonyCapabilitiesCache *)self satelliteCapability];
    [v45 acceptCapabilityforSlotID:objc_msgSend(v6 status:"slotID") canSet:v44 info:{v42, v40}];
  }

  v46 = *MEMORY[0x277D85DE8];
}

- (void)clearCache
{
  v3 = [(PSUICoreTelephonyCapabilitiesCache *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "Clearing capabilities cache", v9, 2u);
  }

  v4 = [(PSUICoreTelephonyCapabilitiesCache *)self volteCapability];
  [v4 reset];

  v5 = [(PSUICoreTelephonyCapabilitiesCache *)self vonrCapability];
  [v5 reset];

  v6 = [(PSUICoreTelephonyCapabilitiesCache *)self turnOffCellularCapability];
  [v6 reset];

  v7 = [(PSUICoreTelephonyCapabilitiesCache *)self networkSlicingCapability];
  [v7 reset];

  v8 = [(PSUICoreTelephonyCapabilitiesCache *)self satelliteCapability];
  [v8 reset];
}

@end