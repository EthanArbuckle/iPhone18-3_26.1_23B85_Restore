@interface SDMDMConfiguratorImplementation
+ (BOOL)isBetaEnrollmentDisabled;
+ (BOOL)shouldReturnBecauseOfInvalidTokens:(id)a3 andReportErrorWith:(id)a4;
+ (int64_t)applyMDMConfiguration:(id)a3;
+ (int64_t)conditionallyUnenrollIfNotMatchingOfferedTokensWithConfig:(id)a3 userIdentifier:(id)a4;
+ (int64_t)enrollWithRequireProgramToken:(id)a3 language:(id)a4 userIdentifier:(id)a5;
+ (void)configureWithOfferProgramTokens:(id)a3 requireProgramToken:(id)a4 enrollmentPolicy:(int64_t)a5 userIdentifier:(id)a6 language:(id)a7 completion:(id)a8;
+ (void)isBetaEnrollmentDisabled;
@end

@implementation SDMDMConfiguratorImplementation

+ (BOOL)isBetaEnrollmentDisabled
{
  v8 = 0;
  v2 = [SDPersistence loadMDMConfigurationWithError:&v8];
  v3 = v8;
  if (v3)
  {
    v4 = +[SDSeedingLogging mdmHandle];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[(SDMDMConfiguratorImplementation *)v3];
    }
  }

  else
  {
    if (v2)
    {
      v5 = [v2 disableBetaEnrollment];
      goto LABEL_7;
    }

    v4 = +[SDSeedingLogging mdmHandle];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_22E41E000, v4, OS_LOG_TYPE_INFO, "No MDM configuration set", v7, 2u);
    }
  }

  v5 = 0;
LABEL_7:

  return v5;
}

+ (void)configureWithOfferProgramTokens:(id)a3 requireProgramToken:(id)a4 enrollmentPolicy:(int64_t)a5 userIdentifier:(id)a6 language:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = [[SDMDMConfiguration alloc] initWithPolicy:a5];
  v20 = v19;
  if (a5 > 1)
  {
    if (a5 == 2)
    {
      [(SDMDMConfiguration *)v19 setRestrictUserPrograms:1];
      if (!v15)
      {
        [(SDMDMConfiguration *)v20 setDisableBetaEnrollment:0];
        if ([v14 count])
        {
          if ([a1 shouldReturnBecauseOfInvalidTokens:v14 andReportErrorWith:v18])
          {
            goto LABEL_31;
          }
        }

        else
        {
          v34 = +[SDSeedingLogging mdmHandle];
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *v35 = 0;
            _os_log_impl(&dword_22E41E000, v34, OS_LOG_TYPE_DEFAULT, "Restricting user programs with zero Beta Enrollment tokens.", v35, 2u);
          }
        }

        [(SDMDMConfiguration *)v20 setTokens:v14];
LABEL_23:
        v29 = [a1 applyMDMConfiguration:v20];
        [a1 conditionallyUnenrollIfNotMatchingOfferedTokensWithConfig:v20 userIdentifier:v16];
        if (v29)
        {
LABEL_24:
          v30 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.seeding.mdm-configurator" code:v29 userInfo:0];
LABEL_30:
          v18[2](v18, v30);

          goto LABEL_31;
        }

LABEL_29:
        v30 = 0;
        goto LABEL_30;
      }

      v31 = [MEMORY[0x277CBEB98] setWithObject:v15];
      v32 = [a1 shouldReturnBecauseOfInvalidTokens:v31 andReportErrorWith:v18];

      if (v32)
      {
        goto LABEL_31;
      }

      [(SDMDMConfiguration *)v20 setDisableBetaEnrollment:1];
      v33 = [MEMORY[0x277CBEB98] setWithObject:v15];
      [(SDMDMConfiguration *)v20 setTokens:v33];

      [a1 enrollWithRequireProgramToken:v15 language:v17 userIdentifier:v16];
    }

    else
    {
      if (a5 != 3)
      {
        goto LABEL_18;
      }

      [(SDMDMConfiguration *)v19 setRestrictUserPrograms:1];
      [(SDMDMConfiguration *)v20 setDisableBetaEnrollment:1];
      v24 = objc_opt_new();
      [(SDMDMConfiguration *)v20 setTokens:v24];

      v25 = +[SDDevice _currentDevice];
      [v25 _unenrollWithUserIdentifier:v16];

      if (v15)
      {
        v26 = +[SDSeedingLogging mdmHandle];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *v37 = 0;
          _os_log_impl(&dword_22E41E000, v26, OS_LOG_TYPE_DEFAULT, "Ignoring requireToken because it is not valid for this policy", v37, 2u);
        }
      }

      if (v14)
      {
        v27 = +[SDSeedingLogging mdmHandle];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *v36 = 0;
          _os_log_impl(&dword_22E41E000, v27, OS_LOG_TYPE_DEFAULT, "Ignoring offerTokens because it is not valid for this policy", v36, 2u);
        }
      }
    }

    v29 = [a1 applyMDMConfiguration:v20];
    if (v29)
    {
      goto LABEL_24;
    }

    goto LABEL_29;
  }

  if (!a5)
  {
    [(SDMDMConfiguration *)v19 setRestrictUserPrograms:0];
    [(SDMDMConfiguration *)v20 setDisableBetaEnrollment:0];
    v23 = objc_opt_new();
    [(SDMDMConfiguration *)v20 setTokens:v23];
LABEL_22:

    goto LABEL_23;
  }

  if (a5 != 1)
  {
LABEL_18:
    v28 = +[SDSeedingLogging mdmHandle];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [SDMDMConfiguratorImplementation configureWithOfferProgramTokens:a5 requireProgramToken:v28 enrollmentPolicy:? userIdentifier:? language:? completion:?];
    }

    v29 = 4;
    goto LABEL_24;
  }

  [(SDMDMConfiguration *)v19 setRestrictUserPrograms:0];
  [(SDMDMConfiguration *)v20 setDisableBetaEnrollment:0];
  [(SDMDMConfiguration *)v20 setTokens:v14];
  v21 = [(SDMDMConfiguration *)v20 tokens];
  v22 = [a1 shouldReturnBecauseOfInvalidTokens:v21 andReportErrorWith:v18];

  if ((v22 & 1) == 0)
  {
    if (!v15)
    {
      goto LABEL_23;
    }

    v23 = +[SDSeedingLogging mdmHandle];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22E41E000, v23, OS_LOG_TYPE_DEFAULT, "Ignoring requireToken because it is not valid for this policy", buf, 2u);
    }

    goto LABEL_22;
  }

