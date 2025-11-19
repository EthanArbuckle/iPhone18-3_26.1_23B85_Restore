@interface SDMDMConfigurator
+ (id)loadMDMConfigurationWithError:(id *)a3;
+ (void)configureWithOfferProgramTokens:(id)a3 requireProgramToken:(id)a4 enrollmentPolicy:(int64_t)a5 error:(id *)a6;
+ (void)enrollInProgramWithMDMToken:(id)a3 completion:(id)a4;
+ (void)resetMDMConfigurationWithError:(id *)a3;
@end

@implementation SDMDMConfigurator

+ (void)configureWithOfferProgramTokens:(id)a3 requireProgramToken:(id)a4 enrollmentPolicy:(int64_t)a5 error:(id *)a6
{
  v41 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = +[SDSeedingLogging mdmHandle];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (a5 > 3)
    {
      v12 = "Unknown";
    }

    else
    {
      v12 = off_2787CB910[a5];
    }

    *buf = 136446723;
    v36 = "+[SDMDMConfigurator configureWithOfferProgramTokens:requireProgramToken:enrollmentPolicy:error:]";
    v37 = 2113;
    v38 = v10;
    v39 = 2082;
    v40 = v12;
    _os_log_impl(&dword_22E41E000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}s requireToken [%{private}@] policy [%{public}s]", buf, 0x20u);
  }

  v13 = [v9 count];
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
    v14 = v9;
    v16 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v16)
    {
      v17 = v16;
      v26 = v10;
      v27 = v9;
      v28 = a5;
      v29 = a6;
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
      a5 = v28;
      a6 = v29;
      v10 = v26;
      v9 = v27;
    }
  }

  else if (v15)
  {
    *buf = 0;
    _os_log_impl(&dword_22E41E000, v14, OS_LOG_TYPE_DEFAULT, "No offer-tokens given.", buf, 2u);
  }

  v22 = [v9 count];
  if (a5 <= 1 && !v10 && !v22)
  {
    v23 = +[SDSeedingLogging mdmHandle];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22E41E000, v23, OS_LOG_TYPE_DEFAULT, "Called with parameters matching reset condition.", buf, 2u);
    }
  }

  v24 = +[SDBetaEnrollmentServiceProxy sharedInstance];
  [v24 configureWithOfferProgramTokens:v9 requireProgramToken:v10 enrollmentPolicy:a5 error:a6];

  v25 = *MEMORY[0x277D85DE8];
}

+ (void)resetMDMConfigurationWithError:(id *)a3
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
  [a1 configureWithOfferProgramTokens:v6 requireProgramToken:0 enrollmentPolicy:0 error:a3];

  v7 = *MEMORY[0x277D85DE8];
}

+ (id)loadMDMConfigurationWithError:(id *)a3
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
  v6 = [v5 loadMDMConfigurationWithError:a3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (void)enrollInProgramWithMDMToken:(id)a3 completion:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = +[SDSeedingLogging mdmHandle];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136446467;
    v11 = "+[SDMDMConfigurator enrollInProgramWithMDMToken:completion:]";
    v12 = 2113;
    v13 = v5;
    _os_log_impl(&dword_22E41E000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}s token [%{private}@]", &v10, 0x16u);
  }

  v8 = +[SDBetaEnrollmentServiceProxy sharedInstance];
  [v8 enrollInProgramWithToken:v5 completion:v6];

  v9 = *MEMORY[0x277D85DE8];
}

@end