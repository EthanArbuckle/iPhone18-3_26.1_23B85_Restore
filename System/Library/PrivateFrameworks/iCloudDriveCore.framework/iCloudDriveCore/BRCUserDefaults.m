@interface BRCUserDefaults
+ (id)_userDefaultsManager;
+ (id)cachedServerConfigurationPath;
+ (id)defaultsForMangledID:(id)a3;
+ (id)defaultsForMetadataContainer;
+ (id)defaultsForSharedZone;
+ (id)defaultsForSideCar;
+ (id)generateThrottleTTRIdentifiersForTriggerRootCause:(id)a3;
+ (void)loadCachedServerConfiguration;
+ (void)reset;
+ (void)setServerConfigurationURL:(id)a3 whenLoaded:(id)a4;
- (BOOL)_shouldRampForKey:(id)a3 accountFacade:(id)a4;
- (BOOL)aggressivelyPCSChainWithAccountFacade:(id)a3;
- (BOOL)allowsDirectoryListBeforeInitialChangeToken;
- (BOOL)canSaveRecordsDirectlyForDeltaSync;
- (BOOL)dbIntegrityCheckBasehashSalting;
- (BOOL)fpfsOptimizeStorageAndSpeculativeDownload;
- (BOOL)fpfsOptimizeStorageAndSpeculativeDownloadCandidate;
- (BOOL)isBlacklistedFromFolderSharing;
- (BOOL)optimisticallyPCSChainDuringResetWithAccountFacade:(id)a3;
- (BOOL)optimisticallyPCSChainWithAccountFacade:(id)a3;
- (BOOL)requestForAccess;
- (BOOL)requestForAccessNotifications;
- (BOOL)saveLocalContentVersionIdentifierOnDiskWithAccountFacade:(id)a3;
- (BOOL)scheduleDeepScanOnFSEventsReset;
- (BOOL)shouldAppLibraryBeGreedy;
- (BOOL)shouldAutoMigrateToCloudDocs;
- (BOOL)shouldBoostDefaultAndSharedZones;
- (BOOL)shouldPerformPeriodicSyncInvestigation;
- (BOOL)shouldPrimeMMCSCacheBeforeDownloadWithAccountFacade:(id)a3;
- (BOOL)signpostEnabled;
- (BOOL)syncConsistencyCheckerEnabled;
- (BRCUserDefaults)initWithServerConfiguration:(id)a3 globalUserDefaults:(id)a4 clientZoneIdentifier:(id)a5;
- (NSArray)bundleIDsExcludedFromAppLibraryExtraction;
- (NSArray)carryPartitions;
- (NSArray)containersWithContentPolicyDownloadLazilyAndEvictOnRemoteUpdate;
- (NSArray)telemetryRTCAllowedZoneNamePrefixes;
- (NSDateFormatter)dumpDateFormatter;
- (NSDictionary)aggressivePCSChainBGSystemTaskConfig;
- (NSDictionary)analyticsReportBGSystemTaskConfig;
- (NSDictionary)appLibraryResetThrottleParams;
- (NSDictionary)appTelemetryGatherBGSystemTaskConfig;
- (NSDictionary)applyThrottleParams;
- (NSDictionary)cacheDeletePushBGSystemTaskConfig;
- (NSDictionary)configurationUpdateBGSystemTaskConfig;
- (NSDictionary)dbIntegrityCheckBGSystemTaskConfig;
- (NSDictionary)discretionaryOperationBGSystemTaskConfigForBackgroundContext;
- (NSDictionary)discretionaryOperationBGSystemTaskConfigForForegroundContext;
- (NSDictionary)downloadThrottleParams;
- (NSDictionary)finishSaltingPartiallySaltedDirectoriesBGSystemTaskConfig;
- (NSDictionary)locateRecordsThrottleParams;
- (NSDictionary)migrationThrottleParams;
- (NSDictionary)operationFailureThrottleParams;
- (NSDictionary)perItemSyncUpThrottleParams;
- (NSDictionary)readerThrottleParams;
- (NSDictionary)recentsEnumeratorFailureThrottleParams;
- (NSDictionary)rescheduleSuspendedNeedsUploadItemsBGSystemTaskConfig;
- (NSDictionary)serverStitchingThrottleParams;
- (NSDictionary)sharedAppLibraryResetThrottleParams;
- (NSDictionary)stageGCBGSystemTaskConfig;
- (NSDictionary)syncClientZoneErrorThrottleParams;
- (NSDictionary)syncClientZoneThrottleParams;
- (NSDictionary)syncConsistencyCheckerBGSystemTaskConfig;
- (NSDictionary)tapToRadarDailyThrottleRules;
- (NSDictionary)tapToRadarWeeklyThrottleRules;
- (NSDictionary)uploadFileModifiedThrottleParams;
- (NSDictionary)uploadThrottleParams;
- (NSIndexSet)telemetryEventIdentifiersToReportErrorsChain;
- (NSSet)iworkShareableExtensions;
- (NSString)fakeEtagForFailIfOutdated;
- (NSURL)idsDecisionServiceURL;
- (double)doubleForKey:(id)a3 min:(double)a4 max:(double)a5 byDefault:(double)a6;
- (float)_defaultSyncUpDailyBudget;
- (float)_defaultSyncUpHourlyBudget;
- (float)_defaultSyncUpMinutelyBudget;
- (float)dbAutovacuumRatio;
- (float)modifyRecordsCountAdditiveIncreaseFraction;
- (float)modifyRecordsCountMultiplicativeDecrease;
- (float)relativeDiskSpaceRequiredToReturnToGreedyState;
- (float)syncUpBackoffDelayForFailure;
- (float)syncUpBackoffRatioForFailure;
- (float)syncUpDailyBudget;
- (float)syncUpDataCreateCost;
- (float)syncUpDataDeleteCost;
- (float)syncUpDataEditCost;
- (float)syncUpDocumentCreateCost;
- (float)syncUpDocumentDeleteCost;
- (float)syncUpDocumentEditCost;
- (float)syncUpHourlyBudget;
- (float)syncUpInitialItemCost;
- (float)syncUpMinimalBudget;
- (float)syncUpMinutelyBudget;
- (float)syncUpStructureCreateCost;
- (float)syncUpStructureDeleteCost;
- (float)syncUpStructureEditCost;
- (id)_UTISetFor:(id)a3 startingWithExtensions:(id)a4;
- (id)_brErrorSetForKey:(id)a3 byDefault:(id)a4;
- (id)_extensionSetForKey:(id)a3 startingWithExtensions:(id)a4;
- (id)_healthErrorSetForKey:(id)a3 byDefault:(id)a4;
- (id)_loadObjectForKey:(id)a3 inheritFromGlobal:(BOOL)a4 suiteName:(id)a5 validateWithBlock:(id)a6;
- (id)_serverDefaultForKey:(id)a3;
- (id)bgSystemTaskParamsForKey:(id)a3 byDefault:(id)a4;
- (id)discretionaryOperationBGSystemTaskConfigWithForegroundState:(BOOL)a3;
- (id)getBirdBGSTActivitiesConfigsWithAccountFacade:(id)a3;
- (int)intForKey:(id)a3 min:(int)a4 max:(int)a5 byDefault:(int)a6;
- (unint64_t)unsignedLongLongForKey:(id)a3 min:(unint64_t)a4 max:(unint64_t)a5 byDefault:(unint64_t)a6;
- (unint64_t)uploadV1PerformanceTrackerCap;
- (unsigned)fpfsImportStatusTelemetryDaysThreshold;
- (unsigned)maxSyncPathDepth;
- (void)_overrideDefaultValueIfPossibleWithValidationValue:(char)a3 userValue:(id)a4 key:(id)a5 dictionary:(id)a6 invalidKeys:(id)a7;
@end

@implementation BRCUserDefaults

+ (id)_userDefaultsManager
{
  if (_userDefaultsManager_once != -1)
  {
    +[BRCUserDefaults _userDefaultsManager];
  }

  v2 = [MEMORY[0x277D77BF8] sharedManager];
  v3 = [v2 br_currentPersonaID];

  v4 = _userDefaultsManager_userDefaultsManagers;
  objc_sync_enter(v4);
  v5 = [_userDefaultsManager_userDefaultsManagers objectForKeyedSubscript:v3];
  if (!v5)
  {
    v5 = [[BRCUserDefaultsManager alloc] initWithPersonaID:v3];
    [_userDefaultsManager_userDefaultsManagers setObject:v5 forKeyedSubscript:v3];
  }

  objc_sync_exit(v4);

  return v5;
}

- (unsigned)maxSyncPathDepth
{
  [(BRCUserDefaults *)self maxRelativePathDepth];

  return [BRCUserDefaults unsignedIntForKey:"unsignedIntForKey:min:max:byDefault:" min:@"sync.maxdepth" max:? byDefault:?];
}

- (float)syncUpDailyBudget
{
  clientZoneIdentifier = self->_clientZoneIdentifier;
  v6 = 1343554297;
  if (clientZoneIdentifier && ![(NSString *)clientZoneIdentifier isEqualToString:*MEMORY[0x277CFAD68]])
  {
    [(BRCUserDefaults *)self _defaultSyncUpDailyBudget];
    v6 = v7;
  }

  LODWORD(v2) = 2139095039;
  LODWORD(v3) = v6;

  [(BRCUserDefaults *)self floatForKey:@"sync.up.budget.daily" inheritFromGlobal:0 min:0.0 max:v2 byDefault:v3];
  return result;
}

- (float)syncUpHourlyBudget
{
  clientZoneIdentifier = self->_clientZoneIdentifier;
  if (clientZoneIdentifier && ![(NSString *)clientZoneIdentifier isEqualToString:*MEMORY[0x277CFAD68]])
  {
    [(BRCUserDefaults *)self _defaultSyncUpHourlyBudget];
    LODWORD(v6) = v7;
  }

  else
  {
    [(BRCUserDefaults *)self syncUpDailyBudget];
    *&v6 = v5 / 6.0;
  }

  LODWORD(v4) = 2139095039;

  [(BRCUserDefaults *)self floatForKey:@"sync.up.budget.hourly" inheritFromGlobal:0 min:0.0 max:v4 byDefault:v6];
  return result;
}

- (float)syncUpMinutelyBudget
{
  clientZoneIdentifier = self->_clientZoneIdentifier;
  if (clientZoneIdentifier && ![(NSString *)clientZoneIdentifier isEqualToString:*MEMORY[0x277CFAD68]])
  {
    [(BRCUserDefaults *)self _defaultSyncUpMinutelyBudget];
    LODWORD(v6) = v7;
  }

  else
  {
    [(BRCUserDefaults *)self syncUpHourlyBudget];
    *&v6 = v5 / 6.0;
  }

  LODWORD(v4) = 2139095039;

  [(BRCUserDefaults *)self floatForKey:@"sync.up.budget.minutely" inheritFromGlobal:0 min:0.0 max:v4 byDefault:v6];
  return result;
}

- (float)syncUpMinimalBudget
{
  LODWORD(v2) = 2139095039;
  LODWORD(v3) = 10.0;
  [(BRCUserDefaults *)self floatForKey:@"sync.up.budget.minimal" min:0.0 max:v2 byDefault:v3];
  return result;
}

