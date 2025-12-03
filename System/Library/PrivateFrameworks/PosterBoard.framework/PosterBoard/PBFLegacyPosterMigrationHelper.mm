@interface PBFLegacyPosterMigrationHelper
- (PBFLegacyPosterMigrationHelper)initWithDataStore:(id)store legacyPosterPair:(id)pair;
- (id)lockScreenMigrationViewController;
- (void)finalizeMigrationWithMigratedConfigurationUUID:(id)d;
- (void)lockScreenMigrationViewController;
- (void)migrateHomePosterAndAssociateToConfiguration:(id)configuration completion:(id)completion;
- (void)revertMigrationWithMigratedConfigurationUUID:(id)d;
@end

@implementation PBFLegacyPosterMigrationHelper

- (PBFLegacyPosterMigrationHelper)initWithDataStore:(id)store legacyPosterPair:(id)pair
{
  v44 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  pairCopy = pair;
  v35.receiver = self;
  v35.super_class = PBFLegacyPosterMigrationHelper;
  v9 = [(PBFLegacyPosterMigrationHelper *)&v35 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_legacyPosterPair, pair);
    objc_storeStrong(&v10->_dataStore, store);
    v10->_migrationEnabled = _os_feature_enabled_impl();
    v10->_distinctHomeScreenMigrationEnabled = _os_feature_enabled_impl();
    v11 = PBFLogLegacyPosterMigration();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(PBFLegacyPosterMigrationHelper *)&v10->_migrationEnabled initWithDataStore:v11 legacyPosterPair:?];
    }

    if ([(PBFLegacyPosterMigrationHelper *)v10 _shouldAllowMigration])
    {
      v12 = objc_alloc_init(MEMORY[0x277D37C70]);
      posterMigrationInfo = [v12 posterMigrationInfo];

      objc_storeStrong(&v10->_migrationInfo, posterMigrationInfo);
      pairingType = [posterMigrationInfo pairingType];
      v15 = [posterMigrationInfo homeProvider] == 2 && objc_msgSend(posterMigrationInfo, "pairingType") != 1;
      if ([posterMigrationInfo homeProvider] == 1 && objc_msgSend(posterMigrationInfo, "pairingType") == 2)
      {
        distinctHomeScreenMigrationEnabled = v10->_distinctHomeScreenMigrationEnabled;
        v18 = 1;
      }

      else
      {
        v18 = 0;
        distinctHomeScreenMigrationEnabled = 1;
      }

      migrationInfo = [(PBFLegacyPosterMigrationHelper *)v10 migrationInfo];
      lockProvider = [migrationInfo lockProvider];

      if (!lockProvider)
      {
        v21 = PBFLogLegacyPosterMigration();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [PBFLegacyPosterMigrationHelper initWithDataStore:v21 legacyPosterPair:?];
        }
      }

      v22 = PBFLogLegacyPosterMigration();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 67109888;
        v37 = pairingType != 0;
        v38 = 1024;
        v39 = v15;
        v40 = 1024;
        v41 = v18;
        v42 = 1024;
        v43 = distinctHomeScreenMigrationEnabled & 1;
        _os_log_impl(&dword_21B526000, v22, OS_LOG_TYPE_INFO, "Supported migration: %d, Collections Home Mismatched: %d, Distinct Photo Home: %d, canMigrateHome:%d", buf, 0x1Au);
      }

      v23 = lockProvider != 0;
      v24 = pairingType != 0;

      v25 = v24 & ~v15 & distinctHomeScreenMigrationEnabled & v23;
      v10->_canMigrateLegacyPoster = v24 & ~v15 & distinctHomeScreenMigrationEnabled & v23;
      v10->_canMigrateLegacyLockPoster = v23;
      v26 = PBFLogLegacyPosterMigration();
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_INFO);
      if (v25 == 1)
      {
        if (v27)
        {
          canMigrateLegacyPoster = v10->_canMigrateLegacyPoster;
          *buf = 67109120;
          v37 = canMigrateLegacyPoster;
          v29 = "Can Migrate:%d";
          v30 = v26;
          v31 = 8;
LABEL_26:
          _os_log_impl(&dword_21B526000, v30, OS_LOG_TYPE_INFO, v29, buf, v31);
        }
      }

      else if (v27)
      {
        v32 = v10->_canMigrateLegacyPoster;
        canMigrateLegacyLockPoster = v10->_canMigrateLegacyLockPoster;
        *buf = 67109376;
        v37 = v32;
        v38 = 1024;
        v39 = canMigrateLegacyLockPoster;
        v29 = "Can Migrate:%d, Lock:%d";
        v30 = v26;
        v31 = 14;
        goto LABEL_26;
      }

      goto LABEL_28;
    }

    v16 = PBFLogLegacyPosterMigration();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_21B526000, v16, OS_LOG_TYPE_INFO, "Migration not enabled", buf, 2u);
    }

    v10->_canMigrateLegacyPoster = 0;
  }

