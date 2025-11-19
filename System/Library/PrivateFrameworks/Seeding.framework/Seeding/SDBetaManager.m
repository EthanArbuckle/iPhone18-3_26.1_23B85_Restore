@interface SDBetaManager
+ (BOOL)_isEnrolledInBetaProgram;
+ (BOOL)canFileFeedbackOnThisDevice:(id *)a3;
+ (BOOL)isBuildPrefix:(id)a3 greaterThanOrEqualToBuild:(id)a4;
+ (id)_currentBetaProgram;
+ (id)sharedManager;
+ (void)_currentBetaProgram;
+ (void)canFileFeedbackOnThisDeviceWithCompletion:(id)a3;
- (BOOL)_canCurrentDeviceEnrollInBetaUpdates;
- (BOOL)_hasMigratedProfiles;
- (BOOL)_isEnrolledInBetaProgram;
- (BOOL)_isEnrollmentAllowedByDeviceManagement_legacy;
- (BOOL)_isUsingSeedingAppleID;
- (BOOL)_unenrollFromBetaProgramWithUserIdentifier:(id)a3;
- (BOOL)canCurrentDeviceEnrollInBetaUpdates;
- (BOOL)isCacheValidForPlatforms:(unint64_t)a3 withMDMConfigurationDate:(id)a4;
- (BOOL)isCurrentDeviceUsingSeedingAppleID;
- (BOOL)isMigratingFromProfiles;
- (id)_assetServerURLString;
- (id)_brainServerURLString;
- (id)_deviceAppleIDUsername;
- (id)_seedingAppleIDUsername;
- (id)availableBetaProgramsForPlatforms:(unint64_t)a3;
- (id)deviceAppleIDUsernameForCurrentDevice;
- (id)enrolledBetaProgramForCurrentDevice;
- (id)enrollmentMetadataForCurrentDevice;
- (id)membershipURLForPlatforms:(unint64_t)a3;
- (id)migrateURLForAssetAudience:(id)a3;
- (id)parseProgramsResponse:(id)a3 platforms:(unint64_t)a4 shouldCache:(BOOL)a5 skipsBuildMatching:(BOOL)a6;
- (id)seedingAppleIDUsernameForCurrentDevice;
- (id)serverURLWithPath:(id)a3 arguments:(id)a4;
- (id)verifyURLForAssetAudience:(id)a3 programID:(int64_t)a4;
- (id)verifyURLForCatalog:(id)a3;
- (void)_changeFBAVisibilityWithUserIdentifier:(id)a3 isVisible:(BOOL)a4;
- (void)_deleteSeedingAppleAccountWithCompletion:(id)a3;
- (void)_enrollUsingSeedingConfiguration:(id)a3 userIdentifier:(id)a4;
- (void)_finallyQueryProgramsForSystemAccountsWithPlatforms:(unint64_t)a3 credentials:(id)a4 betaEnrollmentTokens:(id)a5 shouldSavePrograms:(BOOL)a6 disableBuildPrefixMatching:(BOOL)a7 language:(id)a8 completion:(id)a9;
- (void)_markMigrationComplete;
- (void)_migrateFromProfilesIfNeeded;
- (void)_queryProgramsForSystemAccountsWithPlatforms:(unint64_t)a3 disableBuildPrefixMatching:(BOOL)a4 language:(id)a5 completion:(id)a6;
- (void)_resetAssetAudience;
- (void)_saveAppleAccountIdentifier:(id)a3;
- (void)_saveAppleAccountIdentifierWithAlternateDSID:(id)a3 completion:(id)a4;
- (void)_saveBetaProgram:(id)a3;
- (void)_setAssetAudienceString:(id)a3;
- (void)_setAssetServerURLString:(id)a3;
- (void)_setBrainServerURLString:(id)a3;
- (void)_setMemberEnrolled:(BOOL)a3;
- (void)cachePrograms:(id)a3 forPlatforms:(unint64_t)a4;
- (void)canFileFeedbackOnDevice:(id)a3 completion:(id)a4;
- (void)deleteSeedingAppleAccountForCurrentDeviceWithCompletion:(id)a3;
- (void)enrollCurrentDeviceWithEnrollmentMetadata:(id)a3 completion:(id)a4;
- (void)enrollDevice:(id)a3 inBetaProgram:(id)a4 completion:(id)a5;
- (void)enrollDevice:(id)a3 withEnrollmentMetadata:(id)a4 completion:(id)a5;
- (void)enrollInProgramWithToken:(id)a3 userIdentifier:(id)a4 language:(id)a5 shouldSaveToken:(BOOL)a6 completion:(id)a7;
- (void)enrolledBetaProgramForDevice:(id)a3 completion:(id)a4;
- (void)enrollmentMetadataForCurrentDeviceWithCompletion:(id)a3;
- (void)enrollmentMetadataForDevice:(id)a3 completion:(id)a4;
- (void)ensureThisRunsAfterMigration:(id)a3;
- (void)getAppleIDAuthenticationAccountForAlternateDSID:(id)a3 attempt:(int64_t)a4 completion:(id)a5;
- (void)getMigrationProgramForAssetAudience:(id)a3 completion:(id)a4;
- (void)invalidateCache;
- (void)invalidateCacheWithCompletion:(id)a3;
- (void)isDeviceEnrolledInBetaProgram:(id)a3 completion:(id)a4;
- (void)saveAppleAccountIdentifierWithAlternateDSIDForCurrentDevice:(id)a3 completion:(id)a4;
- (void)seedingAppleIDUsernameForCurrentDeviceWithCompletion:(id)a3;
- (void)setIsMigratingFromProfiles:(BOOL)a3;
- (void)setProfilesEnabledFromHeaderInResponse:(id)a3;
- (void)unenrollDevice:(id)a3 completion:(id)a4;
- (void)validateBetaEnrollmentTokens:(id)a3 errorHandler:(id)a4;
- (void)verifyAssetAudience:(id)a3 programID:(int64_t)a4 accountID:(id)a5 skipEnrollmentCheck:(BOOL)a6 withCompletion:(id)a7;
- (void)verifyAssetAudience:(id)a3 programID:(int64_t)a4 accountID:(id)a5 withCompletion:(id)a6;
- (void)verifyAssetAudience:(id)a3 programID:(int64_t)a4 withCompletion:(id)a5;
- (void)verifyCatalog:(id)a3 withCompletion:(id)a4;
@end

@implementation SDBetaManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[SDBetaManager sharedManager];
  }

  v3 = sharedManager__self;

  return v3;
}

uint64_t __30__SDBetaManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(SDBetaManager);
  v1 = sharedManager__self;
  sharedManager__self = v0;

  v2 = sharedManager__self;

  return [v2 setIsMigratingFromProfiles:0];
}

- (id)verifyURLForCatalog:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = @"catalog_url";
  v11[0] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = [(SDBetaManager *)self serverURLWithPath:@"/catalog/verify" arguments:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)verifyURLForAssetAudience:(id)a3 programID:(int64_t)a4
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = @"asset_audience";
  v14[1] = @"id";
  v15[0] = a3;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithInteger:a4];
  v9 = [v8 stringValue];
  v15[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v11 = [(SDBetaManager *)self serverURLWithPath:@"/catalog/verify" arguments:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)migrateURLForAssetAudience:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = @"asset_audience";
  v11[0] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = [(SDBetaManager *)self serverURLWithPath:@"/catalog/migrate" arguments:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)membershipURLForPlatforms:(unint64_t)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = @"platforms";
  v4 = SDStringArrayFromPlatforms(a3);
  v5 = [v4 componentsJoinedByString:{@", "}];
  v11[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [(SDBetaManager *)self serverURLWithPath:@"/membership/programs" arguments:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)serverURLWithPath:(id)a3 arguments:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = +[SDHTTPClient sharedInstance];
  v8 = [v7 baseURL];

  v9 = [MEMORY[0x277CCACE0] componentsWithURL:v8 resolvingAgainstBaseURL:1];
  v10 = [v9 path];
  v11 = [@"/api/v4" stringByAppendingPathComponent:v10];

  if (v11)
  {
    v12 = [v11 stringByAppendingPathComponent:v5];
    [v9 setPath:v12];

    if (!v6)
    {
      goto LABEL_13;
    }
  }

  else
  {
    [v9 setPath:v5];
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  v29 = v9;
  v30 = v5;
  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count", v11)}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v14 = [v6 allKeys];
  v15 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v32;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v32 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v31 + 1) + 8 * i);
        v20 = MEMORY[0x277CCAD18];
        v21 = [v6 objectForKeyedSubscript:v19];
        v22 = [v20 queryItemWithName:v19 value:v21];

        [v13 addObject:v22];
      }

      v16 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v16);
  }

  v23 = [MEMORY[0x277CBEA60] arrayWithArray:v13];
  v9 = v29;
  [v29 setQueryItems:v23];

  v5 = v30;
  v11 = v28;
LABEL_13:
  v24 = [v9 URL];
  v25 = [v24 copy];

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (void)invalidateCache
{
  v3 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_22E41E000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating program cache", v4, 2u);
  }

  [(SDBetaManager *)self setCachedPrograms:0];
  [(SDBetaManager *)self setCachedPlatform:0];
  [(SDBetaManager *)self setLastCached:0];
}

- (void)invalidateCacheWithCompletion:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v12 = "[SDBetaManager invalidateCacheWithCompletion:]";
    _os_log_impl(&dword_22E41E000, v5, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  [(SDBetaManager *)self invalidateCache];
  v6 = +[SDBetaEnrollmentServiceProxy sharedInstance];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__SDBetaManager_invalidateCacheWithCompletion___block_invoke;
  v9[3] = &unk_2787CBD78;
  v10 = v4;
  v7 = v4;
  [v6 invalidateCacheWithCompletion:v9];

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)isCacheValidForPlatforms:(unint64_t)a3 withMDMConfigurationDate:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(SDBetaManager *)self lastCached];
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    v10 = [(SDBetaManager *)self lastCached];
    v9 = [v10 compare:v6] == -1;
  }

  v11 = [(SDBetaManager *)self cachedPrograms];
  if (v11)
  {
    v12 = [(SDBetaManager *)self cachedPrograms];
    v13 = [v12 count] != 0;
  }

  else
  {
    v13 = 0;
  }

  v14 = [(SDBetaManager *)self cachedPlatform];
  v15 = [(SDBetaManager *)self lastCached];
  if (v15)
  {
    v16 = [MEMORY[0x277CBEAA8] now];
    v17 = [(SDBetaManager *)self lastCached];
    [v16 timeIntervalSinceDate:v17];
    v19 = v18 < 300.0;
  }

  else
  {
    v19 = 0;
  }

  v20 = +[SDSeedingLogging betaHandle];
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v21)
    {
      v22 = [(SDBetaManager *)self lastCached];
      v30 = 138543618;
      v31 = v22;
      v32 = 2114;
      v33 = v6;
      _os_log_impl(&dword_22E41E000, v20, OS_LOG_TYPE_DEFAULT, "MDM configuration invalidated local cache created on [%{public}@]. MDM applied date [%{public}@]", &v30, 0x16u);
    }

    v23 = 0;
  }

  else
  {
    if (v21)
    {
      v24 = @"false";
      if (v13)
      {
        v25 = @"true";
      }

      else
      {
        v25 = @"false";
      }

      if (v14 == a3)
      {
        v26 = @"true";
      }

      else
      {
        v26 = @"false";
      }

      v30 = 138543874;
      v31 = v25;
      v32 = 2114;
      v33 = v26;
      if (v19)
      {
        v24 = @"true";
      }

      v34 = 2114;
      v35 = v24;
      _os_log_impl(&dword_22E41E000, v20, OS_LOG_TYPE_DEFAULT, "IsCacheValid: hasPrograms [%{public}@], hasMatchingPlatform [%{public}@], isWithinTimeout: [%{public}@]", &v30, 0x20u);
    }

    v27 = v14 == a3 && v13;
    v23 = v27 && v19;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v23;
}

- (BOOL)canCurrentDeviceEnrollInBetaUpdates
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v7 = 136446210;
    v8 = "[SDBetaManager canCurrentDeviceEnrollInBetaUpdates]";
    _os_log_impl(&dword_22E41E000, v2, OS_LOG_TYPE_INFO, "%{public}s", &v7, 0xCu);
  }

  v3 = +[SDBetaEnrollmentServiceProxy sharedInstance];
  v4 = [v3 canCurrentDeviceEnrollInBetaProgram];

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)_canCurrentDeviceEnrollInBetaUpdates
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = SeedingDefaults();
  v4 = [v3 BOOLForKey:@"AlwaysShowBetaUpdates"];

  v5 = [(SDBetaManager *)self availableBetaProgramsForPlatforms:+[SDDevice currentDevicePlatform]];
  v6 = [v5 count];

  v7 = [(SDBetaManager *)self _isEnrolledInBetaProgram];
  v8 = [(SDBetaManager *)self _isEnrollmentAllowedByDeviceManagement_legacy];
  v9 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = @"NO";
    if (v4)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    if (v7)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    v16 = 138544130;
    v17 = v11;
    if (v6)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v18 = 2114;
    v19 = v12;
    v20 = 2114;
    v21 = v13;
    if (v8)
    {
      v10 = @"YES";
    }

    v22 = 2114;
    v23 = v10;
    _os_log_impl(&dword_22E41E000, v9, OS_LOG_TYPE_INFO, "Can Enroll? Override: %{public}@ || Enrolled: %{public}@ || HasPrograms: %{public}@ && isMDMAllowed: %{public}@", &v16, 0x2Au);
  }

  result = (v4 & 1) != 0 || v7 || v6 != 0 && v8;
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_isEnrollmentAllowedByDeviceManagement_legacy
{
  v2 = SeedingDefaults();
  v3 = [v2 BOOLForKey:@"RestrictEnrollment"];

  if (v3)
  {
    return 0;
  }

  return +[SDProfileUtilities isProfileInstallationAllowed];
}

