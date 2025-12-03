@interface PSUICoreTelephonyCapabilitiesCache
+ (id)sharedInstance;
- (BOOL)canSetCapabilityForContext:(id)context cache:(id)cache;
- (BOOL)canSetCapabilityVoLTE:(id)e;
- (BOOL)canSetCapabilityVoNR:(id)r;
- (BOOL)canSetNetworkSlicing:(id)slicing;
- (BOOL)canSetSatelliteCapability:(id)capability;
- (BOOL)canSetTurnOffCellular:(id)cellular;
- (BOOL)cannotChangeVoLTESettingCallCarrier:(id)carrier;
- (BOOL)capabilityEnabledForContext:(id)context cache:(id)cache;
- (BOOL)capabilityEnabledVoLTE:(id)e;
- (BOOL)capabilityEnabledVoNR:(id)r;
- (BOOL)fetchDeviceAndPlan5GSupport:(id)support;
- (BOOL)getCapabilityInfo:(id)info forContext:(id)context cache:(id)cache;
- (BOOL)getNetworkSlicing:(id)slicing;
- (BOOL)getSatelliteCapability:(id)capability;
- (BOOL)getTurnOffCellular:(id)cellular;
- (BOOL)isVoLTEStillProvisioningForContext:(id)context;
- (PSUICoreTelephonyCapabilitiesCache)init;
- (id)getCapabilityInfoObject:(id)object forContext:(id)context cache:(id)cache;
- (id)initPrivate;
- (id)networkSlicingCategories:(id)categories;
- (void)clearCache;
- (void)context:(id)context capabilitiesChanged:(id)changed;
- (void)fetchCanSetCapabilityWithCache:(id)cache forContext:(id)context;
- (void)fetchCapabilityEnabledWithCache:(id)cache forContext:(id)context;
- (void)setCapabilityInfoObject:(id)object forKey:(id)key forContext:(id)context cache:(id)cache;
- (void)setNetworkSlicingCategories:(id)categories forContext:(id)context;
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
    mEMORY[0x277D4D868] = [MEMORY[0x277D4D868] sharedInstance];
    simStatusCache = v2->_simStatusCache;
    v2->_simStatusCache = mEMORY[0x277D4D868];

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

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_willEnterForeground name:*MEMORY[0x277D76758] object:0];
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

- (void)fetchCanSetCapabilityWithCache:(id)cache forContext:(id)context
{
  v31 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  contextCopy = context;
  getLogger = [(PSUICoreTelephonyCapabilitiesCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = contextCopy;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Executing can set capability fetch for %@", buf, 0xCu);
  }

  v22 = 0;
  client = self->_client;
  capabilityName = [cacheCopy capabilityName];
  v21 = 0;
  v11 = [(CoreTelephonyClient *)client context:contextCopy canSetCapability:capabilityName allowed:&v22 with:&v21];
  v12 = v21;

  if (v11)
  {
    getLogger2 = [(PSUICoreTelephonyCapabilitiesCache *)self getLogger];
    if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v24 = contextCopy;
      v25 = 2112;
      v26 = v11;
      _os_log_error_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_ERROR, "Can set fetch for %@ failed: %@", buf, 0x16u);
    }

    bOOLValue = 0;
  }

  else
  {
    v15 = [v12 objectForKey:*MEMORY[0x277CC3838]];
    bOOLValue = [v15 BOOLValue];

    getLogger2 = [(PSUICoreTelephonyCapabilitiesCache *)self getLogger];
    if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
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

      v24 = contextCopy;
      if (bOOLValue)
      {
        v16 = @"YES";
      }

      v25 = 2112;
      v26 = v17;
      v27 = 2112;
      v28 = v16;
      v29 = 2112;
      v30 = v12;
      _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "Can set fetch for %@, Allowed: %@, Enabled: %@, %@", buf, 0x2Au);
    }
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  slotID = [contextCopy slotID];
  [cacheCopy acceptCapabilityforSlotID:slotID status:bOOLValue canSet:v22 info:v12];
  objc_sync_exit(selfCopy);

  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)canSetCapabilityForContext:(id)context cache:(id)cache
{
  contextCopy = context;
  cacheCopy = cache;
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(contextCopy, "slotID")}];
  capabilityFetched = [cacheCopy capabilityFetched];
  v10 = [capabilityFetched objectForKeyedSubscript:v8];
  v11 = [v10 isEqual:MEMORY[0x277CBEC38]];

  if ((v11 & 1) == 0)
  {
    [(PSUICoreTelephonyCapabilitiesCache *)self fetchCanSetCapabilityWithCache:cacheCopy forContext:contextCopy];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v13 = [cacheCopy getCapabilityForSlotID:{objc_msgSend(contextCopy, "slotID")}];
  objc_sync_exit(selfCopy);

  return v13;
}

