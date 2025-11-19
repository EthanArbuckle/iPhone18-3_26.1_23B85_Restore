@interface WPAdvertising
+ (id)puckTypeToString:(unsigned __int8)a3;
+ (unsigned)puckStringToType:(id)a3;
- (WPAdvertising)initWithDelegate:(id)a3 queue:(id)a4;
- (id)parseCompanyData:(id)a3;
- (void)advertisingStoppedOfType:(unsigned __int8)a3 withError:(id)a4;
- (void)deregisterService:(id)a3;
- (void)invalidate;
- (void)registerService:(id)a3;
- (void)stateDidChange:(int64_t)a3;
@end

@implementation WPAdvertising

- (WPAdvertising)initWithDelegate:(id)a3 queue:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = WPAdvertising;
  v8 = [(WPClient *)&v11 initWithQueue:a4 machName:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_delegate, a3);
  }

  return v9;
}

- (void)invalidate
{
  [(WPAdvertising *)self setDelegate:0];
  v3.receiver = self;
  v3.super_class = WPAdvertising;
  [(WPClient *)&v3 invalidate];
}

+ (unsigned)puckStringToType:(id)a3
{
  if ([a3 isEqualToString:@"WPBeaconTypeCompany"])
  {
    return 2;
  }

  else
  {
    return 28;
  }
}

+ (id)puckTypeToString:(unsigned __int8)a3
{
  if (a3 == 2)
  {
    return @"WPBeaconTypeCompany";
  }

  v4 = a3;
  v7 = [MEMORY[0x277CCA890] currentHandler];
  [v7 handleFailureInMethod:a2 object:a1 file:@"WPAdvertising.m" lineNumber:79 description:{@"Unknown puck type %ld", v4}];

  return 0;
}

- (void)registerService:(id)a3
{
  v4 = a3;
  if (WPLogInitOnce != -1)
  {
    [WPAdvertising registerService:];
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [(WPAdvertising *)v4 registerService:v5, v6, v7, v8, v9, v10, v11];
  }

  v12 = [v4 objectForKeyedSubscript:@"WPBeaconType"];
  v13 = [WPAdvertising puckStringToType:v12];

  v14 = [WPAdvertisingRequest requestForClientType:v13];
  if (v13 == 2)
  {
    v15 = [(WPAdvertising *)self parseCompanyData:v4];
    [v14 setAdvertisingData:v15];

    if (+[WPClient isHomePodOrIOS])
    {
      v16 = [v4 objectForKeyedSubscript:@"WPBeaconAdvInterval"];

      if (v16)
      {
        v17 = [v4 objectForKeyedSubscript:@"WPBeaconAdvInterval"];
        [v14 setAdvertisingRate:{objc_msgSend(v17, "integerValue")}];
      }
    }
  }

  v18.receiver = self;
  v18.super_class = WPAdvertising;
  [(WPClient *)&v18 startAdvertising:v14];
}

- (void)deregisterService:(id)a3
{
  v4 = a3;
  if (WPLogInitOnce != -1)
  {
    [WPAdvertising deregisterService:];
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [(WPAdvertising *)v4 deregisterService:v5, v6, v7, v8, v9, v10, v11];
  }

  v12 = [v4 objectForKeyedSubscript:@"WPBeaconType"];
  v13 = [WPAdvertising puckStringToType:v12];

  v14 = [WPAdvertisingRequest requestForClientType:v13];
  v15.receiver = self;
  v15.super_class = WPAdvertising;
  [(WPClient *)&v15 stopAdvertising:v14];
}

- (void)stateDidChange:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = WPAdvertising;
  [(WPClient *)&v7 stateDidChange:a3];
  v4 = [(WPAdvertising *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(WPAdvertising *)self delegate];
    [v6 advertiserDidUpdateState:self];
  }
}

- (void)advertisingStoppedOfType:(unsigned __int8)a3 withError:(id)a4
{
  v4 = a4;
  if (WPLogInitOnce != -1)
  {
    [WPAdvertising advertisingStoppedOfType:withError:];
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [WPAdvertising advertisingStoppedOfType:v5 withError:?];
  }
}

- (id)parseCompanyData:(id)a3
{
  v22[3] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"WPBeaconTypeCompanyMajor"];
  v5 = [v3 objectForKeyedSubscript:@"WPBeaconTypeCompanyMinor"];
  v6 = [v3 objectForKeyedSubscript:@"WPBeaconTX"];
  v7 = [v3 objectForKeyedSubscript:@"WPBeaconTypeCompanyUUID"];
  v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v7];
  memset(v22, 0, 22);
  [v8 getUUIDBytes:v22];
  if (v4)
  {
    LOBYTE(v22[2]) = [v4 integerValue] >> 8;
    BYTE1(v22[2]) = [v4 integerValue];
    if (v5)
    {
      BYTE2(v22[2]) = [v5 integerValue] >> 8;
      BYTE3(v22[2]) = [v5 integerValue];
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPAdvertising parseCompanyData:];
    }

    v9 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [(WPAdvertising *)v3 parseCompanyData:v9, v10, v11, v12, v13, v14, v15];
    }
  }

  BYTE4(v22[2]) = [v6 integerValue];
  if (+[WPClient isHomePodOrIOS])
  {
    v16 = [v3 objectForKeyedSubscript:@"WPBeaconTypeCompanyConfig"];
    v17 = v16;
    if (v16)
    {
      BYTE5(v22[2]) = [v16 integerValue];
      v18 = 22;
    }

    else
    {
      v18 = 21;
    }
  }

  else
  {
    v18 = 21;
  }

  v19 = [MEMORY[0x277CBEA90] dataWithBytes:v22 length:v18];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)registerService:(uint64_t)a3 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_274327000, a2, a3, "Attempting to register WPAdvertising client with data: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)deregisterService:(uint64_t)a3 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_274327000, a2, a3, "Attempting to deregister WPAdvertiisng client with data %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)parseCompanyData:(uint64_t)a3 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_274327000, a2, a3, "No major value set for WPAdvertising request %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end