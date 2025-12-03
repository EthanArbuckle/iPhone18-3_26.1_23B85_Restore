@interface SDMDMConfigurator
+ (id)loadMDMConfigurationWithError:(id *)error;
+ (void)configureWithOfferProgramTokens:(id)tokens requireProgramToken:(id)token enrollmentPolicy:(int64_t)policy error:(id *)error;
+ (void)enrollInProgramWithMDMToken:(id)token completion:(id)completion;
+ (void)resetMDMConfigurationWithError:(id *)error;
@end

@implementation SDMDMConfigurator

+ (void)configureWithOfferProgramTokens:(id)tokens requireProgramToken:(id)token enrollmentPolicy:(int64_t)policy error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  tokensCopy = tokens;
  tokenCopy = token;
  v11 = +[SDSeedingLogging mdmHandle];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (policy > 3)
    {
      v12 = "Unknown";
    }

    else
    {
      v12 = off_2787CB910[policy];
    }

    *buf = 136446723;
    v36 = "+[SDMDMConfigurator configureWithOfferProgramTokens:requireProgramToken:enrollmentPolicy:error:]";
    v37 = 2113;
    v38 = tokenCopy;
    v39 = 2082;
    v40 = v12;
    _os_log_impl(&dword_22E41E000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}s requireToken [%{private}@] policy [%{public}s]", buf, 0x20u);
  }

  v13 = [tokensCopy count];
  v14 = +[SDSeedingLogging mdmHandle];
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v15)
    {
      *buf = 0;
      _os_log_impl(&dword_22E41E000, v14, OS_LOG_TYPE_DEFAULT, "offerTokens:", buf, 2u);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v14 = tokensCopy;
    v16 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v16)
    {
      v17 = v16;
      v26 = tokenCopy;
      v27 = tokensCopy;
      policyCopy = policy;
      errorCopy = error;
      v18 = *v31;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v31 != v18)
          {
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v30 + 1) + 8 * i);
          v21 = [SDSeedingLogging mdmHandle:v26];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v36 = v20;
            _os_log_impl(&dword_22E41E000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@]", buf, 0xCu);
          }
        }

        v17 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v17);
      policy = policyCopy;
      error = errorCopy;
      tokenCopy = v26;
      tokensCopy = v27;
    }
  }

  else if (v15)
  {
    *buf = 0;
    _os_log_impl(&dword_22E41E000, v14, OS_LOG_TYPE_DEFAULT, "No offer-tokens given.", buf, 2u);
  }

  v22 = [tokensCopy count];
  if (policy <= 1 && !tokenCopy && !v22)
  {
    v23 = +[SDSeedingLogging mdmHandle];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22E41E000, v23, OS_LOG_TYPE_DEFAULT, "Called with parameters matching reset condition.", buf, 2u);
    }
  }

  v24 = +[SDBetaEnrollmentServiceProxy sharedInstance];
  [v24 configureWithOfferProgramTokens:tokensCopy requireProgramToken:tokenCopy enrollmentPolicy:policy error:error];

  v25 = *MEMORY[0x277D85DE8];
}

+ (void)resetMDMConfigurationWithError:(id *)error
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = +[SDSeedingLogging mdmHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446210;
    v9 = "+[SDMDMConfigurator resetMDMConfigurationWithError:]";
    _os_log_impl(&dword_22E41E000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}s", &v8, 0xCu);
  }

  v6 = objc_opt_new();
  [self configureWithOfferProgramTokens:v6 requireProgramToken:0 enrollmentPolicy:0 error:error];

  v7 = *MEMORY[0x277D85DE8];
}

+ (id)loadMDMConfigurationWithError:(id *)error
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = +[SDSeedingLogging mdmHandle];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446210;
    v10 = "+[SDMDMConfigurator loadMDMConfigurationWithError:]";
    _os_log_impl(&dword_22E41E000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}s", &v9, 0xCu);
  }

  v5 = +[SDBetaEnrollmentServiceProxy sharedInstance];
  v6 = [v5 loadMDMConfigurationWithError:error];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (void)enrollInProgramWithMDMToken:(id)token completion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  completionCopy = completion;
  v7 = +[SDSeedingLogging mdmHandle];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136446467;
    v11 = "+[SDMDMConfigurator enrollInProgramWithMDMToken:completion:]";
    v12 = 2113;
    v13 = tokenCopy;
    _os_log_impl(&dword_22E41E000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}s token [%{private}@]", &v10, 0x16u);
  }

  v8 = +[SDBetaEnrollmentServiceProxy sharedInstance];
  [v8 enrollInProgramWithToken:tokenCopy completion:completionCopy];

  v9 = *MEMORY[0x277D85DE8];
}

@end