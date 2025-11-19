@interface WBSHistoryServiceDatabaseProxy
- (WBSHistoryServiceDatabaseProxy)initWithProxy:(id)a3;
- (id)_defaultProxyErrorHandlerWithSimpleReplyHandler:(id)a3;
- (void)addAutocompleteTrigger:(id)a3 forURL:(id)a4 completionHandler:(id)a5;
- (void)assignURLString:(id)a3 toTopicTagsWithIDs:(id)a4 completionHandler:(id)a5;
- (void)checkIfLocalVisitExistsForDatabaseIDs:(id)a3 withCompletion:(id)a4;
- (void)clearAllHistoryInsertingTombstoneUpToDate:(id)a3 clearAllSpotlightHistoryForProfile:(BOOL)a4 completionHandler:(id)a5;
- (void)clearHistoryItems:(id)a3 afterDate:(id)a4 beforeDate:(id)a5 tombstoneMode:(unint64_t)a6 completionHandler:(id)a7;
- (void)clearHistoryVisitsAddedAfterDate:(id)a3 beforeDate:(id)a4 tombstoneMode:(unint64_t)a5 clearAllSpotlightHistoryForProfile:(BOOL)a6 completionHandler:(id)a7;
- (void)computeFrequentlyVisitedSites:(unint64_t)a3 minimalVisitCountScore:(unint64_t)a4 blockList:(id)a5 allowList:(id)a6 options:(unint64_t)a7 currentTime:(double)a8 completionHandler:(id)a9;
- (void)convertTombstoneWithGenerationToSecureFormat:(int64_t)a3 lastSyncedGeneration:(int64_t)a4 completionHandler:(id)a5;
- (void)createTagsForIdentifiers:(id)a3 withTitles:(id)a4 type:(unint64_t)a5 level:(int64_t)a6 completionHandler:(id)a7;
- (void)dispatchEvent:(id)a3 listenersToIgnore:(id)a4 persistForDelayedDispatching:(BOOL)a5 completionHandler:(id)a6;
- (void)expireOldVisits:(double)a3 completionHandler:(id)a4;
- (void)exportHistory:(id)a3 completionHandler:(id)a4;
- (void)fetchAllTombstonesWithCompletionHandler:(id)a3;
- (void)fetchAutocompleteTriggersForURLString:(id)a3 completionHandler:(id)a4;
- (void)fetchCloudClientVersionTable:(id)a3;
- (void)fetchDatabaseURL:(id)a3;
- (void)fetchDomainExpansions:(id)a3;
- (void)fetchEventsForListener:(id)a3 completionHandler:(id)a4;
- (void)fetchMetadataForKeys:(id)a3 completionHandler:(id)a4;
- (void)fetchWithOptions:(unint64_t)a3 predicate:(id)a4 completionHandler:(id)a5;
- (void)finishClearingHistoryIfNecessaryWithCompletionHandler:(id)a3;
- (void)flushWithCompletionHandler:(id)a3;
- (void)getHighLevelHTTPFamilyDomainsVisitedAfterDate:(id)a3 beforeDate:(id)a4 onlyFromThisDevice:(BOOL)a5 completionHandler:(id)a6;
- (void)getItemCountBeforeDate:(id)a3 completionHandler:(id)a4;
- (void)getVisitedLinksWithCompletionHandler:(id)a3;
- (void)groupVisitsIntoSessionsBetweenStartDate:(id)a3 endDate:(id)a4 completionHandler:(id)a5;
- (void)lastSeenDateForCloudClientVersion:(unint64_t)a3 completionHandler:(id)a4;
- (void)markEventsAsReceivedByListener:(id)a3 eventIDs:(id)a4 completionHandler:(id)a5;
- (void)performMaintenanceWithAgeLimit:(double)a3 itemCountLimit:(unint64_t)a4 completionHandler:(id)a5;
- (void)pruneTombstonesWithEndDatePriorToDate:(id)a3 completionHandler:(id)a4;
- (void)recomputeItemScoresWithCompletionHandler:(id)a3;
- (void)recordVisitWithIdentifier:(id)a3 sourceVisit:(id)a4 title:(id)a5 wasHTTPNonGet:(BOOL)a6 loadSuccessful:(BOOL)a7 origin:(int64_t)a8 attributes:(unint64_t)a9 statusCode:(int64_t)a10 completionHandler:(id)a11;
- (void)replayAndAddTombstones:(id)a3 completionHandler:(id)a4;
- (void)resetCloudHistoryDataWithCompletionHandler:(id)a3;
- (void)searchForUserTypedString:(id)a3 options:(unint64_t)a4 currentTime:(double)a5 writeHandle:(id)a6 completionHandler:(id)a7;
- (void)setLastSeenDate:(id)a3 forCloudClientVersion:(unint64_t)a4 completionHandler:(id)a5;
- (void)setMetadataValue:(id)a3 forKey:(id)a4 completionHandler:(id)a5;
- (void)setTitle:(id)a3 ofTagWithID:(int64_t)a4 completionHandler:(id)a5;
- (void)startImportHistorySessionWithVisitTimePrecision:(unint64_t)a3 completionHandler:(id)a4;
- (void)updateDatabaseAfterSuccessfulSyncWithGeneration:(int64_t)a3 completionHandler:(id)a4;
- (void)updateVisitWithIdentifier:(id)a3 removeAttributes:(unint64_t)a4 addAttributes:(unint64_t)a5 completionHandler:(id)a6;
- (void)updateVisitWithIdentifier:(id)a3 title:(id)a4 completionHandler:(id)a5;
- (void)vacuumHistoryWithCompletionHandler:(id)a3;
- (void)visitIdentifiersMatchingExistingVisits:(id)a3 desiredVisitTimePrecision:(unint64_t)a4 completionHandler:(id)a5;
- (void)visitsAndTombstonesNeedingSyncWithVisitSyncWindow:(double)a3 completionHandler:(id)a4;
@end

