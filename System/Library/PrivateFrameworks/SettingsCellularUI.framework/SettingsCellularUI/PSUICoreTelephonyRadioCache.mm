@interface PSUICoreTelephonyRadioCache
+ (id)sharedInstance;
- (PSUICoreTelephonyRadioCache)init;
- (PSUICoreTelephonyRadioCache)initWithCoreTelephonyClient:(id)a3;
- (id)checkBasebandConfigUpdateInfo;
- (id)initPrivate;
- (int)checkCellularHealthStatus;
- (void)dealloc;
- (void)willEnterForeground;
@end

@implementation PSUICoreTelephonyRadioCache

+ (id)sharedInstance
{
  if (qword_28156A6A0 != -1)
  {
    dispatch_once(&qword_28156A6A0, &__block_literal_global_2);
  }

  v3 = _MergedGlobals_59;

  return v3;
}

uint64_t __45__PSUICoreTelephonyRadioCache_sharedInstance__block_invoke()
{
  _MergedGlobals_59 = [[PSUICoreTelephonyRadioCache alloc] initPrivate];

  return MEMORY[0x2821F96F8]();
}

- (id)initPrivate
{
  v8.receiver = self;
  v8.super_class = PSUICoreTelephonyRadioCache;
  v2 = [(PSUICoreTelephonyRadioCache *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CC37B0]);
    v4 = [MEMORY[0x277D4D878] createCTClientSerialQueue:@"radio_queue"];
    v5 = [v3 initWithQueue:v4];

    v2 = [(PSUICoreTelephonyRadioCache *)v2 initWithCoreTelephonyClient:v5];
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:v2 selector:sel_willEnterForeground name:*MEMORY[0x277D76758] object:0];
  }

  return v2;
}

- (PSUICoreTelephonyRadioCache)init
{
  v2 = [(PSUICoreTelephonyRadioCache *)self getLogger];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&dword_2658DE000, v2, OS_LOG_TYPE_ERROR, "Unsupported initializer called", v3, 2u);
  }

  objc_exception_throw([objc_alloc(MEMORY[0x277CBEAD8]) initWithName:@"Unsupported initializer" reason:@"Unsupported initializer called" userInfo:0]);
}

- (PSUICoreTelephonyRadioCache)initWithCoreTelephonyClient:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PSUICoreTelephonyRadioCache;
  v6 = [(PSUICoreTelephonyRadioCache *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_coreTelephonyClient, a3);
    [(CoreTelephonyClient *)v7->_coreTelephonyClient setDelegate:v7];
    [(PSUICoreTelephonyRadioCache *)v7 setHealthStatusFetched:0];
    [(PSUICoreTelephonyRadioCache *)v7 setHealthStatus:0];
    [(PSUICoreTelephonyRadioCache *)v7 setHealthDiagCode:-255];
    [(PSUICoreTelephonyRadioCache *)v7 setHealthDiagSubCode:0];
    [(PSUICoreTelephonyRadioCache *)v7 setBbConfigUpdateStatusFetched:0];
  }

  return v7;
}

- (void)willEnterForeground
{
  [(PSUICoreTelephonyRadioCache *)self setHealthStatusFetched:0];

  [(PSUICoreTelephonyRadioCache *)self setBbConfigUpdateStatusFetched:0];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PSUICoreTelephonyRadioCache;
  [(PSUICoreTelephonyRadioCache *)&v4 dealloc];
}