LABEL_28:

  return v10;
}

- (id)lockScreenMigrationViewController
{
  if ([(PBFLegacyPosterMigrationHelper *)self canMigrateLegacyPoster]|| [(PBFLegacyPosterMigrationHelper *)self canMigrateLegacyLockPoster])
  {
    migrationInfo = [(PBFLegacyPosterMigrationHelper *)self migrationInfo];
    [migrationInfo lockProvider];

    v4 = PBUIExtensionIdentifierForPosterWallpaperMigrationProvider();
    v5 = *MEMORY[0x277D3EA38];
    v6 = [MEMORY[0x277D3EB88] temporaryPathForRole:v5];
    v7 = MEMORY[0x277D3EB98];
    uUID = [MEMORY[0x277CCAD78] UUID];
    v9 = [v7 incomingConfigurationIdentityWithProvider:v4 role:v5 posterUUID:uUID version:1 supplement:0];

    v10 = MEMORY[0x277D3EBA0];
    contentsURL = [v6 contentsURL];
    v12 = [v10 pathWithContainerURL:contentsURL identity:v9];

    v13 = +[PBFPosterExtensionDataStoreXPCServiceGlue sharedInstance];
    dataStore = [v13 dataStore];

    v15 = [dataStore providerForPath:v12];
    if (!v15)
    {
      v17 = PBFLogLegacyPosterMigration();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [PBFLegacyPosterMigrationHelper lockScreenMigrationViewController];
      }

      v19 = 0;
      goto LABEL_18;
    }

    v26 = 0;
    [v12 ensureContentsURLIsReachableAndReturnError:&v26];
    v16 = v26;
    if (v16)
    {
      v17 = v16;
      v18 = PBFLogLegacyPosterMigration();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [(PBFLegacyPosterMigrationHelper *)v17 lockScreenMigrationViewController];
      }
    }

    else
    {
      v25 = 0;
      [v12 storeUserInfo:&unk_282D0A3F8 error:&v25];
      v20 = v25;
      if (!v20)
      {
        v22 = MEMORY[0x277D3EB78];
        identity = [v15 identity];
        uUID2 = [MEMORY[0x277CCAD78] UUID];
        v17 = [v22 extensionInstanceForIdentity:identity instanceIdentifier:uUID2];

        v19 = [[PBFLegacyMigrationEditingSceneViewController alloc] initWithProvider:v17 contents:v12 exnihiloPathAssertion:v6 replacing:0];
        v18 = PBFLogLegacyPosterMigration();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_21B526000, v18, OS_LOG_TYPE_INFO, "(lockScreenMigrationViewController) will provide editing view controller for lock screen legacy migration", buf, 2u);
        }

        goto LABEL_17;
      }

      v17 = v20;
      v18 = PBFLogLegacyPosterMigration();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [(PBFLegacyPosterMigrationHelper *)v17 lockScreenMigrationViewController];
      }
    }

    v19 = 0;
LABEL_17:

LABEL_18:
    goto LABEL_19;
  }

  v4 = PBFLogLegacyPosterMigration();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B526000, v4, OS_LOG_TYPE_DEFAULT, "(lockScreenMigrationViewController) Unable to migrate legacy poster, returning nil", buf, 2u);
  }

  v19 = 0;
LABEL_19:

  return v19;
}

- (void)migrateHomePosterAndAssociateToConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  if (![(PBFLegacyPosterMigrationHelper *)self _shouldAllowMigration]|| ![(PBFLegacyPosterMigrationHelper *)self isDistinctHomeScreenMigrationEnabled])
  {
    v22 = PBFLogLegacyPosterMigration();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
LABEL_12:

      (*(completionCopy + 2))(completionCopy, 0, 0);
      goto LABEL_13;
    }

    *buf = 0;
    v23 = "(migrateHomeScreenWallpaperIfNeeded...) Home screen migration not enabled.";
    goto LABEL_10;
  }

  migrationInfo = [(PBFLegacyPosterMigrationHelper *)self migrationInfo];
  pairingType = [migrationInfo pairingType];

  if (pairingType != 2)
  {
    v22 = PBFLogLegacyPosterMigration();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v23 = "(migrateHomeScreenWallpaperIfNeeded...) Home screen migration not needed.";
LABEL_10:
    v24 = v22;
    v25 = OS_LOG_TYPE_INFO;
LABEL_11:
    _os_log_impl(&dword_21B526000, v24, v25, v23, buf, 2u);
    goto LABEL_12;
  }

  migrationInfo2 = [(PBFLegacyPosterMigrationHelper *)self migrationInfo];
  homeProvider = [migrationInfo2 homeProvider];

  if (!homeProvider)
  {
    v22 = PBFLogLegacyPosterMigration();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v23 = "Unable to migrate legacy home wallpaper because we could not resolve a home provider";
    v24 = v22;
    v25 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_11;
  }

  v12 = PBUIExtensionIdentifierForPosterWallpaperMigrationProvider();
  v13 = objc_alloc_init(MEMORY[0x277D3E9E8]);
  [v13 setUserInfo:&unk_282D0A420];
  v14 = [MEMORY[0x277D3E9C8] posterUpdateHomeScreenPosterProvider:v12 sessionInfo:v13];
  v15 = [MEMORY[0x277D3E9C8] posterUpdateHomeScreenAppearance:4];
  homeMigrationQueue = self->_homeMigrationQueue;
  if (!homeMigrationQueue)
  {
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("com.apple.PosterBoard.LegacyPosterHomeMigration", v17);
    v19 = self->_homeMigrationQueue;
    self->_homeMigrationQueue = v18;

    homeMigrationQueue = self->_homeMigrationQueue;
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __90__PBFLegacyPosterMigrationHelper_migrateHomePosterAndAssociateToConfiguration_completion___block_invoke;
  v26[3] = &unk_2782C6338;
  v27 = configurationCopy;
  v28 = v14;
  v29 = v15;
  v30 = completionCopy;
  v20 = v15;
  v21 = v14;
  dispatch_async(homeMigrationQueue, v26);

LABEL_13:
}

void __90__PBFLegacyPosterMigrationHelper_migrateHomePosterAndAssociateToConfiguration_completion___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = +[PBFPosterExtensionDataStoreXPCServiceGlue sharedInstance];
  v3 = [v2 dataStore];

  v4 = PBFLogLegacyPosterMigration();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    *buf = 138543362;
    v13 = v5;
    _os_log_impl(&dword_21B526000, v4, OS_LOG_TYPE_INFO, "(migrateHomeScreenWallpaperIfNeeded...) Home screen migration required, updating configuration for UUID: %{public}@", buf, 0xCu);
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v11[0] = *(a1 + 40);
  v11[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __90__PBFLegacyPosterMigrationHelper_migrateHomePosterAndAssociateToConfiguration_completion___block_invoke_26;
  v9[3] = &unk_2782C5D00;
  v10 = *(a1 + 56);
  [v3 updatePosterConfigurationMatchingUUID:v6 updates:v8 completion:v9];
}