@implementation WBSHistoryServiceDatabaseProxy

- (WBSHistoryServiceDatabaseProxy)initWithProxy:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WBSHistoryServiceDatabaseProxy;
  v6 = [(WBSHistoryServiceDatabaseProxy *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_proxy, a3);
    v8 = v7;
  }

  return v7;
}

- (id)_defaultProxyErrorHandlerWithSimpleReplyHandler:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__WBSHistoryServiceDatabaseProxy__defaultProxyErrorHandlerWithSimpleReplyHandler___block_invoke;
  v7[3] = &unk_1E7FB8300;
  v8 = v3;
  v4 = v3;
  v5 = MEMORY[0x1BFB13CE0](v7);

  return v5;
}

void __82__WBSHistoryServiceDatabaseProxy__defaultProxyErrorHandlerWithSimpleReplyHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, 0, v3);
  }

  else
  {
    v5 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __77__WBSHistoryConnectionProxy__defaultProxyErrorHandlerWithSimpleReplyHandler___block_invoke_cold_1(v5, v3);
    }
  }
}

- (void)fetchWithOptions:(unint64_t)a3 predicate:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  proxy = self->_proxy;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__WBSHistoryServiceDatabaseProxy_fetchWithOptions_predicate_completionHandler___block_invoke;
  v13[3] = &unk_1E7FB8300;
  v14 = v8;
  v10 = v8;
  v11 = a4;
  v12 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v13];
  [v12 fetchWithOptions:a3 predicate:v11 completionHandler:v10];
}

- (void)fetchDomainExpansions:(id)a3
{
  proxy = self->_proxy;
  v5 = a3;
  v6 = [(WBSHistoryServiceDatabaseProxy *)self _defaultProxyErrorHandlerWithSimpleReplyHandler:v5];
  v7 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v6];

  [v7 fetchDomainExpansions:v5];
}

- (void)clearAllHistoryInsertingTombstoneUpToDate:(id)a3 clearAllSpotlightHistoryForProfile:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  proxy = self->_proxy;
  v8 = a5;
  v9 = a3;
  v10 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v8];
  [v10 clearAllHistoryInsertingTombstoneUpToDate:v9 clearAllSpotlightHistoryForProfile:v5 completionHandler:v8];
}

- (void)clearHistoryVisitsAddedAfterDate:(id)a3 beforeDate:(id)a4 tombstoneMode:(unint64_t)a5 clearAllSpotlightHistoryForProfile:(BOOL)a6 completionHandler:(id)a7
{
  v7 = a6;
  proxy = self->_proxy;
  v12 = a7;
  v13 = a4;
  v14 = a3;
  v15 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v12];
  [v15 clearHistoryVisitsAddedAfterDate:v14 beforeDate:v13 tombstoneMode:a5 clearAllSpotlightHistoryForProfile:v7 completionHandler:v12];
}

