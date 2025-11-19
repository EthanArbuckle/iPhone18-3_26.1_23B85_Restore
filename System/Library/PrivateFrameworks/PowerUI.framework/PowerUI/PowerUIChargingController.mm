@interface PowerUIChargingController
+ (PowerUIChargingController)sharedInstance;
- (BOOL)setChargeLimitTo:(int64_t)a3 forLimitType:(unint64_t)a4 setNoChargeToFull:(BOOL)a5;
- (PowerUIChargingController)init;
- (__CFString)loadChargeLimitTokenForPreferenceKey:(id)a3 forReason:(id)a4 verbose:(BOOL)a5;
- (__CFString)registerNewTokenForPreferenceKey:(id)a3 forReason:(id)a4;
- (id)readNumberForPreferenceKey:(id)a3;
- (void)clearAllChargeLimits;
- (void)clearChargeLimitForLimitType:(unint64_t)a3;
@end

@implementation PowerUIChargingController

- (id)readNumberForPreferenceKey:(id)a3
{
  v3 = CFPreferencesCopyAppValue(a3, @"com.apple.smartcharging.topoffprotection");

  return v3;
}

- (PowerUIChargingController)init
{
  v10.receiver = self;
  v10.super_class = PowerUIChargingController;
  v2 = [(PowerUIChargingController *)&v10 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.powerui.smartcharging", "chargingcontroller");
    log = v2->_log;
    v2->_log = v3;

    v5 = [MEMORY[0x277CBEB38] dictionary];
    tokenDict = v2->_tokenDict;
    v2->_tokenDict = v5;

    v7 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    chargeLimitLock = v2->_chargeLimitLock;
    v2->_chargeLimitLock = v7;
  }

  return v2;
}

+ (PowerUIChargingController)sharedInstance
{
  if (sharedInstance_once_0 != -1)
  {
    +[PowerUIChargingController sharedInstance];
  }

  v3 = sharedInstance_instance_0;

  return v3;
}

void __43__PowerUIChargingController_sharedInstance__block_invoke()
{
  if (!sharedInstance_instance_0)
  {
    sharedInstance_instance_0 = objc_alloc_init(PowerUIChargingController);

    MEMORY[0x2821F96F8]();
  }
}

- (__CFString)loadChargeLimitTokenForPreferenceKey:(id)a3 forReason:(id)a4 verbose:(BOOL)a5
{
  v5 = a5;
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(NSMutableDictionary *)self->_tokenDict objectForKeyedSubscript:v9];

  if (v10)
  {
    if (v5)
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v32 = v10;
        _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_INFO, "Charge limit token already exists: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v10 = [PowerUISmartChargeUtilities readStringForPreferenceKey:v8 inDomain:@"com.apple.smartcharging.topoffprotection"];
    if (v10)
    {
      v24 = v5;
      v25 = v8;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v12 = IOPSCopyBatteryLevelLimits();
      v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v27;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v27 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = [*(*(&v26 + 1) + 8 * i) objectForKeyedSubscript:@"chargeSocLimitReason"];
            v18 = [v17 isEqualToString:v9];

            if (v18)
            {

              [(NSMutableDictionary *)self->_tokenDict setObject:v10 forKeyedSubscript:v9];
              if (v24)
              {
                v20 = self->_log;
                if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v32 = v10;
                  _os_log_impl(&dword_21B766000, v20, OS_LOG_TYPE_DEFAULT, "Loaded charge limit token from defaults: %@", buf, 0xCu);
                }
              }

              v8 = v25;
              goto LABEL_26;
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      if (v24)
      {
        v19 = self->_log;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v32 = v10;
          _os_log_impl(&dword_21B766000, v19, OS_LOG_TYPE_DEFAULT, "Token %@ does not seem to exist anymore", buf, 0xCu);
        }
      }

      v8 = v25;
    }

    else if (v5)
    {
      v21 = self->_log;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v32 = v8;
        _os_log_impl(&dword_21B766000, v21, OS_LOG_TYPE_DEFAULT, "Did not get string value for key %@", buf, 0xCu);
      }
    }

    v10 = 0;
  }

LABEL_26:

  v22 = *MEMORY[0x277D85DE8];
  return v10;
}

