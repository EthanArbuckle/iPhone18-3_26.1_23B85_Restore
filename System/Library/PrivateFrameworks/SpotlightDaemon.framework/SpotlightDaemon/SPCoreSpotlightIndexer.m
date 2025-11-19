@interface SPCoreSpotlightIndexer
+ (BOOL)writeDiagnostic:(id)a3 bundleID:(id)a4 identifier:(id)a5 logQuery:(BOOL)a6;
+ (SPCoreSpotlightIndexer)sharedInstance;
+ (id)_filterReindexAllExtensions:(id)a3;
+ (id)_mergedTokenRewrites:(id)a3;
+ (id)allProtectionClasses;
+ (id)fileProviderProtectionClasses;
+ (unint64_t)freeIndexDiskSpace;
+ (unint64_t)storageSizeForFolder:(id)a3;
+ (unint64_t)totalIndexDiskSpace;
+ (void)deactivate;
+ (void)deviceStateWillChange:(BOOL)a3;
+ (void)initialize;
+ (void)preheat;
+ (void)setIndexerDelegate:(id)a3;
+ (void)setMemoryPressureStatus:(unint64_t)a3;
+ (void)shutdown;
- (BOOL)checkMailMigrationToClassCComplete;
- (BOOL)isForegroundFileProviderBundleID:(id)a3;
- (BOOL)touchfileExistsForMigrationStep:(id)a3;
- (BOOL)writeData:(id)a3 toFile:(id)a4;
- (CSFileProviderDomainMonitor)fileProviderMonitor;
- (CSIndexExtensionDelegate)extensionDelegate;
- (NSDictionary)fileProviderAppToExtensionBundleMap;
- (NSDictionary)fileProviderExtensionToAppBundleMap;
- (NSURL)personaListURL;
- (SPCoreSpotlightIndexer)init;
- (SPCoreSpotlightIndexerDelegate)indexerDelegate;
- (id)_startQueryWithQueryString:(id)a3 queryContext:(id)a4 eventHandler:(id)a5 resultsHandler:(id)a6 completionHandler:(id)a7;
- (id)_taskForQueryWithQueryString:(id)a3 queryContext:(id)a4 eventHandler:(id)a5 resultsHandler:(id)a6 completionHandler:(id)a7;
- (id)concreteIndexerForProtectionClass:(id)a3 andBundleID:(id)a4;
- (id)contactsIndexer;
- (id)dateRewritesFromContext:(id)a3;
- (id)defaultIndexer;
- (id)dumpIndexAges;
- (id)dumpIndexAgesAtPath:(id)a3;
- (id)dumpIndexAnalytics;
- (id)dumpIndexAnalyticsAtPath:(id)a3;
- (id)fileProviderDomainFilterQueries;
- (id)issueHeartbeat;
- (id)leakDebugDump:(id)a3;
- (id)mailClassCFileTransferCompleteTouchFile;
- (id)mailClassCIndexPath;
- (id)mailClassCMigrationCompleteTouchFile;
- (id)priorityIndexAvailableTouchFilePath;
- (id)priorityIndexPath;
- (id)priorityIndexer;
- (id)queryForWord:(id)a3 matchingAttributes:(id)a4 prefixMatch:(BOOL)a5;
- (id)sendAnalytics:(id)a3;
- (id)spotlightCacheFilePrefix;
- (id)startQuery:(id)a3 withContext:(id)a4 eventHandler:(id)a5 handler:(id)a6;
- (id)startQuery:(id)a3 withContext:(id)a4 handler:(id)a5;
- (id)startQueryWithQueryString:(id)a3 queryContext:(id)a4 eventHandler:(id)a5 resultsHandler:(id)a6 completionHandler:(id)a7;
- (id)systemSettingsIndexer;
- (id)taskForQueryWithQueryString:(id)a3 queryContext:(id)a4 eventHandler:(id)a5 resultsHandler:(id)a6 completionHandler:(id)a7;
- (id)taskForTopHitQueryWithQueryString:(id)a3 queryContext:(id)a4 eventHandler:(id)a5 resultsHandler:(id)a6 completionHandler:(id)a7;
- (id)touchfilePathForMigrationStep:(id)a3;
- (id)writeUISearchEnabled:(BOOL)a3;
- (int)_changeFilesToClassC:(id)a3;
- (int)_openIndex:(BOOL)a3 forInit:(BOOL)a4 readOnly:(BOOL)a5;
- (int)cloneIndexFrom:(id)a3 to:(id)a4;
- (int)openIndex:(BOOL)a3 forInit:(BOOL)a4 readOnly:(BOOL)a5;
- (int)performMigrationStepWithTouchfileGuard:(id)a3 step:(id)a4;
- (unint64_t)purgeIndexForSize:(unint64_t)a3;
- (unint64_t)purgeVectorIndex:(BOOL)a3;
- (unint64_t)purgeableIndexSize:(id)a3;
- (unint64_t)purgeableVectorIndexSize:(BOOL)a3;
- (void)_closeIndexWithIndexers:(id)a3;
- (void)_deleteNonMailBundlesFromClassAIndex:(id)a3;
- (void)_enumerateIndexersWithProtectionClasses:(id)a3 forQueryWithContext:(id)a4 forBundleIds:(id)a5 inferSpecialIndexes:(BOOL)a6 block:(id)a7;
- (void)_fetchAccumulatedStorageSizeForBundleId:(id)a3 completionHandler:(id)a4;
- (void)_finishFileTransferToClassCMailIndex;
- (void)_fixProtClassForClassCMailIndex;
- (void)_issueCacheCommand:(id)a3 xpc:(id)a4 searchContext:(id)a5 completionHandler:(id)a6;
- (void)_mailClassCMarkFileTransferComplete;
- (void)_mailClassCMarkMigrationComplete;
- (void)_mailClassCResetIndexAndComplete;
- (void)_migrateIndexExtensionsWithEnumerator:(id)a3 forced:(BOOL)a4 migratedBundleIds:(id)a5 completionHandler:(id)a6;
- (void)_moveClassAIndexToClassCMailIndex;
- (void)_registerForPrefsChanges;
- (void)_reindexAllIdentifiersWithExtension:(id)a3 completionBlock:(id)a4;
- (void)_reindexAllItemsForBundleIDs:(id)a3 reason:(id)a4 completionHandler:(id)a5;
- (void)_reindexAllItemsOnPrefsChanges;
- (void)_reindexAllItemsWithExtensionsAndCompletionBlock:(id)a3;
- (void)_reindexAllItemsWithExtensionsAndIdentifiersAndCompletionBlock:(id)a3;
- (void)_upgradeToPriorityIndex;
- (void)addCompletedBundleIDs:(id)a3 forIndexerTask:(id)a4;
- (void)addInteraction:(id)a3 bundleID:(id)a4 protectionClass:(id)a5;
- (void)asyncOpenIndex:(BOOL)a3 forInit:(BOOL)a4 readOnly:(BOOL)a5;
- (void)changeStateOfSearchableItemsWithUIDs:(id)a3 toState:(int64_t)a4 protectionClass:(id)a5 forBundleID:(id)a6 forUTIType:(id)a7 options:(int64_t)a8;
- (void)checkIfExtensionsNeedToBeLoaded;
- (void)cleanupStringsWithProtectionClasses:(id)a3 completionHandler:(id)a4;
- (void)clientDidCheckin:(id)a3 protectionClass:(id)a4 service:(id)a5 completionHandler:(id)a6;
- (void)closeIndex;
- (void)commitUpdates;
- (void)commitUpdatesWithCompletionHandler:(id)a3;
- (void)coolDown;
- (void)dealloc;
- (void)deleteActionsBeforeTime:(double)a3 completionHandler:(id)a4;
- (void)deleteActionsWithIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)deleteAllInteractionsWithBundleID:(id)a3 completionHandler:(id)a4;
- (void)deleteAllUserActivities:(id)a3 fromClient:(id)a4 completionHandler:(id)a5;
- (void)deleteSearchableItemsSinceDate:(id)a3 protectionClass:(id)a4 forBundleID:(id)a5 options:(int64_t)a6 completionHandler:(id)a7;
- (void)deleteSearchableItemsWithDomainIdentifiers:(id)a3 protectionClass:(id)a4 forBundleID:(id)a5 fromClient:(id)a6 options:(int64_t)a7 completionHandler:(id)a8;
- (void)deleteSearchableItemsWithFileProviderDomains:(id)a3 completionHandler:(id)a4;
- (void)deleteSearchableItemsWithPersonaIds:(id)a3 completionHandler:(id)a4;
- (void)deleteTouchfileForMigrationStep:(id)a3;
- (void)fetchAttributes:(id)a3 protectionClass:(id)a4 bundleID:(id)a5 identifiers:(id)a6 userCtx:(id)a7 flags:(unsigned int)a8 qos:(unsigned int)a9 completionHandler:(id)a10;
- (void)fetchAttributesForProtectionClass:(id)a3 attributes:(id)a4 bundleID:(id)a5 identifiers:(id)a6 userCtx:(id)a7 flags:(int)a8 completion:(id)a9;
- (void)fetchBundleIdsForProtectionClass:(id)a3 completionHandler:(id)a4;
- (void)fetchCacheFileDescriptorsForProtectionClass:(id)a3 bundleID:(id)a4 identifiers:(id)a5 userCtx:(id)a6 flags:(unsigned int)a7 qos:(unsigned int)a8 completionHandler:(id)a9;
- (void)fetchLastClientStateWithProtectionClass:(id)a3 forBundleID:(id)a4 clientStateName:(id)a5 options:(int64_t)a6 completionHandler:(id)a7;
- (void)fileProviderActiveProvidersChanged:(id)a3;
- (void)fileProviderInfoSetup;
- (void)finishIndexingWhileLocked:(id)a3 protectionClass:(id)a4 completionHandler:(id)a5;
- (void)flush;
- (void)getDBLogsWithCompletionHandler:(id)a3;
- (void)handleAssetsCommand:(id)a3;
- (void)handleRankingCommand:(id)a3 completion:(id)a4;
- (void)indexFromBundle:(id)a3 protectionClass:(id)a4 personaID:(id)a5 options:(int64_t)a6 items:(id)a7 itemsText:(id)a8 itemsHTML:(id)a9 clientState:(id)a10 expectedClientState:(id)a11 clientStateName:(id)a12 deletes:(id)a13 canCreateNewIndex:(BOOL)a14 completionHandler:(id)a15;
- (void)indexSearchableItems:(id)a3 deleteSearchableItemsWithIdentifiers:(id)a4 clientState:(id)a5 expectedClientState:(id)a6 clientStateName:(id)a7 protectionClass:(id)a8 forBundleID:(id)a9 options:(int64_t)a10 completionHandler:(id)a11;
- (void)indexSearchableItems:(id)a3 deleteSearchableItemsWithIdentifiers:(id)a4 clientState:(id)a5 protectionClass:(id)a6 forBundleID:(id)a7 options:(int64_t)a8 completionHandler:(id)a9;
- (void)init;
- (void)issueBundleFixup:(id)a3 completionHandler:(id)a4;
- (void)issueCleanup:(id)a3 flags:(int)a4;
- (void)issueConsistencyCheck:(id)a3;
- (void)issueDefrag:(id)a3 group:(id)a4;
- (void)issueDumpForward:(unint64_t)a3 completionHandler:(id)a4;
- (void)issueDumpReverse:(unint64_t)a3 completionHandler:(id)a4;
- (void)issueDuplicateOidCheck:(id)a3;
- (void)issueDuplicateOidCheckWithGroup:(id)a3 protected:(BOOL)a4;
- (void)issueHeartbeat;
- (void)issueMessagesFixup:(id)a3;
- (void)issuePathFixup:(id)a3;
- (void)issueRepair:(id)a3;
- (void)issueResolveFPItem:(id)a3 completionHandler:(id)a4;
- (void)issueResolveFPItemForBundle:(id)a3 domain:(id)a4 identifier:(id)a5 completionHandler:(id)a6;
- (void)issueResolveFPItemForURL:(id)a3 completionHandler:(id)a4;
- (void)issueSharedDocumentAttributeFixup;
- (void)issueSplit:(id)a3;
- (void)locked;
- (void)lockedCx;
- (void)locking;
- (void)lockingCx;
- (void)markIndexPurgeable:(BOOL)a3;
- (void)mergeWithProtectionClasses:(id)a3 power:(BOOL)a4 inferSpecialIndexes:(BOOL)a5 completionHandler:(id)a6;
- (void)migrateForced:(BOOL)a3;
- (void)moveBackMailToClassA;
- (void)moveMailToClassC;
- (void)moveMailToClassCWithClone;
- (void)moveMailToClassCWithoutClone;
- (void)performIndexerTask:(id)a3 completionHandler:(id)a4;
- (void)performIndexerTask:(id)a3 withIndexExtensionsAndCompletionHandler:(id)a4;
- (void)personaListDidUpdate;
- (void)powerStateChanged;
- (void)preheat;
- (void)prepareIndexingWhileLocked:(id)a3 protectionClass:(id)a4 holdAssertionFor:(double)a5 completionHandler:(id)a6;
- (void)processSearchString:(id)a3 intoTrimmedString:(id *)a4 andTokens:(id *)a5;
- (void)queryPreheat:(id)a3;
- (void)recycleAndPurgeIndex;
- (void)recycleIndex:(BOOL)a3;
- (void)registerCacheDeleteCallbackForVolumePath:(id)a3;
- (void)reindexAllItemsWithIndexers:(id)a3 reason:(id)a4 completionHandler:(id)a5;
- (void)restoreIndexAndClearPurgeable;
- (void)resume;
- (void)revokeExpiredItems:(id)a3 activity:(id)a4 protected:(BOOL)a5;
- (void)rewriteFirstPassQueryWithQueryString:(id)a3 context:(id)a4 trimmedSearchStringTokens:(id)a5 populateDateSynonyms:(BOOL)a6;
- (void)rewriteQueryWithQueryString:(id)a3 context:(id)a4 matchInfo:(id)a5 rewriteHandler:(id)a6;
- (void)setServiceName:(id)a3;
- (void)setTouchfileExistsForMigrationStep:(id)a3;
- (void)shrink:(unint64_t)a3;
- (void)shutdown;
- (void)start;
- (void)startQueryTask:(id)a3;
- (void)topKTerms:(id)a3 completionHandler:(id)a4;
- (void)transferDeleteJournalsForProtectionClass:(id)a3 toDirectory:(int)a4 completionHandler:(id)a5;
- (void)unlock;
- (void)upgradeCheck;
- (void)userPerformedAction:(id)a3 withItem:(id)a4 protectionClass:(id)a5 forBundleID:(id)a6 personaID:(id)a7;
- (void)validateIndexers:(id)a3 outFileDescriptor:(int)a4;
- (void)validateVectors:(id)a3 outFileDescriptor:(int)a4;
- (void)willModifySearchableItemsWithIdentifiers:(id)a3 protectionClass:(id)a4 forBundleID:(id)a5 options:(int64_t)a6 completionHandler:(id)a7;
- (void)wipeCoreSpotlightIndexForTrial;
- (void)writeFileProviderBundleMap:(id)a3 fileProviderBundleIDs:(id)a4;
@end

@implementation SPCoreSpotlightIndexer

+ (SPCoreSpotlightIndexer)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[SPCoreSpotlightIndexer sharedInstance];
  }

  v3 = sharedInstance_sSharedInstance;

  return v3;
}

- (void)fileProviderInfoSetup
{
  if ((sPrivate & 1) == 0)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__SPCoreSpotlightIndexer_fileProviderInfoSetup__block_invoke;
    block[3] = &unk_278934050;
    block[4] = self;
    if (fileProviderInfoSetup_onceToken != -1)
    {
      dispatch_once(&fileProviderInfoSetup_onceToken, block);
    }
  }
}

- (id)fileProviderDomainFilterQueries
{
  WeakRetained = objc_loadWeakRetained(&self->_fileProviderMonitor);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_fileProviderMonitor);
    v5 = [v4 removedDomainFilterQueries];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CSIndexExtensionDelegate)extensionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->extensionDelegate);

  return WeakRetained;
}

+ (id)allProtectionClasses
{
  if (allProtectionClasses_onceToken != -1)
  {
    +[SPCoreSpotlightIndexer allProtectionClasses];
  }

  v3 = allProtectionClasses_sProtectionClasses;

  return v3;
}

- (void)unlock
{
  v3 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_DEFAULT, "unlock from delegate", v8, 2u);
  }

  if ([sDelegate deviceFirstUnlockedInSB])
  {
    v4 = [(SPCoreSpotlightIndexer *)self concreteIndexers];
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CCA190]];
    [v5 resumeIndex];

    v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277CCA198]];
    [v6 resumeIndex];

    v7 = [v4 objectForKeyedSubscript:*MEMORY[0x277CCA1A8]];
    [v7 resumeIndex];
  }

  if (self->_updatePersonas)
  {
    [(SPCoreSpotlightIndexer *)self personaListDidUpdate];
  }
}

- (void)moveMailToClassC
{
  if ((sMailClassCMigrationComplete & 1) == 0 && (sPrivate & 1) == 0 && sUseMailIndex == 1)
  {
    [(SPCoreSpotlightIndexer *)self moveMailToClassCWithoutClone];
  }
}

+ (void)initialize
{
  v20 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == a1)
  {
    memset(v15, 0, sizeof(v15));
    v14 = uuidBytesToString;
    _dyld_images_for_addresses();
    memset(v13, 0, sizeof(v13));
    uuidBytesToString(v15, v13);
    v2 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v13;
      _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "initializing %s", &buf, 0xCu);
    }

    v3 = dispatch_queue_create("VFSEventQueue", 0);
    v4 = gVFSEventQueue;
    gVFSEventQueue = v3;

    v5 = dispatch_source_create(MEMORY[0x277D85D40], 0, 0x304uLL, gVFSEventQueue);
    v6 = gVFSEventSource;
    gVFSEventSource = v5;

    v7 = gVFSEventSource;
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v17 = __initializeDiskSpaceNotificationListener_block_invoke;
    v18 = &unk_278934050;
    v19 = v5;
    v8 = v5;
    dispatch_source_set_event_handler(v7, &buf);
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, 0, handleLowDiskSpace, @"com.apple.Spotlight.lowdiskspace", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    dispatch_resume(gVFSEventSource);

    sIsInternalInstall = os_variant_has_internal_diagnostics();
    v10 = objc_opt_new();
    v11 = gDASManager;
    gDASManager = v10;
  }

  v12 = *MEMORY[0x277D85DE8];
}

+ (void)preheat
{
  if ((deviceUnlocked & 1) == 0)
  {
    SIResumeForUnlock();
    v2 = vars8;
  }

  v3 = sIndexer;

  [v3 preheat];
}

+ (void)deviceStateWillChange:(BOOL)a3
{
  v3 = a3;
  v9 = *MEMORY[0x277D85DE8];
  v4 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "locked";
    if (v3)
    {
      v5 = "unlocked";
    }

    v7 = 136315138;
    v8 = v5;
    _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_DEFAULT, "### device state %s", &v7, 0xCu);
  }

  if (v3)
  {
    SIResumeForUnlock();
  }

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)setMemoryPressureStatus:(unint64_t)a3
{
  Current = CFAbsoluteTimeGetCurrent();
  s_last_memory_pressure_status = a3;
  v5 = isAppleInternalInstall();
  if (a3 == 32)
  {
    if (v5)
    {
      v6 = Current - *&setMemoryPressureStatus__lastABCReport;
      if (Current - *&setMemoryPressureStatus__lastABCReport > 10800.0)
      {
        setMemoryPressureStatus__lastABCReport = *&Current;
        v7 = [MEMORY[0x277CCAC38] processInfo];
        v8 = [v7 processName];
        v9 = v8;
        v10 = @"unknown";
        if (v8)
        {
          v10 = v8;
        }

        v11 = v10;

        v12 = objc_alloc_init(MEMORY[0x277D6AFC8]);
        v13 = [v12 signatureWithDomain:@"SpotlightIndex" type:@"MemoryPressure" subType:@"ProcLimitCritical" detectedProcess:v11 triggerThresholdValues:0];

        [v12 snapshotWithSignature:v13 delay:0 events:0 payload:0 actions:&__block_literal_global_3902 reply:45.0];
      }
    }
  }

  _SISetMemoryPressureStatus();
  v14 = MEMORY[0x277CC3538];

  [v14 setMemoryPressureStatus:a3];
}

+ (void)deactivate
{
  v2 = [sIndexer extensionDelegate];

  if (v2)
  {
    v3 = [MEMORY[0x277CC3538] sharedManager];
    [v3 loadExtensions];
  }
}

+ (void)shutdown
{
  v2 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "Shutting down", v4, 2u);
  }

  sShuttingDown = 1;
  [sIndexer shutdown];
  v3 = sIndexer;
  sIndexer = 0;
}

void __46__SPCoreSpotlightIndexer_allProtectionClasses__block_invoke()
{
  v8[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB18];
  v1 = *MEMORY[0x277CCA1A8];
  v8[0] = *MEMORY[0x277CCA1A0];
  v8[1] = v1;
  v2 = *MEMORY[0x277CCA190];
  v8[2] = *MEMORY[0x277CCA198];
  v8[3] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:4];
  v4 = [v0 arrayWithArray:v3];

  if ((sPrivate & 1) == 0 && _os_feature_enabled_impl())
  {
    [v4 addObject:@"Priority"];
  }

  if (_useMobileMailIndex_onceToken != -1)
  {
    __46__SPCoreSpotlightIndexer_allProtectionClasses__block_invoke_cold_1();
  }

  if (_useMobileMailIndex__useMobileMailIndexVar == 1)
  {
    [v4 addObject:@"MobileMailIndex"];
  }

  v5 = [v4 copy];
  v6 = allProtectionClasses_sProtectionClasses;
  allProtectionClasses_sProtectionClasses = v5;

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)setIndexerDelegate:(id)a3
{
  v3 = a3;
  if (v3 && sIndexer)
  {
    +[SPCoreSpotlightIndexer setIndexerDelegate:];
  }

  v4 = sDelegate;
  sDelegate = v3;
  v7 = v3;

  sPrivate = [v7 privateIndex];
  v5 = [v7 indexQueue];
  v6 = sIndexQueue;
  sIndexQueue = v5;
}

- (unint64_t)purgeableVectorIndexSize:(BOOL)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  indexQueue = self->_indexQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SPCoreSpotlightIndexer_purgeableVectorIndexSize___block_invoke;
  block[3] = &unk_2789361D8;
  block[4] = self;
  block[5] = &v8;
  v7 = a3;
  dispatch_sync(indexQueue, block);
  v4 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __51__SPCoreSpotlightIndexer_purgeableVectorIndexSize___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __51__SPCoreSpotlightIndexer_purgeableVectorIndexSize___block_invoke_2;
  v3[3] = &unk_2789361B0;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  v4 = *(a1 + 48);
  return [v1 _enumerateIndexersWithProtectionClasses:0 block:v3];
}

uint64_t __51__SPCoreSpotlightIndexer_purgeableVectorIndexSize___block_invoke_2(uint64_t a1, void *a2)
{
  [a2 index];
  v3 = *(a1 + 40);
  result = SIVectorIndexStorageSize();
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

- (unint64_t)purgeVectorIndex:(BOOL)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  indexQueue = self->_indexQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SPCoreSpotlightIndexer_purgeVectorIndex___block_invoke;
  block[3] = &unk_2789361D8;
  v7 = a3;
  block[4] = self;
  block[5] = &v8;
  dispatch_sync(indexQueue, block);
  v4 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __43__SPCoreSpotlightIndexer_purgeVectorIndex___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __43__SPCoreSpotlightIndexer_purgeVectorIndex___block_invoke_2;
  v3[3] = &unk_2789361B0;
  v4 = *(a1 + 48);
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 _enumerateIndexersWithProtectionClasses:0 block:v3];
}

void __43__SPCoreSpotlightIndexer_purgeVectorIndex___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 index];
  v4 = *(a1 + 40);
  v5 = SIPurgeVectorIndex();
  if (v5)
  {
    v6 = v5;
    v7 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v3 dataclass];
      v10 = 134218242;
      v11 = v6;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_231A35000, v7, OS_LOG_TYPE_DEFAULT, "CacheDelete: purged %lu bytes for %@", &v10, 0x16u);
    }

    *(*(*(a1 + 32) + 8) + 24) += v6;
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (unint64_t)storageSizeForFolder:(id)a3
{
  v44[4] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = *MEMORY[0x277CBE868];
  v5 = *MEMORY[0x277CBE8A8];
  v44[0] = *MEMORY[0x277CBE868];
  v44[1] = v5;
  v32 = v5;
  v30 = *MEMORY[0x277CBE7D0];
  v31 = *MEMORY[0x277CBE908];
  v44[2] = *MEMORY[0x277CBE7D0];
  v44[3] = v31;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:4];
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v28 = v6;
  v29 = v3;
  v8 = [v7 enumeratorAtURL:v3 includingPropertiesForKeys:v6 options:0 errorHandler:&__block_literal_global_2104];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v40;
    v13 = v32;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v40 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v39 + 1) + 8 * i);
        v38 = 0;
        v16 = [v15 getResourceValue:&v38 forKey:v4 error:0];
        v17 = v38;
        v18 = v17;
        if (v16 && [v17 BOOLValue])
        {
          v11 += [a1 storageSizeForFolder:v15];
        }

        else
        {
          v37 = 0;
          v19 = [v15 getResourceValue:&v37 forKey:v13 error:0];
          v20 = v37;
          v21 = v20;
          if (v19 && [v20 BOOLValue])
          {
            v36 = 0;
            v22 = [v15 getResourceValue:&v36 forKey:v31 error:0];
            v23 = v36;
            v24 = v23;
            if (!v22 || !v23)
            {
              v35 = 0;
              [v15 getResourceValue:&v35 forKey:v30 error:0];
              v25 = v35;

              v24 = v25;
            }

            v11 += [v24 unsignedLongLongValue];

            v13 = v32;
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v11;
}

- (unint64_t)purgeableIndexSize:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v23 = a3;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(SPCoreSpotlightIndexer *)self concreteIndexers];
  v3 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = 0;
    v7 = *v25;
    *&v4 = 138412546;
    v20 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v10 = [(SPCoreSpotlightIndexer *)self concreteIndexers];
        v11 = [v10 objectForKeyedSubscript:v9];

        v12 = MEMORY[0x277CBEBC0];
        v13 = [v11 _indexPath];
        v14 = [v12 fileURLWithPath:v13];
        v15 = [SPCoreSpotlightIndexer storageSizeForFolder:v14];

        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v15];
        [v23 setValue:v16 forKey:v9];

        v17 = logForCSLogCategoryIndex();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = v20;
          v29 = v9;
          v30 = 2048;
          v31 = v15;
          _os_log_impl(&dword_231A35000, v17, OS_LOG_TYPE_INFO, "CacheDelete: indexer: %@ size: %zu.", buf, 0x16u);
        }

        v6 += v15;
      }

      v5 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v6;
}

- (unint64_t)purgeIndexForSize:(unint64_t)a3
{
  v66 = *MEMORY[0x277D85DE8];
  v5 = [(SPCoreSpotlightIndexer *)self purgeableVectorIndexSize:1];
  v45 = self;
  v6 = [(SPCoreSpotlightIndexer *)self purgeableVectorIndexSize:0];
  if (v6 >= a3)
  {
    v39 = v6;
    v40 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = "purgeable";
      if (v5 < a3)
      {
        v41 = "all";
      }

      *v64 = 136315394;
      *&v64[4] = v41;
      *&v64[12] = 2048;
      *&v64[14] = v39;
      _os_log_impl(&dword_231A35000, v40, OS_LOG_TYPE_DEFAULT, "CacheDelete: purge %s vectors size: %zu.", v64, 0x16u);
    }

    v38 = [(SPCoreSpotlightIndexer *)v45 purgeVectorIndex:v5 < a3];
  }

  else
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
    *v64 = 0;
    *&v64[8] = v64;
    *&v64[16] = 0x2020000000;
    v65 = 0;
    if ([(SPCoreSpotlightIndexer *)self purgeableIndexSize:v7]> a3 && v5 != 0)
    {
      v9 = logForCSLogCategoryIndex();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v59 = v5;
        _os_log_impl(&dword_231A35000, v9, OS_LOG_TYPE_DEFAULT, "CacheDelete: purge purgeable vectors size: %zu.", buf, 0xCu);
      }

      v10 = [(SPCoreSpotlightIndexer *)v45 purgeVectorIndex:0];
      v11 = *(*&v64[8] + 24) + v10;
      *(*&v64[8] + 24) = v11;
      a3 -= v11;
    }

    [v7 removeAllObjects];
    v12 = [(SPCoreSpotlightIndexer *)v45 purgeableIndexSize:v7];
    v13 = v12 - a3;
    if (v12 > a3)
    {
      v14 = [v7 objectForKeyedSubscript:@"Priority"];
      v15 = [v14 unsignedLongLongValue];

      if (v15 - 1 < v13)
      {
        [v7 removeObjectForKey:@"Priority"];
        v13 -= v15;
      }

      v16 = *MEMORY[0x277CCA1A0];
      v17 = [v7 objectForKeyedSubscript:*MEMORY[0x277CCA1A0]];
      v18 = [v17 unsignedLongLongValue];

      if (v18 - 1 < v13)
      {
        [v7 removeObjectForKey:v16];
        v13 -= v18;
      }

      if (v13)
      {
        [v7 keysSortedByValueUsingComparator:&__block_literal_global_2108];
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v19 = v55 = 0u;
        v20 = [v19 countByEnumeratingWithState:&v54 objects:v63 count:16];
        if (v20)
        {
          v21 = *v55;
LABEL_17:
          v22 = 0;
          while (1)
          {
            if (*v55 != v21)
            {
              objc_enumerationMutation(v19);
            }

            v23 = *(*(&v54 + 1) + 8 * v22);
            v24 = [v7 objectForKeyedSubscript:v23];
            v25 = [v24 unsignedLongLongValue];

            if (v25 - 1 < v13)
            {
              [v7 removeObjectForKey:v23];
              v13 -= v25;
              if (!v13)
              {
                break;
              }
            }

            if (v20 == ++v22)
            {
              v20 = [v19 countByEnumeratingWithState:&v54 objects:v63 count:16];
              if (v20)
              {
                goto LABEL_17;
              }

              break;
            }
          }
        }
      }
    }

    v26 = dispatch_group_create();
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v27 = v7;
    v28 = [v27 countByEnumeratingWithState:&v50 objects:v62 count:16];
    if (v28)
    {
      v30 = *v51;
      *&v29 = 136315394;
      v44 = v29;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v51 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v50 + 1) + 8 * i);
          v33 = [v27 objectForKeyedSubscript:{v32, v44}];
          v34 = [v33 unsignedLongLongValue];

          dispatch_group_enter(v26);
          v35 = logForCSLogCategoryIndex();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v36 = v32;
            v37 = [v32 UTF8String];
            *buf = v44;
            v59 = v37;
            v60 = 2048;
            v61 = v34;
            _os_log_impl(&dword_231A35000, v35, OS_LOG_TYPE_DEFAULT, "CacheDelete: purge indexer %s size: %zu.", buf, 0x16u);
          }

          v46[0] = MEMORY[0x277D85DD0];
          v46[1] = 3221225472;
          v46[2] = __44__SPCoreSpotlightIndexer_purgeIndexForSize___block_invoke_2112;
          v46[3] = &unk_278936240;
          v46[4] = v32;
          v48 = v64;
          v49 = v34;
          v47 = v26;
          [(SPCoreSpotlightIndexer *)v45 deleteAllSearchableItemsWithBundleID:&stru_2846BD100 fromClient:@"com.apple.CacheDelete" protectionClass:v32 shouldGC:1 deleteAllReason:0 completionHandler:v46];
        }

        v28 = [v27 countByEnumeratingWithState:&v50 objects:v62 count:16];
      }

      while (v28);
    }

    dispatch_group_wait(v26, 0xFFFFFFFFFFFFFFFFLL);
    v38 = *(*&v64[8] + 24);

    _Block_object_dispose(v64, 8);
  }

  v42 = *MEMORY[0x277D85DE8];
  return v38;
}

uint64_t __44__SPCoreSpotlightIndexer_purgeIndexForSize___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 unsignedLongLongValue];
  v6 = [v4 unsignedLongLongValue];

  if (v5 > v6)
  {
    return -1;
  }

  else
  {
    return v5 < v6;
  }
}

void __44__SPCoreSpotlightIndexer_purgeIndexForSize___block_invoke_2112(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __44__SPCoreSpotlightIndexer_purgeIndexForSize___block_invoke_2112_cold_1();
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) += *(a1 + 56);
  }

  dispatch_group_leave(*(a1 + 40));
}

- (void)registerCacheDeleteCallbackForVolumePath:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [sDelegate cacheDeleteId];
    if (v5)
    {
      v6 = v5;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __67__SPCoreSpotlightIndexer_registerCacheDeleteCallbackForVolumePath___block_invoke;
      v20[3] = &unk_278936268;
      v7 = v4;
      v21 = v7;
      v22 = self;
      v8 = MEMORY[0x2383760E0](v20);
      v14 = MEMORY[0x277D85DD0];
      v15 = 3221225472;
      v16 = __67__SPCoreSpotlightIndexer_registerCacheDeleteCallbackForVolumePath___block_invoke_2122;
      v17 = &unk_278936268;
      v9 = v7;
      v18 = v9;
      v19 = self;
      v10 = MEMORY[0x2383760E0](&v14);
      v11 = logForCSLogCategoryIndex();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v24 = v6;
        v25 = 2112;
        v26 = v9;
        _os_log_impl(&dword_231A35000, v11, OS_LOG_TYPE_DEFAULT, "CacheDelete: register Callbacks for %@ on %@", buf, 0x16u);
      }

      if ([sDelegate managedIndex])
      {
        if (!CacheDeleteRegisterInfoCallbacksForProcess())
        {
          goto LABEL_12;
        }
      }

      else if (!CacheDeleteRegisterInfoCallbacks())
      {
LABEL_12:

        goto LABEL_13;
      }

      v12 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [SPCoreSpotlightIndexer registerCacheDeleteCallbackForVolumePath:];
      }

      goto LABEL_12;
    }
  }

LABEL_13:

  v13 = *MEMORY[0x277D85DE8];
}

void *__67__SPCoreSpotlightIndexer_registerCacheDeleteCallbackForVolumePath___block_invoke(uint64_t a1, int a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [a3 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v6 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = v5;
    v16 = 1024;
    v17 = a2;
    _os_log_impl(&dword_231A35000, v6, OS_LOG_TYPE_DEFAULT, "CacheDelete: asked for size on %@ for urgency: %d", &v14, 0x12u);
  }

  if (![*(a1 + 32) isEqualToString:v5])
  {
    goto LABEL_7;
  }

  if (a2 == 4)
  {
    v7 = [*(a1 + 40) purgeableIndexSize:0];
    goto LABEL_9;
  }

  if (a2 != 3)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_10;
  }

  v7 = [*(a1 + 40) purgeableVectorIndexSize:1];
LABEL_9:
  v8 = v7;
LABEL_10:
  v9 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412802;
    v15 = v5;
    v16 = 1024;
    v17 = a2;
    v18 = 2048;
    v19 = v8;
    _os_log_impl(&dword_231A35000, v9, OS_LOG_TYPE_DEFAULT, "CacheDelete: purgeable size on %@ for urgency: %d is %lu", &v14, 0x1Cu);
  }

  v10 = [MEMORY[0x277CBEB38] dictionary];
  [v10 setObject:v5 forKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v8];
  [v10 setObject:v11 forKeyedSubscript:@"CACHE_DELETE_AMOUNT"];

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

void *__67__SPCoreSpotlightIndexer_registerCacheDeleteCallbackForVolumePath___block_invoke_2122(uint64_t a1, int a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = [a3 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v7 = [a3 objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
  v8 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 67109634;
    *v17 = [v7 intValue];
    *&v17[4] = 2112;
    *&v17[6] = v6;
    *&v17[14] = 1024;
    *&v17[16] = a2;
    _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_DEFAULT, "CacheDelete: will purge %d on %@ for urgency: %d", &v16, 0x18u);
  }

  if (![*(a1 + 32) isEqualToString:v6])
  {
    goto LABEL_7;
  }

  if (a2 == 4)
  {
    v9 = [*(a1 + 40) purgeIndexForSize:{objc_msgSend(v7, "unsignedLongLongValue")}];
    goto LABEL_9;
  }

  if (a2 != 3)
  {
LABEL_7:
    v10 = 0;
    goto LABEL_10;
  }

  v9 = [*(a1 + 40) purgeVectorIndex:0];
LABEL_9:
  v10 = v9;
LABEL_10:
  v11 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134218498;
    *v17 = v10;
    *&v17[8] = 2112;
    *&v17[10] = v6;
    *&v17[18] = 1024;
    v18 = a2;
    _os_log_impl(&dword_231A35000, v11, OS_LOG_TYPE_DEFAULT, "CacheDelete: did purge %lu on %@ for urgency: %d", &v16, 0x1Cu);
  }

  v12 = [MEMORY[0x277CBEB38] dictionary];
  [v12 setObject:v6 forKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v10];
  [v12 setObject:v13 forKeyedSubscript:@"CACHE_DELETE_AMOUNT"];

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

void *__67__SPCoreSpotlightIndexer_registerCacheDeleteCallbackForVolumePath___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = [a3 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v6 = [a3 objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
  v7 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109634;
    v11[1] = [v6 intValue];
    v12 = 2112;
    v13 = v5;
    v14 = 1024;
    v15 = a2;
    _os_log_impl(&dword_231A35000, v7, OS_LOG_TYPE_DEFAULT, "CacheDelete: asked to periodic clear %d on %@ for urgency: %d", v11, 0x18u);
  }

  v8 = [MEMORY[0x277CBEB38] dictionary];
  [v8 setObject:v5 forKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  [v8 setObject:&unk_2846C95A8 forKeyedSubscript:@"CACHE_DELETE_AMOUNT"];

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

void __40__SPCoreSpotlightIndexer_sharedInstance__block_invoke()
{
  v90[1] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc_init(SPCoreSpotlightIndexer);
  v1 = sharedInstance_sSharedInstance;
  sharedInstance_sSharedInstance = v0;

  objc_storeStrong(&sIndexer, v0);
  v2 = [sDelegate indexDirectory];
  v3 = [v2 fileSystemRepresentation];

  if (v3)
  {
    sIndexMountPath = strdup(v3);
  }

  v81 = 8;
  v82 = 0;
  if (sysctlbyname("kern.roots_installed", &v82, &v81, 0, 0))
  {
    v4 = *__error();
    v5 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __40__SPCoreSpotlightIndexer_sharedInstance__block_invoke_cold_1();
    }
  }

  else
  {
    sRootsInstalled = v82 != 0;
  }

  v6 = _CFCopySystemVersionDictionary();
  if (!v6 || (v7 = v6, CFDictionaryGetValue(v6, @"ProductBuildVersion"), v8 = objc_claimAutoreleasedReturnValue(), CFRelease(v7), !v8))
  {
    v9 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __40__SPCoreSpotlightIndexer_sharedInstance__block_invoke_cold_2();
    }

    v8 = @"unknown";
  }

  v10 = indexHeartbeatPath();
  pthread_rwlock_wrlock(&sIndexHeartbeatLock);
  v11 = [MEMORY[0x277CCAA00] defaultManager];
  v12 = [v11 fileExistsAtPath:v10];

  v79 = v3;
  v78 = v12;
  if (v12)
  {
    v13 = [MEMORY[0x277CBEB38] dictionaryWithContentsOfFile:v10];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 objectForKeyedSubscript:@"v2"];

      if (v15)
      {
        v16 = newHeartbeatDict();

        v14 = v16;
      }
    }
  }

  else
  {
    v14 = newHeartbeatDict();
  }

  v17 = [v14 objectForKeyedSubscript:@"heartbeat_age"];
  if (!v17 || (v18 = v17, [v14 objectForKeyedSubscript:@"heartbeat_age"], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "longValue"), v19, v18, v20 < 0))
  {
    memset(&v88, 0, 144);
    if (stat([v10 cStringUsingEncoding:4], &v88))
    {
      v21 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        __40__SPCoreSpotlightIndexer_sharedInstance__block_invoke_cold_3();
      }

      v22 = MEMORY[0x277CCABB0];
      v23 = -1;
    }

    else
    {
      v22 = MEMORY[0x277CCABB0];
      v23 = *&v88.f_fstypename[8];
    }

    v24 = [v22 numberWithLong:v23];
    [v14 setObject:v24 forKeyedSubscript:@"heartbeat_age"];
  }

  v25 = [v14 objectForKeyedSubscript:@"parentDirectory_age"];
  if (!v25 || (v26 = v25, [v14 objectForKeyedSubscript:@"parentDirectory_age"], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "longValue"), v27, v26, v28 < 0))
  {
    memset(&v88, 0, 144);
    v29 = [sDelegate indexDirectory];
    v30 = stat([v29 cStringUsingEncoding:4], &v88);

    if (v30)
    {
      v31 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        __40__SPCoreSpotlightIndexer_sharedInstance__block_invoke_cold_4();
      }

      v32 = [MEMORY[0x277CCABB0] numberWithLong:-1];
      v33 = @"parentDirectory_agw";
    }

    else
    {
      v32 = [MEMORY[0x277CCABB0] numberWithLong:*&v88.f_fstypename[8]];
      v33 = @"parentDirectory_age";
    }

    [v14 setObject:v32 forKeyedSubscript:v33];
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  obj = [&unk_2846C96E0 allValues];
  v34 = [obj countByEnumeratingWithState:&v84 objects:&v88 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v85;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v85 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v38 = *(*(&v84 + 1) + 8 * i);
        v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"pc%@_%@", v38, @"age"];
        v40 = [v14 objectForKeyedSubscript:v39];

        if (!v40)
        {
          v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"pc%@_%@", v38, @"age"];
          [v14 setObject:&unk_2846C96B0 forKeyedSubscript:v41];
        }

        v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"pc%@_%@", v38, @"wipes"];
        v43 = [v14 objectForKeyedSubscript:v42];

        if (!v43)
        {
          v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"pc%@_%@", v38, @"wipes"];
          [v14 setObject:&unk_2846C9680 forKeyedSubscript:v44];
        }

        v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"pc%@_%@", v38, @"wipes_aggregate"];
        v46 = [v14 objectForKeyedSubscript:v45];

        if (!v46)
        {
          v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"pc%@_%@", v38, @"wipes_aggregate"];
          [v14 setObject:&unk_2846C9680 forKeyedSubscript:v47];
        }

        v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"pc%@_%@", v38, @"obj_count"];
        v49 = [v14 objectForKeyedSubscript:v48];

        if (!v49)
        {
          v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"pc%@_%@", v38, @"obj_count"];
          [v14 setObject:&unk_2846C96B0 forKeyedSubscript:v50];
        }
      }

      v35 = [obj countByEnumeratingWithState:&v84 objects:&v88 count:16];
    }

    while (v35);
  }

  v51 = [MEMORY[0x277CCABB0] numberWithBool:sRootsInstalled];
  [v14 setObject:v51 forKeyedSubscript:@"rootsinstalled"];

  v52 = [v14 objectForKeyedSubscript:@"spotlightversion"];

  if (v52)
  {
    v53 = [v14 objectForKeyedSubscript:@"spotlightversion"];
    v54 = [v53 isEqualToString:@"2400.14.100"];

    if ((v54 & 1) == 0)
    {
      v55 = [v14 objectForKeyedSubscript:@"spotlightversion"];
      [v14 setObject:v55 forKeyedSubscript:@"previousspotlightversion"];

      [v14 setObject:@"2400.14.100" forKeyedSubscript:@"spotlightversion"];
    }
  }

  else
  {
    [v14 setObject:@"2400.14.100" forKeyedSubscript:@"spotlightversion"];
    [v14 setObject:@"unknown" forKeyedSubscript:@"previousspotlightversion"];
  }

  v56 = [v14 objectForKeyedSubscript:@"previousspotlightversion"];

  if (!v56)
  {
    [v14 setObject:@"unknown" forKeyedSubscript:@"previousspotlightversion"];
  }

  v57 = [v14 objectForKeyedSubscript:@"build"];
  v58 = v57;
  v59 = @"unknown";
  if (v57)
  {
    v59 = v57;
  }

  v60 = v59;

  if (([(__CFString *)v8 isEqualToString:v60]& 1) == 0)
  {
    [v14 setObject:v60 forKeyedSubscript:@"previousbuild"];
  }

  v61 = [v14 objectForKeyedSubscript:@"previousbuild"];

  if (v61)
  {
    v62 = [(__CFString *)v8 substringToIndex:3];
    v63 = [v61 substringToIndex:3];
    if (!v63 || ([v62 isEqualToString:v63] & 1) == 0)
    {
      [v14 setObject:v61 forKeyedSubscript:@"buildbeforeupgrade"];
    }
  }

  v64 = [v14 objectForKeyedSubscript:@"buildbeforeupgrade"];

  if (!v64)
  {
    [v14 setObject:@"unknown" forKeyedSubscript:@"buildbeforeupgrade"];
  }

  [v14 setObject:v8 forKeyedSubscript:@"build"];
  v65 = [MEMORY[0x277CCABB0] numberWithBool:_os_feature_enabled_impl()];
  [v14 setObject:v65 forKeyedSubscript:@"vectorindexon"];

  v66 = [MEMORY[0x277CCABB0] numberWithBool:_os_feature_enabled_impl()];
  [v14 setObject:v66 forKeyedSubscript:@"textsemanticsearchon"];

  v67 = [MEMORY[0x277CCABB0] numberWithBool:_os_feature_enabled_impl()];
  [v14 setObject:v67 forKeyedSubscript:@"embeddingdonationon"];

  v68 = [MEMORY[0x277CCABB0] numberWithLong:MDBootTime()];
  [v14 setObject:v68 forKeyedSubscript:@"timesinceboot"];

  v69 = [MEMORY[0x277D657E8] lastLoadedBundleVersion];
  if (v69)
  {
    v70 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v69];
    [v14 setObject:v70 forKeyedSubscript:@"otaversion"];
  }

  if ((v78 & 1) == 0)
  {
    v71 = [MEMORY[0x277CCAA00] defaultManager];
    v89 = *MEMORY[0x277CCA1B0];
    v90[0] = *MEMORY[0x277CCA1A0];
    v72 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:&v89 count:1];
    [v71 createFileAtPath:v10 contents:0 attributes:v72];
  }

  v73 = [MEMORY[0x277CBEBC0] fileURLWithPath:v10];
  v83 = 0;
  [v14 writeToURL:v73 error:&v83];
  v74 = v83;

  if (v74)
  {
    v75 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      __40__SPCoreSpotlightIndexer_sharedInstance__block_invoke_cold_5();
    }
  }

  pthread_rwlock_unlock(&sIndexHeartbeatLock);

  if (v79)
  {
    bzero(&v88, 0x878uLL);
    if (!statfs(v79, &v88))
    {
      v76 = [MEMORY[0x277CCACA8] stringWithUTF8String:v88.f_mntonname];
      [sharedInstance_sSharedInstance registerCacheDeleteCallbackForVolumePath:v76];
    }
  }

  v77 = *MEMORY[0x277D85DE8];
}

+ (unint64_t)totalIndexDiskSpace
{
  if (totalIndexDiskSpace_onceToken != -1)
  {
    +[SPCoreSpotlightIndexer totalIndexDiskSpace];
  }

  return sTotalIndexDiskSpace;
}

int *__45__SPCoreSpotlightIndexer_totalIndexDiskSpace__block_invoke()
{
  v11 = *MEMORY[0x277D85DE8];
  bzero(&v10, 0x878uLL);
  v0 = [sDelegate indexDirectory];
  v1 = [v0 cStringUsingEncoding:4];

  LODWORD(v0) = statfs(v1, &v10);
  v2 = *__error();
  if (v0)
  {
    v3 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = v1;
      v8 = 1024;
      v9 = v2;
      _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_DEFAULT, "*warn* Failed to get total index disk space for %s. err=%d", &v6, 0x12u);
    }
  }

  else
  {
    sTotalIndexDiskSpace = v10.f_blocks * v10.f_bsize;
  }

  result = __error();
  *result = v2;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

+ (unint64_t)freeIndexDiskSpace
{
  v14 = *MEMORY[0x277D85DE8];
  bzero(&v13, 0x878uLL);
  v2 = [sDelegate indexDirectory];
  v3 = [v2 cStringUsingEncoding:4];

  LODWORD(v2) = statfs(v3, &v13);
  v4 = *__error();
  if (v2)
  {
    v5 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = v3;
      v11 = 1024;
      v12 = v4;
      _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_DEFAULT, "*warn* Failed to get free index disk space for %s. err=%d", &v9, 0x12u);
    }

    v6 = -1;
  }

  else
  {
    v6 = v13.f_bfree * v13.f_bsize;
  }

  *__error() = v4;
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)concreteIndexerForProtectionClass:(id)a3 andBundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277CCA1B8];
  if ([(__CFString *)v6 isEqualToString:*MEMORY[0x277CCA1B8]])
  {
    v9 = *MEMORY[0x277CCA1A0];

    v6 = v9;
  }

  if (sUsePriorityIndex == 1 && [v7 length] && ((-[__CFString isEqual:](v6, "isEqual:", *MEMORY[0x277CCA1A0]) & 1) != 0 || -[__CFString isEqual:](v6, "isEqual:", v8)) && objc_msgSend(sPriorityBundleIds, "containsObject:", v7))
  {

    v6 = @"Priority";
  }

  if (sUseMailIndex == 1 && [v7 isEqualToString:@"com.apple.mobilemail"])
  {
    if (sMailClassCMigrationComplete)
    {
      if (([(__CFString *)v6 isEqualToString:*MEMORY[0x277CCA1A0]]& 1) == 0 && ![(__CFString *)v6 isEqualToString:@"MobileMailIndex"])
      {
        v10 = logForCSLogCategoryDefault();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [SPCoreSpotlightIndexer concreteIndexerForProtectionClass:andBundleID:];
        }
      }

      v6 = @"MobileMailIndex";
    }

    else
    {
      v11 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [SPCoreSpotlightIndexer concreteIndexerForProtectionClass:andBundleID:];
      }

      v6 = &stru_2846BD100;
    }
  }

  v12 = [(SPCoreSpotlightIndexer *)self concreteIndexers];
  v13 = [v12 objectForKeyedSubscript:v6];

  return v13;
}

- (id)defaultIndexer
{
  v2 = [(SPCoreSpotlightIndexer *)self concreteIndexers];
  v3 = [v2 objectForKey:*MEMORY[0x277CCA1A0]];

  return v3;
}

- (id)priorityIndexer
{
  v2 = [(SPCoreSpotlightIndexer *)self concreteIndexers];
  v3 = [v2 objectForKey:@"Priority"];

  return v3;
}

- (id)priorityIndexPath
{
  v2 = [sDelegate indexDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"Priority"];

  return v3;
}

- (id)priorityIndexAvailableTouchFilePath
{
  v2 = [sDelegate indexDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"priorityIndexAvailable"];

  return v3;
}

- (id)mailClassCFileTransferCompleteTouchFile
{
  v2 = [sDelegate indexDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"CrystalEMailFileTransferComplete.touch"];

  return v3;
}

- (id)mailClassCMigrationCompleteTouchFile
{
  v2 = [sDelegate indexDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"CrystalEMailMigrationComplete.touch"];

  return v3;
}

- (id)mailClassCIndexPath
{
  v2 = [sDelegate indexDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"MobileMailIndex"];

  return v3;
}

- (id)spotlightCacheFilePrefix
{
  v2 = [sDelegate indexDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"spotlightcache"];

  return v3;
}

- (id)systemSettingsIndexer
{
  if (sPrivate)
  {
    v2 = 0;
  }

  else
  {
    v3 = sUsePriorityIndex;
    v4 = [(SPCoreSpotlightIndexer *)self concreteIndexers];
    v5 = v4;
    if (v3 == 1)
    {
      v6 = @"Priority";
    }

    else
    {
      v6 = *MEMORY[0x277CCA1A0];
    }

    v2 = [v4 objectForKeyedSubscript:v6];
  }

  return v2;
}

- (id)contactsIndexer
{
  if (sPrivate)
  {
    v2 = 0;
  }

  else
  {
    v3 = sUsePriorityIndex;
    v4 = [(SPCoreSpotlightIndexer *)self concreteIndexers];
    v5 = v4;
    if (v3 == 1)
    {
      v6 = @"Priority";
    }

    else
    {
      v6 = *MEMORY[0x277CCA1A0];
    }

    v2 = [v4 objectForKeyedSubscript:v6];
  }

  return v2;
}

- (SPCoreSpotlightIndexer)init
{
  v129 = *MEMORY[0x277D85DE8];
  v125.receiver = self;
  v125.super_class = SPCoreSpotlightIndexer;
  v2 = [(SPCoreSpotlightIndexer *)&v125 init];
  if (v2)
  {
    if (!sDelegate)
    {
      [SPCoreSpotlightIndexer init];
    }

    v78 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v3 = dispatch_queue_create("com.apple.searchd.appScoping", v78);
    v4 = *(v2 + 7);
    *(v2 + 7) = v3;

    if (init_onceToken != -1)
    {
      [SPCoreSpotlightIndexer init];
    }

    v5 = [sDelegate indexQueue];
    v6 = *(v2 + 29);
    *(v2 + 29) = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_UTILITY, 0);
    v9 = dispatch_queue_create("com.apple.searchd.personaobserver", v8);
    v10 = *(v2 + 28);
    *(v2 + 28) = v9;

    v11 = [sDelegate firstUnlockQueue];
    v12 = *(v2 + 30);
    *(v2 + 30) = v11;

    if ([sDelegate indexingEnabled])
    {
      v13 = objc_alloc(MEMORY[0x277CBEB58]);
      v14 = MEMORY[0x277CBEA60];
      v15 = [v2 personaListURL];
      v16 = [v14 arrayWithContentsOfURL:v15];
      v17 = [v13 initWithArray:v16];
      v18 = *(v2 + 26);
      *(v2 + 26) = v17;

      if ((sPrivate & 1) == 0)
      {
        v19 = [MEMORY[0x277D77BF8] sharedManager];
        v123[0] = MEMORY[0x277D85DD0];
        v123[1] = 3221225472;
        v123[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2_2174;
        v123[3] = &unk_2789348E8;
        v124 = v2;
        [v19 registerPersonaListUpdateObserver:v124 withMachService:@"com.apple.searchd.personaobserver" completionHandler:v123];
      }

      v20 = objc_opt_new();
      [v2 setInteractionHandler:v20];

      v21 = [SPQueryResultsQueue sharedInstanceDispatchQueue:*(v2 + 29)];
      v22 = [SPQueryResultsQueue sharedInstanceMaintenanceDispatchQueue:*(v2 + 29)];
      objc_initWeak(&location, v2);
      if ((sPrivate & 1) == 0)
      {
        v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v24 = dispatch_queue_create("com.apple.spotlight.reindexAll", v23);
        v25 = *(v2 + 31);
        *(v2 + 31) = v24;

        v26 = logForCSLogCategoryIndex();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v128 = "com.apple.spotlight.reindexAll";
          _os_log_impl(&dword_231A35000, v26, OS_LOG_TYPE_INFO, "Suspending %s queue", buf, 0xCu);
        }

        dispatch_suspend(*(v2 + 31));
        v27 = dispatch_source_create(MEMORY[0x277D85CE8], 0, 0, *(v2 + 31));
        v28 = *(v2 + 18);
        *(v2 + 18) = v27;

        v29 = *(v2 + 18);
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2178;
        handler[3] = &unk_2789340A0;
        objc_copyWeak(&v121, &location);
        dispatch_source_set_event_handler(v29, handler);
        dispatch_resume(*(v2 + 18));
        objc_destroyWeak(&v121);
      }

      v30 = [objc_opt_class() allProtectionClasses];
      v81 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v30, "count") + 1}];
      v118 = 0u;
      v119 = 0u;
      v116 = 0u;
      v117 = 0u;
      obj = v30;
      v31 = [obj countByEnumeratingWithState:&v116 objects:v126 count:16];
      if (v31)
      {
        v32 = 0;
        v33 = *v117;
        do
        {
          v34 = 0;
          if (v32 <= 6)
          {
            v35 = 6;
          }

          else
          {
            v35 = v32;
          }

          v36 = (v35 - v32);
          v37 = v2 + 4 * v32 + 8;
          do
          {
            if (*v117 != v33)
            {
              objc_enumerationMutation(obj);
            }

            if (v36 == v34)
            {
              __assert_rtn("[SPCoreSpotlightIndexer init]", "SPCoreSpotlightIndexer.m", 15032, "cancelFlagOffset < MAX_INDEXERS");
            }

            v38 = *(*(&v116 + 1) + 8 * v34);
            v39 = [[SPConcreteCoreSpotlightIndexer alloc] initWithQueue:*(v2 + 29) protectionClass:v38 cancelPtr:v37];
            [(SPConcreteCoreSpotlightIndexer *)v39 setOwner:v2];
            [(SPConcreteCoreSpotlightIndexer *)v39 setFirstUnlockQueue:*(v2 + 30)];
            [v81 setObject:v39 forKey:v38];

            ++v34;
            v37 += 4;
            ++v32;
          }

          while (v31 != v34);
          v31 = [obj countByEnumeratingWithState:&v116 objects:v126 count:16];
        }

        while (v31);
      }

      [v2 setConcreteIndexers:v81];
      if ((sPrivate & 1) == 0)
      {
        v40 = objc_alloc_init(MEMORY[0x277CCABD8]);
        [v40 setMaxConcurrentOperationCount:1];
        [v40 setUnderlyingQueue:*(v2 + 29)];
        v41 = [MEMORY[0x277CCAB98] defaultCenter];
        v113[1] = MEMORY[0x277D85DD0];
        v113[2] = 3221225472;
        v113[3] = __30__SPCoreSpotlightIndexer_init__block_invoke_2_2183;
        v113[4] = &unk_278934B88;
        objc_copyWeak(&v115, &location);
        v114 = @"com.apple.searchd.indexExtensionMigration.start";
        v42 = [v41 addObserverForName:? object:? queue:? usingBlock:?];
        v43 = *(v2 + 19);
        *(v2 + 19) = v42;

        v109[0] = MEMORY[0x277D85DD0];
        v109[1] = 3221225472;
        v109[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2187;
        v109[3] = &unk_2789362F0;
        objc_copyWeak(v113, &location);
        v110 = @"com.apple.searchd.indexExtensionMigration.finish";
        v44 = v2;
        v111 = v44;
        v112 = obj;
        v45 = [v41 addObserverForName:@"com.apple.searchd.indexExtensionMigration.finish" object:0 queue:v40 usingBlock:v109];
        v46 = v44[20];
        v44[20] = v45;

        objc_destroyWeak(v113);
        objc_destroyWeak(&v115);
      }

      v47 = logForCSLogCategoryIndex();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
      {
        [SPCoreSpotlightIndexer init];
      }

      v107[0] = MEMORY[0x277D85DD0];
      v107[1] = 3221225472;
      v107[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2196;
      v107[3] = &unk_278936318;
      objc_copyWeak(&v108, &location);
      v48 = *MEMORY[0x277D86238];
      xpc_activity_register("com.apple.searchd.expirations", *MEMORY[0x277D86238], v107);
      v105[0] = MEMORY[0x277D85DD0];
      v105[1] = 3221225472;
      v105[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2198;
      v105[3] = &unk_278936318;
      objc_copyWeak(&v106, &location);
      xpc_activity_register("com.apple.searchd.expirations.AB", v48, v105);
      v49 = logForCSLogCategoryIndex();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        [SPCoreSpotlightIndexer init];
      }

      v50 = [MEMORY[0x277CF0810] sharedScheduler];
      v51 = *(v2 + 29);
      v103[0] = MEMORY[0x277D85DD0];
      v103[1] = 3221225472;
      v103[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2214;
      v103[3] = &unk_278936340;
      objc_copyWeak(&v104, &location);
      [v50 registerForTaskWithIdentifier:@"com.apple.searchd.duplicateOidCheck" usingQueue:v51 launchHandler:v103];

      v52 = logForCSLogCategoryIndex();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
      {
        [SPCoreSpotlightIndexer init];
      }

      v53 = [MEMORY[0x277CF0810] sharedScheduler];
      v54 = *(v2 + 29);
      v101[0] = MEMORY[0x277D85DD0];
      v101[1] = 3221225472;
      v101[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2222;
      v101[3] = &unk_278936340;
      objc_copyWeak(&v102, &location);
      [v53 registerForTaskWithIdentifier:@"com.apple.searchd.duplicateOidCheck.AB" usingQueue:v54 launchHandler:v101];

      v55 = logForCSLogCategoryIndex();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
      {
        [SPCoreSpotlightIndexer init];
      }

      v99[0] = MEMORY[0x277D85DD0];
      v99[1] = 3221225472;
      v99[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2228;
      v99[3] = &unk_278936318;
      objc_copyWeak(&v100, &location);
      xpc_activity_register("com.apple.searchd.defrag", v48, v99);
      v56 = logForCSLogCategoryIndex();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
      {
        [SPCoreSpotlightIndexer init];
      }

      v96[0] = MEMORY[0x277D85DD0];
      v96[1] = 3221225472;
      v96[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2231;
      v96[3] = &unk_278934898;
      objc_copyWeak(&v98, &location);
      v57 = v2;
      v97 = v57;
      xpc_activity_register("com.apple.searchd.loadtrial", v48, v96);
      v58 = logForCSLogCategoryIndex();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
      {
        [SPCoreSpotlightIndexer init];
      }

      v94[0] = MEMORY[0x277D85DD0];
      v94[1] = 3221225472;
      v94[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2234;
      v94[3] = &unk_278936318;
      objc_copyWeak(&v95, &location);
      xpc_activity_register("com.apple.searchd.heartbeat", v48, v94);
      v59 = [MEMORY[0x277CF0810] sharedScheduler];
      v60 = *(v2 + 29);
      v92[0] = MEMORY[0x277D85DD0];
      v92[1] = 3221225472;
      v92[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2238;
      v92[3] = &unk_2789363B8;
      v61 = v57;
      v93 = v61;
      [v59 registerForTaskWithIdentifier:@"com.apple.searchd.reportStorageUsage" usingQueue:v60 launchHandler:v92];

      v62 = [MEMORY[0x277CF0810] sharedScheduler];
      v63 = *(v2 + 29);
      v90[0] = MEMORY[0x277D85DD0];
      v90[1] = 3221225472;
      v90[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2246;
      v90[3] = &unk_2789363B8;
      v64 = v61;
      v91 = v64;
      [v62 registerForTaskWithIdentifier:@"com.apple.searchd.reportAppUsage" usingQueue:v63 launchHandler:v90];

      _SISetVectorIndexDropCallback();
      if ((sPrivate & 1) == 0)
      {
        v65 = dispatch_source_create(MEMORY[0x277D85CE8], 0, 0, v64[31]);
        v66 = v64[23];
        v64[23] = v65;

        v67 = v64[23];
        v88[0] = MEMORY[0x277D85DD0];
        v88[1] = 3221225472;
        v88[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2_2279;
        v88[3] = &unk_2789340A0;
        objc_copyWeak(&v89, &location);
        dispatch_source_set_event_handler(v67, v88);
        dispatch_resume(v64[23]);
        v68 = dispatch_source_create(MEMORY[0x277D85CE8], 0, 0, v64[31]);
        v69 = v64[24];
        v64[24] = v68;

        v70 = v64[24];
        v86[0] = MEMORY[0x277D85DD0];
        v86[1] = 3221225472;
        v86[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_4;
        v86[3] = &unk_2789340A0;
        objc_copyWeak(&v87, &location);
        dispatch_source_set_event_handler(v70, v86);
        dispatch_resume(v64[24]);
        v84[0] = MEMORY[0x277D85DD0];
        v84[1] = 3221225472;
        v84[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_6;
        v84[3] = &unk_278936518;
        objc_copyWeak(&v85, &location);
        v71 = MEMORY[0x2383760E0](v84);
        v72 = +[SDEventMonitor sharedInstance];
        [v72 registerHandler:v71 forEventName:@"com.apple.corespotlight.developer.ReindexAllItems"];

        v82[0] = MEMORY[0x277D85DD0];
        v82[1] = 3221225472;
        v82[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_7;
        v82[3] = &unk_278936518;
        objc_copyWeak(&v83, &location);
        v73 = MEMORY[0x2383760E0](v82);
        v74 = +[SDEventMonitor sharedInstance];
        [v74 registerHandler:v73 forEventName:@"com.apple.corespotlight.developer.ReindexAllItemsWithIdentifiers"];

        v75 = logForCSLogCategoryIndex();
        if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v128 = "com.apple.spotlight.reindexAll";
          _os_log_impl(&dword_231A35000, v75, OS_LOG_TYPE_INFO, "Resuming %s queue", buf, 0xCu);
        }

        dispatch_resume(v64[31]);
        objc_destroyWeak(&v83);

        objc_destroyWeak(&v85);
        objc_destroyWeak(&v87);
        objc_destroyWeak(&v89);
      }

      objc_destroyWeak(&v95);
      objc_destroyWeak(&v98);
      objc_destroyWeak(&v100);
      objc_destroyWeak(&v102);
      objc_destroyWeak(&v104);
      objc_destroyWeak(&v106);
      objc_destroyWeak(&v108);

      objc_destroyWeak(&location);
    }
  }

  v76 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t __30__SPCoreSpotlightIndexer_init__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.spotlight.mds-import", v0);
  v2 = gImportQueue;
  gImportQueue = v1;

  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_2846C9350];
  v4 = sPriorityBundleIds;
  sPriorityBundleIds = v3;

  if ((sPrivate & 1) == 0 && _os_feature_enabled_impl())
  {
    sUsePriorityIndex = 1;
  }

  if (_useMobileMailIndex_onceToken != -1)
  {
    __30__SPCoreSpotlightIndexer_init__block_invoke_cold_1();
  }

  if (_useMobileMailIndex__useMobileMailIndexVar == 1)
  {
    sUseMailIndex = 1;
    v5 = @"MobileMailIndex";
  }

  else
  {
    v5 = *MEMORY[0x277CCA190];
  }

  v6 = sMailProtectionClass;
  sMailProtectionClass = v5;

  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_create("com.apple.spotlight.thermals", v7);
  v9 = gThermalsQueue;
  gThermalsQueue = v8;

  dispatch_sync(gThermalsQueue, &__block_literal_global_2162);

  return MEMORY[0x2821873E8](&__block_literal_global_2168);
}

uint64_t __30__SPCoreSpotlightIndexer_init__block_invoke_2()
{
  v7 = *MEMORY[0x277D85DE8];
  out_token = 0;
  notify_register_dispatch(*MEMORY[0x277D85E48], &out_token, gThermalsQueue, &__block_literal_global_2164);
  v0 = OSThermalNotificationCurrentLevel();
  v1 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v6 = v0;
    _os_log_impl(&dword_231A35000, v1, OS_LOG_TYPE_DEFAULT, "Thermal state initialized: %d", buf, 8u);
  }

  result = SISetThermalStateBad();
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __30__SPCoreSpotlightIndexer_init__block_invoke_3()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = OSThermalNotificationCurrentLevel();
  v1 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = v0;
    _os_log_impl(&dword_231A35000, v1, OS_LOG_TYPE_DEFAULT, "Thermal state change: %d", v4, 8u);
  }

  result = SISetThermalStateBad();
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __30__SPCoreSpotlightIndexer_init__block_invoke_2165(uint64_t a1, int a2)
{
  v3 = [sDelegate deviceUnlocked];
  deviceUnlocked = v3;
  if (v3)
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    wait_for_apfs_kb_state(sIndexMountPath, 1);
    v3 = deviceUnlocked;
  }

  return v3 ^ 1u;
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2_2174(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4[28];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_3_2175;
  v7[3] = &unk_2789342C0;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_3_2175(uint64_t a1)
{
  v1 = (a1 + 32);
  if (*(a1 + 32))
  {
    v2 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __30__SPCoreSpotlightIndexer_init__block_invoke_3_2175_cold_1(v1);
    }
  }

  else
  {
    v3 = *(a1 + 40);

    [v3 personaListDidUpdate];
  }
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2178(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _reindexAllItemsOnPrefsChanges];
    WeakRetained = v2;
  }
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2_2183(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v6 = 138413058;
      v7 = v4;
      v8 = 2048;
      v9 = [WeakRetained dataMigrationStage];
      v10 = 1024;
      v11 = [sDelegate deviceFirstUnlockedInMKB];
      v12 = 1024;
      v13 = [sDelegate deviceFirstUnlockedInSB];
      _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_INFO, "Received %@ notification, dataMigrationStage:%lu, (%d:%d)", &v6, 0x22u);
    }

    [WeakRetained setDataMigrationStage:{objc_msgSend(WeakRetained, "dataMigrationStage") + 1}];
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2187(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v5 = [v3 userInfo];
    v6 = [v5 objectForKeyedSubscript:@"bundleIDs"];

    v7 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v10 = 138413314;
      v11 = v8;
      v12 = 2048;
      v13 = [WeakRetained dataMigrationStage];
      v14 = 2112;
      v15 = v6;
      v16 = 1024;
      v17 = [sDelegate deviceFirstUnlockedInMKB];
      v18 = 1024;
      v19 = [sDelegate deviceFirstUnlockedInSB];
      _os_log_impl(&dword_231A35000, v7, OS_LOG_TYPE_INFO, "Received %@ notification, dataMigrationStage:%lu, dataMigrationBundleIDs:%@ (%d:%d)", &v10, 0x2Cu);
    }

    [WeakRetained setDataMigrationStage:{objc_msgSend(WeakRetained, "dataMigrationStage") + 1}];
    [WeakRetained setDataMigrationBundleIDs:v6];
    [*(a1 + 40) mergeWithProtectionClasses:*(a1 + 48) power:1 completionHandler:&__block_literal_global_2193];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2191()
{
  v0 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_231A35000, v0, OS_LOG_TYPE_INFO, "Finished post-migration merge", v1, 2u);
  }
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2196(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (xpc_activity_get_state(v3) == 2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      xpc_activity_set_state(v3, 4);
      if ([sDelegate deviceFirstUnlockedInMKB])
      {
        v6 = logForCSLogCategoryIndex();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v16 = "com.apple.searchd.expirations";
          _os_log_impl(&dword_231A35000, v6, OS_LOG_TYPE_DEFAULT, "Performing XPC activity:%s", buf, 0xCu);
        }

        v7 = dispatch_group_create();
        [WeakRetained revokeExpiredItems:v7 activity:v3 protected:0];
        v8 = sIndexQueue;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2197;
        v13[3] = &unk_278934050;
        v14 = v3;
        v9 = _setup_block(v13, 0, 15149);
        dispatch_group_notify(v7, v8, v9);

        goto LABEL_10;
      }

      v10 = v3;
      v11 = 3;
    }

    else
    {
      v10 = v3;
      v11 = 5;
    }

    xpc_activity_set_state(v10, v11);
LABEL_10:
  }

  objc_autoreleasePoolPop(v4);

  v12 = *MEMORY[0x277D85DE8];
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2197(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  should_defer = xpc_activity_should_defer(*(a1 + 32));
  v3 = *(a1 + 32);
  if (should_defer)
  {
    xpc_activity_set_state(v3, 3);
    v4 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "com.apple.searchd.expirations";
      v5 = "Marked XPC activity:%s as deferred";
LABEL_6:
      _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_DEFAULT, v5, &v7, 0xCu);
    }
  }

  else
  {
    xpc_activity_set_state(v3, 5);
    v4 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "com.apple.searchd.expirations";
      v5 = "Marked XPC activity:%s as done";
      goto LABEL_6;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2198(uint64_t a1, void *a2)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (xpc_activity_get_state(v3) == 2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v6 = logForCSLogCategoryIndex();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v18 = "com.apple.searchd.expirations.AB";
        _os_log_impl(&dword_231A35000, v6, OS_LOG_TYPE_DEFAULT, "Performing XPC activity:%s", buf, 0xCu);
      }

      xpc_activity_set_state(v3, 4);
      cf = 0;
      v21[0] = @"MKBAssertionKey";
      v21[1] = @"MKBAssertionTimeout";
      v22[0] = @"Other";
      v22[1] = &unk_2846C9668;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
      v7 = MKBDeviceLockAssertion();
      v8 = logForCSLogCategoryIndex();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v18 = v7;
        v19 = 2112;
        v20 = cf;
        _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_DEFAULT, "Took lock assertion for expirations %@, err: %@", buf, 0x16u);
      }

      if (v7)
      {
        v9 = dispatch_group_create();
        [WeakRetained revokeExpiredItems:v9 activity:v3 protected:1];
        v10 = sIndexQueue;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2210;
        v13[3] = &unk_2789342C0;
        v14 = v3;
        v15 = v7;
        v11 = _setup_block(v13, 0, 15183);
        dispatch_group_notify(v9, v10, v11);
      }

      else
      {
        xpc_activity_set_state(v3, 3);
      }
    }

    else
    {
      xpc_activity_set_state(v3, 5);
    }
  }

  objc_autoreleasePoolPop(v4);

  v12 = *MEMORY[0x277D85DE8];
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2210(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  should_defer = xpc_activity_should_defer(*(a1 + 32));
  v3 = *(a1 + 32);
  if (should_defer)
  {
    xpc_activity_set_state(v3, 3);
    v4 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "com.apple.searchd.expirations.AB";
      v5 = "Marked XPC activity:%s as deferred";
LABEL_6:
      _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_DEFAULT, v5, &v7, 0xCu);
    }
  }

  else
  {
    xpc_activity_set_state(v3, 5);
    v4 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "com.apple.searchd.expirations.AB";
      v5 = "Marked XPC activity:%s as done";
      goto LABEL_6;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2214(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _SISetDuplicateOidsCheckSuspendState();
  v4 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = @"com.apple.searchd.duplicateOidCheck";
    _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_DEFAULT, "Performing BGST activity:%@", buf, 0xCu);
  }

  [v3 setExpirationHandler:&__block_literal_global_2217];
  if ([sDelegate deviceFirstUnlockedInMKB])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = dispatch_group_create();
    [WeakRetained issueDuplicateOidCheckWithGroup:v6 protected:0];
    v7 = sIndexQueue;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2_2218;
    v10[3] = &unk_278934050;
    v11 = v3;
    v8 = _setup_block(v10, 0, 15212);
    dispatch_group_notify(v6, v7, v8);
  }

  else
  {
    [v3 setTaskCompleted];
    _SISetDuplicateOidsCheckSuspendState();
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2_2218(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setTaskCompleted];
  _SISetDuplicateOidsCheckSuspendState();
  v1 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138412290;
    v4 = @"com.apple.searchd.duplicateOidCheck";
    _os_log_impl(&dword_231A35000, v1, OS_LOG_TYPE_DEFAULT, "Marked BGST activity:%@ as done", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2222(uint64_t a1, void *a2)
{
  v23[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  _SISetDuplicateOidsCheckSuspendState();
  [v3 setExpirationHandler:&__block_literal_global_2225];
  v4 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = @"com.apple.searchd.duplicateOidCheck.AB";
    _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_DEFAULT, "Performing BGST activity:%@", buf, 0xCu);
  }

  cf = 0;
  v22[0] = @"MKBAssertionKey";
  v22[1] = @"MKBAssertionTimeout";
  v23[0] = @"Other";
  v23[1] = &unk_2846C9668;
  [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v5 = MKBDeviceLockAssertion();
  v6 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v19 = v5;
    v20 = 2112;
    v21 = cf;
    _os_log_impl(&dword_231A35000, v6, OS_LOG_TYPE_DEFAULT, "Took lock assertion for expirations %@, err: %@", buf, 0x16u);
  }

  if (!v5)
  {
    if ([v3 setTaskExpiredWithRetryAfter:0 error:300.0])
    {
      v11 = logForCSLogCategoryIndex();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = @"com.apple.searchd.duplicateOidCheck.AB";
        v12 = "Marked BGST activity:%@ as defferred";
LABEL_12:
        _os_log_impl(&dword_231A35000, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 0xCu);
      }
    }

    else
    {
      [v3 setTaskCompleted];
      v11 = logForCSLogCategoryIndex();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = @"com.apple.searchd.duplicateOidCheck.AB";
        v12 = "Marked BGST activity:%@ as done";
        goto LABEL_12;
      }
    }

    _SISetDuplicateOidsCheckSuspendState();
    goto LABEL_14;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = dispatch_group_create();
  [WeakRetained issueDuplicateOidCheckWithGroup:v8 protected:1];
  v9 = sIndexQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2226;
  v14[3] = &unk_2789342C0;
  v15 = v3;
  v16 = v5;
  v10 = _setup_block(v14, 0, 15237);
  dispatch_group_notify(v8, v9, v10);

LABEL_14:
  v13 = *MEMORY[0x277D85DE8];
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2226(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setTaskCompleted];
  _SISetDuplicateOidsCheckSuspendState();
  v1 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138412290;
    v4 = @"com.apple.searchd.duplicateOidCheck.AB";
    _os_log_impl(&dword_231A35000, v1, OS_LOG_TYPE_DEFAULT, "Marked BGST activity:%@ as done", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2228(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (xpc_activity_get_state(v3) == 2)
  {
    if (xpc_activity_should_defer(v3))
    {
      v5 = xpc_activity_set_state(v3, 3);
      v6 = logForCSLogCategoryIndex();
      WeakRetained = v6;
      if (v5)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v16 = "com.apple.searchd.defrag";
          v17 = 2048;
          v18 = 2;
          _os_log_impl(&dword_231A35000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Deferring XPC activity:%s, state:%ld", buf, 0x16u);
        }

LABEL_14:

        goto LABEL_15;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __30__SPCoreSpotlightIndexer_init__block_invoke_2228_cold_1();
      }
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v8 = logForCSLogCategoryIndex();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v16 = "com.apple.searchd.defrag";
        _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_DEFAULT, "Performing XPC activity:%s", buf, 0xCu);
      }

      xpc_activity_set_state(v3, 4);
      v9 = dispatch_group_create();
      [WeakRetained issueDefrag:0 group:v9];
      v10 = sIndexQueue;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2229;
      v13[3] = &unk_278934050;
      v14 = v3;
      v11 = _setup_block(v13, 0, 15281);
      dispatch_group_notify(v9, v10, v11);
    }

    else
    {
      xpc_activity_set_state(v3, 5);
    }

    goto LABEL_14;
  }

LABEL_15:
  objc_autoreleasePoolPop(v4);

  v12 = *MEMORY[0x277D85DE8];
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2229(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  xpc_activity_set_state(*(a1 + 32), 5);
  v1 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "com.apple.searchd.defrag";
    _os_log_impl(&dword_231A35000, v1, OS_LOG_TYPE_DEFAULT, "Marked XPC activity:%s as done", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2231(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (xpc_activity_get_state(v3) == 2)
  {
    if (xpc_activity_should_defer(v3))
    {
      v5 = xpc_activity_set_state(v3, 3);
      v6 = logForCSLogCategoryIndex();
      WeakRetained = v6;
      if (v5)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v17 = "com.apple.searchd.loadtrial";
          v18 = 2048;
          v19 = 2;
          _os_log_impl(&dword_231A35000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Deferring XPC activity:%s, state:%ld", buf, 0x16u);
        }

LABEL_14:

        goto LABEL_15;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __30__SPCoreSpotlightIndexer_init__block_invoke_2231_cold_1();
      }
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained)
    {
      v8 = logForCSLogCategoryIndex();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v17 = "com.apple.searchd.loadtrial";
        _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_DEFAULT, "Performing XPC activity:%s", buf, 0xCu);
      }

      xpc_activity_set_state(v3, 4);
      v9 = dispatch_group_create();
      [WeakRetained issueLoadTrial:v9];
      v10 = sIndexQueue;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2232;
      v13[3] = &unk_2789342C0;
      v14 = v3;
      v15 = *(a1 + 32);
      v11 = _setup_block(v13, 0, 15320);
      dispatch_group_notify(v9, v10, v11);
    }

    else
    {
      xpc_activity_set_state(v3, 5);
    }

    goto LABEL_14;
  }

LABEL_15:
  objc_autoreleasePoolPop(v4);

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __30__SPCoreSpotlightIndexer_init__block_invoke_2232(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  xpc_activity_set_state(*(a1 + 32), 5);
  v2 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "com.apple.searchd.loadtrial";
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "Marked XPC activity:%s as done", &v5, 0xCu);
  }

  result = [sDelegate privateIndex];
  if ((result & 1) == 0)
  {
    result = [sDelegate managedIndex];
    if ((result & 1) == 0)
    {
      result = [*(a1 + 40) wipeCoreSpotlightIndexForTrial];
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2234(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (xpc_activity_get_state(v3) == 2)
  {
    if (xpc_activity_should_defer(v3))
    {
      v5 = xpc_activity_set_state(v3, 3);
      v6 = logForCSLogCategoryIndex();
      WeakRetained = v6;
      if (v5)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 136315394;
          v13 = "com.apple.searchd.heartbeat";
          v14 = 2048;
          v15 = 2;
          _os_log_impl(&dword_231A35000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Deferring XPC activity:%s, state:%ld", &v12, 0x16u);
        }

LABEL_16:

        goto LABEL_17;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __30__SPCoreSpotlightIndexer_init__block_invoke_2234_cold_1();
      }
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v8 = logForCSLogCategoryIndex();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315138;
        v13 = "com.apple.searchd.heartbeat";
        _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_DEFAULT, "Performing XPC activity:%s", &v12, 0xCu);
      }

      xpc_activity_set_state(v3, 4);
      v9 = [WeakRetained issueHeartbeat];
      xpc_activity_set_state(v3, 5);
      v10 = logForCSLogCategoryIndex();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315138;
        v13 = "com.apple.searchd.heartbeat";
        _os_log_impl(&dword_231A35000, v10, OS_LOG_TYPE_DEFAULT, "Marked XPC activity:%s as done", &v12, 0xCu);
      }
    }

    else
    {
      xpc_activity_set_state(v3, 5);
    }

    goto LABEL_16;
  }

LABEL_17:
  objc_autoreleasePoolPop(v4);

  v11 = *MEMORY[0x277D85DE8];
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2238(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = @"com.apple.searchd.reportStorageUsage";
    _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_DEFAULT, "Performing background task:%@", &buf, 0xCu);
  }

  v5 = objc_autoreleasePoolPush();
  v6 = objc_opt_new();
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2240;
  v24[3] = &unk_278934050;
  v7 = v6;
  v25 = v7;
  [v3 setExpirationHandler:v24];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v27 = 0x2020000000;
  v28 = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v23[3] = 0;
  v8 = *(a1 + 32);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2241;
  v19[3] = &unk_278936368;
  v9 = v7;
  v20 = v9;
  p_buf = &buf;
  v22 = v23;
  [v8 _enumerateIndexersWithBlock:v19];
  v10 = [sDelegate indexDirectory];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2_2242;
  v14[3] = &unk_278936390;
  v11 = v9;
  v15 = v11;
  v17 = &buf;
  v18 = v23;
  v12 = v3;
  v16 = v12;
  [v11 collectAtPath:v10 completionBlock:v14];

  _Block_object_dispose(v23, 8);
  _Block_object_dispose(&buf, 8);

  objc_autoreleasePoolPop(v5);
  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __30__SPCoreSpotlightIndexer_init__block_invoke_2240(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = @"com.apple.searchd.reportStorageUsage";
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "Task %@ cancelled", &v5, 0xCu);
  }

  result = [*(a1 + 32) setCanceled:1];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2241(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) canceled] & 1) == 0 && objc_msgSend(v3, "index"))
  {
    [v3 index];
    _SIGetDocumentCount();
    *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24);
    *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
  }
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2_2242(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) sendToCoreAnalyticsWithLiveDocCount:*(*(*(a1 + 48) + 8) + 24) deadDocCount:*(*(*(a1 + 56) + 8) + 24)];
    v3 = *(a1 + 40);

    [v3 setTaskCompleted];
  }

  else
  {
    v4 = *(a1 + 40);
    v8 = 0;
    v5 = [v4 setTaskExpiredWithRetryAfter:&v8 error:300.0];
    v6 = v8;
    if ((v5 & 1) == 0)
    {
      v7 = logForCSLogCategoryIndex();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __30__SPCoreSpotlightIndexer_init__block_invoke_2_2242_cold_1();
      }

      [*(a1 + 40) setTaskCompleted];
    }
  }
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2246(uint64_t a1, void *a2)
{
  v63 = *MEMORY[0x277D85DE8];
  v29 = a2;
  v3 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = @"com.apple.searchd.reportAppUsage";
    _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_DEFAULT, "Performing background task:%@", &buf, 0xCu);
  }

  context = objc_autoreleasePoolPush();
  *&buf = 0;
  *(&buf + 1) = &buf;
  v61 = 0x2020000000;
  v62 = 0;
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2247;
  v54[3] = &unk_2789363E0;
  v54[4] = &buf;
  [v29 setExpirationHandler:v54];
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() allProtectionClasses];
  if (isAppleInternalInstall())
  {
    v33 = objc_opt_new();
  }

  else
  {
    v33 = 0;
  }

  v6 = dispatch_group_create();
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v50 objects:v59 count:16];
  if (v7)
  {
    v8 = *MEMORY[0x277CC2500];
    v31 = *MEMORY[0x277CC2500];
    v32 = *v51;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v51 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v50 + 1) + 8 * i);
        dispatch_group_enter(v6);
        v11 = objc_opt_new();
        [v11 setAttribute:1];
        v58 = v10;
        v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
        [v11 setProtectionClasses:v12];

        [v11 setClientBundleID:@"com.apple.search"];
        v57 = v31;
        v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
        [v11 setFetchAttributes:v13];

        v14 = objc_opt_new();
        v15 = *(a1 + 32);
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2254;
        v46[3] = &unk_278936430;
        p_buf = &buf;
        v16 = v11;
        v47 = v16;
        v48 = v14;
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_3_2256;
        v37[3] = &unk_2789364D0;
        v44 = &buf;
        v17 = v48;
        v38 = v17;
        v39 = v6;
        v40 = v10;
        v18 = v16;
        v41 = v18;
        v42 = *(a1 + 32);
        v45 = 0;
        v43 = v33;
        v19 = [v15 startQueryWithQueryString:@"*=*" queryContext:v18 eventHandler:0 resultsHandler:v46 completionHandler:v37];
        if (!v19)
        {
          v20 = logForCSLogCategoryIndex();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            __30__SPCoreSpotlightIndexer_init__block_invoke_2246_cold_1(v55, &v56, v20);
          }

          atomic_store(1u, (*(&buf + 1) + 24));
        }
      }

      v7 = [obj countByEnumeratingWithState:&v50 objects:v59 count:16];
    }

    while (v7);
  }

  v21 = *(*(a1 + 32) + 232);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2270;
  block[3] = &unk_278934050;
  v22 = v33;
  v36 = v22;
  dispatch_group_notify(v6, v21, block);
  v23 = atomic_load((*(&buf + 1) + 24));
  if (v23)
  {
    v34 = 0;
    v24 = [v29 setTaskExpiredWithRetryAfter:&v34 error:300.0];
    v25 = v34;
    if ((v24 & 1) == 0)
    {
      v26 = logForCSLogCategoryIndex();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        __30__SPCoreSpotlightIndexer_init__block_invoke_2246_cold_2();
      }

      [v29 setTaskCompleted];
    }
  }

  else
  {
    [v29 setTaskCompleted];
  }

  _Block_object_dispose(&buf, 8);
  objc_autoreleasePoolPop(context);

  v27 = *MEMORY[0x277D85DE8];
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2247(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = @"com.apple.searchd.reportAppUsage";
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "Task %@ cancelled", &v4, 0xCu);
  }

  atomic_store(1u, (*(*(a1 + 32) + 8) + 24));
  v3 = *MEMORY[0x277D85DE8];
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2254(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = atomic_load((*(*(a1 + 48) + 8) + 24));
  if ((v5 & 1) == 0 && (a2 == 6 || !a2))
  {
    v8 = [*(a1 + 32) fetchAttributes];
    v9 = [v8 count];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2_2255;
    v12[3] = &unk_278936408;
    v11 = *(a1 + 40);
    v10 = v11;
    v13 = v11;
    [a5 enumerateQueryResults:v9 stringCache:0 usingBlock:v12];
  }
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2_2255(uint64_t a1, id *a2, _BYTE *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = atomic_load((*(*(a1 + 40) + 8) + 24));
  if (v3)
  {
    *a3 = 1;
  }

  else
  {
    v6 = *a2;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v7 = *a2;
      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v14;
        do
        {
          v11 = 0;
          do
          {
            if (*v14 != v10)
            {
              objc_enumerationMutation(v7);
            }

            [*(a1 + 32) addObject:{*(*(&v13 + 1) + 8 * v11++), v13}];
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v9);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_3_2256(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v18 = a2;
  if (v18)
  {
    v3 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __30__SPCoreSpotlightIndexer_init__block_invoke_3_2256_cold_1();
    }

    atomic_store(1u, (*(*(a1 + 80) + 8) + 24));
  }

  else if ([*(a1 + 32) count])
  {
    v4 = dispatch_group_create();
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = *(a1 + 32);
    v5 = [obj countByEnumeratingWithState:&v34 objects:v43 count:16];
    if (v5)
    {
      v20 = *MEMORY[0x277CC2500];
      v21 = *v35;
LABEL_8:
      v6 = 0;
      while (1)
      {
        if (*v35 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v34 + 1) + 8 * v6);
        v8 = atomic_load((*(*(a1 + 80) + 8) + 24));
        if (v8)
        {
          break;
        }

        dispatch_group_enter(v4);
        v9 = objc_opt_new();
        [v9 setCounting:1];
        v42 = *(a1 + 48);
        v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
        [v9 setProtectionClasses:v10];

        [*(a1 + 56) setClientBundleID:@"com.apple.search"];
        v33[0] = 0;
        v33[1] = v33;
        v33[2] = 0x2020000000;
        v33[3] = 0;
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@", v20, v7];
        v12 = *(a1 + 64);
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2257;
        v30[3] = &unk_278936458;
        v31 = *(a1 + 80);
        v32 = v33;
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2_2258;
        v24[3] = &unk_2789364A8;
        v27 = v31;
        v28 = v33;
        v13 = *(a1 + 48);
        v24[4] = v7;
        v24[5] = v13;
        v29 = *(a1 + 88);
        v25 = *(a1 + 72);
        v26 = v4;
        v14 = [v12 startQueryWithQueryString:v11 queryContext:v9 eventHandler:0 resultsHandler:v30 completionHandler:v24];
        if (!v14)
        {
          v15 = logForCSLogCategoryIndex();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v39 = @"com.apple.searchd.reportAppUsage";
            v40 = 2112;
            v41 = v7;
            _os_log_error_impl(&dword_231A35000, v15, OS_LOG_TYPE_ERROR, "Task %@ could not start counting query for bundle %@", buf, 0x16u);
          }
        }

        _Block_object_dispose(v33, 8);
        if (v5 == ++v6)
        {
          v5 = [obj countByEnumeratingWithState:&v34 objects:v43 count:16];
          if (v5)
          {
            goto LABEL_8;
          }

          break;
        }
      }
    }

    v16 = *(*(a1 + 64) + 232);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2269;
    block[3] = &unk_278934050;
    v23 = *(a1 + 40);
    dispatch_group_notify(v4, v16, block);
  }

  else
  {
    dispatch_group_leave(*(a1 + 40));
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __30__SPCoreSpotlightIndexer_init__block_invoke_2257(uint64_t result, int a2, uint64_t a3)
{
  v3 = atomic_load((*(*(result + 32) + 8) + 24));
  if (a2 == 5 && (v3 & 1) == 0)
  {
    *(*(*(result + 40) + 8) + 24) += a3;
  }

  return result;
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2_2258(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = atomic_load((*(*(a1 + 64) + 8) + 24));
  if ((v5 & 1) == 0)
  {
    if (v3)
    {
      v6 = logForCSLogCategoryIndex();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __30__SPCoreSpotlightIndexer_init__block_invoke_2_2258_cold_1(a1);
      }
    }

    else
    {
      v14 = *(a1 + 72);
      v13 = *(a1 + 32);
      AnalyticsSendEventLazy();
      os_unfair_lock_lock((a1 + 80));
      v7 = *(a1 + 48);
      if (v7)
      {
        v8 = [v7 objectForKeyedSubscript:*(a1 + 32)];
        v9 = v8;
        v10 = MEMORY[0x277CCABB0];
        if (v8)
        {
          v11 = *(*(*(a1 + 72) + 8) + 24) + [v8 unsignedIntValue];
        }

        else
        {
          v11 = *(*(*(a1 + 72) + 8) + 24);
        }

        v12 = [v10 numberWithUnsignedLong:v11];
        [*(a1 + 48) setObject:v12 forKeyedSubscript:*(a1 + 32)];
      }

      os_unfair_lock_unlock((a1 + 80));
      dispatch_group_leave(*(a1 + 56));
    }
  }
}

id __30__SPCoreSpotlightIndexer_init__block_invoke_2262(uint64_t a1)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v8[0] = *(a1 + 32);
  v7[0] = @"bundleID";
  v7[1] = @"itemCount";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(*(*(a1 + 48) + 8) + 24)];
  v8[1] = v2;
  v7[2] = @"protectionClass";
  v3 = [MEMORY[0x277CCABB0] numberWithInt:protectionClassForAnalytics(*(a1 + 40))];
  v8[2] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2270(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = +[SPHistoricalReportManager sharedInstance];
    [v2 saveReport:*(a1 + 32) withType:0 errorHandler:&__block_literal_global_2274];
  }
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2_2272(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __30__SPCoreSpotlightIndexer_init__block_invoke_2_2272_cold_1();
    }
  }
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2275(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = a2 >> 1;
  if (a2)
  {
    if (v4 == 1)
    {
      if (sUseMailIndex == 1)
      {
        v5 = +[SPCoreSpotlightIndexer sharedInstance];
        v6 = v5;
        v8 = @"MobileMailIndex";
        goto LABEL_18;
      }
    }

    else if (!v4)
    {
      v5 = +[SPCoreSpotlightIndexer sharedInstance];
      v6 = v5;
      v8 = @"Priority";
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  if (a2 >> 1 > 2)
  {
    if (v4 == 3)
    {
      v5 = +[SPCoreSpotlightIndexer sharedInstance];
      v6 = v5;
      v7 = MEMORY[0x277CCA1A0];
      goto LABEL_17;
    }

    if (v4 == 7)
    {
      v5 = +[SPCoreSpotlightIndexer sharedInstance];
      v6 = v5;
      v7 = MEMORY[0x277CCA1A8];
      goto LABEL_17;
    }

LABEL_14:
    v5 = +[SPCoreSpotlightIndexer sharedInstance];
    v6 = v5;
    v7 = MEMORY[0x277CCA1B8];
    goto LABEL_17;
  }

  if (v4 == 1)
  {
    v5 = +[SPCoreSpotlightIndexer sharedInstance];
    v6 = v5;
    v7 = MEMORY[0x277CCA190];
    goto LABEL_17;
  }

  if (v4 != 2)
  {
    goto LABEL_14;
  }

  v5 = +[SPCoreSpotlightIndexer sharedInstance];
  v6 = v5;
  v7 = MEMORY[0x277CCA198];
LABEL_17:
  v8 = *v7;
LABEL_18:
  v9 = [v5 concreteIndexerForProtectionClass:v8 andBundleID:0];

  memset(&v27, 0, sizeof(v27));
  v10 = [v9 _indexPath];
  v11 = stat([v10 UTF8String], &v27);

  v12 = *__error();
  if (v11)
  {
    v13 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SPConcreteCoreSpotlightIndexer openIndex:shouldReindexAll:readOnly:forcePC:];
    }

    st_size = 0;
    tv_sec = 0;
  }

  else
  {
    tv_sec = v27.st_birthtimespec.tv_sec;
    st_size = v27.st_size;
  }

  *__error() = v12;
  v16 = [v9 vectorIndexDropsPath];
  v17 = [MEMORY[0x277CCAA00] defaultManager];
  v18 = [v17 fileExistsAtPath:v16];

  if (v18)
  {
    v19 = [MEMORY[0x277CCAA00] defaultManager];
    v26 = 0;
    [v19 removeItemAtPath:v16 error:&v26];
    v20 = v26;

    if (v20)
    {
      v21 = logForCSLogCategoryIndex();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        __30__SPCoreSpotlightIndexer_init__block_invoke_2275_cold_2();
      }
    }
  }

  LOBYTE(v24) = 1;
  v22 = [v9 indexLossAnalyticsDictWithPreviousIndexCreationDate:tv_sec size:st_size openingInReadOnly:0 fullyCreated:1 markedPurgeable:0 vectorIndexDrop:a3 forAnalytics:v24];
  v23 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.searchd"];
  if ([v23 BOOLForKey:@"disable_index_drop_reporting"])
  {
    [v9 writeIndexLossEventToFile:v22 vector:1];
  }

  else
  {
    v25 = v22;
    AnalyticsSendEventLazy();
  }
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2_2279(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained reindexAllItemsSource];
    dispatch_suspend(v3);

    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_3_2280;
    v4[3] = &unk_278934050;
    v5 = v2;
    [v5 _reindexAllItemsWithExtensionsAndCompletionBlock:v4];
  }
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_3_2280(uint64_t a1)
{
  v1 = [*(a1 + 32) reindexAllItemsSource];
  dispatch_resume(v1);
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained reindexAllItemsWithIdentifiersSource];
    dispatch_suspend(v3);

    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_5;
    v4[3] = &unk_278934050;
    v5 = v2;
    [v5 _reindexAllItemsWithExtensionsAndIdentifiersAndCompletionBlock:v4];
  }
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_5(uint64_t a1)
{
  v1 = [*(a1 + 32) reindexAllItemsWithIdentifiersSource];
  dispatch_resume(v1);
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!a5 && WeakRetained)
  {
    v8 = WeakRetained;
    v7 = [WeakRetained reindexAllItemsSource];
    dispatch_source_merge_data(v7, 1uLL);

    WeakRetained = v8;
  }
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!a5 && WeakRetained)
  {
    v8 = WeakRetained;
    v7 = [WeakRetained reindexAllItemsWithIdentifiersSource];
    dispatch_source_merge_data(v7, 1uLL);

    WeakRetained = v8;
  }
}

- (void)resume
{
  v3 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_DEFAULT, "resume from delegate", v4, 2u);
  }

  [(SPCoreSpotlightIndexer *)self _registerForPrefsChanges];
}

- (void)locking
{
  v3 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_DEFAULT, "locking from delegate enter", buf, 2u);
  }

  v4 = [(SPCoreSpotlightIndexer *)self concreteIndexers];
  v5 = SDTransactionCreate(&unk_2846C9368);
  v6 = dispatch_group_create();
  v7 = [v4 objectForKeyedSubscript:*MEMORY[0x277CCA190]];
  [v7 suspendIndexForDeviceLock:v6];

  v8 = [v4 objectForKeyedSubscript:*MEMORY[0x277CCA198]];
  [v8 suspendIndexForDeviceLock:v6];

  v9 = [(SPCoreSpotlightIndexer *)self firstUnlockQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__SPCoreSpotlightIndexer_locking__block_invoke;
  block[3] = &unk_278934050;
  v12 = v5;
  v10 = v5;
  dispatch_group_notify(v6, v9, block);
}

void __33__SPCoreSpotlightIndexer_locking__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_self();
  v3 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_DEFAULT, "locking from delegate exit", v4, 2u);
  }
}

- (void)locked
{
  v2 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "locked from delegate", v3, 2u);
  }
}

- (void)lockingCx
{
  v3 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_DEFAULT, "locking Cx from delegate", buf, 2u);
  }

  v4 = [(SPCoreSpotlightIndexer *)self concreteIndexers];
  v5 = SDTransactionCreate(&unk_2846C9380);
  v6 = dispatch_group_create();
  v7 = [v4 objectForKeyedSubscript:*MEMORY[0x277CCA1A8]];
  [v7 suspendIndexForDeviceLock:v6];

  v8 = [(SPCoreSpotlightIndexer *)self firstUnlockQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__SPCoreSpotlightIndexer_lockingCx__block_invoke;
  block[3] = &unk_278934050;
  v11 = v5;
  v9 = v5;
  dispatch_group_notify(v6, v8, block);
}

- (void)lockedCx
{
  v2 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "locked Cx from delegate", v3, 2u);
  }
}

- (void)setServiceName:(id)a3
{
  v4 = [a3 copy];
  serviceName = self->_serviceName;
  self->_serviceName = v4;

  MEMORY[0x2821F96F8](v4, serviceName);
}

- (void)_upgradeToPriorityIndex
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __49__SPCoreSpotlightIndexer__upgradeToPriorityIndex__block_invoke(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x277D85DE8];
  *(*(*(a1 + 56) + 8) + 24) = a2;
  v4 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_DEFAULT, "### _SITransferBundles complete res: %d", v6, 8u);
  }

  if (!a2)
  {
    [*(a1 + 32) setProperty:&unk_2846C9590 forKey:@"kSPPriorityIndexVersion" sync:0];
    [*(a1 + 40) setProperty:&unk_2846C9590 forKey:@"kSPPriorityIndexVersion" sync:0];
    sUpgradedForPriorityIndex = 1;
  }

  dispatch_group_leave(*(a1 + 48));
  v5 = *MEMORY[0x277D85DE8];
}

- (void)upgradeCheck
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__SPCoreSpotlightIndexer_upgradeCheck__block_invoke;
  block[3] = &unk_278934050;
  block[4] = self;
  if (upgradeCheck_onceToken != -1)
  {
    dispatch_once(&upgradeCheck_onceToken, block);
  }
}

uint64_t __38__SPCoreSpotlightIndexer_upgradeCheck__block_invoke(uint64_t result)
{
  if (sUsePriorityIndex == 1)
  {
    return [*(result + 32) _upgradeToPriorityIndex];
  }

  return result;
}

- (void)_mailClassCMarkFileTransferComplete
{
  v3 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_DEFAULT, "### _mailClassCMarkFileTransferComplete: Creating touch file", buf, 2u);
  }

  v4 = [(SPCoreSpotlightIndexer *)self mailClassCFileTransferCompleteTouchFile];
  v5 = open([v4 fileSystemRepresentation], 512, 438);

  sMailClassCFileTransferComplete = 1;
  if (v5 != -1)
  {
    close(v5);
  }
}

- (void)_mailClassCMarkMigrationComplete
{
  v3 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_DEFAULT, "### _mailClassCMarkMigrationComplete: Creating touch file", buf, 2u);
  }

  v4 = [(SPCoreSpotlightIndexer *)self mailClassCMigrationCompleteTouchFile];
  v5 = open([v4 fileSystemRepresentation], 512, 438);

  sMailClassCMigrationComplete = 1;
  if (v5 != -1)
  {
    close(v5);
  }
}

- (void)_mailClassCResetIndexAndComplete
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (int)_changeFilesToClassC:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = open([v3 fileSystemRepresentation], 0x8000);
  if (v4 < 0)
  {
    v11 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SPCoreSpotlightIndexer _changeFilesToClassC:];
    }

    goto LABEL_21;
  }

  v5 = v4;
  if (fcntl(v4, 63) != 3 && fcntl(v5, 64, 3) == -1)
  {
    v13 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SPCoreSpotlightIndexer _changeFilesToClassC:];
    }

    close(v5);
LABEL_21:
    v12 = -1;
    goto LABEL_22;
  }

  close(v5);
  v6 = [v3 stringByAppendingPathComponent:@"index.spotlightV2"];
  v7 = open([v6 fileSystemRepresentation], 0x8000);
  v8 = logForCSLogCategoryDefault();
  v9 = v8;
  if (v7 < 0)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SPCoreSpotlightIndexer _changeFilesToClassC:];
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v6;
      _os_log_impl(&dword_231A35000, v9, OS_LOG_TYPE_DEFAULT, "### _changeFilesToClassC: changing files in %@ protection class to class C", buf, 0xCu);
    }

    v10 = _SIChangeProtectionClassForFilesInDirectory();
    close(v7);
    if (!v10)
    {
      v12 = 0;
      goto LABEL_17;
    }

    v9 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SPCoreSpotlightIndexer _changeFilesToClassC:];
    }
  }

  v12 = -1;
LABEL_17:

LABEL_22:
  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)_fixProtClassForClassCMailIndex
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_finishFileTransferToClassCMailIndex
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CCA190];
  v4 = [(SPCoreSpotlightIndexer *)self concreteIndexerForProtectionClass:*MEMORY[0x277CCA190] andBundleID:0];
  [v4 closeIndex];

  v5 = [sDelegate indexDirectory];
  v6 = [v5 stringByAppendingPathComponent:v3];

  v7 = [(SPCoreSpotlightIndexer *)self mailClassCIndexPath];
  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v14 = 0;
  v9 = [v8 moveItemAtPath:v6 toPath:v7 error:&v14];
  v10 = v14;

  if (v9)
  {
    [(SPCoreSpotlightIndexer *)self _mailClassCMarkFileTransferComplete];
    if ([sDelegate deviceUnlocked])
    {
      [(SPCoreSpotlightIndexer *)self _fixProtClassForClassCMailIndex];
    }

    else
    {
      v12 = logForCSLogCategoryIndex();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_231A35000, v12, OS_LOG_TYPE_DEFAULT, "### _finishFileTransferToClassCMailIndex: device is locked, trying protection class change on next unlock", buf, 2u);
      }

      sMailClassCTryProtectionClassChangeOnUnlock = 1;
    }
  }

  else
  {
    v11 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      v19 = 2112;
      v20 = v10;
      _os_log_error_impl(&dword_231A35000, v11, OS_LOG_TYPE_ERROR, "### _finishFileTransferToClassCMailIndex: Failed to move class A mail index path:%@ to class C path:%@, error:%@", buf, 0x20u);
    }

    [(SPCoreSpotlightIndexer *)self _mailClassCResetIndexAndComplete];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_deleteNonMailBundlesFromClassAIndex:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v4;
    _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_DEFAULT, "### _deleteNonMailBundlesFromClassAIndex: Bundles other than mail to be deleted: %@", buf, 0xCu);
  }

  v6 = dispatch_group_create();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    v10 = *MEMORY[0x277CCA190];
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v20 + 1) + 8 * v11);
        dispatch_group_enter(v6);
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __63__SPCoreSpotlightIndexer__deleteNonMailBundlesFromClassAIndex___block_invoke;
        v18[3] = &unk_278935428;
        v18[4] = v12;
        v19 = v6;
        [(SPCoreSpotlightIndexer *)self deleteAllSearchableItemsWithBundleID:v12 protectionClass:v10 shouldGC:0 deleteAllReason:3 completionHandler:v18];

        ++v11;
      }

      while (v8 != v11);
      v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v13 = sIndexQueue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __63__SPCoreSpotlightIndexer__deleteNonMailBundlesFromClassAIndex___block_invoke_2316;
  v17[3] = &unk_278934050;
  v17[4] = self;
  v14 = _setup_block(v17, 0, 16019);
  dispatch_group_notify(v6, v13, v14);

  v15 = *MEMORY[0x277D85DE8];
}

void __63__SPCoreSpotlightIndexer__deleteNonMailBundlesFromClassAIndex___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __63__SPCoreSpotlightIndexer__deleteNonMailBundlesFromClassAIndex___block_invoke_cold_1(a1);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

uint64_t __63__SPCoreSpotlightIndexer__deleteNonMailBundlesFromClassAIndex___block_invoke_2316(uint64_t a1)
{
  v2 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "### _deleteNonMailBundlesFromClassAIndex: deletion complete", v4, 2u);
  }

  return [*(a1 + 32) _finishFileTransferToClassCMailIndex];
}

- (void)_moveClassAIndexToClassCMailIndex
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __59__SPCoreSpotlightIndexer__moveClassAIndexToClassCMailIndex__block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2 == 6 || !a2)
  {
    v7 = [*(a1 + 32) fetchAttributes];
    v8 = [v7 count];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __59__SPCoreSpotlightIndexer__moveClassAIndexToClassCMailIndex__block_invoke_2;
    v9[3] = &unk_278934A00;
    v10 = *(a1 + 40);
    [a5 enumerateQueryResults:v8 stringCache:0 usingBlock:v9];
  }
}

void __59__SPCoreSpotlightIndexer__moveClassAIndexToClassCMailIndex__block_invoke_2(uint64_t a1, id *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = *a2;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if ([v10 length])
          {
            [*(a1 + 32) addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __59__SPCoreSpotlightIndexer__moveClassAIndexToClassCMailIndex__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __59__SPCoreSpotlightIndexer__moveClassAIndexToClassCMailIndex__block_invoke_3_cold_1();
    }

    v5 = sIndexQueue;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __59__SPCoreSpotlightIndexer__moveClassAIndexToClassCMailIndex__block_invoke_2320;
    v14[3] = &unk_278934050;
    v14[4] = *(a1 + 32);
    v6 = _setup_block(v14, 0, 16086);
    dispatch_async(v5, v6);
  }

  else
  {
    v7 = sIndexQueue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__SPCoreSpotlightIndexer__moveClassAIndexToClassCMailIndex__block_invoke_2_2321;
    v11[3] = &unk_2789342C0;
    v8 = *(a1 + 40);
    v9 = *(a1 + 32);
    v12 = v8;
    v13 = v9;
    v10 = _setup_block(v11, 0, 16098);
    dispatch_async(v7, v10);
  }
}

void __59__SPCoreSpotlightIndexer__moveClassAIndexToClassCMailIndex__block_invoke_2_2321(uint64_t a1)
{
  if ([*(a1 + 32) count] && !objc_msgSend(sDelegate, "deviceUnlocked"))
  {
    v4 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_DEFAULT, "### _moveClassAIndexToClassCMailIndex: device is locked, trying delete bundles next unlock", v7, 2u);
    }

    v5 = [*(a1 + 32) copy];
    v6 = sMailClassCNonMailBundles;
    sMailClassCNonMailBundles = v5;
  }

  else
  {
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);

    [v2 _deleteNonMailBundlesFromClassAIndex:v3];
  }
}

- (id)touchfilePathForMigrationStep:(id)a3
{
  v3 = sDelegate;
  v4 = a3;
  v5 = [v3 indexDirectory];
  v6 = [v5 stringByAppendingPathComponent:v4];

  return v6;
}

- (BOOL)touchfileExistsForMigrationStep:(id)a3
{
  v3 = [(SPCoreSpotlightIndexer *)self touchfilePathForMigrationStep:a3];
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  return v5;
}

- (void)setTouchfileExistsForMigrationStep:(id)a3
{
  v4 = a3;
  v5 = [(SPCoreSpotlightIndexer *)self touchfilePathForMigrationStep:v4];
  v6 = open([v5 fileSystemRepresentation], 512, 438);
  if (v6 == -1)
  {
    v7 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SPCoreSpotlightIndexer setTouchfileExistsForMigrationStep:];
    }
  }

  else
  {
    close(v6);
  }
}

- (void)deleteTouchfileForMigrationStep:(id)a3
{
  v4 = MEMORY[0x277CCAA00];
  v5 = a3;
  v7 = [v4 defaultManager];
  v6 = [(SPCoreSpotlightIndexer *)self touchfilePathForMigrationStep:v5];

  [v7 removeItemAtPath:v6 error:0];
}

- (int)cloneIndexFrom:(id)a3 to:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [sDelegate indexDirectory];
  v8 = [v7 stringByAppendingPathComponent:v5];
  v9 = [v7 stringByAppendingPathComponent:v6];
  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v19 = 0;
  v11 = [v10 copyItemAtPath:v8 toPath:v9 error:&v19];
  v12 = v19;
  v13 = v12;
  if (v11)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    v16 = 0;
  }

  else
  {
    v15 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v21 = v5;
      v22 = 2112;
      v23 = v6;
      v24 = 2112;
      v25 = v13;
      _os_log_error_impl(&dword_231A35000, v15, OS_LOG_TYPE_ERROR, "Failed to clone index from:%@ to:%@ error:%@", buf, 0x20u);
    }

    v16 = 1;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (int)performMigrationStepWithTouchfileGuard:(id)a3 step:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(SPCoreSpotlightIndexer *)self touchfileExistsForMigrationStep:v6])
  {
    v8 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v6;
      v9 = "*warn* Migration step %@ already completed";
LABEL_9:
      _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_DEFAULT, v9, &v14, 0xCu);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  v10 = v7[2](v7);
  if (!v10)
  {
    [(SPCoreSpotlightIndexer *)self setTouchfileExistsForMigrationStep:v6];
    v8 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v6;
      v9 = "Migration step succeeded: %@";
      goto LABEL_9;
    }

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v11 = v10;
  v8 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [SPCoreSpotlightIndexer performMigrationStepWithTouchfileGuard:step:];
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)moveMailToClassCWithClone
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(*a1 + 24);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __51__SPCoreSpotlightIndexer_moveMailToClassCWithClone__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [*(a1 + 32) mailClassCIndexPath];
  v4 = [v2 fileExistsAtPath:v3];

  if (v4)
  {
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [*(a1 + 32) mailClassCIndexPath];
    v11 = 0;
    [v5 removeItemAtPath:v6 error:&v11];
    v7 = v11;

    if (v7)
    {
      v8 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __51__SPCoreSpotlightIndexer_moveMailToClassCWithClone__block_invoke_cold_1();
      }
    }

    else
    {
      v8 = logForCSLogCategoryIndex();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_DEFAULT, "*warn* Deleted old mail index for mail migration", v10, 2u);
      }
    }
  }

  return [*(a1 + 32) cloneIndexFrom:*MEMORY[0x277CCA190] to:@"MobileMailIndex"];
}

void __51__SPCoreSpotlightIndexer_moveMailToClassCWithClone__block_invoke_2332(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__SPCoreSpotlightIndexer_moveMailToClassCWithClone__block_invoke_2;
  v5[3] = &unk_278934528;
  v5[4] = *(a1 + 48);
  v4 = *(a1 + 56);
  v3 = v4;
  v6 = v4;
  [v1 deleteItemsForQuery:v2 bundleID:@"com.apple.mobilemail" fromClient:@"com.apple.searchd" completionHandler:v5];
}

void __51__SPCoreSpotlightIndexer_moveMailToClassCWithClone__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (v5)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v6 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __51__SPCoreSpotlightIndexer_moveMailToClassCWithClone__block_invoke_2_cold_1();
    }
  }

  else
  {
    v7 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = a3;
      _os_log_impl(&dword_231A35000, v7, OS_LOG_TYPE_DEFAULT, "Deleted %lu mail items for mail migration", &v9, 0xCu);
    }

    [*(a1 + 32) setTouchfileExistsForMigrationStep:@"CrystalEMailCleanClassAComplete.touch"];
  }

  dispatch_group_leave(*(a1 + 40));

  v8 = *MEMORY[0x277D85DE8];
}

void __51__SPCoreSpotlightIndexer_moveMailToClassCWithClone__block_invoke_2336(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = a1 + 64;
  v3 = *(*(*(a1 + 64) + 8) + 24);
  v4 = logForCSLogCategoryDefault();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __51__SPCoreSpotlightIndexer_moveMailToClassCWithClone__block_invoke_2336_cold_1();
    }

LABEL_9:

    dispatch_group_leave(*(a1 + 32));
    goto LABEL_10;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = @"CrystalEMailCleanClassMailComplete.touch";
    _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_DEFAULT, "Perfoming mail migration step %@", buf, 0xCu);
  }

  *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 40) openIndex:0 shouldReindexAll:0 readOnly:0 forcePC:*MEMORY[0x277CCA190]];
  if (*(*(*(a1 + 64) + 8) + 24))
  {
    v5 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __51__SPCoreSpotlightIndexer_moveMailToClassCWithClone__block_invoke_2336_cold_2(v2);
    }

    goto LABEL_9;
  }

  v7 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231A35000, v7, OS_LOG_TYPE_DEFAULT, "Opened mail index for mail migration", buf, 2u);
  }

  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__SPCoreSpotlightIndexer_moveMailToClassCWithClone__block_invoke_2337;
  v11[3] = &unk_278934528;
  v10 = *(a1 + 56);
  v13 = *(a1 + 64);
  v11[4] = v10;
  v12 = *(a1 + 32);
  [v8 deleteItemsForQuery:v9 bundleID:0 fromClient:@"com.apple.searchd" completionHandler:v11];

LABEL_10:
  v6 = *MEMORY[0x277D85DE8];
}

void __51__SPCoreSpotlightIndexer_moveMailToClassCWithClone__block_invoke_2337(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (v5)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v6 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __51__SPCoreSpotlightIndexer_moveMailToClassCWithClone__block_invoke_2337_cold_1();
    }
  }

  else
  {
    v7 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = a3;
      _os_log_impl(&dword_231A35000, v7, OS_LOG_TYPE_DEFAULT, "Deleted %lu class A items for mail migration", &v9, 0xCu);
    }

    [*(a1 + 32) setTouchfileExistsForMigrationStep:@"CrystalEMailCleanClassMailComplete.touch"];
  }

  dispatch_group_leave(*(a1 + 40));

  v8 = *MEMORY[0x277D85DE8];
}

void __51__SPCoreSpotlightIndexer_moveMailToClassCWithClone__block_invoke_2338(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(*(*(a1 + 56) + 8) + 24);
  v3 = logForCSLogCategoryDefault();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __51__SPCoreSpotlightIndexer_moveMailToClassCWithClone__block_invoke_2338_cold_1();
    }

    [*(a1 + 32) setOnDemandOpen:1];
    [*(a1 + 40) setOnDemandOpen:1];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = @"CrystalEMailMigrationComplete.touch";
      _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_DEFAULT, "Performing mail migration step %@", buf, 0xCu);
    }

    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __51__SPCoreSpotlightIndexer_moveMailToClassCWithClone__block_invoke_2339;
    v13 = &unk_2789365E0;
    v5 = *(a1 + 48);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v14 = v6;
    v15 = v7;
    *(*(*(a1 + 56) + 8) + 24) = [v5 performMigrationStepWithTouchfileGuard:@"CrystalEMailMigrationComplete.touch" step:&v10];
    [*(a1 + 32) setOnDemandOpen:{1, v10, v11, v12, v13}];
    [*(a1 + 40) setOnDemandOpen:1];
    if (!*(*(*(a1 + 56) + 8) + 24))
    {
      v8 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_DEFAULT, "Mail migration completed successfully", buf, 2u);
      }

      sMailClassCMigrationComplete = 1;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __51__SPCoreSpotlightIndexer_moveMailToClassCWithClone__block_invoke_2339(uint64_t a1)
{
  [*(a1 + 32) closeIndex];
  v2 = [*(a1 + 40) mailClassCIndexPath];
  v7 = 0;
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [v3 fileExistsAtPath:v2 isDirectory:&v7];

  if (v4 && v7 == 1)
  {
    v5 = [*(a1 + 40) _changeFilesToClassC:v2];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)moveMailToClassCWithoutClone
{
  v10 = *MEMORY[0x277D85DE8];
  if ((sMailClassCMigrationComplete & 1) == 0 && (sPrivate & 1) == 0 && sUseMailIndex == 1)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__SPCoreSpotlightIndexer_moveMailToClassCWithoutClone__block_invoke;
    block[3] = &unk_278934050;
    block[4] = self;
    if (moveMailToClassCWithoutClone_onceToken != -1)
    {
      dispatch_once(&moveMailToClassCWithoutClone_onceToken, block);
    }

    if ((sMailClassCFileTransferComplete & 1) == 0 && sMailClassCNonMailBundles)
    {
      v3 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v9 = sMailClassCNonMailBundles;
        _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_DEFAULT, "### moveMailToClassC: deleting non-mail bundles: %@", buf, 0xCu);
      }

      [(SPCoreSpotlightIndexer *)self _deleteNonMailBundlesFromClassAIndex:sMailClassCNonMailBundles];
      v4 = sMailClassCNonMailBundles;
      sMailClassCNonMailBundles = 0;
    }

    if ((sMailClassCMigrationComplete & 1) == 0 && sMailClassCTryProtectionClassChangeOnUnlock == 1)
    {
      v5 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_DEFAULT, "### moveMailToClassC: changing protection class on unlock", buf, 2u);
      }

      [(SPCoreSpotlightIndexer *)self _fixProtClassForClassCMailIndex];
      sMailClassCTryProtectionClassChangeOnUnlock = 0;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __54__SPCoreSpotlightIndexer_moveMailToClassCWithoutClone__block_invoke(uint64_t result)
{
  if ((sMailClassCFileTransferComplete & 1) == 0)
  {
    return [*(result + 32) _moveClassAIndexToClassCMailIndex];
  }

  return result;
}

- (BOOL)checkMailMigrationToClassCComplete
{
  p_info = &OBJC_METACLASS___CSSearchAgent.info;
  if ((sMailClassCMigrationComplete & 1) != 0 || (sPrivate & 1) != 0 || sUseMailIndex != 1)
  {
    v5 = 1;
  }

  else
  {
    block[5] = v2;
    block[6] = v3;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__SPCoreSpotlightIndexer_checkMailMigrationToClassCComplete__block_invoke;
    block[3] = &unk_278934050;
    block[4] = self;
    if (checkMailMigrationToClassCComplete_onceToken != -1)
    {
      dispatch_once(&checkMailMigrationToClassCComplete_onceToken, block);
      p_info = (&OBJC_METACLASS___CSSearchAgent + 32);
    }

    v5 = *(p_info + 1862);
  }

  return v5 & 1;
}

void __60__SPCoreSpotlightIndexer_checkMailMigrationToClassCComplete__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [*(a1 + 32) mailClassCMigrationCompleteTouchFile];
  v4 = [v2 fileExistsAtPath:v3];

  if (v4)
  {
    sMailClassCFileTransferComplete = 1;
    sMailClassCMigrationComplete = 1;
    v5 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_DEFAULT, "### checkMailMigrationToClassCComplete: already done", v6, 2u);
    }
  }
}

- (void)moveBackMailToClassA
{
  if ((sPrivate & 1) == 0 && (sUseMailIndex & 1) == 0)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__SPCoreSpotlightIndexer_moveBackMailToClassA__block_invoke;
    block[3] = &unk_278934050;
    block[4] = self;
    if (moveBackMailToClassA_onceToken != -1)
    {
      dispatch_once(&moveBackMailToClassA_onceToken, block);
    }
  }
}

void __46__SPCoreSpotlightIndexer_moveBackMailToClassA__block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) mailClassCMigrationCompleteTouchFile];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [v3 fileExistsAtPath:v2];

  if (v4)
  {
    v5 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_DEFAULT, "### moveBackMailToClassA: found touch file and FF is disabled!", buf, 2u);
    }

    v6 = [*(a1 + 32) mailClassCIndexPath];
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v8 = [v7 fileExistsAtPath:v6];

    if (v8)
    {
      v9 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_231A35000, v9, OS_LOG_TYPE_DEFAULT, "### moveBackMailToClassA: class C mail index exists, moving it back", buf, 2u);
      }

      v10 = [sDelegate indexDirectory];
      v11 = [v10 stringByAppendingPathComponent:*MEMORY[0x277CCA190]];

      v12 = [MEMORY[0x277CCAA00] defaultManager];
      [v12 removeItemAtPath:v11 error:0];

      v13 = [MEMORY[0x277CCAA00] defaultManager];
      v23 = 0;
      v14 = [v13 moveItemAtPath:v6 toPath:v11 error:&v23];
      v15 = v23;

      if ((v14 & 1) == 0)
      {
        v16 = logForCSLogCategoryIndex();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v25 = v6;
          v26 = 2112;
          v27 = v11;
          v28 = 2112;
          v29 = v15;
          _os_log_error_impl(&dword_231A35000, v16, OS_LOG_TYPE_ERROR, "### moveBackMailToClassA: Failed to move class C mail index path:%@ to class A path:%@, error:%@", buf, 0x20u);
        }
      }
    }

    v17 = [MEMORY[0x277CCAA00] defaultManager];
    [v17 removeItemAtPath:v2 error:0];
  }

  v18 = [MEMORY[0x277CCAA00] defaultManager];
  v19 = [*(a1 + 32) mailClassCFileTransferCompleteTouchFile];
  [v18 removeItemAtPath:v19 error:0];

  v20 = [MEMORY[0x277CCAA00] defaultManager];
  v21 = [*(a1 + 32) mailClassCIndexPath];
  [v20 removeItemAtPath:v21 error:0];

  [*(a1 + 32) deleteTouchfileForMigrationStep:@"CrystalEMailCloneComplete.touch"];
  [*(a1 + 32) deleteTouchfileForMigrationStep:@"CrystalEMailCleanClassAComplete.touch"];
  [*(a1 + 32) deleteTouchfileForMigrationStep:@"CrystalEMailCleanClassMailComplete.touch"];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__SPCoreSpotlightIndexer_start__block_invoke;
  block[3] = &unk_278934050;
  block[4] = self;
  if (start_onceToken != -1)
  {
    dispatch_once(&start_onceToken, block);
  }
}

void __31__SPCoreSpotlightIndexer_start__block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  if ([sDelegate indexingEnabled])
  {
    v2 = [sDelegate indexDirectory];
    v3 = [v2 fileSystemRepresentation];

    if (v3)
    {
      v4 = open(v3, 0x100000);
      if (v4 == -1)
      {
        v8 = logForCSLogCategoryDefault();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          __31__SPCoreSpotlightIndexer_start__block_invoke_cold_1();
        }
      }

      else
      {
        v5 = v4;
        MEMORY[0x238375140]();
        close(v5);
      }
    }

    v9 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:MDBootTime()];
      LODWORD(buf[0]) = 138412290;
      *(buf + 4) = v10;
      _os_log_impl(&dword_231A35000, v9, OS_LOG_TYPE_DEFAULT, "Noting bootTime:%@", buf, 0xCu);
    }

    v11 = [MEMORY[0x277CCAA00] defaultManager];
    v12 = MEMORY[0x277CCACA8];
    v13 = [sDelegate indexDirectory];
    v14 = [v12 stringWithCString:objc_msgSend(v13 encoding:{"fileSystemRepresentation"), 134217984}];
    buf[0] = 0;
    v15 = [v11 attributesOfFileSystemForPath:v14 error:buf];
    v16 = buf[0];

    if (v16)
    {
      v17 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        __31__SPCoreSpotlightIndexer_start__block_invoke_cold_2();
      }
    }

    else
    {
      if (!v15)
      {
        goto LABEL_17;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_17;
      }

      v17 = [v15 objectForKeyedSubscript:@"NSFileSystemFreeSize"];
      if (v17)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v31 = [v17 unsignedLongValue];
          if ((v31 & 0x8000000000000000) == 0)
          {
            v32 = v31;

            if (v32 >> 22 > 0x18)
            {
              v21 = 0;
              v20 = 1;
LABEL_23:
              if (isAppleInternalInstall())
              {
                memset(buf, 0, 144);
                if (!stat("/private/var/mobile/spotlightForceLowDisk", buf))
                {
                  v22 = logForCSLogCategoryDefault();
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                  {
                    __31__SPCoreSpotlightIndexer_start__block_invoke_cold_4();
                  }

                  v20 = 0;
                  v21 = 1;
                  sVeryLowDiskSpace = 1;
                }
              }

              memset(buf, 0, 144);
              v23 = turboFilePath();
              v24 = stat(v23, buf);
              sTurboMode = v24 == 0;
              if (!v24)
              {
                _SISetTurboMode();
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  *v36 = 0;
                  _os_log_impl(&dword_231A35000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Start with turbo mode on", v36, 2u);
                }
              }

              if (sPrivate == 1)
              {
                [*(a1 + 32) asyncOpenIndex:v20 forInit:1 readOnly:v21];
              }

              else
              {
                if (([sDelegate managedIndex] & 1) == 0)
                {
                  v25 = [MEMORY[0x277CC33F8] sharedInstance];
                  objc_storeWeak((*(a1 + 32) + 216), v25);

                  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 216));
                  v35[0] = MEMORY[0x277D85DD0];
                  v35[1] = 3221225472;
                  v35[2] = __31__SPCoreSpotlightIndexer_start__block_invoke_2341;
                  v35[3] = &unk_278936630;
                  v35[4] = *(a1 + 32);
                  [WeakRetained setDomainCleaner:v35];

                  v27 = objc_loadWeakRetained((*(a1 + 32) + 216));
                  v34[0] = MEMORY[0x277D85DD0];
                  v34[1] = 3221225472;
                  v34[2] = __31__SPCoreSpotlightIndexer_start__block_invoke_3;
                  v34[3] = &unk_278936658;
                  v34[4] = *(a1 + 32);
                  [v27 setProviderMonitor:v34];

                  v28 = [MEMORY[0x277CC3538] sharedManager];
                  [*(a1 + 32) setExtensionDelegate:v28];
                }

                [*(a1 + 32) asyncOpenIndex:v20 forInit:1 readOnly:v21];
                startAllAgents(*(a1 + 32));
                v29 = dispatch_get_global_queue(17, 0);
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = __31__SPCoreSpotlightIndexer_start__block_invoke_4;
                block[3] = &unk_278934050;
                block[4] = *(a1 + 32);
                dispatch_async(v29, block);
              }

              v30 = *MEMORY[0x277D85DE8];
              return;
            }

LABEL_20:
            v19 = logForCSLogCategoryDefault();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf[0]) = 0;
              _os_log_impl(&dword_231A35000, v19, OS_LOG_TYPE_DEFAULT, "Very low disk space detected; opening CoreSpotlight index as read-only", buf, 2u);
            }

            v20 = 0;
            v21 = 1;
            sVeryLowDiskSpace = 1;
            goto LABEL_23;
          }
        }
      }
    }

LABEL_17:
    v18 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __31__SPCoreSpotlightIndexer_start__block_invoke_cold_3();
    }

    goto LABEL_20;
  }

  v6 = *(a1 + 32);
  v7 = *MEMORY[0x277D85DE8];

  startIndexAgent(v6);
}

uint64_t __31__SPCoreSpotlightIndexer_start__block_invoke_2341(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  v4 = dispatch_group_create();
  dispatch_group_enter(v4);
  v5 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __31__SPCoreSpotlightIndexer_start__block_invoke_2;
  v9[3] = &unk_278934F58;
  v11 = &v12;
  v6 = v4;
  v10 = v6;
  [v5 deleteSearchableItemsWithFileProviderDomains:v3 completionHandler:v9];
  dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __31__SPCoreSpotlightIndexer_start__block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  dispatch_group_leave(*(a1 + 32));
}

void __31__SPCoreSpotlightIndexer_start__block_invoke_4(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__SPCoreSpotlightIndexer_start__block_invoke_5;
  block[3] = &unk_278934050;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)dealloc
{
  dispatch_source_cancel(self->_prefsChangeSource);
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self->_dataMigrationFinishObserver];
  [v3 removeObserver:self->_dataMigrationStartObserver];
  [v3 removeObserver:self name:*MEMORY[0x277CC3540] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277CBD148] object:0];

  v4.receiver = self;
  v4.super_class = SPCoreSpotlightIndexer;
  [(SPCoreSpotlightIndexer *)&v4 dealloc];
}

- (void)_enumerateIndexersWithProtectionClasses:(id)a3 forQueryWithContext:(id)a4 forBundleIds:(id)a5 inferSpecialIndexes:(BOOL)a6 block:(id)a7
{
  v8 = a6;
  v53 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v39 = a4;
  v13 = a5;
  v14 = a7;
  if (!v12)
  {
    v12 = [objc_opt_class() allProtectionClasses];
  }

  v40 = v13;
  if (v8)
  {
    if (sUsePriorityIndex == 1 && needsSpecialIndexAdded(v12, v13, sPriorityBundleIds, @"Priority"))
    {
      v15 = [(SPCoreSpotlightIndexer *)self concreteIndexers];
      v16 = [v15 objectForKeyedSubscript:@"Priority"];

      if (v16)
      {
        v14[2](v14, v16);
      }
    }

    if (sUseMailIndex == 1)
    {
      if ([v13 containsObject:@"com.apple.mobilemail"])
      {
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v12 = v12;
        v17 = [v12 countByEnumeratingWithState:&v47 objects:v52 count:16];
        if (v17)
        {
          v18 = v17;
          v41 = 0;
          v19 = 0;
          v20 = *v48;
          v21 = *MEMORY[0x277CCA190];
          v22 = *MEMORY[0x277CCA1A0];
          do
          {
            v23 = v12;
            for (i = 0; i != v18; ++i)
            {
              if (*v48 != v20)
              {
                objc_enumerationMutation(v23);
              }

              v25 = *(*(&v47 + 1) + 8 * i);
              if ([v25 isEqualToString:v21])
              {
                v41 = 1;
              }

              else
              {
                v19 |= [v25 isEqualToString:v22];
              }
            }

            v12 = v23;
            v18 = [v23 countByEnumeratingWithState:&v47 objects:v52 count:16];
          }

          while (v18);

          if (v19 & 1 | ((v41 & 1) == 0))
          {
            v13 = v40;
            goto LABEL_27;
          }

          v26 = [v23 arrayByAddingObject:v22];

          v12 = logForCSLogCategoryQuery();
          v13 = v40;
          if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
          {
            [SPCoreSpotlightIndexer _enumerateIndexersWithProtectionClasses:v39 forQueryWithContext:v12 forBundleIds:? inferSpecialIndexes:? block:?];
          }
        }

        else
        {
          v26 = v12;
        }

        v12 = v26;
      }

LABEL_27:
      if (_enumerateIndexersWithProtectionClasses_forQueryWithContext_forBundleIds_inferSpecialIndexes_block__onceToken != -1)
      {
        [SPCoreSpotlightIndexer _enumerateIndexersWithProtectionClasses:forQueryWithContext:forBundleIds:inferSpecialIndexes:block:];
      }

      if (needsSpecialIndexAdded(v12, v13, _enumerateIndexersWithProtectionClasses_forQueryWithContext_forBundleIds_inferSpecialIndexes_block__mailBundleIDSet, @"MobileMailIndex"))
      {
        v27 = [(SPCoreSpotlightIndexer *)self concreteIndexers];
        v28 = [v27 objectForKeyedSubscript:@"MobileMailIndex"];

        if (v28)
        {
          v14[2](v14, v28);
        }
      }
    }
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v29 = v12;
  v30 = [v29 countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v44;
    v42 = *MEMORY[0x277CCA1A0];
    do
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v44 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v43 + 1) + 8 * j);
        v35 = [(SPCoreSpotlightIndexer *)self concreteIndexers];
        v36 = [v35 objectForKeyedSubscript:v34];

        if (!v36)
        {
          if (![v34 isEqualToString:@"Default"])
          {
            continue;
          }

          v37 = [(SPCoreSpotlightIndexer *)self concreteIndexers];
          v36 = [v37 objectForKeyedSubscript:v42];

          if (!v36)
          {
            continue;
          }
        }

        v14[2](v14, v36);
      }

      v31 = [v29 countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v31);
  }

  v38 = *MEMORY[0x277D85DE8];
}

uint64_t __125__SPCoreSpotlightIndexer__enumerateIndexersWithProtectionClasses_forQueryWithContext_forBundleIds_inferSpecialIndexes_block___block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithObject:@"com.apple.mobilemail"];
  v1 = _enumerateIndexersWithProtectionClasses_forQueryWithContext_forBundleIds_inferSpecialIndexes_block__mailBundleIDSet;
  _enumerateIndexersWithProtectionClasses_forQueryWithContext_forBundleIds_inferSpecialIndexes_block__mailBundleIDSet = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)_registerForPrefsChanges
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __50__SPCoreSpotlightIndexer__registerForPrefsChanges__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v15 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      __50__SPCoreSpotlightIndexer__registerForPrefsChanges__block_invoke_cold_1();
    }

    v16 = [WeakRetained prefsChangeSource];
    dispatch_source_merge_data(v16, 1uLL);
  }

  objc_autoreleasePoolPop(v13);
}

- (void)_reindexAllItemsOnPrefsChanges
{
  p_prefsDisabledBundleIDs = &self->_prefsDisabledBundleIDs;
  v4 = self->_prefsDisabledBundleIDs;
  v5 = [sDelegate disabledBundleSet];
  objc_storeStrong(p_prefsDisabledBundleIDs, v5);
  if ([(NSSet *)v4 count])
  {
    v6 = [(NSSet *)v4 mutableCopy];
    [v6 minusSet:v5];
    if ([v6 count])
    {
      dispatch_suspend(self->_reindexAllQueue);
      v7 = [v6 allObjects];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __56__SPCoreSpotlightIndexer__reindexAllItemsOnPrefsChanges__block_invoke;
      v8[3] = &unk_278934050;
      v8[4] = self;
      [(SPCoreSpotlightIndexer *)self _reindexAllItemsForBundleIDs:v7 reason:@"prefs-changes" completionHandler:v8];
    }
  }
}

- (void)_reindexAllItemsForBundleIDs:(id)a3 reason:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SPCoreSpotlightIndexer *)self concreteIndexers];
  if ([v8 count] && v11)
  {
    v12 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [SPCoreSpotlightIndexer _reindexAllItemsForBundleIDs:reason:completionHandler:];
    }

    v13 = [objc_alloc(MEMORY[0x277CC3420]) initWithJobType:2];
    [v13 setReason:v9];
    v14 = [SPCoreSpotlightIndexerTask alloc];
    v15 = [v11 allValues];
    v16 = [(SPCoreSpotlightIndexerTask *)v14 initWithIndexJob:v13 indexers:v15];

    [(SPCoreSpotlightIndexerTask *)v16 setBundleIDs:v8];
    if ([v8 containsObject:@"com.apple.mobileslideshow"])
    {
      _sendPhotosReindexABCReport(@"Reindex bundleIDs call -- all PCs");
    }

    [(SPCoreSpotlightIndexer *)self performIndexerTask:v16 completionHandler:v10];
  }

  else if (v10)
  {
    v10[2](v10);
  }
}

- (void)preheat
{
  v2 = sIndexQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__SPCoreSpotlightIndexer_preheat__block_invoke;
  v4[3] = &unk_278934050;
  v4[4] = self;
  v3 = _setup_block(v4, 0, 16750);
  dispatch_async(v2, v3);
}

- (void)flush
{
  v3 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_INFO, "flush", buf, 2u);
  }

  v4 = dispatch_group_create();
  v5 = sIndexQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31__SPCoreSpotlightIndexer_flush__block_invoke;
  v7[3] = &unk_278934050;
  v7[4] = self;
  v6 = _setup_block(v7, 0, 16766);
  dispatch_group_async(v4, v5, v6);

  dispatch_group_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
}

void __31__SPCoreSpotlightIndexer_flush__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 index])
  {
    [v2 index];
    SISyncIndexForLikelyShutdown();
    [v2 setDirtyTimeout:256];
  }
}

- (void)commitUpdatesWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [SPCoreSpotlightIndexer commitUpdatesWithCompletionHandler:];
  }

  v5 = v4;
  v6 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_231A35000, v6, OS_LOG_TYPE_INFO, "commitUpdatesWithCompletionHandler", buf, 2u);
  }

  v7 = dispatch_group_create();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__SPCoreSpotlightIndexer_commitUpdatesWithCompletionHandler___block_invoke;
  v11[3] = &unk_2789366A0;
  v12 = v7;
  v8 = v7;
  [(SPCoreSpotlightIndexer *)self _enumerateIndexersWithBlock:v11];
  v9 = sIndexQueue;
  v10 = _setup_block(v5, 0, 16782);
  dispatch_group_notify(v8, v9, v10);
}

- (void)commitUpdates
{
  v3 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_INFO, "commitUpdates", buf, 2u);
  }

  v4 = dispatch_group_create();
  dispatch_group_enter(v4);
  v5 = sIndexQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__SPCoreSpotlightIndexer_commitUpdates__block_invoke;
  v8[3] = &unk_2789342C0;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  v7 = _setup_block(v8, 0, 16796);
  dispatch_async(v5, v7);

  dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
}

void __39__SPCoreSpotlightIndexer_commitUpdates__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __39__SPCoreSpotlightIndexer_commitUpdates__block_invoke_2;
  v2[3] = &unk_278934050;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 commitUpdatesWithCompletionHandler:v2];
}

- (void)issueSplit:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v14[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = dispatch_group_create();
  v8 = sIndexQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __37__SPCoreSpotlightIndexer_issueSplit___block_invoke;
  v12[3] = &unk_2789342C0;
  v12[4] = self;
  v13 = v6;
  v9 = v6;
  v10 = _setup_block(v12, 0, 16811);
  dispatch_group_async(v7, v8, v10);

  dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)mergeWithProtectionClasses:(id)a3 power:(BOOL)a4 inferSpecialIndexes:(BOOL)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a6;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __97__SPCoreSpotlightIndexer_mergeWithProtectionClasses_power_inferSpecialIndexes_completionHandler___block_invoke;
  v17[3] = &unk_278936740;
  v18 = v10;
  v19 = self;
  v21 = a5;
  v22 = a4;
  v20 = v11;
  v12 = v11;
  v13 = v10;
  v14 = MEMORY[0x2383760E0](v17);
  v15 = sIndexQueue;
  v16 = _setup_block(v14, 0, 16858);
  dispatch_async(v15, v16);
}

void __97__SPCoreSpotlightIndexer_mergeWithProtectionClasses_power_inferSpecialIndexes_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v3 = dispatch_group_create();
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 56);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __97__SPCoreSpotlightIndexer_mergeWithProtectionClasses_power_inferSpecialIndexes_completionHandler___block_invoke_2;
  v15[3] = &unk_278936718;
  v16 = v3;
  v18 = *(a1 + 57);
  v7 = v2;
  v17 = v7;
  v8 = v3;
  [v4 _enumerateIndexersWithProtectionClasses:v5 inferSpecialIndexes:v6 block:v15];
  v9 = dispatch_get_global_queue(17, 2uLL);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__SPCoreSpotlightIndexer_mergeWithProtectionClasses_power_inferSpecialIndexes_completionHandler___block_invoke_2369;
  block[3] = &unk_278934078;
  v10 = *(a1 + 48);
  v13 = v7;
  v14 = v10;
  v11 = v7;
  dispatch_group_notify(v8, v9, block);
}

void __97__SPCoreSpotlightIndexer_mergeWithProtectionClasses_power_inferSpecialIndexes_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_enter(*(a1 + 32));
  v4 = *(a1 + 48);
  v5 = logForCSLogCategoryIndex();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v4 == 1)
  {
    if (v6)
    {
      __97__SPCoreSpotlightIndexer_mergeWithProtectionClasses_power_inferSpecialIndexes_completionHandler___block_invoke_2_cold_2();
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __97__SPCoreSpotlightIndexer_mergeWithProtectionClasses_power_inferSpecialIndexes_completionHandler___block_invoke_2363;
    v14[3] = &unk_2789366F0;
    v7 = &v15;
    v15 = v3;
    v8 = &v16;
    v16 = *(a1 + 40);
    v9 = &v17;
    v17 = *(a1 + 32);
    [v3 scheduleMaintenance:v14 description:@"searchutil forced maintenance" forDarkWake:1];
  }

  else
  {
    if (v6)
    {
      __97__SPCoreSpotlightIndexer_mergeWithProtectionClasses_power_inferSpecialIndexes_completionHandler___block_invoke_2_cold_1();
    }

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __97__SPCoreSpotlightIndexer_mergeWithProtectionClasses_power_inferSpecialIndexes_completionHandler___block_invoke_2368;
    v10[3] = &unk_2789358D0;
    v7 = &v11;
    v11 = v3;
    v8 = &v12;
    v12 = *(a1 + 40);
    v9 = &v13;
    v13 = *(a1 + 32);
    [v3 mergeWithCompletionHandler:v10];
  }
}

void __97__SPCoreSpotlightIndexer_mergeWithProtectionClasses_power_inferSpecialIndexes_completionHandler___block_invoke_2363(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __97__SPCoreSpotlightIndexer_mergeWithProtectionClasses_power_inferSpecialIndexes_completionHandler___block_invoke_2363_cold_1();
  }

  dispatch_group_enter(v6);
  v8 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __97__SPCoreSpotlightIndexer_mergeWithProtectionClasses_power_inferSpecialIndexes_completionHandler___block_invoke_2364;
  v10[3] = &unk_2789366C8;
  v11 = v8;
  v12 = *(a1 + 40);
  v13 = v6;
  v14 = *(a1 + 48);
  v9 = v6;
  [v11 mergeWithCompletionHandler:v10];
}

void __97__SPCoreSpotlightIndexer_mergeWithProtectionClasses_power_inferSpecialIndexes_completionHandler___block_invoke_2364(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) dataclass];
      v11 = 138412546;
      v12 = v5;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_DEFAULT, "*warn* Failed to merge the index for dataclass:%@, error:%@", &v11, 0x16u);
    }
  }

  v6 = *(a1 + 40);
  objc_sync_enter(v6);
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v3 == 0];
  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) dataclass];
  [v8 setObject:v7 forKeyedSubscript:v9];

  objc_sync_exit(v6);
  dispatch_group_leave(*(a1 + 48));
  dispatch_group_leave(*(a1 + 56));

  v10 = *MEMORY[0x277D85DE8];
}

void __97__SPCoreSpotlightIndexer_mergeWithProtectionClasses_power_inferSpecialIndexes_completionHandler___block_invoke_2368(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) dataclass];
      v11 = 138412546;
      v12 = v5;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_DEFAULT, "*warn* Failed to merge the index for dataclass:%@, error:%@", &v11, 0x16u);
    }
  }

  v6 = *(a1 + 40);
  objc_sync_enter(v6);
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v3 == 0];
  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) dataclass];
  [v8 setObject:v7 forKeyedSubscript:v9];

  objc_sync_exit(v6);
  dispatch_group_leave(*(a1 + 48));

  v10 = *MEMORY[0x277D85DE8];
}

void __97__SPCoreSpotlightIndexer_mergeWithProtectionClasses_power_inferSpecialIndexes_completionHandler___block_invoke_2369(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v2);
}

- (void)cleanupStringsWithProtectionClasses:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __80__SPCoreSpotlightIndexer_cleanupStringsWithProtectionClasses_completionHandler___block_invoke;
  v13[3] = &unk_278934F08;
  v14 = v6;
  v15 = self;
  v16 = v7;
  v8 = v7;
  v9 = v6;
  v10 = MEMORY[0x2383760E0](v13);
  v11 = sIndexQueue;
  v12 = _setup_block(v10, 0, 16894);
  dispatch_async(v11, v12);
}

void __80__SPCoreSpotlightIndexer_cleanupStringsWithProtectionClasses_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v3 = dispatch_group_create();
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __80__SPCoreSpotlightIndexer_cleanupStringsWithProtectionClasses_completionHandler___block_invoke_2;
  v14[3] = &unk_278936768;
  v15 = v3;
  v6 = v2;
  v16 = v6;
  v7 = v3;
  [v4 _enumerateIndexersWithProtectionClasses:v5 block:v14];
  v8 = dispatch_get_global_queue(9, 2uLL);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__SPCoreSpotlightIndexer_cleanupStringsWithProtectionClasses_completionHandler___block_invoke_2370;
  v11[3] = &unk_278934078;
  v9 = *(a1 + 48);
  v12 = v6;
  v13 = v9;
  v10 = v6;
  dispatch_group_notify(v7, v8, v11);
}

void __80__SPCoreSpotlightIndexer_cleanupStringsWithProtectionClasses_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_enter(*(a1 + 32));
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __80__SPCoreSpotlightIndexer_cleanupStringsWithProtectionClasses_completionHandler___block_invoke_3;
  v5[3] = &unk_2789358D0;
  v6 = v3;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v4 = v3;
  [v4 cleanupStringsWithCompletionHandler:v5];
}

void __80__SPCoreSpotlightIndexer_cleanupStringsWithProtectionClasses_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) dataclass];
      v11 = 138412546;
      v12 = v5;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_DEFAULT, "Failed to cleanup the strings for dataclass:%@, error:%@", &v11, 0x16u);
    }
  }

  v6 = *(a1 + 40);
  objc_sync_enter(v6);
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v3 == 0];
  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) dataclass];
  [v8 setObject:v7 forKeyedSubscript:v9];

  objc_sync_exit(v6);
  dispatch_group_leave(*(a1 + 48));

  v10 = *MEMORY[0x277D85DE8];
}

void __80__SPCoreSpotlightIndexer_cleanupStringsWithProtectionClasses_completionHandler___block_invoke_2370(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v2);
}

- (void)issueRepair:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v14[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = dispatch_group_create();
  v8 = sIndexQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __38__SPCoreSpotlightIndexer_issueRepair___block_invoke;
  v12[3] = &unk_2789342C0;
  v12[4] = self;
  v13 = v6;
  v9 = v6;
  v10 = _setup_block(v12, 0, 16907);
  dispatch_group_async(v7, v8, v10);

  dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)issueCleanup:(id)a3 flags:(int)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  dispatch_assert_queue_not_V2(self->_indexQueue);
  if (v6)
  {
    v16[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = dispatch_group_create();
  v9 = sIndexQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __45__SPCoreSpotlightIndexer_issueCleanup_flags___block_invoke;
  v13[3] = &unk_278934428;
  v13[4] = self;
  v14 = v7;
  v15 = a4;
  v10 = v7;
  v11 = _setup_block(v13, 0, 16922);
  dispatch_group_async(v8, v9, v11);

  dispatch_group_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __45__SPCoreSpotlightIndexer_issueCleanup_flags___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__SPCoreSpotlightIndexer_issueCleanup_flags___block_invoke_2;
  v4[3] = &__block_descriptor_36_e40_v16__0__SPConcreteCoreSpotlightIndexer_8l;
  v5 = *(a1 + 48);
  return [v2 _enumerateIndexersWithProtectionClasses:v1 inferSpecialIndexes:0 block:v4];
}

- (void)issueDefrag:(id)a3 group:(id)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v18[0] = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  }

  else
  {
    v8 = 0;
  }

  v9 = v7;
  if (!v7)
  {
    v9 = dispatch_group_create();
  }

  v10 = sIndexQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __44__SPCoreSpotlightIndexer_issueDefrag_group___block_invoke;
  v15[3] = &unk_278934130;
  v15[4] = self;
  v11 = v8;
  v16 = v11;
  v12 = v9;
  v17 = v12;
  v13 = _setup_block(v15, 0, 16940);
  dispatch_group_async(v12, v10, v13);

  if (!v7)
  {
    dispatch_group_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __44__SPCoreSpotlightIndexer_issueDefrag_group___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__SPCoreSpotlightIndexer_issueDefrag_group___block_invoke_2;
  v3[3] = &unk_2789366A0;
  v4 = *(a1 + 48);
  [v1 _enumerateIndexersWithProtectionClasses:v2 inferSpecialIndexes:0 block:v3];
}

- (void)issueSharedDocumentAttributeFixup
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)issueDumpReverse:(unint64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = sIndexQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__SPCoreSpotlightIndexer_issueDumpReverse_completionHandler___block_invoke;
  v10[3] = &unk_2789367D8;
  v11 = v6;
  v12 = a3;
  v10[4] = self;
  v8 = v6;
  v9 = _setup_block(v10, 0, 17062);
  dispatch_async(v7, v9);
}

void __61__SPCoreSpotlightIndexer_issueDumpReverse_completionHandler___block_invoke(void *a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v9[0] = *MEMORY[0x277CCA1A0];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__SPCoreSpotlightIndexer_issueDumpReverse_completionHandler___block_invoke_2;
  v6[3] = &unk_2789367B0;
  v4 = a1[5];
  v8 = a1[6];
  v7 = v4;
  [v2 _enumerateIndexersWithProtectionClasses:v3 block:v6];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)issueDumpForward:(unint64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = sIndexQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__SPCoreSpotlightIndexer_issueDumpForward_completionHandler___block_invoke;
  v10[3] = &unk_2789367D8;
  v11 = v6;
  v12 = a3;
  v10[4] = self;
  v8 = v6;
  v9 = _setup_block(v10, 0, 17071);
  dispatch_async(v7, v9);
}

void __61__SPCoreSpotlightIndexer_issueDumpForward_completionHandler___block_invoke(void *a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v9[0] = *MEMORY[0x277CCA1A0];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__SPCoreSpotlightIndexer_issueDumpForward_completionHandler___block_invoke_2;
  v6[3] = &unk_2789367B0;
  v4 = a1[5];
  v8 = a1[6];
  v7 = v4;
  [v2 _enumerateIndexersWithProtectionClasses:v3 block:v6];

  v5 = *MEMORY[0x277D85DE8];
}

- (id)issueHeartbeat
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D657E8] lastLoadedBundleVersion];
  pthread_rwlock_wrlock(&sIndexHeartbeatLock);
  v3 = indexHeartbeatPath();
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = time(0);
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v6 fileExistsAtPath:v3];

  v8 = 0;
  if (v7)
  {
    v9 = [MEMORY[0x277CBEB38] dictionaryWithContentsOfFile:v3];
    v8 = v9;
    if (v9)
    {
      v10 = [v9 objectForKeyedSubscript:@"v2"];

      if (v10)
      {
        v11 = newHeartbeatDict();

        v8 = v11;
      }
    }

    v26 = v3;
    if (v2)
    {
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v2];
      [v8 setObject:v12 forKeyedSubscript:@"otaversion"];
    }

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __40__SPCoreSpotlightIndexer_issueHeartbeat__block_invoke;
    v33[3] = &unk_278936800;
    v34 = v4;
    v35 = v5;
    [v8 enumerateKeysAndObjectsUsingBlock:v33];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v13 = [&unk_2846C96E0 allValues];
    v14 = [v13 countByEnumeratingWithState:&v29 objects:v36 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v30;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v30 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"pc%@_%@", *(*(&v29 + 1) + 8 * i), @"wipes"];
          [v8 setObject:&unk_2846C9680 forKeyedSubscript:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v29 objects:v36 count:16];
      }

      while (v15);
    }

    v19 = [MEMORY[0x277CCABB0] numberWithLong:v5];
    [v8 setObject:v19 forKeyedSubscript:@"lastSent"];

    v3 = v26;
  }

  v20 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];
  v28 = 0;
  [v8 writeToURL:v20 error:&v28];
  v21 = v28;

  if (v21)
  {
    v22 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [SPCoreSpotlightIndexer issueHeartbeat];
    }
  }

  pthread_rwlock_unlock(&sIndexHeartbeatLock);
  v27 = v4;
  AnalyticsSendEventLazy();
  v23 = v27;

  v24 = *MEMORY[0x277D85DE8];
  return v27;
}

void __40__SPCoreSpotlightIndexer_issueHeartbeat__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      if (([v8 hasSuffix:@"_age"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"timesinceboot") & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"timesinceupdate"))
      {
        if (([v6 longValue] & 0x8000000000000000) == 0)
        {
          v7 = [MEMORY[0x277CCABB0] numberWithLong:{*(a1 + 40) - objc_msgSend(v6, "longValue")}];
          [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
        }

        goto LABEL_8;
      }

      if (([v8 hasSuffix:@"_wipes"] & 1) != 0 || (objc_msgSend(v8, "hasSuffix:", @"_wipes_aggregate") & 1) != 0 || objc_msgSend(v8, "hasSuffix:", @"_obj_count"))
      {
        if ([v6 longValue] < 0)
        {
LABEL_8:

          goto LABEL_12;
        }
      }

      else if ([v8 isEqualToString:@"lastSent"])
      {
        goto LABEL_8;
      }

      [*(a1 + 32) setObject:v6 forKeyedSubscript:v8];
      goto LABEL_8;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v8 isEqualToString:@"build"] & 1) == 0)
    {
      [*(a1 + 32) setObject:v5 forKeyedSubscript:v8];
    }
  }

LABEL_12:
}

- (id)dumpIndexAgesAtPath:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = time(0);
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v6 fileExistsAtPath:v3];

  if (v7)
  {
    v8 = [MEMORY[0x277CBEB38] dictionaryWithContentsOfFile:v3];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 objectForKeyedSubscript:@"v2"];

      if (v10)
      {
        v11 = newHeartbeatDict();

        v9 = v11;
      }
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __46__SPCoreSpotlightIndexer_dumpIndexAgesAtPath___block_invoke;
    v13[3] = &unk_278936800;
    v14 = v4;
    v15 = v5;
    [v9 enumerateKeysAndObjectsUsingBlock:v13];
  }

  return v4;
}

void __46__SPCoreSpotlightIndexer_dumpIndexAgesAtPath___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      if ((([v8 hasSuffix:@"_age"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"timesinceboot") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"timesinceupdate") & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"lastSent")) && (objc_msgSend(v6, "longValue") & 0x8000000000000000) == 0)
      {
        v7 = [MEMORY[0x277CCABB0] numberWithLong:{*(a1 + 40) - objc_msgSend(v6, "longValue")}];
        [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
      }

      else
      {
        [*(a1 + 32) setObject:v6 forKeyedSubscript:v8];
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(a1 + 32) setObject:v5 forKeyedSubscript:v8];
      }
    }
  }
}

- (id)dumpIndexAges
{
  pthread_rwlock_rdlock(&sIndexHeartbeatLock);
  v3 = indexHeartbeatPath();
  v4 = [(SPCoreSpotlightIndexer *)self dumpIndexAgesAtPath:v3];
  pthread_rwlock_unlock(&sIndexHeartbeatLock);

  return v4;
}

- (id)dumpIndexAnalyticsAtPath:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = time(0);
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v6 fileExistsAtPath:v3];

  if (v7)
  {
    v8 = [MEMORY[0x277CBEB38] dictionaryWithContentsOfFile:v3];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __51__SPCoreSpotlightIndexer_dumpIndexAnalyticsAtPath___block_invoke;
    v10[3] = &unk_278936800;
    v11 = v4;
    v12 = v5;
    [v8 enumerateKeysAndObjectsUsingBlock:v10];
  }

  return v4;
}

void __51__SPCoreSpotlightIndexer_dumpIndexAnalyticsAtPath___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v13;
      v7 = v5;
      v8 = [v7 longValue];
      v9 = MEMORY[0x277CCABB0];
      if (v8 < 0)
      {
        v11 = -1;
      }

      else
      {
        v10 = *(a1 + 40);
        v11 = v10 - [v7 longValue];
      }

      v12 = [v9 numberWithLong:v11];
      [*(a1 + 32) setObject:v12 forKeyedSubscript:v6];
    }
  }
}

- (id)dumpIndexAnalytics
{
  pthread_rwlock_rdlock(&sIndexOpenRecordLock);
  v3 = indexOpenRecordPath();
  v4 = [(SPCoreSpotlightIndexer *)self dumpIndexAnalyticsAtPath:v3];
  pthread_rwlock_unlock(&sIndexOpenRecordLock);

  return v4;
}

- (id)sendAnalytics:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"heartbeat"])
  {
    v5 = [(SPCoreSpotlightIndexer *)self issueHeartbeat];
  }

  else if ([v4 hasPrefix:@"indexloss"])
  {
    v6 = [v4 componentsSeparatedByString:@"-"];
    v7 = [v6 objectAtIndexedSubscript:1];
    v8 = [(SPCoreSpotlightIndexer *)self concreteIndexers];
    v9 = [v8 objectForKeyedSubscript:v7];

    LOBYTE(v11) = 0;
    v5 = [v9 indexLossAnalyticsDictWithPreviousIndexCreationDate:0 size:0 openingInReadOnly:0 fullyCreated:1 markedPurgeable:0 vectorIndexDrop:0 forAnalytics:v11];
    AnalyticsSendEventLazy();
  }

  else
  {
    v5 = &unk_2846C9730;
  }

  return v5;
}

- (void)issueBundleFixup:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_group_create();
  v9 = sIndexQueue;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __61__SPCoreSpotlightIndexer_issueBundleFixup_completionHandler___block_invoke;
  v18[3] = &unk_278934130;
  v18[4] = self;
  v19 = v6;
  v20 = v8;
  v10 = v8;
  v11 = v6;
  v12 = _setup_block(v18, 0, 17232);
  dispatch_group_async(v10, v9, v12);

  v13 = qos_class_self();
  v14 = dispatch_get_global_queue(v13, 0);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __61__SPCoreSpotlightIndexer_issueBundleFixup_completionHandler___block_invoke_3;
  v16[3] = &unk_2789341A8;
  v17 = v7;
  v15 = v7;
  dispatch_group_notify(v10, v14, v16);
}

void __61__SPCoreSpotlightIndexer_issueBundleFixup_completionHandler___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v8[0] = *(a1 + 40);
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  }

  else
  {
    v4 = 0;
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__SPCoreSpotlightIndexer_issueBundleFixup_completionHandler___block_invoke_2;
  v6[3] = &unk_2789366A0;
  v7 = *(a1 + 48);
  [v2 _enumerateIndexersWithProtectionClasses:v4 inferSpecialIndexes:0 block:v6];
  if (v3)
  {
  }

  v5 = *MEMORY[0x277D85DE8];
}

+ (id)fileProviderProtectionClasses
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = *MEMORY[0x277CCA1A0];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)deleteSearchableItemsWithFileProviderDomains:(id)a3 completionHandler:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v16 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_fileProviderMonitor);

  if (WeakRetained)
  {
    _checkUnlock();
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x3032000000;
    v28[3] = __Block_byref_object_copy__0;
    v28[4] = __Block_byref_object_dispose__0;
    v29 = 0;
    v7 = dispatch_group_create();
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = [objc_opt_class() fileProviderProtectionClasses];
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v9)
    {
      v10 = *v25;
      do
      {
        v11 = 0;
        do
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = [(NSDictionary *)self->_concreteIndexers objectForKeyedSubscript:*(*(&v24 + 1) + 8 * v11)];
          if (v12)
          {
            dispatch_group_enter(v7);
            v21[0] = MEMORY[0x277D85DD0];
            v21[1] = 3221225472;
            v21[2] = __89__SPCoreSpotlightIndexer_deleteSearchableItemsWithFileProviderDomains_completionHandler___block_invoke;
            v21[3] = &unk_278934F58;
            v23 = v28;
            v22 = v7;
            [v12 deleteSearchableItemsWithFileProviderDomains:v17 completionHandler:v21];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v9);
    }

    self->_lastUpdateTime = CFAbsoluteTimeGetCurrent();
    v13 = sIndexQueue;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __89__SPCoreSpotlightIndexer_deleteSearchableItemsWithFileProviderDomains_completionHandler___block_invoke_2;
    v18[3] = &unk_278936850;
    v18[4] = self;
    v19 = v16;
    v20 = v28;
    v14 = _setup_block(v18, 0, 17285);
    dispatch_group_notify(v7, v13, v14);

    _Block_object_dispose(v28, 8);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __89__SPCoreSpotlightIndexer_deleteSearchableItemsWithFileProviderDomains_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __89__SPCoreSpotlightIndexer_deleteSearchableItemsWithFileProviderDomains_completionHandler___block_invoke_2(void *a1)
{
  *(a1[4] + 32) = CFAbsoluteTimeGetCurrent();
  v2 = *(*(a1[6] + 8) + 40);
  v3 = *(a1[5] + 16);

  return v3();
}

- (void)issuePathFixup:(id)a3
{
  v4 = a3;
  v5 = dispatch_group_create();
  v6 = sIndexQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __41__SPCoreSpotlightIndexer_issuePathFixup___block_invoke;
  v9[3] = &unk_2789342C0;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  v8 = _setup_block(v9, 0, 17296);
  dispatch_group_async(v5, v6, v8);

  dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
}

void __41__SPCoreSpotlightIndexer_issuePathFixup___block_invoke(uint64_t a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v4[0] = *(a1 + 40);
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  [v1 _enumerateIndexersWithProtectionClasses:v2 inferSpecialIndexes:0 block:&__block_literal_global_2424];

  v3 = *MEMORY[0x277D85DE8];
}

- (void)issueResolveFPItem:(id)a3 completionHandler:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1001 userInfo:0];
    v10 = 0;
    v12 = 0;
    if (!v6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = [SPConcreteCoreSpotlightIndexer fetchParentsForItemID:v5 recursively:1 timeout:-1];
  v8 = MEMORY[0x277CCACA8];
  v9 = [v7 componentsJoinedByString:{@", "}];
  v10 = [v8 stringWithFormat:@"itemID: %@ parents[%@]", v5, v9];

  v11 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v10;
    _os_log_impl(&dword_231A35000, v11, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v12 = [v10 dataUsingEncoding:4];

  v13 = 0;
  if (v6)
  {
LABEL_5:
    v6[2](v6, v12, v13);
  }

LABEL_6:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)issueResolveFPItemForBundle:(id)a3 domain:(id)a4 identifier:(id)a5 completionHandler:(id)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v11 length];
  v15 = *MEMORY[0x277CC62F8];
  if (v14)
  {
    v15 = v11;
  }

  v16 = v15;
  v17 = [objc_alloc(MEMORY[0x277CC6400]) initWithProviderID:v10 domainIdentifier:v16 coreSpotlightIdentifier:v12];
  v18 = logForCSLogCategoryIndex();
  v19 = v18;
  if (v17)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138413058;
      v22 = v10;
      v23 = 2112;
      v24 = v16;
      v25 = 2112;
      v26 = v12;
      v27 = 2112;
      v28 = v17;
      _os_log_impl(&dword_231A35000, v19, OS_LOG_TYPE_DEFAULT, "bundle: %@ domain: %@ identifier: %@ ->  %@", &v21, 0x2Au);
    }
  }

  else if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v21 = 138412802;
    v22 = v10;
    v23 = 2112;
    v24 = v16;
    v25 = 2112;
    v26 = v12;
    _os_log_error_impl(&dword_231A35000, v19, OS_LOG_TYPE_ERROR, "Failed to resolve FPItemID for bundle: %@ domain: %@ identifier: %@", &v21, 0x20u);
  }

  [(SPCoreSpotlightIndexer *)self issueResolveFPItem:v17 completionHandler:v13];
  v20 = *MEMORY[0x277D85DE8];
}

- (void)issueResolveFPItemForURL:(id)a3 completionHandler:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [SPConcreteCoreSpotlightIndexer fetchItemForURL:v6];
  v9 = [v8 itemID];
  v10 = logForCSLogCategoryIndex();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = v6;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_231A35000, v11, OS_LOG_TYPE_DEFAULT, "Resolved %@ ->  %@", &v13, 0x16u);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [SPCoreSpotlightIndexer issueResolveFPItemForURL:completionHandler:];
  }

  [(SPCoreSpotlightIndexer *)self issueResolveFPItem:v9 completionHandler:v7];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)issueConsistencyCheck:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v14[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = dispatch_group_create();
  v8 = sIndexQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__SPCoreSpotlightIndexer_issueConsistencyCheck___block_invoke;
  v12[3] = &unk_2789342C0;
  v12[4] = self;
  v13 = v6;
  v9 = v6;
  v10 = _setup_block(v12, 0, 17364);
  dispatch_group_async(v7, v8, v10);

  dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)issueDuplicateOidCheckWithGroup:(id)a3 protected:(BOOL)a4
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__SPCoreSpotlightIndexer_issueDuplicateOidCheckWithGroup_protected___block_invoke;
  v8[3] = &unk_278934400;
  v9 = a4;
  v8[4] = self;
  v4 = a3;
  v5 = MEMORY[0x2383760E0](v8);
  v6 = sIndexQueue;
  v7 = _setup_block(v5, 0, 17390);
  dispatch_group_async(v4, v6, v7);
}

void __68__SPCoreSpotlightIndexer_issueDuplicateOidCheckWithGroup_protected___block_invoke(uint64_t a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  if (*(a1 + 40) == 1)
  {
    _checkUnlock();
    v2 = *MEMORY[0x277CCA198];
    v9[0] = *MEMORY[0x277CCA190];
    v9[1] = v2;
    v9[2] = *MEMORY[0x277CCA1A8];
    v3 = MEMORY[0x277CBEA60];
    v4 = v9;
    v5 = 3;
  }

  else
  {
    v8 = *MEMORY[0x277CCA1A0];
    v3 = MEMORY[0x277CBEA60];
    v4 = &v8;
    v5 = 1;
  }

  v6 = [v3 arrayWithObjects:v4 count:v5];
  [*(a1 + 32) _enumerateIndexersWithProtectionClasses:v6 block:&__block_literal_global_2431];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)issueDuplicateOidCheck:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v14[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = dispatch_group_create();
  v8 = sIndexQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __49__SPCoreSpotlightIndexer_issueDuplicateOidCheck___block_invoke;
  v12[3] = &unk_2789342C0;
  v12[4] = self;
  v13 = v6;
  v9 = v6;
  v10 = _setup_block(v12, 0, 17402);
  dispatch_group_async(v7, v8, v10);

  dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)issueMessagesFixup:(id)a3
{
  v4 = a3;
  v5 = sIndexQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__SPCoreSpotlightIndexer_issueMessagesFixup___block_invoke;
  v8[3] = &unk_278934F30;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  v7 = _setup_block(v8, 0, 17416);
  dispatch_async(v5, v7);
}

void __45__SPCoreSpotlightIndexer_issueMessagesFixup___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) concreteIndexerForProtectionClass:*MEMORY[0x277CCA1A0] andBundleID:@"com.apple.MobileSMS"];
  if (v2)
  {
    v5 = v2;
    [v2 readyIndex:0];
    [v5 issueMessagesFixup:*(a1 + 40)];
  }

  else
  {
    v3 = *(a1 + 40);
    if (!v3)
    {
      goto LABEL_6;
    }

    v5 = 0;
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    (*(v3 + 16))(v3, v4);
  }

  v2 = v5;
LABEL_6:
}

- (void)coolDown
{
  dispatch_assert_queue_not_V2(self->_indexQueue);
  v3 = dispatch_group_create();
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__SPCoreSpotlightIndexer_coolDown__block_invoke;
  v5[3] = &unk_2789366A0;
  v6 = v3;
  v4 = v3;
  [(SPCoreSpotlightIndexer *)self _enumerateIndexersWithProtectionClasses:0 block:v5];
  dispatch_group_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
}

void __34__SPCoreSpotlightIndexer_coolDown__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sIndexQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __34__SPCoreSpotlightIndexer_coolDown__block_invoke_2;
  v8[3] = &unk_2789342C0;
  v9 = v3;
  v5 = *(a1 + 32);
  v10 = v5;
  v6 = v3;
  v7 = _setup_block(v8, 0, 17428);
  dispatch_group_async(v5, v4, v7);
}

- (void)shrink:(unint64_t)a3
{
  v3 = sIndexQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__SPCoreSpotlightIndexer_shrink___block_invoke;
  v5[3] = &unk_2789343B0;
  v5[4] = self;
  v5[5] = a3;
  v4 = _setup_block(v5, 0, 17439);
  dispatch_async(v3, v4);
}

uint64_t __33__SPCoreSpotlightIndexer_shrink___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __33__SPCoreSpotlightIndexer_shrink___block_invoke_2;
  v3[3] = &__block_descriptor_40_e40_v16__0__SPConcreteCoreSpotlightIndexer_8l;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 _enumerateIndexersWithProtectionClasses:0 block:v3];
}

- (void)_closeIndexWithIndexers:(id)a3
{
  v21[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_indexQueue);
  if ((deviceUnlocked & 1) == 0)
  {
    SIResumeForUnlock();
  }

  cf = 0;
  v20[0] = @"MKBAssertionKey";
  v20[1] = @"MKBAssertionTimeout";
  v21[0] = @"Other";
  v21[1] = &unk_2846C9698;
  [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v5 = MKBDeviceLockAssertion();
  v6 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = v5;
    v18 = 2112;
    v19 = cf;
    _os_log_impl(&dword_231A35000, v6, OS_LOG_TYPE_DEFAULT, "Took lock assertion for close %@, err: %@", buf, 0x16u);
  }

  v7 = dispatch_group_create();
  v8 = sIndexQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __50__SPCoreSpotlightIndexer__closeIndexWithIndexers___block_invoke;
  v13[3] = &unk_278934050;
  v9 = v4;
  v14 = v9;
  v10 = _setup_block(v13, 0, 17460);
  dispatch_group_async(v7, v8, v10);

  dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v11 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v5;
    _os_log_impl(&dword_231A35000, v11, OS_LOG_TYPE_DEFAULT, "Releasing assertion %@", buf, 0xCu);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __50__SPCoreSpotlightIndexer__closeIndexWithIndexers___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = [*(a1 + 32) reverseObjectEnumerator];
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ((deviceUnlocked & 1) == 0)
        {
          SIResumeForUnlock();
        }

        [v6 closeIndex];
      }

      v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)closeIndex
{
  v4 = [(SPCoreSpotlightIndexer *)self concreteIndexers];
  v3 = [v4 allValues];
  [(SPCoreSpotlightIndexer *)self _closeIndexWithIndexers:v3];
}

- (void)shutdown
{
  v3 = [(SPCoreSpotlightIndexer *)self concreteIndexers];
  [(SPCoreSpotlightIndexer *)self setConcreteIndexers:0];
  suspendAllAgents();
  SIWaitForAllIndexShutdown();
  v4 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_DEFAULT, "SPCoreSpotlightIndexer shutdown complete", v5, 2u);
  }
}

- (void)recycleIndex:(BOOL)a3
{
  v5 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_DEFAULT, "Recycling index", buf, 2u);
  }

  [(SPCoreSpotlightIndexer *)self closeIndex];
  v6 = sIndexQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__SPCoreSpotlightIndexer_recycleIndex___block_invoke;
  v8[3] = &unk_278934400;
  v8[4] = self;
  v9 = a3;
  v7 = _setup_block(v8, 0, 17486);
  dispatch_async(v6, v7);
}

- (void)markIndexPurgeable:(BOOL)a3
{
  v3 = sIndexQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__SPCoreSpotlightIndexer_markIndexPurgeable___block_invoke;
  v5[3] = &unk_278934400;
  v5[4] = self;
  v6 = a3;
  v4 = _setup_block(v5, 0, 17503);
  dispatch_async(v3, v4);
}

void __45__SPCoreSpotlightIndexer_markIndexPurgeable___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [*(a1 + 32) concreteIndexers];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if (*(a1 + 40) == 1)
        {
          if ([v8 _shouldPurge])
          {
            [v8 _createPurgeableTouchFile];
            v9 = [v8 _indexPath];
            [v8 markDirectoryAtomicallyPurgeable:v9 purgeableOrNot:*(a1 + 40)];
          }
        }

        else if ([v8 _hasPurgeableTouchFile])
        {
          v10 = [v8 _indexPath];
          [v8 markDirectoryAtomicallyPurgeable:v10 purgeableOrNot:*(a1 + 40)];

          [v8 _removePurgeableTouchFile];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)recycleAndPurgeIndex
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "Converting CoreSpotlight index to read-only", &v12, 2u);
  }

  v3 = +[SPCoreSpotlightIndexer sharedInstance];
  [v3 recycleIndex:1];

  v4 = +[SPCoreSpotlightIndexer freeIndexDiskSpace];
  v5 = +[SPCoreSpotlightIndexer totalIndexDiskSpace];
  if (100 * v4 / v5 < 6 || v4 <= 0x357900000)
  {
    v7 = v5;
    v8 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [sDelegate indexDirectory];
      v12 = 138412802;
      v13 = v9;
      v14 = 2048;
      v15 = v4;
      v16 = 2048;
      v17 = v7;
      _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_DEFAULT, "Marking CoreSpotlight index files purgeable under %@. freeDiskSpace %lu, totalDiskSpace %lu", &v12, 0x20u);
    }

    v10 = +[SPCoreSpotlightIndexer sharedInstance];
    [v10 markIndexPurgeable:1];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)restoreIndexAndClearPurgeable
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "Converting CoreSpotlight index to read-write", &v12, 2u);
  }

  v3 = +[SPCoreSpotlightIndexer sharedInstance];
  [v3 recycleIndex:0];

  v4 = +[SPCoreSpotlightIndexer freeIndexDiskSpace];
  v5 = +[SPCoreSpotlightIndexer totalIndexDiskSpace];
  if (100 * v4 / v5 >= 0xB && v4 >= 0x657900001)
  {
    v7 = v5;
    v8 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [sDelegate indexDirectory];
      v12 = 138412802;
      v13 = v9;
      v14 = 2048;
      v15 = v4;
      v16 = 2048;
      v17 = v7;
      _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_DEFAULT, "Clearing CoreSpotlight index files purgeable under %@. freeDiskSpace %lu, totalDiskSpace %lu", &v12, 0x20u);
    }

    v10 = +[SPCoreSpotlightIndexer sharedInstance];
    [v10 markIndexPurgeable:0];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)queryPreheat:(id)a3
{
  v4 = a3;
  v5 = sIndexQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__SPCoreSpotlightIndexer_queryPreheat___block_invoke;
  v8[3] = &unk_2789342C0;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  v7 = _setup_block(v8, 0, 17736);
  dispatch_async(v5, v7);
}

void __39__SPCoreSpotlightIndexer_queryPreheat___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D657E8] resourcePath];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [v3 fileExistsAtPath:v2];

  if ((v4 & 1) != 0 || ([MEMORY[0x277CCAA00] defaultManager], v5 = objc_claimAutoreleasedReturnValue(), v11 = 0, objc_msgSend(v5, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v2, 1, 0, &v11), v6 = v11, v5, !v6))
  {
    v7 = [MEMORY[0x277D657E8] sharedResourcesManager];
    v8 = MEMORY[0x277CBEB98];
    v9 = [MEMORY[0x277CBEAF8] preferredLanguages];
    v10 = [v8 setWithArray:v9];
    [v7 fetchAllParametersForLanguages:v10];

    v6 = 0;
  }

  else
  {
    v7 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __39__SPCoreSpotlightIndexer_queryPreheat___block_invoke_cold_1();
    }
  }

  [*(a1 + 32) _enumerateIndexersWithProtectionClasses:*(a1 + 40) block:&__block_literal_global_2440];
}

- (id)_taskForQueryWithQueryString:(id)a3 queryContext:(id)a4 eventHandler:(id)a5 resultsHandler:(id)a6 completionHandler:(id)a7
{
  v131 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v65 = a5;
  v14 = a6;
  v64 = a7;
  v66 = v14;
  if (!v14)
  {
    [SPCoreSpotlightIndexer _taskForQueryWithQueryString:queryContext:eventHandler:resultsHandler:completionHandler:];
  }

  v15 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [SPCoreSpotlightIndexer _taskForQueryWithQueryString:queryContext:eventHandler:resultsHandler:completionHandler:];
  }

  if ((deviceUnlocked & 1) == 0)
  {
    SIResumeForUnlock();
  }

  v16 = [v13 protectionClasses];
  v17 = [v16 count];
  v61 = v17 == 0;
  if (v17)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v58 = [v13 clientBundleID];
      v59 = [objc_opt_class() allProtectionClasses];
      *buf = 138413058;
      *&buf[4] = v16;
      *&buf[12] = 2112;
      *&buf[14] = v12;
      *&buf[22] = 2112;
      v128 = v58;
      v129 = 2112;
      v130 = v59;
      _os_log_debug_impl(&dword_231A35000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "PCS %@ for query %@ from client %@ (available: %@)", buf, 0x2Au);
    }

    v69 = v16;
  }

  else
  {
    v18 = [objc_opt_class() allProtectionClasses];
    v69 = [v18 copy];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [SPCoreSpotlightIndexer _taskForQueryWithQueryString:v69 queryContext:v12 eventHandler:v13 resultsHandler:? completionHandler:?];
    }
  }

  if ([v13 internal])
  {
    v19 = [v13 clientBundleID];
    if ([v19 isEqualToString:@"com.apple.searchutil"])
    {
      v20 = 0;
    }

    else
    {
      v21 = [v13 clientBundleID];
      v22 = [v21 isEqualToString:@"com.apple.search"];

      v20 = v22 ^ 1u;
    }
  }

  else
  {
    v20 = 1;
  }

  v23 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
  v68 = [v13 bundleIDs];
  if ([v68 count])
  {
    v24 = MEMORY[0x277CBEB98];
    v25 = [v13 bundleIDs];
    v67 = [v24 setWithArray:v25];
LABEL_20:

    goto LABEL_25;
  }

  if (([v13 internal] & 1) == 0)
  {
    v26 = [v13 clientBundleID];
    v27 = v26 == 0;

    if (!v27)
    {
      v28 = MEMORY[0x277CBEB98];
      v25 = [v13 clientBundleID];
      v67 = [v28 setWithObject:v25];
      goto LABEL_20;
    }
  }

  v67 = 0;
LABEL_25:
  v124[0] = MEMORY[0x277D85DD0];
  v124[1] = 3221225472;
  v124[2] = __114__SPCoreSpotlightIndexer__taskForQueryWithQueryString_queryContext_eventHandler_resultsHandler_completionHandler___block_invoke;
  v124[3] = &unk_2789366A0;
  v70 = v23;
  v125 = v70;
  [(SPCoreSpotlightIndexer *)self _enumerateIndexersWithProtectionClasses:v69 forQueryWithContext:v13 forBundleIds:v67 inferSpecialIndexes:v20 block:v124];
  if ([v70 count])
  {
    v29 = [v13 live];
    v30 = off_2789335D0;
    if (!v29)
    {
      v30 = off_2789335D8;
    }

    v31 = [objc_alloc(*v30) initWithQueryString:v12 queryContext:v13];
    v32 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v33 = v70;
    v34 = [v33 countByEnumeratingWithState:&v120 objects:v126 count:16];
    if (v34)
    {
      v35 = *v121;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v121 != v35)
          {
            objc_enumerationMutation(v33);
          }

          v37 = [*(*(&v120 + 1) + 8 * i) knownClients];
          [v32 unionSet:v37];
        }

        v34 = [v33 countByEnumeratingWithState:&v120 objects:v126 count:16];
      }

      while (v34);
    }

    [v31 setKnownBundleIds:v32];
    v38 = [v13 clientBundleID];
    v39 = self->_indexQueue;
    v62 = [v33 objectEnumerator];
    v60 = [v33 count];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v128 = 0;
    v119[0] = 0;
    v119[1] = v119;
    v119[2] = 0x2020000000;
    v119[3] = 0;
    v118[0] = 0;
    v118[1] = v118;
    v118[2] = 0x2020000000;
    v118[3] = 0;
    v117[0] = 0;
    v117[1] = v117;
    v117[2] = 0x2020000000;
    v117[3] = 0;
    v110[0] = MEMORY[0x277D85DD0];
    v110[1] = 3221225472;
    v110[2] = __114__SPCoreSpotlightIndexer__taskForQueryWithQueryString_queryContext_eventHandler_resultsHandler_completionHandler___block_invoke_2447;
    v110[3] = &unk_278936898;
    v40 = v39;
    v111 = v40;
    v41 = v31;
    v112 = v41;
    v42 = v38;
    v113 = v42;
    v114 = v119;
    v115 = v118;
    v116 = v117;
    v63 = [v110 copy];
    if (s_last_memory_pressure_status == 1)
    {
      v43 = 0;
      v44 = 0;
    }

    else if ([v13 maxCount] || objc_msgSend(v13, "maxRankedResultCount"))
    {
      v43 = 0;
      v44 = 0;
    }

    else
    {
      v44 = [v13 live];
      v43 = 1;
    }

    v100[0] = MEMORY[0x277D85DD0];
    v100[1] = 3221225472;
    v100[2] = __114__SPCoreSpotlightIndexer__taskForQueryWithQueryString_queryContext_eventHandler_resultsHandler_completionHandler___block_invoke_2449;
    v100[3] = &unk_2789368C0;
    v46 = v40;
    v101 = v46;
    v102 = v13;
    v47 = v66;
    v105 = v47;
    v106 = v117;
    v108 = v60;
    v48 = v41;
    v109 = v44;
    v103 = v48;
    v107 = v119;
    v49 = v42;
    v104 = v49;
    v50 = [v100 copy];
    objc_initWeak(&location, v48);
    if (v43)
    {
      v87[0] = MEMORY[0x277D85DD0];
      v87[1] = 3221225472;
      v87[2] = __114__SPCoreSpotlightIndexer__taskForQueryWithQueryString_queryContext_eventHandler_resultsHandler_completionHandler___block_invoke_2452;
      v87[3] = &unk_2789368E8;
      objc_copyWeak(&v97, &location);
      v88 = v46;
      v94 = v119;
      v95 = buf;
      v89 = v62;
      v91 = v63;
      v92 = v65;
      v51 = v50;
      v98 = v61;
      v93 = v51;
      v96 = v118;
      v90 = v49;
      v52 = MEMORY[0x2383760E0](v87);

      objc_destroyWeak(&v97);
      objc_destroyWeak(&location);
    }

    else
    {
      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 3221225472;
      v75[2] = __114__SPCoreSpotlightIndexer__taskForQueryWithQueryString_queryContext_eventHandler_resultsHandler_completionHandler___block_invoke_2453;
      v75[3] = &unk_2789368E8;
      objc_copyWeak(&v85, &location);
      v76 = v46;
      v82 = v119;
      v83 = buf;
      v77 = v62;
      v79 = v63;
      v80 = v65;
      v53 = v50;
      v86 = v61;
      v81 = v53;
      v84 = v118;
      v78 = v49;
      v52 = MEMORY[0x2383760E0](v75);

      objc_destroyWeak(&v85);
      objc_destroyWeak(&location);
    }

    [v48 setWillAsyncStart:{0, v60}];
    [v48 setScheduleBlock:v52];
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __114__SPCoreSpotlightIndexer__taskForQueryWithQueryString_queryContext_eventHandler_resultsHandler_completionHandler___block_invoke_2454;
    v71[3] = &unk_278936910;
    v54 = v46;
    v72 = v54;
    v73 = v47;
    v74 = v64;
    [v48 setCompletionBlock:v71];
    v55 = v74;
    v45 = v48;

    _Block_object_dispose(v117, 8);
    _Block_object_dispose(v118, 8);
    _Block_object_dispose(v119, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v32 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [SPCoreSpotlightIndexer _taskForQueryWithQueryString:queryContext:eventHandler:resultsHandler:completionHandler:];
    }

    v45 = 0;
  }

  v56 = *MEMORY[0x277D85DE8];

  return v45;
}

void __114__SPCoreSpotlightIndexer__taskForQueryWithQueryString_queryContext_eventHandler_resultsHandler_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 index] || (objc_msgSend(MEMORY[0x277CCAA00], "defaultManager"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "_indexPath"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "fileExistsAtPath:isDirectory:", v5, 0), v5, v4, (v6 & 1) != 0))
  {
    [*(a1 + 32) addObject:v3];
  }

  else
  {
    v8 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v3 _indexPath];
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_DEFAULT, "*warn* Skipped nil indexer because index path %@ doesn't exist.", &v10, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __114__SPCoreSpotlightIndexer__taskForQueryWithQueryString_queryContext_eventHandler_resultsHandler_completionHandler___block_invoke_2447(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  dispatch_assert_queue_V2(*(a1 + 32));
  if (!v7)
  {
    ++*(*(*(a1 + 56) + 8) + 24);
    ++*(*(*(a1 + 64) + 8) + 24);
    ++*(*(*(a1 + 72) + 8) + 24);
    if (!a3)
    {
LABEL_12:
      [*(a1 + 40) schedule];
      goto LABEL_13;
    }

    v10 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      [*(a1 + 40) queryID];
      v11 = *(a1 + 48);
      v22 = 67109634;
      *v23 = v12;
      *&v23[4] = 2112;
      *&v23[6] = v8;
      v24 = 2112;
      v25 = v11;
      _os_log_impl(&dword_231A35000, v10, OS_LOG_TYPE_DEFAULT, "*warn* Index not available task:%d, dataclass:%@, bundleID:%@", &v22, 0x1Cu);
    }

LABEL_11:

    goto LABEL_12;
  }

  if (![*(a1 + 40) addJob:v7])
  {
    [v7 cancel];
    v10 = logForCSLogCategoryQuery();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [*(a1 + 40) queryID];
      v19 = v18;
      v20 = [v7 dataclass];
      v21 = *(a1 + 48);
      v22 = 134218754;
      *v23 = v7;
      *&v23[8] = 1024;
      *&v23[10] = v19;
      v24 = 2112;
      v25 = v20;
      v26 = 2112;
      v27 = v21;
      _os_log_debug_impl(&dword_231A35000, v10, OS_LOG_TYPE_DEBUG, "Canceled job:%p, task:%d, dataclass:%@, bundleID:%@", &v22, 0x26u);
    }

    goto LABEL_11;
  }

  v9 = logForCSLogCategoryQuery();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [*(a1 + 40) queryID];
    v15 = v14;
    v16 = [v7 dataclass];
    v17 = *(a1 + 48);
    v22 = 134218754;
    *v23 = v7;
    *&v23[8] = 1024;
    *&v23[10] = v15;
    v24 = 2112;
    v25 = v16;
    v26 = 2112;
    v27 = v17;
    _os_log_debug_impl(&dword_231A35000, v9, OS_LOG_TYPE_DEBUG, "Started job:%p, task:%d, dataclass:%@, bundleID:%@", &v22, 0x26u);
  }

LABEL_13:
  v13 = *MEMORY[0x277D85DE8];
}

void __114__SPCoreSpotlightIndexer__taskForQueryWithQueryString_queryContext_eventHandler_resultsHandler_completionHandler___block_invoke_2449(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = *MEMORY[0x277D85DE8];
  v11 = a2;
  if (!v11)
  {
    __114__SPCoreSpotlightIndexer__taskForQueryWithQueryString_queryContext_eventHandler_resultsHandler_completionHandler___block_invoke_2449_cold_1();
  }

  v12 = v11;
  dispatch_assert_queue_V2(*(a1 + 32));
  if (a3 != 2)
  {
    if (a3 != 1)
    {
      v22 = *(a1 + 64);
      v23 = [v12 dataclass];
      (*(v22 + 16))(v22, a3, a4, a5, a6, v23);

      goto LABEL_20;
    }

    if (![*(a1 + 40) priorityIndexQuery])
    {
      goto LABEL_9;
    }

    v13 = [v12 dataclass];
    if ([v13 isEqual:@"Priority"])
    {
      v14 = [*(a1 + 40) live];

      if (v14)
      {
LABEL_9:
        ++*(*(*(a1 + 80) + 8) + 24);
        [*(a1 + 48) removeJob:v12];
        v16 = logForCSLogCategoryQuery();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v25 = *(a1 + 48);
          v26 = [v12 dataclass];
          v27 = *(a1 + 56);
          v28 = 134218754;
          v29 = v12;
          v30 = 2048;
          v31 = v25;
          v32 = 2112;
          v33 = v26;
          v34 = 2112;
          v35 = v27;
          _os_log_debug_impl(&dword_231A35000, v16, OS_LOG_TYPE_DEBUG, "Finished job:%p, task:%p, dataclass:%@, bundleID:%@", &v28, 0x2Au);
        }

LABEL_18:
        [*(a1 + 48) schedule];
        goto LABEL_20;
      }

      v15 = *(a1 + 64);
      v13 = [v12 dataclass];
      (*(v15 + 16))(v15, 2, 0, 0, 0, v13);
    }

    goto LABEL_9;
  }

  v17 = *(a1 + 64);
  v18 = [v12 dataclass];
  (*(v17 + 16))(v17, 2, a4, a5, a6, v18);

  if (++*(*(*(a1 + 72) + 8) + 24) == *(a1 + 88))
  {
    (*(*(a1 + 64) + 16))();
    v19 = logForCSLogCategoryQuery();
    v20 = [*(a1 + 48) queryID];
    if ((v20 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v21 = v20;
      if (os_signpost_enabled(v19))
      {
        LOWORD(v28) = 0;
        _os_signpost_emit_with_name_impl(&dword_231A35000, v19, OS_SIGNPOST_INTERVAL_END, v21, "SPCoreSpotlightLatency", &unk_231AF625D, &v28, 2u);
      }
    }
  }

  if (*(a1 + 96) == 1)
  {
    goto LABEL_18;
  }

LABEL_20:

  v24 = *MEMORY[0x277D85DE8];
}

void __114__SPCoreSpotlightIndexer__taskForQueryWithQueryString_queryContext_eventHandler_resultsHandler_completionHandler___block_invoke_2452(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  dispatch_assert_queue_V2(*(a1 + 32));
  v3 = logForCSLogCategoryQuery();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __114__SPCoreSpotlightIndexer__taskForQueryWithQueryString_queryContext_eventHandler_resultsHandler_completionHandler___block_invoke_2452_cold_1();
  }

  if (([WeakRetained canceled] & 1) == 0)
  {
    v4 = [*(a1 + 40) nextObject];
    if (v4)
    {
      v5 = v4;
      ++*(*(*(a1 + 88) + 8) + 24);
      [v4 startQueryWithQueryTask:WeakRetained startHandler:*(a1 + 56) eventHandler:*(a1 + 64) resultsHandler:*(a1 + 72)];
LABEL_18:

      goto LABEL_19;
    }
  }

  if (([WeakRetained willAsyncStart] & 1) == 0 && objc_msgSend(WeakRetained, "siQuery"))
  {
    [WeakRetained siQuery];
    SIQueryRelease();
    [WeakRetained setSiQuery:0];
  }

  if (([WeakRetained finished] & 1) == 0 && *(*(*(a1 + 80) + 8) + 24) == *(*(*(a1 + 88) + 8) + 24))
  {
    if ((*(a1 + 112) & 1) != 0 || !*(*(*(a1 + 96) + 8) + 24))
    {
      v5 = 0;
    }

    else
    {
      v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC2380] code:-2001 userInfo:0];
    }

    [WeakRetained finishWithError:v5];
    v6 = logForCSLogCategoryQuery();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(*(*(a1 + 80) + 8) + 24);
      v9 = *(*(*(a1 + 96) + 8) + 24);
      v10 = *(a1 + 48);
      v11 = 134218754;
      v12 = v8;
      v13 = 2048;
      v14 = v9;
      v15 = 2048;
      v16 = WeakRetained;
      v17 = 2112;
      v18 = v10;
      _os_log_debug_impl(&dword_231A35000, v6, OS_LOG_TYPE_DEBUG, "Finished all jobs(%ld,%ld), task:%p bundleID:%@", &v11, 0x2Au);
    }

    goto LABEL_18;
  }

LABEL_19:

  v7 = *MEMORY[0x277D85DE8];
}

void __114__SPCoreSpotlightIndexer__taskForQueryWithQueryString_queryContext_eventHandler_resultsHandler_completionHandler___block_invoke_2453(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  dispatch_assert_queue_V2(*(a1 + 32));
  v3 = logForCSLogCategoryQuery();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __114__SPCoreSpotlightIndexer__taskForQueryWithQueryString_queryContext_eventHandler_resultsHandler_completionHandler___block_invoke_2452_cold_1();
  }

  if (([WeakRetained canceled] & 1) == 0)
  {
    v4 = 0;
    do
    {
      v5 = [*(a1 + 40) nextObject];

      if (!v5)
      {
        break;
      }

      ++*(*(*(a1 + 88) + 8) + 24);
      [v5 startQueryWithQueryTask:WeakRetained startHandler:*(a1 + 56) eventHandler:*(a1 + 64) resultsHandler:*(a1 + 72)];
      v4 = v5;
    }

    while (![WeakRetained canceled]);
  }

  if (([WeakRetained willAsyncStart] & 1) == 0 && objc_msgSend(WeakRetained, "siQuery"))
  {
    [WeakRetained siQuery];
    SIQueryRelease();
    [WeakRetained setSiQuery:0];
  }

  if (([WeakRetained finished] & 1) == 0 && *(*(*(a1 + 80) + 8) + 24) == *(*(*(a1 + 88) + 8) + 24))
  {
    if ((*(a1 + 112) & 1) != 0 || !*(*(*(a1 + 96) + 8) + 24))
    {
      v6 = 0;
    }

    else
    {
      v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC2380] code:-2001 userInfo:0];
    }

    [WeakRetained finishWithError:v6];
    v7 = logForCSLogCategoryQuery();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(*(*(a1 + 80) + 8) + 24);
      v10 = *(*(*(a1 + 96) + 8) + 24);
      v11 = *(a1 + 48);
      v12 = 134218754;
      v13 = v9;
      v14 = 2048;
      v15 = v10;
      v16 = 2048;
      v17 = WeakRetained;
      v18 = 2112;
      v19 = v11;
      _os_log_debug_impl(&dword_231A35000, v7, OS_LOG_TYPE_DEBUG, "Finished all jobs(%ld,%ld), task:%p bundleID:%@", &v12, 0x2Au);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __114__SPCoreSpotlightIndexer__taskForQueryWithQueryString_queryContext_eventHandler_resultsHandler_completionHandler___block_invoke_2454(uint64_t a1, void *a2)
{
  v4 = a2;
  dispatch_assert_queue_V2(*(a1 + 32));
  (*(*(a1 + 40) + 16))();
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

- (id)taskForQueryWithQueryString:(id)a3 queryContext:(id)a4 eventHandler:(id)a5 resultsHandler:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [SPCoreSpotlightIndexer taskForQueryWithQueryString:queryContext:eventHandler:resultsHandler:completionHandler:];
  }

  v18 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [SPCoreSpotlightIndexer taskForQueryWithQueryString:queryContext:eventHandler:resultsHandler:completionHandler:];
  }

  v19 = [v13 rankingType];
  if ((_os_feature_enabled_impl() & 1) != 0 || v19 != 1)
  {
    v20 = [(SPCoreSpotlightIndexer *)self _taskForQueryWithQueryString:v12 queryContext:v13 eventHandler:v14 resultsHandler:v15 completionHandler:v16];
  }

  else
  {
    v20 = [sDelegate taskForTopHitQueryWithQueryString:v12 queryContext:v13 eventHandler:v14 resultsHandler:v15 completionHandler:v16];
  }

  v21 = v20;

  return v21;
}

- (void)startQueryTask:(id)a3
{
  v3 = a3;
  v4 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [SPCoreSpotlightIndexer startQueryTask:];
  }

  if (v3)
  {
    v5 = sIndexQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __41__SPCoreSpotlightIndexer_startQueryTask___block_invoke;
    v7[3] = &unk_278934050;
    v8 = v3;
    v6 = _setup_block(v7, [v8 critical], 17971);
    dispatch_async(v5, v6);
  }
}

uint64_t __41__SPCoreSpotlightIndexer_startQueryTask___block_invoke(uint64_t a1)
{
  v2 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __41__SPCoreSpotlightIndexer_startQueryTask___block_invoke_cold_1();
  }

  return [*(a1 + 32) start];
}

- (id)_startQueryWithQueryString:(id)a3 queryContext:(id)a4 eventHandler:(id)a5 resultsHandler:(id)a6 completionHandler:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [SPCoreSpotlightIndexer _startQueryWithQueryString:queryContext:eventHandler:resultsHandler:completionHandler:];
  }

  v18 = [(SPCoreSpotlightIndexer *)self _taskForQueryWithQueryString:v16 queryContext:v15 eventHandler:v14 resultsHandler:v13 completionHandler:v12];

  [(SPCoreSpotlightIndexer *)self startQueryTask:v18];

  return v18;
}

- (id)startQueryWithQueryString:(id)a3 queryContext:(id)a4 eventHandler:(id)a5 resultsHandler:(id)a6 completionHandler:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [SPCoreSpotlightIndexer startQueryWithQueryString:queryContext:eventHandler:resultsHandler:completionHandler:];
  }

  v18 = [(SPCoreSpotlightIndexer *)self taskForQueryWithQueryString:v16 queryContext:v15 eventHandler:v14 resultsHandler:v13 completionHandler:v12];

  [(SPCoreSpotlightIndexer *)self startQueryTask:v18];

  return v18;
}

- (id)taskForTopHitQueryWithQueryString:(id)a3 queryContext:(id)a4 eventHandler:(id)a5 resultsHandler:(id)a6 completionHandler:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [SPCoreSpotlightIndexer taskForTopHitQueryWithQueryString:queryContext:eventHandler:resultsHandler:completionHandler:];
  }

  v18 = [(SPCoreSpotlightIndexer *)self _taskForQueryWithQueryString:v16 queryContext:v15 eventHandler:v14 resultsHandler:v13 completionHandler:v12];

  return v18;
}

- (id)startQuery:(id)a3 withContext:(id)a4 eventHandler:(id)a5 handler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [SPCoreSpotlightIndexer startQuery:withContext:eventHandler:handler:];
  }

  v15 = [(SPCoreSpotlightIndexer *)self _startQueryWithQueryString:v13 queryContext:v12 eventHandler:v11 resultsHandler:v10 completionHandler:0];

  return v15;
}

- (id)startQuery:(id)a3 withContext:(id)a4 handler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [SPCoreSpotlightIndexer startQuery:withContext:eventHandler:handler:];
  }

  v12 = [(SPCoreSpotlightIndexer *)self _startQueryWithQueryString:v10 queryContext:v9 eventHandler:0 resultsHandler:v8 completionHandler:0];

  return v12;
}

+ (id)_mergedTokenRewrites:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v28 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CBEB58] set];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v3;
  v27 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v27)
  {
    v26 = *v38;
    do
    {
      v5 = 0;
      do
      {
        if (*v38 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v29 = v5;
        v6 = *(*(&v37 + 1) + 8 * v5);
        v7 = [v6 originalToken];
        v8 = [v28 objectForKeyedSubscript:v7];

        v30 = v8;
        if (!v8)
        {
          v9 = [MEMORY[0x277CBEB18] array];
          v10 = [v6 originalToken];
          v30 = v9;
          [v28 setObject:v9 forKeyedSubscript:v10];
        }

        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v11 = [v6 variations];
        v12 = [v11 countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v34;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v34 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v33 + 1) + 8 * i);
              v17 = MEMORY[0x277CCACA8];
              v18 = [v6 originalToken];
              v19 = [v16 variation];
              v20 = [v17 stringWithFormat:@"%@/%@/%ld", v18, v19, objc_msgSend(v16, "type")];

              if (([v4 containsObject:v20] & 1) == 0)
              {
                [v4 addObject:v20];
                [v30 addObject:v16];
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v33 objects:v41 count:16];
          }

          while (v13);
        }

        v5 = v29 + 1;
      }

      while (v29 + 1 != v27);
      v27 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v27);
  }

  v21 = [MEMORY[0x277CBEB18] array];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __47__SPCoreSpotlightIndexer__mergedTokenRewrites___block_invoke;
  v31[3] = &unk_278936938;
  v22 = v21;
  v32 = v22;
  [v28 enumerateKeysAndObjectsUsingBlock:v31];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

void __47__SPCoreSpotlightIndexer__mergedTokenRewrites___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 count])
  {
    v7 = [objc_alloc(MEMORY[0x277D286B8]) initWithOriginalToken:v5 variations:v6];
    [*(a1 + 32) addObject:v7];
  }

  else
  {
    v8 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __47__SPCoreSpotlightIndexer__mergedTokenRewrites___block_invoke_cold_1(v5);
    }
  }
}

- (void)rewriteQueryWithQueryString:(id)a3 context:(id)a4 matchInfo:(id)a5 rewriteHandler:(id)a6
{
  v66 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v43 = a6;
  v12 = a5;
  v13 = [v11 queryID];
  v14 = [v11 rankingType];
  v15 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v38 = CSRedactString(v10, 0);
    v39 = v38;
    v40 = @"NO";
    *buf = 134218498;
    v61 = v13;
    v62 = 2112;
    if (v14 == 1)
    {
      v40 = @"YES";
    }

    v63 = v38;
    v64 = 2112;
    v65 = v40;
    _os_log_debug_impl(&dword_231A35000, v15, OS_LOG_TYPE_DEBUG, "[qid=%ld][rewrite] rewriteQueryWithQueryString=%@ top_hit=%@", buf, 0x20u);
  }

  v16 = [SPConcreteCoreSpotlightIndexer _tokensMaxCountFromMatchInfo:v12];

  v17 = [v11 userQuery];
  v18 = [SPConcreteCoreSpotlightIndexer _setOfTokensToCorrect:v17 tokenMatchInfo:v16];

  v19 = v18;
  v42 = v13;
  v20 = [SPConcreteCoreSpotlightIndexer _indexIndependentTokenRewritesWithMatchInfo:v16 queryID:v13 setOfTokensToCorrect:v18];
  v21 = [v11 protectionClasses];
  if (![v21 count])
  {
    v22 = [objc_opt_class() allProtectionClasses];

    v21 = v22;
  }

  v44 = [MEMORY[0x277CBEB18] array];
  group = dispatch_group_create();
  v23 = [v11 bundleIDs];
  if (![v23 count])
  {

    v33 = group;
    goto LABEL_8;
  }

  [v11 bundleIDs];
  v24 = v41 = v10;
  [v24 objectAtIndexedSubscript:0];
  v25 = v11;
  v26 = v21;
  v27 = v16;
  v28 = self;
  v29 = v20;
  v31 = v30 = v19;
  v32 = [v31 isEqualToString:@"com.apple.mobileslideshow"];

  v19 = v30;
  v20 = v29;
  self = v28;
  v16 = v27;
  v21 = v26;
  v11 = v25;

  v10 = v41;
  v33 = group;
  if ((v32 & 1) == 0)
  {
LABEL_8:
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __87__SPCoreSpotlightIndexer_rewriteQueryWithQueryString_context_matchInfo_rewriteHandler___block_invoke;
    v53[3] = &unk_278936988;
    v54 = v33;
    v55 = v10;
    v56 = v11;
    v57 = v16;
    v58 = v19;
    v59 = v44;
    [(SPCoreSpotlightIndexer *)self _enumerateIndexersWithProtectionClasses:v21 block:v53];
  }

  if (v43)
  {
    v34 = qos_class_self();
    v35 = dispatch_get_global_queue(v34, 2uLL);
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __87__SPCoreSpotlightIndexer_rewriteQueryWithQueryString_context_matchInfo_rewriteHandler___block_invoke_4;
    v46[3] = &unk_2789369B0;
    v47 = v44;
    v48 = v20;
    v49 = v11;
    v52 = v42;
    v51 = v43;
    v50 = v10;
    v36 = _setup_block(v46, 0, 18128);
    dispatch_group_notify(group, v35, v36);

    v33 = group;
  }

  v37 = *MEMORY[0x277D85DE8];
}

void __87__SPCoreSpotlightIndexer_rewriteQueryWithQueryString_context_matchInfo_rewriteHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_enter(*(a1 + 32));
  v4 = sIndexQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __87__SPCoreSpotlightIndexer_rewriteQueryWithQueryString_context_matchInfo_rewriteHandler___block_invoke_2;
  v13[3] = &unk_278936960;
  v14 = v3;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v15 = v10;
  v16 = v9;
  v17 = *(a1 + 72);
  v18 = *(a1 + 32);
  v11 = v3;
  v12 = _setup_block(v13, 0, 18105);
  dispatch_async(v4, v12);
}

void __87__SPCoreSpotlightIndexer_rewriteQueryWithQueryString_context_matchInfo_rewriteHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __87__SPCoreSpotlightIndexer_rewriteQueryWithQueryString_context_matchInfo_rewriteHandler___block_invoke_3;
  v7[3] = &unk_278934E90;
  v6 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  [v2 indexDependentTokenRewritesWithQueryString:v3 context:v4 matchInfo:v5 setOfTokensToCorrect:v6 tokenRewritesHandler:v7];
}

void __87__SPCoreSpotlightIndexer_rewriteQueryWithQueryString_context_matchInfo_rewriteHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) addObjectsFromArray:a2];
  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void __87__SPCoreSpotlightIndexer_rewriteQueryWithQueryString_context_matchInfo_rewriteHandler___block_invoke_4(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) arrayByAddingObjectsFromArray:*(a1 + 40)];
  v3 = [SPCoreSpotlightIndexer _mergedTokenRewrites:v2];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v18 + 1) + 8 * v7) variations];
        [v8 count];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v18 objects:v27 count:16];
    }

    while (v5);
  }

  if (([*(a1 + 48) privateQuery] & 1) == 0)
  {
    v9 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 72);
      v11 = [SPConcreteCoreSpotlightIndexer _descriptionWithTokenRewrites:v3];
      *buf = 134218242;
      v24 = v10;
      v25 = 2112;
      v26 = v11;
      _os_log_impl(&dword_231A35000, v9, OS_LOG_TYPE_INFO, "[rewrite] qid:%ld ### Final rewrites: %@", buf, 0x16u);
    }
  }

  if ([v3 count])
  {
    v12 = [*(a1 + 48) copy];
    v13 = [objc_alloc(MEMORY[0x277D286B0]) initWithRewrittenTokens:v3];
    [v12 setRewriteContext:v13];

    v14 = [objc_alloc(MEMORY[0x277D286A8]) initWithSearchQueryString:*(a1 + 56) searchQueryContext:v12 score:0.0];
    v15 = *(a1 + 64);
    v22 = v14;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
    (*(v15 + 16))(v15, v16, 0);
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)dateRewritesFromContext:(id)a3
{
  v60 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v43 = [MEMORY[0x277CBEB18] array];
  v4 = [v3 queryUnderstandingOutput];
  v5 = [v4 objectForKeyedSubscript:@"kQPQUOutputTokenInfo"];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v49 objects:v59 count:16];
  if (v6)
  {
    v7 = v6;
    v36 = v4;
    v37 = v3;
    v8 = 0;
    v9 = *v50;
    v38 = *v50;
    v39 = v5;
    do
    {
      v10 = 0;
      v11 = v8;
      v40 = v7;
      do
      {
        if (*v50 != v9)
        {
          v12 = v10;
          objc_enumerationMutation(v5);
          v10 = v12;
        }

        v42 = v10;
        v13 = *(*(&v49 + 1) + 8 * v10);
        v8 = [v13 objectForKeyedSubscript:@"kQPQUOutputToken"];
        v14 = [v13 objectForKeyedSubscript:@"kQPQUOutputTokenArgLabels"];
        v48 = 0;
        v41 = v14;
        if ([v14 containsObject:@"ARG_TIME"])
        {
          v15 = +[SPConcreteCoreSpotlightIndexer _sharedSynonyms];
          v16 = [v15 generateDateSynonymsFromToken:v8 previousToken:v11 isOrdinalToken:&v48];

          if (v16 && [v16 count])
          {
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v17 = v16;
            v18 = [v17 countByEnumeratingWithState:&v44 objects:v58 count:16];
            if (v18)
            {
              v19 = v18;
              v20 = *v45;
              do
              {
                for (i = 0; i != v19; ++i)
                {
                  if (*v45 != v20)
                  {
                    objc_enumerationMutation(v17);
                  }

                  v22 = *(*(&v44 + 1) + 8 * i);
                  v23 = logForCSLogCategoryDefault();
                  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
                  {
                    v24 = CSRedactString(v8, 1);
                    v25 = CSRedactString(v22, 1);
                    *buf = 138412546;
                    v55 = v24;
                    v56 = 2112;
                    v57 = v25;
                    _os_log_impl(&dword_231A35000, v23, OS_LOG_TYPE_INFO, "[rewrite] [first pass] adding date synonym = %@ for token = %@", buf, 0x16u);
                  }

                  v26 = objc_alloc(MEMORY[0x277D286C0]);
                  LODWORD(v27) = 1050253722;
                  v28 = [v26 initWithVariation:v22 type:4 confidence:v27];
                  if (v11 && v48 == 1)
                  {
                    v29 = [v11 stringByAppendingString:v8];
                  }

                  else
                  {
                    v29 = v8;
                  }

                  v30 = v29;
                  v31 = objc_alloc(MEMORY[0x277D286B8]);
                  v53 = v28;
                  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v53 count:1];
                  v33 = [v31 initWithOriginalToken:v30 variations:v32];

                  [v43 addObject:v33];
                }

                v19 = [v17 countByEnumeratingWithState:&v44 objects:v58 count:16];
              }

              while (v19);
            }

            v5 = v39;
            v7 = v40;
            v9 = v38;
          }

          else
          {
            v17 = v11;
            v11 = v16;
          }
        }

        v10 = v42 + 1;
        v11 = v8;
      }

      while (v42 + 1 != v7);
      v7 = [v5 countByEnumeratingWithState:&v49 objects:v59 count:16];
    }

    while (v7);

    v4 = v36;
    v3 = v37;
  }

  v34 = *MEMORY[0x277D85DE8];

  return v43;
}

- (void)processSearchString:(id)a3 intoTrimmedString:(id *)a4 andTokens:(id *)a5
{
  v7 = MEMORY[0x277CCA900];
  v8 = a3;
  v9 = [v7 whitespaceCharacterSet];
  v10 = [v8 stringByTrimmingCharactersInSet:v9];

  v16 = [v10 lowercaseString];

  if (processSearchString_intoTrimmedString_andTokens__onceToken != -1)
  {
    [SPCoreSpotlightIndexer processSearchString:intoTrimmedString:andTokens:];
  }

  v11 = [processSearchString_intoTrimmedString_andTokens__regex stringByReplacingMatchesInString:v16 options:0 range:0 withTemplate:{objc_msgSend(v16, "length"), &stru_2846BD100}];
  v12 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v13 = [v11 componentsSeparatedByCharactersInSet:v12];

  if (a4)
  {
    v14 = v11;
    *a4 = v11;
  }

  if (a5)
  {
    v15 = v13;
    *a5 = v13;
  }
}

uint64_t __74__SPCoreSpotlightIndexer_processSearchString_intoTrimmedString_andTokens___block_invoke()
{
  v0 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"[?!\\. options:\\-\\+\\*:\\]\\[]+$" error:{0, 0}];;
  v1 = processSearchString_intoTrimmedString_andTokens__regex;
  processSearchString_intoTrimmedString_andTokens__regex = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)rewriteFirstPassQueryWithQueryString:(id)a3 context:(id)a4 trimmedSearchStringTokens:(id)a5 populateDateSynonyms:(BOOL)a6
{
  v6 = a6;
  v62 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (v12 && [v12 count])
  {
    v37 = v6;
    v36 = self;
    v39 = v11;
    v40 = v10;
    v41 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v38 = v13;
    obj = v13;
    v44 = [obj countByEnumeratingWithState:&v52 objects:v61 count:16];
    if (v44)
    {
      v43 = *v53;
      do
      {
        for (i = 0; i != v44; ++i)
        {
          if (*v53 != v43)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v52 + 1) + 8 * i);
          v16 = +[SPConcreteCoreSpotlightIndexer _sharedSynonyms];
          v47 = v15;
          v17 = [v16 getFirstPassSynonymsForWord:v15];

          if (v17)
          {
            v46 = i;
            v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v48 = 0u;
            v49 = 0u;
            v50 = 0u;
            v51 = 0u;
            v45 = v17;
            v19 = v17;
            v20 = [v19 countByEnumeratingWithState:&v48 objects:v60 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v49;
              do
              {
                for (j = 0; j != v21; ++j)
                {
                  if (*v49 != v22)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v24 = *(*(&v48 + 1) + 8 * j);
                  v25 = logForCSLogCategoryDefault();
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                  {
                    v26 = CSRedactString(v47, 1);
                    v27 = CSRedactString(v24, 1);
                    *buf = 138412546;
                    v57 = v26;
                    v58 = 2112;
                    v59 = v27;
                    _os_log_impl(&dword_231A35000, v25, OS_LOG_TYPE_INFO, "[rewrite] [first pass] adding synonym = %@ for token = %@", buf, 0x16u);
                  }

                  v28 = objc_alloc(MEMORY[0x277D286C0]);
                  LODWORD(v29) = 1050253722;
                  v30 = [v28 initWithVariation:v24 type:4 confidence:v29];
                  [v18 addObject:v30];
                }

                v21 = [v19 countByEnumeratingWithState:&v48 objects:v60 count:16];
              }

              while (v21);
            }

            if ([v18 count])
            {
              v31 = [objc_alloc(MEMORY[0x277D286B8]) initWithOriginalToken:v47 variations:v18];
              [v41 addObject:v31];
            }

            v17 = v45;
            i = v46;
          }
        }

        v44 = [obj countByEnumeratingWithState:&v52 objects:v61 count:16];
      }

      while (v44);
    }

    v11 = v39;
    v32 = v41;
    if (v37)
    {
      v33 = [(SPCoreSpotlightIndexer *)v36 dateRewritesFromContext:v39];
      [v41 addObjectsFromArray:v33];
    }

    v34 = [objc_alloc(MEMORY[0x277D286B0]) initWithRewrittenTokens:v41];
    [v39 setRewriteContext:v34];

    v10 = v40;
    v13 = v38;
  }

  else
  {
    v32 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_231A35000, v32, OS_LOG_TYPE_INFO, "[rewrite] [first pass] skipping first pass rewrite due to invalid trimmedSearchStringTokens", buf, 2u);
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)reindexAllItemsWithIndexers:(id)a3 reason:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (sPrivate == 1)
  {
    if (v10)
    {
      (*(v10 + 2))(v10);
    }
  }

  else
  {
    v12 = [(SPCoreSpotlightIndexer *)self dataMigrationStage];
    v13 = [(SPCoreSpotlightIndexer *)self reindexAllQueue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __79__SPCoreSpotlightIndexer_reindexAllItemsWithIndexers_reason_completionHandler___block_invoke;
    v15[3] = &unk_278936A28;
    v15[4] = self;
    v16 = v8;
    v17 = v9;
    v19 = v12;
    v18 = v11;
    v14 = _setup_block(v15, 0, 18299);
    dispatch_async(v13, v14);
  }
}

void __79__SPCoreSpotlightIndexer_reindexAllItemsWithIndexers_reason_completionHandler___block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) reindexAllQueue];
  dispatch_suspend(v2);

  v34 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v3 = dispatch_group_create();
  v35 = [objc_alloc(MEMORY[0x277CC3420]) initWithJobType:2];
  v4 = objc_opt_new();
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v5 = *(a1 + 40);
  v6 = [v5 countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v52;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v52 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v51 + 1) + 8 * i) dataclass];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v7);
  }

  [v35 setProtectionClasses:v4];
  if (*(a1 + 48))
  {
    v11 = *(a1 + 48);
  }

  else
  {
    v11 = @"triggered by [SPCoreSpotlightIndexer reindexAllItemsWithIndexers:...]";
  }

  [v35 setReason:v11];
  v12 = *MEMORY[0x277CCA1A0];
  if ([v4 containsObject:*MEMORY[0x277CCA1A0]])
  {
    _sendPhotosReindexABCReport(@"Reindex all class C");
  }

  v13 = [*(a1 + 32) concreteIndexers];
  v14 = [v13 objectForKeyedSubscript:@"MobileMailIndex"];

  v15 = [*(a1 + 32) concreteIndexers];
  v16 = [v15 objectForKeyedSubscript:v12];

  if (sUseMailIndex == 1 && ([*(a1 + 40) containsObject:v14] & 1) == 0 && (objc_msgSend(*(a1 + 40), "containsObject:", v16) & 1) == 0)
  {
    [v35 setExcludedBundleIDs:&unk_2846C93B0];
  }

  v31 = v14;
  v32 = v4;
  v17 = [[SPCoreSpotlightIndexerTask alloc] initWithIndexJob:v35 indexers:*(a1 + 40)];
  [(SPCoreSpotlightIndexerTask *)v17 setDataMigrationStage:*(a1 + 64)];
  [(SPCoreSpotlightIndexerTask *)v17 setShouldResumeOnFailure:1];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = *(a1 + 40);
  v18 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v48;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v48 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v47 + 1) + 8 * j);
        dispatch_group_enter(v3);
        v23 = sIndexQueue;
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __79__SPCoreSpotlightIndexer_reindexAllItemsWithIndexers_reason_completionHandler___block_invoke_2;
        v42[3] = &unk_278934310;
        v42[4] = v22;
        v43 = v17;
        v44 = v35;
        v45 = v34;
        v46 = v3;
        v24 = _setup_block(v42, 0, 18280);
        dispatch_async(v23, v24);
      }

      v19 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v19);
  }

  v25 = sIndexQueue;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __79__SPCoreSpotlightIndexer_reindexAllItemsWithIndexers_reason_completionHandler___block_invoke_2489;
  v36[3] = &unk_278936A00;
  v37 = v17;
  v38 = v34;
  v26 = *(a1 + 40);
  v39 = *(a1 + 32);
  v40 = v26;
  v41 = *(a1 + 56);
  v27 = v34;
  v28 = v17;
  v29 = _setup_block(v36, 0, 18298);
  dispatch_group_notify(v3, v25, v29);

  v30 = *MEMORY[0x277D85DE8];
}

void __79__SPCoreSpotlightIndexer_reindexAllItemsWithIndexers_reason_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) startReindexAll];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__SPCoreSpotlightIndexer_reindexAllItemsWithIndexers_reason_completionHandler___block_invoke_3;
  v7[3] = &unk_2789369D8;
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  [v3 fetchAllCompletedBundleIDsForIndexerTask:v4 completionHandler:v7];

  objc_autoreleasePoolPop(v2);
}

void __79__SPCoreSpotlightIndexer_reindexAllItemsWithIndexers_reason_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count])
  {
    v4 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 32) jobType];
      v6 = [*(a1 + 40) dataclass];
      v9 = 134218498;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_INFO, "Found already completed bundleIDs from a previously failed job (%ld), dataclass:%@, completedBundleIDs:%@", &v9, 0x20u);
    }

    v7 = *(a1 + 48);
    objc_sync_enter(v7);
    [*(a1 + 48) addObjectsFromArray:v3];
    objc_sync_exit(v7);
  }

  dispatch_group_leave(*(a1 + 56));

  v8 = *MEMORY[0x277D85DE8];
}

void __79__SPCoreSpotlightIndexer_reindexAllItemsWithIndexers_reason_completionHandler___block_invoke_2489(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 40) allObjects];
  [*(a1 + 32) setCompletedBundleIDs:v2];

  v3 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [*(a1 + 32) completedBundleIDs];
    *buf = 138412290;
    v15 = v4;
    _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_INFO, "Reindexing all items, completedBundleIDs:%@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__SPCoreSpotlightIndexer_reindexAllItemsWithIndexers_reason_completionHandler___block_invoke_2490;
  v10[3] = &unk_278934F08;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 48);
  v11 = v7;
  v12 = v8;
  v13 = *(a1 + 64);
  [v6 performIndexerTask:v5 completionHandler:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __79__SPCoreSpotlightIndexer_reindexAllItemsWithIndexers_reason_completionHandler___block_invoke_2490(uint64_t a1)
{
  v2 = sIndexQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__SPCoreSpotlightIndexer_reindexAllItemsWithIndexers_reason_completionHandler___block_invoke_2_2491;
  v7[3] = &unk_278934F08;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = _setup_block(v7, 0, 18296);
  dispatch_async(v2, v6);
}

void __79__SPCoreSpotlightIndexer_reindexAllItemsWithIndexers_reason_completionHandler___block_invoke_2_2491(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_INFO, "Done reindexing all items", buf, 2u);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v12 + 1) + 8 * v8++) finishReindexAll];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v6);
  }

  v9 = [*(a1 + 40) reindexAllQueue];
  dispatch_resume(v9);

  v10 = *(a1 + 48);
  if (v10)
  {
    (*(v10 + 16))();
  }

  objc_autoreleasePoolPop(v2);
  v11 = *MEMORY[0x277D85DE8];
}

- (int)_openIndex:(BOOL)a3 forInit:(BOOL)a4 readOnly:(BOOL)a5
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  v9 = objc_alloc(MEMORY[0x277CBEB18]);
  v10 = [(SPCoreSpotlightIndexer *)self concreteIndexers];
  v11 = [v9 initWithCapacity:{objc_msgSend(v10, "count")}];

  v12 = [(SPCoreSpotlightIndexer *)self concreteIndexers];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __54__SPCoreSpotlightIndexer__openIndex_forInit_readOnly___block_invoke;
  v16[3] = &unk_278936A50;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v16[4] = self;
  v18 = &v25;
  v19 = v23;
  v13 = v11;
  v17 = v13;
  [v12 enumerateKeysAndObjectsWithOptions:1 usingBlock:v16];

  if ([v13 count])
  {
    objc_storeStrong(&self->_reindexIndexers, v11);
  }

  v14 = *(v26 + 6);

  _Block_object_dispose(v23, 8);
  _Block_object_dispose(&v25, 8);
  return v14;
}

void __54__SPCoreSpotlightIndexer__openIndex_forInit_readOnly___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = v8;
  v10 = (*(a1 + 65) ^ 1) & *(a1 + 64);
  if ((*(a1 + 65) ^ 1) & 1) == 0 && (*(a1 + 64))
  {
    v11 = [v8 dataclass];
    if ([v11 isEqualToString:*MEMORY[0x277CCA198]])
    {
LABEL_9:

LABEL_10:
      v10 = 0;
      goto LABEL_11;
    }

    v12 = [v9 dataclass];
    if ([v12 isEqualToString:*MEMORY[0x277CCA1A8]])
    {
LABEL_8:

      goto LABEL_9;
    }

    v13 = [v9 dataclass];
    if ([v13 isEqualToString:@"Priority"])
    {
      if ([sDelegate managedIndex])
      {
LABEL_7:

        goto LABEL_8;
      }

      v25 = [sDelegate privateIndex];

      if (v25)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (sUseMailIndex)
      {
        v24 = [v9 dataclass];
        if ([v24 isEqualToString:@"MobileMailIndex"])
        {
          if ([sDelegate managedIndex])
          {

            goto LABEL_7;
          }

          v26 = [sDelegate privateIndex];

          if (v26)
          {
            goto LABEL_10;
          }

          goto LABEL_34;
        }
      }
    }

LABEL_34:
    v10 = 1;
  }

LABEL_11:
  v14 = [v9 openIndex:v10 & 1 shouldReindexAll:0 readOnly:*(a1 + 66)];
  if (v14 < 0)
  {
    v17 = *(a1 + 32);
    objc_sync_enter(v17);
    v18 = *(*(a1 + 48) + 8);
    if (*(v18 + 24) > v14)
    {
      *(v18 + 24) = v14;
    }

    *a4 = 1;
    objc_sync_exit(v17);
  }

  else if ([sDelegate setupHasComplete])
  {
    if (v14 == 1 || [v9 reindexAllStarted])
    {
      v15 = *(a1 + 32);
      objc_sync_enter(v15);
      *(*(*(a1 + 56) + 8) + 24) = 1;
      [*(a1 + 40) addObject:v9];
      objc_sync_exit(v15);

      v16 = 1;
    }

    else
    {
      v16 = 0;
    }

    v19 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = [v9 dataclass];
      v21 = v20;
      v22 = @"NO";
      if (v16)
      {
        v22 = @"YES";
      }

      v27 = 138412546;
      v28 = v20;
      v29 = 2112;
      v30 = v22;
      _os_log_impl(&dword_231A35000, v19, OS_LOG_TYPE_INFO, "dataclass:%@, reindexAll:%@", &v27, 0x16u);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)writeFileProviderBundleMap:(id)a3 fileProviderBundleIDs:(id)a4
{
  v23[3] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ((sPrivate & 1) == 0)
  {
    v7 = NSHomeDirectory();
    v8 = [v7 stringByAppendingPathComponent:@"/Library/Spotlight/ExtensionsCache"];

    v9 = [MEMORY[0x277CCAA00] defaultManager];
    if (([v9 fileExistsAtPath:v8] & 1) == 0)
    {
      [v9 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:0];
    }

    v22[0] = @"v_n";
    v22[1] = @"bm_d";
    v10 = MEMORY[0x277CBEC10];
    if (v5)
    {
      v11 = v5;
    }

    else
    {
      v11 = MEMORY[0x277CBEC10];
    }

    v23[0] = &unk_2846C95D8;
    v23[1] = v11;
    v22[2] = @"bid_d";
    v12 = [v6 allObjects];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = v10;
    }

    v23[2] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];

    v16 = [v8 stringByAppendingPathComponent:@"fileProviderBundleMap.plist"];
    v17 = [MEMORY[0x277CBEB78] outputStreamToFileAtPath:v16 append:0];
    [v17 open];
    v21 = 0;
    [MEMORY[0x277CCAC58] writePropertyList:v15 toStream:v17 format:200 options:0 error:&v21];
    v18 = v21;
    [v17 close];
    if (v18)
    {
      v19 = logForCSLogCategoryIndex();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [SPCoreSpotlightIndexer writeFileProviderBundleMap:fileProviderBundleIDs:];
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __47__SPCoreSpotlightIndexer_fileProviderInfoSetup__block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = NSHomeDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"/Library/Spotlight/ExtensionsCache"];

  v4 = [v3 stringByAppendingPathComponent:@"fileProviderBundleMap.plist"];
  v5 = [MEMORY[0x277CBEAE0] inputStreamWithFileAtPath:v4];
  [v5 open];
  v34 = 0;
  v6 = [MEMORY[0x277CCAC58] propertyListWithStream:v5 options:0 format:0 error:&v34];
  v7 = v34;
  [v5 close];
  if (v7)
  {
    v8 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __47__SPCoreSpotlightIndexer_fileProviderInfoSetup__block_invoke_cold_1();
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_5;
    }

    v8 = [v6 objectForKeyedSubscript:@"v_n"];
    if ([v8 isEqual:&unk_2846C95D8])
    {
      v10 = MEMORY[0x277CBEB98];
      v11 = [v6 objectForKeyedSubscript:@"bid_d"];
      v12 = [v10 setWithArray:v11];

      if ([v12 count])
      {
        +[SpotlightDaemonServer sharedDaemonServer];
        v14 = v13 = v12;
        [v14 updateFileProviderBundleIDs:v13];

        v12 = v13;
      }

      v15 = [v6 objectForKeyedSubscript:@"bm_d"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = v4;
        v27 = v3;
        v24 = a1;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v16 = v15;
        v29 = [v16 countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (v29)
        {
          v28 = *v31;
          v25 = v12;
          while (2)
          {
            for (i = 0; i != v29; ++i)
            {
              v18 = v15;
              if (*v31 != v28)
              {
                objc_enumerationMutation(v16);
              }

              v19 = *(*(&v30 + 1) + 8 * i);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v12 = v25;
                v15 = v18;
                goto LABEL_23;
              }

              v20 = v16;
              v21 = [v16 objectForKeyedSubscript:v19];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if ((isKindOfClass & 1) == 0)
              {
                v12 = v25;
                v15 = v18;
                v16 = v20;
                goto LABEL_23;
              }

              v15 = v18;
              v16 = v20;
            }

            v12 = v25;
            v29 = [v20 countByEnumeratingWithState:&v30 objects:v35 count:16];
            if (v29)
            {
              continue;
            }

            break;
          }
        }

        objc_storeStrong((*(v24 + 32) + 96), v15);
        v23 = *(v24 + 32);
        v16 = *(v23 + 104);
        *(v23 + 104) = 0;
LABEL_23:

        v4 = v26;
        v3 = v27;
      }
    }
  }

LABEL_5:
  v9 = *MEMORY[0x277D85DE8];
}

- (void)checkIfExtensionsNeedToBeLoaded
{
  if (self->_reindexIndexers)
  {
    v4 = [MEMORY[0x277CC3538] sharedManager];
    [v4 loadExtensions];

    [(SPCoreSpotlightIndexer *)self reindexAllItemsWithIndexers:self->_reindexIndexers reason:@"loading extensions" completionHandler:&__block_literal_global_2514];
    reindexIndexers = self->_reindexIndexers;
    self->_reindexIndexers = 0;
  }

  else
  {
    v6 = MEMORY[0x277CC34A8];

    [v6 notifyIndexDelegates];
  }
}

- (void)fileProviderActiveProvidersChanged:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CBEB98];
  v36 = v4;
  v6 = [v4 allKeys];
  v35 = [v5 setWithArray:v6];

  if ([v36 count])
  {
    v7 = self;
    objc_sync_enter(v7);
    obj = v7;
    [(SPCoreSpotlightIndexer *)v7 fileProviderInfoSetup];
    location = &v7->_fileProviderAppToExtensionBundleMap;
    v8 = v7->_fileProviderAppToExtensionBundleMap;
    if ([(NSDictionary *)v8 count])
    {
      v9 = objc_opt_new();
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v10 = v36;
      v11 = [v10 countByEnumeratingWithState:&v41 objects:v46 count:16];
      if (v11)
      {
        v12 = *v42;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v42 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v41 + 1) + 8 * i);
            v15 = [(NSDictionary *)v8 objectForKeyedSubscript:v14];
            v16 = [v10 objectForKeyedSubscript:v14];
            v17 = [v15 isEqualToString:v16];

            if ((v17 & 1) == 0)
            {
              [v9 addObject:v14];
            }
          }

          v11 = [v10 countByEnumeratingWithState:&v41 objects:v46 count:16];
        }

        while (v11);
      }

      if ([v9 count])
      {
        v18 = [v10 mutableCopy];
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v19 = v9;
        v20 = [v19 countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v20)
        {
          v21 = *v38;
          do
          {
            for (j = 0; j != v20; ++j)
            {
              if (*v38 != v21)
              {
                objc_enumerationMutation(v19);
              }

              v23 = *(*(&v37 + 1) + 8 * j);
              v24 = [v10 objectForKeyedSubscript:v23];
              [v18 setObject:v24 forKeyedSubscript:v23];
            }

            v20 = [v19 countByEnumeratingWithState:&v37 objects:v45 count:16];
          }

          while (v20);
        }

        v25 = *location;
        *location = v18;
        v26 = v18;

        v27 = *location;
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      objc_storeStrong(location, a3);
      v27 = *location;
    }

    objc_sync_exit(obj);
  }

  else
  {
    v27 = 0;
  }

  if ([v36 count] || objc_msgSend(v35, "count"))
  {
    fileProviderExtensionToAppBundleMap = self->_fileProviderExtensionToAppBundleMap;
    self->_fileProviderExtensionToAppBundleMap = 0;

    if ([v35 count])
    {
      objc_storeStrong(&self->_fileProviderBundleIDs, v35);
      v29 = +[SpotlightDaemonServer sharedDaemonServer];
      [v29 updateFileProviderBundleIDs:v35];
    }

    fileProviderAppToExtensionBundleMap = v27;
    if (!v27)
    {
      fileProviderAppToExtensionBundleMap = self->_fileProviderAppToExtensionBundleMap;
    }

    [(SPCoreSpotlightIndexer *)self writeFileProviderBundleMap:fileProviderAppToExtensionBundleMap fileProviderBundleIDs:self->_fileProviderBundleIDs];
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (NSDictionary)fileProviderAppToExtensionBundleMap
{
  v2 = self;
  objc_sync_enter(v2);
  [(SPCoreSpotlightIndexer *)v2 fileProviderInfoSetup];
  v3 = v2->_fileProviderAppToExtensionBundleMap;
  objc_sync_exit(v2);

  return v3;
}

- (NSDictionary)fileProviderExtensionToAppBundleMap
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  [(SPCoreSpotlightIndexer *)v2 fileProviderInfoSetup];
  fileProviderExtensionToAppBundleMap = v2->_fileProviderExtensionToAppBundleMap;
  if (!fileProviderExtensionToAppBundleMap)
  {
    fileProviderAppToExtensionBundleMap = v2->_fileProviderAppToExtensionBundleMap;
    if (fileProviderAppToExtensionBundleMap)
    {
      v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSDictionary count](fileProviderAppToExtensionBundleMap, "count")}];
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v6 = v2->_fileProviderAppToExtensionBundleMap;
      v7 = [(NSDictionary *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        v8 = *v17;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v17 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v10 = *(*(&v16 + 1) + 8 * i);
            v11 = [(NSDictionary *)v2->_fileProviderAppToExtensionBundleMap objectForKeyedSubscript:v10, v16];
            [(NSDictionary *)v5 setObject:v10 forKeyedSubscript:v11];
          }

          v7 = [(NSDictionary *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v7);
      }

      v12 = v2->_fileProviderExtensionToAppBundleMap;
      v2->_fileProviderExtensionToAppBundleMap = v5;

      fileProviderExtensionToAppBundleMap = v2->_fileProviderExtensionToAppBundleMap;
    }

    else
    {
      fileProviderExtensionToAppBundleMap = 0;
    }
  }

  v13 = fileProviderExtensionToAppBundleMap;
  objc_sync_exit(v2);

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (BOOL)isForegroundFileProviderBundleID:(id)a3
{
  v4 = a3;
  if (v4 && (v5 = self, objc_sync_enter(v5), [(SPCoreSpotlightIndexer *)v5 fileProviderInfoSetup], v6 = [(NSSet *)v5->_fileProviderBundleIDs containsObject:v4], objc_sync_exit(v5), v5, v6))
  {
    v7 = [MEMORY[0x277CC6428] isProviderIDForeground:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)asyncOpenIndex:(BOOL)a3 forInit:(BOOL)a4 readOnly:(BOOL)a5
{
  indexQueue = self->_indexQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__SPCoreSpotlightIndexer_asyncOpenIndex_forInit_readOnly___block_invoke;
  v7[3] = &unk_278936A78;
  v7[4] = self;
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v6 = _setup_block(v7, 0, 18823);
  dispatch_async(indexQueue, v6);
}

- (int)openIndex:(BOOL)a3 forInit:(BOOL)a4 readOnly:(BOOL)a5
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  indexQueue = self->_indexQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SPCoreSpotlightIndexer_openIndex_forInit_readOnly___block_invoke;
  block[3] = &unk_278936AA0;
  block[4] = self;
  block[5] = &v12;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  dispatch_sync(indexQueue, block);
  v6 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v6;
}

uint64_t __53__SPCoreSpotlightIndexer_openIndex_forInit_readOnly___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _openIndex:*(a1 + 48) forInit:*(a1 + 49) readOnly:*(a1 + 50)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)writeData:(id)a3 toFile:(id)a4
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  [v6 writeData:v5];

  v7 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)indexFromBundle:(id)a3 protectionClass:(id)a4 personaID:(id)a5 options:(int64_t)a6 items:(id)a7 itemsText:(id)a8 itemsHTML:(id)a9 clientState:(id)a10 expectedClientState:(id)a11 clientStateName:(id)a12 deletes:(id)a13 canCreateNewIndex:(BOOL)a14 completionHandler:(id)a15
{
  v57 = *MEMORY[0x277D85DE8];
  v19 = a3;
  v46 = a4;
  v20 = a5;
  v21 = a7;
  v44 = a8;
  v22 = a9;
  v45 = a10;
  v23 = a11;
  v24 = a12;
  v25 = a13;
  v26 = a15;
  _checkUnlock();
  v27 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413314;
    v48 = v19;
    v49 = 2112;
    v50 = v24;
    v51 = 2048;
    v52 = [v45 length];
    v53 = 2112;
    v54 = v46;
    v55 = 2048;
    v56 = a6;
    _os_log_debug_impl(&dword_231A35000, v27, OS_LOG_TYPE_DEBUG, "indexFromBundle, bundleID:%@, clientState:%@/%lu, protectionClass:%@, options:0x%lx", buf, 0x34u);
  }

  v28 = v21;
  if (v19)
  {
    if (![sDelegate blocklistCheck:v19 withOptions:a6])
    {
      v41 = v25;
      v43 = v24;
      v29 = v22;
      v30 = v20;
      if (!v46 || (v35 = v46, [v46 isEqualToString:@"Default"]))
      {
        v35 = *MEMORY[0x277CCA1A0];
      }

      v34 = v35;
      v36 = [(SPCoreSpotlightIndexer *)self concreteIndexerForProtectionClass:v34 andBundleID:v19];
      if (v36)
      {
        self->_lastUpdateTime = CFAbsoluteTimeGetCurrent();
        LOBYTE(v39) = 1;
        [v36 indexFromBundle:v19 personaID:v30 options:a6 items:v21 itemsText:v44 itemsHTML:v29 clientState:v45 expectedClientState:v23 clientStateName:v24 deletes:v41 canCreateNewIndex:v39 completionHandler:v26];
      }

      else if (v26)
      {
        v37 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
        v26[2](v26, v37, 0);

        v28 = v21;
      }

      goto LABEL_18;
    }

    if (v26)
    {
      v41 = v25;
      v43 = v24;
      v29 = v22;
      v30 = v20;
      v31 = MEMORY[0x277CCA9B8];
      v32 = *MEMORY[0x277CC22E8];
      v33 = -1000;
LABEL_9:
      v34 = [v31 errorWithDomain:v32 code:v33 userInfo:0];
      v26[2](v26, v34, 0);
LABEL_18:

      v20 = v30;
      v22 = v29;
      v24 = v43;
      v25 = v41;
    }
  }

  else if (v26)
  {
    v41 = v25;
    v43 = v24;
    v29 = v22;
    v30 = v20;
    v31 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277CC22E8];
    v33 = -1;
    goto LABEL_9;
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)indexSearchableItems:(id)a3 deleteSearchableItemsWithIdentifiers:(id)a4 clientState:(id)a5 protectionClass:(id)a6 forBundleID:(id)a7 options:(int64_t)a8 completionHandler:(id)a9
{
  v15 = a9;
  v16 = a7;
  v17 = a6;
  v18 = a4;
  v19 = a3;
  _checkUnlock();
  [(SPCoreSpotlightIndexer *)self indexSearchableItems:v19 deleteSearchableItemsWithIdentifiers:v18 clientState:0 clientStateName:0 protectionClass:v17 forBundleID:v16 options:a8 completionHandler:v15];
}

- (void)indexSearchableItems:(id)a3 deleteSearchableItemsWithIdentifiers:(id)a4 clientState:(id)a5 expectedClientState:(id)a6 clientStateName:(id)a7 protectionClass:(id)a8 forBundleID:(id)a9 options:(int64_t)a10 completionHandler:(id)a11
{
  v48 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v33 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a11;
  v23 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413826;
    v35 = v21;
    v36 = 2112;
    v37 = v19;
    v38 = 2048;
    v39 = [v17 length];
    v40 = 2112;
    v41 = v20;
    v42 = 2048;
    v43 = [v16 count];
    v44 = 2048;
    v45 = [v33 count];
    v46 = 2048;
    v47 = a10;
    _os_log_debug_impl(&dword_231A35000, v23, OS_LOG_TYPE_DEBUG, "indexSearchableItems, bundleID:%@, clientState:%@/%ld, protectionClass:%@, itemCount:%ld, deleteIdentifiersCount:%ld, options:0x%lx", buf, 0x48u);
  }

  _checkUnlock();
  if (v21)
  {
    if (![sDelegate blocklistCheck:v21 withOptions:a10])
    {
      if (!v20 || (v27 = [v20 isEqualToString:@"Default"], v28 = v20, v27))
      {
        v28 = *MEMORY[0x277CCA1A0];
      }

      v26 = v28;
      v29 = [(SPCoreSpotlightIndexer *)self concreteIndexerForProtectionClass:v26 andBundleID:v21];
      if (v29)
      {
        self->_lastUpdateTime = CFAbsoluteTimeGetCurrent();
        [v29 indexSearchableItems:v16 deleteSearchableItemsWithIdentifiers:v33 clientState:v17 expectedClientState:v18 clientStateName:v19 forBundleID:v21 options:a10 completionHandler:v22];
      }

      else if (v22)
      {
        v30 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
        v22[2](v22, v30);
      }

      goto LABEL_17;
    }

    v24 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
LABEL_8:
    v26 = v24;
    v22[2](v22, v24);
LABEL_17:

    goto LABEL_18;
  }

  if (v22)
  {
    v25 = objc_alloc(MEMORY[0x277CCA9B8]);
    v24 = [v25 initWithDomain:*MEMORY[0x277CC22E8] code:-1 userInfo:0];
    goto LABEL_8;
  }

LABEL_18:

  v31 = *MEMORY[0x277D85DE8];
}

- (void)prepareIndexingWhileLocked:(id)a3 protectionClass:(id)a4 holdAssertionFor:(double)a5 completionHandler:(id)a6
{
  v13 = a3;
  v8 = a4;
  v9 = a6;
  _checkUnlock();
  if (v13)
  {
    if ([sDelegate blocklistCheck:v13 withOptions:0])
    {
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
      goto LABEL_8;
    }

    if (v8)
    {
      [v8 isEqualToString:@"Default"];
    }
  }

  if (!v9)
  {
    goto LABEL_9;
  }

  v11 = objc_alloc(MEMORY[0x277CCA9B8]);
  v10 = [v11 initWithDomain:*MEMORY[0x277CC22E8] code:-1 userInfo:0];
LABEL_8:
  v12 = v10;
  v9[2](v9, v10);

LABEL_9:
}

- (void)finishIndexingWhileLocked:(id)a3 protectionClass:(id)a4 completionHandler:(id)a5
{
  v12 = a3;
  v7 = a4;
  v8 = a5;
  _checkUnlock();
  if (v12)
  {
    if ([sDelegate blocklistCheck:v12 withOptions:0])
    {
      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
      goto LABEL_8;
    }

    if (v7)
    {
      [v7 isEqualToString:@"Default"];
    }
  }

  if (!v8)
  {
    goto LABEL_9;
  }

  v10 = objc_alloc(MEMORY[0x277CCA9B8]);
  v9 = [v10 initWithDomain:*MEMORY[0x277CC22E8] code:-1 userInfo:0];
LABEL_8:
  v11 = v9;
  v8[2](v8, v9);

LABEL_9:
}

- (void)validateIndexers:(id)a3 outFileDescriptor:(int)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__SPCoreSpotlightIndexer_validateIndexers_outFileDescriptor___block_invoke;
  v4[3] = &__block_descriptor_36_e40_v16__0__SPConcreteCoreSpotlightIndexer_8l;
  v5 = a4;
  [(SPCoreSpotlightIndexer *)self _enumerateIndexersWithProtectionClasses:a3 block:v4];
}

void __61__SPCoreSpotlightIndexer_validateIndexers_outFileDescriptor___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 validateConcreteIndexer:0 outFileDescriptor:v3];
  [v4 validateConcreteIndexer:1 outFileDescriptor:*(a1 + 32)];
}

- (void)validateVectors:(id)a3 outFileDescriptor:(int)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__SPCoreSpotlightIndexer_validateVectors_outFileDescriptor___block_invoke;
  v4[3] = &__block_descriptor_36_e40_v16__0__SPConcreteCoreSpotlightIndexer_8l;
  v5 = a4;
  [(SPCoreSpotlightIndexer *)self _enumerateIndexersWithProtectionClasses:a3 block:v4];
}

- (void)deleteSearchableItemsWithDomainIdentifiers:(id)a3 protectionClass:(id)a4 forBundleID:(id)a5 fromClient:(id)a6 options:(int64_t)a7 completionHandler:(id)a8
{
  v21 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a8;
  _checkUnlock();
  if (!v13 || (v17 = [v13 isEqualToString:@"Default"], v18 = v13, v17))
  {
    v18 = *MEMORY[0x277CCA1A0];
  }

  v19 = [(SPCoreSpotlightIndexer *)self concreteIndexerForProtectionClass:v18 andBundleID:v14];
  if (v19)
  {
    self->_lastUpdateTime = CFAbsoluteTimeGetCurrent();
    [v19 deleteSearchableItemsWithDomainIdentifiers:v21 forBundleID:v14 fromClient:v15 reason:0 completionHandler:v16];
  }

  else if (v16)
  {
    v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    v16[2](v16, v20);
  }
}

- (void)deleteSearchableItemsWithPersonaIds:(id)a3 completionHandler:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v18 = a3;
  v17 = a4;
  _checkUnlock();
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy__0;
  v29[4] = __Block_byref_object_dispose__0;
  v30 = 0;
  v6 = dispatch_group_create();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = [(SPCoreSpotlightIndexer *)self concreteIndexers];
  v8 = [v7 allValues];

  v9 = [v8 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v9)
  {
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        dispatch_group_enter(v6);
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __80__SPCoreSpotlightIndexer_deleteSearchableItemsWithPersonaIds_completionHandler___block_invoke;
        v22[3] = &unk_278934F58;
        v24 = v29;
        v23 = v6;
        [v12 deleteSearchableItemsWithPersonaIds:v18 completionHandler:{v22, v17}];
      }

      v9 = [v8 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v9);
  }

  self->_lastUpdateTime = CFAbsoluteTimeGetCurrent();
  v13 = sIndexQueue;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __80__SPCoreSpotlightIndexer_deleteSearchableItemsWithPersonaIds_completionHandler___block_invoke_2;
  v19[3] = &unk_278936850;
  v19[4] = self;
  v14 = v17;
  v20 = v14;
  v21 = v29;
  v15 = _setup_block(v19, 0, 19077);
  dispatch_group_notify(v6, v13, v15);

  _Block_object_dispose(v29, 8);
  v16 = *MEMORY[0x277D85DE8];
}

void __80__SPCoreSpotlightIndexer_deleteSearchableItemsWithPersonaIds_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __80__SPCoreSpotlightIndexer_deleteSearchableItemsWithPersonaIds_completionHandler___block_invoke_2(void *a1)
{
  *(a1[4] + 32) = CFAbsoluteTimeGetCurrent();
  v2 = *(*(a1[6] + 8) + 40);
  v3 = *(a1[5] + 16);

  return v3();
}

void __133__SPCoreSpotlightIndexer_deleteAllSearchableItemsWithBundleID_fromClient_protectionClass_shouldGC_deleteAllReason_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(*(a1 + 40) + 8);
  if (!a2)
  {
    a2 = *(v4 + 40);
  }

  objc_storeStrong((v4 + 40), a2);
  v5 = v2;
  dispatch_group_leave(*(a1 + 32));
}

void __133__SPCoreSpotlightIndexer_deleteAllSearchableItemsWithBundleID_fromClient_protectionClass_shouldGC_deleteAllReason_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(*(a1 + 40) + 8);
  if (!a2)
  {
    a2 = *(v4 + 40);
  }

  objc_storeStrong((v4 + 40), a2);
  v5 = v2;
  dispatch_group_leave(*(a1 + 32));
}

uint64_t __133__SPCoreSpotlightIndexer_deleteAllSearchableItemsWithBundleID_fromClient_protectionClass_shouldGC_deleteAllReason_completionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

- (void)deleteSearchableItemsSinceDate:(id)a3 protectionClass:(id)a4 forBundleID:(id)a5 options:(int64_t)a6 completionHandler:(id)a7
{
  v18 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a7;
  _checkUnlock();
  if (!v11 || (v14 = [v11 isEqualToString:@"Default"], v15 = v11, v14))
  {
    v15 = *MEMORY[0x277CCA1A0];
  }

  v16 = [(SPCoreSpotlightIndexer *)self concreteIndexerForProtectionClass:v15 andBundleID:v12];
  if (v16)
  {
    self->_lastUpdateTime = CFAbsoluteTimeGetCurrent();
    [v16 deleteSearchableItemsSinceDate:v18 forBundleID:v12 completionHandler:v13];
  }

  else if (v13)
  {
    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    v13[2](v13, v17);
  }
}

- (void)fetchLastClientStateWithProtectionClass:(id)a3 forBundleID:(id)a4 clientStateName:(id)a5 options:(int64_t)a6 completionHandler:(id)a7
{
  v20 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  _checkUnlock();
  if (!v20 || (v15 = [v20 isEqualToString:@"Default"], v16 = v20, v15))
  {
    v16 = *MEMORY[0x277CCA1A0];
  }

  v17 = [(SPCoreSpotlightIndexer *)self concreteIndexerForProtectionClass:v16 andBundleID:v12];
  v18 = v17;
  if (v17)
  {
    [v17 fetchLastClientStateForBundleID:v12 clientStateName:v13 options:a6 completionHandler:v14];
  }

  else if (v14)
  {
    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    v14[2](v14, 0, v19);
  }
}

- (void)changeStateOfSearchableItemsWithUIDs:(id)a3 toState:(int64_t)a4 protectionClass:(id)a5 forBundleID:(id)a6 forUTIType:(id)a7 options:(int64_t)a8
{
  v17 = a3;
  v12 = a5;
  v13 = a6;
  _checkUnlock();
  if (!v12 || (v14 = [v12 isEqualToString:@"Default"], v15 = v12, v14))
  {
    v15 = *MEMORY[0x277CCA1A0];
  }

  v16 = [(SPCoreSpotlightIndexer *)self concreteIndexerForProtectionClass:v15 andBundleID:v13];
  if (v16)
  {
    self->_lastUpdateTime = CFAbsoluteTimeGetCurrent();
    [v16 changeStateOfSearchableItemsWithUIDs:v17 toState:a4 forBundleID:v13];
  }
}

- (void)userPerformedAction:(id)a3 withItem:(id)a4 protectionClass:(id)a5 forBundleID:(id)a6 personaID:(id)a7
{
  v52[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if ((deviceUnlocked & 1) == 0)
  {
    SIResumeForUnlock();
  }

  if (v13 && ([sDelegate blocklistCheck:v15 withOptions:0] & 1) == 0)
  {
    v17 = [v13 attributeSet];
    v36 = [v17 relatedUniqueIdentifier];

    v32 = [v13 uniqueIdentifier];
    if (!v14 || (v18 = [v14 isEqualToString:@"Default"], v19 = v14, v18))
    {
      v19 = *MEMORY[0x277CCA1A0];
    }

    v20 = v19;
    v35 = v20;
    if (v36)
    {
      v34 = [objc_opt_class() allProtectionClasses];
      v33 = 0;
    }

    else
    {
      v52[0] = v20;
      v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:1];
      v51 = v35;
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
    }

    v21 = [v13 noIndex];
    v22 = logForCSLogCategoryIndex();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG);
    if (v21)
    {
      if (v23)
      {
        [SPCoreSpotlightIndexer userPerformedAction:withItem:protectionClass:forBundleID:personaID:];
      }
    }

    else
    {
      if (v23)
      {
        [SPCoreSpotlightIndexer userPerformedAction:withItem:protectionClass:forBundleID:personaID:];
      }

      self->_lastUpdateTime = CFAbsoluteTimeGetCurrent();
      v22 = objc_alloc_init(MEMORY[0x277CC33A0]);
      [v22 beginArray];
      v24 = [v13 attributeSet];
      [v22 encodeObject:v24];

      [v22 endArray];
      v25 = [v22 data];
      v26 = [v25 copy];

      if (v36)
      {
        v47 = 0;
        v48 = &v47;
        v49 = 0x2020000000;
        v50 = 0;
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = __93__SPCoreSpotlightIndexer_userPerformedAction_withItem_protectionClass_forBundleID_personaID___block_invoke;
        v46[3] = &unk_278936AF0;
        v46[4] = &v47;
        [(SPCoreSpotlightIndexer *)self _enumerateIndexersWithProtectionClasses:v34 block:v46];
        v27 = [[SPUAProgressItem alloc] initWithBundleID:v15 uaID:v32 relatedID:v36];
        [(SPUAProgressItem *)v27 setExpectedCount:*(v48 + 6)];
        [(SPUAProgressItem *)v27 add];
        _Block_object_dispose(&v47, 8);
      }

      else
      {
        v27 = 0;
      }

      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __93__SPCoreSpotlightIndexer_userPerformedAction_withItem_protectionClass_forBundleID_personaID___block_invoke_2;
      v40[3] = &unk_278936B40;
      v28 = v15;
      v41 = v28;
      v42 = v16;
      v31 = v26;
      v43 = v31;
      v45 = v36 != 0;
      v29 = v27;
      v44 = v29;
      [(SPCoreSpotlightIndexer *)self _enumerateIndexersWithProtectionClasses:v34 block:v40];
      if ([v33 count])
      {
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __93__SPCoreSpotlightIndexer_userPerformedAction_withItem_protectionClass_forBundleID_personaID___block_invoke_2518;
        v37[3] = &unk_278936768;
        v38 = v32;
        v39 = v28;
        [(SPCoreSpotlightIndexer *)self _enumerateIndexersWithProtectionClasses:v33 block:v37];
      }
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __93__SPCoreSpotlightIndexer_userPerformedAction_withItem_protectionClass_forBundleID_personaID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 64);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __93__SPCoreSpotlightIndexer_userPerformedAction_withItem_protectionClass_forBundleID_personaID___block_invoke_3;
  v8[3] = &unk_278936B18;
  v6 = *(a1 + 48);
  v9 = *(a1 + 56);
  LOBYTE(v7) = v5;
  [a2 indexFromBundle:v3 personaID:v4 options:0 items:v6 itemsText:0 itemsHTML:0 clientState:0 expectedClientState:0 clientStateName:0 deletes:0 canCreateNewIndex:v7 completionHandler:v8];
}

void __93__SPCoreSpotlightIndexer_userPerformedAction_withItem_protectionClass_forBundleID_personaID___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __93__SPCoreSpotlightIndexer_userPerformedAction_withItem_protectionClass_forBundleID_personaID___block_invoke_3_cold_1();
    }

    [*(a1 + 32) update:0xFFFFFFFFLL];
  }
}

void __93__SPCoreSpotlightIndexer_userPerformedAction_withItem_protectionClass_forBundleID_personaID___block_invoke_2518(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 arrayWithObjects:&v7 count:1];
  [v4 _backgroundDeleteItems:v5 bundleID:*(a1 + 40) completionHandler:{&__block_literal_global_2521, v7, v8}];

  v6 = *MEMORY[0x277D85DE8];
}

void __93__SPCoreSpotlightIndexer_userPerformedAction_withItem_protectionClass_forBundleID_personaID___block_invoke_2_2519(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_INFO, "Error deleting possible user activity %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)willModifySearchableItemsWithIdentifiers:(id)a3 protectionClass:(id)a4 forBundleID:(id)a5 options:(int64_t)a6 completionHandler:(id)a7
{
  v19 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  _checkUnlock();
  if ([sDelegate blocklistCheck:v13 withOptions:a6])
  {
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    v14[2](v14, v15);
  }

  else
  {
    if (!v12 || (v16 = [v12 isEqualToString:@"Default"], v17 = v12, v16))
    {
      v17 = *MEMORY[0x277CCA1A0];
    }

    v15 = [(SPCoreSpotlightIndexer *)self concreteIndexerForProtectionClass:v17 andBundleID:v13];
    if (v15)
    {
      self->_lastUpdateTime = CFAbsoluteTimeGetCurrent();
      [v15 willModifySearchableItemsWithIdentifiers:v19 forBundleID:v13 completionHandler:v14];
    }

    else if (v14)
    {
      v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
      v14[2](v14, v18);
    }
  }
}

- (void)clientDidCheckin:(id)a3 protectionClass:(id)a4 service:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (sShuttingDown != 1)
  {
    _checkUnlock();
    if (!v11 || (v16 = [v11 isEqualToString:@"Default"], v17 = v11, v16))
    {
      v17 = *MEMORY[0x277CCA1A0];
    }

    v15 = v17;
    v18 = [(SPCoreSpotlightIndexer *)self concreteIndexerForProtectionClass:v15 andBundleID:v10];
    if (v18)
    {
      self->_lastUpdateTime = CFAbsoluteTimeGetCurrent();
      v19 = [(SPCoreSpotlightIndexer *)self extensionDelegate];

      if (v19)
      {
        v20 = [MEMORY[0x277CC3538] sharedManager];
        [v20 loadExtensions];
      }

      v21 = sIndexQueue;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __85__SPCoreSpotlightIndexer_clientDidCheckin_protectionClass_service_completionHandler___block_invoke;
      v24[3] = &unk_278934EB8;
      v25 = v18;
      v26 = v10;
      v27 = v12;
      v28 = v13;
      v22 = _setup_block(v24, 0, 19332);
      dispatch_async(v21, v22);
    }

    else if (v13)
    {
      v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
      (*(v13 + 2))(v13, 0, v23);
    }

    goto LABEL_16;
  }

  v14 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [SPCoreSpotlightIndexer clientDidCheckin:protectionClass:service:completionHandler:];
  }

  if (v13)
  {
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    (*(v13 + 2))(v13, 0, v15);
LABEL_16:
  }
}

- (void)deleteAllUserActivities:(id)a3 fromClient:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  _checkUnlock();
  v11 = dispatch_group_create();
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy__0;
  v27[4] = __Block_byref_object_dispose__0;
  v28 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __79__SPCoreSpotlightIndexer_deleteAllUserActivities_fromClient_completionHandler___block_invoke;
  v21[3] = &unk_278936B90;
  v12 = v11;
  v22 = v12;
  v23 = self;
  v13 = v8;
  v24 = v13;
  v14 = v9;
  v25 = v14;
  v26 = v27;
  [(SPCoreSpotlightIndexer *)self _enumerateIndexersWithProtectionClasses:0 block:v21];
  if (v10)
  {
    v15 = qos_class_self();
    v16 = dispatch_get_global_queue(v15, 2uLL);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __79__SPCoreSpotlightIndexer_deleteAllUserActivities_fromClient_completionHandler___block_invoke_4;
    v18[3] = &unk_278936AC8;
    v19 = v10;
    v20 = v27;
    v17 = _setup_block(v18, 0, 19360);
    dispatch_group_notify(v12, v16, v17);
  }

  _Block_object_dispose(v27, 8);
}

void __79__SPCoreSpotlightIndexer_deleteAllUserActivities_fromClient_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_enter(*(a1 + 32));
  v4 = sIndexQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__SPCoreSpotlightIndexer_deleteAllUserActivities_fromClient_completionHandler___block_invoke_2;
  v10[3] = &unk_278936B68;
  v5 = *(a1 + 48);
  v10[4] = *(a1 + 40);
  v11 = v3;
  v12 = v5;
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v13 = v6;
  v15 = v7;
  v14 = *(a1 + 32);
  v8 = v3;
  v9 = _setup_block(v10, 0, 19354);
  dispatch_async(v4, v9);
}

void __79__SPCoreSpotlightIndexer_deleteAllUserActivities_fromClient_completionHandler___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 32) = CFAbsoluteTimeGetCurrent();
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__SPCoreSpotlightIndexer_deleteAllUserActivities_fromClient_completionHandler___block_invoke_3;
  v7[3] = &unk_278934F58;
  v6 = *(a1 + 64);
  v5 = v6;
  v8 = v6;
  [v2 deleteAllUserActivities:v3 fromClient:v4 completionHandler:v7];
}

void __79__SPCoreSpotlightIndexer_deleteAllUserActivities_fromClient_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v4 = *(*(a1 + 40) + 8);
    v6 = *(v4 + 40);
    v5 = (v4 + 40);
    if (!v6)
    {
      objc_storeStrong(v5, a2);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

- (void)deleteActionsBeforeTime:(double)a3 completionHandler:(id)a4
{
  v24[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  _checkUnlock();
  v7 = dispatch_group_create();
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__0;
  v22[4] = __Block_byref_object_dispose__0;
  v23 = 0;
  v24[0] = *MEMORY[0x277CCA1A0];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __68__SPCoreSpotlightIndexer_deleteActionsBeforeTime_completionHandler___block_invoke;
  v17[3] = &unk_278936BE0;
  v9 = v7;
  v18 = v9;
  v19 = self;
  v21 = a3;
  v20 = v22;
  [(SPCoreSpotlightIndexer *)self _enumerateIndexersWithProtectionClasses:v8 block:v17];
  if (v6)
  {
    v10 = qos_class_self();
    v11 = dispatch_get_global_queue(v10, 2uLL);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __68__SPCoreSpotlightIndexer_deleteActionsBeforeTime_completionHandler___block_invoke_4;
    v14[3] = &unk_278936AC8;
    v15 = v6;
    v16 = v22;
    v12 = _setup_block(v14, 0, 19392);
    dispatch_group_notify(v9, v11, v12);
  }

  _Block_object_dispose(v22, 8);
  v13 = *MEMORY[0x277D85DE8];
}

void __68__SPCoreSpotlightIndexer_deleteActionsBeforeTime_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_enter(*(a1 + 32));
  v4 = sIndexQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__SPCoreSpotlightIndexer_deleteActionsBeforeTime_completionHandler___block_invoke_2;
  v8[3] = &unk_278936BB8;
  v5 = *(a1 + 32);
  v8[4] = *(a1 + 40);
  v9 = v3;
  v12 = *(a1 + 56);
  v11 = *(a1 + 48);
  v10 = v5;
  v6 = v3;
  v7 = _setup_block(v8, 0, 19386);
  dispatch_async(v4, v7);
}

void __68__SPCoreSpotlightIndexer_deleteActionsBeforeTime_completionHandler___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 32) = CFAbsoluteTimeGetCurrent();
  v2 = *(a1 + 40);
  v3 = *(a1 + 64);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__SPCoreSpotlightIndexer_deleteActionsBeforeTime_completionHandler___block_invoke_3;
  v6[3] = &unk_278934F58;
  v5 = *(a1 + 48);
  v4 = v5;
  v7 = v5;
  [v2 deleteActionsBeforeTime:v6 completionHandler:v3];
}

void __68__SPCoreSpotlightIndexer_deleteActionsBeforeTime_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v4 = *(*(a1 + 40) + 8);
    v6 = *(v4 + 40);
    v5 = (v4 + 40);
    if (!v6)
    {
      objc_storeStrong(v5, a2);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

- (void)deleteActionsWithIdentifiers:(id)a3 completionHandler:(id)a4
{
  v26[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  _checkUnlock();
  v8 = dispatch_group_create();
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__0;
  v24[4] = __Block_byref_object_dispose__0;
  v25 = 0;
  v26[0] = *MEMORY[0x277CCA1A0];
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __73__SPCoreSpotlightIndexer_deleteActionsWithIdentifiers_completionHandler___block_invoke;
  v19[3] = &unk_278936C30;
  v10 = v8;
  v20 = v10;
  v21 = self;
  v11 = v6;
  v22 = v11;
  v23 = v24;
  [(SPCoreSpotlightIndexer *)self _enumerateIndexersWithProtectionClasses:v9 block:v19];
  if (v7)
  {
    v12 = qos_class_self();
    v13 = dispatch_get_global_queue(v12, 2uLL);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __73__SPCoreSpotlightIndexer_deleteActionsWithIdentifiers_completionHandler___block_invoke_4;
    v16[3] = &unk_278936AC8;
    v17 = v7;
    v18 = v24;
    v14 = _setup_block(v16, 0, 19422);
    dispatch_group_notify(v10, v13, v14);
  }

  _Block_object_dispose(v24, 8);
  v15 = *MEMORY[0x277D85DE8];
}

void __73__SPCoreSpotlightIndexer_deleteActionsWithIdentifiers_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_enter(*(a1 + 32));
  v4 = sIndexQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__SPCoreSpotlightIndexer_deleteActionsWithIdentifiers_completionHandler___block_invoke_2;
  v10[3] = &unk_278936C08;
  v5 = *(a1 + 48);
  v10[4] = *(a1 + 40);
  v11 = v3;
  v6 = v5;
  v7 = *(a1 + 56);
  v12 = v6;
  v14 = v7;
  v13 = *(a1 + 32);
  v8 = v3;
  v9 = _setup_block(v10, 0, 19416);
  dispatch_async(v4, v9);
}

void __73__SPCoreSpotlightIndexer_deleteActionsWithIdentifiers_completionHandler___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 32) = CFAbsoluteTimeGetCurrent();
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__SPCoreSpotlightIndexer_deleteActionsWithIdentifiers_completionHandler___block_invoke_3;
  v6[3] = &unk_278934F58;
  v5 = *(a1 + 56);
  v4 = v5;
  v7 = v5;
  [v2 deleteActionsWithIdentifiers:v3 completionHandler:v6];
}

void __73__SPCoreSpotlightIndexer_deleteActionsWithIdentifiers_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v4 = *(*(a1 + 40) + 8);
    v6 = *(v4 + 40);
    v5 = (v4 + 40);
    if (!v6)
    {
      objc_storeStrong(v5, a2);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

- (void)deleteAllInteractionsWithBundleID:(id)a3 completionHandler:(id)a4
{
  v25[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  _checkUnlock();
  v8 = dispatch_group_create();
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy__0;
  v23[4] = __Block_byref_object_dispose__0;
  v24 = 0;
  v25[0] = *MEMORY[0x277CCA1A0];
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __78__SPCoreSpotlightIndexer_deleteAllInteractionsWithBundleID_completionHandler___block_invoke;
  v18[3] = &unk_278936C30;
  v10 = v8;
  v19 = v10;
  v20 = self;
  v11 = v6;
  v21 = v11;
  v22 = v23;
  [(SPCoreSpotlightIndexer *)self _enumerateIndexersWithProtectionClasses:v9 block:v18];
  if (v7)
  {
    v12 = qos_class_self();
    v13 = dispatch_get_global_queue(v12, 2uLL);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __78__SPCoreSpotlightIndexer_deleteAllInteractionsWithBundleID_completionHandler___block_invoke_4;
    v15[3] = &unk_278936AC8;
    v16 = v7;
    v17 = v23;
    dispatch_group_notify(v10, v13, v15);
  }

  _Block_object_dispose(v23, 8);
  v14 = *MEMORY[0x277D85DE8];
}

void __78__SPCoreSpotlightIndexer_deleteAllInteractionsWithBundleID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_enter(*(a1 + 32));
  v4 = sIndexQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__SPCoreSpotlightIndexer_deleteAllInteractionsWithBundleID_completionHandler___block_invoke_2;
  v10[3] = &unk_278936C08;
  v5 = *(a1 + 48);
  v10[4] = *(a1 + 40);
  v11 = v3;
  v6 = v5;
  v7 = *(a1 + 56);
  v12 = v6;
  v14 = v7;
  v13 = *(a1 + 32);
  v8 = v3;
  v9 = _setup_block(v10, 0, 19446);
  dispatch_async(v4, v9);
}

void __78__SPCoreSpotlightIndexer_deleteAllInteractionsWithBundleID_completionHandler___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 32) = CFAbsoluteTimeGetCurrent();
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __78__SPCoreSpotlightIndexer_deleteAllInteractionsWithBundleID_completionHandler___block_invoke_3;
  v6[3] = &unk_278934F58;
  v5 = *(a1 + 56);
  v4 = v5;
  v7 = v5;
  [v2 deleteAllInteractionsWithBundleID:v3 completionHandler:v6];
}

void __78__SPCoreSpotlightIndexer_deleteAllInteractionsWithBundleID_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v4 = *(*(a1 + 40) + 8);
    v6 = *(v4 + 40);
    v5 = (v4 + 40);
    if (!v6)
    {
      objc_storeStrong(v5, a2);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

- (void)addInteraction:(id)a3 bundleID:(id)a4 protectionClass:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v9 && v10)
  {
    v12 = [(SPCoreSpotlightIndexer *)self interactionHandler];
    [v12 handleInteraction:v8 bundleID:v9 protectionClass:v11];
  }

  else
  {
    v12 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v14 = 138412802;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v11;
      _os_log_debug_impl(&dword_231A35000, v12, OS_LOG_TYPE_DEBUG, "skipping interaction %@ bundle %@ pc %@", &v14, 0x20u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

+ (BOOL)writeDiagnostic:(id)a3 bundleID:(id)a4 identifier:(id)a5 logQuery:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v66 = a4;
  v65 = a5;
  v64 = _CFCopySystemVersionDictionary();
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"System Version - %@\n\n", v64];
  v11 = 0x278933000uLL;
  v12 = +[SPCoreSpotlightIndexer sharedInstance];
  v13 = [v10 dataUsingEncoding:4];
  v14 = [v12 writeData:v13 toFile:v9];

  if (v14)
  {
    v15 = MEMORY[0x277CCACA8];
    v16 = [MEMORY[0x277CBEAF8] preferredLanguages];
    v17 = [v15 stringWithFormat:@"Preferred Languages - %@\n\n", v16];

    v18 = +[SPCoreSpotlightIndexer sharedInstance];
    v19 = [v17 dataUsingEncoding:4];
    LODWORD(v16) = [v18 writeData:v19 toFile:v9];

    if (v16)
    {
      v20 = *MEMORY[0x277CBF040];
      v21 = *MEMORY[0x277CBF010];
      v22 = CFPreferencesCopyKeyList(@"com.apple.spotlightui", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
      if ([(__CFArray *)v22 count])
      {
        v23 = CFPreferencesCopyMultiple(v22, @"com.apple.spotlightui", v20, v21);
        if ([(__CFDictionary *)v23 count])
        {
          v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Preferences - %@\n\n", v23];

          v24 = +[SPCoreSpotlightIndexer sharedInstance];
          v25 = [v10 dataUsingEncoding:4];
          v26 = [v24 writeData:v25 toFile:v9];

          if (!v26)
          {

            v28 = 0;
LABEL_38:
            v29 = v64;

            goto LABEL_39;
          }

          v17 = v10;
        }

        v27 = 0x277CCA000;
      }

      else
      {
        v27 = 0x277CCA000uLL;
      }

      v30 = +[SpotlightSender copyDiagnosticInfo];
      v63 = v30;
      if ([v30 count])
      {
        v10 = [*(v27 + 3240) stringWithFormat:@"Spotlight Receivers - %@\n\n", v30];

        v31 = +[SPCoreSpotlightIndexer sharedInstance];
        v32 = [v10 dataUsingEncoding:4];
        v33 = [v31 writeData:v32 toFile:v9];

        if (!v33)
        {
          v28 = 0;
LABEL_37:

          goto LABEL_38;
        }
      }

      else
      {
        v10 = v17;
      }

      v62 = v22;
      for (i = 0; i != 4; ++i)
      {
        if (i != 2 || v6)
        {
          v35 = objc_autoreleasePoolPush();
          v36 = SDTraceDescription(i);
          if ([v36 length])
          {
            [*(v11 + 1464) sharedInstance];
            v38 = v37 = v11;
            v39 = [v36 dataUsingEncoding:4];
            v40 = [v38 writeData:v39 toFile:v9];

            if (!v40)
            {
              goto LABEL_31;
            }

            v41 = [*(v37 + 1464) sharedInstance];
            v42 = [@"\n" dataUsingEncoding:4];
            v43 = [v41 writeData:v42 toFile:v9];

            v11 = v37;
            if (!v43)
            {
LABEL_31:

              objc_autoreleasePoolPop(v35);
              v28 = 0;
              v22 = v62;
              goto LABEL_37;
            }
          }

          objc_autoreleasePoolPop(v35);
        }
      }

      v72 = 0;
      v73 = &v72;
      v74 = 0x2020000000;
      v75 = 1;
      v44 = [*(v11 + 1464) sharedInstance];
      v45 = [v44 concreteIndexers];
      v67[0] = MEMORY[0x277D85DD0];
      v67[1] = 3221225472;
      v67[2] = __71__SPCoreSpotlightIndexer_writeDiagnostic_bundleID_identifier_logQuery___block_invoke;
      v67[3] = &unk_278936C58;
      v71 = &v72;
      v46 = v9;
      v68 = v46;
      v69 = v66;
      v70 = v65;
      [v45 enumerateKeysAndObjectsUsingBlock:v67];

      v47 = MEMORY[0x277CCACA8];
      [*(v11 + 1464) sharedInstance];
      v48 = v22 = v62;
      v49 = [v48 dumpIndexAges];
      v50 = [v47 stringWithFormat:@"\nCoreSpotlight Indexes Age Info:\n%@\n", v49];

      v51 = [*(v11 + 1464) sharedInstance];
      v52 = [v50 dataUsingEncoding:4];
      LOBYTE(v49) = [v51 writeData:v52 toFile:v46];

      if (v49)
      {
        v53 = MEMORY[0x277CCACA8];
        v54 = [*(v11 + 1464) sharedInstance];
        v55 = [v54 dumpIndexAnalytics];
        v56 = [v53 stringWithFormat:@"\nCoreSpotlight Indexes Analytics Info:\n%@\n", v55];

        v57 = [*(v11 + 1464) sharedInstance];
        v58 = [v56 dataUsingEncoding:4];
        LOBYTE(v53) = [v57 writeData:v58 toFile:v46];

        if (v53)
        {
          if (sDelegate)
          {
            v59 = [sDelegate extraTTRInfo];
            if (v59)
            {
              v60 = [*(v11 + 1464) sharedInstance];
              [v60 writeData:v59 toFile:v46];
            }
          }

          v28 = *(v73 + 24);
        }

        else
        {
          v28 = 0;
        }
      }

      else
      {
        v28 = 0;
      }

      _Block_object_dispose(&v72, 8);
      goto LABEL_37;
    }

    v28 = 0;
    v10 = v17;
  }

  else
  {
    v28 = 0;
  }

  v29 = v64;
LABEL_39:

  return v28 & 1;
}

uint64_t __71__SPCoreSpotlightIndexer_writeDiagnostic_bundleID_identifier_logQuery___block_invoke(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 writeDiagnostic:a1[4] bundleID:a1[5] identifier:a1[6]];
  *(*(a1[7] + 8) + 24) = result;
  if ((*(*(a1[7] + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }

  return result;
}

- (void)getDBLogsWithCompletionHandler:(id)a3
{
  v3 = MEMORY[0x277CBEBD0];
  v4 = a3;
  v5 = [[v3 alloc] initWithSuiteName:@"com.apple.searchd"];
  v6 = +[SPCoreSpotlightIndexer sharedInstance];
  v7 = [v6 concreteIndexers];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__SPCoreSpotlightIndexer_getDBLogsWithCompletionHandler___block_invoke;
  v9[3] = &unk_278936C80;
  v10 = v5;
  v8 = v5;
  [v7 enumerateKeysAndObjectsUsingBlock:v9];

  v4[2](v4, 1);
}

void __57__SPCoreSpotlightIndexer_getDBLogsWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) objectForKey:@"lastQueryString"];
  if (v5)
  {
    v6 = dispatch_group_create();
    dispatch_group_enter(v6);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __57__SPCoreSpotlightIndexer_getDBLogsWithCompletionHandler___block_invoke_2;
    v8[3] = &unk_2789345C8;
    v9 = v6;
    v7 = v6;
    [v4 dumpAllRankingDiagnosticInformationForQuery:v5 withCompletionHandler:v8];
    dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  }
}

void __57__SPCoreSpotlightIndexer_getDBLogsWithCompletionHandler___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    dispatch_group_leave(*(a1 + 32));
  }
}

- (void)_issueCacheCommand:(id)a3 xpc:(id)a4 searchContext:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  dispatch_assert_queue_not_V2(self->_indexQueue);
  v12 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [SPCoreSpotlightIndexer _issueCacheCommand:xpc:searchContext:completionHandler:];
  }

  v13 = [v9 componentsSeparatedByString:@":"];
  v14 = [v13 count];
  if (!v14)
  {
    goto LABEL_41;
  }

  v15 = v14;
  v16 = [v13 objectAtIndexedSubscript:0];
  v17 = [v16 isEqualToString:@"erase"];

  if (v17)
  {
    if (v15 != 1)
    {
      v18 = [v13 objectAtIndexedSubscript:1];
      v19 = v18;
      if (!v18 || (v20 = [v18 isEqualToString:@"Default"], v21 = v19, v20))
      {
        v21 = *MEMORY[0x277CCA1A0];
      }

      v22 = v21;
      v23 = [(SPCoreSpotlightIndexer *)self concreteIndexerForProtectionClass:v22 andBundleID:0];
      v24 = v23;
      v25 = v23 != 0;
      if (!v23)
      {
LABEL_48:

        if (!v11)
        {
          goto LABEL_53;
        }

        goto LABEL_49;
      }

      v84[0] = MEMORY[0x277D85DD0];
      v84[1] = 3221225472;
      v84[2] = __81__SPCoreSpotlightIndexer__issueCacheCommand_xpc_searchContext_completionHandler___block_invoke;
      v84[3] = &unk_278936CA8;
      v24 = v23;
      v85 = v24;
      v86 = v11;
      [v24 closeCache:v84];

      v11 = 0;
      v25 = 1;
      v26 = v85;
LABEL_47:

      goto LABEL_48;
    }

    goto LABEL_43;
  }

  v27 = [v13 objectAtIndexedSubscript:0];
  v28 = [v27 isEqualToString:@"lookup"];

  if (v28)
  {
    if (v15 >= 4)
    {
      v19 = [v13 objectAtIndexedSubscript:1];
      v58 = [v13 objectAtIndexedSubscript:2];
      v24 = [v13 objectAtIndexedSubscript:3];
      if (!v19 || (v29 = [v19 isEqualToString:@"Default"], v30 = v19, v29))
      {
        v30 = *MEMORY[0x277CCA1A0];
      }

      v31 = v30;
      v32 = [(SPCoreSpotlightIndexer *)self concreteIndexerForProtectionClass:v31 andBundleID:v58];
      v33 = v32;
      v25 = v32 != 0;
      if (v32)
      {
        queue = self->_indexQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __81__SPCoreSpotlightIndexer__issueCacheCommand_xpc_searchContext_completionHandler___block_invoke_2572;
        block[3] = &unk_278936A00;
        v79 = v32;
        v80 = v24;
        v81 = v58;
        v34 = v31;
        v82 = v31;
        v83 = v11;
        dispatch_sync(queue, block);

        v11 = 0;
      }

      else
      {
        v34 = v31;
      }

      v26 = v34;
      v22 = v58;
      goto LABEL_47;
    }

    goto LABEL_43;
  }

  v35 = [v13 objectAtIndexedSubscript:0];
  v36 = [v35 isEqualToString:@"insert"];

  if (v36)
  {
    if (v15 >= 5)
    {
      v19 = [v13 objectAtIndexedSubscript:1];
      v22 = [v13 objectAtIndexedSubscript:2];
      v24 = [v13 objectAtIndexedSubscript:3];
      v59 = [v13 objectAtIndexedSubscript:4];
      if (!v19 || (v37 = [v19 isEqualToString:@"Default"], v38 = v19, v37))
      {
        v38 = *MEMORY[0x277CCA1A0];
      }

      v57 = v38;
      v39 = [SPCoreSpotlightIndexer concreteIndexerForProtectionClass:"concreteIndexerForProtectionClass:andBundleID:" andBundleID:?];
      v40 = v39;
      v25 = v39 != 0;
      if (!v39)
      {
        goto LABEL_33;
      }

      indexQueue = self->_indexQueue;
      v71[0] = MEMORY[0x277D85DD0];
      v71[1] = 3221225472;
      v71[2] = __81__SPCoreSpotlightIndexer__issueCacheCommand_xpc_searchContext_completionHandler___block_invoke_2;
      v71[3] = &unk_278936CD0;
      v72 = v39;
      v73 = v24;
      v74 = v59;
      v75 = v22;
      v76 = v57;
      v77 = v11;
      dispatch_sync(indexQueue, v71);

      v42 = v72;
LABEL_32:

      v11 = 0;
LABEL_33:

      v26 = v59;
      goto LABEL_47;
    }

    goto LABEL_43;
  }

  v43 = [v13 objectAtIndexedSubscript:0];
  v44 = [v43 isEqualToString:@"delete"];

  if (!v44)
  {
    v49 = [v13 objectAtIndexedSubscript:0];
    v50 = [v49 isEqualToString:@"fileDescriptor"];

    if (v50)
    {
      if (v15 >= 3)
      {
        v19 = [v13 objectAtIndexedSubscript:1];
        v22 = [v13 objectAtIndexedSubscript:2];
        if (!v19 || (v51 = [v19 isEqualToString:@"Default"], v52 = v19, v51))
        {
          v52 = *MEMORY[0x277CCA1A0];
        }

        v24 = v52;
        v53 = [(SPCoreSpotlightIndexer *)self concreteIndexerForProtectionClass:v24 andBundleID:v22];
        v26 = v53;
        v25 = v53 != 0;
        if (v53)
        {
          v54 = self->_indexQueue;
          v60[0] = MEMORY[0x277D85DD0];
          v60[1] = 3221225472;
          v60[2] = __81__SPCoreSpotlightIndexer__issueCacheCommand_xpc_searchContext_completionHandler___block_invoke_4;
          v60[3] = &unk_278934F08;
          v26 = v53;
          v61 = v26;
          v62 = v10;
          v63 = v11;
          dispatch_sync(v54, v60);

          v11 = 0;
          v25 = 1;
        }

        goto LABEL_47;
      }

      goto LABEL_43;
    }

LABEL_41:
    v25 = 1;
    if (!v11)
    {
      goto LABEL_53;
    }

    goto LABEL_49;
  }

  if (v15 >= 5)
  {
    v19 = [v13 objectAtIndexedSubscript:1];
    v22 = [v13 objectAtIndexedSubscript:2];
    v24 = [v13 objectAtIndexedSubscript:3];
    v59 = [v13 objectAtIndexedSubscript:4];
    if (!v19 || (v45 = [v19 isEqualToString:@"Default"], v46 = v19, v45))
    {
      v46 = *MEMORY[0x277CCA1A0];
    }

    v57 = v46;
    v47 = [SPCoreSpotlightIndexer concreteIndexerForProtectionClass:"concreteIndexerForProtectionClass:andBundleID:" andBundleID:?];
    v40 = v47;
    v25 = v47 != 0;
    if (!v47)
    {
      goto LABEL_33;
    }

    v48 = self->_indexQueue;
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __81__SPCoreSpotlightIndexer__issueCacheCommand_xpc_searchContext_completionHandler___block_invoke_3;
    v64[3] = &unk_278936CD0;
    v65 = v47;
    v66 = v24;
    v67 = v59;
    v68 = v22;
    v69 = v57;
    v70 = v11;
    dispatch_sync(v48, v64);

    v42 = v65;
    goto LABEL_32;
  }

LABEL_43:
  v25 = 0;
  if (!v11)
  {
    goto LABEL_53;
  }

LABEL_49:
  if (v25)
  {
    v55 = 0;
  }

  else
  {
    v55 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-2005 userInfo:0];
  }

  (*(v11 + 2))(v11, 0, v55);

LABEL_53:
}

void __81__SPCoreSpotlightIndexer__issueCacheCommand_xpc_searchContext_completionHandler___block_invoke(uint64_t a1)
{
  v1 = a1;
  v35 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _indexPath];
  v3 = [MEMORY[0x277CBEBC0] fileURLWithPath:v2 isDirectory:1];
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v3 path];
  v6 = [v4 fileExistsAtPath:v5];

  if (v6)
  {
    v25 = v1;
    v26 = v2;
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v8 = *MEMORY[0x277CBE868];
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:{*MEMORY[0x277CBE8E8], *MEMORY[0x277CBE868], *MEMORY[0x277CBE838], 0}];
    v24 = v3;
    v10 = [v7 enumeratorAtURL:v3 includingPropertiesForKeys:v9 options:4 errorHandler:0];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v29;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v28 + 1) + 8 * i);
          v27 = 0;
          [v16 getResourceValue:&v27 forKey:v8 error:0];
          v17 = v27;
          if (([v17 BOOLValue] & 1) == 0)
          {
            v18 = [v16 absoluteString];
            v19 = [v18 containsString:@"spotlightcache"];

            if (v19)
            {
              v20 = logForCSLogCategoryIndex();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
              {
                v21 = [v16 absoluteString];
                *buf = 138412290;
                v33 = v21;
                _os_log_impl(&dword_231A35000, v20, OS_LOG_TYPE_INFO, "Spotlight cache erase %@", buf, 0xCu);
              }

              v22 = [MEMORY[0x277CCAA00] defaultManager];
              [v22 removeItemAtURL:v16 error:0];
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v13);
    }

    v1 = v25;
    v2 = v26;
    v3 = v24;
  }

  (*(*(v1 + 40) + 16))();

  v23 = *MEMORY[0x277D85DE8];
}

void __81__SPCoreSpotlightIndexer__issueCacheCommand_xpc_searchContext_completionHandler___block_invoke_2572(void *a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v5[0] = a1[5];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  [v2 cacheEntryForKeys:v3 bundleID:a1[6] protectionClass:a1[7] completionHandler:a1[8]];

  v4 = *MEMORY[0x277D85DE8];
}

- (id)writeUISearchEnabled:(BOOL)a3
{
  v3 = a3;
  v27[4] = *MEMORY[0x277D85DE8];
  v4 = [sDelegate indexDirectory];
  v5 = MEMORY[0x277CBEBC0];
  v6 = NSHomeDirectory();
  v27[0] = v6;
  v27[1] = @"Library";
  v27[2] = @"Containers";
  v27[3] = @"com.apple.managedcorespotlightd";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:4];
  v8 = [v5 fileURLWithPathComponents:v7];

  v9 = MEMORY[0x277CBEBC0];
  v10 = NSHomeDirectory();
  v26[0] = v10;
  v26[1] = @"Library";
  v26[2] = @"Containers";
  v26[3] = @"com.apple.managedcorespotlightd";
  v26[4] = @"EnabledIndexes";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:5];
  v12 = [v9 fileURLWithPathComponents:v11];

  if (!v12)
  {
    v16 = 0;
    goto LABEL_24;
  }

  v13 = [objc_alloc(MEMORY[0x277CBEA60]) initWithContentsOfURL:v12];
  if (!v13)
  {
    v13 = objc_opt_new();
  }

  v14 = [v13 containsObject:v4];
  if ((v14 & 1) == 0 && v3)
  {
    v15 = [v13 arrayByAddingObject:v4];
    goto LABEL_11;
  }

  v16 = 0;
  if (v14 && !v3)
  {
    v17 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF != %@", v4];
    v15 = [v13 filteredArrayUsingPredicate:v17];

    v13 = v17;
LABEL_11:

    v18 = [MEMORY[0x277CCAA00] defaultManager];
    v25 = 0;
    v19 = [v18 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:&v25];
    v20 = v25;

    if (!v19 || v20)
    {
      v21 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [SPCoreSpotlightIndexer writeUISearchEnabled:];
      }
    }

    if ([v15 writeToURL:v12 atomically:1])
    {
      v16 = 0;
    }

    else
    {
      v22 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [SPCoreSpotlightIndexer writeUISearchEnabled:];
      }

      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1 userInfo:0];
    }

    goto LABEL_23;
  }

  v15 = v13;
LABEL_23:

LABEL_24:
  v23 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)fetchBundleIdsForProtectionClass:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  indexQueue = self->_indexQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__SPCoreSpotlightIndexer_fetchBundleIdsForProtectionClass_completionHandler___block_invoke;
  block[3] = &unk_278934F08;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(indexQueue, block);
}

void __77__SPCoreSpotlightIndexer_fetchBundleIdsForProtectionClass_completionHandler___block_invoke(uint64_t a1)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
  v22 = a1;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v36[0] = v3;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
  }

  else
  {
    v5 = 0;
  }

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __77__SPCoreSpotlightIndexer_fetchBundleIdsForProtectionClass_completionHandler___block_invoke_2;
  v32[3] = &unk_2789366A0;
  v6 = v2;
  v33 = v6;
  [v4 _enumerateIndexersWithProtectionClasses:v5 inferSpecialIndexes:1 block:v32];
  if (v3)
  {
  }

  v7 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
    do
    {
      v11 = 0;
      do
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(obj);
        }

        if ([*(*(&v28 + 1) + 8 * v11) index])
        {
          v12 = SICopyProperties();
          v13 = [v12 objectForKeyedSubscript:@"GroupAssignments"];
          if ([v13 count])
          {
            v26 = 0u;
            v27 = 0u;
            v24 = 0u;
            v25 = 0u;
            v14 = [v13 allKeys];
            v15 = [v14 countByEnumeratingWithState:&v24 objects:v34 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v25;
              do
              {
                v18 = 0;
                do
                {
                  if (*v25 != v17)
                  {
                    objc_enumerationMutation(v14);
                  }

                  [v7 addObject:*(*(&v24 + 1) + 8 * v18++)];
                }

                while (v16 != v18);
                v16 = [v14 countByEnumeratingWithState:&v24 objects:v34 count:16];
              }

              while (v16);
            }
          }
        }

        ++v11;
      }

      while (v11 != v9);
      v9 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
    }

    while (v9);
  }

  v19 = *(v22 + 48);
  if (v19)
  {
    v20 = [v7 allObjects];
    (*(v19 + 16))(v19, v20, 0);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke()
{
  v16 = *MEMORY[0x277D85DE8];
  v0 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_231A35000, v0, OS_LOG_TYPE_INFO, "#index reset", buf, 2u);
  }

  v1 = [sDelegate indexDirectory];
  v2 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v15 = v1;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_INFO, "Spotlight index reset %@", buf, 0xCu);
  }

  v13 = 0;
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [v3 fileExistsAtPath:v1 isDirectory:&v13];

  if (v4)
  {
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    [v5 removeItemAtPath:v1 error:0];
  }

  v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v7 = [v6 persistentDomainForName:@"com.apple.spotlightknowledge"];
  if (v7)
  {
    [v6 removePersistentDomainForName:@"com.apple.spotlightknowledge"];
  }

  v8 = logForCSLogCategoryDeleteAll();
  v9 = os_signpost_id_generate(v8);

  v10 = logForCSLogCategoryDeleteAll();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_231A35000, v11, OS_SIGNPOST_EVENT, v9, "deleteAll", "searchutil full wipe", buf, 2u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_2657(uint64_t a1)
{
  v8 = [MEMORY[0x277CBEB18] array];
  v2 = [MEMORY[0x277CC3538] sharedManager];
  v3 = [v2 extensions];
  [v8 addObjectsFromArray:v3];

  v4 = [MEMORY[0x277CC3530] sharedManager];
  v5 = [v4 extensions];
  [v8 addObjectsFromArray:v5];

  v6 = [v8 componentsJoinedByString:@"\n"];
  v7 = [v6 dataUsingEncoding:4];

  (*(*(a1 + 32) + 16))();
}

void __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_2(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v21 = a1;
  obj = [*(*(a1 + 32) + 136) allValues];
  v24 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v24)
  {
    v23 = *v31;
    do
    {
      v3 = 0;
      do
      {
        if (*v31 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = v3;
        v4 = *(*(&v30 + 1) + 8 * v3);
        [v2 appendString:@"\n"];
        v5 = [v4 knownClients];
        v6 = [v5 allObjects];
        v7 = [v6 componentsJoinedByString:{@", "}];
        v8 = v7;
        if (v7)
        {
          v9 = v7;
        }

        else
        {
          v9 = &stru_2846BD100;
        }

        [v2 appendString:v9];

        v10 = [v4 checkedInClients];
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v11 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v27;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v27 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v26 + 1) + 8 * i);
              v16 = [v10 objectForKey:v15];
              v17 = [v4 dataclass];
              [v2 appendFormat:@"\n%@ (%@) - %@", v15, v17, v16];
            }

            v12 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v12);
        }

        v3 = v25 + 1;
      }

      while (v25 + 1 != v24);
      v24 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v24);
  }

  v18 = *(v21 + 40);
  v19 = [v2 dataUsingEncoding:4];
  (*(v18 + 16))(v18, v19, 0);

  v20 = *MEMORY[0x277D85DE8];
}

void __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_2664(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_2_2665;
  v2[3] = &unk_2789341A8;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 commitUpdatesWithCompletionHandler:v2];
}

uint64_t __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_2718(uint64_t a1)
{
  wait_for_apfs_kb_state(sIndexMountPath, 1);
  v2 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "### testSuspendUntilUnlocked complete", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_2722(uint64_t a1)
{
  wait_for_apfs_kb_state(sIndexMountPath, 0);
  v2 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "### testSuspendUntilLocked complete", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_2726(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_2_2750(void *a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v7;
  if ([v7 length])
  {
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v7 encoding:4];
  }

  v9 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = a1[4];
    v11 = a1[5];
    if (v6)
    {
      v12 = v6;
    }

    else
    {
      v12 = v8;
    }

    v15 = 138412802;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    v19 = 2112;
    v20 = v12;
    _os_log_impl(&dword_231A35000, v9, OS_LOG_TYPE_INFO, "Client state %@ %@: %@", &v15, 0x20u);
  }

  v13 = a1[6];
  if (v13)
  {
    (*(v13 + 16))(v13, v7, v6);
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_2758(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

uint64_t __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_2_2772(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

uint64_t __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_19(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v4 = a2;
  v9 = [v4 dataclass];
  v5 = [v4 getPropertyForKey:*(a1 + 32)];

  v6 = [v3 stringByAppendingFormat:@"\n%@ - %@", v9, v5];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_20(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 index])
  {
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = SICopyProperties();
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        v8 = 0;
        do
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v14 + 1) + 8 * v8);
          v10 = *(a1 + 32);
          v11 = [v3 dataclass];
          v12 = [v4 objectForKeyedSubscript:v9];
          [v10 appendFormat:@"%@ %@ - %@\n", v11, v9, v12];

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_21(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 index])
  {
    v4 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = SICopyProperties();
    v6 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v24;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v23 + 1) + 8 * i);
          if ([v10 hasPrefix:*(a1 + 32)])
          {
            [v4 addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v7);
    }

    if ([v4 count])
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v11 = v4;
      v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v20;
        v15 = *MEMORY[0x277CBEEE8];
        do
        {
          for (j = 0; j != v13; ++j)
          {
            if (*v20 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v17 = *(*(&v19 + 1) + 8 * j);
            SISetProperty();
          }

          v13 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
        }

        while (v13);
      }

      [v3 commitUpdates:{*(a1 + 40), v19}];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_2998(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = v5;
    v9 = 1024;
    v10 = a2;
    _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_DEFAULT, "### %@ complete res: %d", &v7, 0x12u);
  }

  if (a2)
  {
    *(*(*(a1 + 48) + 8) + 24) = a2;
  }

  dispatch_group_leave(*(a1 + 40));
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_2999(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 24);
  if (v2)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:v2 userInfo:0];
    objc_claimAutoreleasedReturnValue();
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, 0);
  }

  return MEMORY[0x2821F9730]();
}

void __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_3006(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:a2 userInfo:0];
  }

  else
  {
    v4 = 0;
  }

  v5 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8 = 138412546;
    v9 = v6;
    v10 = 1024;
    v11 = a2;
    _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_DEFAULT, "### %@ complete res: %d", &v8, 0x12u);
  }

  (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x277D85DE8];
}

void __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_3010(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v15 = a2;
    _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_DEFAULT, "### priorityReset - transferred priority items to default index res: %d", buf, 8u);
  }

  if (a2)
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:a2 userInfo:0];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    [*(a1 + 32) setProperty:&unk_2846C95A8 forKey:@"kSPPriorityIndexVersion" sync:0];
    v6 = *(a1 + 40);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_3011;
    v10[3] = &unk_278936DE8;
    v13 = *(a1 + 56);
    v7 = *(a1 + 48);
    v8 = *(a1 + 40);
    v11 = v7;
    v12 = v8;
    [v6 commitUpdatesWithCompletionHandler:v10];

    v5 = v13;
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_3011(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  [*(a1 + 32) closeIndex];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [*(a1 + 40) priorityIndexPath];
  [v2 removeItemAtPath:v3 error:0];

  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [*(a1 + 40) priorityIndexAvailableTouchFilePath];
  [v4 removeItemAtPath:v5 error:0];

  v6 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_231A35000, v6, OS_LOG_TYPE_DEFAULT, "### priorityReset complete, exiting", v7, 2u);
  }

  exit(0);
}

uint64_t __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_3015(uint64_t a1)
{
  v2 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "locking", v4, 2u);
  }

  return [*(a1 + 32) locking];
}

uint64_t __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_3019(uint64_t a1)
{
  v2 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "unlocking", v4, 2u);
  }

  return [*(a1 + 32) unlock];
}

void __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_3038(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [v4 dataclass];
  v6 = v4[120];

  v7 = @"NO";
  if (v6)
  {
    v7 = @"YES";
  }

  v11 = [v3 stringWithFormat:@"%@: readOnly = %@\n", v5, v7];

  v8 = [*(*(*(a1 + 32) + 8) + 40) stringByAppendingString:v11];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_4_3088(uint64_t a1)
{
  v5 = [MEMORY[0x277CC33F0] sharedInstance];
  v2 = [v5 dumpAppContainerCache];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_5_3089(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 appendFormat:@"\t%@ : {\n", a2];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_6_3093;
  v7[3] = &unk_278936E60;
  v8 = *(a1 + 32);
  [v6 enumerateKeysAndObjectsUsingBlock:v7];

  [*(a1 + 32) appendFormat:@"\t}\n"];
}

void __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_6_3093(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  [v4 appendFormat:@"\t\t%@ : 0x%016llx\n", v5, objc_msgSend(a3, "longLongValue")];
}

void __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_7_3106(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = MEMORY[0x277CCAAA0];
    v4 = [*(a1 + 32) storageUsage];
    v7 = 0;
    v5 = [v3 dataWithJSONObject:v4 options:0 error:&v7];
    v6 = v7;
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1 userInfo:0];
    v5 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

void __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_8_3111(uint64_t a1, void *a2, double a3)
{
  v6 = a3;
  v4 = a2;
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277CBEA90] dataWithBytes:&v6 length:8];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)topKTerms:(id)a3 completionHandler:(id)a4
{
  v22[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__0;
  v20 = __Block_byref_object_dispose__0;
  v21 = 0;
  v22[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__SPCoreSpotlightIndexer_topKTerms_completionHandler___block_invoke;
  v13[3] = &unk_278936ED8;
  v9 = v6;
  v14 = v9;
  v15 = &v16;
  [(SPCoreSpotlightIndexer *)self _enumerateIndexersWithProtectionClasses:v8 inferSpecialIndexes:0 block:v13];

  v10 = v17[5];
  if (v10)
  {
    [v10 index];
    v12 = v7;
    SIFetchTopKTerms();
  }

  _Block_object_dispose(&v16, 8);
  v11 = *MEMORY[0x277D85DE8];
}

void __54__SPCoreSpotlightIndexer_topKTerms_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = [v6 dataclass];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  if (v5)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

void __54__SPCoreSpotlightIndexer_topKTerms_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = objc_opt_new();
  if (a2)
  {
    _MDPlistGetRootPlistObjectFromPlist();
    if (_MDPlistGetPlistObjectType() == 241)
    {
      _MDPlistDictionaryIterate();
    }
  }

  v4 = *(a1 + 32);
  v5 = [v7[5] dataUsingEncoding:4];
  (*(v4 + 16))(v4, v5, 0);

  _Block_object_dispose(&v6, 8);
}

void __54__SPCoreSpotlightIndexer_topKTerms_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (!a3)
  {
    __54__SPCoreSpotlightIndexer_topKTerms_completionHandler___block_invoke_3_cold_1();
  }

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  v9 = *a4;
  v11 = *(a4 + 2);
  if (_MDPlistGetPlistObjectType() == 241)
  {
    v7 = v6;
    v8 = *(a1 + 32);
    v10 = *a4;
    v12 = *(a4 + 2);
    _MDPlistDictionaryIterate();
  }
}

void __54__SPCoreSpotlightIndexer_topKTerms_completionHandler___block_invoke_4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    __54__SPCoreSpotlightIndexer_topKTerms_completionHandler___block_invoke_4_cold_1();
  }

  v6 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a2, 0x8000100u);
  *buf = *a4;
  *&buf[16] = *(a4 + 16);
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:_MDPlistNumberGetIntValue()];
  v8 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 32);
    *buf = 138412802;
    *&buf[4] = v9;
    *&buf[12] = 2112;
    *&buf[14] = v6;
    *&buf[22] = 2112;
    v12 = v7;
    _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_INFO, "bundleIndex: %@, key: %@, value: %@", buf, 0x20u);
  }

  [*(*(*(a1 + 40) + 8) + 40) appendFormat:@"\n%@ %@ %@", v6, v7, *(a1 + 32)];
  CFRelease(v6);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)performIndexerTask:(id)a3 completionHandler:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v9 = [v6 job];
    v10 = [v9 jobType];

    if ((v10 - 2) >= 2)
    {
      if (v10 != 1)
      {
LABEL_26:
        v27 = [(SPCoreSpotlightIndexer *)self firstUnlockQueue];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __63__SPCoreSpotlightIndexer_performIndexerTask_completionHandler___block_invoke;
        v32[3] = &unk_278934F08;
        v33 = v6;
        v34 = self;
        v35 = v8;
        v28 = _setup_block(v32, 0, 21197);
        dispatch_async(v27, v28);

        goto LABEL_27;
      }

      v42 = 0u;
      v43 = 0u;
      v41 = 0u;
      v40 = 0u;
      v11 = [v6 bundleIDs];
      v18 = [v11 countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (v18)
      {
        v19 = v18;
        v30 = self;
        v31 = v8;
        v20 = *v41;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v41 != v20)
            {
              objc_enumerationMutation(v11);
            }

            v22 = *(*(&v40 + 1) + 8 * i);
            if (isAppleInternalInstall())
            {
              v23 = [v6 job];
              v24 = [v23 identifiersToReindex];
              v25 = [v24 count];
            }

            else
            {
              v25 = 1;
            }

            v26 = [MEMORY[0x277CC3468] sharedInstance];
            [v26 logWithBundleID:v22 indexOperation:8 itemCount:v25 code:7];
          }

          v19 = [v11 countByEnumeratingWithState:&v40 objects:v45 count:16];
        }

        while (v19);
        self = v30;
        v8 = v31;
      }
    }

    else
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v11 = [v6 bundleIDs];
      v12 = [v11 countByEnumeratingWithState:&v36 objects:v44 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v37;
        do
        {
          for (j = 0; j != v13; ++j)
          {
            if (*v37 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v36 + 1) + 8 * j);
            v17 = [MEMORY[0x277CC3468] sharedInstance];
            [v17 logWithBundleID:v16 indexOperation:9 itemCount:1 code:6];
          }

          v13 = [v11 countByEnumeratingWithState:&v36 objects:v44 count:16];
        }

        while (v13);
      }
    }

    goto LABEL_26;
  }

  if (v7)
  {
    (*(v7 + 2))(v7);
  }

LABEL_27:

  v29 = *MEMORY[0x277D85DE8];
}

void __63__SPCoreSpotlightIndexer_performIndexerTask_completionHandler___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v3 = dispatch_group_create();
  v4 = [*(a1 + 32) completedBundleIDs];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [*(a1 + 32) completedBundleIDs];
    [v2 addObjectsFromArray:v6];
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [*(a1 + 32) indexers];
  v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      v10 = 0;
      do
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * v10);
        dispatch_group_enter(v3);
        v12 = *(a1 + 32);
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __63__SPCoreSpotlightIndexer_performIndexerTask_completionHandler___block_invoke_2;
        v24[3] = &unk_278934E90;
        v25 = v2;
        v26 = v3;
        [v11 performIndexerTask:v12 withIndexDelegatesAndCompletionHandler:v24];

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v8);
  }

  v13 = [*(a1 + 40) firstUnlockQueue];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __63__SPCoreSpotlightIndexer_performIndexerTask_completionHandler___block_invoke_3;
  v19[3] = &unk_278934EB8;
  v20 = *(a1 + 32);
  v21 = v2;
  v14 = *(a1 + 48);
  v22 = *(a1 + 40);
  v23 = v14;
  v15 = v2;
  v16 = _setup_block(v19, 0, 21196);
  dispatch_group_notify(v3, v13, v16);

  v17 = *MEMORY[0x277D85DE8];
}

void __63__SPCoreSpotlightIndexer_performIndexerTask_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 count])
  {
    v3 = *(a1 + 32);
    objc_sync_enter(v3);
    [*(a1 + 32) addObjectsFromArray:v4];
    objc_sync_exit(v3);
  }

  dispatch_group_leave(*(a1 + 40));
}

void __63__SPCoreSpotlightIndexer_performIndexerTask_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [SPCoreSpotlightIndexerTask alloc];
  v3 = [*(a1 + 32) job];
  v4 = [*(a1 + 32) indexers];
  v7 = [(SPCoreSpotlightIndexerTask *)v2 initWithIndexJob:v3 indexers:v4];

  v5 = [*(a1 + 32) bundleIDs];
  [(SPCoreSpotlightIndexerTask *)v7 setBundleIDs:v5];

  v6 = [*(a1 + 40) allObjects];
  [(SPCoreSpotlightIndexerTask *)v7 setCompletedBundleIDs:v6];

  -[SPCoreSpotlightIndexerTask setDataMigrationStage:](v7, "setDataMigrationStage:", [*(a1 + 32) dataMigrationStage]);
  -[SPCoreSpotlightIndexerTask setShouldResumeOnFailure:](v7, "setShouldResumeOnFailure:", [*(a1 + 32) shouldResumeOnFailure]);
  [*(a1 + 48) performIndexerTask:v7 withIndexExtensionsAndCompletionHandler:*(a1 + 56)];
}

- (void)addCompletedBundleIDs:(id)a3 forIndexerTask:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 indexers];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v13 + 1) + 8 * v11++) addCompletedBundleIDs:v5 forIndexerTask:v6];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)performIndexerTask:(id)a3 withIndexExtensionsAndCompletionHandler:(id)a4
{
  v160 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SPCoreSpotlightIndexer *)self firstUnlockQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(SPCoreSpotlightIndexer *)self extensionDelegate];
  if (v9)
  {
    v10 = [v6 job];
    v11 = [v6 bundleIDs];
    v12 = [v6 completedBundleIDs];
    v13 = logForCSLogCategoryIndex();
    v112 = self;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [v6 dataMigrationStage];
      v15 = [(SPCoreSpotlightIndexer *)self dataMigrationStage];
      v16 = [(SPCoreSpotlightIndexer *)self dataMigrationBundleIDs];
      *buf = 138413314;
      v151 = v11;
      v152 = 2112;
      v153 = v12;
      v154 = 2048;
      v155 = v14;
      v156 = 2048;
      v157 = v15;
      v158 = 2112;
      v159 = v16;
      _os_log_impl(&dword_231A35000, v13, OS_LOG_TYPE_INFO, "bundleIDs:%@, completedBundleIDs:%@, dataMigrationStage:%ld/%ld, dataMigrationBundleIDs:%@", buf, 0x34u);

      self = v112;
    }

    if ([v11 count] == 1)
    {
      v17 = [v11 firstObject];
      if (![v12 containsObject:v17])
      {
        v18 = [v6 dataMigrationStage];
        if (v18 < [(SPCoreSpotlightIndexer *)self dataMigrationStage])
        {
          v19 = [(SPCoreSpotlightIndexer *)self dataMigrationBundleIDs];
          if (!v19)
          {
            goto LABEL_9;
          }

          v20 = v19;
          [(SPCoreSpotlightIndexer *)self dataMigrationBundleIDs];
          v22 = v21 = v17;
          v23 = [v22 containsObject:v21];

          v17 = v21;
          self = v112;

          if (v23)
          {
LABEL_9:
            v24 = v17;
            v25 = logForCSLogCategoryIndex();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              v109 = [v6 dataMigrationStage];
              v94 = [(SPCoreSpotlightIndexer *)self dataMigrationStage];
              v95 = [(SPCoreSpotlightIndexer *)self dataMigrationBundleIDs];
              *buf = 138413314;
              v151 = v10;
              v152 = 2112;
              v153 = v24;
              v154 = 2048;
              v155 = v109;
              v156 = 2048;
              v157 = v94;
              v158 = 2112;
              v159 = v95;
              _os_log_debug_impl(&dword_231A35000, v25, OS_LOG_TYPE_DEBUG, "Dropping job:%@ for indexing extension with bundleID:%@ since it ran during data migration, dataMigrationStange:%lu/%lu, dataMigrationBundleIDs:%@", buf, 0x34u);

              self = v112;
            }

            v17 = v24;
            v149 = v24;
            v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v149 count:1];
            [(SPCoreSpotlightIndexer *)self addCompletedBundleIDs:v26 forIndexerTask:v6];

            goto LABEL_61;
          }
        }

        v61 = +[SpotlightDaemonServer sharedDaemonServer];
        v62 = *MEMORY[0x277CCA1A0];
        v143[0] = MEMORY[0x277D85DD0];
        v143[1] = 3221225472;
        v143[2] = __85__SPCoreSpotlightIndexer_performIndexerTask_withIndexExtensionsAndCompletionHandler___block_invoke;
        v143[3] = &unk_278936D20;
        v63 = v10;
        v144 = v63;
        v145 = v17;
        v107 = v7;
        v146 = v107;
        v105 = v145;
        LODWORD(v62) = [v61 handleJob:v63 bundleID:v145 protectionClass:v62 completionHandler:v143];

        v64 = logForCSLogCategoryIndex();
        v65 = os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG);
        if (v62)
        {
          v17 = v105;
          if (v65)
          {
            [SPCoreSpotlightIndexer performIndexerTask:withIndexExtensionsAndCompletionHandler:];
          }
        }

        else
        {
          if (v65)
          {
            [SPCoreSpotlightIndexer performIndexerTask:withIndexExtensionsAndCompletionHandler:];
          }

          v137[0] = MEMORY[0x277D85DD0];
          v137[1] = 3221225472;
          v137[2] = __85__SPCoreSpotlightIndexer_performIndexerTask_withIndexExtensionsAndCompletionHandler___block_invoke_3124;
          v137[3] = &unk_278936A00;
          v138 = v63;
          v17 = v105;
          v139 = v105;
          v140 = v112;
          v141 = v6;
          v142 = v107;
          [v9 indexRequestsPerformJob:v138 forBundle:v139 completionHandler:v137];

          v64 = v138;
        }

        v66 = v144;
LABEL_59:

LABEL_82:
        goto LABEL_83;
      }

      goto LABEL_61;
    }

    if ([v11 count])
    {
      v27 = [v6 bundleIDs];
      v17 = [v27 mutableCopy];

      [v17 removeObjectsInArray:v12];
      if ([v17 count])
      {
        v100 = v12;
        v102 = v11;
        v110 = v10;
        v28 = [v6 dataMigrationStage];
        if (v28 < [(SPCoreSpotlightIndexer *)self dataMigrationStage])
        {
          v29 = [v17 count];
          if (v29)
          {
            v30 = v29;
            v96 = v7;
            v98 = v9;
            v31 = 0;
            for (i = 0; i != v30; ++i)
            {
              v33 = v17;
              v34 = [v17 objectAtIndexedSubscript:i];
              v35 = [(SPCoreSpotlightIndexer *)self dataMigrationBundleIDs];
              if (!v35 || (v36 = v35, -[SPCoreSpotlightIndexer dataMigrationBundleIDs](self, "dataMigrationBundleIDs"), v37 = objc_claimAutoreleasedReturnValue(), v38 = [v37 containsObject:v34], v37, v36, v38))
              {
                v39 = logForCSLogCategoryIndex();
                if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
                {
                  v41 = [v6 dataMigrationStage];
                  v42 = [(SPCoreSpotlightIndexer *)v112 dataMigrationStage];
                  v43 = [(SPCoreSpotlightIndexer *)v112 dataMigrationBundleIDs];
                  *buf = 138413314;
                  v151 = v110;
                  v152 = 2112;
                  v153 = v34;
                  v154 = 2048;
                  v155 = v41;
                  v156 = 2048;
                  v157 = v42;
                  v158 = 2112;
                  v159 = v43;
                  _os_log_debug_impl(&dword_231A35000, v39, OS_LOG_TYPE_DEBUG, "Dropping job:%@ for indexing extension with bundleID:%@ since it ran during data migration, dataMigrationStange:%lu/%lu, dataMigrationBundleIDs:%@", buf, 0x34u);
                }

                v148 = v34;
                v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v148 count:1];
                self = v112;
                [(SPCoreSpotlightIndexer *)v112 addCompletedBundleIDs:v40 forIndexerTask:v6];

                if (!v31)
                {
                  v31 = objc_opt_new();
                }

                [v31 addIndex:i];
              }

              v17 = v33;
            }

            v7 = v96;
            v9 = v98;
            if (v31)
            {
              [v17 removeObjectsAtIndexes:v31];
            }
          }
        }

        if ([v17 count])
        {
          v67 = logForCSLogCategoryIndex();
          v10 = v110;
          v12 = v100;
          v11 = v102;
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
          {
            [SPCoreSpotlightIndexer performIndexerTask:withIndexExtensionsAndCompletionHandler:];
          }

          v133[0] = MEMORY[0x277D85DD0];
          v133[1] = 3221225472;
          v133[2] = __85__SPCoreSpotlightIndexer_performIndexerTask_withIndexExtensionsAndCompletionHandler___block_invoke_3126;
          v133[3] = &unk_278936F50;
          v134 = v110;
          v135 = self;
          v136 = v6;
          v130[0] = MEMORY[0x277D85DD0];
          v130[1] = 3221225472;
          v130[2] = __85__SPCoreSpotlightIndexer_performIndexerTask_withIndexExtensionsAndCompletionHandler___block_invoke_3128;
          v130[3] = &unk_278934F30;
          v131 = v134;
          v132 = v7;
          [v9 indexRequestsPerformJob:v131 forBundles:v17 perExtensionCompletionHandler:v133 completionHandler:v130];

          v66 = v134;
          goto LABEL_59;
        }

        v10 = v110;
        v12 = v100;
        v11 = v102;
      }

LABEL_61:
      if (v7)
      {
        v7[2](v7);
      }

      goto LABEL_82;
    }

    v99 = v9;
    v44 = objc_alloc_init(MEMORY[0x277CBEB58]);
    if ([v12 count])
    {
      [v44 addObjectsFromArray:v12];
    }

    v101 = v12;
    v45 = [v6 dataMigrationStage];
    v111 = v10;
    v103 = v11;
    v104 = v44;
    if (v45 >= [(SPCoreSpotlightIndexer *)self dataMigrationStage])
    {
LABEL_67:
      v71 = [v10 excludedBundleIDs];
      v72 = [v44 setByAddingObjectsFromArray:v71];
      v73 = [v72 allObjects];
      [v10 setExcludedBundleIDs:v73];

      v74 = dispatch_group_create();
      dispatch_group_enter(v74);
      dispatch_group_enter(v74);
      v75 = logForCSLogCategoryIndex();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
      {
        [SPCoreSpotlightIndexer performIndexerTask:withIndexExtensionsAndCompletionHandler:];
      }

      v122[0] = MEMORY[0x277D85DD0];
      v122[1] = 3221225472;
      v122[2] = __85__SPCoreSpotlightIndexer_performIndexerTask_withIndexExtensionsAndCompletionHandler___block_invoke_3129;
      v122[3] = &unk_278936F50;
      v123 = v10;
      v124 = self;
      v76 = v6;
      v125 = v76;
      v119[0] = MEMORY[0x277D85DD0];
      v119[1] = 3221225472;
      v119[2] = __85__SPCoreSpotlightIndexer_performIndexerTask_withIndexExtensionsAndCompletionHandler___block_invoke_3130;
      v119[3] = &unk_2789342C0;
      v77 = v123;
      v120 = v77;
      v78 = v74;
      v121 = v78;
      v9 = v99;
      [v99 indexRequestsPerformJob:v77 perExtensionCompletionHandler:v122 completionHandler:v119];
      v79 = [v77 protectionClasses];
      v80 = *MEMORY[0x277CCA1A0];
      v81 = [v79 containsObject:*MEMORY[0x277CCA1A0]];

      v82 = [v77 protectionClasses];
      v108 = v80;
      if ([v82 containsObject:@"Priority"])
      {
        v81 = 1;
      }

      else if (sUseMailIndex == 1)
      {
        v83 = [v77 protectionClasses];
        v84 = [v83 containsObject:@"MobileMailIndex"];

        v81 |= v84;
        self = v112;
      }

      v85 = [v77 jobType];
      v86 = logForCSLogCategoryIndex();
      v87 = os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT);
      if (v85 != 2 || (v81 & 1) != 0)
      {
        if (v87)
        {
          v89 = [v77 excludedBundleIDs];
          *buf = 138412546;
          v151 = v77;
          v152 = 2112;
          v153 = v89;
          _os_log_impl(&dword_231A35000, v86, OS_LOG_TYPE_DEFAULT, "Performing job:%@ with spotlight daemon clients, excludedBundleIDs:%@", buf, 0x16u);
        }

        v90 = +[SpotlightDaemonServer sharedDaemonServer];
        v117[0] = MEMORY[0x277D85DD0];
        v117[1] = 3221225472;
        v117[2] = __85__SPCoreSpotlightIndexer_performIndexerTask_withIndexExtensionsAndCompletionHandler___block_invoke_3131;
        v117[3] = &unk_278936F78;
        v117[4] = self;
        v118 = v76;
        v115[0] = MEMORY[0x277D85DD0];
        v115[1] = 3221225472;
        v115[2] = __85__SPCoreSpotlightIndexer_performIndexerTask_withIndexExtensionsAndCompletionHandler___block_invoke_2;
        v115[3] = &unk_278934050;
        v116 = v78;
        [v90 handleJob:v77 protectionClass:v108 perClientCompletionHandler:v117 completionHandler:v115];
      }

      else
      {
        if (v87)
        {
          v88 = [v77 excludedBundleIDs];
          *buf = 138412546;
          v151 = v77;
          v152 = 2112;
          v153 = v88;
          _os_log_impl(&dword_231A35000, v86, OS_LOG_TYPE_DEFAULT, "Ignoring job:%@ with spotlight daemon clients, excludedBundleIDs:%@", buf, 0x16u);
        }

        dispatch_group_leave(v78);
      }

      v17 = v104;
      v91 = qos_class_self();
      v92 = dispatch_get_global_queue(v91, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __85__SPCoreSpotlightIndexer_performIndexerTask_withIndexExtensionsAndCompletionHandler___block_invoke_3;
      block[3] = &unk_2789341A8;
      v114 = v7;
      dispatch_group_notify(v78, v92, block);

      v10 = v111;
      v12 = v101;
      v11 = v103;
      goto LABEL_82;
    }

    v46 = objc_alloc_init(MEMORY[0x277CBEB58]);
    if ([v11 count])
    {
      v97 = v7;
      v128 = 0u;
      v129 = 0u;
      v126 = 0u;
      v127 = 0u;
      v47 = v11;
      v48 = [v47 countByEnumeratingWithState:&v126 objects:v147 count:16];
      if (v48)
      {
        v49 = v48;
        v106 = v6;
        v50 = *v127;
        do
        {
          for (j = 0; j != v49; ++j)
          {
            if (*v127 != v50)
            {
              objc_enumerationMutation(v47);
            }

            v52 = *(*(&v126 + 1) + 8 * j);
            v53 = [(SPCoreSpotlightIndexer *)self dataMigrationBundleIDs];
            if (v53)
            {
              v54 = v53;
              v55 = [(SPCoreSpotlightIndexer *)self dataMigrationBundleIDs];
              v56 = [v55 containsObject:v52];

              if (!v56)
              {
                continue;
              }
            }

            v57 = logForCSLogCategoryIndex();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
            {
              v58 = [v106 dataMigrationStage];
              v59 = [(SPCoreSpotlightIndexer *)self dataMigrationStage];
              v60 = [(SPCoreSpotlightIndexer *)self dataMigrationBundleIDs];
              *buf = 138413314;
              v151 = v111;
              v152 = 2112;
              v153 = v52;
              v154 = 2048;
              v155 = v58;
              v156 = 2048;
              v157 = v59;
              v158 = 2112;
              v159 = v60;
              _os_log_debug_impl(&dword_231A35000, v57, OS_LOG_TYPE_DEBUG, "Dropping job:%@ for indexing extension with bundleID:%@ since it ran during data migration, dataMigrationStange:%lu/%lu, dataMigrationBundleIDs:%@", buf, 0x34u);

              self = v112;
            }

            [v46 addObject:v52];
          }

          v49 = [v47 countByEnumeratingWithState:&v126 objects:v147 count:16];
        }

        while (v49);
        v6 = v106;
      }

      v7 = v97;
    }

    else
    {
      v68 = [(SPCoreSpotlightIndexer *)self dataMigrationBundleIDs];
      v69 = [v68 count];

      if (!v69)
      {
LABEL_66:
        v44 = v104;
        [v104 unionSet:v46];
        v70 = [v46 allObjects];
        [(SPCoreSpotlightIndexer *)self addCompletedBundleIDs:v70 forIndexerTask:v6];

        goto LABEL_67;
      }

      v47 = [(SPCoreSpotlightIndexer *)self dataMigrationBundleIDs];
      [v46 unionSet:v47];
    }

    v10 = v111;
    goto LABEL_66;
  }

  if (v7)
  {
    v7[2](v7);
  }

LABEL_83:

  v93 = *MEMORY[0x277D85DE8];
}

uint64_t __85__SPCoreSpotlightIndexer_performIndexerTask_withIndexExtensionsAndCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __85__SPCoreSpotlightIndexer_performIndexerTask_withIndexExtensionsAndCompletionHandler___block_invoke_cold_1(a1);
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __85__SPCoreSpotlightIndexer_performIndexerTask_withIndexExtensionsAndCompletionHandler___block_invoke_3124(void *a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __85__SPCoreSpotlightIndexer_performIndexerTask_withIndexExtensionsAndCompletionHandler___block_invoke_3124_cold_1(a1);
  }

  v3 = a1[6];
  v7[0] = a1[5];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [v3 addCompletedBundleIDs:v4 forIndexerTask:a1[7]];

  result = a1[8];
  if (result)
  {
    result = (*(result + 16))();
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void __85__SPCoreSpotlightIndexer_performIndexerTask_withIndexExtensionsAndCompletionHandler___block_invoke_3126(void *a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = a1[4];
    *buf = 138412802;
    v14 = v11;
    v15 = 2112;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_debug_impl(&dword_231A35000, v7, OS_LOG_TYPE_DEBUG, "Done performing job:%@ with extension %@, error:%@", buf, 0x20u);
  }

  v8 = a1[5];
  v12 = v5;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  [v8 addCompletedBundleIDs:v9 forIndexerTask:a1[6]];

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __85__SPCoreSpotlightIndexer_performIndexerTask_withIndexExtensionsAndCompletionHandler___block_invoke_3128(uint64_t a1)
{
  v2 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __85__SPCoreSpotlightIndexer_performIndexerTask_withIndexExtensionsAndCompletionHandler___block_invoke_3128_cold_1(a1);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __85__SPCoreSpotlightIndexer_performIndexerTask_withIndexExtensionsAndCompletionHandler___block_invoke_3129(void *a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = a1[4];
    *buf = 138412802;
    v14 = v11;
    v15 = 2112;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_debug_impl(&dword_231A35000, v7, OS_LOG_TYPE_DEBUG, "Done performing job:%@ with extension %@, error:%@", buf, 0x20u);
  }

  v8 = a1[5];
  v12 = v5;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  [v8 addCompletedBundleIDs:v9 forIndexerTask:a1[6]];

  v10 = *MEMORY[0x277D85DE8];
}

void __85__SPCoreSpotlightIndexer_performIndexerTask_withIndexExtensionsAndCompletionHandler___block_invoke_3130(uint64_t a1)
{
  v2 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __85__SPCoreSpotlightIndexer_performIndexerTask_withIndexExtensionsAndCompletionHandler___block_invoke_3128_cold_1(a1);
  }

  dispatch_group_leave(*(a1 + 40));
}

void __85__SPCoreSpotlightIndexer_performIndexerTask_withIndexExtensionsAndCompletionHandler___block_invoke_3131(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v8 = a2;
  v4 = MEMORY[0x277CBEA60];
  v5 = a2;
  v6 = [v4 arrayWithObjects:&v8 count:1];
  [v3 addCompletedBundleIDs:v6 forIndexerTask:{*(a1 + 40), v8, v9}];

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __85__SPCoreSpotlightIndexer_performIndexerTask_withIndexExtensionsAndCompletionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)fetchAttributes:(id)a3 protectionClass:(id)a4 bundleID:(id)a5 identifiers:(id)a6 userCtx:(id)a7 flags:(unsigned int)a8 qos:(unsigned int)a9 completionHandler:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a10;
  if ((deviceUnlocked & 1) == 0)
  {
    SIResumeForUnlock();
  }

  if (!v17 || (v22 = [v17 isEqualToString:@"Default"], v23 = v17, v22))
  {
    v23 = *MEMORY[0x277CCA1A0];
  }

  v24 = v23;
  v25 = [(SPCoreSpotlightIndexer *)self concreteIndexerForProtectionClass:v24 andBundleID:v18];
  v26 = v25;
  if (v25)
  {
    queue = sIndexQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __115__SPCoreSpotlightIndexer_fetchAttributes_protectionClass_bundleID_identifiers_userCtx_flags_qos_completionHandler___block_invoke;
    block[3] = &unk_278936FA0;
    v30 = v25;
    v31 = v16;
    v32 = v18;
    v33 = v19;
    v34 = v20;
    v36 = a8;
    v35 = v21;
    v27 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, a9, 0, block);
    dispatch_async(queue, v27);
  }

  else if (v21)
  {
    (*(v21 + 2))(v21, 0, 0);
  }
}

- (void)fetchAttributesForProtectionClass:(id)a3 attributes:(id)a4 bundleID:(id)a5 identifiers:(id)a6 userCtx:(id)a7 flags:(int)a8 completion:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a9;
  if ((deviceUnlocked & 1) == 0)
  {
    SIResumeForUnlock();
  }

  if (!v15 || (v21 = [v15 isEqualToString:@"Default"], v22 = v15, v21))
  {
    v22 = *MEMORY[0x277CCA1A0];
  }

  v23 = v22;
  v24 = [(SPCoreSpotlightIndexer *)self concreteIndexerForProtectionClass:v23 andBundleID:v17];
  v25 = v24;
  if (v24)
  {
    v26 = sIndexQueue;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __117__SPCoreSpotlightIndexer_fetchAttributesForProtectionClass_attributes_bundleID_identifiers_userCtx_flags_completion___block_invoke;
    v28[3] = &unk_278936FA0;
    v29 = v24;
    v30 = v16;
    v31 = v17;
    v32 = v18;
    v33 = v19;
    v35 = a8;
    v34 = v20;
    v27 = _setup_block(v28, 0, 21417);
    dispatch_async(v26, v27);
  }

  else if (v20)
  {
    (*(v20 + 2))(v20, 0);
  }
}

- (void)fetchCacheFileDescriptorsForProtectionClass:(id)a3 bundleID:(id)a4 identifiers:(id)a5 userCtx:(id)a6 flags:(unsigned int)a7 qos:(unsigned int)a8 completionHandler:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a9;
  if ((deviceUnlocked & 1) == 0)
  {
    SIResumeForUnlock();
  }

  if (!v15 || (v20 = [v15 isEqualToString:@"Default"], v21 = v15, v20))
  {
    v21 = *MEMORY[0x277CCA1A0];
  }

  v22 = v21;
  v23 = [(SPCoreSpotlightIndexer *)self concreteIndexerForProtectionClass:v22 andBundleID:v16];
  v24 = v23;
  if (v23)
  {
    v25 = sIndexQueue;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __127__SPCoreSpotlightIndexer_fetchCacheFileDescriptorsForProtectionClass_bundleID_identifiers_userCtx_flags_qos_completionHandler___block_invoke;
    v27[3] = &unk_278936FC8;
    v28 = v23;
    v29 = v16;
    v30 = v17;
    v31 = v18;
    v33 = a7;
    v32 = v19;
    v26 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, a8, 0, v27);
    dispatch_async(v25, v26);
  }

  else if (v19)
  {
    (*(v19 + 2))(v19, 0, 0);
  }
}

- (void)revokeExpiredItems:(id)a3 activity:(id)a4 protected:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__SPCoreSpotlightIndexer_revokeExpiredItems_activity_protected___block_invoke;
  v15[3] = &unk_2789356F0;
  v18 = a5;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v10 = v9;
  v11 = v8;
  v12 = MEMORY[0x2383760E0](v15);
  v13 = sIndexQueue;
  v14 = _setup_block(v12, 0, 21481);
  dispatch_group_async(v11, v13, v14);
}

void __64__SPCoreSpotlightIndexer_revokeExpiredItems_activity_protected___block_invoke(uint64_t a1)
{
  v13[3] = *MEMORY[0x277D85DE8];
  if (*(a1 + 56) == 1)
  {
    _checkUnlock();
    v2 = *MEMORY[0x277CCA198];
    v13[0] = *MEMORY[0x277CCA190];
    v13[1] = v2;
    v13[2] = *MEMORY[0x277CCA1A8];
    v3 = MEMORY[0x277CBEA60];
    v4 = v13;
    v5 = 3;
  }

  else
  {
    v12 = *MEMORY[0x277CCA1A0];
    v3 = MEMORY[0x277CBEA60];
    v4 = &v12;
    v5 = 1;
  }

  v6 = [v3 arrayWithObjects:v4 count:v5];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__SPCoreSpotlightIndexer_revokeExpiredItems_activity_protected___block_invoke_2;
  v9[3] = &unk_278936768;
  v7 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  [v7 _enumerateIndexersWithProtectionClasses:v6 block:v9];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)powerStateChanged
{
  if ((deviceUnlocked & 1) == 0)
  {
    SIResumeForUnlock();
  }

  v3 = sIndexQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__SPCoreSpotlightIndexer_powerStateChanged__block_invoke;
  v5[3] = &unk_278934050;
  v5[4] = self;
  v4 = _setup_block(v5, 0, 21491);
  dispatch_async(v3, v4);
}

- (id)queryForWord:(id)a3 matchingAttributes:(id)a4 prefixMatch:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_new();
  v10 = [v8 count];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    if (v5)
    {
      v13 = @"|| (%@=%@*cwdt)";
    }

    else
    {
      v13 = @"|| (%@=%@cwdt)";
    }

    if (v5)
    {
      v14 = @"(%@=%@*cwdt)";
    }

    else
    {
      v14 = @"(%@=%@cwdt)";
    }

    do
    {
      v15 = [v8 objectAtIndex:v12];
      if (v12)
      {
        v16 = v13;
      }

      else
      {
        v16 = v14;
      }

      v17 = v16;
      [v9 appendFormat:v17, v15, v7];

      ++v12;
    }

    while (v11 != v12);
  }

  return v9;
}

- (NSURL)personaListURL
{
  if (sPrivate)
  {
    v2 = 0;
  }

  else
  {
    v3 = objc_alloc(MEMORY[0x277CBEBC0]);
    v4 = MEMORY[0x277CCACA8];
    v5 = NSHomeDirectory();
    v6 = [v4 stringWithFormat:@"%@/%@", v5, @"Library/Spotlight/PersonaList.plist"];
    v2 = [v3 initFileURLWithPath:v6];
  }

  return v2;
}

- (void)personaListDidUpdate
{
  if ((sPrivate & 1) == 0)
  {
    v3 = [MEMORY[0x277D77BF8] sharedManager];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __46__SPCoreSpotlightIndexer_personaListDidUpdate__block_invoke;
    v4[3] = &unk_278936FF0;
    v4[4] = self;
    [v3 fetchAllPersonasWithCompletionHandler:v4];
  }
}

void __46__SPCoreSpotlightIndexer_personaListDidUpdate__block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      v9 = 0;
      do
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v26 + 1) + 8 * v9) objectForKey:@"UserPersonaUniqueString"];
        if (v10)
        {
          [v4 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v7);
  }

  if (([*(*(a1 + 32) + 208) isEqual:v4] & 1) == 0)
  {
    v11 = [*(*(a1 + 32) + 208) mutableCopy];
    [v11 minusSet:v4];
    if ([v11 count])
    {
      NSLog(&cfstr_MissingPersona.isa, v11);
      [*(*(a1 + 32) + 208) unionSet:v4];
      v12 = [*(*(a1 + 32) + 208) allObjects];
      v13 = [*(a1 + 32) personaListURL];
      [v12 writeToURL:v13 error:0];

      v14 = dispatch_group_create();
      dispatch_group_enter(v14);
      v15 = *(a1 + 32);
      v16 = [v11 allObjects];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __46__SPCoreSpotlightIndexer_personaListDidUpdate__block_invoke_2;
      v23[3] = &unk_2789358D0;
      v23[4] = *(a1 + 32);
      v24 = v4;
      v25 = v14;
      v17 = v14;
      [v15 deleteSearchableItemsWithPersonaIds:v16 completionHandler:v23];

      dispatch_group_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      v18 = [v4 mutableCopy];
      v19 = *(a1 + 32);
      v20 = *(v19 + 208);
      *(v19 + 208) = v18;

      v17 = [*(*(a1 + 32) + 208) allObjects];
      v21 = [*(a1 + 32) personaListURL];
      [v17 writeToURL:v21 error:0];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __46__SPCoreSpotlightIndexer_personaListDidUpdate__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    *(v3 + 80) = 1;
  }

  else
  {
    *(v3 + 80) = 0;
    v4 = [*(a1 + 40) mutableCopy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 208);
    *(v5 + 208) = v4;

    v7 = [*(*(a1 + 32) + 208) allObjects];
    v8 = [*(a1 + 32) personaListURL];
    [v7 writeToURL:v8 error:0];
  }

  v9 = *(a1 + 48);

  dispatch_group_leave(v9);
}

- (void)handleRankingCommand:(id)a3 completion:(id)a4
{
  v32[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"update"])
  {
    [sDelegate updateApplicationsWithCompletion:v7 clean:0];
  }

  else if ([v6 isEqualToString:@"reset"])
  {
    v8 = objc_opt_new();
    v9 = [objc_opt_class() allProtectionClasses];
    [v8 setProtectionClasses:v9];

    v10 = *MEMORY[0x277CC2500];
    v32[0] = *MEMORY[0x277CC3208];
    v32[1] = v10;
    v32[2] = @"_kMDItemLaunchString";
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:3];
    [v8 setFetchAttributes:v11];

    [v8 setInternal:1];
    v12 = objc_opt_new();
    v13 = dispatch_group_create();
    dispatch_group_enter(v13);
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=*", @"_kMDItemLaunchString"];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __58__SPCoreSpotlightIndexer_handleRankingCommand_completion___block_invoke;
    v29[3] = &unk_278935400;
    v30 = v8;
    v31 = v12;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __58__SPCoreSpotlightIndexer_handleRankingCommand_completion___block_invoke_3;
    v25[3] = &unk_2789358D0;
    v26 = v31;
    v27 = self;
    v15 = v13;
    v28 = v15;
    v16 = v31;
    v17 = v8;
    v18 = [(SPCoreSpotlightIndexer *)self startQueryWithQueryString:v14 queryContext:v17 eventHandler:0 resultsHandler:v29 completionHandler:v25];

    if (!v18)
    {
      dispatch_group_leave(v15);
    }

    v19 = qos_class_self();
    v20 = dispatch_get_global_queue(v19, 2uLL);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __58__SPCoreSpotlightIndexer_handleRankingCommand_completion___block_invoke_5;
    v23[3] = &unk_2789341A8;
    v24 = v7;
    v21 = _setup_block(v23, 0, 21618);
    dispatch_group_notify(v15, v20, v21);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __58__SPCoreSpotlightIndexer_handleRankingCommand_completion___block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v13 = v5;
    v14 = v6;
    v9 = [*(a1 + 32) fetchAttributes];
    v10 = [v9 count];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __58__SPCoreSpotlightIndexer_handleRankingCommand_completion___block_invoke_2;
    v11[3] = &unk_278934A00;
    v12 = *(a1 + 40);
    [a5 enumerateQueryResults:v10 stringCache:0 usingBlock:v11];
  }
}

void __58__SPCoreSpotlightIndexer_handleRankingCommand_completion___block_invoke_2(uint64_t a1, id *a2)
{
  v15[4] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = a2[1];
  v6 = [*(a1 + 32) objectForKeyedSubscript:v5];
  if (!v6)
  {
    v6 = objc_opt_new();
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
  }

  v7 = objc_alloc(MEMORY[0x277CC34B8]);
  v8 = *MEMORY[0x277CBEEE8];
  v9 = *MEMORY[0x277CC2D10];
  v14[0] = @"_kMDItemLaunchString";
  v14[1] = v9;
  v15[0] = v8;
  v15[1] = v8;
  v14[2] = @"kMDItemLastUsedDate_Ranking";
  v14[3] = @"_kMDItemShortcutLastUsedDate";
  v15[2] = v8;
  v15[3] = v8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];
  v11 = [v7 initWithAttributes:v10];

  v12 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:v4 domainIdentifier:0 attributeSet:v11];
  [v12 setIsUpdate:1];
  [v6 addObject:v12];

  v13 = *MEMORY[0x277D85DE8];
}

void __58__SPCoreSpotlightIndexer_handleRankingCommand_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __58__SPCoreSpotlightIndexer_handleRankingCommand_completion___block_invoke_4;
  v3[3] = &unk_278936938;
  v3[4] = *(a1 + 40);
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
  dispatch_group_leave(*(a1 + 48));
}

- (void)_fetchAccumulatedStorageSizeForBundleId:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    [SPCoreSpotlightIndexer _fetchAccumulatedStorageSizeForBundleId:completionHandler:];
  }

  v8 = sIndexQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __84__SPCoreSpotlightIndexer__fetchAccumulatedStorageSizeForBundleId_completionHandler___block_invoke;
  v12[3] = &unk_278934F08;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  v11 = _setup_block(v12, 0, 21657);
  dispatch_async(v8, v11);
}

void __84__SPCoreSpotlightIndexer__fetchAccumulatedStorageSizeForBundleId_completionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = dispatch_group_create();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __84__SPCoreSpotlightIndexer__fetchAccumulatedStorageSizeForBundleId_completionHandler___block_invoke_2;
  v13[3] = &unk_278937040;
  v14 = v3;
  v4 = *(a1 + 32);
  v15 = *(a1 + 40);
  v5 = v2;
  v16 = v5;
  v6 = v3;
  [v4 _enumerateIndexersWithBlock:v13];
  v7 = sIndexQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84__SPCoreSpotlightIndexer__fetchAccumulatedStorageSizeForBundleId_completionHandler___block_invoke_3175;
  v10[3] = &unk_278934F30;
  v11 = v5;
  v12 = *(a1 + 48);
  v8 = v5;
  v9 = _setup_block(v10, 0, 21656);
  dispatch_group_notify(v6, v7, v9);
}

void __84__SPCoreSpotlightIndexer__fetchAccumulatedStorageSizeForBundleId_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  dispatch_group_enter(v3);
  v5 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __84__SPCoreSpotlightIndexer__fetchAccumulatedStorageSizeForBundleId_completionHandler___block_invoke_3;
  v6[3] = &unk_278937018;
  v7 = v5;
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  [v4 _fetchAccumulatedStorageSizeForBundleId:v7 completionHandler:v6];
}

void __84__SPCoreSpotlightIndexer__fetchAccumulatedStorageSizeForBundleId_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_231A35000, v7, OS_LOG_TYPE_DEFAULT, "Failed to fetch the storage size for bundleId:%@, error:%@", &v11, 0x16u);
    }

    goto LABEL_7;
  }

  if (v5)
  {
    v9 = *(a1 + 40);
    objc_sync_enter(v9);
    [*(a1 + 40) addObject:v5];
    objc_sync_exit(v9);

LABEL_7:
  }

  dispatch_group_leave(*(a1 + 48));

  v10 = *MEMORY[0x277D85DE8];
}

void __84__SPCoreSpotlightIndexer__fetchAccumulatedStorageSizeForBundleId_completionHandler___block_invoke_3175(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v2 = *(a1 + 32);
    v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = 0;
      v6 = *v14;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v2);
          }

          v5 += [*(*(&v13 + 1) + 8 * i) unsignedLongLongValue];
        }

        v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v4);
    }

    else
    {
      v5 = 0;
    }

    v10 = *(a1 + 40);
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v5];
    (*(v10 + 16))(v10, v11);

    v12 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v8 = *(*(a1 + 40) + 16);
    v9 = *MEMORY[0x277D85DE8];

    v8();
  }
}

- (void)_migrateIndexExtensionsWithEnumerator:(id)a3 forced:(BOOL)a4 migratedBundleIds:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (!v12)
  {
    [SPCoreSpotlightIndexer _migrateIndexExtensionsWithEnumerator:forced:migratedBundleIds:completionHandler:];
  }

  v13 = v12;
  v14 = [v10 nextObject];
  v15 = [v14 containerID];
  v16 = v15;
  if (v14 && v15)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __107__SPCoreSpotlightIndexer__migrateIndexExtensionsWithEnumerator_forced_migratedBundleIds_completionHandler___block_invoke;
    v17[3] = &unk_278937090;
    v23 = a4;
    v18 = v15;
    v19 = self;
    v20 = v10;
    v21 = v11;
    v22 = v13;
    [(SPCoreSpotlightIndexer *)self _fetchAccumulatedStorageSizeForBundleId:v18 completionHandler:v17];
  }

  else
  {
    v13[2](v13);
  }
}

void __107__SPCoreSpotlightIndexer__migrateIndexExtensionsWithEnumerator_forced_migratedBundleIds_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 72);
  v5 = logForCSLogCategoryDefault();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (!v3 || (v4 & 1) != 0)
  {
    if (v6)
    {
      v8 = *(a1 + 32);
      if (*(a1 + 72))
      {
        v9 = "YES";
      }

      else
      {
        v9 = "NO";
      }

      *buf = 138412802;
      v25 = v8;
      v26 = 2112;
      v27 = v3;
      v28 = 2080;
      v29 = v9;
      _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_DEFAULT, "Starting migration for index extension:%@, size:%@, forced:%s", buf, 0x20u);
    }

    v10 = [MEMORY[0x277CC3538] sharedManager];
    v11 = [objc_alloc(MEMORY[0x277CC3420]) initWithJobType:3];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __107__SPCoreSpotlightIndexer__migrateIndexExtensionsWithEnumerator_forced_migratedBundleIds_completionHandler___block_invoke_3176;
    v19[3] = &unk_278937068;
    v12 = *(a1 + 32);
    v23 = *(a1 + 72);
    v13 = *(a1 + 56);
    v18 = *(a1 + 40);
    v14 = *(a1 + 48);
    *&v15 = v18;
    *(&v15 + 1) = v14;
    *&v16 = v12;
    *(&v16 + 1) = v13;
    v20 = v16;
    v21 = v15;
    v22 = *(a1 + 64);
    [v10 indexRequestsPerformJob:v11 forBundle:v12 completionHandler:v19];
  }

  else
  {
    if (v6)
    {
      v7 = *(a1 + 32);
      *buf = 138412546;
      v25 = v7;
      v26 = 2112;
      v27 = v3;
      _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_DEFAULT, "Skipping migration for index extension:%@, size:%@", buf, 0x16u);
    }

    [*(a1 + 40) _migrateIndexExtensionsWithEnumerator:*(a1 + 48) forced:*(a1 + 72) migratedBundleIds:*(a1 + 56) completionHandler:*(a1 + 64)];
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __107__SPCoreSpotlightIndexer__migrateIndexExtensionsWithEnumerator_forced_migratedBundleIds_completionHandler___block_invoke_3176(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = "NO";
    if (*(a1 + 72))
    {
      v4 = "YES";
    }

    v8 = 138412546;
    v9 = v3;
    v10 = 2080;
    v11 = v4;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "Finished migration for index extension:%@, forced:%s", &v8, 0x16u);
  }

  v5 = *(a1 + 40);
  objc_sync_enter(v5);
  [*(a1 + 40) addObject:*(a1 + 32)];
  objc_sync_exit(v5);

  result = [*(a1 + 48) _migrateIndexExtensionsWithEnumerator:*(a1 + 56) forced:*(a1 + 72) migratedBundleIds:*(a1 + 40) completionHandler:*(a1 + 64)];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)migrateForced:(BOOL)a3
{
  v5 = SDTransactionCreate(&unk_2846C93C8);
  reindexAllQueue = self->_reindexAllQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__SPCoreSpotlightIndexer_migrateForced___block_invoke;
  v9[3] = &unk_278934870;
  v11 = a3;
  v9[4] = self;
  v10 = v5;
  v7 = v5;
  v8 = _setup_block(v9, 0, 21737);
  dispatch_async(reindexAllQueue, v8);
}

void __40__SPCoreSpotlightIndexer_migrateForced___block_invoke(uint64_t a1)
{
  dispatch_suspend(*(*(a1 + 32) + 248));
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"com.apple.searchd.indexExtensionMigration.start" object:*(a1 + 32) userInfo:0];

  v3 = [MEMORY[0x277CC3538] sharedManager];
  v4 = [v3 allExtensionsWithBlock:&__block_literal_global_3186];
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6 = *(a1 + 32);
  v7 = [v4 objectEnumerator];
  v8 = *(a1 + 48);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __40__SPCoreSpotlightIndexer_migrateForced___block_invoke_3187;
  v11[3] = &unk_278934130;
  v9 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v5;
  v13 = v9;
  v10 = v5;
  [v6 _migrateIndexExtensionsWithEnumerator:v7 forced:v8 migratedBundleIds:v10 completionHandler:v11];
}

uint64_t __40__SPCoreSpotlightIndexer_migrateForced___block_invoke_2(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (([v2 isInternal] & 1) != 0 || (objc_msgSend(v2, "containerID"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "hasPrefix:", @"com.apple."), v3, v4))
  {
    v5 = [v2 dontRunDuringMigration] ^ 1;
    v6 = 1;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v2 extensionID];
    v9 = [v2 containerID];
    v10 = v9;
    v11 = "NO";
    v17 = 2112;
    v15 = 138413058;
    if (v6)
    {
      v12 = "YES";
    }

    else
    {
      v12 = "NO";
    }

    v16 = v8;
    v18 = v9;
    if (v5)
    {
      v11 = "YES";
    }

    v19 = 2080;
    v20 = v12;
    v21 = 2080;
    v22 = v11;
    _os_log_impl(&dword_231A35000, v7, OS_LOG_TYPE_DEFAULT, "Found index extension:%@, containerId:%@, internal:%s, migrate:%s", &v15, 0x2Au);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

void __40__SPCoreSpotlightIndexer_migrateForced___block_invoke_3187(uint64_t a1)
{
  dispatch_resume(*(*(a1 + 32) + 248));
  v2 = dispatch_get_global_queue(9, 2uLL);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__SPCoreSpotlightIndexer_migrateForced___block_invoke_2_3188;
  v6[3] = &unk_278934130;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v9 = *(a1 + 48);
  v5 = _setup_block(v6, 0, 21735);
  dispatch_async(v2, v5);
}

void __40__SPCoreSpotlightIndexer_migrateForced___block_invoke_2_3188(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v6 = @"bundleIDs";
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"com.apple.searchd.indexExtensionMigration.finish" object:*(a1 + 40) userInfo:v3];

  SDTransactionDone(*(a1 + 48));
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_reindexAllIdentifiersWithExtension:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [SPCoreSpotlightIndexer _reindexAllIdentifiersWithExtension:completionBlock:];
  }

  if (!v7)
  {
    [SPCoreSpotlightIndexer _reindexAllIdentifiersWithExtension:completionBlock:];
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__SPCoreSpotlightIndexer__reindexAllIdentifiersWithExtension_completionBlock___block_invoke;
  v13[3] = &unk_278934F08;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v8 = v7;
  v9 = v6;
  v10 = MEMORY[0x2383760E0](v13);
  v11 = sIndexQueue;
  v12 = _setup_block(v10, 0, 21798);
  dispatch_async(v11, v12);
}

void __78__SPCoreSpotlightIndexer__reindexAllIdentifiersWithExtension_completionBlock___block_invoke(id *a1)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __78__SPCoreSpotlightIndexer__reindexAllIdentifiersWithExtension_completionBlock___block_invoke_2;
  v17[3] = &unk_278935400;
  v2 = a1[5];
  v17[4] = a1[4];
  v18 = v2;
  v3 = MEMORY[0x2383760E0](v17);
  v4 = [a1[5] containerID];
  v5 = objc_opt_new();
  [v5 setClientBundleID:v4];
  v19[0] = *MEMORY[0x277CC3208];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  [v5 setFetchAttributes:v6];

  v7 = a1[4];
  v8 = [objc_opt_class() allProtectionClasses];
  [v5 setProtectionClasses:v8];

  v9 = objc_alloc(MEMORY[0x277CCACA8]);
  v10 = [v9 initWithFormat:@"(%@ = '%@') && (%@ != '*')", *MEMORY[0x277CC2500], v4, *MEMORY[0x277CC3238]];
  v11 = a1[4];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78__SPCoreSpotlightIndexer__reindexAllIdentifiersWithExtension_completionBlock___block_invoke_5;
  v15[3] = &unk_278937100;
  v15[4] = v11;
  v16 = a1[6];
  v12 = [v11 _startQueryWithQueryString:v10 queryContext:v5 eventHandler:0 resultsHandler:v3 completionHandler:v15];
  [a1[4] setReindexAllItemsTask:v12];

  v13 = [a1[4] reindexAllItemsTask];

  if (!v13)
  {
    (*(a1[6] + 2))();
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __78__SPCoreSpotlightIndexer__reindexAllIdentifiersWithExtension_completionBlock___block_invoke_2(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v19 = v8;
    v20 = v7;
    v21 = v5;
    v22 = v6;
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:_MDStoreOIDArrayGetVectorCount()];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __78__SPCoreSpotlightIndexer__reindexAllIdentifiersWithExtension_completionBlock___block_invoke_3;
    v17[3] = &unk_278934A00;
    v12 = v11;
    v18 = v12;
    [a5 enumerateQueryResults:1 stringCache:0 usingBlock:v17];
    if ([v12 count])
    {
      v13 = [*(a1 + 32) reindexAllItemsTask];
      [v13 pauseResults];

      v14 = [objc_alloc(MEMORY[0x277CC3420]) initWithJobType:1];
      [v14 setIdentifiersToReindex:v12];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __78__SPCoreSpotlightIndexer__reindexAllIdentifiersWithExtension_completionBlock___block_invoke_4;
      v16[3] = &unk_2789370D8;
      v15 = *(a1 + 40);
      v16[4] = *(a1 + 32);
      [v15 performJob:v14 completionBlock:v16];
    }
  }
}

uint64_t __78__SPCoreSpotlightIndexer__reindexAllIdentifiersWithExtension_completionBlock___block_invoke_3(uint64_t result, void *a2)
{
  if (*a2)
  {
    return [*(result + 32) addObject:?];
  }

  return result;
}

void __78__SPCoreSpotlightIndexer__reindexAllIdentifiersWithExtension_completionBlock___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = [*(a1 + 32) reindexAllItemsTask];
    [v4 cancel];
  }

  v5 = [*(a1 + 32) reindexAllItemsTask];
  [v5 resumeResults];
}

uint64_t __78__SPCoreSpotlightIndexer__reindexAllIdentifiersWithExtension_completionBlock___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) setReindexAllItemsTask:0];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

+ (id)_filterReindexAllExtensions:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if (([v10 isInternal] & 1) == 0)
        {
          v11 = [v10 containerID];
          v12 = [v11 hasPrefix:@"com.apple."];

          if ((v12 & 1) == 0)
          {
            [v4 addObject:v10];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_reindexAllItemsWithExtensionsAndCompletionBlock:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [SPCoreSpotlightIndexer _reindexAllItemsWithExtensionsAndCompletionBlock:];
  }

  v5 = v4;
  v6 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231A35000, v6, OS_LOG_TYPE_DEFAULT, "Reindexing all items with the index extensions", buf, 2u);
  }

  dispatch_suspend(self->_reindexAllQueue);
  v7 = objc_opt_new();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__SPCoreSpotlightIndexer__reindexAllItemsWithExtensionsAndCompletionBlock___block_invoke;
  v11[3] = &unk_278937128;
  v11[4] = self;
  [v7 setFilterBlock:v11];
  [v7 setPerformBlock:&__block_literal_global_3199];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__SPCoreSpotlightIndexer__reindexAllItemsWithExtensionsAndCompletionBlock___block_invoke_4;
  v9[3] = &unk_278937100;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  [v7 setCompletionBlock:v9];
  [v7 start];
}

id __75__SPCoreSpotlightIndexer__reindexAllItemsWithExtensionsAndCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [objc_opt_class() _filterReindexAllExtensions:v3];

  return v4;
}

void __75__SPCoreSpotlightIndexer__reindexAllItemsWithExtensionsAndCompletionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = MEMORY[0x277CC3420];
  v6 = a2;
  v7 = [[v5 alloc] initWithJobType:2];
  [v7 setReason:@"re-indexing all items with the index extensions"];
  dispatch_group_enter(v4);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__SPCoreSpotlightIndexer__reindexAllItemsWithExtensionsAndCompletionBlock___block_invoke_3;
  v9[3] = &unk_2789370D8;
  v10 = v4;
  v8 = v4;
  [v6 performJob:v7 completionBlock:v9];
}

uint64_t __75__SPCoreSpotlightIndexer__reindexAllItemsWithExtensionsAndCompletionBlock___block_invoke_4(uint64_t a1)
{
  v2 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "Finished reindexing all items with the index extensions", v4, 2u);
  }

  dispatch_resume(*(*(a1 + 32) + 248));
  return (*(*(a1 + 40) + 16))();
}

- (void)_reindexAllItemsWithExtensionsAndIdentifiersAndCompletionBlock:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [SPCoreSpotlightIndexer _reindexAllItemsWithExtensionsAndIdentifiersAndCompletionBlock:];
  }

  v5 = v4;
  v6 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231A35000, v6, OS_LOG_TYPE_DEFAULT, "Reindexing all identifiers with the index extensions", buf, 2u);
  }

  dispatch_suspend(self->_reindexAllQueue);
  v7 = objc_opt_new();
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __89__SPCoreSpotlightIndexer__reindexAllItemsWithExtensionsAndIdentifiersAndCompletionBlock___block_invoke;
  v16[3] = &unk_278937128;
  v16[4] = self;
  [v7 setFilterBlock:v16];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __89__SPCoreSpotlightIndexer__reindexAllItemsWithExtensionsAndIdentifiersAndCompletionBlock___block_invoke_2;
  v15[3] = &unk_278937170;
  v15[4] = self;
  [v7 setPerformBlock:v15];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __89__SPCoreSpotlightIndexer__reindexAllItemsWithExtensionsAndIdentifiersAndCompletionBlock___block_invoke_4;
  v12 = &unk_278937100;
  v13 = self;
  v14 = v5;
  v8 = v5;
  [v7 setCompletionBlock:&v9];
  [v7 start];
}

id __89__SPCoreSpotlightIndexer__reindexAllItemsWithExtensionsAndIdentifiersAndCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [objc_opt_class() _filterReindexAllExtensions:v3];

  return v4;
}

void __89__SPCoreSpotlightIndexer__reindexAllItemsWithExtensionsAndIdentifiersAndCompletionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  dispatch_group_enter(v5);
  v7 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __89__SPCoreSpotlightIndexer__reindexAllItemsWithExtensionsAndIdentifiersAndCompletionBlock___block_invoke_3;
  v9[3] = &unk_278934050;
  v10 = v5;
  v8 = v5;
  [v7 _reindexAllIdentifiersWithExtension:v6 completionBlock:v9];
}

uint64_t __89__SPCoreSpotlightIndexer__reindexAllItemsWithExtensionsAndIdentifiersAndCompletionBlock___block_invoke_4(uint64_t a1)
{
  v2 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "Finished reindexing all identifiers with the index extensions", v4, 2u);
  }

  dispatch_resume(*(*(a1 + 32) + 248));
  return (*(*(a1 + 40) + 16))();
}

- (void)transferDeleteJournalsForProtectionClass:(id)a3 toDirectory:(int)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(SPCoreSpotlightIndexer *)self concreteIndexers];
  v11 = v10;
  if (v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = @"Unknown";
  }

  v13 = [v10 objectForKey:v12];

  if (v13)
  {
    v14 = sIndexQueue;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __97__SPCoreSpotlightIndexer_transferDeleteJournalsForProtectionClass_toDirectory_completionHandler___block_invoke;
    v16[3] = &unk_278937198;
    v17 = v13;
    v19 = a4;
    v18 = v8;
    v15 = _setup_block(v16, 0, 21879);
    dispatch_async(v14, v15);
  }

  else if (v8)
  {
    (*(v8 + 2))(v8, 0);
  }
}

- (void)wipeCoreSpotlightIndexForTrial
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleAssetsCommand:(id)a3
{
  v3 = MEMORY[0x277D657E8];
  v4 = a3;
  v5 = [v3 sharedResourcesManager];
  [v5 handleAssetsCommand:v4];
}

- (id)leakDebugDump:(id)a3
{
  v3 = a3;
  Current = CFAbsoluteTimeGetCurrent();
  if ([v3 isEqualToString:@"sijob"])
  {
    v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __40__SPCoreSpotlightIndexer_leakDebugDump___block_invoke;
    v40[3] = &unk_2789371C0;
    v6 = v5;
    v41 = v6;
    v7 = MEMORY[0x2383760E0](v40);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __40__SPCoreSpotlightIndexer_leakDebugDump___block_invoke_2;
    v38[3] = &unk_2789371E8;
    v8 = v6;
    v39 = v8;
    v9 = MEMORY[0x2383760E0](v38);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __40__SPCoreSpotlightIndexer_leakDebugDump___block_invoke_3;
    v36[3] = &unk_2789371E8;
    v10 = v8;
    v37 = v10;
    v11 = MEMORY[0x2383760E0](v36);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __40__SPCoreSpotlightIndexer_leakDebugDump___block_invoke_4;
    v33[3] = &unk_278937210;
    v12 = v10;
    v34 = v12;
    v35 = Current;
    v13 = MEMORY[0x2383760E0](v33);
    _SIDumpJobRefs();

    v14 = v41;
LABEL_5:

    goto LABEL_7;
  }

  if ([v3 isEqualToString:@"ciindexset"])
  {
    v15 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __40__SPCoreSpotlightIndexer_leakDebugDump___block_invoke_5;
    v31[3] = &unk_2789371C0;
    v16 = v15;
    v32 = v16;
    v17 = MEMORY[0x2383760E0](v31);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __40__SPCoreSpotlightIndexer_leakDebugDump___block_invoke_6;
    v29[3] = &unk_2789371C0;
    v18 = v16;
    v30 = v18;
    v19 = MEMORY[0x2383760E0](v29);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __40__SPCoreSpotlightIndexer_leakDebugDump___block_invoke_7;
    v27[3] = &unk_2789371C0;
    v20 = v18;
    v28 = v20;
    v21 = MEMORY[0x2383760E0](v27);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __40__SPCoreSpotlightIndexer_leakDebugDump___block_invoke_8;
    v24[3] = &unk_278937210;
    v12 = v20;
    v25 = v12;
    v26 = Current;
    v22 = MEMORY[0x2383760E0](v24);
    _SIDumpIndexSetRefs();

    v14 = v32;
    goto LABEL_5;
  }

  [v3 isEqualToString:@"sdtransaction"];
  v12 = 0;
LABEL_7:

  return v12;
}

void __40__SPCoreSpotlightIndexer_leakDebugDump___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  Info = _SIDumpQueryInfo();
  [v5 appendFormat:@"\n> [%llu] Begin stack traces for active job ref 0x%llx: %@", a2, a3, Info];
}

void __40__SPCoreSpotlightIndexer_leakDebugDump___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  Info = _SIDumpQueryInfo();
  [v5 appendFormat:@"\n> [%llu] End stack traces for active job ref 0x%llx: %@\n", a2, a3, Info];
}

uint64_t __40__SPCoreSpotlightIndexer_leakDebugDump___block_invoke_4(uint64_t a1, _DWORD *a2, int a3, int a4, uint64_t a5, double a6)
{
  if (a3)
  {
    v9 = (*a2 + 1);
  }

  else
  {
    v9 = (*a2 - 1);
  }

  *a2 = v9;
  v10 = @"Release";
  v11 = *(a1 + 32);
  if (a3)
  {
    v10 = @"Retain";
  }

  result = [v11 appendFormat:@"\n\t>> [%d] %@ stack trace (%lfs ago):", v9, v10, *(a1 + 40) - a6];
  if (a4 >= 3)
  {
    v13 = a4;
    v14 = (a5 + 16);
    v15 = v13 - 2;
    do
    {
      v16 = *v14++;
      result = [*(a1 + 32) appendFormat:@"\n\t\t>>> %s", v16];
      --v15;
    }

    while (v15);
  }

  return result;
}

uint64_t __40__SPCoreSpotlightIndexer_leakDebugDump___block_invoke_8(uint64_t a1, _DWORD *a2, int a3, int a4, uint64_t a5, double a6)
{
  if (a3)
  {
    v9 = (*a2 + 1);
  }

  else
  {
    v9 = (*a2 - 1);
  }

  *a2 = v9;
  v10 = @"Release";
  v11 = *(a1 + 32);
  if (a3)
  {
    v10 = @"Retain";
  }

  result = [v11 appendFormat:@"\n\t>> [%d] %@ stack trace (%lfs ago):", v9, v10, *(a1 + 40) - a6];
  if (a4 >= 5)
  {
    v13 = a4;
    v14 = (a5 + 32);
    v15 = v13 - 4;
    do
    {
      v16 = *v14++;
      result = [*(a1 + 32) appendFormat:@"\n\t\t>>> %s", v16];
      --v15;
    }

    while (v15);
  }

  return result;
}

- (SPCoreSpotlightIndexerDelegate)indexerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_indexerDelegate);

  return WeakRetained;
}

- (CSFileProviderDomainMonitor)fileProviderMonitor
{
  WeakRetained = objc_loadWeakRetained(&self->_fileProviderMonitor);

  return WeakRetained;
}

void __44__SPCoreSpotlightIndexer_purgeIndexForSize___block_invoke_2112_cold_1()
{
  OUTLINED_FUNCTION_26();
  v7 = *MEMORY[0x277D85DE8];
  [*(v0 + 32) UTF8String];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)registerCacheDeleteCallbackForVolumePath:.cold.1()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __40__SPCoreSpotlightIndexer_sharedInstance__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __40__SPCoreSpotlightIndexer_sharedInstance__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __40__SPCoreSpotlightIndexer_sharedInstance__block_invoke_cold_3()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __40__SPCoreSpotlightIndexer_sharedInstance__block_invoke_cold_4()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __40__SPCoreSpotlightIndexer_sharedInstance__block_invoke_cold_5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)concreteIndexerForProtectionClass:andBundleID:.cold.1()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)concreteIndexerForProtectionClass:andBundleID:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)init
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_3_2175_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_21(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2228_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2231_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2234_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2_2242_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2246_cold_1(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 138412290;
  *a2 = @"com.apple.searchd.reportAppUsage";
  OUTLINED_FUNCTION_40(&dword_231A35000, a2, a3, "Task %@ could not start query to collect bundles.", a1);
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2246_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_3_2256_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2_2258_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_29(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2_2272_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2275_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_changeFilesToClassC:.cold.1()
{
  OUTLINED_FUNCTION_6();
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_changeFilesToClassC:.cold.2()
{
  OUTLINED_FUNCTION_6();
  v8 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_changeFilesToClassC:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_changeFilesToClassC:.cold.4()
{
  OUTLINED_FUNCTION_6();
  v8 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
  v7 = *MEMORY[0x277D85DE8];
}

void __63__SPCoreSpotlightIndexer__deleteNonMailBundlesFromClassAIndex___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_29(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __59__SPCoreSpotlightIndexer__moveClassAIndexToClassCMailIndex__block_invoke_3_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setTouchfileExistsForMigrationStep:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)performMigrationStepWithTouchfileGuard:step:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void __51__SPCoreSpotlightIndexer_moveMailToClassCWithClone__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __51__SPCoreSpotlightIndexer_moveMailToClassCWithClone__block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __51__SPCoreSpotlightIndexer_moveMailToClassCWithClone__block_invoke_2336_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __51__SPCoreSpotlightIndexer_moveMailToClassCWithClone__block_invoke_2336_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(*(*a1 + 8) + 24);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

void __51__SPCoreSpotlightIndexer_moveMailToClassCWithClone__block_invoke_2337_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __51__SPCoreSpotlightIndexer_moveMailToClassCWithClone__block_invoke_2338_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __31__SPCoreSpotlightIndexer_start__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

void __31__SPCoreSpotlightIndexer_start__block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __31__SPCoreSpotlightIndexer_start__block_invoke_cold_3()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __31__SPCoreSpotlightIndexer_start__block_invoke_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_enumerateIndexersWithProtectionClasses:(void *)a1 forQueryWithContext:(NSObject *)a2 forBundleIds:inferSpecialIndexes:block:.cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 clientBundleID];
  OUTLINED_FUNCTION_4_0();
  _os_log_fault_impl(&dword_231A35000, a2, OS_LOG_TYPE_FAULT, "Client %@ attempted to query mail data in class A", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void __50__SPCoreSpotlightIndexer__registerForPrefsChanges__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_reindexAllItemsForBundleIDs:reason:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4(&dword_231A35000, v0, v1, "Scheduling reindex-all task, reason:%@, bundleIDs:%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __97__SPCoreSpotlightIndexer_mergeWithProtectionClasses_power_inferSpecialIndexes_completionHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __97__SPCoreSpotlightIndexer_mergeWithProtectionClasses_power_inferSpecialIndexes_completionHandler___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __97__SPCoreSpotlightIndexer_mergeWithProtectionClasses_power_inferSpecialIndexes_completionHandler___block_invoke_2363_cold_1()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)issueHeartbeat
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)issueResolveFPItemForURL:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __39__SPCoreSpotlightIndexer_queryPreheat___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_taskForQueryWithQueryString:queryContext:eventHandler:resultsHandler:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  qos_class_self();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_taskForQueryWithQueryString:(void *)a3 queryContext:eventHandler:resultsHandler:completionHandler:.cold.2(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [a3 clientBundleID];
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_taskForQueryWithQueryString:queryContext:eventHandler:resultsHandler:completionHandler:.cold.3()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __114__SPCoreSpotlightIndexer__taskForQueryWithQueryString_queryContext_eventHandler_resultsHandler_completionHandler___block_invoke_2452_cold_1()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_31(v0, v1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x2Au);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)taskForQueryWithQueryString:queryContext:eventHandler:resultsHandler:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  qos_class_self();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)taskForQueryWithQueryString:queryContext:eventHandler:resultsHandler:completionHandler:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)startQueryTask:.cold.1()
{
  OUTLINED_FUNCTION_6();
  v7 = *MEMORY[0x277D85DE8];
  qos_class_self();
  [v0 critical];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

void __41__SPCoreSpotlightIndexer_startQueryTask___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  qos_class_self();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_startQueryWithQueryString:queryContext:eventHandler:resultsHandler:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  qos_class_self();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)startQueryWithQueryString:queryContext:eventHandler:resultsHandler:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  qos_class_self();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)taskForTopHitQueryWithQueryString:queryContext:eventHandler:resultsHandler:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  qos_class_self();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)startQuery:withContext:eventHandler:handler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  qos_class_self();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __47__SPCoreSpotlightIndexer__mergedTokenRewrites___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = CSRedactString(a1, 0);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)writeFileProviderBundleMap:fileProviderBundleIDs:.cold.1()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __47__SPCoreSpotlightIndexer_fileProviderInfoSetup__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)writeData:(NSObject *)a3 toFile:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_40(&dword_231A35000, a2, a3, "Could not write to file, closing it. Error: %@", a2);
}

- (void)userPerformedAction:withItem:protectionClass:forBundleID:personaID:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4(&dword_231A35000, v0, v1, "#apphistory index action, protectionClass:%@, action:%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)userPerformedAction:withItem:protectionClass:forBundleID:personaID:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4(&dword_231A35000, v0, v1, "#apphistory ignore ineligible action, protectionClass:%@, action:%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __93__SPCoreSpotlightIndexer_userPerformedAction_withItem_protectionClass_forBundleID_personaID___block_invoke_3_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)clientDidCheckin:protectionClass:service:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_issueDiagnose:bundleID:logQuery:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_issueCacheCommand:xpc:searchContext:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)writeUISearchEnabled:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)writeUISearchEnabled:.cold.2()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_issueCommand:outFileDescriptor:searchContext:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_issueCommand:outFileDescriptor:searchContext:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_26();
  v7 = *MEMORY[0x277D85DE8];
  [v0 UTF8String];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_issueCommand:outFileDescriptor:searchContext:completionHandler:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)performIndexerTask:withIndexExtensionsAndCompletionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4(&dword_231A35000, v0, v1, "Performing job:%@ with the indexing extensions, bundleIDs:%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)performIndexerTask:withIndexExtensionsAndCompletionHandler:.cold.2()
{
  OUTLINED_FUNCTION_6();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 excludedBundleIDs];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)performIndexerTask:withIndexExtensionsAndCompletionHandler:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4(&dword_231A35000, v0, v1, "Performing job:%@ with indexing extension for bundleID:%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)performIndexerTask:withIndexExtensionsAndCompletionHandler:.cold.4()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4(&dword_231A35000, v0, v1, "Performing daemon job:%@ for bundleID:%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __85__SPCoreSpotlightIndexer_performIndexerTask_withIndexExtensionsAndCompletionHandler___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

void __85__SPCoreSpotlightIndexer_performIndexerTask_withIndexExtensionsAndCompletionHandler___block_invoke_3124_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

void __85__SPCoreSpotlightIndexer_performIndexerTask_withIndexExtensionsAndCompletionHandler___block_invoke_3128_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_29(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

@end