- (void)clearHistoryItems:(id)a3 afterDate:(id)a4 beforeDate:(id)a5 tombstoneMode:(unint64_t)a6 completionHandler:(id)a7
{
  proxy = self->_proxy;
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v12];
  [v16 clearHistoryItems:v15 afterDate:v14 beforeDate:v13 tombstoneMode:a6 completionHandler:v12];
}

- (void)finishClearingHistoryIfNecessaryWithCompletionHandler:(id)a3
{
  proxy = self->_proxy;
  v4 = a3;
  v5 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v4];
  [v5 finishClearingHistoryIfNecessaryWithCompletionHandler:v4];
}

- (void)expireOldVisits:(double)a3 completionHandler:(id)a4
{
  proxy = self->_proxy;
  v6 = a4;
  v7 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v6];
  [v7 expireOldVisits:v6 completionHandler:a3];
}

- (void)recomputeItemScoresWithCompletionHandler:(id)a3
{
  proxy = self->_proxy;
  v5 = a3;
  v6 = [(WBSHistoryServiceDatabaseProxy *)self _defaultProxyErrorHandlerWithSimpleReplyHandler:v5];
  v7 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v6];

  [v7 recomputeItemScoresWithCompletionHandler:v5];
}

- (void)performMaintenanceWithAgeLimit:(double)a3 itemCountLimit:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = a5;
  proxy = self->_proxy;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __98__WBSHistoryServiceDatabaseProxy_performMaintenanceWithAgeLimit_itemCountLimit_completionHandler___block_invoke;
  v12[3] = &unk_1E7FB8300;
  v13 = v8;
  v10 = v8;
  v11 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v12];
  [v11 performMaintenanceWithAgeLimit:a4 itemCountLimit:v10 completionHandler:a3];
}

- (void)pruneTombstonesWithEndDatePriorToDate:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  proxy = self->_proxy;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __90__WBSHistoryServiceDatabaseProxy_pruneTombstonesWithEndDatePriorToDate_completionHandler___block_invoke;
  v11[3] = &unk_1E7FB8300;
  v12 = v6;
  v8 = v6;
  v9 = a3;
  v10 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v11];
  [v10 pruneTombstonesWithEndDatePriorToDate:v9 completionHandler:v8];
}

- (void)convertTombstoneWithGenerationToSecureFormat:(int64_t)a3 lastSyncedGeneration:(int64_t)a4 completionHandler:(id)a5
{
  proxy = self->_proxy;
  v8 = a5;
  v9 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v8];
  [v9 convertTombstoneWithGenerationToSecureFormat:a3 lastSyncedGeneration:a4 completionHandler:v8];
}

- (void)replayAndAddTombstones:(id)a3 completionHandler:(id)a4
{
  proxy = self->_proxy;
  v6 = a4;
  v7 = a3;
  v8 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v6];
  [v8 replayAndAddTombstones:v7 completionHandler:v6];
}

- (void)fetchAllTombstonesWithCompletionHandler:(id)a3
{
  v4 = a3;
  proxy = self->_proxy;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__WBSHistoryServiceDatabaseProxy_fetchAllTombstonesWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E7FB8300;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v8];
  [v7 fetchAllTombstonesWithCompletionHandler:v6];
}

- (void)addAutocompleteTrigger:(id)a3 forURL:(id)a4 completionHandler:(id)a5
{
  proxy = self->_proxy;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v8];
  [v11 addAutocompleteTrigger:v10 forURL:v9 completionHandler:v8];
}

- (void)fetchAutocompleteTriggersForURLString:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  proxy = self->_proxy;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __90__WBSHistoryServiceDatabaseProxy_fetchAutocompleteTriggersForURLString_completionHandler___block_invoke;
  v11[3] = &unk_1E7FB8300;
  v12 = v6;
  v8 = v6;
  v9 = a3;
  v10 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v11];
  [v10 fetchAutocompleteTriggersForURLString:v9 completionHandler:v8];
}

- (void)recordVisitWithIdentifier:(id)a3 sourceVisit:(id)a4 title:(id)a5 wasHTTPNonGet:(BOOL)a6 loadSuccessful:(BOOL)a7 origin:(int64_t)a8 attributes:(unint64_t)a9 statusCode:(int64_t)a10 completionHandler:(id)a11
{
  v12 = a7;
  v13 = a6;
  proxy = self->_proxy;
  v18 = a11;
  v19 = a5;
  v20 = a4;
  v21 = a3;
  v22 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v18];
  [v22 recordVisitWithIdentifier:v21 sourceVisit:v20 title:v19 wasHTTPNonGet:v13 loadSuccessful:v12 origin:a8 attributes:a9 statusCode:a10 completionHandler:v18];
}