- (int)checkCellularHealthStatus
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  if ([(PSUICoreTelephonyRadioCache *)v2 healthStatusFetched])
  {
    v3 = [(PSUICoreTelephonyRadioCache *)v2 getLogger];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v21) = [(PSUICoreTelephonyRadioCache *)v2 healthStatus];
      _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "skip query and return healthStatus %d", buf, 8u);
    }

    v4 = [(PSUICoreTelephonyRadioCache *)v2 healthStatus];
    objc_sync_exit(v2);
  }

  else
  {
    objc_sync_exit(v2);

    coreTelephonyClient = v2->_coreTelephonyClient;
    v19 = 0;
    v6 = [(CoreTelephonyClient *)coreTelephonyClient checkCellularDiagnosticsStatusDetails:&v19];
    v8 = v7;
    v9 = v19;
    if (v9)
    {
      v10 = [(PSUICoreTelephonyRadioCache *)v2 getLogger];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v21 = v9;
        _os_log_error_impl(&dword_2658DE000, v10, OS_LOG_TYPE_ERROR, "checking cellular health status error: %@", buf, 0xCu);
      }
    }

    v11 = v2;
    objc_sync_enter(v11);
    [(PSUICoreTelephonyRadioCache *)v11 setHealthStatusFetched:1];
    if (v8 < 0)
    {
      [(PSUICoreTelephonyRadioCache *)v11 setHealthDiagCode:v8];
      v12 = 0;
    }

    else
    {
      [(PSUICoreTelephonyRadioCache *)v11 setHealthDiagCode:v8];
      v12 = BYTE1(v8);
    }

    [(PSUICoreTelephonyRadioCache *)v11 setHealthDiagSubCode:v12];
    [(PSUICoreTelephonyRadioCache *)v11 setHealthStatus:(v6 - 2) < 3];
    objc_sync_exit(v11);

    v13 = [(PSUICoreTelephonyRadioCache *)v11 getLogger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(PSUICoreTelephonyRadioCache *)v11 healthStatus];
      v15 = [(PSUICoreTelephonyRadioCache *)v11 healthDiagCode];
      v16 = [(PSUICoreTelephonyRadioCache *)v11 healthDiagSubCode];
      *buf = 136316418;
      v21 = "[PSUICoreTelephonyRadioCache checkCellularHealthStatus]";
      v22 = 1024;
      v23 = v14;
      v24 = 2048;
      v25 = v15;
      v26 = 2048;
      v27 = v16;
      v28 = 2048;
      v29 = v6;
      v30 = 2048;
      v31 = v8;
      _os_log_impl(&dword_2658DE000, v13, OS_LOG_TYPE_DEFAULT, "%s Cellular health status updated to %d (diagCode=%ld, subCode=%ld) [Reported value: status=%ld, code=%ld]", buf, 0x3Au);
    }

    v4 = [(PSUICoreTelephonyRadioCache *)v11 healthStatus];
    v2 = v9;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)checkBasebandConfigUpdateInfo
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  if ([(PSUICoreTelephonyRadioCache *)v2 bbConfigUpdateStatusFetched])
  {
    v3 = [(PSUICoreTelephonyRadioCache *)v2 getLogger];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(PSUICoreTelephonyRadioCache *)v2 basebandConfigUpdateTime];
      *buf = 138412290;
      v21 = v4;
      _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "Skip query and return baseband config update time %@", buf, 0xCu);
    }

    v5 = [(PSUICoreTelephonyRadioCache *)v2 basebandConfigUpdateTime];
    objc_sync_exit(v2);
  }

  else
  {
    objc_sync_exit(v2);

    coreTelephonyClient = v2->_coreTelephonyClient;
    v19 = 0;
    v7 = [(CoreTelephonyClient *)coreTelephonyClient checkBasebandConfigUpdateInfo:&v19];
    v8 = v19;
    if (v7)
    {
      v9 = [(PSUICoreTelephonyRadioCache *)v2 getLogger];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v21 = v7;
        _os_log_error_impl(&dword_2658DE000, v9, OS_LOG_TYPE_ERROR, "Checking baseband config update info error: %@", buf, 0xCu);
      }

      v5 = 0;
    }

    else
    {
      v10 = v2;
      objc_sync_enter(v10);
      [(PSUICoreTelephonyRadioCache *)v10 setBbConfigUpdateStatusFetched:1];
      v11 = [(PSUICoreTelephonyRadioCache *)v10 getLogger];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(PSUICoreTelephonyRadioCache *)v8 configType];
        v13 = [(PSUICoreTelephonyRadioCache *)v8 updatedTime];
        v14 = [(PSUICoreTelephonyRadioCache *)v8 updatedDetails];
        *buf = 138412802;
        v21 = v12;
        v22 = 2112;
        v23 = v13;
        v24 = 2112;
        v25 = v14;
        _os_log_impl(&dword_2658DE000, v11, OS_LOG_TYPE_DEFAULT, "Baseband config update info: type=%@, time=%@ details=%@", buf, 0x20u);
      }

      v15 = [(PSUICoreTelephonyRadioCache *)v8 updatedTime];
      [(PSUICoreTelephonyRadioCache *)v10 setBasebandConfigUpdateTime:v15];

      v16 = [(PSUICoreTelephonyRadioCache *)v8 updatedDetails];
      [(PSUICoreTelephonyRadioCache *)v10 setBasebandConfigUpdateDetails:v16];

      objc_sync_exit(v10);
      v5 = [(PSUICoreTelephonyRadioCache *)v8 updatedTime];
    }

    v2 = v8;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v5;
}

@end