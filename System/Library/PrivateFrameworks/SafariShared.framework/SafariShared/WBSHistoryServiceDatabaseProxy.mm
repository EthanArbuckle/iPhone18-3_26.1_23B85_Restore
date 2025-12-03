@interface WBSHistoryServiceDatabaseProxy
- (WBSHistoryServiceDatabaseProxy)initWithProxy:(id)proxy;
- (id)_defaultProxyErrorHandlerWithSimpleReplyHandler:(id)handler;
- (void)addAutocompleteTrigger:(id)trigger forURL:(id)l completionHandler:(id)handler;
- (void)assignURLString:(id)string toTopicTagsWithIDs:(id)ds completionHandler:(id)handler;
- (void)checkIfLocalVisitExistsForDatabaseIDs:(id)ds withCompletion:(id)completion;
- (void)clearAllHistoryInsertingTombstoneUpToDate:(id)date clearAllSpotlightHistoryForProfile:(BOOL)profile completionHandler:(id)handler;
- (void)clearHistoryItems:(id)items afterDate:(id)date beforeDate:(id)beforeDate tombstoneMode:(unint64_t)mode completionHandler:(id)handler;
- (void)clearHistoryVisitsAddedAfterDate:(id)date beforeDate:(id)beforeDate tombstoneMode:(unint64_t)mode clearAllSpotlightHistoryForProfile:(BOOL)profile completionHandler:(id)handler;
- (void)computeFrequentlyVisitedSites:(unint64_t)sites minimalVisitCountScore:(unint64_t)score blockList:(id)list allowList:(id)allowList options:(unint64_t)options currentTime:(double)time completionHandler:(id)handler;
- (void)convertTombstoneWithGenerationToSecureFormat:(int64_t)format lastSyncedGeneration:(int64_t)generation completionHandler:(id)handler;
- (void)createTagsForIdentifiers:(id)identifiers withTitles:(id)titles type:(unint64_t)type level:(int64_t)level completionHandler:(id)handler;
- (void)dispatchEvent:(id)event listenersToIgnore:(id)ignore persistForDelayedDispatching:(BOOL)dispatching completionHandler:(id)handler;
- (void)expireOldVisits:(double)visits completionHandler:(id)handler;
- (void)exportHistory:(id)history completionHandler:(id)handler;
- (void)fetchAllTombstonesWithCompletionHandler:(id)handler;
- (void)fetchAutocompleteTriggersForURLString:(id)string completionHandler:(id)handler;
- (void)fetchCloudClientVersionTable:(id)table;
- (void)fetchDatabaseURL:(id)l;
- (void)fetchDomainExpansions:(id)expansions;
- (void)fetchEventsForListener:(id)listener completionHandler:(id)handler;
- (void)fetchMetadataForKeys:(id)keys completionHandler:(id)handler;
- (void)fetchWithOptions:(unint64_t)options predicate:(id)predicate completionHandler:(id)handler;
- (void)finishClearingHistoryIfNecessaryWithCompletionHandler:(id)handler;
- (void)flushWithCompletionHandler:(id)handler;
- (void)getHighLevelHTTPFamilyDomainsVisitedAfterDate:(id)date beforeDate:(id)beforeDate onlyFromThisDevice:(BOOL)device completionHandler:(id)handler;
- (void)getItemCountBeforeDate:(id)date completionHandler:(id)handler;
- (void)getVisitedLinksWithCompletionHandler:(id)handler;
- (void)groupVisitsIntoSessionsBetweenStartDate:(id)date endDate:(id)endDate completionHandler:(id)handler;
- (void)lastSeenDateForCloudClientVersion:(unint64_t)version completionHandler:(id)handler;
- (void)markEventsAsReceivedByListener:(id)listener eventIDs:(id)ds completionHandler:(id)handler;
- (void)performMaintenanceWithAgeLimit:(double)limit itemCountLimit:(unint64_t)countLimit completionHandler:(id)handler;
- (void)pruneTombstonesWithEndDatePriorToDate:(id)date completionHandler:(id)handler;
- (void)recomputeItemScoresWithCompletionHandler:(id)handler;
- (void)recordVisitWithIdentifier:(id)identifier sourceVisit:(id)visit title:(id)title wasHTTPNonGet:(BOOL)get loadSuccessful:(BOOL)successful origin:(int64_t)origin attributes:(unint64_t)attributes statusCode:(int64_t)self0 completionHandler:(id)self1;
- (void)replayAndAddTombstones:(id)tombstones completionHandler:(id)handler;
- (void)resetCloudHistoryDataWithCompletionHandler:(id)handler;
- (void)searchForUserTypedString:(id)string options:(unint64_t)options currentTime:(double)time writeHandle:(id)handle completionHandler:(id)handler;
- (void)setLastSeenDate:(id)date forCloudClientVersion:(unint64_t)version completionHandler:(id)handler;
- (void)setMetadataValue:(id)value forKey:(id)key completionHandler:(id)handler;
- (void)setTitle:(id)title ofTagWithID:(int64_t)d completionHandler:(id)handler;
- (void)startImportHistorySessionWithVisitTimePrecision:(unint64_t)precision completionHandler:(id)handler;
- (void)updateDatabaseAfterSuccessfulSyncWithGeneration:(int64_t)generation completionHandler:(id)handler;
- (void)updateVisitWithIdentifier:(id)identifier removeAttributes:(unint64_t)attributes addAttributes:(unint64_t)addAttributes completionHandler:(id)handler;
- (void)updateVisitWithIdentifier:(id)identifier title:(id)title completionHandler:(id)handler;
- (void)vacuumHistoryWithCompletionHandler:(id)handler;
- (void)visitIdentifiersMatchingExistingVisits:(id)visits desiredVisitTimePrecision:(unint64_t)precision completionHandler:(id)handler;
- (void)visitsAndTombstonesNeedingSyncWithVisitSyncWindow:(double)window completionHandler:(id)handler;
@end