- (void)updateVisitWithIdentifier:(id)a3 removeAttributes:(unint64_t)a4 addAttributes:(unint64_t)a5 completionHandler:(id)a6
{
  proxy = self->_proxy;
  v10 = a6;
  v11 = a3;
  v12 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v10];
  [v12 updateVisitWithIdentifier:v11 removeAttributes:a4 addAttributes:a5 completionHandler:v10];
}

- (void)updateVisitWithIdentifier:(id)a3 title:(id)a4 completionHandler:(id)a5
{
  proxy = self->_proxy;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v8];
  [v11 updateVisitWithIdentifier:v10 title:v9 completionHandler:v8];
}

- (void)flushWithCompletionHandler:(id)a3
{
  v4 = a3;
  proxy = self->_proxy;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__WBSHistoryServiceDatabaseProxy_flushWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E7FB8300;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v8];
  [v7 flushWithCompletionHandler:v6];
}

void __61__WBSHistoryServiceDatabaseProxy_flushWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXHistory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61__WBSHistoryServiceDatabaseProxy_flushWithCompletionHandler___block_invoke_cold_1(v4, v3);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)vacuumHistoryWithCompletionHandler:(id)a3
{
  proxy = self->_proxy;
  v4 = a3;
  v5 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v4];
  [v5 vacuumHistoryWithCompletionHandler:v4];
}

- (void)startImportHistorySessionWithVisitTimePrecision:(unint64_t)a3 completionHandler:(id)a4
{
  proxy = self->_proxy;
  v7 = a4;
  v8 = [(WBSHistoryServiceDatabaseProxy *)self _defaultProxyErrorHandlerWithSimpleReplyHandler:v7];
  v9 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v8];

  [v9 startImportHistorySessionWithVisitTimePrecision:a3 completionHandler:v7];
}

- (void)exportHistory:(id)a3 completionHandler:(id)a4
{
  proxy = self->_proxy;
  v6 = a4;
  v7 = a3;
  v8 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v6];
  [v8 exportHistory:v7 completionHandler:v6];
}

- (void)checkIfLocalVisitExistsForDatabaseIDs:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  proxy = self->_proxy;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __87__WBSHistoryServiceDatabaseProxy_checkIfLocalVisitExistsForDatabaseIDs_withCompletion___block_invoke;
  v11[3] = &unk_1E7FB8300;
  v12 = v6;
  v8 = v6;
  v9 = a3;
  v10 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v11];
  [v10 checkIfLocalVisitExistsForDatabaseIDs:v9 withCompletion:v8];
}

void __87__WBSHistoryServiceDatabaseProxy_checkIfLocalVisitExistsForDatabaseIDs_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXHistory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __87__WBSHistoryServiceDatabaseProxy_checkIfLocalVisitExistsForDatabaseIDs_withCompletion___block_invoke_cold_1(v4, v3);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)getHighLevelHTTPFamilyDomainsVisitedAfterDate:(id)a3 beforeDate:(id)a4 onlyFromThisDevice:(BOOL)a5 completionHandler:(id)a6
{
  v6 = a5;
  proxy = self->_proxy;
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = [(WBSHistoryServiceDatabaseProxy *)self _defaultProxyErrorHandlerWithSimpleReplyHandler:v11];
  v15 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v14];

  [v15 getHighLevelHTTPFamilyDomainsVisitedAfterDate:v13 beforeDate:v12 onlyFromThisDevice:v6 completionHandler:v11];
}

- (void)getItemCountBeforeDate:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  proxy = self->_proxy;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__WBSHistoryServiceDatabaseProxy_getItemCountBeforeDate_completionHandler___block_invoke;
  v11[3] = &unk_1E7FB8300;
  v12 = v6;
  v8 = v6;
  v9 = a3;
  v10 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v11];
  [v10 getItemCountBeforeDate:v9 completionHandler:v8];
}

- (void)getVisitedLinksWithCompletionHandler:(id)a3
{
  proxy = self->_proxy;
  v5 = a3;
  v6 = [(WBSHistoryServiceDatabaseProxy *)self _defaultProxyErrorHandlerWithSimpleReplyHandler:v5];
  v7 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v6];

  [v7 getVisitedLinksWithCompletionHandler:v5];
}