void __99__SDBetaManager_queryProgramsForSystemAccountsWithPlatforms_disableBuildPrefixMatching_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 description];
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_22E41E000, v4, OS_LOG_TYPE_DEFAULT, "programs returned: %{public}@", &v7, 0xCu);
  }

  [*(a1 + 32) cachePrograms:v3 forPlatforms:*(a1 + 48)];
  (*(*(a1 + 40) + 16))();

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_queryProgramsForSystemAccountsWithPlatforms:(unint64_t)a3 disableBuildPrefixMatching:(BOOL)a4 language:(id)a5 completion:(id)a6
{
  v78 = *MEMORY[0x277D85DE8];
  v45 = a5;
  v47 = a6;
  v7 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136446210;
    *(&buf + 4) = "[SDBetaManager _queryProgramsForSystemAccountsWithPlatforms:disableBuildPrefixMatching:language:completion:]";
    _os_log_impl(&dword_22E41E000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}s", &buf, 0xCu);
  }

  v8 = [SDPersistence loadMDMConfigurationWithError:0];
  v49 = v8;
  if (!v8)
  {
    v9 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_22E41E000, v9, OS_LOG_TYPE_INFO, "No MDM configuration found", &buf, 2u);
    }

    v8 = 0;
  }

  v10 = [v8 configurationDate];
  v11 = [(SDBetaManager *)self isCacheValidForPlatforms:a3 withMDMConfigurationDate:v10];

  v12 = +[SDSeedingLogging betaHandle];
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (!v11)
  {
    if (v13)
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = a3;
      _os_log_impl(&dword_22E41E000, v12, OS_LOG_TYPE_DEFAULT, "Fetching new program list from server for platform [%ld] (resetting cache).", &buf, 0xCu);
    }

    [(SDBetaManager *)self setCachedPlatform:0];
    [(SDBetaManager *)self setLastCached:0];
    [(SDBetaManager *)self setCachedPrograms:MEMORY[0x277CBEBF8]];
    context = objc_autoreleasePoolPush();
    group = dispatch_group_create();
    *&buf = 0;
    *(&buf + 1) = &buf;
    v74 = 0x3032000000;
    v75 = __Block_byref_object_copy__1;
    v76 = __Block_byref_object_dispose__1;
    v77 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:5];
    if (!v49)
    {
      v17 = +[SDSeedingLogging betaHandle];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *v71 = 0;
        _os_log_impl(&dword_22E41E000, v17, OS_LOG_TYPE_INFO, "No MDM configuration found", v71, 2u);
      }

      v16 = 0;
      v40 = 0;
      goto LABEL_29;
    }

    if ([v49 policy] == 3)
    {
      v15 = +[SDSeedingLogging betaHandle];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *v71 = 0;
        _os_log_impl(&dword_22E41E000, v15, OS_LOG_TYPE_INFO, "MDM configuration AlwaysOff. Returning empty set", v71, 2u);
      }

      (*(v47 + 2))(v47, MEMORY[0x277CBEBF8], 0);
      v16 = 0;
      goto LABEL_58;
    }

    v18 = [v49 restrictUserPrograms];
    v19 = [v49 tokens];
    v16 = v19;
    if (v19)
    {
      v40 = [v19 count] != 0;
      if ((v18 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v40 = 0;
      if (!v18)
      {
        v16 = 0;
LABEL_29:
        v23 = +[SDSeedingLogging betaHandle];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          [SDBetaManager _queryProgramsForSystemAccountsWithPlatforms:disableBuildPrefixMatching:language:completion:];
        }

        v24 = [MEMORY[0x277CB8F48] defaultStore];
        v42 = [v24 aida_accountForPrimaryiCloudAccount];
        v51 = v24;
        v25 = SeedingDefaults();
        v39 = [v25 stringForKey:@"AppleAccountIdentifier"];

        if (v39)
        {
          v41 = [v51 accountWithIdentifier:?];
        }

        else
        {
          v41 = 0;
        }

        v26 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
        if (v42)
        {
          v27 = +[SDSeedingLogging betaHandle];
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *v71 = 0;
            _os_log_impl(&dword_22E41E000, v27, OS_LOG_TYPE_DEFAULT, "Will use iCloud account", v71, 2u);
          }

          [v26 addObject:v42];
        }

        if (v41)
        {
          v28 = +[SDSeedingLogging betaHandle];
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *v71 = 0;
            _os_log_impl(&dword_22E41E000, v28, OS_LOG_TYPE_DEFAULT, "Will use Seeding account", v71, 2u);
          }

          [v26 addObject:v41];
        }

        v29 = +[SDSeedingLogging betaHandle];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = [v26 count];
          *v71 = 134217984;
          v72 = v30;
          _os_log_impl(&dword_22E41E000, v29, OS_LOG_TYPE_DEFAULT, "Fetched accounts [%lu]", v71, 0xCu);
        }

        if ([v26 count] == 0 && !v40)
        {
          v37 = +[SDSeedingLogging betaHandle];
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            [SDBetaManager _queryProgramsForSystemAccountsWithPlatforms:disableBuildPrefixMatching:language:completion:];
          }

          (*(v47 + 2))(v47, 0, 1);
          v36 = v51;
          goto LABEL_57;
        }

        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        obj = v26;
        v31 = [obj countByEnumeratingWithState:&v66 objects:v70 count:16];
        if (v31)
        {
          v32 = *v67;
          do
          {
            for (i = 0; i != v31; ++i)
            {
              if (*v67 != v32)
              {
                objc_enumerationMutation(obj);
              }

              v34 = *(*(&v66 + 1) + 8 * i);
              v35 = objc_autoreleasePoolPush();
              dispatch_group_enter(group);
              v62[0] = MEMORY[0x277D85DD0];
              v62[1] = 3221225472;
              v62[2] = __109__SDBetaManager__queryProgramsForSystemAccountsWithPlatforms_disableBuildPrefixMatching_language_completion___block_invoke;
              v62[3] = &unk_2787CBE48;
              v62[4] = v34;
              v63 = group;
              v64 = v51;
              p_buf = &buf;
              [v34 fetchCredentialTokenWithCompletion:v62];

              objc_autoreleasePoolPop(v35);
            }

            v31 = [obj countByEnumeratingWithState:&v66 objects:v70 count:16];
          }

          while (v31);
        }

        v22 = 0;
        v21 = group;
LABEL_53:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __109__SDBetaManager__queryProgramsForSystemAccountsWithPlatforms_disableBuildPrefixMatching_language_completion___block_invoke_358;
        block[3] = &unk_2787CBE70;
        v57 = &buf;
        v59 = v22;
        v60 = v40;
        v56 = v47;
        block[4] = self;
        v58 = a3;
        v16 = v16;
        v54 = v16;
        v61 = a4;
        v55 = v45;
        dispatch_group_notify(v21, MEMORY[0x277D85CD0], block);

        v36 = v56;
LABEL_57:

LABEL_58:
        _Block_object_dispose(&buf, 8);

        objc_autoreleasePoolPop(context);
        goto LABEL_59;
      }
    }

    v20 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [SDBetaManager _queryProgramsForSystemAccountsWithPlatforms:disableBuildPrefixMatching:language:completion:];
    }

    v21 = group;
    dispatch_group_enter(group);
    dispatch_group_leave(group);
    v22 = 1;
    goto LABEL_53;
  }

  if (v13)
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = a3;
    _os_log_impl(&dword_22E41E000, v12, OS_LOG_TYPE_DEFAULT, "Query for platforms [%ld] was cached, reusing answer.", &buf, 0xCu);
  }

  v14 = [(SDBetaManager *)self cachedPrograms];
  (*(v47 + 2))(v47, v14, 0);

LABEL_59:
  v38 = *MEMORY[0x277D85DE8];
}

void __109__SDBetaManager__queryProgramsForSystemAccountsWithPlatforms_disableBuildPrefixMatching_language_completion___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 48) credentialForAccount:*(a1 + 32) serviceID:@"com.apple.gs.beta.auth"];
    v5 = [*(a1 + 32) aida_alternateDSID];
    v6 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v22 = v5;
      _os_log_impl(&dword_22E41E000, v6, OS_LOG_TYPE_INFO, "altDSID:     %@", buf, 0xCu);
    }

    v7 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) username];
      *buf = 138412290;
      v22 = v8;
      _os_log_impl(&dword_22E41E000, v7, OS_LOG_TYPE_INFO, "username:    %@", buf, 0xCu);
    }

    v9 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v4 keysForCredentialItems];
      v11 = [v10 count];
      *buf = 134217984;
      v22 = v11;
      _os_log_impl(&dword_22E41E000, v9, OS_LOG_TYPE_INFO, "credentials: %ld", buf, 0xCu);
    }

    v12 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [v4 token];
      *buf = 138412290;
      v22 = v13;
      _os_log_impl(&dword_22E41E000, v12, OS_LOG_TYPE_INFO, "cred token:  %@", buf, 0xCu);
    }

    if (v5)
    {
      v14 = *(*(*(a1 + 56) + 8) + 40);
      v19[0] = @"credential_token";
      v19[1] = @"adsid_token";
      v20[0] = v3;
      v20[1] = v5;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
      [v14 addObject:v15];
    }

    else
    {
      v15 = +[SDSeedingLogging betaHandle];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __109__SDBetaManager__queryProgramsForSystemAccountsWithPlatforms_disableBuildPrefixMatching_language_completion___block_invoke_cold_1((a1 + 32));
      }
    }

    dispatch_group_leave(*(a1 + 40));
  }

  else
  {
    v16 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      *buf = 138412290;
      v22 = v17;
      _os_log_impl(&dword_22E41E000, v16, OS_LOG_TYPE_DEFAULT, "No credential token for account %@", buf, 0xCu);
    }

    dispatch_group_leave(*(a1 + 40));
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __109__SDBetaManager__queryProgramsForSystemAccountsWithPlatforms_disableBuildPrefixMatching_language_completion___block_invoke_358(uint64_t a1)
{
  if ([*(*(*(a1 + 64) + 8) + 40) count])
  {
    return [*(a1 + 32) _finallyQueryProgramsForSystemAccountsWithPlatforms:*(a1 + 72) credentials:*(*(*(a1 + 64) + 8) + 40) betaEnrollmentTokens:*(a1 + 40) shouldSavePrograms:1 disableBuildPrefixMatching:*(a1 + 82) language:*(a1 + 48) completion:*(a1 + 56)];
  }

  if (*(a1 + 80) == 1)
  {
    v2 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22E41E000, v2, OS_LOG_TYPE_DEFAULT, "Not using AppleID accounts to query for programs.", buf, 2u);
    }

    v3 = *(*(a1 + 64) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
LABEL_6:

    return [*(a1 + 32) _finallyQueryProgramsForSystemAccountsWithPlatforms:*(a1 + 72) credentials:*(*(*(a1 + 64) + 8) + 40) betaEnrollmentTokens:*(a1 + 40) shouldSavePrograms:1 disableBuildPrefixMatching:*(a1 + 82) language:*(a1 + 48) completion:*(a1 + 56)];
  }

  v6 = *(a1 + 81);
  v7 = +[SDSeedingLogging betaHandle];
  v4 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_22E41E000, v4, OS_LOG_TYPE_DEFAULT, "Proceeding without account info.", v8, 2u);
    }

    goto LABEL_6;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __109__SDBetaManager__queryProgramsForSystemAccountsWithPlatforms_disableBuildPrefixMatching_language_completion___block_invoke_358_cold_1();
  }

  return (*(*(a1 + 56) + 16))();
}

- (void)validateBetaEnrollmentTokens:(id)a3 errorHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 count])
  {
    v8 = +[SDDevice devicePlatform];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __59__SDBetaManager_validateBetaEnrollmentTokens_errorHandler___block_invoke;
    v18[3] = &unk_2787CBE98;
    v20 = v7;
    v19 = v6;
    [(SDBetaManager *)self _finallyQueryProgramsForSystemAccountsWithPlatforms:v8 credentials:0 betaEnrollmentTokens:v19 shouldSavePrograms:0 disableBuildPrefixMatching:0 language:0 completion:v18];

    v9 = v20;
  }

  else
  {
    v10 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(SDBetaManager *)v10 validateBetaEnrollmentTokens:v11 errorHandler:v12, v13, v14, v15, v16, v17];
    }

    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.seeding.beta-manager" code:15 userInfo:0];
    (*(v7 + 2))(v7, v9);
  }
}

void __59__SDBetaManager_validateBetaEnrollmentTokens_errorHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v7 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __59__SDBetaManager_validateBetaEnrollmentTokens_errorHandler___block_invoke_cold_1();
    }

    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.seeding.beta-manager" code:a3 userInfo:0];