- (BOOL)getCapabilityInfo:(id)info forContext:(id)context cache:(id)cache
{
  v5 = [(PSUICoreTelephonyCapabilitiesCache *)self getCapabilityInfoObject:info forContext:context cache:cache];
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (id)getCapabilityInfoObject:(id)object forContext:(id)context cache:(id)cache
{
  objectCopy = object;
  contextCopy = context;
  cacheCopy = cache;
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(contextCopy, "slotID")}];
  capabilityFetched = [cacheCopy capabilityFetched];
  v13 = [capabilityFetched objectForKeyedSubscript:v11];
  v14 = [v13 isEqual:MEMORY[0x277CBEC38]];

  if ((v14 & 1) == 0)
  {
    [(PSUICoreTelephonyCapabilitiesCache *)self fetchCanSetCapabilityWithCache:cacheCopy forContext:contextCopy];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v16 = [cacheCopy getCapabilityInfoObject:objectCopy forSlotID:{objc_msgSend(contextCopy, "slotID")}];
  objc_sync_exit(selfCopy);

  return v16;
}

- (void)setCapabilityInfoObject:(id)object forKey:(id)key forContext:(id)context cache:(id)cache
{
  objectCopy = object;
  keyCopy = key;
  contextCopy = context;
  cacheCopy = cache;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [cacheCopy setCapabilityInfoObject:objectCopy forKey:keyCopy forSlotID:{objc_msgSend(contextCopy, "slotID")}];
  objc_sync_exit(selfCopy);
}

- (void)fetchCapabilityEnabledWithCache:(id)cache forContext:(id)context
{
  v31 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  contextCopy = context;
  getLogger = [(PSUICoreTelephonyCapabilitiesCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Executing capability enabled fetch", buf, 2u);
  }

  v22 = 0;
  client = self->_client;
  capabilityName = [cacheCopy capabilityName];
  v21 = 0;
  v11 = [(CoreTelephonyClient *)client context:contextCopy getCapability:capabilityName status:&v22 with:&v21];
  v12 = v21;

  if (v11)
  {
    getLogger2 = [(PSUICoreTelephonyCapabilitiesCache *)self getLogger];
    if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v24 = contextCopy;
      v25 = 2112;
      v26 = v11;
      _os_log_error_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_ERROR, "Capability enabled fetch failed for %@: %@", buf, 0x16u);
    }

    bOOLValue = 0;
  }

  else
  {
    v15 = [v12 objectForKey:*MEMORY[0x277CC3818]];
    bOOLValue = [v15 BOOLValue];

    getLogger2 = [(PSUICoreTelephonyCapabilitiesCache *)self getLogger];
    if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
    {
      v16 = @"NO";
      *buf = 138413058;
      if (bOOLValue)
      {
        v17 = @"YES";
      }

      else
      {
        v17 = @"NO";
      }

      v24 = contextCopy;
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
      _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "Fetch for capability for %@, Allowed: %@, Enabled: %@, %@", buf, 0x2Au);
    }
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  slotID = [contextCopy slotID];
  [cacheCopy acceptCapabilityforSlotID:slotID status:v22 canSet:bOOLValue info:v12];
  objc_sync_exit(selfCopy);

  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)capabilityEnabledForContext:(id)context cache:(id)cache
{
  contextCopy = context;
  cacheCopy = cache;
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(contextCopy, "slotID")}];
  enabledFetched = [cacheCopy enabledFetched];
  v10 = [enabledFetched objectForKeyedSubscript:v8];
  v11 = [v10 isEqual:MEMORY[0x277CBEC38]];

  if ((v11 & 1) == 0)
  {
    [(PSUICoreTelephonyCapabilitiesCache *)self fetchCapabilityEnabledWithCache:cacheCopy forContext:contextCopy];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v13 = [cacheCopy getEnabledForSlotID:{objc_msgSend(contextCopy, "slotID")}];
  objc_sync_exit(selfCopy);

  return v13;
}

