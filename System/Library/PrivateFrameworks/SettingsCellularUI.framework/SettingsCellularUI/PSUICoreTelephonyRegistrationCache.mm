@interface PSUICoreTelephonyRegistrationCache
+ (PSUICoreTelephonyRegistrationCache)sharedInstance;
- (BOOL)IMSStatusSMS:(id)a3;
- (BOOL)IMSStatusVoice:(id)a3;
- (BOOL)RCSStatus:(id)a3;
- (BOOL)is2GEnabledForContext:(id)a3;
- (BOOL)is2GSwitchSupportedForContext:(id)a3;
- (PSUICoreTelephonyRegistrationCache)init;
- (id)initPrivate;
- (id)localizedOperatorName:(id)a3;
- (id)rejectCauseCode:(id)a3;
- (id)supportedDataRates:(id)a3;
- (int64_t)maxDataRate:(id)a3;
- (void)clearCache;
- (void)dataRatesChanged;
- (void)fetch2GSwitchEnabled;
- (void)fetch2GSwitchSupported;
- (void)fetchIMSStatus;
- (void)fetchLocalizedOperatorName;
- (void)fetchMaxDataRate;
- (void)fetchRCSStatus;
- (void)fetchRejectCauseCode;
- (void)fetchSupportedDataRates;
- (void)handleDataUsageChanged;
- (void)imsRegistrationChanged:(id)a3 info:(id)a4;
- (void)operatorNameChanged:(id)a3 name:(id)a4;
- (void)setMaxDataRate:(id)a3 dataRate:(int64_t)a4;
@end

@implementation PSUICoreTelephonyRegistrationCache

+ (PSUICoreTelephonyRegistrationCache)sharedInstance
{
  if (qword_28156A7B0 != -1)
  {
    dispatch_once(&qword_28156A7B0, &__block_literal_global_19);
  }

  v3 = _MergedGlobals_74;

  return v3;
}

uint64_t __52__PSUICoreTelephonyRegistrationCache_sharedInstance__block_invoke()
{
  _MergedGlobals_74 = [[PSUICoreTelephonyRegistrationCache alloc] initPrivate];

  return MEMORY[0x2821F96F8]();
}

- (id)initPrivate
{
  v11.receiver = self;
  v11.super_class = PSUICoreTelephonyRegistrationCache;
  v2 = [(PSUICoreTelephonyRegistrationCache *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CC37B0]);
    v4 = [MEMORY[0x277D4D878] createCTClientSerialQueue:@"registration_cache"];
    v5 = [v3 initWithQueue:v4];
    client = v2->_client;
    v2->_client = v5;

    [(CoreTelephonyClient *)v2->_client setDelegate:v2];
    [(PSUICoreTelephonyRegistrationCache *)v2 setImsStatusVoiceDict:0];
    [(PSUICoreTelephonyRegistrationCache *)v2 setImsStatusSMSDict:0];
    [(PSUICoreTelephonyRegistrationCache *)v2 setRcsStatusDict:0];
    [(PSUICoreTelephonyRegistrationCache *)v2 setRejectCauseCodeDict:0];
    [(PSUICoreTelephonyRegistrationCache *)v2 setSupportedDataRatesDict:0];
    [(PSUICoreTelephonyRegistrationCache *)v2 setMaxDataRateDict:0];
    [(PSUICoreTelephonyRegistrationCache *)v2 setOperatorNameDict:0];
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:v2 selector:sel_clearCache name:*MEMORY[0x277D76758] object:0];

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v2 selector:sel_clearCache name:*MEMORY[0x277D4D888] object:0];

    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 addObserver:v2 selector:sel_handleDataUsageChanged name:*MEMORY[0x277D4D8A8] object:0];
  }

  return v2;
}

- (PSUICoreTelephonyRegistrationCache)init
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315138;
    v4 = "[PSUICoreTelephonyRegistrationCache init]";
    _os_log_error_impl(&dword_2658DE000, v2, OS_LOG_TYPE_ERROR, "Error: unsupported initializer called: %s", &v3, 0xCu);
  }

  objc_exception_throw([objc_alloc(MEMORY[0x277CBEAD8]) initWithName:@"Unsupported initializer" reason:@"Unsupported initializer called" userInfo:0]);
}