LABEL_5:
    (*(*(a1 + 40) + 16))();
    goto LABEL_34;
  }

  if (![v5 count])
  {
    v30 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      __59__SDBetaManager_validateBetaEnrollmentTokens_errorHandler___block_invoke_cold_2();
    }

    v31 = SDMDMConfiguratorErrorWithType(3uLL);
    v8 = SDMDMConfiguratorErrorAddInvalidTokens(v31, *(a1 + 32));

    goto LABEL_5;
  }

  v8 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v40 objects:v47 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v41;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v41 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v40 + 1) + 8 * i);
        v15 = [v14 betaEnrollmentTokens];

        if (v15)
        {
          v16 = [v14 betaEnrollmentTokens];
          v17 = [v16 allObjects];
          [v8 addObjectsFromArray:v17];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v40 objects:v47 count:16];
    }

    while (v11);
  }

  v18 = [MEMORY[0x277CBEB58] setWithSet:*(a1 + 32)];
  [v18 minusSet:v8];
  if ([v18 count])
  {
    v34 = a1;
    v35 = v6;
    v19 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v18 count];
      *buf = 134217984;
      v46 = v20;
      _os_log_impl(&dword_22E41E000, v19, OS_LOG_TYPE_DEFAULT, "Found [%lu] invalid BETs", buf, 0xCu);
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v33 = v18;
    v21 = v18;
    v22 = [v21 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v37;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v37 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v36 + 1) + 8 * j);
          v27 = +[SDSeedingLogging betaHandle];
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v46 = v26;
            _os_log_impl(&dword_22E41E000, v27, OS_LOG_TYPE_DEFAULT, "Invalid BET: [%{public}@]", buf, 0xCu);
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v23);
    }

    v28 = SDMDMConfiguratorErrorWithType(3uLL);
    v29 = SDMDMConfiguratorErrorAddInvalidTokens(v28, v21);

    (*(*(v34 + 40) + 16))();
    v6 = v35;
    v18 = v33;
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

LABEL_34:
  v32 = *MEMORY[0x277D85DE8];
}

- (void)_finallyQueryProgramsForSystemAccountsWithPlatforms:(unint64_t)a3 credentials:(id)a4 betaEnrollmentTokens:(id)a5 shouldSavePrograms:(BOOL)a6 disableBuildPrefixMatching:(BOOL)a7 language:(id)a8 completion:(id)a9
{
  v68 = *MEMORY[0x277D85DE8];
  v51 = a4;
  v54 = a5;
  v52 = a8;
  v45 = a9;
  v11 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v67 = "[SDBetaManager _finallyQueryProgramsForSystemAccountsWithPlatforms:credentials:betaEnrollmentTokens:shouldSavePrograms:disableBuildPrefixMatching:language:completion:]";
    _os_log_impl(&dword_22E41E000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}s", buf, 0xCu);
  }

  v12 = [v54 count] == 0;
  v13 = +[SDSeedingLogging betaHandle];
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v14)
    {
      *buf = 0;
      _os_log_impl(&dword_22E41E000, v13, OS_LOG_TYPE_DEFAULT, "Querying programs", buf, 2u);
    }
  }

  else
  {
    if (v14)
    {
      v15 = [v54 count];
      *buf = 134217984;
      v67 = v15;
      _os_log_impl(&dword_22E41E000, v13, OS_LOG_TYPE_DEFAULT, "Querying programs with [%ld] Beta Enrollment Tokens", buf, 0xCu);
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v13 = v54;
    v16 = [v13 countByEnumeratingWithState:&v61 objects:v65 count:16];
    if (v16)
    {
      v17 = *v62;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v62 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(*(&v61 + 1) + 8 * i);
          v20 = +[SDSeedingLogging betaHandle];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v67 = v19;
            _os_log_impl(&dword_22E41E000, v20, OS_LOG_TYPE_DEFAULT, "Will use BET: [%{public}@]", buf, 0xCu);
          }
        }

        v16 = [v13 countByEnumeratingWithState:&v61 objects:v65 count:16];
      }

      while (v16);
    }
  }

  v55 = [MEMORY[0x277CF0218] currentDevice];
  v49 = [v55 uniqueDeviceIdentifier];
  v48 = [v55 serverFriendlyDescription];
  v21 = MEMORY[0x277CCAB70];
  v22 = [(SDBetaManager *)self membershipURLForPlatforms:a3];
  v23 = [v21 requestWithURL:v22];

  v24 = [objc_alloc(MEMORY[0x277CF0188]) initWithIdentifier:@"com.apple.gs.beta.auth"];
  v25 = MEMORY[0x277CBEB38];
  v26 = [v23 allHTTPHeaderFields];
  v27 = [v25 dictionaryWithDictionary:v26];

  [v27 setValue:@"application/json" forKey:@"Content-Type"];
  [v27 setValue:@"application/json" forKey:@"Accept"];
  [v27 setValue:v49 forKey:@"X-Mme-Device-Id"];
  [v27 setValue:@"AAAABQAAABAxmM8oXLJsHORxxxxxxxxxAAAAAw==" forKey:@"X-Apple-I-MD"];
  [v27 setValue:v48 forKey:@"X-MMe-Client-Info"];
  if (v52)
  {
    [v27 setValue:v52 forKey:@"Accept-Language"];
  }

  [v23 setAllHTTPHeaderFields:v27];
  v28 = +[SDHTTPClient sharedInstance];
  v47 = [v28 urlSession];

  v29 = [v47 configuration];
  [v29 set_appleIDContext:v24];
  v30 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v67 = v27;
    _os_log_impl(&dword_22E41E000, v30, OS_LOG_TYPE_INFO, "headers: %@", buf, 0xCu);
  }

  v31 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v32 = [v29 HTTPAdditionalHeaders];
    *buf = 138543362;
    v67 = v32;
    _os_log_impl(&dword_22E41E000, v31, OS_LOG_TYPE_INFO, "Additional Headers: %{public}@", buf, 0xCu);
  }

  [v29 set_appleIDContext:v24];
  v33 = MEMORY[0x277CCAD30];
  v34 = +[SDHTTPClient sharedInstance];
  v35 = [v33 sessionWithConfiguration:v29 delegate:v34 delegateQueue:0];

  v36 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  if (v54)
  {
    v37 = [v54 allObjects];
    [v36 setObject:v37 forKeyedSubscript:@"beta_enrollment_tokens"];
  }

  if (v51)
  {
    [v36 setObject:v51 forKeyedSubscript:@"tokens"];
  }

  v38 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    [SDBetaManager _finallyQueryProgramsForSystemAccountsWithPlatforms:v23 credentials:v38 betaEnrollmentTokens:? shouldSavePrograms:? disableBuildPrefixMatching:? language:? completion:?];
  }

  v39 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
  {
    [SDBetaManager _finallyQueryProgramsForSystemAccountsWithPlatforms:credentials:betaEnrollmentTokens:shouldSavePrograms:disableBuildPrefixMatching:language:completion:];
  }

  v40 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v36 options:1 error:0];
  [v23 setHTTPBody:v40];
  [v23 setHTTPMethod:@"POST"];
  objc_initWeak(buf, self);
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __168__SDBetaManager__finallyQueryProgramsForSystemAccountsWithPlatforms_credentials_betaEnrollmentTokens_shouldSavePrograms_disableBuildPrefixMatching_language_completion___block_invoke;
  v56[3] = &unk_2787CBEC0;
  v41 = v45;
  v56[4] = self;
  v57 = v41;
  v59 = a7;
  objc_copyWeak(v58, buf);
  v58[1] = a3;
  v60 = a6;
  v42 = [v35 dataTaskWithRequest:v23 completionHandler:v56];
  [v42 resume];

  objc_destroyWeak(v58);
  objc_destroyWeak(buf);

  v43 = *MEMORY[0x277D85DE8];
}

void __168__SDBetaManager__finallyQueryProgramsForSystemAccountsWithPlatforms_credentials_betaEnrollmentTokens_shouldSavePrograms_disableBuildPrefixMatching_language_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v74 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v8;
  v11 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v10 allHeaderFields];
    v13 = [v12 objectForKeyedSubscript:@"X-Request-Id"];
    *buf = 138543362;
    v68 = v13;
    _os_log_impl(&dword_22E41E000, v11, OS_LOG_TYPE_DEFAULT, "/programs X-Request-Id: %{public}@", buf, 0xCu);
  }

  if (!v9)
  {
    [*(a1 + 32) setProfilesEnabledFromHeaderInResponse:v10];
    v65 = 0;
    v15 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:0 error:&v65];
    v16 = v65;
    if (!v15)
    {
      v19 = +[SDSeedingLogging betaHandle];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        __168__SDBetaManager__finallyQueryProgramsForSystemAccountsWithPlatforms_credentials_betaEnrollmentTokens_shouldSavePrograms_disableBuildPrefixMatching_language_completion___block_invoke_cold_3();
      }

      (*(*(a1 + 40) + 16))();
      goto LABEL_54;
    }

    v17 = [v15 objectForKey:@"programs"];
    if (!v17)
    {
      v20 = +[SDSeedingLogging betaHandle];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        __168__SDBetaManager__finallyQueryProgramsForSystemAccountsWithPlatforms_credentials_betaEnrollmentTokens_shouldSavePrograms_disableBuildPrefixMatching_language_completion___block_invoke_cold_2();
      }

      (*(*(a1 + 40) + 16))();
      goto LABEL_53;
    }

    v54 = v7;
    v52 = v15;
    v53 = v10;
    v51 = v16;
    if (*(a1 + 64))
    {
      v18 = 1;
    }

    else if (SDIsInternalInstall())
    {
      v21 = SeedingDefaults();
      v18 = [v21 BOOLForKey:@"DisableBuildFiltering"];
    }

    else
    {
      v18 = 0;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v55 = a1;
    v50 = v17;
    v23 = [WeakRetained parseProgramsResponse:v17 platforms:*(a1 + 56) shouldCache:*(a1 + 65) skipsBuildMatching:v18];

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    obj = v23;
    v24 = [obj countByEnumeratingWithState:&v61 objects:v73 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v62;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v62 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v61 + 1) + 8 * i);
          v29 = +[SDSeedingLogging betaHandle];
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = [v28 title];
            v31 = [v28 programID];
            v32 = [v28 assetAudience];
            *buf = 138543874;
            v68 = v30;
            v69 = 2048;
            v70 = v31;
            v71 = 2114;
            v72 = v32;
            _os_log_impl(&dword_22E41E000, v29, OS_LOG_TYPE_DEFAULT, "Loaded program [%{public}@ - %lu] assetAudience: [%{public}@]", buf, 0x20u);
          }
        }

        v25 = [obj countByEnumeratingWithState:&v61 objects:v73 count:16];
      }

      while (v25);
    }

    v33 = v55;
    v34 = *(v55 + 65);
    v35 = +[SDSeedingLogging betaHandle];
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_INFO);
    if (v34)
    {
      if (v36)
      {
        *buf = 0;
        _os_log_impl(&dword_22E41E000, v35, OS_LOG_TYPE_INFO, "Saving programs", buf, 2u);
      }

      v37 = *(v55 + 32);
      v35 = [objc_opt_class() _currentBetaProgram];
      v7 = v54;
      if (v35)
      {
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v38 = obj;
        v39 = [v38 countByEnumeratingWithState:&v57 objects:v66 count:16];
        if (v39)
        {
          v40 = v39;
          v41 = *v58;
          while (2)
          {
            for (j = 0; j != v40; ++j)
            {
              if (*v58 != v41)
              {
                objc_enumerationMutation(v38);
              }

              v43 = *(*(&v57 + 1) + 8 * j);
              v44 = [v43 programID];
              if (v44 == [v35 programID])
              {
                v45 = +[SDSeedingLogging betaHandle];
                if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
                {
                  v46 = [v35 description];
                  v47 = [v43 description];
                  *buf = 138543618;
                  v68 = v46;
                  v69 = 2114;
                  v70 = v47;
                  _os_log_impl(&dword_22E41E000, v45, OS_LOG_TYPE_DEFAULT, "Replacing current program %{public}@ with new program %{public}@", buf, 0x16u);
                }

                [*(v55 + 32) _saveBetaProgram:v43];
                goto LABEL_49;
              }
            }

            v40 = [v38 countByEnumeratingWithState:&v57 objects:v66 count:16];
            if (v40)
            {
              continue;
            }

            break;
          }
        }

LABEL_49:

        v10 = v53;
        v33 = v55;
        goto LABEL_50;
      }
    }

    else
    {
      if (v36)
      {
        *buf = 0;
        _os_log_impl(&dword_22E41E000, v35, OS_LOG_TYPE_INFO, "Not saving programs at this time", buf, 2u);
      }

      v7 = v54;
    }

    v10 = v53;
LABEL_50:
    v16 = v51;
    v15 = v52;
    v17 = v50;

    v48 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v68 = v50;
      _os_log_impl(&dword_22E41E000, v48, OS_LOG_TYPE_DEFAULT, "JSON response: %{private}@", buf, 0xCu);
    }

    (*(*(v33 + 40) + 16))();
LABEL_53:

LABEL_54:
    goto LABEL_55;
  }

  v14 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    __168__SDBetaManager__finallyQueryProgramsForSystemAccountsWithPlatforms_credentials_betaEnrollmentTokens_shouldSavePrograms_disableBuildPrefixMatching_language_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
LABEL_55:

  v49 = *MEMORY[0x277D85DE8];
}

- (void)cachePrograms:(id)a3 forPlatforms:(unint64_t)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = a4;
    _os_log_impl(&dword_22E41E000, v7, OS_LOG_TYPE_DEFAULT, "Saving programs to cache for platforms [%ld].", &v10, 0xCu);
  }

  v8 = [MEMORY[0x277CBEAA8] now];
  [(SDBetaManager *)self setLastCached:v8];

  [(SDBetaManager *)self setCachedPlatform:a4];
  [(SDBetaManager *)self setCachedPrograms:v6];

  v9 = *MEMORY[0x277D85DE8];
}

