@interface SDPersistence
+ (id)betaEnrollmentTokensFromOldLocation;
+ (id)containerURL;
+ (id)loadMDMConfigurationWithError:(id *)error;
+ (id)persistenceDirectory:(BOOL)directory;
+ (id)saveMDMConfiguration:(id)configuration;
+ (void)containerURL;
+ (void)deleteBetaEnrollmentTokensFromOldLocations;
+ (void)saveBetaEnrollmentTokens:(id)tokens;
@end

@implementation SDPersistence

+ (void)saveBetaEnrollmentTokens:(id)tokens
{
  v11 = *MEMORY[0x277D85DE8];
  tokensCopy = tokens;
  v5 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446210;
    v10 = "+[SDPersistence saveBetaEnrollmentTokens:]";
    _os_log_impl(&dword_22E41E000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}s", &v9, 0xCu);
  }

  v6 = [SDMDMConfiguration defaultConfigurationForSetupAssistantFlowWithTokens:tokensCopy];

  v7 = [self saveMDMConfiguration:v6];
  v8 = *MEMORY[0x277D85DE8];
}

+ (id)betaEnrollmentTokensFromOldLocation
{
  v2 = SeedingDefaults();
  v3 = [v2 arrayForKey:@"BetaEnrollmentTokens"];

  if (v3)
  {
    v4 = [MEMORY[0x277CBEB98] setWithArray:v3];
  }

  else
  {
    v5 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_22E41E000, v5, OS_LOG_TYPE_INFO, "No Beta Enrollment Tokens found in old location", v8, 2u);
    }

    v4 = objc_opt_new();
  }

  v6 = v4;

  return v6;
}