- (void)clearCache
{
  v3 = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "Clearing registration cache", v5, 2u);
  }

  v4 = self;
  objc_sync_enter(v4);
  [(PSUICoreTelephonyRegistrationCache *)v4 setImsStatusVoiceDict:0];
  [(PSUICoreTelephonyRegistrationCache *)v4 setImsStatusSMSDict:0];
  [(PSUICoreTelephonyRegistrationCache *)v4 setRcsStatusDict:0];
  [(PSUICoreTelephonyRegistrationCache *)v4 setRejectCauseCodeDict:0];
  [(PSUICoreTelephonyRegistrationCache *)v4 setSupportedDataRatesDict:0];
  [(PSUICoreTelephonyRegistrationCache *)v4 setMaxDataRateDict:0];
  [(PSUICoreTelephonyRegistrationCache *)v4 setDataRate2GSupportedDict:0];
  [(PSUICoreTelephonyRegistrationCache *)v4 setDataRate2GEnabledDict:0];
  [(PSUICoreTelephonyRegistrationCache *)v4 setOperatorNameDict:0];
  objc_sync_exit(v4);
}

- (void)handleDataUsageChanged
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  [(PSUICoreTelephonyRegistrationCache *)v2 setMaxDataRateDict:0];
  v3 = [MEMORY[0x277CCAB88] notificationWithName:@"PSMaxDataRateChangedNotification" object:0];
  v4 = [(PSUICoreTelephonyRegistrationCache *)v2 getLogger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[PSUICoreTelephonyRegistrationCache handleDataUsageChanged]";
    v9 = 2112;
    v10 = @"PSMaxDataRateChangedNotification";
    _os_log_impl(&dword_2658DE000, v4, OS_LOG_TYPE_DEFAULT, "%s posting notification %@ from main thread", &v7, 0x16u);
  }

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 performSelectorOnMainThread:sel_postNotification_ withObject:v3 waitUntilDone:0];

  objc_sync_exit(v2);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)fetchIMSStatus
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v34 = "[PSUICoreTelephonyRegistrationCache fetchIMSStatus]";
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "%s executing fetch", buf, 0xCu);
  }

  v4 = [MEMORY[0x277D4D868] sharedInstance];
  v5 = [v4 subscriptionContexts];

  v26 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v6)
  {
    v8 = *v30;
    *&v7 = 136315906;
    v24 = v7;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        client = self->_client;
        v28 = 0;
        v12 = [(CoreTelephonyClient *)client getIMSRegistrationStatus:v10 error:&v28, v24];
        v13 = v28;
        v14 = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        if (v13)
        {
          if (v15)
          {
            *buf = 136315650;
            v34 = "[PSUICoreTelephonyRegistrationCache fetchIMSStatus]";
            v35 = 2112;
            v36 = v13;
            v37 = 2112;
            v38 = v10;
            _os_log_impl(&dword_2658DE000, v14, OS_LOG_TYPE_DEFAULT, "%s fetch failed: %@, %@", buf, 0x20u);
          }
        }

        else
        {
          if (v15)
          {
            if ([v12 isRegisteredForVoice])
            {
              v16 = @"YES";
            }

            else
            {
              v16 = @"NO";
            }

            v17 = [v12 isRegisteredForSMS];
            *buf = v24;
            v18 = @"NO";
            if (v17)
            {
              v18 = @"YES";
            }

            v34 = "[PSUICoreTelephonyRegistrationCache fetchIMSStatus]";
            v35 = 2112;
            v36 = v16;
            v37 = 2112;
            v38 = v18;
            v39 = 2112;
            v40 = v10;
            _os_log_impl(&dword_2658DE000, v14, OS_LOG_TYPE_DEFAULT, "%s fetch succeeded: %@, %@, %@", buf, 0x2Au);
          }

          v19 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v12, "isRegisteredForVoice")}];
          v20 = [MEMORY[0x277CCABB0] numberWithInteger:{-[__CFString slotID](v10, "slotID")}];
          [v26 setObject:v19 forKeyedSubscript:v20];

          v14 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v12, "isRegisteredForSMS")}];
          v21 = [MEMORY[0x277CCABB0] numberWithInteger:{-[__CFString slotID](v10, "slotID")}];
          [v25 setObject:v14 forKeyedSubscript:v21];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v29 objects:v41 count:16];
    }

    while (v6);
  }

  v22 = self;
  objc_sync_enter(v22);
  [(PSUICoreTelephonyRegistrationCache *)v22 setImsStatusVoiceDict:v26];
  [(PSUICoreTelephonyRegistrationCache *)v22 setImsStatusSMSDict:v25];
  objc_sync_exit(v22);

  v23 = *MEMORY[0x277D85DE8];
}