- (id)parseProgramsResponse:(id)a3 platforms:(unint64_t)a4 shouldCache:(BOOL)a5 skipsBuildMatching:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v40 = *MEMORY[0x277D85DE8];
  v9 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v29 = +[SDDevice osBuild];
    v30 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v9, "count")}];
    if (v6)
    {
      v10 = +[SDSeedingLogging betaHandle];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22E41E000, v10, OS_LOG_TYPE_DEFAULT, "Skipping build prefix filtering", buf, 2u);
      }
    }

    v26 = v7;
    v25 = a4;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v27 = v9;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v31 objects:v39 count:16];
    v13 = self;
    if (v12)
    {
      v14 = v12;
      v15 = *v32;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v32 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = [SDBetaProgram betaProgramWithJSON:*(*(&v31 + 1) + 8 * i)];
          if (v17)
          {
            if (v6 || (v18 = objc_opt_class(), [v17 buildPrefix], v19 = objc_claimAutoreleasedReturnValue(), LODWORD(v18) = objc_msgSend(v18, "isBuildPrefix:greaterThanOrEqualToBuild:", v19, v29), v19, v18))
            {
              [v30 addObject:v17];
            }

            else
            {
              v20 = +[SDSeedingLogging betaHandle];
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                v21 = [v17 description];
                v22 = [v17 buildPrefix];
                *buf = 138543618;
                v36 = v21;
                v37 = 2114;
                v38 = v22;
                _os_log_impl(&dword_22E41E000, v20, OS_LOG_TYPE_DEFAULT, "Skipping beta program %{public}@ because build prefix %{public}@ doesn't match device build.", buf, 0x16u);

                v13 = self;
              }
            }
          }
        }

        v14 = [v11 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v14);
    }

    if (v26)
    {
      [(SDBetaManager *)v13 cachePrograms:v30 forPlatforms:v25];
    }

    v9 = v27;
  }

  else
  {
    v30 = MEMORY[0x277CBEBF8];
  }

  v23 = *MEMORY[0x277D85DE8];

  return v30;
}

+ (BOOL)isBuildPrefix:(id)a3 greaterThanOrEqualToBuild:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 1;
  if (v5 && v6)
  {
    v9 = [v5 length];
    if (v9 > [v7 length])
    {
      v10 = +[SDSeedingLogging betaHandle];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        +[SDBetaManager isBuildPrefix:greaterThanOrEqualToBuild:];
      }

      v8 = 1;
LABEL_26:

      goto LABEL_27;
    }

    if (([v7 hasPrefix:v5] & 1) == 0)
    {
      v34 = 0;
      v11 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(\\d+)([A-Za-z])?" options:1 error:&v34];
      v10 = v34;
      if (v10)
      {
        v12 = +[SDSeedingLogging betaHandle];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [SDBetaManager isBuildPrefix:v10 greaterThanOrEqualToBuild:?];
        }

        v8 = 1;
      }

      else
      {
        v13 = [v11 matchesInString:v7 options:0 range:{0, objc_msgSend(v7, "length")}];
        v12 = [v13 firstObject];

        v14 = [v11 matchesInString:v5 options:0 range:{0, objc_msgSend(v5, "length")}];
        v15 = [v14 firstObject];

        if (v12 && v15 && -[NSObject numberOfRanges](v12, "numberOfRanges") == 3 && [v15 numberOfRanges] == 3)
        {
          v8 = 1;
          v16 = [v12 rangeAtIndex:1];
          v18 = [v7 substringWithRange:{v16, v17}];
          v19 = [v18 integerValue];

          v20 = [v15 rangeAtIndex:1];
          v22 = [v5 substringWithRange:{v20, v21}];
          v23 = [v22 integerValue];

          if (v23 <= v19)
          {
            if ([v15 rangeAtIndex:2] == 0x7FFFFFFFFFFFFFFFLL || -[NSObject rangeAtIndex:](v12, "rangeAtIndex:", 2) == 0x7FFFFFFFFFFFFFFFLL)
            {
              v8 = v23 == v19;
            }

            else if (v23 == v19)
            {
              v26 = [v12 rangeAtIndex:2];
              v28 = [v7 substringWithRange:{v26, v27}];
              v29 = [v28 uppercaseString];

              v30 = [v15 rangeAtIndex:2];
              v32 = [v7 substringWithRange:{v30, v31}];
              v33 = [v32 uppercaseString];

              v8 = [v33 compare:v29] != 1;
            }

            else
            {
              v8 = 0;
            }
          }
        }

        else
        {
          v24 = +[SDSeedingLogging betaHandle];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            +[SDBetaManager isBuildPrefix:greaterThanOrEqualToBuild:];
          }

          v8 = 1;
        }
      }

      goto LABEL_26;
    }

    v8 = 1;
  }

LABEL_27:

  return v8;
}

- (id)availableBetaProgramsForPlatforms:(unint64_t)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v21 = "[SDBetaManager availableBetaProgramsForPlatforms:]";
    _os_log_impl(&dword_22E41E000, v5, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  v6 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [(SDBetaManager *)self cachedPrograms];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (([v12 platform] & a3) != 0)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)enrollDevice:(id)a3 inBetaProgram:(id)a4 completion:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v25 = "[SDBetaManager enrollDevice:inBetaProgram:completion:]";
    _os_log_impl(&dword_22E41E000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  if ([v7 isErrorDevice])
  {
    v11 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(SDBetaManager *)v11 enrollDevice:v12 inBetaProgram:v13 completion:v14, v15, v16, v17, v18];
    }

    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.seeding.beta-manager" code:14 userInfo:0];
    v9[2](v9, v19);
  }

  else
  {
    v20 = +[SDBetaEnrollmentServiceProxy sharedInstance];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __55__SDBetaManager_enrollDevice_inBetaProgram_completion___block_invoke;
    v22[3] = &unk_2787CBD78;
    v23 = v9;
    [v20 enrollDevice:v7 inProgram:v8 completion:v22];

    v19 = v23;
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)enrollDevice:(id)a3 withEnrollmentMetadata:(id)a4 completion:(id)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22E41E000, v11, OS_LOG_TYPE_DEFAULT, "Enrolling device with metadata", buf, 2u);
  }

  v12 = [v10 objectForKeyedSubscript:@"AssetAudience"];
  v13 = [v10 objectForKeyedSubscript:@"ProgramID"];

  if ([v8 isErrorDevice])
  {
    v14 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(SDBetaManager *)v14 enrollDevice:v15 withEnrollmentMetadata:v16 completion:v17, v18, v19, v20, v21];
    }

    v22 = MEMORY[0x277CCA9B8];
    v23 = 14;
    goto LABEL_13;
  }

  if (!v12)
  {
    v22 = MEMORY[0x277CCA9B8];
    v23 = 4;
LABEL_13:
    v27 = [v22 errorWithDomain:@"com.apple.seeding.beta-manager" code:v23 userInfo:0];
    v9[2](v9, v27);

    goto LABEL_18;
  }

  if (v13)
  {
    v24 = [v13 integerValue];
    v25 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v37 = v13;
      _os_log_impl(&dword_22E41E000, v25, OS_LOG_TYPE_DEFAULT, "Metadata has catalog ID %{public}@, will verify", buf, 0xCu);
    }

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __64__SDBetaManager_enrollDevice_withEnrollmentMetadata_completion___block_invoke_412;
    v30[3] = &unk_2787CBAD0;
    v30[4] = self;
    v31 = v8;
    v32 = v9;
    [(SDBetaManager *)self verifyAssetAudience:v12 programID:v24 accountID:0 skipEnrollmentCheck:1 withCompletion:v30];

    v26 = v31;
  }

  else
  {
    v28 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22E41E000, v28, OS_LOG_TYPE_DEFAULT, "Metadata has no catalog ID, will migrate", buf, 2u);
    }

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __64__SDBetaManager_enrollDevice_withEnrollmentMetadata_completion___block_invoke;
    v33[3] = &unk_2787CBEE8;
    v35 = v9;
    v33[4] = self;
    v34 = v8;
    [(SDBetaManager *)self getMigrationProgramForAssetAudience:v12 completion:v33];

    v26 = v35;
  }

LABEL_18:
  v29 = *MEMORY[0x277D85DE8];
}

void __64__SDBetaManager_enrollDevice_withEnrollmentMetadata_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = v5;
    _os_log_impl(&dword_22E41E000, v6, OS_LOG_TYPE_DEFAULT, "Metadata enroll via migration returned %{public}@", &v10, 0xCu);
  }

  if (a3)
  {
    v7 = *(a1 + 48);
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.seeding.beta-manager" code:7 userInfo:0];
    (*(v7 + 16))(v7, v8);
  }

  else
  {
    [*(a1 + 32) enrollDevice:*(a1 + 40) inBetaProgram:v5 completion:*(a1 + 48)];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __64__SDBetaManager_enrollDevice_withEnrollmentMetadata_completion___block_invoke_412(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = v5;
    _os_log_impl(&dword_22E41E000, v6, OS_LOG_TYPE_DEFAULT, "Metadata enroll via verify returned %{public}@", &v10, 0xCu);
  }

  if (v5 && a2)
  {
    [*(a1 + 32) enrollDevice:*(a1 + 40) inBetaProgram:v5 completion:*(a1 + 48)];
  }

  else
  {
    v7 = *(a1 + 48);
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.seeding.beta-manager" code:7 userInfo:0];
    (*(v7 + 16))(v7, v8);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)enrollCurrentDeviceWithEnrollmentMetadata:(id)a3 completion:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v16 = "[SDBetaManager enrollCurrentDeviceWithEnrollmentMetadata:completion:]";
    _os_log_impl(&dword_22E41E000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__SDBetaManager_enrollCurrentDeviceWithEnrollmentMetadata_completion___block_invoke;
  v12[3] = &unk_2787CBF10;
  v13 = v6;
  v14 = v7;
  v12[4] = self;
  v9 = v6;
  v10 = v7;
  [SDDevice getCurrentDevice:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __70__SDBetaManager_enrollCurrentDeviceWithEnrollmentMetadata_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isErrorDevice])
  {
    v4 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __70__SDBetaManager_enrollCurrentDeviceWithEnrollmentMetadata_completion___block_invoke_cold_1();
    }

    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.seeding.beta-manager" code:14 userInfo:0];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    [*(a1 + 32) enrollDevice:v3 withEnrollmentMetadata:*(a1 + 40) completion:*(a1 + 48)];
  }
}

- (void)enrollmentMetadataForDevice:(id)a3 completion:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 136446210;
    v25 = "[SDBetaManager enrollmentMetadataForDevice:completion:]";
    _os_log_impl(&dword_22E41E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s", &v24, 0xCu);
  }

  if ([v5 isErrorDevice])
  {
    v8 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(SDBetaManager *)v8 enrollmentMetadataForDevice:v9 completion:v10, v11, v12, v13, v14, v15];
    }
  }

  v16 = [v5 currentConfiguration];
  v17 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  v18 = [v16 assetAudience];
  [v17 setObject:v18 forKeyedSubscript:@"AssetAudience"];

  v19 = [v16 seedProgramID];
  v20 = [v19 stringValue];
  [v17 setObject:v20 forKeyedSubscript:@"ProgramID"];

  v21 = +[SDSeedProgramManager stringForSeedProgram:](SDSeedProgramManager, "stringForSeedProgram:", [v16 seedProgram]);
  [v17 setObject:v21 forKeyedSubscript:@"SeedProgram"];

  v22 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v17];
  v6[2](v6, v22);

  v23 = *MEMORY[0x277D85DE8];
}

- (id)enrollmentMetadataForCurrentDevice
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v9 = 136446210;
    v10 = "[SDBetaManager enrollmentMetadataForCurrentDevice]";
    _os_log_impl(&dword_22E41E000, v2, OS_LOG_TYPE_INFO, "%{public}s", &v9, 0xCu);
  }

  v3 = +[SDBetaEnrollmentServiceProxy sharedInstance];
  v4 = [v3 getCurrentDeviceSynchronously];

  v5 = [v4 currentConfiguration];
  v6 = [v5 enrollmentMetadata];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)enrollmentMetadataForCurrentDeviceWithCompletion:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v11 = "[SDBetaManager enrollmentMetadataForCurrentDeviceWithCompletion:]";
    _os_log_impl(&dword_22E41E000, v5, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__SDBetaManager_enrollmentMetadataForCurrentDeviceWithCompletion___block_invoke;
  v8[3] = &unk_2787CBF38;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  [SDDevice getCurrentDevice:v8];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_enrollUsingSeedingConfiguration:(id)a3 userIdentifier:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543362;
    v17 = v6;
    _os_log_impl(&dword_22E41E000, v8, OS_LOG_TYPE_DEFAULT, "Enrolling [%{public}@]", &v16, 0xCu);
  }

  v9 = [v6 assetAudience];
  [(SDBetaManager *)self _setAssetAudienceString:v9];

  v10 = [v6 catalog];
  if (v10)
  {
    v11 = v10;
    v12 = [v6 catalog];
    v13 = [v12 isEqualToString:&stru_28424D460];

    if ((v13 & 1) == 0)
    {
      v14 = [v6 catalog];
      [(SDBetaManager *)self _setAssetServerURLString:v14];
    }
  }

  +[SDSeedProgramManager _setSeedProgramPref:](SDSeedProgramManager, "_setSeedProgramPref:", [v6 seedProgram]);
  [(SDBetaManager *)self _setMemberEnrolled:1];
  if ([v6 seedProgram] != 4)
  {
    [(SDBetaManager *)self _changeFBAVisibilityWithUserIdentifier:v7 isVisible:1];
  }

  [(SDBetaManager *)self _synchronizeCFPreferences];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_saveBetaProgram:(id)a3
{
  v3 = a3;
  v8 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v8];
  v5 = v8;
  v6 = +[SDSeedingLogging betaHandle];
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(SDBetaManager *)v3 _saveBetaProgram:v5];
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [SDBetaManager _saveBetaProgram:];
    }

    CFPreferencesSetValue(@"BetaProgramObject", v4, @"com.apple.seeding", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  }
}