LABEL_31:
}

+ (int64_t)conditionallyUnenrollIfNotMatchingOfferedTokensWithConfig:(id)a3 userIdentifier:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = +[SDSeedingLogging mdmHandle];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136446210;
    v21 = "+[SDMDMConfiguratorImplementation conditionallyUnenrollIfNotMatchingOfferedTokensWithConfig:userIdentifier:]";
    _os_log_impl(&dword_22E41E000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}s", &v20, 0xCu);
  }

  v8 = +[SDBetaManager _currentBetaProgram];
  if ([v8 isMDMProgram])
  {
    v9 = +[SDSeedingLogging mdmHandle];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v8 betaEnrollmentTokens];
      v20 = 138543362;
      v21 = v10;
      _os_log_impl(&dword_22E41E000, v9, OS_LOG_TYPE_INFO, "Currently enrolled in MDM program with BETs [%{public}@]", &v20, 0xCu);
    }

    v11 = [v5 tokens];
    v12 = [v8 betaEnrollmentTokens];
    v13 = [v11 intersectsSet:v12];

    if ((v13 & 1) == 0)
    {
      v14 = +[SDSeedingLogging mdmHandle];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v8 programID];
        v16 = [v8 betaEnrollmentTokens];
        v20 = 134218242;
        v21 = v15;
        v22 = 2114;
        v23 = v16;
        _os_log_impl(&dword_22E41E000, v14, OS_LOG_TYPE_DEFAULT, "Currently enrolled MDM program [%lu: %{public}@] not in offered in new configuration. Will unenroll.", &v20, 0x16u);
      }

      v17 = +[SDDevice _currentDevice];
      [v17 _unenrollWithUserIdentifier:v6];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return 0;
}