+ (id)saveMDMConfiguration:(id)configuration
{
  v23 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v5 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v22 = "+[SDPersistence saveMDMConfiguration:]";
    _os_log_impl(&dword_22E41E000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}s", buf, 0xCu);
  }

  [self deleteBetaEnrollmentTokensFromOldLocations];
  v6 = [self persistenceDirectory:1];
  if (v6)
  {
    v20 = 0;
    v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:configurationCopy requiringSecureCoding:1 error:&v20];
    v8 = v20;
    if (v8)
    {
      v9 = +[SDSeedingLogging betaHandle];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        +[SDPersistence saveMDMConfiguration:];
      }

      v10 = v8;
    }

    else
    {
      v11 = [v6 URLByAppendingPathComponent:@"MDMConfiguration.plist"];
      path = [v11 path];
      v19 = 0;
      [v7 writeToFile:path options:1 error:&v19];
      v10 = v19;

      v13 = +[SDSeedingLogging betaHandle];
      v14 = v13;
      if (v10)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          +[SDPersistence saveMDMConfiguration:];
        }

        v15 = v10;
      }

      else
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          path2 = [v11 path];
          *buf = 138543362;
          v22 = path2;
          _os_log_impl(&dword_22E41E000, v14, OS_LOG_TYPE_DEFAULT, "Saved [%{public}@]", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    v10 = SDGenericError();
  }

  v17 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)loadMDMConfigurationWithError:(id *)error
{
  v45 = *MEMORY[0x277D85DE8];
  betaEnrollmentTokensFromOldLocation = [self betaEnrollmentTokensFromOldLocation];
  if ([betaEnrollmentTokensFromOldLocation count])
  {
    v6 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v40 = betaEnrollmentTokensFromOldLocation;
      _os_log_impl(&dword_22E41E000, v6, OS_LOG_TYPE_DEFAULT, "Migrating beta enrollment tokens from old path with token: [%{public}@]", buf, 0xCu);
    }

    v7 = [SDMDMConfiguration defaultConfigurationForSetupAssistantFlowWithTokens:betaEnrollmentTokensFromOldLocation];
    v8 = [self saveMDMConfiguration:v7];
    [self deleteBetaEnrollmentTokensFromOldLocations];
  }

  else
  {
    v9 = [self persistenceDirectory:1];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 URLByAppendingPathComponent:@"MDMConfiguration.plist"];
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      path = [v11 path];
      v14 = [defaultManager fileExistsAtPath:path];

      if (v14)
      {
        v15 = MEMORY[0x277CBEA90];
        path2 = [v11 path];
        v38 = 0;
        v17 = [v15 dataWithContentsOfFile:path2 options:0 error:&v38];
        v18 = v38;

        if (v18)
        {
          v19 = +[SDSeedingLogging betaHandle];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            +[SDPersistence loadMDMConfigurationWithError:];
          }

          if (error)
          {
            SDGenericError();
            *error = v7 = 0;
          }

          else
          {
            v7 = 0;
          }
        }

        else
        {
          v37 = 0;
          v21 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v17 error:&v37];
          v22 = v37;
          if (v22)
          {
            v23 = +[SDSeedingLogging betaHandle];
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              [(SDPersistence *)v22 loadMDMConfigurationWithError:v23];
            }

            if (error)
            {
              SDGenericError();
              *error = v7 = 0;
            }

            else
            {
              v7 = 0;
            }
          }

          else
          {
            if ([v21 isMissingConfigurationDate])
            {
              v24 = +[SDSeedingLogging betaHandle];
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_22E41E000, v24, OS_LOG_TYPE_DEFAULT, "MDM configuration is missing configuration date. Will set to now and save it.", buf, 2u);
              }

              v25 = [MEMORY[0x277CBEAA8] now];
              [v21 setConfigurationDate:v25];

              v26 = [self saveMDMConfiguration:v21];
              if (v26)
              {
                v27 = +[SDSeedingLogging betaHandle];
                if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                {
                  +[SDPersistence loadMDMConfigurationWithError:];
                }
              }
            }

            v28 = +[SDSeedingLogging betaHandle];
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              policy = [v21 policy];
              if (policy > 3)
              {
                v30 = "Unknown";
              }

              else
              {
                v30 = off_2787CC228[policy];
              }

              tokens = [v21 tokens];
              v31 = [tokens count];
              configurationDate = [v21 configurationDate];
              *buf = 136446722;
              v40 = v35;
              v41 = 2048;
              v42 = v31;
              v43 = 2114;
              v44 = configurationDate;
              _os_log_impl(&dword_22E41E000, v28, OS_LOG_TYPE_DEFAULT, "Loaded MDM configuration: [%{public}s] with [%lu] tokens. Config date [%{public}@]", buf, 0x20u);
            }

            v7 = v21;
          }
        }
      }

      else
      {
        v18 = +[SDSeedingLogging betaHandle];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22E41E000, v18, OS_LOG_TYPE_INFO, "MDM Configuration has not been set", buf, 2u);
        }

        v7 = 0;
      }
    }

    else
    {
      v20 = +[SDSeedingLogging betaHandle];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22E41E000, v20, OS_LOG_TYPE_DEFAULT, "could not load MDM Configuration ", buf, 2u);
      }

      if (error)
      {
        SDGenericError();
        *error = v7 = 0;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  v33 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (void)deleteBetaEnrollmentTokensFromOldLocations
{
  v2 = SeedingDefaults();
  [v2 removeObjectForKey:@"BetaEnrollmentTokens"];
}

+ (id)persistenceDirectory:(BOOL)directory
{
  directoryCopy = directory;
  containerURL = [self containerURL];
  if (!containerURL)
  {
    v6 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[SDPersistence persistenceDirectory:];
    }

    goto LABEL_12;
  }

  if (directoryCopy)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v13 = 0;
    [defaultManager createDirectoryAtURL:containerURL withIntermediateDirectories:1 attributes:0 error:&v13];
    v6 = v13;

    if (v6)
    {
      v7 = +[SDSeedingLogging betaHandle];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        +[SDPersistence persistenceDirectory:];
      }

LABEL_12:
      v9 = 0;
      goto LABEL_13;
    }
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __38__SDPersistence_persistenceDirectory___block_invoke;
  v11[3] = &unk_2787CB588;
  v8 = containerURL;
  v12 = v8;
  if (persistenceDirectory__onceToken != -1)
  {
    dispatch_once(&persistenceDirectory__onceToken, v11);
  }

  v9 = v8;
  v6 = v12;
LABEL_13:

  return v9;
}

void __38__SDPersistence_persistenceDirectory___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) path];
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_22E41E000, v2, OS_LOG_TYPE_DEFAULT, "Seeding directory [%{public}@]", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

+ (id)containerURL
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [defaultManager containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.seeding"];

  if (!v3)
  {
    v4 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[SDPersistence containerURL];
    }
  }

  return v3;
}

+ (void)saveMDMConfiguration:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)saveMDMConfiguration:.cold.2()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)loadMDMConfigurationWithError:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)loadMDMConfigurationWithError:(void *)a1 .cold.2(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 description];
  v5 = 138543362;
  v6 = v3;
  _os_log_error_impl(&dword_22E41E000, a2, OS_LOG_TYPE_ERROR, "Failed to deserialize MDM configuration object - %{public}@.", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

+ (void)loadMDMConfigurationWithError:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)persistenceDirectory:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)persistenceDirectory:.cold.2()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)containerURL
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end