@implementation WBSHistoryServiceDatabaseProxy

- (WBSHistoryServiceDatabaseProxy)initWithProxy:(id)proxy
{
  proxyCopy = proxy;
  v10.receiver = self;
  v10.super_class = WBSHistoryServiceDatabaseProxy;
  v6 = [(WBSHistoryServiceDatabaseProxy *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_proxy, proxy);
    v8 = v7;
  }

  return v7;
}

- (id)_defaultProxyErrorHandlerWithSimpleReplyHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__WBSHistoryServiceDatabaseProxy__defaultProxyErrorHandlerWithSimpleReplyHandler___block_invoke;
  v7[3] = &unk_1E7FB8300;
  v8 = handlerCopy;
  v4 = handlerCopy;
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

- (void)fetchWithOptions:(unint64_t)options predicate:(id)predicate completionHandler:(id)handler
{
  handlerCopy = handler;
  proxy = self->_proxy;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__WBSHistoryServiceDatabaseProxy_fetchWithOptions_predicate_completionHandler___block_invoke;
  v13[3] = &unk_1E7FB8300;
  v14 = handlerCopy;
  v10 = handlerCopy;
  predicateCopy = predicate;
  v12 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v13];
  [v12 fetchWithOptions:options predicate:predicateCopy completionHandler:v10];
}

- (void)fetchDomainExpansions:(id)expansions
{
  proxy = self->_proxy;
  expansionsCopy = expansions;
  v6 = [(WBSHistoryServiceDatabaseProxy *)self _defaultProxyErrorHandlerWithSimpleReplyHandler:expansionsCopy];
  v7 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v6];

  [v7 fetchDomainExpansions:expansionsCopy];
}

- (void)clearAllHistoryInsertingTombstoneUpToDate:(id)date clearAllSpotlightHistoryForProfile:(BOOL)profile completionHandler:(id)handler
{
  profileCopy = profile;
  proxy = self->_proxy;
  handlerCopy = handler;
  dateCopy = date;
  v10 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:handlerCopy];
  [v10 clearAllHistoryInsertingTombstoneUpToDate:dateCopy clearAllSpotlightHistoryForProfile:profileCopy completionHandler:handlerCopy];
}