+ (id)_currentBetaProgram
{
  v2 = CFPreferencesCopyValue(@"BetaProgramObject", @"com.apple.seeding", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  if (v2)
  {
    v8 = 0;
    v3 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:&v8];
    v4 = v8;
    if (v4)
    {
      v5 = +[SDSeedingLogging betaHandle];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        +[(SDBetaManager *)v4];
      }

      v6 = 0;
    }

    else
    {
      v6 = v3;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)enrolledBetaProgramForDevice:(id)a3 completion:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 identifier];
    *buf = 138477827;
    v22 = v8;
    _os_log_impl(&dword_22E41E000, v7, OS_LOG_TYPE_DEFAULT, "Getting current program for device %{private}@", buf, 0xCu);
  }

  if ([v5 isErrorDevice])
  {
    v9 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(SDBetaManager *)v9 enrolledBetaProgramForDevice:v10 completion:v11, v12, v13, v14, v15, v16];
    }

    v6[2](v6, 0);
  }

  else
  {
    v17 = +[SDBetaEnrollmentServiceProxy sharedInstance];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __57__SDBetaManager_enrolledBetaProgramForDevice_completion___block_invoke;
    v19[3] = &unk_2787CBF60;
    v20 = v6;
    [v17 enrolledBetaProgramForDevice:v5 completion:v19];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)enrolledBetaProgramForCurrentDevice
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v7 = 136446210;
    v8 = "[SDBetaManager enrolledBetaProgramForCurrentDevice]";
    _os_log_impl(&dword_22E41E000, v2, OS_LOG_TYPE_INFO, "%{public}s", &v7, 0xCu);
  }

  v3 = +[SDBetaEnrollmentServiceProxy sharedInstance];
  v4 = [v3 getCurrentDeviceEnrolledBetaProgramSynchronously];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)verifyCatalog:(id)a3 withCompletion:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v6;
    _os_log_impl(&dword_22E41E000, v8, OS_LOG_TYPE_DEFAULT, "Verifying %@", buf, 0xCu);
  }

  v9 = MEMORY[0x277CCAB70];
  v10 = [(SDBetaManager *)self verifyURLForCatalog:v6];
  v11 = [v9 requestWithURL:v10 cachePolicy:1 timeoutInterval:15.0];

  v12 = +[SDHTTPClient sharedInstance];
  v13 = [v12 urlSession];

  [v11 setHTTPMethod:@"GET"];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __46__SDBetaManager_verifyCatalog_withCompletion___block_invoke;
  v17[3] = &unk_2787CBF88;
  v18 = v7;
  v14 = v7;
  v15 = [v13 dataTaskWithRequest:v11 completionHandler:v17];
  [v15 resume];

  v16 = *MEMORY[0x277D85DE8];
}

void __46__SDBetaManager_verifyCatalog_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __46__SDBetaManager_verifyCatalog_withCompletion___block_invoke_cold_1();
    }

    goto LABEL_5;
  }

  if ([v8 statusCode] != 200)
  {
    if ([v8 statusCode] == 204)
    {
      v15 = +[SDSeedingLogging betaHandle];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        __46__SDBetaManager_verifyCatalog_withCompletion___block_invoke_cold_2();
      }

      v11 = *(*(a1 + 32) + 16);
      goto LABEL_6;
    }

LABEL_5:
    v11 = *(*(a1 + 32) + 16);
LABEL_6:
    v11();
    goto LABEL_7;
  }

  v12 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:0 error:0];
  v13 = [v12 objectForKey:@"catalog"];

  if (v13)
  {
    v14 = [SDBetaProgram betaProgramWithJSON:v12];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v16 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __46__SDBetaManager_verifyCatalog_withCompletion___block_invoke_cold_3();
    }

    (*(*(a1 + 32) + 16))();
  }

LABEL_7:
}

- (void)verifyAssetAudience:(id)a3 programID:(int64_t)a4 withCompletion:(id)a5
{
  v14 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a3;
  v10 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v12 = 136446210;
    v13 = "[SDBetaManager verifyAssetAudience:programID:withCompletion:]";
    _os_log_impl(&dword_22E41E000, v10, OS_LOG_TYPE_INFO, "%{public}s", &v12, 0xCu);
  }

  [(SDBetaManager *)self verifyAssetAudience:v9 programID:a4 accountID:0 skipEnrollmentCheck:0 withCompletion:v8];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)verifyAssetAudience:(id)a3 programID:(int64_t)a4 accountID:(id)a5 withCompletion:(id)a6
{
  v17 = *MEMORY[0x277D85DE8];
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v15 = 136446210;
    v16 = "[SDBetaManager verifyAssetAudience:programID:accountID:withCompletion:]";
    _os_log_impl(&dword_22E41E000, v13, OS_LOG_TYPE_INFO, "%{public}s", &v15, 0xCu);
  }

  [(SDBetaManager *)self verifyAssetAudience:v12 programID:a4 accountID:v11 skipEnrollmentCheck:0 withCompletion:v10];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)verifyAssetAudience:(id)a3 programID:(int64_t)a4 accountID:(id)a5 skipEnrollmentCheck:(BOOL)a6 withCompletion:(id)a7
{
  v34 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = a7;
  if (a6 || [(SDBetaManager *)self _isEnrolledInBetaProgram])
  {
    v15 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = v12;
      _os_log_impl(&dword_22E41E000, v15, OS_LOG_TYPE_DEFAULT, "Verifying asset audience %@", buf, 0xCu);
    }

    v16 = MEMORY[0x277CCAB70];
    v17 = [(SDBetaManager *)self verifyURLForAssetAudience:v12 programID:a4];
    v18 = [v16 requestWithURL:v17 cachePolicy:1 timeoutInterval:15.0];

    v19 = +[SDHTTPClient sharedInstance];
    v20 = [v19 urlSession];

    [v18 setHTTPMethod:@"GET"];
    if (v13)
    {
      v21 = [v13 stringValue];
      [v18 setValue:v21 forHTTPHeaderField:@"Seeding-Account-Id"];
    }

    v22 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v33 = v13;
      _os_log_impl(&dword_22E41E000, v22, OS_LOG_TYPE_INFO, "[VERIFY] Seeding-Account-Id: %@", buf, 0xCu);
    }

    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __92__SDBetaManager_verifyAssetAudience_programID_accountID_skipEnrollmentCheck_withCompletion___block_invoke;
    v29 = &unk_2787CB8A8;
    v30 = self;
    v31 = v14;
    v23 = [v20 dataTaskWithRequest:v18 completionHandler:&v26];
    [v23 resume];
  }

  else
  {
    v24 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22E41E000, v24, OS_LOG_TYPE_DEFAULT, "Device is not enrolled in a beta program, will not verify.", buf, 2u);
    }

    (*(v14 + 2))(v14, 0, 0);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __92__SDBetaManager_verifyAssetAudience_programID_accountID_skipEnrollmentCheck_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (a4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 allHeaderFields];
      v11 = [v10 objectForKeyedSubscript:@"X-Request-Id"];
      v12 = v11;
      v13 = @"(null)";
      if (v11)
      {
        v13 = v11;
      }

      v14 = v13;
    }

    else
    {
      v14 = @"(non-HTTP response)";
    }

    v24 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 138543362;
      v30 = v14;
      _os_log_impl(&dword_22E41E000, v24, OS_LOG_TYPE_DEFAULT, "/verify X-Request-Id: %{public}@", &v29, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v14 = v8;
    v15 = [(__CFString *)v14 allHeaderFields];
    v16 = [v15 objectForKeyedSubscript:@"X-Request-Id"];
    v17 = v16;
    v18 = @"(null)";
    if (v16)
    {
      v18 = v16;
    }

    v19 = v18;

    v20 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 138543362;
      v30 = v19;
      _os_log_impl(&dword_22E41E000, v20, OS_LOG_TYPE_DEFAULT, "/verify X-Request-Id: %{public}@", &v29, 0xCu);
    }

    if ([(__CFString *)v14 statusCode]== 200)
    {
      [*(a1 + 32) setProfilesEnabledFromHeaderInResponse:v14];
      v21 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:0 error:0];
      v22 = [v21 objectForKey:@"catalog"];

      if (v22)
      {
        v23 = [SDBetaProgram betaProgramWithJSON:v21];
        (*(*(a1 + 40) + 16))();
      }

      else
      {
        v27 = +[SDSeedingLogging betaHandle];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          __46__SDBetaManager_verifyCatalog_withCompletion___block_invoke_cold_3();
        }

        (*(*(a1 + 40) + 16))();
      }
    }

    else
    {
      if ([(__CFString *)v14 statusCode]== 204)
      {
        v25 = +[SDSeedingLogging betaHandle];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          __46__SDBetaManager_verifyCatalog_withCompletion___block_invoke_cold_2();
        }

        [*(a1 + 32) setProfilesEnabledFromHeaderInResponse:v14];
        v26 = *(*(a1 + 40) + 16);
      }

      else
      {
        v26 = *(*(a1 + 40) + 16);
      }

      v26();
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)unenrollDevice:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v21 = "[SDBetaManager unenrollDevice:completion:]";
    _os_log_impl(&dword_22E41E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  if ([v5 isErrorDevice])
  {
    v8 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(SDBetaManager *)v8 unenrollDevice:v9 completion:v10, v11, v12, v13, v14, v15];
    }

    v6[2](v6, 0);
  }

  else
  {
    v16 = +[SDBetaEnrollmentServiceProxy sharedInstance];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __43__SDBetaManager_unenrollDevice_completion___block_invoke;
    v18[3] = &unk_2787CBFB0;
    v19 = v6;
    [v16 unenrollDevice:v5 completion:v18];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)_unenrollFromBetaProgramWithUserIdentifier:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v15 = 136446210;
    v16 = "[SDBetaManager _unenrollFromBetaProgramWithUserIdentifier:]";
    _os_log_impl(&dword_22E41E000, v5, OS_LOG_TYPE_INFO, "%{public}s", &v15, 0xCu);
  }

  if ([(SDBetaManager *)self _isEnrolledInBetaProgram])
  {
    CFPreferencesAppSynchronize(@"com.apple.seeding");
    v6 = *MEMORY[0x277CBF020];
    v7 = *MEMORY[0x277CBF010];
    v8 = CFPreferencesCopyValue(@"OriginalSoftwareUpdate", @"com.apple.seeding", *MEMORY[0x277CBF020], *MEMORY[0x277CBF010]);
    v9 = CFPreferencesCopyValue(@"OriginalUpdateBrain", @"com.apple.seeding", v6, v7);
    v10 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [SDBetaManager _unenrollFromBetaProgramWithUserIdentifier:];
    }

    [(SDBetaManager *)self _setAssetServerURLString:v8];
    [(SDBetaManager *)self _setBrainServerURLString:v9];
    v11 = +[SDSUPreferences sharedInstance];
    [v11 clearCatalogURL];

    [(SDBetaManager *)self _changeFBAVisibilityWithUserIdentifier:v4 isVisible:0];
    [(SDBetaManager *)self _deleteBetaProgram];
    CFPreferencesAppSynchronize(@"com.apple.seeding");
    v12 = *MEMORY[0x277CBF040];
    CFPreferencesSetValue(@"OriginalSoftwareUpdate", 0, @"com.apple.seeding", *MEMORY[0x277CBF040], v7);
    CFPreferencesSetValue(@"OriginalUpdateBrain", 0, @"com.apple.seeding", v12, v7);
    [(SDBetaManager *)self _setMemberEnrolled:0];
    [(SDBetaManager *)self _synchronizeCFPreferences];
    [(SDBetaManager *)self _resetAssetAudience];
    +[SDAnalytics deviceDidUnenrollFromSeeding];
  }

  else
  {
    v8 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_22E41E000, v8, OS_LOG_TYPE_DEFAULT, "Unenrolling device that is already unenrolled.", &v15, 2u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)isDeviceEnrolledInBetaProgram:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v21 = "[SDBetaManager isDeviceEnrolledInBetaProgram:completion:]";
    _os_log_impl(&dword_22E41E000, v7, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  if ([v5 isErrorDevice])
  {
    v8 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(SDBetaManager *)v8 isDeviceEnrolledInBetaProgram:v9 completion:v10, v11, v12, v13, v14, v15];
    }

    v6[2](v6, 0);
  }

  else
  {
    v16 = +[SDBetaEnrollmentServiceProxy sharedInstance];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __58__SDBetaManager_isDeviceEnrolledInBetaProgram_completion___block_invoke;
    v18[3] = &unk_2787CBFB0;
    v19 = v6;
    [v16 isDeviceEnrolledInBetaProgram:v5 completion:v18];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isEnrolledInBetaProgram
{
  v2 = objc_opt_class();

  return [v2 _isEnrolledInBetaProgram];
}

+ (BOOL)_isEnrolledInBetaProgram
{
  v2 = [a1 _currentBetaProgram];
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v4 = CFPreferencesCopyValue(@"MemberEnrolled", @"com.apple.seeding", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
    v3 = v4 == *MEMORY[0x277CBED28];
    if (v4)
    {
      CFRelease(v4);
    }
  }

  return v3;
}

- (void)_setMemberEnrolled:(BOOL)a3
{
  if (a3)
  {
    v3 = *MEMORY[0x277CBED28];
  }

  else
  {
    v3 = 0;
  }

  CFPreferencesSetValue(@"MemberEnrolled", v3, @"com.apple.seeding", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
}

- (id)_assetServerURLString
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = ASServerURLForAssetType();
  v3 = 0;
  if (v3)
  {
    v4 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v9 = @"com.apple.MobileAsset.SoftwareUpdate";
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_22E41E000, v4, OS_LOG_TYPE_INFO, "Failed to get asset URL for type:%@ [%@]", buf, 0x16u);
    }
  }

  v5 = [v2 absoluteString];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_setAssetServerURLString:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEBC0] URLWithString:v3];
  if (v4 || ![(__CFString *)v3 length])
  {
    v5 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_22E41E000, v5, OS_LOG_TYPE_INFO, "Setting asset server to %@", &v8, 0xCu);
    }

    ASSetAssetServerURLForAssetType();
  }

  else
  {
    v6 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 138412546;
      v9 = @"com.apple.MobileAsset.SoftwareUpdate";
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_22E41E000, v6, OS_LOG_TYPE_INFO, "Failed to set asset URL for type:%@ (bad URL string %@)", &v8, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_brainServerURLString
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = ASServerURLForAssetType();
  v3 = 0;
  if (v3)
  {
    v4 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v9 = @"com.apple.MobileAsset.MobileSoftwareUpdate.UpdateBrain";
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_22E41E000, v4, OS_LOG_TYPE_INFO, "Failed to get brain URL for type:%@ [%@]", buf, 0x16u);
    }
  }

  v5 = [v2 absoluteString];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_setBrainServerURLString:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEBC0] URLWithString:v3];
  if (v4 || ![v3 length])
  {
    ASSetAssetServerURLForAssetType();
  }

  else
  {
    v5 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412546;
      v8 = @"com.apple.MobileAsset.MobileSoftwareUpdate.UpdateBrain";
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&dword_22E41E000, v5, OS_LOG_TYPE_INFO, "Failed to set brain URL for type:%@ (bad URL string %@)", &v7, 0x16u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_setAssetAudienceString:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = v3;
    _os_log_impl(&dword_22E41E000, v4, OS_LOG_TYPE_DEFAULT, "will set mobile asset audience [%{public}@]", &v12, 0xCu);
  }

  if ([v3 length])
  {
    v5 = MASetPallasAudience();
    v6 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134217984;
      v13 = v5;
      v7 = "did set mobile asset audience with result [%lld]";
      v8 = v6;
      v9 = OS_LOG_TYPE_DEFAULT;
      v10 = 12;
LABEL_8:
      _os_log_impl(&dword_22E41E000, v8, v9, v7, &v12, v10);
    }
  }

  else
  {
    v6 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      v7 = "Failed to set audience: given value is nil";
      v8 = v6;
      v9 = OS_LOG_TYPE_INFO;
      v10 = 2;
      goto LABEL_8;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_resetAssetAudience
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6) = 0;
    _os_log_impl(&dword_22E41E000, v2, OS_LOG_TYPE_DEFAULT, "will reset mobile asset audience", &v6, 2u);
  }

  v3 = MASetPallasAudience();
  v4 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_22E41E000, v4, OS_LOG_TYPE_DEFAULT, "did reset mobile asset audience with result [%lld]", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_changeFBAVisibilityWithUserIdentifier:(id)a3 isVisible:(BOOL)a4
{
  v4 = a4;
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([(SDBetaManager *)self canToggleFBAVisibility])
  {
    v7 = [v6 longValue];
    if (!v7)
    {
      goto LABEL_6;
    }

    v8 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v18 = 134217984;
      v19 = v7;
      _os_log_impl(&dword_22E41E000, v8, OS_LOG_TYPE_INFO, "Fetching user for uid: [%lu]", &v18, 0xCu);
    }

    v9 = _CFPreferencesGetUserIdentifierForUID();
    if (!v9)
    {
LABEL_6:
      v10 = +[SDSeedingLogging betaHandle];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_22E41E000, v10, OS_LOG_TYPE_INFO, "Falling back to default user", &v18, 2u);
      }

      v9 = @"mobile";
    }

    v11 = +[SDSeedingLogging betaHandle];
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
    if (v4)
    {
      if (v12)
      {
        v18 = 138477827;
        v19 = v9;
        v13 = "Making FBA visible for user: [%{private}@]";
LABEL_16:
        _os_log_impl(&dword_22E41E000, v11, OS_LOG_TYPE_INFO, v13, &v18, 0xCu);
      }
    }

    else if (v12)
    {
      v18 = 138477827;
      v19 = v9;
      v13 = "Hiding FBA for user: [%{private}@]";
      goto LABEL_16;
    }

    if (v4)
    {
      v14 = *MEMORY[0x277CBED28];
    }

    else
    {
      v14 = 0;
    }

    v15 = *MEMORY[0x277CBF010];
    CFPreferencesSetValue(@"SBIconVisibility", v14, @"com.apple.appleseed.FeedbackAssistant", v9, *MEMORY[0x277CBF010]);
    CFPreferencesSynchronize(@"com.apple.appleseed.FeedbackAssistant", *MEMORY[0x277CBF020], v15);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.springboard.appIconVisibilityPreferencesChanged", 0, 0, 1u);
    goto LABEL_21;
  }

  v9 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&dword_22E41E000, v9, OS_LOG_TYPE_DEFAULT, "Device cannot file feedback. Cannot change FBA visibility", &v18, 2u);
  }