- (void)groupVisitsIntoSessionsBetweenStartDate:(id)a3 endDate:(id)a4 completionHandler:(id)a5
{
  proxy = self->_proxy;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [(WBSHistoryServiceDatabaseProxy *)self _defaultProxyErrorHandlerWithSimpleReplyHandler:v9];
  v13 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v12];

  [v13 groupVisitsIntoSessionsBetweenStartDate:v11 endDate:v10 completionHandler:v9];
}

- (void)fetchCloudClientVersionTable:(id)a3
{
  proxy = self->_proxy;
  v5 = a3;
  v6 = [(WBSHistoryServiceDatabaseProxy *)self _defaultProxyErrorHandlerWithSimpleReplyHandler:v5];
  v7 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v6];

  [v7 fetchCloudClientVersionTable:v5];
}

- (void)lastSeenDateForCloudClientVersion:(unint64_t)a3 completionHandler:(id)a4
{
  proxy = self->_proxy;
  v7 = a4;
  v8 = [(WBSHistoryServiceDatabaseProxy *)self _defaultProxyErrorHandlerWithSimpleReplyHandler:v7];
  v9 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v8];

  [v9 lastSeenDateForCloudClientVersion:a3 completionHandler:v7];
}

- (void)setLastSeenDate:(id)a3 forCloudClientVersion:(unint64_t)a4 completionHandler:(id)a5
{
  proxy = self->_proxy;
  v8 = a5;
  v9 = a3;
  v10 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v8];
  [v10 setLastSeenDate:v9 forCloudClientVersion:a4 completionHandler:v8];
}

- (void)fetchMetadataForKeys:(id)a3 completionHandler:(id)a4
{
  proxy = self->_proxy;
  v7 = a4;
  v8 = a3;
  v9 = [(WBSHistoryServiceDatabaseProxy *)self _defaultProxyErrorHandlerWithSimpleReplyHandler:v7];
  v10 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v9];

  [v10 fetchMetadataForKeys:v8 completionHandler:v7];
}

- (void)setMetadataValue:(id)a3 forKey:(id)a4 completionHandler:(id)a5
{
  proxy = self->_proxy;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v8];
  [v11 setMetadataValue:v10 forKey:v9 completionHandler:v8];
}

- (void)fetchDatabaseURL:(id)a3
{
  proxy = self->_proxy;
  v5 = a3;
  v6 = [(WBSHistoryServiceDatabaseProxy *)self _defaultProxyErrorHandlerWithSimpleReplyHandler:v5];
  v7 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v6];

  [v7 fetchDatabaseURL:v5];
}

- (void)searchForUserTypedString:(id)a3 options:(unint64_t)a4 currentTime:(double)a5 writeHandle:(id)a6 completionHandler:(id)a7
{
  proxy = self->_proxy;
  v12 = a7;
  v13 = a6;
  v14 = a3;
  v15 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v12];
  [v15 searchForUserTypedString:v14 options:a4 currentTime:v13 writeHandle:v12 completionHandler:a5];
}

- (void)computeFrequentlyVisitedSites:(unint64_t)a3 minimalVisitCountScore:(unint64_t)a4 blockList:(id)a5 allowList:(id)a6 options:(unint64_t)a7 currentTime:(double)a8 completionHandler:(id)a9
{
  proxy = self->_proxy;
  v17 = a9;
  v18 = a6;
  v19 = a5;
  v20 = [(WBSHistoryServiceDatabaseProxy *)self _defaultProxyErrorHandlerWithSimpleReplyHandler:v17];
  v21 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v20];

  [v21 computeFrequentlyVisitedSites:a3 minimalVisitCountScore:a4 blockList:v19 allowList:v18 options:a7 currentTime:v17 completionHandler:a8];
}

- (void)fetchEventsForListener:(id)a3 completionHandler:(id)a4
{
  proxy = self->_proxy;
  v7 = a4;
  v8 = a3;
  v9 = [(WBSHistoryServiceDatabaseProxy *)self _defaultProxyErrorHandlerWithSimpleReplyHandler:v7];
  v10 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v9];

  [v10 fetchEventsForListener:v8 completionHandler:v7];
}

- (void)markEventsAsReceivedByListener:(id)a3 eventIDs:(id)a4 completionHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  proxy = self->_proxy;
  if (v9)
  {
    v11 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v9];
  }

  else
  {
    v11 = proxy;
  }

  v12 = v11;
  [(NSXPCProxyCreating *)v11 markEventsAsReceivedByListener:v13 eventIDs:v8 completionHandler:v9];
}