- (void)clearHistoryVisitsAddedAfterDate:(id)date beforeDate:(id)beforeDate tombstoneMode:(unint64_t)mode clearAllSpotlightHistoryForProfile:(BOOL)profile completionHandler:(id)handler
{
  profileCopy = profile;
  proxy = self->_proxy;
  handlerCopy = handler;
  beforeDateCopy = beforeDate;
  dateCopy = date;
  v15 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:handlerCopy];
  [v15 clearHistoryVisitsAddedAfterDate:dateCopy beforeDate:beforeDateCopy tombstoneMode:mode clearAllSpotlightHistoryForProfile:profileCopy completionHandler:handlerCopy];
}

- (void)clearHistoryItems:(id)items afterDate:(id)date beforeDate:(id)beforeDate tombstoneMode:(unint64_t)mode completionHandler:(id)handler
{
  proxy = self->_proxy;
  handlerCopy = handler;
  beforeDateCopy = beforeDate;
  dateCopy = date;
  itemsCopy = items;
  v16 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:handlerCopy];
  [v16 clearHistoryItems:itemsCopy afterDate:dateCopy beforeDate:beforeDateCopy tombstoneMode:mode completionHandler:handlerCopy];
}

- (void)finishClearingHistoryIfNecessaryWithCompletionHandler:(id)handler
{
  proxy = self->_proxy;
  handlerCopy = handler;
  v5 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:handlerCopy];
  [v5 finishClearingHistoryIfNecessaryWithCompletionHandler:handlerCopy];
}

- (void)expireOldVisits:(double)visits completionHandler:(id)handler
{
  proxy = self->_proxy;
  handlerCopy = handler;
  v7 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:handlerCopy];
  [v7 expireOldVisits:handlerCopy completionHandler:visits];
}

- (void)recomputeItemScoresWithCompletionHandler:(id)handler
{
  proxy = self->_proxy;
  handlerCopy = handler;
  v6 = [(WBSHistoryServiceDatabaseProxy *)self _defaultProxyErrorHandlerWithSimpleReplyHandler:handlerCopy];
  v7 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v6];

  [v7 recomputeItemScoresWithCompletionHandler:handlerCopy];
}

- (void)performMaintenanceWithAgeLimit:(double)limit itemCountLimit:(unint64_t)countLimit completionHandler:(id)handler
{
  handlerCopy = handler;
  proxy = self->_proxy;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __98__WBSHistoryServiceDatabaseProxy_performMaintenanceWithAgeLimit_itemCountLimit_completionHandler___block_invoke;
  v12[3] = &unk_1E7FB8300;
  v13 = handlerCopy;
  v10 = handlerCopy;
  v11 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v12];
  [v11 performMaintenanceWithAgeLimit:countLimit itemCountLimit:v10 completionHandler:limit];
}

- (void)pruneTombstonesWithEndDatePriorToDate:(id)date completionHandler:(id)handler
{
  handlerCopy = handler;
  proxy = self->_proxy;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __90__WBSHistoryServiceDatabaseProxy_pruneTombstonesWithEndDatePriorToDate_completionHandler___block_invoke;
  v11[3] = &unk_1E7FB8300;
  v12 = handlerCopy;
  v8 = handlerCopy;
  dateCopy = date;
  v10 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v11];
  [v10 pruneTombstonesWithEndDatePriorToDate:dateCopy completionHandler:v8];
}

- (void)convertTombstoneWithGenerationToSecureFormat:(int64_t)format lastSyncedGeneration:(int64_t)generation completionHandler:(id)handler
{
  proxy = self->_proxy;
  handlerCopy = handler;
  v9 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:handlerCopy];
  [v9 convertTombstoneWithGenerationToSecureFormat:format lastSyncedGeneration:generation completionHandler:handlerCopy];
}