LABEL_21:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)canFileFeedbackOnDevice:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v21 = "[SDBetaManager canFileFeedbackOnDevice:completion:]";
    _os_log_impl(&dword_22E41E000, v7, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  if ([v5 isErrorDevice])
  {
    v8 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(SDBetaManager *)v8 canFileFeedbackOnDevice:v9 completion:v10, v11, v12, v13, v14, v15];
    }

    v6[2](v6, 0);
  }

  else
  {
    v16 = +[SDBetaEnrollmentServiceProxy sharedInstance];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __52__SDBetaManager_canFileFeedbackOnDevice_completion___block_invoke;
    v18[3] = &unk_2787CBFB0;
    v19 = v6;
    [v16 canFileFeedbackOnDevice:v5 completion:v18];
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __52__SDBetaManager_canFileFeedbackOnDevice_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    a2 = 0;
  }

  else
  {
    a2 = a2;
  }

  return (*(v3 + 16))(v3, a2);
}

+ (BOOL)canFileFeedbackOnThisDevice:(id *)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 136446210;
    *(&buf + 4) = "+[SDBetaManager canFileFeedbackOnThisDevice:]";
    _os_log_impl(&dword_22E41E000, v4, OS_LOG_TYPE_INFO, "%{public}s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__1;
  v31 = __Block_byref_object_dispose__1;
  v32 = 0;
  v5 = dispatch_semaphore_create(0);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __45__SDBetaManager_canFileFeedbackOnThisDevice___block_invoke;
  v25[3] = &unk_2787CBFD8;
  p_buf = &buf;
  v6 = v5;
  v26 = v6;
  [SDDevice getCurrentDevice:v25];
  v7 = dispatch_time(0, 15000000000);
  if (dispatch_semaphore_wait(v6, v7))
  {
    if (a3)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.seeding.beta-manager" code:6 userInfo:0];
      *a3 = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v9 = dispatch_semaphore_create(0);

    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v10 = +[SDBetaManager sharedManager];
    v11 = *(*(&buf + 1) + 40);
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __45__SDBetaManager_canFileFeedbackOnThisDevice___block_invoke_2;
    v18 = &unk_2787CC000;
    v20 = &v21;
    v6 = v9;
    v19 = v6;
    [v10 canFileFeedbackOnDevice:v11 completion:&v15];

    v12 = dispatch_time(0, 15000000000);
    if (dispatch_semaphore_wait(v6, v12))
    {
      if (a3)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.seeding.beta-manager" code:6 userInfo:{0, v15, v16, v17, v18}];
        *a3 = v8 = 0;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = *(v22 + 24);
    }

    _Block_object_dispose(&v21, 8);
  }

  _Block_object_dispose(&buf, 8);
  v13 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

void __45__SDBetaManager_canFileFeedbackOnThisDevice___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

+ (void)canFileFeedbackOnThisDeviceWithCompletion:(id)a3
{
  v3 = a3;
  v4 = dispatch_get_global_queue(0, 0);
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v17 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__SDBetaManager_canFileFeedbackOnThisDeviceWithCompletion___block_invoke;
  v12[3] = &unk_2787CC078;
  v5 = v4;
  v13 = v5;
  v15 = v16;
  v6 = v3;
  v14 = v6;
  [SDDevice getCurrentDevice:v12];
  v7 = dispatch_time(0, 15000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__SDBetaManager_canFileFeedbackOnThisDeviceWithCompletion___block_invoke_4;
  block[3] = &unk_2787CC0A0;
  v10 = v6;
  v11 = v16;
  v8 = v6;
  dispatch_after(v7, v5, block);

  _Block_object_dispose(v16, 8);
}

void __59__SDBetaManager_canFileFeedbackOnThisDeviceWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SDBetaManager sharedManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__SDBetaManager_canFileFeedbackOnThisDeviceWithCompletion___block_invoke_2;
  v7[3] = &unk_2787CC050;
  v8 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = v6;
  v9 = v6;
  [v4 canFileFeedbackOnDevice:v3 completion:v7];
}

void __59__SDBetaManager_canFileFeedbackOnThisDeviceWithCompletion___block_invoke_2(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__SDBetaManager_canFileFeedbackOnThisDeviceWithCompletion___block_invoke_3;
  block[3] = &unk_2787CC028;
  v5 = *(a1 + 40);
  v4 = v5;
  v7 = v5;
  v8 = a2;
  dispatch_async(v3, block);
}

void __59__SDBetaManager_canFileFeedbackOnThisDeviceWithCompletion___block_invoke_4(uint64_t a1)
{
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v2 = *(a1 + 32);
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.seeding.beta-manager" code:6 userInfo:0];
    (*(v2 + 16))(v2, 0, v3);
  }
}

- (void)enrollInProgramWithToken:(id)a3 userIdentifier:(id)a4 language:(id)a5 shouldSaveToken:(BOOL)a6 completion:(id)a7
{
  v8 = a6;
  v26 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a7;
  v13 = a5;
  v14 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v25 = "[SDBetaManager enrollInProgramWithToken:userIdentifier:language:shouldSaveToken:completion:]";
    _os_log_impl(&dword_22E41E000, v14, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  if (v8)
  {
    v15 = [MEMORY[0x277CBEB98] setWithObject:v11];
    [SDPersistence saveBetaEnrollmentTokens:v15];
  }

  v16 = +[SDDevice devicePlatform];
  v17 = [MEMORY[0x277CBEB98] setWithObject:v11];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __93__SDBetaManager_enrollInProgramWithToken_userIdentifier_language_shouldSaveToken_completion___block_invoke;
  v21[3] = &unk_2787CB728;
  v22 = v11;
  v23 = v12;
  v18 = v12;
  v19 = v11;
  [(SDBetaManager *)self _finallyQueryProgramsForSystemAccountsWithPlatforms:v16 credentials:0 betaEnrollmentTokens:v17 shouldSavePrograms:1 disableBuildPrefixMatching:0 language:v13 completion:v21];

  v20 = *MEMORY[0x277D85DE8];
}

void __93__SDBetaManager_enrollInProgramWithToken_userIdentifier_language_shouldSaveToken_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    if ([v3 count] >= 2)
    {
      v4 = +[SDSeedingLogging betaHandle];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __93__SDBetaManager_enrollInProgramWithToken_userIdentifier_language_shouldSaveToken_completion___block_invoke_cold_1(a1);
      }
    }

    v5 = [v3 firstObject];
    v6 = [v5 platform];
    if (v6 == +[SDDevice devicePlatform])
    {
      v7 = +[SDDevice _currentDevice];
      [v7 _enrollInBetaProgram:v5];
    }

    else
    {
      v7 = +[SDSeedingLogging betaHandle];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __93__SDBetaManager_enrollInProgramWithToken_userIdentifier_language_shouldSaveToken_completion___block_invoke_cold_2(v5, a1);
      }
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __93__SDBetaManager_enrollInProgramWithToken_userIdentifier_language_shouldSaveToken_completion___block_invoke_cold_3(a1);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)_migrateFromProfilesIfNeeded
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __45__SDBetaManager__migrateFromProfilesIfNeeded__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v7 = +[SDSeedingLogging betaHandle];
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v8)
      {
        v9 = [v5 description];
        v11 = 138543362;
        v12 = v9;
        _os_log_impl(&dword_22E41E000, v7, OS_LOG_TYPE_DEFAULT, "Migrating into program %{public}@", &v11, 0xCu);
      }

      +[SDProfileUtilities forceRemoveSeedingProfile];
      v7 = +[SDDevice _currentDevice];
      [v7 _enrollInBetaProgram:v5 userIdentifier:0];
    }

    else if (v8)
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_22E41E000, v7, OS_LOG_TYPE_DEFAULT, "Profile migration returned no program and no error, setting complete flag.", &v11, 2u);
    }

    [*(a1 + 32) _markMigrationComplete];
  }

  [*(a1 + 32) setIsMigratingFromProfiles:0];

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_hasMigratedProfiles
{
  v2 = SeedingDefaults();
  v3 = [v2 BOOLForKey:@"HasRunMigration"];

  return v3;
}

- (void)_markMigrationComplete
{
  v2 = SeedingDefaults();
  [v2 setBool:1 forKey:@"HasRunMigration"];
}

- (void)getMigrationProgramForAssetAudience:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277CCAB70];
  v8 = [(SDBetaManager *)self migrateURLForAssetAudience:a3];
  v9 = [v7 requestWithURL:v8 cachePolicy:1 timeoutInterval:15.0];

  v10 = +[SDHTTPClient sharedInstance];
  v11 = [v10 urlSession];

  [v9 setHTTPMethod:@"GET"];
  v12 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [SDBetaManager getMigrationProgramForAssetAudience:v9 completion:v12];
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __64__SDBetaManager_getMigrationProgramForAssetAudience_completion___block_invoke;
  v16[3] = &unk_2787CC0F0;
  v18 = self;
  v19 = v6;
  v17 = v9;
  v13 = v6;
  v14 = v9;
  v15 = [v11 dataTaskWithRequest:v14 completionHandler:v16];
  [v15 resume];
}