- (NSDateFormatter)dumpDateFormatter
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__BRCUserDefaults_dumpDateFormatter__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  if (dumpDateFormatter_onceToken != -1)
  {
    dispatch_once(&dumpDateFormatter_onceToken, block);
  }

  return dumpDateFormatter_df;
}

- (NSArray)containersWithContentPolicyDownloadLazilyAndEvictOnRemoteUpdate
{
  v2 = [(BRCUserDefaults *)self stringForKey:@"fpfs.contentpolicy.containers-with-download-lazy-and-evict-on-remote-update" byDefault:@"57T9237FN3.net.whatsapp.WhatsApp"];
  v3 = [v2 componentsSeparatedByString:{@", "}];

  return v3;
}

- (NSDictionary)discretionaryOperationBGSystemTaskConfigForForegroundContext
{
  v8[3] = *MEMORY[0x277D85DE8];
  v7[0] = @"requires-network";
  v7[1] = @"user-inactivity";
  v8[0] = MEMORY[0x277CBEC38];
  v8[1] = MEMORY[0x277CBEC28];
  v7[2] = @"priority";
  v8[2] = &unk_2837B05B0;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
  v4 = [(BRCUserDefaults *)self bgSystemTaskParamsForKey:@"discretionary-ops-bgst-foreground-config" byDefault:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

uint64_t __39__BRCUserDefaults__userDefaultsManager__block_invoke()
{
  _userDefaultsManager_userDefaultsManagers = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (id)defaultsForMangledID:(id)a3
{
  v4 = a3;
  if ([v4 isShared])
  {
    v5 = [a1 defaultsForSharedZone];
  }

  else
  {
    v6 = [a1 _userDefaultsManager];
    v7 = [v4 appLibraryOrZoneName];
    v5 = [v6 defaultsForIdentifier:v7];
  }

  return v5;
}

+ (id)defaultsForMetadataContainer
{
  v2 = [a1 _userDefaultsManager];
  v3 = [v2 defaultsForIdentifier:@"container-metadata"];

  return v3;
}

+ (id)defaultsForSharedZone
{
  v2 = [a1 _userDefaultsManager];
  v3 = [v2 defaultsForIdentifier:*MEMORY[0x277CFADA8]];

  return v3;
}

+ (id)defaultsForSideCar
{
  v2 = [a1 _userDefaultsManager];
  v3 = [v2 defaultsForIdentifier:*MEMORY[0x277CFB070]];

  return v3;
}

+ (void)setServerConfigurationURL:(id)a3 whenLoaded:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 _userDefaultsManager];
  [v8 setServerConfigurationURL:v7 whenLoaded:v6];
}

+ (id)cachedServerConfigurationPath
{
  v2 = NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory, 1uLL, 1);
  v3 = [v2 firstObject];
  v4 = [v3 stringByAppendingPathComponent:@"CloudDocs"];

  v5 = [v4 stringByAppendingPathComponent:@"server-conflig.plist"];

  return v5;
}

+ (void)loadCachedServerConfiguration
{
  v2 = [a1 _userDefaultsManager];
  [v2 loadCachedServerConfiguration];
}

+ (void)reset
{
  v2 = [a1 _userDefaultsManager];
  [v2 reset];
}

- (BRCUserDefaults)initWithServerConfiguration:(id)a3 globalUserDefaults:(id)a4 clientZoneIdentifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = BRCUserDefaults;
  v12 = [(BRCUserDefaults *)&v16 init];
  if (v12)
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cache = v12->_cache;
    v12->_cache = v13;

    objc_storeStrong(&v12->_serverContainerConfigurationDict, a3);
    objc_storeStrong(&v12->_globalUserDefault, a4);
    objc_storeStrong(&v12->_clientZoneIdentifier, a5);
  }

  return v12;
}

- (id)_loadObjectForKey:(id)a3 inheritFromGlobal:(BOOL)a4 suiteName:(id)a5 validateWithBlock:(id)a6
{
  v8 = a4;
  v31 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(BRCUserDefaults *)self _serverDefaultForKey:v10];
  if (v13)
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v25 = 138412802;
      v26 = v10;
      v27 = 2112;
      v28 = v13;
      v29 = 2112;
      v30 = v14;
      _os_log_debug_impl(&dword_223E7A000, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] server default for %@: %@%@", &v25, 0x20u);
    }
  }

  if (v11)
  {
    v16 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:v11];
  }

  else
  {
    v16 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  }

  v17 = v16;
  if (self->_clientZoneIdentifier)
  {
    v18 = [v16 dictionaryForKey:?];
    v19 = [v18 objectForKey:v10];

    if (v19)
    {
      goto LABEL_24;
    }
  }

  else if (([v10 containsString:@"server-only"] & 1) == 0)
  {
    v19 = [v17 valueForKey:v10];
    if (v19)
    {
LABEL_24:
      [BRCUserDefaults _loadObjectForKey:v10 inheritFromGlobal:v19 suiteName:? validateWithBlock:?];
      if (!v12)
      {
        goto LABEL_21;
      }

LABEL_20:
      v21 = v12[2](v12, v19);

      v19 = v21;
      goto LABEL_21;
    }
  }

  v19 = v13;
  if (!v13 && v8)
  {
    globalUserDefault = self->_globalUserDefault;
    if (globalUserDefault)
    {
      v19 = [(BRCUserDefaults *)globalUserDefault objectForKey:v10 inheritFromGlobal:1 validateWithBlock:v12];
      if (v19)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  if (v12)
  {
    goto LABEL_20;
  }

LABEL_21:
  v22 = v19;

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)_serverDefaultForKey:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = BRVersion();
  v6 = v5;
  if (!v5)
  {
    goto LABEL_24;
  }

  v25 = v5;
  v26 = v4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v27 = self;
  v8 = self->_serverContainerConfigurationDict;
  v9 = [(NSDictionary *)v8 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        if ([v13 hasPrefix:{@"defaults.clouddocs.", v25, v26}])
        {
          v14 = [v13 substringFromIndex:{objc_msgSend(@"defaults.clouddocs.", "length")}];
          if ([v14 length])
          {
            [v7 addObject:v14];
          }

          else
          {
            v15 = brc_bread_crumbs();
            v16 = brc_default_log();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v33 = v13;
              v34 = 2112;
              v35 = v15;
              _os_log_fault_impl(&dword_223E7A000, v16, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: no version for key: %@%@", buf, 0x16u);
            }
          }
        }
      }

      v10 = [(NSDictionary *)v8 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v10);
  }

  [v7 sortUsingComparator:&__block_literal_global_408];
  v17 = [v7 count];
  v6 = v25;
  v4 = v26;
  if (v17 - 1 < 0)
  {
LABEL_23:

    self = v27;
LABEL_24:
    v22 = [(NSDictionary *)self->_serverContainerConfigurationDict valueForKey:v4, v25, v26];
    goto LABEL_25;
  }

  v18 = v17;
  while (1)
  {
    v19 = [v7 objectAtIndexedSubscript:{--v18, v25, v26}];
    if ([v6 compare:v19 options:64] != -1)
    {
      v20 = [@"defaults.clouddocs." stringByAppendingString:v19];
      v21 = [(NSDictionary *)v27->_serverContainerConfigurationDict objectForKeyedSubscript:v20];
      if (!v21)
      {
        [BRCUserDefaults _serverDefaultForKey:];
      }

      v22 = [v21 valueForKey:v4];

      if (v22)
      {
        break;
      }
    }

    if (v18 < 1)
    {
      goto LABEL_23;
    }
  }

LABEL_25:
  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (int)intForKey:(id)a3 min:(int)a4 max:(int)a5 byDefault:(int)a6
{
  v10 = a3;
  if (a4 >= a5)
  {
    [BRCUserDefaults intForKey:min:max:byDefault:];
  }

  if (a4 > a6)
  {
    [BRCUserDefaults intForKey:min:max:byDefault:];
  }

  if (a6 > a5)
  {
    [BRCUserDefaults intForKey:min:max:byDefault:];
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __47__BRCUserDefaults_intForKey_min_max_byDefault___block_invoke;
  v15[3] = &unk_278507C40;
  v17 = a6;
  v18 = a4;
  v19 = a5;
  v16 = v10;
  v11 = v10;
  v12 = [(BRCUserDefaults *)self objectForKey:v11 inheritFromGlobal:1 validateWithBlock:v15];
  v13 = [v12 intValue];

  return v13;
}

id __47__BRCUserDefaults_intForKey_min_max_byDefault___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v13 = *(a1 + 40);
  if (validateUserInt(v3, (a1 + 44), (a1 + 48), &v13) == 2)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, 0x90u))
    {
      v9 = *(a1 + 32);
      v11 = *(a1 + 44);
      v10 = *(a1 + 48);
      v12 = *(a1 + 40);
      *buf = 138413570;
      v15 = v9;
      v16 = 2112;
      v17 = v3;
      v18 = 1024;
      v19 = v11;
      v20 = 1024;
      v21 = v10;
      v22 = 1024;
      v23 = v12;
      v24 = 2112;
      v25 = v4;
      _os_log_error_impl(&dword_223E7A000, v5, 0x90u, "[ERROR] invalid user default for %@: %@ range:[%d,%d]; using default:%d%@", buf, 0x32u);
    }
  }

  v6 = [MEMORY[0x277CCABB0] numberWithInt:v13];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

id __73__BRCUserDefaults_unsignedIntForKey_inheritFromGlobal_min_max_byDefault___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = v3;
  v6 = 0x277CCA000uLL;
  if (!v5)
  {
    v7 = v4;
LABEL_3:

    v4 = v7;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v11 = [v5 intValue];
    if (v11 >= *(a1 + 44))
    {
      v7 = v11;
      if (v11 <= *(a1 + 48))
      {
        goto LABEL_3;
      }
    }
  }

  v12 = brc_bread_crumbs();
  v13 = brc_default_log();
  if (os_log_type_enabled(v13, 0x90u))
  {
    v14 = *(a1 + 32);
    v16 = *(a1 + 44);
    v15 = *(a1 + 48);
    v17 = *(a1 + 40);
    v18 = 138413570;
    v19 = v14;
    v20 = 2112;
    v21 = v5;
    v22 = 1024;
    v23 = v16;
    v24 = 1024;
    v25 = v15;
    v26 = 1024;
    v27 = v17;
    v28 = 2112;
    v29 = v12;
    _os_log_error_impl(&dword_223E7A000, v13, 0x90u, "[ERROR] invalid user default for %@: %@ range:[%d,%d]; using default:%d%@", &v18, 0x32u);
  }

  v6 = 0x277CCA000;