- (void)dispatchEvent:(id)a3 listenersToIgnore:(id)a4 persistForDelayedDispatching:(BOOL)a5 completionHandler:(id)a6
{
  v6 = a5;
  v10 = a6;
  proxy = self->_proxy;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __113__WBSHistoryServiceDatabaseProxy_dispatchEvent_listenersToIgnore_persistForDelayedDispatching_completionHandler___block_invoke;
  v16[3] = &unk_1E7FB8300;
  v17 = v10;
  v12 = v10;
  v13 = a4;
  v14 = a3;
  v15 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v16];
  [v15 dispatchEvent:v14 listenersToIgnore:v13 persistForDelayedDispatching:v6 completionHandler:v12];
}

- (void)visitIdentifiersMatchingExistingVisits:(id)a3 desiredVisitTimePrecision:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = a5;
  proxy = self->_proxy;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __117__WBSHistoryServiceDatabaseProxy_visitIdentifiersMatchingExistingVisits_desiredVisitTimePrecision_completionHandler___block_invoke;
  v13[3] = &unk_1E7FB8300;
  v14 = v8;
  v10 = v8;
  v11 = a3;
  v12 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v13];
  [v12 visitIdentifiersMatchingExistingVisits:v11 desiredVisitTimePrecision:a4 completionHandler:v10];
}

- (void)resetCloudHistoryDataWithCompletionHandler:(id)a3
{
  proxy = self->_proxy;
  v4 = a3;
  v5 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v4];
  [v5 resetCloudHistoryDataWithCompletionHandler:v4];
}

- (void)visitsAndTombstonesNeedingSyncWithVisitSyncWindow:(double)a3 completionHandler:(id)a4
{
  v6 = a4;
  proxy = self->_proxy;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __102__WBSHistoryServiceDatabaseProxy_visitsAndTombstonesNeedingSyncWithVisitSyncWindow_completionHandler___block_invoke;
  v10[3] = &unk_1E7FB8300;
  v11 = v6;
  v8 = v6;
  v9 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v10];
  [v9 visitsAndTombstonesNeedingSyncWithVisitSyncWindow:v8 completionHandler:a3];
}

- (void)updateDatabaseAfterSuccessfulSyncWithGeneration:(int64_t)a3 completionHandler:(id)a4
{
  proxy = self->_proxy;
  v6 = a4;
  v7 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v6];
  [v7 updateDatabaseAfterSuccessfulSyncWithGeneration:a3 completionHandler:v6];
}

- (void)createTagsForIdentifiers:(id)a3 withTitles:(id)a4 type:(unint64_t)a5 level:(int64_t)a6 completionHandler:(id)a7
{
  proxy = self->_proxy;
  v12 = a7;
  v13 = a4;
  v14 = a3;
  v15 = [(NSXPCProxyCreating *)proxy remoteObjectProxy];
  [v15 createTagsForIdentifiers:v14 withTitles:v13 type:a5 level:a6 completionHandler:v12];
}

- (void)assignURLString:(id)a3 toTopicTagsWithIDs:(id)a4 completionHandler:(id)a5
{
  proxy = self->_proxy;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(NSXPCProxyCreating *)proxy remoteObjectProxy];
  [v11 assignURLString:v10 toTopicTagsWithIDs:v9 completionHandler:v8];
}

- (void)setTitle:(id)a3 ofTagWithID:(int64_t)a4 completionHandler:(id)a5
{
  proxy = self->_proxy;
  v8 = a5;
  v9 = a3;
  v10 = [(NSXPCProxyCreating *)proxy remoteObjectProxy];
  [v10 setTitle:v9 ofTagWithID:a4 completionHandler:v8];
}

void __61__WBSHistoryServiceDatabaseProxy_flushWithCompletionHandler___block_invoke_cold_1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_1(&dword_1BB6F3000, v5, v6, "Failed to flush database: %{public}@", v7, v8, v9, v10, 2u);
}

void __87__WBSHistoryServiceDatabaseProxy_checkIfLocalVisitExistsForDatabaseIDs_withCompletion___block_invoke_cold_1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_1(&dword_1BB6F3000, v5, v6, "Failed to check local visit for history items: %{public}@", v7, v8, v9, v10, 2u);
}

@end