void __64__SDBetaManager_getMigrationProgramForAssetAudience_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v8;
  v11 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v10 allHeaderFields];
    v13 = [v12 objectForKeyedSubscript:@"X-Request-Id"];
    v14 = v13;
    v15 = @"(null)";
    if (v13)
    {
      v15 = v13;
    }

    *buf = 138543362;
    v33 = v15;
    _os_log_impl(&dword_22E41E000, v11, OS_LOG_TYPE_DEFAULT, "/migrate X-Request-Id: %{public}@", buf, 0xCu);
  }

  v16 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    __64__SDBetaManager_getMigrationProgramForAssetAudience_completion___block_invoke_cold_1(a1, v10, v16);
  }

  if (!v9)
  {
    if ([v10 statusCode] > 499 || objc_msgSend(v10, "statusCode") == 403)
    {
      v18 = +[SDSeedingLogging betaHandle];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __64__SDBetaManager_getMigrationProgramForAssetAudience_completion___block_invoke_cold_5(v10);
      }

      v19 = *(a1 + 48);
      v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.seeding.beta-manager" code:3 userInfo:0];
      (*(v19 + 16))(v19, 0, v20);
LABEL_16:

      goto LABEL_17;
    }

    v22 = [v10 statusCode];
    [*(a1 + 40) setProfilesEnabledFromHeaderInResponse:v10];
    if (v22 != 200)
    {
      v17 = +[SDSeedingLogging betaHandle];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [v10 statusCode];
        *buf = 134217984;
        v33 = v27;
        _os_log_impl(&dword_22E41E000, v17, OS_LOG_TYPE_DEFAULT, "Received code [%lu]. Considering migration successful.", buf, 0xCu);
      }

      goto LABEL_10;
    }

    v31 = 0;
    v20 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:0 error:&v31];
    v23 = v31;
    if (v23)
    {
      v24 = +[SDSeedingLogging betaHandle];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        __64__SDBetaManager_getMigrationProgramForAssetAudience_completion___block_invoke_cold_3();
      }
    }

    else
    {
      v28 = [v20 objectForKey:@"catalog"];

      if (v28)
      {
        v29 = [SDBetaProgram betaProgramWithJSON:v20];
        v30 = +[SDSeedingLogging betaHandle];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v33 = v29;
          _os_log_impl(&dword_22E41E000, v30, OS_LOG_TYPE_DEFAULT, "Received program %{public}@ for migration", buf, 0xCu);
        }

        (*(*(a1 + 48) + 16))();
        goto LABEL_16;
      }

      v24 = +[SDSeedingLogging betaHandle];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        __64__SDBetaManager_getMigrationProgramForAssetAudience_completion___block_invoke_cold_4();
      }
    }

    v25 = *(a1 + 48);
    v26 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.seeding.beta-manager" code:8 userInfo:0];
    (*(v25 + 16))(v25, 0, v26);

    goto LABEL_17;
  }

  v17 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    __64__SDBetaManager_getMigrationProgramForAssetAudience_completion___block_invoke_cold_2(v9);
  }

LABEL_10:

  (*(*(a1 + 48) + 16))();
LABEL_17:

  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)isMigratingFromProfiles
{
  v2 = self;
  objc_sync_enter(v2);
  isMigratingFromProfiles = v2->_isMigratingFromProfiles;
  objc_sync_exit(v2);

  return isMigratingFromProfiles;
}

- (void)setIsMigratingFromProfiles:(BOOL)a3
{
  v3 = a3;
  v25 = *MEMORY[0x277D85DE8];
  v4 = self;
  objc_sync_enter(v4);
  isMigratingFromProfiles = v4->_isMigratingFromProfiles;
  v4->_isMigratingFromProfiles = v3;
  if (v3)
  {
    v6 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22E41E000, v6, OS_LOG_TYPE_DEFAULT, "Migrating from profiles", buf, 2u);
    }

LABEL_18:

    goto LABEL_19;
  }

  if (isMigratingFromProfiles)
  {
    v7 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22E41E000, v7, OS_LOG_TYPE_DEFAULT, "Profile migration finished", buf, 2u);
    }

    v8 = [(SDBetaManager *)v4 postMigrationTasks];
    v9 = [v8 count] == 0;

    if (!v9)
    {
      v10 = +[SDSeedingLogging betaHandle];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22E41E000, v10, OS_LOG_TYPE_DEFAULT, "Found pending tasks. Executing now", buf, 2u);
      }

      v6 = dispatch_get_global_queue(25, 0);
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v11 = [(SDBetaManager *)v4 postMigrationTasks];
      v12 = [v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v12)
      {
        v13 = *v20;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v20 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v19 + 1) + 8 * i);
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __44__SDBetaManager_setIsMigratingFromProfiles___block_invoke;
            block[3] = &unk_2787CC118;
            block[4] = v15;
            dispatch_async(v6, block);
          }

          v12 = [v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v12);
      }

      v16 = [(SDBetaManager *)v4 postMigrationTasks];
      [v16 removeAllObjects];

      goto LABEL_18;
    }
  }

LABEL_19:
  objc_sync_exit(v4);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)ensureThisRunsAfterMigration:(id)a3
{
  v8 = a3;
  if ([(SDBetaManager *)self isMigratingFromProfiles])
  {
    v4 = [(SDBetaManager *)self postMigrationTasks];

    if (!v4)
    {
      v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
      [(SDBetaManager *)self setPostMigrationTasks:v5];
    }

    v6 = [(SDBetaManager *)self postMigrationTasks];
    v7 = MEMORY[0x2318E68F0](v8);
    [v6 addObject:v7];
  }

  else
  {
    v8[2]();
  }
}

- (void)setProfilesEnabledFromHeaderInResponse:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = _os_feature_enabled_impl();
  if (v3 && v4)
  {
    v5 = [v3 valueForHTTPHeaderField:@"Disable-Profile"];
    v6 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @"(null)";
      if (v5)
      {
        v7 = v5;
      }

      v19 = 138543362;
      v20 = v7;
      _os_log_impl(&dword_22E41E000, v6, OS_LOG_TYPE_DEFAULT, "Disable-Profile: %{public}@", &v19, 0xCu);
    }

    if (v5)
    {
      v8 = SDPlatformsFromCommaSeparatedString(v5);
      v9 = SeedingDefaults();
      v10 = [v9 BOOLForKey:@"EnableProfiles"];

      v11 = +[SDDevice devicePlatform]& v8;
      if (v10 && v11)
      {
        v12 = +[SDSeedingLogging betaHandle];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v19) = 0;
          _os_log_impl(&dword_22E41E000, v12, OS_LOG_TYPE_DEFAULT, "Profiles are no longer allowed on this platform, disabling and removing.", &v19, 2u);
        }

        v13 = SeedingDefaults();
        [v13 setBool:0 forKey:@"EnableProfiles"];

        +[SDProfileUtilities removeSeedProfileIfRestricted];
      }

      else
      {
        if (v11)
        {
          v15 = 1;
        }

        else
        {
          v15 = v10;
        }

        if ((v15 & 1) == 0)
        {
          v16 = +[SDSeedingLogging betaHandle];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v19) = 0;
            _os_log_impl(&dword_22E41E000, v16, OS_LOG_TYPE_DEFAULT, "Profiles are now enabled on this platform.", &v19, 2u);
          }

          v17 = SeedingDefaults();
          [v17 setBool:1 forKey:@"EnableProfiles"];
        }
      }
    }

    else
    {
      v14 = SeedingDefaults();
      [v14 removeObjectForKey:@"EnableProfiles"];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)seedingAppleIDUsernameForCurrentDevice
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v7 = 136446210;
    v8 = "[SDBetaManager seedingAppleIDUsernameForCurrentDevice]";
    _os_log_impl(&dword_22E41E000, v2, OS_LOG_TYPE_INFO, "%{public}s", &v7, 0xCu);
  }

  v3 = +[SDBetaEnrollmentServiceProxy sharedInstance];
  v4 = [v3 seedingAppleIDUsernameForCurrentDevice];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)seedingAppleIDUsernameForCurrentDeviceWithCompletion:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v11 = "[SDBetaManager seedingAppleIDUsernameForCurrentDeviceWithCompletion:]";
    _os_log_impl(&dword_22E41E000, v4, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  v5 = +[SDBetaEnrollmentServiceProxy sharedInstance];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__SDBetaManager_seedingAppleIDUsernameForCurrentDeviceWithCompletion___block_invoke;
  v8[3] = &unk_2787CBCD8;
  v9 = v3;
  v6 = v3;
  [v5 seedingAppleIDUsernameForCurrentDevice:v8];

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_seedingAppleIDUsername
{
  v2 = SeedingDefaults();
  v3 = [v2 stringForKey:@"AppleAccountIdentifier"];
  v4 = [MEMORY[0x277CB8F48] defaultStore];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 accountWithIdentifier:v3];
    if (v6)
    {
LABEL_6:
      v7 = v6;
      v8 = [v6 username];

      goto LABEL_8;
    }
  }

  else
  {
    [v2 removeObjectForKey:@"AppleAccountIdentifier"];
  }

  v6 = [v5 aida_accountForPrimaryiCloudAccount];
  if (v6)
  {
    goto LABEL_6;
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (id)deviceAppleIDUsernameForCurrentDevice
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v7 = 136446210;
    v8 = "[SDBetaManager deviceAppleIDUsernameForCurrentDevice]";
    _os_log_impl(&dword_22E41E000, v2, OS_LOG_TYPE_INFO, "%{public}s", &v7, 0xCu);
  }

  v3 = +[SDBetaEnrollmentServiceProxy sharedInstance];
  v4 = [v3 deviceAppleIDUsernameForCurrentDevice];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_deviceAppleIDUsername
{
  v2 = [MEMORY[0x277CB8F48] defaultStore];
  v3 = [v2 aida_accountForPrimaryiCloudAccount];
  v4 = [v3 username];

  return v4;
}

- (BOOL)isCurrentDeviceUsingSeedingAppleID
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v7 = 136446210;
    v8 = "[SDBetaManager isCurrentDeviceUsingSeedingAppleID]";
    _os_log_impl(&dword_22E41E000, v2, OS_LOG_TYPE_INFO, "%{public}s", &v7, 0xCu);
  }

  v3 = +[SDBetaEnrollmentServiceProxy sharedInstance];
  v4 = [v3 isCurrentDeviceUsingSeedingAppleID];

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)_isUsingSeedingAppleID
{
  v2 = SeedingDefaults();
  v3 = [v2 stringForKey:@"AppleAccountIdentifier"];
  v4 = v3 != 0;

  return v4;
}

- (void)saveAppleAccountIdentifierWithAlternateDSIDForCurrentDevice:(id)a3 completion:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v15 = "[SDBetaManager saveAppleAccountIdentifierWithAlternateDSIDForCurrentDevice:completion:]";
    _os_log_impl(&dword_22E41E000, v8, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  v9 = +[SDBetaEnrollmentServiceProxy sharedInstance];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __88__SDBetaManager_saveAppleAccountIdentifierWithAlternateDSIDForCurrentDevice_completion___block_invoke;
  v12[3] = &unk_2787CB7C8;
  v12[4] = self;
  v13 = v6;
  v10 = v6;
  [v9 setAppleAccountIdentifierWithAlternateDSIDForCurrentDevice:v7 completion:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __88__SDBetaManager_saveAppleAccountIdentifierWithAlternateDSIDForCurrentDevice_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 invalidateCache];
  (*(*(a1 + 40) + 16))();
}

- (void)_saveAppleAccountIdentifierWithAlternateDSID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = SeedingDefaults();
  v9 = [v8 stringForKey:@"AppleAccountIdentifier"];

  v10 = [MEMORY[0x277CB8F48] defaultStore];
  v11 = [v10 aida_accountForPrimaryiCloudAccount];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __73__SDBetaManager__saveAppleAccountIdentifierWithAlternateDSID_completion___block_invoke;
  v16[3] = &unk_2787CC168;
  v20 = self;
  v21 = v7;
  v17 = v6;
  v18 = v9;
  v19 = v11;
  v12 = v11;
  v13 = v9;
  v14 = v7;
  v15 = v6;
  [(SDBetaManager *)self getAppleIDAuthenticationAccountForAlternateDSID:v15 attempt:0 completion:v16];
}

void __73__SDBetaManager__saveAppleAccountIdentifierWithAlternateDSID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v6 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __73__SDBetaManager__saveAppleAccountIdentifierWithAlternateDSID_completion___block_invoke_cold_4(a1);
    }

    v7 = *(a1 + 64);
    v8 = MEMORY[0x277CCA9B8];
    v9 = 11;
    goto LABEL_7;
  }

  v5 = [v3 identifier];
  if (![v5 isEqualToString:*(a1 + 40)])
  {
    v11 = [v4 identifier];
    v12 = [*(a1 + 48) identifier];
    v13 = [v11 isEqualToString:v12];

    if (v13)
    {
      goto LABEL_10;
    }

    v15 = [v4 username];
    v16 = [*(a1 + 48) username];
    v17 = [v15 isEqualToString:v16];

    if (!v17)
    {
      v10 = [v4 identifier];
      if (*(a1 + 40))
      {
        v20 = +[SDSeedingLogging betaHandle];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          __73__SDBetaManager__saveAppleAccountIdentifierWithAlternateDSID_completion___block_invoke_cold_1((a1 + 40));
        }

        v21 = *(a1 + 56);
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __73__SDBetaManager__saveAppleAccountIdentifierWithAlternateDSID_completion___block_invoke_462;
        v22[3] = &unk_2787CC140;
        v22[4] = v21;
        v23 = v10;
        v24 = *(a1 + 64);
        [v21 _deleteSeedingAppleAccountWithCompletion:v22];
      }

      else
      {
        [*(a1 + 56) _saveAppleAccountIdentifier:v10];
        (*(*(a1 + 64) + 16))();
      }

      [*(a1 + 56) invalidateCache];
      goto LABEL_8;
    }

    v18 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __73__SDBetaManager__saveAppleAccountIdentifierWithAlternateDSID_completion___block_invoke_cold_2();
    }

    v19 = SeedingDefaults();
    [v19 removeObjectForKey:@"AppleAccountIdentifier"];

    v7 = *(a1 + 64);
    v8 = MEMORY[0x277CCA9B8];
    v9 = 12;