LABEL_4:
  v8 = [*(v6 + 2992) numberWithUnsignedInt:v4];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (unint64_t)unsignedLongLongForKey:(id)a3 min:(unint64_t)a4 max:(unint64_t)a5 byDefault:(unint64_t)a6
{
  v10 = a3;
  if (a4 >= a5)
  {
    [BRCUserDefaults unsignedLongLongForKey:min:max:byDefault:];
  }

  if (a4 > a6)
  {
    [BRCUserDefaults unsignedLongLongForKey:min:max:byDefault:];
  }

  if (a6 > a5)
  {
    [BRCUserDefaults unsignedLongLongForKey:min:max:byDefault:];
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __60__BRCUserDefaults_unsignedLongLongForKey_min_max_byDefault___block_invoke;
  v18 = &unk_278507C68;
  v21 = a4;
  v22 = a5;
  v19 = v10;
  v20 = a6;
  v11 = v10;
  v12 = [(BRCUserDefaults *)self objectForKey:v11 inheritFromGlobal:1 validateWithBlock:&v15];
  v13 = [v12 unsignedLongLongValue];

  return v13;
}

id __60__BRCUserDefaults_unsignedLongLongForKey_min_max_byDefault___block_invoke(void *a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = a1[5];
  v5 = v3;
  v6 = 0x277CCA000uLL;
  if (!v5)
  {
    v7 = v4;
LABEL_3:

    v4 = v7;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v11 = [v5 longLongValue];
    if (v11 >= a1[6])
    {
      v7 = v11;
      if (v11 <= a1[7])
      {
        goto LABEL_3;
      }
    }
  }

  v12 = brc_bread_crumbs();
  v13 = brc_default_log();
  if (os_log_type_enabled(v13, 0x90u))
  {
    v14 = a1[6];
    v15 = a1[7];
    v16 = a1[4];
    v17 = a1[5];
    v18 = 138413570;
    v19 = v16;
    v20 = 2112;
    v21 = v5;
    v22 = 2048;
    v23 = v14;
    v24 = 2048;
    v25 = v15;
    v26 = 2048;
    v27 = v17;
    v28 = 2112;
    v29 = v12;
    _os_log_error_impl(&dword_223E7A000, v13, 0x90u, "[ERROR] invalid user default for %@: %@ range:[%lld,%lld]; using default:%lld%@", &v18, 0x3Eu);
  }

  v6 = 0x277CCA000;
LABEL_4:
  v8 = [*(v6 + 2992) numberWithUnsignedLongLong:v4];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

id __67__BRCUserDefaults_floatForKey_inheritFromGlobal_min_max_byDefault___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = v3;
  v6 = 0x277CCA000uLL;
  if (!v5)
  {
    v7 = v4;
LABEL_3:

    v4 = v7;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [v5 doubleValue];
    v7 = v12;
    if (*(a1 + 44) <= v7 && *(a1 + 48) >= v7)
    {
      goto LABEL_3;
    }
  }

  v13 = brc_bread_crumbs();
  v14 = brc_default_log();
  if (os_log_type_enabled(v14, 0x90u))
  {
    v15 = *(a1 + 32);
    v16 = *(a1 + 44);
    v17 = *(a1 + 48);
    v18 = *(a1 + 40);
    v19 = 138413570;
    v20 = v15;
    v21 = 2112;
    v22 = v5;
    v23 = 2048;
    v24 = v16;
    v25 = 2048;
    v26 = v17;
    v27 = 2048;
    v28 = v18;
    v29 = 2112;
    v30 = v13;
    _os_log_error_impl(&dword_223E7A000, v14, 0x90u, "[ERROR] invalid user default for %@: %@ range:[%f,%f]; using default:%f%@", &v19, 0x3Eu);
  }

  v6 = 0x277CCA000;
LABEL_4:
  *&v8 = v4;
  v9 = [*(v6 + 2992) numberWithFloat:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

void *__60__BRCUserDefaults_stringForKey_inheritFromGlobal_byDefault___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = *(a1 + 32);
  }

  v5 = v4;

  return v4;
}

- (double)doubleForKey:(id)a3 min:(double)a4 max:(double)a5 byDefault:(double)a6
{
  v10 = a3;
  if (a4 >= a5)
  {
    [BRCUserDefaults doubleForKey:min:max:byDefault:];
  }

  if (a4 > a6)
  {
    [BRCUserDefaults doubleForKey:min:max:byDefault:];
  }

  if (a6 > a5)
  {
    [BRCUserDefaults doubleForKey:min:max:byDefault:];
  }

  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __50__BRCUserDefaults_doubleForKey_min_max_byDefault___block_invoke;
  v19 = &unk_278507C68;
  v21 = a6;
  v22 = a4;
  v23 = a5;
  v20 = v10;
  v11 = v10;
  v12 = [(BRCUserDefaults *)self objectForKey:v11 inheritFromGlobal:1 validateWithBlock:&v16];
  [v12 doubleValue];
  v14 = v13;

  return v14;
}

id __50__BRCUserDefaults_doubleForKey_min_max_byDefault___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v13 = *(a1 + 40);
  if (validateUserDouble(v3, (a1 + 48), (a1 + 56), &v13) == 2)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, 0x90u))
    {
      v9 = *(a1 + 48);
      v10 = *(a1 + 56);
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      *buf = 138413570;
      v15 = v11;
      v16 = 2112;
      v17 = v3;
      v18 = 2048;
      v19 = v9;
      v20 = 2048;
      v21 = v10;
      v22 = 2048;
      v23 = v12;
      v24 = 2112;
      v25 = v4;
      _os_log_error_impl(&dword_223E7A000, v5, 0x90u, "[ERROR] invalid user default for %@: %@ range:[%f,%f]; using default:%f%@", buf, 0x3Eu);
    }
  }

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:v13];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

id __58__BRCUserDefaults_BOOLForKey_inheritFromGlobal_byDefault___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v11 = *(a1 + 40);
  if (validateUserBool(v3, &v11) == 2)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, 0x90u))
    {
      v9 = *(a1 + 32);
      if (*(a1 + 40))
      {
        v10 = "YES";
      }

      else
      {
        v10 = "NO";
      }

      *buf = 138413058;
      v13 = v9;
      v14 = 2112;
      v15 = v3;
      v16 = 2080;
      v17 = v10;
      v18 = 2112;
      v19 = v4;
      _os_log_error_impl(&dword_223E7A000, v5, 0x90u, "[ERROR] invalid user default for %@: %@; using default:%s%@", buf, 0x2Au);
    }
  }

  v6 = [MEMORY[0x277CCABB0] numberWithBool:v11];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

id __62__BRCUserDefaults_indexSetForKey_inheritFromGlobal_byDefault___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v3 br_decodeIndexStringToIndexSet], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v4 = *(a1 + 32);
  }

  return v4;
}

- (float)modifyRecordsCountMultiplicativeDecrease
{
  LODWORD(v2) = 1.0;
  LODWORD(v3) = 0.5;
  [(BRCUserDefaults *)self floatForKey:@"sync.up.batchsize.decrease.factor" min:0.0 max:v2 byDefault:v3];
  return result;
}

- (float)modifyRecordsCountAdditiveIncreaseFraction
{
  v3 = [(BRCUserDefaults *)self maxRecordCountInModifyRecordsOperation];
  v4 = [(BRCUserDefaults *)self unsignedIntForKey:@"sync.up.batchsize.increase" min:1 max:100 byDefault:10];
  if (v3)
  {
    return v4 / v3;
  }

  else
  {
    return 0.000001;
  }
}

- (id)_extensionSetForKey:(id)a3 startingWithExtensions:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__BRCUserDefaults__extensionSetForKey_startingWithExtensions___block_invoke;
  v10[3] = &unk_278507C90;
  v11 = v6;
  v7 = v6;
  v8 = [(BRCUserDefaults *)self objectForKey:a3 inheritFromGlobal:1 validateWithBlock:v10];

  return v8;
}

id __62__BRCUserDefaults__extensionSetForKey_startingWithExtensions___block_invoke(uint64_t a1, void *a2)
{
  v3 = _stringSetFromDefaultValue(a2, 1);
  [v3 addObjectsFromArray:*(a1 + 32)];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = [MEMORY[0x277CBEB58] setWithArray:*(a1 + 32)];
  }

  v5 = v4;

  return v5;
}

- (id)_UTISetFor:(id)a3 startingWithExtensions:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__BRCUserDefaults__UTISetFor_startingWithExtensions___block_invoke;
  v10[3] = &unk_278507C90;
  v11 = v6;
  v7 = v6;
  v8 = [(BRCUserDefaults *)self objectForKey:a3 inheritFromGlobal:1 validateWithBlock:v10];

  return v8;
}

id __53__BRCUserDefaults__UTISetFor_startingWithExtensions___block_invoke(uint64_t a1, void *a2)
{
  v3 = _stringSetFromDefaultValue(a2, 0);
  [v3 addObjectsFromArray:*(a1 + 32)];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = [MEMORY[0x277CBEB58] setWithArray:*(a1 + 32)];
  }

  v5 = v4;

  return v5;
}

- (NSSet)iworkShareableExtensions
{
  v3 = [MEMORY[0x277CFAEE0] iWorkShareableExtensions];
  v4 = [(BRCUserDefaults *)self _extensionSetForKey:@"fs.shareable.iwork.extensions" startingWithExtensions:v3];

  return v4;
}

id __32__BRCUserDefaults_syncThrottles__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_overrideDefaultValueIfPossibleWithValidationValue:(char)a3 userValue:(id)a4 key:(id)a5 dictionary:(id)a6 invalidKeys:(id)a7
{
  v10 = a3;
  v15 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v14 = v13;
  if (v10 == 2)
  {
    [v13 addObject:v11];
  }

  else if (v10 == 1)
  {
    [v12 setObject:v15 forKeyedSubscript:v11];
  }
}

- (id)bgSystemTaskParamsForKey:(id)a3 byDefault:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54__BRCUserDefaults_bgSystemTaskParamsForKey_byDefault___block_invoke;
  v12[3] = &unk_278507D00;
  v13 = v7;
  v14 = self;
  v15 = v6;
  v8 = v6;
  v9 = v7;
  v10 = [(BRCUserDefaults *)self objectForKey:v8 inheritFromGlobal:1 validateWithBlock:v12];

  return v10;
}