- (BOOL)IMSStatusVoice:(id)a3
{
  v4 = a3;
  v5 = [(PSUICoreTelephonyRegistrationCache *)self imsStatusVoiceDict];

  if (!v5)
  {
    [(PSUICoreTelephonyRegistrationCache *)self fetchIMSStatus];
  }

  v6 = self;
  objc_sync_enter(v6);
  v7 = [(PSUICoreTelephonyRegistrationCache *)v6 imsStatusVoiceDict];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "slotID")}];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = [v9 BOOLValue];
  }

  else
  {
    v10 = 0;
  }

  objc_sync_exit(v6);
  return v10;
}

- (BOOL)IMSStatusSMS:(id)a3
{
  v4 = a3;
  v5 = [(PSUICoreTelephonyRegistrationCache *)self imsStatusSMSDict];

  if (!v5)
  {
    [(PSUICoreTelephonyRegistrationCache *)self fetchIMSStatus];
  }

  v6 = self;
  objc_sync_enter(v6);
  v7 = [(PSUICoreTelephonyRegistrationCache *)v6 imsStatusSMSDict];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "slotID")}];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = [v9 BOOLValue];
  }

  else
  {
    v10 = 0;
  }

  objc_sync_exit(v6);
  return v10;
}

- (void)fetchRCSStatus
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "Fetching RCS status", buf, 2u);
  }

  v4 = [MEMORY[0x277D4D868] sharedInstance];
  v5 = [v4 subscriptionContexts];

  v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v7)
  {
    v9 = *v26;
    *&v8 = 138412546;
    v22 = v8;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        client = self->_client;
        v24 = 0;
        v13 = [(CoreTelephonyClient *)client getSystemConfiguration:v11 withError:&v24, v22];
        v14 = v24;
        if (v14)
        {
          v15 = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = v22;
            v30 = v14;
            v31 = 2112;
            v32 = v11;
            _os_log_error_impl(&dword_2658DE000, v15, OS_LOG_TYPE_ERROR, "RCS status fetch failed: %@, %@", buf, 0x16u);
          }
        }

        else
        {
          v16 = [v13 operationStatus];
          v17 = [v16 registrationState];

          v18 = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v22;
            v30 = v11;
            v31 = 2048;
            v32 = v17;
            _os_log_impl(&dword_2658DE000, v18, OS_LOG_TYPE_DEFAULT, "RCS status fetch succeeded, context: %@, registration state: %ld", buf, 0x16u);
          }

          if (v17 == 1)
          {
            [MEMORY[0x277CCABB0] numberWithBool:1];
          }

          else
          {
            [MEMORY[0x277CCABB0] numberWithBool:0];
          }
          v15 = ;
          v19 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v11, "slotID")}];
          [v23 setObject:v15 forKeyedSubscript:v19];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v7);
  }

  v20 = self;
  objc_sync_enter(v20);
  [(PSUICoreTelephonyRegistrationCache *)v20 setRcsStatusDict:v23];
  objc_sync_exit(v20);

  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)RCSStatus:(id)a3
{
  v4 = a3;
  v5 = [(PSUICoreTelephonyRegistrationCache *)self rcsStatusDict];

  if (!v5)
  {
    [(PSUICoreTelephonyRegistrationCache *)self fetchRCSStatus];
  }

  v6 = self;
  objc_sync_enter(v6);
  v7 = [(PSUICoreTelephonyRegistrationCache *)v6 rcsStatusDict];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "slotID")}];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = [v9 BOOLValue];
  }

  else
  {
    v10 = 0;
  }

  objc_sync_exit(v6);
  return v10;
}