+ (BOOL)shouldReturnBecauseOfInvalidTokens:(id)a3 andReportErrorWith:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = +[SDSeedingLogging mdmHandle];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136446210;
    *(&buf + 4) = "+[SDMDMConfiguratorImplementation shouldReturnBecauseOfInvalidTokens:andReportErrorWith:]";
    _os_log_impl(&dword_22E41E000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}s", &buf, 0xCu);
  }

  if ([v5 count])
  {
    v8 = dispatch_group_create();
    *&buf = 0;
    *(&buf + 1) = &buf;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy_;
    v20 = __Block_byref_object_dispose_;
    v21 = 0;
    dispatch_group_enter(v8);
    v9 = +[SDBetaManager sharedManager];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __89__SDMDMConfiguratorImplementation_shouldReturnBecauseOfInvalidTokens_andReportErrorWith___block_invoke;
    v14[3] = &unk_2787CBA10;
    p_buf = &buf;
    v10 = v8;
    v15 = v10;
    [v9 validateBetaEnrollmentTokens:v5 errorHandler:v14];

    dispatch_group_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
    v6[2](v6, *(*(&buf + 1) + 40));
    v11 = *(*(&buf + 1) + 40) != 0;

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v10 = +[SDSeedingLogging mdmHandle];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 136446210;
      *(&buf + 4) = "+[SDMDMConfiguratorImplementation shouldReturnBecauseOfInvalidTokens:andReportErrorWith:]";
      _os_log_impl(&dword_22E41E000, v10, OS_LOG_TYPE_INFO, "[%{public}s called with zero tokens. Will proceed", &buf, 0xCu);
    }

    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

void __89__SDMDMConfiguratorImplementation_shouldReturnBecauseOfInvalidTokens_andReportErrorWith___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  dispatch_group_leave(v6);
}

+ (int64_t)applyMDMConfiguration:(id)a3
{
  v3 = a3;
  v4 = +[SDBetaManager sharedManager];
  [v4 invalidateCache];

  v5 = [SDPersistence saveMDMConfiguration:v3];

  return 4 * (v5 != 0);
}

+ (int64_t)enrollWithRequireProgramToken:(id)a3 language:(id)a4 userIdentifier:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[SDSeedingLogging mdmHandle];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136446210;
    *(&buf + 4) = "+[SDMDMConfiguratorImplementation enrollWithRequireProgramToken:language:userIdentifier:]";
    _os_log_impl(&dword_22E41E000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v26 = 0x2020000000;
  v27 = 0;
  v11 = dispatch_semaphore_create(0);
  v12 = +[SDBetaManager sharedManager];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __89__SDMDMConfiguratorImplementation_enrollWithRequireProgramToken_language_userIdentifier___block_invoke;
  v22 = &unk_2787CBA38;
  p_buf = &buf;
  v13 = v11;
  v23 = v13;
  [v12 enrollInProgramWithToken:v7 userIdentifier:v9 language:v8 shouldSaveToken:0 completion:&v19];

  v14 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(v13, v14))
  {
    v15 = [SDSeedingLogging mdmHandle:v19];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SDMDMConfiguratorImplementation enrollWithRequireProgramToken:v15 language:? userIdentifier:?];
    }

    v16 = 4;
    *(*(&buf + 1) + 24) = 4;
  }

  else
  {
    v16 = *(*(&buf + 1) + 24);
  }

  _Block_object_dispose(&buf, 8);
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

+ (void)isBetaEnrollmentDisabled
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v5 = 138543362;
  v6 = v3;
  _os_log_error_impl(&dword_22E41E000, a2, OS_LOG_TYPE_ERROR, "Failed to load mdm configuration: %{public}@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

+ (void)configureWithOfferProgramTokens:(uint64_t)a1 requireProgramToken:(NSObject *)a2 enrollmentPolicy:userIdentifier:language:completion:.cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = "Unknown";
  if (a1 == 3)
  {
    v2 = "AlwaysOff";
  }

  v4 = 136446210;
  v5 = v2;
  _os_log_error_impl(&dword_22E41E000, a2, OS_LOG_TYPE_ERROR, "Unknown enrollment policy: [%{public}s]", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end