void *__54__BRCUserDefaults_bgSystemTaskParamsForKey_byDefault___block_invoke(void *a1, void *a2)
{
  v60 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v38 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:a1[4]];
  v4 = objc_opt_new();
  v37 = v3;
  if (!v3)
  {
LABEL_24:
    v25 = a1[4];
    goto LABEL_25;
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v58[0] = @"requires-network";
  v58[1] = @"user-inactivity";
  v58[2] = @"repeat";
  v58[3] = @"powernap";
  v58[4] = @"battery";
  v58[5] = @"disk-intensive";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:6];
  v6 = [v5 countByEnumeratingWithState:&v45 objects:v59 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v46;
LABEL_4:
    v9 = 0;
    while (1)
    {
      if (*v46 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v45 + 1) + 8 * v9);
      if ([v4 count])
      {
        break;
      }

      buf[0] = 0;
      v11 = [v37 objectForKeyedSubscript:v10];
      v12 = validateUserBool(v11, buf);

      v13 = a1[5];
      v14 = [MEMORY[0x277CCABB0] numberWithBool:buf[0]];
      [v13 _overrideDefaultValueIfPossibleWithValidationValue:v12 userValue:v14 key:v10 dictionary:v38 invalidKeys:v4];

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v45 objects:v59 count:16];
        if (v7)
        {
          goto LABEL_4;
        }

        break;
      }
    }
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v56[0] = @"grace";
  v56[1] = @"delay";
  v56[2] = @"interval";
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:3];
  v16 = [v15 countByEnumeratingWithState:&v41 objects:v57 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v42;
LABEL_12:
    v19 = 0;
    while (1)
    {
      if (*v42 != v18)
      {
        objc_enumerationMutation(v15);
      }

      v20 = *(*(&v41 + 1) + 8 * v19);
      if ([v4 count])
      {
        break;
      }

      *buf = 0;
      v40 = 0x403E000000000000;
      v21 = [v37 objectForKeyedSubscript:v20];
      v22 = validateUserDouble(v21, &v40, 0, buf);

      v23 = a1[5];
      v24 = [MEMORY[0x277CCABB0] numberWithDouble:*buf];
      [v23 _overrideDefaultValueIfPossibleWithValidationValue:v22 userValue:v24 key:v20 dictionary:v38 invalidKeys:v4];

      if (v17 == ++v19)
      {
        v17 = [v15 countByEnumeratingWithState:&v41 objects:v57 count:16];
        if (v17)
        {
          goto LABEL_12;
        }

        break;
      }
    }
  }

  if (![v4 count])
  {
    *buf = 0;
    v39 = 2;
    LODWORD(v40) = 3;
    v31 = [v37 objectForKeyedSubscript:@"priority"];
    v32 = validateUserInt(v31, buf, &v40, &v39);

    v33 = a1[5];
    v34 = [MEMORY[0x277CCABB0] numberWithInt:v39];
    [v33 _overrideDefaultValueIfPossibleWithValidationValue:v32 userValue:v34 key:@"priority" dictionary:v38 invalidKeys:v4];
  }

  v25 = v38;
  if ([v4 count])
  {
    v26 = brc_bread_crumbs();
    v27 = brc_default_log();
    if (os_log_type_enabled(v27, 0x90u))
    {
      v35 = a1[6];
      v36 = a1[4];
      *buf = 138413058;
      *&buf[4] = v35;
      v50 = 2112;
      v51 = v4;
      v52 = 2112;
      v53 = v36;
      v54 = 2112;
      v55 = v26;
      _os_log_error_impl(&dword_223E7A000, v27, 0x90u, "[ERROR] invalid user default for %@ invalidKeys = %@, using default:%@%@", buf, 0x2Au);
    }

    goto LABEL_24;
  }

LABEL_25:
  v28 = v25;

  v29 = *MEMORY[0x277D85DE8];
  return v25;
}