- (BOOL)canSetCapabilityVoLTE:(id)e
{
  eCopy = e;
  volteCapability = [(PSUICoreTelephonyCapabilitiesCache *)self volteCapability];
  LOBYTE(self) = [(PSUICoreTelephonyCapabilitiesCache *)self canSetCapabilityForContext:eCopy cache:volteCapability];

  return self;
}

- (BOOL)cannotChangeVoLTESettingCallCarrier:(id)carrier
{
  v4 = *MEMORY[0x277CC3820];
  carrierCopy = carrier;
  volteCapability = [(PSUICoreTelephonyCapabilitiesCache *)self volteCapability];
  LOBYTE(self) = [(PSUICoreTelephonyCapabilitiesCache *)self getCapabilityInfo:v4 forContext:carrierCopy cache:volteCapability];

  return self;
}

- (BOOL)isVoLTEStillProvisioningForContext:(id)context
{
  v4 = *MEMORY[0x277CC3810];
  contextCopy = context;
  volteCapability = [(PSUICoreTelephonyCapabilitiesCache *)self volteCapability];
  LOBYTE(self) = [(PSUICoreTelephonyCapabilitiesCache *)self getCapabilityInfo:v4 forContext:contextCopy cache:volteCapability];

  return self;
}

- (BOOL)capabilityEnabledVoLTE:(id)e
{
  eCopy = e;
  volteCapability = [(PSUICoreTelephonyCapabilitiesCache *)self volteCapability];
  LOBYTE(self) = [(PSUICoreTelephonyCapabilitiesCache *)self capabilityEnabledForContext:eCopy cache:volteCapability];

  return self;
}

- (BOOL)fetchDeviceAndPlan5GSupport:(id)support
{
  v20 = *MEMORY[0x277D85DE8];
  supportCopy = support;
  client = self->_client;
  v15 = 0;
  v6 = [(CoreTelephonyClient *)client getSupports5G:supportCopy error:&v15];
  v7 = v15;
  getLogger = [(PSUICoreTelephonyCapabilitiesCache *)self getLogger];
  v9 = getLogger;
  if (v7)
  {
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v7;
      _os_log_error_impl(&dword_2658DE000, v9, OS_LOG_TYPE_ERROR, "Fetch failed: %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    bOOLValue = [v6 BOOLValue];
    v11 = @"NO";
    if (bOOLValue)
    {
      v11 = @"YES";
    }

    *buf = 138412546;
    v17 = supportCopy;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&dword_2658DE000, v9, OS_LOG_TYPE_DEFAULT, "Fetch succeeded: %@, %@", buf, 0x16u);
  }

  bOOLValue2 = [v6 BOOLValue];
  v13 = *MEMORY[0x277D85DE8];
  return bOOLValue2;
}

- (BOOL)canSetCapabilityVoNR:(id)r
{
  rCopy = r;
  vonrCapability = [(PSUICoreTelephonyCapabilitiesCache *)self vonrCapability];
  LOBYTE(self) = [(PSUICoreTelephonyCapabilitiesCache *)self canSetCapabilityForContext:rCopy cache:vonrCapability];

  return self;
}

- (BOOL)capabilityEnabledVoNR:(id)r
{
  rCopy = r;
  vonrCapability = [(PSUICoreTelephonyCapabilitiesCache *)self vonrCapability];
  LOBYTE(self) = [(PSUICoreTelephonyCapabilitiesCache *)self capabilityEnabledForContext:rCopy cache:vonrCapability];

  return self;
}