- (void)replayAndAddTombstones:(id)tombstones completionHandler:(id)handler
{
  proxy = self->_proxy;
  handlerCopy = handler;
  tombstonesCopy = tombstones;
  v8 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:handlerCopy];
  [v8 replayAndAddTombstones:tombstonesCopy completionHandler:handlerCopy];
}

- (void)fetchAllTombstonesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  proxy = self->_proxy;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__WBSHistoryServiceDatabaseProxy_fetchAllTombstonesWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E7FB8300;
  v9 = handlerCopy;
  v6 = handlerCopy;
  v7 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v8];
  [v7 fetchAllTombstonesWithCompletionHandler:v6];
}

- (void)addAutocompleteTrigger:(id)trigger forURL:(id)l completionHandler:(id)handler
{
  proxy = self->_proxy;
  handlerCopy = handler;
  lCopy = l;
  triggerCopy = trigger;
  v11 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:handlerCopy];
  [v11 addAutocompleteTrigger:triggerCopy forURL:lCopy completionHandler:handlerCopy];
}

- (void)fetchAutocompleteTriggersForURLString:(id)string completionHandler:(id)handler
{
  handlerCopy = handler;
  proxy = self->_proxy;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __90__WBSHistoryServiceDatabaseProxy_fetchAutocompleteTriggersForURLString_completionHandler___block_invoke;
  v11[3] = &unk_1E7FB8300;
  v12 = handlerCopy;
  v8 = handlerCopy;
  stringCopy = string;
  v10 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v11];
  [v10 fetchAutocompleteTriggersForURLString:stringCopy completionHandler:v8];
}

- (void)recordVisitWithIdentifier:(id)identifier sourceVisit:(id)visit title:(id)title wasHTTPNonGet:(BOOL)get loadSuccessful:(BOOL)successful origin:(int64_t)origin attributes:(unint64_t)attributes statusCode:(int64_t)self0 completionHandler:(id)self1
{
  successfulCopy = successful;
  getCopy = get;
  proxy = self->_proxy;
  handlerCopy = handler;
  titleCopy = title;
  visitCopy = visit;
  identifierCopy = identifier;
  v22 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:handlerCopy];
  [v22 recordVisitWithIdentifier:identifierCopy sourceVisit:visitCopy title:titleCopy wasHTTPNonGet:getCopy loadSuccessful:successfulCopy origin:origin attributes:attributes statusCode:code completionHandler:handlerCopy];
}

- (void)updateVisitWithIdentifier:(id)identifier removeAttributes:(unint64_t)attributes addAttributes:(unint64_t)addAttributes completionHandler:(id)handler
{
  proxy = self->_proxy;
  handlerCopy = handler;
  identifierCopy = identifier;
  v12 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:handlerCopy];
  [v12 updateVisitWithIdentifier:identifierCopy removeAttributes:attributes addAttributes:addAttributes completionHandler:handlerCopy];
}

- (void)updateVisitWithIdentifier:(id)identifier title:(id)title completionHandler:(id)handler
{
  proxy = self->_proxy;
  handlerCopy = handler;
  titleCopy = title;
  identifierCopy = identifier;
  v11 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:handlerCopy];
  [v11 updateVisitWithIdentifier:identifierCopy title:titleCopy completionHandler:handlerCopy];
}

- (void)flushWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  proxy = self->_proxy;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__WBSHistoryServiceDatabaseProxy_flushWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E7FB8300;
  v9 = handlerCopy;
  v6 = handlerCopy;
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

- (void)vacuumHistoryWithCompletionHandler:(id)handler
{
  proxy = self->_proxy;
  handlerCopy = handler;
  v5 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:handlerCopy];
  [v5 vacuumHistoryWithCompletionHandler:handlerCopy];
}

- (void)startImportHistorySessionWithVisitTimePrecision:(unint64_t)precision completionHandler:(id)handler
{
  proxy = self->_proxy;
  handlerCopy = handler;
  v8 = [(WBSHistoryServiceDatabaseProxy *)self _defaultProxyErrorHandlerWithSimpleReplyHandler:handlerCopy];
  v9 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v8];

  [v9 startImportHistorySessionWithVisitTimePrecision:precision completionHandler:handlerCopy];
}