- (NSDictionary)discretionaryOperationBGSystemTaskConfigForBackgroundContext
{
  v8[3] = *MEMORY[0x277D85DE8];
  v7[0] = @"requires-network";
  v7[1] = @"user-inactivity";
  v8[0] = MEMORY[0x277CBEC38];
  v8[1] = MEMORY[0x277CBEC28];
  v7[2] = @"priority";
  v8[2] = &unk_2837B0598;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
  v4 = [(BRCUserDefaults *)self bgSystemTaskParamsForKey:@"discretionary-ops-bgst-background-config" byDefault:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)discretionaryOperationBGSystemTaskConfigWithForegroundState:(BOOL)a3
{
  if (a3)
  {
    [(BRCUserDefaults *)self discretionaryOperationBGSystemTaskConfigForForegroundContext];
  }

  else
  {
    [(BRCUserDefaults *)self discretionaryOperationBGSystemTaskConfigForBackgroundContext];
  }
  v3 = ;

  return v3;
}

- (NSDictionary)configurationUpdateBGSystemTaskConfig
{
  v8[5] = *MEMORY[0x277D85DE8];
  v7[0] = @"interval";
  v7[1] = @"delay";
  v8[0] = &unk_2837B05C8;
  v8[1] = &unk_2837B05E0;
  v7[2] = @"repeat";
  v7[3] = @"priority";
  v8[2] = MEMORY[0x277CBEC38];
  v8[3] = &unk_2837B05F8;
  v7[4] = @"battery";
  v8[4] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:5];
  v4 = [(BRCUserDefaults *)self bgSystemTaskParamsForKey:@"configuration.automatic.bgst" byDefault:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (NSDictionary)stageGCBGSystemTaskConfig
{
  v8[4] = *MEMORY[0x277D85DE8];
  v7[0] = @"interval";
  v7[1] = @"delay";
  v8[0] = &unk_2837B0610;
  v8[1] = &unk_2837B0628;
  v7[2] = @"repeat";
  v7[3] = @"priority";
  v8[2] = MEMORY[0x277CBEC38];
  v8[3] = &unk_2837B05F8;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:4];
  v4 = [(BRCUserDefaults *)self bgSystemTaskParamsForKey:@"stage.gc.bgst" byDefault:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (NSDictionary)cacheDeletePushBGSystemTaskConfig
{
  v8[7] = *MEMORY[0x277D85DE8];
  v7[0] = @"interval";
  v7[1] = @"delay";
  v8[0] = &unk_2837B0640;
  v8[1] = &unk_2837B0640;
  v7[2] = @"repeat";
  v7[3] = @"user-inactivity";
  v8[2] = MEMORY[0x277CBEC38];
  v8[3] = MEMORY[0x277CBEC38];
  v7[4] = @"powernap";
  v7[5] = @"battery";
  v8[4] = MEMORY[0x277CBEC38];
  v8[5] = MEMORY[0x277CBEC28];
  v7[6] = @"priority";
  v8[6] = &unk_2837B05F8;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:7];
  v4 = [(BRCUserDefaults *)self bgSystemTaskParamsForKey:@"cachedelete-push.bgst" byDefault:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (NSDictionary)aggressivePCSChainBGSystemTaskConfig
{
  v8[6] = *MEMORY[0x277D85DE8];
  v7[0] = @"delay";
  v7[1] = @"grace";
  v8[0] = &unk_2837B0658;
  v8[1] = &unk_2837B0670;
  v7[2] = @"repeat";
  v7[3] = @"priority";
  v8[2] = MEMORY[0x277CBEC28];
  v8[3] = &unk_2837B05F8;
  v7[4] = @"battery";
  v7[5] = @"user-inactivity";
  v8[4] = MEMORY[0x277CBEC28];
  v8[5] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:6];
  v4 = [(BRCUserDefaults *)self bgSystemTaskParamsForKey:@"agressive-pcs-activity.bgst" byDefault:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (NSDictionary)finishSaltingPartiallySaltedDirectoriesBGSystemTaskConfig
{
  v8[6] = *MEMORY[0x277D85DE8];
  v7[0] = @"delay";
  v7[1] = @"grace";
  v8[0] = &unk_2837B0658;
  v8[1] = &unk_2837B05E0;
  v7[2] = @"repeat";
  v7[3] = @"priority";
  v8[2] = MEMORY[0x277CBEC28];
  v8[3] = &unk_2837B05F8;
  v7[4] = @"battery";
  v7[5] = @"user-inactivity";
  v8[4] = MEMORY[0x277CBEC28];
  v8[5] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:6];
  v4 = [(BRCUserDefaults *)self bgSystemTaskParamsForKey:@"salt-partially-salted.bgst" byDefault:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (NSDictionary)analyticsReportBGSystemTaskConfig
{
  v8[5] = *MEMORY[0x277D85DE8];
  v7[0] = @"interval";
  v7[1] = @"priority";
  v8[0] = &unk_2837B05E0;
  v8[1] = &unk_2837B05F8;
  v7[2] = @"battery";
  v7[3] = @"user-inactivity";
  v8[2] = MEMORY[0x277CBEC28];
  v8[3] = MEMORY[0x277CBEC38];
  v7[4] = @"repeat";
  v8[4] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:5];
  v4 = [(BRCUserDefaults *)self bgSystemTaskParamsForKey:@"analytics.report.bgst" byDefault:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (NSDictionary)appTelemetryGatherBGSystemTaskConfig
{
  v8[5] = *MEMORY[0x277D85DE8];
  v7[0] = @"interval";
  v7[1] = @"priority";
  v8[0] = &unk_2837B05C8;
  v8[1] = &unk_2837B05F8;
  v7[2] = @"battery";
  v7[3] = @"user-inactivity";
  v8[2] = MEMORY[0x277CBEC28];
  v8[3] = MEMORY[0x277CBEC38];
  v7[4] = @"repeat";
  v8[4] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:5];
  v4 = [(BRCUserDefaults *)self bgSystemTaskParamsForKey:@"analytics.report.app-telemetry-gather.bgst" byDefault:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (NSDictionary)rescheduleSuspendedNeedsUploadItemsBGSystemTaskConfig
{
  v8[5] = *MEMORY[0x277D85DE8];
  v7[0] = @"interval";
  v7[1] = @"priority";
  v8[0] = &unk_2837B05E0;
  v8[1] = &unk_2837B05F8;
  v7[2] = @"battery";
  v7[3] = @"user-inactivity";
  v8[2] = MEMORY[0x277CBEC28];
  v8[3] = MEMORY[0x277CBEC28];
  v7[4] = @"repeat";
  v8[4] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:5];
  v4 = [(BRCUserDefaults *)self bgSystemTaskParamsForKey:@"reschedule.suspended-needs-upload-items.bgst" byDefault:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (NSDictionary)syncConsistencyCheckerBGSystemTaskConfig
{
  v8[6] = *MEMORY[0x277D85DE8];
  v7[0] = @"interval";
  v7[1] = @"priority";
  v8[0] = &unk_2837B0670;
  v8[1] = &unk_2837B05F8;
  v7[2] = @"battery";
  v7[3] = @"user-inactivity";
  v8[2] = MEMORY[0x277CBEC28];
  v8[3] = MEMORY[0x277CBEC38];
  v7[4] = @"disk-intensive";
  v7[5] = @"repeat";
  v8[4] = MEMORY[0x277CBEC38];
  v8[5] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:6];
  v4 = [(BRCUserDefaults *)self bgSystemTaskParamsForKey:@"sync.consistency-check.bgst" byDefault:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (NSDictionary)dbIntegrityCheckBGSystemTaskConfig
{
  v8[5] = *MEMORY[0x277D85DE8];
  v7[0] = @"interval";
  v7[1] = @"priority";
  v8[0] = &unk_2837B05C8;
  v8[1] = &unk_2837B05F8;
  v7[2] = @"battery";
  v7[3] = @"user-inactivity";
  v8[2] = MEMORY[0x277CBEC28];
  v8[3] = MEMORY[0x277CBEC38];
  v7[4] = @"repeat";
  v8[4] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:5];
  v4 = [(BRCUserDefaults *)self bgSystemTaskParamsForKey:@"db.integrity-check.bgst" byDefault:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)getBirdBGSTActivitiesConfigsWithAccountFacade:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D77BF8] sharedManager];
  v6 = [v5 br_currentPersonaID];

  [v6 isEqualToString:@"__defaultPersonaID__"];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __65__BRCUserDefaults_getBirdBGSTActivitiesConfigsWithAccountFacade___block_invoke;
  v29[3] = &unk_278507D28;
  v7 = v6;
  v30 = v7;
  v8 = MEMORY[0x22AA4A310](v29);
  v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:10];
  v10 = [(BRCUserDefaults *)self configurationUpdateBGSystemTaskConfig];
  [v9 setObject:v10 forKeyedSubscript:@"com.apple.bird.configuration-server-update"];

  v11 = [(BRCUserDefaults *)self cacheDeletePushBGSystemTaskConfig];
  [v9 setObject:v11 forKeyedSubscript:@"com.apple.bird.cache-delete.push"];

  v12 = [(BRCUserDefaults *)self analyticsReportBGSystemTaskConfig];
  v13 = (v8)[2](v8, @"com.apple.bird.analytics-report");
  [v9 setObject:v12 forKeyedSubscript:v13];

  v14 = [(BRCUserDefaults *)self appTelemetryGatherBGSystemTaskConfig];
  v15 = (v8)[2](v8, @"com.apple.bird.app-telemetry");
  [v9 setObject:v14 forKeyedSubscript:v15];

  v16 = [(BRCUserDefaults *)self dbIntegrityCheckBGSystemTaskConfig];
  v17 = (v8)[2](v8, @"com.apple.bird.db-integrity-check");
  [v9 setObject:v16 forKeyedSubscript:v17];

  v18 = [(BRCUserDefaults *)self finishSaltingPartiallySaltedDirectoriesBGSystemTaskConfig];
  v19 = (v8)[2](v8, @"com.apple.bird.finish-salting-partially-salted-directories");
  [v9 setObject:v18 forKeyedSubscript:v19];

  v20 = [(BRCUserDefaults *)self rescheduleSuspendedNeedsUploadItemsBGSystemTaskConfig];
  v21 = (v8)[2](v8, @"com.apple.bird.reschedule-suspended-needs-upload-items");
  [v9 setObject:v20 forKeyedSubscript:v21];

  v22 = [(BRCUserDefaults *)self stageGCBGSystemTaskConfig];
  v23 = (v8)[2](v8, @"com.apple.bird.stage.gc");
  [v9 setObject:v22 forKeyedSubscript:v23];

  if ([(BRCUserDefaults *)self syncConsistencyCheckerEnabled])
  {
    v24 = [(BRCUserDefaults *)self syncConsistencyCheckerBGSystemTaskConfig];
    v25 = (v8)[2](v8, @"com.apple.bird.sync-consistency-check");
    [v9 setObject:v24 forKeyedSubscript:v25];
  }

  if ([(BRCUserDefaults *)self aggressivelyPCSChainWithAccountFacade:v4])
  {
    v26 = [(BRCUserDefaults *)self aggressivePCSChainBGSystemTaskConfig];
    v27 = (v8)[2](v8, @"com.apple.bird.aggressive-pcs-chain");
    [v9 setObject:v26 forKeyedSubscript:v27];
  }

  return v9;
}

- (NSDictionary)applyThrottleParams
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = @"start-after";
  v10[1] = @"give-up-after";
  v11[0] = &unk_2837B0688;
  v11[1] = &unk_2837B06A0;
  v10[2] = @"wait-at-least";
  v10[3] = @"wait-at-most";
  v11[2] = &unk_2837B0EC8;
  v11[3] = &unk_2837B06B8;
  v10[4] = @"forget-after";
  v10[5] = @"max-elemnt-count";
  v11[4] = &unk_2837B0610;
  v11[5] = &unk_2837B06D0;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:6];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__BRCUserDefaults_applyThrottleParams__block_invoke;
  v8[3] = &unk_278507C90;
  v9 = v3;
  v4 = v3;
  v5 = [(BRCUserDefaults *)self objectForKey:@"fswriter.apply.throttle" inheritFromGlobal:1 validateWithBlock:v8];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSDictionary)downloadThrottleParams
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = @"start-after";
  v10[1] = @"give-up-after";
  v11[0] = &unk_2837B0688;
  v11[1] = &unk_2837B06A0;
  v10[2] = @"wait-at-least";
  v10[3] = @"wait-at-most";
  v11[2] = &unk_2837B0EC8;
  v11[3] = &unk_2837B06B8;
  v10[4] = @"forget-after";
  v10[5] = @"max-elemnt-count";
  v11[4] = &unk_2837B06D0;
  v11[5] = &unk_2837B06D0;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:6];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__BRCUserDefaults_downloadThrottleParams__block_invoke;
  v8[3] = &unk_278507C90;
  v9 = v3;
  v4 = v3;
  v5 = [(BRCUserDefaults *)self objectForKey:@"transfer.download.throttle" inheritFromGlobal:1 validateWithBlock:v8];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSDictionary)uploadThrottleParams
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = @"start-after";
  v10[1] = @"give-up-after";
  v11[0] = &unk_2837B06E8;
  v11[1] = &unk_2837B06A0;
  v10[2] = @"wait-at-least";
  v10[3] = @"wait-at-most";
  v11[2] = &unk_2837B0EC8;
  v11[3] = &unk_2837B0700;
  v10[4] = @"forget-after";
  v10[5] = @"max-elemnt-count";
  v11[4] = &unk_2837B0610;
  v11[5] = &unk_2837B06D0;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:6];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__BRCUserDefaults_uploadThrottleParams__block_invoke;
  v8[3] = &unk_278507C90;
  v9 = v3;
  v4 = v3;
  v5 = [(BRCUserDefaults *)self objectForKey:@"transfer.upload.throttle" inheritFromGlobal:1 validateWithBlock:v8];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSDictionary)uploadFileModifiedThrottleParams
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = @"start-after";
  v10[1] = @"give-up-after";
  v11[0] = &unk_2837B0718;
  v11[1] = &unk_2837B0610;
  v10[2] = @"wait-at-least";
  v10[3] = @"wait-at-most";
  v11[2] = &unk_2837B0730;
  v11[3] = &unk_2837B0748;
  v10[4] = @"forget-after";
  v10[5] = @"max-elemnt-count";
  v11[4] = &unk_2837B0610;
  v11[5] = &unk_2837B06D0;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:6];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__BRCUserDefaults_uploadFileModifiedThrottleParams__block_invoke;
  v8[3] = &unk_278507C90;
  v9 = v3;
  v4 = v3;
  v5 = [(BRCUserDefaults *)self objectForKey:@"transfer.upload.file-modified.throttle" inheritFromGlobal:1 validateWithBlock:v8];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSDictionary)perItemSyncUpThrottleParams
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = @"start-after";
  v10[1] = @"give-up-after";
  v11[0] = &unk_2837B0658;
  v11[1] = &unk_2837B0760;
  v10[2] = @"wait-at-least";
  v10[3] = @"wait-at-most";
  v11[2] = &unk_2837B0778;
  v11[3] = &unk_2837B05E0;
  v10[4] = @"forget-after";
  v10[5] = @"max-elemnt-count";
  v11[4] = &unk_2837B0790;
  v11[5] = &unk_2837B06D0;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:6];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__BRCUserDefaults_perItemSyncUpThrottleParams__block_invoke;
  v8[3] = &unk_278507C90;
  v9 = v3;
  v4 = v3;
  v5 = [(BRCUserDefaults *)self objectForKey:@"sync-up.error.per-item.throttle" inheritFromGlobal:1 validateWithBlock:v8];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSDictionary)operationFailureThrottleParams
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = @"start-after";
  v10[1] = @"give-up-after";
  v11[0] = &unk_2837B0718;
  v11[1] = &unk_2837B0760;
  v10[2] = @"wait-at-least";
  v10[3] = @"wait-at-most";
  v11[2] = &unk_2837B0778;
  v11[3] = &unk_2837B05E0;
  v10[4] = @"forget-after";
  v10[5] = @"max-elemnt-count";
  v11[4] = &unk_2837B0790;
  v11[5] = &unk_2837B06D0;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:6];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__BRCUserDefaults_operationFailureThrottleParams__block_invoke;
  v8[3] = &unk_278507C90;
  v9 = v3;
  v4 = v3;
  v5 = [(BRCUserDefaults *)self objectForKey:@"operation.failure.throttle" inheritFromGlobal:1 validateWithBlock:v8];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSDictionary)appLibraryResetThrottleParams
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = @"start-after";
  v10[1] = @"give-up-after";
  v11[0] = &unk_2837B07A8;
  v11[1] = &unk_2837B07C0;
  v10[2] = @"wait-at-least";
  v10[3] = @"wait-at-most";
  v11[2] = &unk_2837B0778;
  v11[3] = &unk_2837B0610;
  v10[4] = @"forget-after";
  v10[5] = @"max-elemnt-count";
  v11[4] = &unk_2837B05E0;
  v11[5] = &unk_2837B06D0;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:6];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__BRCUserDefaults_appLibraryResetThrottleParams__block_invoke;
  v8[3] = &unk_278507C90;
  v9 = v3;
  v4 = v3;
  v5 = [(BRCUserDefaults *)self objectForKey:@"container.reset.throttle" inheritFromGlobal:1 validateWithBlock:v8];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSDictionary)sharedAppLibraryResetThrottleParams
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = @"start-after";
  v10[1] = @"give-up-after";
  v11[0] = &unk_2837B0760;
  v11[1] = &unk_2837B07D8;
  v10[2] = @"wait-at-least";
  v10[3] = @"wait-at-most";
  v11[2] = &unk_2837B0ED8;
  v11[3] = &unk_2837B06B8;
  v10[4] = @"forget-after";
  v10[5] = @"max-elemnt-count";
  v11[4] = &unk_2837B05E0;
  v11[5] = &unk_2837B06D0;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:6];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__BRCUserDefaults_sharedAppLibraryResetThrottleParams__block_invoke;
  v8[3] = &unk_278507C90;
  v9 = v3;
  v4 = v3;
  v5 = [(BRCUserDefaults *)self objectForKey:@"shared-container.reset.throttle" inheritFromGlobal:1 validateWithBlock:v8];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSArray)telemetryRTCAllowedZoneNamePrefixes
{
  v2 = [(BRCUserDefaults *)self stringForKey:@"telemetry.rtc.allowed-zone-name-prefixes" byDefault:@"com.apple., iCloud.com.apple."];
  v3 = [v2 componentsSeparatedByString:{@", "}];

  return v3;
}