- (BOOL)canSetTurnOffCellular:(id)cellular
{
  cellularCopy = cellular;
  turnOffCellularCapability = [(PSUICoreTelephonyCapabilitiesCache *)self turnOffCellularCapability];
  LOBYTE(self) = [(PSUICoreTelephonyCapabilitiesCache *)self canSetCapabilityForContext:cellularCopy cache:turnOffCellularCapability];

  return self;
}

- (BOOL)getTurnOffCellular:(id)cellular
{
  cellularCopy = cellular;
  turnOffCellularCapability = [(PSUICoreTelephonyCapabilitiesCache *)self turnOffCellularCapability];
  LOBYTE(self) = [(PSUICoreTelephonyCapabilitiesCache *)self capabilityEnabledForContext:cellularCopy cache:turnOffCellularCapability];

  return self;
}

- (BOOL)canSetNetworkSlicing:(id)slicing
{
  slicingCopy = slicing;
  networkSlicingCapability = [(PSUICoreTelephonyCapabilitiesCache *)self networkSlicingCapability];
  LOBYTE(self) = [(PSUICoreTelephonyCapabilitiesCache *)self canSetCapabilityForContext:slicingCopy cache:networkSlicingCapability];

  return self;
}

- (BOOL)getNetworkSlicing:(id)slicing
{
  slicingCopy = slicing;
  networkSlicingCapability = [(PSUICoreTelephonyCapabilitiesCache *)self networkSlicingCapability];
  LOBYTE(self) = [(PSUICoreTelephonyCapabilitiesCache *)self capabilityEnabledForContext:slicingCopy cache:networkSlicingCapability];

  return self;
}

- (id)networkSlicingCategories:(id)categories
{
  v4 = *MEMORY[0x277CC3B28];
  categoriesCopy = categories;
  networkSlicingCapability = [(PSUICoreTelephonyCapabilitiesCache *)self networkSlicingCapability];
  v7 = [(PSUICoreTelephonyCapabilitiesCache *)self getCapabilityInfoObject:v4 forContext:categoriesCopy cache:networkSlicingCapability];

  return v7;
}

- (void)setNetworkSlicingCategories:(id)categories forContext:(id)context
{
  v6 = *MEMORY[0x277CC3B28];
  contextCopy = context;
  categoriesCopy = categories;
  networkSlicingCapability = [(PSUICoreTelephonyCapabilitiesCache *)self networkSlicingCapability];
  [(PSUICoreTelephonyCapabilitiesCache *)self setCapabilityInfoObject:categoriesCopy forKey:v6 forContext:contextCopy cache:networkSlicingCapability];
}

- (BOOL)canSetSatelliteCapability:(id)capability
{
  capabilityCopy = capability;
  satelliteCapability = [(PSUICoreTelephonyCapabilitiesCache *)self satelliteCapability];
  LOBYTE(self) = [(PSUICoreTelephonyCapabilitiesCache *)self canSetCapabilityForContext:capabilityCopy cache:satelliteCapability];

  return self;
}

- (BOOL)getSatelliteCapability:(id)capability
{
  capabilityCopy = capability;
  satelliteCapability = [(PSUICoreTelephonyCapabilitiesCache *)self satelliteCapability];
  LOBYTE(self) = [(PSUICoreTelephonyCapabilitiesCache *)self capabilityEnabledForContext:capabilityCopy cache:satelliteCapability];

  return self;
}