- (void)exportHistory:(id)history completionHandler:(id)handler
{
  proxy = self->_proxy;
  handlerCopy = handler;
  historyCopy = history;
  v8 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:handlerCopy];
  [v8 exportHistory:historyCopy completionHandler:handlerCopy];
}

- (void)checkIfLocalVisitExistsForDatabaseIDs:(id)ds withCompletion:(id)completion
{
  completionCopy = completion;
  proxy = self->_proxy;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __87__WBSHistoryServiceDatabaseProxy_checkIfLocalVisitExistsForDatabaseIDs_withCompletion___block_invoke;
  v11[3] = &unk_1E7FB8300;
  v12 = completionCopy;
  v8 = completionCopy;
  dsCopy = ds;
  v10 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v11];
  [v10 checkIfLocalVisitExistsForDatabaseIDs:dsCopy withCompletion:v8];
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

- (void)getHighLevelHTTPFamilyDomainsVisitedAfterDate:(id)date beforeDate:(id)beforeDate onlyFromThisDevice:(BOOL)device completionHandler:(id)handler
{
  deviceCopy = device;
  proxy = self->_proxy;
  handlerCopy = handler;
  beforeDateCopy = beforeDate;
  dateCopy = date;
  v14 = [(WBSHistoryServiceDatabaseProxy *)self _defaultProxyErrorHandlerWithSimpleReplyHandler:handlerCopy];
  v15 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v14];

  [v15 getHighLevelHTTPFamilyDomainsVisitedAfterDate:dateCopy beforeDate:beforeDateCopy onlyFromThisDevice:deviceCopy completionHandler:handlerCopy];
}

- (void)getItemCountBeforeDate:(id)date completionHandler:(id)handler
{
  handlerCopy = handler;
  proxy = self->_proxy;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__WBSHistoryServiceDatabaseProxy_getItemCountBeforeDate_completionHandler___block_invoke;
  v11[3] = &unk_1E7FB8300;
  v12 = handlerCopy;
  v8 = handlerCopy;
  dateCopy = date;
  v10 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v11];
  [v10 getItemCountBeforeDate:dateCopy completionHandler:v8];
}

- (void)getVisitedLinksWithCompletionHandler:(id)handler
{
  proxy = self->_proxy;
  handlerCopy = handler;
  v6 = [(WBSHistoryServiceDatabaseProxy *)self _defaultProxyErrorHandlerWithSimpleReplyHandler:handlerCopy];
  v7 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v6];

  [v7 getVisitedLinksWithCompletionHandler:handlerCopy];
}

- (void)groupVisitsIntoSessionsBetweenStartDate:(id)date endDate:(id)endDate completionHandler:(id)handler
{
  proxy = self->_proxy;
  handlerCopy = handler;
  endDateCopy = endDate;
  dateCopy = date;
  v12 = [(WBSHistoryServiceDatabaseProxy *)self _defaultProxyErrorHandlerWithSimpleReplyHandler:handlerCopy];
  v13 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v12];

  [v13 groupVisitsIntoSessionsBetweenStartDate:dateCopy endDate:endDateCopy completionHandler:handlerCopy];
}

- (void)fetchCloudClientVersionTable:(id)table
{
  proxy = self->_proxy;
  tableCopy = table;
  v6 = [(WBSHistoryServiceDatabaseProxy *)self _defaultProxyErrorHandlerWithSimpleReplyHandler:tableCopy];
  v7 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v6];

  [v7 fetchCloudClientVersionTable:tableCopy];
}

- (void)lastSeenDateForCloudClientVersion:(unint64_t)version completionHandler:(id)handler
{
  proxy = self->_proxy;
  handlerCopy = handler;
  v8 = [(WBSHistoryServiceDatabaseProxy *)self _defaultProxyErrorHandlerWithSimpleReplyHandler:handlerCopy];
  v9 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v8];

  [v9 lastSeenDateForCloudClientVersion:version completionHandler:handlerCopy];
}