void __90__PBFLegacyPosterMigrationHelper_migrateHomePosterAndAssociateToConfiguration_completion___block_invoke_26(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = PBFLogLegacyPosterMigration();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __90__PBFLegacyPosterMigrationHelper_migrateHomePosterAndAssociateToConfiguration_completion___block_invoke_26_cold_1(v7);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21B526000, v9, OS_LOG_TYPE_INFO, "Home screen migrated successfully", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__PBFLegacyPosterMigrationHelper_migrateHomePosterAndAssociateToConfiguration_completion___block_invoke_27;
  block[3] = &unk_2782C6180;
  v10 = *(a1 + 32);
  v15 = v7;
  v16 = v10;
  v14 = v6;
  v11 = v7;
  v12 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)revertMigrationWithMigratedConfigurationUUID:(id)d
{
  v34 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = +[PBFPosterExtensionDataStoreXPCServiceGlue sharedInstance];
  dataStore = [v5 dataStore];

  switcherConfiguration = [dataStore switcherConfiguration];
  legacyPosterPair = [(PBFLegacyPosterMigrationHelper *)self legacyPosterPair];
  configurationUUID = [legacyPosterPair configurationUUID];

  configurations = [switcherConfiguration configurations];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __79__PBFLegacyPosterMigrationHelper_revertMigrationWithMigratedConfigurationUUID___block_invoke;
  v28[3] = &unk_2782C61F8;
  v11 = dCopy;
  v29 = v11;
  v12 = [configurations bs_firstObjectPassingTest:v28];

  configurations2 = [switcherConfiguration configurations];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __79__PBFLegacyPosterMigrationHelper_revertMigrationWithMigratedConfigurationUUID___block_invoke_2;
  v26[3] = &unk_2782C61F8;
  v14 = configurationUUID;
  v27 = v14;
  v15 = [configurations2 bs_firstObjectPassingTest:v26];

  if (!v12 || !v15)
  {
    if (!v12 || v15)
    {
      v17 = PBFLogLegacyPosterMigration();
      v22 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      if (v12 || !v15)
      {
        if (!v22)
        {
          goto LABEL_20;
        }

        *buf = 138543618;
        v31 = v14;
        v32 = 2114;
        v33 = v11;
        v21 = "revertMigration: Could not locate configs to remove or set for legacy UUID: %{public}@, UUID: %{public}@";
        v23 = v17;
        v24 = 22;
LABEL_19:
        _os_log_impl(&dword_21B526000, v23, OS_LOG_TYPE_DEFAULT, v21, buf, v24);
        goto LABEL_20;
      }

      if (!v22)
      {
        goto LABEL_20;
      }

      *buf = 138543362;
      v31 = v11;
      v21 = "revertMigration: Could not locate config to remove for UUID: %{public}@";
    }

    else
    {
      v17 = PBFLogLegacyPosterMigration();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      *buf = 138543362;
      v31 = v14;
      v21 = "revertMigration: Could not locate config to set for legacy UUID: %{public}@";
    }

    v23 = v17;
    v24 = 12;
    goto LABEL_19;
  }

  switcherConfiguration2 = [dataStore switcherConfiguration];
  v17 = [switcherConfiguration2 mutableCopy];

  [v17 removeConfiguration:v12];
  [v17 setSelectedConfiguration:v15];
  [v17 setDesiredActiveConfiguration:v15];
  v25 = 0;
  v18 = [dataStore updateDataStoreForSwitcherConfiguration:v17 options:0 reason:@"Reverting legacy migration" error:&v25];
  v19 = v25;
  if (v19)
  {
    v20 = PBFLogLegacyPosterMigration();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [PBFLegacyPosterMigrationHelper revertMigrationWithMigratedConfigurationUUID:v19];
    }
  }

LABEL_20:
}

uint64_t __79__PBFLegacyPosterMigrationHelper_revertMigrationWithMigratedConfigurationUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _path];
  v4 = [v3 serverIdentity];
  v5 = [v4 posterUUID];
  v6 = [v5 isEqual:*(a1 + 32)];

  return v6;
}

uint64_t __79__PBFLegacyPosterMigrationHelper_revertMigrationWithMigratedConfigurationUUID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 _path];
  v4 = [v3 serverIdentity];
  v5 = [v4 posterUUID];
  v6 = [v5 isEqual:*(a1 + 32)];

  return v6;
}

