@interface SKAServerBag
+ (BOOL)presenceEnabledByServer;
+ (BOOL)presenceEnabledByServerForServiceIdentifier:(id)a3;
+ (BOOL)presenceReverseInviteEnabledByServer;
+ (BOOL)statusEnabledByServerForStatusTypeIdentifier:(id)a3;
+ (double)statusValidityForOffGridPayload;
+ (id)logger;
+ (unint64_t)serverResponseInternalErrorRetryCount;
@end

@implementation SKAServerBag

+ (id)logger
{
  if (logger_onceToken_3 != -1)
  {
    +[SKAServerBag logger];
  }

  v3 = logger__logger_3;

  return v3;
}

uint64_t __22__SKAServerBag_logger__block_invoke()
{
  logger__logger_3 = os_log_create("com.apple.StatusKit", "SKAServerBag");

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)statusEnabledByServerForStatusTypeIdentifier:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = 1;
  v5 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v6 = [v5 objectForKey:@"shared-channels-status-type-disabled"];

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v16 objects:v22 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v17;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v17 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v16 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v12 isEqualToString:{v3, v16}])
            {
              v13 = +[SKAServerBag logger];
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v21 = v3;
                _os_log_impl(&dword_220099000, v13, OS_LOG_TYPE_DEFAULT, "Server bag indicates status disablement for status type identifier: %@", buf, 0xCu);
              }

              v4 = 0;
              goto LABEL_17;
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v16 objects:v22 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

      v4 = 1;
LABEL_17:
    }

    else
    {
      v4 = 1;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v4;
}

+ (BOOL)presenceEnabledByServer
{
  v10 = *MEMORY[0x277D85DE8];
  LOBYTE(v2) = 1;
  v3 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v4 = [v3 objectForKey:@"activity-presence-enabled"];

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = [v4 BOOLValue];
      v5 = +[SKAServerBag logger];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 134217984;
        v9 = v2;
        _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Server bag indicates presence enablement with status: %lu", &v8, 0xCu);
      }
    }

    else
    {
      LOBYTE(v2) = 1;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v2;
}

+ (BOOL)presenceEnabledByServerForServiceIdentifier:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = 1;
  v5 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v6 = [v5 objectForKey:@"activity-presence-adopter-disabled"];

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v16 objects:v22 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v17;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v17 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v16 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v12 isEqualToString:{v3, v16}])
            {
              v13 = +[SKAServerBag logger];
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v21 = v3;
                _os_log_impl(&dword_220099000, v13, OS_LOG_TYPE_DEFAULT, "Server bag indicates presence disablement for service: %@", buf, 0xCu);
              }

              v4 = 0;
              goto LABEL_17;
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v16 objects:v22 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

      v4 = 1;
LABEL_17:
    }

    else
    {
      v4 = 1;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v4;
}

+ (double)statusValidityForOffGridPayload
{
  v2 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"shared-channels-cp-status-payload-validity-sec"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 5184000.0;
  }

  return v5;
}

+ (BOOL)presenceReverseInviteEnabledByServer
{
  v10 = *MEMORY[0x277D85DE8];
  LOBYTE(v2) = 1;
  v3 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v4 = [v3 objectForKey:@"presence-reverse-invite-enabled"];

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = [v4 BOOLValue];
      v5 = +[SKAServerBag logger];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 134217984;
        v9 = v2;
        _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Server bag indicates reverse invite enablement with status: %lu", &v8, 0xCu);
      }
    }

    else
    {
      LOBYTE(v2) = 1;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v2;
}

+ (unint64_t)serverResponseInternalErrorRetryCount
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"activity-presence-retry-count"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = +[SKAServerBag logger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_220099000, v4, OS_LOG_TYPE_DEFAULT, "Server bag indicates server responses with internal errors should be retried %@ times", &v8, 0xCu);
    }

    v5 = [v3 unsignedIntegerValue];
  }

  else
  {
    v5 = 2;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

@end