- (void)setLastSeenDate:(id)date forCloudClientVersion:(unint64_t)version completionHandler:(id)handler
{
  proxy = self->_proxy;
  handlerCopy = handler;
  dateCopy = date;
  v10 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:handlerCopy];
  [v10 setLastSeenDate:dateCopy forCloudClientVersion:version completionHandler:handlerCopy];
}

- (void)fetchMetadataForKeys:(id)keys completionHandler:(id)handler
{
  proxy = self->_proxy;
  handlerCopy = handler;
  keysCopy = keys;
  v9 = [(WBSHistoryServiceDatabaseProxy *)self _defaultProxyErrorHandlerWithSimpleReplyHandler:handlerCopy];
  v10 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v9];

  [v10 fetchMetadataForKeys:keysCopy completionHandler:handlerCopy];
}

- (void)setMetadataValue:(id)value forKey:(id)key completionHandler:(id)handler
{
  proxy = self->_proxy;
  handlerCopy = handler;
  keyCopy = key;
  valueCopy = value;
  v11 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:handlerCopy];
  [v11 setMetadataValue:valueCopy forKey:keyCopy completionHandler:handlerCopy];
}

- (void)fetchDatabaseURL:(id)l
{
  proxy = self->_proxy;
  lCopy = l;
  v6 = [(WBSHistoryServiceDatabaseProxy *)self _defaultProxyErrorHandlerWithSimpleReplyHandler:lCopy];
  v7 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v6];

  [v7 fetchDatabaseURL:lCopy];
}

- (void)searchForUserTypedString:(id)string options:(unint64_t)options currentTime:(double)time writeHandle:(id)handle completionHandler:(id)handler
{
  proxy = self->_proxy;
  handlerCopy = handler;
  handleCopy = handle;
  stringCopy = string;
  v15 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:handlerCopy];
  [v15 searchForUserTypedString:stringCopy options:options currentTime:handleCopy writeHandle:handlerCopy completionHandler:time];
}

- (void)computeFrequentlyVisitedSites:(unint64_t)sites minimalVisitCountScore:(unint64_t)score blockList:(id)list allowList:(id)allowList options:(unint64_t)options currentTime:(double)time completionHandler:(id)handler
{
  proxy = self->_proxy;
  handlerCopy = handler;
  allowListCopy = allowList;
  listCopy = list;
  v20 = [(WBSHistoryServiceDatabaseProxy *)self _defaultProxyErrorHandlerWithSimpleReplyHandler:handlerCopy];
  v21 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v20];

  [v21 computeFrequentlyVisitedSites:sites minimalVisitCountScore:score blockList:listCopy allowList:allowListCopy options:options currentTime:handlerCopy completionHandler:time];
}

- (void)fetchEventsForListener:(id)listener completionHandler:(id)handler
{
  proxy = self->_proxy;
  handlerCopy = handler;
  listenerCopy = listener;
  v9 = [(WBSHistoryServiceDatabaseProxy *)self _defaultProxyErrorHandlerWithSimpleReplyHandler:handlerCopy];
  v10 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v9];

  [v10 fetchEventsForListener:listenerCopy completionHandler:handlerCopy];
}

- (void)markEventsAsReceivedByListener:(id)listener eventIDs:(id)ds completionHandler:(id)handler
{
  listenerCopy = listener;
  dsCopy = ds;
  handlerCopy = handler;
  proxy = self->_proxy;
  if (handlerCopy)
  {
    v11 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:handlerCopy];
  }

  else
  {
    v11 = proxy;
  }

  v12 = v11;
  [(NSXPCProxyCreating *)v11 markEventsAsReceivedByListener:listenerCopy eventIDs:dsCopy completionHandler:handlerCopy];
}