- (void)context:(id)context capabilitiesChanged:(id)changed
{
  v51 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  changedCopy = changed;
  getLogger = [(PSUICoreTelephonyCapabilitiesCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v47 = 138412546;
    v48 = contextCopy;
    v49 = 2112;
    v50 = changedCopy;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "capabilitiesChanged: %@, %@", &v47, 0x16u);
  }

  v9 = [changedCopy objectForKey:*MEMORY[0x277CC37F8]];
  v10 = v9;
  v11 = MEMORY[0x277CC3818];
  v12 = MEMORY[0x277CC3838];
  if (v9)
  {
    v13 = [v9 objectForKey:*MEMORY[0x277CC3818]];
    bOOLValue = [v13 BOOLValue];

    v15 = [v10 objectForKey:*v12];
    bOOLValue2 = [v15 BOOLValue];

    volteCapability = [(PSUICoreTelephonyCapabilitiesCache *)self volteCapability];
    [volteCapability acceptCapabilityforSlotID:objc_msgSend(contextCopy status:"slotID") canSet:bOOLValue2 info:{bOOLValue, v10}];
  }

  v18 = [changedCopy objectForKey:*MEMORY[0x277CC3800]];
  v19 = v18;
  if (v18)
  {
    v20 = [v18 objectForKey:*v11];
    bOOLValue3 = [v20 BOOLValue];

    v22 = [v19 objectForKey:*v12];
    bOOLValue4 = [v22 BOOLValue];

    vonrCapability = [(PSUICoreTelephonyCapabilitiesCache *)self vonrCapability];
    [vonrCapability acceptCapabilityforSlotID:objc_msgSend(contextCopy status:"slotID") canSet:bOOLValue4 info:{bOOLValue3, v19}];
  }

  v25 = [changedCopy objectForKey:*MEMORY[0x277CC3840]];
  v26 = v25;
  if (v25)
  {
    v27 = [v25 objectForKey:*v11];
    bOOLValue5 = [v27 BOOLValue];

    v29 = [v26 objectForKey:*v12];
    bOOLValue6 = [v29 BOOLValue];

    turnOffCellularCapability = [(PSUICoreTelephonyCapabilitiesCache *)self turnOffCellularCapability];
    [turnOffCellularCapability acceptCapabilityforSlotID:objc_msgSend(contextCopy status:"slotID") canSet:bOOLValue6 info:{bOOLValue5, v26}];
  }

  v32 = [changedCopy objectForKey:*MEMORY[0x277CC3828]];
  v33 = v32;
  if (v32)
  {
    v34 = [v32 objectForKey:*v11];
    bOOLValue7 = [v34 BOOLValue];

    v36 = [v33 objectForKey:*v12];
    bOOLValue8 = [v36 BOOLValue];

    networkSlicingCapability = [(PSUICoreTelephonyCapabilitiesCache *)self networkSlicingCapability];
    [networkSlicingCapability acceptCapabilityforSlotID:objc_msgSend(contextCopy status:"slotID") canSet:bOOLValue8 info:{bOOLValue7, v33}];
  }

  v39 = [changedCopy objectForKey:*MEMORY[0x277CC3830]];
  v40 = v39;
  if (v39)
  {
    v41 = [v39 objectForKey:*v11];
    bOOLValue9 = [v41 BOOLValue];

    v43 = [v40 objectForKey:*v12];
    bOOLValue10 = [v43 BOOLValue];

    satelliteCapability = [(PSUICoreTelephonyCapabilitiesCache *)self satelliteCapability];
    [satelliteCapability acceptCapabilityforSlotID:objc_msgSend(contextCopy status:"slotID") canSet:bOOLValue10 info:{bOOLValue9, v40}];
  }

  v46 = *MEMORY[0x277D85DE8];
}

- (void)clearCache
{
  getLogger = [(PSUICoreTelephonyCapabilitiesCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Clearing capabilities cache", v9, 2u);
  }

  volteCapability = [(PSUICoreTelephonyCapabilitiesCache *)self volteCapability];
  [volteCapability reset];

  vonrCapability = [(PSUICoreTelephonyCapabilitiesCache *)self vonrCapability];
  [vonrCapability reset];

  turnOffCellularCapability = [(PSUICoreTelephonyCapabilitiesCache *)self turnOffCellularCapability];
  [turnOffCellularCapability reset];

  networkSlicingCapability = [(PSUICoreTelephonyCapabilitiesCache *)self networkSlicingCapability];
  [networkSlicingCapability reset];

  satelliteCapability = [(PSUICoreTelephonyCapabilitiesCache *)self satelliteCapability];
  [satelliteCapability reset];
}

@end