- (void)imsRegistrationChanged:(id)a3 info:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[PSUICoreTelephonyRegistrationCache imsRegistrationChanged:info:]";
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_2658DE000, v8, OS_LOG_TYPE_DEFAULT, "%s updating: %@", &v11, 0x16u);
  }

  v9 = self;
  objc_sync_enter(v9);
  [(PSUICoreTelephonyRegistrationCache *)v9 setImsStatusVoiceDict:0];
  [(PSUICoreTelephonyRegistrationCache *)v9 setImsStatusSMSDict:0];
  objc_sync_exit(v9);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)fetchRejectCauseCode
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v27 = "[PSUICoreTelephonyRegistrationCache fetchRejectCauseCode]";
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "%s executing fetch", buf, 0xCu);
  }

  v4 = [MEMORY[0x277D4D868] sharedInstance];
  v5 = [v4 subscriptionContexts];

  v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v6)
  {
    v8 = *v23;
    *&v7 = 136315650;
    v18 = v7;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        client = self->_client;
        v21 = 0;
        v12 = [(CoreTelephonyClient *)client getRejectCauseCode:v10 error:&v21, v18];
        v13 = v21;
        v14 = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        if (v13)
        {
          if (v15)
          {
            *buf = 136315394;
            v27 = "[PSUICoreTelephonyRegistrationCache fetchRejectCauseCode]";
            v28 = 2112;
            v29 = v13;
            _os_log_impl(&dword_2658DE000, v14, OS_LOG_TYPE_DEFAULT, "%s fetch failed: %@", buf, 0x16u);
          }
        }

        else
        {
          if (v15)
          {
            *buf = v18;
            v27 = "[PSUICoreTelephonyRegistrationCache fetchRejectCauseCode]";
            v28 = 2112;
            v29 = v12;
            v30 = 2112;
            v31 = v10;
            _os_log_impl(&dword_2658DE000, v14, OS_LOG_TYPE_DEFAULT, "%s fetch succeeded: %@, %@", buf, 0x20u);
          }

          v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "slotID")}];
          [v19 setObject:v12 forKeyedSubscript:v14];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v6);
  }

  v16 = self;
  objc_sync_enter(v16);
  [(PSUICoreTelephonyRegistrationCache *)v16 setRejectCauseCodeDict:v19];
  objc_sync_exit(v16);

  v17 = *MEMORY[0x277D85DE8];
}

- (id)rejectCauseCode:(id)a3
{
  v4 = a3;
  v5 = [(PSUICoreTelephonyRegistrationCache *)self rejectCauseCodeDict];

  if (!v5)
  {
    [(PSUICoreTelephonyRegistrationCache *)self fetchRejectCauseCode];
  }

  v6 = self;
  objc_sync_enter(v6);
  v7 = [(PSUICoreTelephonyRegistrationCache *)v6 rejectCauseCodeDict];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "slotID")}];
  v9 = [v7 objectForKeyedSubscript:v8];

  objc_sync_exit(v6);

  return v9;
}

- (void)fetchSupportedDataRates
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v30 = "[PSUICoreTelephonyRegistrationCache fetchSupportedDataRates]";
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "%s executing fetch", buf, 0xCu);
  }

  v4 = [MEMORY[0x277D4D868] sharedInstance];
  v5 = [v4 subscriptionContexts];

  v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v6)
  {
    v8 = *v26;
    *&v7 = 136315650;
    v21 = v7;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        client = self->_client;
        v24 = 0;
        v12 = [(CoreTelephonyClient *)client getSupportedDataRates:v10 error:&v24, v21];
        v13 = v24;
        v14 = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        if (v13)
        {
          if (v15)
          {
            *buf = 136315394;
            v30 = "[PSUICoreTelephonyRegistrationCache fetchSupportedDataRates]";
            v31 = 2112;
            v32 = v13;
            _os_log_impl(&dword_2658DE000, v14, OS_LOG_TYPE_DEFAULT, "%s fetch failed: %@", buf, 0x16u);
          }
        }

        else
        {
          if (v15)
          {
            v16 = [v12 rates];
            *buf = v21;
            v30 = "[PSUICoreTelephonyRegistrationCache fetchSupportedDataRates]";
            v31 = 2112;
            v32 = v16;
            v33 = 2112;
            v34 = v10;
            _os_log_impl(&dword_2658DE000, v14, OS_LOG_TYPE_DEFAULT, "%s fetch succeeded: %@, %@", buf, 0x20u);
          }

          v14 = [v12 rates];
          v17 = [v14 copy];
          v18 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "slotID")}];
          [v22 setObject:v17 forKeyedSubscript:v18];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v25 objects:v35 count:16];
    }

    while (v6);
  }

  v19 = self;
  objc_sync_enter(v19);
  [(PSUICoreTelephonyRegistrationCache *)v19 setSupportedDataRatesDict:v22];
  objc_sync_exit(v19);

  v20 = *MEMORY[0x277D85DE8];
}