- (void)dispatchEvent:(id)event listenersToIgnore:(id)ignore persistForDelayedDispatching:(BOOL)dispatching completionHandler:(id)handler
{
  dispatchingCopy = dispatching;
  handlerCopy = handler;
  proxy = self->_proxy;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __113__WBSHistoryServiceDatabaseProxy_dispatchEvent_listenersToIgnore_persistForDelayedDispatching_completionHandler___block_invoke;
  v16[3] = &unk_1E7FB8300;
  v17 = handlerCopy;
  v12 = handlerCopy;
  ignoreCopy = ignore;
  eventCopy = event;
  v15 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v16];
  [v15 dispatchEvent:eventCopy listenersToIgnore:ignoreCopy persistForDelayedDispatching:dispatchingCopy completionHandler:v12];
}

- (void)visitIdentifiersMatchingExistingVisits:(id)visits desiredVisitTimePrecision:(unint64_t)precision completionHandler:(id)handler
{
  handlerCopy = handler;
  proxy = self->_proxy;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __117__WBSHistoryServiceDatabaseProxy_visitIdentifiersMatchingExistingVisits_desiredVisitTimePrecision_completionHandler___block_invoke;
  v13[3] = &unk_1E7FB8300;
  v14 = handlerCopy;
  v10 = handlerCopy;
  visitsCopy = visits;
  v12 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v13];
  [v12 visitIdentifiersMatchingExistingVisits:visitsCopy desiredVisitTimePrecision:precision completionHandler:v10];
}

- (void)resetCloudHistoryDataWithCompletionHandler:(id)handler
{
  proxy = self->_proxy;
  handlerCopy = handler;
  v5 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:handlerCopy];
  [v5 resetCloudHistoryDataWithCompletionHandler:handlerCopy];
}

- (void)visitsAndTombstonesNeedingSyncWithVisitSyncWindow:(double)window completionHandler:(id)handler
{
  handlerCopy = handler;
  proxy = self->_proxy;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __102__WBSHistoryServiceDatabaseProxy_visitsAndTombstonesNeedingSyncWithVisitSyncWindow_completionHandler___block_invoke;
  v10[3] = &unk_1E7FB8300;
  v11 = handlerCopy;
  v8 = handlerCopy;
  v9 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v10];
  [v9 visitsAndTombstonesNeedingSyncWithVisitSyncWindow:v8 completionHandler:window];
}

- (void)updateDatabaseAfterSuccessfulSyncWithGeneration:(int64_t)generation completionHandler:(id)handler
{
  proxy = self->_proxy;
  handlerCopy = handler;
  v7 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:handlerCopy];
  [v7 updateDatabaseAfterSuccessfulSyncWithGeneration:generation completionHandler:handlerCopy];
}

- (void)createTagsForIdentifiers:(id)identifiers withTitles:(id)titles type:(unint64_t)type level:(int64_t)level completionHandler:(id)handler
{
  proxy = self->_proxy;
  handlerCopy = handler;
  titlesCopy = titles;
  identifiersCopy = identifiers;
  remoteObjectProxy = [(NSXPCProxyCreating *)proxy remoteObjectProxy];
  [remoteObjectProxy createTagsForIdentifiers:identifiersCopy withTitles:titlesCopy type:type level:level completionHandler:handlerCopy];
}

- (void)assignURLString:(id)string toTopicTagsWithIDs:(id)ds completionHandler:(id)handler
{
  proxy = self->_proxy;
  handlerCopy = handler;
  dsCopy = ds;
  stringCopy = string;
  remoteObjectProxy = [(NSXPCProxyCreating *)proxy remoteObjectProxy];
  [remoteObjectProxy assignURLString:stringCopy toTopicTagsWithIDs:dsCopy completionHandler:handlerCopy];
}

- (void)setTitle:(id)title ofTagWithID:(int64_t)d completionHandler:(id)handler
{
  proxy = self->_proxy;
  handlerCopy = handler;
  titleCopy = title;
  remoteObjectProxy = [(NSXPCProxyCreating *)proxy remoteObjectProxy];
  [remoteObjectProxy setTitle:titleCopy ofTagWithID:d completionHandler:handlerCopy];
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