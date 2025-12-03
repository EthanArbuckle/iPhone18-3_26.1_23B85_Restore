@interface WPAdvertising
+ (id)puckTypeToString:(unsigned __int8)string;
+ (unsigned)puckStringToType:(id)type;
- (WPAdvertising)initWithDelegate:(id)delegate queue:(id)queue;
- (id)parseCompanyData:(id)data;
- (void)advertisingStoppedOfType:(unsigned __int8)type withError:(id)error;
- (void)deregisterService:(id)service;
- (void)invalidate;
- (void)registerService:(id)service;
- (void)stateDidChange:(int64_t)change;
@end

@implementation WPAdvertising

- (WPAdvertising)initWithDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = WPAdvertising;
  v8 = [(WPClient *)&v11 initWithQueue:queue machName:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_delegate, delegate);
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

+ (unsigned)puckStringToType:(id)type
{
  if ([type isEqualToString:@"WPBeaconTypeCompany"])
  {
    return 2;
  }

  else
  {
    return 28;
  }
}

+ (id)puckTypeToString:(unsigned __int8)string
{
  if (string == 2)
  {
    return @"WPBeaconTypeCompany";
  }

  stringCopy = string;
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"WPAdvertising.m" lineNumber:79 description:{@"Unknown puck type %ld", stringCopy}];

  return 0;
}

- (void)registerService:(id)service
{
  serviceCopy = service;
  if (WPLogInitOnce != -1)
  {
    [WPAdvertising registerService:];
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [(WPAdvertising *)serviceCopy registerService:v5, v6, v7, v8, v9, v10, v11];
  }

  v12 = [serviceCopy objectForKeyedSubscript:@"WPBeaconType"];
  v13 = [WPAdvertising puckStringToType:v12];

  v14 = [WPAdvertisingRequest requestForClientType:v13];
  if (v13 == 2)
  {
    v15 = [(WPAdvertising *)self parseCompanyData:serviceCopy];
    [v14 setAdvertisingData:v15];

    if (+[WPClient isHomePodOrIOS])
    {
      v16 = [serviceCopy objectForKeyedSubscript:@"WPBeaconAdvInterval"];

      if (v16)
      {
        v17 = [serviceCopy objectForKeyedSubscript:@"WPBeaconAdvInterval"];
        [v14 setAdvertisingRate:{objc_msgSend(v17, "integerValue")}];
      }
    }
  }

  v18.receiver = self;
  v18.super_class = WPAdvertising;
  [(WPClient *)&v18 startAdvertising:v14];
}

- (void)deregisterService:(id)service
{
  serviceCopy = service;
  if (WPLogInitOnce != -1)
  {
    [WPAdvertising deregisterService:];
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [(WPAdvertising *)serviceCopy deregisterService:v5, v6, v7, v8, v9, v10, v11];
  }

  v12 = [serviceCopy objectForKeyedSubscript:@"WPBeaconType"];
  v13 = [WPAdvertising puckStringToType:v12];

  v14 = [WPAdvertisingRequest requestForClientType:v13];
  v15.receiver = self;
  v15.super_class = WPAdvertising;
  [(WPClient *)&v15 stopAdvertising:v14];
}

- (void)stateDidChange:(int64_t)change
{
  v7.receiver = self;
  v7.super_class = WPAdvertising;
  [(WPClient *)&v7 stateDidChange:change];
  delegate = [(WPAdvertising *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(WPAdvertising *)self delegate];
    [delegate2 advertiserDidUpdateState:self];
  }
}

- (void)advertisingStoppedOfType:(unsigned __int8)type withError:(id)error
{
  errorCopy = error;
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

- (id)parseCompanyData:(id)data
{
  v22[3] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v4 = [dataCopy objectForKeyedSubscript:@"WPBeaconTypeCompanyMajor"];
  v5 = [dataCopy objectForKeyedSubscript:@"WPBeaconTypeCompanyMinor"];
  v6 = [dataCopy objectForKeyedSubscript:@"WPBeaconTX"];
  v7 = [dataCopy objectForKeyedSubscript:@"WPBeaconTypeCompanyUUID"];
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
      [(WPAdvertising *)dataCopy parseCompanyData:v9, v10, v11, v12, v13, v14, v15];
    }
  }

  BYTE4(v22[2]) = [v6 integerValue];
  if (+[WPClient isHomePodOrIOS])
  {
    v16 = [dataCopy objectForKeyedSubscript:@"WPBeaconTypeCompanyConfig"];
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