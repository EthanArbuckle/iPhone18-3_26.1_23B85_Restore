@interface SPConcreteCoreSpotlightIndexer
+ (BOOL)_spellingCorrectionConditional:(int)a3 isSingleToken:(BOOL)a4 isPreviousTokenCorrected:(BOOL)a5 isLastToken:(BOOL)a6 tokenLength:(unint64_t)a7;
+ (BOOL)dumpCrashStates:(const char *)a3 toFile:(id)a4;
+ (id)_descriptionWithTokenRewrites:(id)a3;
+ (id)_getBundleIndexesFrom:(id)a3;
+ (id)_indexDependentTokenRewritesWithMatchInfo:(id)a3 topK:(id)a4 setOfTokensToCorrect:(id)a5 queryID:(int64_t)a6 bundleIds:(id)a7 clientBundleId:(id)a8;
+ (id)_indexIndependentTokenRewritesWithMatchInfo:(id)a3 queryID:(int64_t)a4 setOfTokensToCorrect:(id)a5;
+ (id)_lastTokenWithQueryString:(id)a3 tokenMatchInfo:(id)a4;
+ (id)_setOfTokensToCorrect:(id)a3 tokenMatchInfo:(id)a4;
+ (id)_sharedSynonyms;
+ (id)_stateInfoAttributeNameWithClientStateName:(id)a3;
+ (id)_stringWithRewriteType:(int64_t)a3;
+ (id)_tokensMaxCountFromMatchInfo:(id)a3;
+ (id)fetchItemForURL:(id)a3;
+ (int64_t)checkItemOfInterest:(id)a3 mask:(int64_t)a4;
+ (void)initialize;
- (BOOL)_hasPurgeableTouchFile;
- (BOOL)_removePurgeableTouchFile;
- (BOOL)_shouldNotifyForSearchableItemUpdates:(id)a3;
- (BOOL)_shouldPurge;
- (BOOL)_startInternalQueryWithIndex:(__SI *)a3 query:(id)a4 fetchAttributes:(id)a5 forBundleIds:(id)a6 maxCount:(unint64_t)a7 resultsHandler:(id)a8 resultQueue:(id)a9 postFilter:(id)a10 clientBundleID:(id)a11;
- (BOOL)clientIsCheckedIn:(id)a3;
- (BOOL)creationTouchFileExists;
- (BOOL)denyOperationOnAssertedIndex:(char *)a3;
- (BOOL)issuePriorityIndexFixup;
- (BOOL)reindexAllStarted;
- (BOOL)unpurgeOnceTouchFileExists;
- (BOOL)updateMeCardInfo:(id)a3 middleName:(id)a4 familyName:(id)a5 emailAddresses:(id)a6 isFirstTimeCheck:(BOOL)a7 isNotCreateNewIndex:(BOOL)a8 group:(id)a9;
- (BOOL)writeDiagnostic:(id)a3 bundleID:(id)a4 identifier:(id)a5;
- (SPConcreteCoreSpotlightIndexer)initWithQueue:(id)a3 protectionClass:(id)a4 cancelPtr:(int *)a5;
- (SPCoreSpotlightIndexer)owner;
- (id)_cancelIdleTimer;
- (id)_indexMaintenanceActivityName;
- (id)_indexPath;
- (id)_startQueryWithQueryTask:(id)a3 eventHandler:(id)a4 resultsHandler:(id)a5;
- (id)getPropertyForKey:(id)a3;
- (id)indexLossAnalyticsDictWithPreviousIndexCreationDate:(int64_t)a3 size:(int64_t)a4 openingInReadOnly:(BOOL)a5 fullyCreated:(BOOL)a6 markedPurgeable:(BOOL)a7 vectorIndexDrop:(id)a8 forAnalytics:(BOOL)a9;
- (id)purgeableIndexTouchFilePath;
- (id)trialIntentionalDropUUID;
- (id)vectorIndexDropsPath;
- (int)creationTouchFileCreate;
- (int)openIndexForUpgradeSynchronous:(BOOL)a3;
- (int)openJWLIndex;
- (int)shouldNotLogIndexDrop:(id)a3 ignoreParentDirectoryAge:(BOOL)a4;
- (int)unpurgeOnceTouchFileCreate;
- (int64_t)_interestedAttributesMaskForBundleID:(id)a3;
- (int64_t)getAggregateIndexWipeCount;
- (int64_t)getIndexDirectorySize:(id)a3;
- (int64_t)getIntegerPropertyForKey:(id)a3;
- (int64_t)runOneFixup:(int64_t)a3 group:(id)a4;
- (void)_addNewClientWithBundleID:(id)a3;
- (void)_appendRervseInfo:(id)a3 dictionary:(id)a4 key:(id)a5 level:(unint64_t)a6;
- (void)_backgroundDeleteItems:(id)a3 bundleID:(id)a4 completionHandler:(id)a5;
- (void)_cancelIdleTimer;
- (void)_createPurgeableTouchFile;
- (void)_deleteSearchableItemsMatchingQuery:(id)a3 forBundleIds:(id)a4 completionHandler:(id)a5;
- (void)_expireCorruptIndexFilesWithPath:(id)a3 keepLatest:(BOOL)a4;
- (void)_fetchAccumulatedStorageSizeForBundleId:(id)a3 completionHandler:(id)a4;
- (void)_performXPCActivity:(id)a3 name:(id)a4;
- (void)_removePurgeableTouchFile;
- (void)_scheduleStringsCleanupForBundleID:(id)a3;
- (void)_sendIndexDropABCEvent:(BOOL)a3 markedPurgeable:(BOOL)a4;
- (void)_sendPhotosNilClientStateSignpost:(__SI *)a3 retCode:(int)a4;
- (void)addClients:(id)a3;
- (void)addCompletedBundleIDs:(id)a3 forIndexerTask:(id)a4;
- (void)attributesForBundleId:(id)a3 identifier:(id)a4 completion:(id)a5;
- (void)cacheDeleteForKey:(id)a3 value:(id)a4 bundleID:(id)a5 protectionClass:(id)a6 completionHandler:(id)a7;
- (void)cacheEntryForKeys:(id)a3 bundleID:(id)a4 protectionClass:(id)a5 completionHandler:(id)a6;
- (void)cacheInsertForKey:(id)a3 value:(id)a4 bundleID:(id)a5 protectionClass:(id)a6 completionHandler:(id)a7;
- (void)changeStateOfSearchableItemsWithUIDs:(id)a3 toState:(int64_t)a4 forBundleID:(id)a5;
- (void)checkAdmission:(id)a3 background:(BOOL)a4 didBeginThrottle:(BOOL *)a5 didEndThrottle:(BOOL *)a6 live:(BOOL *)a7 slow:(BOOL *)a8 memoryPressure:(BOOL *)a9;
- (void)checkInWithBundleID:(id)a3 completionHandler:(id)a4;
- (void)cleanupStringsWithActivity:(id)a3 group:(id)a4 shouldDefer:(BOOL *)a5 flags:(int)a6;
- (void)cleanupStringsWithCompletionHandler:(id)a3;
- (void)clientDidCheckin:(id)a3 service:(id)a4 completionHandler:(id)a5;
- (void)closeCache:(id)a3;
- (void)closeIndex;
- (void)commitUpdates:(id)a3;
- (void)completeIndexingItemFor:(id)a3 delegate:(id)a4 didBeginThrottle:(BOOL)a5 didEndThrottle:(BOOL)a6 error:(id)a7 live:(BOOL)a8 queue:(id)a9 slow:(BOOL)a10 startTime:(double)a11 dataLen:(unint64_t)a12 completionHandler:(id)a13;
- (void)coolDown:(id)a3;
- (void)creationTouchFileUnlink;
- (void)dealloc;
- (void)deleteActionsBeforeTime:(double)a3 completionHandler:(id)a4;
- (void)deleteActionsWithIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)deleteAllInteractionsWithBundleID:(id)a3 completionHandler:(id)a4;
- (void)deleteAllSearchableItemsForBundleID:(id)a3 fromClient:(id)a4 shouldGC:(BOOL)a5 deleteAllReason:(int64_t)a6 completionHandler:(id)a7;
- (void)deleteAllUserActivities:(id)a3 fromClient:(id)a4 completionHandler:(id)a5;
- (void)deleteHasTopHitAppShortcutsWithResultsHandler:(id)a3 completionHandler:(id)a4;
- (void)deleteItemsForEnumerator:(id)a3 traceID:(int64_t)a4 bundleID:(id)a5 fromClient:(id)a6 completionHandler:(id)a7;
- (void)deleteItemsForQuery:(id)a3 bundleID:(id)a4 fromClient:(id)a5 completionHandler:(id)a6;
- (void)deleteSearchableItemsSinceDate:(id)a3 forBundleID:(id)a4 completionHandler:(id)a5;
- (void)deleteSearchableItemsWithDomainIdentifiers:(id)a3 forBundleID:(id)a4 fromClient:(id)a5 reason:(int64_t)a6 completionHandler:(id)a7;
- (void)deleteSearchableItemsWithFileProviderDomains:(id)a3 completionHandler:(id)a4;
- (void)deleteSearchableItemsWithPersonaIds:(id)a3 completionHandler:(id)a4;
- (void)dirty:(BOOL)a3;
- (void)dropBackgroundAssertions:(BOOL)a3;
- (void)dumpAllRankingDiagnosticInformationForQuery:(id)a3 withCompletionHandler:(id)a4;
- (void)ensureOpenIndexFiles:(id)a3;
- (void)fetchAllCompletedBundleIDsForIndexerTask:(id)a3 completionHandler:(id)a4;
- (void)fetchAttributes:(id)a3 bundleID:(id)a4 identifiers:(id)a5 userCtx:(id)a6 flags:(int)a7 completionHandler:(id)a8;
- (void)fetchCacheFileDescriptorsForBundleID:(id)a3 identifiers:(id)a4 userCtx:(id)a5 flags:(int)a6 completionHandler:(id)a7;
- (void)fetchLastClientStateForBundleID:(id)a3 clientStateName:(id)a4 options:(int64_t)a5 completionHandler:(id)a6;
- (void)finishDeleteBatchForQueryQueue:(id)a3 bundleID:(id)a4 blockTime:(double)a5;
- (void)finishIndexingWhileLocked:(id)a3 completionHandler:(id)a4;
- (void)finishReindexAll;
- (void)fixupBundlesWithGroup:(id)a3;
- (void)fixupMessageAttachmentsWithCompletionHandler:(id)a3;
- (void)fixupPathTimeouts;
- (void)incrementIndexWipeCount;
- (void)indexDependentTokenRewritesWithQueryString:(id)a3 context:(id)a4 matchInfo:(id)a5 setOfTokensToCorrect:(id)a6 tokenRewritesHandler:(id)a7;
- (void)indexFinishedDrainingJournal;
- (void)indexFinishedDrainingJournal:(id)a3;
- (void)indexFromBundle:(id)a3 personaID:(id)a4 options:(int64_t)a5 items:(id)a6 itemsText:(id)a7 itemsHTML:(id)a8 clientState:(id)a9 expectedClientState:(id)a10 clientStateName:(id)a11 deletes:(id)a12 canCreateNewIndex:(BOOL)a13 completionHandler:(id)a14;
- (void)indexSearchableItems:(id)a3 deleteSearchableItemsWithIdentifiers:(id)a4 clientState:(id)a5 expectedClientState:(id)a6 clientStateName:(id)a7 forBundleID:(id)a8 options:(int64_t)a9 completionHandler:(id)a10;
- (void)issueConsistencyCheck;
- (void)issueDefrag:(id)a3;
- (void)issueDumpForward:(unint64_t)a3 completionHandler:(id)a4;
- (void)issueDumpReverse:(unint64_t)a3 completionHandler:(id)a4;
- (void)issueDuplicateOidCheck;
- (void)issueMessagesFixup:(id)a3;
- (void)issuePhotosReindexIfNeeded:(BOOL)a3 group:(id)a4;
- (void)issuePriorityIndexFixup;
- (void)issuePriorityIndexFixupOff;
- (void)issuePriorityIndexFixupOn:(id)a3 key:(id)a4;
- (void)issueRepair;
- (void)issueSplit;
- (void)markDirectoryAtomicallyPurgeable:(id)a3 purgeableOrNot:(BOOL)a4;
- (void)mergeWithCompletionHandler:(id)a3;
- (void)mergeWithGroup:(id)a3;
- (void)notifyClientForItemUpdates:(id)a3 updatedItems:(id)a4 batchMask:(int64_t)a5;
- (void)openJWLIndex;
- (void)performIndexerTask:(id)a3 completionHandler:(id)a4;
- (void)performIndexerTask:(id)a3 withIndexDelegatesAndCompletionHandler:(id)a4;
- (void)performQueryForCountOfItemsInCategory:(id)a3 completion:(id)a4;
- (void)powerStateChanged;
- (void)preheat;
- (void)prepareIndexingWhileLocked:(id)a3 holdAssertionFor:(double)a4 completionHandler:(id)a5;
- (void)processDecryptsForBundleID:(id)a3 persona:(id)a4 infos:(id)a5 group:(id)a6;
- (void)processImportForBundleID:(id)a3 withURLs:(id)a4 contentTypes:(id)a5 sandboxExtensions:(id)a6 andIdentifiers:(id)a7 options:(int64_t)a8 inGroup:(id)a9 additionalAttributes:(id)a10 computeUpdaterAttributesAfterImport:(BOOL)a11 cancelBlock:(id)a12;
- (void)reindexAttributes:(id)a3 ofItemsMatchingQuery:(id)a4 indexAttrName:(id)a5 withVersion:(unint64_t)a6 perItemCompletionAttribute:(id)a7 force:(BOOL)a8 postFilter:(id)a9 group:(id)a10 forceMerge:(BOOL)a11;
- (void)reindexAttributes:(id)a3 ofItemsMatchingQuery:(id)a4 indexAttrName:(id)a5 withVersion:(unint64_t)a6 perItemCompletionAttributeArray:(id)a7 completionValueArray:(id)a8 alwaysReindexWithCompletionAttribute:(BOOL)a9 force:(BOOL)a10 postFilter:(id)a11 group:(id)a12 forceMerge:(BOOL)a13;
- (void)removeExpiredItemsForBundleId:(id)a3 group:(id)a4;
- (void)removeSandboxExtensions:(id)a3;
- (void)requestRequiresImportWithoutSandboxExtension:(id)a3 maxCount:(unint64_t)a4 depth:(int64_t)a5;
- (void)restartAttachmentImport:(id)a3 maxCount:(unint64_t)a4 depth:(int64_t)a5;
- (void)resumeIndex;
- (void)revokeExpiredItems:(id)a3 activity:(id)a4;
- (void)runOtherFixups:(id)a3 state:(int64_t)a4;
- (void)scheduleMaintenance:(id)a3 description:(id)a4 forDarkWake:(BOOL)a5;
- (void)setHasPhotosOrText;
- (void)setProperty:(id)a3 forKey:(id)a4 sync:(BOOL)a5;
- (void)shrink:(unint64_t)a3;
- (void)spotlightCacheFileDescriptor:(id)a3 completionHandler:(id)a4;
- (void)startQueryWithQueryTask:(id)a3 startHandler:(id)a4 eventHandler:(id)a5 resultsHandler:(id)a6;
- (void)startReindexAll;
- (void)suspendIndexForDeviceLock:(id)a3;
- (void)transferDeleteJournalsToDirectory:(int)a3 completionHandler:(id)a4;
- (void)trialIntentionalDropUUID;
- (void)updateDerivedIsFromMe:(BOOL)a3 fullName:(id)a4 emails:(id)a5 onlyIfNotAlready:(BOOL)a6 group:(id)a7 forceMerge:(BOOL)a8;
- (void)updateDerivedIsFromMeNot:(BOOL)a3 fullName:(id)a4 emails:(id)a5 group:(id)a6 forceMerge:(BOOL)a7;
- (void)updateDerivedIsFromMeRanking:(BOOL)a3 nameTokens:(id)a4 onlyIfNotAlready:(BOOL)a5 group:(id)a6 forceMerge:(BOOL)a7;
- (void)updateDerivedIsFromMeRankingNot:(BOOL)a3 nameTokens:(id)a4 group:(id)a5 forceMerge:(BOOL)a6;
- (void)updateDerivedIsMe:(BOOL)a3 nameTokens:(id)a4 alias:(id)a5 onlyIfNotAlready:(BOOL)a6 group:(id)a7 forceMerge:(BOOL)a8;
- (void)updateDerivedIsMeNot:(BOOL)a3 nameTokens:(id)a4 alias:(id)a5 group:(id)a6 forceMerge:(BOOL)a7;
- (void)updateDerivedIsMeRanking:(BOOL)a3 nameTokens:(id)a4 onlyIfNotAlready:(BOOL)a5 group:(id)a6 forceMerge:(BOOL)a7;
- (void)updateDerivedIsMeRankingNot:(BOOL)a3 nameTokens:(id)a4 group:(id)a5 forceMerge:(BOOL)a6;
- (void)updateDerivedIsMeRankingOCR:(BOOL)a3 givenNameTokens:(id)a4 nonGivenNameTokens:(id)a5 alias:(id)a6 onlyIfNotAlready:(BOOL)a7 group:(id)a8 forceMerge:(BOOL)a9;
- (void)updateDerivedIsMeRankingOCRNot:(BOOL)a3 givenNameTokens:(id)a4 nonGivenNameTokens:(id)a5 alias:(id)a6 group:(id)a7 forceMerge:(BOOL)a8;
- (void)updateDerivedIsMeRankingOCRTextContentMatch:(BOOL)a3 givenNameTokens:(id)a4 nonGivenNameTokens:(id)a5 alias:(id)a6 onlyIfNotAlready:(BOOL)a7 group:(id)a8 forceMerge:(BOOL)a9;
- (void)updateDerivedIsMeRankingOCRTextContentMatchNot:(BOOL)a3 givenNameTokens:(id)a4 nonGivenNameTokens:(id)a5 alias:(id)a6 group:(id)a7 forceMerge:(BOOL)a8;
- (void)updateDerivedIsMeRankingPreExtraction:(BOOL)a3 givenNameTokens:(id)a4 nonGivenNameTokens:(id)a5 alias:(id)a6 onlyIfNotAlready:(BOOL)a7 group:(id)a8 forceMerge:(BOOL)a9;
- (void)updateDerivedIsMeRankingPreExtractionNot:(BOOL)a3 givenNameTokens:(id)a4 nonGivenNameTokens:(id)a5 alias:(id)a6 group:(id)a7 forceMerge:(BOOL)a8;
- (void)updateDerivedIsMeRankingSpan:(BOOL)a3 fullName:(id)a4 onlyIfNotAlready:(BOOL)a5 group:(id)a6 forceMerge:(BOOL)a7;
- (void)updateDerivedIsMeRankingSpanNot:(BOOL)a3 fullName:(id)a4 group:(id)a5 forceMerge:(BOOL)a6;
- (void)updateDerivedIsMeRankingTextContentMatch:(BOOL)a3 nameTokens:(id)a4 onlyIfNotAlready:(BOOL)a5 group:(id)a6 forceMerge:(BOOL)a7;
- (void)updateDerivedIsMeRankingTextContentMatchNot2:(BOOL)a3 nameTokens:(id)a4 group:(id)a5 forceMerge:(BOOL)a6;
- (void)updateDerivedIsMeRankingTextContentMatchNot:(BOOL)a3 nameTokens:(id)a4 group:(id)a5 forceMerge:(BOOL)a6;
- (void)updateDerivedIsMeRankingToken:(BOOL)a3 nameTokens:(id)a4 onlyIfNotAlready:(BOOL)a5 group:(id)a6 forceMerge:(BOOL)a7;
- (void)updateDerivedIsMeRankingTokenNot:(BOOL)a3 nameTokens:(id)a4 group:(id)a5 forceMerge:(BOOL)a6;
- (void)updateDerivedIsMeTextContentMatch:(BOOL)a3 nameTokens:(id)a4 alias:(id)a5 onlyIfNotAlready:(BOOL)a6 group:(id)a7 forceMerge:(BOOL)a8;
- (void)updateDerivedIsMeTextContentMatchNot:(BOOL)a3 nameTokens:(id)a4 alias:(id)a5 group:(id)a6 forceMerge:(BOOL)a7;
- (void)updateDerivedIsToMe:(BOOL)a3 fullName:(id)a4 emails:(id)a5 onlyIfNotAlready:(BOOL)a6 group:(id)a7 forceMerge:(BOOL)a8;
- (void)updateDerivedIsToMeNot:(BOOL)a3 fullName:(id)a4 emails:(id)a5 group:(id)a6 forceMerge:(BOOL)a7;
- (void)updateDerivedIsToMeRanking:(BOOL)a3 nameTokens:(id)a4 onlyIfNotAlready:(BOOL)a5 group:(id)a6 forceMerge:(BOOL)a7;
- (void)updateDerivedIsToMeRankingNot:(BOOL)a3 nameTokens:(id)a4 group:(id)a5 forceMerge:(BOOL)a6;
- (void)updateEmailLocalParts:(BOOL)a3 group:(id)a4 forceMerge:(BOOL)a5;
- (void)updateKnownBundles:(id)a3 group:(id)a4;
- (void)validateConcreteIndexer:(BOOL)a3 outFileDescriptor:(int)a4;
- (void)validateVectors:(int)a3;
- (void)whenFinishedDraining:(id)a3;
- (void)willModifySearchableItemsWithIdentifiers:(id)a3 forBundleID:(id)a4 completionHandler:(id)a5;
- (void)writeIndexCreationDate:(int64_t)a3;
- (void)writeIndexDropAnalyticsDate:(int64_t)a3;
- (void)writeIndexLossEventToFile:(id)a3 vector:(BOOL)a4;
- (void)writeIndexSuccessfulOpenDate:(int64_t)a3;
- (void)writeSDBObjectCount:(int64_t)a3;
- (void)zombifyAllContactItems:(id)a3;
@end

@implementation SPConcreteCoreSpotlightIndexer

- (SPCoreSpotlightIndexer)owner
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);

  return WeakRetained;
}

- (id)_cancelIdleTimer
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_indexIdleTimer;
  v4 = v2->_dirtyTransaction;
  indexIdleTimer = v2->_indexIdleTimer;
  v2->_indexIdleTimer = 0;

  dirtyTransaction = v2->_dirtyTransaction;
  v2->_dirtyTransaction = 0;

  objc_sync_exit(v2);
  if (v3)
  {
    dispatch_source_cancel(v3);
    v2->_idleStartTime = 0.0;
    v7 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(SPConcreteCoreSpotlightIndexer *)v2 _cancelIdleTimer];
    }
  }

  return v4;
}

- (id)_indexPath
{
  v3 = [sDelegate indexDirectory];
  v4 = v3;
  dataclass = self->_dataclass;
  if (!dataclass)
  {
    dataclass = *MEMORY[0x277CCA1A0];
  }

  v6 = [v3 stringByAppendingFormat:@"/%@/%@", dataclass, @"index.spotlightV2"];

  return v6;
}

- (void)resumeIndex
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    dataclass = self->_dataclass;
    v5 = "NO";
    if (self->_suspended)
    {
      v5 = "YES";
    }

    *buf = 138412546;
    v17 = dataclass;
    v18 = 2080;
    v19 = v5;
    _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_INFO, "Resuming index, dataclass:%@, suspended:%s", buf, 0x16u);
  }

  if (self->_jwlIndex)
  {
    SICloseJWLIndex();
    self->_jwlIndex = 0;
  }

  if (self->_index && !SIValidIndex() && self->_index && !SIValidIndex())
  {
    [(SPConcreteCoreSpotlightIndexer *)self closeIndex];
    [(SPConcreteCoreSpotlightIndexer *)self openIndex:1];
    goto LABEL_33;
  }

  if (self->_suspended || self->_suspending)
  {
    if (self->_softSuspended)
    {
      index = self->_index;
    }

    else
    {
      index = self->_index;
      if (!self->_hasAssertion)
      {
        SIResumeIndex();
        goto LABEL_20;
      }
    }

    if (!index)
    {
LABEL_25:
      [(SPConcreteCoreSpotlightIndexer *)self dropBackgroundAssertions:SIIsLockedIndexingMode()];
      *&self->_suspended = 0;
      if (self->_index && SIIsLockedIndexingMode())
      {
        v10 = logForCSLogCategoryIndex();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = self->_dataclass;
          *buf = 138412290;
          v17 = v11;
          _os_log_impl(&dword_231A35000, v10, OS_LOG_TYPE_INFO, "reopening index as it was opened for locked indexing, dataclass:%@", buf, 0xCu);
        }

        [(SPConcreteCoreSpotlightIndexer *)self closeIndex];
        [(SPConcreteCoreSpotlightIndexer *)self openIndex:0];
      }

      v12 = logForCSLogCategoryIndex();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = self->_dataclass;
        *buf = 138412290;
        v17 = v13;
        _os_log_impl(&dword_231A35000, v12, OS_LOG_TYPE_INFO, "Resumed index, dataclass:%@", buf, 0xCu);
      }

      goto LABEL_33;
    }

    SIBackgroundOpBlock(index, 9, &__block_literal_global_1204);
LABEL_20:
    v7 = self->_index;
    if (v7)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __45__SPConcreteCoreSpotlightIndexer_resumeIndex__block_invoke_2;
      v15[3] = &unk_278935248;
      v15[4] = self;
      SIBackgroundOpBlock(v7, 0, v15);
      if (_os_feature_enabled_impl() && [(NSString *)self->_dataclass isEqualToString:*MEMORY[0x277CCA190]])
      {
        v8 = self->_index;
        SISyncIndex();
      }

      v9 = self->_index;
    }

    goto LABEL_25;
  }

LABEL_33:
  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __45__SPConcreteCoreSpotlightIndexer_resumeIndex__block_invoke_2(uint64_t result, uint64_t a2, int a3)
{
  if (!a3)
  {
    v4 = result;
    if (_os_feature_enabled_impl() && [*(*(v4 + 32) + 192) isEqualToString:*MEMORY[0x277CCA190]])
    {
      SIReleaseJournalAssertion();
    }

    SISetLockedJournalingState();

    return _SISetAssertedJournalNum();
  }

  return result;
}

+ (int64_t)checkItemOfInterest:(id)a3 mask:(int64_t)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [v5 attributeSet];
  v7 = v6;
  if (v4)
  {
    v10 = [v6 summarizationContentTopic];
    if (v10 || ([v7 summarizationContentSynopsis], (v10 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v7, "summarizationContentTopLine"), (v10 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v11 = v10;
    }

    else
    {
      v11 = [v7 isUrgent];
      if (!v11 && ![v7 urgencyStatus])
      {
        if (![v7 summarizationStatus])
        {
          goto LABEL_2;
        }

LABEL_13:
        v8 = 1;
        if ((v4 & 2) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_3;
      }
    }

    goto LABEL_13;
  }

LABEL_2:
  v8 = 0;
  if ((v4 & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = [v7 attributeForKey:*MEMORY[0x277CC2BE0]];

  if (v9)
  {
    v8 |= 2uLL;
  }

LABEL_5:
  if ((v4 & 4) != 0)
  {
    v12 = [v7 mediaAnalysisComplete];

    if (v12)
    {
      v8 |= 4uLL;
    }

    if ((v4 & 8) == 0)
    {
      goto LABEL_25;
    }
  }

  else if ((v4 & 8) == 0)
  {
    goto LABEL_25;
  }

  if (v4)
  {
    v14 = [v7 isTimeSensitive];

    if (v14)
    {
      v8 |= 8uLL;
    }
  }

  else
  {
    v13 = [v7 textContentSummary];
    if (v13 || ([v7 isPriority], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      v16 = [v7 isTimeSensitive];

      if (!v16)
      {
        goto LABEL_25;
      }
    }

    v8 |= 8uLL;
  }

LABEL_25:

  return v8;
}

- (int64_t)_interestedAttributesMaskForBundleID:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"com.apple.mobilemail"] && (_os_feature_enabled_impl() & 1) != 0)
  {
LABEL_8:
    v4 = 7;
    goto LABEL_10;
  }

  if (![v3 isEqualToString:@"com.apple.MobileSMS"] || (_os_feature_enabled_impl() & 1) == 0)
  {
    if (![v3 isEqualToString:@"com.apple.usernotificationsd"] || (_os_feature_enabled_impl() & 1) == 0)
    {
      v4 = 8;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v4 = 15;
LABEL_10:

  return v4;
}

- (void)notifyClientForItemUpdates:(id)a3 updatedItems:(id)a4 batchMask:(int64_t)a5
{
  v71 = self;
  v80 = *MEMORY[0x277D85DE8];
  v72 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v75 objects:v79 count:16];
  if (v9)
  {
    v10 = v9;
    v74 = *v76;
    v11 = *MEMORY[0x277CC2BE0];
    do
    {
      for (i = 0; i != v10; ++i)
      {
        v13 = v8;
        if (*v76 != v74)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v75 + 1) + 8 * i);
        v15 = [v14 attributeSet];
        v16 = objc_opt_new();
        v17 = [v14 uniqueIdentifier];
        v18 = [v17 copyWithZone:0];
        [v16 setUniqueIdentifier:v18];

        v19 = [v15 uniqueIdentifier];
        v20 = [v19 copyWithZone:0];
        v21 = [v16 attributeSet];
        [v21 setUniqueIdentifier:v20];

        v22 = [v15 domainIdentifier];
        v23 = [v22 copyWithZone:0];
        v24 = [v16 attributeSet];
        [v24 setDomainIdentifier:v23];

        if (a5)
        {
          v25 = [v15 summarizationStatus];
          v26 = [v16 attributeSet];
          [v26 setSummarizationStatus:v25];

          v27 = [v15 urgencyStatus];
          v28 = [v16 attributeSet];
          [v28 setUrgencyStatus:v27];

          v29 = [v15 isUrgent];
          v30 = [v16 attributeSet];
          [v30 setIsUrgent:v29];

          v31 = [v15 summarizationContentTopLine];
          v32 = [v31 copyWithZone:0];
          v33 = [v16 attributeSet];
          [v33 setSummarizationContentTopLine:v32];

          v34 = [v15 summarizationContentSynopsis];
          v35 = [v34 copyWithZone:0];
          v36 = [v16 attributeSet];
          [v36 setSummarizationContentSynopsis:v35];

          v37 = [v15 summarizationContentTopic];
          v38 = [v37 copyWithZone:0];
          v39 = [v16 attributeSet];
          [v39 setSummarizationContentTopic:v38];

          v40 = [v15 providerDataTypeIdentifiers];
          v41 = [v40 copyWithZone:0];
          v42 = [v16 attributeSet];
          [v42 setProviderDataTypeIdentifiers:v41];

          v43 = [v15 creator];
          v44 = [v43 copyWithZone:0];
          v45 = [v16 attributeSet];
          [v45 setCreator:v44];

          v46 = [v15 threadIdentifier];
          v47 = [v46 copyWithZone:0];
          v48 = [v16 attributeSet];
          [v48 setThreadIdentifier:v47];

          if ((a5 & 2) == 0)
          {
LABEL_8:
            if ((a5 & 4) == 0)
            {
              goto LABEL_9;
            }

            goto LABEL_13;
          }
        }

        else if ((a5 & 2) == 0)
        {
          goto LABEL_8;
        }

        v49 = [v16 attributeSet];
        v50 = [v15 attributeForKey:v11];
        v51 = [v50 copyWithZone:0];
        [v49 setAttribute:v51 forKey:v11];

        if ((a5 & 4) == 0)
        {
LABEL_9:
          if ((a5 & 8) == 0)
          {
            goto LABEL_16;
          }

          goto LABEL_14;
        }

LABEL_13:
        v52 = [v15 mediaAnalysisComplete];
        v53 = [v52 copyWithZone:0];
        v54 = [v16 attributeSet];
        [v54 setMediaAnalysisComplete:v53];

        if ((a5 & 8) == 0)
        {
          goto LABEL_16;
        }

LABEL_14:
        v55 = [v15 isTimeSensitive];
        v56 = [v16 attributeSet];
        [v56 setIsTimeSensitive:v55];

        if ((a5 & 1) == 0)
        {
          v57 = [v15 isUrgent];
          v58 = [v16 attributeSet];
          [v58 setIsUrgent:v57];

          v59 = [v15 summarizationContentTopLine];
          v60 = [v59 copyWithZone:0];
          v61 = [v16 attributeSet];
          [v61 setSummarizationContentTopLine:v60];
        }

LABEL_16:
        v8 = v13;
        [v13 addObject:v16];
      }

      v10 = [obj countByEnumeratingWithState:&v75 objects:v79 count:16];
    }

    while (v10);
  }

  if ([v8 count])
  {
    v62 = [objc_alloc(MEMORY[0x277CC3420]) initWithJobType:17];
    [v62 setUpdatedItems:v8];
    [v62 setUpdatedItemsMask:a5];
    v63 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
    {
      [SPConcreteCoreSpotlightIndexer notifyClientForItemUpdates:v8 updatedItems:? batchMask:?];
    }

    v64 = v8;

    v65 = +[SpotlightDaemonServer sharedDaemonServer];
    v66 = [(SPConcreteCoreSpotlightIndexer *)v71 dataclass];
    v67 = [v65 handleJob:v62 bundleID:v72 protectionClass:v66 completionHandler:&__block_literal_global_8];

    if ((v67 & 1) == 0)
    {
      v68 = +[SPCoreSpotlightIndexer sharedInstance];
      v69 = [v68 extensionDelegate];

      if (v69)
      {
        [v69 indexRequestsPerformDataJob:v62 forBundle:v72 completionHandler:&__block_literal_global_280];
      }
    }

    v8 = v64;
  }

  v70 = *MEMORY[0x277D85DE8];
}

void __84__SPConcreteCoreSpotlightIndexer_notifyClientForItemUpdates_updatedItems_batchMask___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = logForCSLogCategoryDefault();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __84__SPConcreteCoreSpotlightIndexer_notifyClientForItemUpdates_updatedItems_batchMask___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __84__SPConcreteCoreSpotlightIndexer_notifyClientForItemUpdates_updatedItems_batchMask___block_invoke_cold_2();
  }
}

void __84__SPConcreteCoreSpotlightIndexer_notifyClientForItemUpdates_updatedItems_batchMask___block_invoke_278(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = logForCSLogCategoryDefault();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __84__SPConcreteCoreSpotlightIndexer_notifyClientForItemUpdates_updatedItems_batchMask___block_invoke_278_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __84__SPConcreteCoreSpotlightIndexer_notifyClientForItemUpdates_updatedItems_batchMask___block_invoke_278_cold_2();
  }
}

- (void)setProperty:(id)a3 forKey:(id)a4 sync:(BOOL)a5
{
  v5 = a5;
  v10 = a3;
  v8 = a4;
  if (self->_index)
  {
    SISetProperty();
    if (v5)
    {
      v9 = dispatch_group_create();
      [(SPConcreteCoreSpotlightIndexer *)self commitUpdates:v9];
    }
  }
}

- (id)getPropertyForKey:(id)a3
{
  index = self->_index;
  if (index)
  {
    index = SICopyProperty();
    v3 = vars8;
  }

  return index;
}

- (int64_t)getIntegerPropertyForKey:(id)a3
{
  v4 = a3;
  if (self->_index)
  {
    v5 = [(SPConcreteCoreSpotlightIndexer *)self getPropertyForKey:v4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 integerValue];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)issuePriorityIndexFixupOn:(id)a3 key:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (sUsePriorityIndex == 1 && [(NSString *)self->_dataclass isEqualToString:@"Priority"])
  {
    v8 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__SPConcreteCoreSpotlightIndexer_issuePriorityIndexFixupOn_key___block_invoke;
    block[3] = &unk_278934130;
    v11 = v6;
    v12 = v8;
    v13 = v7;
    v9 = v8;
    dispatch_async(v9, block);
  }
}

void __64__SPConcreteCoreSpotlightIndexer_issuePriorityIndexFixupOn_key___block_invoke(id *a1)
{
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 1;
  v2 = dispatch_group_create();
  if ([a1[4] containsObject:@"com.apple.application"])
  {
    dispatch_group_enter(v2);
    v3 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_DEFAULT, "Requesting update of apps for priority migration", buf, 2u);
    }

    v4 = sDelegate;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __64__SPConcreteCoreSpotlightIndexer_issuePriorityIndexFixupOn_key___block_invoke_288;
    v11[3] = &unk_278934050;
    v12 = v2;
    [v4 updateApplicationsWithCompletion:v11 clean:1];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__SPConcreteCoreSpotlightIndexer_issuePriorityIndexFixupOn_key___block_invoke_289;
  block[3] = &unk_2789345A0;
  v5 = a1[5];
  v7 = a1[4];
  v10 = v14;
  v8 = a1[5];
  v9 = a1[6];
  dispatch_group_notify(v2, v5, block);

  _Block_object_dispose(v14, 8);
}

void __64__SPConcreteCoreSpotlightIndexer_issuePriorityIndexFixupOn_key___block_invoke_288(uint64_t a1)
{
  v2 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "Finished update of apps for priority migration", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __64__SPConcreteCoreSpotlightIndexer_issuePriorityIndexFixupOn_key___block_invoke_289(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) allObjects];
  v3 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v2;
    _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_DEFAULT, "Issuing reindex for priority migration for bundleIDs %@", buf, 0xCu);
  }

  v4 = +[SPCoreSpotlightIndexer sharedInstance];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__SPConcreteCoreSpotlightIndexer_issuePriorityIndexFixupOn_key___block_invoke_293;
  v8[3] = &unk_2789345A0;
  v5 = *(a1 + 56);
  v9 = v2;
  v12 = v5;
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v6 = v2;
  [v4 _reindexAllItemsForBundleIDs:v6 reason:@"priority-index-turned-on" completionHandler:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __64__SPConcreteCoreSpotlightIndexer_issuePriorityIndexFixupOn_key___block_invoke_293(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v19 = v3;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "Finished reindex for priority migration for bundleIDs %@", buf, 0xCu);
  }

  v4 = dispatch_group_create();
  v5 = +[SPCoreSpotlightIndexer sharedInstance];
  v6 = [v5 defaultIndexer];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__SPConcreteCoreSpotlightIndexer_issuePriorityIndexFixupOn_key___block_invoke_294;
  v11[3] = &unk_278934578;
  v12 = *(a1 + 32);
  v13 = v4;
  v7 = *(a1 + 56);
  v14 = v6;
  v17 = v7;
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v8 = v6;
  v9 = v4;
  [v8 whenFinishedDraining:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __64__SPConcreteCoreSpotlightIndexer_issuePriorityIndexFixupOn_key___block_invoke_294(uint64_t a1, int a2)
{
  v30 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 138412290;
      v29 = v4;
      _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_DEFAULT, "Deleting items from default index for priority migration for bundleIDs %@", buf, 0xCu);
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = *(a1 + 32);
    v5 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v24;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v24 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v23 + 1) + 8 * i);
          v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"_kMDItemBundleID='%@'", v9];
          dispatch_group_enter(*(a1 + 40));
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v20[2] = __64__SPConcreteCoreSpotlightIndexer_issuePriorityIndexFixupOn_key___block_invoke_302;
          v20[3] = &unk_278934528;
          v22 = *(a1 + 72);
          v20[4] = v9;
          v11 = *(a1 + 48);
          v21 = *(a1 + 40);
          [v11 deleteItemsForQuery:v10 bundleID:v9 fromClient:@"com.apple.searchd" completionHandler:v20];
        }

        v6 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v6);
    }

    v12 = *(a1 + 40);
    v13 = *(a1 + 56);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__SPConcreteCoreSpotlightIndexer_issuePriorityIndexFixupOn_key___block_invoke_304;
    block[3] = &unk_278934550;
    *obja = *(a1 + 64);
    v14 = obja[0];
    v19 = *obja;
    dispatch_group_notify(v12, v13, block);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __64__SPConcreteCoreSpotlightIndexer_issuePriorityIndexFixupOn_key___block_invoke_302(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = logForCSLogCategoryDefault();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __64__SPConcreteCoreSpotlightIndexer_issuePriorityIndexFixupOn_key___block_invoke_302_cold_1();
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v10 = 134218242;
      v11 = a3;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_231A35000, v7, OS_LOG_TYPE_DEFAULT, "Deleted %ld items from default index for priority migration for bundleID %@", &v10, 0x16u);
    }
  }

  dispatch_group_leave(*(a1 + 40));

  v9 = *MEMORY[0x277D85DE8];
}

void __64__SPConcreteCoreSpotlightIndexer_issuePriorityIndexFixupOn_key___block_invoke_304(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v2 = +[SPCoreSpotlightIndexer sharedInstance];
    v3 = [v2 defaultIndexer];
    [v3 setProperty:&unk_2846C9590 forKey:*(a1 + 32) sync:1];

    v4 = +[SPCoreSpotlightIndexer sharedInstance];
    v5 = [v4 priorityIndexer];
    [v5 setProperty:&unk_2846C9590 forKey:*(a1 + 32) sync:1];

    v6 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 0;
      v7 = "Finished priority migration ON";
      v8 = &v10;
LABEL_6:
      _os_log_impl(&dword_231A35000, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
    }
  }

  else
  {
    v6 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 0;
      v7 = "Couldn't complete priority migration ON; will try again on next launch";
      v8 = &v9;
      goto LABEL_6;
    }
  }
}

- (void)issuePriorityIndexFixupOff
{
  if ((sUsePriorityIndex & 1) == 0 && [(NSString *)self->_dataclass isEqualToString:*MEMORY[0x277CCA1A0]])
  {
    v3 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_DEFAULT, "Beginning priority migration off default index", buf, 2u);
    }

    v4 = dispatch_group_create();
    dispatch_group_enter(v4);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __60__SPConcreteCoreSpotlightIndexer_issuePriorityIndexFixupOff__block_invoke;
    v7[3] = &unk_2789345C8;
    v8 = v4;
    v5 = v4;
    [(SPConcreteCoreSpotlightIndexer *)self whenFinishedDraining:v7];
    v6 = dispatch_get_global_queue(21, 0);
    dispatch_group_notify(v5, v6, &__block_literal_global_308);
  }
}

void __60__SPConcreteCoreSpotlightIndexer_issuePriorityIndexFixupOff__block_invoke_2()
{
  v0 = dispatch_group_create();
  dispatch_group_enter(v0);
  v1 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231A35000, v1, OS_LOG_TYPE_DEFAULT, "Requesting update of apps for priority migration", buf, 2u);
  }

  v2 = sDelegate;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__SPConcreteCoreSpotlightIndexer_issuePriorityIndexFixupOff__block_invoke_309;
  v5[3] = &unk_278934050;
  v6 = v0;
  v3 = v0;
  [v2 updateApplicationsWithCompletion:v5 clean:0];
  v4 = dispatch_get_global_queue(21, 0);
  dispatch_group_notify(v3, v4, &__block_literal_global_312);
}

void __60__SPConcreteCoreSpotlightIndexer_issuePriorityIndexFixupOff__block_invoke_309(uint64_t a1)
{
  v2 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "Finished update of apps for priority migration", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __60__SPConcreteCoreSpotlightIndexer_issuePriorityIndexFixupOff__block_invoke_310()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [sPriorityBundleIds allObjects];
  v1 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v0;
    _os_log_impl(&dword_231A35000, v1, OS_LOG_TYPE_DEFAULT, "Issuing reindex for priority migration for bundleIDs %@", buf, 0xCu);
  }

  v2 = +[SPCoreSpotlightIndexer sharedInstance];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__SPConcreteCoreSpotlightIndexer_issuePriorityIndexFixupOff__block_invoke_316;
  v5[3] = &unk_278934050;
  v6 = v0;
  v3 = v0;
  [v2 _reindexAllItemsForBundleIDs:v3 reason:@"priority-index-turned-off" completionHandler:v5];

  v4 = *MEMORY[0x277D85DE8];
}

void __60__SPConcreteCoreSpotlightIndexer_issuePriorityIndexFixupOff__block_invoke_316(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v14 = v3;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "Finished priority migration for bundleIDs %@", buf, 0xCu);
  }

  v4 = +[SPCoreSpotlightIndexer sharedInstance];
  v5 = [v4 priorityIndexPath];

  v6 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v5;
    _os_log_impl(&dword_231A35000, v6, OS_LOG_TYPE_DEFAULT, "Deleting old priority index for priority migration at %@", buf, 0xCu);
  }

  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v12 = 0;
  v8 = [v7 removeItemAtPath:v5 error:&v12];
  v9 = v12;

  if ((v8 & 1) == 0)
  {
    v10 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __60__SPConcreteCoreSpotlightIndexer_issuePriorityIndexFixupOff__block_invoke_316_cold_1();
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)issuePriorityIndexFixup
{
  if (sPrivate & 1) != 0 || (sUpgradedForPriorityIndex)
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    p_dataclass = &self->_dataclass;
    if (-[NSString isEqualToString:](self->_dataclass, "isEqualToString:", *MEMORY[0x277CCA1A0]) || (v2 = [*p_dataclass isEqualToString:@"Priority"]) != 0)
    {
      v5 = [(SPConcreteCoreSpotlightIndexer *)self getIntegerPropertyForKey:@"kSPPriorityIndexVersion"];
      v6 = sUsePriorityIndex;
      if ((sUsePriorityIndex ^ (v5 > 5)))
      {
        v7 = logForCSLogCategoryDefault();
        v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
        if (v6)
        {
          if (v8)
          {
            [(SPConcreteCoreSpotlightIndexer *)p_dataclass issuePriorityIndexFixup];
          }

          [(SPConcreteCoreSpotlightIndexer *)self issuePriorityIndexFixupOn];
        }

        else
        {
          if (v8)
          {
            [(SPConcreteCoreSpotlightIndexer *)p_dataclass issuePriorityIndexFixup];
          }

          [(SPConcreteCoreSpotlightIndexer *)self issuePriorityIndexFixupOff];
        }

        LOBYTE(v2) = 1;
      }

      else
      {
        if (v5 < 6)
        {
          v9 = &unk_2846C95A8;
        }

        else
        {
          v9 = &unk_2846C9590;
        }

        [(SPConcreteCoreSpotlightIndexer *)self setProperty:v9 forKey:@"kSPPriorityIndexVersion" sync:1];
        LOBYTE(v2) = 0;
      }
    }
  }

  return v2;
}

- (void)issuePhotosReindexIfNeeded:(BOOL)a3 group:(id)a4
{
  v4 = a3;
  v25[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (_os_feature_enabled_impl())
  {
    if (([sDelegate privateIndex] & 1) == 0)
    {
      if ([(NSString *)self->_dataclass isEqualToString:*MEMORY[0x277CCA1A0]])
      {
        v7 = [(SPConcreteCoreSpotlightIndexer *)self getPropertyForKey:@"PHOTOS_INDEX_VERSION_CHANGE"];
        v8 = [v7 integerValue];

        if (v8 < 1 || v4)
        {
          v9 = [objc_alloc(MEMORY[0x277CC3420]) initWithJobType:2 jobOptions:4];
          v25[0] = @"com.apple.mobileslideshow";
          v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
          [v9 setBundleIDs:v10];

          dataclass = self->_dataclass;
          v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&dataclass count:1];
          [v9 setProtectionClasses:v11];

          if (v4)
          {
            [v9 setReason:@"Photos re-index forced"];
          }

          else
          {
            v12 = MEMORY[0x277CCACA8];
            v13 = [(SPConcreteCoreSpotlightIndexer *)self getPropertyForKey:@"PHOTOS_INDEX_VERSION_CHANGE"];
            v14 = [v12 stringWithFormat:@"Photos index version changed: %@ -> %lu", v13, 1];
            [v9 setReason:v14];
          }

          v15 = [SPCoreSpotlightIndexerTask alloc];
          v23 = self;
          v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
          v17 = [(SPCoreSpotlightIndexerTask *)v15 initWithIndexJob:v9 indexers:v16];

          v18 = [v9 bundleIDs];
          [(SPCoreSpotlightIndexerTask *)v17 setBundleIDs:v18];

          WeakRetained = objc_loadWeakRetained(&self->_owner);
          -[SPCoreSpotlightIndexerTask setDataMigrationStage:](v17, "setDataMigrationStage:", [WeakRetained dataMigrationStage]);

          [(SPCoreSpotlightIndexerTask *)v17 setShouldResumeOnFailure:0];
          _sendPhotosReindexABCReport(@"Photos index version change");
          dispatch_group_enter(v6);
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = __67__SPConcreteCoreSpotlightIndexer_issuePhotosReindexIfNeeded_group___block_invoke;
          v21[3] = &unk_2789342C0;
          v21[4] = self;
          v22 = v6;
          [(SPConcreteCoreSpotlightIndexer *)self performIndexerTask:v17 completionHandler:v21];
        }
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __67__SPConcreteCoreSpotlightIndexer_issuePhotosReindexIfNeeded_group___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setProperty:&unk_2846C95C0 forKey:@"PHOTOS_INDEX_VERSION_CHANGE" sync:0];
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

- (BOOL)denyOperationOnAssertedIndex:(char *)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_index && !self->_hasAssertion)
  {
    result = 0;
  }

  else
  {
    v5 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      dataclass = self->_dataclass;
      v9 = 136315394;
      v10 = a3;
      v11 = 2112;
      v12 = dataclass;
      _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_INFO, "Cannot %s on asserted index when device is locked. dataclass:%@", &v9, 0x16u);
    }

    result = 1;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)reindexAttributes:(id)a3 ofItemsMatchingQuery:(id)a4 indexAttrName:(id)a5 withVersion:(unint64_t)a6 perItemCompletionAttribute:(id)a7 force:(BOOL)a8 postFilter:(id)a9 group:(id)a10 forceMerge:(BOOL)a11
{
  LOBYTE(v12) = a11;
  BYTE1(v11) = a8;
  LOBYTE(v11) = 0;
  [(SPConcreteCoreSpotlightIndexer *)self reindexAttributes:a3 ofItemsMatchingQuery:a4 indexAttrName:a5 withVersion:a6 perItemCompletionAttribute:a7 completionValue:1 alwaysReindexWithCompletionAttribute:v11 force:a9 postFilter:a10 group:v12 forceMerge:?];
}

- (void)reindexAttributes:(id)a3 ofItemsMatchingQuery:(id)a4 indexAttrName:(id)a5 withVersion:(unint64_t)a6 perItemCompletionAttributeArray:(id)a7 completionValueArray:(id)a8 alwaysReindexWithCompletionAttribute:(BOOL)a9 force:(BOOL)a10 postFilter:(id)a11 group:(id)a12 forceMerge:(BOOL)a13
{
  v60 = *MEMORY[0x277D85DE8];
  v38 = a3;
  v39 = a4;
  v19 = a5;
  v40 = a7;
  v20 = a8;
  v21 = a11;
  v22 = a12;
  v23 = [(SPConcreteCoreSpotlightIndexer *)self index];
  if (v23)
  {
    if (self->_readOnly)
    {
      v24 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        [SPConcreteCoreSpotlightIndexer reindexAttributes:? ofItemsMatchingQuery:? indexAttrName:? withVersion:? perItemCompletionAttributeArray:? completionValueArray:? alwaysReindexWithCompletionAttribute:? force:? postFilter:? group:? forceMerge:?];
      }

LABEL_19:

      goto LABEL_20;
    }

    v25 = v23;
    if (![(SPConcreteCoreSpotlightIndexer *)self denyOperationOnAssertedIndex:"reindexAttributes"])
    {
      v36 = [(SPConcreteCoreSpotlightIndexer *)self getIntegerPropertyForKey:v19];
      v26 = v36 < a6 || a10;
      v24 = logForCSLogCategoryDefault();
      v27 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
      if (v26)
      {
        if (v27)
        {
          dataclass = self->_dataclass;
          *buf = 138413314;
          *&buf[4] = v19;
          *&buf[12] = 2112;
          *&buf[14] = dataclass;
          *&buf[22] = 2048;
          v55 = v36;
          v56 = 2048;
          v57 = a6;
          v58 = 1024;
          v59 = a10;
          _os_log_impl(&dword_231A35000, v24, OS_LOG_TYPE_DEFAULT, "fixup name: %@ version check passed, data class: %@, current version: %ld, target version: %lu, force: %d", buf, 0x30u);
        }

        v53[0] = @"_kMDItemBundleID";
        v53[1] = @"_kMDItemExternalID";
        v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
        v30 = [v29 arrayByAddingObjectsFromArray:v38];

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v55 = 0;
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __223__SPConcreteCoreSpotlightIndexer_reindexAttributes_ofItemsMatchingQuery_indexAttrName_withVersion_perItemCompletionAttributeArray_completionValueArray_alwaysReindexWithCompletionAttribute_force_postFilter_group_forceMerge___block_invoke;
        v41[3] = &unk_278934708;
        v41[4] = self;
        v48 = v25;
        v24 = v30;
        v42 = v24;
        v31 = v19;
        v43 = v31;
        v47 = buf;
        v51 = a9;
        v44 = v40;
        v45 = v20;
        v49 = a6;
        v52 = a13;
        v32 = v22;
        v46 = v32;
        v50 = v36;
        v37 = MEMORY[0x2383760E0](v41);
        v33 = @"com.apple.corespotlight.fixup";
        if (v31)
        {
          v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.corespotlight.fixup", v31];
        }

        if (v32)
        {
          dispatch_group_enter(v32);
        }

        [(SPConcreteCoreSpotlightIndexer *)self _startInternalQueryWithIndex:v25 query:v39 fetchAttributes:v24 forBundleIds:0 maxCount:0 resultsHandler:v37 resultQueue:0 postFilter:v21 clientBundleID:v33];

        _Block_object_dispose(buf, 8);
      }

      else if (v27)
      {
        v34 = self->_dataclass;
        *buf = 138413314;
        *&buf[4] = v19;
        *&buf[12] = 2112;
        *&buf[14] = v34;
        *&buf[22] = 2048;
        v55 = v36;
        v56 = 2048;
        v57 = a6;
        v58 = 1024;
        v59 = 0;
        _os_log_impl(&dword_231A35000, v24, OS_LOG_TYPE_DEFAULT, "fixup name: %@ version check failed, data class: %@, current version: %ld, target version: %lu, force: %d", buf, 0x30u);
      }

      goto LABEL_19;
    }
  }

LABEL_20:

  v35 = *MEMORY[0x277D85DE8];
}

void __223__SPConcreteCoreSpotlightIndexer_reindexAttributes_ofItemsMatchingQuery_indexAttrName_withVersion_perItemCompletionAttributeArray_completionValueArray_alwaysReindexWithCompletionAttribute_force_postFilter_group_forceMerge___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v82 = *MEMORY[0x277D85DE8];
  v9 = a2;
  if (a3 == 1)
  {
    v32 = [*(a1 + 32) index];
    v33 = *(a1 + 88);
    if (v32 == v33)
    {
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __223__SPConcreteCoreSpotlightIndexer_reindexAttributes_ofItemsMatchingQuery_indexAttrName_withVersion_perItemCompletionAttributeArray_completionValueArray_alwaysReindexWithCompletionAttribute_force_postFilter_group_forceMerge___block_invoke_351;
      v41[3] = &unk_2789346E0;
      v34 = *(a1 + 96);
      v41[4] = *(a1 + 32);
      v44 = v34;
      v35 = *(a1 + 48);
      v36 = *(a1 + 88);
      v42 = v35;
      v45 = v36;
      v40 = *(a1 + 72);
      v37 = v40.i64[0];
      v43 = v40;
      v47 = *(a1 + 113);
      v46 = *(a1 + 104);
      SIBackgroundOpBlock(v33, 0, v41);
    }
  }

  else if (!a3 && [*(a1 + 32) index] == *(a1 + 88))
  {
    v68 = 0;
    v69 = &v68;
    v70 = 0x3032000000;
    v71 = __Block_byref_object_copy__0;
    v72 = __Block_byref_object_dispose__0;
    v73 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v62 = 0;
    v63 = &v62;
    v64 = 0x3032000000;
    v65 = __Block_byref_object_copy__0;
    v66 = __Block_byref_object_dispose__0;
    v67 = 0;
    v10 = [*(a1 + 40) count];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __223__SPConcreteCoreSpotlightIndexer_reindexAttributes_ofItemsMatchingQuery_indexAttrName_withVersion_perItemCompletionAttributeArray_completionValueArray_alwaysReindexWithCompletionAttribute_force_postFilter_group_forceMerge___block_invoke_342;
    v53[3] = &unk_278934618;
    v57 = &v62;
    v58 = &v68;
    v11 = *(a1 + 48);
    v59 = *(a1 + 80);
    v60 = v10;
    v39 = *(a1 + 32);
    v12 = v39.i64[1];
    v61 = *(a1 + 112);
    v13 = *(a1 + 56);
    v14.i64[0] = v11;
    v14.i64[1] = v13;
    v15 = vzip2q_s64(v39, v14);
    v14.i64[1] = v39.i64[0];
    v55 = v15;
    v54 = v14;
    v56 = *(a1 + 64);
    [a6 enumerateQueryResults:v10 stringCache:0 usingBlock:v53];
    if ([v69[5] count])
    {
      v16 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 48);
        v18 = *(*(a1 + 32) + 192);
        v19 = v63[5];
        v20 = [v69[5] count];
        v21 = &stru_2846BD100;
        *buf = 138413058;
        if (v19)
        {
          v21 = v19;
        }

        v75 = v17;
        v76 = 2112;
        v77 = v18;
        v78 = 2112;
        v79 = v21;
        v80 = 1024;
        v81 = v20;
        _os_log_impl(&dword_231A35000, v16, OS_LOG_TYPE_DEFAULT, "fixup name: %@,  data class: %@, bundle ID: %@, dictionaries count: %d", buf, 0x26u);
      }

      v22 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = [v9 resultsQueue];
        *buf = 134217984;
        v75 = v23;
        _os_log_impl(&dword_231A35000, v22, OS_LOG_TYPE_INFO, "Pause queue:%p", buf, 0xCu);
      }

      v24 = [v9 resultsQueue];
      [v24 pauseResults];

      v25 = v69[5];
      v26 = v63[5];
      v27 = *(a1 + 88);
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __223__SPConcreteCoreSpotlightIndexer_reindexAttributes_ofItemsMatchingQuery_indexAttrName_withVersion_perItemCompletionAttributeArray_completionValueArray_alwaysReindexWithCompletionAttribute_force_postFilter_group_forceMerge___block_invoke_350;
      v48[3] = &unk_278934640;
      v28 = v9;
      v29 = *(a1 + 80);
      v49 = v28;
      v52 = v29;
      v30 = v25;
      v50 = v30;
      v31 = v26;
      v51 = v31;
      SIBackgroundOpBlock(v27, 0, v48);
    }

    _Block_object_dispose(&v62, 8);
    _Block_object_dispose(&v68, 8);
  }

  v38 = *MEMORY[0x277D85DE8];
}

void __223__SPConcreteCoreSpotlightIndexer_reindexAttributes_ofItemsMatchingQuery_indexAttrName_withVersion_perItemCompletionAttributeArray_completionValueArray_alwaysReindexWithCompletionAttribute_force_postFilter_group_forceMerge___block_invoke_342(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x277D85DE8];
  if (![*(*(*(a1 + 72) + 8) + 40) isEqual:*a2] || objc_msgSend(*(*(*(a1 + 80) + 8) + 40), "count") >= 0x201)
  {
    if (*(*(*(a1 + 72) + 8) + 40) && [*(*(*(a1 + 80) + 8) + 40) count])
    {
      v4 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 32);
        v6 = *(*(a1 + 40) + 192);
        v7 = *(*(*(a1 + 72) + 8) + 40);
        v8 = [*(*(*(a1 + 80) + 8) + 40) count];
        *buf = 138413058;
        v46 = v5;
        v47 = 2112;
        v48 = v6;
        v49 = 2112;
        v50 = v7;
        v51 = 1024;
        v52 = v8;
        _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_DEFAULT, "fixup name: %@, data class: %@, bundle ID: %@, dictionaries count: %d", buf, 0x26u);
      }

      v9 = *(*(*(a1 + 80) + 8) + 40);
      v10 = *(*(*(a1 + 72) + 8) + 40);
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __223__SPConcreteCoreSpotlightIndexer_reindexAttributes_ofItemsMatchingQuery_indexAttrName_withVersion_perItemCompletionAttributeArray_completionValueArray_alwaysReindexWithCompletionAttribute_force_postFilter_group_forceMerge___block_invoke_343;
      v41[3] = &unk_2789345F0;
      v11 = *(a1 + 88);
      v12 = *(a1 + 96);
      v43 = v10;
      v44 = v11;
      v42 = v9;
      v13 = v10;
      v14 = v9;
      SIBackgroundOpBlock(v12, 0, v41);
    }

    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v16 = *(*(a1 + 80) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    v18 = [*a2 mutableCopy];
    v19 = *(*(a1 + 72) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;
  }

  v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v22 = *(a1 + 104);
  if (v22 >= 3)
  {
    v23 = *MEMORY[0x277CBEEE8];
    for (i = 2; i < v22; ++i)
    {
      v25 = a2[i];
      if (v25)
      {
        v26 = v25 == v23;
      }

      else
      {
        v26 = 1;
      }

      if (!v26)
      {
        v27 = [*(a1 + 48) objectAtIndexedSubscript:i];
        [v21 setObject:v25 forKey:v27];

        v22 = *(a1 + 104);
      }
    }
  }

  if ([v21 count] && (v28 = a2[1]) != 0 || v21 && *(a1 + 112) == 1 && (v37 = *(a1 + 56)) != 0 && objc_msgSend(v37, "count") && (v38 = *(a1 + 64)) != 0 && (v39 = objc_msgSend(v38, "count"), v39 == objc_msgSend(*(a1 + 56), "count")) && (v28 = a2[1]) != 0)
  {
    v29 = [v28 mutableCopy];
    v30 = [*(a1 + 48) objectAtIndexedSubscript:1];
    [v21 setObject:v29 forKey:v30];

    v31 = *(a1 + 56);
    if (v31)
    {
      if (*(a1 + 64))
      {
        v32 = [v31 count];
        v33 = [*(a1 + 64) count];
        if (v32)
        {
          if (v32 == v33)
          {
            for (j = 0; j != v32; ++j)
            {
              v35 = [*(a1 + 64) objectAtIndex:j];
              v36 = [*(a1 + 56) objectAtIndex:j];
              [v21 setObject:v35 forKey:v36];
            }
          }
        }
      }
    }

    [*(*(*(a1 + 80) + 8) + 40) addObject:v21];
  }

  v40 = *MEMORY[0x277D85DE8];
}

uint64_t __223__SPConcreteCoreSpotlightIndexer_reindexAttributes_ofItemsMatchingQuery_indexAttrName_withVersion_perItemCompletionAttributeArray_completionValueArray_alwaysReindexWithCompletionAttribute_force_postFilter_group_forceMerge___block_invoke_343(uint64_t result, uint64_t a2, int a3)
{
  if (!a3)
  {
    v4 = result;
    *(*(*(result + 48) + 8) + 24) += [*(result + 32) count];
    v6 = *(v4 + 32);
    v5 = *(v4 + 40);

    return SISetCSAttributes();
  }

  return result;
}

void __223__SPConcreteCoreSpotlightIndexer_reindexAttributes_ofItemsMatchingQuery_indexAttrName_withVersion_perItemCompletionAttributeArray_completionValueArray_alwaysReindexWithCompletionAttribute_force_postFilter_group_forceMerge___block_invoke_350(uint64_t a1, uint64_t a2, int a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = [*(a1 + 32) resultsQueue];
  if (a3)
  {
    v6 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [*(a1 + 32) resultsQueue];
      v12 = 134217984;
      v13 = v7;
      _os_log_impl(&dword_231A35000, v6, OS_LOG_TYPE_INFO, "Resume cancel queue:%p", &v12, 0xCu);
    }

    [v5 resumeResults];
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) += [*(a1 + 40) count];
    v8 = v5;
    v10 = *(a1 + 40);
    v9 = *(a1 + 48);
    if (!SISetCSAttributes())
    {
      unpauseIfSystemInGoodStateCallback(v8);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __223__SPConcreteCoreSpotlightIndexer_reindexAttributes_ofItemsMatchingQuery_indexAttrName_withVersion_perItemCompletionAttributeArray_completionValueArray_alwaysReindexWithCompletionAttribute_force_postFilter_group_forceMerge___block_invoke_351(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 || (v5 = *(a1 + 32), [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(a1 + 64)], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "setProperty:forKey:sync:", v6, *(a1 + 40), 1), v6, !*(*(*(a1 + 56) + 8) + 24)))
  {
    v4 = *(a1 + 48);
    if (v4)
    {

      dispatch_group_leave(v4);
    }
  }

  else
  {
    v7 = *(a1 + 72);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __223__SPConcreteCoreSpotlightIndexer_reindexAttributes_ofItemsMatchingQuery_indexAttrName_withVersion_perItemCompletionAttributeArray_completionValueArray_alwaysReindexWithCompletionAttribute_force_postFilter_group_forceMerge___block_invoke_2;
    v13[3] = &unk_2789346B8;
    v8 = *(a1 + 48);
    v19 = *(a1 + 88);
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v14 = v8;
    v15 = v9;
    v11 = v10;
    v12 = *(a1 + 80);
    v16 = v11;
    v17 = v12;
    v18 = *(a1 + 64);
    SISynchedOpWithBlock(v7, 2, v13);
  }
}

void __223__SPConcreteCoreSpotlightIndexer_reindexAttributes_ofItemsMatchingQuery_indexAttrName_withVersion_perItemCompletionAttributeArray_completionValueArray_alwaysReindexWithCompletionAttribute_force_postFilter_group_forceMerge___block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    dispatch_group_leave(v5);
  }

  if (!a3 && (!*(a1 + 32) || *(a1 + 72) == 1))
  {
    v6 = sIndexQueue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __223__SPConcreteCoreSpotlightIndexer_reindexAttributes_ofItemsMatchingQuery_indexAttrName_withVersion_perItemCompletionAttributeArray_completionValueArray_alwaysReindexWithCompletionAttribute_force_postFilter_group_forceMerge___block_invoke_3;
    v9[3] = &unk_278934690;
    v7 = *(a1 + 48);
    v9[4] = *(a1 + 40);
    v10 = v7;
    v11 = *(a1 + 56);
    v8 = _setup_block(v9, 0, 1598);
    dispatch_async(v6, v8);
  }
}

void __223__SPConcreteCoreSpotlightIndexer_reindexAttributes_ofItemsMatchingQuery_indexAttrName_withVersion_perItemCompletionAttributeArray_completionValueArray_alwaysReindexWithCompletionAttribute_force_postFilter_group_forceMerge___block_invoke_3(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __223__SPConcreteCoreSpotlightIndexer_reindexAttributes_ofItemsMatchingQuery_indexAttrName_withVersion_perItemCompletionAttributeArray_completionValueArray_alwaysReindexWithCompletionAttribute_force_postFilter_group_forceMerge___block_invoke_4;
  v3[3] = &unk_278934668;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 mergeWithCompletionHandler:v3];
}

void __223__SPConcreteCoreSpotlightIndexer_reindexAttributes_ofItemsMatchingQuery_indexAttrName_withVersion_perItemCompletionAttributeArray_completionValueArray_alwaysReindexWithCompletionAttribute_force_postFilter_group_forceMerge___block_invoke_4(void *a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = logForCSLogCategoryDefault();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __223__SPConcreteCoreSpotlightIndexer_reindexAttributes_ofItemsMatchingQuery_indexAttrName_withVersion_perItemCompletionAttributeArray_completionValueArray_alwaysReindexWithCompletionAttribute_force_postFilter_group_forceMerge___block_invoke_4_cold_1();
    }

    v6 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = a1[4];
      v8 = a1[5];
      v9 = a1[6];
      v17 = 138413058;
      v18 = v7;
      v19 = 2048;
      v20 = v8;
      v21 = 2048;
      v22 = v9;
      v23 = 2112;
      v24 = v3;
      v10 = "Post fixup merged name: %@, current version: %ld, target version: %lu, error: %@";
      v11 = v6;
      v12 = 42;
LABEL_10:
      _os_log_impl(&dword_231A35000, v11, OS_LOG_TYPE_INFO, v10, &v17, v12);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_INFO, "Post fixup merged finished", &v17, 2u);
    }

    v6 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v13 = a1[4];
      v14 = a1[5];
      v15 = a1[6];
      v17 = 138412802;
      v18 = v13;
      v19 = 2048;
      v20 = v14;
      v21 = 2048;
      v22 = v15;
      v10 = "Post fixup merged name: %@, current version: %ld, target version: %lu";
      v11 = v6;
      v12 = 32;
      goto LABEL_10;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)updateEmailLocalParts:(BOOL)a3 group:(id)a4 forceMerge:(BOOL)a5
{
  v20 = a3;
  v21 = MEMORY[0x277CCACA8];
  v5 = *MEMORY[0x277CC2788];
  v17 = *MEMORY[0x277CC2790];
  v6 = *MEMORY[0x277CC24C8];
  v7 = *MEMORY[0x277CC24D0];
  v8 = *MEMORY[0x277CC2FA8];
  v9 = *MEMORY[0x277CC2FB0];
  v10 = *MEMORY[0x277CC23D0];
  v11 = *MEMORY[0x277CC23D8];
  v12 = *MEMORY[0x277CC2BB0];
  v13 = *MEMORY[0x277CC2BB8];
  v14 = a4;
  v22 = [v21 stringWithFormat:@"(%@ = \"*\"  && %@ != \"*\"", v5, v17, v6, v7, v8, v9, v10, v11, v12, v13];
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ = @w || %@ = @w ||%@ = @w ||%@ = @w ||%@ = @w"], v5, v6, v8, v10, v12);
  LOBYTE(v16) = a5;
  [(SPConcreteCoreSpotlightIndexer *)self reindexAttributes:&unk_2846C9158 ofItemsMatchingQuery:v22 indexAttrName:@"kSPEmailLocalParts" withVersion:7 perItemCompletionAttribute:0 force:v20 postFilter:v15 group:v14 forceMerge:v16];
}

void __85__SPConcreteCoreSpotlightIndexer_updateDerivedIsMe_runOtherFixups_force_group_state___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 48) & 0x8000000000000000) != 0)
  {
    v8 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 58);
      v11[0] = 67109120;
      v11[1] = v9;
      _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_DEFAULT, "fixup updateDerivedIsMe force %d finished running", v11, 8u);
    }

    if (*(a1 + 57) == 1)
    {
      [*(a1 + 32) runOtherFixups:*(a1 + 40) state:0];
    }

    v10 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v2 = *(a1 + 56);
    v3 = *(a1 + 57);
    v4 = *(a1 + 58);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *MEMORY[0x277D85DE8];

    [v5 updateDerivedIsMe:v2 runOtherFixups:v3 force:v4 group:v6 state:?];
  }
}

void __76__SPConcreteCoreSpotlightIndexer_updateDerivedIsMeIfNotAlready_group_state___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 48) & 0x8000000000000000) != 0)
  {
    v6 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 56);
      v9[0] = 67109120;
      v9[1] = v7;
      _os_log_impl(&dword_231A35000, v6, OS_LOG_TYPE_DEFAULT, "fixup updateDerivedIsMeIfNotAlready force %d finished running", v9, 8u);
    }

    v8 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v2 = *(a1 + 56);
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *MEMORY[0x277D85DE8];

    [v3 updateDerivedIsMeIfNotAlready:v2 group:v4 state:?];
  }
}

- (void)updateDerivedIsMe:(BOOL)a3 nameTokens:(id)a4 alias:(id)a5 onlyIfNotAlready:(BOOL)a6 group:(id)a7 forceMerge:(BOOL)a8
{
  v10 = a6;
  v41[1] = *MEMORY[0x277D85DE8];
  v14 = a4;
  v15 = a7;
  if (v14)
  {
    v37 = a3;
    v38 = self;
    v16 = *MEMORY[0x277CC26F8];
    v41[0] = *MEMORY[0x277CC26F8];
    v17 = MEMORY[0x277CBEA60];
    v18 = a5;
    v36 = [v17 arrayWithObjects:v41 count:1];
    v19 = *MEMORY[0x277CC2F30];
    v40[0] = *MEMORY[0x277CC2F28];
    v40[1] = v19;
    v20 = *MEMORY[0x277CC31A0];
    v40[2] = *MEMORY[0x277CC25B8];
    v40[3] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:4];
    v22 = *MEMORY[0x277CC2500];
    if (v10)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"((%@!=1) && (%@=\"%@\", v16, *MEMORY[0x277CC2500], @"com.apple.mobileslideshow""];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"(%@=\"%@\", *MEMORY[0x277CC2500], @"com.apple.mobileslideshow"", v33];
    }
    v23 = ;
    v24 = createEqualORQueryPrefix(v14, v18, v21, v23, 0);

    v25 = *MEMORY[0x277CC2408];
    v39[0] = *MEMORY[0x277CC2760];
    v39[1] = v25;
    v39[2] = *MEMORY[0x277CC2428];
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:3];

    if (v10)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"((%@!=1) && (%@=\"%@\", v16, v22, @"com.apple.MobileAddressBook"", *MEMORY[0x277CC2F18]];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"((%@=\"%@\", v22, @"com.apple.MobileAddressBook"", *MEMORY[0x277CC2F18], v34];
    }
    v27 = ;

    v28 = createEqualORQueryPrefix(v14, 0, v26, v27, 0);
    if (v28)
    {
      v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ || %@)", v24, v28];
    }

    else
    {
      v29 = v24;
    }

    v30 = v29;
    LOBYTE(v35) = a8;
    BYTE1(v32) = v37;
    LOBYTE(v32) = 1;
    [(SPConcreteCoreSpotlightIndexer *)v38 reindexAttributes:v36 ofItemsMatchingQuery:v29 indexAttrName:@"kSPDerivedIsMe" withVersion:2 perItemCompletionAttribute:v16 completionValue:1 alwaysReindexWithCompletionAttribute:v32 force:0 postFilter:v15 group:v35 forceMerge:?];
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)updateDerivedIsMeNot:(BOOL)a3 nameTokens:(id)a4 alias:(id)a5 group:(id)a6 forceMerge:(BOOL)a7
{
  v37[1] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v37[0] = *MEMORY[0x277CC26F8];
    v9 = v37[0];
    v10 = MEMORY[0x277CBEA60];
    v30 = a6;
    v11 = a5;
    v12 = a4;
    v34 = [v10 arrayWithObjects:v37 count:1];
    v13 = *MEMORY[0x277CC2F30];
    v36[0] = *MEMORY[0x277CC2F28];
    v36[1] = v13;
    v14 = *MEMORY[0x277CC31A0];
    v36[2] = *MEMORY[0x277CC25B8];
    v36[3] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:4];
    v16 = *MEMORY[0x277CC2500];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@=1) && (%@=\"%@\", v9, *MEMORY[0x277CC2500], @"com.apple.mobileslideshow""];
    v18 = createNotEqualANDQueryPrefix(v12, v11, v15, v17, 0);

    v19 = *MEMORY[0x277CC2408];
    v35[0] = *MEMORY[0x277CC2760];
    v35[1] = v19;
    v35[2] = *MEMORY[0x277CC2428];
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:3];

    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@=1) && (%@=\"%@\", v9, v16, @"com.apple.MobileAddressBook"", *MEMORY[0x277CC2F18]];

    v22 = createNotEqualANDQueryPrefix(v12, 0, v20, v21, 0);

    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@=1) && ((%@!=\"%@\", v9, v16, @"com.apple.mobileslideshow", v16, @"com.apple.MobileAddressBook""];
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ || %@", v18, v23];
    if (v22)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ || %@)", v24, v22];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"(%@)", v24, v28];
    }
    v25 = ;
    LOBYTE(v29) = a7;
    BYTE1(v27) = a3;
    LOBYTE(v27) = 1;
    [(SPConcreteCoreSpotlightIndexer *)self reindexAttributes:v34 ofItemsMatchingQuery:v25 indexAttrName:@"kSPDerivedIsMeNot" withVersion:2 perItemCompletionAttribute:v9 completionValue:0 alwaysReindexWithCompletionAttribute:v27 force:0 postFilter:v30 group:v29 forceMerge:?];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)updateDerivedIsMeTextContentMatch:(BOOL)a3 nameTokens:(id)a4 alias:(id)a5 onlyIfNotAlready:(BOOL)a6 group:(id)a7 forceMerge:(BOOL)a8
{
  v28[1] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v8 = a6;
    HIDWORD(v25) = a8;
    v12 = *MEMORY[0x277CC2738];
    v28[0] = *MEMORY[0x277CC2738];
    v13 = MEMORY[0x277CBEA60];
    v14 = a7;
    v15 = a5;
    v16 = a4;
    v17 = [v13 arrayWithObjects:v28 count:1];
    v27 = *MEMORY[0x277CC31A0];
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
    v19 = *MEMORY[0x277CC2500];
    if (v8)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"((%@!=1) && (%@=\"%@\", v12, *MEMORY[0x277CC2500], @"com.apple.mobileslideshow""];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"(%@=\"%@\", *MEMORY[0x277CC2500], @"com.apple.mobileslideshow"", v24];
    }
    v20 = ;
    v21 = createEqualORQueryPrefix(v16, v15, v18, v20, 0);

    LOBYTE(v25) = BYTE4(v25);
    BYTE1(v23) = a3;
    LOBYTE(v23) = 1;
    [(SPConcreteCoreSpotlightIndexer *)self reindexAttributes:v17 ofItemsMatchingQuery:v21 indexAttrName:@"kSPDerivedIsMeTextContentMatch" withVersion:2 perItemCompletionAttribute:v12 completionValue:1 alwaysReindexWithCompletionAttribute:v23 force:0 postFilter:v14 group:v25 forceMerge:?];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)updateDerivedIsMeTextContentMatchNot:(BOOL)a3 nameTokens:(id)a4 alias:(id)a5 group:(id)a6 forceMerge:(BOOL)a7
{
  v28[1] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v28[0] = *MEMORY[0x277CC2738];
    v9 = v28[0];
    v10 = MEMORY[0x277CBEA60];
    v11 = a6;
    v12 = a5;
    v13 = a4;
    v23 = [v10 arrayWithObjects:v28 count:1];
    v27 = *MEMORY[0x277CC31A0];
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
    v15 = *MEMORY[0x277CC2500];
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@=1) && (%@=\"%@\", v9, *MEMORY[0x277CC2500], @"com.apple.mobileslideshow""];
    v17 = createNotEqualANDQueryPrefix(v13, v12, v14, v16, 0);

    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@=1) && (%@!=\"%@\", v9, v15, @"com.apple.mobileslideshow""];
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ || %@)", v17, v18];
    LOBYTE(v22) = a7;
    BYTE1(v21) = a3;
    LOBYTE(v21) = 1;
    [(SPConcreteCoreSpotlightIndexer *)self reindexAttributes:v23 ofItemsMatchingQuery:v19 indexAttrName:@"kSPDerivedIsMeTextContentMatchNot" withVersion:2 perItemCompletionAttribute:v9 completionValue:0 alwaysReindexWithCompletionAttribute:v21 force:0 postFilter:v11 group:v22 forceMerge:?];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)updateDerivedIsMeRankingSpan:(BOOL)a3 fullName:(id)a4 onlyIfNotAlready:(BOOL)a5 group:(id)a6 forceMerge:(BOOL)a7
{
  v27[1] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v8 = a5;
    v12 = *MEMORY[0x277CC2720];
    v27[0] = *MEMORY[0x277CC2720];
    v13 = MEMORY[0x277CBEA60];
    v14 = a6;
    v15 = a4;
    v16 = [v13 arrayWithObjects:v27 count:1];
    v17 = *MEMORY[0x277CC2F30];
    v26[0] = *MEMORY[0x277CC2F28];
    v26[1] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
    v19 = *MEMORY[0x277CC2500];
    if (v8)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"((%@!=1) && (%@=\"%@\", v12, *MEMORY[0x277CC2500], @"com.apple.mobileslideshow""];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"(%@=\"%@\", *MEMORY[0x277CC2500], @"com.apple.mobileslideshow"", v24];
    }
    v20 = ;
    v21 = createEqualORQueryForFullNamePrefix(v15, v18, v20, 0);

    LOBYTE(v25) = a7;
    BYTE1(v23) = a3;
    LOBYTE(v23) = 1;
    [(SPConcreteCoreSpotlightIndexer *)self reindexAttributes:v16 ofItemsMatchingQuery:v21 indexAttrName:@"kSPDerivedIsMeRankingSpan" withVersion:1 perItemCompletionAttribute:v12 completionValue:1 alwaysReindexWithCompletionAttribute:v23 force:0 postFilter:v14 group:v25 forceMerge:?];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)updateDerivedIsMeRankingSpanNot:(BOOL)a3 fullName:(id)a4 group:(id)a5 forceMerge:(BOOL)a6
{
  v23[1] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v23[0] = *MEMORY[0x277CC2720];
    v10 = v23[0];
    v11 = MEMORY[0x277CBEA60];
    v12 = a5;
    v13 = a4;
    v14 = [v11 arrayWithObjects:v23 count:1];
    v15 = *MEMORY[0x277CC2F30];
    v22[0] = *MEMORY[0x277CC2F28];
    v22[1] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@=1) && (%@=\"%@\", v10, *MEMORY[0x277CC2500], @"com.apple.mobileslideshow""];
    v18 = createNotEqualANDQueryForFullNamePrefix(v13, v16, v17, 0);

    LOBYTE(v21) = a6;
    BYTE1(v20) = a3;
    LOBYTE(v20) = 1;
    [(SPConcreteCoreSpotlightIndexer *)self reindexAttributes:v14 ofItemsMatchingQuery:v18 indexAttrName:@"kSPDerivedIsMeRankingSpanNot" withVersion:1 perItemCompletionAttribute:v10 completionValue:0 alwaysReindexWithCompletionAttribute:v20 force:0 postFilter:v12 group:v21 forceMerge:?];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)updateDerivedIsMeRankingToken:(BOOL)a3 nameTokens:(id)a4 onlyIfNotAlready:(BOOL)a5 group:(id)a6 forceMerge:(BOOL)a7
{
  v27[1] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v8 = a5;
    v12 = *MEMORY[0x277CC2730];
    v27[0] = *MEMORY[0x277CC2730];
    v13 = MEMORY[0x277CBEA60];
    v14 = a6;
    v15 = a4;
    v16 = [v13 arrayWithObjects:v27 count:1];
    v17 = *MEMORY[0x277CC2F30];
    v26[0] = *MEMORY[0x277CC2F28];
    v26[1] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
    v19 = *MEMORY[0x277CC2500];
    if (v8)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"((%@!=1) && (%@=\"%@\", v12, *MEMORY[0x277CC2500], @"com.apple.mobileslideshow""];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"(%@=\"%@\", *MEMORY[0x277CC2500], @"com.apple.mobileslideshow"", v24];
    }
    v20 = ;
    v21 = createEqualANDQueryForGivenNameTokens(0, v15, 0, v18, v20);

    LOBYTE(v25) = a7;
    BYTE1(v23) = a3;
    LOBYTE(v23) = 1;
    [(SPConcreteCoreSpotlightIndexer *)self reindexAttributes:v16 ofItemsMatchingQuery:v21 indexAttrName:@"kSPDerivedIsMeRankingToken" withVersion:1 perItemCompletionAttribute:v12 completionValue:1 alwaysReindexWithCompletionAttribute:v23 force:0 postFilter:v14 group:v25 forceMerge:?];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)updateDerivedIsMeRankingTokenNot:(BOOL)a3 nameTokens:(id)a4 group:(id)a5 forceMerge:(BOOL)a6
{
  v23[1] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v23[0] = *MEMORY[0x277CC2730];
    v10 = v23[0];
    v11 = MEMORY[0x277CBEA60];
    v12 = a5;
    v13 = a4;
    v14 = [v11 arrayWithObjects:v23 count:1];
    v15 = *MEMORY[0x277CC2F30];
    v22[0] = *MEMORY[0x277CC2F28];
    v22[1] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@=1) && (%@=\"%@\", v10, *MEMORY[0x277CC2500], @"com.apple.mobileslideshow""];
    v18 = createNotEqualORQueryForGivenNameTokens(0, v13, 0, v16, v17);

    LOBYTE(v21) = a6;
    BYTE1(v20) = a3;
    LOBYTE(v20) = 1;
    [(SPConcreteCoreSpotlightIndexer *)self reindexAttributes:v14 ofItemsMatchingQuery:v18 indexAttrName:@"kSPDerivedIsMeRankingTokenNot" withVersion:1 perItemCompletionAttribute:v10 completionValue:0 alwaysReindexWithCompletionAttribute:v20 force:0 postFilter:v12 group:v21 forceMerge:?];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)updateDerivedIsMeRankingOCR:(BOOL)a3 givenNameTokens:(id)a4 nonGivenNameTokens:(id)a5 alias:(id)a6 onlyIfNotAlready:(BOOL)a7 group:(id)a8 forceMerge:(BOOL)a9
{
  v31[1] = *MEMORY[0x277D85DE8];
  if (a4 | a5)
  {
    v9 = a7;
    v13 = *MEMORY[0x277CC2708];
    v31[0] = *MEMORY[0x277CC2708];
    v14 = MEMORY[0x277CBEA60];
    v15 = a8;
    v16 = a6;
    v17 = a5;
    v18 = a4;
    v19 = [v14 arrayWithObjects:v31 count:1];
    v30 = *MEMORY[0x277CC31A0];
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
    v21 = *MEMORY[0x277CC2500];
    if (v9)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"((%@!=1) && (%@=\"%@\", v13, *MEMORY[0x277CC2500], @"com.apple.mobileslideshow""];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"(%@=\"%@\", *MEMORY[0x277CC2500], @"com.apple.mobileslideshow"", v26];
    }
    v22 = ;
    v23 = createEqualANDQueryForGivenNameTokens(v18, v17, v16, v20, v22);

    LOBYTE(v27) = a9;
    BYTE1(v25) = a3;
    LOBYTE(v25) = 1;
    [(SPConcreteCoreSpotlightIndexer *)self reindexAttributes:v19 ofItemsMatchingQuery:v23 indexAttrName:@"kSPDerivedIsMeRankingOCR" withVersion:2 perItemCompletionAttribute:v13 completionValue:1 alwaysReindexWithCompletionAttribute:v25 force:0 postFilter:v15 group:v27 forceMerge:?];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)updateDerivedIsMeRankingOCRNot:(BOOL)a3 givenNameTokens:(id)a4 nonGivenNameTokens:(id)a5 alias:(id)a6 group:(id)a7 forceMerge:(BOOL)a8
{
  v28[1] = *MEMORY[0x277D85DE8];
  if (a4 | a5)
  {
    v28[0] = *MEMORY[0x277CC2708];
    v11 = v28[0];
    v12 = MEMORY[0x277CBEA60];
    v13 = a7;
    v14 = a6;
    v15 = a5;
    v16 = a4;
    v17 = [v12 arrayWithObjects:v28 count:1];
    v27 = *MEMORY[0x277CC31A0];
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@=1) && (%@=\"%@\", v11, *MEMORY[0x277CC2500], @"com.apple.mobileslideshow""];
    v20 = createNotEqualORQueryForGivenNameTokens(v16, v15, v14, v18, v19);

    LOBYTE(v23) = a8;
    BYTE1(v22) = a3;
    LOBYTE(v22) = 1;
    [(SPConcreteCoreSpotlightIndexer *)self reindexAttributes:v17 ofItemsMatchingQuery:v20 indexAttrName:@"kSPDerivedIsMeRankingOCRNot" withVersion:2 perItemCompletionAttribute:v11 completionValue:0 alwaysReindexWithCompletionAttribute:v22 force:0 postFilter:v13 group:v23 forceMerge:?];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)updateDerivedIsMeRankingOCRTextContentMatch:(BOOL)a3 givenNameTokens:(id)a4 nonGivenNameTokens:(id)a5 alias:(id)a6 onlyIfNotAlready:(BOOL)a7 group:(id)a8 forceMerge:(BOOL)a9
{
  v31[1] = *MEMORY[0x277D85DE8];
  if (a4 | a5)
  {
    v9 = a7;
    v13 = *MEMORY[0x277CC2710];
    v31[0] = *MEMORY[0x277CC2710];
    v14 = MEMORY[0x277CBEA60];
    v15 = a8;
    v16 = a6;
    v17 = a5;
    v18 = a4;
    v19 = [v14 arrayWithObjects:v31 count:1];
    v30 = *MEMORY[0x277CC31A0];
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
    v21 = *MEMORY[0x277CC2500];
    if (v9)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"((%@!=1) && (%@=\"%@\", v13, *MEMORY[0x277CC2500], @"com.apple.mobileslideshow""];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"(%@=\"%@\", *MEMORY[0x277CC2500], @"com.apple.mobileslideshow"", v26];
    }
    v22 = ;
    v23 = createEqualANDQueryForGivenNameTokens(v18, v17, v16, v20, v22);

    LOBYTE(v27) = a9;
    BYTE1(v25) = a3;
    LOBYTE(v25) = 1;
    [(SPConcreteCoreSpotlightIndexer *)self reindexAttributes:v19 ofItemsMatchingQuery:v23 indexAttrName:@"kSPDerivedIsMeRankingOCRTextContentMatch" withVersion:2 perItemCompletionAttribute:v13 completionValue:1 alwaysReindexWithCompletionAttribute:v25 force:0 postFilter:v15 group:v27 forceMerge:?];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)updateDerivedIsMeRankingOCRTextContentMatchNot:(BOOL)a3 givenNameTokens:(id)a4 nonGivenNameTokens:(id)a5 alias:(id)a6 group:(id)a7 forceMerge:(BOOL)a8
{
  v31[1] = *MEMORY[0x277D85DE8];
  if (a4 | a5)
  {
    v31[0] = *MEMORY[0x277CC2710];
    v11 = v31[0];
    v12 = MEMORY[0x277CBEA60];
    v26 = a7;
    v13 = a6;
    v14 = a5;
    v15 = a4;
    v25 = [v12 arrayWithObjects:v31 count:1];
    v30 = *MEMORY[0x277CC31A0];
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
    v17 = *MEMORY[0x277CC2500];
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@=1) && (%@=\"%@\", v11, *MEMORY[0x277CC2500], @"com.apple.mobileslideshow""];
    v19 = createNotEqualORQueryForGivenNameTokens(v15, v14, v13, v16, v18);

    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@=1) && (%@!=\"%@\", v11, v17, @"com.apple.mobileslideshow""];
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ || %@)", v19, v20];
    LOBYTE(v24) = a8;
    BYTE1(v23) = a3;
    LOBYTE(v23) = 1;
    [(SPConcreteCoreSpotlightIndexer *)self reindexAttributes:v25 ofItemsMatchingQuery:v21 indexAttrName:@"kSPDerivedIsMeRankingOCRTextContentMatchNot" withVersion:2 perItemCompletionAttribute:v11 completionValue:0 alwaysReindexWithCompletionAttribute:v23 force:0 postFilter:v26 group:v24 forceMerge:?];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)updateDerivedIsMeRankingPreExtraction:(BOOL)a3 givenNameTokens:(id)a4 nonGivenNameTokens:(id)a5 alias:(id)a6 onlyIfNotAlready:(BOOL)a7 group:(id)a8 forceMerge:(BOOL)a9
{
  v31[1] = *MEMORY[0x277D85DE8];
  if (a4 | a5)
  {
    v9 = a7;
    v13 = *MEMORY[0x277CC2718];
    v31[0] = *MEMORY[0x277CC2718];
    v14 = MEMORY[0x277CBEA60];
    v15 = a8;
    v16 = a6;
    v17 = a5;
    v18 = a4;
    v19 = [v14 arrayWithObjects:v31 count:1];
    v30 = *MEMORY[0x277CC25B8];
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
    v21 = *MEMORY[0x277CC2500];
    if (v9)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"((%@!=1) && (%@=\"%@\", v13, *MEMORY[0x277CC2500], @"com.apple.mobileslideshow""];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"(%@=\"%@\", *MEMORY[0x277CC2500], @"com.apple.mobileslideshow"", v26];
    }
    v22 = ;
    v23 = createEqualANDQueryForGivenNameTokens(v18, v17, v16, v20, v22);

    LOBYTE(v27) = a9;
    BYTE1(v25) = a3;
    LOBYTE(v25) = 1;
    [(SPConcreteCoreSpotlightIndexer *)self reindexAttributes:v19 ofItemsMatchingQuery:v23 indexAttrName:@"kSPDerivedIsMeRankingPreExtraction" withVersion:1 perItemCompletionAttribute:v13 completionValue:1 alwaysReindexWithCompletionAttribute:v25 force:0 postFilter:v15 group:v27 forceMerge:?];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)updateDerivedIsMeRankingPreExtractionNot:(BOOL)a3 givenNameTokens:(id)a4 nonGivenNameTokens:(id)a5 alias:(id)a6 group:(id)a7 forceMerge:(BOOL)a8
{
  v27[1] = *MEMORY[0x277D85DE8];
  if (a4 | a5)
  {
    v27[0] = *MEMORY[0x277CC2718];
    v12 = v27[0];
    v13 = MEMORY[0x277CBEA60];
    HIDWORD(v24) = a8;
    v14 = a7;
    v15 = a6;
    v16 = a5;
    v17 = a4;
    v18 = [v13 arrayWithObjects:v27 count:1];
    v26 = *MEMORY[0x277CC25B8];
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@=1) && (%@=\"%@\", v12, *MEMORY[0x277CC2500], @"com.apple.mobileslideshow""];
    v21 = createNotEqualORQueryForGivenNameTokens(v17, v16, v15, v19, v20);

    LOBYTE(v24) = BYTE4(v24);
    BYTE1(v23) = a3;
    LOBYTE(v23) = 1;
    [(SPConcreteCoreSpotlightIndexer *)self reindexAttributes:v18 ofItemsMatchingQuery:v21 indexAttrName:@"kSPDerivedIsMeRankingPreExtractionNot" withVersion:1 perItemCompletionAttribute:v12 completionValue:0 alwaysReindexWithCompletionAttribute:v23 force:0 postFilter:v14 group:v24 forceMerge:?];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)updateDerivedIsMeRanking:(BOOL)a3 nameTokens:(id)a4 onlyIfNotAlready:(BOOL)a5 group:(id)a6 forceMerge:(BOOL)a7
{
  v8 = a5;
  v35[1] = *MEMORY[0x277D85DE8];
  v12 = a6;
  if (a4)
  {
    v13 = *MEMORY[0x277CC2700];
    v35[0] = *MEMORY[0x277CC2700];
    v14 = MEMORY[0x277CBEA60];
    v15 = a4;
    v16 = [v14 arrayWithObjects:v35 count:1];
    v17 = *MEMORY[0x277CC3140];
    v34[0] = *MEMORY[0x277CC2980];
    v34[1] = v17;
    v18 = *MEMORY[0x277CC31A0];
    v34[2] = *MEMORY[0x277CC31F0];
    v34[3] = v18;
    v19 = *MEMORY[0x277CC2760];
    v34[4] = *MEMORY[0x277CC27D8];
    v34[5] = v19;
    v20 = *MEMORY[0x277CC2E50];
    v34[6] = *MEMORY[0x277CC2408];
    v34[7] = v20;
    v21 = *MEMORY[0x277CC2B58];
    v34[8] = *MEMORY[0x277CC2D00];
    v34[9] = v21;
    v22 = *MEMORY[0x277CC2750];
    v34[10] = *MEMORY[0x277CC2B30];
    v34[11] = v22;
    v23 = *MEMORY[0x277CC25D8];
    v34[12] = @"_ICItemDisplayName";
    v34[13] = v23;
    v24 = *MEMORY[0x277CC2428];
    v34[14] = *MEMORY[0x277CC26C0];
    v34[15] = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:16];
    if (v8)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"((%@!=1) && (%@!=*))", v13, *MEMORY[0x277CC2F18]];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"(%@!=*)", *MEMORY[0x277CC2F18], v31];
    }
    v26 = ;
    v27 = createEqualORQueryPrefix(v15, 0, v25, v26, 0);

    if (v27)
    {
      v33 = v13;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
      LOBYTE(v32) = a7;
      BYTE1(v30) = a3;
      LOBYTE(v30) = 1;
      [(SPConcreteCoreSpotlightIndexer *)self reindexAttributes:v16 ofItemsMatchingQuery:v27 indexAttrName:@"kSPDerivedIsMeRanking" withVersion:0 perItemCompletionAttributeArray:v28 completionValueArray:&unk_2846C91A0 alwaysReindexWithCompletionAttribute:v30 force:0 postFilter:v12 group:v32 forceMerge:?];
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)updateDerivedIsMeRankingNot:(BOOL)a3 nameTokens:(id)a4 group:(id)a5 forceMerge:(BOOL)a6
{
  v38[1] = *MEMORY[0x277D85DE8];
  v10 = a5;
  if (a4)
  {
    v34 = a6;
    v35 = self;
    v38[0] = *MEMORY[0x277CC2700];
    v11 = v38[0];
    v12 = MEMORY[0x277CBEA60];
    v13 = a4;
    v14 = [v12 arrayWithObjects:v38 count:1];
    v15 = *MEMORY[0x277CC3140];
    v37[0] = *MEMORY[0x277CC2980];
    v37[1] = v15;
    v16 = *MEMORY[0x277CC31A0];
    v37[2] = *MEMORY[0x277CC31F0];
    v37[3] = v16;
    v17 = *MEMORY[0x277CC2760];
    v37[4] = *MEMORY[0x277CC27D8];
    v37[5] = v17;
    v18 = *MEMORY[0x277CC2E50];
    v37[6] = *MEMORY[0x277CC2408];
    v37[7] = v18;
    v19 = *MEMORY[0x277CC2B58];
    v37[8] = *MEMORY[0x277CC2D00];
    v37[9] = v19;
    v20 = *MEMORY[0x277CC2750];
    v37[10] = *MEMORY[0x277CC2B30];
    v37[11] = v20;
    v21 = *MEMORY[0x277CC25D8];
    v37[12] = @"_ICItemDisplayName";
    v37[13] = v21;
    v22 = *MEMORY[0x277CC2428];
    v37[14] = *MEMORY[0x277CC26C0];
    v37[15] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:16];
    v24 = *MEMORY[0x277CC2F18];
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@=1) && (%@!=*))", v11, *MEMORY[0x277CC2F18]];
    v26 = createNotEqualANDQueryPrefix(v13, 0, v23, v25, 0);

    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@=1) && (%@=*))", v11, v24];
    if (v27)
    {
      if (v26)
      {
        v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ || %@)", v27, v26];
        if (v28)
        {
          v29 = v28;
          v36 = v11;
          v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
          LOBYTE(v33) = v34;
          BYTE1(v32) = a3;
          LOBYTE(v32) = 1;
          [(SPConcreteCoreSpotlightIndexer *)v35 reindexAttributes:v14 ofItemsMatchingQuery:v29 indexAttrName:@"kSPDerivedIsMeRankingNot" withVersion:0 perItemCompletionAttributeArray:v30 completionValueArray:&unk_2846C91B8 alwaysReindexWithCompletionAttribute:v32 force:0 postFilter:v10 group:v33 forceMerge:?];
        }
      }
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)updateDerivedIsMeRankingTextContentMatch:(BOOL)a3 nameTokens:(id)a4 onlyIfNotAlready:(BOOL)a5 group:(id)a6 forceMerge:(BOOL)a7
{
  v8 = a5;
  v27[1] = *MEMORY[0x277D85DE8];
  v12 = a6;
  if (a4)
  {
    v13 = *MEMORY[0x277CC2728];
    v27[0] = *MEMORY[0x277CC2728];
    v14 = MEMORY[0x277CBEA60];
    v15 = a4;
    v16 = [v14 arrayWithObjects:v27 count:1];
    v26 = *MEMORY[0x277CC31A0];
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
    if (v8)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"((%@!=1) && (%@!=*))", v13, *MEMORY[0x277CC2F18]];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"(%@!=*)", *MEMORY[0x277CC2F18], v23];
    }
    v18 = ;
    v19 = createEqualORQueryPrefix(v15, 0, v17, v18, 0);

    if (v19)
    {
      v25 = v13;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
      LOBYTE(v24) = a7;
      BYTE1(v22) = a3;
      LOBYTE(v22) = 1;
      [(SPConcreteCoreSpotlightIndexer *)self reindexAttributes:v16 ofItemsMatchingQuery:v19 indexAttrName:@"kSPDerivedIsMeRankingTextContentMatch" withVersion:0 perItemCompletionAttributeArray:v20 completionValueArray:&unk_2846C91D0 alwaysReindexWithCompletionAttribute:v22 force:0 postFilter:v12 group:v24 forceMerge:?];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)updateDerivedIsMeRankingTextContentMatchNot:(BOOL)a3 nameTokens:(id)a4 group:(id)a5 forceMerge:(BOOL)a6
{
  v32[1] = *MEMORY[0x277D85DE8];
  v10 = a5;
  if (a4)
  {
    v28 = a3;
    v29 = self;
    v32[0] = *MEMORY[0x277CC2728];
    v11 = v32[0];
    v12 = MEMORY[0x277CBEA60];
    v13 = a4;
    v14 = [v12 arrayWithObjects:v32 count:1];
    v31 = *MEMORY[0x277CC31A0];
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
    v16 = *MEMORY[0x277CC2F18];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@=1) && (%@!=*))", v11, *MEMORY[0x277CC2F18]];
    v18 = createNotEqualANDQueryPrefix(v13, 0, v15, v17, 0);

    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@=1) && (%@=*))", v11, v16];
    v20 = v19;
    if (v18 && v19)
    {
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ || %@)", v18, v19];
      v22 = v18;
    }

    else
    {
      v23 = v18;
      if (!v18)
      {
LABEL_7:

        goto LABEL_8;
      }
    }

    v30 = v11;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
    LOBYTE(v27) = a6;
    BYTE1(v26) = v28;
    LOBYTE(v26) = 1;
    [(SPConcreteCoreSpotlightIndexer *)v29 reindexAttributes:v14 ofItemsMatchingQuery:v18 indexAttrName:@"kSPDerivedIsMeRankingTextContentMatchNot" withVersion:0 perItemCompletionAttributeArray:v24 completionValueArray:&unk_2846C91E8 alwaysReindexWithCompletionAttribute:v26 force:0 postFilter:v10 group:v27 forceMerge:?];

    goto LABEL_7;
  }

LABEL_8:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)updateDerivedIsMeRankingTextContentMatchNot2:(BOOL)a3 nameTokens:(id)a4 group:(id)a5 forceMerge:(BOOL)a6
{
  v32[1] = *MEMORY[0x277D85DE8];
  v10 = a5;
  if (a4)
  {
    v28 = a3;
    v29 = self;
    v32[0] = *MEMORY[0x277CC2728];
    v11 = v32[0];
    v12 = MEMORY[0x277CBEA60];
    v13 = a4;
    v14 = [v12 arrayWithObjects:v32 count:1];
    v31 = *MEMORY[0x277CC31A0];
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
    v16 = *MEMORY[0x277CC2F18];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@=1) && (%@!=*))", v11, *MEMORY[0x277CC2F18]];
    v18 = createNotEqualANDQueryPrefix(v13, 0, v15, v17, 0);

    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@=1) && (%@=*))", v11, v16];
    v20 = v19;
    if (v18 && v19)
    {
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ || %@)", v18, v19];
      v22 = v20;
    }

    else
    {
      v23 = v19;
      if (!v20)
      {
LABEL_7:

        goto LABEL_8;
      }
    }

    v30 = v11;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
    LOBYTE(v27) = a6;
    BYTE1(v26) = v28;
    LOBYTE(v26) = 1;
    [(SPConcreteCoreSpotlightIndexer *)v29 reindexAttributes:v14 ofItemsMatchingQuery:v20 indexAttrName:@"kSPDerivedIsMeRankingTextContentMatchNot2" withVersion:0 perItemCompletionAttributeArray:v24 completionValueArray:&unk_2846C9200 alwaysReindexWithCompletionAttribute:v26 force:0 postFilter:v10 group:v27 forceMerge:?];

    goto LABEL_7;
  }

LABEL_8:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)updateDerivedIsFromMe:(BOOL)a3 fullName:(id)a4 emails:(id)a5 onlyIfNotAlready:(BOOL)a6 group:(id)a7 forceMerge:(BOOL)a8
{
  v10 = a6;
  v46[1] = *MEMORY[0x277D85DE8];
  v14 = a4;
  v15 = a5;
  v16 = a7;
  if (v14 | v15)
  {
    v37 = self;
    v17 = *MEMORY[0x277CC26E8];
    v46[0] = *MEMORY[0x277CC26E8];
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:1];
    v18 = *MEMORY[0x277CC3288];
    v45[0] = *MEMORY[0x277CC24E0];
    v45[1] = v18;
    v45[2] = *MEMORY[0x277CC3260];
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:3];
    v44 = *MEMORY[0x277CC24B0];
    v20 = v44;
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
    v21 = *MEMORY[0x277CC24C8];
    v43[0] = v20;
    v43[1] = v21;
    v22 = *MEMORY[0x277CC3268];
    v43[2] = *MEMORY[0x277CC3290];
    v43[3] = v22;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:4];
    if (v10)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"((%@!=1) && (%@!=*))", v17, *MEMORY[0x277CC2F18]];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"(%@!=*)", *MEMORY[0x277CC2F18], v34];
    }
    v23 = ;
    v24 = v23;
    v36 = a8;
    v25 = 0;
    v26 = 0;
    if (v14 && v23)
    {
      v25 = createEqualORQueryForFullNamePrefix(v14, v19, v23, 0);
      v26 = createEqualORQueryForFullNamePrefix(v14, v41, v24, 1);
    }

    v38 = v19;
    v27 = a3;
    if (v15 && v24)
    {
      v28 = createEqualORQueryPrefix(v15, 0, v40, v24, 1);
      v29 = v28;
      if (!v25 || !v26)
      {
        goto LABEL_19;
      }

      if (v28)
      {
        v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ || %@ || %@)", v25, v26, v28];
        if (!v30)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }

    else
    {
      v29 = 0;
      if (!v25 || !v26)
      {
        goto LABEL_19;
      }
    }

    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ || %@)", v25, v26];
    v29 = 0;
    if (!v30)
    {
LABEL_19:

      goto LABEL_20;
    }

LABEL_18:
    v42 = v17;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
    LOBYTE(v35) = v36;
    BYTE1(v33) = v27;
    LOBYTE(v33) = 1;
    [(SPConcreteCoreSpotlightIndexer *)v37 reindexAttributes:v39 ofItemsMatchingQuery:v30 indexAttrName:@"kSPDerivedIsFromMe" withVersion:0 perItemCompletionAttributeArray:v31 completionValueArray:&unk_2846C9218 alwaysReindexWithCompletionAttribute:v33 force:0 postFilter:v16 group:v35 forceMerge:?];

    goto LABEL_19;
  }

LABEL_20:

  v32 = *MEMORY[0x277D85DE8];
}

- (void)updateDerivedIsFromMeNot:(BOOL)a3 fullName:(id)a4 emails:(id)a5 group:(id)a6 forceMerge:(BOOL)a7
{
  v43[1] = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v12 | v13)
  {
    v32 = a7;
    v33 = a3;
    v34 = self;
    v43[0] = *MEMORY[0x277CC26E8];
    v15 = v43[0];
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:1];
    v16 = *MEMORY[0x277CC3288];
    v42[0] = *MEMORY[0x277CC24E0];
    v42[1] = v16;
    v42[2] = *MEMORY[0x277CC3260];
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:3];
    v41 = *MEMORY[0x277CC24B0];
    v18 = v41;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
    v19 = *MEMORY[0x277CC24C8];
    v40[0] = v18;
    v40[1] = v19;
    v20 = *MEMORY[0x277CC3268];
    v40[2] = *MEMORY[0x277CC3290];
    v40[3] = v20;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:4];
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@=1) && (%@!=*))", v15, *MEMORY[0x277CC2F18]];
    v22 = v21;
    v23 = 0;
    v24 = 0;
    if (v12 && v21)
    {
      v23 = createNotEqualANDQueryForFullNamePrefix(v12, v17, v21, 0);
      v24 = createNotEqualANDQueryForFullNamePrefix(v12, v38, v22, 1);
    }

    v35 = v17;
    if (v13 && v22)
    {
      v25 = createNotEqualANDQueryPrefix(v13, 0, v37, v22, 1);
      v26 = v25;
      if (!v23 || !v24)
      {
        goto LABEL_16;
      }

      if (v25)
      {
        v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ && %@ && %@)", v23, v24, v25];
        if (!v27)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v26 = 0;
      if (!v23 || !v24)
      {
        goto LABEL_16;
      }
    }

    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ && %@)", v23, v24];
    v26 = 0;
    if (!v27)
    {
LABEL_16:

      goto LABEL_17;
    }

LABEL_15:
    v39 = v15;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
    LOBYTE(v31) = v32;
    BYTE1(v30) = v33;
    LOBYTE(v30) = 1;
    [(SPConcreteCoreSpotlightIndexer *)v34 reindexAttributes:v36 ofItemsMatchingQuery:v27 indexAttrName:@"kSPDerivedIsFromMeNot" withVersion:0 perItemCompletionAttributeArray:v28 completionValueArray:&unk_2846C9230 alwaysReindexWithCompletionAttribute:v30 force:0 postFilter:v14 group:v31 forceMerge:?];

    goto LABEL_16;
  }

LABEL_17:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)updateDerivedIsFromMeRanking:(BOOL)a3 nameTokens:(id)a4 onlyIfNotAlready:(BOOL)a5 group:(id)a6 forceMerge:(BOOL)a7
{
  v9 = a5;
  v32[1] = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a6;
  if (v12)
  {
    v14 = *MEMORY[0x277CC26F0];
    v32[0] = *MEMORY[0x277CC26F0];
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
    v16 = *MEMORY[0x277CC24B0];
    v31[0] = *MEMORY[0x277CC24E0];
    v31[1] = v16;
    v17 = *MEMORY[0x277CC3260];
    v31[2] = *MEMORY[0x277CC24C8];
    v31[3] = v17;
    v18 = *MEMORY[0x277CC3288];
    v31[4] = *MEMORY[0x277CC3268];
    v31[5] = v18;
    v19 = *MEMORY[0x277CC2E50];
    v31[6] = *MEMORY[0x277CC3290];
    v31[7] = v19;
    v20 = *MEMORY[0x277CC2408];
    v31[8] = *MEMORY[0x277CC2D00];
    v31[9] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:10];
    if (v9)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"(((%@!=*) || (%@=0)) && (%@!=*))", v14, v14, *MEMORY[0x277CC2F18]];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"(%@!=*)", *MEMORY[0x277CC2F18], v28, v29];
    }
    v22 = ;
    if (v22)
    {
      v23 = createEqualORQueryPrefix(v12, 0, v21, v22, 0);
      if (v23)
      {
        v24 = v23;
        v25 = v21;

        LOBYTE(v30) = a7;
        BYTE1(v27) = a3;
        LOBYTE(v27) = 1;
        [(SPConcreteCoreSpotlightIndexer *)self reindexAttributes:v25 ofItemsMatchingQuery:v24 indexAttrName:@"kSPDerivedIsFromMeRanking" withVersion:0 perItemCompletionAttribute:0 completionValue:0 alwaysReindexWithCompletionAttribute:v27 force:0 postFilter:v13 group:v30 forceMerge:?];

        v15 = v25;
      }
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)updateDerivedIsFromMeRankingNot:(BOOL)a3 nameTokens:(id)a4 group:(id)a5 forceMerge:(BOOL)a6
{
  v27[1] = *MEMORY[0x277D85DE8];
  v10 = a5;
  if (a4)
  {
    v27[0] = *MEMORY[0x277CC26F0];
    v11 = v27[0];
    v12 = MEMORY[0x277CBEA60];
    v13 = a4;
    v14 = [v12 arrayWithObjects:v27 count:1];
    v15 = *MEMORY[0x277CC24B0];
    v26[0] = *MEMORY[0x277CC24E0];
    v26[1] = v15;
    v16 = *MEMORY[0x277CC3260];
    v26[2] = *MEMORY[0x277CC24C8];
    v26[3] = v16;
    v17 = *MEMORY[0x277CC3288];
    v26[4] = *MEMORY[0x277CC3268];
    v26[5] = v17;
    v18 = *MEMORY[0x277CC2E50];
    v26[6] = *MEMORY[0x277CC3290];
    v26[7] = v18;
    v19 = *MEMORY[0x277CC2408];
    v26[8] = *MEMORY[0x277CC2D00];
    v26[9] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:10];
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@>0) && (%@!=*))", v11, *MEMORY[0x277CC2F18]];
    v22 = createNotEqualANDQueryPrefix(v13, 0, v20, v21, 0);

    if (v22)
    {
      LOBYTE(v25) = a6;
      BYTE1(v24) = a3;
      LOBYTE(v24) = 1;
      [(SPConcreteCoreSpotlightIndexer *)self reindexAttributes:v14 ofItemsMatchingQuery:v22 indexAttrName:@"kSPDerivedIsFromMeRanking" withVersion:0 perItemCompletionAttribute:v11 completionValue:1 alwaysReindexWithCompletionAttribute:v24 force:0 postFilter:v10 group:v25 forceMerge:?];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)updateDerivedIsToMe:(BOOL)a3 fullName:(id)a4 emails:(id)a5 onlyIfNotAlready:(BOOL)a6 group:(id)a7 forceMerge:(BOOL)a8
{
  v8 = a8;
  v10 = a6;
  v46[1] = *MEMORY[0x277D85DE8];
  v14 = a4;
  v15 = a5;
  v16 = a7;
  if (v14 | v15)
  {
    v37 = self;
    v17 = *MEMORY[0x277CC2740];
    v46[0] = *MEMORY[0x277CC2740];
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:1];
    v18 = *MEMORY[0x277CC2FC0];
    v45[0] = *MEMORY[0x277CC3028];
    v45[1] = v18;
    v19 = *MEMORY[0x277CC3250];
    v45[2] = *MEMORY[0x277CC3278];
    v45[3] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:4];
    v44 = *MEMORY[0x277CC3010];
    v21 = v44;
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
    v22 = *MEMORY[0x277CC3020];
    v43[0] = v21;
    v43[1] = v22;
    v23 = *MEMORY[0x277CC3258];
    v43[2] = *MEMORY[0x277CC3280];
    v43[3] = v23;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:4];
    if (v10)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"((%@!=1) && (%@!=*))", v17, *MEMORY[0x277CC2F18]];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"(%@!=*)", *MEMORY[0x277CC2F18], v35];
    }
    v24 = ;
    v25 = v24;
    HIDWORD(v36) = v8;
    v26 = 0;
    v27 = 0;
    if (v14 && v24)
    {
      v26 = createEqualORQueryForFullNamePrefix(v14, v20, v24, 0);
      v27 = createEqualORQueryForFullNamePrefix(v14, v41, v25, 1);
    }

    v38 = v20;
    v28 = a3;
    if (v15 && v25)
    {
      v29 = createEqualORQueryPrefix(v15, 0, v40, v25, 1);
      v30 = v29;
      if (!v26 || !v27)
      {
        goto LABEL_19;
      }

      if (v29)
      {
        v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ || %@ || %@)", v26, v27, v29];
        if (!v31)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }

    else
    {
      v30 = 0;
      if (!v26 || !v27)
      {
        goto LABEL_19;
      }
    }

    v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ || %@)", v26, v27];
    v30 = 0;
    if (!v31)
    {
LABEL_19:

      goto LABEL_20;
    }

LABEL_18:
    v42 = v17;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
    LOBYTE(v36) = BYTE4(v36);
    BYTE1(v34) = v28;
    LOBYTE(v34) = 1;
    [(SPConcreteCoreSpotlightIndexer *)v37 reindexAttributes:v39 ofItemsMatchingQuery:v31 indexAttrName:@"kSPDerivedIsToMe" withVersion:0 perItemCompletionAttributeArray:v32 completionValueArray:&unk_2846C9248 alwaysReindexWithCompletionAttribute:v34 force:0 postFilter:v16 group:v36 forceMerge:?];

    goto LABEL_19;
  }

LABEL_20:

  v33 = *MEMORY[0x277D85DE8];
}

- (void)updateDerivedIsToMeNot:(BOOL)a3 fullName:(id)a4 emails:(id)a5 group:(id)a6 forceMerge:(BOOL)a7
{
  v44[1] = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v12 | v13)
  {
    v33 = a7;
    v34 = a3;
    v35 = self;
    v44[0] = *MEMORY[0x277CC2740];
    v15 = v44[0];
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:1];
    v16 = *MEMORY[0x277CC2FC0];
    v43[0] = *MEMORY[0x277CC3028];
    v43[1] = v16;
    v17 = *MEMORY[0x277CC3250];
    v43[2] = *MEMORY[0x277CC3278];
    v43[3] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:4];
    v42 = *MEMORY[0x277CC3010];
    v19 = v42;
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
    v20 = *MEMORY[0x277CC3020];
    v41[0] = v19;
    v41[1] = v20;
    v21 = *MEMORY[0x277CC3258];
    v41[2] = *MEMORY[0x277CC3280];
    v41[3] = v21;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:4];
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@=1) && (%@!=*))", v15, *MEMORY[0x277CC2F18]];
    v23 = v22;
    v24 = 0;
    v25 = 0;
    if (v12 && v22)
    {
      v24 = createNotEqualANDQueryForFullNamePrefix(v12, v18, v22, 0);
      v25 = createNotEqualANDQueryForFullNamePrefix(v12, v39, v23, 1);
    }

    v36 = v18;
    if (v13 && v23)
    {
      v26 = createNotEqualANDQueryPrefix(v13, 0, v38, v23, 1);
      v27 = v26;
      if (!v24 || !v25)
      {
        goto LABEL_16;
      }

      if (v26)
      {
        v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ && %@ && %@)", v24, v25, v26];
        if (!v28)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v27 = 0;
      if (!v24 || !v25)
      {
        goto LABEL_16;
      }
    }

    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ && %@)", v24, v25];
    v27 = 0;
    if (!v28)
    {
LABEL_16:

      goto LABEL_17;
    }

LABEL_15:
    v40 = v15;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
    LOBYTE(v32) = v33;
    BYTE1(v31) = v34;
    LOBYTE(v31) = 1;
    [(SPConcreteCoreSpotlightIndexer *)v35 reindexAttributes:v37 ofItemsMatchingQuery:v28 indexAttrName:@"kSPDerivedIsToMeNot" withVersion:0 perItemCompletionAttributeArray:v29 completionValueArray:&unk_2846C9260 alwaysReindexWithCompletionAttribute:v31 force:0 postFilter:v14 group:v32 forceMerge:?];

    goto LABEL_16;
  }

LABEL_17:

  v30 = *MEMORY[0x277D85DE8];
}

- (void)updateDerivedIsToMeRanking:(BOOL)a3 nameTokens:(id)a4 onlyIfNotAlready:(BOOL)a5 group:(id)a6 forceMerge:(BOOL)a7
{
  v9 = a5;
  v33[1] = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a6;
  if (v12)
  {
    v14 = *MEMORY[0x277CC2748];
    v33[0] = *MEMORY[0x277CC2748];
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
    v16 = *MEMORY[0x277CC2FC0];
    v32[0] = *MEMORY[0x277CC3028];
    v32[1] = v16;
    v17 = *MEMORY[0x277CC3020];
    v32[2] = *MEMORY[0x277CC3010];
    v32[3] = v17;
    v18 = *MEMORY[0x277CC23D0];
    v32[4] = *MEMORY[0x277CC2FA8];
    v32[5] = v18;
    v19 = *MEMORY[0x277CC3258];
    v32[6] = *MEMORY[0x277CC3250];
    v32[7] = v19;
    v20 = *MEMORY[0x277CC3280];
    v32[8] = *MEMORY[0x277CC3278];
    v32[9] = v20;
    v21 = *MEMORY[0x277CC2D00];
    v32[10] = *MEMORY[0x277CC2E50];
    v32[11] = v21;
    v32[12] = *MEMORY[0x277CC2408];
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:13];
    if (v9)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"(((%@!=*) || (%@==0)) && (%@!=*))", v14, v14, *MEMORY[0x277CC2F18]];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"(%@!=*)", *MEMORY[0x277CC2F18], v29, v30];
    }
    v23 = ;
    if (v23)
    {
      v24 = createEqualORQueryPrefix(v12, 0, v22, v23, 0);
      if (v24)
      {
        v25 = v24;
        v26 = v22;

        LOBYTE(v31) = a7;
        BYTE1(v28) = a3;
        LOBYTE(v28) = 1;
        [(SPConcreteCoreSpotlightIndexer *)self reindexAttributes:v26 ofItemsMatchingQuery:v25 indexAttrName:@"kSPDerivedIsToMeRanking" withVersion:0 perItemCompletionAttribute:0 completionValue:0 alwaysReindexWithCompletionAttribute:v28 force:0 postFilter:v13 group:v31 forceMerge:?];

        v15 = v26;
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)updateDerivedIsToMeRankingNot:(BOOL)a3 nameTokens:(id)a4 group:(id)a5 forceMerge:(BOOL)a6
{
  v28[1] = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  if (v10)
  {
    v28[0] = *MEMORY[0x277CC2748];
    v12 = v28[0];
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
    v14 = *MEMORY[0x277CC2FC0];
    v27[0] = *MEMORY[0x277CC3028];
    v27[1] = v14;
    v15 = *MEMORY[0x277CC3020];
    v27[2] = *MEMORY[0x277CC3010];
    v27[3] = v15;
    v16 = *MEMORY[0x277CC23D0];
    v27[4] = *MEMORY[0x277CC2FA8];
    v27[5] = v16;
    v17 = *MEMORY[0x277CC3258];
    v27[6] = *MEMORY[0x277CC3250];
    v27[7] = v17;
    v18 = *MEMORY[0x277CC3280];
    v27[8] = *MEMORY[0x277CC3278];
    v27[9] = v18;
    v19 = *MEMORY[0x277CC2D00];
    v27[10] = *MEMORY[0x277CC2E50];
    v27[11] = v19;
    v27[12] = *MEMORY[0x277CC2408];
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:13];
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@>0) && (%@!=*))", v12, *MEMORY[0x277CC2F18]];
    if (v21)
    {
      v22 = createNotEqualANDQueryPrefix(v10, 0, v20, v21, 0);
      if (v22)
      {
        v23 = v22;
        LOBYTE(v26) = a6;
        BYTE1(v25) = a3;
        LOBYTE(v25) = 1;
        [(SPConcreteCoreSpotlightIndexer *)self reindexAttributes:v13 ofItemsMatchingQuery:v22 indexAttrName:@"kSPDerivedIsToMeRankingNot" withVersion:0 perItemCompletionAttribute:v12 completionValue:1 alwaysReindexWithCompletionAttribute:v25 force:0 postFilter:v11 group:v26 forceMerge:?];
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)dumpAllRankingDiagnosticInformationForQuery:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SPConcreteCoreSpotlightIndexer *)self index];
  if (v8)
  {
    v9 = v8;
    v10 = [MEMORY[0x277CBEB18] array];
    [v10 addObject:@"_kMDItemSDBInfo"];
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x2020000000;
    v26 = -1;
    v11 = NSHomeDirectory();
    v12 = [v11 stringByAppendingString:@"/Library/Logs/CrashReporter/DiagnosticLogs/Search/Ranking/Spotlight_Ranking_Diagnostic_Dump_AllResults.log"];

    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __100__SPConcreteCoreSpotlightIndexer_dumpAllRankingDiagnosticInformationForQuery_withCompletionHandler___block_invoke;
    v19 = &unk_278934780;
    v20 = self;
    v23 = v25;
    v24 = v9;
    v13 = v12;
    v21 = v13;
    v22 = v7;
    v14 = MEMORY[0x2383760E0](&v16);
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"**=%@*cdwt", v6, v16, v17, v18, v19, v20];
    [(SPConcreteCoreSpotlightIndexer *)self _startInternalQueryWithIndex:v9 query:v15 fetchAttributes:v10 resultsHandler:v14];

    _Block_object_dispose(v25, 8);
  }
}

void __100__SPConcreteCoreSpotlightIndexer_dumpAllRankingDiagnosticInformationForQuery_withCompletionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  __buf[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a3 == 1)
  {
    v9 = *(*(*(a1 + 56) + 8) + 24);
    if (v9 != -1)
    {
      close(v9);
      *(*(*(a1 + 56) + 8) + 24) = -1;
    }

    (*(*(a1 + 48) + 16))();
  }

  else if (!a3 && [*(a1 + 32) index] == *(a1 + 64))
  {
    if (*(*(*(a1 + 56) + 8) + 24) != -1 || (*(*(*(a1 + 56) + 8) + 24) = open([*(a1 + 40) UTF8String], 1537, 438), *(*(*(a1 + 56) + 8) + 24) != -1))
    {
      ByteVectorCount = _MDPlistBytesGetByteVectorCount();
      v7 = *(*(*(a1 + 56) + 8) + 24);
      ByteVector = _MDPlistBytesGetByteVector();
      write(v7, ByteVector, ByteVectorCount);
      if ((ByteVectorCount & 7) != 0)
      {
        __buf[0] = 0;
        write(*(*(*(a1 + 56) + 8) + 24), __buf, ByteVectorCount);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)performQueryForCountOfItemsInCategory:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  index = self->_index;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __83__SPConcreteCoreSpotlightIndexer_performQueryForCountOfItemsInCategory_completion___block_invoke;
  v11[3] = &unk_2789347D0;
  v12 = v6;
  v13 = v7;
  v11[4] = self;
  v9 = v6;
  v10 = v7;
  SIBackgroundOpBlock(index, 9, v11);
}

void __83__SPConcreteCoreSpotlightIndexer_performQueryForCountOfItemsInCategory_completion___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v4 = a2;
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x2020000000;
    v16[3] = 0;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __83__SPConcreteCoreSpotlightIndexer_performQueryForCountOfItemsInCategory_completion___block_invoke_2;
    v12[3] = &unk_2789347A8;
    v5 = *(a1 + 32);
    v14 = v16;
    v15 = a2;
    v12[4] = v5;
    v13 = *(a1 + 48);
    v6 = MEMORY[0x2383760E0](v12);
    v7 = *MEMORY[0x277CC2500];
    v8 = *(a1 + 32);
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"#%@=%@", *MEMORY[0x277CC2500], *(a1 + 40)];
    LOBYTE(v4) = [v8 _startInternalQueryWithIndex:v4 query:v9 fetchAttributes:MEMORY[0x277CBEBF8] resultsHandler:v6];

    if ((v4 & 1) == 0)
    {
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1 userInfo:0];
      (*(*(a1 + 48) + 16))();
    }

    _Block_object_dispose(v16, 8);
  }
}

void __83__SPConcreteCoreSpotlightIndexer_performQueryForCountOfItemsInCategory_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (a3 == 1)
  {
    v11 = v7;
    v9 = *(*(*(a1 + 48) + 8) + 24);
    (*(*(a1 + 40) + 16))();
    v7 = v11;
  }

  else if (a3 == 5)
  {
    v10 = v7;
    v8 = [*(a1 + 32) index] == *(a1 + 56);
    v7 = v10;
    if (v8)
    {
      *(*(*(a1 + 48) + 8) + 24) += a4;
    }
  }
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v3 = [v2 valueForKey:@"bulk_budget_threshold"];

    if (v3)
    {
      bulk_budget_threshold = [v3 intValue];
    }

    v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v5 = [v4 valueForKey:@"budget_check_threshold"];

    if (v5)
    {
      budget_check_threshold = [v5 intValue];
    }

    v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v7 = [v6 valueForKey:@"budget_check_threshold_delay"];

    if (v7)
    {
      budget_check_threshold_delay = [v7 intValue];
    }

    v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v9 = [v8 valueForKey:@"decay_time"];

    if (v9)
    {
      [v9 floatValue];
      *&decay_time = v10;
    }

    v11 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v12 = [v11 valueForKey:@"decay_denominator"];

    if (v12)
    {
      [v12 floatValue];
      *&decay_denominator = v13;
    }

    v14 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v15 = [v14 valueForKey:@"live_delay_scaler"];

    if (v15)
    {
      [v15 floatValue];
      live_delay_scaler = v16;
    }

    v17 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v18 = [v17 valueForKey:@"live_delay_scaled_max"];

    if (v18)
    {
      [v18 floatValue];
      live_delay_scaled_max = v19;
    }

    v20 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v21 = [v20 valueForKey:@"live_delay"];

    if (v21)
    {
      [v21 floatValue];
      live_delay = v22;
    }

    v23 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v24 = [v23 valueForKey:@"bulk_delay_scaler"];

    if (v24)
    {
      [v24 floatValue];
      bulk_delay_scaler = v25;
    }

    v26 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v27 = [v26 valueForKey:@"bulk_delay_scaled_max"];

    if (v27)
    {
      [v27 floatValue];
      bulk_delay_scaled_max = v28;
    }

    v29 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v30 = [v29 valueForKey:@"bulk_delay"];

    if (v30)
    {
      [v30 floatValue];
      bulk_delay = v31;
    }

    if (sIsInternalInstall == 1)
    {
      SISetLogging();
    }

    CFNotificationCenterGetDistributedCenter();
    RunLoopSource = IOPSNotificationCreateRunLoopSource(queryPowerState, 0);
    if (RunLoopSource)
    {
      v33 = RunLoopSource;
      Current = CFRunLoopGetCurrent();
      CFRunLoopAddSource(Current, v33, *MEMORY[0x277CBF058]);
      CFRelease(v33);
    }

    queryPowerState();
    v35 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreSpotlight"];
    v36 = [v35 pathForResource:@"schema" ofType:@"mdplist"];
    v37 = v36;
    if (v36)
    {
      v38 = open([v36 UTF8String], 0);
      if (v38 != -1)
      {
        v39 = v38;
        memset(&v46, 0, sizeof(v46));
        if (!fstat(v38, &v46))
        {
          v43 = mmap(0, v46.st_size, 1, 1, v39, 0);
          if (v43 != -1)
          {
            v44 = v43;
            v45 = *MEMORY[0x277CBECE8];
            gDefaultSchemaPlistBytes = _MDPlistContainerCreateWithBytes();
            if (!gDefaultSchemaPlistBytes)
            {
              munmap(v44, v46.st_size);
            }
          }
        }

        close(v39);
      }
    }

    if (gDefaultSchemaPlistBytes)
    {
      v40 = v37;
    }

    else
    {
      v40 = [v35 pathForResource:@"schema" ofType:@"plist"];

      if (v40)
      {
        v41 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:v40];
        if (v41)
        {
          v42 = *MEMORY[0x277CBECE8];
          gDefaultSchemaPlistBytes = _MDPlistContainerCreateWithObject();
        }
      }

      if (!gDefaultSchemaPlistBytes)
      {
        goto LABEL_40;
      }
    }

    _MDPlistContainerGetBytes();
    _MDPlistContainerGetLength();
    SISetDefaultSchemaData();
LABEL_40:
    _SISetCoreSpotlightRelatedItemCallback();
    _SISetCoreSpotlightCopyBundleRemapCallback();
    LOBYTE(v46.st_dev) = 0;
    CFPreferencesGetAppBooleanValue(@"SpotlightTraceDetailed", *MEMORY[0x277CBF028], &v46);
  }
}

- (SPConcreteCoreSpotlightIndexer)initWithQueue:(id)a3 protectionClass:(id)a4 cancelPtr:(int *)a5
{
  v9 = a3;
  v10 = a4;
  v26.receiver = self;
  v26.super_class = SPConcreteCoreSpotlightIndexer;
  v11 = [(SPConcreteCoreSpotlightIndexer *)&v26 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_dataclass, a4);
    objc_storeStrong(&v12->_indexQueue, a3);
    v12->_cancelPtr = a5;
    v13 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:5 capacity:0];
    checkedInClients = v12->_checkedInClients;
    v12->_checkedInClients = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
    reindexAllDelegateBundleIDs = v12->_reindexAllDelegateBundleIDs;
    v12->_reindexAllDelegateBundleIDs = v15;

    v12->_hasAssertion = 0;
    v12->_assertionEndTime = 0.0;
    v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
    assertedBundleIds = v12->_assertedBundleIds;
    v12->_assertedBundleIds = v17;

    v12->_dirtyTimeout = 256;
    v12->_onDemandOpen = 1;
    *&v12->_creationDate = xmmword_231AED790;
    v19 = [(SPConcreteCoreSpotlightIndexer *)v12 _indexMaintenanceActivityName];
    v20 = [v19 UTF8String];
    v21 = *MEMORY[0x277D86238];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __74__SPConcreteCoreSpotlightIndexer_initWithQueue_protectionClass_cancelPtr___block_invoke;
    handler[3] = &unk_2789341D0;
    v25 = v19;
    v22 = v19;
    xpc_activity_register(v20, v21, handler);
  }

  return v12;
}

void __74__SPConcreteCoreSpotlightIndexer_initWithQueue_protectionClass_cancelPtr___block_invoke(uint64_t a1, xpc_activity_t activity)
{
  v11 = *MEMORY[0x277D85DE8];
  state = xpc_activity_get_state(activity);
  v4 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = v5;
    v9 = 2048;
    v10 = state;
    _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_DEFAULT, "Checking in XPC activity:%@, state:%lu", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 _indexPath];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)dirty:(BOOL)a3
{
  v5 = SDTransactionCreate(0);
  v6 = sIndexQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__SPConcreteCoreSpotlightIndexer_dirty___block_invoke;
  v9[3] = &unk_278934870;
  v11 = a3;
  v9[4] = self;
  v10 = v5;
  v7 = v5;
  v8 = _setup_block(v9, 0, 3449);
  dispatch_async(v6, v8);
}

void __40__SPConcreteCoreSpotlightIndexer_dirty___block_invoke(uint64_t a1)
{
  v26[2] = *MEMORY[0x277D85DE8];
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (*(v2 + 200))
  {
    if (CFAbsoluteTimeGetCurrent() - *(*v3 + 26) < *(*v3 + 31))
    {
      v4 = logForCSLogCategoryIndex();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        __40__SPConcreteCoreSpotlightIndexer_dirty___block_invoke_cold_1(v3);
      }

      v5 = *(*v3 + 25);
      v6 = dispatch_time(0, 5000000000);
      dispatch_source_set_timer(v5, v6, 0x12A05F200uLL, 0x12A05F200uLL);
    }
  }

  else if ((*(a1 + 48) & 1) != 0 || (v7 = *(v2 + 152), SIGetAccumulatedWorkTimeSinceLastSync(), v8 > 1.0))
  {
    v9 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(*v3 + 24);
      *buf = 138412546;
      *&buf[4] = v10;
      *&buf[12] = 1024;
      *&buf[14] = qos_class_self();
      _os_log_impl(&dword_231A35000, v9, OS_LOG_TYPE_INFO, "Index %@ dirty qos: %d", buf, 0x12u);
    }

    v11 = *(*v3 + 24);
    v26[0] = @"dirty";
    v26[1] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
    v13 = SDTransactionCreate(v12);

    v14 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(*v3 + 22));
    Current = CFAbsoluteTimeGetCurrent();
    *(*v3 + 26) = Current;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v25 = 0;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __40__SPConcreteCoreSpotlightIndexer_dirty___block_invoke_619;
    handler[3] = &unk_278934848;
    handler[4] = *v3;
    handler[5] = buf;
    *&handler[6] = Current;
    dispatch_source_set_event_handler(v14, handler);
    v16 = dispatch_time(0, 5000000000);
    dispatch_source_set_timer(v14, v16, 0x12A05F200uLL, 0x12A05F200uLL);
    v17 = *v3;
    objc_sync_enter(v17);
    v18 = *(*v3 + 32);
    *(*v3 + 32) = v13;
    v19 = v13;

    v20 = *(*v3 + 25);
    *(*v3 + 25) = v14;
    v21 = v14;

    dispatch_resume(v21);
    objc_sync_exit(v17);

    _Block_object_dispose(buf, 8);
  }

  SDTransactionDone(*(a1 + 40));
  v22 = *MEMORY[0x277D85DE8];
}

void __40__SPConcreteCoreSpotlightIndexer_dirty___block_invoke_619(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 192);
    v4 = qos_class_self();
    v5 = s_last_memory_pressure_status;
    v6 = *(*(*(a1 + 40) + 8) + 24);
    v7 = CFAbsoluteTimeGetCurrent() - *(a1 + 48);
    *buf = 138413314;
    *&buf[4] = v3;
    *&buf[12] = 1024;
    *&buf[14] = v4;
    *&buf[18] = 1024;
    *&buf[20] = v5;
    LOWORD(v21) = 1024;
    *(&v21 + 2) = v6;
    HIWORD(v21) = 2048;
    v22 = v7;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_INFO, "Index %@ qos: %d status: %d retry: %d inactive after %gs", buf, 0x28u);
  }

  if (CFAbsoluteTimeGetCurrent() - *(*(a1 + 32) + 208) >= *(*(a1 + 32) + 248))
  {
    v10 = dispatch_group_create();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v21 = __Block_byref_object_copy__0;
    v22 = COERCE_DOUBLE(__Block_byref_object_dispose__0);
    v23 = [*(a1 + 32) _cancelIdleTimer];
    [*(a1 + 32) commitUpdates:v10];
    v11 = dispatch_get_global_queue(9, 2uLL);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__SPConcreteCoreSpotlightIndexer_dirty___block_invoke_627;
    block[3] = &unk_2789347F8;
    v14 = *(a1 + 32);
    v16 = *(a1 + 48);
    v15 = buf;
    dispatch_group_notify(v10, v11, block);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (PHOTOS_INDEX_VERSION_CHANGE_block_invoke_2_onceToken != -1)
    {
      __40__SPConcreteCoreSpotlightIndexer_dirty___block_invoke_619_cold_1();
    }

    v8 = PHOTOS_INDEX_VERSION_CHANGE_block_invoke_2_sDASQueue;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __40__SPConcreteCoreSpotlightIndexer_dirty___block_invoke_2;
    v17[3] = &unk_278934848;
    v18 = *(a1 + 32);
    v19 = *(a1 + 48);
    v9 = _setup_block(v17, 0, 3419);
    dispatch_async(v8, v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __40__SPConcreteCoreSpotlightIndexer_dirty___block_invoke_620()
{
  PHOTOS_INDEX_VERSION_CHANGE_block_invoke_2_sDASQueue = dispatch_queue_create("DASqueue", 0);

  return MEMORY[0x2821F96F8]();
}

void __40__SPConcreteCoreSpotlightIndexer_dirty___block_invoke_3(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(a1 + 56) == 1)
  {
    if (*(v2 + 256))
    {
      v3 = dispatch_group_create();
      *&buf = 0;
      *(&buf + 1) = &buf;
      v17 = 0x3032000000;
      v18 = __Block_byref_object_copy__0;
      v19 = __Block_byref_object_dispose__0;
      v20 = [*(a1 + 32) _cancelIdleTimer];
      [*(a1 + 32) commitUpdates:v3];
      v4 = dispatch_get_global_queue(9, 2uLL);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __40__SPConcreteCoreSpotlightIndexer_dirty___block_invoke_4;
      v12[3] = &unk_2789347F8;
      v13 = *(a1 + 32);
      v15 = *(a1 + 48);
      p_buf = &buf;
      dispatch_group_notify(v3, v4, v12);

      _Block_object_dispose(&buf, 8);
    }
  }

  else if (*(v2 + 200) && *(v2 + 256))
  {
    v5 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(*(a1 + 32) + 192);
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v6;
      _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_INFO, "Index %@ delay commit", &buf, 0xCu);
    }

    v7 = *(*(a1 + 32) + 200);
    v8 = dispatch_time(0, 5000000000);
    dispatch_source_set_timer(v7, v8, 0x12A05F200uLL, 0x12A05F200uLL);
    v9 = *(a1 + 32);
    v10 = *(v9 + 248);
    if (v10 >= 0x21)
    {
      *(v9 + 248) = v10 >> 1;
    }

    ++*(*(*(a1 + 40) + 8) + 24);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __40__SPConcreteCoreSpotlightIndexer_dirty___block_invoke_4(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 192);
    v4 = *(*(*(a1 + 40) + 8) + 24);
    v5 = CFAbsoluteTimeGetCurrent() - *(a1 + 56);
    v9 = 138412802;
    v10 = v3;
    v11 = 1024;
    v12 = v4;
    v13 = 2048;
    v14 = v5;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_INFO, "Index %@ retry: %d commit complete after %gs", &v9, 0x1Cu);
  }

  SDTransactionDone(*(*(*(a1 + 48) + 8) + 40));
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  v8 = *MEMORY[0x277D85DE8];
}

void __40__SPConcreteCoreSpotlightIndexer_dirty___block_invoke_627(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 192);
    v4 = *(*(*(a1 + 40) + 8) + 24);
    v5 = CFAbsoluteTimeGetCurrent() - *(a1 + 56);
    v9 = 138412802;
    v10 = v3;
    v11 = 1024;
    v12 = v4;
    v13 = 2048;
    v14 = v5;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_INFO, "Index %@ retry: %d commit complete after %gs", &v9, 0x1Cu);
  }

  SDTransactionDone(*(*(*(a1 + 48) + 8) + 40));
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_performXPCActivity:(id)a3 name:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  state = xpc_activity_get_state(v6);
  v9 = state;
  if (state != 2 && state != 4)
  {
    v11 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v21 = v7;
      v22 = 2048;
      v23 = v9;
      v12 = "Ignored XPC activity:%@, state:%lu";
      goto LABEL_14;
    }

LABEL_15:

    goto LABEL_16;
  }

  v10 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = v7;
    v22 = 2048;
    v23 = v9;
    _os_log_impl(&dword_231A35000, v10, OS_LOG_TYPE_DEFAULT, "Performing XPC activity:%@, state:%lu", buf, 0x16u);
  }

  if (v9 != 2)
  {
    if (!xpc_activity_should_defer(v6) || !xpc_activity_set_state(v6, 3))
    {
      goto LABEL_11;
    }

    v11 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v21 = v7;
      v22 = 2048;
      v23 = v9;
      v12 = "Deferring XPC activity:%@, state:%ld";
LABEL_14:
      _os_log_impl(&dword_231A35000, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 0x16u);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  xpc_activity_set_state(v6, 4);
  [(SPConcreteCoreSpotlightIndexer *)self index];
  SIExecuteResumeActivityCallback();
LABEL_11:
  v13 = sIndexQueue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __59__SPConcreteCoreSpotlightIndexer__performXPCActivity_name___block_invoke;
  v16[3] = &unk_278934338;
  v16[4] = self;
  v17 = v6;
  v18 = v7;
  v19 = v9;
  v14 = _setup_block(v16, 0, 3518);
  dispatch_async(v13, v14);

LABEL_16:
  v15 = *MEMORY[0x277D85DE8];
}

void __59__SPConcreteCoreSpotlightIndexer__performXPCActivity_name___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) outstandingMaintenance];
  v3 = [v2 count];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 outstandingMaintenance];
    v6 = [v5 objectAtIndex:0];

    v7 = [*(a1 + 32) outstandingMaintenance];
    [v7 removeObjectAtIndex:0];

    buf[0] = 0;
    v8 = dispatch_group_create();
    (*(v6 + 16))(v6, [*(a1 + 32) index], *(a1 + 40), buf, v8);
    v9 = sIndexQueue;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __59__SPConcreteCoreSpotlightIndexer__performXPCActivity_name___block_invoke_634;
    v15[3] = &unk_278934130;
    v10 = *(a1 + 40);
    v15[4] = *(a1 + 32);
    v16 = v10;
    v17 = *(a1 + 48);
    v11 = _setup_block(v15, 0, 3517);
    dispatch_group_notify(v8, v9, v11);
  }

  else
  {
    [v4 setOutstandingMaintenance:0];
    xpc_activity_set_state(*(a1 + 40), 5);
    v6 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 48);
      v13 = *(a1 + 56);
      *buf = 138412546;
      v19 = v12;
      v20 = 2048;
      v21 = v13;
      _os_log_impl(&dword_231A35000, v6, OS_LOG_TYPE_DEFAULT, "Marked XPC activity:%@ as done, state:%ld", buf, 0x16u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)_indexMaintenanceActivityName
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"com.apple.searchd.indexmaintenance.%@", self->_dataclass];

  return v2;
}

- (void)scheduleMaintenance:(id)a3 description:(id)a4 forDarkWake:(BOOL)a5
{
  v5 = a5;
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    dataclass = self->_dataclass;
    v12 = @"NO";
    *buf = 138412802;
    if (v5)
    {
      v12 = @"YES";
    }

    v21 = dataclass;
    v22 = 2112;
    v23 = v12;
    v24 = 2112;
    v25 = v9;
    _os_log_impl(&dword_231A35000, v10, OS_LOG_TYPE_DEFAULT, "Scheduling maintenance for dataclass:%@, forDarkWake:%@, description:%@", buf, 0x20u);
  }

  v13 = sIndexQueue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __78__SPConcreteCoreSpotlightIndexer_scheduleMaintenance_description_forDarkWake___block_invoke;
  v17[3] = &unk_2789348C0;
  v17[4] = self;
  v18 = v8;
  v19 = v5;
  v14 = v8;
  v15 = _setup_block(v17, 0, 3565);
  dispatch_async(v13, v15);

  v16 = *MEMORY[0x277D85DE8];
}

void __78__SPConcreteCoreSpotlightIndexer_scheduleMaintenance_description_forDarkWake___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) outstandingMaintenance];

  if (v2)
  {
    v17 = [*(a1 + 32) outstandingMaintenance];
    v3 = MEMORY[0x2383760E0](*(a1 + 40));
    [v17 addObject:v3];

    v4 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [*(a1 + 32) setOutstandingMaintenance:v5];

    v6 = [*(a1 + 32) outstandingMaintenance];
    v7 = MEMORY[0x2383760E0](*(a1 + 40));
    [v6 addObject:v7];

    v8 = [*(a1 + 32) _indexMaintenanceActivityName];
    v9 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v8;
      _os_log_impl(&dword_231A35000, v9, OS_LOG_TYPE_DEFAULT, "Registering XPC activity:%@", buf, 0xCu);
    }

    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v10, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
    xpc_dictionary_set_BOOL(v10, *MEMORY[0x277D86230], 0);
    xpc_dictionary_set_BOOL(v10, *MEMORY[0x277D86330], *(a1 + 48));
    xpc_dictionary_set_int64(v10, *MEMORY[0x277D86250], 0);
    xpc_dictionary_set_int64(v10, *MEMORY[0x277D86270], *MEMORY[0x277D862C8]);
    if ([*(*(a1 + 32) + 192) isEqualToString:*MEMORY[0x277CCA190]])
    {
      v11 = MEMORY[0x277D86370];
    }

    else
    {
      v12 = [*(*(a1 + 32) + 192) isEqualToString:*MEMORY[0x277CCA198]];
      v11 = MEMORY[0x277D86380];
      if (v12)
      {
        v11 = MEMORY[0x277D86378];
      }
    }

    xpc_dictionary_set_BOOL(v10, *v11, 1);
    objc_initWeak(buf, *(a1 + 32));
    v13 = v8;
    v14 = [v8 UTF8String];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __78__SPConcreteCoreSpotlightIndexer_scheduleMaintenance_description_forDarkWake___block_invoke_644;
    handler[3] = &unk_278934898;
    objc_copyWeak(&v20, buf);
    v15 = v8;
    v19 = v15;
    xpc_activity_register(v14, v10, handler);

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);

    v16 = *MEMORY[0x277D85DE8];
  }
}

void __78__SPConcreteCoreSpotlightIndexer_scheduleMaintenance_description_forDarkWake___block_invoke_644(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _performXPCActivity:v3 name:*(a1 + 32)];
  }

  else
  {
    v7 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_231A35000, v7, OS_LOG_TYPE_DEFAULT, "Set XPC activity:%@ DONE since indexer was released", &v10, 0xCu);
    }

    xpc_activity_set_state(v3, 5);
  }

  objc_autoreleasePoolPop(v4);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)runOtherFixups:(id)a3 state:(int64_t)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ((sPrivate & 1) == 0)
  {
    v7 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v15 = a4;
      _os_log_impl(&dword_231A35000, v7, OS_LOG_TYPE_DEFAULT, "fixup runAllOtherFixups state: %ld", buf, 0xCu);
    }

    v8 = [(SPConcreteCoreSpotlightIndexer *)self runOneFixup:a4 group:v6];
    indexQueue = self->_indexQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__SPConcreteCoreSpotlightIndexer_runOtherFixups_state___block_invoke;
    block[3] = &unk_2789344E0;
    v13 = v8;
    block[4] = self;
    v12 = v6;
    dispatch_group_notify(v12, indexQueue, block);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __55__SPConcreteCoreSpotlightIndexer_runOtherFixups_state___block_invoke(void *a1)
{
  if ((a1[6] & 0x8000000000000000) != 0)
  {
    v7 = v1;
    v8 = v2;
    v5 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_DEFAULT, "fixup runAllOtherFixups finished running", v6, 2u);
    }
  }

  else
  {
    v3 = a1[5];
    v4 = a1[4];

    [v4 runOtherFixups:v3 state:?];
  }
}

- (int64_t)runOneFixup:(int64_t)a3 group:(id)a4
{
  v6 = a4;
  v7 = -1;
  if (a3 > 3)
  {
    if (a3 > 5)
    {
      if (a3 == 6)
      {
        [(SPConcreteCoreSpotlightIndexer *)self issuePhotosReindexIfNeeded:0 group:v6];
        v7 = 7;
      }

      else if (a3 == 7)
      {
        [(SPConcreteCoreSpotlightIndexer *)self updateIndexRankingDates:0 group:v6 forceMerge:1];
      }
    }

    else if (a3 == 4)
    {
      [(SPConcreteCoreSpotlightIndexer *)self updateGroups:0 group:v6 forceMerge:0];
      v7 = 5;
    }

    else
    {
      [(SPConcreteCoreSpotlightIndexer *)self updateNotes:0 group:v6 forceMerge:0];
      v7 = 6;
    }
  }

  else if (a3 > 1)
  {
    if (a3 == 2)
    {
      [(SPConcreteCoreSpotlightIndexer *)self updateRankingDates:0 group:v6 forceMerge:0];
      v7 = 3;
    }

    else
    {
      [(SPConcreteCoreSpotlightIndexer *)self updateContainersAndScores:0 group:v6 forceMerge:0];
      v7 = 4;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      [(SPConcreteCoreSpotlightIndexer *)self updateEmailContentURLAttr:0 group:v6 forceMerge:0];
      v7 = 2;
    }
  }

  else
  {
    [(SPConcreteCoreSpotlightIndexer *)self updateEmailLocalParts:0 group:v6 forceMerge:0];
    v7 = 1;
  }

  return v7;
}

- (void)indexFinishedDrainingJournal:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    dataclass = self->_dataclass;
    *buf = 138412546;
    v49 = v4;
    v50 = 2112;
    v51 = dataclass;
    _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_DEFAULT, "indexFinishedDrainingJournal, bundleID:%@, dataclass:%@", buf, 0x16u);
  }

  v7 = [(SPConcreteCoreSpotlightIndexer *)self owner];
  v8 = [v7 dataMigrationStage];
  v9 = [(SPConcreteCoreSpotlightIndexer *)self index];
  if (v9 && !self->_readOnly && !self->_suspended && !self->_suspending && ![(SPConcreteCoreSpotlightIndexer *)self denyOperationOnAssertedIndex:"indexFinishedDrainingJournal"])
  {
    if (![(__CFString *)v4 isEqual:@"com.apple.mobilemail"])
    {
LABEL_18:
      if (v4)
      {
        if ([(SPConcreteCoreSpotlightIndexer *)self clientIsCheckedIn:v4])
        {
          v16 = [(SPConcreteCoreSpotlightIndexer *)self owner];
          v17 = [v16 extensionDelegate];
          v18 = [v17 extensionExistsForBundleId:v4];

          if ((v18 & 1) == 0)
          {
            v19 = [MEMORY[0x277D65790] sharedProcessor];
            v41[0] = MEMORY[0x277D85DD0];
            v41[1] = 3221225472;
            v41[2] = __63__SPConcreteCoreSpotlightIndexer_indexFinishedDrainingJournal___block_invoke_652;
            v41[3] = &unk_2789348E8;
            v42 = v4;
            [v19 updateCheckedInClientWithBundleIdentifier:v42 completionHandler:v41];
          }
        }
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [(__CFString *)v4 hasPrefix:@"com.apple."])
      {
        objc_initWeak(buf, self);
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __63__SPConcreteCoreSpotlightIndexer_indexFinishedDrainingJournal___block_invoke_656;
        v38[3] = &unk_278934938;
        objc_copyWeak(v40, buf);
        v40[1] = v9;
        v20 = v4;
        v39 = v20;
        v40[2] = v8;
        v21 = MEMORY[0x2383760E0](v38);
        v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"(_kMDItemWillModify=1)&&(_kMDItemBundleID=\"%@\"", v20];
        v44 = @"_kMDItemExternalID";
        v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
        v43 = v20;
        v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
        [(SPConcreteCoreSpotlightIndexer *)self _startInternalQueryWithIndex:v9 query:v22 fetchAttributes:v23 forBundleIds:v24 resultsHandler:v21];

        objc_destroyWeak(v40);
        objc_destroyWeak(buf);
      }

      goto LABEL_36;
    }

    if (sMailProtectionClass && ([(NSString *)self->_dataclass isEqual:?]& 1) != 0)
    {
      v10 = logForCSLogCategoryIndex();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_231A35000, v10, OS_LOG_TYPE_INFO, "Check whether Mail needs reindexing", buf, 2u);
      }

      v11 = [(SPConcreteCoreSpotlightIndexer *)self getPropertyForKey:@"com.apple.mobilemail.reindexVersion"];
      v12 = v11;
      if (v11)
      {
        v13 = [(__CFString *)v11 isEqual:@"599"];
        v14 = logForCSLogCategoryIndex();
        v15 = v14;
        if (v13)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v49 = v12;
            v50 = 2112;
            v51 = @"599";
            _os_log_impl(&dword_231A35000, v15, OS_LOG_TYPE_INFO, "Reindex version matches %@==%@", buf, 0x16u);
          }

          goto LABEL_18;
        }

        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_33;
        }

        *buf = 138412546;
        v49 = v12;
        v50 = 2112;
        v51 = @"599";
        v26 = "Reindex version mismatch %@!=%@";
        v27 = v15;
        v28 = 22;
      }

      else
      {
        v15 = logForCSLogCategoryIndex();
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
LABEL_33:

          v29 = [objc_alloc(MEMORY[0x277CC3420]) initWithJobType:2];
          v30 = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
          v47 = v30;
          v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
          [v29 setProtectionClasses:v31];

          [v29 setReason:@"re-indexing mail - finished draining journal"];
          v32 = [SPCoreSpotlightIndexerTask alloc];
          v46 = self;
          v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
          v34 = [(SPCoreSpotlightIndexerTask *)v32 initWithIndexJob:v29 indexers:v33];

          v45 = v4;
          v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
          [(SPCoreSpotlightIndexerTask *)v34 setBundleIDs:v35];

          [(SPCoreSpotlightIndexerTask *)v34 setDataMigrationStage:v8];
          [(SPConcreteCoreSpotlightIndexer *)self performIndexerTask:v34 completionHandler:&__block_literal_global_650];
          v36 = logForCSLogCategoryIndex();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v49 = @"com.apple.mobilemail.reindexVersion";
            v50 = 2112;
            v51 = @"599";
            _os_log_impl(&dword_231A35000, v36, OS_LOG_TYPE_INFO, "Reindexing and setting %@ %@", buf, 0x16u);
          }

          [(SPConcreteCoreSpotlightIndexer *)self setProperty:@"599" forKey:@"com.apple.mobilemail.reindexVersion" sync:1];
          goto LABEL_36;
        }

        *buf = 0;
        v26 = "Reindex version not set";
        v27 = v15;
        v28 = 2;
      }

      _os_log_impl(&dword_231A35000, v27, OS_LOG_TYPE_DEFAULT, v26, buf, v28);
      goto LABEL_33;
    }

    v25 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v49 = sMailProtectionClass;
      v50 = 2112;
      v51 = @"com.apple.mobilemail";
      _os_log_impl(&dword_231A35000, v25, OS_LOG_TYPE_DEFAULT, "*warn* index %@ has information for %@", buf, 0x16u);
    }
  }

LABEL_36:

  v37 = *MEMORY[0x277D85DE8];
}

void __63__SPConcreteCoreSpotlightIndexer_indexFinishedDrainingJournal___block_invoke_652(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __63__SPConcreteCoreSpotlightIndexer_indexFinishedDrainingJournal___block_invoke_652_cold_1(a1);
    }
  }
}

void __63__SPConcreteCoreSpotlightIndexer_indexFinishedDrainingJournal___block_invoke_656(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = WeakRetained;
  if (a3 == 1)
  {
    v12 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __63__SPConcreteCoreSpotlightIndexer_indexFinishedDrainingJournal___block_invoke_656_cold_1(a1, v10);
    }

    goto LABEL_11;
  }

  if (!a3 && [WeakRetained index] == *(a1 + 48))
  {
    _MDStoreOIDArrayGetVectorCount();
    v11 = objc_opt_new();
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __63__SPConcreteCoreSpotlightIndexer_indexFinishedDrainingJournal___block_invoke_2;
    v30 = &unk_278934910;
    v32 = a6;
    v12 = v11;
    v31 = v12;
    _MDStoreOIDArrayApplyBlock();
    if ([v12 count])
    {
      v13 = logForCSLogCategoryIndex();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [v12 count];
        v15 = *(a1 + 32);
        *buf = 134218242;
        v37 = v14;
        v38 = 2112;
        v39 = v15;
        _os_log_impl(&dword_231A35000, v13, OS_LOG_TYPE_INFO, "Request reimport of %ld items for bundleID:%@ (journal)", buf, 0x16u);
      }

      v16 = [objc_alloc(MEMORY[0x277CC3420]) initWithJobType:1];
      v17 = [v10 dataclass];
      v35 = v17;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
      [v16 setProtectionClasses:v18];

      [v16 setIdentifiersToReindex:v12];
      v19 = [SPCoreSpotlightIndexerTask alloc];
      v34 = v10;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
      v21 = [(SPCoreSpotlightIndexerTask *)v19 initWithIndexJob:v16 indexers:v20];

      v33 = *(a1 + 32);
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
      [(SPCoreSpotlightIndexerTask *)v21 setBundleIDs:v22];

      [(SPCoreSpotlightIndexerTask *)v21 setDataMigrationStage:*(a1 + 56)];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __63__SPConcreteCoreSpotlightIndexer_indexFinishedDrainingJournal___block_invoke_658;
      v24[3] = &unk_2789342C0;
      v25 = v12;
      v26 = *(a1 + 32);
      [v10 performIndexerTask:v21 completionHandler:v24];
    }

LABEL_11:
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __63__SPConcreteCoreSpotlightIndexer_indexFinishedDrainingJournal___block_invoke_2(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned int a5)
{
  if (a3 == 2781)
  {
    v8 = *(a1 + 40);
    v15 = _MDPlistBytesCopyPlistAtIndex();
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && a5 >= 2)
    {
      v9 = a5;
      v10 = *MEMORY[0x277CBEEE8];
      for (i = 1; i != v9; ++i)
      {
        v12 = [v15 objectAtIndexedSubscript:i];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v12 objectAtIndexedSubscript:0];
          v14 = v13;
          if (v13 != v10 && v13)
          {
            [*(a1 + 32) addObject:v13];
          }
        }
      }
    }
  }
}

void __63__SPConcreteCoreSpotlightIndexer_indexFinishedDrainingJournal___block_invoke_658(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) count];
    v4 = *(a1 + 40);
    v6 = 134218242;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_INFO, "Done reimporting %ld items for bundleID:%@ (journal)", &v6, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)whenFinishedDraining:(id)a3
{
  v8 = a3;
  os_unfair_lock_lock(&sDrainedLock);
  if (self->_finishedDrainingJournal)
  {
    os_unfair_lock_unlock(&sDrainedLock);
    v8[2](v8, 1);
  }

  else
  {
    blocksToRunWhenFinishedDraining = self->_blocksToRunWhenFinishedDraining;
    if (!blocksToRunWhenFinishedDraining)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v6 = self->_blocksToRunWhenFinishedDraining;
      self->_blocksToRunWhenFinishedDraining = v5;

      blocksToRunWhenFinishedDraining = self->_blocksToRunWhenFinishedDraining;
    }

    v7 = [v8 copy];
    [(NSMutableArray *)blocksToRunWhenFinishedDraining addObject:v7];

    os_unfair_lock_unlock(&sDrainedLock);
  }
}

- (void)updateKnownBundles:(id)a3 group:(id)a4
{
  v6 = a3;
  v7 = sIndexQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__SPConcreteCoreSpotlightIndexer_updateKnownBundles_group___block_invoke;
  v11[3] = &unk_2789342C0;
  v11[4] = self;
  v12 = v6;
  v8 = v6;
  v9 = a4;
  v10 = _setup_block(v11, 0, 3920);
  dispatch_group_async(v9, v7, v10);
}

uint64_t __59__SPConcreteCoreSpotlightIndexer_updateKnownBundles_group___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) index];
  if (result)
  {
    v3 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) dataclass];
      v5 = [*(a1 + 40) componentsJoinedByString:{@", "}];
      v8 = 138412546;
      v9 = v4;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_DEFAULT, "### fixupBundles %@ - %@", &v8, 0x16u);
    }

    result = [*(a1 + 40) count];
    if (result)
    {
      v6 = *(a1 + 40);
      result = SIUpdateKnownBundles();
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)fixupBundlesWithGroup:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SPConcreteCoreSpotlightIndexer *)self index];
  if (v5)
  {
    if ((sPrivate & 1) == 0)
    {
      v6 = v5;
      if (([sDelegate managedIndex] & 1) == 0)
      {
        v7 = objc_opt_new();
        objc_initWeak(&location, self);
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __56__SPConcreteCoreSpotlightIndexer_fixupBundlesWithGroup___block_invoke;
        v13[3] = &unk_278934988;
        objc_copyWeak(v16, &location);
        v16[1] = v6;
        v8 = v7;
        v14 = v8;
        v9 = v4;
        v15 = v9;
        v10 = MEMORY[0x2383760E0](v13);
        dispatch_group_enter(v9);
        v18[0] = @"_kMDItemBundleID";
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
        [(SPConcreteCoreSpotlightIndexer *)self _startInternalQueryWithIndex:v6 query:@"@_kMDItemBundleID=*" fetchAttributes:v11 resultsHandler:v10];

        objc_destroyWeak(v16);
        objc_destroyWeak(&location);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __56__SPConcreteCoreSpotlightIndexer_fixupBundlesWithGroup___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (a3 == 1)
  {
    v8 = [*(a1 + 32) allObjects];
    v9 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v7 dataclass];
      v11 = [v8 componentsJoinedByString:{@", "}];
      *buf = 138412546;
      *&buf[4] = v10;
      *&buf[12] = 2112;
      *&buf[14] = v11;
      _os_log_impl(&dword_231A35000, v9, OS_LOG_TYPE_DEFAULT, "### fixupBundles found %@ - %@", buf, 0x16u);
    }

    [v7 updateKnownBundles:v8 group:*(a1 + 40)];
    dispatch_group_leave(*(a1 + 40));
  }

  else if (!a3 && [WeakRetained index] == *(a1 + 56))
  {
    _MDStoreOIDArrayGetVectorCount();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v15 = 0;
    v13 = *(a1 + 32);
    _MDStoreOIDArrayApplyBlock();

    _Block_object_dispose(buf, 8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __56__SPConcreteCoreSpotlightIndexer_fixupBundlesWithGroup___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v7 = *(a1 + 48);
  ++*(*(*(a1 + 40) + 8) + 24);
  v13 = _MDPlistBytesCopyPlistAtIndex();
  if (v13)
  {
    v8 = a5 >= 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = a5;
    v10 = 1;
    do
    {
      v11 = [v13 objectAtIndexedSubscript:v10];
      v12 = [v11 objectAtIndexedSubscript:0];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(a1 + 32) addObjectsFromArray:v12];
      }

      ++v10;
    }

    while (v9 != v10);
  }
}

- (void)fixupPathTimeouts
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_231A35000, log, OS_LOG_TYPE_DEBUG, "Starting pathFixup query pc: %@", buf, 0xCu);
}

void __51__SPConcreteCoreSpotlightIndexer_fixupPathTimeouts__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if (a3 == 1)
    {
      v7 = logForCSLogCategoryIndex();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        __51__SPConcreteCoreSpotlightIndexer_fixupPathTimeouts__block_invoke_cold_1(v6);
      }
    }

    else if (!a3 && [WeakRetained index] == *(a1 + 40))
    {
      _MDStoreOIDArrayGetVectorCount();
      v8 = *(a1 + 40);
      _MDStoreOIDArrayApplyBlock();
    }
  }
}

uint64_t __51__SPConcreteCoreSpotlightIndexer_fixupPathTimeouts__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = logForCSLogCategoryIndex();
  v8 = a5 - 1;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) dataclass];
    v13[0] = 67109378;
    v13[1] = v8;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_231A35000, v7, OS_LOG_TYPE_DEFAULT, "SIFixupPaths count: %d pc: %@", v13, 0x12u);
  }

  v10 = *(a1 + 40);
  result = SIFixupPaths();
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)indexFinishedDrainingJournal
{
  v29 = *MEMORY[0x277D85DE8];
  [(SPConcreteCoreSpotlightIndexer *)self indexFinishedDrainingJournal:0];
  v3 = [(SPConcreteCoreSpotlightIndexer *)self index];
  if (v3 && !self->_readOnly && !self->_suspended && !self->_suspending)
  {
    v4 = v3;
    os_unfair_lock_lock(&sDrainedLock);
    [(SPConcreteCoreSpotlightIndexer *)self setFinishedDrainingJournal:1];
    v5 = self->_blocksToRunWhenFinishedDraining;
    blocksToRunWhenFinishedDraining = self->_blocksToRunWhenFinishedDraining;
    self->_blocksToRunWhenFinishedDraining = 0;

    os_unfair_lock_unlock(&sDrainedLock);
    if (v5)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v7 = v5;
      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v8)
      {
        v9 = *v24;
        do
        {
          v10 = 0;
          do
          {
            if (*v24 != v9)
            {
              objc_enumerationMutation(v7);
            }

            (*(*(*(&v23 + 1) + 8 * v10++) + 16))();
          }

          while (v8 != v10);
          v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v8);
      }
    }

    [sDelegate indexAvailableForProtectionClass:self->_dataclass newIndex:0];
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    objc_initWeak(&location, self);
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __62__SPConcreteCoreSpotlightIndexer_indexFinishedDrainingJournal__block_invoke;
    v19 = &unk_2789349D8;
    objc_copyWeak(v21, &location);
    v21[1] = v4;
    v12 = v11;
    v20 = v12;
    v13 = MEMORY[0x2383760E0](&v16);
    v27 = @"_kMDItemExternalID";
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:{1, v16, v17, v18, v19}];
    [(SPConcreteCoreSpotlightIndexer *)self _startInternalQueryWithIndex:v4 query:@"_kMDItemBundleID=com.apple.searchd" fetchAttributes:v14 resultsHandler:v13];

    [(SPConcreteCoreSpotlightIndexer *)self fixupPathTimeouts];
    objc_destroyWeak(v21);
    objc_destroyWeak(&location);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __62__SPConcreteCoreSpotlightIndexer_indexFinishedDrainingJournal__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (a3 == 1)
  {
    if ([WeakRetained index] == *(a1 + 48))
    {
      [v7 addClients:*(a1 + 32)];
    }
  }

  else if (!a3 && [WeakRetained index] == *(a1 + 48))
  {
    _MDStoreOIDArrayGetVectorCount();
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x2020000000;
    v9[3] = 0;
    v8 = *(a1 + 32);
    _MDStoreOIDArrayApplyBlock();

    _Block_object_dispose(v9, 8);
  }
}

void __62__SPConcreteCoreSpotlightIndexer_indexFinishedDrainingJournal__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v7 = *(a1 + 48);
  ++*(*(*(a1 + 40) + 8) + 24);
  v8 = _MDPlistBytesCopyPlistAtIndex();
  if (v8)
  {
    v9 = a5 >= 2;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = a5;
    v11 = 1;
    v14 = v8;
    do
    {
      v12 = [v14 objectAtIndexedSubscript:v11];
      v13 = [v12 objectAtIndexedSubscript:0];

      [*(a1 + 32) addObject:v13];
      v8 = v14;
      ++v11;
    }

    while (v10 != v11);
  }
}

- (void)removeExpiredItemsForBundleId:(id)a3 group:(id)a4
{
  v6 = a3;
  v7 = a4;
  Current = CFAbsoluteTimeGetCurrent();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __70__SPConcreteCoreSpotlightIndexer_removeExpiredItemsForBundleId_group___block_invoke;
  v14[3] = &unk_278934338;
  v14[4] = self;
  v15 = v6;
  v16 = v7;
  v17 = Current;
  v9 = v7;
  v10 = v6;
  v11 = MEMORY[0x2383760E0](v14);
  v12 = sIndexQueue;
  v13 = _setup_block(v11, 0, 4101);
  dispatch_group_async(v9, v12, v13);
}

void __70__SPConcreteCoreSpotlightIndexer_removeExpiredItemsForBundleId_group___block_invoke(uint64_t a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) index];
  objc_initWeak(&location, *(a1 + 32));
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __70__SPConcreteCoreSpotlightIndexer_removeExpiredItemsForBundleId_group___block_invoke_2;
  v15 = &unk_278934988;
  objc_copyWeak(v18, &location);
  v18[1] = v2;
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  v3 = MEMORY[0x2383760E0](&v12);
  v4 = *(a1 + 40);
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@=%@ && %@<=$time.absolute(%f))", @"_kMDItemBundleID", v4, *MEMORY[0x277CC2A70], *(a1 + 56), v12, v13, v14, v15];
  dispatch_group_enter(*(a1 + 48));
  v6 = *(a1 + 32);
  v21[0] = @"_kMDItemExternalID";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v8 = *(a1 + 40);
  if (v8)
  {
    v20 = *(a1 + 40);
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v6 _startInternalQueryWithIndex:v2 query:v5 fetchAttributes:v7 forBundleIds:v9 resultsHandler:v3];
  if (v8)
  {
  }

  if ((v10 & 1) == 0)
  {
    dispatch_group_leave(*(a1 + 48));
  }

  objc_destroyWeak(v18);
  objc_destroyWeak(&location);
  v11 = *MEMORY[0x277D85DE8];
}

void __70__SPConcreteCoreSpotlightIndexer_removeExpiredItemsForBundleId_group___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (a3 == 1)
  {
    dispatch_group_leave(*(a1 + 40));
  }

  else if (!a3 && [WeakRetained index] == *(a1 + 56))
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __70__SPConcreteCoreSpotlightIndexer_removeExpiredItemsForBundleId_group___block_invoke_3;
    v12[3] = &unk_278934A00;
    v11 = v10;
    v13 = v11;
    [a6 enumerateQueryResults:1 stringCache:0 usingBlock:v12];
    if ([v11 count])
    {
      [WeakRetained indexSearchableItems:0 deleteSearchableItemsWithIdentifiers:v11 clientState:0 expectedClientState:0 clientStateName:0 forBundleID:*(a1 + 32) options:0 completionHandler:&__block_literal_global_675];
    }
  }
}

uint64_t __70__SPConcreteCoreSpotlightIndexer_removeExpiredItemsForBundleId_group___block_invoke_3(uint64_t result, void *a2)
{
  if (*a2)
  {
    return [*(result + 32) addObject:?];
  }

  return result;
}

- (void)revokeExpiredItems:(id)a3 activity:(id)a4
{
  v56 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SPConcreteCoreSpotlightIndexer *)self owner];
  v9 = [v8 dataMigrationStage];
  v10 = [(SPConcreteCoreSpotlightIndexer *)self index];
  if (v10)
  {
    v11 = v10;
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - self->_lastTTLPass >= 21600.0)
    {
      self->_lastTTLPass = Current;
      v13 = dispatch_group_create();
      v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v50[0] = 0;
      v50[1] = v50;
      v50[2] = 0x2020000000;
      v51 = 0;
      objc_initWeak(&location, self);
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __62__SPConcreteCoreSpotlightIndexer_revokeExpiredItems_activity___block_invoke;
      v42[3] = &unk_278934AC0;
      objc_copyWeak(v48, &location);
      v48[1] = v11;
      v42[4] = self;
      v47 = v50;
      v33 = v7;
      v43 = v33;
      v35 = v14;
      v44 = v35;
      v48[2] = v9;
      v34 = v13;
      v45 = v34;
      v15 = v6;
      v46 = v15;
      v36 = MEMORY[0x2383760E0](v42);
      v16 = *MEMORY[0x277CC3238];
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@<=$time.absolute(%f)) && (%@!=*)) || (%@<=$time.absolute(%f))", *MEMORY[0x277CC2A70], Current + 86400.0, *MEMORY[0x277CC3238], *MEMORY[0x277CC2A70], *&Current];
      dispatch_group_enter(v15);
      v18 = logForCSLogCategoryIndex();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
        *buf = 138412290;
        v55 = v19;
        _os_log_impl(&dword_231A35000, v18, OS_LOG_TYPE_DEFAULT, "XPC activity:com.apple.searchd.expirations starting ... pc=%@", buf, 0xCu);
      }

      v53[0] = @"_kMDItemBundleID";
      v53[1] = @"_kMDItemExternalID";
      v53[2] = v16;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:3];
      v21 = [(SPConcreteCoreSpotlightIndexer *)self _startInternalQueryWithIndex:v11 query:v17 fetchAttributes:v20 resultsHandler:v36];

      if (!v21)
      {
        v22 = logForCSLogCategoryIndex();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
          *buf = 138412290;
          v55 = v23;
          _os_log_impl(&dword_231A35000, v22, OS_LOG_TYPE_DEFAULT, "XPC activity:com.apple.searchd.expirations not started pc=%@", buf, 0xCu);
        }

        dispatch_group_leave(v15);
      }

      v24 = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
      v25 = [v24 isEqualToString:*MEMORY[0x277CCA190]];

      if (v25)
      {
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __62__SPConcreteCoreSpotlightIndexer_revokeExpiredItems_activity___block_invoke_686;
        v37[3] = &unk_278934B10;
        objc_copyWeak(v41, &location);
        v41[1] = v11;
        v40 = v50;
        v38 = v33;
        v26 = v15;
        v39 = v26;
        v27 = MEMORY[0x2383760E0](v37);
        dispatch_group_enter(v26);
        v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@", *MEMORY[0x277CC2500], @"com.apple.spotlight.category"];

        v29 = *MEMORY[0x277CC3000];
        v52[0] = @"_kMDItemExternalID";
        v52[1] = v29;
        v52[2] = *MEMORY[0x277CC2FF8];
        v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:3];
        v31 = [(SPConcreteCoreSpotlightIndexer *)self _startInternalQueryWithIndex:v11 query:v28 fetchAttributes:v30 forBundleIds:&unk_2846C9278 resultsHandler:v27];

        if (!v31)
        {
          dispatch_group_leave(v26);
        }

        objc_destroyWeak(v41);
      }

      else
      {
        v28 = v17;
      }

      objc_destroyWeak(v48);
      objc_destroyWeak(&location);
      _Block_object_dispose(v50, 8);
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

void __62__SPConcreteCoreSpotlightIndexer_revokeExpiredItems_activity___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v63 = *MEMORY[0x277D85DE8];
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v11 = WeakRetained;
  if (a3 == 1)
  {
    v17 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [*(a1 + 32) dataclass];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v18;
      _os_log_impl(&dword_231A35000, v17, OS_LOG_TYPE_DEFAULT, "SPQueryFinished for activity:com.apple.searchd.expirations pc=%@", &buf, 0xCu);
    }

    v19 = sIndexQueue;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __62__SPConcreteCoreSpotlightIndexer_revokeExpiredItems_activity___block_invoke_682;
    v32[3] = &unk_278934A98;
    v35 = *(a1 + 72);
    v20 = *(a1 + 56);
    v33 = *(a1 + 48);
    objc_copyWeak(&v36, (a1 + 80));
    v34 = *(a1 + 64);
    v21 = _setup_block(v32, 0, 4208);
    dispatch_group_notify(v20, v19, v21);

    objc_destroyWeak(&v36);
  }

  else if (!a3 && [WeakRetained index] == *(a1 + 88))
  {
    v12 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(a1 + 32) dataclass];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v13;
      _os_log_impl(&dword_231A35000, v12, OS_LOG_TYPE_DEFAULT, "SPQueryResults for activity:com.apple.searchd.expirations pc=%@", &buf, 0xCu);
    }

    if ((*(*(*(a1 + 72) + 8) + 24) & 1) != 0 || (v14 = *(a1 + 40)) != 0 && xpc_activity_should_defer(v14))
    {
      v15 = logForCSLogCategoryIndex();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [*(a1 + 32) dataclass];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v16;
        _os_log_impl(&dword_231A35000, v15, OS_LOG_TYPE_DEFAULT, "SPQueryResults deferred for activity:com.apple.searchd.expirations pc=%@", &buf, 0xCu);
      }

      *(*(*(a1 + 72) + 8) + 24) = 1;
    }

    else
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v59 = 0x3032000000;
      v60 = __Block_byref_object_copy__0;
      v61 = __Block_byref_object_dispose__0;
      v62 = 0;
      v48 = 0;
      v49 = &v48;
      v50 = 0x3032000000;
      v51 = __Block_byref_object_copy__0;
      v52 = __Block_byref_object_dispose__0;
      v53 = 0;
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __62__SPConcreteCoreSpotlightIndexer_revokeExpiredItems_activity___block_invoke_679;
      v41[3] = &unk_278934A70;
      v23 = *(a1 + 48);
      p_buf = &buf;
      v46 = &v48;
      v42 = v23;
      v43 = v11;
      v47 = *(a1 + 96);
      v44 = *(a1 + 56);
      [a6 enumerateQueryResults:3 stringCache:0 usingBlock:v41];
      if ([v49[5] count])
      {
        v24 = logForCSLogCategoryIndex();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          __62__SPConcreteCoreSpotlightIndexer_revokeExpiredItems_activity___block_invoke_cold_1(&buf + 8, v57, [v49[5] count], v24);
        }

        v25 = [objc_alloc(MEMORY[0x277CC3420]) initWithJobType:1];
        [v25 setIdentifiersToReindex:v49[5]];
        v26 = [v11 dataclass];
        v56 = v26;
        v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
        [v25 setProtectionClasses:v27];

        v28 = [SPCoreSpotlightIndexerTask alloc];
        v55 = v11;
        v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
        v30 = [(SPCoreSpotlightIndexerTask *)v28 initWithIndexJob:v25 indexers:v29];

        v54 = *(*(&buf + 1) + 40);
        v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
        [(SPCoreSpotlightIndexerTask *)v30 setBundleIDs:v31];

        [(SPCoreSpotlightIndexerTask *)v30 setDataMigrationStage:*(a1 + 96)];
        dispatch_group_enter(*(a1 + 56));
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __62__SPConcreteCoreSpotlightIndexer_revokeExpiredItems_activity___block_invoke_681;
        v37[3] = &unk_278934A48;
        v39 = &v48;
        v40 = &buf;
        v38 = *(a1 + 56);
        [v11 performIndexerTask:v30 completionHandler:v37];
      }

      _Block_object_dispose(&v48, 8);
      _Block_object_dispose(&buf, 8);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __62__SPConcreteCoreSpotlightIndexer_revokeExpiredItems_activity___block_invoke_679(uint64_t a1, uint64_t a2)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *a2;
  if (v5)
  {
    v6 = *(a2 + 16);
    if (v6 == *MEMORY[0x277CBEEE8] || v6 == 0)
    {
      v8 = *(a2 + 8);
      if (v8)
      {
        v9 = v8;
        if (([*(*(*(a1 + 56) + 8) + 40) isEqual:v5] & 1) == 0)
        {
          if ([*(*(*(a1 + 64) + 8) + 40) count])
          {
            v10 = logForCSLogCategoryIndex();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
            {
              __62__SPConcreteCoreSpotlightIndexer_revokeExpiredItems_activity___block_invoke_679_cold_1();
            }

            v11 = [objc_alloc(MEMORY[0x277CC3420]) initWithJobType:1];
            v12 = [*(a1 + 40) dataclass];
            v28[0] = v12;
            v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
            [v11 setProtectionClasses:v13];

            [v11 setIdentifiersToReindex:*(*(*(a1 + 64) + 8) + 40)];
            v14 = [SPCoreSpotlightIndexerTask alloc];
            v27 = *(a1 + 40);
            v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
            v16 = [(SPCoreSpotlightIndexerTask *)v14 initWithIndexJob:v11 indexers:v15];

            v26 = *(*(*(a1 + 56) + 8) + 40);
            v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
            [(SPCoreSpotlightIndexerTask *)v16 setBundleIDs:v17];

            [(SPCoreSpotlightIndexerTask *)v16 setDataMigrationStage:*(a1 + 72)];
            dispatch_group_enter(*(a1 + 48));
            v23[0] = MEMORY[0x277D85DD0];
            v23[1] = 3221225472;
            v23[2] = __62__SPConcreteCoreSpotlightIndexer_revokeExpiredItems_activity___block_invoke_680;
            v23[3] = &unk_278934A48;
            v25 = vextq_s8(*(a1 + 56), *(a1 + 56), 8uLL);
            v18 = *(a1 + 40);
            v24 = *(a1 + 48);
            [v18 performIndexerTask:v16 completionHandler:v23];
          }

          objc_storeStrong((*(*(a1 + 56) + 8) + 40), v4);
          v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v20 = *(*(a1 + 64) + 8);
          v21 = *(v20 + 40);
          *(v20 + 40) = v19;

          [*(a1 + 32) addObject:v5];
        }

        [*(*(*(a1 + 64) + 8) + 40) addObject:v9];
      }
    }

    else
    {
      [*(a1 + 32) addObject:v5];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __62__SPConcreteCoreSpotlightIndexer_revokeExpiredItems_activity___block_invoke_680(uint64_t a1)
{
  v2 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __62__SPConcreteCoreSpotlightIndexer_revokeExpiredItems_activity___block_invoke_680_cold_1();
  }

  dispatch_group_leave(*(a1 + 32));
}

void __62__SPConcreteCoreSpotlightIndexer_revokeExpiredItems_activity___block_invoke_681(uint64_t a1)
{
  v2 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __62__SPConcreteCoreSpotlightIndexer_revokeExpiredItems_activity___block_invoke_680_cold_1();
  }

  dispatch_group_leave(*(a1 + 32));
}

void __62__SPConcreteCoreSpotlightIndexer_revokeExpiredItems_activity___block_invoke_682(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v2 = *(a1 + 32);
    v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v11;
      do
      {
        v6 = 0;
        do
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v10 + 1) + 8 * v6);
          WeakRetained = objc_loadWeakRetained((a1 + 56));
          [WeakRetained removeExpiredItemsForBundleId:v7 group:{*(a1 + 40), v10}];

          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v4);
    }
  }

  dispatch_group_leave(*(a1 + 40));
  v9 = *MEMORY[0x277D85DE8];
}

void __62__SPConcreteCoreSpotlightIndexer_revokeExpiredItems_activity___block_invoke_686(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v11 = WeakRetained;
  if (a3 == 1)
  {
    dispatch_group_leave(*(a1 + 40));
    goto LABEL_10;
  }

  if (!a3 && [WeakRetained index] == *(a1 + 64))
  {
    v12 = *(*(a1 + 48) + 8);
    if (*(v12 + 24))
    {
LABEL_8:
      *(v12 + 24) = 1;
      goto LABEL_10;
    }

    v13 = *(a1 + 32);
    if (v13 && xpc_activity_should_defer(v13))
    {
      v12 = *(*(a1 + 48) + 8);
      goto LABEL_8;
    }

    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__0;
    v28 = __Block_byref_object_dispose__0;
    v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__0;
    v22 = __Block_byref_object_dispose__0;
    v23 = objc_opt_new();
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __62__SPConcreteCoreSpotlightIndexer_revokeExpiredItems_activity___block_invoke_2;
    v14[3] = &unk_278934AE8;
    v15 = @"com.apple.spotlight.category";
    v16 = &v24;
    v17 = &v18;
    [a6 enumerateQueryResults:3 stringCache:0 usingBlock:v14];
    if ([v25[5] count] || objc_msgSend(v19[5], "count"))
    {
      [v11 indexSearchableItems:v25[5] deleteSearchableItemsWithIdentifiers:v19[5] clientState:0 expectedClientState:0 clientStateName:0 forBundleID:@"com.apple.spotlight.category" options:0 completionHandler:0];
    }

    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(&v24, 8);
  }

LABEL_10:
}

void __62__SPConcreteCoreSpotlightIndexer_revokeExpiredItems_activity___block_invoke_2(uint64_t a1, id *a2)
{
  v29[2] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_16;
  }

  v7 = [v6 count];
  if (v7 != [v5 count])
  {
LABEL_15:
    [*(*(*(a1 + 48) + 8) + 40) addObject:v4];
    goto LABEL_16;
  }

  v26 = a1;
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v5];
  v27 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v6];
  v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
  v10 = [v6 count];
  if (v10)
  {
    v11 = v10;
    for (i = 0; i != v11; ++i)
    {
      v13 = MEMORY[0x277CBEAA8];
      v14 = [v6 objectAtIndexedSubscript:i];
      v15 = [v13 dateWithTimeInterval:v14 sinceDate:86400.0];
      v16 = [v9 earlierDate:v15];

      if (v16 != v9)
      {
        v17 = [v5 objectAtIndexedSubscript:i];
        [v8 removeObject:v17];

        v18 = [v6 objectAtIndexedSubscript:i];
        [v27 removeObject:v18];
      }
    }
  }

  if (![v8 count])
  {

    a1 = v26;
    goto LABEL_15;
  }

  v19 = [v8 count];
  if (v19 != [v5 count])
  {
    v20 = objc_opt_new();
    [v20 setUniqueIdentifier:v4];
    [v20 setBundleID:*(v26 + 32)];
    v21 = objc_alloc(MEMORY[0x277CC34B8]);
    v22 = *MEMORY[0x277CC2FF8];
    v28[0] = *MEMORY[0x277CC3000];
    v28[1] = v22;
    v29[0] = v8;
    v29[1] = v27;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
    v24 = [v21 initWithAttributes:v23];
    [v20 setAttributeSet:v24];

    [*(*(*(v26 + 40) + 8) + 40) addObject:v20];
  }

LABEL_16:
  v25 = *MEMORY[0x277D85DE8];
}

- (void)requestRequiresImportWithoutSandboxExtension:(id)a3 maxCount:(unint64_t)a4 depth:(int64_t)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v22 = a3;
  v8 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    *&buf[4] = a4;
    *&buf[12] = 2048;
    *&buf[14] = a5;
    _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_DEFAULT, "requestRequiresImportWithoutSandboxExtension maxCount:%lu, depth:%ld", buf, 0x16u);
  }

  v9 = [(SPConcreteCoreSpotlightIndexer *)self owner];
  v10 = [v9 dataMigrationStage];
  v11 = [(SPConcreteCoreSpotlightIndexer *)self index];
  if (v11)
  {
    v12 = dispatch_group_create();
    v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
    objc_initWeak(&location, self);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v34 = 0;
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x2020000000;
    v30[3] = 0;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __94__SPConcreteCoreSpotlightIndexer_requestRequiresImportWithoutSandboxExtension_maxCount_depth___block_invoke;
    v23[3] = &unk_278934B60;
    objc_copyWeak(v29, &location);
    v27 = buf;
    v28 = v30;
    v29[1] = v11;
    v29[2] = v10;
    v14 = v12;
    v24 = v14;
    v15 = v13;
    v25 = v15;
    v29[3] = a4;
    v29[4] = a5;
    v16 = v22;
    v26 = v16;
    v17 = MEMORY[0x2383760E0](v23);
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"_kMDItemRequiresImport==1 && _kMDItemImportComplete!=* && (_kMDItemImportHasSandboxExtension==0 || _kMDItemImportHasSandboxExtension!=*) && kMDItemFileProviderID!=*"];
    dispatch_group_enter(v16);
    v32[0] = @"_kMDItemBundleID";
    v32[1] = @"_kMDItemExternalID";
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
    v20 = [(SPConcreteCoreSpotlightIndexer *)self _startInternalQueryWithIndex:v11 query:v18 fetchAttributes:v19 forBundleIds:0 maxCount:a4 resultsHandler:v17];

    if (!v20)
    {
      dispatch_group_leave(v16);
    }

    objc_destroyWeak(v29);
    _Block_object_dispose(v30, 8);
    _Block_object_dispose(buf, 8);
    objc_destroyWeak(&location);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __94__SPConcreteCoreSpotlightIndexer_requestRequiresImportWithoutSandboxExtension_maxCount_depth___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v70 = *MEMORY[0x277D85DE8];
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v11 = WeakRetained;
  if (a3 != 1)
  {
    if (!a3 && [WeakRetained index] == *(a1 + 80))
    {
      *&v65 = 0;
      *(&v65 + 1) = &v65;
      v66 = 0x3032000000;
      v67 = __Block_byref_object_copy__0;
      v68 = __Block_byref_object_dispose__0;
      v69 = 0;
      v52 = 0;
      v53 = &v52;
      v54 = 0x3032000000;
      v55 = __Block_byref_object_copy__0;
      v56 = __Block_byref_object_dispose__0;
      v57 = 0;
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __94__SPConcreteCoreSpotlightIndexer_requestRequiresImportWithoutSandboxExtension_maxCount_depth___block_invoke_2;
      v45[3] = &unk_278934B38;
      v48 = *(a1 + 56);
      v49 = &v65;
      v50 = &v52;
      v45[4] = v11;
      v51 = *(a1 + 88);
      v46 = *(a1 + 32);
      v47 = *(a1 + 40);
      [a6 enumerateQueryResults:2 stringCache:0 usingBlock:v45];
      if ([v53[5] count])
      {
        v12 = logForCSLogCategoryDefault();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = [v53[5] count];
          v14 = *(*(&v65 + 1) + 40);
          *buf = 134218242;
          v62 = v13;
          v63 = 2112;
          v64 = v14;
          _os_log_impl(&dword_231A35000, v12, OS_LOG_TYPE_INFO, "Request reimport of %ld items for bundleID:%@ (sandbox items)", buf, 0x16u);
        }

        v15 = [objc_alloc(MEMORY[0x277CC3420]) initWithJobType:1];
        v16 = [v11 dataclass];
        v60 = v16;
        v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
        [v15 setProtectionClasses:v17];

        [v15 setIdentifiersToReindex:v53[5]];
        v18 = [SPCoreSpotlightIndexerTask alloc];
        v59 = v11;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v59 count:1];
        v20 = [(SPCoreSpotlightIndexerTask *)v18 initWithIndexJob:v15 indexers:v19];

        v58 = *(*(&v65 + 1) + 40);
        v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
        [(SPCoreSpotlightIndexerTask *)v20 setBundleIDs:v21];

        [(SPCoreSpotlightIndexerTask *)v20 setDataMigrationStage:*(a1 + 88)];
        dispatch_group_enter(*(a1 + 32));
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __94__SPConcreteCoreSpotlightIndexer_requestRequiresImportWithoutSandboxExtension_maxCount_depth___block_invoke_699;
        v41[3] = &unk_278934A48;
        v43 = &v52;
        v44 = &v65;
        v42 = *(a1 + 32);
        [v11 performIndexerTask:v20 completionHandler:v41];
      }

      _Block_object_dispose(&v52, 8);
      _Block_object_dispose(&v65, 8);
    }

    goto LABEL_19;
  }

  v22 = *(a1 + 96);
  v23 = *(*(*(a1 + 56) + 8) + 24);
  if (v22)
  {
    if (v23 < v22)
    {
LABEL_11:
      v24 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(*(*(a1 + 64) + 8) + 24);
        LODWORD(v65) = 134217984;
        *(&v65 + 4) = v25;
        _os_log_impl(&dword_231A35000, v24, OS_LOG_TYPE_DEFAULT, "Completed sandbox items query (%ld processed)", &v65, 0xCu);
      }

      v26 = *(a1 + 32);
      v27 = sIndexQueue;
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __94__SPConcreteCoreSpotlightIndexer_requestRequiresImportWithoutSandboxExtension_maxCount_depth___block_invoke_701;
      v34[3] = &unk_278934550;
      v36 = *(a1 + 64);
      v35 = *(a1 + 48);
      v28 = _setup_block(v34, 0, 4410);
      dispatch_group_notify(v26, v27, v28);

      goto LABEL_19;
    }
  }

  else
  {
    v22 = *(*(*(a1 + 56) + 8) + 24);
    if (v23 < 256)
    {
      goto LABEL_11;
    }
  }

  if (!*(*(*(a1 + 64) + 8) + 24) || (v29 = *(a1 + 104) + 1, v29 > 5 * (v22 >> 8)))
  {
    v29 = 0;
    v22 *= 2;
  }

  v30 = *(a1 + 32);
  v31 = sIndexQueue;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __94__SPConcreteCoreSpotlightIndexer_requestRequiresImportWithoutSandboxExtension_maxCount_depth___block_invoke_700;
  v37[3] = &unk_278934690;
  v37[4] = WeakRetained;
  v38 = *(a1 + 48);
  v39 = v22;
  v40 = v29;
  v32 = _setup_block(v37, 0, 4404);
  dispatch_group_notify(v30, v31, v32);

LABEL_19:
  v33 = *MEMORY[0x277D85DE8];
}

void __94__SPConcreteCoreSpotlightIndexer_requestRequiresImportWithoutSandboxExtension_maxCount_depth___block_invoke_2(uint64_t a1, id *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  ++*(*(*(a1 + 56) + 8) + 24);
  v4 = *a2;
  v5 = *a2;
  if (v5)
  {
    v6 = a2[1];
    if (v6)
    {
      v7 = v6;
      ++*(*(*(a1 + 64) + 8) + 24);
      if (([*(*(*(a1 + 72) + 8) + 40) isEqual:v5] & 1) == 0)
      {
        if ([*(*(*(a1 + 80) + 8) + 40) count])
        {
          v8 = logForCSLogCategoryDefault();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            v9 = [*(*(*(a1 + 80) + 8) + 40) count];
            v10 = *(*(*(a1 + 72) + 8) + 40);
            *buf = 134218242;
            v33 = v9;
            v34 = 2112;
            v35 = v10;
            _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_INFO, "Request reimport of %ld items for bundleID:%@ (sandbox items)", buf, 0x16u);
          }

          v11 = [objc_alloc(MEMORY[0x277CC3420]) initWithJobType:1];
          v12 = [*(a1 + 32) dataclass];
          v31 = v12;
          v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
          [v11 setProtectionClasses:v13];

          [v11 setIdentifiersToReindex:*(*(*(a1 + 80) + 8) + 40)];
          v14 = [SPCoreSpotlightIndexerTask alloc];
          v30 = *(a1 + 32);
          v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
          v16 = [(SPCoreSpotlightIndexerTask *)v14 initWithIndexJob:v11 indexers:v15];

          v29 = *(*(*(a1 + 72) + 8) + 40);
          v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
          [(SPCoreSpotlightIndexerTask *)v16 setBundleIDs:v17];

          [(SPCoreSpotlightIndexerTask *)v16 setDataMigrationStage:*(a1 + 88)];
          dispatch_group_enter(*(a1 + 40));
          v23 = MEMORY[0x277D85DD0];
          v24 = 3221225472;
          v25 = __94__SPConcreteCoreSpotlightIndexer_requestRequiresImportWithoutSandboxExtension_maxCount_depth___block_invoke_698;
          v26 = &unk_278934A48;
          v28 = vextq_s8(*(a1 + 72), *(a1 + 72), 8uLL);
          v18 = *(a1 + 32);
          v27 = *(a1 + 40);
          [v18 performIndexerTask:v16 completionHandler:&v23];
        }

        objc_storeStrong((*(*(a1 + 72) + 8) + 40), v4);
        v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v20 = *(*(a1 + 80) + 8);
        v21 = *(v20 + 40);
        *(v20 + 40) = v19;

        [*(a1 + 48) addObject:v5];
      }

      [*(*(*(a1 + 80) + 8) + 40) addObject:{v7, v23, v24, v25, v26}];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __94__SPConcreteCoreSpotlightIndexer_requestRequiresImportWithoutSandboxExtension_maxCount_depth___block_invoke_698(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(*(*(a1 + 40) + 8) + 40) count];
    v4 = *(*(*(a1 + 48) + 8) + 40);
    v6 = 134218242;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_INFO, "Done reimporting %ld items for bundleID:%@ (sandbox items)", &v6, 0x16u);
  }

  dispatch_group_leave(*(a1 + 32));
  v5 = *MEMORY[0x277D85DE8];
}

void __94__SPConcreteCoreSpotlightIndexer_requestRequiresImportWithoutSandboxExtension_maxCount_depth___block_invoke_699(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(*(*(a1 + 40) + 8) + 40) count];
    v4 = *(*(*(a1 + 48) + 8) + 40);
    v6 = 134218242;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_INFO, "Done reimporting %ld items for bundleID:%@ (sandbox items)", &v6, 0x16u);
  }

  dispatch_group_leave(*(a1 + 32));
  v5 = *MEMORY[0x277D85DE8];
}

void __94__SPConcreteCoreSpotlightIndexer_requestRequiresImportWithoutSandboxExtension_maxCount_depth___block_invoke_700(uint64_t a1)
{
  [*(a1 + 32) requestRequiresImportWithoutSandboxExtension:*(a1 + 40) maxCount:*(a1 + 48) depth:*(a1 + 56)];
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

void __94__SPConcreteCoreSpotlightIndexer_requestRequiresImportWithoutSandboxExtension_maxCount_depth___block_invoke_701(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(*(a1 + 40) + 8) + 24);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "Done reimporting sandbox items (%ld processed)", &v5, 0xCu);
  }

  dispatch_group_leave(*(a1 + 32));
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_expireCorruptIndexFilesWithPath:(id)a3 keepLatest:(BOOL)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 stringByDeletingLastPathComponent];
  v6 = [v4 lastPathComponent];
  v7 = [v6 stringByAppendingString:@"-"];

  v39 = v5;
  if (v5 && v7)
  {
    v8 = [MEMORY[0x277CCAA00] defaultManager];
    v9 = objc_opt_new();
    v37 = v8;
    v10 = [v8 enumeratorAtPath:v5];
    v11 = [v10 nextObject];
    if (v11)
    {
      v12 = v11;
      do
      {
        [v10 skipDescendants];
        if (![v12 rangeOfString:v7])
        {
          v14 = [v12 substringFromIndex:v13];
          v15 = strtoull([v14 UTF8String], 0, 10);

          if (v15 + 1 >= 2)
          {
            v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v15];
            [v9 addObject:v16];
          }
        }

        v17 = [v10 nextObject];

        v12 = v17;
      }

      while (v17);
    }

    if ([v9 count])
    {
      v35 = v9;
      v36 = v4;
      v18 = [v9 sortedArrayUsingSelector:sel_compare_];
      v19 = [v18 reverseObjectEnumerator];

      Current = CFAbsoluteTimeGetCurrent();
      v21 = [v19 nextObject];
      if (v21)
      {
        v22 = v21;
        v23 = 0;
        do
        {
          [v22 doubleValue];
          v26 = (Current - v24 <= 864000.0 || v24 >= Current) && v23 == 0;
          if (v26 && a4)
          {
            v23 = 1;
          }

          else
          {
            v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%llu", v7, objc_msgSend(v22, "unsignedLongLongValue")];
            v28 = [v39 stringByAppendingPathComponent:v27];
            v40 = 0;
            v29 = [v37 removeItemAtPath:v28 error:&v40];
            v30 = v40;
            v31 = logForCSLogCategoryIndex();
            v32 = v31;
            if (v29)
            {
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v42 = v28;
                _os_log_impl(&dword_231A35000, v32, OS_LOG_TYPE_DEFAULT, "Expired corrupt index at path:%@", buf, 0xCu);
              }
            }

            else if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v42 = v28;
              v43 = 2112;
              v44 = v30;
              _os_log_error_impl(&dword_231A35000, v32, OS_LOG_TYPE_ERROR, "Failed to remove path:%@, error:%@", buf, 0x16u);
            }
          }

          v33 = [v19 nextObject];

          v22 = v33;
        }

        while (v33);
      }

      v9 = v35;
      v4 = v36;
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (BOOL)updateMeCardInfo:(id)a3 middleName:(id)a4 familyName:(id)a5 emailAddresses:(id)a6 isFirstTimeCheck:(BOOL)a7 isNotCreateNewIndex:(BOOL)a8 group:(id)a9
{
  v66 = a8;
  v72[1] = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v67 = a9;
  _SISetMeEmailAddresses();
  _SISetMeNames();
  v17 = _SICopyMeAliasName();
  v18 = MEMORY[0x277CCACA8];
  v19 = [sDelegate indexDirectory];
  v20 = [v18 stringWithFormat:@"%@/meCardInfo.plist", v19];

  pthread_rwlock_wrlock(&sIndexMeCardInfoLock);
  v21 = [MEMORY[0x277CCAA00] defaultManager];
  v68 = v20;
  v22 = [v21 fileExistsAtPath:v20];

  if (!v22 || ([MEMORY[0x277CBEB38] dictionaryWithContentsOfFile:v68], (v23 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v23 = [MEMORY[0x277CBEB38] dictionary];
    if ((v22 & 1) == 0)
    {
      v24 = [MEMORY[0x277CCAA00] defaultManager];
      v71 = *MEMORY[0x277CCA1B0];
      v72[0] = *MEMORY[0x277CCA1A0];
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:&v71 count:1];
      [v24 createFileAtPath:v68 contents:0 attributes:v25];
    }
  }

  if (a7)
  {
    v26 = 0;
    if (!v16)
    {
      goto LABEL_120;
    }

    goto LABEL_117;
  }

  if (v23)
  {
    v27 = v22;
  }

  else
  {
    v27 = 0;
  }

  if (v27 == 1)
  {
    v28 = [v23 valueForKey:@"emails"];
    v29 = [v23 valueForKey:@"givenname"];
    v65 = [v23 valueForKey:@"middlename"];
    v62 = [v23 valueForKey:@"familyname"];
    v30 = [v23 valueForKey:@"aliasname"];
    if (v28 && [v28 count])
    {
      v61 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v28];
    }

    else
    {
      v61 = 0;
    }

    v63 = v29;
    if (v29 && [v29 length] && (!v13 || !objc_msgSend(v13, "length")) || (v32 = v65 == 0, v65) && objc_msgSend(v65, "length") && (!v14 || !objc_msgSend(v14, "length")) || (v31 = v62 == 0, v62) && objc_msgSend(v62, "length") && (!v15 || !objc_msgSend(v15, "length")) || v63 && (v33 = objc_msgSend(v63, "length"), v13) && v33 && objc_msgSend(v13, "length") && !objc_msgSend(v13, "isEqualToString:", v63) || v65 && (v34 = objc_msgSend(v65, "length"), v14) && v34 && objc_msgSend(v14, "length") && !objc_msgSend(v14, "isEqualToString:", v65) || v62 && (v35 = objc_msgSend(v62, "length"), v15) && v35 && objc_msgSend(v15, "length") && (objc_msgSend(v15, "isEqualToString:", v62) & 1) == 0)
    {
      v60 = v28;
      v37 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_231A35000, v37, OS_LOG_TYPE_DEFAULT, "DerivedFromToIsMe name updated", buf, 2u);
      }

      v38 = self;
      index = self->_index;
      _SISetDerivedFromToIsMeNameUpdated();
LABEL_56:
      if (v66 && !v38->_readOnly)
      {
        v26 = 1;
        [(SPConcreteCoreSpotlightIndexer *)v38 updateDerivedIsMe:1 runOtherFixups:0 force:1 group:v67 state:0];
        goto LABEL_95;
      }

      goto LABEL_94;
    }

    if (v63)
    {
      v36 = [v63 length];
      if (!v13 || v36)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v61 = 0;
    v62 = 0;
    v30 = 0;
    v65 = 0;
    v28 = 0;
    v31 = 1;
    v32 = 1;
  }

  v63 = 0;
  if (!v13)
  {
    goto LABEL_18;
  }

LABEL_17:
  if ([v13 length])
  {
    goto LABEL_68;
  }

LABEL_18:
  if (v32)
  {
    if (!v14)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v40 = [v65 length];
    if (!v14 || v40)
    {
      goto LABEL_62;
    }
  }

  if ([v14 length])
  {
    goto LABEL_68;
  }

LABEL_62:
  if (v31)
  {
    if (!v15)
    {
      goto LABEL_74;
    }

    goto LABEL_67;
  }

  v41 = [v62 length];
  if (v15 && !v41)
  {
LABEL_67:
    if (![v15 length])
    {
      goto LABEL_74;
    }

LABEL_68:
    v60 = v28;
    v42 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231A35000, v42, OS_LOG_TYPE_DEFAULT, "DerivedFromToIsMe name added", buf, 2u);
    }

    v38 = self;
    v43 = self->_index;
    _SISetDerivedFromToIsMeNameAdded();
    goto LABEL_71;
  }

LABEL_74:
  v60 = v28;
  if (!v61)
  {
    v38 = self;
    if (!v16 || ![v16 count])
    {
      v61 = 0;
LABEL_94:
      v26 = 0;
      goto LABEL_95;
    }

    goto LABEL_90;
  }

  v44 = [v61 count];
  v38 = self;
  if (v16 && v44 && [v16 count] && (objc_msgSend(v61, "isSubsetOfSet:", v16) & 1) == 0)
  {
    v59 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231A35000, v59, OS_LOG_TYPE_DEFAULT, "DerivedFromToIsMe email updated", buf, 2u);
    }

    goto LABEL_56;
  }

  v45 = [v61 count];
  if (v16 && !v45 && [v16 count])
  {
LABEL_90:
    v47 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231A35000, v47, OS_LOG_TYPE_DEFAULT, "DerivedFromToIsMe email added", buf, 2u);
    }

LABEL_71:
    if (v66 && !v38->_readOnly)
    {
      [(SPConcreteCoreSpotlightIndexer *)v38 updateDerivedIsMeIfNotAlready:1 group:v67 state:0];
    }

    goto LABEL_94;
  }

  v46 = [v61 count];
  v26 = 0;
  if (v16 && v46)
  {
    if (![v16 count] || !objc_msgSend(v61, "isSubsetOfSet:", v16) || (objc_msgSend(v16, "isSubsetOfSet:", v61) & 1) != 0)
    {
      goto LABEL_94;
    }

    goto LABEL_90;
  }

LABEL_95:
  if (!v30)
  {
LABEL_104:
    if (v17 && [v17 length])
    {
      v48 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_231A35000, v48, OS_LOG_TYPE_DEFAULT, "DerivedFromToIsMe alias added", buf, 2u);
      }

      v49 = v38->_index;
      _SISetDerivedFromToIsMeAliasAdded();
      if (v66 && !v38->_readOnly)
      {
        [(SPConcreteCoreSpotlightIndexer *)v38 updateDerivedIsMeIfNotAlready:1 group:v67 state:0];
      }
    }

    goto LABEL_116;
  }

  if (![v30 length] || v17 && objc_msgSend(v17, "length")) && (!objc_msgSend(v30, "length") || !v17 || !objc_msgSend(v17, "length") || (objc_msgSend(v17, "isEqualToString:", v30)))
  {
    if ([v30 length])
    {
      goto LABEL_116;
    }

    goto LABEL_104;
  }

  v50 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231A35000, v50, OS_LOG_TYPE_DEFAULT, "DerivedFromToIsMe alias updated", buf, 2u);
  }

  v51 = v38->_index;
  _SISetDerivedFromToIsMeAliasUpdated();
  if (v66 && !v38->_readOnly)
  {
    v26 = 1;
    [(SPConcreteCoreSpotlightIndexer *)v38 updateDerivedIsMe:1 runOtherFixups:0 force:1 group:v67 state:0];
  }

LABEL_116:

  if (!v16)
  {
    goto LABEL_120;
  }

LABEL_117:
  if ([v16 count])
  {
    v52 = [v16 allObjects];
    [v23 setValue:v52 forKey:@"emails"];

    if (!v13)
    {
      goto LABEL_124;
    }

    goto LABEL_121;
  }

LABEL_120:
  [v23 removeObjectForKey:@"emails"];
  if (!v13)
  {
    goto LABEL_124;
  }

LABEL_121:
  if ([v13 length])
  {
    [v23 setValue:v13 forKey:@"givenname"];
    if (!v14)
    {
      goto LABEL_128;
    }

    goto LABEL_125;
  }

LABEL_124:
  [v23 removeObjectForKey:@"givenname"];
  if (!v14)
  {
    goto LABEL_128;
  }

LABEL_125:
  if ([v14 length])
  {
    [v23 setValue:v14 forKey:@"middlename"];
    if (!v15)
    {
      goto LABEL_132;
    }

    goto LABEL_129;
  }

LABEL_128:
  [v23 removeObjectForKey:@"middlename"];
  if (!v15)
  {
    goto LABEL_132;
  }

LABEL_129:
  if ([v15 length])
  {
    [v23 setValue:v15 forKey:@"familyname"];
    if (!v17)
    {
      goto LABEL_135;
    }

    goto LABEL_133;
  }

LABEL_132:
  [v23 removeObjectForKey:@"familyname"];
  if (!v17)
  {
LABEL_135:
    [v23 removeObjectForKey:@"aliasname"];
    goto LABEL_136;
  }

LABEL_133:
  if (![v17 length])
  {
    goto LABEL_135;
  }

  [v23 setValue:v17 forKey:@"aliasname"];
LABEL_136:
  v53 = [MEMORY[0x277CBEBC0] fileURLWithPath:v68];
  v69 = 0;
  v54 = [v23 writeToURL:v53 error:&v69];
  v55 = v69;

  if (v55 || (v54 & 1) == 0)
  {
    v56 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      [SPConcreteCoreSpotlightIndexer updateMeCardInfo:middleName:familyName:emailAddresses:isFirstTimeCheck:isNotCreateNewIndex:group:];
    }
  }

  pthread_rwlock_unlock(&sIndexMeCardInfoLock);

  v57 = *MEMORY[0x277D85DE8];
  return v26;
}

void __72__SPConcreteCoreSpotlightIndexer_fetchMeCard_isNotCreateNewIndex_group___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_INFO, "Received CNContactStoreMeContactDidChangeNotification notification", v4, 2u);
    }

    [WeakRetained fetchMeCard:0 isNotCreateNewIndex:1 group:*(a1 + 32)];
  }
}

- (void)writeIndexSuccessfulOpenDate:(int64_t)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v5 = indexOpenRecordPath();
  v6 = [&unk_2846C96E0 objectForKeyedSubscript:self->_dataclass];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"pc%@_%@", v6, @"lastOpen"];

  pthread_rwlock_wrlock(&sIndexOpenRecordLock);
  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [v8 fileExistsAtPath:v5];

  if (v9)
  {
    [MEMORY[0x277CBEB38] dictionaryWithContentsOfFile:v5];
  }

  else
  {
    newIndexOpensDict();
  }
  v10 = ;
  v11 = [MEMORY[0x277CCABB0] numberWithLong:a3];
  [v10 setObject:v11 forKeyedSubscript:v7];

  if ((v9 & 1) == 0)
  {
    v12 = [MEMORY[0x277CCAA00] defaultManager];
    v19 = *MEMORY[0x277CCA1B0];
    v20[0] = *MEMORY[0x277CCA1A0];
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    [v12 createFileAtPath:v5 contents:0 attributes:v13];
  }

  v14 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
  v18 = 0;
  [v10 writeToURL:v14 error:&v18];
  v15 = v18;

  if (v15)
  {
    v16 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SPConcreteCoreSpotlightIndexer writeIndexSuccessfulOpenDate:];
    }
  }

  pthread_rwlock_unlock(&sIndexOpenRecordLock);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)writeIndexDropAnalyticsDate:(int64_t)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v5 = indexOpenRecordPath();
  v6 = [&unk_2846C96E0 objectForKeyedSubscript:self->_dataclass];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"pc%@_%@", v6, @"lastAnalytics"];

  pthread_rwlock_wrlock(&sIndexOpenRecordLock);
  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [v8 fileExistsAtPath:v5];

  if (v9)
  {
    [MEMORY[0x277CBEB38] dictionaryWithContentsOfFile:v5];
  }

  else
  {
    newIndexOpensDict();
  }
  v10 = ;
  v11 = [MEMORY[0x277CCABB0] numberWithLong:a3];
  [v10 setObject:v11 forKeyedSubscript:v7];

  if ((v9 & 1) == 0)
  {
    v12 = [MEMORY[0x277CCAA00] defaultManager];
    v19 = *MEMORY[0x277CCA1B0];
    v20[0] = *MEMORY[0x277CCA1A0];
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    [v12 createFileAtPath:v5 contents:0 attributes:v13];
  }

  v14 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
  v18 = 0;
  [v10 writeToURL:v14 error:&v18];
  v15 = v18;

  if (v15)
  {
    v16 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SPConcreteCoreSpotlightIndexer writeIndexDropAnalyticsDate:];
    }
  }

  pthread_rwlock_unlock(&sIndexOpenRecordLock);

  v17 = *MEMORY[0x277D85DE8];
}

- (int)shouldNotLogIndexDrop:(id)a3 ignoreParentDirectoryAge:(BOOL)a4
{
  v4 = a4;
  v28 = *MEMORY[0x277D85DE8];
  v6 = indexOpenRecordPath();
  v7 = [&unk_2846C96E0 objectForKeyedSubscript:self->_dataclass];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"pc%@_%@", v7, @"lastOpen"];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"pc%@_%@", v7, @"lastAnalytics"];
  pthread_rwlock_rdlock(&sIndexOpenRecordLock);
  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = [v10 fileExistsAtPath:v6];

  if (v11)
  {
    v12 = [MEMORY[0x277CBEB38] dictionaryWithContentsOfFile:v6];
    v13 = [v12 objectForKeyedSubscript:v8];
    v14 = [v13 longValue];

    v15 = [v12 objectForKeyedSubscript:v9];
    v16 = [v15 longValue];

    pthread_rwlock_unlock(&sIndexOpenRecordLock);
    if (v14 <= v16)
    {
      v20 = 2;
    }

    else
    {
      bzero(buffer, 0x400uLL);
      v17 = [sDelegate indexDirectory];
      FileSystemRepresentation = CFStringGetFileSystemRepresentation(v17, buffer, 1024);

      if (FileSystemRepresentation && (memset(&v26, 0, sizeof(v26)), !stat(buffer, &v26)))
      {
        v21 = [MEMORY[0x277CBEAA8] date];
        [v21 timeIntervalSince1970];
        v23 = v22 - v26.st_birthtimespec.tv_sec;

        v19 = v23 < 3601;
      }

      else
      {
        v19 = 1;
      }

      if (!v4 && v19)
      {
        v20 = 3;
      }

      else
      {
        v20 = 0;
      }
    }
  }

  else
  {
    pthread_rwlock_unlock(&sIndexOpenRecordLock);
    v20 = 1;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v20;
}

- (void)writeIndexCreationDate:(int64_t)a3
{
  v32[1] = *MEMORY[0x277D85DE8];
  self->_creationDate = a3;
  v5 = indexHeartbeatPath();
  v6 = [&unk_2846C96E0 objectForKeyedSubscript:self->_dataclass];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"pc%@_%@", v6, @"age"];

  pthread_rwlock_wrlock(&sIndexHeartbeatLock);
  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [v8 fileExistsAtPath:v5];

  if (v9)
  {
    v10 = [MEMORY[0x277CBEB38] dictionaryWithContentsOfFile:v5];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 objectForKeyedSubscript:@"v2"];

      if (v12)
      {
        v13 = newHeartbeatDict();

        v11 = v13;
      }
    }
  }

  else
  {
    v11 = newHeartbeatDict();
  }

  v14 = [v11 objectForKeyedSubscript:@"parentDirectory_age"];
  if (!v14 || (v15 = v14, [v11 objectForKeyedSubscript:@"parentDirectory_age"], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "longValue"), v16, v15, v17 <= 0))
  {
    memset(&v30, 0, sizeof(v30));
    v18 = [sDelegate indexDirectory];
    v19 = stat([v18 UTF8String], &v30);

    v20 = *__error();
    if (v19)
    {
      v21 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [SPConcreteCoreSpotlightIndexer writeIndexCreationDate:];
      }
    }

    else
    {
      v21 = [MEMORY[0x277CCABB0] numberWithLong:v30.st_birthtimespec.tv_sec];
      [v11 setObject:v21 forKeyedSubscript:@"parentDirectory_age"];
    }

    *__error() = v20;
  }

  v22 = [MEMORY[0x277CCABB0] numberWithLong:a3];
  [v11 setObject:v22 forKeyedSubscript:v7];

  if ((v9 & 1) == 0)
  {
    v23 = [MEMORY[0x277CCAA00] defaultManager];
    v31 = *MEMORY[0x277CCA1B0];
    v32[0] = *MEMORY[0x277CCA1A0];
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    [v23 createFileAtPath:v5 contents:0 attributes:v24];
  }

  v25 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
  v29 = 0;
  [v11 writeToURL:v25 error:&v29];
  v26 = v29;

  if (v26)
  {
    v27 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [SPConcreteCoreSpotlightIndexer writeIndexCreationDate:];
    }
  }

  pthread_rwlock_unlock(&sIndexHeartbeatLock);

  v28 = *MEMORY[0x277D85DE8];
}

- (void)writeSDBObjectCount:(int64_t)a3
{
  v23[1] = *MEMORY[0x277D85DE8];
  v5 = indexHeartbeatPath();
  v6 = [&unk_2846C96E0 objectForKeyedSubscript:self->_dataclass];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"pc%@_%@", v6, @"obj_count"];

  pthread_rwlock_wrlock(&sIndexHeartbeatLock);
  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [v8 fileExistsAtPath:v5];

  if (v9)
  {
    v10 = [MEMORY[0x277CBEB38] dictionaryWithContentsOfFile:v5];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 objectForKeyedSubscript:@"v2"];

      if (v12)
      {
        v13 = newHeartbeatDict();

        v11 = v13;
      }
    }
  }

  else
  {
    v11 = newHeartbeatDict();
  }

  v14 = [MEMORY[0x277CCABB0] numberWithLong:a3];
  [v11 setObject:v14 forKeyedSubscript:v7];

  if ((v9 & 1) == 0)
  {
    v15 = [MEMORY[0x277CCAA00] defaultManager];
    v22 = *MEMORY[0x277CCA1B0];
    v23[0] = *MEMORY[0x277CCA1A0];
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    [v15 createFileAtPath:v5 contents:0 attributes:v16];
  }

  v17 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
  v21 = 0;
  [v11 writeToURL:v17 error:&v21];
  v18 = v21;

  if (v18)
  {
    v19 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [SPConcreteCoreSpotlightIndexer writeSDBObjectCount:];
    }
  }

  pthread_rwlock_unlock(&sIndexHeartbeatLock);

  v20 = *MEMORY[0x277D85DE8];
}

- (void)incrementIndexWipeCount
{
  v29[1] = *MEMORY[0x277D85DE8];
  v3 = indexHeartbeatPath();
  v4 = [&unk_2846C96E0 objectForKeyedSubscript:self->_dataclass];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"pc%@_%@", v4, @"wipes"];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"pc%@_%@", v4, @"wipes_aggregate"];
  pthread_rwlock_wrlock(&sIndexHeartbeatLock);
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [v7 fileExistsAtPath:v3];

  if (v8)
  {
    v9 = [MEMORY[0x277CBEB38] dictionaryWithContentsOfFile:v3];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 objectForKeyedSubscript:@"v2"];

      if (v11)
      {
        v12 = newHeartbeatDict();

        v10 = v12;
      }
    }
  }

  else
  {
    v10 = newHeartbeatDict();
  }

  v13 = [v10 objectForKeyedSubscript:v5];
  if (v13)
  {
    v14 = [v10 objectForKeyedSubscript:v5];
    v15 = [v14 longValue] + 1;
  }

  else
  {
    v15 = 1;
  }

  v16 = [MEMORY[0x277CCABB0] numberWithLong:v15];
  [v10 setObject:v16 forKeyedSubscript:v5];

  v17 = [v10 objectForKeyedSubscript:v6];
  if (v17)
  {
    v18 = [v10 objectForKeyedSubscript:v6];
    v19 = [v18 longValue] + 1;
  }

  else
  {
    v19 = 1;
  }

  v20 = [MEMORY[0x277CCABB0] numberWithLong:v19];
  [v10 setObject:v20 forKeyedSubscript:v6];

  if ((v8 & 1) == 0)
  {
    v21 = [MEMORY[0x277CCAA00] defaultManager];
    v28 = *MEMORY[0x277CCA1B0];
    v29[0] = *MEMORY[0x277CCA1A0];
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    [v21 createFileAtPath:v3 contents:0 attributes:v22];
  }

  v23 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];
  v27 = 0;
  [v10 writeToURL:v23 error:&v27];
  v24 = v27;

  if (v24)
  {
    v25 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [SPConcreteCoreSpotlightIndexer writeIndexCreationDate:];
    }
  }

  pthread_rwlock_unlock(&sIndexHeartbeatLock);

  v26 = *MEMORY[0x277D85DE8];
}

- (int64_t)getAggregateIndexWipeCount
{
  v3 = indexHeartbeatPath();
  v4 = [&unk_2846C96E0 objectForKeyedSubscript:self->_dataclass];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"pc%@_%@", v4, @"wipes_aggregate"];
  pthread_rwlock_rdlock(&sIndexHeartbeatLock);
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
  }

  else
  {
    v9 = newHeartbeatDict();
  }

  v12 = [v9 objectForKeyedSubscript:v5];
  if (v12)
  {
    v13 = [v9 objectForKeyedSubscript:v5];
    v14 = [v13 longValue];
  }

  else
  {
    v14 = 0;
  }

  pthread_rwlock_unlock(&sIndexHeartbeatLock);
  return v14;
}

- (id)indexLossAnalyticsDictWithPreviousIndexCreationDate:(int64_t)a3 size:(int64_t)a4 openingInReadOnly:(BOOL)a5 fullyCreated:(BOOL)a6 markedPurgeable:(BOOL)a7 vectorIndexDrop:(id)a8 forAnalytics:(BOOL)a9
{
  v10 = a6;
  v94 = a5;
  v107 = *MEMORY[0x277D85DE8];
  v12 = a8;
  v13 = [MEMORY[0x277CBEB38] dictionary];
  [v13 setObject:&unk_2846C95D8 forKeyedSubscript:@"indexrebuildcount"];
  v14 = MEMORY[0x277CCABB0];
  v95 = self;
  v15 = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
  v16 = [v14 numberWithInt:protectionClassForAnalytics(v15)];
  [v13 setObject:v16 forKeyedSubscript:@"fileprotection"];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:sRootsInstalled];
  [v13 setObject:v17 forKeyedSubscript:@"rootsinstalled"];

  if (!v12)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithBool:_os_feature_enabled_impl()];
    [v13 setObject:v18 forKeyedSubscript:@"vectorindexon"];

    v19 = rebuildReasonString(v10, a7);
    [v13 setObject:v19 forKeyedSubscript:@"rebuildreason"];

    v20 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [SPConcreteCoreSpotlightIndexer indexLossAnalyticsDictWithPreviousIndexCreationDate:v13 size:? openingInReadOnly:? fullyCreated:? markedPurgeable:? vectorIndexDrop:? forAnalytics:?];
    }
  }

  [v13 setObject:@"2400.14.100" forKeyedSubscript:@"spotlightversion"];
  v21 = [MEMORY[0x277CCABB0] numberWithBool:_os_feature_enabled_impl()];
  [v13 setObject:v21 forKeyedSubscript:@"textsemanticsearchon"];

  v22 = [MEMORY[0x277CCABB0] numberWithBool:_os_feature_enabled_impl()];
  [v13 setObject:v22 forKeyedSubscript:@"embeddingdonationon"];

  v23 = [MEMORY[0x277CBEAA8] date];
  [v23 timeIntervalSince1970];
  v25 = v24;
  v26 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:MDBootTime()];
  [v23 timeIntervalSinceDate:v26];
  v28 = v27;

  if (a9)
  {
    v29 = v25 % 86400;
  }

  else
  {
    v29 = v25;
  }

  v30 = [MEMORY[0x277CCABB0] numberWithLong:v29];
  [v13 setObject:v30 forKeyedSubscript:@"droptime"];

  v31 = [MEMORY[0x277CCABB0] numberWithLong:v28];
  [v13 setObject:v31 forKeyedSubscript:@"timesinceboot"];

  v32 = [MEMORY[0x277CCAC38] processInfo];
  v33 = [v32 processIdentifier];
  v34 = [v32 processName];
  v35 = [MEMORY[0x277CCABB0] numberWithInt:v33];
  [v13 setObject:v35 forKeyedSubscript:@"pid"];

  if (v34)
  {
    v36 = v34;
  }

  else
  {
    v36 = @"unknown";
  }

  [v13 setObject:v36 forKeyedSubscript:@"processname"];
  bzero(&v106, 0x878uLL);
  v37 = [sDelegate indexDirectory];
  v38 = [v37 cStringUsingEncoding:4];

  LODWORD(v37) = statfs(v38, &v106);
  v39 = *__error();
  if (v37)
  {
    v40 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      [SPConcreteCoreSpotlightIndexer indexLossAnalyticsDictWithPreviousIndexCreationDate:v95 size:? openingInReadOnly:? fullyCreated:? markedPurgeable:? vectorIndexDrop:? forAnalytics:?];
    }

    [v13 setObject:0 forKeyedSubscript:@"filesystemtype"];
    [v13 setObject:0 forKeyedSubscript:@"filesystemsize"];
    [v13 setObject:0 forKeyedSubscript:@"filesystemfree"];
    [v13 setObject:0 forKeyedSubscript:@"readonlyfilesystem"];
    [v13 setObject:0 forKeyedSubscript:@"filesystemflags"];
    [v13 setObject:0 forKeyedSubscript:@"supportspsid"];
    [v13 setObject:0 forKeyedSubscript:@"externalvolume"];
    [v13 setObject:0 forKeyedSubscript:@"diskimage"];
  }

  else
  {
    v91 = v39;
    v92 = v32;
    v93 = v23;
    v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:v106.f_fstypename];
    [v13 setObject:v41 forKeyedSubscript:@"filesystemtype"];

    f_bsize = v106.f_bsize;
    f_blocks = v106.f_blocks;
    f_bfree = v106.f_bfree;
    v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:v106.f_mntonname];
    v46 = f_blocks * f_bsize;
    v47 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v46];
    [v13 setObject:v47 forKeyedSubscript:@"filesystemsize"];

    v48 = f_bfree * f_bsize;
    v49 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:f_bfree * f_bsize];
    [v13 setObject:v49 forKeyedSubscript:@"filesystemfree"];

    v50 = [MEMORY[0x277CCABB0] numberWithBool:v106.f_flags & 1];
    [v13 setObject:v50 forKeyedSubscript:@"readonlyfilesystem"];

    v51 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218754;
      v99 = v46;
      v100 = 2048;
      v101 = v48;
      v102 = 1024;
      f_flags = v106.f_flags;
      v104 = 2080;
      v105 = [v45 UTF8String];
      _os_log_impl(&dword_231A35000, v51, OS_LOG_TYPE_DEFAULT, "[IndexLoss] FS (%llu, %llu, 0x%x) mounted at path %s", buf, 0x26u);
    }

    v90 = v45;
    v52 = [MEMORY[0x277CBEBC0] fileURLWithPath:v45];
    if (v52)
    {
      v53 = _CFURLGetVolumePropertyFlags();
      v54 = logForCSLogCategoryIndex();
      v55 = v54;
      v32 = v92;
      v39 = v91;
      if (v53)
      {
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          v56 = [(SPConcreteCoreSpotlightIndexer *)v95 dataclass];
          v57 = [v56 UTF8String];
          *buf = 136315394;
          v99 = v57;
          v100 = 2048;
          v101 = 0;
          _os_log_impl(&dword_231A35000, v55, OS_LOG_TYPE_DEFAULT, "[IndexLoss] (%s) Got volume property flags 0x%llx", buf, 0x16u);
        }

        v58 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:0];
        [v13 setObject:v58 forKeyedSubscript:@"filesystemflags"];

        v59 = [MEMORY[0x277CCABB0] numberWithBool:0];
        [v13 setObject:v59 forKeyedSubscript:@"supportspsid"];

        v60 = [MEMORY[0x277CCABB0] numberWithBool:0];
        [v13 setObject:v60 forKeyedSubscript:@"externalvolume"];

        v61 = [MEMORY[0x277CCABB0] numberWithBool:0];
        [v13 setObject:v61 forKeyedSubscript:@"diskimage"];
      }

      else
      {
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          [SPConcreteCoreSpotlightIndexer indexLossAnalyticsDictWithPreviousIndexCreationDate:size:openingInReadOnly:fullyCreated:markedPurgeable:vectorIndexDrop:forAnalytics:];
        }

        [v13 setObject:0 forKeyedSubscript:@"filesystemflags"];
        [v13 setObject:0 forKeyedSubscript:@"supportspsid"];
        [v13 setObject:0 forKeyedSubscript:@"externalvolume"];
        [v13 setObject:0 forKeyedSubscript:@"diskimage"];
      }

      v23 = v93;
    }

    else
    {
      v62 = logForCSLogCategoryIndex();
      v32 = v92;
      v39 = v91;
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        [SPConcreteCoreSpotlightIndexer indexLossAnalyticsDictWithPreviousIndexCreationDate:v95 size:? openingInReadOnly:? fullyCreated:? markedPurgeable:? vectorIndexDrop:? forAnalytics:?];
      }

      [v13 setObject:0 forKeyedSubscript:@"filesystemflags"];
      [v13 setObject:0 forKeyedSubscript:@"supportspsid"];
      [v13 setObject:0 forKeyedSubscript:@"externalvolume"];
      [v13 setObject:0 forKeyedSubscript:@"diskimage"];
      v23 = v93;
    }
  }

  *__error() = v39;
  if (a3 < 0)
  {
    [v13 setObject:0 forKeyedSubscript:@"droppedindexage"];
  }

  else
  {
    v63 = [MEMORY[0x277CCABB0] numberWithLong:v25 - a3];
    [v13 setObject:v63 forKeyedSubscript:@"droppedindexage"];
  }

  if ((a4 & 0x8000000000000000) == 0)
  {
    v64 = [MEMORY[0x277CCABB0] numberWithLong:?];
    [v13 setObject:v64 forKeyedSubscript:@"droppedindexsize"];

    if (v12)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  [v13 setObject:0 forKeyedSubscript:@"droppedindexsize"];
  if (!v12)
  {
LABEL_35:
    v65 = [MEMORY[0x277CCABB0] numberWithBool:v94];
    [v13 setObject:v65 forKeyedSubscript:@"readonlyopen"];

    [v13 setObject:0 forKeyedSubscript:@"wherecorrupted"];
  }

LABEL_36:
  [v13 setObject:0 forKeyedSubscript:@"previousbuild"];
  [v13 setObject:0 forKeyedSubscript:@"buildbeforeupgrade"];
  v66 = indexHeartbeatPath();
  pthread_rwlock_rdlock(&sIndexHeartbeatLock);
  v67 = [MEMORY[0x277CCAA00] defaultManager];
  v68 = [v67 fileExistsAtPath:v66];

  if (v68)
  {
    v69 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v66];
    v70 = v69;
    if (v69 && ([v69 objectForKeyedSubscript:@"v2"], v71 = objc_claimAutoreleasedReturnValue(), v71, v71))
    {
      v72 = v23;
      v73 = newHeartbeatDict();

      v70 = v73;
    }

    else
    {
      v72 = v23;
    }

    v74 = [v70 objectForKeyedSubscript:@"previousbuild"];
    [v13 setObject:v74 forKeyedSubscript:@"previousbuild"];

    v75 = [v70 objectForKeyedSubscript:@"buildbeforeupgrade"];
    [v13 setObject:v75 forKeyedSubscript:@"buildbeforeupgrade"];

    v23 = v72;
  }

  else
  {
    v70 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      [SPConcreteCoreSpotlightIndexer indexLossAnalyticsDictWithPreviousIndexCreationDate:size:openingInReadOnly:fullyCreated:markedPurgeable:vectorIndexDrop:forAnalytics:];
    }
  }

  pthread_rwlock_unlock(&sIndexHeartbeatLock);
  if (v12)
  {
    v76 = [v12 objectForKeyedSubscript:@"vectorcount"];
    [v13 setObject:v76 forKeyedSubscript:@"vectorcount"];

    v77 = [v12 objectForKeyedSubscript:@"readonly"];
    [v13 setObject:v77 forKeyedSubscript:@"readonly"];

    v78 = [v12 objectForKeyedSubscript:@"prefix"];
    [v13 setObject:v78 forKeyedSubscript:@"prefix"];

    v79 = [v12 objectForKeyedSubscript:@"propertyname"];
    v80 = [v79 integerValue];

    [(SPConcreteCoreSpotlightIndexer *)v95 index];
    v81 = _SIGetFieldNameForId();
    v82 = objc_alloc(MEMORY[0x277CCACA8]);
    if (v81)
    {
      v83 = [v82 initWithFormat:@"%s", v81];
    }

    else
    {
      v83 = [v82 initWithFormat:@"%u", v80];
    }

    v84 = v83;
    [v13 setObject:v83 forKeyedSubscript:@"propertyname"];

    v85 = [v12 objectForKeyedSubscript:@"dropreason"];
    [v13 setObject:v85 forKeyedSubscript:@"dropreason"];

    v86 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      [SPConcreteCoreSpotlightIndexer indexLossAnalyticsDictWithPreviousIndexCreationDate:v95 size:v13 openingInReadOnly:v86 fullyCreated:? markedPurgeable:? vectorIndexDrop:? forAnalytics:?];
    }
  }

  v87 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v13];

  v88 = *MEMORY[0x277D85DE8];

  return v87;
}

- (void)writeIndexLossEventToFile:(id)a3 vector:(BOOL)a4
{
  v4 = a4;
  v46[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:@"droptime"];

    if (v8)
    {
      v9 = [v7 objectForKeyedSubscript:@"droptime"];
      v10 = [v9 longValue];

      v11 = objc_alloc_init(MEMORY[0x277CCA968]);
      [v11 setDateFormat:@"yyyy-MM-dd-HH-mm-ss"];
      v12 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:v10];
      v43 = [v11 stringFromDate:v12];

      v13 = [MEMORY[0x277CCAC38] processInfo];
      v42 = [v13 processName];

      v14 = getpid();
      v15 = MEMORY[0x277CCACA8];
      v16 = NSHomeDirectory();
      v17 = [v15 stringWithFormat:@"%@/Library/Logs/CrashReporter/DiagnosticLogs/Search", v16];

      v18 = [MEMORY[0x277CCAA00] defaultManager];
      v19 = [v18 fileExistsAtPath:v17];

      if ((v19 & 1) == 0)
      {
        v20 = v4;
        v21 = [MEMORY[0x277CCAA00] defaultManager];
        v44 = 0;
        v22 = [v21 createDirectoryAtPath:v17 withIntermediateDirectories:1 attributes:0 error:&v44];
        v23 = v44;

        if ((v22 & 1) == 0)
        {
          v24 = logForCSLogCategoryIndex();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            [SPConcreteCoreSpotlightIndexer writeIndexLossEventToFile:vector:];
          }
        }

        v4 = v20;
      }

      v41 = v11;
      if (v4)
      {
        v25 = @"vector_";
      }

      else
      {
        v25 = &stru_2846BD100;
      }

      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/spotlight_%@index_drop.%@.%d.%@.%@.txt", v17, v25, v42, v14, self->_dataclass, v43];
      v27 = [MEMORY[0x277CCAA00] defaultManager];
      v28 = [v27 fileExistsAtPath:v26];

      if (v28)
      {
        v40 = v7;
        v29 = 0;
        do
        {
          v30 = v26;
          v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/spotlight_%@index_drop.%@.%d.%@.%@.%03d.txt", v17, v25, v42, v14, self->_dataclass, v43, v29];

          v31 = [MEMORY[0x277CCAA00] defaultManager];
          LODWORD(v30) = [v31 fileExistsAtPath:v26];

          if (!v30)
          {
            v7 = v40;
            goto LABEL_24;
          }

          v29 = (v29 + 1);
        }

        while (v29 != 100);
        v32 = logForCSLogCategoryIndex();
        v7 = v40;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          [SPConcreteCoreSpotlightIndexer writeIndexLossEventToFile:vector:];
        }

        v33 = v41;
      }

      else
      {
LABEL_24:
        v34 = [MEMORY[0x277CCAA00] defaultManager];
        v45 = *MEMORY[0x277CCA1B0];
        v46[0] = *MEMORY[0x277CCA1A0];
        v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:&v45 count:1];
        [v34 createFileAtPath:v26 contents:0 attributes:v35];

        v36 = [MEMORY[0x277CCAA00] defaultManager];
        LODWORD(v35) = [v36 fileExistsAtPath:v26];

        if (v35)
        {
          v37 = [MEMORY[0x277CBEBC0] fileURLWithPath:v26];
          [v7 writeToURL:v37 error:0];

          v38 = logForCSLogCategoryIndex();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            [SPConcreteCoreSpotlightIndexer writeIndexLossEventToFile:vector:];
          }

          v33 = v41;
        }

        else
        {
          v38 = logForCSLogCategoryIndex();
          v33 = v41;
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            [SPConcreteCoreSpotlightIndexer writeIndexLossEventToFile:vector:];
          }
        }
      }
    }

    else
    {
      v33 = logForCSLogCategoryIndex();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        [SPConcreteCoreSpotlightIndexer writeIndexLossEventToFile:vector:];
      }
    }
  }

  else
  {
    v33 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [SPConcreteCoreSpotlightIndexer writeIndexLossEventToFile:vector:];
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (id)vectorIndexDropsPath
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(SPConcreteCoreSpotlightIndexer *)self _indexPath];
  v5 = [v3 initWithFormat:@"%@/vectorIndexDrops.plist", v4];

  return v5;
}

- (id)trialIntentionalDropUUID
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [sDelegate indexDirectory];
  v5 = [v3 initWithFormat:@"%@/TrialResets", v4];

  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v6 fileExistsAtPath:v5];

  if (v7)
  {
    v8 = [MEMORY[0x277CCAA00] defaultManager];
    v21 = 0;
    v9 = [v8 contentsOfDirectoryAtPath:v5 error:&v21];
    v10 = v21;

    if (v10)
    {
      v11 = logForCSLogCategoryIndex();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [SPConcreteCoreSpotlightIndexer trialIntentionalDropUUID];
      }
    }

    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__0;
    v19 = __Block_byref_object_dispose__0;
    v20 = 0;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __58__SPConcreteCoreSpotlightIndexer_trialIntentionalDropUUID__block_invoke;
    v14[3] = &unk_278934BB0;
    v14[4] = self;
    v14[5] = &v15;
    [v9 enumerateObjectsUsingBlock:v14];
    v12 = v16[5];
    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __58__SPConcreteCoreSpotlightIndexer_trialIntentionalDropUUID__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [*(a1 + 32) dataclass];
  v6 = MEMORY[0x277CCACA8];
  v12 = v4;
  v7 = [v6 alloc];
  v8 = [sDelegate indexDirectory];
  v9 = [v7 initWithFormat:@"%@/TrialResets/%@/%@", v8, v12, v5];

  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = [v10 fileExistsAtPath:v9];

  if ((v11 & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

+ (id)fetchItemForURL:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__0;
  v23 = __Block_byref_object_dispose__0;
  v24 = 0;
  v4 = [MEMORY[0x277CC6408] defaultManager];
  v5 = v4;
  if (v3 && v4)
  {
    v6 = dispatch_group_create();
    dispatch_group_enter(v6);
    add = atomic_fetch_add(&sFetchID, 1u);
    v8 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = v3;
      v10 = [v3 fileSystemRepresentation];
      *buf = 67109378;
      v26 = add;
      v27 = 2080;
      v28 = v10;
      _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_INFO, "[%d] fetching %s", buf, 0x12u);
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __50__SPConcreteCoreSpotlightIndexer_fetchItemForURL___block_invoke;
    v15[3] = &unk_278934BD8;
    v18 = add;
    v17 = &v19;
    v11 = v6;
    v16 = v11;
    [v5 fetchItemForURL:v3 completionHandler:v15];
    dispatch_group_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  }

  v12 = v20[5];

  _Block_object_dispose(&v19, 8);
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

void __50__SPConcreteCoreSpotlightIndexer_fetchItemForURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = logForCSLogCategoryIndex();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __50__SPConcreteCoreSpotlightIndexer_fetchItemForURL___block_invoke_cold_1(a1);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 48);
      v10 = [v5 itemIdentifier];
      v14[0] = 67109378;
      v14[1] = v9;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_INFO, "[%d] fetched %@", v14, 0x12u);
    }

    v11 = *(*(a1 + 40) + 8);
    v12 = v5;
    v8 = *(v11 + 40);
    *(v11 + 40) = v12;
  }

  dispatch_group_leave(*(a1 + 32));
  v13 = *MEMORY[0x277D85DE8];
}

void __76__SPConcreteCoreSpotlightIndexer_fetchParentsForItemID_recursively_timeout___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v64 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  atomic_fetch_add(fetchParentsForItemID_recursively_timeout__sFetchParentsForItemIDOutstanding, 0xFFFFFFFF);
  if (v6)
  {
    v7 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __76__SPConcreteCoreSpotlightIndexer_fetchParentsForItemID_recursively_timeout___block_invoke_cold_1(a1);
    }

    goto LABEL_21;
  }

  v8 = [v5 count];
  if (v8)
  {
    v52 = &v46;
    v51 = 8 * v8;
    v9 = &v46 - ((8 * v8 + 23) & 0xFFFFFFFFFFFFFFF0);
    v50 = v8 + 1;
    bzero(v9, 8 * (v8 + 1));
    v57 = 0u;
    v56 = 0u;
    v55 = 0u;
    v54 = 0u;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v54 objects:v63 count:16];
    if (v11)
    {
      v12 = v11;
      v47 = 0;
      v48 = a1;
      v49 = v5;
      v13 = 0;
      v14 = 0;
      v15 = *v55;
      v16 = *MEMORY[0x277CC6348];
      v53 = v10;
      do
      {
        v17 = 0;
        v18 = v14;
        do
        {
          if (*v55 != v15)
          {
            objc_enumerationMutation(v53);
          }

          v19 = *(*(&v54 + 1) + 8 * v17);
          v20 = [v19 itemID];
          v21 = [v20 coreSpotlightIdentifier];
          v14 = v18 + 1;
          v22 = *&v9[8 * v18];
          *&v9[8 * v18] = v21;

          v23 = [v19 itemID];
          v24 = [v23 identifier];
          v25 = [v24 isEqualToString:v16];

          v13 |= v25;
          ++v17;
          v18 = v14;
        }

        while (v12 != v17);
        v26 = v53;
        v12 = [v53 countByEnumeratingWithState:&v54 objects:v63 count:16];
      }

      while (v12);

      v5 = v49;
      a1 = v48;
      v6 = v47;
      if (v13)
      {
        goto LABEL_17;
      }
    }

    else
    {

      v14 = 0;
      v16 = *MEMORY[0x277CC6348];
    }

    v34 = objc_alloc(MEMORY[0x277CC6400]);
    v35 = [*(a1 + 32) providerDomainID];
    v36 = [v34 initWithProviderDomainID:v35 itemIdentifier:v16];

    v37 = [v36 coreSpotlightIdentifier];
    v38 = *&v9[8 * v14];
    *&v9[8 * v14] = v37;

    ++v14;
LABEL_17:
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:v14];
    v40 = *(*(a1 + 48) + 8);
    v41 = *(v40 + 40);
    *(v40 + 40) = v39;

    v42 = v51;
    if (v50)
    {
      do
      {

        v42 -= 8;
      }

      while (v42 != -8);
    }

    goto LABEL_19;
  }

  v27 = objc_alloc(MEMORY[0x277CC6400]);
  v28 = [*(a1 + 32) providerDomainID];
  v29 = [v27 initWithProviderDomainID:v28 itemIdentifier:*MEMORY[0x277CC6348]];

  v30 = [v29 coreSpotlightIdentifier];
  v62 = v30;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v62 count:1];
  v32 = *(*(a1 + 48) + 8);
  v33 = *(v32 + 40);
  *(v32 + 40) = v31;

LABEL_19:
  v7 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v43 = *(a1 + 56);
    v44 = [*(*(*(a1 + 48) + 8) + 40) componentsJoinedByString:@" "];
    *buf = 67109378;
    v59 = v43;
    v60 = 2112;
    v61 = v44;
    _os_log_impl(&dword_231A35000, v7, OS_LOG_TYPE_INFO, "[%d] fetched parents %@", buf, 0x12u);
  }

LABEL_21:

  dispatch_group_leave(*(a1 + 40));
  v45 = *MEMORY[0x277D85DE8];
}

- (void)_sendIndexDropABCEvent:(BOOL)a3 markedPurgeable:(BOOL)a4
{
  v5 = a3;
  v7 = [MEMORY[0x277CCAC38] processInfo];
  v8 = [v7 processName];
  v9 = v8;
  v10 = @"unknown";
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  v15 = objc_alloc_init(MEMORY[0x277D6AFC8]);
  dataclass = self->_dataclass;
  v13 = rebuildReasonString(v5, a4);
  v14 = [v15 signatureWithDomain:@"SpotlightIndex" type:@"IndexCorruption" subType:dataclass subtypeContext:v13 detectedProcess:v11 triggerThresholdValues:0];

  [v15 snapshotWithSignature:v14 delay:0 events:0 payload:0 actions:&__block_literal_global_939 reply:10.0];
}

void __73__SPConcreteCoreSpotlightIndexer__sendIndexDropABCEvent_markedPurgeable___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D6B198]];
  v4 = [v3 BOOLValue];

  if ((v4 & 1) == 0)
  {
    v5 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __73__SPConcreteCoreSpotlightIndexer__sendIndexDropABCEvent_markedPurgeable___block_invoke_cold_1(v2);
    }
  }
}

void __103__SPConcreteCoreSpotlightIndexer__saveCorruptIndexWithPath_shouldSendABC_fullyCreated_markedPurgeable___block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = opendir([*(a1 + 32) UTF8String]);
  if (v3)
  {
    v4 = v3;
    for (i = readdir(v3); i; i = readdir(v4))
    {
      d_name = i->d_name;
      if (i->d_name[0] != 46 || i->d_name[1] && (i->d_name[1] != 46 || i->d_name[2]))
      {
        memset(&v40, 0, sizeof(v40));
        v7 = dirfd(v4);
        if (fstatat(v7, d_name, &v40, 32) < 0)
        {
          v10 = logForCSLogCategoryIndex();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v28 = *(a1 + 40);
            v29 = __error();
            v30 = strerror(*v29);
            *buf = 67109634;
            v42 = v28;
            v43 = 2080;
            v44 = d_name;
            v45 = 2080;
            v46 = v30;
            _os_log_error_impl(&dword_231A35000, v10, OS_LOG_TYPE_ERROR, "(%d) Failed to obtain index file info:%s (%s)", buf, 0x1Cu);
          }
        }

        else
        {
          if ((v40.st_mode & 0xF000) != 0x4000)
          {
            st_size = v40.st_size;
            v16 = dirfd(v4);
            v17 = openat(v16, d_name, 0x8000);
            if (v17 < 0)
            {
              v25 = logForCSLogCategoryIndex();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                v32 = *(a1 + 40);
                v33 = __error();
                v34 = strerror(*v33);
                *buf = 67109890;
                v42 = v32;
                v43 = 2080;
                v44 = d_name;
                v45 = 2048;
                v46 = st_size;
                v47 = 2080;
                v48 = v34;
                _os_log_error_impl(&dword_231A35000, v25, OS_LOG_TYPE_ERROR, "(%d) Failed to open index file:%s[%lld] (%s)", buf, 0x26u);
              }

              if (!strncmp(d_name, "130162031.fixed", 0xFuLL))
              {
                v26 = logForCSLogCategoryIndex();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                {
                  v35 = *(a1 + 40);
                  *buf = 67109120;
                  v42 = v35;
                  _os_log_error_impl(&dword_231A35000, v26, OS_LOG_TYPE_ERROR, "(%d) Deleting 130162031.fixed", buf, 8u);
                }

                bzero(buf, 0x400uLL);
                snprintf(buf, 0x400uLL, "%s/130162031.fixed", [*v2 UTF8String]);
                unlink(buf);
              }
            }

            else
            {
              v18 = v17;
              v38 = 65541;
              v19 = ffsctl(v17, 0xC0084A44uLL, &v38, 0);
              v20 = logForCSLogCategoryIndex();
              v21 = v20;
              if (v19)
              {
                if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                {
                  v22 = *(a1 + 40);
                  v23 = __error();
                  v24 = strerror(*v23);
                  *buf = 67109890;
                  v42 = v22;
                  v43 = 2080;
                  v44 = d_name;
                  v45 = 2048;
                  v46 = st_size;
                  v47 = 2080;
                  v48 = v24;
                  _os_log_error_impl(&dword_231A35000, v21, OS_LOG_TYPE_ERROR, "(%d) Failed to mark index file purgable:%s[%lld] (%s)", buf, 0x26u);
                }
              }

              else if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                v27 = *(a1 + 40);
                *buf = 67109634;
                v42 = v27;
                v43 = 2080;
                v44 = d_name;
                v45 = 2048;
                v46 = st_size;
                _os_log_impl(&dword_231A35000, v21, OS_LOG_TYPE_DEFAULT, "(%d) Marked index file purgable:%s[%lld]", buf, 0x1Cu);
              }

              close(v18);
            }

            continue;
          }

          v8 = *v2;
          v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:d_name];
          v10 = [v8 stringByAppendingPathComponent:v9];

          v11 = [MEMORY[0x277CCAA00] defaultManager];
          v39 = 0;
          v12 = [v11 removeItemAtPath:v10 error:&v39];
          v13 = v39;

          if ((v12 & 1) == 0)
          {
            v14 = logForCSLogCategoryIndex();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              v31 = *(a1 + 40);
              *buf = 67109634;
              v42 = v31;
              v43 = 2112;
              v44 = v10;
              v45 = 2112;
              v46 = v13;
              _os_log_error_impl(&dword_231A35000, v14, OS_LOG_TYPE_ERROR, "(%d) Failed to remove index directory:%@ (%@)", buf, 0x1Cu);
            }
          }
        }
      }
    }

    closedir(v4);
  }

  else
  {
    v36 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      __103__SPConcreteCoreSpotlightIndexer__saveCorruptIndexWithPath_shouldSendABC_fullyCreated_markedPurgeable___block_invoke_cold_1(v2);
    }
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (BOOL)creationTouchFileExists
{
  v2 = [(SPConcreteCoreSpotlightIndexer *)self _indexPath];
  v3 = [v2 stringByAppendingPathComponent:@"creationTouchFile"];
  v4 = [v3 fileSystemRepresentation];

  if (!v4)
  {
    return 0;
  }

  v5 = open(v4, 0x8000);
  if (v5 < 0)
  {
    return 0;
  }

  close(v5);
  return 1;
}

- (int)creationTouchFileCreate
{
  v2 = [(SPConcreteCoreSpotlightIndexer *)self _indexPath];
  v3 = [v2 stringByAppendingPathComponent:@"creationTouchFile"];
  v4 = [v3 fileSystemRepresentation];

  if (!v4)
  {
    return 0;
  }

  v5 = open(v4, 512, 384);
  if ((v5 & 0x80000000) == 0)
  {
    close(v5);
    return 0;
  }

  return *__error();
}

- (void)creationTouchFileUnlink
{
  v2 = [(SPConcreteCoreSpotlightIndexer *)self _indexPath];
  v3 = [v2 stringByAppendingPathComponent:@"creationTouchFile"];
  v4 = [v3 fileSystemRepresentation];

  if (v4)
  {

    unlink(v4);
  }
}

- (BOOL)unpurgeOnceTouchFileExists
{
  v2 = [(SPConcreteCoreSpotlightIndexer *)self _indexPath];
  v3 = [v2 stringByAppendingPathComponent:@"unpurgeTouchFile"];
  v4 = [v3 fileSystemRepresentation];

  if (!v4)
  {
    return 0;
  }

  v5 = open(v4, 0x8000);
  if (v5 < 0)
  {
    return 0;
  }

  close(v5);
  return 1;
}

- (int)unpurgeOnceTouchFileCreate
{
  v2 = [(SPConcreteCoreSpotlightIndexer *)self _indexPath];
  v3 = [v2 stringByAppendingPathComponent:@"unpurgeTouchFile"];
  v4 = [v3 fileSystemRepresentation];

  if (!v4)
  {
    return 0;
  }

  v5 = open(v4, 512, 384);
  if ((v5 & 0x80000000) == 0)
  {
    close(v5);
    return 0;
  }

  return *__error();
}

- (int)openIndexForUpgradeSynchronous:(BOOL)a3
{
  v53 = *MEMORY[0x277D85DE8];
  if ((sShuttingDown & 1) == 0)
  {
    if (self->_index)
    {
      v3 = 0;
      goto LABEL_50;
    }

    v5 = a3;
    v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:MDBootTime()];
    v7 = [(SPConcreteCoreSpotlightIndexer *)self owner];
    v46 = 0;
    v8 = [(SPConcreteCoreSpotlightIndexer *)self _indexPath];
    bzero(buffer, 0x400uLL);
    if (CFStringGetFileSystemRepresentation(v8, buffer, 1024))
    {
      v9 = open(buffer, 0x8000);
      v10 = v9;
      if ((v9 & 0x80000000) == 0)
      {
        close(v9);
        if ([(SPConcreteCoreSpotlightIndexer *)self creationTouchFileExists])
        {
          v11 = logForCSLogCategoryIndex();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            [SPConcreteCoreSpotlightIndexer openIndexForUpgradeSynchronous:?];
          }

          v3 = -1;
LABEL_48:

          goto LABEL_49;
        }

LABEL_23:
        v18 = [&__block_literal_global_958 copy];
        v19 = [&__block_literal_global_961 copy];
        v20 = [&__block_literal_global_963 copy];
        if (updatedFrom2024Seed_onceToken != -1)
        {
          [SPConcreteCoreSpotlightIndexer openIndexForUpgradeSynchronous:];
        }

        if (updatedFrom2024Seed_updatedFromSeed == 1)
        {
          v48 = @"kIndexOptionResetForLargePostings";
          v49 = *MEMORY[0x277CBED28];
          v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
          if (v10 < 0)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v21 = 0;
          if (v10 < 0)
          {
            goto LABEL_31;
          }
        }

        cancelPtr = self->_cancelPtr;
        v3 = SIOpenIndexAtPathWithCallbacks();
        if ((v3 & 0x80000000) == 0)
        {
          SISetFileProvidersCallbacks();
          goto LABEL_37;
        }

LABEL_31:
        if ([(SPConcreteCoreSpotlightIndexer *)self creationTouchFileCreate])
        {
          v23 = logForCSLogCategoryIndex();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            [SPConcreteCoreSpotlightIndexer openIndexForUpgradeSynchronous:];
          }
        }

        v24 = self->_cancelPtr;
        v3 = SIOpenIndexAtPathWithCallbacks();
        SISetFileProvidersCallbacks();
        if ((v3 & 0x80000000) == 0)
        {
          SISyncIndex();
          [(SPConcreteCoreSpotlightIndexer *)self creationTouchFileUnlink];
        }

LABEL_37:

        if ((v3 & 0x80000000) == 0)
        {
          v11 = dispatch_group_create();
          self->_index = v46;
          SISetAccumulatedWorkBoundaryCrossCallback();
          index = self->_index;
          protectionClassIntValue(self->_dataclass);
          _SISetProtectionClass();
          v26 = logForCSLogCategoryIndex();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            dataclass = self->_dataclass;
            createCount = self->_createCount;
            buf.st_dev = 67109634;
            *&buf.st_mode = v3;
            LOWORD(buf.st_ino) = 2112;
            *(&buf.st_ino + 2) = dataclass;
            HIWORD(buf.st_uid) = 2048;
            *&buf.st_gid = createCount;
            _os_log_impl(&dword_231A35000, v26, OS_LOG_TYPE_INFO, "Index open, result:%d, dataclass:%@, , createCount:%lu", &buf, 0x1Cu);
          }

          if (v3 == 1)
          {
            v38 = logForCSLogCategoryIndex();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              buf.st_dev = 138412546;
              *&buf.st_mode = @"com.apple.mobilemail.reindexVersion";
              WORD2(buf.st_ino) = 2112;
              *(&buf.st_ino + 6) = @"599";
              _os_log_impl(&dword_231A35000, v38, OS_LOG_TYPE_INFO, "Bootstrapping %@ %@", &buf, 0x16u);
            }

            [(SPConcreteCoreSpotlightIndexer *)self setProperty:@"599" forKey:@"com.apple.mobilemail.reindexVersion" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95F0 forKey:@"kSPCoalescedRanking" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C9608 forKey:@"kSPEmailLocalParts" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C9620 forKey:@"kSPHashedContainers" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C9608 forKey:@"kSPGroups" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95D8 forKey:@"kSPNotes" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95D8 forKey:@"kSPIndexRankingDate" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C9638 forKey:@"kSPDerivedIsMe" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C9638 forKey:@"kSPDerivedIsMeNot" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C9638 forKey:@"kSPDerivedIsMeTextContentMatch" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C9638 forKey:@"kSPDerivedIsMeTextContentMatchNot" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95D8 forKey:@"kSPDerivedIsMeRankingSpan" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95D8 forKey:@"kSPDerivedIsMeRankingSpanNot" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95D8 forKey:@"kSPDerivedIsMeRankingToken" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95D8 forKey:@"kSPDerivedIsMeRankingTokenNot" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C9638 forKey:@"kSPDerivedIsMeRankingOCR" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C9638 forKey:@"kSPDerivedIsMeRankingOCRNot" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C9638 forKey:@"kSPDerivedIsMeRankingOCRTextContentMatch" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C9638 forKey:@"kSPDerivedIsMeRankingOCRTextContentMatchNot" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95D8 forKey:@"kSPDerivedIsMeRankingPreExtraction" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95D8 forKey:@"kSPDerivedIsMeRankingPreExtractionNot" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95A8 forKey:@"kSPDerivedIsMeRanking" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95A8 forKey:@"kSPDerivedIsMeRankingNot" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95A8 forKey:@"kSPDerivedIsMeRankingTextContentMatch" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95A8 forKey:@"kSPDerivedIsMeRankingTextContentMatchNot" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95A8 forKey:@"kSPDerivedIsMeRankingTextContentMatchNot2" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95A8 forKey:@"kSPDerivedIsFromMe" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95A8 forKey:@"kSPDerivedIsFromMeNot" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95A8 forKey:@"kSPDerivedIsFromMeRanking" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95A8 forKey:@"kSPDerivedIsFromMeRankingNot" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95A8 forKey:@"kSPDerivedIsToMe" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95A8 forKey:@"kSPDerivedIsToMeNot" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95A8 forKey:@"kSPDerivedIsToMeRanking" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95A8 forKey:@"kSPDerivedIsToMeRankingNot" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95C0 forKey:@"PHOTOS_INDEX_VERSION_CHANGE" sync:0];
            if (sUsePriorityIndex == 1 && [(NSString *)self->_dataclass isEqualToString:*MEMORY[0x277CCA1A0]])
            {
              [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C9590 forKey:@"kSPPriorityIndexVersion" sync:0];
            }

            [(SPConcreteCoreSpotlightIndexer *)self setProperty:v6 forKey:@"DeviceBootTime" sync:0];
            v31 = logForCSLogCategoryDefault();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              buf.st_dev = 138412290;
              *&buf.st_mode = v6;
              _os_log_impl(&dword_231A35000, v31, OS_LOG_TYPE_DEFAULT, "Set BootTimeDate %@ (initial creation)", &buf, 0xCu);
            }
          }

          else
          {
            if (v3 == 2)
            {
              [(SPConcreteCoreSpotlightIndexer *)self dirty:0];
            }

            v29 = self->_dataclass;
            dispatch_group_enter(v11);
            objc_initWeak(&buf, self);
            v30 = self->_index;
            v39 = MEMORY[0x277D85DD0];
            v40 = 3221225472;
            v41 = __65__SPConcreteCoreSpotlightIndexer_openIndexForUpgradeSynchronous___block_invoke_967;
            v42 = &unk_278934CB0;
            v31 = v29;
            v43 = v31;
            v44 = v11;
            objc_copyWeak(&v45, &buf);
            SISynchedOpWithBlock(v30, 2, &v39);
            objc_destroyWeak(&v45);

            objc_destroyWeak(&buf);
          }

          memset(&buf, 0, sizeof(buf));
          if (stat(buffer, &buf))
          {
            tv_sec = -1;
          }

          else
          {
            tv_sec = buf.st_birthtimespec.tv_sec;
          }

          [(SPConcreteCoreSpotlightIndexer *)self writeIndexCreationDate:tv_sec, v39, v40, v41, v42];
          self->_aggregateWipeCount = [(SPConcreteCoreSpotlightIndexer *)self getAggregateIndexWipeCount];
          v33 = [MEMORY[0x277CBEAA8] date];
          [v33 timeIntervalSince1970];
          [(SPConcreteCoreSpotlightIndexer *)self writeIndexSuccessfulOpenDate:v34];

          v35 = self->_index;
          [(SPConcreteCoreSpotlightIndexer *)self writeSDBObjectCount:SIGetObjectCount()];
          dispatch_group_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
          goto LABEL_48;
        }

LABEL_49:

        goto LABEL_50;
      }

      if (v5)
      {
        v50 = *MEMORY[0x277CCA1B0];
        p_dataclass = &self->_dataclass;
        if (([(NSString *)self->_dataclass isEqual:@"Priority"]& 1) != 0 || sUseMailIndex == 1 && ([(NSString *)*p_dataclass isEqual:@"MobileMailIndex"]& 1) != 0)
        {
          v13 = MEMORY[0x277CCA1A0];
        }

        else
        {
          v13 = &self->_dataclass;
        }

        v51 = *v13;
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
        v15 = [MEMORY[0x277CCAA00] defaultManager];
        [v15 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:v14 error:0];

        v16 = logForCSLogCategoryIndex();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = *p_dataclass;
          buf.st_dev = 138412290;
          *&buf.st_mode = v17;
          _os_log_impl(&dword_231A35000, v16, OS_LOG_TYPE_INFO, "No index for for dataclass:%@ - creating", &buf, 0xCu);
        }

        if ([(NSString *)*p_dataclass isEqualToString:*MEMORY[0x277CCA190]])
        {
          _SIChangeProtectionClassForFilesInDirectory();
        }

        goto LABEL_23;
      }
    }

    v3 = -1;
    goto LABEL_49;
  }

  v3 = -1;
LABEL_50:
  v36 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t __65__SPConcreteCoreSpotlightIndexer_openIndexForUpgradeSynchronous___block_invoke(uint64_t a1, uint64_t a2)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = [SPConcreteCoreSpotlightIndexer fetchItemForURL:a2];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 providerID];
    if (v4)
    {
      v5 = [v3 itemID];
      v6 = [v5 coreSpotlightIdentifier];

      if (v6)
      {
        v10[0] = v4;
        v10[1] = v6;
        v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

id __65__SPConcreteCoreSpotlightIndexer_openIndexForUpgradeSynchronous___block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  if (a2 && a4)
  {
    v9 = *MEMORY[0x277CC62F8];
    if (a3)
    {
      v9 = a3;
    }

    v10 = MEMORY[0x277CC6400];
    v11 = v9;
    v12 = a2;
    v13 = [[v10 alloc] initWithProviderID:v12 domainIdentifier:v11 coreSpotlightIdentifier:a4];

    v5 = [SPConcreteCoreSpotlightIndexer fetchParentsForItemID:v13 recursively:0 timeout:a5];
  }

  v14 = [v5 firstObject];

  return v14;
}

id __65__SPConcreteCoreSpotlightIndexer_openIndexForUpgradeSynchronous___block_invoke_3(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  if (a2 && a4)
  {
    v9 = *MEMORY[0x277CC62F8];
    if (a3)
    {
      v9 = a3;
    }

    v10 = MEMORY[0x277CC6400];
    v11 = v9;
    v12 = a2;
    v13 = [[v10 alloc] initWithProviderID:v12 domainIdentifier:v11 coreSpotlightIdentifier:a4];

    v5 = [SPConcreteCoreSpotlightIndexer fetchParentsForItemID:v13 recursively:1 timeout:a5];
  }

  v14 = v5;

  return v14;
}

void __65__SPConcreteCoreSpotlightIndexer_openIndexForUpgradeSynchronous___block_invoke_967(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "finish-draining-journal, for :%@", &v5, 0xCu);
  }

  dispatch_group_leave(*(a1 + 40));
  v4 = *MEMORY[0x277D85DE8];
}

uint64_t __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = sIndexQueue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_2;
    v13[3] = &unk_278934CD8;
    v13[4] = WeakRetained;
    v14 = v7;
    v15 = a3;
    v16 = a2;
    v11 = _setup_block(v13, 0, 6486);
    dispatch_async(v10, v11);
  }

  return 0;
}

void __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_3()
{
  v0 = objc_alloc_init(_SPBucketSet);
  v1 = buckets;
  buckets = v0;

  openIndex_shouldReindexAll_readOnly_forcePC__lastTime = CFAbsoluteTimeGetCurrent();
}

void __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, void *a7)
{
  v48 = *MEMORY[0x277D85DE8];
  v13 = a2;
  v14 = a7;
  v15 = [v13 hasPrefix:@"com.apple."];
  if (a3)
  {
    v16 = 0;
    v17 = 0;
  }

  else
  {
    v18 = [buckets valueForKey:v13];
    v16 = v18 < bulk_budget_threshold;
    v17 = v16;
  }

  v41 = v16;
  v40 = 0;
  Current = 0.0;
  if (a4 && (sTurboMode & 1) == 0)
  {
    buf[0] = 0;
    v39 = 0;
    Current = CFAbsoluteTimeGetCurrent();
    [*(a1 + 32) checkAdmission:v13 background:a3 didBeginThrottle:&v39 + 1 didEndThrottle:&v39 live:&v41 slow:&v40 memoryPressure:buf];
  }

  duet_log_activity_start(1);
  v14[2](v14);

  duet_log_activity_stop();
  if (a4 && (sTurboMode & 1) == 0 && v40 == 1)
  {
    v20 = CFAbsoluteTimeGetCurrent() - Current;
    v21 = 0.00999999978;
    v22 = v20 * 10.0 + 0.00999999978;
    v23 = 20.0;
    if (a6 >= 100001)
    {
      v23 = a6 / 100000.0 * 20.0;
    }

    if (v22 >= v23)
    {
      v22 = v23;
    }

    if (v22 >= 0.0)
    {
      v21 = v22;
    }

    if (gIsSystemOnBattery)
    {
      v24 = v21;
    }

    else
    {
      v24 = v21 * 0.5;
    }

    if (v24 > 0.0)
    {
      usleep((v24 * 1000000.0));
      v25 = logForCSLogCategoryIndex();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = "live";
        *buf = 136315650;
        if (a3)
        {
          v26 = "background";
        }

        v43 = v26;
        v44 = 2112;
        v45 = v13;
        v46 = 2048;
        v47 = v24;
        _os_log_impl(&dword_231A35000, v25, OS_LOG_TYPE_INFO, "Slowed down %s journal playback for %@ by %f s", buf, 0x20u);
      }
    }
  }

  v27 = v17 | 2;
  if (!v15)
  {
    v27 = v17;
  }

  v28 = sIndexQueue;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_985;
  v33[3] = &unk_278934D28;
  v29 = *(a1 + 32);
  v35 = *(a1 + 40);
  v36 = a5;
  v38 = a3;
  v33[4] = v29;
  v34 = v13;
  v37 = v27;
  v30 = v13;
  v31 = _setup_block(v33, 0, 6579);
  dispatch_async(v28, v31);

  v32 = *MEMORY[0x277D85DE8];
}

void __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_985(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) += *(a1 + 56);
  if (*(*(*(a1 + 48) + 8) + 24) >= 0x2711uLL)
  {
    v2 = dispatch_group_create();
    [*(a1 + 32) commitUpdates:v2];
    v3 = _setup_block(&__block_literal_global_988, 0, 6557);
    dispatch_group_notify(v2, MEMORY[0x277D85CD0], v3);

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  v4 = *&openIndex_shouldReindexAll_readOnly_forcePC__lastTime;
  Current = CFAbsoluteTimeGetCurrent();
  if (Current > v4 + *&decay_time)
  {
    [buckets decay:((Current - *&openIndex_shouldReindexAll_readOnly_forcePC__lastTime) * bulk_budget_threshold / (*&decay_time * *&decay_denominator))];
    openIndex_shouldReindexAll_readOnly_forcePC__lastTime = *&Current;
  }

  if ((*(a1 + 68) & 1) != 0 || !*(a1 + 40) || ([*(a1 + 32) owner], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isForegroundFileProviderBundleID:", *(a1 + 40)), v6, (v7 & 1) == 0))
  {
    openIndex_shouldReindexAll_readOnly_forcePC__totalCost[*(a1 + 64)] += *(a1 + 56);
    v8 = *(a1 + 40);
    [buckets addValue:? forKey:?];
    v9 = *(a1 + 64);
    v10 = openIndex_shouldReindexAll_readOnly_forcePC__totalCost[v9];
    if (v10 - openIndex_shouldReindexAll_readOnly_forcePC__lastReport[v9] > budget_check_threshold)
    {
      check_admission[v9] = 1;
      openIndex_shouldReindexAll_readOnly_forcePC__lastReport[v9] = v10;
    }
  }
}

void __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_2_986()
{
  v0 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_231A35000, v0, OS_LOG_TYPE_INFO, "commitUpdates completed.", v1, 2u);
  }
}

uint64_t __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_2_992(uint64_t a1, uint64_t a2)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = [SPConcreteCoreSpotlightIndexer fetchItemForURL:a2];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 providerID];
    if (v4)
    {
      v5 = [v3 itemID];
      v6 = [v5 coreSpotlightIdentifier];

      if (v6)
      {
        v10[0] = v4;
        v10[1] = v6;
        v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

id __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_3_995(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  if (a2 && a4)
  {
    v9 = *MEMORY[0x277CC62F8];
    if (a3)
    {
      v9 = a3;
    }

    v10 = MEMORY[0x277CC6400];
    v11 = v9;
    v12 = a2;
    v13 = [[v10 alloc] initWithProviderID:v12 domainIdentifier:v11 coreSpotlightIdentifier:a4];

    v5 = [SPConcreteCoreSpotlightIndexer fetchParentsForItemID:v13 recursively:0 timeout:a5];
  }

  v14 = [v5 firstObject];

  return v14;
}

id __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_4_998(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  if (a2 && a4)
  {
    v9 = *MEMORY[0x277CC62F8];
    if (a3)
    {
      v9 = a3;
    }

    v10 = MEMORY[0x277CC6400];
    v11 = v9;
    v12 = a2;
    v13 = [[v10 alloc] initWithProviderID:v12 domainIdentifier:v11 coreSpotlightIdentifier:a4];

    v5 = [SPConcreteCoreSpotlightIndexer fetchParentsForItemID:v13 recursively:1 timeout:a5];
  }

  v14 = v5;

  return v14;
}

void __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_1030(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) _expireCorruptIndexFilesWithPath:*(a1 + 40) keepLatest:1];

  objc_autoreleasePoolPop(v2);
}

void __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_2_1031(uint64_t a1, uint64_t a2, int a3)
{
  v23 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (a3 || !WeakRetained)
  {
    v10 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(*(a1 + 32) + 192);
      v12 = @"YES";
      if (!a3)
      {
        v12 = @"NO";
      }

      *buf = 138412802;
      v18 = v11;
      v19 = 2048;
      v20 = a2;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_231A35000, v10, OS_LOG_TYPE_DEFAULT, "Dropping finish-draining-journal, dataclass:%@, index:%p, canceled:%@", buf, 0x20u);
    }
  }

  else
  {
    v8 = sIndexQueue;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_1032;
    v14[3] = &unk_278934870;
    v14[4] = WeakRetained;
    v16 = *(a1 + 56);
    v15 = *(a1 + 40);
    v9 = _setup_block(v14, 0, 6920);
    dispatch_async(v8, v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void *__78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_1032(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[19])
  {
    return [result fetchMeCard:1 isNotCreateNewIndex:*(a1 + 48) group:*(a1 + 40)];
  }

  return result;
}

void __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_2_1033(uint64_t a1, uint64_t a2, int a3)
{
  v26 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (a3 || !WeakRetained)
  {
    v12 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(*(a1 + 32) + 192);
      v14 = @"YES";
      if (!a3)
      {
        v14 = @"NO";
      }

      *buf = 138412802;
      v21 = v13;
      v22 = 2048;
      v23 = a2;
      v24 = 2112;
      v25 = v14;
      _os_log_impl(&dword_231A35000, v12, OS_LOG_TYPE_DEFAULT, "Dropping finish-draining-journal, dataclass:%@, index:%p, canceled:%@", buf, 0x20u);
    }
  }

  else
  {
    v8 = sIndexQueue;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_1034;
    v16[3] = &unk_278934DC8;
    v16[4] = WeakRetained;
    v9 = *(a1 + 40);
    v10 = *(a1 + 32);
    v17 = v9;
    v18 = v10;
    v19 = *(a1 + 56);
    v11 = _setup_block(v16, 0, 7035);
    dispatch_async(v8, v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_1034(uint64_t a1)
{
  v54 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2[19])
  {
    [v2 indexFinishedDrainingJournal];
    v3 = *(*(a1 + 32) + 152);
    v4 = SICopyProperty();
    if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (getSystemVersionString(), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isEqualToString:v4], v5, (v6 & 1) == 0))
    {
      [*(a1 + 32) issueDuplicateOidCheck];
    }

    if (sPrivate)
    {
      goto LABEL_40;
    }

    v7 = [*(a1 + 32) dataclass];
    v8 = *MEMORY[0x277CCA1A0];
    v9 = [v7 isEqual:*MEMORY[0x277CCA1A0]];

    if (v9)
    {
      v10 = [*(a1 + 32) getPropertyForKey:@"MessagesFixupVersion"];
      if (([v10 isEqual:&unk_2846C95D8] & 1) == 0)
      {
        v11 = *(a1 + 32);
        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_2_1038;
        v49[3] = &unk_2789348E8;
        v49[4] = v11;
        [v11 issueMessagesFixup:v49];
      }
    }

    v12 = [*(a1 + 32) getPropertyForKey:@"DeviceBootTime"];
    v13 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 40);
      *buf = 138412546;
      v51 = v14;
      v52 = 2112;
      v53 = v12;
      _os_log_impl(&dword_231A35000, v13, OS_LOG_TYPE_DEFAULT, "Comparing bootTime:%@ with stored bootTime:%@", buf, 0x16u);
    }

    if (v12 && *(a1 + 40) && ([v12 timeIntervalSince1970], v16 = v15, objc_msgSend(*(a1 + 40), "timeIntervalSince1970"), v16 - v17 <= 5.0))
    {
      [*(a1 + 40) timeIntervalSince1970];
      v43 = v42;
      [v12 timeIntervalSince1970];
      v18 = v43 - v44 <= 5.0;
    }

    else
    {
      v18 = 0;
    }

    v19 = (a1 + 40);
    if (([v12 isEqual:*(a1 + 40)] & 1) != 0 || v18)
    {
      if (v18)
      {
        [v12 timeIntervalSince1970];
        v30 = v29;
        [*v19 timeIntervalSince1970];
        if (v30 != v31)
        {
          v32 = logForCSLogCategoryDefault();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_1034_cold_1();
          }
        }
      }

      v33 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = *v19;
        *buf = 138412290;
        v51 = v34;
        _os_log_impl(&dword_231A35000, v33, OS_LOG_TYPE_DEFAULT, "BootTimeDate %@ (matched)", buf, 0xCu);
      }

      v27 = dispatch_group_create();
      [*(a1 + 32) requestRequiresImportWithoutSandboxExtension:v27 maxCount:0 depth:0];
      v35 = sIndexQueue;
      v36 = _setup_block(&__block_literal_global_1045, 0, 7007);
      dispatch_group_notify(v27, v35, v36);

      v37 = dispatch_group_create();
      [*(a1 + 32) restartAttachmentImport:v37 maxCount:256 depth:0];
      v38 = sIndexQueue;
      v39 = _setup_block(&__block_literal_global_1048, 0, 7013);
      dispatch_group_notify(v37, v38, v39);
    }

    else
    {
      v20 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        [*v19 timeIntervalSince1970];
        v22 = v21;
        [v12 timeIntervalSince1970];
        *buf = 134218240;
        v51 = v22;
        v52 = 2048;
        v53 = v23;
        _os_log_impl(&dword_231A35000, v20, OS_LOG_TYPE_DEFAULT, "Mismatch! bootTime:%.0f with stored bootTime:%.0f", buf, 0x16u);
      }

      v24 = dispatch_group_create();
      [*(a1 + 32) removeSandboxExtensions:v24];
      v25 = sIndexQueue;
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_1039;
      v46[3] = &unk_278934130;
      v26 = *(a1 + 40);
      v46[4] = *(a1 + 32);
      v47 = v26;
      v48 = v24;
      v27 = v24;
      v28 = _setup_block(v46, 0, 6997);
      dispatch_group_notify(v27, v25, v28);
    }

    if (([*(a1 + 32) issuePriorityIndexFixup] & 1) == 0 && *(*(a1 + 32) + 152))
    {
      if (sUsePriorityIndex != 1)
      {
        goto LABEL_45;
      }

      if ([*(*(a1 + 48) + 192) isEqualToString:@"Priority"])
      {
LABEL_36:
        if (*(a1 + 56) == 2 || (v40 = [*(a1 + 32) getIntegerPropertyForKey:@"AppsFixupVersion"], v40 != objc_msgSend(&unk_2846C9650, "integerValue")))
        {
          v45[0] = MEMORY[0x277D85DD0];
          v45[1] = 3221225472;
          v45[2] = __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_1054;
          v45[3] = &unk_278934050;
          v45[4] = *(a1 + 32);
          [sDelegate updateApplicationsWithCompletion:v45 clean:0];
        }

        goto LABEL_39;
      }

      if ((sUsePriorityIndex & 1) == 0)
      {
LABEL_45:
        if ([*(*(a1 + 48) + 192) isEqualToString:v8])
        {
          goto LABEL_36;
        }
      }
    }

LABEL_39:
    [*(a1 + 48) setHasPhotosOrText];

LABEL_40:
  }

  v41 = *MEMORY[0x277D85DE8];
}

uint64_t __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_2_1038(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return [*(result + 32) setProperty:&unk_2846C95D8 forKey:@"MessagesFixupVersion" sync:1];
  }

  return result;
}

void __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_1039(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setProperty:*(a1 + 40) forKey:@"DeviceBootTime" sync:1];
  v2 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "Set BootTimeDate %@ (post cleanup)", &v9, 0xCu);
  }

  [*(a1 + 32) requestRequiresImportWithoutSandboxExtension:*(a1 + 48) maxCount:0 depth:0];
  v4 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_INFO, "removeSandboxExtensions notify done", &v9, 2u);
  }

  v5 = *(a1 + 48);
  v6 = sIndexQueue;
  v7 = _setup_block(&__block_literal_global_1042, 0, 6996);
  dispatch_group_notify(v5, v6, v7);

  v8 = *MEMORY[0x277D85DE8];
}

void __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_1040()
{
  v0 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_231A35000, v0, OS_LOG_TYPE_INFO, "requestRequiresImportWithoutSandboxExtension notify done", v1, 2u);
  }
}

void __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_1043()
{
  v0 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_231A35000, v0, OS_LOG_TYPE_INFO, "requestRequiresImportWithoutSandboxExtension notify done", v1, 2u);
  }
}

void __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_1046()
{
  v0 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_231A35000, v0, OS_LOG_TYPE_INFO, "restartAttachmentImport notify done", v1, 2u);
  }
}

- (int)openJWLIndex
{
  v16 = *MEMORY[0x277D85DE8];
  if ((sShuttingDown & 1) == 0)
  {
    if (self->_jwlIndex)
    {
      v2 = 0;
      goto LABEL_18;
    }

    v4 = [(SPConcreteCoreSpotlightIndexer *)self _indexPath];
    bzero(buffer, 0x400uLL);
    if (CFStringGetFileSystemRepresentation(v4, buffer, 1024))
    {
      v5 = open(buffer, 0x8000);
      if (v5 < 0)
      {
        v9 = logForCSLogCategoryIndex();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          dataclass = self->_dataclass;
          *buf = 138412290;
          v14[0] = dataclass;
          _os_log_impl(&dword_231A35000, v9, OS_LOG_TYPE_INFO, "No index for for dataclass:%@ - can't open to journal", buf, 0xCu);
        }

        v2 = -1;
        goto LABEL_17;
      }

      v6 = v5;
      protectionClassIntValue(self->_dataclass);
      v2 = SIOpenJWLIndex();
      close(v6);
      if ((v2 & 0x80000000) == 0)
      {
        self->_jwlIndex = 0;
        v7 = logForCSLogCategoryIndex();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v8 = self->_dataclass;
          *buf = 67109378;
          LODWORD(v14[0]) = v2;
          WORD2(v14[0]) = 2112;
          *(v14 + 6) = v8;
          _os_log_impl(&dword_231A35000, v7, OS_LOG_TYPE_INFO, "JWL index open, result:%d, dataclass:%@", buf, 0x12u);
        }

LABEL_13:

        self->_hasAssertion = 0;
        self->_assertionEndTime = 0.0;
        self->_suspended = 1;
LABEL_17:

        goto LABEL_18;
      }
    }

    else
    {
      v2 = -1;
    }

    v7 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(SPConcreteCoreSpotlightIndexer *)self openJWLIndex];
    }

    goto LABEL_13;
  }

  v2 = -1;
LABEL_18:
  v11 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)clientDidCheckin:(id)a3 service:(id)a4 completionHandler:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    dataclass = self->_dataclass;
    checkedInClients = self->_checkedInClients;
    v15 = 138412802;
    v16 = v8;
    v17 = 2112;
    v18 = dataclass;
    v19 = 2112;
    v20 = checkedInClients;
    _os_log_impl(&dword_231A35000, v11, OS_LOG_TYPE_INFO, "clientDidCheckin, bundleID:%@, dataclass:%@, checkedInClients:%@", &v15, 0x20u);
  }

  [(NSMapTable *)self->_checkedInClients setObject:v10 forKey:v8];
  [(SPConcreteCoreSpotlightIndexer *)self checkInWithBundleID:v8 completionHandler:v9];

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)clientIsCheckedIn:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = [(NSMapTable *)self->_checkedInClients objectForKey:?];
  v4 = v3 != 0;

  return v4;
}

- (void)checkInWithBundleID:(id)a3 completionHandler:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_indexQueue);
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_owner);
    v9 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      dataclass = self->_dataclass;
      index = self->_index;
      knownClients = self->_knownClients;
      checkedInClients = self->_checkedInClients;
      *buf = 138413314;
      v40 = v6;
      v41 = 2112;
      v42 = dataclass;
      v43 = 2048;
      v44 = index;
      v45 = 2112;
      v46 = knownClients;
      v47 = 2112;
      v48 = checkedInClients;
      _os_log_impl(&dword_231A35000, v9, OS_LOG_TYPE_INFO, "checkInWithBundleID, bundleID:%@, dataclass:%@, index:%p, knownClients:%@, checkedInClients:%@", buf, 0x34u);
    }

    if (self->_knownClients)
    {
      if (![(__CFString *)v6 isEqual:@"com.apple.mobilemail"]|| sMailProtectionClass && ([(NSString *)self->_dataclass isEqual:?]& 1) != 0)
      {
        if ([(NSSet *)self->_knownClients containsObject:v6])
        {
          [(SPConcreteCoreSpotlightIndexer *)self readyIndex:0];
          objc_initWeak(buf, self);
          v14 = self->_index;
          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 3221225472;
          v28[2] = __72__SPConcreteCoreSpotlightIndexer_checkInWithBundleID_completionHandler___block_invoke_1069;
          v28[3] = &unk_278934E40;
          objc_copyWeak(&v31, buf);
          v29 = v6;
          v30 = self;
          SISynchedOpWithBlockPropagatingPriority(v14, 2, v28);

          objc_destroyWeak(&v31);
          objc_destroyWeak(buf);
        }

        else
        {
          v17 = [objc_alloc(MEMORY[0x277CC3420]) initWithJobType:2];
          v18 = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
          v38 = v18;
          v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
          [v17 setProtectionClasses:v19];

          v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"no known client with bundle ID: %@  knownClients=%@", v6, self->_knownClients];;
          [v17 setReason:v20];

          v21 = [SPCoreSpotlightIndexerTask alloc];
          v37 = self;
          v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
          v23 = [(SPCoreSpotlightIndexerTask *)v21 initWithIndexJob:v17 indexers:v22];

          v36 = v6;
          v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
          [(SPCoreSpotlightIndexerTask *)v23 setBundleIDs:v24];

          -[SPCoreSpotlightIndexerTask setDataMigrationStage:](v23, "setDataMigrationStage:", [WeakRetained dataMigrationStage]);
          [(SPCoreSpotlightIndexerTask *)v23 setShouldResumeOnFailure:0];
          if ([(__CFString *)v6 isEqualToString:@"com.apple.mobileslideshow"])
          {
            v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"No known client: %@", self->_dataclass];
            _sendPhotosReindexABCReport(v25);
          }

          createCount = self->_createCount;
          v32[0] = MEMORY[0x277D85DD0];
          v32[1] = 3221225472;
          v32[2] = __72__SPConcreteCoreSpotlightIndexer_checkInWithBundleID_completionHandler___block_invoke;
          v32[3] = &unk_278934E18;
          v33 = v6;
          v34 = self;
          v35 = createCount;
          [(SPConcreteCoreSpotlightIndexer *)self performIndexerTask:v23 withIndexDelegatesAndCompletionHandler:v32];
        }
      }

      else
      {
        v16 = logForCSLogCategoryIndex();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v40 = @"com.apple.mobilemail";
          v41 = 2112;
          v42 = sMailProtectionClass;
          _os_log_impl(&dword_231A35000, v16, OS_LOG_TYPE_DEFAULT, "*warn* client checkin %@ has wrong protection class for for %@", buf, 0x16u);
        }
      }
    }

    if (v7)
    {
      (*(v7 + 2))(v7, 0, 0);
    }
  }

  else if (v7)
  {
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1 userInfo:0];
    (*(v7 + 2))(v7, 0, v15);
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __72__SPConcreteCoreSpotlightIndexer_checkInWithBundleID_completionHandler___block_invoke(int8x16_t *a1, void *a2)
{
  if ([a2 containsObject:a1[2].i64[0]])
  {
    v3 = sIndexQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __72__SPConcreteCoreSpotlightIndexer_checkInWithBundleID_completionHandler___block_invoke_2;
    v7[3] = &unk_2789344E0;
    v9 = a1[3].i64[0];
    v6 = a1[2];
    v4 = v6.i64[0];
    v8 = vextq_s8(v6, v6, 8uLL);
    v5 = _setup_block(v7, 0, 7294);
    dispatch_async(v3, v5);
  }
}

void __72__SPConcreteCoreSpotlightIndexer_checkInWithBundleID_completionHandler___block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) readyIndex:0];
  v2 = *(a1 + 32);
  if (v2[19] && v2[8] == *(a1 + 48))
  {
    v3 = *(a1 + 40);
    v4 = *MEMORY[0x277D85DE8];

    [v2 _addNewClientWithBundleID:v3];
  }

  else
  {
    v5 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = [*(a1 + 32) dataclass];
      v8 = [*(a1 + 32) index];
      v9 = *(*(a1 + 32) + 64);
      v10 = *(a1 + 48);
      v12 = 138413314;
      v13 = v6;
      v14 = 2112;
      v15 = v7;
      v16 = 2048;
      v17 = v8;
      v18 = 2048;
      v19 = v9;
      v20 = 2048;
      v21 = v10;
      _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_DEFAULT, "Dropping check-in for new client, bundleID:%@, dataclass:%@, index:%p, createCount:%lu/%lu", &v12, 0x34u);
    }

    v11 = *MEMORY[0x277D85DE8];
  }
}

void __72__SPConcreteCoreSpotlightIndexer_checkInWithBundleID_completionHandler___block_invoke_1069(uint64_t a1, uint64_t a2, int a3)
{
  v25 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (a3 || !WeakRetained)
  {
    v10 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = *(*(a1 + 40) + 192);
      v13 = @"YES";
      if (!a3)
      {
        v13 = @"NO";
      }

      *buf = 138413058;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      v21 = 2048;
      v22 = a2;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&dword_231A35000, v10, OS_LOG_TYPE_DEFAULT, "Dropping check-in for known client, bundleID:%@, dataclass:%@, index:%p, canceled:%@", buf, 0x2Au);
    }
  }

  else
  {
    v8 = sIndexQueue;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __72__SPConcreteCoreSpotlightIndexer_checkInWithBundleID_completionHandler___block_invoke_1070;
    v15[3] = &unk_2789342C0;
    v15[4] = WeakRetained;
    v16 = *(a1 + 32);
    v9 = _setup_block(v15, 0, 7310);
    dispatch_async(v8, v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)addClients:(id)a3
{
  v4 = a3;
  v5 = sIndexQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__SPConcreteCoreSpotlightIndexer_addClients___block_invoke;
  v8[3] = &unk_2789342C0;
  v9 = v4;
  v10 = self;
  v6 = v4;
  v7 = _setup_block(v8, 0, 7326);
  dispatch_async(v5, v7);
}

void __45__SPConcreteCoreSpotlightIndexer_addClients___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(v4 + 192);
    v6 = *(v4 + 32);
    *buf = 138412802;
    v21 = v3;
    v22 = 2112;
    v23 = v5;
    v24 = 2112;
    v25 = v6;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_INFO, "addClients, bundleIDs:%@, dataclass:%@, checkedInClients:%@", buf, 0x20u);
  }

  v7 = *(a1 + 40);
  v8 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 32)];
  [v7 setKnownClients:v8];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = *(*(a1 + 40) + 240);
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(a1 + 40) checkInWithBundleID:*(*(&v15 + 1) + 8 * v13++) completionHandler:{0, v15}];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_addNewClientWithBundleID:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_indexQueue);
  v5 = [(NSSet *)self->_knownClients setByAddingObject:v4];
  [(SPConcreteCoreSpotlightIndexer *)self setKnownClients:v5];

  objc_initWeak(&location, self);
  index = self->_index;
  if (index)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __60__SPConcreteCoreSpotlightIndexer__addNewClientWithBundleID___block_invoke;
    v11[3] = &unk_278934E40;
    objc_copyWeak(&v13, &location);
    v11[4] = self;
    v12 = v4;
    SIBackgroundOpBlock(index, 0, v11);

    objc_destroyWeak(&v13);
  }

  else
  {
    v7 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
      readOnly = self->_readOnly;
      *buf = 138413058;
      v16 = v4;
      v17 = 2112;
      v18 = v8;
      v19 = 2048;
      v20 = MEMORY[0x277D85E38];
      v21 = 1024;
      v22 = readOnly;
      _os_log_impl(&dword_231A35000, v7, OS_LOG_TYPE_DEFAULT, "Dropping check-in for new client, bundleID:%@, dataclass:%@, index:%p,  readOnly:%d", buf, 0x26u);
    }
  }

  objc_destroyWeak(&location);

  v10 = *MEMORY[0x277D85DE8];
}

void __60__SPConcreteCoreSpotlightIndexer__addNewClientWithBundleID___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v35 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (a3 || !WeakRetained || *(*(a1 + 32) + 120) == 1)
  {
    v8 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v10 = [v7 dataclass];
      v11 = v10;
      v12 = @"YES";
      v13 = *(*(a1 + 32) + 120);
      *buf = 138413314;
      if (!a3)
      {
        v12 = @"NO";
      }

      v26 = v9;
      v27 = 2112;
      v28 = v10;
      v29 = 2048;
      v30 = a2;
      v31 = 2112;
      v32 = v12;
      v33 = 1024;
      v34 = v13;
      _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_DEFAULT, "Dropping check-in for new client, bundleID:%@, dataclass:%@, index:%p, canceled:%@, readOnly:%d", buf, 0x30u);
    }

LABEL_12:

    goto LABEL_13;
  }

  if (([WeakRetained denyOperationOnAssertedIndex:"_addNewClientWithBundleID"] & 1) == 0)
  {
    v22[0] = @"_kMDItemBundleID";
    v22[1] = @"_kMDItemExternalID";
    v14 = *(a1 + 40);
    v23[0] = @"com.apple.searchd";
    v23[1] = v14;
    v22[2] = @"_kMDClientCheckedIn";
    v23[2] = MEMORY[0x277CBEC38];
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
    v24 = v15;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __60__SPConcreteCoreSpotlightIndexer__addNewClientWithBundleID___block_invoke_1075;
    v18[3] = &unk_278934E68;
    v19 = *(a1 + 40);
    v20 = v7;
    v21 = a2;
    v16 = [v18 copy];
    if (!SISetCSAttributes())
    {
      CFRelease(v16);
    }

    goto LABEL_12;
  }

LABEL_13:

  v17 = *MEMORY[0x277D85DE8];
}

void __60__SPConcreteCoreSpotlightIndexer__addNewClientWithBundleID___block_invoke_1075(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) dataclass];
    v7 = *(a1 + 48);
    v9 = 138413058;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    v13 = 2048;
    v14 = v7;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_DEFAULT, "Recorded check-in for new client, bundleID:%@, dataclass:%@, index:%p, error:%@", &v9, 0x2Au);
  }

  [*(a1 + 40) dirty];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)performIndexerTask:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SPConcreteCoreSpotlightIndexer *)self owner];
  v9 = [(SPConcreteCoreSpotlightIndexer *)self firstUnlockQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__SPConcreteCoreSpotlightIndexer_performIndexerTask_completionHandler___block_invoke;
  v14[3] = &unk_278934EB8;
  v14[4] = self;
  v15 = v6;
  v16 = v8;
  v17 = v7;
  v10 = v7;
  v11 = v8;
  v12 = v6;
  v13 = _setup_block(v14, 0, 7399);
  dispatch_async(v9, v13);
}

void __71__SPConcreteCoreSpotlightIndexer_performIndexerTask_completionHandler___block_invoke(id *a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  v4 = a1[4];
  v5 = a1[5];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__SPConcreteCoreSpotlightIndexer_performIndexerTask_completionHandler___block_invoke_2;
  v16[3] = &unk_278934E90;
  v6 = v2;
  v17 = v6;
  v18 = v3;
  v7 = v3;
  [v4 performIndexerTask:v5 withIndexDelegatesAndCompletionHandler:v16];
  v8 = [a1[4] firstUnlockQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__SPConcreteCoreSpotlightIndexer_performIndexerTask_completionHandler___block_invoke_3;
  v11[3] = &unk_278934EB8;
  v12 = a1[5];
  v13 = v6;
  v14 = a1[6];
  v15 = a1[7];
  v9 = v6;
  v10 = _setup_block(v11, 0, 7398);
  dispatch_group_notify(v7, v8, v10);
}

void __71__SPConcreteCoreSpotlightIndexer_performIndexerTask_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    [*(a1 + 32) addObjectsFromArray:v3];
  }

  dispatch_group_leave(*(a1 + 40));
}

void __71__SPConcreteCoreSpotlightIndexer_performIndexerTask_completionHandler___block_invoke_3(uint64_t a1)
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

- (void)performIndexerTask:(id)a3 withIndexDelegatesAndCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __92__SPConcreteCoreSpotlightIndexer_performIndexerTask_withIndexDelegatesAndCompletionHandler___block_invoke;
  v13[3] = &unk_278934F08;
  v14 = v6;
  v15 = self;
  v16 = v7;
  v8 = v7;
  v9 = v6;
  v10 = MEMORY[0x2383760E0](v13);
  v11 = [(SPConcreteCoreSpotlightIndexer *)self firstUnlockQueue];
  v12 = _setup_block(v10, 0, 7468);
  dispatch_async(v11, v12);
}

void __92__SPConcreteCoreSpotlightIndexer_performIndexerTask_withIndexDelegatesAndCompletionHandler___block_invoke(id *a1)
{
  v71 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] job];
  v3 = objc_alloc(MEMORY[0x277CBEB58]);
  v4 = [a1[4] bundleIDs];
  if (v4)
  {
    v5 = [v3 initWithArray:v4];
  }

  else
  {
    v6 = [*(a1[5] + 4) keyEnumerator];
    v7 = [v6 allObjects];
    v5 = [v3 initWithArray:v7];
  }

  v8 = [a1[4] completedBundleIDs];
  v9 = [v8 count];

  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x277CBEB98]);
    v11 = [a1[4] completedBundleIDs];
    v12 = [v10 initWithArray:v11];
    [v5 minusSet:v12];
  }

  v13 = [a1[4] job];
  v14 = [v13 excludedBundleIDs];
  v15 = [v14 count];

  if (v15)
  {
    v16 = objc_alloc(MEMORY[0x277CBEB98]);
    v17 = [a1[4] job];
    v18 = [v17 excludedBundleIDs];
    v19 = [v16 initWithArray:v18];
    [v5 minusSet:v19];
  }

  v45 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v20 = dispatch_group_create();
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v42 = v5;
  obj = [v5 allObjects];
  v21 = [obj countByEnumeratingWithState:&v56 objects:v70 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v57;
    v43 = *MEMORY[0x277CCA1A0];
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v57 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v56 + 1) + 8 * i);
        v26 = [*(a1[5] + 4) objectForKey:v25];
        if (!v26)
        {
          if (![v25 isEqualToString:@"com.apple.mobileslideshow"])
          {
            continue;
          }

          v26 = [*(a1[5] + 4) objectForKey:@"com.apple.assetsd"];
          if (!v26)
          {
            continue;
          }
        }

        v27 = v26;
        if ([v2 jobType] == 2)
        {
          if ([*(a1[5] + 5) containsObject:v25])
          {
            v28 = logForCSLogCategoryIndex();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              v29 = a1[5];
              v30 = v29[24];
              v31 = v29[30];
              v32 = v29[5];
              *buf = 138413314;
              v61 = v2;
              v62 = 2112;
              v63 = v25;
              v64 = 2112;
              v65 = v30;
              v66 = 2112;
              v67 = v31;
              v68 = 2112;
              v69 = v32;
              _os_log_impl(&dword_231A35000, v28, OS_LOG_TYPE_INFO, "Dropping job:%@ with checked-in client for bundleID:%@, dataclass:%@, knownClients:%@, reindexAllDelegateBundleIDs:%@", buf, 0x34u);
            }

LABEL_29:

            continue;
          }

          [*(a1[5] + 5) addObject:v25];
        }

        v33 = logForCSLogCategoryIndex();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v34 = *(a1[5] + 24);
          *buf = 138412802;
          v61 = v2;
          v62 = 2112;
          v63 = v25;
          v64 = 2112;
          v65 = v34;
          _os_log_impl(&dword_231A35000, v33, OS_LOG_TYPE_INFO, "Performing job:%@ with the checked-in client for bundleID:%@, dataclass:%@", buf, 0x20u);
        }

        dispatch_group_enter(v20);
        v28 = *(a1[5] + 24);
        if (([*(a1[5] + 24) isEqual:@"Priority"] & 1) != 0 || sUseMailIndex == 1 && objc_msgSend(*(a1[5] + 24), "isEqual:", @"MobileMailIndex"))
        {
          v35 = v43;

          v28 = v35;
        }

        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = __92__SPConcreteCoreSpotlightIndexer_performIndexerTask_withIndexDelegatesAndCompletionHandler___block_invoke_1079;
        v49[3] = &unk_278934EE0;
        v36 = v2;
        v50 = v36;
        v51 = v25;
        v52 = a1[5];
        v53 = v45;
        v54 = a1[4];
        v55 = v20;
        [v27 performIndexJob:v36 protectionClass:v28 acknowledgementHandler:v49];

        goto LABEL_29;
      }

      v22 = [obj countByEnumeratingWithState:&v56 objects:v70 count:16];
    }

    while (v22);
  }

  v37 = [a1[5] firstUnlockQueue];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __92__SPConcreteCoreSpotlightIndexer_performIndexerTask_withIndexDelegatesAndCompletionHandler___block_invoke_1080;
  v46[3] = &unk_278934078;
  v38 = a1[6];
  v47 = v45;
  v48 = v38;
  v39 = v45;
  v40 = _setup_block(v46, 0, 7466);
  dispatch_group_notify(v20, v37, v40);

  v41 = *MEMORY[0x277D85DE8];
}

void __92__SPConcreteCoreSpotlightIndexer_performIndexerTask_withIndexDelegatesAndCompletionHandler___block_invoke_1079(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 48) + 192);
    *buf = 138413058;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    v19 = 2112;
    v20 = v3;
    _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_INFO, "Done performing job:%@ with the checked-in client for bundleID:%@, dataclass:%@, error:%@", buf, 0x2Au);
  }

  if (!v3)
  {
    v8 = *(a1 + 56);
    objc_sync_enter(v8);
    [*(a1 + 56) addObject:*(a1 + 40)];
    objc_sync_exit(v8);
  }

  v9 = *(a1 + 48);
  v12 = *(a1 + 40);
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  [v9 addCompletedBundleIDs:v10 forIndexerTask:*(a1 + 64)];

  dispatch_group_leave(*(a1 + 72));
  v11 = *MEMORY[0x277D85DE8];
}

void __92__SPConcreteCoreSpotlightIndexer_performIndexerTask_withIndexDelegatesAndCompletionHandler___block_invoke_1080(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) allObjects];
    (*(v1 + 16))(v1, v2);
  }
}

- (void)startReindexAll
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(SPConcreteCoreSpotlightIndexer *)self getPropertyForKey:@"SPReindexAllStarted"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v3 BOOLValue])
  {
    v4 = 1;
  }

  else
  {
    [(SPConcreteCoreSpotlightIndexer *)self setProperty:MEMORY[0x277CBEBF8] forKey:@"SPReindexAllCompletedBundleIDs" sync:0];
    [(SPConcreteCoreSpotlightIndexer *)self setProperty:MEMORY[0x277CBEC38] forKey:@"SPReindexAllStarted" sync:1];
    v4 = 0;
  }

  v5 = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
  SDTraceAdd(3, @"Reindexall start", 0, v5, 0, 0.0);

  v6 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
    v8 = @"NO";
    v10 = 138412802;
    v11 = v7;
    v12 = 2112;
    if (v4)
    {
      v8 = @"YES";
    }

    v13 = @"SPReindexAllStarted";
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_231A35000, v6, OS_LOG_TYPE_INFO, "dataclass:%@, %@:%@/YES", &v10, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)finishReindexAll
{
  v11 = *MEMORY[0x277D85DE8];
  [(SPConcreteCoreSpotlightIndexer *)self setProperty:MEMORY[0x277CBEC28] forKey:@"SPReindexAllStarted" sync:0];
  [(SPConcreteCoreSpotlightIndexer *)self setProperty:MEMORY[0x277CBEBF8] forKey:@"SPReindexAllCompletedBundleIDs" sync:1];
  v3 = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
  SDTraceAdd(3, @"Reindexall complete", 0, v3, 0, 0.0);

  v4 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = @"SPReindexAllStarted";
    _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_INFO, "dataclass:%@, %@:NO", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)reindexAllStarted
{
  v2 = [(SPConcreteCoreSpotlightIndexer *)self getPropertyForKey:@"SPReindexAllStarted"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)fetchAllCompletedBundleIDsForIndexerTask:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 job];
  if ([v8 jobType] == 2 && (objc_msgSend(v6, "shouldResumeOnFailure") & 1) != 0)
  {
    v9 = sIndexQueue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __93__SPConcreteCoreSpotlightIndexer_fetchAllCompletedBundleIDsForIndexerTask_completionHandler___block_invoke;
    v11[3] = &unk_278934F30;
    v11[4] = self;
    v12 = v7;
    v10 = _setup_block(v11, 0, 7521);
    dispatch_async(v9, v10);
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, 0);
  }
}

void __93__SPConcreteCoreSpotlightIndexer_fetchAllCompletedBundleIDsForIndexerTask_completionHandler___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) reindexAllStarted])
  {
    v2 = [*(a1 + 32) getPropertyForKey:@"SPReindexAllCompletedBundleIDs"];
    if (v2)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v3 = v2;
      }

      else
      {
        v3 = 0;
      }
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;
    v5 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) dataclass];
      v9 = 138413314;
      v10 = v6;
      v11 = 2112;
      v12 = @"SPReindexAllStarted";
      v13 = 2112;
      v14 = @"YES";
      v15 = 2112;
      v16 = @"SPReindexAllCompletedBundleIDs";
      v17 = 2112;
      v18 = v4;
      _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_INFO, "dataclass:%@, %@:%@, %@:%@", &v9, 0x34u);
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      (*(v7 + 16))(v7, v4);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)addCompletedBundleIDs:(id)a3 forIndexerTask:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 job];
  if ([v8 jobType] == 2 && objc_msgSend(v6, "count") && objc_msgSend(v7, "shouldResumeOnFailure"))
  {
    v9 = sIndexQueue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __71__SPConcreteCoreSpotlightIndexer_addCompletedBundleIDs_forIndexerTask___block_invoke;
    v11[3] = &unk_2789342C0;
    v11[4] = self;
    v12 = v6;
    v10 = _setup_block(v11, 0, 7547);
    dispatch_async(v9, v10);
  }
}

void __71__SPConcreteCoreSpotlightIndexer_addCompletedBundleIDs_forIndexerTask___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) reindexAllStarted])
  {
    v2 = [*(a1 + 32) getPropertyForKey:@"SPReindexAllCompletedBundleIDs"];
    v3 = MEMORY[0x277CBEBF8];
    if (v2)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v3 = v2;
      }
    }

    v4 = v3;
    v5 = [v4 count];
    v6 = [*(a1 + 40) count];
    v7 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:v6 + v5];
    [v7 addObjectsFromArray:v4];

    [v7 addObjectsFromArray:*(a1 + 40)];
    v8 = [v7 allObjects];
    v9 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [*(a1 + 32) dataclass];
      v11 = *(a1 + 40);
      v13 = 138413570;
      v14 = v10;
      v15 = 2112;
      v16 = @"SPReindexAllStarted";
      v17 = 2112;
      v18 = @"YES";
      v19 = 2112;
      v20 = v11;
      v21 = 2112;
      v22 = @"SPReindexAllCompletedBundleIDs";
      v23 = 2112;
      v24 = v8;
      _os_log_impl(&dword_231A35000, v9, OS_LOG_TYPE_INFO, "dataclass:%@, %@:%@, bundleIDs:%@, %@:%@", &v13, 0x3Eu);
    }

    [*(a1 + 32) setProperty:v8 forKey:@"SPReindexAllCompletedBundleIDs" sync:1];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)commitUpdates:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_index && !self->_suspended)
  {
    v5 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      dataclass = self->_dataclass;
      *buf = 138412290;
      v17 = dataclass;
      _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_INFO, "Index %@ sync", buf, 0xCu);
    }

    v7 = self->_dataclass;
    v15[0] = @"commit";
    v15[1] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    v9 = SDTransactionCreate(v8);

    v10 = [(SPConcreteCoreSpotlightIndexer *)self _cancelIdleTimer];
    index = self->_index;
    if (SISyncIndex())
    {
      syncContextCreate(v4, v9);
      v12 = self->_index;
      SIIndexInactive();
      v13 = self->_index;
      SISynchedOp();
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)coolDown:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_index)
  {
    v4 = a3;
    v5 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      dataclass = self->_dataclass;
      v8 = 138412290;
      v9 = dataclass;
      _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_INFO, "Index %@ coolDown", &v8, 0xCu);
    }

    [(SPConcreteCoreSpotlightIndexer *)self commitUpdates:v4];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)shrink:(unint64_t)a3
{
  v11 = *MEMORY[0x277D85DE8];
  if (a3 == 16 && self->_index && s_last_memory_pressure_status == 16)
  {
    v5 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      dataclass = self->_dataclass;
      v9 = 138412290;
      v10 = dataclass;
      _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_INFO, "Index %@ shrink", &v9, 0xCu);
    }

    index = self->_index;
    SIIndexInactive();
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)issueSplit
{
  if (self->_index)
  {
    MEMORY[0x282187368]();
  }
}

- (void)mergeWithGroup:(id)a3
{
  if (self->_index)
  {
    _SIIssueFullMergeWithGroup();
  }
}

- (void)mergeWithCompletionHandler:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    [SPConcreteCoreSpotlightIndexer mergeWithCompletionHandler:];
  }

  v5 = v4;
  dispatch_assert_queue_V2(self->_indexQueue);
  [(SPConcreteCoreSpotlightIndexer *)self readyIndex:0];
  if (self->_index && (!self->_suspended || self->_softSuspended))
  {
    v6 = dispatch_group_create();
    v7 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      dataclass = self->_dataclass;
      *buf = 138412290;
      v16 = dataclass;
      _os_log_impl(&dword_231A35000, v7, OS_LOG_TYPE_DEFAULT, "Performing full merge, dataclass:%@", buf, 0xCu);
    }

    index = self->_index;
    _SIIssueFullMergeWithGroup();
    v10 = dispatch_get_global_queue(9, 2uLL);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __61__SPConcreteCoreSpotlightIndexer_mergeWithCompletionHandler___block_invoke;
    v13[3] = &unk_278934F30;
    v13[4] = self;
    v14 = v5;
    dispatch_group_notify(v6, v10, v13);
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    (v5)[2](v5, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __61__SPConcreteCoreSpotlightIndexer_mergeWithCompletionHandler___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 192);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "Completed full merge, dataclass:%@", &v6, 0xCu);
  }

  result = (*(*(a1 + 40) + 16))();
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)cleanupStringsWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [SPConcreteCoreSpotlightIndexer cleanupStringsWithCompletionHandler:];
  }

  v5 = v4;
  [(SPConcreteCoreSpotlightIndexer *)self readyIndex:0];
  if (self->_index && !self->_suspended)
  {
    v6 = dispatch_group_create();
    [(SPConcreteCoreSpotlightIndexer *)self cleanupStringsWithActivity:0 group:v6 shouldDefer:0 flags:0];
    v7 = dispatch_get_global_queue(9, 2uLL);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__SPConcreteCoreSpotlightIndexer_cleanupStringsWithCompletionHandler___block_invoke;
    block[3] = &unk_2789341A8;
    v9 = v5;
    dispatch_group_notify(v6, v7, block);
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    (v5)[2](v5, v6);
  }
}

- (void)cleanupStringsWithActivity:(id)a3 group:(id)a4 shouldDefer:(BOOL *)a5 flags:(int)a6
{
  if (self->_index)
  {
    MEMORY[0x2821872B0]();
  }
}

- (void)issueDefrag:(id)a3
{
  v11[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_index)
  {
    dataclass = self->_dataclass;
    v11[0] = @"defrag";
    v11[1] = dataclass;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
    v7 = SDTransactionCreate(v6);

    index = self->_index;
    _SIIssueDefrag();
    if (v4)
    {
      syncContextCreate(v4, v7);
      v9 = self->_index;
      SISynchedOp();
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)issueRepair
{
  index = self->_index;
  if (index)
  {
    MEMORY[0x282187360](index, a2);
  }
}

- (void)issueConsistencyCheck
{
  index = self->_index;
  if (index)
  {
    MEMORY[0x2821872B8](index, a2);
  }
}

- (void)issueDuplicateOidCheck
{
  index = self->_index;
  if (index)
  {
    MEMORY[0x2821872A8](index, a2);
  }
}

- (void)fixupMessageAttachmentsWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (self->_readOnly)
  {
    v5 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [SPConcreteCoreSpotlightIndexer fixupMessageAttachmentsWithCompletionHandler:];
    }

    goto LABEL_6;
  }

  if ([(SPConcreteCoreSpotlightIndexer *)self denyOperationOnAssertedIndex:"fixupMessageAttachmentsWithCompletionHandler"])
  {
LABEL_6:
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    if (v4)
    {
      v4[2](v4, v6);
    }

    goto LABEL_12;
  }

  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v37 = 0;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v35 = 0;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy__0;
  v32[4] = __Block_byref_object_dispose__0;
  v33 = 0;
  v7 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231A35000, v7, OS_LOG_TYPE_DEFAULT, "fixupMessageAttachments starting", buf, 2u);
  }

  v8 = SDTransactionCreate(&unk_2846C9290);
  v9 = dispatch_group_create();
  dispatch_group_enter(v9);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __79__SPConcreteCoreSpotlightIndexer_fixupMessageAttachmentsWithCompletionHandler___block_invoke;
  v28[3] = &unk_278934F58;
  v30 = v32;
  v10 = v9;
  v29 = v10;
  v11 = MEMORY[0x2383760E0](v28);
  index = self->_index;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __79__SPConcreteCoreSpotlightIndexer_fixupMessageAttachmentsWithCompletionHandler___block_invoke_2;
  v23[3] = &unk_278934FF8;
  v23[4] = self;
  v26 = v36;
  v13 = v10;
  v24 = v13;
  v27 = v34;
  v14 = v11;
  v25 = v14;
  SIBackgroundOpBlock(index, 0, v23);
  v15 = sIndexQueue;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __79__SPConcreteCoreSpotlightIndexer_fixupMessageAttachmentsWithCompletionHandler___block_invoke_3_1116;
  v18[3] = &unk_278935020;
  v21 = v32;
  v22 = v36;
  v20 = v4;
  v16 = v8;
  v19 = v16;
  v17 = _setup_block(v18, 0, 7819);
  dispatch_group_notify(v13, v15, v17);

  _Block_object_dispose(v32, 8);
  _Block_object_dispose(v34, 8);
  _Block_object_dispose(v36, 8);
LABEL_12:
}

void __79__SPConcreteCoreSpotlightIndexer_fixupMessageAttachmentsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
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

void __79__SPConcreteCoreSpotlightIndexer_fixupMessageAttachmentsWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  v20[2] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    *(*(*(a1 + 56) + 8) + 24) = 89;
LABEL_6:
    dispatch_group_leave(*(a1 + 40));
    goto LABEL_7;
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __79__SPConcreteCoreSpotlightIndexer_fixupMessageAttachmentsWithCompletionHandler___block_invoke_3;
  v15[3] = &unk_278934FD0;
  v19 = a2;
  v4 = *(a1 + 56);
  v14 = *(a1 + 32);
  v5 = *(&v14 + 1);
  v18 = *(a1 + 64);
  *&v6 = *(a1 + 48);
  *(&v6 + 1) = v4;
  v16 = v14;
  v17 = v6;
  v7 = MEMORY[0x2383760E0](v15);
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"_kMDItemBundleID=%@ && _kMDItemDomainIdentifier=attachmentDomain && _kMDItemUserActivityType!=* && kMDItemRelatedUniqueIdentifier=*", @"com.apple.MobileSMS"];
  v9 = *(a1 + 32);
  v10 = v9[19];
  v11 = *MEMORY[0x277CC3048];
  v20[0] = *MEMORY[0x277CC3208];
  v20[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  LOBYTE(v9) = [v9 _startInternalQueryWithIndex:v10 query:v8 fetchAttributes:v12 forBundleIds:&unk_2846C92A8 resultsHandler:v7];

  if ((v9 & 1) == 0)
  {
    *(*(*(a1 + 56) + 8) + 24) = 22;

    goto LABEL_6;
  }

LABEL_7:
  v13 = *MEMORY[0x277D85DE8];
}

void __79__SPConcreteCoreSpotlightIndexer_fixupMessageAttachmentsWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v35 = *MEMORY[0x277D85DE8];
  v9 = a2;
  if (a3)
  {
    if (a3 == 1)
    {
      if ([*(a1 + 32) index] != *(a1 + 72))
      {
        v10 = *(*(a1 + 56) + 8);
        if (!*(v10 + 24))
        {
          *(v10 + 24) = 22;
        }
      }

      dispatch_group_leave(*(a1 + 40));
    }
  }

  else if ([*(a1 + 32) index] == *(a1 + 72))
  {
    ++*(*(*(a1 + 64) + 8) + 24);
    VectorCount = _MDStoreOIDArrayGetVectorCount();
    v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:VectorCount];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __79__SPConcreteCoreSpotlightIndexer_fixupMessageAttachmentsWithCompletionHandler___block_invoke_4;
    v27[3] = &unk_278934A00;
    v13 = v12;
    v28 = v13;
    [a6 enumerateQueryResults:2 stringCache:0 usingBlock:v27];
    v14 = [v13 count];
    v15 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(*(*(a1 + 64) + 8) + 24);
      *buf = 67109632;
      v30 = v16;
      v31 = 1024;
      v32 = v14;
      v33 = 1024;
      v34 = VectorCount;
      _os_log_impl(&dword_231A35000, v15, OS_LOG_TYPE_DEFAULT, "fixupMessageAttachments update batch %d count %d (%d)", buf, 0x14u);
    }

    if (v14)
    {
      dispatch_group_enter(*(a1 + 40));
      v17 = sIndexQueue;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __79__SPConcreteCoreSpotlightIndexer_fixupMessageAttachmentsWithCompletionHandler___block_invoke_1108;
      v23[3] = &unk_278934FA8;
      v18 = *(a1 + 72);
      v23[4] = *(a1 + 32);
      v26 = v18;
      v22 = *(a1 + 48);
      v19 = v22;
      v25 = v22;
      v24 = v13;
      v20 = _setup_block(v23, 0, 7785);
      dispatch_async(v17, v20);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __79__SPConcreteCoreSpotlightIndexer_fixupMessageAttachmentsWithCompletionHandler___block_invoke_4(uint64_t a1, uint64_t *a2)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  if (*a2)
  {
    v3 = a2[1];
    if (v3)
    {
      if (v2 != *MEMORY[0x277CBEEE8] && v3 != *MEMORY[0x277CBEEE8])
      {
        v5 = *(a1 + 32);
        v6 = *MEMORY[0x277CC3048];
        v9[0] = *MEMORY[0x277CC3208];
        v9[1] = v6;
        v10[0] = v2;
        v10[1] = v3;
        v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
        [v5 addObject:v7];
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __79__SPConcreteCoreSpotlightIndexer_fixupMessageAttachmentsWithCompletionHandler___block_invoke_1108(uint64_t a1)
{
  v2 = [*(a1 + 32) index];
  v3 = *(a1 + 64);
  if (v2 == v3)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __79__SPConcreteCoreSpotlightIndexer_fixupMessageAttachmentsWithCompletionHandler___block_invoke_2_1109;
    v7[3] = &unk_278934F80;
    v6 = *(a1 + 48);
    v5 = v6;
    v9 = v6;
    v8 = *(a1 + 40);
    SIBackgroundOpBlock(v3, 0, v7);
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 22;
    v4 = *(*(a1 + 48) + 16);

    v4();
  }
}

void __79__SPConcreteCoreSpotlightIndexer_fixupMessageAttachmentsWithCompletionHandler___block_invoke_2_1109(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    *(*(*(a1 + 48) + 8) + 24) = 89;
  }

  v4 = [*(a1 + 40) copy];
  v5 = *(a1 + 32);
  if (!SISetCSAttributes())
  {
    v6 = *(*(a1 + 48) + 8);
    if (!*(v6 + 24))
    {
      *(v6 + 24) = 22;
    }

    (*(*(a1 + 40) + 16))();

    CFRelease(v4);
  }
}

id __79__SPConcreteCoreSpotlightIndexer_fixupMessageAttachmentsWithCompletionHandler___block_invoke_3_1116(void *a1)
{
  v2 = a1 + 6;
  if (*(*(a1[6] + 8) + 40) || *(*(a1[7] + 8) + 24) && ([MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0], v7 = objc_claimAutoreleasedReturnValue(), v8 = *(*v2 + 8), v9 = *(v8 + 40), *(v8 + 40) = v7, v9, *(*(*v2 + 8) + 40)))
  {
    v3 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __79__SPConcreteCoreSpotlightIndexer_fixupMessageAttachmentsWithCompletionHandler___block_invoke_3_1116_cold_1(v2);
    }
  }

  else
  {
    v3 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_DEFAULT, "fixupMessageAttachments complete", v10, 2u);
    }
  }

  v4 = a1[5];
  if (v4)
  {
    (*(v4 + 16))(v4, *(*(*v2 + 8) + 40));
  }

  v5 = a1[4];
  return objc_opt_self();
}

- (void)issueMessagesFixup:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_index && !self->_suspended)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __53__SPConcreteCoreSpotlightIndexer_issueMessagesFixup___block_invoke;
    v7[3] = &unk_278935048;
    v8 = v4;
    [(SPConcreteCoreSpotlightIndexer *)self fixupMessageAttachmentsWithCompletionHandler:v7];
  }

  else if (v4)
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    (v5)[2](v5, v6);
  }
}

uint64_t __53__SPConcreteCoreSpotlightIndexer_issueMessagesFixup___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_appendRervseInfo:(id)a3 dictionary:(id)a4 key:(id)a5 level:(unint64_t)a6
{
  v26 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  [v10 appendString:@"\n"];
  if (a6)
  {
    v13 = a6;
    do
    {
      [v10 appendString:@"  "];
      --v13;
    }

    while (v13);
  }

  [v10 appendFormat:@"%@", v12];
  v14 = [v11 objectForKeyedSubscript:v12];
  if (v14)
  {
    [v11 setObject:0 forKeyedSubscript:v12];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v22;
        do
        {
          v19 = 0;
          do
          {
            if (*v22 != v18)
            {
              objc_enumerationMutation(v15);
            }

            [(SPConcreteCoreSpotlightIndexer *)self _appendRervseInfo:v10 dictionary:v11 key:*(*(&v21 + 1) + 8 * v19++) level:a6 + 1];
          }

          while (v17 != v19);
          v17 = [v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v17);
      }
    }

    else
    {
      [(SPConcreteCoreSpotlightIndexer *)self _appendRervseInfo:v10 dictionary:v11 key:v14 level:a6 + 1];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)issueDumpReverse:(unint64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = v6;
  index = self->_index;
  if (index)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __69__SPConcreteCoreSpotlightIndexer_issueDumpReverse_completionHandler___block_invoke;
    v9[3] = &unk_278935098;
    v11 = a3;
    v9[4] = self;
    v10 = v6;
    SISynchedOpWithBlock(index, 4, v9);
  }

  else if (v6)
  {
    (*(v6 + 2))(v6, 0, 0);
  }
}

void __69__SPConcreteCoreSpotlightIndexer_issueDumpReverse_completionHandler___block_invoke(void *a1, uint64_t a2, int a3)
{
  v31 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = 0;
  }

  else
  {
    if (a1[6])
    {
      v5 = objc_opt_new();
      v6 = *(a1[4] + 152);
      v24 = MEMORY[0x277D85DD0];
      v25 = 3221225472;
      v26 = __69__SPConcreteCoreSpotlightIndexer_issueDumpReverse_completionHandler___block_invoke_2;
      v27 = &unk_278935070;
      v7 = &v28;
      v8 = v5;
      v28 = v8;
      _SIReverseStoreIterate();
      if ([v8 count])
      {
        v9 = [MEMORY[0x277CCAB68] stringWithString:@"### Reverse Store"];
        bzero(v30, 0x1000uLL);
        processReverseInfo(v30, 0, v9, v8, &unk_2846C9638);
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v10 = [v8 allKeys];
        v11 = [v10 countByEnumeratingWithState:&v20 objects:v29 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v21;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v21 != v13)
              {
                objc_enumerationMutation(v10);
              }

              processReverseInfo(v30, 0, v9, v8, *(*(&v20 + 1) + 8 * i));
            }

            v12 = [v10 countByEnumeratingWithState:&v20 objects:v29 count:16];
          }

          while (v12);
        }

        v4 = [v9 dataUsingEncoding:4];
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v15 = [MEMORY[0x277CCAB68] stringWithString:@"### Reverse Store"];
      v16 = *(a1[4] + 152);
      v7 = &v19;
      v19 = v15;
      v8 = v15;
      _SIReverseStoreIterate();
      v4 = [v8 dataUsingEncoding:4];
    }
  }

  v17 = a1[5];
  if (v17)
  {
    (*(v17 + 16))(v17, v4, 0);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __69__SPConcreteCoreSpotlightIndexer_issueDumpReverse_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:?];
  v5 = [*(a1 + 32) objectForKeyedSubscript:v4];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
      v7 = [v5 arrayByAddingObject:v6];
    }

    else
    {
      v10[0] = v5;
      v6 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
      v10[1] = v6;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
    }

    v8 = v7;
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v4];
  }

  else
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v4];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)issueDumpForward:(unint64_t)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = v5;
  index = self->_index;
  if (index)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __69__SPConcreteCoreSpotlightIndexer_issueDumpForward_completionHandler___block_invoke;
    v8[3] = &unk_2789350E8;
    v9 = v5;
    SISynchedOpWithBlock(index, 4, v8);
  }

  else if (v5)
  {
    (*(v5 + 2))(v5, 0, 0);
  }
}

void __69__SPConcreteCoreSpotlightIndexer_issueDumpForward_completionHandler___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_opt_new();
    v5 = _SIGetIndexCount();
    if (v5 >= 1)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [v4 appendFormat:@"### Forward Store (%d)\n", i, v11, v12, v13, v14];
        v11 = MEMORY[0x277D85DD0];
        v12 = 3221225472;
        v13 = __69__SPConcreteCoreSpotlightIndexer_issueDumpForward_completionHandler___block_invoke_2;
        v14 = &unk_2789350C0;
        v8 = v4;
        _SIDirectoryStoreIterate();
      }

      v4 = v8;
    }
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = [v4 dataUsingEncoding:4];
    (*(v9 + 16))(v9, v10, 0);
  }
}

uint64_t __69__SPConcreteCoreSpotlightIndexer_issueDumpForward_completionHandler___block_invoke_2(uint64_t a1, int a2, uint64_t a3)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v6 = (21 * a2 + 21);
  v7 = v19 - ((v6 + 15) & 0x1FFFFFFF0);
  bzero(v7, v6);
  *v7 = 0;
  v8 = v7;
  if (a2 >= 1)
  {
    if (a2 >= 0x200)
    {
      v9 = 512;
    }

    else
    {
      v9 = a2;
    }

    v8 = v7;
    do
    {
      v10 = *(a3 + 8 * (v9 - 1));
      *v8 = 47;
      v11 = -1;
      v12 = 1;
      v13 = v10;
      do
      {
        v14 = v12;
        v15 = v13 + 9;
        v13 /= 10;
        ++v11;
        ++v12;
      }

      while (v15 > 0x12);
      do
      {
        v8[v14--] = v10 % 10 + 48;
        v10 /= 10;
      }

      while (v14 > 0);
      v8 += v11 + 2;
    }

    while (v9-- > 1);
  }

  *v8 = 0;
  result = [*(a1 + 32) appendFormat:@"%s\n", v7];
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

+ (BOOL)dumpCrashStates:(const char *)a3 toFile:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (!a3)
  {
    goto LABEL_24;
  }

  v7 = dup([v5 fileDescriptor]);
  if (v7 < 0)
  {
LABEL_23:
    LOBYTE(a3) = 0;
    goto LABEL_24;
  }

  v8 = v7;
  v9 = fdopen(v7, "a");
  if (!v9)
  {
    close(v8);
    goto LABEL_23;
  }

  v10 = v9;
  v11 = strrchr(a3, 47);
  if (!v11 || v11 == a3 || (*v11 = 0, v12 = v11 + 1, v13 = strlen(a3), (v14 = malloc_type_malloc(0x400uLL, 0x2934D7C0uLL)) == 0))
  {
LABEL_22:
    fclose(v10);
    goto LABEL_23;
  }

  v15 = v14;
  v16 = opendir(a3);
  if (!v16)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[SPConcreteCoreSpotlightIndexer dumpCrashStates:toFile:];
    }

    free(v15);
    goto LABEL_22;
  }

  v17 = v16;
  v18 = readdir(v16);
  if (v18)
  {
    v19 = v18;
    v20 = v13 - 1014;
    v27 = &v15[v13];
    v28 = &v15[v13 + 2];
    __dst = &v15[v13 + 1];
    do
    {
      if (v19->d_type == 4 && v19->d_name[0] != 46 && v20 + v19->d_namlen >= 0xFFFFFFFFFFFFFC00)
      {
        v21 = strlen(v12);
        if (!strncmp(v19->d_name, v12, v21))
        {
          __strcpy_chk();
          *v27 = 47;
          strcpy(__dst, v19->d_name)[v19->d_namlen] = 47;
          strcpy((v28 + v19->d_namlen), "mds64-crash-state-v2");
          memset(&v30, 0, sizeof(v30));
          if (!stat(v15, &v30))
          {
            v22 = +[SPCoreSpotlightIndexer sharedInstance];
            v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"\nCrash State %s\n", v15];
            [v23 dataUsingEncoding:4];
            v25 = v24 = v20;
            [v22 writeData:v25 toFile:v6];

            v20 = v24;
            _SICrashStateDump();
            fflush(v10);
          }
        }
      }

      v19 = readdir(v17);
    }

    while (v19);
  }

  free(v15);
  closedir(v17);
  fclose(v10);
  LOBYTE(a3) = 1;
LABEL_24:

  return a3;
}

- (BOOL)writeDiagnostic:(id)a3 bundleID:(id)a4 identifier:(id)a5
{
  v169 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v125 = a5;
  v146 = 0;
  v147 = &v146;
  v148 = 0x2020000000;
  v149 = 0;
  v10 = +[SPCoreSpotlightIndexer sharedInstance];
  v11 = MEMORY[0x277CCACA8];
  v12 = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
  v13 = [v11 stringWithFormat:@"=== Index %@\n\n", v12];
  v14 = [v13 dataUsingEncoding:4];
  v15 = [v10 writeData:v14 toFile:v8];
  *(v147 + 24) = v15;

  if (*(v147 + 24))
  {
    if (![v9 length])
    {
      goto LABEL_7;
    }

    if ([v125 length])
    {
      v16 = +[SPCoreSpotlightIndexer sharedInstance];
      [MEMORY[0x277CCACA8] stringWithFormat:@"Bundle: %@\nItem Identifier: %@\n\n", v9, v125];
    }

    else
    {
      v16 = +[SPCoreSpotlightIndexer sharedInstance];
      [MEMORY[0x277CCACA8] stringWithFormat:@"Bundle: %@\n\n", v9];
    }
    v17 = ;
    v18 = [v17 dataUsingEncoding:4];
    v19 = [v16 writeData:v18 toFile:v8];
    *(v147 + 24) = v19;

    if (*(v147 + 24))
    {
LABEL_7:
      v124 = [(SPConcreteCoreSpotlightIndexer *)self _indexPath];
      v20 = v124;
      v122 = [v124 fileSystemRepresentation];
      v123 = strlen(v122);
      if (!self->_index || !SIValidIndex())
      {
LABEL_50:
        v88 = +[SPCoreSpotlightIndexer sharedInstance];
        v89 = [v124 stringByAppendingString:@"\n"];
        v90 = [v89 dataUsingEncoding:4];
        v91 = [v88 writeData:v90 toFile:v8];
        *(v147 + 24) = v91;

        if (*(v147 + 24))
        {
          v92 = v123 + 1;
          if (v123 + 1 <= 0x3FF)
          {
            bzero(v162, 0x400uLL);
            __strcpy_chk();
            v162[v123] = 47;
            v162[v92] = 0;
            v93 = opendir(v162);
            if (v93)
            {
              while (1)
              {
                v94 = readdir(v93);
                if (!v94)
                {
                  break;
                }

                d_type = v94->d_type;
                if (d_type != 4 && d_type != 10 && v92 + v94->d_namlen <= 0x3FE)
                {
                  d_name = v94->d_name;
                  strcpy(&v162[v92], v94->d_name);
                  memset(&v127, 0, sizeof(v127));
                  if (!stat(v162, &v127))
                  {
                    v160 = 0u;
                    v161 = 0u;
                    *v158 = 0u;
                    v159 = 0u;
                    v156 = 0u;
                    v157 = 0u;
                    *v154 = 0u;
                    v155 = 0u;
                    v152 = 0u;
                    v153 = 0u;
                    *v150 = 0u;
                    v151 = 0u;
                    memset(&v126, 0, sizeof(v126));
                    localtime_r(&v127.st_birthtimespec.tv_sec, &v126);
                    strftime(v158, 0x40uLL, "%F %T", &v126);
                    localtime_r(&v127.st_ctimespec.tv_sec, &v126);
                    strftime(v154, 0x40uLL, "%F %T", &v126);
                    localtime_r(&v127.st_mtimespec.tv_sec, &v126);
                    strftime(v150, 0x40uLL, "%F %T", &v126);
                    v98 = open(v162, 0x8000);
                    v99 = v98;
                    if (v98 == -1)
                    {
                      v100 = 0;
                    }

                    else
                    {
                      v100 = fcntl(v98, 63);
                      close(v99);
                    }

                    v101 = +[SPCoreSpotlightIndexer sharedInstance];
                    v102 = [MEMORY[0x277CCACA8] stringWithFormat:@"\t%s\t%ld\t%d\t%s\t%s\t%s\n", d_name, v127.st_size, v100, v158, v154, v150];
                    v103 = [v102 dataUsingEncoding:4];
                    v104 = [v101 writeData:v103 toFile:v8];
                    *(v147 + 24) = v104;

                    if (!*(v147 + 24))
                    {
                      goto LABEL_74;
                    }
                  }
                }
              }

              closedir(v93);
              [SPConcreteCoreSpotlightIndexer dumpCrashStates:v122 toFile:v8];
            }
          }

          v105 = +[SPCoreSpotlightIndexer sharedInstance];
          v106 = [@"===\n\n" dataUsingEncoding:4];
          v107 = [v105 writeData:v106 toFile:v8];
          *(v147 + 24) = v107;

          if (*(v147 + 24))
          {
            v108 = SPLogDirectory();
            v109 = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
            v110 = [v109 stringByAppendingString:@".log"];
            v111 = [v108 stringByAppendingPathComponent:v110];

            v112 = [v124 stringByAppendingPathComponent:@"activityJournal.1"];
            v113 = [MEMORY[0x277CCAA00] defaultManager];
            [v113 removeItemAtPath:v111 error:0];
            [v113 copyItemAtPath:v112 toPath:v111 error:0];

            v25 = 1;
LABEL_75:

            goto LABEL_76;
          }
        }

LABEL_74:
        v25 = 0;
        goto LABEL_75;
      }

      if (self->_suspended)
      {
        indexQueue = self->_indexQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __70__SPConcreteCoreSpotlightIndexer_writeDiagnostic_bundleID_identifier___block_invoke;
        block[3] = &unk_278934050;
        block[4] = self;
        dispatch_sync(indexQueue, block);
        if (self->_suspended)
        {
          v22 = +[SPCoreSpotlightIndexer sharedInstance];
          v23 = [@"   Index suspended\n\n" dataUsingEncoding:4];
          v24 = [v22 writeData:v23 toFile:v8];
          *(v147 + 24) = v24;

          if (!*(v147 + 24))
          {
            goto LABEL_74;
          }

          goto LABEL_50;
        }
      }

      index = self->_index;
      v27 = SICopyProperties();
      v121 = v27;
      if (!v27)
      {
LABEL_39:
        v67 = self->_index;
        v68 = SICopyCSClientStateCache();
        if (!v68)
        {
          goto LABEL_43;
        }

        v69 = +[SPCoreSpotlightIndexer sharedInstance];
        v70 = [@"ClientStateCache:\n" dataUsingEncoding:4];
        v71 = [v69 writeData:v70 toFile:v8];
        *(v147 + 24) = v71;

        if (*(v147 + 24))
        {
          *v162 = 0;
          v163 = v162;
          v164 = 0x2020000000;
          LOBYTE(v165) = 1;
          v128[0] = MEMORY[0x277D85DD0];
          v128[1] = 3221225472;
          v128[2] = __70__SPConcreteCoreSpotlightIndexer_writeDiagnostic_bundleID_identifier___block_invoke_6;
          v128[3] = &unk_2789351B0;
          v72 = v8;
          v129 = v72;
          v130 = v162;
          [v68 enumerateKeysAndObjectsUsingBlock:v128];
          v73 = v163[24];
          *(v147 + 24) = v73;
          if (v73)
          {
            v74 = +[SPCoreSpotlightIndexer sharedInstance];
            v75 = [@"\n" dataUsingEncoding:4];
            v76 = [v74 writeData:v75 toFile:v72];
            *(v147 + 24) = v76;

            v77 = *(v147 + 24) == 0;
            _Block_object_dispose(v162, 8);
            if (!v77)
            {
LABEL_43:
              v78 = self->_index;
              v79 = _SISchedulerCopyDump();
              if (v79)
              {
                v80 = +[SPCoreSpotlightIndexer sharedInstance];
                v81 = [v79 description];
                v82 = [v81 dataUsingEncoding:4];
                v83 = [v80 writeData:v82 toFile:v8];
                *(v147 + 24) = v83;

                if ((v147[3] & 1) == 0)
                {

                  goto LABEL_74;
                }

                v84 = +[SPCoreSpotlightIndexer sharedInstance];
                v85 = [@"\n\n" dataUsingEncoding:4];
                v86 = [v84 writeData:v85 toFile:v8];
                *(v147 + 24) = v86;

                v87 = *(v147 + 24) == 0;
                if (v87)
                {
                  goto LABEL_74;
                }
              }

              else
              {
              }

              goto LABEL_50;
            }
          }

          else
          {

            _Block_object_dispose(v162, 8);
          }
        }

        goto LABEL_74;
      }

      v28 = +[SPCoreSpotlightIndexer sharedInstance];
      v29 = [v27 description];
      v30 = [v29 dataUsingEncoding:4];
      v31 = [v28 writeData:v30 toFile:v8];
      *(v147 + 24) = v31;

      if (!*(v147 + 24))
      {
        goto LABEL_73;
      }

      v32 = +[SPCoreSpotlightIndexer sharedInstance];
      v33 = [@"\n\n" dataUsingEncoding:4];
      v34 = [v32 writeData:v33 toFile:v8];
      *(v147 + 24) = v34;

      if (!*(v147 + 24))
      {
LABEL_73:

        goto LABEL_74;
      }

      if (![v9 length])
      {
        goto LABEL_39;
      }

      v35 = [v27 objectForKeyedSubscript:@"GroupAssignments"];
      v36 = [v35 objectForKeyedSubscript:v9];
      v118 = v35;

      if (!v36)
      {
        goto LABEL_36;
      }

      v37 = [v35 objectForKeyedSubscript:@"com.apple.searchd"];

      if (!v37)
      {
        goto LABEL_36;
      }

      v38 = dispatch_group_create();
      dispatch_group_enter(v38);
      *v162 = 0;
      v163 = v162;
      v164 = 0x3032000000;
      v165 = __Block_byref_object_copy__0;
      v166 = __Block_byref_object_dispose__0;
      v167 = 0;
      v39 = self->_index;
      v141[0] = MEMORY[0x277D85DD0];
      v141[1] = 3221225472;
      v141[2] = __70__SPConcreteCoreSpotlightIndexer_writeDiagnostic_bundleID_identifier___block_invoke_2;
      v141[3] = &unk_278935138;
      v142 = v9;
      v144 = v162;
      v40 = v38;
      v143 = v40;
      SISynchedOpWithBlock(v39, 3, v141);
      dispatch_group_wait(v40, 0xFFFFFFFFFFFFFFFFLL);
      v117 = v40;
      if ([*(v163 + 5) count])
      {
        v41 = [*(v163 + 5) objectForKeyedSubscript:*MEMORY[0x277CC24A8]];
        v116 = v41;
        if (!v41)
        {
          goto LABEL_23;
        }

        v42 = +[SPCoreSpotlightIndexer sharedInstance];
        v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n   AttributeChangeDate = %@\n", v41];
        v44 = [v43 dataUsingEncoding:4];
        v45 = [v42 writeData:v44 toFile:v8];
        *(v147 + 24) = v45;

        v46 = v41;
        if (!*(v147 + 24))
        {
LABEL_70:
        }

        else
        {
LABEL_23:
          v139 = 0u;
          v140 = 0u;
          v137 = 0u;
          v138 = 0u;
          obj = *(v163 + 5);
          v47 = [obj countByEnumeratingWithState:&v137 objects:v168 count:16];
          if (v47)
          {
            v120 = *v138;
            while (2)
            {
              for (i = 0; i != v47; ++i)
              {
                if (*v138 != v120)
                {
                  objc_enumerationMutation(obj);
                }

                v49 = *(*(&v137 + 1) + 8 * i);
                v50 = [*(v163 + 5) objectForKeyedSubscript:v49];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v51 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v50 encoding:4];
                  if (![v51 length])
                  {
                    v52 = [v50 description];

                    v51 = v52;
                  }

                  v53 = +[SPCoreSpotlightIndexer sharedInstance];
                  v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"   %@ = %@\n", v49, v51];
                  v55 = [v54 dataUsingEncoding:4];
                  v56 = [v53 writeData:v55 toFile:v8];
                  *(v147 + 24) = v56;

                  LOBYTE(v53) = *(v147 + 24) == 0;
                  if (v53)
                  {

                    v46 = v116;
                    goto LABEL_70;
                  }
                }
              }

              v47 = [obj countByEnumeratingWithState:&v137 objects:v168 count:16];
              if (v47)
              {
                continue;
              }

              break;
            }
          }

          v57 = +[SPCoreSpotlightIndexer sharedInstance];
          v58 = [@"\n\n" dataUsingEncoding:4];
          v59 = [v57 writeData:v58 toFile:v8];
          *(v147 + 24) = v59;

          v60 = *(v147 + 24) == 0;
          if (!v60)
          {
            goto LABEL_35;
          }
        }

        _Block_object_dispose(v162, 8);
LABEL_72:

        goto LABEL_73;
      }

LABEL_35:

      _Block_object_dispose(v162, 8);
LABEL_36:
      if (!v125)
      {
        goto LABEL_38;
      }

      v61 = dispatch_group_create();
      dispatch_group_enter(v61);
      v131[0] = MEMORY[0x277D85DD0];
      v131[1] = 3221225472;
      v131[2] = __70__SPConcreteCoreSpotlightIndexer_writeDiagnostic_bundleID_identifier___block_invoke_4;
      v131[3] = &unk_278935188;
      v131[4] = self;
      v132 = v9;
      v133 = v125;
      v136 = &v146;
      v134 = v8;
      v62 = v61;
      v135 = v62;
      v63 = MEMORY[0x2383760E0](v131);
      v64 = sIndexQueue;
      v65 = _setup_block(v63, 0, 8145);
      dispatch_async(v64, v65);

      dispatch_group_wait(v62, 0xFFFFFFFFFFFFFFFFLL);
      v66 = *(v147 + 24) == 0;

      if (!v66)
      {
LABEL_38:

        goto LABEL_39;
      }

      goto LABEL_72;
    }
  }

  v25 = 0;
LABEL_76:
  _Block_object_dispose(&v146, 8);

  v114 = *MEMORY[0x277D85DE8];
  return v25;
}

void __70__SPConcreteCoreSpotlightIndexer_writeDiagnostic_bundleID_identifier___block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v7[0] = *(a1 + 32);
    [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    v6 = *(a1 + 40);
    v4 = v6;
    if (SIGetCSAttributes())
    {
      dispatch_group_leave(*(a1 + 40));
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __70__SPConcreteCoreSpotlightIndexer_writeDiagnostic_bundleID_identifier___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = _MDPlistBytesCopyPlistAtIndex();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
      if ([v4 count] >= 2)
      {
        v5 = [v4 objectAtIndexedSubscript:1];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 count])
        {
          v6 = [v5 objectAtIndexedSubscript:0];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_storeStrong((*(*(a1 + 40) + 8) + 40), v6);
          }
        }
      }
    }
  }

  v7 = *(a1 + 32);

  dispatch_group_leave(v7);
}

void __70__SPConcreteCoreSpotlightIndexer_writeDiagnostic_bundleID_identifier___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __70__SPConcreteCoreSpotlightIndexer_writeDiagnostic_bundleID_identifier___block_invoke_5;
  v5[3] = &unk_278935160;
  v8 = *(a1 + 72);
  v4 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  [v2 attributesForBundleId:v3 identifier:v4 completion:v5];
}

void __70__SPConcreteCoreSpotlightIndexer_writeDiagnostic_bundleID_identifier___block_invoke_5(void *a1, void *a2)
{
  v3 = a2;
  v4 = +[SPCoreSpotlightIndexer sharedInstance];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"_kMDItemSDBInfo = %@\n\n", v3];

  v6 = [v5 dataUsingEncoding:4];
  *(*(a1[6] + 8) + 24) = [v4 writeData:v6 toFile:a1[4]];

  v7 = a1[5];

  dispatch_group_leave(v7);
}

void __70__SPConcreteCoreSpotlightIndexer_writeDiagnostic_bundleID_identifier___block_invoke_6(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = +[SPCoreSpotlightIndexer sharedInstance];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"\tbundleID: %@\n", v7];
    v11 = [v10 dataUsingEncoding:4];
    v12 = [v9 writeData:v11 toFile:*(a1 + 32)];

    if (v12)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __70__SPConcreteCoreSpotlightIndexer_writeDiagnostic_bundleID_identifier___block_invoke_7;
      v15[3] = &unk_2789351B0;
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      v16 = v13;
      v17 = v14;
      [v8 enumerateKeysAndObjectsUsingBlock:v15];
      if (*(*(*(a1 + 40) + 8) + 24) == 1)
      {
        *a4 = 1;
      }
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
      *a4 = 1;
    }
  }
}

void __70__SPConcreteCoreSpotlightIndexer_writeDiagnostic_bundleID_identifier___block_invoke_7(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v13 = a2;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v7 encoding:4];
    if (!v8)
    {
      v8 = [v7 description];
    }

    v9 = +[SPCoreSpotlightIndexer sharedInstance];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"\t\t%@: %@\n", v13, v8];
    v11 = [v10 dataUsingEncoding:4];
    v12 = [v9 writeData:v11 toFile:*(a1 + 32)];

    if ((v12 & 1) == 0)
    {
      *a4 = 1;
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }
}

- (void)dropBackgroundAssertions:(BOOL)a3
{
  v20 = *MEMORY[0x277D85DE8];
  if (self->_hasAssertion)
  {
    v3 = a3;
    v5 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      dataclass = self->_dataclass;
      v7 = "NO";
      if (self->_suspended)
      {
        v7 = "YES";
      }

      *buf = 138412546;
      v17 = dataclass;
      v18 = 2080;
      v19 = v7;
      _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_INFO, "Dropping bg assertion on unlock, dataclass:%@, suspended:%s", buf, 0x16u);
    }

    self->_hasAssertion = 0;
    index = self->_index;
    if (index)
    {
      if (v3)
      {
        v9 = dispatch_group_create();
        dispatch_group_enter(v9);
        index = self->_index;
      }

      else
      {
        v9 = 0;
      }

      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __59__SPConcreteCoreSpotlightIndexer_dropBackgroundAssertions___block_invoke;
      v12[3] = &unk_278935200;
      v15 = v3;
      v10 = v9;
      v13 = v10;
      v14 = self;
      SISynchedOpWithBlock(index, 3, v12);
      if (v3)
      {
        dispatch_group_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
      }
    }

    else
    {
      self->_assertionEndTime = 0.0;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __59__SPConcreteCoreSpotlightIndexer_dropBackgroundAssertions___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if (*(a1 + 48) == 1)
    {
      v4 = *(a1 + 32);

      dispatch_group_leave(v4);
    }
  }

  else
  {
    v6 = dispatch_group_create();
    dispatch_group_enter(v6);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __59__SPConcreteCoreSpotlightIndexer_dropBackgroundAssertions___block_invoke_2;
    v9[3] = &unk_2789351D8;
    v7 = v6;
    v8 = *(a1 + 40);
    v10 = v7;
    v11 = v8;
    SIBackgroundOpBlock(a2, 0, v9);
    dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
    if (*(a1 + 48) == 1)
    {
      dispatch_group_leave(*(a1 + 32));
    }
  }
}

void __59__SPConcreteCoreSpotlightIndexer_dropBackgroundAssertions___block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = *(a1 + 32);
    v5 = *MEMORY[0x277D85DE8];

    dispatch_group_leave(v4);
  }

  else
  {
    SISetBgAssertionFlag();
    if (CFAbsoluteTimeGetCurrent() <= *(*(a1 + 40) + 80))
    {
      v6 = SIDropAssertion();
      *(*(a1 + 40) + 80) = 0;
      v7 = logForCSLogCategoryIndex();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(*(a1 + 40) + 192);
        v10 = 138412546;
        v11 = v8;
        v12 = 1024;
        v13 = v6;
        _os_log_impl(&dword_231A35000, v7, OS_LOG_TYPE_INFO, "dataclass:%@, SIDropAssertion returned: %d", &v10, 0x12u);
      }
    }

    dispatch_group_leave(*(a1 + 32));
    v9 = *MEMORY[0x277D85DE8];
  }
}

- (void)closeIndex
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_index)
  {
    v3 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      dataclass = self->_dataclass;
      v5 = "NO";
      if (self->_suspended)
      {
        v5 = "YES";
      }

      v13 = 138412546;
      v14 = dataclass;
      v15 = 2080;
      v16 = v5;
      _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_INFO, "Closing index, dataclass:%@, suspended:%s", &v13, 0x16u);
    }

    v6 = [(SPConcreteCoreSpotlightIndexer *)self _cancelIdleTimer];
    if (self->_suspended)
    {
      if (!self->_softSuspended && !self->_hasAssertion)
      {
        index = self->_index;
        SIResumeIndex();
      }

      *&self->_suspended = 0;
    }

    v8 = self->_index;
    SICloseIndex();
    self->_index = 0;
    v9 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = self->_dataclass;
      v13 = 138412290;
      v14 = v10;
      _os_log_impl(&dword_231A35000, v9, OS_LOG_TYPE_INFO, "Closed index, dataclass:%@", &v13, 0xCu);
    }

    v11 = objc_opt_self();
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __45__SPConcreteCoreSpotlightIndexer_resumeIndex__block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (a2)
  {
    if (!a3)
    {
      MEMORY[0x2821872C0](a2);
    }
  }
}

uint64_t __45__SPConcreteCoreSpotlightIndexer_readyIndex___block_invoke(uint64_t result, uint64_t a2, int a3)
{
  if (!a3)
  {
    v4 = result;
    if (_os_feature_enabled_impl() && [*(*(v4 + 32) + 192) isEqualToString:*MEMORY[0x277CCA190]])
    {
      SIReleaseJournalAssertion();
    }

    SISetLockedJournalingState();

    return _SISetAssertedJournalNum();
  }

  return result;
}

- (void)ensureOpenIndexFiles:(id)a3
{
  if (self->_index)
  {
    v4 = a3;
    _SIOpenIndexFilesForMerge();
    [(SPConcreteCoreSpotlightIndexer *)self commitUpdates:v4];
  }
}

- (void)suspendIndexForDeviceLock:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  index = self->_index;
  if (SIIndexIsInPlayback())
  {
LABEL_10:
    if (!self->_suspended)
    {
      v15 = logForCSLogCategoryIndex();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        dataclass = self->_dataclass;
        *buf = 138412290;
        *v41 = dataclass;
        _os_log_impl(&dword_231A35000, v15, OS_LOG_TYPE_INFO, "Maintenance mode, dataclass:%@", buf, 0xCu);
      }

      if (self->_index)
      {
        Current = CFAbsoluteTimeGetCurrent();
        if (Current >= self->_assertionEndTime)
        {
          v21 = 0;
        }

        else
        {
          v18 = logForCSLogCategoryIndex();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v19 = (self->_assertionEndTime - Current);
            v20 = self->_dataclass;
            *buf = 67109378;
            *v41 = v19;
            *&v41[4] = 2112;
            *&v41[6] = v20;
            _os_log_impl(&dword_231A35000, v18, OS_LOG_TYPE_INFO, "Holding assertion for: %d seconds dataclass:%@ as the device is locking", buf, 0x12u);
          }

          SIBackgroundOpBlock(self->_index, 0, &__block_literal_global_1207);
          v21 = 1;
        }

        self->_hasAssertion = v21;
        v22 = dispatch_get_global_queue(2, 2uLL);
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __60__SPConcreteCoreSpotlightIndexer_suspendIndexForDeviceLock___block_invoke_2;
        v38[3] = &unk_278935270;
        v38[4] = self;
        v39 = v4;
        dispatch_apply(2uLL, v22, v38);
      }

      *&self->_suspended = 257;
    }

    goto LABEL_21;
  }

  v6 = [(SPConcreteCoreSpotlightIndexer *)self outstandingMaintenance];
  v7 = [v6 count];
  v8 = MEMORY[0x277CCA190];
  if (!v7 && !atomic_load(&self->_maintenanceOperations))
  {

    goto LABEL_25;
  }

  v10 = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
  if (v10 == *v8)
  {
LABEL_9:

    goto LABEL_10;
  }

  v11 = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
  v12 = v11;
  if (v11 == *MEMORY[0x277CCA198])
  {

    goto LABEL_9;
  }

  v13 = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
  v14 = *MEMORY[0x277CCA1A8];

  if (v13 == v14)
  {
    goto LABEL_10;
  }

LABEL_25:
  if (self->_index)
  {
    v26 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = self->_dataclass;
      v28 = "NO";
      if (self->_suspended)
      {
        v28 = "YES";
      }

      *buf = 138412546;
      *v41 = v27;
      *&v41[8] = 2080;
      *&v41[10] = v28;
      _os_log_impl(&dword_231A35000, v26, OS_LOG_TYPE_INFO, "Suspending index, dataclass:%@, suspended:%s", buf, 0x16u);
    }

    if (!self->_suspended)
    {
      self->_suspending = 1;
      v29 = CFAbsoluteTimeGetCurrent();
      if (v29 >= self->_assertionEndTime)
      {
        self->_hasAssertion = 0;
        if (_os_feature_enabled_impl() && [(NSString *)self->_dataclass isEqualToString:*v8])
        {
          SIBackgroundOpBlock(self->_index, 0, &__block_literal_global_1214);
        }

        v33 = self->_index;
        self->_suspended = SIFlushAndSuspendIndex() != 0;
        if (_os_feature_enabled_impl() && [(NSString *)self->_dataclass isEqualToString:*v8])
        {
          SIBackgroundOpBlock(self->_index, 0, &__block_literal_global_1217);
        }
      }

      else
      {
        v30 = logForCSLogCategoryIndex();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          v31 = (self->_assertionEndTime - v29);
          v32 = self->_dataclass;
          *buf = 67109378;
          *v41 = v31;
          *&v41[4] = 2112;
          *&v41[6] = v32;
          _os_log_impl(&dword_231A35000, v30, OS_LOG_TYPE_INFO, "Holding assertion for: %d seconds dataclass:%@ as the device is locking", buf, 0x12u);
        }

        SIBackgroundOpBlock(self->_index, 0, &__block_literal_global_1211);
        self->_hasAssertion = 1;
        self->_suspended = 1;
      }

      *&self->_softSuspended = 0;
      if (self->_suspended)
      {
        v34 = [(SPConcreteCoreSpotlightIndexer *)self _cancelIdleTimer];
      }
    }

    v35 = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
    v36 = *v8;

    if (v35 == v36)
    {
      v37 = self->_index;
      _SITemporarilyChangeProtectionClass();
    }
  }

LABEL_21:
  v23 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
    *buf = 138412546;
    *v41 = 0;
    *&v41[8] = 2112;
    *&v41[10] = v24;
    _os_log_impl(&dword_231A35000, v23, OS_LOG_TYPE_DEFAULT, "Releasing assertion %@ (%@)", buf, 0x16u);
  }

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __60__SPConcreteCoreSpotlightIndexer_suspendIndexForDeviceLock___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    return SISetBgAssertionFlag();
  }

  return result;
}

void __60__SPConcreteCoreSpotlightIndexer_suspendIndexForDeviceLock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    dispatch_group_enter(*(a1 + 40));
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = *(v4 + 152);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __60__SPConcreteCoreSpotlightIndexer_suspendIndexForDeviceLock___block_invoke_3;
    v9[3] = &unk_2789351D8;
    v9[4] = v4;
    v10 = v3;
    SIBackgroundOpBlock(v5, 9, v9);
  }

  else
  {
    v6 = [*(a1 + 32) dataclass];
    v7 = *MEMORY[0x277CCA190];

    if (v6 == v7)
    {
      v8 = *(*(a1 + 32) + 152);

      _SITemporarilyChangeProtectionClass();
    }
  }
}

void __60__SPConcreteCoreSpotlightIndexer_suspendIndexForDeviceLock___block_invoke_3(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    [*(a1 + 32) ensureOpenIndexFiles:*(a1 + 40)];
  }

  v4 = *(a1 + 40);

  dispatch_group_leave(v4);
}

uint64_t __60__SPConcreteCoreSpotlightIndexer_suspendIndexForDeviceLock___block_invoke_1209(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    return SISetBgAssertionFlag();
  }

  return result;
}

void __60__SPConcreteCoreSpotlightIndexer_suspendIndexForDeviceLock___block_invoke_2_1212(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    MEMORY[0x282186FF0](a2);
  }
}

uint64_t __60__SPConcreteCoreSpotlightIndexer_suspendIndexForDeviceLock___block_invoke_3_1215(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    return SISetLockedJournalingState();
  }

  return result;
}

- (void)preheat
{
  if (self->_index)
  {
    v3 = self->_lastPreheat + 30.0;
    if (v3 < CFAbsoluteTimeGetCurrent())
    {
      index = self->_index;
      SIPreHeatIndex();
      self->_lastPreheat = CFAbsoluteTimeGetCurrent();
    }
  }
}

- (void)processDecryptsForBundleID:(id)a3 persona:(id)a4 infos:(id)a5 group:(id)a6
{
  v36 = *MEMORY[0x277D85DE8];
  v21 = a3;
  v22 = a4;
  v10 = a5;
  group = a6;
  if (self->_readOnly)
  {
    v11 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231A35000, v11, OS_LOG_TYPE_DEFAULT, "processDecryptsForBundleID failed: index is readOnly", buf, 2u);
    }
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v10, "count")}];
    v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v10, "count")}];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v13 = v10;
    v14 = [v13 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v14)
    {
      v15 = *v30;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v30 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v29 + 1) + 8 * i);
          v18 = [v17 decryptInfo];
          [v11 addObject:v18];

          v19 = [v17 externalID];
          [v12 addObject:v19];
        }

        v14 = [v13 countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v14);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = v12;
      _os_log_impl(&dword_231A35000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Process decrypts for  %@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    if (group)
    {
      dispatch_group_enter(group);
    }

    v24 = v12;
    objc_copyWeak(&v28, buf);
    v25 = v21;
    v26 = v22;
    v27 = group;
    _MDItemDecrypt();

    objc_destroyWeak(&v28);
    objc_destroyWeak(buf);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __81__SPConcreteCoreSpotlightIndexer_processDecryptsForBundleID_persona_infos_group___block_invoke(id *a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    *buf = 138412546;
    v20 = v5;
    v21 = 2112;
    v22 = a3;
    _os_log_impl(&dword_231A35000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Process decrypts (%@, %@)", buf, 0x16u);
  }

  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  v8 = WeakRetained;
  v9 = WeakRetained[19];
  if (!v9)
  {
    v9 = WeakRetained[20];
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __81__SPConcreteCoreSpotlightIndexer_processDecryptsForBundleID_persona_infos_group___block_invoke_1218;
  v12[3] = &unk_278935298;
  objc_copyWeak(&v18, a1 + 8);
  v13 = a1[5];
  v14 = a1[4];
  v10 = v6;
  v15 = v10;
  v16 = a1[6];
  v17 = a1[7];
  SIBackgroundOpBlock(v9, 9, v12);

  objc_destroyWeak(&v18);
  v11 = *MEMORY[0x277D85DE8];
}

void __81__SPConcreteCoreSpotlightIndexer_processDecryptsForBundleID_persona_infos_group___block_invoke_1218(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a1;
  v47 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v6 = WeakRetained;
  if (!a3)
  {
    v33 = WeakRetained;
    v7 = objc_alloc_init(MEMORY[0x277CC33A0]);
    [v7 beginArray];
    v8 = *(v4 + 48);
    v32 = v4;
    v9 = *(v4 + 40);
    v10 = v8;
    v36 = v7;
    obj = v9;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v11 = [v9 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v39;
      v35 = *MEMORY[0x277CBEEE8];
      v34 = *MEMORY[0x277CC31A0];
      v15 = 0x277CBE000uLL;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v39 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v38 + 1) + 8 * i);
          v18 = [v10 objectAtIndexedSubscript:v13];
          v19 = logForCSLogCategoryDefault();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            [v18 description];
            v20 = v14;
            v21 = v10;
            v23 = v22 = v15;
            v24 = [v23 UTF8String];
            *buf = 138412546;
            v43 = v17;
            v44 = 2080;
            v45 = v24;
            _os_log_impl(&dword_231A35000, v19, OS_LOG_TYPE_INFO, "Updated attributeSet: %@ %s\n", buf, 0x16u);

            v15 = v22;
            v10 = v21;
            v14 = v20;
          }

          v25 = *(v15 + 2752);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (v18)
            {
              [MEMORY[0x277CBEB38] dictionaryWithDictionary:v18];
            }

            else
            {
              [MEMORY[0x277CBEB38] dictionary];
            }
            v26 = ;
            [v26 setObject:v35 forKeyedSubscript:@"_kMDItemEncryptedData"];
            [v26 setObject:v17 forKeyedSubscript:@"_kMDItemExternalID"];
            [v26 removeObjectForKey:v34];
            [v36 beginArray];
            [v36 encodeString:"__class:CSSearchableItemAttributeSet"];
            [v36 encodeInt64:8];
            [v36 encodeObject:v26];
            [v36 endArray];
          }

          ++v13;
        }

        v12 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v12);
    }

    [v36 endArray];
    v27 = [v36 data];
    v4 = v32;
    v28 = *(v32 + 32);
    v29 = *(v32 + 56);
    SISetCodedAttributes();

    v6 = v33;
  }

  v30 = *(v4 + 64);
  if (v30)
  {
    dispatch_group_leave(v30);
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)processImportForBundleID:(id)a3 withURLs:(id)a4 contentTypes:(id)a5 sandboxExtensions:(id)a6 andIdentifiers:(id)a7 options:(int64_t)a8 inGroup:(id)a9 additionalAttributes:(id)a10 computeUpdaterAttributesAfterImport:(BOOL)a11 cancelBlock:(id)a12
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v75 = a6;
  v19 = a7;
  v20 = a9;
  v74 = a10;
  v21 = a12;
  v76 = v17;
  if (v17 && v19)
  {
    if (self->_readOnly)
    {
      v22 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_231A35000, v22, OS_LOG_TYPE_DEFAULT, "processImportForBundleID failed: index is readOnly", buf, 2u);
      }
    }

    else
    {
      v23 = [MEMORY[0x277CC3530] sharedManager];
      [v23 loadExtensions];
      v72 = v19;
      v24 = [v19 count];
      v25 = malloc_type_malloc(4 * v24, 0x100004052888210uLL);
      v26 = v25;
      if (v24 >= 1)
      {
        v27 = 0;
        v28 = vdupq_n_s64((v24 & 0x7FFFFFFF) - 1);
        v29 = xmmword_231AED7A0;
        v30 = xmmword_231AED7B0;
        v31 = v25 + 2;
        v32 = vdupq_n_s64(4uLL);
        do
        {
          v33 = vmovn_s64(vcgeq_u64(v28, v30));
          if (vuzp1_s16(v33, *v28.i8).u8[0])
          {
            *(v31 - 2) = v27;
          }

          if (vuzp1_s16(v33, *&v28).i8[2])
          {
            *(v31 - 1) = v27 + 1;
          }

          if (vuzp1_s16(*&v28, vmovn_s64(vcgeq_u64(v28, *&v29))).i32[1])
          {
            *v31 = v27 + 2;
            v31[1] = v27 + 3;
          }

          v27 += 4;
          v29 = vaddq_s64(v29, v32);
          v30 = vaddq_s64(v30, v32);
          v31 += 4;
        }

        while (((v24 + 3) & 0xFFFFFFFC) != v27);
      }

      __compar[0] = MEMORY[0x277D85DD0];
      __compar[1] = 3221225472;
      __compar[2] = __199__SPConcreteCoreSpotlightIndexer_processImportForBundleID_withURLs_contentTypes_sandboxExtensions_andIdentifiers_options_inGroup_additionalAttributes_computeUpdaterAttributesAfterImport_cancelBlock___block_invoke;
      __compar[3] = &unk_2789352E8;
      v70 = v18;
      v83 = v70;
      qsort_b(v26, v24, 4uLL, __compar);
      v67 = v23;
      v65 = v26;
      if (v24 < 1)
      {
        v35 = 0;
        v59 = 0;
        v36 = 0;
        v37 = 0;
        v62 = 0;
      }

      else
      {
        v34 = v26;
        v73 = v16;
        v63 = v21;
        v64 = v18;
        v66 = v20;
        v35 = 0;
        v71 = 0;
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39 = v24 & 0x7FFFFFFF;
        v40 = 1;
        do
        {
          v41 = v39;
          v42 = *v34;
          v81 = v34 + 1;
          v80 = [v76 objectAtIndexedSubscript:v42];
          v43 = [v70 objectAtIndexedSubscript:v42];
          v78 = [v72 objectAtIndexedSubscript:v42];
          v77 = [v75 objectAtIndexedSubscript:v42];
          v44 = [v35 isEqual:v43];
          if (v40 & 1) != 0 && (v44)
          {
            v79 = v35;
            v45 = v38;
            v46 = v73;
            v47 = v37;
            v48 = v36;
          }

          else
          {
            v49 = v38;
            v50 = v37;
            v51 = v36;
            if (v71)
            {
              [v36 endArray];
              v52 = [v36 data];
              v53 = [v52 copy];
              [v71 setImportData:v53];

              [v71 setFileAttributeSets:v50];
              processItemsForImport(self, v73, v67, v71, v49, v66, a11);
            }

            v54 = [objc_alloc(MEMORY[0x277CC3420]) initWithJobType:13 jobOptions:a8];

            [v54 setFileType:v43];
            v55 = v43;

            v56 = v49;
            v57 = objc_alloc_init(MEMORY[0x277CC33A0]);

            [v57 beginArray];
            v47 = [MEMORY[0x277CBEB18] array];

            v45 = [MEMORY[0x277CBEB18] array];

            v48 = v57;
            v71 = v54;
            v79 = v55;
            v46 = v73;
          }

          v36 = v48;
          [v48 encodeNSString:v77];
          v58 = [objc_alloc(MEMORY[0x277CC34B8]) initWithItemContentType:v43];
          [v58 setContentURL:v80];
          [v58 addAttributesFromDictionary:v74];
          [v58 setBundleIdentifier:v46];
          v37 = v47;
          [v47 addObject:v58];
          v38 = v45;
          [v45 addObject:v78];

          v40 = 0;
          v39 = v41 - 1;
          v35 = v79;
          v34 = v81;
        }

        while (v41 != 1);
        v59 = v71;
        if (v71)
        {
          [v36 endArray];
          v60 = [v36 data];
          v61 = [v60 copy];
          [v71 setImportData:v61];

          [v71 setFileAttributeSets:v37];
          v62 = v45;
          v16 = v73;
          v20 = v66;
          processItemsForImport(self, v73, v67, v71, v45, v66, a11);
          v21 = v63;
          v18 = v64;
        }

        else
        {
          v21 = v63;
          v18 = v64;
          v20 = v66;
          v62 = v38;
          v16 = v73;
        }
      }

      free(v65);

      v19 = v72;
      v22 = v67;
    }
  }
}

uint64_t __199__SPConcreteCoreSpotlightIndexer_processImportForBundleID_withURLs_contentTypes_sandboxExtensions_andIdentifiers_options_inGroup_additionalAttributes_computeUpdaterAttributesAfterImport_cancelBlock___block_invoke(uint64_t a1, int *a2, int *a3)
{
  v5 = [*(a1 + 32) objectAtIndexedSubscript:*a2];
  v6 = [*(a1 + 32) objectAtIndexedSubscript:*a3];
  v7 = [v5 compare:v6];

  return v7;
}

- (void)checkAdmission:(id)a3 background:(BOOL)a4 didBeginThrottle:(BOOL *)a5 didEndThrottle:(BOOL *)a6 live:(BOOL *)a7 slow:(BOOL *)a8 memoryPressure:(BOOL *)a9
{
  v35 = *MEMORY[0x277D85DE8];
  v15 = a3;
  if (v15 && !a4 && (-[SPConcreteCoreSpotlightIndexer owner](self, "owner"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 isForegroundFileProviderBundleID:v15], v16, (v17 & 1) != 0))
  {
    v18 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v31 = 138412290;
      v32 = v15;
      _os_log_impl(&dword_231A35000, v18, OS_LOG_TYPE_INFO, "Skipping admission check for foreground file provider %@", &v31, 0xCu);
    }
  }

  else
  {
    v19 = [v15 hasPrefix:@"com.apple."];
    if (a4)
    {
      v20 = 0;
      v21 = 0;
    }

    else
    {
      v22 = [buckets valueForKey:v15];
      v20 = v22 < bulk_budget_threshold;
      v21 = v20;
    }

    *a7 = v20;
    if (v19)
    {
      v23 = v21 | 2u;
    }

    else
    {
      v23 = v21;
    }

    if (CFAbsoluteTimeGetCurrent() - check_admission_time[v23] > budget_check_threshold_delay || (check_admission[v23] & 1) != 0)
    {
      v24 = logForCSLogCategoryIndex();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v31 = 138412290;
        v32 = v15;
        _os_log_impl(&dword_231A35000, v24, OS_LOG_TYPE_INFO, "Running admission check for bundle id %@", &v31, 0xCu);
      }

      check_admission_time[v23] = CFAbsoluteTimeGetCurrent();
      check_admission[v23] = 0;
      if (s_last_memory_pressure_status != 1)
      {
        *a9 = 1;
      }

      if (sTurboMode == 1 || ([SPConcreteCoreSpotlightIndexer checkAdmission:v25 background:v26 didBeginThrottle:? didEndThrottle:? live:? slow:? memoryPressure:?]& 1) != 0)
      {
        v29 = logForCSLogCategoryIndex();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v31 = 138412546;
          v32 = v15;
          v33 = 2048;
          v34 = v23;
          _os_log_impl(&dword_231A35000, v29, OS_LOG_TYPE_INFO, "Passed admission, bundleID:%@, budgetIndex:%ld", &v31, 0x16u);
        }

        if (slow_admission[v23] == 1)
        {
          *a6 = 1;
        }

        v28 = 0;
        slow_admission[v23] = 0;
      }

      else
      {
        v27 = logForCSLogCategoryIndex();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v31 = 138412546;
          v32 = v15;
          v33 = 2048;
          v34 = v23;
          _os_log_impl(&dword_231A35000, v27, OS_LOG_TYPE_INFO, "Failed admission, bundleID:%@, budgetIndex:%ld - slowing replies", &v31, 0x16u);
        }

        if ((slow_admission[v23] & 1) == 0)
        {
          *a5 = 1;
        }

        v28 = 1;
        slow_admission[v23] = 1;
      }
    }

    else
    {
      v28 = slow_admission[v23];
    }

    *a8 = v28;
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)completeIndexingItemFor:(id)a3 delegate:(id)a4 didBeginThrottle:(BOOL)a5 didEndThrottle:(BOOL)a6 error:(id)a7 live:(BOOL)a8 queue:(id)a9 slow:(BOOL)a10 startTime:(double)a11 dataLen:(unint64_t)a12 completionHandler:(id)a13
{
  v14 = a8;
  v16 = a6;
  v63 = *MEMORY[0x277D85DE8];
  v19 = a3;
  v20 = a4;
  v21 = a7;
  v22 = a9;
  v23 = a13;
  v24 = v23;
  if (a10)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v26 = 1.0;
    if (a12 >= 0x186A1)
    {
      v26 = a12 / 100000.0;
    }

    if (v14)
    {
      v27 = live_delay;
      v28 = *&live_delay + *&live_delay_scaler * (Current - a11);
      if (v28 >= v26 * *&live_delay_scaled_max)
      {
        v28 = v26 * *&live_delay_scaled_max;
      }
    }

    else
    {
      v30 = *&bulk_delay;
      v31 = [buckets count];
      v32 = v31;
      v33 = v32;
      if (!v31)
      {
        v33 = 1.0;
      }

      v34 = v30 + v33 * ((Current - a11) * *&bulk_delay_scaler);
      v28 = v26 * *&bulk_delay_scaled_max;
      if (v34 < v28)
      {
        v28 = v34;
      }

      v27 = live_delay;
    }

    if (!v14)
    {
      v27 = bulk_delay;
    }

    v35 = *&v27;
    if (v28 >= 0.0)
    {
      v35 = v28;
    }

    if (gIsSystemOnBattery)
    {
      v36 = v35;
    }

    else
    {
      v36 = v35 * 0.5;
    }

    v37 = MEMORY[0x277D86220];
    v38 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      if (v14)
      {
        v39 = *&live_delay + *&live_delay_scaler * (Current - a11);
        v40 = "live";
      }

      else
      {
        v41 = *&bulk_delay;
        v42 = [buckets count];
        v43 = v42;
        v44 = v43;
        if (!v42)
        {
          v44 = 1.0;
        }

        v39 = v41 + v44 * ((Current - a11) * *&bulk_delay_scaler);
        v40 = "bulk";
      }

      *buf = 138413314;
      v54 = v19;
      v55 = 2048;
      v56 = v36;
      v57 = 2048;
      v58 = v39;
      v59 = 2080;
      v60 = v40;
      v61 = 2048;
      v62 = a12;
      _os_log_impl(&dword_231A35000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Throttling indexing reply for %@ by %g s (%g s) (%s) (%lu)", buf, 0x34u);
    }

    v45 = dispatch_time(0, (v36 * 1000000000.0));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __157__SPConcreteCoreSpotlightIndexer_completeIndexingItemFor_delegate_didBeginThrottle_didEndThrottle_error_live_queue_slow_startTime_dataLen_completionHandler___block_invoke;
    block[3] = &unk_278935310;
    v51 = v24;
    v48 = v21;
    v52 = a5;
    v49 = v20;
    v50 = v19;
    dispatch_after(v45, v22, block);
  }

  else
  {
    (*(v23 + 2))(v23, v21, 0);
    if (v20 && v16)
    {
      v29 = [objc_alloc(MEMORY[0x277CC3420]) initWithJobType:5 jobOptions:0];
      [v20 indexRequestsPerformJob:v29 forBundle:v19 completionHandler:0];
    }
  }

  v46 = *MEMORY[0x277D85DE8];
}

void __157__SPConcreteCoreSpotlightIndexer_completeIndexingItemFor_delegate_didBeginThrottle_didEndThrottle_error_live_queue_slow_startTime_dataLen_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  (*(*(a1 + 56) + 16))();
  if (*(a1 + 64) == 1 && *(a1 + 40))
  {
    v3 = [objc_alloc(MEMORY[0x277CC3420]) initWithJobType:4 jobOptions:0];
    [*(a1 + 40) indexRequestsPerformJob:v3 forBundle:*(a1 + 48) completionHandler:0];
  }
}

- (void)indexFromBundle:(id)a3 personaID:(id)a4 options:(int64_t)a5 items:(id)a6 itemsText:(id)a7 itemsHTML:(id)a8 clientState:(id)a9 expectedClientState:(id)a10 clientStateName:(id)a11 deletes:(id)a12 canCreateNewIndex:(BOOL)a13 completionHandler:(id)a14
{
  v44 = a3;
  v42 = a4;
  v19 = a6;
  v37 = a7;
  v35 = a8;
  v39 = a9;
  v20 = a10;
  v41 = a11;
  v21 = a12;
  v40 = a14;
  v22 = [v19 length];
  v23 = [v21 length];
  if (v20)
  {
    v24 = [MEMORY[0x277CBEA90] dataWithBytes:objc_msgSend(v20 length:{"bytes"), objc_msgSend(v20, "length")}];
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  if ((a5 & 0x20) != 0)
  {
    if ([v44 isEqualToString:@"com.apple.mobilemail"] & 1) != 0 || (objc_msgSend(v44, "isEqualToString:", @"com.apple.MobileSMS"))
    {
      v26 = 1;
    }

    else
    {
      v26 = [v44 isEqualToString:@"com.apple.usernotificationsd"];
    }
  }

  else
  {
    v26 = 0;
  }

  queue = sIndexQueue;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke;
  v47[3] = &unk_2789354C8;
  v60 = v26;
  v61 = a13;
  v47[4] = self;
  v48 = v44;
  v49 = v41;
  v50 = v19;
  v57 = v40;
  v58 = a5;
  v59 = v23 + v22;
  v51 = v25;
  v52 = v39;
  v53 = v42;
  v54 = v21;
  v55 = v37;
  v56 = v35;
  v46 = v35;
  v38 = v37;
  v36 = v21;
  v43 = v42;
  v27 = v39;
  v28 = v25;
  v29 = v19;
  v30 = v41;
  v31 = v44;
  v32 = v40;
  v33 = _setup_block(v47, v26, 10517);
  dispatch_async(queue, v33);
}

void __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke(uint64_t a1)
{
  v60 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_cold_1();
  }

  v3 = (a1 + 32);
  [*(a1 + 32) readyIndex:*(a1 + 137)];
  v4 = *(a1 + 32);
  if (*(v4 + 19))
  {
    if (v4[120] != 1)
    {
      goto LABEL_5;
    }

LABEL_36:
    v23 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_cold_3(a1 + 32);
    }

    v22 = *(a1 + 112);
    if (v22)
    {
      goto LABEL_56;
    }

    goto LABEL_43;
  }

  if (*(v4 + 20))
  {
    if (v4[120])
    {
      goto LABEL_36;
    }

    goto LABEL_12;
  }

  if (v4[96] != 1 || (v4[120] & 1) != 0)
  {
    goto LABEL_36;
  }

  if (!_os_feature_enabled_impl() || ([*(*v3 + 24) isEqualToString:*MEMORY[0x277CCA190]] & 1) == 0)
  {
    v39 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_cold_2(a1 + 32);
    }

    v22 = *(a1 + 112);
    if (v22)
    {
      goto LABEL_56;
    }

    goto LABEL_43;
  }

  [*v3 openJWLIndex];
  v4 = *v3;
  if (!*(*v3 + 20))
  {
    v40 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_cold_5();
    }

    v22 = *(a1 + 112);
    if (v22)
    {
      goto LABEL_56;
    }

    goto LABEL_43;
  }

  if (!*(v4 + 19))
  {
LABEL_12:
    if (*(v4 + 20))
    {
      goto LABEL_13;
    }

LABEL_57:
    __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_cold_4();
  }

LABEL_5:
  if (*(v4 + 20))
  {
    goto LABEL_57;
  }

  if (v4[24] != 1 || v4[72] == 1 && (v5 = CFAbsoluteTimeGetCurrent(), v4 = *v3, v5 <= *(*v3 + 10)))
  {
    v6 = 0;
LABEL_18:
    if (v4[24] == 1 && v4[72] == 1)
    {
      v10 = logForCSLogCategoryIndex();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 40);
        v12 = *(*(a1 + 32) + 192);
        *buf = 138412546;
        v57 = v11;
        v58 = 2112;
        v59 = v12;
        _os_log_impl(&dword_231A35000, v10, OS_LOG_TYPE_INFO, "Allowing indexing activity while locked for bundle: %@, dataclass:%@", buf, 0x16u);
      }

      v4 = *v3;
    }

    v13 = [v4 dataclass];
    v14 = SDTraceAdd(3, v13, -1, *(a1 + 40), *(a1 + 48), 0.0);
    Current = CFAbsoluteTimeGetCurrent();
    objc_initWeak(buf, *(a1 + 32));
    v16 = *(*(a1 + 32) + 176);
    v17 = logForCSLogCategoryIndex();
    v18 = v17;
    if ((v14 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      *v55 = 0;
      _os_signpost_emit_with_name_impl(&dword_231A35000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v14, "IndexLatency", &unk_231AF625D, v55, 2u);
    }

    v19 = *(*v3 + 19);
    if (!v19)
    {
      v19 = *(*v3 + 20);
    }

    if (*(a1 + 136) == 1)
    {
      v20 = qos_class_self();
    }

    else
    {
      v20 = 0;
    }

    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_1233;
    v42[3] = &unk_2789354A0;
    objc_copyWeak(v52, buf);
    v51 = *(a1 + 112);
    v53 = v6;
    v41 = *(a1 + 32);
    v24 = *(a1 + 56);
    v25 = *(a1 + 40);
    v52[1] = *(a1 + 120);
    v26 = *(a1 + 48);
    *&v27 = v25;
    *(&v27 + 1) = v26;
    *&v28 = v41;
    *(&v28 + 1) = v24;
    v43 = v28;
    v44 = v27;
    v45 = *(a1 + 64);
    v54 = *(a1 + 136);
    v29 = v16;
    v30 = *(a1 + 128);
    v46 = v29;
    v52[2] = v30;
    v31 = *(a1 + 72);
    v32 = *(a1 + 80);
    v33 = *(a1 + 88);
    v34 = *(a1 + 96);
    *&v35 = v33;
    *(&v35 + 1) = v34;
    *&v36 = v31;
    *(&v36 + 1) = v32;
    v47 = v36;
    v48 = v35;
    v49 = *(a1 + 104);
    v37 = v13;
    v50 = v37;
    v52[3] = v14;
    v52[4] = *&Current;
    SIBackgroundOpBlock(v19, v20, v42);

    objc_destroyWeak(v52);
    objc_destroyWeak(buf);
    goto LABEL_42;
  }

LABEL_13:
  if (_os_feature_enabled_impl() && ([*(*v3 + 24) isEqualToString:*MEMORY[0x277CCA190]] & 1) != 0)
  {
    v7 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 40);
      v9 = *(*(a1 + 32) + 192);
      *buf = 138412546;
      v57 = v8;
      v58 = 2112;
      v59 = v9;
      _os_log_impl(&dword_231A35000, v7, OS_LOG_TYPE_INFO, "Allowing journaling only while locked for bundle: %@, dataclass:%@", buf, 0x16u);
    }

    v4 = *v3;
    v6 = 1;
    goto LABEL_18;
  }

  v21 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_cold_3(a1 + 32);
  }

  v22 = *(a1 + 112);
  if (v22)
  {
LABEL_56:
    v37 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    (*(v22 + 16))(v22, v37, 0);
LABEL_42:
  }

LABEL_43:
  v38 = *MEMORY[0x277D85DE8];
}

void __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_1233(unsigned __int8 *a1, uint64_t a2, int a3)
{
  v273 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 17);
    if ([WeakRetained index] == a2)
    {
    }

    else
    {
      v8 = objc_loadWeakRetained(a1 + 17);
      v9 = [v8 jwlIndex];

      if (v9 != a2)
      {
        goto LABEL_2;
      }
    }

    if (a1[176] == 1 && *(*(a1 + 4) + 72) == 1)
    {
      SISetBgAssertionFlag();
      SIDeleteBgAssertionFile();
      v10 = *(a1 + 4);
      if ((*(v10 + 25) & 1) == 0)
      {
        SIFlushAndSuspendIndex();
        v10 = *(a1 + 4);
      }

      *(v10 + 72) = 0;
    }

    if (*(*(a1 + 4) + 160) != a2 && *(a1 + 5) && *(a1 + 6) && (a1[144] & 0x10) != 0 && SIGetAccumulatedSizeForGroup() >= 134217729)
    {
      v11 = *(a1 + 16);
      if (v11)
      {
        v187 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1004 userInfo:0];
        (*(v11 + 16))(v11);
        goto LABEL_4;
      }

LABEL_257:
      v152 = *MEMORY[0x277D85DE8];
      return;
    }

    v188 = a1;
    v174 = a2;
    if (*(a1 + 7))
    {
      v12 = *(a1 + 4);
      v181 = [objc_opt_class() _stateInfoAttributeNameWithClientStateName:*(a1 + 7)];
    }

    else
    {
      v181 = 0;
    }

    if (*(a1 + 8) && *(a1 + 6) && *(a1 + 7))
    {
      v13 = SICopyCachedCSClientState();
      v14 = v13;
      if (!v13 || !CFEqual(v13, *(a1 + 8)))
      {
        v148 = logForCSLogCategoryDefault();
        if (os_log_type_enabled(v148, OS_LOG_TYPE_ERROR))
        {
          __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_1233_cold_1(a1 + 8);
        }

        v149 = *(a1 + 16);
        if (v149)
        {
          v150 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1006 userInfo:0];
          (*(v149 + 16))(v149, v150, 0);
        }

        if (v14)
        {
          CFRelease(v14);
        }

        goto LABEL_256;
      }

      CFRelease(v14);
    }

    v258 = 0;
    v257 = 0;
    v255[0] = 0;
    v255[1] = v255;
    v255[2] = 0x2020000000;
    v256[0] = 0;
    v253[0] = 0;
    v253[1] = v253;
    v253[2] = 0x2020000000;
    v254[0] = 0;
    if ((a1[144] & 0x20) != 0)
    {
      v15 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = *(a1 + 6);
        *buf = 138412290;
        *&buf[4] = v16;
        _os_log_impl(&dword_231A35000, v15, OS_LOG_TYPE_INFO, "Skipped admission check on critical index job for %@", buf, 0xCu);
      }
    }

    else
    {
      [*(a1 + 4) checkAdmission:*(a1 + 6) background:0 didBeginThrottle:v256 didEndThrottle:v254 live:&v258 slow:&v258 + 1 memoryPressure:&v257];
    }

    v17 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [*(a1 + 5) length];
      __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_1233_cold_2();
    }

    v183 = *(a1 + 5);
    [*(a1 + 5) bytes];
    [*(a1 + 5) length];
    v186 = *MEMORY[0x277CBECE8];
    v18 = _MDPlistContainerCreateWithBytes();
    if (v18)
    {
      v251 = 0uLL;
      v252 = 0;
      _MDPlistGetRootPlistObjectFromPlist();
      memset(buf, 0, sizeof(buf));
      if (_MDPlistGetPlistObjectType() == 240)
      {
        *buf = v251;
        *&buf[16] = v252;
        Count = _MDPlistArrayGetCount();
      }

      else
      {
        Count = 0;
      }

      cf = v18;
      v247 = 0;
      v248 = &v247;
      v249 = 0x2020000000;
      v250 = 0;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v271 = __Block_byref_object_copy__0;
      *&v272 = __Block_byref_object_dispose__0;
      *(&v272 + 1) = 0;
      if (Count)
      {
        v184 = 0;
        v175 = 0;
        v173 = 0;
        v20 = 0;
        v166 = *MEMORY[0x277CC2770];
        v21 = 1;
        v165 = *MEMORY[0x277CC24B0];
        v163 = *MEMORY[0x277CC3010];
        v164 = *MEMORY[0x277CC2E50];
        v162 = *MEMORY[0x277CC3028];
        v160 = *MEMORY[0x277CC3208];
        v161 = *MEMORY[0x277CC2760];
        v159 = *MEMORY[0x277CC22E8];
        while (1)
        {
          v245 = 0uLL;
          v246 = 0;
          v243 = v251;
          v244 = v252;
          _MDPlistArrayGetPlistObjectAtIndex();
          v243 = v245;
          v244 = v246;
          if (_MDPlistGetPlistObjectType() != 240 || (v243 = v245, v244 = v246, _MDPlistArrayGetCount() < 3))
          {
            v23 = logForCSLogCategoryDefault();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v243 = v245;
              v244 = v246;
              PlistObjectType = _MDPlistGetPlistObjectType();
              v243 = v245;
              v244 = v246;
              v25 = _MDPlistArrayGetCount();
              LODWORD(v268) = 67109376;
              DWORD1(v268) = PlistObjectType;
              WORD4(v268) = 1024;
              *(&v268 + 10) = v25;
              _os_log_impl(&dword_231A35000, v23, OS_LOG_TYPE_DEFAULT, "Unexpected PlistBytes %d %d", &v268, 0xEu);
            }

            goto LABEL_54;
          }

          v243 = 0uLL;
          v244 = 0;
          v268 = v245;
          v269 = v246;
          _MDPlistArrayGetPlistObjectAtIndex();
          v268 = v243;
          v269 = v244;
          if (_MDPlistGetPlistObjectType() == 241)
          {
            break;
          }

LABEL_54:
          v21 = ++v20 < Count;
          if (Count == v20)
          {
            goto LABEL_190;
          }
        }

        v268 = 0uLL;
        v269 = 0;
        v241 = v243;
        v242 = v244;
        if (_MDPlistDictionaryGetPlistObjectForKey())
        {
          v241 = v268;
          v242 = v269;
          v22 = _MDPlistNumberGetIntValue() == 0;
        }

        else
        {
          v22 = 1;
        }

        v241 = 0uLL;
        v242 = 0;
        v239 = v243;
        v240 = v244;
        if (_MDPlistDictionaryGetPlistObjectForKey() && (v239 = v241, v240 = v242, _MDPlistGetPlistObjectType() == 246))
        {
          v26 = MEMORY[0x277D86220];
          v27 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v239) = 0;
            _os_log_impl(&dword_231A35000, v26, OS_LOG_TYPE_DEFAULT, "Found _kMDItemEncryptedData", &v239, 2u);
          }

          v28 = 1;
        }

        else
        {
          if (v22)
          {
            goto LABEL_85;
          }

          v28 = 0;
        }

        v239 = 0uLL;
        v240 = 0;
        *v267 = v243;
        *&v267[16] = v244;
        if (_MDPlistDictionaryGetPlistObjectForKey())
        {
          *v267 = v239;
          *&v267[16] = v240;
          if (_MDPlistGetPlistObjectType() == 244 || (*v267 = v239, *&v267[16] = v240, _MDPlistGetPlistObjectType() == 245))
          {
            *v267 = v239;
            *&v267[16] = v240;
            v29 = _MDPlistContainerCopyObject();
            v30 = v29;
            if (v29)
            {
              v31 = v28;
            }

            else
            {
              v31 = 0;
            }

            v32 = v29;
            if (v31 == 1)
            {
              v33 = MEMORY[0x277D86220];
              v34 = MEMORY[0x277D86220];
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                *v267 = 138412290;
                *&v267[4] = v30;
                _os_log_impl(&dword_231A35000, v33, OS_LOG_TYPE_DEFAULT, "Matched _kMDItemEncryptedData with id %@", v267, 0xCu);
              }

              v35 = [CSDecryptInfo alloc];
              *v267 = v241;
              *&v267[16] = v242;
              v36 = [(CSDecryptInfo *)v35 initWithPlistObject:v267 externalID:v32];
              if (v36)
              {
                v37 = v175;
                if (!v175)
                {
                  v37 = objc_opt_new();
                }

                v175 = v37;
                [v37 addObject:v36];
              }

              v30 = v32;
            }

            if (!v22)
            {
              memset(v267, 0, 24);
              v237 = 0uLL;
              v238 = 0;
              v235 = 0uLL;
              v236 = 0;
              v265 = v243;
              v266 = v244;
              if (_MDPlistDictionaryGetPlistObjectForKey() && (v265 = *v267, v266 = *&v267[16], _MDPlistGetPlistObjectType() == 247))
              {
                v265 = *v267;
                v266 = *&v267[16];
                v178 = _MDPlistContainerCopyObject();
              }

              else
              {
                v178 = 0;
              }

              v265 = v243;
              v266 = v244;
              if (_MDPlistDictionaryGetPlistObjectForKey() && ((v265 = v237, v266 = v238, _MDPlistGetPlistObjectType() == 244) || (v265 = v237, v266 = v238, _MDPlistGetPlistObjectType() == 245)))
              {
                v265 = v237;
                v266 = v238;
                v177 = _MDPlistContainerCopyObject();
              }

              else
              {
                v177 = 0;
              }

              v265 = v243;
              v266 = v244;
              if (_MDPlistDictionaryGetPlistObjectForKey() && ((v265 = v235, v266 = v236, _MDPlistGetPlistObjectType() == 244) || (v265 = v235, v266 = v236, _MDPlistGetPlistObjectType() == 245)))
              {
                v265 = v235;
                v266 = v236;
                v176 = _MDPlistContainerCopyObject();
              }

              else
              {
                v176 = 0;
              }

              if (!v184)
              {
                v184 = [MEMORY[0x277CBEB38] dictionary];
              }

              v57 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v30, *(v188 + 6)];
              if (v178 && v177 && v176 && v30)
              {
                v58 = objc_alloc_init(CSImportInfo);
                [(CSImportInfo *)v58 setContentURL:v178];
                [(CSImportInfo *)v58 setContentType:v177];
                [(CSImportInfo *)v58 setSandboxExtension:v176];
                [(CSImportInfo *)v58 setExternalID:v30];
                [v184 setObject:v58 forKey:v57];
              }

              else
              {
                v59 = [MEMORY[0x277CBEB68] null];
                [v184 setObject:v59 forKey:v57];

                v60 = logForCSLogCategoryDefault();
                if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                {
                  LODWORD(v265) = 138412290;
                  *(&v265 + 4) = v178;
                  _os_log_error_impl(&dword_231A35000, v60, OS_LOG_TYPE_ERROR, "RequiresImport missing: URL:%@", &v265, 0xCu);
                }

                v61 = logForCSLogCategoryDefault();
                if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
                {
                  LODWORD(v265) = 138412290;
                  *(&v265 + 4) = v177;
                  _os_log_error_impl(&dword_231A35000, v61, OS_LOG_TYPE_ERROR, "RequiresImport missing: ContentType:%@", &v265, 0xCu);
                }

                v58 = logForCSLogCategoryDefault();
                if (os_log_type_enabled(&v58->super, OS_LOG_TYPE_ERROR))
                {
                  LODWORD(v265) = 138412290;
                  *(&v265 + 4) = v176;
                  _os_log_error_impl(&dword_231A35000, &v58->super, OS_LOG_TYPE_ERROR, "RequiresImport missing: SBX:%@", &v265, 0xCu);
                }
              }

              v30 = v32;
LABEL_87:
              v239 = 0uLL;
              v240 = 0;
              *v267 = v243;
              *&v267[16] = v244;
              if (_MDPlistDictionaryGetPlistObjectForKey() || (*v267 = v243, *&v267[16] = v244, _MDPlistDictionaryGetPlistObjectForKey()))
              {
                *v267 = v239;
                *&v267[16] = v240;
                v39 = _MDPlistContainerCopyObject();
              }

              else
              {
                v39 = 0;
              }

              v182 = v39;
              if ([*(v188 + 6) isEqualToString:@"com.apple.MobileSMS"])
              {
                if (!v39)
                {
                  goto LABEL_162;
                }

                memset(v267, 0, 24);
                v237 = 0uLL;
                v238 = 0;
                v235 = 0uLL;
                v236 = 0;
                v265 = 0uLL;
                v266 = 0;
                v233 = 0uLL;
                v234 = 0;
                v231 = 0uLL;
                v232 = 0;
                v229 = 0uLL;
                v230 = 0;
                v40 = objc_opt_new();
                v227 = v243;
                v228 = v244;
                if (_MDPlistDictionaryGetPlistObjectForKey() && (v227 = *v267, v228 = *&v267[16], (v179 = _MDPlistContainerCopyObject()) != 0))
                {
                  [v40 setObject:v179 forKey:v166];
                }

                else
                {
                  v179 = 0;
                }

                v227 = v243;
                v228 = v244;
                if (_MDPlistDictionaryGetPlistObjectForKey() && (v227 = v237, v228 = v238, (v171 = _MDPlistContainerCopyObject()) != 0))
                {
                  [v40 setObject:v171 forKey:v165];
                }

                else
                {
                  v171 = 0;
                }

                v227 = v243;
                v228 = v244;
                if (_MDPlistDictionaryGetPlistObjectForKey() && (v227 = v235, v228 = v236, (v169 = _MDPlistContainerCopyObject()) != 0))
                {
                  [v40 setObject:v169 forKey:v164];
                }

                else
                {
                  v169 = 0;
                }

                v227 = v243;
                v228 = v244;
                if (_MDPlistDictionaryGetPlistObjectForKey() && (v227 = v265, v228 = v266, (v167 = _MDPlistContainerCopyObject()) != 0))
                {
                  [v40 setObject:v167 forKey:v163];
                }

                else
                {
                  v167 = 0;
                }

                v227 = v243;
                v228 = v244;
                if (_MDPlistDictionaryGetPlistObjectForKey())
                {
                  v227 = v233;
                  v228 = v234;
                  v51 = _MDPlistContainerCopyObject();
                  if (v51)
                  {
                    [v40 setObject:v51 forKey:v162];
                  }
                }

                else
                {
                  v51 = 0;
                }

                v227 = v243;
                v228 = v244;
                if (_MDPlistDictionaryGetPlistObjectForKey())
                {
                  v227 = v231;
                  v228 = v232;
                  v52 = _MDPlistContainerCopyObject();
                  if (v52)
                  {
                    [v40 setObject:v52 forKey:@"kMDItemCollaborationSourceChat"];
                  }
                }

                else
                {
                  v52 = 0;
                }

                v227 = v243;
                v228 = v244;
                if (_MDPlistDictionaryGetPlistObjectForKey())
                {
                  v227 = v229;
                  v228 = v230;
                  v53 = _MDPlistContainerCopyObject();

                  if (v53)
                  {
                    [v40 setObject:v53 forKey:@"kMDItemCollaborationSourceMessage"];
                  }
                }

                else
                {
                  v53 = v30;
                }

                if (kSPReindexAllCompletedBundleIDs_block_invoke_4_sQueryQueueOnce != -1)
                {
                  __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_1233_cold_4();
                }

                v62 = kSPReindexAllCompletedBundleIDs_block_invoke_4_sQueryQueue;
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_2;
                block[3] = &unk_278934310;
                v222 = v39;
                v63 = v40;
                v223 = v63;
                v64 = v53;
                v224 = v64;
                v65 = v179;
                v66 = *(v188 + 4);
                v225 = v65;
                v226 = v66;
                dispatch_async(v62, block);

                v30 = v64;
              }

              else
              {
                if (!v39)
                {
                  goto LABEL_162;
                }

                if (([*(v188 + 6) isEqualToString:@"com.apple.CloudDocs.MobileDocumentsFileProvider"] & 1) != 0 || (objc_msgSend(*(v188 + 6), "isEqualToString:", @"com.apple.CloudDocs.iCloudDriveFileProvider") & 1) != 0 || objc_msgSend(*(v188 + 6), "isEqualToString:", @"com.apple.CloudDocs.iCloudDriveFileProviderManaged"))
                {
                  v170 = [MEMORY[0x277CCACA8] stringWithFormat:@"(_kMDItemBundleID = '%@') && (FPCollaborationIdentifier == '%@' || _kMDItemCollaborationIdentifier == '%@')", @"com.apple.MobileSMS", v39, v39];
                  v41 = objc_alloc_init(MEMORY[0x277CC34A0]);
                  v262[0] = v166;
                  v262[1] = v165;
                  v262[2] = v164;
                  v262[3] = v163;
                  v262[4] = v162;
                  v262[5] = v161;
                  v262[6] = v160;
                  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v262 count:7];
                  [v41 setFetchAttributes:v42];
                  v180 = v30;
                  v43 = [v41 fetchAttributes];
                  v44 = [v43 count];

                  v214[0] = MEMORY[0x277D85DD0];
                  v214[1] = 3221225472;
                  v214[2] = __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_2_1284;
                  v214[3] = &unk_2789353B0;
                  v218 = v44;
                  v216 = &v247;
                  v168 = v42;
                  v215 = v168;
                  v217 = buf;
                  v219 = cf;
                  v220 = v20;
                  v45 = MEMORY[0x2383760E0](v214);
                  v46 = dispatch_group_create();
                  v47 = +[SPCoreSpotlightIndexer sharedInstance];
                  v212[0] = MEMORY[0x277D85DD0];
                  v212[1] = 3221225472;
                  v212[2] = __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_4_1286;
                  v212[3] = &unk_2789348E8;
                  v48 = v46;
                  v213 = v48;
                  v49 = [v47 taskForQueryWithQueryString:v170 queryContext:v41 eventHandler:0 resultsHandler:v45 completionHandler:v212];

                  if (v49)
                  {
                    [v49 setCritical:v188[177]];
                    dispatch_group_enter(v48);
                    v50 = +[SPCoreSpotlightIndexer sharedInstance];
                    [v50 startQueryTask:v49];

                    dispatch_group_wait(v48, 0xFFFFFFFFFFFFFFFFLL);
                  }

                  else
                  {
                    v54 = *(v188 + 16);
                    if (v54)
                    {
                      v55 = [MEMORY[0x277CCA9B8] errorWithDomain:v159 code:-1000 userInfo:0];
                      (*(v54 + 16))(v54, v55, 0);
                    }

                    CFRelease(cf);
                  }

                  if (!v49)
                  {
                    v56 = 0;
                    v39 = v182;
                    goto LABEL_187;
                  }

                  v30 = v180;
                }

                else
                {
                  v72 = [MEMORY[0x277CBEB68] null];
                  v73 = [v39 isEqual:v72];

                  if ((v73 & 1) == 0)
                  {
                    v74 = logForCSLogCategoryDefault();
                    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
                    {
                      v78 = *(v188 + 6);
                      *v267 = 138412546;
                      *&v267[4] = v39;
                      *&v267[12] = 2112;
                      *&v267[14] = v78;
                      _os_log_error_impl(&dword_231A35000, v74, OS_LOG_TYPE_ERROR, "Got collaboration identifier for item that isn't Messages or FileProvider: %@ bundleID:%@", v267, 0x16u);
                    }
                  }
                }
              }

              v39 = v182;
LABEL_162:
              v180 = v30;
              if ([*(v188 + 6) isEqualToString:@"com.apple.shortcuts"])
              {
                *v267 = v245;
                *&v267[16] = v246;
                if (_MDPlistArrayGetCount() >= 4)
                {
                  memset(v267, 0, 24);
                  v237 = v245;
                  v238 = v246;
                  _MDPlistArrayGetPlistObjectAtIndex();
                  v237 = *v267;
                  v238 = *&v267[16];
                  if (_MDPlistGetPlistObjectType() == 241)
                  {
                    v237 = 0uLL;
                    v238 = 0;
                    v235 = *v267;
                    v236 = *&v267[16];
                    if (_MDPlistDictionaryGetPlistObjectForKey())
                    {
                      v235 = v237;
                      v236 = v238;
                      if (_MDPlistGetPlistObjectType() == 240)
                      {
                        v235 = v237;
                        v236 = v238;
                        if (_MDPlistArrayGetCount())
                        {
                          v235 = 0uLL;
                          v236 = 0;
                          v265 = v237;
                          v266 = v238;
                          _MDPlistArrayGetPlistObjectAtIndex();
                          v265 = v235;
                          v266 = v236;
                          v67 = _MDPlistContainerCopyObject();
                          v68 = v67;
                          if (v67)
                          {
                            v69 = [v67 BOOLValue];

                            if (v69)
                            {
                              v235 = 0uLL;
                              v236 = 0;
                              v265 = v243;
                              v266 = v244;
                              if (_MDPlistDictionaryGetPlistObjectForKey())
                              {
                                v265 = v235;
                                v266 = v236;
                                v70 = _MDPlistContainerCopyObject();
                                if (v70)
                                {
                                  v71 = v173;
                                  if (!v173)
                                  {
                                    v71 = [MEMORY[0x277CBEB58] set];
                                  }

                                  v173 = v71;
                                  [v71 addObject:v70];
                                }
                              }

                              else
                              {
                                v70 = 0;
                              }
                            }

                            v39 = v182;
                          }
                        }
                      }
                    }
                  }
                }
              }

              memset(v267, 0, 24);
              v237 = v243;
              v238 = v244;
              if (_MDPlistDictionaryGetPlistObjectForKey())
              {
                v237 = *v267;
                v238 = *&v267[16];
                v75 = _MDPlistContainerCopyObject();
                v237 = 0uLL;
                v238 = 0;
                v235 = v243;
                v236 = v244;
                if (_MDPlistDictionaryGetPlistObjectForKey())
                {
                  v235 = v237;
                  v236 = v238;
                  v76 = _MDPlistContainerCopyObject();
                  v77 = [MEMORY[0x277CC33F0] sharedInstance];
                  [v77 addAppContainerOID:v76 forBundle:*(v188 + 6) fpBundle:v75];
                }

                v39 = v182;
              }

              v56 = 1;
LABEL_187:

              if ((v56 & 1) == 0)
              {
                goto LABEL_201;
              }

              goto LABEL_54;
            }

LABEL_86:
            v176 = 0;
            v177 = 0;
            v178 = 0;
            goto LABEL_87;
          }
        }

        v38 = logForCSLogCategoryDefault();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_1233_cold_3(v263, &v264, v38);
        }

LABEL_85:
        v30 = 0;
        goto LABEL_86;
      }

      v173 = 0;
      v175 = 0;
      v184 = 0;
LABEL_190:
      v79 = [*(v188 + 6) isEqualToString:@"com.apple.shortcuts"];
      v80 = cf;
      if (v173)
      {
        v81 = v79;
      }

      else
      {
        v81 = 0;
      }

      if (v81 == 1 && [v173 count])
      {
        v82 = objc_alloc_init(MEMORY[0x277CC34A0]);
        [v82 setInternal:1];
        [v82 setLowPriority:0];
        v83 = *MEMORY[0x277CC2BA0];
        v261[0] = *MEMORY[0x277CC2A80];
        v261[1] = v83;
        v84 = [MEMORY[0x277CBEA60] arrayWithObjects:v261 count:2];
        [v82 setFetchAttributes:v84];

        v260 = *MEMORY[0x277CCA1A0];
        v85 = [MEMORY[0x277CBEA60] arrayWithObjects:&v260 count:1];
        [v82 setProtectionClasses:v85];

        [v82 setBundleIDs:&unk_2846C92D8];
        v86 = [MEMORY[0x277CBEB58] set];
        v209[0] = MEMORY[0x277D85DD0];
        v209[1] = 3221225472;
        v209[2] = __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_1301;
        v209[3] = &unk_278935400;
        v210 = v173;
        v87 = v86;
        v211 = v87;
        v88 = MEMORY[0x2383760E0](v209);
        v89 = +[SPCoreSpotlightIndexer sharedInstance];
        v207[0] = MEMORY[0x277D85DD0];
        v207[1] = 3221225472;
        v207[2] = __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_1306;
        v207[3] = &unk_278935428;
        v207[4] = *(v188 + 4);
        v90 = v87;
        v208 = v90;
        v91 = [v89 taskForQueryWithQueryString:@"(true)" queryContext:v82 eventHandler:0 resultsHandler:v88 completionHandler:v207];

        v92 = logForCSLogCategoryDefault();
        if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v245) = 0;
          _os_log_impl(&dword_231A35000, v92, OS_LOG_TYPE_DEFAULT, "[TopHitAppShortcuts] indexFromBundle start", &v245, 2u);
        }

        v93 = +[SPCoreSpotlightIndexer sharedInstance];
        [v93 startQueryTask:v91];

        v80 = cf;
      }

      if (*(v248 + 24) == 1)
      {
        v94 = *(*&buf[8] + 40);
        v95 = _MDPlistContainerCreateWithObject();
        Bytes = _MDPlistContainerGetBytes();
        v97 = [MEMORY[0x277CBEA90] dataWithBytes:Bytes length:_MDPlistContainerGetLength()];

        CFRelease(v95);
        v183 = v97;
        v80 = cf;
      }

      CFRelease(v80);
      v21 = 0;
LABEL_201:

      _Block_object_dispose(buf, 8);
      _Block_object_dispose(&v247, 8);
      if (v21)
      {
        goto LABEL_255;
      }
    }

    else
    {
      v175 = 0;
      v184 = 0;
    }

    Current = CFAbsoluteTimeGetCurrent();
    v195[0] = MEMORY[0x277D85DD0];
    v195[1] = 3221225472;
    v195[2] = __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_1310;
    v195[3] = &unk_278935450;
    objc_copyWeak(v203, v188 + 17);
    v184 = v184;
    v196 = v184;
    v204 = v188[176];
    v99 = *(v188 + 6);
    v100 = *(v188 + 18);
    v197 = v99;
    v203[1] = v100;
    v101 = *(v188 + 16);
    v198 = *(v188 + 4);
    v200 = v101;
    v201 = v255;
    v202 = v253;
    v205 = v258;
    v199 = *(v188 + 9);
    v206 = HIBYTE(v258);
    v203[2] = *&Current;
    v203[3] = *(v188 + 19);
    v102 = [v195 copy];

    v103 = v188;
    if (*(v188 + 5))
    {
      if (v188[145])
      {
        v104 = [*(v188 + 4) _interestedAttributesMaskForBundleID:*(v188 + 6)];
        if (v104)
        {
          v105 = [objc_alloc(MEMORY[0x277CC33C8]) initWithData:v183];
          v193 = 0u;
          v194 = 0u;
          v191 = 0u;
          v192 = 0u;
          v106 = [objc_alloc(MEMORY[0x277CC34C0]) initWithItems:v105 itemsContent:0];
          v107 = [v106 countByEnumeratingWithState:&v191 objects:v259 count:16];
          v185 = v105;
          v108 = 0;
          v109 = 0;
          if (v107)
          {
            v110 = *v192;
            do
            {
              for (i = 0; i != v107; ++i)
              {
                if (*v192 != v110)
                {
                  objc_enumerationMutation(v106);
                }

                v112 = *(*(&v191 + 1) + 8 * i);
                v113 = *(v188 + 4);
                v114 = [objc_opt_class() checkItemOfInterest:v112 mask:v104];
                v115 = [v112 isUpdate];
                if (v114)
                {
                  v116 = v115;
                }

                else
                {
                  v116 = 0;
                }

                if (v116 == 1)
                {
                  if (!v108)
                  {
                    v108 = objc_opt_new();
                  }

                  [v108 addObject:v112];
                  v109 |= v114;
                }
              }

              v107 = [v106 countByEnumeratingWithState:&v191 objects:v259 count:16];
            }

            while (v107);
          }

          [*(v188 + 4) notifyClientForItemUpdates:*(v188 + 6) updatedItems:v108 batchMask:v109];
          v103 = v188;
        }
      }
    }

    v117 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v117, OS_LOG_TYPE_DEBUG))
    {
      v153 = v102;
      v155 = *(v103 + 6);
      v154 = *(v103 + 7);
      v156 = [*(v103 + 10) length];
      *buf = 138412802;
      *&buf[4] = v155;
      *&buf[12] = 2112;
      *&buf[14] = v154;
      *&buf[22] = 2048;
      v271 = v156;
      _os_log_debug_impl(&dword_231A35000, v117, OS_LOG_TYPE_DEBUG, "SISetCodedAttributes, bundleID:%@, state:%@(%ld bytes)", buf, 0x20u);
      v102 = v153;
    }

    v118 = v102;
    if (v188[177])
    {
      v119 = 16;
    }

    else
    {
      v119 = 0;
    }

    v120 = v119 & 0xFFFFFFFC | (*(v188 + 36) >> 14) & 0xFFFFFFFE | (*(v188 + 36) >> 8) & 1;
    if (v188[177])
    {
      v121 = v120;
    }

    else
    {
      v121 = v120 | 8;
    }

    locked = SIGetLockedJournalingState();
    v123 = locked;
    if (v188[176] == 1 && !locked)
    {
      SISetLockedJournalingState();
    }

    v124 = *(v188 + 6);
    v125 = *(v188 + 12);
    v126 = *(v188 + 13);
    v127 = *(v188 + 14);
    v129 = *(v188 + 10);
    v128 = *(v188 + 11);
    LODWORD(v158) = v121;
    v157 = v181;
    v130 = SISetCodedAttributes();
    (*(*(v188 + 16) + 16))(*(v188 + 16), 0, 1, v131);
    if (v188[176] == 1 && *(*(v188 + 4) + 160) != v174 && SIGetLockedJournalingState() >> 1 != v123 >> 1)
    {
      v189[0] = MEMORY[0x277D85DD0];
      v189[1] = 3221225472;
      v189[2] = __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_1313;
      v189[3] = &unk_278935478;
      objc_copyWeak(&v190, v188 + 17);
      v132 = v189;
      v133 = malloc_type_malloc(0x10uLL, 0xE0040E685C293uLL);
      v134 = [v132 copy];

      v135 = v134;
      *v133 = v174;
      v133[1] = v135;
      _SIScheduleOperationPostIndexUpdate();

      objc_destroyWeak(&v190);
    }

    v136 = v188;
    if ([v175 count])
    {
      [*(v188 + 4) processDecryptsForBundleID:*(v188 + 6) persona:*(v188 + 11) infos:v175 group:0];
    }

    if (!v130)
    {
      v137 = *(v188 + 15);
      v138 = *(v188 + 20);
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      SDTraceAdd(3, v137, v138, *(v188 + 6), *(v188 + 7), v139 - *(v188 + 21));
      v140 = *(v188 + 16);
      if (v140)
      {
        v141 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
        (*(v140 + 16))(v140, v141, 0);

        v136 = v188;
      }
    }

    v142 = logForCSLogCategoryIndex();
    v143 = v142;
    v144 = *(v136 + 20);
    if (v144 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v142))
    {
      v145 = [*(v136 + 6) UTF8String];
      v146 = *(v188 + 5);
      if (v146)
      {
        v147 = [v146 length];
      }

      else
      {
        v147 = 0;
      }

      v151 = *(v188 + 12);
      if (v151)
      {
        v151 = [v151 length];
      }

      *buf = 136446979;
      *&buf[4] = v145;
      *&buf[12] = 2081;
      *&buf[14] = "indexFromBundle";
      *&buf[22] = 2050;
      v271 = v147;
      LOWORD(v272) = 2050;
      *(&v272 + 2) = v151;
      _os_signpost_emit_with_name_impl(&dword_231A35000, v143, OS_SIGNPOST_INTERVAL_END, v144, "IndexLatency", "BundleID=%{public, signpost.telemetry:string1}s Method=%{private, signpost.telemetry:string2}s AddLength=%{public, signpost.telemetry:number1}lu DeleteLength=%{public, signpost.telemetry:number2}lu  enableTelemetry=YES ", buf, 0x2Au);
    }

    objc_destroyWeak(v203);
LABEL_255:

    _Block_object_dispose(v253, 8);
    _Block_object_dispose(v255, 8);
LABEL_256:

    goto LABEL_257;
  }

LABEL_2:
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_257;
  }

  v187 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
  (*(v4 + 16))(v4);
LABEL_4:
  v5 = *MEMORY[0x277D85DE8];
}

void __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_1260()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);
  v1 = dispatch_queue_create("com.apple.corespotlight.collaborationquery", v0);
  v2 = kSPReindexAllCompletedBundleIDs_block_invoke_4_sQueryQueue;
  kSPReindexAllCompletedBundleIDs_block_invoke_4_sQueryQueue = v1;
}

void __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_2(uint64_t a1)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"(_kMDItemBundleID='com.apple.CloudDocs.MobileDocumentsFileProvider' || _kMDItemBundleID='com.apple.CloudDocs.iCloudDriveFileProvider' ||  _kMDItemBundleID='com.apple.CloudDocs.iCloudDriveFileProviderManaged') && (FPCollaborationIdentifier='%@' || _kMDItemCollaborationIdentifier='%@') && kMDItemCollaborationSourceChat!=* && kMDItemCollaborationSourceMessage!=*", *(a1 + 32), *(a1 + 32)];
  v3 = objc_alloc_init(MEMORY[0x277CC34A0]);
  v20[0] = *MEMORY[0x277CC2FD0];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  [v3 setFetchAttributes:v4];
  v5 = [v4 count];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_3;
  v15[3] = &unk_278935360;
  v19 = v5;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  *&v8 = *(a1 + 56);
  *(&v8 + 1) = *(a1 + 64);
  *&v9 = v6;
  *(&v9 + 1) = v7;
  v16 = v9;
  v17 = v8;
  v18 = *(a1 + 32);
  v10 = MEMORY[0x2383760E0](v15);
  v11 = +[SPCoreSpotlightIndexer sharedInstance];
  v12 = [v11 taskForQueryWithQueryString:v2 queryContext:v3 eventHandler:0 resultsHandler:v10 completionHandler:&__block_literal_global_1274];

  v13 = +[SPCoreSpotlightIndexer sharedInstance];
  [v13 startQueryTask:v12];

  v14 = *MEMORY[0x277D85DE8];
}

void __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_3(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v19 = v5;
    v20 = v6;
    v9 = *(a1 + 72);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_4;
    v15[3] = &unk_278935338;
    v10 = (a1 + 56);
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    *&v13 = *(a1 + 48);
    *(&v13 + 1) = *v10;
    *&v14 = v11;
    *(&v14 + 1) = v12;
    v16 = v14;
    v17 = v13;
    v18 = *(a1 + 64);
    [a5 enumerateQueryResults:v9 stringCache:0 usingBlock:v15];
  }
}

void __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_4(uint64_t a1, id *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v5 = MEMORY[0x277CC34B8];
  v6 = *a2;
  v7 = [[v5 alloc] initWithAttributes:*(a1 + 32)];
  v8 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:*(a1 + 40) domainIdentifier:*(a1 + 48) attributeSet:v7];
  [v8 setIsUpdate:1];
  v9 = [*(a1 + 56) owner];
  v14[0] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_5;
  v12[3] = &unk_2789348E8;
  v13 = *(a1 + 64);
  [v9 indexSearchableItems:v10 deleteSearchableItemsWithIdentifiers:0 clientState:0 protectionClass:v6 forBundleID:@"com.apple.CloudDocs.MobileDocumentsFileProvider" options:0 completionHandler:v12];

  objc_autoreleasePoolPop(v4);
  v11 = *MEMORY[0x277D85DE8];
}

void __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_5_cold_1(a1);
    }
  }
}

void __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_2_1284(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v18 = v5;
    v19 = v6;
    v9 = *(a1 + 56);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_3_1285;
    v13[3] = &unk_278935388;
    v12 = *(a1 + 32);
    v10 = v12;
    v14 = v12;
    v11 = *(a1 + 64);
    v15 = *(a1 + 48);
    v16 = v11;
    v17 = *(a1 + 72);
    [a5 enumerateQueryResults:v9 stringCache:0 usingBlock:v13];
  }
}

void __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_3_1285(uint64_t a1, uint64_t a2)
{
  context = objc_autoreleasePoolPush();
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v4 = objc_opt_new();
  if ([*(a1 + 32) count])
  {
    v5 = 0;
    v6 = *MEMORY[0x277CC2760];
    v7 = *MEMORY[0x277CC3208];
    do
    {
      v8 = *(a2 + 8 * v5);
      v9 = [*(a1 + 32) objectAtIndexedSubscript:v5];
      v10 = v9;
      if (v8)
      {
        if ([(__CFString *)v9 isEqualToString:v6])
        {
          v11 = v4;
          v12 = v8;
          v13 = @"kMDItemCollaborationSourceChat";
        }

        else if ([(__CFString *)v10 isEqualToString:v7])
        {
          v11 = v4;
          v12 = v8;
          v13 = @"kMDItemCollaborationSourceMessage";
        }

        else
        {
          v11 = v4;
          v12 = v8;
          v13 = v10;
        }

        [v11 setObject:v12 forKey:v13];
      }

      ++v5;
    }

    while (v5 < [*(a1 + 32) count]);
  }

  v14 = *(*(*(a1 + 48) + 8) + 40);
  if (!v14)
  {
    v15 = *MEMORY[0x277CBECE8];
    v16 = *(a1 + 56);
    v17 = _MDPlistContainerCopyRootObject();
    v18 = [v17 mutableCopy];
    v19 = *(*(a1 + 48) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    v14 = *(*(*(a1 + 48) + 8) + 40);
  }

  v21 = [v14 objectAtIndex:*(a1 + 64)];
  v22 = [v21 mutableCopy];
  [*(*(*(a1 + 48) + 8) + 40) setObject:v22 atIndexedSubscript:*(a1 + 64)];
  v23 = [v22 objectAtIndex:2];
  v24 = [v23 mutableCopy];
  [v22 setObject:v24 atIndexedSubscript:2];
  [v24 addEntriesFromDictionary:v4];

  objc_autoreleasePoolPop(context);
}

void __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_1301(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v12 = v5;
    v13 = v6;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_2_1302;
    v9[3] = &unk_2789353D8;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    [a5 enumerateQueryResults:2 stringCache:0 usingBlock:v9];
  }
}

void __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_2_1302(uint64_t a1, id *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = a2[1];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 BOOLValue];
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v7 = 0;
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  if (!(v7 & 1 | (([*(a1 + 32) containsObject:v4] & 1) == 0)))
  {
    v8 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v16 = v4;
      _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_INFO, "[TopHitAppShortcuts] set flag for %@", buf, 0xCu);
    }

    v13 = @":EA:_kMDItemHasTopHitAppShortcuts";
    v14 = *MEMORY[0x277CBED28];
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v10 = [objc_alloc(MEMORY[0x277CC34B8]) initWithAttributes:v9];
    v11 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:v4 domainIdentifier:0 attributeSet:v10];
    [v11 setBundleID:@"com.apple.application"];
    [v11 setIsUpdate:1];
    [*(a1 + 40) addObject:v11];
  }

LABEL_9:

  v12 = *MEMORY[0x277D85DE8];
}

void __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_1306(uint64_t a1)
{
  v3 = [*(a1 + 32) owner];
  v2 = [*(a1 + 40) allObjects];
  [v3 indexSearchableItems:v2 deleteSearchableItemsWithIdentifiers:0 clientState:0 protectionClass:*MEMORY[0x277CCA1A0] forBundleID:@"com.apple.application" options:0 completionHandler:&__block_literal_global_1309];
}

void __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_2_1307(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = logForCSLogCategoryDefault();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_2_1307_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_DEFAULT, "[TopHitAppShortcuts] indexFromBundle complete", v5, 2u);
  }
}

void __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_1310(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v5 = WeakRetained;
  if (!v3)
  {
    [WeakRetained dirty:0];
  }

  if (*(a1 + 32) && (*(a1 + 120) & 1) == 0)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v7 = [MEMORY[0x277CBEB18] array];
    v8 = [MEMORY[0x277CBEB18] array];
    v9 = [MEMORY[0x277CBEB18] array];
    v10 = v5[19];
    v11 = *(a1 + 32);
    v12 = _SIFilterValidatedCSImports();
    if ([v12 count])
    {
      v30 = a1;
      v31 = v5;
      v32 = v3;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v29 = v12;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v34;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v34 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = [v13 objectForKeyedSubscript:*(*(&v33 + 1) + 8 * i)];
            v19 = [v18 contentURL];
            [v6 addObject:v19];

            v20 = [v18 contentType];
            [v7 addObject:v20];

            v21 = [v18 sandboxExtension];
            [v8 addObject:v21];

            v22 = [v18 externalID];
            [v9 addObject:v22];
          }

          v15 = [v13 countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v15);
      }

      a1 = v30;
      v5 = v31;
      LOBYTE(v28) = 1;
      [v31 processImportForBundleID:*(v30 + 40) withURLs:v6 contentTypes:v7 sandboxExtensions:v8 andIdentifiers:v9 options:*(v30 + 96) inGroup:0 additionalAttributes:MEMORY[0x277CBEC10] computeUpdaterAttributesAfterImport:v28 cancelBlock:0];
      v3 = v32;
      v12 = v29;
    }
  }

  if (*(a1 + 64))
  {
    v23 = [*(a1 + 48) owner];
    v24 = [v23 extensionDelegate];

    v25 = *(a1 + 112);
    LOBYTE(v27) = *(a1 + 122);
    [*(a1 + 48) completeIndexingItemFor:*(a1 + 40) delegate:v24 didBeginThrottle:*(*(*(a1 + 72) + 8) + 24) didEndThrottle:*(*(*(a1 + 80) + 8) + 24) error:v3 live:*(a1 + 121) queue:*(a1 + 104) slow:*(a1 + 56) startTime:v27 dataLen:v25 completionHandler:*(a1 + 64)];
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_1313(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    group = dispatch_group_create();
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained restartAttachmentImport:group maxCount:256 depth:0];

    v6 = sIndexQueue;
    v7 = _setup_block(&__block_literal_global_1316, 0, 10485);
    dispatch_group_notify(group, v6, v7);
  }
}

void __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_2_1314()
{
  v0 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_231A35000, v0, OS_LOG_TYPE_INFO, "restartAttachmentImport journalingOnly notify done", v1, 2u);
  }
}

- (void)indexSearchableItems:(id)a3 deleteSearchableItemsWithIdentifiers:(id)a4 clientState:(id)a5 expectedClientState:(id)a6 clientStateName:(id)a7 forBundleID:(id)a8 options:(int64_t)a9 completionHandler:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a10;
  readOnly = self->_readOnly;
  v24 = logForCSLogCategoryIndex();
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG);
  if (readOnly)
  {
    if (v25)
    {
      [SPConcreteCoreSpotlightIndexer indexSearchableItems:? deleteSearchableItemsWithIdentifiers:? clientState:? expectedClientState:? clientStateName:? forBundleID:? options:? completionHandler:?];
    }

    if (v22)
    {
      v26 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
      v22[2](v22, v26);
    }
  }

  else
  {
    if (v25)
    {
      [SPConcreteCoreSpotlightIndexer indexSearchableItems:deleteSearchableItemsWithIdentifiers:clientState:expectedClientState:clientStateName:forBundleID:options:completionHandler:];
    }

    v27 = [v16 count];
    v28 = [v17 count];
    if (v27 | v28)
    {
      v29 = v28;
      queue = sIndexQueue;
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __178__SPConcreteCoreSpotlightIndexer_indexSearchableItems_deleteSearchableItemsWithIdentifiers_clientState_expectedClientState_clientStateName_forBundleID_options_completionHandler___block_invoke;
      v32[3] = &unk_278935540;
      v32[4] = self;
      v39 = v22;
      v33 = v21;
      v40 = v29;
      v41 = v27;
      v42 = a9;
      v34 = v19;
      v35 = v20;
      v36 = v17;
      v37 = v18;
      v38 = v16;
      v30 = _setup_block(v32, 0, 10809);
      dispatch_async(queue, v30);
    }

    else if (v22)
    {
      v22[2](v22, 0);
    }
  }
}

void __178__SPConcreteCoreSpotlightIndexer_indexSearchableItems_deleteSearchableItemsWithIdentifiers_clientState_expectedClientState_clientStateName_forBundleID_options_completionHandler___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  [*(a1 + 32) readyIndex:1];
  v3 = *v2;
  if (!*(*v2 + 152) || (v3[120] & 1) != 0)
  {
    goto LABEL_3;
  }

  if (v3[24] != 1)
  {
LABEL_15:
    v10 = logForCSLogCategoryIndex();
    v11 = os_signpost_id_generate(v10);

    v12 = logForCSLogCategoryIndex();
    v13 = v12;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_231A35000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "IndexLatency", &unk_231AF625D, buf, 2u);
    }

    v14 = *(*(a1 + 32) + 152);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __178__SPConcreteCoreSpotlightIndexer_indexSearchableItems_deleteSearchableItemsWithIdentifiers_clientState_expectedClientState_clientStateName_forBundleID_options_completionHandler___block_invoke_1318;
    v26[3] = &unk_278935518;
    v15 = *(a1 + 88);
    v31 = *(a1 + 96);
    v16 = *(a1 + 40);
    v32 = *(a1 + 112);
    *&v17 = v16;
    *(&v17 + 1) = *(a1 + 32);
    v25 = v17;
    v18 = *(a1 + 48);
    v19 = *(a1 + 56);
    *&v20 = v18;
    *(&v20 + 1) = v19;
    v27 = v25;
    v28 = v20;
    v21 = *(a1 + 64);
    v22 = *(a1 + 72);
    *&v23 = *(a1 + 80);
    *(&v23 + 1) = v15;
    *&v24 = v21;
    *(&v24 + 1) = v22;
    v29 = v24;
    v30 = v23;
    v33 = v11;
    SIBackgroundOpBlock(v14, 0, v26);

    v6 = *(&v30 + 1);
    goto LABEL_19;
  }

  if (v3[72] == 1)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v8 = *v2;
    if (Current <= *(*v2 + 80))
    {
      if ((*(v8 + 24) & 1) != 0 && *(v8 + 72) == 1)
      {
        v9 = logForCSLogCategoryIndex();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          __178__SPConcreteCoreSpotlightIndexer_indexSearchableItems_deleteSearchableItemsWithIdentifiers_clientState_expectedClientState_clientStateName_forBundleID_options_completionHandler___block_invoke_cold_1(a1, v2);
        }
      }

      goto LABEL_15;
    }
  }

LABEL_3:
  v4 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __178__SPConcreteCoreSpotlightIndexer_indexSearchableItems_deleteSearchableItemsWithIdentifiers_clientState_expectedClientState_clientStateName_forBundleID_options_completionHandler___block_invoke_cold_2(v2);
  }

  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    (*(v5 + 16))(v5, v6);
LABEL_19:
  }
}

void __178__SPConcreteCoreSpotlightIndexer_indexSearchableItems_deleteSearchableItemsWithIdentifiers_clientState_expectedClientState_clientStateName_forBundleID_options_completionHandler___block_invoke_1318(uint64_t *a1, uint64_t a2, int a3)
{
  v3 = a1;
  v155 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v137[5] = MEMORY[0x277D85DD0];
    v137[6] = 3221225472;
    v137[7] = __178__SPConcreteCoreSpotlightIndexer_indexSearchableItems_deleteSearchableItemsWithIdentifiers_clientState_expectedClientState_clientStateName_forBundleID_options_completionHandler___block_invoke_2;
    v137[8] = &unk_2789354F0;
    v6 = a1 + 12;
    v139 = *(a1 + 6);
    v120 = a1 + 4;
    v138 = a1[4];
    AnalyticsSendEventLazy();
    if (v3[13])
    {
      if (*v120)
      {
        if ((v3[14] & 0x10) != 0)
        {
          v7 = *(v3[5] + 152);
          if (SIGetAccumulatedSizeForGroup() >= 134217729)
          {
            v103 = v3[11];
            if (!v103)
            {
              goto LABEL_139;
            }

            v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1004 userInfo:0];
            (*(v103 + 16))(v103, v10);
LABEL_138:

LABEL_139:
            goto LABEL_140;
          }
        }
      }
    }

    if (*v6)
    {
      v8 = *(v3[5] + 192);
      v146[0] = @"delete";
      v146[1] = v8;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v146 count:2];
      v10 = SDTransactionCreate(v9);
    }

    else
    {
      v10 = 0;
    }

    if (v3[13])
    {
      v11 = *(v3[5] + 192);
      v145[0] = @"add";
      v145[1] = v11;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v145 count:2];
      v13 = SDTransactionCreate(v12);
    }

    else
    {
      v13 = 0;
    }

    if (v3[6])
    {
      v14 = v3[4];
      v15 = *(v3[5] + 152);
      v16 = v3[7];
      v17 = SICopyCachedCSClientState();
      if (!v17)
      {
        v77 = v3[11];
        v78 = MEMORY[0x277CCA9B8];
        v79 = *MEMORY[0x277CC22E8];
        v80 = -1006;
LABEL_111:
        v81 = [v78 errorWithDomain:v79 code:v80 userInfo:0];
        (*(v77 + 16))(v77, v81);

LABEL_137:
        goto LABEL_138;
      }

      v18 = v17;
      if (!CFEqual(v17, v3[6]))
      {
        v82 = v3[11];
        v83 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1006 userInfo:0];
        (*(v82 + 16))(v82, v83);

        CFRelease(v18);
        goto LABEL_137;
      }

      CFRelease(v18);
    }

    if (!*v6)
    {
LABEL_25:
      if (v3[13])
      {
        v118 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3[10], "count")}];
        v109 = objc_opt_new();
        v133 = 0u;
        v134 = 0u;
        v135 = 0u;
        v136 = 0u;
        obj = v3[10];
        v121 = [obj countByEnumeratingWithState:&v133 objects:v144 count:16];
        if (v121)
        {
          v106 = v13;
          v107 = v10;
          LOBYTE(v27) = 0;
          v117 = *v134;
          v124 = *MEMORY[0x277CBEEE8];
          v126 = *MEMORY[0x277CC31A0];
          v28 = *MEMORY[0x277CC2B80];
          v29 = *MEMORY[0x277CC2B88];
          v127 = *MEMORY[0x277CC2688];
          v112 = *MEMORY[0x277CC2678];
          v108 = *MEMORY[0x277CC2068];
          v110 = v3;
          v30 = v118;
          do
          {
            for (i = 0; i != v121; ++i)
            {
              if (*v134 != v117)
              {
                objc_enumerationMutation(obj);
              }

              v32 = *(*(&v133 + 1) + 8 * i);
              context = objc_autoreleasePoolPush();
              if ([v32 isUpdate])
              {
                v33 = v3[5];
                if ([objc_opt_class() checkItemOfInterest:v32 mask:0])
                {
                  [v109 addObject:v32];
                }
              }

              if ((v27 & 1) != [v32 isUpdate] && objc_msgSend(v30, "count"))
              {
                v132[0] = MEMORY[0x277D85DD0];
                v132[1] = 3221225472;
                v132[2] = __178__SPConcreteCoreSpotlightIndexer_indexSearchableItems_deleteSearchableItemsWithIdentifiers_clientState_expectedClientState_clientStateName_forBundleID_options_completionHandler___block_invoke_2_1338;
                v132[3] = &unk_2789348E8;
                v132[4] = v3[5];
                v34 = [v132 copy];

                v35 = v3[4];
                if (!SISetCSAttributes())
                {
                  CFRelease(v34);
                }

                v36 = objc_alloc_init(MEMORY[0x277CBEB18]);

                v30 = v36;
              }

              v27 = [v32 isUpdate];
              v37 = *v120;
              v38 = v32;
              v39 = v37;
              v40 = v38;
              v41 = v39;
              v42 = logForCSLogCategoryIndex();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v148 = v40;
                _os_log_debug_impl(&dword_231A35000, v42, OS_LOG_TYPE_DEBUG, "creating dictionary for %@", buf, 0xCu);
              }

              v43 = [v40 uniqueIdentifier];

              v123 = v41;
              if (v41 && v43)
              {
                v44 = [v40 attributeSet];
                v45 = [MEMORY[0x277CBEB38] dictionary];
                [v45 setObject:v123 forKey:@"_kMDItemBundleID"];
                v46 = [v40 uniqueIdentifier];
                [v45 setObject:v46 forKey:@"_kMDItemExternalID"];

                v47 = [v40 uniqueIdentifier];
                v125 = [v47 length];

                [v45 setObject:v124 forKey:@"_kMDItemWillModify"];
                v48 = [v44 textContent];
                v119 = v30;
                v116 = v27;
                v114 = v40;
                v115 = i;
                v128 = v45;
                if (v48)
                {
                  v113 = v48;
                  v49 = v126;
                  [v45 setObject:v48 forKey:v126];
                }

                else
                {
                  v52 = [v44 HTMLContentData];
                  v53 = v52;
                  if (v52 && ([v52 length], _MDPlainTextFromHTMLData(), (v54 = objc_claimAutoreleasedReturnValue()) != 0))
                  {
                    v113 = v54;
                    [v45 setObject:v54 forKey:v126];
                  }

                  else
                  {
                    v113 = 0;
                  }

                  v49 = v126;
                }

                v55 = [v44 attributeDictionary];
                v56 = 0;
                v130 = v44;
                while (1)
                {
                  v142 = 0u;
                  v143 = 0u;
                  v140 = 0u;
                  v141 = 0u;
                  v57 = v55;
                  v58 = [v57 countByEnumeratingWithState:&v140 objects:buf count:16];
                  if (v58)
                  {
                    v59 = v58;
                    v60 = *v141;
                    do
                    {
                      for (j = 0; j != v59; ++j)
                      {
                        if (*v141 != v60)
                        {
                          objc_enumerationMutation(v57);
                        }

                        v62 = *(*(&v140 + 1) + 8 * j);
                        if (v56)
                        {
                          v63 = [v62 keyName];
                        }

                        else
                        {
                          v63 = v62;
                        }

                        v64 = v63;
                        if (([v28 isEqualToString:v63] & 1) == 0 && (objc_msgSend(v29, "isEqualToString:", v64) & 1) == 0 && (objc_msgSend(v64, "hasSuffix:", @"Dictionary") & 1) == 0 && (objc_msgSend(v64, "hasSuffix:", @"ContactProperties") & 1) == 0 && (objc_msgSend(v64, "hasSuffix:", @"Persons") & 1) == 0)
                        {
                          if ([v49 isEqualToString:v64])
                          {
                            v65 = [v130 textContent];
                            [v128 setObject:v65 forKeyedSubscript:v49];
                          }

                          else
                          {
                            v66 = [v127 isEqualToString:v64];
                            v65 = [v130 attributeForKey:v64];
                            if (v66)
                            {
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v67 = [v65 absoluteString];
                                [v128 setObject:v67 forKeyedSubscript:v127];
                              }

                              else
                              {
                                [v128 setObject:v65 forKeyedSubscript:v127];
                              }

                              v49 = v126;
                            }

                            else
                            {
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v68 = [v65 localizedStrings];

                                v65 = v68;
                              }

                              v49 = v126;
                              if (v65)
                              {
                                [v128 setObject:v65 forKey:v64];
                                objc_opt_class();
                                if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
                                {
                                  v125 += [v65 length];
                                }
                              }

                              else
                              {
                                v69 = [v57 objectForKeyedSubscript:v64];

                                if (v69 == v124)
                                {
                                  [v128 setObject:? forKey:?];
                                }

                                v65 = 0;
                              }
                            }
                          }
                        }
                      }

                      v59 = [v57 countByEnumeratingWithState:&v140 objects:buf count:16];
                    }

                    while (v59);
                  }

                  if (v56)
                  {
                    break;
                  }

                  v50 = v130;
                  v55 = [v130 customAttributeDictionary];

                  v56 = 1;
                  if (!v55)
                  {
                    v57 = 0;
                    v3 = v110;
                    goto LABEL_90;
                  }
                }

                v3 = v110;
                v50 = v130;
LABEL_90:
                v70 = [v128 objectForKeyedSubscript:v112];
                v30 = v119;
                v27 = v116;
                v40 = v114;
                i = v115;
                if (v70)
                {
                }

                else if ([v123 isEqualToString:@"com.apple.mobilemail"])
                {
                  [v128 setObject:v108 forKeyedSubscript:v112];
                }

                if (([v114 isUpdate] & 1) == 0)
                {
                  v71 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v125];
                  [v128 setObject:v71 forKey:@"_kMDItemStorageSize"];

                  v40 = v114;
                  v50 = v130;
                }

                v51 = v128;
              }

              else
              {
                v50 = logForCSLogCategoryIndex();
                if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
                {
                  v75 = [v40 uniqueIdentifier];
                  *buf = 138412546;
                  v148 = v123;
                  v149 = 2112;
                  v150 = v75;
                  _os_log_debug_impl(&dword_231A35000, v50, OS_LOG_TYPE_DEBUG, "Failure for %@ / %@", buf, 0x16u);
                }

                v51 = 0;
              }

              v72 = logForCSLogCategoryIndex();
              v73 = os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG);
              if (v51)
              {
                if (v73)
                {
                  *buf = 138412546;
                  v148 = v40;
                  v149 = 2112;
                  v150 = v51;
                  _os_log_debug_impl(&dword_231A35000, v72, OS_LOG_TYPE_DEBUG, "Got metadata for %@: %@", buf, 0x16u);
                }

                v74 = v51;
                [v30 addObject:v51];
              }

              else
              {
                if (v73)
                {
                  *buf = 138412290;
                  v148 = v40;
                  _os_log_debug_impl(&dword_231A35000, v72, OS_LOG_TYPE_DEBUG, "No dictionary for %@; skipping", buf, 0xCu);
                }

                v74 = 0;
              }

              objc_autoreleasePoolPop(context);
            }

            v121 = [obj countByEnumeratingWithState:&v133 objects:v144 count:16];
          }

          while (v121);
          v118 = v30;
          if (v27)
          {
            v76 = 0x20000;
          }

          else
          {
            v76 = 0;
          }

          v13 = v106;
          v10 = v107;
        }

        else
        {
          v76 = 0;
        }

        if ([v3[5] _shouldNotifyForSearchableItemUpdates:v3[4]] && objc_msgSend(v109, "count"))
        {
          v84 = [objc_alloc(MEMORY[0x277CC3420]) initWithJobType:17];
          [v84 setUpdatedItems:v109];
          v85 = logForCSLogCategoryDefault();
          if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
          {
            [SPConcreteCoreSpotlightIndexer notifyClientForItemUpdates:v109 updatedItems:? batchMask:?];
          }

          v86 = +[SpotlightDaemonServer sharedDaemonServer];
          v87 = v3[4];
          v88 = [v3[5] dataclass];
          LOBYTE(v87) = [v86 handleJob:v84 bundleID:v87 protectionClass:v88 completionHandler:&__block_literal_global_1341];

          if ((v87 & 1) == 0)
          {
            v89 = +[SPCoreSpotlightIndexer sharedInstance];
            v90 = [v89 extensionDelegate];

            if (v90)
            {
              [v90 indexRequestsPerformDataJob:v84 forBundle:*v120 completionHandler:&__block_literal_global_1344];
            }
          }
        }

        v91 = logForCSLogCategoryIndex();
        if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
        {
          v104 = v3[4];
          v105 = v3[13];
          *buf = 138412802;
          v148 = v104;
          v149 = 2048;
          v150 = v105;
          v151 = 2048;
          v152 = v76;
          _os_log_debug_impl(&dword_231A35000, v91, OS_LOG_TYPE_DEBUG, "SISetCSAttributes, bundleID:%@, adds:%ld, flags:0x%08lx", buf, 0x20u);
        }

        v131[0] = MEMORY[0x277D85DD0];
        v131[1] = 3221225472;
        v131[2] = __178__SPConcreteCoreSpotlightIndexer_indexSearchableItems_deleteSearchableItemsWithIdentifiers_clientState_expectedClientState_clientStateName_forBundleID_options_completionHandler___block_invoke_1345;
        v131[3] = &unk_2789348E8;
        v131[4] = v3[5];
        v92 = [v131 copy];

        v93 = v3[4];
        if (SISetCSAttributes())
        {
          setClientStateForIndexing(v3[5], v3[4], v3[9], v3[7], v3[11], v13);
        }

        else
        {
          v94 = v3[11];
          if (v94)
          {
            v95 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1 userInfo:0];
            (*(v94 + 16))(v94, v95);
          }

          CFRelease(v92);
        }
      }

      v96 = logForCSLogCategoryIndex();
      v97 = v96;
      v98 = v3[15];
      if (v98 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v96))
      {
        v99 = [v3[4] UTF8String];
        v101 = v3[12];
        v100 = v3[13];
        *buf = 136446979;
        v148 = v99;
        v149 = 2081;
        v150 = "indexSearchableItems";
        v151 = 2050;
        v152 = v100;
        v153 = 2050;
        v154 = v101;
        _os_signpost_emit_with_name_impl(&dword_231A35000, v97, OS_SIGNPOST_INTERVAL_END, v98, "IndexLatency", "BundleID=%{public, signpost.telemetry:string1}s Method=%{private, signpost.telemetry:string2}s AddCount=%{public, signpost.telemetry:number1}lu DeleteCount=%{public, signpost.telemetry:number2}lu  enableTelemetry=YES ", buf, 0x2Au);
      }

      goto LABEL_137;
    }

    v19 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      __178__SPConcreteCoreSpotlightIndexer_indexSearchableItems_deleteSearchableItemsWithIdentifiers_clientState_expectedClientState_clientStateName_forBundleID_options_completionHandler___block_invoke_1318_cold_1(v120);
    }

    v21 = v3[4];
    v20 = v3[5];
    v22 = *(v20 + 152);
    v23 = v3[8];
    if (v3[13])
    {
      v24 = *(v20 + 152);
      v25 = v3[4];
      v26 = v3[8];
      SIDeleteCSAttributes();
      goto LABEL_25;
    }

    v137[0] = MEMORY[0x277D85DD0];
    v137[1] = 3221225472;
    v137[2] = __178__SPConcreteCoreSpotlightIndexer_indexSearchableItems_deleteSearchableItemsWithIdentifiers_clientState_expectedClientState_clientStateName_forBundleID_options_completionHandler___block_invoke_1337;
    v137[3] = &unk_2789348E8;
    v137[4] = v20;
    [v137 copy];
    if (SIDeleteCSAttributes())
    {
      setClientStateForIndexing(v3[5], v3[4], v3[9], v3[7], v3[11], v10);
      goto LABEL_137;
    }

    v77 = v3[11];
    if (!v77)
    {
      goto LABEL_137;
    }

    v78 = MEMORY[0x277CCA9B8];
    v79 = *MEMORY[0x277CC22E8];
    v80 = -1;
    goto LABEL_111;
  }

  v4 = a1[11];
  if (!v4)
  {
LABEL_140:
    v102 = *MEMORY[0x277D85DE8];
    return;
  }

  v129 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
  (*(v4 + 16))(v4);
  v5 = *MEMORY[0x277D85DE8];
}

id __178__SPConcreteCoreSpotlightIndexer_indexSearchableItems_deleteSearchableItemsWithIdentifiers_clientState_expectedClientState_clientStateName_forBundleID_options_completionHandler___block_invoke_2(void *a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"deleteCount";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[5]];
  v9[0] = v2;
  v8[1] = @"addCount";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[6]];
  v8[2] = @"bundleID";
  v4 = a1[4];
  v9[1] = v3;
  v9[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

void __178__SPConcreteCoreSpotlightIndexer_indexSearchableItems_deleteSearchableItemsWithIdentifiers_clientState_expectedClientState_clientStateName_forBundleID_options_completionHandler___block_invoke_1339(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = logForCSLogCategoryDefault();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __84__SPConcreteCoreSpotlightIndexer_notifyClientForItemUpdates_updatedItems_batchMask___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __84__SPConcreteCoreSpotlightIndexer_notifyClientForItemUpdates_updatedItems_batchMask___block_invoke_cold_2();
  }
}

void __178__SPConcreteCoreSpotlightIndexer_indexSearchableItems_deleteSearchableItemsWithIdentifiers_clientState_expectedClientState_clientStateName_forBundleID_options_completionHandler___block_invoke_1342(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = logForCSLogCategoryDefault();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __84__SPConcreteCoreSpotlightIndexer_notifyClientForItemUpdates_updatedItems_batchMask___block_invoke_278_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __84__SPConcreteCoreSpotlightIndexer_notifyClientForItemUpdates_updatedItems_batchMask___block_invoke_278_cold_2();
  }
}

- (void)validateConcreteIndexer:(BOOL)a3 outFileDescriptor:(int)a4
{
  if ((a4 & 0x80000000) == 0)
  {
    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x2020000000;
    v34 = 1;
    v31[0] = 0;
    v31[1] = v31;
    v31[2] = 0x3032000000;
    v31[3] = __Block_byref_object_copy__0;
    v31[4] = __Block_byref_object_dispose__0;
    v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x3032000000;
    v29[3] = __Block_byref_object_copy__0;
    v29[4] = __Block_byref_object_dispose__0;
    v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = dispatch_group_create();
    v8 = sIndexQueue;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __76__SPConcreteCoreSpotlightIndexer_validateConcreteIndexer_outFileDescriptor___block_invoke;
    v22[3] = &unk_278935600;
    v22[4] = self;
    v27 = a4;
    v9 = v7;
    v28 = a3;
    v23 = v9;
    v24 = v31;
    v25 = v29;
    v26 = v33;
    v10 = _setup_block(v22, 0, 10938);
    dispatch_group_async(v9, v8, v10);

    v11 = dispatch_group_create();
    dispatch_group_enter(v11);
    v12 = sIndexQueue;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __76__SPConcreteCoreSpotlightIndexer_validateConcreteIndexer_outFileDescriptor___block_invoke_1358;
    v15[3] = &unk_278935628;
    v20 = a4;
    v21 = a3;
    v15[4] = self;
    v17 = v33;
    v18 = v31;
    v19 = v29;
    v13 = v11;
    v16 = v13;
    v14 = _setup_block(v15, 0, 10969);
    dispatch_group_notify(v9, v12, v14);

    dispatch_group_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
    _Block_object_dispose(v29, 8);

    _Block_object_dispose(v31, 8);
    _Block_object_dispose(v33, 8);
  }
}

void __76__SPConcreteCoreSpotlightIndexer_validateConcreteIndexer_outFileDescriptor___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) readyIndex:0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 152);
  if (!v3 || (*(v2 + 24) & 1) != 0 || *(v2 + 26) == 1)
  {
    v4 = *(a1 + 72);
    if (v4 < 0)
    {
      v5 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 32);
        v7 = *(v6 + 152);
        v8 = *(v6 + 24);
        v9 = *(v6 + 26);
        LODWORD(v6) = *(v6 + 120);
        *buf = 134218752;
        v22 = v7;
        v23 = 1024;
        v24 = v8;
        v25 = 1024;
        v26 = v9;
        v27 = 1024;
        v28 = v6;
        _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_DEFAULT, "Validate concrete indexer skipped: index:%p suspended:%d suspending:%d readOnly:%d", buf, 0x1Eu);
      }
    }

    else
    {
      dprintf(v4, "Validate concrete indexer skipped: index:%p suspended:%d suspending:%d readOnly:%d\n", v3, *(v2 + 24), *(v2 + 26), *(v2 + 120));
    }
  }

  else
  {
    dispatch_group_enter(*(a1 + 40));
    v10 = *(*(a1 + 32) + 152);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __76__SPConcreteCoreSpotlightIndexer_validateConcreteIndexer_outFileDescriptor___block_invoke_1348;
    v14[3] = &unk_2789355D8;
    v11 = *(a1 + 40);
    v12 = *(a1 + 32);
    v15 = v11;
    v16 = v12;
    v20 = *(a1 + 76);
    v19 = *(a1 + 72);
    v17 = *(a1 + 48);
    v18 = *(a1 + 64);
    SIBackgroundOpBlock(v10, 0, v14);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __76__SPConcreteCoreSpotlightIndexer_validateConcreteIndexer_outFileDescriptor___block_invoke_1348(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);

    dispatch_group_leave(v4);
  }

  else
  {
    v5 = *(*(a1 + 40) + 152);
    v9 = *(a1 + 72);
    v10 = *(a1 + 76);
    v7 = *(a1 + 48);
    v6 = *(a1 + 32);
    v8 = *(a1 + 56);
    _SIValidateActivityJournal();
    dispatch_group_leave(*(a1 + 32));
  }
}

void __76__SPConcreteCoreSpotlightIndexer_validateConcreteIndexer_outFileDescriptor___block_invoke_2(uint64_t a1, const __CFString *a2, uint64_t *a3, unint64_t a4)
{
  v47 = *MEMORY[0x277D85DE8];
  Copy = CFStringCreateCopy(0, a2);
  if (([(__CFString *)Copy isEqualToString:@"com.apple.searchd"]& 1) == 0)
  {
    v8 = malloc_type_calloc(1uLL, (a4 >> 3) + 1, 0x9B5282F4uLL);
    v9 = malloc_type_malloc(8 * a4, 0x100004000313F17uLL);
    v10 = v9;
    if (a4)
    {
      v11 = a4;
      v12 = v9;
      do
      {
        v13 = *a3++;
        *v12++ = v13;
        --v11;
      }

      while (v11);
    }

    v14 = *(a1 + 72);
    if (v14 < 0)
    {
      v16 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 76))
        {
          v17 = "Deletes";
        }

        else
        {
          v17 = "Items";
        }

        v18 = *(*(a1 + 32) + 192);
        *buf = 136315906;
        v40 = v17;
        v41 = 2112;
        v42 = v18;
        v43 = 2080;
        v44 = [(__CFString *)Copy UTF8String];
        v45 = 1024;
        v46 = a4;
        _os_log_impl(&dword_231A35000, v16, OS_LOG_TYPE_DEFAULT, "Validate concrete indexer: ### Validate %s %@ %s BatchCount:%d\n", buf, 0x26u);
      }
    }

    else
    {
      if (*(a1 + 76))
      {
        v15 = "Deletes";
      }

      else
      {
        v15 = "Items";
      }

      dprintf(v14, "### Validate %s %s %s BatchCount:%d\n", v15, [*(*(a1 + 32) + 192) UTF8String], -[__CFString UTF8String](Copy, "UTF8String"), a4);
    }

    v19 = MEMORY[0x277CCABB0];
    v20 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:Copy];
    v21 = [v19 numberWithInt:{objc_msgSend(v20, "intValue") + a4}];
    [*(*(*(a1 + 48) + 8) + 40) setObject:v21 forKeyedSubscript:Copy];

    dispatch_group_enter(*(a1 + 40));
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __76__SPConcreteCoreSpotlightIndexer_validateConcreteIndexer_outFileDescriptor___block_invoke_1352;
    v29[3] = &unk_278935588;
    v33 = v10;
    v34 = a4;
    v35 = v8;
    v37 = *(a1 + 76);
    v36 = *(a1 + 72);
    v22 = Copy;
    v30 = v22;
    v32 = *(a1 + 56);
    v31 = *(a1 + 40);
    v23 = MEMORY[0x2383760E0](v29);
    v24 = *(a1 + 32);
    v25 = v24[19];
    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@", *MEMORY[0x277CC2500], v22];
    v38 = *MEMORY[0x277CC2C40];
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
    LOBYTE(v24) = [v24 _startInternalQueryWithIndex:v25 query:v26 fetchAttributes:v27 resultsHandler:v23];

    if ((v24 & 1) == 0)
    {
      free(v8);
      free(v10);
      dispatch_group_leave(*(a1 + 40));
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __76__SPConcreteCoreSpotlightIndexer_validateConcreteIndexer_outFileDescriptor___block_invoke_1352(uint64_t a1, void *a2, uint64_t a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a3 == 1)
  {
    v6 = *(a1 + 72);
    if (*(a1 + 92))
    {
      if (v6)
      {
        for (i = 0; i < v6; ++i)
        {
          if ((*(*(a1 + 80) + (i >> 3)) >> (i & 7)))
          {
            v8 = *(a1 + 88);
            if (v8 < 0)
            {
              v10 = logForCSLogCategoryDefault();
              if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
              {
                v14 = *(*(a1 + 64) + 8 * i);
                v15 = [*(a1 + 32) UTF8String];
                *buf = 134218498;
                v29 = v14;
                v30 = 2048;
                v31 = v14;
                v32 = 2080;
                v33 = v15;
                _os_log_error_impl(&dword_231A35000, v10, OS_LOG_TYPE_ERROR, "Validate concrete indexer: ### Error - Missed delete oid: 0x%llx (%lld) for bundle %s\n", buf, 0x20u);
              }
            }

            else
            {
              v9 = *(*(a1 + 64) + 8 * i);
              dprintf(v8, "### Error - Missed delete oid: 0x%llx (%lld) for bundle %s\n", v9, v9, [*(a1 + 32) UTF8String]);
            }

            v11 = MEMORY[0x277CCABB0];
            v12 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:*(a1 + 32)];
            v13 = [v11 numberWithInt:{objc_msgSend(v12, "intValue") + 1}];
            [*(*(*(a1 + 48) + 8) + 40) setObject:v13 forKeyedSubscript:*(a1 + 32)];

            *(*(*(a1 + 56) + 8) + 24) = 0;
            v6 = *(a1 + 72);
          }
        }
      }
    }

    else if (v6)
    {
      for (j = 0; j < v6; ++j)
      {
        if (((*(*(a1 + 80) + (j >> 3)) >> (j & 7)) & 1) == 0)
        {
          v17 = *(a1 + 88);
          if (v17 < 0)
          {
            v19 = logForCSLogCategoryDefault();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v23 = *(*(a1 + 64) + 8 * j);
              v24 = [*(a1 + 32) UTF8String];
              *buf = 134218498;
              v29 = v23;
              v30 = 2048;
              v31 = v23;
              v32 = 2080;
              v33 = v24;
              _os_log_error_impl(&dword_231A35000, v19, OS_LOG_TYPE_ERROR, "Validate concrete indexer: ### Error - Missing oid: 0x%llx (%lld) for bundle %s\n", buf, 0x20u);
            }
          }

          else
          {
            v18 = *(*(a1 + 64) + 8 * j);
            dprintf(v17, "### Error - Missing oid: 0x%llx (%lld) for bundle %s\n", v18, v18, [*(a1 + 32) UTF8String]);
          }

          v20 = MEMORY[0x277CCABB0];
          v21 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:*(a1 + 32)];
          v22 = [v20 numberWithInt:{objc_msgSend(v21, "intValue") + 1}];
          [*(*(*(a1 + 48) + 8) + 40) setObject:v22 forKeyedSubscript:*(a1 + 32)];

          *(*(*(a1 + 56) + 8) + 24) = 0;
          v6 = *(a1 + 72);
        }
      }
    }

    free(*(a1 + 80));
    free(*(a1 + 64));
    dispatch_group_leave(*(a1 + 40));
  }

  else if (!a3)
  {
    _MDStoreOIDArrayGetVectorCount();
    v26 = *(a1 + 64);
    v27 = *(a1 + 80);
    _MDStoreOIDArrayApplyBlock();
  }

  v25 = *MEMORY[0x277D85DE8];
}

void *__76__SPConcreteCoreSpotlightIndexer_validateConcreteIndexer_outFileDescriptor___block_invoke_2_1353(void *result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  if (a5 >= 2)
  {
    __key[7] = v5;
    __key[8] = v6;
    v7 = result;
    v8 = (a4 + 8);
    v9 = a5 - 1;
    do
    {
      v10 = *v8++;
      v12 = v7[4];
      v11 = v7[5];
      __key[0] = v10;
      if (v11 >= 1)
      {
        result = bsearch(__key, v12, v11, 8uLL, compareOID);
        if (result)
        {
          v13 = (result - v12) >> 3;
          if ((v13 & 0x8000000000000000) == 0)
          {
            *(v7[6] + (v13 >> 3)) |= 1 << (((result - v12) >> 3) & 7);
          }
        }
      }

      --v9;
    }

    while (v9);
  }

  return result;
}

void __76__SPConcreteCoreSpotlightIndexer_validateConcreteIndexer_outFileDescriptor___block_invoke_1358(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 72);
  if (v2 < 0)
  {
    v6 = *(*(*(a1 + 48) + 8) + 24);
    v7 = logForCSLogCategoryDefault();
    v8 = v7;
    if (v6 == 1)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(*(a1 + 32) + 192);
        if (*(a1 + 76))
        {
          v10 = "Deletes";
        }

        else
        {
          v10 = "Items";
        }

        if (*(*(*(a1 + 48) + 8) + 24))
        {
          v11 = "Success";
        }

        else
        {
          v11 = "Failed";
        }

        *buf = 138412802;
        *v47 = v9;
        *&v47[8] = 2080;
        *&v47[10] = v10;
        *&v47[18] = 2080;
        *&v47[20] = v11;
        _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_DEFAULT, "### Validation Complete for PC %@ validating %s: Result - %s\n", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __76__SPConcreteCoreSpotlightIndexer_validateConcreteIndexer_outFileDescriptor___block_invoke_1358_cold_1(a1);
    }
  }

  else
  {
    v3 = [*(*(a1 + 32) + 192) UTF8String];
    v4 = "Items";
    if (*(a1 + 76))
    {
      v4 = "Deletes";
    }

    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v5 = "Success";
    }

    else
    {
      v5 = "Failed";
    }

    dprintf(v2, "PC %s validating %s: Result - %s\n", v3, v4, v5);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = *(*(*(a1 + 56) + 8) + 40);
  v12 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v43;
    v39 = *v43;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v43 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v42 + 1) + 8 * i);
        v17 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:v16];
        v18 = [v17 intValue];

        v19 = *(a1 + 72);
        if (v18 < 1)
        {
          if (v19 < 0)
          {
            v20 = logForCSLogCategoryDefault();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v33 = [*(*(*(a1 + 56) + 8) + 40) objectForKeyedSubscript:v16];
              v34 = [v33 intValue];
              v35 = "Items";
              if (*(a1 + 76))
              {
                v35 = "Deletes";
              }

              v36 = *(*(a1 + 32) + 192);
              *buf = 67109890;
              *v47 = v34;
              *&v47[4] = 2080;
              *&v47[6] = v35;
              *&v47[14] = 2112;
              *&v47[16] = v36;
              *&v47[24] = 2112;
              *&v47[26] = v16;
              _os_log_impl(&dword_231A35000, v20, OS_LOG_TYPE_DEFAULT, "Validate concrete indexer: ### Validation Complete %d %s %@ bundle: %@\n", buf, 0x26u);
            }
          }

          else
          {
            v20 = [*(*(*(a1 + 56) + 8) + 40) objectForKeyedSubscript:v16];
            v25 = [v20 intValue];
            if (*(a1 + 76))
            {
              v26 = "Deletes";
            }

            else
            {
              v26 = "Items";
            }

            dprintf(v19, "### Validation Complete %d %s %s bundle: %s\n", v25, v26, [*(*(a1 + 32) + 192) UTF8String], objc_msgSend(v16, "UTF8String"));
          }
        }

        else if (v19 < 0)
        {
          v20 = logForCSLogCategoryDefault();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v27 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:v16];
            v28 = [v27 intValue];
            v29 = [*(*(*(a1 + 56) + 8) + 40) objectForKeyedSubscript:v16];
            v30 = [v29 intValue];
            v31 = "Items";
            if (*(a1 + 76))
            {
              v31 = "Deletes";
            }

            v32 = *(*(a1 + 32) + 192);
            *buf = 67110146;
            *v47 = v28;
            *&v47[4] = 1024;
            *&v47[6] = v30;
            *&v47[10] = 2080;
            *&v47[12] = v31;
            *&v47[20] = 2112;
            *&v47[22] = v32;
            *&v47[30] = 2112;
            *&v47[32] = v16;
            _os_log_impl(&dword_231A35000, v20, OS_LOG_TYPE_DEFAULT, "Validate concrete indexer: ### Validation Error %d of %d %s %@ bundle: %@\n", buf, 0x2Cu);
          }
        }

        else
        {
          v20 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:v16];
          v41 = [v20 intValue];
          v21 = [*(*(*(a1 + 56) + 8) + 40) objectForKeyedSubscript:v16];
          v22 = v13;
          v23 = [v21 intValue];
          if (*(a1 + 76))
          {
            v24 = "Deletes";
          }

          else
          {
            v24 = "Items";
          }

          v38 = v23;
          v13 = v22;
          v14 = v39;
          dprintf(v19, "### Validation Error %d of %d %s %s bundle: %s\n", v41, v38, v24, [*(*(a1 + 32) + 192) UTF8String], objc_msgSend(v16, "UTF8String"));
        }
      }

      v13 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v13);
  }

  dispatch_group_leave(*(a1 + 40));
  v37 = *MEMORY[0x277D85DE8];
}

- (void)validateVectors:(int)a3
{
  if ((a3 & 0x80000000) == 0)
  {
    v5 = dispatch_group_create();
    v6 = sIndexQueue;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __50__SPConcreteCoreSpotlightIndexer_validateVectors___block_invoke;
    v15[3] = &unk_278934428;
    v17 = a3;
    v15[4] = self;
    v16 = v5;
    v7 = v5;
    v8 = _setup_block(v15, 0, 11008);
    dispatch_group_async(v7, v6, v8);

    v9 = dispatch_group_create();
    dispatch_group_enter(v9);
    v10 = sIndexQueue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __50__SPConcreteCoreSpotlightIndexer_validateVectors___block_invoke_2;
    v13[3] = &unk_278934050;
    v14 = v9;
    v11 = v9;
    v12 = _setup_block(v13, 0, 11015);
    dispatch_group_notify(v7, v10, v12);

    dispatch_group_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  }
}

void __50__SPConcreteCoreSpotlightIndexer_validateVectors___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) readyIndex:0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 152);
  if (!v3 || (*(v2 + 24) & 1) != 0 || *(v2 + 26) == 1)
  {
    v4 = *(a1 + 48);
    if (v4 < 0)
    {
      v5 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 32);
        v7 = *(v6 + 152);
        v8 = *(v6 + 24);
        v9 = *(v6 + 26);
        LODWORD(v6) = *(v6 + 120);
        *buf = 134218752;
        v17 = v7;
        v18 = 1024;
        v19 = v8;
        v20 = 1024;
        v21 = v9;
        v22 = 1024;
        v23 = v6;
        _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_DEFAULT, "Validate vectors for concrete indexer skipped: index:%p suspended:%d suspending:%d readOnly:%d", buf, 0x1Eu);
      }
    }

    else
    {
      dprintf(v4, "Validate vectors for concrete indexer skipped: index:%p suspended:%d suspending:%d readOnly:%d\n", v3, *(v2 + 24), *(v2 + 26), *(v2 + 120));
    }
  }

  else
  {
    v10 = *(a1 + 48);
    if ((v10 & 0x80000000) == 0)
    {
      dprintf(v10, "Validate vectors for concrete indexer pc: %s\n", [*(v2 + 192) UTF8String]);
    }

    dispatch_group_enter(*(a1 + 40));
    v11 = *(*(a1 + 32) + 152);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __50__SPConcreteCoreSpotlightIndexer_validateVectors___block_invoke_1366;
    v13[3] = &unk_278935650;
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    SIBackgroundOpBlock(v11, 0, v13);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __50__SPConcreteCoreSpotlightIndexer_validateVectors___block_invoke_1366(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    v4 = *(a1 + 40);
    _SIValidateVectors();
  }

  v5 = *(a1 + 32);

  dispatch_group_leave(v5);
}

- (void)prepareIndexingWhileLocked:(id)a3 holdAssertionFor:(double)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = sIndexQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __96__SPConcreteCoreSpotlightIndexer_prepareIndexingWhileLocked_holdAssertionFor_completionHandler___block_invoke;
  v14[3] = &unk_278935678;
  v15 = v8;
  v16 = v9;
  v17 = a4;
  v14[4] = self;
  v11 = v8;
  v12 = v9;
  v13 = _setup_block(v14, 0, 11063);
  dispatch_async(v10, v13);
}

void __96__SPConcreteCoreSpotlightIndexer_prepareIndexingWhileLocked_holdAssertionFor_completionHandler___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) readyIndex:0];
  v2 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 152);
    v5 = *(v3 + 24);
    v6 = *(v3 + 26);
    LODWORD(v3) = *(v3 + 120);
    v10 = 134218752;
    v11 = v4;
    v12 = 1024;
    v13 = v5;
    v14 = 1024;
    v15 = v6;
    v16 = 1024;
    v17 = v3;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "prepareIndexingWhileLocked failed: index:%p suspended:%d suspending:%d readOnly:%d", &v10, 0x1Eu);
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    (*(v7 + 16))(v7, v8);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)finishIndexingWhileLocked:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sIndexQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __78__SPConcreteCoreSpotlightIndexer_finishIndexingWhileLocked_completionHandler___block_invoke;
  v12[3] = &unk_2789356A0;
  v13 = v6;
  v14 = v7;
  v12[4] = self;
  v9 = v6;
  v10 = v7;
  v11 = _setup_block(v12, 0, 11112);
  dispatch_async(v8, v11);
}

void __78__SPConcreteCoreSpotlightIndexer_finishIndexingWhileLocked_completionHandler___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) readyIndex:0];
  v2 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 152);
    v5 = *(v3 + 24);
    v6 = *(v3 + 26);
    LODWORD(v3) = *(v3 + 120);
    v10 = 134218752;
    v11 = v4;
    v12 = 1024;
    v13 = v5;
    v14 = 1024;
    v15 = v6;
    v16 = 1024;
    v17 = v3;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "finishIndexingWhileLocked failed: index:%p suspended:%d suspending:%d readOnly:%d", &v10, 0x1Eu);
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    (*(v7 + 16))(v7, v8);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)_startQueryWithQueryTask:(id)a3 eventHandler:(id)a4 resultsHandler:(id)a5
{
  v46[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    [SPConcreteCoreSpotlightIndexer _startQueryWithQueryTask:eventHandler:resultsHandler:];
  }

  v11 = v10;
  v12 = [v8 resultsQueue];
  v13 = v12;
  if (!v12)
  {
    [SPConcreteCoreSpotlightIndexer _startQueryWithQueryTask:eventHandler:resultsHandler:];
  }

  if (![v12 siResultsQueue])
  {
    [SPConcreteCoreSpotlightIndexer _startQueryWithQueryTask:eventHandler:resultsHandler:];
  }

  v14 = [v8 siQuery];
  if (!v14)
  {
    [SPConcreteCoreSpotlightIndexer _startQueryWithQueryTask:eventHandler:resultsHandler:];
  }

  v15 = v14;
  [(SPConcreteCoreSpotlightIndexer *)self readyIndex:0];
  if (!self->_index || self->_suspended || self->_suspending || [(SPConcreteCoreSpotlightIndexer *)self denyOperationOnAssertedIndex:"_startQueryWithQueryTask"])
  {
    v16 = 0;
    goto LABEL_10;
  }

  v36 = MEMORY[0x2383760E0](v9);
  v19 = [v8 queryContext];
  if (([v19 internal] & 1) == 0)
  {

LABEL_17:
    v23 = [v8 clientBundleID];

    if (v23)
    {
      v24 = [v8 clientBundleID];
      v46[0] = v24;
      [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:1];
    }

    goto LABEL_19;
  }

  v20 = [v8 queryContext];
  v21 = [v20 bundleIDs];

  if (!v21)
  {
    goto LABEL_17;
  }

  v22 = [v8 queryContext];
  [v22 bundleIDs];

LABEL_19:
  index = self->_index;
  v26 = SIExecuteQueryWithResultsCallbackForTags();
  if (v26)
  {
    v27 = [v8 queryString];
    [v8 queryID];
    v29 = v28;
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v31 = v30;
    SIQueryRetain();
    v44[0] = 0;
    v44[1] = v44;
    v44[2] = 0x2020000000;
    v45 = 0;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __87__SPConcreteCoreSpotlightIndexer__startQueryWithQueryTask_eventHandler_resultsHandler___block_invoke;
    v37[3] = &unk_2789356C8;
    v40 = v44;
    v41 = v29;
    v39 = v11;
    v42 = v31;
    v32 = v27;
    v38 = v32;
    v43 = v15;
    v33 = [v37 copy];
    v16 = [[SPQueryJob alloc] initWithSIJob:v26 dataclass:self->_dataclass eventHandler:v9 resultsHandler:v33];
    v34 = [v8 queryContext];
    v35 = [v34 disableResultStreaming];

    if (v35)
    {
      [v13 setDisableResultStreaming:1];
    }

    [v13 addJob:v16];

    _Block_object_dispose(v44, 8);
  }

  else
  {
    v16 = 0;
  }

LABEL_10:
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

uint64_t __87__SPConcreteCoreSpotlightIndexer__startQueryWithQueryTask_eventHandler_resultsHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = a2;
  v12 = *(a1 + 40);
  v20 = v11;
  if (v12)
  {
    (*(v12 + 16))(v12, v11, a3, a4, a5, a6);
    v11 = v20;
  }

  if (a3 == 2 && a6)
  {
    v13 = *(a1 + 56);
    v14 = [v11 dataclass];
    SDTraceAdd(2, @"Performance", v13, v14, a6, 0.0);
  }

  else if (a3 == 1 && (*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v15 = [v11 dataclass];
    v16 = *(a1 + 56);
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    SDTraceAdd(2, v15, v16, *(a1 + 32), 0, v17 - *(a1 + 64));

    v18 = *(a1 + 72);
    SIQueryRelease();
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return MEMORY[0x2821F96F8]();
}

- (void)startQueryWithQueryTask:(id)a3 startHandler:(id)a4 eventHandler:(id)a5 resultsHandler:(id)a6
{
  v16 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (!v10)
  {
    [SPConcreteCoreSpotlightIndexer startQueryWithQueryTask:startHandler:eventHandler:resultsHandler:];
  }

  v13 = v12;
  [(SPConcreteCoreSpotlightIndexer *)self readyIndex:0];
  if (!self->_index || self->_suspended || self->_suspending)
  {
    dataclass = self->_dataclass;
    v10[2](v10, 0);
  }

  else
  {
    v15 = [(SPConcreteCoreSpotlightIndexer *)self _startQueryWithQueryTask:v16 eventHandler:v11 resultsHandler:v13];
    (v10[2])(v10, v15, self->_index, self->_dataclass);
  }
}

- (void)willModifySearchableItemsWithIdentifiers:(id)a3 forBundleID:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count])
  {
    v11 = sIndexQueue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __105__SPConcreteCoreSpotlightIndexer_willModifySearchableItemsWithIdentifiers_forBundleID_completionHandler___block_invoke;
    v13[3] = &unk_278934028;
    v13[4] = self;
    v16 = v10;
    v14 = v8;
    v15 = v9;
    v12 = _setup_block(v13, 0, 11254);
    dispatch_async(v11, v12);
  }

  else if (v10)
  {
    (*(v10 + 2))(v10, 0);
  }
}

void __105__SPConcreteCoreSpotlightIndexer_willModifySearchableItemsWithIdentifiers_forBundleID_completionHandler___block_invoke(id *a1)
{
  v2 = (a1 + 4);
  [a1[4] readyIndex:1];
  v3 = *v2;
  if (!*(*v2 + 152) || (v3[24] & 1) != 0 || v3[120] == 1)
  {
    v4 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __178__SPConcreteCoreSpotlightIndexer_indexSearchableItems_deleteSearchableItemsWithIdentifiers_clientState_expectedClientState_clientStateName_forBundleID_options_completionHandler___block_invoke_cold_2(v2);
    }

    v5 = a1[7];
    if (v5)
    {
      v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
      v5[2](v5, v6);
    }
  }

  else if ([v3 denyOperationOnAssertedIndex:"willModifySearchableItemsWithIdentifier"])
  {
    v7 = *MEMORY[0x277CC22E8];
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    v9 = a1[7];
    if (v9)
    {
      v12 = v8;
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:v7 code:-1000 userInfo:0];
      v9[2](v9, v10);

      v8 = v12;
    }
  }

  else
  {
    v11 = *(a1[4] + 19);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __105__SPConcreteCoreSpotlightIndexer_willModifySearchableItemsWithIdentifiers_forBundleID_completionHandler___block_invoke_1378;
    v13[3] = &unk_2789347D0;
    v16 = a1[7];
    v14 = a1[5];
    v15 = a1[6];
    SIBackgroundOpBlock(v11, 0, v13);
  }
}

void __105__SPConcreteCoreSpotlightIndexer_willModifySearchableItemsWithIdentifiers_forBundleID_completionHandler___block_invoke_1378(uint64_t a1, uint64_t a2, int a3)
{
  v32 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v22 = a1;
    v7 = *(a1 + 32);
    v8 = [v7 countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      v11 = *MEMORY[0x277CC3208];
      v12 = MEMORY[0x277CBEC38];
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v14 = *(*(&v25 + 1) + 8 * i);
          v29[0] = @"_kMDItemWillModify";
          v29[1] = v11;
          v30[0] = v12;
          v30[1] = v14;
          v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
          [v6 addObject:v15];
        }

        v9 = [v7 countByEnumeratingWithState:&v25 objects:v31 count:16];
      }

      while (v9);
    }

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __105__SPConcreteCoreSpotlightIndexer_willModifySearchableItemsWithIdentifiers_forBundleID_completionHandler___block_invoke_2;
    v23[3] = &unk_278935048;
    v24 = v22[6];
    v16 = [v23 copy];
    v17 = v22[5];
    if (!SISetCSAttributes())
    {
      v18 = v22[6];
      if (v18)
      {
        v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1 userInfo:0];
        v18[2](v18, v19);
      }

      CFRelease(v16);
    }

    goto LABEL_18;
  }

  v4 = *(a1 + 48);
  if (!v4)
  {
LABEL_18:
    v20 = *MEMORY[0x277D85DE8];
    return;
  }

  v21 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
  (*(v4 + 16))(v4);
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __105__SPConcreteCoreSpotlightIndexer_willModifySearchableItemsWithIdentifiers_forBundleID_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_backgroundDeleteItems:(id)a3 bundleID:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [SPConcreteCoreSpotlightIndexer _backgroundDeleteItems:bundleID:completionHandler:];
  }

  if (self->_index && !self->_readOnly)
  {
    if ([(SPConcreteCoreSpotlightIndexer *)self denyOperationOnAssertedIndex:"_backgroundDeleteItems"])
    {
      v13 = *MEMORY[0x277CC22E8];
      v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
      if (v10)
      {
        v14 = [MEMORY[0x277CCA9B8] errorWithDomain:v13 code:-1000 userInfo:0];
        v10[2](v10, v14);
      }
    }

    else
    {
      index = self->_index;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __84__SPConcreteCoreSpotlightIndexer__backgroundDeleteItems_bundleID_completionHandler___block_invoke;
      v16[3] = &unk_2789347D0;
      v19 = v10;
      v17 = v9;
      v18 = v8;
      SIBackgroundOpBlock(index, 0, v16);

      v12 = v19;
    }

    goto LABEL_11;
  }

  if (v10)
  {
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    v10[2](v10, v12);
LABEL_11:
  }
}

void __84__SPConcreteCoreSpotlightIndexer__backgroundDeleteItems_bundleID_completionHandler___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
      (*(v4 + 16))(v4, v11);
    }
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __84__SPConcreteCoreSpotlightIndexer__backgroundDeleteItems_bundleID_completionHandler___block_invoke_2;
    v12[3] = &unk_278935048;
    v13 = *(a1 + 48);
    v7 = [v12 copy];
    v8 = SIDeleteCSAttributes();

    if (!v8)
    {
      v9 = *(a1 + 48);
      if (v9)
      {
        v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1 userInfo:0];
        (*(v9 + 16))(v9, v10);
      }
    }
  }
}

uint64_t __84__SPConcreteCoreSpotlightIndexer__backgroundDeleteItems_bundleID_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)deleteHasTopHitAppShortcutsWithResultsHandler:(id)a3 completionHandler:(id)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CC34A0];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  [v8 setInternal:1];
  [v8 setLowPriority:0];
  v17[0] = *MEMORY[0x277CC2A80];
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  [v8 setFetchAttributes:v9];

  v16 = *MEMORY[0x277CCA1A0];
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  [v8 setProtectionClasses:v10];

  [v8 setBundleIDs:&unk_2846C92F0];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=1", *MEMORY[0x277CC2BA0]];
  v12 = +[SPCoreSpotlightIndexer sharedInstance];
  v13 = [v12 taskForQueryWithQueryString:v11 queryContext:v8 eventHandler:0 resultsHandler:v7 completionHandler:v6];

  v14 = +[SPCoreSpotlightIndexer sharedInstance];
  [v14 startQueryTask:v13];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)finishDeleteBatchForQueryQueue:(id)a3 bundleID:(id)a4 blockTime:(double)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  [(SPConcreteCoreSpotlightIndexer *)self checkAdmission:v9 background:1 didBeginThrottle:&v27 + 1 didEndThrottle:&v27 live:&v26 + 1 slow:&v26 memoryPressure:&v25];
  v10 = v26;
  v11 = logForCSLogCategoryIndex();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (v10 == 1)
  {
    if (v12)
    {
      *buf = 138412546;
      v29 = v9;
      v30 = 2048;
      v31 = a5;
      _os_log_impl(&dword_231A35000, v11, OS_LOG_TYPE_INFO, "deleteItems Query bundleID:%@ delay by %f", buf, 0x16u);
    }

    v13 = dispatch_time(0, (a5 * 1000000000.0));
    indexQueue = self->_indexQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __84__SPConcreteCoreSpotlightIndexer_finishDeleteBatchForQueryQueue_bundleID_blockTime___block_invoke;
    block[3] = &unk_2789356F0;
    v15 = v8;
    v24 = HIBYTE(v27);
    v21 = v15;
    v22 = self;
    v23 = v9;
    dispatch_after(v13, indexQueue, block);

    v16 = v21;
LABEL_10:

    goto LABEL_11;
  }

  if (v12)
  {
    *buf = 138412290;
    v29 = v9;
    _os_log_impl(&dword_231A35000, v11, OS_LOG_TYPE_INFO, "deleteItems Query bundleID:%@ resume immediately", buf, 0xCu);
  }

  [v8 resumeResults];
  if (v27 == 1)
  {
    v17 = [(SPConcreteCoreSpotlightIndexer *)self owner];
    v16 = [v17 extensionDelegate];

    if (v16)
    {
      v18 = [objc_alloc(MEMORY[0x277CC3420]) initWithJobType:5 jobOptions:0];
      [v16 indexRequestsPerformJob:v18 forBundle:v9 completionHandler:0];
    }

    goto LABEL_10;
  }

LABEL_11:

  v19 = *MEMORY[0x277D85DE8];
}

void __84__SPConcreteCoreSpotlightIndexer_finishDeleteBatchForQueryQueue_bundleID_blockTime___block_invoke(uint64_t a1)
{
  [*(a1 + 32) resumeResults];
  if (*(a1 + 56) == 1)
  {
    v2 = [*(a1 + 40) owner];
    v4 = [v2 extensionDelegate];

    if (v4)
    {
      v3 = [objc_alloc(MEMORY[0x277CC3420]) initWithJobType:4 jobOptions:0];
      [v4 indexRequestsPerformJob:v3 forBundle:*(a1 + 48) completionHandler:0];
    }
  }
}

- (void)deleteItemsForQuery:(id)a3 bundleID:(id)a4 fromClient:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [SPConcreteCoreSpotlightIndexer deleteItemsForQuery:bundleID:fromClient:completionHandler:];
  }

  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__0;
  v49 = __Block_byref_object_dispose__0;
  v50 = 0;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x2020000000;
  v44 = 0;
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x2020000000;
  v42[3] = 0;
  index = self->_index;
  if (index)
  {
    if (!self->_readOnly)
    {
      if ([(SPConcreteCoreSpotlightIndexer *)self denyOperationOnAssertedIndex:"deleteItemsForQuery"])
      {
        v16 = *MEMORY[0x277CC22E8];
        v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
        if (!v13)
        {
LABEL_18:

          goto LABEL_19;
        }

        v18 = [MEMORY[0x277CCA9B8] errorWithDomain:v16 code:-1000 userInfo:0];
        v13[2](v13, v18, 0);
      }

      else
      {
        v26 = dispatch_group_create();
        dispatch_group_enter(v26);
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __92__SPConcreteCoreSpotlightIndexer_deleteItemsForQuery_bundleID_fromClient_completionHandler___block_invoke;
        v33[3] = &unk_2789357E0;
        v39 = &v45;
        v17 = v26;
        v34 = v17;
        v35 = self;
        v36 = v12;
        v37 = v11;
        v38 = v10;
        v40 = v42;
        SIBackgroundOpBlock(index, 0, v33);
        v27 = dispatch_get_global_queue(9, 2uLL);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __92__SPConcreteCoreSpotlightIndexer_deleteItemsForQuery_bundleID_fromClient_completionHandler___block_invoke_7;
        block[3] = &unk_278935808;
        v30 = &v45;
        v31 = v43;
        v29 = v13;
        v32 = v42;
        dispatch_group_notify(v17, v27, block);

        v18 = v34;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v19 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [SPConcreteCoreSpotlightIndexer deleteItemsForQuery:bundleID:fromClient:completionHandler:];
    }

    if (!self->_readOnly)
    {
      goto LABEL_14;
    }
  }

  v20 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231A35000, v20, OS_LOG_TYPE_DEFAULT, "Cannot delete in deleteItemsForQuery because the index is read-only", buf, 2u);
  }

LABEL_14:
  v21 = [MEMORY[0x277CCAA00] defaultManager];
  v22 = [(SPConcreteCoreSpotlightIndexer *)self _indexPath];
  v23 = [v21 fileExistsAtPath:v22 isDirectory:0];

  if (v23)
  {
    v24 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    v25 = v46[5];
    v46[5] = v24;

    v13[2](v13, v46[5], 0);
  }

LABEL_19:
  _Block_object_dispose(v42, 8);
  _Block_object_dispose(v43, 8);
  _Block_object_dispose(&v45, 8);
}

void __92__SPConcreteCoreSpotlightIndexer_deleteItemsForQuery_bundleID_fromClient_completionHandler___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v40[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    v5 = *(*(a1 + 72) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = *(a1 + 32);
    v8 = *MEMORY[0x277D85DE8];

    dispatch_group_leave(v7);
  }

  else
  {
    v10 = *(*(a1 + 40) + 152);
    [*(a1 + 48) UTF8String];
    [*(a1 + 56) UTF8String];
    v31 = [*(a1 + 64) UTF8String];
    SILogActivity();
    v11 = [SPQueryResultsQueue alloc];
    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"com.apple.searchd.internal.deletes.%@.%d", *(a1 + 56), atomic_fetch_add(kSPReindexAllCompletedBundleIDs_block_invoke_5_queueNum, 1u), v31];
    v13 = [*(a1 + 40) indexQueue];
    v14 = [(SPQueryResultsQueue *)v11 initWithIdentifier:v12 dispatchQueue:v13];

    [(SPQueryResultsQueue *)v14 setDisableResultStreaming:1];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __92__SPConcreteCoreSpotlightIndexer_deleteItemsForQuery_bundleID_fromClient_completionHandler___block_invoke_2;
    v33[3] = &unk_2789357B8;
    v39 = a2;
    v32 = *(a1 + 32);
    v15 = v32.i64[0];
    v34 = vextq_s8(v32, v32, 8uLL);
    v16 = *(a1 + 56);
    v17 = *(a1 + 80);
    v35 = v16;
    v37 = v17;
    v18 = v14;
    v19 = *(a1 + 72);
    v36 = v18;
    v38 = v19;
    v20 = MEMORY[0x2383760E0](v33);
    v21 = *(a1 + 40);
    v23 = *(a1 + 56);
    v22 = *(a1 + 64);
    if (v23)
    {
      v40[0] = *(a1 + 56);
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
    }

    else
    {
      v24 = 0;
    }

    v25 = MEMORY[0x2383760E0](v20);
    v26 = [v21 _startInternalQueryWithIndex:a2 query:v22 fetchAttributes:MEMORY[0x277CBEBF8] forBundleIds:v24 resultsHandler:v25 resultQueue:v18];

    if (v23)
    {
    }

    if ((v26 & 1) == 0)
    {
      v27 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
      v28 = *(*(a1 + 72) + 8);
      v29 = *(v28 + 40);
      *(v28 + 40) = v27;

      dispatch_group_leave(*(a1 + 32));
    }

    v30 = *MEMORY[0x277D85DE8];
  }
}

void __92__SPConcreteCoreSpotlightIndexer_deleteItemsForQuery_bundleID_fromClient_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v8 = a2;
  if (a3 == 1)
  {
    [*(a1 + 56) resumeResults];
    if ([*(a1 + 32) index] != *(a1 + 80))
    {
      v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
      v19 = *(*(a1 + 72) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;
    }

    dispatch_group_leave(*(a1 + 40));
  }

  else if (!a3 && [*(a1 + 32) index] == *(a1 + 80))
  {
    dispatch_group_enter(*(a1 + 40));
    CFRetain(a5);
    v9 = *(a1 + 80);
    v10 = qos_class_self();
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __92__SPConcreteCoreSpotlightIndexer_deleteItemsForQuery_bundleID_fromClient_completionHandler___block_invoke_3;
    v22[3] = &unk_278935790;
    v26 = a5;
    v11 = *(a1 + 48);
    v12 = *(a1 + 80);
    v13 = *(a1 + 56);
    v25 = *(a1 + 64);
    v27 = v12;
    *&v14 = v11;
    *(&v14 + 1) = *(a1 + 32);
    v21 = v14;
    v15 = v13;
    v16 = *(a1 + 40);
    *&v17 = v15;
    *(&v17 + 1) = v16;
    v23 = v21;
    v24 = v17;
    SIBackgroundOpBlock(v9, v10, v22);
  }
}

void __92__SPConcreteCoreSpotlightIndexer_deleteItemsForQuery_bundleID_fromClient_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, int a3)
{
  if (!a2 || a3)
  {
    [*(a1 + 48) resumeResults];
  }

  else
  {
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x2020000000;
    v20[3] = 0;
    v5 = *(a1 + 72);
    _MDStoreOIDArrayGetVectorCount();
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __92__SPConcreteCoreSpotlightIndexer_deleteItemsForQuery_bundleID_fromClient_completionHandler___block_invoke_4;
    v15 = &unk_278935740;
    v19 = a2;
    v16 = *(a1 + 32);
    v17 = v20;
    v18 = *(a1 + 64);
    _MDStoreOIDArrayApplyBlock();
    v6 = *(a1 + 80);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __92__SPConcreteCoreSpotlightIndexer_deleteItemsForQuery_bundleID_fromClient_completionHandler___block_invoke_6;
    v8[3] = &unk_278935768;
    v7 = *(a1 + 48);
    v8[4] = *(a1 + 40);
    v9 = v7;
    v10 = *(a1 + 32);
    v11 = v20;
    SISynchedOpWithBlock(v6, 2, v8);

    _Block_object_dispose(v20, 8);
  }

  CFRelease(*(a1 + 72));
  dispatch_group_leave(*(a1 + 56));
}

uint64_t __92__SPConcreteCoreSpotlightIndexer_deleteItemsForQuery_bundleID_fromClient_completionHandler___block_invoke_4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = a1[7];
  v7 = (a5 - 1);
  v8 = a1[4];
  v10 = a1[5];
  result = SIDeleteCSItems();
  *(*(a1[6] + 8) + 24) += v7;
  return result;
}

double __92__SPConcreteCoreSpotlightIndexer_deleteItemsForQuery_bundleID_fromClient_completionHandler___block_invoke_5(uint64_t a1, double a2)
{
  v2 = *(*(a1 + 32) + 8);
  result = *(v2 + 24) + a2;
  *(v2 + 24) = result;
  return result;
}

uint64_t __92__SPConcreteCoreSpotlightIndexer_deleteItemsForQuery_bundleID_fromClient_completionHandler___block_invoke_7(void *a1)
{
  if (!*(*(a1[5] + 8) + 40) && *(*(a1[6] + 8) + 24) == 1)
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    v3 = *(a1[5] + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  result = a1[4];
  if (result)
  {
    v6 = *(*(a1[5] + 8) + 40);
    v7 = *(*(a1[7] + 8) + 24);
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

- (void)deleteItemsForEnumerator:(id)a3 traceID:(int64_t)a4 bundleID:(id)a5 fromClient:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (self->_index)
  {
    if (!self->_readOnly)
    {
      v16 = [v12 nextObject];
      if (v16)
      {
        v23 = MEMORY[0x277D85DD0];
        v24 = 3221225472;
        v25 = __105__SPConcreteCoreSpotlightIndexer_deleteItemsForEnumerator_traceID_bundleID_fromClient_completionHandler___block_invoke;
        v26 = &unk_278935858;
        v31 = v15;
        v27 = self;
        v28 = v12;
        v32 = a4;
        v17 = v13;
        v29 = v17;
        v18 = v14;
        v30 = v18;
        v19 = MEMORY[0x2383760E0](&v23);
        [(SPConcreteCoreSpotlightIndexer *)self deleteItemsForQuery:v16 bundleID:v17 fromClient:v18 completionHandler:v19, v23, v24, v25, v26, v27];
      }

      else
      {
        v22 = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
        SDTraceAdd(3, @"deleteItemsForEnumerator complete", a4, v22, v13, 0.0);

        if (v15)
        {
          (*(v15 + 2))(v15, 0);
        }
      }

      goto LABEL_13;
    }

    goto LABEL_8;
  }

  v20 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231A35000, v20, OS_LOG_TYPE_DEFAULT, "Cannot delete in deleteItemsForEnumerator because index is null", buf, 2u);
  }

  if (self->_readOnly)
  {
LABEL_8:
    v21 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231A35000, v21, OS_LOG_TYPE_DEFAULT, "Cannot delete in deleteItemsForEnumerator because index is read-only", buf, 2u);
    }
  }

  if (v15)
  {
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    (*(v15 + 2))(v15, v16);
LABEL_13:
  }
}

void __105__SPConcreteCoreSpotlightIndexer_deleteItemsForEnumerator_traceID_bundleID_fromClient_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 64);
    if (v4)
    {
      (*(v4 + 16))(v4, v3);
    }
  }

  else
  {
    v5 = sIndexQueue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __105__SPConcreteCoreSpotlightIndexer_deleteItemsForEnumerator_traceID_bundleID_fromClient_completionHandler___block_invoke_2;
    v12[3] = &unk_278935830;
    v11 = *(a1 + 32);
    v6 = *(&v11 + 1);
    v16 = *(a1 + 72);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    *&v9 = v7;
    *(&v9 + 1) = v8;
    v13 = v11;
    v14 = v9;
    v15 = *(a1 + 64);
    v10 = _setup_block(v12, 0, 11468);
    dispatch_async(v5, v10);
  }
}

- (void)deleteSearchableItemsWithDomainIdentifiers:(id)a3 forBundleID:(id)a4 fromClient:(id)a5 reason:(int64_t)a6 completionHandler:(id)a7
{
  v36 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    dataclass = self->_dataclass;
    *buf = 138413058;
    v29 = v13;
    v30 = 2112;
    v31 = dataclass;
    v32 = 2048;
    v33 = [v12 count];
    v34 = 2048;
    v35 = a6;
    _os_log_impl(&dword_231A35000, v16, OS_LOG_TYPE_DEFAULT, "deleteSearchableItemsWithDomainIdentifiers, bundleID:%@, protectionClass:%@, domainIdentifiers:%lu, reason:%lu", buf, 0x2Au);
  }

  v18 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [SPConcreteCoreSpotlightIndexer deleteSearchableItemsWithDomainIdentifiers:forBundleID:fromClient:reason:completionHandler:];
  }

  if ([v13 length])
  {
    if ([v12 count])
    {
      v19 = sIndexQueue;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke;
      v23[3] = &unk_278935970;
      v23[4] = self;
      v27 = v15;
      v24 = v12;
      v25 = v13;
      v26 = v14;
      v20 = _setup_block(v23, 0, 11614);
      dispatch_async(v19, v20);
    }

    else if (v15)
    {
      (*(v15 + 2))(v15, 0);
    }
  }

  else if (v15)
  {
    v21 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1 userInfo:0];
    (*(v15 + 2))(v15, v21);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke(id *a1)
{
  [a1[4] readyIndex:0];
  v2 = a1[4];
  if (*(v2 + 19) && *(v2 + 24) != 1)
  {
    objc_initWeak(&location, v2);
    v7 = *(a1[4] + 19);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_2;
    v21[3] = &unk_2789351D8;
    v22 = a1[5];
    v23 = a1[6];
    SIBackgroundOpBlock(v7, 9, v21);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_3;
    v16[3] = &unk_278935948;
    v15 = a1[4];
    v8 = a1[6];
    v9 = a1[5];
    v10 = a1[7];
    *&v11 = v9;
    *(&v11 + 1) = v10;
    *&v12 = v15;
    *(&v12 + 1) = v8;
    v17 = v12;
    v18 = v11;
    v19 = a1[8];
    v20[1] = v7;
    objc_copyWeak(v20, &location);
    v13 = MEMORY[0x2383760E0](v16);
    v13[2]();

    objc_destroyWeak(v20);
    objc_destroyWeak(&location);
  }

  else if (a1[8])
  {
    v3 = [MEMORY[0x277CCAA00] defaultManager];
    v4 = [a1[4] _indexPath];
    v5 = [v3 fileExistsAtPath:v4 isDirectory:0];

    v6 = 0;
    if (v5)
    {
      v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    }

    v14 = v6;
    (*(a1[8] + 2))();
  }
}

void __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  v17 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = *(a1 + 32);
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          [v9 lengthOfBytesUsingEncoding:{4, v12}];
          v10 = *(a1 + 40);
          [v9 UTF8String];
          SILogBulkDeleteEvent();
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_3(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v21 = SDTraceAdd(3, @"DeleteDomainIdentifiers start", -1, *(*(a1 + 32) + 192), *(a1 + 40), 0.0);
  v22 = a1;
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v25 = v2;
  v26 = v3;
  v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [v26 count];
  if (v4 >= 1)
  {
    v5 = 0;
    v23 = *MEMORY[0x277CC2770];
    v24 = v4;
    do
    {
      v28 = v5;
      v6 = [v26 subarrayWithRange:?];
      v29 = v25;
      v30 = v6;
      v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
      if ([v30 count])
      {
        objc_msgSend(v7, "appendFormat:", @"%@ = %@ && FieldMatch(%@, "), CFSTR("_kMDItemBundleID"), v29, v23;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v8 = v30;
        v9 = [v8 countByEnumeratingWithState:&v36 objects:v40 count:16];
        if (v9)
        {
          v10 = *v37;
          v11 = 1;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v37 != v10)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v36 + 1) + 8 * i);
              if ((v11 & 1) == 0)
              {
                [v7 appendString:{@", "}];
              }

              [v7 appendFormat:@"%@", v13];
              [v7 appendFormat:@", %@.*", v13];
              v11 = 0;
            }

            v9 = [v8 countByEnumeratingWithState:&v36 objects:v40 count:16];
            v11 = 0;
          }

          while (v9);
        }

        [v7 appendString:@""]);
      }

      [v27 addObject:v7];
      v5 = v28 + 64;
    }

    while (v28 + 64 < v24);
  }

  v14 = [v27 objectEnumerator];
  v16 = *(v22 + 32);
  v15 = *(v22 + 40);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_4;
  v31[3] = &unk_278935920;
  v17 = *(v22 + 56);
  v34 = *(v22 + 64);
  v18 = *(v22 + 40);
  v19 = *(v22 + 80);
  v32 = v18;
  v35[1] = v19;
  objc_copyWeak(v35, (v22 + 72));
  v33 = *(v22 + 32);
  [v16 deleteItemsForEnumerator:v14 traceID:v21 bundleID:v15 fromClient:v17 completionHandler:v31];
  objc_destroyWeak(v35);

  v20 = *MEMORY[0x277D85DE8];
}

void __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
LABEL_2:
    v4 = v3;
    goto LABEL_7;
  }

  if ([*(a1 + 32) isEqualToString:@"com.apple.shortcuts"])
  {
    v5 = *(a1 + 64);
    if (!v5)
    {
      v7 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_4_cold_1();
      }

      v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
      goto LABEL_2;
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_1402;
    v8[3] = &unk_2789358F8;
    objc_copyWeak(&v9, (a1 + 56));
    v8[4] = *(a1 + 40);
    SIBackgroundOpBlock(v5, 0, v8);
    objc_destroyWeak(&v9);
  }

  v4 = 0;
LABEL_7:
  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, v4);
  }
}

void __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_1402(uint64_t a1, uint64_t a2, int a3)
{
  v30[1] = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = [WeakRetained index];

    if (v6 == a2)
    {
      v7 = [MEMORY[0x277CBEB58] set];
      v8 = [MEMORY[0x277CBEB58] set];
      v9 = objc_alloc_init(MEMORY[0x277CC34A0]);
      [v9 setInternal:1];
      [v9 setLowPriority:0];
      v30[0] = *MEMORY[0x277CC3038];
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
      [v9 setFetchAttributes:v10];

      v29 = *MEMORY[0x277CCA1A0];
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
      [v9 setProtectionClasses:v11];

      [v9 setBundleIDs:&unk_2846C9308];
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=1", *MEMORY[0x277CC30B0]];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_2_1406;
      v27[3] = &unk_278935880;
      v13 = v8;
      v28 = v13;
      v14 = MEMORY[0x2383760E0](v27);
      v15 = +[SPCoreSpotlightIndexer sharedInstance];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_4_1408;
      v23[3] = &unk_2789358D0;
      v24 = v7;
      v25 = v13;
      v26 = *(a1 + 32);
      v16 = v13;
      v17 = v7;
      v18 = [v15 taskForQueryWithQueryString:v12 queryContext:v9 eventHandler:0 resultsHandler:v14 completionHandler:v23];

      v19 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_231A35000, v19, OS_LOG_TYPE_DEFAULT, "[TopHitAppShortcuts] deleteSearchableItems start", buf, 2u);
      }

      v20 = +[SPCoreSpotlightIndexer sharedInstance];
      [v20 startQueryTask:v18];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_2_1406(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v10 = v5;
    v11 = v6;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_3_1407;
    v8[3] = &unk_278934A00;
    v9 = *(a1 + 32);
    [a5 enumerateQueryResults:1 stringCache:0 usingBlock:v8];
  }
}

uint64_t __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_3_1407(uint64_t result, void *a2)
{
  if (*a2)
  {
    return [*(result + 32) addObject:?];
  }

  return result;
}

void __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_4_1408(id *a1)
{
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_5;
  v13[3] = &unk_278935880;
  v14 = a1[4];
  v2 = MEMORY[0x2383760E0](v13);
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_7;
  v9 = &unk_2789358D0;
  v10 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v11 = v3;
  v12 = v4;
  v5 = MEMORY[0x2383760E0](&v6);
  [a1[6] deleteHasTopHitAppShortcutsWithResultsHandler:v2 completionHandler:{v5, v6, v7, v8, v9}];
}

void __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_5(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v10 = v5;
    v11 = v6;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_6;
    v8[3] = &unk_278934A00;
    v9 = *(a1 + 32);
    [a5 enumerateQueryResults:1 stringCache:0 usingBlock:v8];
  }
}

uint64_t __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_6(uint64_t result, void *a2)
{
  if (*a2)
  {
    return [*(result + 32) addObject:?];
  }

  return result;
}

void __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_7(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_8;
  v6[3] = &unk_2789358A8;
  v3 = *(a1 + 32);
  v7 = *(a1 + 40);
  v4 = v2;
  v8 = v4;
  [v3 enumerateObjectsUsingBlock:v6];
  if (v4 && [v4 count])
  {
    v5 = [*(a1 + 48) owner];
    [v5 indexSearchableItems:v4 deleteSearchableItemsWithIdentifiers:0 clientState:0 protectionClass:*MEMORY[0x277CCA1A0] forBundleID:@"com.apple.application" options:0 completionHandler:&__block_literal_global_1412];
  }
}

void __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_8(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([*(a1 + 32) containsObject:v3] & 1) == 0)
  {
    v4 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v12 = v3;
      _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_INFO, "[TopHitAppShortcuts] void flag for %@", buf, 0xCu);
    }

    v9 = *MEMORY[0x277CC2BA0];
    v10 = *MEMORY[0x277CBEEE8];
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v6 = [objc_alloc(MEMORY[0x277CC34B8]) initWithAttributes:v5];
    v7 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:v3 domainIdentifier:0 attributeSet:v6];
    [v7 setBundleID:@"com.apple.application"];
    [v7 setIsUpdate:1];
    [*(a1 + 40) addObject:v7];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_1410(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = logForCSLogCategoryDefault();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_1410_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_DEFAULT, "[TopHitAppShortcuts] deleteSearchableItems complete", v5, 2u);
  }
}

- (void)deleteSearchableItemsWithPersonaIds:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SPConcreteCoreSpotlightIndexer deleteSearchableItemsWithPersonaIds:? completionHandler:?];
  }

  v9 = sIndexQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __88__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithPersonaIds_completionHandler___block_invoke;
  v13[3] = &unk_2789356A0;
  v14 = v6;
  v15 = v7;
  v13[4] = self;
  v10 = v6;
  v11 = v7;
  v12 = _setup_block(v13, 0, 11700);
  dispatch_async(v9, v12);
}

void __88__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithPersonaIds_completionHandler___block_invoke(id *a1)
{
  [a1[4] readyIndex:0];
  v2 = a1[4];
  v3 = v2[19];
  if (v3 && *(v2 + 24) != 1)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __88__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithPersonaIds_completionHandler___block_invoke_2;
    v20[3] = &unk_278935248;
    v21 = a1[5];
    SIBackgroundOpBlock(v3, 9, v20);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __88__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithPersonaIds_completionHandler___block_invoke_3;
    v17[3] = &unk_278934F08;
    v8 = a1[5];
    v17[4] = a1[4];
    v18 = v8;
    v19 = a1[6];
    v9 = MEMORY[0x2383760E0](v17);
    v10 = *(a1[4] + 19);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __88__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithPersonaIds_completionHandler___block_invoke_4;
    v14[3] = &unk_2789359C0;
    v11 = a1[6];
    v14[4] = a1[4];
    v15 = v11;
    v16 = v9;
    v12 = v9;
    SISynchedOpWithBlock(v10, 2, v14);
  }

  else if (a1[6])
  {
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    v5 = [a1[4] _indexPath];
    v6 = [v4 fileExistsAtPath:v5 isDirectory:0];

    v7 = 0;
    if (v6)
    {
      v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    }

    v13 = v7;
    (*(a1[6] + 2))();
  }
}

void __88__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithPersonaIds_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v10 + 1) + 8 * i);
          [v8 lengthOfBytesUsingEncoding:{4, v10}];
          [v8 UTF8String];
          SILogBulkDeleteEvent();
        }

        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __88__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithPersonaIds_completionHandler___block_invoke_3(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v17 = SDTraceAdd(3, @"DeletePersonas start", -1, *(*(a1 + 32) + 192), 0, 0.0);
  v18 = a1;
  v20 = *(a1 + 40);
  v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v2 = [v20 count];
  if (v2 >= 1)
  {
    v3 = v2;
    v4 = 0;
    v19 = v2;
    do
    {
      if (v3 - v4 >= 64)
      {
        v5 = 64;
      }

      else
      {
        v5 = v3 - v4;
      }

      v6 = [v20 subarrayWithRange:{v4, v5}];
      v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
      if ([v6 count])
      {
        v23 = v4;
        objc_msgSend(v7, "appendFormat:", @"FieldMatch(_kMDItemPersonaID, ");
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v22 = v6;
        v8 = v6;
        v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v25;
          v12 = 1;
          do
          {
            v13 = 0;
            do
            {
              if (*v25 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v14 = *(*(&v24 + 1) + 8 * v13);
              if ((v12 & 1) == 0)
              {
                [v7 appendString:{@", "}];
              }

              [v7 appendFormat:@"%@", v14];
              [v7 appendFormat:@", %@.*", v14];
              v12 = 0;
              ++v13;
            }

            while (v10 != v13);
            v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
            v12 = 0;
          }

          while (v10);
        }

        [v7 appendString:@""]);
        v3 = v19;
        v6 = v22;
        v4 = v23;
      }

      [v21 addObject:v7];
      v4 += 64;
    }

    while (v4 < v3);
  }

  v15 = [v21 objectEnumerator];
  [*(v18 + 32) deleteItemsForEnumerator:v15 traceID:v17 bundleID:0 fromClient:0 completionHandler:*(v18 + 48)];

  v16 = *MEMORY[0x277D85DE8];
}

void __88__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithPersonaIds_completionHandler___block_invoke_4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sIndexQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __88__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithPersonaIds_completionHandler___block_invoke_5;
  v7[3] = &unk_278935998;
  v10 = a3;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v9 = *(a1 + 48);
  v6 = _setup_block(v7, 0, 11698);
  dispatch_async(v4, v6);
}

void __88__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithPersonaIds_completionHandler___block_invoke_5(uint64_t a1)
{
  if (*(a1 + 56) || ([*(a1 + 32) readyIndex:0], v3 = *(a1 + 32), !*(v3 + 152)) || *(v3 + 24) == 1)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
      (*(v2 + 16))(v2, v5);
    }
  }

  else
  {
    v4 = *(*(a1 + 48) + 16);

    v4();
  }
}

- (void)deleteSearchableItemsWithFileProviderDomains:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SPConcreteCoreSpotlightIndexer deleteSearchableItemsWithFileProviderDomains:? completionHandler:?];
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __97__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithFileProviderDomains_completionHandler___block_invoke;
  v14[3] = &unk_2789356A0;
  v15 = v6;
  v16 = v7;
  v14[4] = self;
  v9 = v6;
  v10 = v7;
  v11 = MEMORY[0x2383760E0](v14);
  v12 = sIndexQueue;
  v13 = _setup_block(v11, 0, 11810);
  dispatch_async(v12, v13);
}

void __97__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithFileProviderDomains_completionHandler___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) readyIndex:0];
  v2 = *(a1 + 32);
  if (!*(v2 + 152) || (*(v2 + 24) & 1) != 0 || *(v2 + 120) == 1)
  {
    v3 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(v4 + 152);
      v6 = *(v4 + 24);
      LODWORD(v4) = *(v4 + 120);
      *buf = 134218496;
      v26 = v5;
      v27 = 1024;
      v28 = v6;
      v29 = 1024;
      v30 = v4;
      _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_DEFAULT, "deleteSearchableItemsWithFileProviderDomains failed: index:%p suspended:%d readOnly:%d", buf, 0x18u);
    }

    if (*(a1 + 48))
    {
      v7 = [MEMORY[0x277CCAA00] defaultManager];
      v8 = [*(a1 + 32) _indexPath];
      v9 = [v7 fileExistsAtPath:v8 isDirectory:0];

      v10 = 0;
      if (v9)
      {
        v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
      }

      (*(*(a1 + 48) + 16))();
    }

    goto LABEL_10;
  }

  if (![v2 denyOperationOnAssertedIndex:"deleteSearchableItemsWithFileProviderDomains"])
  {
    v17 = *(*(a1 + 32) + 152);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __97__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithFileProviderDomains_completionHandler___block_invoke_1417;
    v22[3] = &unk_2789347D0;
    v18 = *(a1 + 48);
    v19 = *(a1 + 32);
    v20 = *(a1 + 40);
    v24 = v18;
    v22[4] = v19;
    v23 = v20;
    SISynchedOpWithBlock(v17, 2, v22);

LABEL_10:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  v12 = *MEMORY[0x277CC22E8];
  v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
  v14 = *(a1 + 48);
  if (v14)
  {
    v21 = v13;
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:v12 code:-1000 userInfo:0];
    (*(v14 + 16))(v14, v15);

    v13 = v21;
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __97__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithFileProviderDomains_completionHandler___block_invoke_1417(uint64_t a1, uint64_t a2, char a3)
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __97__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithFileProviderDomains_completionHandler___block_invoke_2;
  v10[3] = &unk_278935A38;
  v13 = a3;
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v12 = v4;
  v10[4] = v5;
  v11 = v6;
  v7 = MEMORY[0x2383760E0](v10);
  v8 = sIndexQueue;
  v9 = _setup_block(v7, 0, 11807);
  dispatch_async(v8, v9);
}

void __97__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithFileProviderDomains_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = a1;
  v46 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 56))
  {
    [*(a1 + 32) readyIndex:0];
    v4 = *(v1 + 32);
    if (*(v4 + 152))
    {
      if (*(v4 + 24) != 1)
      {
        v27 = SDTraceAdd(3, @"DeleteFileProviderDomains start", -1, *(v4 + 192), 0, 0.0);
        v31 = objc_opt_new();
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        obj = *(v1 + 40);
        v5 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
        if (v5)
        {
          v6 = v5;
          v29 = *v42;
          v7 = *MEMORY[0x277CC2500];
          v8 = *MEMORY[0x277CC2B38];
          v9 = *MEMORY[0x277CC2770];
          do
          {
            for (i = 0; i != v6; ++i)
            {
              if (*v42 != v29)
              {
                objc_enumerationMutation(obj);
              }

              v11 = *(*(&v41 + 1) + 8 * i);
              v12 = [v11 objectAtIndexedSubscript:0];
              v13 = [v11 objectAtIndexedSubscript:1];
              v14 = [v11 objectAtIndexedSubscript:2];
              v15 = [v14 lengthOfBytesUsingEncoding:4];
              v16 = v1;
              v17 = *(*(v1 + 32) + 152);
              v36[0] = MEMORY[0x277D85DD0];
              v36[1] = 3221225472;
              v36[2] = __97__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithFileProviderDomains_completionHandler___block_invoke_3;
              v36[3] = &unk_2789359E8;
              v37 = v12;
              v38 = v13;
              v40 = v15;
              v39 = v14;
              v18 = v14;
              v19 = v13;
              v20 = v12;
              SIBackgroundOpBlock(v17, 9, v36);
              v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@==\"%@\"", v7, v20, v8, v19, v9, v18];
              [v31 addObject:v21];

              v1 = v16;
            }

            v6 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
          }

          while (v6);
        }

        v22 = [v31 objectEnumerator];
        v23 = *(v1 + 32);
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __97__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithFileProviderDomains_completionHandler___block_invoke_4;
        v32[3] = &unk_278935A10;
        v35 = *(v1 + 48);
        v24 = *(v1 + 40);
        v25 = *(v1 + 32);
        v33 = v24;
        v34 = v25;
        [v23 deleteItemsForEnumerator:v22 traceID:v27 bundleID:0 fromClient:@"com.apple.searchd" completionHandler:v32];

        goto LABEL_16;
      }
    }
  }

  v2 = *(v1 + 48);
  if (!v2)
  {
LABEL_16:
    v26 = *MEMORY[0x277D85DE8];
    return;
  }

  v30 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
  (*(v2 + 16))(v2);
  v3 = *MEMORY[0x277D85DE8];
}

uint64_t __97__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithFileProviderDomains_completionHandler___block_invoke_3(uint64_t result, uint64_t a2, int a3)
{
  if (!a3)
  {
    v4 = *(result + 32);
    v5 = *(result + 40);
    v6 = *(result + 56);
    [*(result + 48) UTF8String];

    return SILogBulkDeleteEvent();
  }

  return result;
}

void __97__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithFileProviderDomains_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!v3)
  {
    v27 = 0;
    v31 = objc_opt_new();
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = *(a1 + 32);
    v5 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v5)
    {
      v6 = v5;
      v30 = *v36;
      v29 = *MEMORY[0x277CBEEE8];
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v36 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v35 + 1) + 8 * i);
          v9 = [v8 objectAtIndexedSubscript:{0, v27}];
          v10 = [v8 objectAtIndexedSubscript:1];
          v11 = [v8 objectAtIndexedSubscript:2];
          v12 = [@"com.apple.FileProvider" stringByAppendingPathComponent:v10];
          v13 = [v12 stringByAppendingPathComponent:v11];

          v14 = *(a1 + 40);
          v15 = [objc_opt_class() _stateInfoAttributeNameWithClientStateName:v13];
          v16 = objc_alloc(MEMORY[0x277CC34B8]);
          v39 = v15;
          v40 = v29;
          v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
          v18 = [v16 initWithAttributes:v17];

          v19 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:v9 domainIdentifier:0 attributeSet:v18];
          [v19 setIsUpdate:1];
          [v31 addObject:v19];
        }

        v6 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v6);
    }

    v20 = *(*(a1 + 40) + 152);
    if (v20)
    {
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __97__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithFileProviderDomains_completionHandler___block_invoke_1427;
      v32[3] = &unk_2789347D0;
      v21 = *(a1 + 48);
      v22 = *(a1 + 40);
      v34 = v21;
      v32[4] = v22;
      v33 = v31;
      SIBackgroundOpBlock(v20, 0, v32);

      v23 = v34;
    }

    else
    {
      v24 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        __97__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithFileProviderDomains_completionHandler___block_invoke_4_cold_1();
      }

      v25 = *(a1 + 48);
      if (!v25)
      {
        goto LABEL_18;
      }

      v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
      (*(v25 + 16))(v25, v23);
    }

LABEL_18:
    v3 = v27;
    goto LABEL_19;
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

LABEL_19:

  v26 = *MEMORY[0x277D85DE8];
}

void __97__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithFileProviderDomains_completionHandler___block_invoke_1427(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = *(a1 + 48);
    if (v3)
    {
      v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
      (*(v3 + 16))(v3, v6);
    }
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __97__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithFileProviderDomains_completionHandler___block_invoke_2_1428;
    v7[3] = &unk_278935048;
    v8 = *(a1 + 48);
    [v4 indexSearchableItems:v5 deleteSearchableItemsWithIdentifiers:0 clientState:0 forBundleID:@"com.apple.searchd" options:0 completionHandler:v7];
  }
}

uint64_t __97__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithFileProviderDomains_completionHandler___block_invoke_2_1428(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)deleteAllUserActivities:(id)a3 fromClient:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [SPConcreteCoreSpotlightIndexer deleteAllUserActivities:v8 fromClient:self completionHandler:?];
  }

  if ([v8 length])
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __87__SPConcreteCoreSpotlightIndexer_deleteAllUserActivities_fromClient_completionHandler___block_invoke;
    v16[3] = &unk_278934028;
    v16[4] = self;
    v19 = v10;
    v17 = v9;
    v18 = v8;
    v12 = MEMORY[0x2383760E0](v16);
    v13 = sIndexQueue;
    v14 = _setup_block(v12, 0, 11852);
    dispatch_async(v13, v14);
  }

  else if (v10)
  {
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1 userInfo:0];
    (*(v10 + 2))(v10, v15);
  }
}

void __87__SPConcreteCoreSpotlightIndexer_deleteAllUserActivities_fromClient_completionHandler___block_invoke(id *a1)
{
  [a1[4] readyIndex:0];
  v2 = a1[4];
  if (v2[19] && *(v2 + 24) != 1)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __87__SPConcreteCoreSpotlightIndexer_deleteAllUserActivities_fromClient_completionHandler___block_invoke_2;
    v9[3] = &unk_278934EB8;
    v9[4] = v2;
    v10 = a1[5];
    v11 = a1[6];
    v12 = a1[7];
    v7 = MEMORY[0x2383760E0](v9);
    v7[2]();
  }

  else if (a1[7])
  {
    v3 = [MEMORY[0x277CCAA00] defaultManager];
    v4 = [a1[4] _indexPath];
    v5 = [v3 fileExistsAtPath:v4 isDirectory:0];

    v6 = 0;
    if (v5)
    {
      v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    }

    v8 = v6;
    (*(a1[7] + 2))();
  }
}

void __87__SPConcreteCoreSpotlightIndexer_deleteAllUserActivities_fromClient_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 152);
  v4 = [*(v2 + 192) UTF8String];
  v5 = [*(a1 + 40) UTF8String];
  v12 = [*(a1 + 48) UTF8String];
  v11 = v4;
  SILogActivity();
  v6 = SDTraceAdd(3, @"deleteAllUserActivities start", -1, *(*(a1 + 32) + 192), *(a1 + 48), 0.0);
  v7 = @"_kMDItemUserActivityType=* && _kMDItemUserActivityEligibleForPublicIndexing=*";
  if ([*(a1 + 48) length])
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"_kMDItemBundleID=%@ && (%@)", *(a1 + 48), @"_kMDItemUserActivityType=* && _kMDItemUserActivityEligibleForPublicIndexing=*"];
  }

  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = *(a1 + 32);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __87__SPConcreteCoreSpotlightIndexer_deleteAllUserActivities_fromClient_completionHandler___block_invoke_3;
  v13[3] = &unk_278935A60;
  v16 = v6;
  v13[4] = v10;
  v14 = v8;
  v15 = *(a1 + 56);
  [v10 deleteItemsForQuery:v7 bundleID:v14 fromClient:v9 completionHandler:v13];
}

void __87__SPConcreteCoreSpotlightIndexer_deleteAllUserActivities_fromClient_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  SDTraceAdd(3, @"deleteAllUserActivities complete", *(a1 + 56), *(*(a1 + 32) + 192), *(a1 + 40), 0.0);
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

- (void)_scheduleStringsCleanupForBundleID:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    dataclass = self->_dataclass;
    *buf = 138412546;
    v12 = v4;
    v13 = 2112;
    v14 = dataclass;
    _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_DEFAULT, "Scheduling strings cleanup for bundleID:%@, dataclass:%@", buf, 0x16u);
  }

  v7 = sIndexQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__SPConcreteCoreSpotlightIndexer__scheduleStringsCleanupForBundleID___block_invoke;
  v10[3] = &unk_278934050;
  v10[4] = self;
  v8 = _setup_block(v10, 0, 11886);
  dispatch_async(v7, v8);

  v9 = *MEMORY[0x277D85DE8];
}

void __69__SPConcreteCoreSpotlightIndexer__scheduleStringsCleanupForBundleID___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 27) & 1) == 0)
  {
    *(v1 + 27) = 1;
    v3 = dispatch_time(0, 10000000000);
    v4 = dispatch_get_global_queue(9, 2uLL);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__SPConcreteCoreSpotlightIndexer__scheduleStringsCleanupForBundleID___block_invoke_2;
    block[3] = &unk_278934050;
    block[4] = *(a1 + 32);
    dispatch_after(v3, v4, block);
  }
}

void __69__SPConcreteCoreSpotlightIndexer__scheduleStringsCleanupForBundleID___block_invoke_2(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v3 = MEMORY[0x277D85DD0];
  v4 = 3221225472;
  v5 = __69__SPConcreteCoreSpotlightIndexer__scheduleStringsCleanupForBundleID___block_invoke_3;
  v6 = &unk_278935A88;
  objc_copyWeak(&v7, &location);
  v2 = [&v3 copy];
  [*(a1 + 32) scheduleMaintenance:v2 description:@"com.apple.searchd.strings.cleanup" forDarkWake:{1, v3, v4, v5, v6}];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __69__SPConcreteCoreSpotlightIndexer__scheduleStringsCleanupForBundleID___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v18 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v12 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[27] = 0;
    if ([WeakRetained index] == a2)
    {
      v13 = logForCSLogCategoryIndex();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v12 dataclass];
        v16 = 138412290;
        v17 = v14;
        _os_log_impl(&dword_231A35000, v13, OS_LOG_TYPE_DEFAULT, "Running strings cleanup for dataclass:%@", &v16, 0xCu);
      }

      [v12 cleanupStringsWithActivity:v9 group:v10 shouldDefer:a4 flags:0];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)zombifyAllContactItems:(id)a3
{
  v4 = a3;
  dispatch_group_enter(v4);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__SPConcreteCoreSpotlightIndexer_zombifyAllContactItems___block_invoke;
  v9[3] = &unk_2789342C0;
  v9[4] = self;
  v10 = v4;
  v5 = v4;
  v6 = MEMORY[0x2383760E0](v9);
  v7 = sIndexQueue;
  v8 = _setup_block(v6, 0, 11936);
  dispatch_async(v7, v8);
}

void __57__SPConcreteCoreSpotlightIndexer_zombifyAllContactItems___block_invoke(uint64_t a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __57__SPConcreteCoreSpotlightIndexer_zombifyAllContactItems___block_invoke_2;
  v12 = &unk_278935AB0;
  v2 = *(a1 + 40);
  v13 = *(a1 + 32);
  v14 = v2;
  v3 = MEMORY[0x2383760E0](&v9);
  v4 = *(a1 + 32);
  v5 = v4[19];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@", *MEMORY[0x277CC2500], @"com.apple.MobileAddressBook", v9, v10, v11, v12, v13];
  v15[0] = *MEMORY[0x277CC3208];
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  LOBYTE(v4) = [v4 _startInternalQueryWithIndex:v5 query:v6 fetchAttributes:v7 forBundleIds:&unk_2846C9320 resultsHandler:v3];

  if ((v4 & 1) == 0)
  {
    dispatch_group_leave(*(a1 + 40));
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __57__SPConcreteCoreSpotlightIndexer_zombifyAllContactItems___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = a2;
  if (a3 == 1)
  {
    dispatch_group_leave(*(a1 + 40));
  }

  else if (!a3)
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:_MDStoreOIDArrayGetVectorCount()];
    v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:43200.0];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __57__SPConcreteCoreSpotlightIndexer_zombifyAllContactItems___block_invoke_3;
    v19[3] = &unk_2789353D8;
    v12 = v11;
    v20 = v12;
    v13 = v10;
    v21 = v13;
    [a6 enumerateQueryResults:1 stringCache:0 usingBlock:v19];
    v14 = *(a1 + 32);
    if (*(v14 + 152) && *(v14 + 176))
    {
      v15 = sIndexQueue;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __57__SPConcreteCoreSpotlightIndexer_zombifyAllContactItems___block_invoke_4;
      v17[3] = &unk_2789342C0;
      v17[4] = v14;
      v18 = v13;
      v16 = _setup_block(v17, 0, 11920);
      dispatch_async(v15, v16);
    }
  }
}

void __57__SPConcreteCoreSpotlightIndexer_zombifyAllContactItems___block_invoke_3(uint64_t a1, void *a2)
{
  if (*a2)
  {
    v5 = objc_opt_new();
    [v5 setObject:*a2 forKey:*MEMORY[0x277CC3208]];
    [v5 setObject:*(a1 + 32) forKey:*MEMORY[0x277CC2A70]];
    v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v5 setObject:v4 forKey:*MEMORY[0x277CC2CD0]];

    [*(a1 + 40) addObject:v5];
  }
}

void __57__SPConcreteCoreSpotlightIndexer_zombifyAllContactItems___block_invoke_4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 152);
  if (v1)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __57__SPConcreteCoreSpotlightIndexer_zombifyAllContactItems___block_invoke_5;
    v2[3] = &unk_278935248;
    v3 = *(a1 + 40);
    SIBackgroundOpBlock(v1, 0, v2);
  }
}

void __57__SPConcreteCoreSpotlightIndexer_zombifyAllContactItems___block_invoke_5(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v4 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_DEFAULT, "clearOutContactItems canceled", v6, 2u);
    }
  }

  else
  {
    v5 = *(a1 + 32);

    SISetCSAttributes();
  }
}

- (void)restartAttachmentImport:(id)a3 maxCount:(unint64_t)a4 depth:(int64_t)a5
{
  v8 = a3;
  v9 = [(SPConcreteCoreSpotlightIndexer *)self index];
  if (!v9 || self->_readOnly || self->_suspended)
  {
    goto LABEL_18;
  }

  v10 = v9;
  v11 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [SPConcreteCoreSpotlightIndexer restartAttachmentImport:maxCount:depth:];
  }

  v12 = [@"com.apple.searchd.restartAttachmentImport." stringByAppendingString:self->_dataclass];
  v13 = [MEMORY[0x277CF0810] sharedScheduler];
  indexQueue = self->_indexQueue;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __73__SPConcreteCoreSpotlightIndexer_restartAttachmentImport_maxCount_depth___block_invoke;
  v24[3] = &unk_278935C18;
  v24[4] = self;
  v27 = v10;
  v28 = a4;
  v29 = a5;
  v25 = v8;
  v26 = v12;
  [v13 registerForTaskWithIdentifier:v12 usingQueue:indexQueue launchHandler:v24];

  index = self->_index;
  v16 = _SIProtectionClass();
  v17 = [objc_alloc(MEMORY[0x277CF07C8]) initWithIdentifier:v12];
  [v17 setRequiresNetworkConnectivity:0];
  [v17 setGroupName:@"com.apple.searchd.restartAttachmentImport"];
  [v17 setGroupConcurrencyLimit:1];
  [v17 setRequiresUserInactivity:0];
  [v17 setRequiresExternalPower:0];
  [v17 setResourceIntensive:0];
  [v17 setExpectedDuration:60.0];
  [v17 setPriority:2];
  [v17 setResources:5];
  switch(v16)
  {
    case 1:
      v18 = 1;
      goto LABEL_12;
    case 7:
      v18 = 3;
      goto LABEL_12;
    case 2:
      v18 = 2;
LABEL_12:
      [v17 setRequiresProtectionClass:v18];
      break;
  }

  v19 = [MEMORY[0x277CF0810] sharedScheduler];
  v23 = 0;
  v20 = [v19 submitTaskRequest:v17 error:&v23];
  v21 = v23;

  if ((v20 & 1) == 0)
  {
    v22 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [SPConcreteCoreSpotlightIndexer restartAttachmentImport:maxCount:depth:];
    }
  }

LABEL_18:
}

void __73__SPConcreteCoreSpotlightIndexer_restartAttachmentImport_maxCount_depth___block_invoke(uint64_t a1, void *a2)
{
  v48[5] = *MEMORY[0x277D85DE8];
  v3 = a2;
  Current = CFAbsoluteTimeGetCurrent();
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x2020000000;
  v47 = 0;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x2020000000;
  v45 = 0;
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x2020000000;
  v43 = 0;
  v5 = [SPQueryResultsQueue alloc];
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"com.apple.searchd.internal.attachmentImports.%d", atomic_fetch_add(&kSPReindexAllCompletedBundleIDs_block_invoke_6_queueNum, 1u)];
  v7 = [*(a1 + 32) indexQueue];
  v8 = [(SPQueryResultsQueue *)v5 initWithIdentifier:v6 dispatchQueue:v7];

  [(SPQueryResultsQueue *)v8 setDisableResultStreaming:1];
  v9 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __73__SPConcreteCoreSpotlightIndexer_restartAttachmentImport_maxCount_depth___block_invoke_cold_1();
  }

  v10 = dispatch_group_create();
  objc_initWeak(&location, *(a1 + 32));
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v40[3] = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v39[3] = 0;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __73__SPConcreteCoreSpotlightIndexer_restartAttachmentImport_maxCount_depth___block_invoke_1456;
  v26[3] = &unk_278935BC8;
  objc_copyWeak(v37, &location);
  v32 = v46;
  v11 = v3;
  v37[1] = *&Current;
  v33 = v42;
  v34 = v44;
  v37[2] = *(a1 + 56);
  v35 = v40;
  v36 = v39;
  v12 = *(a1 + 32);
  v27 = v11;
  v28 = v12;
  v29 = *(a1 + 40);
  v13 = v8;
  v30 = v13;
  v14 = v10;
  v31 = v14;
  v38 = *(a1 + 64);
  v15 = MEMORY[0x2383760E0](v26);
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"_kMDItemRequiresImport==1 && _kMDItemImportHasSandboxExtension==1"];
  dispatch_group_enter(*(a1 + 40));
  v17 = *(a1 + 32);
  v18 = v17[19];
  v19 = *MEMORY[0x277CC3208];
  v48[0] = @"_kMDItemBundleID";
  v48[1] = v19;
  v20 = *MEMORY[0x277CC2678];
  v48[2] = *MEMORY[0x277CC2688];
  v48[3] = v20;
  v48[4] = *MEMORY[0x277CC2C00];
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:5];
  LOBYTE(v17) = [v17 _startInternalQueryWithIndex:v18 query:v16 fetchAttributes:v21 forBundleIds:0 maxCount:*(a1 + 64) resultsHandler:v15 resultQueue:v13 postFilter:0];

  if ((v17 & 1) == 0)
  {
    v22 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_231A35000, v22, OS_LOG_TYPE_INFO, "restartAttachmentImport done (never started)", buf, 2u);
    }

    dispatch_group_leave(*(a1 + 40));
    [v11 setTaskCompleted];
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __73__SPConcreteCoreSpotlightIndexer_restartAttachmentImport_maxCount_depth___block_invoke_1482;
  v24[3] = &unk_278935BF0;
  v24[4] = *(a1 + 48);
  v24[5] = v46;
  [v11 setExpirationHandler:v24];

  objc_destroyWeak(v37);
  _Block_object_dispose(v39, 8);
  _Block_object_dispose(v40, 8);
  objc_destroyWeak(&location);

  _Block_object_dispose(v42, 8);
  _Block_object_dispose(v44, 8);
  _Block_object_dispose(v46, 8);

  v23 = *MEMORY[0x277D85DE8];
}

void __73__SPConcreteCoreSpotlightIndexer_restartAttachmentImport_maxCount_depth___block_invoke_1456(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v80 = *MEMORY[0x277D85DE8];
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 112));
  v12 = WeakRetained;
  v13 = atomic_load((*(*(a1 + 72) + 8) + 24));
  if (a3 == 1 || (v13 & 1) == 0)
  {
    if (a3 == 1)
    {
      v34 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = *(*(*(a1 + 96) + 8) + 24);
        *buf = 134217984;
        v79 = v35;
        _os_log_impl(&dword_231A35000, v34, OS_LOG_TYPE_INFO, "==== Completed restartAttachmentImport query finished) %ld", buf, 0xCu);
      }

      v36 = atomic_load((*(*(a1 + 88) + 8) + 24));
      if ((v36 & 1) == 0)
      {
        [*(a1 + 32) setTaskCompleted];
      }

      v37 = *(a1 + 136);
      if (*(*(*(a1 + 96) + 8) + 24) >= v37)
      {
        v46 = *(a1 + 104);
        if (!*(*(v46 + 8) + 24) || (v47 = *(a1 + 144) + 1, v47 > 5 * (v37 >> 8)))
        {
          v47 = 0;
          v37 *= 2;
        }

        v40 = *(a1 + 64);
        v41 = sIndexQueue;
        v54[0] = MEMORY[0x277D85DD0];
        v54[1] = 3221225472;
        v54[2] = __73__SPConcreteCoreSpotlightIndexer_restartAttachmentImport_maxCount_depth___block_invoke_1477;
        v54[3] = &unk_278935B78;
        v56 = vextq_s8(*(a1 + 80), *(a1 + 80), 8uLL);
        v55[1] = v46;
        v54[4] = v12;
        v43 = v55;
        v55[0] = *(a1 + 48);
        v57 = v37;
        v58 = v47;
        v44 = v54;
        v45 = 12102;
      }

      else
      {
        v38 = logForCSLogCategoryDefault();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          v39 = *(*(*(a1 + 104) + 8) + 24);
          *buf = 134217984;
          v79 = v39;
          _os_log_impl(&dword_231A35000, v38, OS_LOG_TYPE_INFO, "==== Completed restartAttachmentImport query (%ld processed)", buf, 0xCu);
        }

        v40 = *(a1 + 64);
        v41 = sIndexQueue;
        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = __73__SPConcreteCoreSpotlightIndexer_restartAttachmentImport_maxCount_depth___block_invoke_1478;
        v50[3] = &unk_278935BA0;
        v42 = *(a1 + 88);
        v51[1] = *(a1 + 104);
        v51[2] = v42;
        v52 = *(a1 + 72);
        v50[4] = v12;
        v43 = v51;
        v51[0] = *(a1 + 48);
        v53 = *(a1 + 136);
        v44 = v50;
        v45 = 12112;
      }

      v48 = _setup_block(v44, 0, v45);
      dispatch_group_notify(v40, v41, v48);
    }

    else if (!a3 && [WeakRetained index] == *(a1 + 128))
    {
      v19 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v79 = a4;
        _os_log_impl(&dword_231A35000, v19, OS_LOG_TYPE_INFO, "==== restartAttachmentImport query results %ld", buf, 0xCu);
      }

      VectorCount = _MDStoreOIDArrayGetVectorCount();
      v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v69[0] = MEMORY[0x277D85DD0];
      v69[1] = 3221225472;
      v69[2] = __73__SPConcreteCoreSpotlightIndexer_restartAttachmentImport_maxCount_depth___block_invoke_1460;
      v69[3] = &unk_278935AD8;
      v74 = *(a1 + 96);
      v17 = v21;
      v70 = v17;
      v25 = v22;
      v71 = v25;
      v26 = v23;
      v72 = v26;
      v27 = v24;
      v28 = *(a1 + 104);
      v73 = v27;
      v75 = v28;
      v76 = VectorCount;
      [a6 enumerateQueryResults:5 stringCache:0 usingBlock:v69];
      v29 = *(a1 + 40);
      if (*(v29 + 152) && *(v29 + 176))
      {
        dispatch_group_enter(*(a1 + 48));
        v30 = sIndexQueue;
        v59[0] = MEMORY[0x277D85DD0];
        v59[1] = 3221225472;
        v59[2] = __73__SPConcreteCoreSpotlightIndexer_restartAttachmentImport_maxCount_depth___block_invoke_1461;
        v59[3] = &unk_278935B50;
        v31 = *(a1 + 72);
        v32 = *(a1 + 48);
        v59[4] = *(a1 + 40);
        v68 = v31;
        v60 = v32;
        v61 = *(a1 + 56);
        v62 = v17;
        v63 = v25;
        v64 = v26;
        v65 = v27;
        v66 = v12;
        v67 = *(a1 + 64);
        v33 = _setup_block(v59, 0, 12078);
        dispatch_async(v30, v33);
      }

      else
      {
        [*(a1 + 56) resumeResults];
      }

      goto LABEL_8;
    }

    [*(a1 + 56) resumeResults];
    goto LABEL_31;
  }

  v14 = *(a1 + 32);
  v15 = CFAbsoluteTimeGetCurrent() - *(a1 + 120);
  v77 = 0;
  v16 = [v14 setTaskExpiredWithRetryAfter:&v77 error:v15];
  v17 = v77;
  if ((v16 & 1) == 0)
  {
    v18 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __73__SPConcreteCoreSpotlightIndexer_restartAttachmentImport_maxCount_depth___block_invoke_1456_cold_1();
    }

    atomic_store(1u, (*(*(a1 + 80) + 8) + 24));
    [*(a1 + 32) setTaskCompleted];
  }

  atomic_store(1u, (*(*(a1 + 88) + 8) + 24));
  [v10 cancel];
LABEL_8:

LABEL_31:
  v49 = *MEMORY[0x277D85DE8];
}

void __73__SPConcreteCoreSpotlightIndexer_restartAttachmentImport_maxCount_depth___block_invoke_1460(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  ++*(*(*(a1 + 64) + 8) + 24);
  if (*a2 && *(a2 + 8) && *(a2 + 16) && *(a2 + 24) && *(a2 + 32))
  {
    v4 = *a2;
    v5 = [*(a1 + 32) objectForKeyedSubscript:v4];
    v6 = [*(a1 + 40) objectForKeyedSubscript:v4];
    v7 = [*(a1 + 48) objectForKeyedSubscript:v4];
    v8 = [*(a1 + 56) objectForKeyedSubscript:v4];
    if (!v5)
    {
      v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(a1 + 80)];
      v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(a1 + 80)];

      v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(a1 + 80)];
      v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(a1 + 80)];

      [*(a1 + 32) setObject:v5 forKeyedSubscript:v4];
      [*(a1 + 40) setObject:v9 forKeyedSubscript:v4];
      [*(a1 + 48) setObject:v10 forKeyedSubscript:v4];
      [*(a1 + 56) setObject:v11 forKeyedSubscript:v4];
      v8 = v11;
      v7 = v10;
      v6 = v9;
    }

    [v5 addObject:*(a2 + 8)];
    v12 = *(a2 + 16);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [MEMORY[0x277CBEBC0] URLWithString:v12];

      v12 = v13;
    }

    [v6 addObject:v12];
    [v7 addObject:*(a2 + 24)];
    [v8 addObject:*(a2 + 32)];
    ++*(*(*(a1 + 72) + 8) + 24);
    v14 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(a2 + 8);
      v17 = *(a2 + 24);
      v18 = *(a2 + 32);
      v19 = 138413058;
      v20 = v16;
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = v17;
      v25 = 2112;
      v26 = v18;
      _os_log_debug_impl(&dword_231A35000, v14, OS_LOG_TYPE_DEBUG, "~~ restartAttachmentImport id:%@ url:%@ uti:%@ se:%@", &v19, 0x2Au);
    }
  }

  else
  {
    v4 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __73__SPConcreteCoreSpotlightIndexer_restartAttachmentImport_maxCount_depth___block_invoke_1460_cold_1(a2);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __73__SPConcreteCoreSpotlightIndexer_restartAttachmentImport_maxCount_depth___block_invoke_1461(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 152);
  if (v2)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __73__SPConcreteCoreSpotlightIndexer_restartAttachmentImport_maxCount_depth___block_invoke_2;
    v15[3] = &unk_278935B28;
    v20 = *(a1 + 104);
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = *(a1 + 64);
    *&v7 = v5;
    *(&v7 + 1) = v6;
    *&v8 = v3;
    *(&v8 + 1) = v4;
    v16 = v8;
    v17 = v7;
    v9 = *(a1 + 72);
    v10 = *(a1 + 80);
    v14 = *(a1 + 88);
    v11 = *(&v14 + 1);
    *&v12 = v9;
    *(&v12 + 1) = v10;
    v19 = v14;
    v18 = v12;
    SIBackgroundOpBlock(v2, 0, v15);
  }

  else
  {
    dispatch_group_leave(*(a1 + 40));
    v13 = *(a1 + 48);

    [v13 resumeResults];
  }
}

uint64_t __73__SPConcreteCoreSpotlightIndexer_restartAttachmentImport_maxCount_depth___block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  v30 = *MEMORY[0x277D85DE8];
  if (a3 || (v4 = atomic_load((*(*(a1 + 96) + 8) + 24)), (v4 & 1) != 0))
  {
    v5 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_INFO, "==== restartAttachmentImport canceled", buf, 2u);
    }
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v5 = *(a1 + 48);
    v6 = [v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v6)
    {
      v7 = v6;
      v21 = *v24;
      obj = v5;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v24 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v23 + 1) + 8 * i);
          v10 = [*(a1 + 48) objectForKeyedSubscript:v9];
          v11 = [*(a1 + 56) objectForKeyedSubscript:v9];
          v12 = [*(a1 + 64) objectForKeyedSubscript:v9];
          v13 = [*(a1 + 72) objectForKeyedSubscript:v9];
          v14 = logForCSLogCategoryDefault();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v28 = v10;
            _os_log_impl(&dword_231A35000, v14, OS_LOG_TYPE_INFO, "==== restartAttachmentImport import! items %@", buf, 0xCu);
          }

          v15 = *(a1 + 80);
          v16 = *(a1 + 88);
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __73__SPConcreteCoreSpotlightIndexer_restartAttachmentImport_maxCount_depth___block_invoke_1475;
          v22[3] = &unk_278935B00;
          v22[4] = *(a1 + 96);
          LOBYTE(v19) = 0;
          [v15 processImportForBundleID:v9 withURLs:v11 contentTypes:v12 sandboxExtensions:v13 andIdentifiers:v10 options:0x8000 inGroup:v16 additionalAttributes:&unk_2846C9708 computeUpdaterAttributesAfterImport:v19 cancelBlock:v22];
        }

        v5 = obj;
        v7 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v7);
    }
  }

  dispatch_group_leave(*(a1 + 32));
  result = [*(a1 + 40) resumeResults];
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void __73__SPConcreteCoreSpotlightIndexer_restartAttachmentImport_maxCount_depth___block_invoke_1477(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(*(a1 + 48) + 8) + 24);
    v7 = 134217984;
    v8 = v3;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "==== restartAttachmentImport (recursive!) %ld", &v7, 0xCu);
  }

  v4 = atomic_load((*(*(a1 + 56) + 8) + 24));
  if (v4 & 1) == 0 || (v5 = atomic_load((*(*(a1 + 64) + 8) + 24)), (v5))
  {
    [*(a1 + 32) restartAttachmentImport:*(a1 + 40) maxCount:*(a1 + 72) depth:*(a1 + 80)];
  }

  dispatch_group_leave(*(a1 + 40));
  v6 = *MEMORY[0x277D85DE8];
}

void __73__SPConcreteCoreSpotlightIndexer_restartAttachmentImport_maxCount_depth___block_invoke_1478(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(*(a1 + 48) + 8) + 24);
    v8 = 134217984;
    v9 = v3;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "==== Done restarting importers (%ld processed)", &v8, 0xCu);
  }

  v4 = atomic_load((*(*(a1 + 56) + 8) + 24));
  if (v4 & 1) == 0 && (v5 = atomic_load((*(*(a1 + 64) + 8) + 24)), (v5) || (v6 = atomic_load((*(*(a1 + 72) + 8) + 24)), (v6))
  {
    [*(a1 + 32) restartAttachmentImport:*(a1 + 40) maxCount:*(a1 + 80) depth:*(a1 + 88)];
  }

  dispatch_group_leave(*(a1 + 40));
  v7 = *MEMORY[0x277D85DE8];
}

void __73__SPConcreteCoreSpotlightIndexer_restartAttachmentImport_maxCount_depth___block_invoke_1482(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "Task %@ cancelled", &v5, 0xCu);
  }

  atomic_store(1u, (*(*(a1 + 40) + 8) + 24));
  v4 = *MEMORY[0x277D85DE8];
}

- (void)removeSandboxExtensions:(id)a3
{
  v22[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_indexQueue);
  v5 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_INFO, "==== removeSandboxExtensions enter", buf, 2u);
  }

  dispatch_group_enter(v4);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __58__SPConcreteCoreSpotlightIndexer_removeSandboxExtensions___block_invoke;
  v18 = &unk_278935AB0;
  v19 = self;
  v6 = v4;
  v20 = v6;
  v7 = MEMORY[0x2383760E0](&v15);
  index = self->_index;
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"_kMDItemRequiresImport==1 && _kMDItemImportHasSandboxExtension==1", v15, v16, v17, v18, v19];
  v10 = *MEMORY[0x277CC3208];
  v22[0] = @"_kMDItemBundleID";
  v22[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v12 = [(SPConcreteCoreSpotlightIndexer *)self _startInternalQueryWithIndex:index query:v9 fetchAttributes:v11 resultsHandler:v7];

  if (!v12)
  {
    v13 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_231A35000, v13, OS_LOG_TYPE_INFO, "removeSandboxExtensions done", buf, 2u);
    }

    dispatch_group_leave(v6);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __58__SPConcreteCoreSpotlightIndexer_removeSandboxExtensions___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = a2;
  if (a3 == 1)
  {
    v17 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *v18 = 0;
      _os_log_impl(&dword_231A35000, v17, OS_LOG_TYPE_INFO, "removeSandboxExtensions done", v18, 2u);
    }

    dispatch_group_leave(*(a1 + 40));
  }

  else if (!a3)
  {
    VectorCount = _MDStoreOIDArrayGetVectorCount();
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __58__SPConcreteCoreSpotlightIndexer_removeSandboxExtensions___block_invoke_2;
    v22[3] = &unk_278935C40;
    v12 = v11;
    v23 = v12;
    v24 = VectorCount;
    [a6 enumerateQueryResults:2 stringCache:0 usingBlock:v22];
    v13 = *(a1 + 32);
    if (*(v13 + 152) && *(v13 + 176))
    {
      dispatch_group_enter(*(a1 + 40));
      v14 = sIndexQueue;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __58__SPConcreteCoreSpotlightIndexer_removeSandboxExtensions___block_invoke_3;
      v19[3] = &unk_278934130;
      v15 = *(a1 + 40);
      v19[4] = *(a1 + 32);
      v20 = v15;
      v21 = v12;
      v16 = _setup_block(v19, 0, 12237);
      dispatch_async(v14, v16);
    }
  }
}

void __58__SPConcreteCoreSpotlightIndexer_removeSandboxExtensions___block_invoke_2(uint64_t a1, uint64_t *a2)
{
  if (*a2 && a2[1])
  {
    v8 = [*(a1 + 32) objectForKeyedSubscript:?];
    if (!v8)
    {
      v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(a1 + 40)];
      v5 = *a2;
      v8 = v4;
      [*(a1 + 32) setObject:? forKeyedSubscript:?];
    }

    v6 = objc_opt_new();
    [v6 setObject:a2[1] forKey:*MEMORY[0x277CC3208]];
    v7 = *MEMORY[0x277CBEEE8];
    [v6 setObject:*MEMORY[0x277CBEEE8] forKey:*MEMORY[0x277CC2C00]];
    [v6 setObject:v7 forKey:*MEMORY[0x277CC2BF8]];
    [v8 addObject:v6];
  }
}

void __58__SPConcreteCoreSpotlightIndexer_removeSandboxExtensions___block_invoke_3(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 152);
  if (v1)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __58__SPConcreteCoreSpotlightIndexer_removeSandboxExtensions___block_invoke_4;
    v3[3] = &unk_2789351D8;
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    SIBackgroundOpBlock(v1, 0, v3);
  }
}

void __58__SPConcreteCoreSpotlightIndexer_removeSandboxExtensions___block_invoke_4(uint64_t a1, uint64_t a2, int a3)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_DEFAULT, "removeSandboxExtensions canceled", buf, 2u);
    }

    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = *(a1 + 40);
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v18;
      *&v7 = 138412546;
      v16 = v7;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = [*(a1 + 40) objectForKeyedSubscript:{v11, v16, v17}];
          v13 = logForCSLogCategoryDefault();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = v16;
            v22 = v11;
            v23 = 2112;
            v24 = v12;
            _os_log_debug_impl(&dword_231A35000, v13, OS_LOG_TYPE_DEBUG, "removeSandboxExtensions %@ %@", buf, 0x16u);
          }

          v14 = *(a1 + 32);
          SISetCSAttributes();
        }

        v8 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v8);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)deleteAllSearchableItemsForBundleID:(id)a3 fromClient:(id)a4 shouldGC:(BOOL)a5 deleteAllReason:(int64_t)a6 completionHandler:(id)a7
{
  v9 = a5;
  v81 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v51 = a4;
  v13 = a7;
  v14 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    dataclass = self->_dataclass;
    v16 = "NO";
    *buf = 138412802;
    if (v9)
    {
      v16 = "YES";
    }

    *&buf[4] = v12;
    *&buf[12] = 2112;
    *&buf[14] = dataclass;
    *&buf[22] = 2080;
    v79 = v16;
    _os_log_impl(&dword_231A35000, v14, OS_LOG_TYPE_DEFAULT, "deleteAllSearchableItemsForBundleID, bundleID:%@, protectionClass:%@, shouldGC:%s", buf, 0x20u);
  }

  v17 = logForCSLogCategoryDeleteAll();
  spid = os_signpost_id_generate(v17);

  v18 = logForCSLogCategoryDeleteAll();
  v19 = v18;
  v20 = spid - 1;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    if ([v12 length])
    {
      v21 = v12;
      v22 = [v12 UTF8String];
    }

    else
    {
      v22 = "all";
    }

    if ([v51 length])
    {
      v23 = v51;
      v24 = [v51 UTF8String];
    }

    else
    {
      v24 = "";
    }

    v25 = [(NSString *)self->_dataclass UTF8String];
    *buf = 136315906;
    *&buf[4] = v22;
    *&buf[12] = 2080;
    *&buf[14] = v24;
    *&buf[22] = 2080;
    v79 = v25;
    LOWORD(v80) = 2048;
    *(&v80 + 2) = a6;
    _os_signpost_emit_with_name_impl(&dword_231A35000, v19, OS_SIGNPOST_INTERVAL_BEGIN, spid, "deleteAll", "bid:%s, client:%s, pc:%s, reason:%ld", buf, 0x2Au);
  }

  if (self->_readOnly)
  {
    v26 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = self->_dataclass;
      *buf = 138412290;
      *&buf[4] = v27;
      _os_log_impl(&dword_231A35000, v26, OS_LOG_TYPE_DEFAULT, "Cannot delete items because the index is read-only. dataclass:%@", buf, 0xCu);
    }

    v28 = logForCSLogCategoryDeleteAll();
    v29 = v28;
    if (v20 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v28))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_231A35000, v29, OS_SIGNPOST_INTERVAL_END, spid, "deleteAll", "err: read only", buf, 2u);
    }

    v30 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    v13[2](v13, v30);
  }

  else if (self->_hasAssertion)
  {
    v31 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = self->_dataclass;
      *buf = 138412290;
      *&buf[4] = v32;
      _os_log_impl(&dword_231A35000, v31, OS_LOG_TYPE_INFO, "Cannot deleteAllSearchableItemsForBundleID on asserted index when device is locked. dataclass:%@", buf, 0xCu);
    }

    v33 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    v34 = logForCSLogCategoryDeleteAll();
    v35 = v34;
    if (v20 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v34))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_231A35000, v35, OS_SIGNPOST_INTERVAL_END, spid, "deleteAll", "err: device locked", buf, 2u);
    }

    if (v13)
    {
      v13[2](v13, v33);
    }
  }

  else
  {
    v36 = [v12 isEqualToString:@"com.apple.spotlight.contacts"];
    v50 = SDTraceAdd(3, @"DeleteAll start", -1, self->_dataclass, v12, 0.0);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v79 = __Block_byref_object_copy__0;
    *&v80 = __Block_byref_object_dispose__0;
    *(&v80 + 1) = 0;
    v76[0] = 0;
    v76[1] = v76;
    v76[2] = 0x2020000000;
    v77 = 0;
    v74[0] = 0;
    v74[1] = v74;
    v74[2] = 0x2020000000;
    v75 = 0;
    if (-[NSString isEqualToString:](self->_dataclass, "isEqualToString:", *MEMORY[0x277CCA1A0]) && (![v12 length] || objc_msgSend(v12, "isEqualToString:", @"com.apple.mobileslideshow")))
    {
      _sendPhotosReindexABCReport(@"Call to delete SPI");
    }

    v37 = dispatch_group_create();
    v38 = v9 & ~v36;
    if ([v12 isEqualToString:@"com.apple.MobileAddressBook"])
    {
      [(SPConcreteCoreSpotlightIndexer *)self zombifyAllContactItems:v37];
    }

    else
    {
      v39 = sIndexQueue;
      v67[0] = MEMORY[0x277D85DD0];
      v67[1] = 3221225472;
      v67[2] = __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke;
      v67[3] = &unk_278935D28;
      v68 = v12;
      v69 = self;
      v72 = buf;
      v40 = v37;
      v70 = v40;
      v71 = v51;
      v73 = v38;
      v41 = _setup_block(v67, 0, 12423);
      dispatch_group_async(v40, v39, v41);
    }

    v42 = dispatch_group_create();
    dispatch_group_enter(v42);
    v43 = sIndexQueue;
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_1512;
    v61[3] = &unk_278935D50;
    v65 = buf;
    v66 = v76;
    v44 = v12;
    v62 = v44;
    v45 = v42;
    v63 = v45;
    v64 = self;
    v46 = _setup_block(v61, 0, 12463);
    dispatch_group_notify(v37, v43, v46);

    v47 = sIndexQueue;
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_3_1514;
    v53[3] = &unk_278935DA0;
    v58 = spid;
    v59 = v50;
    v53[4] = self;
    v54 = v44;
    v56 = buf;
    v55 = v13;
    v57 = v74;
    v60 = v38;
    v48 = _setup_block(v53, 0, 12523);
    dispatch_group_notify(v45, v47, v48);

    _Block_object_dispose(v74, 8);
    _Block_object_dispose(v76, 8);
    _Block_object_dispose(buf, 8);
  }

  v49 = *MEMORY[0x277D85DE8];
}

void __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke(uint64_t a1)
{
  v58 = *MEMORY[0x277D85DE8];
  if (![*(a1 + 32) length])
  {
    v2 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(*(a1 + 40) + 192);
      *buf = 138412290;
      v54 = v3;
      _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "#index wipe, dataclass:%@", buf, 0xCu);
    }

    [*(a1 + 40) closeIndex];
    v4 = [*(a1 + 40) _indexPath];
    v52 = 0;
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [v5 fileExistsAtPath:v4 isDirectory:&v52];

    if (v6)
    {
      v7 = logForCSLogCategoryIndex();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v54 = v4;
        _os_log_impl(&dword_231A35000, v7, OS_LOG_TYPE_DEFAULT, "Removing index at %@", buf, 0xCu);
      }

      v8 = [MEMORY[0x277CCAA00] defaultManager];
      v9 = *(*(a1 + 64) + 8);
      obj = *(v9 + 40);
      v10 = [v8 removeItemAtPath:v4 error:&obj];
      objc_storeStrong((v9 + 40), obj);

      if ((v10 & 1) == 0)
      {
        v11 = logForCSLogCategoryIndex();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_cold_1(v4, (a1 + 64));
        }

        v12 = [MEMORY[0x277CCAA00] defaultManager];
        v13 = *(*(a1 + 64) + 8);
        v50 = *(v13 + 40);
        v14 = [v12 removeItemAtPath:v4 error:&v50];
        objc_storeStrong((v13 + 40), v50);

        if ((v14 & 1) == 0)
        {
          v15 = logForCSLogCategoryIndex();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_cold_2(v4, (a1 + 64));
          }

          v16 = [MEMORY[0x277CCAA00] defaultManager];
          v38 = v4;
          v17 = [v16 contentsOfDirectoryAtPath:v4 error:0];

          v49 = 0u;
          v47 = 0u;
          v48 = 0u;
          v46 = 0u;
          v18 = v17;
          v19 = [v18 countByEnumeratingWithState:&v46 objects:v57 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v47;
            do
            {
              for (i = 0; i != v20; ++i)
              {
                if (*v47 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = *(*(&v46 + 1) + 8 * i);
                v24 = logForCSLogCategoryIndex();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                {
                  v25 = *(*(a1 + 40) + 192);
                  *buf = 138412546;
                  v54 = v25;
                  v55 = 2112;
                  v56 = v23;
                  _os_log_impl(&dword_231A35000, v24, OS_LOG_TYPE_DEFAULT, "(%@) Failed to remove %@", buf, 0x16u);
                }
              }

              v20 = [v18 countByEnumeratingWithState:&v46 objects:v57 count:16];
            }

            while (v20);
          }

          v4 = v38;
        }
      }

      goto LABEL_29;
    }
  }

  [*(a1 + 40) readyIndex:0];
  v26 = *(a1 + 40);
  v27 = *(v26 + 152);
  if (v27)
  {
    if (*(v26 + 24) != 1)
    {
      dispatch_group_enter(*(a1 + 48));
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_1498;
      v40[3] = &unk_278935D00;
      v43 = *(a1 + 64);
      *&v28 = *(a1 + 48);
      *(&v28 + 1) = *(a1 + 40);
      v39 = v28;
      v29 = *(a1 + 56);
      v45 = *(a1 + 72);
      v30 = *(a1 + 32);
      *&v31 = v29;
      *(&v31 + 1) = v30;
      v41 = v39;
      v42 = v31;
      v44 = v27;
      SISynchedOpWithBlock(v27, 3, v40);

      v4 = v41;
LABEL_29:

      goto LABEL_30;
    }

LABEL_28:
    v35 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    v36 = *(*(a1 + 64) + 8);
    v4 = *(v36 + 40);
    *(v36 + 40) = v35;
    goto LABEL_29;
  }

  v32 = [v26 _indexPath];
  buf[0] = 0;
  v33 = [MEMORY[0x277CCAA00] defaultManager];
  v34 = [v33 fileExistsAtPath:v32 isDirectory:buf];

  if (v34)
  {
    goto LABEL_28;
  }

LABEL_30:
  v37 = *MEMORY[0x277D85DE8];
}

void __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_1498(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    v5 = *(*(a1 + 64) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = *(a1 + 32);

    dispatch_group_leave(v7);
  }

  else
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_2;
    v14[3] = &unk_278935D00;
    v17 = *(a1 + 64);
    *&v9 = *(a1 + 32);
    *(&v9 + 1) = *(a1 + 40);
    v13 = v9;
    v10 = *(a1 + 48);
    v19 = *(a1 + 80);
    v11 = *(a1 + 56);
    *&v12 = v10;
    *(&v12 + 1) = v11;
    v15 = v13;
    v16 = v12;
    v18 = *(a1 + 72);
    SIBackgroundOpBlock(a2, 0, v14);
  }
}

void __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_2()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v0;
  v48 = *MEMORY[0x277D85DE8];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    v5 = *(*(v2 + 64) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = *(v2 + 32);
    v8 = *MEMORY[0x277D85DE8];

    dispatch_group_leave(v7);
  }

  else
  {
    v9 = v1;
    v10 = *(v0 + 40);
    v11 = *(v10 + 152);
    [*(v10 + 192) UTF8String];
    [*(v2 + 48) UTF8String];
    v12 = *(v2 + 80);
    v36 = [*(v2 + 56) UTF8String];
    SILogActivity();
    v13 = [SPQueryResultsQueue alloc];
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"com.apple.searchd.internal.bundle.deletes.%@.%d", *(v2 + 56), atomic_fetch_add(kSPReindexAllCompletedBundleIDs_block_invoke_7_queueNum, 1u), v12, v36];
    v15 = [*(v2 + 40) indexQueue];
    v16 = [(SPQueryResultsQueue *)v13 initWithIdentifier:v14 dispatchQueue:v15];

    [(SPQueryResultsQueue *)v16 setDisableResultStreaming:1];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_3;
    v38[3] = &unk_278935CB8;
    v43 = *(v2 + 72);
    v37 = *(v2 + 32);
    v17 = v37.i64[0];
    v39 = vextq_s8(v37, v37, 8uLL);
    v40 = *(v2 + 56);
    v18 = v16;
    v19 = *(v2 + 64);
    v41 = v18;
    v42 = v19;
    v20 = MEMORY[0x2383760E0](v38);
    v21 = *(v2 + 56);
    if (v21 && (([v21 isEqualToString:@"com.apple.mobilemail"] & 1) != 0 || objc_msgSend(*(v2 + 56), "isEqualToString:", @"com.apple.mail")))
    {
      v22 = logForCSLogCategoryIndex();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_231A35000, v22, OS_LOG_TYPE_DEFAULT, "Attempting text store deletion by predicate", buf, 2u);
      }

      bzero(buf, 0x1000uLL);
      if ([*(v2 + 56) getBytes:buf maxLength:0 usedLength:0 encoding:4 options:0 range:0 remainingRange:{objc_msgSend(*(v2 + 56), "length"), 0}])
      {
        v23 = si_text_store_delete_by_predicate();
        if (v23)
        {
          v24 = v23;
          v25 = logForCSLogCategoryIndex();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = strerror(-v24);
            *v45 = 136315138;
            v46 = v26;
            _os_log_impl(&dword_231A35000, v25, OS_LOG_TYPE_DEFAULT, "*warn* si_text_store_delete_by_predicate: %s", v45, 0xCu);
          }
        }
      }
    }

    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"_kMDItemBundleID = %@", *(v2 + 56)];
    v28 = *(v2 + 40);
    v44 = *(v2 + 56);
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
    v30 = MEMORY[0x2383760E0](v20);
    v31 = [v28 _startInternalQueryWithIndex:v9 query:v27 fetchAttributes:0 forBundleIds:v29 resultsHandler:v30 resultQueue:v18];

    if ((v31 & 1) == 0)
    {
      v32 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
      v33 = *(*(v2 + 64) + 8);
      v34 = *(v33 + 40);
      *(v33 + 40) = v32;

      dispatch_group_leave(*(v2 + 32));
    }

    v35 = *MEMORY[0x277D85DE8];
  }
}

void __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v8 = a2;
  if (a3 == 1)
  {
    if ([*(a1 + 32) index] != *(a1 + 72))
    {
      v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
      v16 = *(*(a1 + 64) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;
    }

    [*(a1 + 56) resumeResults];
    dispatch_group_leave(*(a1 + 40));
  }

  else if (!a3 && [*(a1 + 32) index] == *(a1 + 72))
  {
    dispatch_group_enter(*(a1 + 40));
    CFRetain(a5);
    v9 = *(a1 + 72);
    v10 = qos_class_self();
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_4;
    v19[3] = &unk_278935C90;
    v22 = a5;
    *&v11 = *(a1 + 48);
    *(&v11 + 1) = *(a1 + 32);
    v18 = v11;
    v12 = *(a1 + 56);
    v13 = *(a1 + 40);
    *&v14 = v12;
    *(&v14 + 1) = v13;
    v20 = v18;
    v21 = v14;
    SIBackgroundOpBlock(v9, v10, v19);
  }
}

void __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_4(uint64_t a1, uint64_t a2, int a3)
{
  if (!a2 || a3)
  {
    [*(a1 + 48) resumeResults];
  }

  else
  {
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x2020000000;
    v18[3] = 0;
    v5 = *(a1 + 64);
    _MDStoreOIDArrayGetVectorCount();
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_5;
    v14 = &unk_278935C68;
    v17 = a2;
    v15 = *(a1 + 32);
    v16 = v18;
    _MDStoreOIDArrayApplyBlock();
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_7;
    v7[3] = &unk_278935768;
    v6 = *(a1 + 48);
    v7[4] = *(a1 + 40);
    v8 = v6;
    v9 = *(a1 + 32);
    v10 = v18;
    SISynchedOpWithBlock(a2, 2, v7);

    _Block_object_dispose(v18, 8);
  }

  CFRelease(*(a1 + 64));
  dispatch_group_leave(*(a1 + 56));
}

uint64_t __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_5(void *a1)
{
  v1 = a1[4];
  v2 = a1[6];
  v4 = a1[5];
  return SIDeleteCSItems();
}

double __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_6(uint64_t a1, double a2)
{
  v2 = *(*(a1 + 32) + 8);
  result = *(v2 + 24) + a2;
  *(v2 + 24) = result;
  return result;
}

void __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_1512(uint64_t a1)
{
  v23[1] = *MEMORY[0x277D85DE8];
  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    if (*(*(*(a1 + 64) + 8) + 24) != 1 || ([MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0], v4 = objc_claimAutoreleasedReturnValue(), v5 = *(*(a1 + 56) + 8), v6 = *(v5 + 40), *(v5 + 40) = v4, v6, !*(*(*(a1 + 56) + 8) + 40)))
    {
      if ([*(a1 + 32) length])
      {
        [*(a1 + 48) readyIndex:0];
        v7 = *(a1 + 48);
        if (*(v7 + 152))
        {
          if (*(v7 + 24) != 1)
          {
            v8 = *(a1 + 32);
            SIDeleteCSClientStateCache();
            v9 = *(a1 + 48);
            v23[0] = *(a1 + 32);
            v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
            v19[0] = MEMORY[0x277D85DD0];
            v19[1] = 3221225472;
            v19[2] = __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_2_1513;
            v19[3] = &unk_278934F58;
            v21 = *(a1 + 56);
            v20 = *(a1 + 40);
            v11 = [v19 copy];
            [v9 _backgroundDeleteItems:v10 bundleID:@"com.apple.searchd" completionHandler:v11];

LABEL_15:
            v18 = *MEMORY[0x277D85DE8];
            return;
          }
        }

        else
        {
          v12 = [*(a1 + 48) _indexPath];
          v22 = 0;
          v13 = [MEMORY[0x277CCAA00] defaultManager];
          v14 = [v13 fileExistsAtPath:v12 isDirectory:&v22];

          if ((v14 & 1) == 0)
          {
            dispatch_group_leave(*(a1 + 40));

            goto LABEL_15;
          }
        }

        v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
        v16 = *(*(a1 + 56) + 8);
        v17 = *(v16 + 40);
        *(v16 + 40) = v15;

        dispatch_group_leave(*(a1 + 40));
        goto LABEL_15;
      }
    }
  }

  v2 = *(a1 + 40);
  v3 = *MEMORY[0x277D85DE8];

  dispatch_group_leave(v2);
}

void __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_2_1513(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

uint64_t __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_3_1514(uint64_t a1)
{
  v2 = logForCSLogCategoryDeleteAll();
  v3 = v2;
  v4 = *(a1 + 72);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_231A35000, v3, OS_SIGNPOST_INTERVAL_END, v4, "deleteAll", &unk_231AF625D, buf, 2u);
  }

  SDTraceAdd(3, @"DeleteAll complete", *(a1 + 80), *(*(a1 + 32) + 192), *(a1 + 40), 0.0);
  [*(*(a1 + 32) + 40) removeObject:*(a1 + 40)];
  v5 = *(*(a1 + 32) + 152);
  if ([*(a1 + 40) isEqualToString:@"com.apple.shortcuts"])
  {
    if (v5)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_1518;
      v11[3] = &unk_278935D78;
      v11[4] = *(a1 + 32);
      v11[5] = v5;
      SIBackgroundOpBlock(v5, 0, v11);
    }

    else
    {
      v6 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_3_1514_cold_1();
      }

      v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
      v8 = *(*(a1 + 56) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;
    }
  }

  result = *(a1 + 48);
  if (result)
  {
    result = (*(result + 16))(result, *(*(*(a1 + 56) + 8) + 40));
  }

  if (*(*(*(a1 + 64) + 8) + 24) == 1 && *(a1 + 88) == 1)
  {
    return [*(a1 + 32) _scheduleStringsCleanupForBundleID:*(a1 + 40)];
  }

  return result;
}

void __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_1518(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    v21 = v6;
    v22 = v5;
    v23 = v3;
    v24 = v4;
    if (*(a1 + 40) == a2)
    {
      v8 = [MEMORY[0x277CBEB18] array];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_2_1519;
      v19[3] = &unk_278935880;
      v9 = v8;
      v20 = v9;
      v10 = MEMORY[0x2383760E0](v19);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_1521;
      v16[3] = &unk_278935428;
      v11 = *(a1 + 32);
      v17 = v9;
      v18 = v11;
      v12 = v9;
      v13 = MEMORY[0x2383760E0](v16);
      v14 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *v15 = 0;
        _os_log_impl(&dword_231A35000, v14, OS_LOG_TYPE_INFO, "[TopHitAppShortcuts] deleteAllSearchableItems start", v15, 2u);
      }

      [*(a1 + 32) deleteHasTopHitAppShortcutsWithResultsHandler:v10 completionHandler:v13];
    }
  }
}

void __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_2_1519(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v10 = v5;
    v11 = v6;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_3_1520;
    v8[3] = &unk_278934A00;
    v9 = *(a1 + 32);
    [a5 enumerateQueryResults:1 stringCache:0 usingBlock:v8];
  }
}

void __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_3_1520(uint64_t a1, id *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (v3)
  {
    v4 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v12 = v3;
      _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_INFO, "[TopHitAppShortcuts] void flag for %@", buf, 0xCu);
    }

    v9 = *MEMORY[0x277CC2BA0];
    v10 = *MEMORY[0x277CBEEE8];
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v6 = [objc_alloc(MEMORY[0x277CC34B8]) initWithAttributes:v5];
    v7 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:v3 domainIdentifier:0 attributeSet:v6];
    [v7 setBundleID:@"com.apple.application"];
    [v7 setIsUpdate:1];
    [*(a1 + 32) addObject:v7];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_1521(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  if (v3 && [v3 count])
  {
    v4 = [*(a1 + 40) owner];
    [v4 indexSearchableItems:*(a1 + 32) deleteSearchableItemsWithIdentifiers:0 clientState:0 protectionClass:*MEMORY[0x277CCA1A0] forBundleID:@"com.apple.application" options:0 completionHandler:&__block_literal_global_1524];
  }
}

void __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_2_1522(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = logForCSLogCategoryDefault();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_2_1522_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_DEFAULT, "[TopHitAppShortcuts] deleteAllSearchableItems complete", v5, 2u);
  }
}

- (void)_deleteSearchableItemsMatchingQuery:(id)a3 forBundleIds:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sIndexQueue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __101__SPConcreteCoreSpotlightIndexer__deleteSearchableItemsMatchingQuery_forBundleIds_completionHandler___block_invoke;
  v16[3] = &unk_278934028;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  v15 = _setup_block(v16, 0, 12590);
  dispatch_async(v11, v15);
}

void __101__SPConcreteCoreSpotlightIndexer__deleteSearchableItemsMatchingQuery_forBundleIds_completionHandler___block_invoke(id *a1)
{
  v31 = *MEMORY[0x277D85DE8];
  [a1[4] readyIndex:0];
  v2 = a1[4];
  if (!v2[19] || (v2[3] & 1) != 0 || *(v2 + 120) == 1)
  {
    v3 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = a1[4];
      v5 = v4[19];
      v6 = *(v4 + 24);
      LODWORD(v4) = *(v4 + 120);
      *buf = 134218496;
      v26 = v5;
      v27 = 1024;
      v28 = v6;
      v29 = 1024;
      v30 = v4;
      _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_DEFAULT, "Cannot delete attributes in _deleteSearchableItmesMatchingQuery: index:%p suspended:%d readOnly:%d", buf, 0x18u);
    }

    if (a1[7])
    {
      v7 = [MEMORY[0x277CCAA00] defaultManager];
      v8 = [a1[4] _indexPath];
      v9 = [v7 fileExistsAtPath:v8 isDirectory:0];

      if (v9)
      {
        v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
      }

      else
      {
        v10 = 0;
      }

      (*(a1[7] + 2))();
    }

    goto LABEL_11;
  }

  if (![v2 denyOperationOnAssertedIndex:"_deleteSearchableItemsMatchingQuery"])
  {
    v16 = SDTraceAdd(3, @"DeleteMatchingQuey start", -1, a1[5], 0, 0.0);
    objc_initWeak(buf, a1[4]);
    v17 = *(a1[4] + 19);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __101__SPConcreteCoreSpotlightIndexer__deleteSearchableItemsMatchingQuery_forBundleIds_completionHandler___block_invoke_1529;
    v20[3] = &unk_278935DF0;
    v23 = a1[7];
    objc_copyWeak(v24, buf);
    v18 = a1[4];
    v24[1] = v16;
    v20[4] = v18;
    v21 = a1[5];
    v22 = a1[6];
    SIBackgroundOpBlock(v17, 0, v20);

    objc_destroyWeak(v24);
    objc_destroyWeak(buf);
LABEL_11:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  v12 = *MEMORY[0x277CC22E8];
  v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
  v13 = a1[7];
  if (v13)
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:v12 code:-1000 userInfo:0];
    v13[2](v13, v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __101__SPConcreteCoreSpotlightIndexer__deleteSearchableItemsMatchingQuery_forBundleIds_completionHandler___block_invoke_1529(uint64_t a1, void *a2, int a3)
{
  if (a3)
  {
    v4 = *(a1 + 56);
    if (v4)
    {
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
      (*(v4 + 16))(v4, v13);
    }
  }

  else
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __101__SPConcreteCoreSpotlightIndexer__deleteSearchableItemsMatchingQuery_forBundleIds_completionHandler___block_invoke_2;
    v14[3] = &unk_278935DC8;
    objc_copyWeak(v16, (a1 + 64));
    v16[1] = a2;
    v6 = *(a1 + 56);
    v7 = *(a1 + 72);
    v15 = v6;
    v16[2] = v7;
    v8 = MEMORY[0x2383760E0](v14);
    v9 = *(*(a1 + 32) + 152);
    v12 = [*(a1 + 40) UTF8String];
    SILogActivity();
    if (([*(a1 + 32) _startInternalQueryWithIndex:a2 query:*(a1 + 40) fetchAttributes:0 forBundleIds:*(a1 + 48) resultsHandler:{v8, v12}] & 1) == 0)
    {
      v10 = *(a1 + 56);
      if (v10)
      {
        v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
        (*(v10 + 16))(v10, v11);
      }
    }

    objc_destroyWeak(v16);
  }
}

uint64_t __101__SPConcreteCoreSpotlightIndexer__deleteSearchableItemsMatchingQuery_forBundleIds_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (a3 == 1)
  {
    v15 = WeakRetained;
    WeakRetained = [WeakRetained index];
    if (WeakRetained == *(a1 + 48))
    {
      SDTraceAdd(3, @"DeleteMatchingQuey complete", *(a1 + 56), 0, 0, 0.0);
      WeakRetained = *(a1 + 32);
      v6 = v15;
      if (!WeakRetained)
      {
        goto LABEL_14;
      }

      WeakRetained = WeakRetained[2](WeakRetained, 0);
    }

    else
    {
      v12 = *(a1 + 32);
      v6 = v15;
      if (!v12)
      {
        goto LABEL_14;
      }

      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
      (*(v12 + 16))(v12, v13);
    }

    goto LABEL_13;
  }

  if (!a3)
  {
    v15 = WeakRetained;
    WeakRetained = [WeakRetained index];
    v6 = v15;
    if (WeakRetained == *(a1 + 48))
    {
      WeakRetained = _MDStoreOIDArrayGetVectorCount();
      v6 = v15;
      if (WeakRetained >= 2)
      {
        v7 = WeakRetained;
        v8 = *(a1 + 48);
        v9 = (_MDStoreOIDArrayGetVector() + 8);
        v10 = v7 - 1;
        do
        {
          v11 = *v9++;
          MEMORY[0x238374D70](v8, v11);
          --v10;
        }

        while (v10);
        WeakRetained = [v15 dirty];
LABEL_13:
        v6 = v15;
      }
    }
  }

LABEL_14:

  return MEMORY[0x2821F96F8](WeakRetained, v6);
}

- (void)deleteSearchableItemsSinceDate:(id)a3 forBundleID:(id)a4 completionHandler:(id)a5
{
  v28[1] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = MEMORY[0x277CCAAB0];
  v10 = a5;
  v11 = a3;
  v12 = [v9 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:0];
  index = self->_index;
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __95__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsSinceDate_forBundleID_completionHandler___block_invoke;
  v25 = &unk_2789351D8;
  v26 = v8;
  v27 = v12;
  v14 = v12;
  v15 = v8;
  SIBackgroundOpBlock(index, 9, &v22);
  v16 = MEMORY[0x277CCACA8];
  [v11 timeIntervalSinceReferenceDate];
  v18 = v17;

  v19 = [v16 stringWithFormat:@"_kMDItemBundleID = %@ && kMDItemCreationDate>=$time.absolute(%f)", v15, v18, v22, v23, v24, v25];
  v28[0] = v15;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  [(SPConcreteCoreSpotlightIndexer *)self _deleteSearchableItemsMatchingQuery:v19 forBundleIds:v20 completionHandler:v10];

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __95__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsSinceDate_forBundleID_completionHandler___block_invoke(uint64_t result, uint64_t a2, int a3)
{
  if (!a3)
  {
    v4 = result;
    v5 = *(result + 32);
    [*(result + 40) length];
    [*(v4 + 40) bytes];

    return SILogBulkDeleteEvent();
  }

  return result;
}

- (void)deleteActionsBeforeTime:(double)a3 completionHandler:(id)a4
{
  v6 = MEMORY[0x277CCACA8];
  v7 = a4;
  v8 = [v6 stringWithFormat:@"_kMDItemUserActivityType=* && kMDItemContentType=com.apple.siri.* && kMDItemContentCreationDate<$time.absolute(%f)", *&a3];
  [(SPConcreteCoreSpotlightIndexer *)self _deleteSearchableItemsMatchingQuery:v8 forBundleIds:0 completionHandler:v7];
}

- (void)deleteActionsWithIdentifiers:(id)a3 completionHandler:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = objc_msgSend(MEMORY[0x277CCAB68], "stringWithFormat:", @"_kMDItemUserActivityType=* && kMDItemContentType=com.apple.siri.* && FieldMatch(kMDItemIdentifier");
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        v13 = 0;
        do
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [v8 appendFormat:@", %@", *(*(&v16 + 1) + 8 * v13++)];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }

    [v8 appendString:@""]);
    [(SPConcreteCoreSpotlightIndexer *)self _deleteSearchableItemsMatchingQuery:v8 forBundleIds:0 completionHandler:v7];
  }

  else if (v7)
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    v7[2](v7, v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)deleteAllInteractionsWithBundleID:(id)a3 completionHandler:(id)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"_kMDItemBundleID = %@ && _kMDItemUserActivityType=* && kMDItemContentType=com.apple.siri.*", v6];
    v12[0] = v6;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    [(SPConcreteCoreSpotlightIndexer *)self _deleteSearchableItemsMatchingQuery:v8 forBundleIds:v9 completionHandler:v7];
  }

  else if (v7)
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    v7[2](v7, v10);
  }

  v11 = *MEMORY[0x277D85DE8];
}

+ (id)_stateInfoAttributeNameWithClientStateName:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = [[v3 alloc] initWithFormat:@"_kMDItemStateInfo_%@", v4];

  return v5;
}

- (void)_sendPhotosNilClientStateSignpost:(__SI *)a3 retCode:(int)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = (2 * a4) | 1;
  if (self->_creationDate < 0)
  {
    v13 = 0;
  }

  else
  {
    v7 = time(0) - self->_creationDate;
    if (v7 >= 0x15181)
    {
      v8 = 112;
    }

    else
    {
      v8 = 96;
    }

    if (v7 >= 0xA8C1)
    {
      v9 = v8;
    }

    else
    {
      v9 = 80;
    }

    if (v7 >= 0x2A31)
    {
      v10 = v9;
    }

    else
    {
      v10 = 64;
    }

    if (v7 >= 0xE11)
    {
      v11 = v10;
    }

    else
    {
      v11 = 48;
    }

    if (v7 >= 0x259)
    {
      v12 = v11;
    }

    else
    {
      v12 = 32;
    }

    if (v7 >= 61)
    {
      v13 = v12;
    }

    else
    {
      v13 = 16;
    }
  }

  v14 = v24;
  v15 = *(v24 + 6) | v13;
  *(v24 + 6) = v15;
  if (self->_aggregateWipeCount >= 1)
  {
    *(v14 + 6) = v15 | 0x100;
  }

  if (a3 && (a4 & 0xFFFFFFFB) != 0)
  {
    SIFetchClientsMetaInfo();
  }

  else
  {
    v16 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(v24 + 6);
      *buf = 136315394;
      v28 = "photos_nil_cs_signpost";
      v29 = 1024;
      v30 = v17;
      _os_log_impl(&dword_231A35000, v16, OS_LOG_TYPE_DEFAULT, "Emitting %s signpost with sid: %d", buf, 0x12u);
    }

    v18 = logForCSSignpostPhotosNilCS();
    v19 = logForCSSignpostPhotosNilCS();
    v20 = os_signpost_id_generate(v19);

    if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      v21 = *(v24 + 6);
      *buf = 67109120;
      LODWORD(v28) = v21;
      _os_signpost_emit_with_name_impl(&dword_231A35000, v18, OS_SIGNPOST_EVENT, v20, "photos_nil_cs_signpost", " enableTelemetry=YES indexState=%{signpost.telemetry:number1}d", buf, 8u);
    }
  }

  _Block_object_dispose(&v23, 8);
  v22 = *MEMORY[0x277D85DE8];
}

void __76__SPConcreteCoreSpotlightIndexer__sendPhotosNilClientStateSignpost_retCode___block_invoke(uint64_t a1, int a2, int a3, int a4)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a2 >= 7)
  {
    v5 = 7;
  }

  else
  {
    v5 = a2;
  }

  if (a3 >= 7)
  {
    v6 = 7;
  }

  else
  {
    v6 = a3;
  }

  if (a4 >= 7)
  {
    v7 = 7;
  }

  else
  {
    v7 = a4;
  }

  *(*(*(a1 + 32) + 8) + 24) |= v5 << 9;
  *(*(*(a1 + 32) + 8) + 24) |= v6 << 12;
  *(*(*(a1 + 32) + 8) + 24) |= v7 << 15;
  v8 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(*(*(a1 + 32) + 8) + 24);
    v15 = 136315394;
    v16 = "photos_nil_cs_signpost";
    v17 = 1024;
    v18 = v9;
    _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_DEFAULT, "Emitting %s signpost with sid: %d", &v15, 0x12u);
  }

  v10 = logForCSSignpostPhotosNilCS();
  v11 = logForCSSignpostPhotosNilCS();
  v12 = os_signpost_id_generate(v11);

  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = *(*(*(a1 + 32) + 8) + 24);
    v15 = 67109120;
    LODWORD(v16) = v13;
    _os_signpost_emit_with_name_impl(&dword_231A35000, v10, OS_SIGNPOST_EVENT, v12, "photos_nil_cs_signpost", " enableTelemetry=YES indexState=%{signpost.telemetry:number1}d", &v15, 8u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)fetchLastClientStateForBundleID:(id)a3 clientStateName:(id)a4 options:(int64_t)a5 completionHandler:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [SPConcreteCoreSpotlightIndexer fetchLastClientStateForBundleID:clientStateName:options:completionHandler:];
  }

  v14 = sIndexQueue;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __108__SPConcreteCoreSpotlightIndexer_fetchLastClientStateForBundleID_clientStateName_options_completionHandler___block_invoke;
  v19[3] = &unk_278935E90;
  v24 = (v7 & 0x20000) != 0;
  v20 = v10;
  v21 = self;
  v22 = v11;
  v23 = v12;
  v15 = v11;
  v16 = v12;
  v17 = v10;
  v18 = _setup_block(v19, 0, 12874);
  dispatch_async(v14, v18);
}

void __108__SPConcreteCoreSpotlightIndexer_fetchLastClientStateForBundleID_clientStateName_options_completionHandler___block_invoke(uint64_t a1)
{
  if (![*(a1 + 32) length])
  {
    v5 = *(a1 + 64);
    v6 = *(a1 + 56);
    if (v5 == 1)
    {
      v7 = -2009;
    }

    else
    {
      v7 = -1;
    }

    v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:v7 userInfo:0];
    (*(v6 + 16))(v6, 0, v23);
    goto LABEL_23;
  }

  v2 = (a1 + 40);
  [*(a1 + 40) readyIndex:1];
  v3 = *(a1 + 40);
  if (*(v3 + 19))
  {
    if ((v3[24] & 1) == 0 && (v3[26] & 1) == 0)
    {
      v4 = 0;
      goto LABEL_14;
    }
  }

  else if (!*(v3 + 20) && v3[96] != 1)
  {
    goto LABEL_20;
  }

  if (!_os_feature_enabled_impl() || (v8 = *MEMORY[0x277CCA190], ([*(*v2 + 24) isEqualToString:*MEMORY[0x277CCA190]] & 1) == 0))
  {
LABEL_20:
    v19 = *(a1 + 56);
    v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    (*(v19 + 16))(v19, 0, v23);
LABEL_23:

    return;
  }

  v3 = *v2;
  if (*(*v2 + 19))
  {
LABEL_13:
    v4 = 1;
LABEL_14:
    if (!*(v3 + 20))
    {
LABEL_15:
      v9 = [v3 dataclass];
      v10 = SDTraceAdd(3, @"FetchClientState start", -1, v9, *(a1 + 32), 0.0);
      v11 = *(a1 + 40);
      v12 = [objc_opt_class() _stateInfoAttributeNameWithClientStateName:*(a1 + 48)];
      v13 = *(a1 + 40);
      v14 = *(v13 + 152);
      if (!v14)
      {
        v14 = *(v13 + 160);
      }

      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __108__SPConcreteCoreSpotlightIndexer_fetchLastClientStateForBundleID_clientStateName_options_completionHandler___block_invoke_2;
      v24[3] = &unk_278935E68;
      v25 = *(a1 + 32);
      v26 = v12;
      v31 = v4;
      v32 = *(a1 + 64);
      v15 = *(a1 + 56);
      v16 = *(a1 + 40);
      v29 = v15;
      v30 = v10;
      v27 = v16;
      v28 = v9;
      v17 = v9;
      v18 = v12;
      SIBackgroundOpBlock(v14, 9, v24);

      goto LABEL_18;
    }

    goto LABEL_42;
  }

  if (*(v3 + 20))
  {
LABEL_27:
    if (*(v3 + 20))
    {
      v4 = 1;
      goto LABEL_15;
    }

LABEL_42:
    __108__SPConcreteCoreSpotlightIndexer_fetchLastClientStateForBundleID_clientStateName_options_completionHandler___block_invoke_cold_2();
  }

  if (_os_feature_enabled_impl() && ([*(*v2 + 24) isEqualToString:v8] & 1) != 0)
  {
    [*v2 openJWLIndex];
    v3 = *v2;
    if (*(*v2 + 20))
    {
      if (*(v3 + 19))
      {
        goto LABEL_13;
      }

      goto LABEL_27;
    }

    v22 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_cold_5();
    }
  }

  else
  {
    v20 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_cold_2(a1 + 40);
    }
  }

  v21 = *(a1 + 56);
  if (v21)
  {
    v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    (*(v21 + 16))(v21, 0, v18);
LABEL_18:
  }
}

void __108__SPConcreteCoreSpotlightIndexer_fetchLastClientStateForBundleID_clientStateName_options_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v4 = *(a1 + 64);
    if (*(a1 + 81) == 1)
    {
      v5 = -2013;
    }

    else
    {
      v5 = -1;
    }

    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:v5 userInfo:0];
    (*(v4 + 16))(v4, 0, v8);
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 80);
    v9 = *(a1 + 32);
    v14 = *(a1 + 81);
    v12 = *(a1 + 64);
    v10 = *(a1 + 48);
    v13 = *(a1 + 72);
    v11 = *(a1 + 56);
    SIFetchCSClientState();
  }
}

void __108__SPConcreteCoreSpotlightIndexer_fetchLastClientStateForBundleID_clientStateName_options_completionHandler___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v43 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = a2;
    if (a3)
    {
      __108__SPConcreteCoreSpotlightIndexer_fetchLastClientStateForBundleID_clientStateName_options_completionHandler___block_invoke_3_cold_1();
    }

    v6 = v5;
    v7 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *&v8 = COERCE_DOUBLE([v6 length]);
      v9 = *(a1 + 32);
      *buf = 134218242;
      v40 = *&v8;
      v41 = 2112;
      v42 = v9;
      _os_log_impl(&dword_231A35000, v7, OS_LOG_TYPE_DEFAULT, "#index fetch state dataLen:%ld bundle:%@", buf, 0x16u);
    }

    if ([v6 length])
    {
      v10 = @"ClientState complete";
    }

    else
    {
      v10 = @"ClientState empty data";
    }

    SDTraceAdd(3, v10, *(a1 + 72), *(a1 + 48), *(a1 + 32), 0.0);
    if (![v6 length] && objc_msgSend(*(a1 + 32), "isEqualToString:", @"com.apple.mobileslideshow"))
    {
      [*(a1 + 40) _sendPhotosNilClientStateSignpost:*(a1 + 64) retCode:0];
    }

    v38 = 0;
    v37 = 0;
    v36 = 0;
    [*(a1 + 40) checkAdmission:*(a1 + 32) background:0 didBeginThrottle:&v38 + 1 didEndThrottle:&v38 live:&v37 + 1 slow:&v37 memoryPressure:&v36];
    if (v37 == 1)
    {
      v11 = logForCSLogCategoryIndex();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [v6 length];
        v13 = 0.01;
        v14 = 1.0;
        if (v12)
        {
          v14 = 0.01;
        }

        if (!HIBYTE(v37))
        {
          v13 = 0.1;
        }

        *buf = 134217984;
        v40 = v14 + v13;
        _os_log_impl(&dword_231A35000, v11, OS_LOG_TYPE_INFO, "Slow client state fetch reply by %f seconds", buf, 0xCu);
      }

      v15 = [v6 length];
      v16 = 0.01;
      v17 = 1.0;
      if (v15)
      {
        v17 = 0.01;
      }

      if (!HIBYTE(v37))
      {
        v16 = 0.1;
      }

      v18 = dispatch_time(0, ((v17 + v16) * 1000000000.0));
      v19 = *(*(a1 + 40) + 176);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __108__SPConcreteCoreSpotlightIndexer_fetchLastClientStateForBundleID_clientStateName_options_completionHandler___block_invoke_1569;
      block[3] = &unk_278935310;
      v34 = *(a1 + 56);
      v32 = v6;
      v35 = HIBYTE(v38);
      v30 = *(a1 + 32);
      v20 = v30.i64[0];
      v33 = vextq_s8(v30, v30, 8uLL);
      dispatch_after(v18, v19, block);

      v21 = v34;
    }

    else
    {
      (*(*(a1 + 56) + 16))();
      if (v38 != 1)
      {
LABEL_33:

        goto LABEL_34;
      }

      v25 = [*(a1 + 40) owner];
      v21 = [v25 extensionDelegate];

      if (v21)
      {
        v26 = [objc_alloc(MEMORY[0x277CC3420]) initWithJobType:5 jobOptions:0];
        [v21 indexRequestsPerformJob:v26 forBundle:*(a1 + 32) completionHandler:0];
      }
    }

    goto LABEL_33;
  }

  v22 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = *(a1 + 32);
    *buf = 138412546;
    v40 = v23;
    v41 = 1024;
    LODWORD(v42) = a3;
    _os_log_impl(&dword_231A35000, v22, OS_LOG_TYPE_DEFAULT, "SIFetchCSClientState nil for bundleID:%@ retCode:%d", buf, 0x12u);
  }

  if (*(a1 + 80))
  {
    if (a3 > 1)
    {
      switch(a3)
      {
        case 2:
          v24 = -2011;
          goto LABEL_48;
        case 3:
          v24 = -2012;
          goto LABEL_48;
        case 4:
          v24 = -2013;
          goto LABEL_48;
      }
    }

    else
    {
      if (a3 == 1)
      {
        v24 = -2010;
        goto LABEL_48;
      }

      if (!a3)
      {
        __108__SPConcreteCoreSpotlightIndexer_fetchLastClientStateForBundleID_clientStateName_options_completionHandler___block_invoke_3_cold_2();
      }
    }

    v24 = -1;
LABEL_48:
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:v24 userInfo:0];
    (*(*(a1 + 56) + 16))();
    if ([*(a1 + 32) isEqualToString:@"com.apple.mobileslideshow"])
    {
      [*(a1 + 40) _sendPhotosNilClientStateSignpost:*(a1 + 64) retCode:a3];
    }

    goto LABEL_33;
  }

  v28 = *(a1 + 56);
  if (a3 == 4)
  {
    v29 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1 userInfo:0];
    (*(v28 + 16))(v28, 0, v29);
  }

  else
  {
    (*(v28 + 16))(*(a1 + 56), 0, 0);
  }

  if ([*(a1 + 32) isEqualToString:@"com.apple.mobileslideshow"])
  {
    [*(a1 + 40) _sendPhotosNilClientStateSignpost:*(a1 + 64) retCode:a3];
  }

LABEL_34:
  v27 = *MEMORY[0x277D85DE8];
}

void __108__SPConcreteCoreSpotlightIndexer_fetchLastClientStateForBundleID_clientStateName_options_completionHandler___block_invoke_1569(uint64_t a1)
{
  v2 = *(a1 + 32);
  (*(*(a1 + 56) + 16))();
  if (*(a1 + 64) == 1)
  {
    v3 = [*(a1 + 40) owner];
    v5 = [v3 extensionDelegate];

    if (v5)
    {
      v4 = [objc_alloc(MEMORY[0x277CC3420]) initWithJobType:4 jobOptions:0];
      [v5 indexRequestsPerformJob:v4 forBundle:*(a1 + 48) completionHandler:0];
    }
  }
}

- (void)changeStateOfSearchableItemsWithUIDs:(id)a3 toState:(int64_t)a4 forBundleID:(id)a5
{
  if (a4 == 2)
  {
    [(SPConcreteCoreSpotlightIndexer *)self indexSearchableItems:0 deleteSearchableItemsWithIdentifiers:a3 clientState:0 expectedClientState:0 clientStateName:0 forBundleID:a5 options:0 completionHandler:0, v5, v6];
  }
}

- (void)fetchCacheFileDescriptorsForBundleID:(id)a3 identifiers:(id)a4 userCtx:(id)a5 flags:(int)a6 completionHandler:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  [(SPConcreteCoreSpotlightIndexer *)self readyIndex:0];
  if (self->_index && !self->_suspended && !self->_suspending)
  {
    if ([(SPConcreteCoreSpotlightIndexer *)self denyOperationOnAssertedIndex:"fetchCacheFileDescriptors"])
    {
      v15 = *MEMORY[0x277CC22E8];
      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
      if (v14)
      {
        v17 = [MEMORY[0x277CCA9B8] errorWithDomain:v15 code:-1000 userInfo:0];
        v14[2](v14, 0, v17);
      }

      goto LABEL_15;
    }

    v18 = objc_autoreleasePoolPush();
    if (self->_index && [v11 length])
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __115__SPConcreteCoreSpotlightIndexer_fetchCacheFileDescriptorsForBundleID_identifiers_userCtx_flags_completionHandler___block_invoke;
      v21[3] = &unk_278935EB8;
      v14 = v14;
      v22 = v14;
      v19 = MEMORY[0x2383760E0](v21);
      index = self->_index;
      if (!SIGetCacheFileDescriptors())
      {

        v14 = 0;
      }
    }

    objc_autoreleasePoolPop(v18);
  }

  if (v14)
  {
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    v14[2](v14, 0, v16);
LABEL_15:
  }
}

- (void)fetchAttributes:(id)a3 bundleID:(id)a4 identifiers:(id)a5 userCtx:(id)a6 flags:(int)a7 completionHandler:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  [(SPConcreteCoreSpotlightIndexer *)self readyIndex:0];
  if (self->_index && !self->_suspended && !self->_suspending)
  {
    if ([(SPConcreteCoreSpotlightIndexer *)self denyOperationOnAssertedIndex:"fetchAttributes"])
    {
      v18 = *MEMORY[0x277CC22E8];
      v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
      if (v17)
      {
        v20 = [MEMORY[0x277CCA9B8] errorWithDomain:v18 code:-1000 userInfo:0];
        v17[2](v17, 0, v20);
      }

      goto LABEL_15;
    }

    v21 = objc_autoreleasePoolPush();
    if (self->_index && [v14 length])
    {
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __103__SPConcreteCoreSpotlightIndexer_fetchAttributes_bundleID_identifiers_userCtx_flags_completionHandler___block_invoke;
      v24[3] = &unk_278935EE0;
      v17 = v17;
      v25 = v17;
      v22 = MEMORY[0x2383760E0](v24);
      index = self->_index;
      if (!SIGetCSAttributes())
      {

        v17 = 0;
      }
    }

    objc_autoreleasePoolPop(v21);
  }

  if (v17)
  {
    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    v17[2](v17, 0, v19);
LABEL_15:
  }
}

void __96__SPConcreteCoreSpotlightIndexer_fetchAttributes_bundleID_identifiers_userCtx_flags_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = 0;
  if (a2 && !a3)
  {
    v4 = _MDPlistBytesCopyPlistAtIndex();
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [*(a1 + 32) count], objc_msgSend(v4, "count") - 1 == v5))
    {
      v12 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v5];
      v6 = [*(a1 + 40) count];
      if (v5)
      {
        v7 = v6;
        v8 = 0;
        do
        {
          v9 = v8 + 1;
          v10 = [v4 objectAtIndexedSubscript:v8 + 1];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && v7 == [v10 count])
          {
            v11 = [*(a1 + 32) objectAtIndexedSubscript:v8];
            [v12 setObject:v10 forKeyedSubscript:v11];
          }

          v8 = v9;
        }

        while (v5 != v9);
      }
    }

    else
    {
      v12 = 0;
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (void)attributesForBundleId:(id)a3 identifier:(id)a4 completion:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v17 = v9;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_231A35000, v11, OS_LOG_TYPE_INFO, "Fetching all the attributes for identifier:%@, bundleID:%@", buf, 0x16u);
  }

  if (v8 && v9)
  {
    index = self->_index;
    v15 = v9;
    [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
    v13 = v10;
    if (SIGetCSAttributes())
    {
      v13[2](v13, 0);
    }
  }

  else
  {
    (*(v10 + 2))(v10, 0);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __78__SPConcreteCoreSpotlightIndexer_attributesForBundleId_identifier_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2 || (v3 = _MDPlistBytesCopyPlistAtIndex()) == 0)
  {
    v7 = 0;
LABEL_10:
    v4 = 0;
    goto LABEL_11;
  }

  v7 = v3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [v7 count] < 2)
  {
    goto LABEL_10;
  }

  v4 = [v7 objectAtIndex:1];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v4 count])
      {
        v5 = *(a1 + 32);
        v6 = [v4 objectAtIndexedSubscript:0];
        (*(v5 + 16))(v5, v6);

        goto LABEL_12;
      }
    }
  }

LABEL_11:
  (*(*(a1 + 32) + 16))();
LABEL_12:
}

- (void)powerStateChanged
{
  if ((gIsSystemOnBattery & 1) == 0)
  {
    group = dispatch_group_create();
    [(SPConcreteCoreSpotlightIndexer *)self revokeExpiredItems:group activity:0];
    v4 = sIndexQueue;
    v5 = _setup_block(&__block_literal_global_1579, 0, 13023);
    dispatch_group_notify(group, v4, v5);
  }
}

void __51__SPConcreteCoreSpotlightIndexer_powerStateChanged__block_invoke()
{
  v0 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_231A35000, v0, OS_LOG_TYPE_INFO, "Revoke completed.", v1, 2u);
  }
}

- (BOOL)_shouldNotifyForSearchableItemUpdates:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"com.apple.mobilemail"])
  {
    v4 = _os_feature_enabled_impl();
  }

  else
  {
    v4 = 0;
  }

  if ([v3 isEqualToString:@"com.apple.MobileSMS"])
  {
    v5 = _os_feature_enabled_impl();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 isEqualToString:@"com.apple.usernotificationsd"];
  if (v6)
  {
    LOBYTE(v6) = _os_feature_enabled_impl();
  }

  if (v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5 | v6;
  }

  return v7 & 1;
}

- (BOOL)_startInternalQueryWithIndex:(__SI *)a3 query:(id)a4 fetchAttributes:(id)a5 forBundleIds:(id)a6 maxCount:(unint64_t)a7 resultsHandler:(id)a8 resultQueue:(id)a9 postFilter:(id)a10 clientBundleID:(id)a11
{
  v67[2] = *MEMORY[0x277D85DE8];
  v16 = a4;
  v47 = a5;
  v17 = a6;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v21 = a11;
  if (!v19)
  {
    v19 = [SPQueryResultsQueue sharedInstanceMaintenanceDispatchQueue:0];
  }

  [v19 siResultsQueue];
  if (!a3 || self->_suspended || self->_suspending)
  {
    v22 = logForCSLogCategoryQuery();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v36 = "NO";
      suspending = self->_suspending;
      if (self->_suspended)
      {
        v38 = "YES";
      }

      else
      {
        v38 = "NO";
      }

      *buf = 138413058;
      if (suspending)
      {
        v36 = "YES";
      }

      v56 = v16;
      v57 = 2048;
      v58 = a3;
      v59 = 2080;
      v60 = v38;
      v61 = 2080;
      v62 = v36;
      _os_log_error_impl(&dword_231A35000, v22, OS_LOG_TYPE_ERROR, "Failed to execute internal query:%@, index:%p, _suspended:%s, _suspending:%s", buf, 0x2Au);
    }
  }

  else
  {
    if ([(SPConcreteCoreSpotlightIndexer *)self denyOperationOnAssertedIndex:"_startInternalQueryWithIndex"])
    {
      v23 = 0;
      goto LABEL_9;
    }

    v46 = v17;
    add = atomic_fetch_add(&gQueryID_0, 1u);
    v26 = *MEMORY[0x277CBECE8];
    v27 = SIUserCtxCreateWithLanguages();
    SIUserCtxSetEntitlements();
    v28 = SIQueryCreateWithItems();
    CFRelease(v27);
    if (!v28)
    {
      v22 = logForCSLogCategoryQuery();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v56 = v16;
        v57 = 2048;
        v58 = a3;
        v59 = 2048;
        v60 = add;
        _os_log_error_impl(&dword_231A35000, v22, OS_LOG_TYPE_ERROR, "Failed to create internal query:%@, index:%p, queryID:%ld", buf, 0x20u);
      }

      v23 = 0;
      v17 = v46;
      goto LABEL_8;
    }

    dataclass = self->_dataclass;
    v67[0] = @"query";
    v67[1] = dataclass;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:{2, 0, 0, v20, 0, v21}];
    SDTransactionCreate(v30);
    v22 = v45 = v28;

    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v32 = v31;
    v17 = v46;
    v33 = SIExecuteQueryWithResultsCallbackForTags();
    if (v33)
    {
      v43 = v33;
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __160__SPConcreteCoreSpotlightIndexer__startInternalQueryWithIndex_query_fetchAttributes_forBundleIds_maxCount_resultsHandler_resultQueue_postFilter_clientBundleID___block_invoke;
      v48[3] = &unk_278935F30;
      v51 = v18;
      v52 = v32;
      v54 = add;
      v41 = v16;
      v49 = v41;
      v53 = v45;
      v22 = v22;
      v50 = v22;
      v42 = [v48 copy];
      v34 = logForCSLogCategoryQuery();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        v40 = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
        *buf = 138413570;
        v56 = v41;
        v57 = 2048;
        v58 = a3;
        v59 = 2048;
        v60 = v45;
        v61 = 2048;
        v62 = v43;
        v63 = 2048;
        v64 = add;
        v65 = 2112;
        v66 = v40;
        _os_log_debug_impl(&dword_231A35000, v34, OS_LOG_TYPE_DEBUG, "Starting internal query:%@, index:%p, siQuery:%p, siJob:%p, queryID:%ld, dataclass:%@", buf, 0x3Eu);

        v17 = v46;
      }

      v35 = [[SPQueryJob alloc] initWithSIJob:v43 dataclass:self->_dataclass eventHandler:0 resultsHandler:v42];
      [v19 addJob:v35];
      v23 = v35 != 0;

      goto LABEL_8;
    }

    v39 = logForCSLogCategoryQuery();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      v56 = v16;
      v57 = 2048;
      v58 = a3;
      v59 = 2048;
      v60 = v45;
      v61 = 2048;
      v62 = add;
      _os_log_error_impl(&dword_231A35000, v39, OS_LOG_TYPE_ERROR, "Failed to execute query:%@, index:%p, siQuery:%p, queryID:%ld", buf, 0x2Au);
    }

    SIQueryRelease();
    SDTransactionDone(v22);
  }

  v23 = 0;
LABEL_8:

LABEL_9:
  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

void __160__SPConcreteCoreSpotlightIndexer__startInternalQueryWithIndex_query_fetchAttributes_forBundleIds_maxCount_resultsHandler_resultQueue_postFilter_clientBundleID___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = *(a1 + 48);
  if (v12)
  {
    (*(v12 + 16))(v12, v11, a3, a4, a5, a6);
  }

  if (a3 == 1)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v14 = v13 - *(a1 + 56);
    v15 = [v11 dataclass];
    SDTraceAdd(2, v15, *(a1 + 72), *(a1 + 32), 0, v14);

    v16 = logForCSLogCategoryQuery();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v19 = *(a1 + 64);
      v20 = [v11 siJob];
      v21 = *(a1 + 72);
      v22 = 134218752;
      v23 = (v14 * 1000.0);
      v24 = 2048;
      v25 = v19;
      v26 = 2048;
      v27 = v20;
      v28 = 2048;
      v29 = v21;
      _os_log_debug_impl(&dword_231A35000, v16, OS_LOG_TYPE_DEBUG, "Finished internal query (%lldms), siQuery:%p, siJob:%p, queryID:%ld", &v22, 0x2Au);
    }

    v17 = *(a1 + 64);
    SIQueryRelease();
    SDTransactionDone(*(a1 + 40));
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_fetchAccumulatedStorageSizeForBundleId:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    [SPConcreteCoreSpotlightIndexer _fetchAccumulatedStorageSizeForBundleId:completionHandler:];
  }

  v8 = v7;
  [(SPConcreteCoreSpotlightIndexer *)self readyIndex:0];
  index = self->_index;
  if (index && !self->_suspended)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __92__SPConcreteCoreSpotlightIndexer__fetchAccumulatedStorageSizeForBundleId_completionHandler___block_invoke;
    v11[3] = &unk_278935F58;
    v11[4] = self;
    v13 = v8;
    v12 = v6;
    SIBackgroundOpBlock(index, 0, v11);
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    (v8)[2](v8, 0, v10);
  }
}

void __92__SPConcreteCoreSpotlightIndexer__fetchAccumulatedStorageSizeForBundleId_completionHandler___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3 && [*(a1 + 32) index] == a2)
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 152);
    if (SIGetAccumulatedStorageSizeForBundleId())
    {
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:0];
    }

    else
    {
      v6 = 0;
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    (*(*(a1 + 48) + 16))();
  }
}

+ (id)_setOfTokensToCorrect:(id)a3 tokenMatchInfo:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [SPConcreteCoreSpotlightIndexer _lastTokenWithQueryString:a3 tokenMatchInfo:v5];
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v8 = v7;
  if (v6)
  {
    v20 = v7;
    v23 = [v5 count];
    v9 = [v5 allKeys];
    v10 = [v9 mutableCopy];

    [v10 removeObject:v6];
    [v10 addObject:v6];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = v10;
    v11 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v22 = *v25;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v25 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          v16 = [v5 objectForKeyedSubscript:v15];
          if (+[SPConcreteCoreSpotlightIndexer _spellingCorrectionConditional:isSingleToken:isPreviousTokenCorrected:isLastToken:tokenLength:](SPConcreteCoreSpotlightIndexer, "_spellingCorrectionConditional:isSingleToken:isPreviousTokenCorrected:isLastToken:tokenLength:", [v16 intValue], v23 == 1, v13 & 1, objc_msgSend(v15, "isEqualToString:", v6), objc_msgSend(v15, "length")))
          {
            [v20 addObject:v15];
            v13 = 1;
          }
        }

        v12 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v12);
    }

    v8 = v20;
    v17 = [v20 copy];
  }

  else
  {
    v17 = v7;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)_tokensMaxCountFromMatchInfo:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if ([v3 count])
  {
    v34 = 0;
    v4 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(\\S+)cdw" options:1 error:&v34];
    v25 = v34;
    v26 = v3;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = v3;
    v5 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (!v5)
    {
      goto LABEL_19;
    }

    v6 = v5;
    v7 = *v31;
    v27 = v4;
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        v10 = [v4 firstMatchInString:v9 options:0 range:{0, objc_msgSend(v9, "length")}];
        v11 = v10;
        if (v10)
        {
          v12 = [v10 rangeAtIndex:1];
          v14 = [v9 substringWithRange:{v12, v13}];
          if ([v14 length])
          {
            if ([v14 characterAtIndex:{objc_msgSend(v14, "length") - 1}] != 42)
            {
              goto LABEL_12;
            }

            if ([v14 length] != 1)
            {
              v15 = [v14 substringToIndex:{objc_msgSend(v14, "length") - 1}];

              v14 = v15;
LABEL_12:
              v16 = MEMORY[0x277CCABB0];
              v17 = [v28 objectForKeyedSubscript:v14];
              v18 = [v17 intValue];

              v19 = [obj objectForKeyedSubscript:v9];
              v20 = [v19 intValue];

              if (v18 <= v20)
              {
                v21 = v20;
              }

              else
              {
                v21 = v18;
              }

              v22 = [v16 numberWithInt:v21];
              [v28 setObject:v22 forKeyedSubscript:v14];

              v4 = v27;
            }
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (!v6)
      {
LABEL_19:

        v3 = v26;
        break;
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];

  return v28;
}

+ (id)_sharedSynonyms
{
  if (_sharedSynonyms_onceToken != -1)
  {
    +[SPConcreteCoreSpotlightIndexer _sharedSynonyms];
  }

  v3 = _sharedSynonyms_synonyms;

  return v3;
}

uint64_t __49__SPConcreteCoreSpotlightIndexer__sharedSynonyms__block_invoke()
{
  v0 = objc_alloc_init(SDPommesSynonyms);
  v1 = _sharedSynonyms_synonyms;
  _sharedSynonyms_synonyms = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)_stringWithRewriteType:(int64_t)a3
{
  if ((a3 - 1) > 3)
  {
    return @"None";
  }

  else
  {
    return off_278937348[a3 - 1];
  }
}

+ (id)_descriptionWithTokenRewrites:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"{\n"];
  v6 = CSRedactString(v5, 0);

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v4;
  v25 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v25)
  {
    v24 = *v32;
    do
    {
      v7 = 0;
      do
      {
        if (*v32 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = v7;
        v8 = *(*(&v31 + 1) + 8 * v7);
        v9 = [v8 originalToken];
        v10 = CSRedactString(v9, 0);
        [v6 appendFormat:@"  %@ -->\n", v10];

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v11 = [v8 variations];
        v12 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v28;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v28 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v27 + 1) + 8 * i);
              v17 = [v16 variation];
              v18 = CSRedactString(v17, 0);
              v19 = [a1 _stringWithRewriteType:{objc_msgSend(v16, "type")}];
              v20 = CSRedactString(v19, 0);
              [v6 appendFormat:@"    %@ (%@)\n", v18, v20];
            }

            v13 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
          }

          while (v13);
        }

        v7 = v26 + 1;
      }

      while (v26 + 1 != v25);
      v25 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v25);
  }

  [v6 appendString:@"}"];
  v21 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (BOOL)_spellingCorrectionConditional:(int)a3 isSingleToken:(BOOL)a4 isPreviousTokenCorrected:(BOOL)a5 isLastToken:(BOOL)a6 tokenLength:(unint64_t)a7
{
  v7 = a3 < 3 && a6;
  v8 = v7 & ~(a4 || a5);
  if (a7 <= 3)
  {
    v8 = 0;
  }

  return !a3 || v8;
}

+ (id)_lastTokenWithQueryString:(id)a3 tokenMatchInfo:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ([v6 count] && objc_msgSend(v5, "length"))
  {
    v7 = [v5 length];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v21 = v6;
    obj = [v6 allKeys];
    v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v24;
      v12 = -1;
LABEL_5:
      v13 = 0;
      while (1)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v23 + 1) + 8 * v13);
        v15 = [v5 lowercaseString];
        v16 = [v15 rangeOfString:v14 options:4 range:{0, v7}];

        if (v16 != 0x7FFFFFFFFFFFFFFFLL)
        {
          if (v16 > v12)
          {
            v17 = v14;

            v10 = v17;
            v12 = v16;
          }

          v18 = [v14 length] + v16;
          if (v18 >= [v5 length])
          {
            break;
          }
        }

        if (v9 == ++v13)
        {
          v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v9)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    else
    {
      v10 = 0;
    }

    v6 = v21;
  }

  else
  {
    v10 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)_indexIndependentTokenRewritesWithMatchInfo:(id)a3 queryID:(int64_t)a4 setOfTokensToCorrect:(id)a5
{
  v5 = MEMORY[0x277CBEB18];
  v6 = a3;
  v7 = objc_alloc_init(v5);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __107__SPConcreteCoreSpotlightIndexer__indexIndependentTokenRewritesWithMatchInfo_queryID_setOfTokensToCorrect___block_invoke;
  v10[3] = &unk_278935F80;
  v8 = v7;
  v11 = v8;
  [v6 enumerateKeysAndObjectsUsingBlock:v10];

  return v8;
}

void __107__SPConcreteCoreSpotlightIndexer__indexIndependentTokenRewritesWithMatchInfo_queryID_setOfTokensToCorrect___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = SDPommesStemWord(v3);
  if ([v5 length] >= 3)
  {
    v6 = objc_alloc(MEMORY[0x277D286C0]);
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@*", v5];
    LODWORD(v8) = 1060320051;
    v9 = [v6 initWithVariation:v7 type:3 confidence:v8];

    [v4 addObject:v9];
  }

  v10 = +[SPConcreteCoreSpotlightIndexer _sharedSynonyms];
  v11 = [v10 getSecondPassSynonymsForWord:v3];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      v16 = 0;
      do
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v24 + 1) + 8 * v16);
        v18 = objc_alloc(MEMORY[0x277D286C0]);
        LODWORD(v19) = 1050253722;
        v20 = [v18 initWithVariation:v17 type:4 confidence:v19];
        [v4 addObject:v20];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v14);
  }

  if ([v4 count])
  {
    v21 = *(a1 + 32);
    v22 = [objc_alloc(MEMORY[0x277D286B8]) initWithOriginalToken:v3 variations:v4];
    [v21 addObject:v22];
  }

  v23 = *MEMORY[0x277D85DE8];
}

+ (id)_getBundleIndexesFrom:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v33;
    v8 = *MEMORY[0x277CBECE8];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [*(*(&v32 + 1) + 8 * i) cStringUsingEncoding:4];
        v11 = strlen(v10);
        v12 = v11 + 1;
        if (v11 >= -1)
        {
          v13 = v11 + 1;
        }

        else
        {
          v13 = v11 + 4;
        }

        v14 = &v10[v13 & 0xFFFFFFFC];
        if ((v11 + 4) >= 7)
        {
          v18 = -(v13 >> 2);
          v19 = -1789642873;
          v20 = 718793509;
          v17 = -1759636613;
          do
          {
            v19 = 5 * v19 + 2071795100;
            v20 = 5 * v20 + 1808688022;
            HIDWORD(v21) = v19 * *&v14[4 * v18];
            LODWORD(v21) = HIDWORD(v21);
            v22 = (v21 >> 21) * v20;
            HIDWORD(v21) = v17;
            LODWORD(v21) = v17;
            v17 = v22 ^ (5 * (v21 >> 19) + 1390208809);
          }

          while (!__CFADD__(v18++, 1));
          v16 = 5 * v19 + 2071795100;
          v15 = 5 * v20 + 1808688022;
        }

        else
        {
          v15 = 1107688271;
          v16 = 1713515327;
          v17 = -1759636613;
        }

        v24 = 0;
        if ((v12 & 3u) > 1)
        {
          if ((v12 & 3) != 2)
          {
            v24 = *(v14 + 2) << 16;
          }

          v24 |= *(v14 + 1) << 8;
LABEL_21:
          HIDWORD(v25) = (v24 ^ *v14) * v16;
          LODWORD(v25) = HIDWORD(v25);
          v26 = (v25 >> 21) * v15;
          HIDWORD(v25) = v17;
          LODWORD(v25) = v17;
          v17 = v26 ^ (5 * (v25 >> 19) + 1390208809);
          goto LABEL_22;
        }

        if ((v12 & 3) != 0)
        {
          goto LABEL_21;
        }

LABEL_22:
        v27 = -1028477387 * ((-2048144789 * (v17 ^ v12)) ^ ((-2048144789 * (v17 ^ v12)) >> 13));
        v28 = CFStringCreateWithFormat(v8, 0, @"%d", v27 & 0x7FFFFFFF ^ HIWORD(v27));
        [v4 addObject:v28];
        CFRelease(v28);
      }

      v6 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v6);
  }

  v29 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)_indexDependentTokenRewritesWithMatchInfo:(id)a3 topK:(id)a4 setOfTokensToCorrect:(id)a5 queryID:(int64_t)a6 bundleIds:(id)a7 clientBundleId:(id)a8
{
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = a8;
  v16 = a3;
  v17 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    +[SPConcreteCoreSpotlightIndexer _indexDependentTokenRewritesWithMatchInfo:topK:setOfTokensToCorrect:queryID:bundleIds:clientBundleId:];
  }

  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __135__SPConcreteCoreSpotlightIndexer__indexDependentTokenRewritesWithMatchInfo_topK_setOfTokensToCorrect_queryID_bundleIds_clientBundleId___block_invoke;
  v27[3] = &unk_278935FA8;
  v28 = v13;
  v29 = v14;
  v30 = v12;
  v31 = v15;
  v19 = v18;
  v32 = v19;
  v20 = v15;
  v21 = v12;
  v22 = v14;
  v23 = v13;
  [v16 enumerateKeysAndObjectsUsingBlock:v27];

  v24 = v32;
  v25 = v19;

  return v19;
}

void __135__SPConcreteCoreSpotlightIndexer__indexDependentTokenRewritesWithMatchInfo_topK_setOfTokensToCorrect_queryID_bundleIds_clientBundleId___block_invoke(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([*(a1 + 32) containsObject:v3])
  {
    if (*(a1 + 40))
    {
      v5 = [SPConcreteCoreSpotlightIndexer _getBundleIndexesFrom:?];
    }

    else
    {
      v6 = [*(a1 + 48) allKeys];
      v7 = v6;
      if (v6 && [v6 count])
      {
        v5 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:v7];
      }

      else
      {
        v5 = 0;
      }
    }

    v8 = *(a1 + 56);
    if (v8 && ![v8 isEqualToString:@"com.apple.spotlight"])
    {
      v29 = 0;
    }

    else
    {
      v29 = &unk_2846C95F0;
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v5;
    v30 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v30)
    {
      v28 = *v36;
      do
      {
        v9 = 0;
        do
        {
          if (*v36 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v10 = a1;
          v11 = [*(a1 + 48) objectForKeyedSubscript:*(*(&v35 + 1) + 8 * v9)];
          v12 = v3;
          v13 = [v3 lowercaseString];
          v14 = SDPommesCorrectionsWithTopKAndToken(v11, v13, v29);

          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v15 = v14;
          v16 = [v15 countByEnumeratingWithState:&v31 objects:v39 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v32;
            do
            {
              v19 = 0;
              do
              {
                if (*v32 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v31 + 1) + 8 * v19);
                v21 = objc_alloc(MEMORY[0x277D286C0]);
                LODWORD(v22) = 1057132380;
                v23 = [v21 initWithVariation:v20 type:2 confidence:v22];
                [v4 addObject:v23];

                ++v19;
              }

              while (v17 != v19);
              v17 = [v15 countByEnumeratingWithState:&v31 objects:v39 count:16];
            }

            while (v17);
          }

          ++v9;
          v3 = v12;
          a1 = v10;
        }

        while (v9 != v30);
        v30 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v30);
    }
  }

  if ([v4 count])
  {
    v24 = *(a1 + 64);
    v25 = [objc_alloc(MEMORY[0x277D286B8]) initWithOriginalToken:v3 variations:v4];
    [v24 addObject:v25];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)indexDependentTokenRewritesWithQueryString:(id)a3 context:(id)a4 matchInfo:(id)a5 setOfTokensToCorrect:(id)a6 tokenRewritesHandler:(id)a7
{
  v35 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v13 queryID];
  v18 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    dataclass = self->_dataclass;
    v25 = CSRedactString(v12, 0);
    *buf = 134218498;
    v30 = v17;
    v31 = 2112;
    v32 = dataclass;
    v33 = 2112;
    v34 = v25;
    _os_log_debug_impl(&dword_231A35000, v18, OS_LOG_TYPE_DEBUG, "[qid=%ld][%@][rewrite] rewriteQueryWithQueryString=%@", buf, 0x20u);
  }

  [(SPConcreteCoreSpotlightIndexer *)self index];
  v26 = v13;
  v27 = v15;
  v28 = v14;
  v19 = v16;
  v20 = v14;
  v21 = v15;
  v22 = v13;
  SIFetchTopKTerms();

  v23 = *MEMORY[0x277D85DE8];
}

void __137__SPConcreteCoreSpotlightIndexer_indexDependentTokenRewritesWithQueryString_context_matchInfo_setOfTokensToCorrect_tokenRewritesHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__0;
  v31 = __Block_byref_object_dispose__0;
  v32 = objc_opt_new();
  if (a2)
  {
    memset(buf, 0, sizeof(buf));
    _MDPlistGetRootPlistObjectFromPlist();
    if (_MDPlistGetPlistObjectType() == 241)
    {
      v4 = [*(a1 + 32) bundleIDs];
      v5 = [SPConcreteCoreSpotlightIndexer _getBundleIndexesFrom:v4];

      v25 = v5;
      v26 = *(a1 + 40);
      _MDPlistDictionaryIterate();
    }
  }

  v6 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v18 = *(a1 + 72);
    v19 = *(*(a1 + 48) + 192);
    v20 = [v28[5] count];
    v21 = v34[3];
    *buf = 134218754;
    *&buf[4] = v18;
    *&buf[12] = 2112;
    *&buf[14] = v19;
    *&buf[22] = 2048;
    v38 = v20;
    v39 = 2048;
    v40 = v21;
    _os_log_debug_impl(&dword_231A35000, v6, OS_LOG_TYPE_DEBUG, "[qid=%ld][%@][rewrite] number of topK terms that are inflated in memory from plist: bundleCount=%lu, termCount=%lu", buf, 0x2Au);
  }

  v7 = *(a1 + 56);
  v8 = v28[5];
  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) queryID];
  v11 = [*(a1 + 32) bundleIDs];
  v12 = [*(a1 + 32) clientBundleID];
  v13 = [SPConcreteCoreSpotlightIndexer _indexDependentTokenRewritesWithMatchInfo:v7 topK:v8 setOfTokensToCorrect:v9 queryID:v10 bundleIds:v11 clientBundleId:v12];

  v14 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v22 = *(a1 + 72);
    v23 = *(*(a1 + 48) + 192);
    v24 = [v13 count];
    *buf = 134218498;
    *&buf[4] = v22;
    *&buf[12] = 2112;
    *&buf[14] = v23;
    *&buf[22] = 2048;
    v38 = v24;
    _os_log_debug_impl(&dword_231A35000, v14, OS_LOG_TYPE_DEBUG, "[qid=%ld][%@][rewrite] indexDependentTokenRewritesWithQueryString found %lu rewrites", buf, 0x20u);
  }

  (*(*(a1 + 64) + 16))(*(a1 + 64), v13, v15, v16);
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v33, 8);
  v17 = *MEMORY[0x277D85DE8];
}

void __137__SPConcreteCoreSpotlightIndexer_indexDependentTokenRewritesWithQueryString_context_matchInfo_setOfTokensToCorrect_tokenRewritesHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  if (![*(a1 + 32) count] || objc_msgSend(*(a1 + 32), "containsObject:", v6))
  {
    v10 = *a4;
    v11 = *(a4 + 2);
    if (_MDPlistGetPlistObjectType() == 241)
    {
      *&v10 = 0;
      *(&v10 + 1) = &v10;
      v11 = 0x3032000000;
      v12 = __Block_byref_object_copy__0;
      v13 = __Block_byref_object_dispose__0;
      v14 = objc_opt_new();
      v9 = *(a1 + 40);
      v7 = *a4;
      v8 = *(a4 + 2);
      _MDPlistDictionaryIterate();
      if ([*(*(&v10 + 1) + 40) count])
      {
        [*(*(*(a1 + 48) + 8) + 40) setObject:*(*(&v10 + 1) + 40) forKeyedSubscript:v6];
        *(*(*(a1 + 56) + 8) + 24) += [*(*(&v10 + 1) + 40) count];
      }

      _Block_object_dispose(&v10, 8);
    }
  }
}

void __137__SPConcreteCoreSpotlightIndexer_indexDependentTokenRewritesWithQueryString_context_matchInfo_setOfTokensToCorrect_tokenRewritesHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 && verifyCandidateLength(a3))
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v7 = *(a1 + 32);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __137__SPConcreteCoreSpotlightIndexer_indexDependentTokenRewritesWithQueryString_context_matchInfo_setOfTokensToCorrect_tokenRewritesHandler___block_invoke_4;
    v11[3] = &unk_278935FD0;
    v11[4] = &v12;
    v11[5] = a2;
    [v7 enumerateObjectsUsingBlock:v11];
    if (v13[3])
    {
      v8 = [MEMORY[0x277CCABB0] numberWithLongLong:{_MDPlistNumberGetIntValue(), *a4, a4[1], a4[2]}];
      v9 = *(*(*(a1 + 40) + 8) + 40);
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
      [v9 setObject:v8 forKeyedSubscript:v10];
    }

    _Block_object_dispose(&v12, 8);
  }
}

BOOL __137__SPConcreteCoreSpotlightIndexer_indexDependentTokenRewritesWithQueryString_context_matchInfo_setOfTokensToCorrect_tokenRewritesHandler___block_invoke_4(uint64_t a1, void *a2, _BYTE *a3)
{
  result = isCandidate(*(a1 + 40), a2);
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (void)transferDeleteJournalsToDirectory:(int)a3 completionHandler:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a4;
  [(SPConcreteCoreSpotlightIndexer *)self readyIndex:0];
  if (!self->_index || self->_suspended || self->_readOnly)
  {
    v7 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      index = self->_index;
      suspended = self->_suspended;
      readOnly = self->_readOnly;
      *buf = 134218496;
      v20 = index;
      v21 = 1024;
      v22 = suspended;
      v23 = 1024;
      v24 = readOnly;
      _os_log_impl(&dword_231A35000, v7, OS_LOG_TYPE_DEFAULT, "transferDeleteJournalsToDirectory failed: index:%p suspended:%d readOnly:%d", buf, 0x18u);
    }

    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    v6[2](v6, v11);
  }

  else
  {
    if (![(SPConcreteCoreSpotlightIndexer *)self denyOperationOnAssertedIndex:"transferDeleteJournalsToDirectory"])
    {
      v15 = self->_index;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __86__SPConcreteCoreSpotlightIndexer_transferDeleteJournalsToDirectory_completionHandler___block_invoke;
      v16[3] = &unk_278936098;
      v17 = v6;
      v18 = a3;
      SIBackgroundOpBlock(v15, 0, v16);

      goto LABEL_8;
    }

    v13 = *MEMORY[0x277CC22E8];
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    if (v6)
    {
      v14 = [MEMORY[0x277CCA9B8] errorWithDomain:v13 code:-1000 userInfo:0];
      v6[2](v6, v14);
    }
  }

LABEL_8:
  v12 = *MEMORY[0x277D85DE8];
}

void __86__SPConcreteCoreSpotlightIndexer_transferDeleteJournalsToDirectory_completionHandler___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v4 = *(a1 + 40);
    v6 = *(a1 + 32);
    SITransferDeletionJournals();
  }
}

void __86__SPConcreteCoreSpotlightIndexer_transferDeleteJournalsToDirectory_completionHandler___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *(*(a1 + 32) + 16);

    v4();
  }
}

- (id)purgeableIndexTouchFilePath
{
  v2 = [(SPConcreteCoreSpotlightIndexer *)self _indexPath];
  v3 = [v2 stringByAppendingPathComponent:@"purgeableIndexMarker"];

  return v3;
}

- (void)_createPurgeableTouchFile
{
  OUTLINED_FUNCTION_6();
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)_removePurgeableTouchFile
{
  v2 = [(SPConcreteCoreSpotlightIndexer *)self purgeableIndexTouchFilePath];
  v3 = open([v2 fileSystemRepresentation], 0, 438);
  v4 = v3;
  if ((v3 & 0x80000000) == 0)
  {
    close(v3);
    v5 = [v2 fileSystemRepresentation];
    if (remove(v5, v6))
    {
      v7 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [SPConcreteCoreSpotlightIndexer _removePurgeableTouchFile];
      }
    }
  }

  return v4 >= 0;
}

- (BOOL)_hasPurgeableTouchFile
{
  v2 = [(SPConcreteCoreSpotlightIndexer *)self purgeableIndexTouchFilePath];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [v3 fileExistsAtPath:v2];

  return v4;
}

- (int64_t)getIndexDirectorySize:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = opendir([v4 UTF8String]);
  v6 = logForCSLogCategoryIndex();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [SPConcreteCoreSpotlightIndexer getIndexDirectorySize:];
    }

    v8 = readdir(v5);
    for (i = 0; v8; v8 = readdir(v5))
    {
      d_name = v8->d_name;
      if (v8->d_name[0] != 46 || v8->d_name[1] && (v8->d_name[1] != 46 || v8->d_name[2]))
      {
        memset(&v20, 0, sizeof(v20));
        v11 = dirfd(v5);
        if (fstatat(v11, d_name, &v20, 32) < 0)
        {
          v15 = logForCSLogCategoryIndex();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = __error();
            v17 = strerror(*v16);
            *buf = 136315394;
            v22 = d_name;
            v23 = 2080;
            v24 = v17;
            _os_log_error_impl(&dword_231A35000, v15, OS_LOG_TYPE_ERROR, "Failed to obtain index file info:%s (%s)", buf, 0x16u);
          }
        }

        else
        {
          if ((v20.st_mode & 0xF000) == 0x4000)
          {
            v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:d_name];
            v13 = [v4 stringByAppendingPathComponent:v12];

            st_size = [(SPConcreteCoreSpotlightIndexer *)self getIndexDirectorySize:v13];
          }

          else
          {
            st_size = v20.st_size;
          }

          i += st_size;
        }
      }
    }

    closedir(v5);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SPConcreteCoreSpotlightIndexer getIndexDirectorySize:];
    }

    i = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return i;
}

- (BOOL)_shouldPurge
{
  v3 = [(SPConcreteCoreSpotlightIndexer *)self _indexPath];
  v4 = [(SPConcreteCoreSpotlightIndexer *)self getIndexDirectorySize:v3];

  return v4 > 3221225471;
}

- (void)markDirectoryAtomicallyPurgeable:(id)a3 purgeableOrNot:(BOOL)a4
{
  v4 = a4;
  v59 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = opendir([v5 UTF8String]);
  if (v6)
  {
    v7 = v6;
    v8 = dirfd(v6);
    v9 = v8;
    v10 = 98309;
    if (!v4)
    {
      v10 = 0;
    }

    v22 = v10;
    v11 = ffsctl(v8, 0xC0084A44uLL, &v22, 0);
    v12 = logForCSLogCategoryIndex();
    v13 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        if (v4)
        {
          v14 = "mark";
        }

        else
        {
          v14 = "clear";
        }

        v15 = *__error();
        buf = 136315906;
        *buf_4 = v14;
        *&buf_4[8] = 2112;
        *&buf_4[10] = v5;
        *&buf_4[18] = 1024;
        *&buf_4[20] = v9;
        *&buf_4[24] = 1024;
        *&buf_4[26] = v15;
        _os_log_error_impl(&dword_231A35000, v13, OS_LOG_TYPE_ERROR, "Failed to %s index directory %@ atomically purgable. fd:%d errno:%d", &buf, 0x22u);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = "Cleared";
      buf = 136315650;
      if (v4)
      {
        v17 = "Marked";
      }

      *buf_4 = v17;
      *&buf_4[8] = 2112;
      *&buf_4[10] = v5;
      *&buf_4[18] = 2048;
      *&buf_4[20] = v22;
      _os_log_impl(&dword_231A35000, v13, OS_LOG_TYPE_DEFAULT, "%s index directory %@ atomically purgable. flags=0x%llx", &buf, 0x20u);
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    *buf_4 = 0;
    memset(&buf_4[12], 0, 32);
    buf = 3;
    *&buf_4[4] = 1;
    v18 = ffsctl(v9, 0xC1104A71uLL, &buf, 0);
    v19 = logForCSLogCategoryIndex();
    v20 = v19;
    if (v18)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [SPConcreteCoreSpotlightIndexer markDirectoryAtomicallyPurgeable:purgeableOrNot:];
      }
    }

    else if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *v23 = 67111426;
      v24 = buf;
      v25 = 2048;
      v26 = *&buf_4[4];
      v27 = 2048;
      v28 = *&buf_4[28];
      v29 = 2048;
      v30 = v45;
      v31 = 2048;
      v32 = *(&v45 + 1);
      v33 = 2048;
      v34 = v46;
      v35 = 2048;
      v36 = *(&v46 + 1);
      v37 = 2048;
      v38 = v47;
      v39 = 1024;
      v40 = BYTE8(v47);
      v41 = 2112;
      v42 = v5;
      _os_log_debug_impl(&dword_231A35000, v20, OS_LOG_TYPE_DEBUG, "Getting dir stats version:%d flags:0x%llx dir_stats_id:%llu gen_count:%llu descendants:%llu physical_size:%llu clone_size:%llu purgeable_size:%llu purgeable_urgency:%d.%@", v23, 0x5Eu);
    }

    closedir(v7);
  }

  else
  {
    v16 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SPConcreteCoreSpotlightIndexer getIndexDirectorySize:];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)closeCache:(id)a3
{
  v4 = a3;
  [(SPConcreteCoreSpotlightIndexer *)self readyIndex:0];
  if (self->_index && !self->_suspended && !self->_suspending)
  {
    if ([(SPConcreteCoreSpotlightIndexer *)self denyOperationOnAssertedIndex:"closeCache"])
    {
      if (v4)
      {
        v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-2006 userInfo:0];
        v4[2](v4, 0, v5);
      }
    }

    else
    {
      index = self->_index;
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __45__SPConcreteCoreSpotlightIndexer_closeCache___block_invoke;
      v7[3] = &unk_2789360C0;
      v7[4] = self;
      v8 = v4;
      SISynchedOpWithBlock(index, 2, v7);
    }
  }
}

void __45__SPConcreteCoreSpotlightIndexer_closeCache___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-2007 userInfo:0];
      (*(v4 + 16))(v4, 0, v9);
    }
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __45__SPConcreteCoreSpotlightIndexer_closeCache___block_invoke_2;
    v10[3] = &unk_2789348E8;
    v10[4] = *(a1 + 32);
    v5 = [v10 copy];
    v6 = *(*(a1 + 32) + 152);
    if (!SICloseCache())
    {
      v7 = *(a1 + 40);
      if (v7)
      {
        v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-2008 userInfo:0];
        (*(v7 + 16))(v7, 0, v8);
      }

      CFRelease(v5);
    }
  }
}

- (void)cacheEntryForKeys:(id)a3 bundleID:(id)a4 protectionClass:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  [(SPConcreteCoreSpotlightIndexer *)self readyIndex:0];
  if (self->_index && !self->_suspended && !self->_suspending)
  {
    if ([(SPConcreteCoreSpotlightIndexer *)self denyOperationOnAssertedIndex:"cacheEntryForKeys"])
    {
      if (v13)
      {
        v14 = MEMORY[0x277CCA9B8];
        v15 = *MEMORY[0x277CC22E8];
        v16 = -2006;
LABEL_15:
        v22 = [v14 errorWithDomain:v15 code:v16 userInfo:{0, v23, v24, v25, v26}];
        v13[2](v13, 0, v22);

        goto LABEL_16;
      }

      goto LABEL_16;
    }

    v17 = objc_autoreleasePoolPush();
    if (self->_index && [v11 length])
    {
      v18 = dispatch_group_create();
      dispatch_group_enter(v18);
      v23 = MEMORY[0x277D85DD0];
      v24 = 3221225472;
      v25 = __95__SPConcreteCoreSpotlightIndexer_cacheEntryForKeys_bundleID_protectionClass_completionHandler___block_invoke;
      v26 = &unk_2789360E8;
      v13 = v13;
      v28 = v13;
      v19 = v18;
      v27 = v19;
      v20 = MEMORY[0x2383760E0](&v23);
      index = self->_index;
      if (!SIGetCacheEntry())
      {

        v13 = 0;
      }

      dispatch_group_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
    }

    objc_autoreleasePoolPop(v17);
  }

  if (v13)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CC22E8];
    v16 = -2008;
    goto LABEL_15;
  }

LABEL_16:
}

void __95__SPConcreteCoreSpotlightIndexer_cacheEntryForKeys_bundleID_protectionClass_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = _MDPlistBytesCopyPlistAtIndex();
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 count])
    {
      if (v4)
      {
        v3 = [MEMORY[0x277CCAC58] dataWithPropertyList:v4 format:200 options:0 error:0];
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v3 = 0;
  v4 = 0;
LABEL_8:
  (*(*(a1 + 40) + 16))();
  dispatch_group_leave(*(a1 + 32));
}

- (void)cacheInsertForKey:(id)a3 value:(id)a4 bundleID:(id)a5 protectionClass:(id)a6 completionHandler:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  [(SPConcreteCoreSpotlightIndexer *)self readyIndex:0];
  if (self->_index && !self->_suspended && !self->_suspending)
  {
    if ([(SPConcreteCoreSpotlightIndexer *)self denyOperationOnAssertedIndex:"cacheInsertForKey"])
    {
      if (v14)
      {
        v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-2006 userInfo:0];
        v14[2](v14, 0, v15);
      }
    }

    else
    {
      index = self->_index;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __101__SPConcreteCoreSpotlightIndexer_cacheInsertForKey_value_bundleID_protectionClass_completionHandler___block_invoke;
      v17[3] = &unk_278936110;
      v22 = v14;
      v18 = v13;
      v19 = v12;
      v20 = v11;
      v21 = self;
      SISynchedOpWithBlock(index, 2, v17);
    }
  }
}

void __101__SPConcreteCoreSpotlightIndexer_cacheInsertForKey_value_bundleID_protectionClass_completionHandler___block_invoke(void *a1, uint64_t a2, int a3)
{
  v18[2] = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v6 = &stru_2846BD100;
    v7 = a1[5];
    if (a1[4])
    {
      v6 = a1[4];
    }

    v17[0] = @"_kMDItemBundleID";
    v17[1] = v7;
    v8 = a1[6];
    v18[0] = v6;
    v18[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __101__SPConcreteCoreSpotlightIndexer_cacheInsertForKey_value_bundleID_protectionClass_completionHandler___block_invoke_2;
    v16[3] = &unk_2789348E8;
    v16[4] = a1[7];
    v10 = [v16 copy];
    v11 = *(a1[7] + 152);
    if (!SISetCacheEntry())
    {
      v12 = a1[8];
      if (v12)
      {
        v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-2008 userInfo:0];
        (*(v12 + 16))(v12, 0, v13);
      }

      CFRelease(v10);
    }

    goto LABEL_13;
  }

  v4 = a1[8];
  if (!v4)
  {
LABEL_13:
    v14 = *MEMORY[0x277D85DE8];
    return;
  }

  v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-2007 userInfo:0];
  (*(v4 + 16))(v4, 0);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)cacheDeleteForKey:(id)a3 value:(id)a4 bundleID:(id)a5 protectionClass:(id)a6 completionHandler:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  [(SPConcreteCoreSpotlightIndexer *)self readyIndex:0];
  if (self->_index && !self->_suspended && !self->_suspending)
  {
    if ([(SPConcreteCoreSpotlightIndexer *)self denyOperationOnAssertedIndex:"cacheDeleteForKey"])
    {
      if (v14)
      {
        v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-2006 userInfo:0];
        v14[2](v14, 0, v15);
      }
    }

    else
    {
      index = self->_index;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __101__SPConcreteCoreSpotlightIndexer_cacheDeleteForKey_value_bundleID_protectionClass_completionHandler___block_invoke;
      v17[3] = &unk_278936110;
      v22 = v14;
      v18 = v13;
      v19 = v12;
      v20 = v11;
      v21 = self;
      SISynchedOpWithBlock(index, 2, v17);
    }
  }
}

void __101__SPConcreteCoreSpotlightIndexer_cacheDeleteForKey_value_bundleID_protectionClass_completionHandler___block_invoke(void *a1, uint64_t a2, int a3)
{
  v18[2] = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v6 = &stru_2846BD100;
    v7 = a1[5];
    if (a1[4])
    {
      v6 = a1[4];
    }

    v17[0] = @"_kMDItemBundleID";
    v17[1] = v7;
    v8 = a1[6];
    v18[0] = v6;
    v18[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __101__SPConcreteCoreSpotlightIndexer_cacheDeleteForKey_value_bundleID_protectionClass_completionHandler___block_invoke_2;
    v16[3] = &unk_2789348E8;
    v16[4] = a1[7];
    v10 = [v16 copy];
    v11 = *(a1[7] + 152);
    if (!SIDeleteCacheEntry())
    {
      v12 = a1[8];
      if (v12)
      {
        v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-2008 userInfo:0];
        (*(v12 + 16))(v12, 0, v13);
      }

      CFRelease(v10);
    }

    goto LABEL_13;
  }

  v4 = a1[8];
  if (!v4)
  {
LABEL_13:
    v14 = *MEMORY[0x277D85DE8];
    return;
  }

  v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-2007 userInfo:0];
  (*(v4 + 16))(v4, 0);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)spotlightCacheFileDescriptor:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(SPConcreteCoreSpotlightIndexer *)self readyIndex:0];
  if (self->_index && !self->_suspended && !self->_suspending)
  {
    if ([(SPConcreteCoreSpotlightIndexer *)self denyOperationOnAssertedIndex:"spotlightCacheFileDescriptor"])
    {
      if (v7)
      {
        v8 = MEMORY[0x277CCA9B8];
        v9 = *MEMORY[0x277CC22E8];
        v10 = -2006;
LABEL_14:
        v20 = [v8 errorWithDomain:v9 code:v10 userInfo:{0, v21, v22, v23, v24}];
        v7[2](v7, 0, v20);

        goto LABEL_15;
      }

      goto LABEL_15;
    }

    v11 = objc_autoreleasePoolPush();
    if (self->_index)
    {
      v12 = xpc_dictionary_get_remote_connection(v6);
      v13 = xpc_null_create();
      v14 = dispatch_group_create();
      dispatch_group_enter(v14);
      v21 = MEMORY[0x277D85DD0];
      v22 = 3221225472;
      v23 = __81__SPConcreteCoreSpotlightIndexer_spotlightCacheFileDescriptor_completionHandler___block_invoke;
      v24 = &unk_278936138;
      v25 = v6;
      v15 = v13;
      v26 = v15;
      v16 = v12;
      v27 = v16;
      v17 = v14;
      v28 = v17;
      v18 = MEMORY[0x2383760E0](&v21);
      index = self->_index;
      if (!SIGetCacheFd())
      {

        v7 = 0;
      }

      dispatch_group_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
    }

    objc_autoreleasePoolPop(v11);
  }

  if (v7)
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277CC22E8];
    v10 = -2008;
    goto LABEL_14;
  }

LABEL_15:
}

void __81__SPConcreteCoreSpotlightIndexer_spotlightCacheFileDescriptor_completionHandler___block_invoke(uint64_t a1, int fd, int a3, int a4)
{
  if ((fd & 0x80000000) == 0)
  {
    v8 = xpc_fd_create(fd);
    v9 = *(a1 + 32);
    if (v8)
    {
      xpc_dictionary_set_value(v9, "cache-node-fd", v8);
    }

    else
    {
      xpc_dictionary_set_value(v9, "cache-node-fd", *(a1 + 40));
      v10 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __81__SPConcreteCoreSpotlightIndexer_spotlightCacheFileDescriptor_completionHandler___block_invoke_cold_1();
      }
    }

    close(fd);
  }

  if ((a3 & 0x80000000) == 0)
  {
    v11 = xpc_fd_create(a3);
    v12 = *(a1 + 32);
    if (v11)
    {
      xpc_dictionary_set_value(v12, "cache-container-fd", v11);
    }

    else
    {
      xpc_dictionary_set_value(v12, "cache-container-fd", *(a1 + 40));
      v13 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __81__SPConcreteCoreSpotlightIndexer_spotlightCacheFileDescriptor_completionHandler___block_invoke_cold_2();
      }
    }

    close(a3);
  }

  if ((a4 & 0x80000000) == 0)
  {
    v14 = xpc_fd_create(a4);
    v15 = *(a1 + 32);
    if (v14)
    {
      xpc_dictionary_set_value(v15, "cache-payload-fd", v14);
    }

    else
    {
      xpc_dictionary_set_value(v15, "cache-payload-fd", *(a1 + 40));
      v16 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __81__SPConcreteCoreSpotlightIndexer_spotlightCacheFileDescriptor_completionHandler___block_invoke_cold_3();
      }
    }

    close(a4);
  }

  xpc_connection_send_message(*(a1 + 48), *(a1 + 32));
  dispatch_group_leave(*(a1 + 56));
}

- (void)setHasPhotosOrText
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __52__SPConcreteCoreSpotlightIndexer_setHasPhotosOrText__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    v6 = v5;
    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v6 = v5;
    [v5 cancel];
  }

  v5 = v6;
LABEL_6:
}

void __52__SPConcreteCoreSpotlightIndexer_setHasPhotosOrText__block_invoke_1655(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    v6 = v5;
    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v6 = v5;
    [v5 cancel];
  }

  v5 = v6;
LABEL_6:
}

uint64_t __52__SPConcreteCoreSpotlightIndexer_setHasPhotosOrText__block_invoke_1656(void *a1)
{
  if (*(*(a1[5] + 8) + 24) == 1)
  {
    v2 = *(a1[4] + 152);
    SISetHasPhotos();
  }

  if (*(*(a1[6] + 8) + 24) == 1)
  {
    v3 = *(a1[4] + 152);
    SISetHasText();
  }

  v4 = a1[4];

  return [v4 setProperty:&unk_2846C95D8 forKey:@"kSPHasInitializedPhotosAndText" sync:1];
}

void __40__SPConcreteCoreSpotlightIndexer_dirty___block_invoke_2(uint64_t a1, const char *a2)
{
  Property = gDASManager;
  if (gDASManager)
  {
    Property = objc_getProperty(gDASManager, a2, 8, 1);
  }

  v4 = [Property allowsDiscretionaryWorkForTask:@"com.apple.searchd.index.commit" withPriority:*MEMORY[0x277D06AA0] withParameters:0];
  v5 = sIndexQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__SPConcreteCoreSpotlightIndexer_dirty___block_invoke_3;
  v7[3] = &unk_278934820;
  v10 = v4;
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v6 = _setup_block(v7, 0, 3418);
  dispatch_async(v5, v6);
}

- (void)notifyClientForItemUpdates:(void *)a1 updatedItems:batchMask:.cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __84__SPConcreteCoreSpotlightIndexer_notifyClientForItemUpdates_updatedItems_batchMask___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __84__SPConcreteCoreSpotlightIndexer_notifyClientForItemUpdates_updatedItems_batchMask___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __84__SPConcreteCoreSpotlightIndexer_notifyClientForItemUpdates_updatedItems_batchMask___block_invoke_278_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __84__SPConcreteCoreSpotlightIndexer_notifyClientForItemUpdates_updatedItems_batchMask___block_invoke_278_cold_2()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __64__SPConcreteCoreSpotlightIndexer_issuePriorityIndexFixupOn_key___block_invoke_302_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __60__SPConcreteCoreSpotlightIndexer_issuePriorityIndexFixupOff__block_invoke_316_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)issuePriorityIndexFixup
{
  OUTLINED_FUNCTION_21(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)reindexAttributes:(uint64_t)a1 ofItemsMatchingQuery:indexAttrName:withVersion:perItemCompletionAttributeArray:completionValueArray:alwaysReindexWithCompletionAttribute:force:postFilter:group:forceMerge:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_30(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __223__SPConcreteCoreSpotlightIndexer_reindexAttributes_ofItemsMatchingQuery_indexAttrName_withVersion_perItemCompletionAttributeArray_completionValueArray_alwaysReindexWithCompletionAttribute_force_postFilter_group_forceMerge___block_invoke_4_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_cancelIdleTimer
{
  OUTLINED_FUNCTION_30(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __40__SPConcreteCoreSpotlightIndexer_dirty___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(*a1 + 192);
  CFAbsoluteTimeGetCurrent();
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __63__SPConcreteCoreSpotlightIndexer_indexFinishedDrainingJournal___block_invoke_652_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_29(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __63__SPConcreteCoreSpotlightIndexer_indexFinishedDrainingJournal___block_invoke_656_cold_1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [a2 dataclass];
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __51__SPConcreteCoreSpotlightIndexer_fixupPathTimeouts__block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 dataclass];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __62__SPConcreteCoreSpotlightIndexer_revokeExpiredItems_activity___block_invoke_cold_1(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  v4 = *(*a1 + 40);
  *buf = 134218242;
  *(buf + 4) = a3;
  *(buf + 6) = 2112;
  *(buf + 14) = v4;
  _os_log_debug_impl(&dword_231A35000, log, OS_LOG_TYPE_DEBUG, "Request reimport of %ld items for bundleID:%@ (expired items)", buf, 0x16u);
}

void __62__SPConcreteCoreSpotlightIndexer_revokeExpiredItems_activity___block_invoke_679_cold_1()
{
  OUTLINED_FUNCTION_26();
  v8 = *MEMORY[0x277D85DE8];
  [*(*(*v1 + 8) + 40) count];
  OUTLINED_FUNCTION_32(*v0);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __62__SPConcreteCoreSpotlightIndexer_revokeExpiredItems_activity___block_invoke_680_cold_1()
{
  OUTLINED_FUNCTION_6();
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_43(v2);
  OUTLINED_FUNCTION_32(*(v0 + 48));
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateMeCardInfo:middleName:familyName:emailAddresses:isFirstTimeCheck:isNotCreateNewIndex:group:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)fetchMeCard:(uint64_t *)a1 isNotCreateNewIndex:group:.cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_21(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)writeIndexSuccessfulOpenDate:.cold.1()
{
  OUTLINED_FUNCTION_33();
  v0 = *MEMORY[0x277D85DE8];
  v3 = [OUTLINED_FUNCTION_38(v1 v2)];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)writeIndexDropAnalyticsDate:.cold.1()
{
  OUTLINED_FUNCTION_33();
  v0 = *MEMORY[0x277D85DE8];
  v3 = [OUTLINED_FUNCTION_38(v1 v2)];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)writeIndexCreationDate:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)writeIndexCreationDate:.cold.2()
{
  OUTLINED_FUNCTION_33();
  v0 = *MEMORY[0x277D85DE8];
  v3 = [OUTLINED_FUNCTION_38(v1 v2)];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)writeSDBObjectCount:.cold.1()
{
  OUTLINED_FUNCTION_33();
  v0 = *MEMORY[0x277D85DE8];
  v3 = [OUTLINED_FUNCTION_38(v1 v2)];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)indexLossAnalyticsDictWithPreviousIndexCreationDate:(void *)a1 size:openingInReadOnly:fullyCreated:markedPurgeable:vectorIndexDrop:forAnalytics:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 objectForKeyedSubscript:@"rebuildreason"];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)indexLossAnalyticsDictWithPreviousIndexCreationDate:(void *)a1 size:openingInReadOnly:fullyCreated:markedPurgeable:vectorIndexDrop:forAnalytics:.cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 dataclass];
  [v1 UTF8String];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)indexLossAnalyticsDictWithPreviousIndexCreationDate:size:openingInReadOnly:fullyCreated:markedPurgeable:vectorIndexDrop:forAnalytics:.cold.3()
{
  OUTLINED_FUNCTION_26();
  v10 = *MEMORY[0x277D85DE8];
  v2 = [v1 dataclass];
  [v2 UTF8String];
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)indexLossAnalyticsDictWithPreviousIndexCreationDate:(void *)a1 size:openingInReadOnly:fullyCreated:markedPurgeable:vectorIndexDrop:forAnalytics:.cold.4(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 dataclass];
  [v1 UTF8String];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)indexLossAnalyticsDictWithPreviousIndexCreationDate:size:openingInReadOnly:fullyCreated:markedPurgeable:vectorIndexDrop:forAnalytics:.cold.5()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)indexLossAnalyticsDictWithPreviousIndexCreationDate:(NSObject *)a3 size:openingInReadOnly:fullyCreated:markedPurgeable:vectorIndexDrop:forAnalytics:.cold.6(void *a1, void *a2, NSObject *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = [a1 dataclass];
  v6 = [v5 UTF8String];
  v7 = [a2 objectForKeyedSubscript:@"indexrebuildcount"];
  v8 = [v7 integerValue];
  v9 = [a2 objectForKeyedSubscript:@"readonly"];
  v10 = [v9 BOOLValue];
  v11 = [a2 objectForKeyedSubscript:@"prefix"];
  v12 = [a2 objectForKeyedSubscript:@"propertyname"];
  v13 = [a2 objectForKeyedSubscript:@"dropreason"];
  [v13 integerValue];
  v17 = 136316418;
  v18 = v6;
  OUTLINED_FUNCTION_23();
  v19 = v8;
  v20 = 1024;
  v21 = v10;
  v22 = 2112;
  v23 = v11;
  v24 = 2112;
  v25 = v12;
  v26 = v14;
  v27 = v15;
  _os_log_error_impl(&dword_231A35000, a3, OS_LOG_TYPE_ERROR, "[VectorIndexDrop] (%s) count %ld, rdonly %d, prefix %@, property %@, reason %ld", &v17, 0x3Au);

  v16 = *MEMORY[0x277D85DE8];
}

- (void)writeIndexLossEventToFile:vector:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)writeIndexLossEventToFile:vector:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)writeIndexLossEventToFile:vector:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)writeIndexLossEventToFile:vector:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)writeIndexLossEventToFile:vector:.cold.5()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)writeIndexLossEventToFile:vector:.cold.6()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)trialIntentionalDropUUID
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __50__SPConcreteCoreSpotlightIndexer_fetchItemForURL___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 48);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
  v7 = *MEMORY[0x277D85DE8];
}

void __76__SPConcreteCoreSpotlightIndexer_fetchParentsForItemID_recursively_timeout___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 56);
  v2 = *(a1 + 32);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
  v8 = *MEMORY[0x277D85DE8];
}

void __73__SPConcreteCoreSpotlightIndexer__sendIndexDropABCEvent_markedPurgeable___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 valueForKey:*MEMORY[0x277D6B168]];
  [v1 integerValue];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_saveCorruptIndexWithPath:shouldSendABC:fullyCreated:markedPurgeable:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __103__SPConcreteCoreSpotlightIndexer__saveCorruptIndexWithPath_shouldSendABC_fullyCreated_markedPurgeable___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_21(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)openIndexForUpgradeSynchronous:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 dataclass];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)openIndexForUpgradeSynchronous:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)openIndex:(void *)a1 shouldReindexAll:readOnly:forcePC:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 dataclass];
  [v1 UTF8String];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)openIndex:shouldReindexAll:readOnly:forcePC:.cold.2()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)openIndex:shouldReindexAll:readOnly:forcePC:.cold.3()
{
  OUTLINED_FUNCTION_6();
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)openIndex:(void *)a1 shouldReindexAll:readOnly:forcePC:.cold.4(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 dataclass];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)openIndex:shouldReindexAll:readOnly:forcePC:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)openIndex:shouldReindexAll:readOnly:forcePC:.cold.6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)openIndex:(uint64_t *)a1 shouldReindexAll:readOnly:forcePC:.cold.9(uint64_t *a1)
{
  OUTLINED_FUNCTION_21(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)openIndex:shouldReindexAll:readOnly:forcePC:.cold.10()
{
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_34(v2, 5.778e-34, v0, v3);
  OUTLINED_FUNCTION_42();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

- (void)openIndex:shouldReindexAll:readOnly:forcePC:.cold.11()
{
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_34(v2, 5.778e-34, v0, v3);
  OUTLINED_FUNCTION_42();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

- (void)openIndex:shouldReindexAll:readOnly:forcePC:.cold.12()
{
  OUTLINED_FUNCTION_39();
  v1 = v0;
  OUTLINED_FUNCTION_35(v0, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_42();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)openIndex:shouldReindexAll:readOnly:forcePC:.cold.13()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_1034_cold_1()
{
  OUTLINED_FUNCTION_26();
  v8 = *MEMORY[0x277D85DE8];
  [*v1 timeIntervalSince1970];
  [v0 timeIntervalSince1970];
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)openJWLIndex
{
  OUTLINED_FUNCTION_30(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)fixupMessageAttachmentsWithCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __79__SPConcreteCoreSpotlightIndexer_fixupMessageAttachmentsWithCompletionHandler___block_invoke_3_1116_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_21(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_32(v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

+ (void)dumpCrashStates:toFile:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)readyIndex:(uint64_t)a1 .cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_30(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (uint64_t)checkAdmission:(uint64_t)a1 background:(const char *)a2 didBeginThrottle:didEndThrottle:live:slow:memoryPressure:.cold.1(uint64_t a1, const char *a2)
{
  Property = gDASManager;
  if (gDASManager)
  {
    Property = objc_getProperty(gDASManager, a2, 8, 1);
  }

  return [Property allowsDiscretionaryWorkForTask:@"indexing" withPriority:*MEMORY[0x277D06AA0] withParameters:0];
}

void __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  v7 = *MEMORY[0x277D85DE8];
  qos_class_self();
  *(v0 + 136);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

void __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_19(v1);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x277D85DE8];
}

void __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_cold_3(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_19(v1);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x277D85DE8];
}

void __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_cold_5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_1233_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_21(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_1233_cold_2()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 48);
  *v2 = 67109378;
  *(v2 + 4) = v3;
  *(v2 + 8) = 2112;
  *(v2 + 10) = v1;
  _os_log_debug_impl(&dword_231A35000, v5, OS_LOG_TYPE_DEBUG, "ABOUT TO DECODE 4 %d %@", v4, 0x12u);
}

void __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_1233_cold_3(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 138412290;
  *a2 = 0;
  OUTLINED_FUNCTION_40(&dword_231A35000, a2, a3, "RequiresImport missing: UI:%@", a1);
}

void __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_5_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_29(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_2_1307_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)indexSearchableItems:deleteSearchableItemsWithIdentifiers:clientState:expectedClientState:clientStateName:forBundleID:options:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4(&dword_231A35000, v0, v1, "Index items, bundleID:%@, items:%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)indexSearchableItems:(uint64_t)a1 deleteSearchableItemsWithIdentifiers:clientState:expectedClientState:clientStateName:forBundleID:options:completionHandler:.cold.2(uint64_t a1)
{
  *(OUTLINED_FUNCTION_30(a1, *MEMORY[0x277D85DE8]) + 24);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

void __178__SPConcreteCoreSpotlightIndexer_indexSearchableItems_deleteSearchableItemsWithIdentifiers_clientState_expectedClientState_clientStateName_forBundleID_options_completionHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = *(*a2 + 192);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4(&dword_231A35000, v4, v5, "Allowing indexing activity while locked for bundle: %@, dataclass:%@");
  v6 = *MEMORY[0x277D85DE8];
}

void __178__SPConcreteCoreSpotlightIndexer_indexSearchableItems_deleteSearchableItemsWithIdentifiers_clientState_expectedClientState_clientStateName_forBundleID_options_completionHandler___block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_19(v1);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x277D85DE8];
}

void __178__SPConcreteCoreSpotlightIndexer_indexSearchableItems_deleteSearchableItemsWithIdentifiers_clientState_expectedClientState_clientStateName_forBundleID_options_completionHandler___block_invoke_1318_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_21(a1, *MEMORY[0x277D85DE8]);
  v2 = *v1;
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_4(&dword_231A35000, v3, v4, "SIDeleteCSAttributes, bundleID:%@, deletes:%ld");
  v5 = *MEMORY[0x277D85DE8];
}

void __76__SPConcreteCoreSpotlightIndexer_validateConcreteIndexer_outFileDescriptor___block_invoke_1358_cold_1(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_29(a1, *MEMORY[0x277D85DE8]);
  v3 = *(v2 + 192);
  *(v1 + 76);
  *(*(*v4 + 8) + 24);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_backgroundDeleteItems:bundleID:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4(&dword_231A35000, v0, v1, "_backgroundDeleteItems, bundleID:%@, identifiers:%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)deleteItemsForQuery:bundleID:fromClient:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4(&dword_231A35000, v0, v1, "deleteItemsForQuery, query:%@, bundleID:%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)deleteItemsForQuery:bundleID:fromClient:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)deleteSearchableItemsWithDomainIdentifiers:forBundleID:fromClient:reason:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_4_cold_1()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_1410_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)deleteSearchableItemsWithPersonaIds:(uint64_t)a1 completionHandler:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_30(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4(&dword_231A35000, v1, v2, "deleteSearchableItemsWithPersonaIds, protectionClass:%@, domainIdentifiers:%@");
  v3 = *MEMORY[0x277D85DE8];
}

- (void)deleteSearchableItemsWithFileProviderDomains:(uint64_t)a1 completionHandler:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_30(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4(&dword_231A35000, v1, v2, "deleteSearchableItemsWithFileProviderDomains, protectionClass:%@, domains:%@");
  v3 = *MEMORY[0x277D85DE8];
}

void __97__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithFileProviderDomains_completionHandler___block_invoke_4_cold_1()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)deleteAllUserActivities:(uint64_t)a1 fromClient:(uint64_t)a2 completionHandler:.cold.1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 192);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4(&dword_231A35000, v3, v4, "deleteAllUserActivities, bundleID:%@, protectionClass:%@");
  v5 = *MEMORY[0x277D85DE8];
}

- (void)restartAttachmentImport:maxCount:depth:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)restartAttachmentImport:maxCount:depth:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __73__SPConcreteCoreSpotlightIndexer_restartAttachmentImport_maxCount_depth___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __73__SPConcreteCoreSpotlightIndexer_restartAttachmentImport_maxCount_depth___block_invoke_1456_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __73__SPConcreteCoreSpotlightIndexer_restartAttachmentImport_maxCount_depth___block_invoke_1460_cold_1(uint64_t *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);
  v10 = *MEMORY[0x277D85DE8];
}

void __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_cold_1(uint64_t a1, uint64_t *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_32(*a2);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_cold_2(uint64_t a1, uint64_t *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_32(*a2);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_3_1514_cold_1()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_2_1522_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)fetchLastClientStateForBundleID:clientStateName:options:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_indexDependentTokenRewritesWithMatchInfo:topK:setOfTokensToCorrect:queryID:bundleIds:clientBundleId:.cold.1()
{
  OUTLINED_FUNCTION_26();
  v7 = *MEMORY[0x277D85DE8];
  [v0 count];
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_removePurgeableTouchFile
{
  OUTLINED_FUNCTION_6();
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getIndexDirectorySize:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getIndexDirectorySize:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)markDirectoryAtomicallyPurgeable:purgeableOrNot:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x277D85DE8];
}

void __81__SPConcreteCoreSpotlightIndexer_spotlightCacheFileDescriptor_completionHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __81__SPConcreteCoreSpotlightIndexer_spotlightCacheFileDescriptor_completionHandler___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __81__SPConcreteCoreSpotlightIndexer_spotlightCacheFileDescriptor_completionHandler___block_invoke_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

@end