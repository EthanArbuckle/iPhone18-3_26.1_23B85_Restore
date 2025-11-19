@interface WiFiTelephonyClient
+ (id)sharedInstance;
- (BOOL)isCellular5GActive;
- (BOOL)isCellularDataInRoaming;
- (BOOL)isCellularLTEActive;
- (NSString)cellularDataIndicator;
- (NSString)cellularICCID;
- (NSString)cellularInterfaceName;
- (NSString)description;
- (WiFiTelephonyClient)init;
- (id)_dataIndicatorToString:(int)a3;
- (id)_getCurrentDataServiceContext;
- (void)_getCurrentDataServiceContext;
- (void)_updateCellularMEIAndDataStatus;
- (void)carrierBundleChange:(id)a3;
- (void)displayStatusChanged:(id)a3 status:(id)a4;
- (void)imsRegistrationChanged:(id)a3 info:(id)a4;
@end

@implementation WiFiTelephonyClient

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[WiFiTelephonyClient sharedInstance];
  }

  v3 = sharedInstance_sharedClient;

  return v3;
}

uint64_t __37__WiFiTelephonyClient_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(WiFiTelephonyClient);
  v1 = sharedInstance_sharedClient;
  sharedInstance_sharedClient = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (WiFiTelephonyClient)init
{
  v13.receiver = self;
  v13.super_class = WiFiTelephonyClient;
  v2 = [(WiFiTelephonyClient *)&v13 init];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.wifi.telephony-client", v3);
  internalQueue = v2->_internalQueue;
  v2->_internalQueue = v4;

  v6 = [objc_alloc(MEMORY[0x277CC37B8]) initWithQueue:v2->_internalQueue];
  coreTelephonyClient = v2->_coreTelephonyClient;
  v2->_coreTelephonyClient = v6;

  [(CoreTelephonyClient *)v2->_coreTelephonyClient setDelegate:v2];
  v8 = v2->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__WiFiTelephonyClient_init__block_invoke;
  block[3] = &unk_2789C6630;
  v9 = v2;
  v12 = v9;
  dispatch_async(v8, block);

  return v9;
}

void __27__WiFiTelephonyClient_init__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateCellularMEIAndDataStatus];
  v2 = [*(a1 + 32) cellularDataStatusChangedHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) cellularDataStatusChangedHandler];
    v3[2]();
  }
}

- (id)_getCurrentDataServiceContext
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(WiFiTelephonyClient *)self coreTelephonyClient];

  if (v3)
  {
    v4 = [(WiFiTelephonyClient *)self coreTelephonyClient];
    v24 = 0;
    v5 = [v4 getSubscriptionInfoWithError:&v24];
    v6 = v24;
    v7 = [v5 subscriptions];

    v8 = [(WiFiTelephonyClient *)self coreTelephonyClient];
    v23 = v6;
    v9 = [v8 getCurrentDataSubscriptionContextSync:&v23];
    v10 = v23;

    if (!v9)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v11 = v7;
      v9 = [v11 countByEnumeratingWithState:&v19 objects:v25 count:16];
      if (v9)
      {
        v12 = *v20;
        while (2)
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v20 != v12)
            {
              objc_enumerationMutation(v11);
            }

            v14 = *(*(&v19 + 1) + 8 * i);
            v15 = [v14 userDataPreferred];
            v16 = [v15 intValue];

            if (v16)
            {
              v9 = v14;
              goto LABEL_16;
            }
          }

          v9 = [v11 countByEnumeratingWithState:&v19 objects:v25 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

LABEL_16:
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [WiFiTelephonyClient _getCurrentDataServiceContext];
    }

    v9 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)_updateCellularMEIAndDataStatus
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[WiFiTelephonyClient _updateCellularMEIAndDataStatus]";
  _os_log_error_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: nil subscription", &v1, 0xCu);
  v0 = *MEMORY[0x277D85DE8];
}

void __54__WiFiTelephonyClient__updateCellularMEIAndDataStatus__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) internalQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__WiFiTelephonyClient__updateCellularMEIAndDataStatus__block_invoke_2;
  v7[3] = &unk_2789C6608;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __54__WiFiTelephonyClient__updateCellularMEIAndDataStatus__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) isRegistered] && objc_msgSend(*(a1 + 32), "contextType") == 1;
  v3 = *(a1 + 40);

  return [v3 setImsRegistrationActiveAndOnWiFi:v2];
}

void __66__WiFiTelephonyClient_reliableNetworkFallbackChanged_userEnabled___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCellularFallbackEnabled:*(a1 + 40)];
  v2 = [*(a1 + 32) cellularFallbackStatusChangedHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) cellularFallbackStatusChangedHandler];
    v3[2]();
  }
}