- (id)supportedDataRates:(id)a3
{
  v4 = a3;
  v5 = [(PSUICoreTelephonyRegistrationCache *)self supportedDataRatesDict];

  if (!v5)
  {
    [(PSUICoreTelephonyRegistrationCache *)self fetchSupportedDataRates];
  }

  v6 = self;
  objc_sync_enter(v6);
  v7 = [(PSUICoreTelephonyRegistrationCache *)v6 supportedDataRatesDict];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "slotID")}];
  v9 = [v7 objectForKeyedSubscript:v8];

  objc_sync_exit(v6);

  return v9;
}

- (void)fetchMaxDataRate
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v29 = "[PSUICoreTelephonyRegistrationCache fetchMaxDataRate]";
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "%s executing fetch", buf, 0xCu);
  }

  v4 = [MEMORY[0x277D4D868] sharedInstance];
  v5 = [v4 subscriptionContexts];

  v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v7)
  {
    v9 = *v25;
    *&v8 = 136315650;
    v21 = v8;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        client = self->_client;
        v23 = 0;
        v13 = [(CoreTelephonyClient *)client getMaxDataRate:v11 error:&v23, v21];
        v14 = v23;
        v15 = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
        if (v14)
        {
          if (v16)
          {
            *buf = 136315394;
            v29 = "[PSUICoreTelephonyRegistrationCache fetchMaxDataRate]";
            v30 = 2112;
            v31 = v14;
            _os_log_impl(&dword_2658DE000, v15, OS_LOG_TYPE_DEFAULT, "%s fetch failed: %@", buf, 0x16u);
          }
        }

        else
        {
          if (v16)
          {
            v17 = CTDataRateAsString();
            *buf = v21;
            v29 = "[PSUICoreTelephonyRegistrationCache fetchMaxDataRate]";
            v30 = 2080;
            v31 = v17;
            v32 = 2112;
            v33 = v11;
            _os_log_impl(&dword_2658DE000, v15, OS_LOG_TYPE_DEFAULT, "%s fetch succeeded: %s, %@", buf, 0x20u);
          }

          v15 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
          v18 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v11, "slotID")}];
          [v22 setObject:v15 forKeyedSubscript:v18];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v7);
  }

  v19 = self;
  objc_sync_enter(v19);
  [(PSUICoreTelephonyRegistrationCache *)v19 setMaxDataRateDict:v22];
  objc_sync_exit(v19);

  v20 = *MEMORY[0x277D85DE8];
}

- (int64_t)maxDataRate:(id)a3
{
  v4 = a3;
  v5 = [(PSUICoreTelephonyRegistrationCache *)self maxDataRateDict];

  if (!v5)
  {
    [(PSUICoreTelephonyRegistrationCache *)self fetchMaxDataRate];
  }

  v6 = self;
  objc_sync_enter(v6);
  v7 = [(PSUICoreTelephonyRegistrationCache *)v6 maxDataRateDict];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "slotID")}];
  v9 = [v7 objectForKeyedSubscript:v8];

  objc_sync_exit(v6);
  v10 = [v9 integerValue];

  return v10;
}