- (void)finalizeMigrationWithMigratedConfigurationUUID:(id)d
{
  v53 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = +[PBFPosterExtensionDataStoreXPCServiceGlue sharedInstance];
  dataStore = [v5 dataStore];

  switcherConfiguration = [dataStore switcherConfiguration];
  legacyPosterPair = [(PBFLegacyPosterMigrationHelper *)self legacyPosterPair];
  configurationUUID = [legacyPosterPair configurationUUID];

  configurations = [switcherConfiguration configurations];
  v11 = [configurations mutableCopy];

  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0x7FFFFFFFFFFFFFFFLL;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0x7FFFFFFFFFFFFFFFLL;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__6;
  v42 = __Block_byref_object_dispose__6;
  v43 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__6;
  v36 = __Block_byref_object_dispose__6;
  v37 = 0;
  v12 = objc_opt_class();
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __81__PBFLegacyPosterMigrationHelper_finalizeMigrationWithMigratedConfigurationUUID___block_invoke;
  v25[3] = &unk_2782C8C98;
  v13 = dCopy;
  v26 = v13;
  v28 = &v38;
  v29 = &v48;
  v14 = configurationUUID;
  v27 = v14;
  v30 = &v32;
  v31 = &v44;
  [v11 bs_enumerateObjectsOfClass:v12 usingBlock:v25];
  if (v49[3] == 0x7FFFFFFFFFFFFFFFLL || v45[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = PBFLogLegacyPosterMigration();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [PBFLegacyPosterMigrationHelper finalizeMigrationWithMigratedConfigurationUUID:v15];
    }
  }

  else
  {
    v15 = [switcherConfiguration mutableCopy];
    [v11 replaceObjectAtIndex:v45[3] withObject:v39[5]];
    [v11 replaceObjectAtIndex:v49[3] withObject:v33[5]];
    [v15 setConfigurations:v11];
    selectedConfiguration = [v15 selectedConfiguration];
    v17 = [selectedConfiguration isEqual:v33[5]];

    if (v17)
    {
      [v15 setSelectedConfiguration:v39[5]];
    }

    activeConfiguration = [v15 activeConfiguration];
    v19 = [activeConfiguration isEqual:v33[5]];

    if (v19)
    {
      [v15 setDesiredActiveConfiguration:v39[5]];
    }

    [v15 removeConfiguration:v33[5]];
    v24 = 0;
    v20 = [dataStore updateDataStoreForSwitcherConfiguration:v15 options:0 reason:@"Finalizing legacy migration" error:&v24];
    v21 = v24;
    if (v21)
    {
      v22 = PBFLogLegacyPosterMigration();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v21 localizedDescription];
        [(PBFLegacyPosterMigrationHelper *)localizedDescription finalizeMigrationWithMigratedConfigurationUUID:buf, v22];
      }
    }
  }

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);

  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v48, 8);
}

void __81__PBFLegacyPosterMigrationHelper_finalizeMigrationWithMigratedConfigurationUUID___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v16 = a2;
  v8 = [v16 _path];
  v9 = [v8 serverIdentity];
  v10 = [v9 posterUUID];
  v11 = [v10 isEqual:a1[4]];

  if (v11)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
    *(*(a1[7] + 8) + 24) = a3;
  }

  v12 = [v16 _path];
  v13 = [v12 serverIdentity];
  v14 = [v13 posterUUID];
  v15 = [v14 isEqual:a1[5]];

  if (v15)
  {
    objc_storeStrong((*(a1[8] + 8) + 40), a2);
    *(*(a1[9] + 8) + 24) = a3;
  }

  if (*(*(a1[7] + 8) + 24) != 0x7FFFFFFFFFFFFFFFLL && *(*(a1[9] + 8) + 24) != 0x7FFFFFFFFFFFFFFFLL)
  {
    *a4 = 1;
  }
}

- (void)initWithDataStore:(os_log_t)log legacyPosterPair:.cold.1(unsigned __int8 *a1, unsigned __int8 *a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *a2;
  v5[0] = 67109376;
  v5[1] = v3;
  v6 = 1024;
  v7 = v4;
  _os_log_debug_impl(&dword_21B526000, log, OS_LOG_TYPE_DEBUG, "MigrationFF: %d, HomeMigrationFF: %d", v5, 0xEu);
}

- (void)lockScreenMigrationViewController
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(&dword_21B526000, v0, OS_LOG_TYPE_ERROR, "(lockScreenMigrationViewController) Failed to migrate legacy wallpaper because we could not find provider %{public}@", v1, 0xCu);
}

void __90__PBFLegacyPosterMigrationHelper_migrateHomePosterAndAssociateToConfiguration_completion___block_invoke_26_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_5(&dword_21B526000, v2, v3, "Home screen migration failed: %{public}@", v4, v5, v6, v7, v8);
}

- (void)revertMigrationWithMigratedConfigurationUUID:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_5(&dword_21B526000, v2, v3, "revertMigration: Failed to revert legacy migration: %{public}@", v4, v5, v6, v7, v8);
}

- (void)finalizeMigrationWithMigratedConfigurationUUID:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_21B526000, log, OS_LOG_TYPE_ERROR, "finalizeMigration: Failed to finalize legacy migration: %{public}@", buf, 0xCu);
}

@end