- (__CFString)registerNewTokenForPreferenceKey:(id)a3 forReason:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = IOPSLimitBatteryLevelRegister();
  if (v8)
  {
    v9 = v8;
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      [PowerUIChargingController registerNewTokenForPreferenceKey:v9 forReason:log];
    }

    v11 = self->_log;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [PowerUIChargingController registerNewTokenForPreferenceKey:v11 forReason:v9];
    }
  }

  else
  {
    [(NSMutableDictionary *)self->_tokenDict setObject:0 forKeyedSubscript:v7];

    [PowerUISmartChargeUtilities setString:0 forPreferenceKey:v6 inDomain:@"com.apple.smartcharging.topoffprotection"];
    v12 = self->_log;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v16 = 0;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_21B766000, v12, OS_LOG_TYPE_DEFAULT, "Created new charge limit token: %@ for reason: %@", buf, 0x16u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)clearChargeLimitForLimitType:(unint64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  [(NSLock *)self->_chargeLimitLock lock];
  v5 = a3 - 1;
  if (a3 - 1 >= 5)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [PowerUIChargingController clearChargeLimitForLimitType:];
    }
  }

  else
  {
    v6 = off_2782D43C0[v5];
    v7 = off_2782D43E8[v5];
    [(PowerUIChargingController *)self loadChargeLimitTokenForPreferenceKey:v7 forReason:v6 verbose:0];
    v8 = [(NSMutableDictionary *)self->_tokenDict objectForKeyedSubscript:v6];

    log = self->_log;
    if (v8)
    {
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        tokenDict = self->_tokenDict;
        v11 = log;
        v12 = [(NSMutableDictionary *)tokenDict objectForKeyedSubscript:v6];
        v14 = 138412290;
        v15 = v12;
        _os_log_impl(&dword_21B766000, v11, OS_LOG_TYPE_DEFAULT, "Clearing current charge limit token for (%@)", &v14, 0xCu);
      }

      [(NSMutableDictionary *)self->_tokenDict objectForKeyedSubscript:v6];
      objc_claimAutoreleasedReturnValue();
      IOPSLimitBatteryLevelCancel();
      [(NSMutableDictionary *)self->_tokenDict setObject:0 forKeyedSubscript:v6];
    }

    else if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      [PowerUIChargingController clearChargeLimitForLimitType:];
    }

    [PowerUISmartChargeUtilities setString:0 forPreferenceKey:v7 inDomain:@"com.apple.smartcharging.topoffprotection"];
  }

  [(NSLock *)self->_chargeLimitLock unlock];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)clearAllChargeLimits
{
  [(PowerUIChargingController *)self clearChargeLimitForLimitType:1];
  [(PowerUIChargingController *)self clearChargeLimitForLimitType:2];
  [(PowerUIChargingController *)self clearChargeLimitForLimitType:3];
  [(PowerUIChargingController *)self clearChargeLimitForLimitType:4];

  [(PowerUIChargingController *)self clearChargeLimitForLimitType:5];
}

- (BOOL)setChargeLimitTo:(int64_t)a3 forLimitType:(unint64_t)a4 setNoChargeToFull:(BOOL)a5
{
  v5 = a5;
  v27 = *MEMORY[0x277D85DE8];
  [(NSLock *)self->_chargeLimitLock lock];
  v9 = a4 - 1;
  if (a4 - 1 >= 5)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [PowerUIChargingController setChargeLimitTo:forLimitType:setNoChargeToFull:];
    }
  }

  else
  {
    v10 = qword_21B848440[v9];
    v11 = off_2782D43C0[v9];
    v12 = off_2782D43E8[v9];
    if (v5)
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
      {
        *v26 = 138412290;
        *&v26[4] = v11;
        _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_INFO, "Forcing noChargeToFullFlag for charge limit '%@' ", v26, 0xCu);
      }
    }

    v14 = [(PowerUIChargingController *)self loadChargeLimitTokenForPreferenceKey:v12 forReason:v11 verbose:1];
    v15 = v14 == 0;
    if (v14)
    {
      v16 = IOPSLimitBatteryLevel();
      if (!v16)
      {
        v17 = self->_log;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *v26 = 134218242;
          *&v26[4] = a3;
          *&v26[12] = 2112;
          *&v26[14] = v11;
          v18 = "Continue limiting to %lu%% for reason '%@'";
          v19 = v17;
          v20 = OS_LOG_TYPE_INFO;
LABEL_21:
          _os_log_impl(&dword_21B766000, v19, v20, v18, v26, 0x16u);
          goto LABEL_22;
        }

        goto LABEL_22;
      }

LABEL_14:
      v21 = v16;
      v22 = self->_log;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [PowerUIChargingController setChargeLimitTo:v22 forLimitType:v21 setNoChargeToFull:?];
      }

      [(NSLock *)self->_chargeLimitLock unlock];
      [(PowerUIChargingController *)self clearChargeLimitForLimitType:a4];
      goto LABEL_17;
    }

    if ([(PowerUIChargingController *)self registerNewTokenForPreferenceKey:v12 forReason:v11])
    {
      v16 = IOPSLimitBatteryLevel();
      if (!v16)
      {
        v25 = self->_log;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *v26 = 134218242;
          *&v26[4] = a3;
          *&v26[12] = 2112;
          *&v26[14] = v11;
          v18 = "Limited charging to %lu%% for reason '%@'";
          v19 = v25;
          v20 = OS_LOG_TYPE_DEFAULT;
          goto LABEL_21;
        }

LABEL_22:
        [(NSLock *)self->_chargeLimitLock unlock:*v26];
        goto LABEL_18;
      }

      goto LABEL_14;
    }
  }

  [(NSLock *)self->_chargeLimitLock unlock];
LABEL_17:
  v15 = 0;
LABEL_18:
  v23 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)registerNewTokenForPreferenceKey:(int)a1 forReason:(NSObject *)a2 .cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_21B766000, a2, OS_LOG_TYPE_ERROR, "Could not get charge limit token, error code: %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)registerNewTokenForPreferenceKey:(void *)a1 forReason:(mach_error_t)a2 .cold.2(void *a1, mach_error_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  mach_error_string(a2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2(&dword_21B766000, v4, v5, "Error code string value: %s", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)clearChargeLimitForLimitType:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_21B766000, v0, OS_LOG_TYPE_ERROR, "trying to clear invalid charge token: %lu", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)clearChargeLimitForLimitType:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v4 = 2112;
  v5 = v0;
  _os_log_debug_impl(&dword_21B766000, v1, OS_LOG_TYPE_DEBUG, "No token to clear for preferencekey %@, reason %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)setChargeLimitTo:forLimitType:setNoChargeToFull:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_21B766000, v0, OS_LOG_TYPE_ERROR, "trying to set invalid charge token: %lu", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)setChargeLimitTo:(void *)a1 forLimitType:(mach_error_t)a2 setNoChargeToFull:.cold.2(void *a1, mach_error_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  mach_error_string(a2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2(&dword_21B766000, v4, v5, "Error trying to limit the battery level: %s", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

@end