BRCSyncOperationThrottleParams *__35__BRCUserDefaults_syncDownThrottle__block_invoke(uint64_t a1, void *a2)
{
  v9[7] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [BRCSyncOperationThrottleParams alloc];
  v8[0] = @"wait-at-least";
  v8[1] = @"wait-at-most";
  v9[0] = &unk_2837B0EE8;
  v9[1] = &unk_2837B0610;
  v8[2] = @"success-ratio";
  v8[3] = @"quota-clear-ratio";
  v9[2] = &unk_2837B0EF8;
  v9[3] = &unk_2837B0F08;
  v8[4] = @"error-ratio";
  v8[5] = @"kickback-delay";
  v9[4] = &unk_2837B0718;
  v9[5] = &unk_2837B0748;
  v8[6] = @"kickback-ratio";
  v9[6] = &unk_2837B0ED8;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:7];
  v5 = [(BRCSyncOperationThrottleParams *)v3 initWithParams:v2 defaults:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

BRCSyncOperationThrottleParams *__33__BRCUserDefaults_syncUpThrottle__block_invoke(uint64_t a1, void *a2)
{
  v9[7] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [BRCSyncOperationThrottleParams alloc];
  v8[0] = @"wait-at-least";
  v8[1] = @"wait-at-most";
  v9[0] = &unk_2837B0EE8;
  v9[1] = &unk_2837B0610;
  v8[2] = @"success-ratio";
  v8[3] = @"quota-clear-ratio";
  v9[2] = &unk_2837B0EF8;
  v9[3] = &unk_2837B0F08;
  v8[4] = @"error-ratio";
  v8[5] = @"kickback-delay";
  v9[4] = &unk_2837B0718;
  v9[5] = &unk_2837B0748;
  v8[6] = @"kickback-ratio";
  v9[6] = &unk_2837B0ED8;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:7];
  v5 = [(BRCSyncOperationThrottleParams *)v3 initWithParams:v2 defaults:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSDictionary)syncClientZoneThrottleParams
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = @"start-after";
  v10[1] = @"give-up-after";
  v11[0] = &unk_2837B07F0;
  v11[1] = &unk_2837B06A0;
  v10[2] = @"wait-at-least";
  v10[3] = @"wait-at-most";
  v11[2] = &unk_2837B0ED8;
  v11[3] = &unk_2837B06B8;
  v10[4] = @"forget-after";
  v10[5] = @"max-elemnt-count";
  v11[4] = &unk_2837B0610;
  v11[5] = &unk_2837B0808;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:6];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__BRCUserDefaults_syncClientZoneThrottleParams__block_invoke;
  v8[3] = &unk_278507C90;
  v9 = v3;
  v4 = v3;
  v5 = [(BRCUserDefaults *)self objectForKey:@"sync.container.throttle" inheritFromGlobal:1 validateWithBlock:v8];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSDictionary)syncClientZoneErrorThrottleParams
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = @"start-after";
  v10[1] = @"give-up-after";
  v11[0] = &unk_2837B0718;
  v11[1] = &unk_2837B06A0;
  v10[2] = @"wait-at-least";
  v10[3] = @"wait-at-most";
  v11[2] = &unk_2837B0ED8;
  v11[3] = &unk_2837B06B8;
  v10[4] = @"forget-after";
  v10[5] = @"max-elemnt-count";
  v11[4] = &unk_2837B0610;
  v11[5] = &unk_2837B0808;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:6];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__BRCUserDefaults_syncClientZoneErrorThrottleParams__block_invoke;
  v8[3] = &unk_278507C90;
  v9 = v3;
  v4 = v3;
  v5 = [(BRCUserDefaults *)self objectForKey:@"sync.container.error.throttle" inheritFromGlobal:1 validateWithBlock:v8];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (float)_defaultSyncUpDailyBudget
{
  LODWORD(v2) = 2139095039;
  LODWORD(v3) = 1315859240;
  [(BRCUserDefaults *)self floatForKey:@"sync.up.budget.daily.default" min:0.0 max:v2 byDefault:v3];
  return result;
}

- (float)_defaultSyncUpHourlyBudget
{
  [(BRCUserDefaults *)self _defaultSyncUpDailyBudget];
  LODWORD(v5) = 2139095039;

  *&v4 = v3 / 6.0;
  [(BRCUserDefaults *)self floatForKey:@"sync.up.budget.hourly.default" min:0.0 max:v5 byDefault:v4];
  return result;
}

- (float)_defaultSyncUpMinutelyBudget
{
  [(BRCUserDefaults *)self _defaultSyncUpHourlyBudget];
  LODWORD(v5) = 2139095039;

  *&v4 = v3 / 5.0;
  [(BRCUserDefaults *)self floatForKey:@"sync.up.budget.minutely.default" min:0.0 max:v5 byDefault:v4];
  return result;
}

- (float)syncUpInitialItemCost
{
  LODWORD(v2) = 2139095039;
  LODWORD(v3) = 1036831949;
  [(BRCUserDefaults *)self floatForKey:@"sync.up.cost.initial-item" min:0.0 max:v2 byDefault:v3];
  return result;
}

- (float)syncUpStructureCreateCost
{
  LODWORD(v2) = 2139095039;
  LODWORD(v3) = 1.0;
  [(BRCUserDefaults *)self floatForKey:@"sync.up.cost.structure.create" min:0.0 max:v2 byDefault:v3];
  return result;
}

- (float)syncUpStructureEditCost
{
  LODWORD(v2) = 2139095039;
  LODWORD(v3) = 1.0;
  [(BRCUserDefaults *)self floatForKey:@"sync.up.cost.structure.edit" min:0.0 max:v2 byDefault:v3];
  return result;
}

- (float)syncUpStructureDeleteCost
{
  LODWORD(v2) = 2139095039;
  LODWORD(v3) = 1.0;
  [(BRCUserDefaults *)self floatForKey:@"sync.up.cost.structure.delete" min:0.0 max:v2 byDefault:v3];
  return result;
}

- (float)syncUpDataCreateCost
{
  LODWORD(v2) = 2139095039;
  LODWORD(v3) = 2.0;
  [(BRCUserDefaults *)self floatForKey:@"sync.up.cost.data.create" min:0.0 max:v2 byDefault:v3];
  return result;
}

- (float)syncUpDataEditCost
{
  LODWORD(v2) = 2139095039;
  LODWORD(v3) = 2.0;
  [(BRCUserDefaults *)self floatForKey:@"sync.up.cost.data.edit" min:0.0 max:v2 byDefault:v3];
  return result;
}

- (float)syncUpDataDeleteCost
{
  LODWORD(v2) = 2139095039;
  LODWORD(v3) = 2.0;
  [(BRCUserDefaults *)self floatForKey:@"sync.up.cost.data.delete" min:0.0 max:v2 byDefault:v3];
  return result;
}

- (float)syncUpDocumentCreateCost
{
  LODWORD(v2) = 2139095039;
  LODWORD(v3) = 0.5;
  [(BRCUserDefaults *)self floatForKey:@"sync.up.cost.document.create" min:0.0 max:v2 byDefault:v3];
  return result;
}

- (float)syncUpDocumentEditCost
{
  LODWORD(v2) = 2139095039;
  LODWORD(v3) = 2.0;
  [(BRCUserDefaults *)self floatForKey:@"sync.up.cost.document.edit" min:0.0 max:v2 byDefault:v3];
  return result;
}

- (float)syncUpDocumentDeleteCost
{
  LODWORD(v2) = 2139095039;
  LODWORD(v3) = 1.0;
  [(BRCUserDefaults *)self floatForKey:@"sync.up.cost.document.delete" min:0.0 max:v2 byDefault:v3];
  return result;
}

- (NSDictionary)readerThrottleParams
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = @"start-after";
  v10[1] = @"give-up-after";
  v11[0] = &unk_2837B0820;
  v11[1] = &unk_2837B0628;
  v10[2] = @"wait-at-least";
  v10[3] = @"wait-at-most";
  v11[2] = &unk_2837B0730;
  v11[3] = &unk_2837B0838;
  v10[4] = @"forget-after";
  v10[5] = @"max-elemnt-count";
  v11[4] = &unk_2837B0850;
  v11[5] = &unk_2837B0808;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:6];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__BRCUserDefaults_readerThrottleParams__block_invoke;
  v8[3] = &unk_278507C90;
  v9 = v3;
  v4 = v3;
  v5 = [(BRCUserDefaults *)self objectForKey:@"fsreader.coordination.throttle" inheritFromGlobal:1 validateWithBlock:v8];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (float)dbAutovacuumRatio
{
  LODWORD(v2) = 1120403456;
  LODWORD(v3) = 20.0;
  [(BRCUserDefaults *)self floatForKey:@"db.autovacuum-ratio" min:0.0 max:v2 byDefault:v3];
  return result;
}

- (BOOL)shouldAppLibraryBeGreedy
{
  v3 = [(NSString *)self->_clientZoneIdentifier isEqualToString:*MEMORY[0x277CFACE0]];

  return [(BRCUserDefaults *)self BOOLForKey:@"container.greedy" inheritFromGlobal:v3 ^ 1 byDefault:v3];
}

__CFString *__41__BRCUserDefaults_serverConfigurationURL__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v2 = @"https://configuration.apple.com/configurations/internetservices/cloudkit/clouddocs/clouddocs-1.0.plist";
  }

  return v2;
}

- (float)relativeDiskSpaceRequiredToReturnToGreedyState
{
  LODWORD(v2) = 1.0;
  [(BRCUserDefaults *)self floatForKey:@"disk-space.required-to-return-to-greedy-state.relative.ios" min:0.0 max:v2 byDefault:0.0];
  return result;
}

- (NSDictionary)recentsEnumeratorFailureThrottleParams
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = @"start-after";
  v10[1] = @"give-up-after";
  v11[0] = &unk_2837B0868;
  v11[1] = &unk_2837B0880;
  v10[2] = @"wait-at-least";
  v10[3] = @"wait-at-most";
  v11[2] = &unk_2837B0EC8;
  v11[3] = &unk_2837B06B8;
  v10[4] = @"forget-after";
  v10[5] = @"max-elemnt-count";
  v11[4] = &unk_2837B0610;
  v11[5] = &unk_2837B06D0;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:6];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__BRCUserDefaults_recentsEnumeratorFailureThrottleParams__block_invoke;
  v8[3] = &unk_278507C90;
  v9 = v3;
  v4 = v3;
  v5 = [(BRCUserDefaults *)self objectForKey:@"spotlight-indexer.failure-throttle-params" inheritFromGlobal:1 validateWithBlock:v8];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSDictionary)migrationThrottleParams
{
  v11[5] = *MEMORY[0x277D85DE8];
  v10[0] = @"start-after";
  v10[1] = @"give-up-after";
  v11[0] = &unk_2837B0778;
  v11[1] = &unk_2837B06A0;
  v10[2] = @"wait-at-least";
  v10[3] = @"wait-at-most";
  v11[2] = &unk_2837B0868;
  v11[3] = &unk_2837B0898;
  v10[4] = @"forget-after";
  v11[4] = &unk_2837B05E0;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:5];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__BRCUserDefaults_migrationThrottleParams__block_invoke;
  v8[3] = &unk_278507C90;
  v9 = v3;
  v4 = v3;
  v5 = [(BRCUserDefaults *)self objectForKey:@"migration.failure-throttle-params" inheritFromGlobal:1 validateWithBlock:v8];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

id __35__BRCUserDefaults_blacklistPCSPrep__block_invoke(uint64_t a1, void *a2)
{
  v2 = _stringSetFromDefaultValue(a2, 0);
  v3 = *MEMORY[0x277CFAD68];
  [v2 addObject:*MEMORY[0x277CFAD68]];
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = *MEMORY[0x277CFAD58];
    v4 = [MEMORY[0x277CBEB58] setWithObjects:{v3, *MEMORY[0x277CFAD58], *MEMORY[0x277CFADD0], @"_defaultZone", 0}];
  }

  v6 = v4;

  return v6;
}

id __56__BRCUserDefaults_excludedFilenamesWorthWarningAtLogout__block_invoke(uint64_t a1, void *a2)
{
  v2 = _stringSetFromDefaultValue(a2, 0);
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CFAEA8] defaultExcludedFilenamesWorthWarningAtLogout];
  }

  v5 = v4;

  return v5;
}