LABEL_7:
    v10 = [v8 errorWithDomain:@"com.apple.seeding.beta-manager" code:v9 userInfo:0];
    (*(v7 + 16))(v7, v10);
LABEL_8:

    goto LABEL_13;
  }

LABEL_10:
  v14 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    __73__SDBetaManager__saveAppleAccountIdentifierWithAlternateDSID_completion___block_invoke_cold_3(v4);
  }

  (*(*(a1 + 64) + 16))();
LABEL_13:
}

void __73__SDBetaManager__saveAppleAccountIdentifierWithAlternateDSID_completion___block_invoke_462(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  [v3 _saveAppleAccountIdentifier:v4];
  (*(a1[6] + 16))();
}

- (void)getAppleIDAuthenticationAccountForAlternateDSID:(id)a3 attempt:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (a4 < 8)
  {
    v11 = [MEMORY[0x277CB8F48] defaultStore];
    v12 = [v11 aida_accountForAltDSID:v8];
    if (v12)
    {
      (v10)[2](v10, v12);
    }

    else
    {
      v13 = dispatch_time(0, 250000000);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __84__SDBetaManager_getAppleIDAuthenticationAccountForAlternateDSID_attempt_completion___block_invoke;
      v14[3] = &unk_2787CC190;
      v14[4] = self;
      v15 = v8;
      v17 = a4;
      v16 = v10;
      dispatch_after(v13, MEMORY[0x277D85CD0], v14);
    }
  }

  else
  {
    (*(v9 + 2))(v9, 0);
  }
}

- (void)_saveAppleAccountIdentifier:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[SDSeedingLogging betaHandle];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_22E41E000, v4, OS_LOG_TYPE_DEFAULT, "Saving new Seeding account %@", &v7, 0xCu);
    }

    v4 = SeedingDefaults();
    [v4 setObject:v3 forKey:@"AppleAccountIdentifier"];
  }

  else if (v5)
  {
    LOWORD(v7) = 0;
    _os_log_impl(&dword_22E41E000, v4, OS_LOG_TYPE_DEFAULT, "Attempted to save a nil account identifier.", &v7, 2u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)deleteSeedingAppleAccountForCurrentDeviceWithCompletion:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[SDSeedingLogging betaHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v12 = "[SDBetaManager deleteSeedingAppleAccountForCurrentDeviceWithCompletion:]";
    _os_log_impl(&dword_22E41E000, v5, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  v6 = +[SDBetaEnrollmentServiceProxy sharedInstance];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__SDBetaManager_deleteSeedingAppleAccountForCurrentDeviceWithCompletion___block_invoke;
  v9[3] = &unk_2787CB7C8;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  [v6 deleteSeedingAppleAccountWithCompletion:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __73__SDBetaManager_deleteSeedingAppleAccountForCurrentDeviceWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 invalidateCache];
  (*(*(a1 + 40) + 16))();
}

- (void)_deleteSeedingAppleAccountWithCompletion:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SeedingDefaults();
  v6 = [v5 stringForKey:@"AppleAccountIdentifier"];

  if (v6)
  {
    v7 = [MEMORY[0x277CB8F48] defaultStore];
    v8 = [v7 accountWithIdentifier:v6];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 username];
      v11 = [v7 aida_accountForPrimaryiCloudAccount];
      v12 = [v11 username];
      v13 = [v10 isEqualToString:v12];

      if (v13)
      {
        v14 = +[SDSeedingLogging betaHandle];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          [SDBetaManager _deleteSeedingAppleAccountWithCompletion:];
        }

        v15 = SeedingDefaults();
        [v15 removeObjectForKey:@"AppleAccountIdentifier"];

        [(SDBetaManager *)self invalidateCache];
        v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.seeding.beta-manager" code:12 userInfo:0];
        v4[2](v4, v16);
      }

      else
      {
        [(SDBetaManager *)self invalidateCache];
        v20 = +[SDSeedingLogging betaHandle];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v25 = v6;
          _os_log_impl(&dword_22E41E000, v20, OS_LOG_TYPE_DEFAULT, "Removing Seeding account %@ from account store", buf, 0xCu);
        }

        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __58__SDBetaManager__deleteSeedingAppleAccountWithCompletion___block_invoke;
        v22[3] = &unk_2787CBFB0;
        v23 = v4;
        [v7 removeAccount:v9 withCompletionHandler:v22];
      }
    }

    else
    {
      v18 = +[SDSeedingLogging betaHandle];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [SDBetaManager _deleteSeedingAppleAccountWithCompletion:];
      }

      v19 = SeedingDefaults();
      [v19 removeObjectForKey:@"AppleAccountIdentifier"];

      [(SDBetaManager *)self invalidateCache];
      v4[2](v4, 0);
    }
  }

  else
  {
    v17 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SDBetaManager _deleteSeedingAppleAccountWithCompletion:];
    }

    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.seeding.beta-manager" code:10 userInfo:0];
    v4[2](v4, v7);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __58__SDBetaManager__deleteSeedingAppleAccountWithCompletion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = +[SDSeedingLogging betaHandle];
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_22E41E000, v7, OS_LOG_TYPE_DEFAULT, "Seeding account deleted successfully", v8, 2u);
    }

    v7 = SeedingDefaults();
    [v7 removeObjectForKey:@"AppleAccountIdentifier"];
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __58__SDBetaManager__deleteSeedingAppleAccountWithCompletion___block_invoke_cold_1(v5);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_queryProgramsForSystemAccountsWithPlatforms:disableBuildPrefixMatching:language:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_queryProgramsForSystemAccountsWithPlatforms:disableBuildPrefixMatching:language:completion:.cold.2()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_queryProgramsForSystemAccountsWithPlatforms:disableBuildPrefixMatching:language:completion:.cold.3()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __109__SDBetaManager__queryProgramsForSystemAccountsWithPlatforms_disableBuildPrefixMatching_language_completion___block_invoke_cold_1(id *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*a1 username];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __109__SDBetaManager__queryProgramsForSystemAccountsWithPlatforms_disableBuildPrefixMatching_language_completion___block_invoke_358_cold_1()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)validateBetaEnrollmentTokens:(uint64_t)a3 errorHandler:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0(&dword_22E41E000, a1, a3, "[%{public}s called with zero tokens", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __59__SDBetaManager_validateBetaEnrollmentTokens_errorHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0(&dword_22E41E000, v0, v1, "Query programs endpoint failed with [%ld]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __59__SDBetaManager_validateBetaEnrollmentTokens_errorHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_finallyQueryProgramsForSystemAccountsWithPlatforms:(void *)a1 credentials:(NSObject *)a2 betaEnrollmentTokens:shouldSavePrograms:disableBuildPrefixMatching:language:completion:.cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 URL];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_22E41E000, a2, OS_LOG_TYPE_DEBUG, "URL: %@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_finallyQueryProgramsForSystemAccountsWithPlatforms:credentials:betaEnrollmentTokens:shouldSavePrograms:disableBuildPrefixMatching:language:completion:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __168__SDBetaManager__finallyQueryProgramsForSystemAccountsWithPlatforms_credentials_betaEnrollmentTokens_shouldSavePrograms_disableBuildPrefixMatching_language_completion___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7(&dword_22E41E000, v0, v1, "Got response %{public}@ with error %{public}@.\n");
  v2 = *MEMORY[0x277D85DE8];
}

void __168__SDBetaManager__finallyQueryProgramsForSystemAccountsWithPlatforms_credentials_betaEnrollmentTokens_shouldSavePrograms_disableBuildPrefixMatching_language_completion___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0(&dword_22E41E000, v0, v1, "No 'programs' dictionary from the server. Response: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __168__SDBetaManager__finallyQueryProgramsForSystemAccountsWithPlatforms_credentials_betaEnrollmentTokens_shouldSavePrograms_disableBuildPrefixMatching_language_completion___block_invoke_cold_3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7(&dword_22E41E000, v0, v1, "Failed to parse JSON, got response %{public}@ with error %{public}@.\n");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)isBuildPrefix:(void *)a1 greaterThanOrEqualToBuild:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)isBuildPrefix:greaterThanOrEqualToBuild:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7(&dword_22E41E000, v0, v1, "Malformed build %{public}@ or prefix %{public}@, could not match.");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)isBuildPrefix:greaterThanOrEqualToBuild:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0(&dword_22E41E000, v0, v1, "Prefix %{public}@ is longer than device build. This is a configuration error, but allowing.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)enrollDevice:(uint64_t)a3 inBetaProgram:(uint64_t)a4 completion:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0(&dword_22E41E000, a1, a3, "Error device passed into %{public}s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)enrollDevice:(uint64_t)a3 withEnrollmentMetadata:(uint64_t)a4 completion:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0(&dword_22E41E000, a1, a3, "Error device passed into %{public}s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __70__SDBetaManager_enrollCurrentDeviceWithEnrollmentMetadata_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)enrollmentMetadataForDevice:(uint64_t)a3 completion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0(&dword_22E41E000, a1, a3, "Error device passed into %{public}s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_saveBetaProgram:(void *)a1 .cold.1(void *a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  [a1 programID];
  v3 = [a2 description];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_saveBetaProgram:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_currentBetaProgram
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)enrolledBetaProgramForDevice:(uint64_t)a3 completion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0(&dword_22E41E000, a1, a3, "Error device passed into %{public}s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __46__SDBetaManager_verifyCatalog_withCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0(&dword_22E41E000, v0, v1, "Catalog verify error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __46__SDBetaManager_verifyCatalog_withCompletion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __46__SDBetaManager_verifyCatalog_withCompletion___block_invoke_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0(&dword_22E41E000, v0, v1, "No 'catalog' value in the verify response. Response: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)unenrollDevice:(uint64_t)a3 completion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0(&dword_22E41E000, a1, a3, "Error device passed into %{public}s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_unenrollFromBetaProgramWithUserIdentifier:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_22E41E000, v0, OS_LOG_TYPE_DEBUG, "Original asset server [%{public}@] original brain server [%{public}@]", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)isDeviceEnrolledInBetaProgram:(uint64_t)a3 completion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0(&dword_22E41E000, a1, a3, "Error device passed into %{public}s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)canFileFeedbackOnDevice:(uint64_t)a3 completion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0(&dword_22E41E000, a1, a3, "Error device passed into %{public}s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __93__SDBetaManager_enrollInProgramWithToken_userIdentifier_language_shouldSaveToken_completion___block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0(&dword_22E41E000, v2, v3, "More than one program retuned for token [%{private}@]. Will use first", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

void __93__SDBetaManager_enrollInProgramWithToken_userIdentifier_language_shouldSaveToken_completion___block_invoke_cold_2(void *a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  [a1 programID];
  v4 = *(a2 + 32);
  v11 = SDStringForPlatform([a1 platform]);
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

void __93__SDBetaManager_enrollInProgramWithToken_userIdentifier_language_shouldSaveToken_completion___block_invoke_cold_3(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0(&dword_22E41E000, v2, v3, "No programs found for token [%{private}@]", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)getMigrationProgramForAssetAudience:(void *)a1 completion:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = [a1 HTTPMethod];
  v5 = [a1 URL];
  v6 = [v5 path];
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(&dword_22E41E000, a2, OS_LOG_TYPE_DEBUG, "-> %{public}@ %{public}@", v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __64__SDBetaManager_getMigrationProgramForAssetAudience_completion___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = [*(a1 + 32) HTTPMethod];
  v7 = [*(a1 + 32) URL];
  v8 = [v7 path];
  v10 = 138543874;
  v11 = v6;
  v12 = 2114;
  v13 = v8;
  v14 = 2048;
  v15 = [a2 statusCode];
  _os_log_debug_impl(&dword_22E41E000, a3, OS_LOG_TYPE_DEBUG, "<- %{public}@ %{public}@ %li", &v10, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

void __64__SDBetaManager_getMigrationProgramForAssetAudience_completion___block_invoke_cold_2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __64__SDBetaManager_getMigrationProgramForAssetAudience_completion___block_invoke_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0(&dword_22E41E000, v0, v1, "Parse Error: Failed to parse response with Error [%{public}@]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __64__SDBetaManager_getMigrationProgramForAssetAudience_completion___block_invoke_cold_4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0(&dword_22E41E000, v0, v1, "Data Error: No 'catalog' value in the migrate response. Response: [%{public}@]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __64__SDBetaManager_getMigrationProgramForAssetAudience_completion___block_invoke_cold_5(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 statusCode];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __73__SDBetaManager__saveAppleAccountIdentifierWithAlternateDSID_completion___block_invoke_cold_1(uint64_t *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0(&dword_22E41E000, v2, v3, "A Seeding account [%@] already exists, deleting before continuing.", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

void __73__SDBetaManager__saveAppleAccountIdentifierWithAlternateDSID_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __73__SDBetaManager__saveAppleAccountIdentifierWithAlternateDSID_completion___block_invoke_cold_3(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __73__SDBetaManager__saveAppleAccountIdentifierWithAlternateDSID_completion___block_invoke_cold_4(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0(&dword_22E41E000, v2, v3, "Failed to find account for ADSID [%@]", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_deleteSeedingAppleAccountWithCompletion:.cold.2()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_deleteSeedingAppleAccountWithCompletion:.cold.3()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __58__SDBetaManager__deleteSeedingAppleAccountWithCompletion___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

@end