- (void)setMaxDataRate:(id)a3 dataRate:(int64_t)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v18 = "[PSUICoreTelephonyRegistrationCache setMaxDataRate:dataRate:]";
    v19 = 2048;
    v20 = a4;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_2658DE000, v7, OS_LOG_TYPE_DEFAULT, "%s setting: %li, %@", buf, 0x20u);
  }

  objc_initWeak(&location, self);
  v8 = [(CoreTelephonyClient *)self->_client setMaxDataRate:v6 rate:a4];
  if (v8)
  {
    v9 = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[PSUICoreTelephonyRegistrationCache setMaxDataRate:dataRate:]";
      v19 = 2112;
      v20 = v8;
      _os_log_error_impl(&dword_2658DE000, v9, OS_LOG_TYPE_ERROR, "%s set failed: %@", buf, 0x16u);
    }
  }

  else
  {
    v10 = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v18 = "[PSUICoreTelephonyRegistrationCache setMaxDataRate:dataRate:]";
      v19 = 2048;
      v20 = a4;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_2658DE000, v10, OS_LOG_TYPE_DEFAULT, "%s set succeeded: %li, %@", buf, 0x20u);
    }

    v9 = objc_loadWeakRetained(&location);
    objc_sync_enter(v9);
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    v12 = objc_loadWeakRetained(&location);
    v13 = [v12 maxDataRateDict];
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "slotID")}];
    [v13 setObject:v11 forKeyedSubscript:v14];

    objc_sync_exit(v9);
  }

  objc_destroyWeak(&location);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)dataRatesChanged
{
  v3 = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "Data Rates Changed. Clearing maxDataRate & supportedDataRates cache.", v6, 2u);
  }

  v4 = self;
  objc_sync_enter(v4);
  [(PSUICoreTelephonyRegistrationCache *)v4 setMaxDataRateDict:0];
  [(PSUICoreTelephonyRegistrationCache *)v4 setSupportedDataRatesDict:0];
  objc_sync_exit(v4);

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:@"PSMaxDataRateChangedNotification" object:0];
}

- (void)fetch2GSwitchSupported
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v29 = "[PSUICoreTelephonyRegistrationCache fetch2GSwitchSupported]";
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "%s executing fetch", buf, 0xCu);
  }

  v4 = [MEMORY[0x277D4D868] sharedInstance];
  v5 = [v4 subscriptionContexts];

  v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v6)
  {
    v8 = *v25;
    *&v7 = 136315650;
    v20 = v7;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        client = self->_client;
        v23 = 0;
        v12 = [(CoreTelephonyClient *)client getRegulatedRatsSwitchEnabledSync:v10 error:&v23, v20];
        v13 = v23;
        v14 = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        if (v13)
        {
          if (v15)
          {
            *buf = 136315394;
            v29 = "[PSUICoreTelephonyRegistrationCache fetch2GSwitchSupported]";
            v30 = 2112;
            v31 = v13;
            _os_log_impl(&dword_2658DE000, v14, OS_LOG_TYPE_DEFAULT, "%s fetch failed: %@", buf, 0x16u);
          }
        }

        else
        {
          if (v15)
          {
            v16 = [MEMORY[0x277CCABB0] numberWithBool:v12];
            *buf = v20;
            v29 = "[PSUICoreTelephonyRegistrationCache fetch2GSwitchSupported]";
            v30 = 2112;
            v31 = v16;
            v32 = 2112;
            v33 = v10;
            _os_log_impl(&dword_2658DE000, v14, OS_LOG_TYPE_DEFAULT, "%s fetch succeeded: %@, %@", buf, 0x20u);
          }

          v14 = [MEMORY[0x277CCABB0] numberWithBool:v12];
          v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "slotID")}];
          [v21 setObject:v14 forKeyedSubscript:v17];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v6);
  }

  v18 = self;
  objc_sync_enter(v18);
  [(PSUICoreTelephonyRegistrationCache *)v18 setDataRate2GSupportedDict:v21];
  objc_sync_exit(v18);

  v19 = *MEMORY[0x277D85DE8];
}