id __51__BRCUserDefaults_excludedFilenamesWorthPreserving__block_invoke(uint64_t a1, void *a2)
{
  v2 = _stringSetFromDefaultValue(a2, 0);
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CFAEA8] defaultExcludedFilenamesWorthPreserving];
  }

  v5 = v4;

  return v5;
}

id __52__BRCUserDefaults_excludedExtensionsWorthPreserving__block_invoke(uint64_t a1, void *a2)
{
  v2 = _stringSetFromDefaultValue(a2, 0);
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CFAEA8] defaultExcludedExtensionsWorthPreserving];
  }

  v5 = v4;

  return v5;
}

- (BOOL)shouldAutoMigrateToCloudDocs
{
  if ([(NSString *)self->_clientZoneIdentifier isEqualToString:*MEMORY[0x277CFAB80]])
  {

    return [(BRCUserDefaults *)self BOOLForKey:@"should-auto-migrate" inheritFromGlobal:0 byDefault:0];
  }

  else
  {

    return [(BRCUserDefaults *)self BOOLForKey:@"should-auto-migrate" byDefault:1];
  }
}

- (BOOL)_shouldRampForKey:(id)a3 accountFacade:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(BRCUserDefaults *)self intForKey:v6 min:0 max:100 byDefault:0];
  v9 = [v6 stringByAppendingString:@".carry"];
  v10 = [(BRCUserDefaults *)self intForKey:v9 min:0 max:100 byDefault:0];

  v11 = [v6 stringByAppendingString:@".internal"];
  v12 = [(BRCUserDefaults *)self intForKey:v11 min:0 max:100 byDefault:0];

  v13 = [v6 stringByAppendingString:@".internal+carry"];
  v14 = [(BRCUserDefaults *)self intForKey:v13 min:0 max:100 byDefault:0];

  if (v8 > 0 || v10 > 0 || v12 > 0 || (v15 = 0, v14 >= 1))
  {
    v16 = [v7 rampNumber];
    if (v16 >= v8)
    {
      v19 = v16;
      if ([v7 isInCarry] && v19 < v10)
      {
        v17 = brc_bread_crumbs();
        v15 = 1;
        v18 = brc_default_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          [BRCUserDefaults _shouldRampForKey:accountFacade:];
        }
      }

      else if (os_variant_has_internal_content() && v19 < v12)
      {
        v17 = brc_bread_crumbs();
        v15 = 1;
        v18 = brc_default_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          [BRCUserDefaults _shouldRampForKey:accountFacade:];
        }
      }

      else if ([v7 isInCarry] && os_variant_has_internal_content() && v19 < v14)
      {
        v17 = brc_bread_crumbs();
        v15 = 1;
        v18 = brc_default_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          [BRCUserDefaults _shouldRampForKey:accountFacade:];
        }
      }

      else
      {
        v17 = brc_bread_crumbs();
        v18 = brc_default_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v22 = 138413314;
          v23 = v6;
          v24 = 1024;
          v25 = v19;
          v26 = 1024;
          v27 = v8;
          v28 = 1024;
          v29 = v10;
          v30 = 2112;
          v31 = v17;
          _os_log_debug_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] We are denylisted from %@ because %d < %d and %d%@", &v22, 0x28u);
        }

        v15 = 0;
      }
    }

    else
    {
      v17 = brc_bread_crumbs();
      v15 = 1;
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [BRCUserDefaults _shouldRampForKey:accountFacade:];
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)optimisticallyPCSChainWithAccountFacade:(id)a3
{
  v4 = [(BRCUserDefaults *)self _shouldRampForKey:@"sync.optimistic-chain-ramp" accountFacade:a3];

  return [(BRCUserDefaults *)self BOOLForKey:@"sync.optimistic-pcs-chaining" byDefault:v4];
}

- (BOOL)optimisticallyPCSChainDuringResetWithAccountFacade:(id)a3
{
  v4 = [(BRCUserDefaults *)self _shouldRampForKey:@"sync.reset.optimistic-chain-ramp" accountFacade:a3];

  return [(BRCUserDefaults *)self BOOLForKey:@"sync.reset.optimistic-chain" byDefault:v4];
}

- (BOOL)aggressivelyPCSChainWithAccountFacade:(id)a3
{
  v4 = [(BRCUserDefaults *)self _shouldRampForKey:@"sync.aggressive-chain-ramp" accountFacade:a3];

  return [(BRCUserDefaults *)self BOOLForKey:@"aggressive-pcs-chaining" byDefault:v4];
}

- (BOOL)saveLocalContentVersionIdentifierOnDiskWithAccountFacade:(id)a3
{
  v4 = [(BRCUserDefaults *)self _shouldRampForKey:@"sync.save-local-content-version-on-disk-ramp" accountFacade:a3];

  return [(BRCUserDefaults *)self BOOLForKey:@"sync.save-local-content-version-on-disk" byDefault:v4];
}

- (BOOL)allowsDirectoryListBeforeInitialChangeToken
{
  if ([(BRCUserDefaults *)self _isSharedDefaults])
  {
    v3 = @"allows-shared-directory-list-before-initial-change";
    v4 = self;
    v5 = 1;
  }

  else
  {
    v3 = @"allows-private-directory-list-before-initial-change";
    v4 = self;
    v5 = 0;
  }

  return [(BRCUserDefaults *)v4 BOOLForKey:v3 byDefault:v5];
}

- (BOOL)canSaveRecordsDirectlyForDeltaSync
{
  v3 = [(NSString *)self->_clientZoneIdentifier isEqualToString:*MEMORY[0x277CFADA8]];

  return [(BRCUserDefaults *)self BOOLForKey:@"sync.save-records-directly-for-delta-sync" inheritFromGlobal:v3 ^ 1 byDefault:v3];
}

- (BOOL)isBlacklistedFromFolderSharing
{
  v3 = [(NSString *)self->_clientZoneIdentifier isEqualToString:*MEMORY[0x277CFABA0]];

  return [(BRCUserDefaults *)self BOOLForKey:@"sync.server-only.folder-sharing-blacklisted" inheritFromGlobal:v3 ^ 1 byDefault:v3];
}

- (float)syncUpBackoffDelayForFailure
{
  LODWORD(v2) = 2139095039;
  LODWORD(v3) = 1142292480;
  [(BRCUserDefaults *)self floatForKey:@"sync-up.backoff.delay-for-failure" min:0.0 max:v2 byDefault:v3];
  return result;
}

- (float)syncUpBackoffRatioForFailure
{
  LODWORD(v2) = 2139095039;
  LODWORD(v3) = 0.75;
  [(BRCUserDefaults *)self floatForKey:@"sync-up.backoff.ratio-for-failure" min:0.0 max:v2 byDefault:v3];
  return result;
}

- (NSString)fakeEtagForFailIfOutdated
{
  v2 = [(BRCUserDefaults *)self stringForKey:@"sync.reset.fake-etag-for-fail-if-outdated" byDefault:@"0"];
  if ([v2 isEqualToString:@"nil"])
  {

    v2 = 0;
  }

  return v2;
}

- (NSArray)carryPartitions
{
  v2 = [(BRCUserDefaults *)self stringForKey:@"sync.server-only.carry-partitions" byDefault:@"p97, p98"];
  v3 = [v2 componentsSeparatedByString:{@", "}];

  return v3;
}

- (NSIndexSet)telemetryEventIdentifiersToReportErrorsChain
{
  if (telemetryEventIdentifiersToReportErrorsChain_onceToken != -1)
  {
    [BRCUserDefaults telemetryEventIdentifiersToReportErrorsChain];
  }

  v3 = telemetryEventIdentifiersToReportErrorsChain_defaultSet;

  return [(BRCUserDefaults *)self indexSetForKey:@"telemetry.event-identifiers-to-report-errors-chain" byDefault:v3];
}

void __63__BRCUserDefaults_telemetryEventIdentifiersToReportErrorsChain__block_invoke()
{
  v12 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_new();
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = [&unk_2837B0D30 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v8;
    do
    {
      v4 = 0;
      do
      {
        if (*v8 != v3)
        {
          objc_enumerationMutation(&unk_2837B0D30);
        }

        [v0 addIndex:{objc_msgSend(*(*(&v7 + 1) + 8 * v4++), "unsignedLongValue")}];
      }

      while (v2 != v4);
      v2 = [&unk_2837B0D30 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v2);
  }

  v5 = telemetryEventIdentifiersToReportErrorsChain_defaultSet;
  telemetryEventIdentifiersToReportErrorsChain_defaultSet = v0;

  v6 = *MEMORY[0x277D85DE8];
}

id __50__BRCUserDefaults_telemetryHeaderSupportedClasses__block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = _stringSetFromDefaultValue(a2, 1);
  if (v2)
  {
    v3 = objc_opt_new();
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v20;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = NSClassFromString(*(*(&v19 + 1) + 8 * i));
          if (v9)
          {
            [v3 addObject:v9];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v3 = [v10 setWithObjects:{v11, v12, v13, v14, v15, v16, objc_opt_class(), 0}];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v3;
}

id __51__BRCUserDefaults_benignTelemetryErrorDescriptions__block_invoke(uint64_t a1, void *a2)
{
  v2 = _stringSetFromDefaultValue(a2, 0);
  if (!v2)
  {
    v2 = [MEMORY[0x277CBEB98] setWithObjects:{@"CKErrorZoneNotFound", @"CKErrorSharedZoneNotFound", @"CKErrorUserDeletedZone", @"zone became healthy", @"testing", 0}];
  }

  return v2;
}

- (id)_healthErrorSetForKey:(id)a3 byDefault:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__BRCUserDefaults__healthErrorSetForKey_byDefault___block_invoke;
  v10[3] = &unk_278507C90;
  v11 = v6;
  v7 = v6;
  v8 = [(BRCUserDefaults *)self objectForKey:a3 inheritFromGlobal:1 validateWithBlock:v10];

  return v8;
}

id __51__BRCUserDefaults__healthErrorSetForKey_byDefault___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = _numberSetFromDefaultValue(a2);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v12 + 1) + 8 * v7) intValue] >= 20)
        {
          __51__BRCUserDefaults__healthErrorSetForKey_byDefault___block_invoke_cold_1();
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  if (v3)
  {
    v8 = v3;
  }

  else
  {
    v8 = [MEMORY[0x277CBEB58] setWithArray:*(a1 + 32)];
  }

  v9 = v8;

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

id __44__BRCUserDefaults_recordsToIgnoreOnSyncDown__block_invoke(uint64_t a1, void *a2)
{
  v2 = _stringSetFromDefaultValue(a2, 1);
  if (!v2)
  {
    v2 = [MEMORY[0x277CBEB98] setWithObjects:{@"directory/appData_com.apple.Desktop", @"directory/appDocuments_com.apple.Desktop", @"directory/appData_com.apple.Documents", @"directory/appDocuments_com.apple.Documents", 0}];
  }

  return v2;
}

- (BOOL)dbIntegrityCheckBasehashSalting
{
  v3 = [(BRCUserDefaults *)self supportsEnhancedDrivePrivacy];
  if (v3)
  {

    LOBYTE(v3) = [(BRCUserDefaults *)self BOOLForKey:@"db.integrity-check.basehash-salting" byDefault:1];
  }

  return v3;
}

- (BOOL)shouldPerformPeriodicSyncInvestigation
{
  v3 = [MEMORY[0x277CFAEB0] isInternalBuild];

  return [(BRCUserDefaults *)self BOOLForKey:@"sync.should-perform-periodic-sync-investigations" byDefault:v3];
}

- (BOOL)fpfsOptimizeStorageAndSpeculativeDownload
{
  if ([(BRCUserDefaults *)self fpfsOptimizeStorageAndSpeculativeDownloadCandidate])
  {
    return 0;
  }

  return [(BRCUserDefaults *)self BOOLForKey:@"fpfs.optimize-storage-and-speculative-download" byDefault:1];
}

- (BOOL)fpfsOptimizeStorageAndSpeculativeDownloadCandidate
{
  IsEnabled = FPFeatureFlagIndexAllRemoteItemsIsEnabled();
  if (IsEnabled)
  {

    LOBYTE(IsEnabled) = [(BRCUserDefaults *)self BOOLForKey:@"fpfs.optimize-storage-and-speculative-download-candidate" byDefault:1];
  }

  return IsEnabled;
}

- (BOOL)requestForAccess
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {
    v3 = MEMORY[0x277CFAEB0];

    LOBYTE(v2) = [v3 isInternalBuild];
  }

  return v2;
}