- (void)imsRegistrationChanged:(id)a3 info:(id)a4
{
  v5 = a4;
  v6 = [(WiFiTelephonyClient *)self internalQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__WiFiTelephonyClient_imsRegistrationChanged_info___block_invoke;
  v8[3] = &unk_2789C6608;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(v6, v8);
}

void __51__WiFiTelephonyClient_imsRegistrationChanged_info___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isRegistered] && objc_msgSend(*(a1 + 32), "contextType") == 1;
  [*(a1 + 40) setImsRegistrationActiveAndOnWiFi:v2];
  v3 = [*(a1 + 40) imsRegistrationStatusChangedHandler];

  if (v3)
  {
    v4 = [*(a1 + 40) imsRegistrationStatusChangedHandler];
    v4[2]();
  }
}

void __82__WiFiTelephonyClient_connectionStateChanged_connection_dataConnectionStatusInfo___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateCellularMEIAndDataStatus];
  v2 = [*(a1 + 32) cellularDataStatusChangedHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) cellularDataStatusChangedHandler];
    v3[2]();
  }
}

- (void)displayStatusChanged:(id)a3 status:(id)a4
{
  v5 = [(WiFiTelephonyClient *)self internalQueue:a3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__WiFiTelephonyClient_displayStatusChanged_status___block_invoke;
  block[3] = &unk_2789C6630;
  block[4] = self;
  dispatch_async(v5, block);
}

void __51__WiFiTelephonyClient_displayStatusChanged_status___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateCellularMEIAndDataStatus];
  v2 = [*(a1 + 32) cellularDataStatusChangedHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) cellularDataStatusChangedHandler];
    v3[2]();
  }
}

- (void)carrierBundleChange:(id)a3
{
  v4 = [(WiFiTelephonyClient *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__WiFiTelephonyClient_carrierBundleChange___block_invoke;
  block[3] = &unk_2789C6630;
  block[4] = self;
  dispatch_async(v4, block);
}

void __43__WiFiTelephonyClient_carrierBundleChange___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateCellularMEIAndDataStatus];
  v2 = [*(a1 + 32) cellularDataStatusChangedHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) cellularDataStatusChangedHandler];
    v3[2]();
  }
}

- (id)_dataIndicatorToString:(int)a3
{
  if (a3 > 0x12)
  {
    return @"unknown";
  }

  else
  {
    return off_2789C7DB8[a3];
  }
}

- (BOOL)isCellular5GActive
{
  v2 = [(WiFiTelephonyClient *)self dataStatus];
  [v2 indicator];

  return 0;
}

- (BOOL)isCellularLTEActive
{
  v2 = [(WiFiTelephonyClient *)self dataStatus];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 indicator] > 6;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)isCellularDataInRoaming
{
  v2 = [(WiFiTelephonyClient *)self registrationStatus];
  v3 = [v2 isEqualToString:*MEMORY[0x277CC3E78]];

  return v3;
}

- (NSString)cellularICCID
{
  v2 = [(WiFiTelephonyClient *)self mobileEquipmentInfo];
  v3 = [v2 ICCID];

  return v3;
}

- (NSString)cellularInterfaceName
{
  v2 = [(WiFiTelephonyClient *)self connectionStatus];
  v3 = [v2 interfaceName];

  return v3;
}

- (NSString)cellularDataIndicator
{
  v3 = [(WiFiTelephonyClient *)self dataStatus];
  v4 = -[WiFiTelephonyClient _dataIndicatorToString:](self, "_dataIndicatorToString:", [v3 indicator]);

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"undefined";
  }

  v6 = v5;

  return &v5->isa;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:%p ", v5, self];

  v7 = [(WiFiTelephonyClient *)self cellularDataIndicator];
  [v6 appendFormat:@"Indicator:%@ ", v7];

  v8 = [(WiFiTelephonyClient *)self radioAccessTechnology];
  [v6 appendFormat:@"RAT:%@ ", v8];

  v9 = [(WiFiTelephonyClient *)self registrationStatus];
  [v6 appendFormat:@"Reg:%@ ", v9];

  v10 = [(WiFiTelephonyClient *)self cellularInterfaceName];
  [v6 appendFormat:@"IfName:%@ ", v10];

  v11 = [(WiFiTelephonyClient *)self carrierName];
  [v6 appendFormat:@"Carrier:%@ ", v11];

  if ([(WiFiTelephonyClient *)self isCellular5GSupported])
  {
    v12 = @"Y";
  }

  else
  {
    v12 = @"N";
  }

  [v6 appendFormat:@"5GSupported:%@ ", v12];
  if ([(WiFiTelephonyClient *)self isCellularFallbackEnabled])
  {
    v13 = @"Y";
  }

  else
  {
    v13 = @"N";
  }

  [v6 appendFormat:@"RNFEnabled:%@ ", v13];
  if ([(WiFiTelephonyClient *)self isIMSRegistrationActiveAndOnWiFi])
  {
    v14 = @"Y";
  }

  else
  {
    v14 = @"N";
  }

  [v6 appendFormat:@"IMSOnWiFi:%@", v14];
  [v6 appendString:@">"];

  return v6;
}

- (void)_getCurrentDataServiceContext
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[WiFiTelephonyClient _getCurrentDataServiceContext]";
  _os_log_error_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: nil coreTelephonyClient", &v1, 0xCu);
  v0 = *MEMORY[0x277D85DE8];
}

@end