- (void)fetch2GSwitchEnabled
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v29 = "[PSUICoreTelephonyRegistrationCache fetch2GSwitchEnabled]";
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "%s executing fetch", buf, 0xCu);
  }

  v4 = [MEMORY[0x277D4D868] sharedInstance];
  v5 = [v4 subscriptionContexts];

  v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v6)
  {
    v8 = *v25;
    *&v7 = 136315650;
    v20 = v7;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        client = self->_client;
        v23 = 0;
        v12 = [(CoreTelephonyClient *)client getRegulatedRatsUserPreferenceSync:v10 error:&v23, v20];
        v13 = v23;
        v14 = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        if (v13)
        {
          if (v15)
          {
            *buf = 136315394;
            v29 = "[PSUICoreTelephonyRegistrationCache fetch2GSwitchEnabled]";
            v30 = 2112;
            v31 = v13;
            _os_log_impl(&dword_2658DE000, v14, OS_LOG_TYPE_DEFAULT, "%s fetch failed: %@", buf, 0x16u);
          }
        }

        else
        {
          if (v15)
          {
            v16 = [MEMORY[0x277CCABB0] numberWithBool:v12];
            *buf = v20;
            v29 = "[PSUICoreTelephonyRegistrationCache fetch2GSwitchEnabled]";
            v30 = 2112;
            v31 = v16;
            v32 = 2112;
            v33 = v10;
            _os_log_impl(&dword_2658DE000, v14, OS_LOG_TYPE_DEFAULT, "%s fetch succeeded: %@, %@", buf, 0x20u);
          }

          v14 = [MEMORY[0x277CCABB0] numberWithBool:v12];
          v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "slotID")}];
          [v21 setObject:v14 forKeyedSubscript:v17];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v6);
  }

  v18 = self;
  objc_sync_enter(v18);
  [(PSUICoreTelephonyRegistrationCache *)v18 setDataRate2GEnabledDict:v21];
  objc_sync_exit(v18);

  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)is2GSwitchSupportedForContext:(id)a3
{
  v4 = a3;
  v5 = [(PSUICoreTelephonyRegistrationCache *)self dataRate2GSupportedDict];

  if (!v5)
  {
    [(PSUICoreTelephonyRegistrationCache *)self fetch2GSwitchSupported];
  }

  v6 = self;
  objc_sync_enter(v6);
  v7 = [(PSUICoreTelephonyRegistrationCache *)v6 dataRate2GSupportedDict];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "slotID")}];
  v9 = [v7 objectForKeyedSubscript:v8];

  objc_sync_exit(v6);
  LOBYTE(v6) = [v9 BOOLValue];

  return v6;
}

- (BOOL)is2GEnabledForContext:(id)a3
{
  v4 = a3;
  v5 = [(PSUICoreTelephonyRegistrationCache *)self dataRate2GEnabledDict];

  if (!v5)
  {
    [(PSUICoreTelephonyRegistrationCache *)self fetch2GSwitchEnabled];
  }

  v6 = self;
  objc_sync_enter(v6);
  v7 = [(PSUICoreTelephonyRegistrationCache *)v6 dataRate2GEnabledDict];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "slotID")}];
  v9 = [v7 objectForKeyedSubscript:v8];

  objc_sync_exit(v6);
  LOBYTE(v6) = [v9 BOOLValue];

  return v6;
}