- (BOOL)requestForAccessNotifications
{
  v3 = [MEMORY[0x277CFAEB0] isInternalBuild];

  return [(BRCUserDefaults *)self BOOLForKey:@"notifications.request-for-access" byDefault:v3];
}

- (BOOL)syncConsistencyCheckerEnabled
{
  v3 = _os_feature_enabled_impl();
  if (v3)
  {

    LOBYTE(v3) = [(BRCUserDefaults *)self BOOLForKey:@"sync.consistency-checker.enabled" byDefault:1];
  }

  return v3;
}

- (NSDictionary)serverStitchingThrottleParams
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = @"start-after";
  v10[1] = @"give-up-after";
  v11[0] = &unk_2837B0820;
  v11[1] = &unk_2837B06A0;
  v10[2] = @"wait-at-least";
  v10[3] = @"wait-at-most";
  v11[2] = &unk_2837B0ED8;
  v11[3] = &unk_2837B06B8;
  v10[4] = @"forget-after";
  v10[5] = @"max-elemnt-count";
  v11[4] = &unk_2837B0610;
  v11[5] = &unk_2837B0808;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:6];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__BRCUserDefaults_serverStitchingThrottleParams__block_invoke;
  v8[3] = &unk_278507C90;
  v9 = v3;
  v4 = v3;
  v5 = [(BRCUserDefaults *)self objectForKey:@"sync.server-stitching.throttle-params" inheritFromGlobal:1 validateWithBlock:v8];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSDictionary)locateRecordsThrottleParams
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = @"start-after";
  v10[1] = @"give-up-after";
  v11[0] = &unk_2837B0730;
  v11[1] = &unk_2837B06A0;
  v10[2] = @"wait-at-least";
  v10[3] = @"wait-at-most";
  v11[2] = &unk_2837B0ED8;
  v11[3] = &unk_2837B0748;
  v10[4] = @"forget-after";
  v10[5] = @"max-elemnt-count";
  v11[4] = &unk_2837B0700;
  v11[5] = &unk_2837B0808;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:6];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__BRCUserDefaults_locateRecordsThrottleParams__block_invoke;
  v8[3] = &unk_278507C90;
  v9 = v3;
  v4 = v3;
  v5 = [(BRCUserDefaults *)self objectForKey:@"sync.locate-records.throttle-params" inheritFromGlobal:1 validateWithBlock:v8];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)scheduleDeepScanOnFSEventsReset
{
  if (![(BRCUserDefaults *)self testDevice])
  {
    return 1;
  }

  return [(BRCUserDefaults *)self BOOLForKey:@"test.schedule-deep-scan-on-fsevents-reset" byDefault:1];
}

- (id)_brErrorSetForKey:(id)a3 byDefault:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__BRCUserDefaults__brErrorSetForKey_byDefault___block_invoke;
  v10[3] = &unk_278507C90;
  v11 = v6;
  v7 = v6;
  v8 = [(BRCUserDefaults *)self objectForKey:a3 inheritFromGlobal:1 suiteName:@"com.apple.bird" validateWithBlock:v10];

  return v8;
}

id __47__BRCUserDefaults__brErrorSetForKey_byDefault___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = _numberSetFromDefaultValue(a2);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v12 + 1) + 8 * v7) intValue] <= 0)
        {
          __47__BRCUserDefaults__brErrorSetForKey_byDefault___block_invoke_cold_1();
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  if (v3)
  {
    v8 = v3;
  }

  else
  {
    v8 = [MEMORY[0x277CBEB58] setWithArray:*(a1 + 32)];
  }

  v9 = v8;

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (unsigned)fpfsImportStatusTelemetryDaysThreshold
{
  if ([MEMORY[0x277CFAEB0] isInternalBuild])
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  return [(BRCUserDefaults *)self unsignedIntForKey:@"fpfs.migration.import-status-telemetry-days-threshold" min:0 max:1000000 byDefault:v3];
}

- (BOOL)shouldBoostDefaultAndSharedZones
{
  if ([(NSString *)self->_clientZoneIdentifier isEqualToString:*MEMORY[0x277CFACE0]])
  {

    return [(BRCUserDefaults *)self BOOLForKey:@"should-boost-defaultZone" inheritFromGlobal:0 byDefault:0];
  }

  else
  {

    return [(BRCUserDefaults *)self BOOLForKey:@"should-boost-defaultZone" byDefault:1];
  }
}

void __36__BRCUserDefaults_dumpDateFormatter__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  v3 = dumpDateFormatter_df;
  dumpDateFormatter_df = v2;

  v4 = dumpDateFormatter_df;
  v5 = [*(a1 + 32) dumpDateFormat];
  [v4 setDateFormat:v5];
}

- (NSURL)idsDecisionServiceURL
{
  v2 = [(BRCUserDefaults *)self stringForKey:@"ttr.ids.decision.service.url" byDefault:@"https://support.ess.apple.com/WebObjects/SupportService.woa/internal/checkTapToRadarDecision"];
  v3 = [MEMORY[0x277CBEBC0] URLWithString:v2];

  return v3;
}

- (NSDictionary)tapToRadarDailyThrottleRules
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__BRCUserDefaults_tapToRadarDailyThrottleRules__block_invoke;
  v4[3] = &unk_278507C90;
  v5 = &unk_2837B0E78;
  v2 = [(BRCUserDefaults *)self objectForKey:@"ttr.daily.throttle.rules" inheritFromGlobal:1 validateWithBlock:v4];

  return v2;
}

- (NSDictionary)tapToRadarWeeklyThrottleRules
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__BRCUserDefaults_tapToRadarWeeklyThrottleRules__block_invoke;
  v4[3] = &unk_278507C90;
  v5 = &unk_2837B0EA0;
  v2 = [(BRCUserDefaults *)self objectForKey:@"ttr.weekly.throttle.rules" inheritFromGlobal:1 validateWithBlock:v4];

  return v2;
}

+ (id)generateThrottleTTRIdentifiersForTriggerRootCause:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = [v4 domain];
  v6 = [v4 code];

  v7 = [v3 stringWithFormat:@"%@_%ld", v5, v6];

  return v7;
}

id __46__BRCUserDefaults_weeklyThrottledErrorsForTTR__block_invoke(uint64_t a1, void *a2)
{
  v24[8] = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v3 = v2, ([v2 br_all_of_type:objc_opt_class()] & 1) == 0))
  {
    v23 = [MEMORY[0x277CCA9B8] brc_errorInitialScanItemBouncedByServer];
    v22 = [BRCUserDefaults generateThrottleTTRIdentifiersForTriggerRootCause:v23];
    v24[0] = v22;
    v21 = [MEMORY[0x277CCA9B8] brc_errorInitialScanItemTypeMismatch];
    v20 = [BRCUserDefaults generateThrottleTTRIdentifiersForTriggerRootCause:v21];
    v24[1] = v20;
    v19 = [MEMORY[0x277CCA9B8] brc_errorRecordBouncedByServer];
    v18 = [BRCUserDefaults generateThrottleTTRIdentifiersForTriggerRootCause:v19];
    v24[2] = v18;
    v17 = [MEMORY[0x277CCA9B8] brc_errorBouncedItemNotKnownByServer];
    v16 = [BRCUserDefaults generateThrottleTTRIdentifiersForTriggerRootCause:v17];
    v24[3] = v16;
    v15 = [MEMORY[0x277CCA9B8] brc_errorNoEtagAvailableForDownloadOfItemWithIdentifier:&stru_2837504F0];
    v4 = [BRCUserDefaults generateThrottleTTRIdentifiersForTriggerRootCause:v15];
    v24[4] = v4;
    v5 = *MEMORY[0x277CFABD0];
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CFABD0] code:52 userInfo:0];
    v7 = [BRCUserDefaults generateThrottleTTRIdentifiersForTriggerRootCause:v6];
    v24[5] = v7;
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:v5 code:160 userInfo:0];
    v9 = [BRCUserDefaults generateThrottleTTRIdentifiersForTriggerRootCause:v8];
    v24[6] = v9;
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:v5 code:162 userInfo:0];
    v11 = [BRCUserDefaults generateThrottleTTRIdentifiersForTriggerRootCause:v10];
    v24[7] = v11;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:8];
  }

  v12 = [MEMORY[0x277CBEB58] setWithArray:v3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)shouldPrimeMMCSCacheBeforeDownloadWithAccountFacade:(id)a3
{
  v4 = [(BRCUserDefaults *)self _shouldRampForKey:@"download.prime-mmcs-cache-ramp" accountFacade:a3];

  return [(BRCUserDefaults *)self BOOLForKey:@"download.prime-mmcs-cache" byDefault:v4];
}

- (NSArray)bundleIDsExcludedFromAppLibraryExtraction
{
  v2 = [(BRCUserDefaults *)self stringForKey:@"sync.app-library.bundleIDsExcludedFromExtraction" byDefault:@"com.apple.Preferences"];
  v3 = [v2 componentsSeparatedByString:{@", "}];

  return v3;
}

- (BOOL)signpostEnabled
{
  if ([MEMORY[0x277CFAEB0] isInternalBuild])
  {
    v3 = 1;
  }

  else
  {
    v3 = [MEMORY[0x277CFAEB0] isSeedBuild];
  }

  return [(BRCUserDefaults *)self BOOLForKey:@"signpost.enabled" byDefault:v3];
}

- (unint64_t)uploadV1PerformanceTrackerCap
{
  if (![(BRCUserDefaults *)self signpostEnabled])
  {
    return 0;
  }

  return [(BRCUserDefaults *)self unsignedLongLongForKey:@"bird.upload-v1-performace-tracker" min:0 max:2000 byDefault:100];
}

@end