void __62__PSUICoreTelephonyRegistrationCache_set2GEnabled_forContext___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) getLogger];
  WeakRetained = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "[PSUICoreTelephonyRegistrationCache set2GEnabled:forContext:]_block_invoke";
      v15 = 2112;
      v16 = v3;
      _os_log_error_impl(&dword_2658DE000, WeakRetained, OS_LOG_TYPE_ERROR, "%s set failed: %@", &v13, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 56)];
      v7 = *(a1 + 40);
      v13 = 136315650;
      v14 = "[PSUICoreTelephonyRegistrationCache set2GEnabled:forContext:]_block_invoke";
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_2658DE000, WeakRetained, OS_LOG_TYPE_DEFAULT, "%s set succeeded: %@, %@", &v13, 0x20u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    objc_sync_enter(WeakRetained);
    v8 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 56)];
    v9 = objc_loadWeakRetained((a1 + 48));
    v10 = [v9 dataRate2GEnabledDict];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 40), "slotID")}];
    [v10 setObject:v8 forKeyedSubscript:v11];

    objc_sync_exit(WeakRetained);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)fetchLocalizedOperatorName
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v27 = "[PSUICoreTelephonyRegistrationCache fetchLocalizedOperatorName]";
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "%s executing fetch", buf, 0xCu);
  }

  v4 = [MEMORY[0x277D4D868] sharedInstance];
  v5 = [v4 subscriptionContexts];

  v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v7)
  {
    v9 = *v23;
    *&v8 = 136315650;
    v19 = v8;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        client = self->_client;
        v21 = 0;
        v13 = [(CoreTelephonyClient *)client getLocalizedOperatorName:v11 error:&v21, v19];
        v14 = v21;
        v15 = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
        if (v14)
        {
          if (v16)
          {
            *buf = 136315394;
            v27 = "[PSUICoreTelephonyRegistrationCache fetchLocalizedOperatorName]";
            v28 = 2112;
            v29 = v14;
            _os_log_impl(&dword_2658DE000, v15, OS_LOG_TYPE_DEFAULT, "%s fetch failed: %@", buf, 0x16u);
          }
        }

        else
        {
          if (v16)
          {
            *buf = v19;
            v27 = "[PSUICoreTelephonyRegistrationCache fetchLocalizedOperatorName]";
            v28 = 2114;
            v29 = v13;
            v30 = 2112;
            v31 = v11;
            _os_log_impl(&dword_2658DE000, v15, OS_LOG_TYPE_DEFAULT, "%s fetch succeeded: %{public}@, %@", buf, 0x20u);
          }

          v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v11, "slotID")}];
          [v20 setObject:v13 forKeyedSubscript:v15];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v7);
  }

  v17 = self;
  objc_sync_enter(v17);
  [(PSUICoreTelephonyRegistrationCache *)v17 setOperatorNameDict:v20];
  objc_sync_exit(v17);

  v18 = *MEMORY[0x277D85DE8];
}

- (id)localizedOperatorName:(id)a3
{
  v4 = a3;
  v5 = [(PSUICoreTelephonyRegistrationCache *)self operatorNameDict];

  if (!v5)
  {
    [(PSUICoreTelephonyRegistrationCache *)self fetchLocalizedOperatorName];
  }

  v6 = self;
  objc_sync_enter(v6);
  v7 = [(PSUICoreTelephonyRegistrationCache *)v6 operatorNameDict];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "slotID")}];
  v9 = [v7 objectForKeyedSubscript:v8];

  objc_sync_exit(v6);

  return v9;
}

- (void)operatorNameChanged:(id)a3 name:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v19 = "[PSUICoreTelephonyRegistrationCache operatorNameChanged:name:]";
    v20 = 2112;
    v21 = v6;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&dword_2658DE000, v8, OS_LOG_TYPE_DEFAULT, "%s: %@, %@", buf, 0x20u);
  }

  client = self->_client;
  v17 = 0;
  v10 = [(CoreTelephonyClient *)client getLocalizedOperatorName:v6 error:&v17];
  v11 = v17;

  v12 = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v19 = "[PSUICoreTelephonyRegistrationCache operatorNameChanged:name:]";
    v20 = 2112;
    v21 = v6;
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&dword_2658DE000, v12, OS_LOG_TYPE_DEFAULT, "%s localized name: %@, %@", buf, 0x20u);
  }

  if (!v10 || v11)
  {
    v13 = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
    if (os_log_type_enabled(&v13->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v19 = "[PSUICoreTelephonyRegistrationCache operatorNameChanged:name:]";
      v20 = 2112;
      v21 = v6;
      v22 = 2112;
      v23 = v10;
      v24 = 2112;
      v25 = v11;
      _os_log_error_impl(&dword_2658DE000, &v13->super, OS_LOG_TYPE_ERROR, "%s failed to localize operator name: %@, %@, %@", buf, 0x2Au);
    }
  }

  else
  {
    v13 = self;
    objc_sync_enter(v13);
    v14 = [(PSUICoreTelephonyRegistrationCache *)v13 operatorNameDict];
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "slotID")}];
    [v14 setObject:v10 forKeyedSubscript:v15];

    objc_sync_exit(v13);
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end