@interface PLPhotoAnalysisMomentGraphService
- (PLPhotoAnalysisMomentGraphService)initWithServiceProvider:(id)provider;
- (id)graphStatusWithError:(id *)error;
- (id)requestAssetSearchKeywordsForAssetCollectionUUIDs:(id)ds ofType:(unint64_t)type operationID:(id)d error:(id *)error;
- (id)requestGraphSearchMetadataWithOptions:(id)options operationID:(id)d error:(id *)error;
- (id)requestSearchIndexKeywordsForAssetCollectionUUIDs:(id)ds ofType:(unint64_t)type operationID:(id)d error:(id *)error;
- (id)requestSearchableAssetUUIDsBySocialGroupForAssetCollectionUUIDs:(id)ds ofType:(unint64_t)type isFullAnalysis:(BOOL)analysis operationID:(id)d error:(id *)error;
- (id)requestSynonymsDictionariesWithOperationID:(id)d error:(id *)error;
- (void)cancelOperationsWithIdentifiers:(id)identifiers reply:(id)reply;
- (void)debugValidationFromQueryTemplate:(id)template person:(id)person city:(id)city place:(id)place time:(id)time reply:(id)reply;
- (void)fetchUnvalidatedPromptSuggestionsWithFetchLimit:(int64_t)limit reply:(id)reply;
- (void)generateContextualPromptSuggestionsWithReply:(id)reply;
- (void)generateMagicSlotSuggestionsWithOptions:(id)options reply:(id)reply;
- (void)generateWhimsicalPromptSuggestionsWithReply:(id)reply;
- (void)performGraphIncrementalUpdateWithOptions:(id)options operationID:(id)d reply:(id)reply;
- (void)performGraphRebuildWithOptions:(id)options operationID:(id)d reply:(id)reply;
- (void)performGraphSearchEntityRankingDonationWithOperationID:(id)d reply:(id)reply;
- (void)performLibraryUnderstandingWithOperationID:(id)d reply:(id)reply;
- (void)performLocalMemoryEnrichmentForMemoryCategory:(unint64_t)category reply:(id)reply;
- (void)performLocalMemoryEnrichmentForUUIDs:(id)ds reply:(id)reply;
- (void)performLocalMemoryEventElectionWithElectionMode:(id)mode operationID:(id)d reply:(id)reply;
- (void)performMemoryNodesRebuildForCategory:(unint64_t)category operationID:(id)d reply:(id)reply;
- (void)performPromptSuggestionCachingWithOperationID:(id)d reply:(id)reply;
- (void)performPublicEventCachingTaskWithOptions:(id)options operationID:(id)d reply:(id)reply;
- (void)requestCharacterCurationInfoForCharacterUUIDs:(id)ds operationID:(id)d reply:(id)reply;
- (void)requestExtendedTokenCollectionFromQueryTokensAsData:(id)data representativeMomentUUIDByAssetUUID:(id)d personOrPetUUIDsWithNegativeFeedback:(id)feedback sharingFilter:(int64_t)filter operationID:(id)iD reply:(id)reply;
- (void)requestFilterLocationsByMomentLocationHierarchyForRecipeAsData:(id)data operationID:(id)d reply:(id)reply;
- (void)requestGraphIsAvailableWithReply:(id)reply;
- (void)requestMeaningsForMomentUUIDs:(id)ds operationID:(id)d reply:(id)reply;
- (void)requestPersonGroundingForPersonQuery:(id)query operationID:(id)d reply:(id)reply;
- (void)requestPersonalEventMomentsForQueryTokenAsData:(id)data associatedPersonUUID:(id)d scopedMomentUUIDs:(id)ds momentUUIDByAssetUUID:(id)iD operationID:(id)operationID reply:(id)reply;
- (void)requestPersonalTraitsForAssetUUIDs:(id)ds momentUUIDByAssetUUID:(id)d extendedTokenCollectionAsData:(id)data configurationAsData:(id)asData sharingFilter:(int64_t)filter operationID:(id)iD reply:(id)reply;
- (void)requestPersonalTraitsForAssetUUIDs:(id)ds operationID:(id)d reply:(id)reply;
- (void)requestPersonalTraitsForHighlightUUIDs:(id)ds operationID:(id)d reply:(id)reply;
- (void)requestPrewarmQueryAnnotatorForOriginatorPID:(int64_t)d operationID:(id)iD reply:(id)reply;
- (void)requestPublicEventDataForAssetUUID:(id)d operationID:(id)iD reply:(id)reply;
- (void)requestPublicEventDataForMomentUUID:(id)d operationID:(id)iD reply:(id)reply;
- (void)requestQueryAnnotationForQuery:(id)query originatorPID:(int64_t)d operationID:(id)iD reply:(id)reply;
- (void)validatePromptSuggestionsWithSuggestionUUIDs:(id)ds operationID:(id)d reply:(id)reply;
- (void)warmupMomentGraphWorkerForDuration:(double)duration operationID:(id)d reply:(id)reply;
@end

@implementation PLPhotoAnalysisMomentGraphService

- (void)warmupMomentGraphWorkerForDuration:(double)duration operationID:(id)d reply:(id)reply
{
  replyCopy = reply;
  serviceProvider = self->_serviceProvider;
  dCopy = d;
  momentGraphService = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __90__PLPhotoAnalysisMomentGraphService_warmupMomentGraphWorkerForDuration_operationID_reply___block_invoke;
  v17[3] = &unk_1E7577430;
  v12 = replyCopy;
  v18 = v12;
  v13 = [momentGraphService remoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __90__PLPhotoAnalysisMomentGraphService_warmupMomentGraphWorkerForDuration_operationID_reply___block_invoke_2;
  v15[3] = &unk_1E7577430;
  v16 = v12;
  v14 = v12;
  [v13 warmupMomentGraphWorkerForDuration:dCopy operationID:v15 reply:duration];
}

- (void)cancelOperationsWithIdentifiers:(id)identifiers reply:(id)reply
{
  identifiersCopy = identifiers;
  replyCopy = reply;
  momentGraphService = [(PLPhotoAnalysisServiceProvider *)self->_serviceProvider momentGraphService];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__PLPhotoAnalysisMomentGraphService_cancelOperationsWithIdentifiers_reply___block_invoke;
  v15[3] = &unk_1E7576050;
  v16 = identifiersCopy;
  v9 = replyCopy;
  v17 = v9;
  v10 = identifiersCopy;
  v11 = [momentGraphService remoteObjectProxyWithErrorHandler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__PLPhotoAnalysisMomentGraphService_cancelOperationsWithIdentifiers_reply___block_invoke_2;
  v13[3] = &unk_1E7572328;
  v14 = v9;
  v12 = v9;
  [v11 cancelOperationsWithIdentifiers:v10 reply:v13];
}

void __75__PLPhotoAnalysisMomentGraphService_cancelOperationsWithIdentifiers_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 setObject:v3 forKeyedSubscript:{*(*(&v10 + 1) + 8 * v9++), v10}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)performPublicEventCachingTaskWithOptions:(id)options operationID:(id)d reply:(id)reply
{
  replyCopy = reply;
  serviceProvider = self->_serviceProvider;
  dCopy = d;
  optionsCopy = options;
  momentGraphService = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __96__PLPhotoAnalysisMomentGraphService_performPublicEventCachingTaskWithOptions_operationID_reply___block_invoke;
  v18[3] = &unk_1E7577430;
  v13 = replyCopy;
  v19 = v13;
  v14 = [momentGraphService remoteObjectProxyWithErrorHandler:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __96__PLPhotoAnalysisMomentGraphService_performPublicEventCachingTaskWithOptions_operationID_reply___block_invoke_2;
  v16[3] = &unk_1E7577430;
  v17 = v13;
  v15 = v13;
  [v14 performPublicEventCachingTaskWithOptions:optionsCopy operationID:dCopy reply:v16];
}

- (void)requestPublicEventDataForAssetUUID:(id)d operationID:(id)iD reply:(id)reply
{
  replyCopy = reply;
  serviceProvider = self->_serviceProvider;
  iDCopy = iD;
  dCopy = d;
  momentGraphService = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __90__PLPhotoAnalysisMomentGraphService_requestPublicEventDataForAssetUUID_operationID_reply___block_invoke;
  v18[3] = &unk_1E7577430;
  v13 = replyCopy;
  v19 = v13;
  v14 = [momentGraphService remoteObjectProxyWithErrorHandler:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __90__PLPhotoAnalysisMomentGraphService_requestPublicEventDataForAssetUUID_operationID_reply___block_invoke_2;
  v16[3] = &unk_1E756B9C0;
  v17 = v13;
  v15 = v13;
  [v14 requestPublicEventDataForAssetUUID:dCopy operationID:iDCopy reply:v16];
}

- (void)requestPublicEventDataForMomentUUID:(id)d operationID:(id)iD reply:(id)reply
{
  replyCopy = reply;
  serviceProvider = self->_serviceProvider;
  iDCopy = iD;
  dCopy = d;
  momentGraphService = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __91__PLPhotoAnalysisMomentGraphService_requestPublicEventDataForMomentUUID_operationID_reply___block_invoke;
  v18[3] = &unk_1E7577430;
  v13 = replyCopy;
  v19 = v13;
  v14 = [momentGraphService remoteObjectProxyWithErrorHandler:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __91__PLPhotoAnalysisMomentGraphService_requestPublicEventDataForMomentUUID_operationID_reply___block_invoke_2;
  v16[3] = &unk_1E756B9C0;
  v17 = v13;
  v15 = v13;
  [v14 requestPublicEventDataForMomentUUID:dCopy operationID:iDCopy reply:v16];
}

- (void)generateMagicSlotSuggestionsWithOptions:(id)options reply:(id)reply
{
  replyCopy = reply;
  serviceProvider = self->_serviceProvider;
  optionsCopy = options;
  momentGraphService = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __83__PLPhotoAnalysisMomentGraphService_generateMagicSlotSuggestionsWithOptions_reply___block_invoke;
  v15[3] = &unk_1E7577430;
  v10 = replyCopy;
  v16 = v10;
  v11 = [momentGraphService remoteObjectProxyWithErrorHandler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __83__PLPhotoAnalysisMomentGraphService_generateMagicSlotSuggestionsWithOptions_reply___block_invoke_2;
  v13[3] = &unk_1E75774A8;
  v14 = v10;
  v12 = v10;
  [v11 generateMagicSlotSuggestionsWithOptions:optionsCopy reply:v13];
}

- (void)requestFilterLocationsByMomentLocationHierarchyForRecipeAsData:(id)data operationID:(id)d reply:(id)reply
{
  replyCopy = reply;
  serviceProvider = self->_serviceProvider;
  dCopy = d;
  dataCopy = data;
  momentGraphService = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __118__PLPhotoAnalysisMomentGraphService_requestFilterLocationsByMomentLocationHierarchyForRecipeAsData_operationID_reply___block_invoke;
  v18[3] = &unk_1E7577430;
  v13 = replyCopy;
  v19 = v13;
  v14 = [momentGraphService remoteObjectProxyWithErrorHandler:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __118__PLPhotoAnalysisMomentGraphService_requestFilterLocationsByMomentLocationHierarchyForRecipeAsData_operationID_reply___block_invoke_2;
  v16[3] = &unk_1E75644F8;
  v17 = v13;
  v15 = v13;
  [v14 requestFilterLocationsByMomentLocationHierarchyForRecipeAsData:dataCopy operationID:dCopy reply:v16];
}

- (void)requestPersonGroundingForPersonQuery:(id)query operationID:(id)d reply:(id)reply
{
  replyCopy = reply;
  serviceProvider = self->_serviceProvider;
  dCopy = d;
  queryCopy = query;
  momentGraphService = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __92__PLPhotoAnalysisMomentGraphService_requestPersonGroundingForPersonQuery_operationID_reply___block_invoke;
  v18[3] = &unk_1E7577430;
  v13 = replyCopy;
  v19 = v13;
  v14 = [momentGraphService remoteObjectProxyWithErrorHandler:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __92__PLPhotoAnalysisMomentGraphService_requestPersonGroundingForPersonQuery_operationID_reply___block_invoke_2;
  v16[3] = &unk_1E75644F8;
  v17 = v13;
  v15 = v13;
  [v14 requestPersonGroundingForPersonQuery:queryCopy operationID:dCopy reply:v16];
}

- (void)requestQueryAnnotationForQuery:(id)query originatorPID:(int64_t)d operationID:(id)iD reply:(id)reply
{
  replyCopy = reply;
  serviceProvider = self->_serviceProvider;
  iDCopy = iD;
  queryCopy = query;
  momentGraphService = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __100__PLPhotoAnalysisMomentGraphService_requestQueryAnnotationForQuery_originatorPID_operationID_reply___block_invoke;
  v20[3] = &unk_1E7577430;
  v15 = replyCopy;
  v21 = v15;
  v16 = [momentGraphService remoteObjectProxyWithErrorHandler:v20];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __100__PLPhotoAnalysisMomentGraphService_requestQueryAnnotationForQuery_originatorPID_operationID_reply___block_invoke_2;
  v18[3] = &unk_1E75644F8;
  v19 = v15;
  v17 = v15;
  [v16 requestQueryAnnotationForQuery:queryCopy originatorPID:d operationID:iDCopy reply:v18];
}

- (void)requestPrewarmQueryAnnotatorForOriginatorPID:(int64_t)d operationID:(id)iD reply:(id)reply
{
  replyCopy = reply;
  serviceProvider = self->_serviceProvider;
  iDCopy = iD;
  momentGraphService = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __100__PLPhotoAnalysisMomentGraphService_requestPrewarmQueryAnnotatorForOriginatorPID_operationID_reply___block_invoke;
  v17[3] = &unk_1E7577430;
  v12 = replyCopy;
  v18 = v12;
  v13 = [momentGraphService remoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __100__PLPhotoAnalysisMomentGraphService_requestPrewarmQueryAnnotatorForOriginatorPID_operationID_reply___block_invoke_2;
  v15[3] = &unk_1E7577430;
  v16 = v12;
  v14 = v12;
  [v13 requestPrewarmQueryAnnotatorForOriginatorPID:d operationID:iDCopy reply:v15];
}

- (void)validatePromptSuggestionsWithSuggestionUUIDs:(id)ds operationID:(id)d reply:(id)reply
{
  replyCopy = reply;
  serviceProvider = self->_serviceProvider;
  dCopy = d;
  dsCopy = ds;
  momentGraphService = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __100__PLPhotoAnalysisMomentGraphService_validatePromptSuggestionsWithSuggestionUUIDs_operationID_reply___block_invoke;
  v18[3] = &unk_1E7577430;
  v13 = replyCopy;
  v19 = v13;
  v14 = [momentGraphService remoteObjectProxyWithErrorHandler:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __100__PLPhotoAnalysisMomentGraphService_validatePromptSuggestionsWithSuggestionUUIDs_operationID_reply___block_invoke_2;
  v16[3] = &unk_1E75644F8;
  v17 = v13;
  v15 = v13;
  [v14 validatePromptSuggestionsWithSuggestionUUIDs:dsCopy operationID:dCopy reply:v16];
}

- (void)generateContextualPromptSuggestionsWithReply:(id)reply
{
  replyCopy = reply;
  momentGraphService = [(PLPhotoAnalysisServiceProvider *)self->_serviceProvider momentGraphService];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __82__PLPhotoAnalysisMomentGraphService_generateContextualPromptSuggestionsWithReply___block_invoke;
  v11[3] = &unk_1E7577430;
  v6 = replyCopy;
  v12 = v6;
  v7 = [momentGraphService remoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __82__PLPhotoAnalysisMomentGraphService_generateContextualPromptSuggestionsWithReply___block_invoke_2;
  v9[3] = &unk_1E75644F8;
  v10 = v6;
  v8 = v6;
  [v7 generateContextualPromptSuggestionsWithReply:v9];
}

- (void)generateWhimsicalPromptSuggestionsWithReply:(id)reply
{
  replyCopy = reply;
  momentGraphService = [(PLPhotoAnalysisServiceProvider *)self->_serviceProvider momentGraphService];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __81__PLPhotoAnalysisMomentGraphService_generateWhimsicalPromptSuggestionsWithReply___block_invoke;
  v11[3] = &unk_1E7577430;
  v6 = replyCopy;
  v12 = v6;
  v7 = [momentGraphService remoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __81__PLPhotoAnalysisMomentGraphService_generateWhimsicalPromptSuggestionsWithReply___block_invoke_2;
  v9[3] = &unk_1E75644F8;
  v10 = v6;
  v8 = v6;
  [v7 generateWhimsicalPromptSuggestionsWithReply:v9];
}

- (void)debugValidationFromQueryTemplate:(id)template person:(id)person city:(id)city place:(id)place time:(id)time reply:(id)reply
{
  replyCopy = reply;
  serviceProvider = self->_serviceProvider;
  timeCopy = time;
  placeCopy = place;
  cityCopy = city;
  personCopy = person;
  templateCopy = template;
  momentGraphService = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __99__PLPhotoAnalysisMomentGraphService_debugValidationFromQueryTemplate_person_city_place_time_reply___block_invoke;
  v27[3] = &unk_1E7577430;
  v22 = replyCopy;
  v28 = v22;
  v23 = [momentGraphService remoteObjectProxyWithErrorHandler:v27];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __99__PLPhotoAnalysisMomentGraphService_debugValidationFromQueryTemplate_person_city_place_time_reply___block_invoke_2;
  v25[3] = &unk_1E75644B8;
  v26 = v22;
  v24 = v22;
  [v23 debugValidationFromQueryTemplate:templateCopy person:personCopy city:cityCopy place:placeCopy time:timeCopy reply:v25];
}

- (void)fetchUnvalidatedPromptSuggestionsWithFetchLimit:(int64_t)limit reply:(id)reply
{
  replyCopy = reply;
  momentGraphService = [(PLPhotoAnalysisServiceProvider *)self->_serviceProvider momentGraphService];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __91__PLPhotoAnalysisMomentGraphService_fetchUnvalidatedPromptSuggestionsWithFetchLimit_reply___block_invoke;
  v13[3] = &unk_1E7577430;
  v8 = replyCopy;
  v14 = v8;
  v9 = [momentGraphService remoteObjectProxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __91__PLPhotoAnalysisMomentGraphService_fetchUnvalidatedPromptSuggestionsWithFetchLimit_reply___block_invoke_2;
  v11[3] = &unk_1E75644F8;
  v12 = v8;
  v10 = v8;
  [v9 fetchUnvalidatedPromptSuggestionsWithFetchLimit:limit reply:v11];
}

- (void)performPromptSuggestionCachingWithOperationID:(id)d reply:(id)reply
{
  replyCopy = reply;
  serviceProvider = self->_serviceProvider;
  dCopy = d;
  momentGraphService = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __89__PLPhotoAnalysisMomentGraphService_performPromptSuggestionCachingWithOperationID_reply___block_invoke;
  v15[3] = &unk_1E7577430;
  v10 = replyCopy;
  v16 = v10;
  v11 = [momentGraphService remoteObjectProxyWithErrorHandler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __89__PLPhotoAnalysisMomentGraphService_performPromptSuggestionCachingWithOperationID_reply___block_invoke_2;
  v13[3] = &unk_1E7577430;
  v14 = v10;
  v12 = v10;
  [v11 performPromptSuggestionCachingWithOperationID:dCopy reply:v13];
}

- (void)requestPersonalTraitsForAssetUUIDs:(id)ds operationID:(id)d reply:(id)reply
{
  replyCopy = reply;
  serviceProvider = self->_serviceProvider;
  dCopy = d;
  dsCopy = ds;
  momentGraphService = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __90__PLPhotoAnalysisMomentGraphService_requestPersonalTraitsForAssetUUIDs_operationID_reply___block_invoke;
  v18[3] = &unk_1E7577430;
  v13 = replyCopy;
  v19 = v13;
  v14 = [momentGraphService remoteObjectProxyWithErrorHandler:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __90__PLPhotoAnalysisMomentGraphService_requestPersonalTraitsForAssetUUIDs_operationID_reply___block_invoke_2;
  v16[3] = &unk_1E756B9C0;
  v17 = v13;
  v15 = v13;
  [v14 requestPersonalTraitsForAssetUUIDs:dsCopy operationID:dCopy reply:v16];
}

- (void)requestPersonalTraitsForHighlightUUIDs:(id)ds operationID:(id)d reply:(id)reply
{
  replyCopy = reply;
  serviceProvider = self->_serviceProvider;
  dCopy = d;
  dsCopy = ds;
  momentGraphService = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __94__PLPhotoAnalysisMomentGraphService_requestPersonalTraitsForHighlightUUIDs_operationID_reply___block_invoke;
  v18[3] = &unk_1E7577430;
  v13 = replyCopy;
  v19 = v13;
  v14 = [momentGraphService remoteObjectProxyWithErrorHandler:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __94__PLPhotoAnalysisMomentGraphService_requestPersonalTraitsForHighlightUUIDs_operationID_reply___block_invoke_2;
  v16[3] = &unk_1E756B9C0;
  v17 = v13;
  v15 = v13;
  [v14 requestPersonalTraitsForHighlightUUIDs:dsCopy operationID:dCopy reply:v16];
}

- (void)requestCharacterCurationInfoForCharacterUUIDs:(id)ds operationID:(id)d reply:(id)reply
{
  replyCopy = reply;
  serviceProvider = self->_serviceProvider;
  dCopy = d;
  dsCopy = ds;
  momentGraphService = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __101__PLPhotoAnalysisMomentGraphService_requestCharacterCurationInfoForCharacterUUIDs_operationID_reply___block_invoke;
  v18[3] = &unk_1E7577430;
  v13 = replyCopy;
  v19 = v13;
  v14 = [momentGraphService remoteObjectProxyWithErrorHandler:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __101__PLPhotoAnalysisMomentGraphService_requestCharacterCurationInfoForCharacterUUIDs_operationID_reply___block_invoke_2;
  v16[3] = &unk_1E75644F8;
  v17 = v13;
  v15 = v13;
  [v14 requestCharacterCurationInfoForCharacterUUIDs:dsCopy operationID:dCopy reply:v16];
}

- (void)requestPersonalEventMomentsForQueryTokenAsData:(id)data associatedPersonUUID:(id)d scopedMomentUUIDs:(id)ds momentUUIDByAssetUUID:(id)iD operationID:(id)operationID reply:(id)reply
{
  replyCopy = reply;
  serviceProvider = self->_serviceProvider;
  operationIDCopy = operationID;
  iDCopy = iD;
  dsCopy = ds;
  dCopy = d;
  dataCopy = data;
  momentGraphService = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __163__PLPhotoAnalysisMomentGraphService_requestPersonalEventMomentsForQueryTokenAsData_associatedPersonUUID_scopedMomentUUIDs_momentUUIDByAssetUUID_operationID_reply___block_invoke;
  v27[3] = &unk_1E7577430;
  v22 = replyCopy;
  v28 = v22;
  v23 = [momentGraphService remoteObjectProxyWithErrorHandler:v27];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __163__PLPhotoAnalysisMomentGraphService_requestPersonalEventMomentsForQueryTokenAsData_associatedPersonUUID_scopedMomentUUIDs_momentUUIDByAssetUUID_operationID_reply___block_invoke_2;
  v25[3] = &unk_1E75644F8;
  v26 = v22;
  v24 = v22;
  [v23 requestPersonalEventMomentsForQueryTokenAsData:dataCopy associatedPersonUUID:dCopy scopedMomentUUIDs:dsCopy momentUUIDByAssetUUID:iDCopy operationID:operationIDCopy reply:v25];
}

- (void)requestPersonalTraitsForAssetUUIDs:(id)ds momentUUIDByAssetUUID:(id)d extendedTokenCollectionAsData:(id)data configurationAsData:(id)asData sharingFilter:(int64_t)filter operationID:(id)iD reply:(id)reply
{
  replyCopy = reply;
  serviceProvider = self->_serviceProvider;
  iDCopy = iD;
  asDataCopy = asData;
  dataCopy = data;
  dCopy = d;
  dsCopy = ds;
  momentGraphService = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __176__PLPhotoAnalysisMomentGraphService_requestPersonalTraitsForAssetUUIDs_momentUUIDByAssetUUID_extendedTokenCollectionAsData_configurationAsData_sharingFilter_operationID_reply___block_invoke;
  v29[3] = &unk_1E7577430;
  v24 = replyCopy;
  v30 = v24;
  v25 = [momentGraphService remoteObjectProxyWithErrorHandler:v29];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __176__PLPhotoAnalysisMomentGraphService_requestPersonalTraitsForAssetUUIDs_momentUUIDByAssetUUID_extendedTokenCollectionAsData_configurationAsData_sharingFilter_operationID_reply___block_invoke_2;
  v27[3] = &unk_1E75644F8;
  v28 = v24;
  v26 = v24;
  [v25 requestPersonalTraitsForAssetUUIDs:dsCopy momentUUIDByAssetUUID:dCopy extendedTokenCollectionAsData:dataCopy configurationAsData:asDataCopy sharingFilter:filter operationID:iDCopy reply:v27];
}

- (void)requestMeaningsForMomentUUIDs:(id)ds operationID:(id)d reply:(id)reply
{
  replyCopy = reply;
  serviceProvider = self->_serviceProvider;
  dCopy = d;
  dsCopy = ds;
  momentGraphService = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __85__PLPhotoAnalysisMomentGraphService_requestMeaningsForMomentUUIDs_operationID_reply___block_invoke;
  v18[3] = &unk_1E7577430;
  v13 = replyCopy;
  v19 = v13;
  v14 = [momentGraphService remoteObjectProxyWithErrorHandler:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __85__PLPhotoAnalysisMomentGraphService_requestMeaningsForMomentUUIDs_operationID_reply___block_invoke_2;
  v16[3] = &unk_1E7577458;
  v17 = v13;
  v15 = v13;
  [v14 requestMeaningsForMomentUUIDs:dsCopy operationID:dCopy reply:v16];
}

- (void)requestExtendedTokenCollectionFromQueryTokensAsData:(id)data representativeMomentUUIDByAssetUUID:(id)d personOrPetUUIDsWithNegativeFeedback:(id)feedback sharingFilter:(int64_t)filter operationID:(id)iD reply:(id)reply
{
  replyCopy = reply;
  serviceProvider = self->_serviceProvider;
  iDCopy = iD;
  feedbackCopy = feedback;
  dCopy = d;
  dataCopy = data;
  momentGraphService = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __194__PLPhotoAnalysisMomentGraphService_requestExtendedTokenCollectionFromQueryTokensAsData_representativeMomentUUIDByAssetUUID_personOrPetUUIDsWithNegativeFeedback_sharingFilter_operationID_reply___block_invoke;
  v26[3] = &unk_1E7577430;
  v21 = replyCopy;
  v27 = v21;
  v22 = [momentGraphService remoteObjectProxyWithErrorHandler:v26];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __194__PLPhotoAnalysisMomentGraphService_requestExtendedTokenCollectionFromQueryTokensAsData_representativeMomentUUIDByAssetUUID_personOrPetUUIDsWithNegativeFeedback_sharingFilter_operationID_reply___block_invoke_2;
  v24[3] = &unk_1E75644F8;
  v25 = v21;
  v23 = v21;
  [v22 requestExtendedTokenCollectionFromQueryTokensAsData:dataCopy representativeMomentUUIDByAssetUUID:dCopy personOrPetUUIDsWithNegativeFeedback:feedbackCopy sharingFilter:filter operationID:iDCopy reply:v24];
}

- (void)performLibraryUnderstandingWithOperationID:(id)d reply:(id)reply
{
  replyCopy = reply;
  serviceProvider = self->_serviceProvider;
  dCopy = d;
  momentGraphService = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __86__PLPhotoAnalysisMomentGraphService_performLibraryUnderstandingWithOperationID_reply___block_invoke;
  v15[3] = &unk_1E7577430;
  v10 = replyCopy;
  v16 = v10;
  v11 = [momentGraphService remoteObjectProxyWithErrorHandler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __86__PLPhotoAnalysisMomentGraphService_performLibraryUnderstandingWithOperationID_reply___block_invoke_2;
  v13[3] = &unk_1E7577430;
  v14 = v10;
  v12 = v10;
  [v11 performLibraryUnderstandingWithOperationID:dCopy reply:v13];
}

- (void)performGraphSearchEntityRankingDonationWithOperationID:(id)d reply:(id)reply
{
  replyCopy = reply;
  serviceProvider = self->_serviceProvider;
  dCopy = d;
  momentGraphService = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __98__PLPhotoAnalysisMomentGraphService_performGraphSearchEntityRankingDonationWithOperationID_reply___block_invoke;
  v15[3] = &unk_1E7577430;
  v10 = replyCopy;
  v16 = v10;
  v11 = [momentGraphService remoteObjectProxyWithErrorHandler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __98__PLPhotoAnalysisMomentGraphService_performGraphSearchEntityRankingDonationWithOperationID_reply___block_invoke_2;
  v13[3] = &unk_1E7577430;
  v14 = v10;
  v12 = v10;
  [v11 performGraphSearchEntityRankingDonationWithOperationID:dCopy reply:v13];
}

- (id)requestSearchableAssetUUIDsBySocialGroupForAssetCollectionUUIDs:(id)ds ofType:(unint64_t)type isFullAnalysis:(BOOL)analysis operationID:(id)d error:(id *)error
{
  analysisCopy = analysis;
  dsCopy = ds;
  dCopy = d;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__179;
  v30 = __Block_byref_object_dispose__180;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__179;
  v24 = __Block_byref_object_dispose__180;
  v25 = 0;
  momentGraphService = [(PLPhotoAnalysisServiceProvider *)self->_serviceProvider momentGraphService];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __141__PLPhotoAnalysisMomentGraphService_requestSearchableAssetUUIDsBySocialGroupForAssetCollectionUUIDs_ofType_isFullAnalysis_operationID_error___block_invoke;
  v19[3] = &unk_1E75773B8;
  v19[4] = &v20;
  v15 = [momentGraphService synchronousRemoteObjectProxyWithErrorHandler:v19];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __141__PLPhotoAnalysisMomentGraphService_requestSearchableAssetUUIDsBySocialGroupForAssetCollectionUUIDs_ofType_isFullAnalysis_operationID_error___block_invoke_2;
  v18[3] = &unk_1E75773E0;
  v18[4] = &v26;
  v18[5] = &v20;
  [v15 requestSearchableAssetUUIDsBySocialGroupForAssetCollectionUUIDs:dsCopy ofType:type isFullAnalysis:analysisCopy operationID:dCopy reply:v18];

  if (error)
  {
    *error = v21[5];
  }

  v16 = v27[5];
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);

  return v16;
}

void __141__PLPhotoAnalysisMomentGraphService_requestSearchableAssetUUIDsBySocialGroupForAssetCollectionUUIDs_ofType_isFullAnalysis_operationID_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)requestAssetSearchKeywordsForAssetCollectionUUIDs:(id)ds ofType:(unint64_t)type operationID:(id)d error:(id *)error
{
  dsCopy = ds;
  dCopy = d;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__179;
  v28 = __Block_byref_object_dispose__180;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__179;
  v22 = __Block_byref_object_dispose__180;
  v23 = 0;
  momentGraphService = [(PLPhotoAnalysisServiceProvider *)self->_serviceProvider momentGraphService];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __112__PLPhotoAnalysisMomentGraphService_requestAssetSearchKeywordsForAssetCollectionUUIDs_ofType_operationID_error___block_invoke;
  v17[3] = &unk_1E75773B8;
  v17[4] = &v18;
  v13 = [momentGraphService synchronousRemoteObjectProxyWithErrorHandler:v17];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __112__PLPhotoAnalysisMomentGraphService_requestAssetSearchKeywordsForAssetCollectionUUIDs_ofType_operationID_error___block_invoke_2;
  v16[3] = &unk_1E75773E0;
  v16[4] = &v24;
  v16[5] = &v18;
  [v13 requestAssetSearchKeywordsForAssetCollectionUUIDs:dsCopy ofType:type operationID:dCopy reply:v16];

  if (error)
  {
    *error = v19[5];
  }

  v14 = v25[5];
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);

  return v14;
}

void __112__PLPhotoAnalysisMomentGraphService_requestAssetSearchKeywordsForAssetCollectionUUIDs_ofType_operationID_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)requestSearchIndexKeywordsForAssetCollectionUUIDs:(id)ds ofType:(unint64_t)type operationID:(id)d error:(id *)error
{
  dsCopy = ds;
  dCopy = d;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__179;
  v28 = __Block_byref_object_dispose__180;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__179;
  v22 = __Block_byref_object_dispose__180;
  v23 = 0;
  momentGraphService = [(PLPhotoAnalysisServiceProvider *)self->_serviceProvider momentGraphService];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __112__PLPhotoAnalysisMomentGraphService_requestSearchIndexKeywordsForAssetCollectionUUIDs_ofType_operationID_error___block_invoke;
  v17[3] = &unk_1E75773B8;
  v17[4] = &v18;
  v13 = [momentGraphService synchronousRemoteObjectProxyWithErrorHandler:v17];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __112__PLPhotoAnalysisMomentGraphService_requestSearchIndexKeywordsForAssetCollectionUUIDs_ofType_operationID_error___block_invoke_2;
  v16[3] = &unk_1E75773E0;
  v16[4] = &v24;
  v16[5] = &v18;
  [v13 requestSearchIndexKeywordsForAssetCollectionUUIDs:dsCopy ofType:type operationID:dCopy reply:v16];

  if (error)
  {
    *error = v19[5];
  }

  v14 = v25[5];
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);

  return v14;
}

void __112__PLPhotoAnalysisMomentGraphService_requestSearchIndexKeywordsForAssetCollectionUUIDs_ofType_operationID_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)requestGraphSearchMetadataWithOptions:(id)options operationID:(id)d error:(id *)error
{
  optionsCopy = options;
  dCopy = d;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__179;
  v26 = __Block_byref_object_dispose__180;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__179;
  v20 = __Block_byref_object_dispose__180;
  v21 = 0;
  momentGraphService = [(PLPhotoAnalysisServiceProvider *)self->_serviceProvider momentGraphService];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __93__PLPhotoAnalysisMomentGraphService_requestGraphSearchMetadataWithOptions_operationID_error___block_invoke;
  v15[3] = &unk_1E75773B8;
  v15[4] = &v16;
  v11 = [momentGraphService synchronousRemoteObjectProxyWithErrorHandler:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __93__PLPhotoAnalysisMomentGraphService_requestGraphSearchMetadataWithOptions_operationID_error___block_invoke_2;
  v14[3] = &unk_1E75773E0;
  v14[4] = &v22;
  v14[5] = &v16;
  [v11 requestGraphSearchMetadataWithOptions:optionsCopy operationID:dCopy reply:v14];

  if (error)
  {
    *error = v17[5];
  }

  v12 = v23[5];
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);

  return v12;
}

void __93__PLPhotoAnalysisMomentGraphService_requestGraphSearchMetadataWithOptions_operationID_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)requestSynonymsDictionariesWithOperationID:(id)d error:(id *)error
{
  dCopy = d;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__179;
  v23 = __Block_byref_object_dispose__180;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__179;
  v17 = __Block_byref_object_dispose__180;
  v18 = 0;
  momentGraphService = [(PLPhotoAnalysisServiceProvider *)self->_serviceProvider momentGraphService];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __86__PLPhotoAnalysisMomentGraphService_requestSynonymsDictionariesWithOperationID_error___block_invoke;
  v12[3] = &unk_1E75773B8;
  v12[4] = &v13;
  v8 = [momentGraphService synchronousRemoteObjectProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __86__PLPhotoAnalysisMomentGraphService_requestSynonymsDictionariesWithOperationID_error___block_invoke_2;
  v11[3] = &unk_1E75773E0;
  v11[4] = &v19;
  v11[5] = &v13;
  [v8 requestSynonymsDictionariesWithOperationID:dCopy reply:v11];

  if (error)
  {
    *error = v14[5];
  }

  v9 = v20[5];
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v9;
}

void __86__PLPhotoAnalysisMomentGraphService_requestSynonymsDictionariesWithOperationID_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)requestGraphIsAvailableWithReply:(id)reply
{
  replyCopy = reply;
  momentGraphService = [(PLPhotoAnalysisServiceProvider *)self->_serviceProvider momentGraphService];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__PLPhotoAnalysisMomentGraphService_requestGraphIsAvailableWithReply___block_invoke;
  v11[3] = &unk_1E7577430;
  v6 = replyCopy;
  v12 = v6;
  v7 = [momentGraphService remoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__PLPhotoAnalysisMomentGraphService_requestGraphIsAvailableWithReply___block_invoke_2;
  v9[3] = &unk_1E7577480;
  v10 = v6;
  v8 = v6;
  [v7 requestGraphIsAvailableWithReply:v9];
}

- (id)graphStatusWithError:(id *)error
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__179;
  v21 = __Block_byref_object_dispose__180;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__179;
  v15 = __Block_byref_object_dispose__180;
  v16 = 0;
  momentGraphService = [(PLPhotoAnalysisServiceProvider *)self->_serviceProvider momentGraphService];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__PLPhotoAnalysisMomentGraphService_graphStatusWithError___block_invoke;
  v10[3] = &unk_1E75773B8;
  v10[4] = &v11;
  v5 = [momentGraphService synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__PLPhotoAnalysisMomentGraphService_graphStatusWithError___block_invoke_2;
  v9[3] = &unk_1E75773E0;
  v9[4] = &v17;
  v9[5] = &v11;
  [v5 requestGraphStatusWithReply:v9];

  if (error)
  {
    *error = v12[5];
  }

  if (v18[5])
  {
    v6 = [PLPhotosKnowledgeGraphAvailabilityStatus alloc];
    v7 = [(PLPhotosKnowledgeGraphAvailabilityStatus *)v6 initWithDictionary:v18[5]];
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);

  return v7;
}

void __58__PLPhotoAnalysisMomentGraphService_graphStatusWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)performLocalMemoryEnrichmentForMemoryCategory:(unint64_t)category reply:(id)reply
{
  replyCopy = reply;
  momentGraphService = [(PLPhotoAnalysisServiceProvider *)self->_serviceProvider momentGraphService];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __89__PLPhotoAnalysisMomentGraphService_performLocalMemoryEnrichmentForMemoryCategory_reply___block_invoke;
  v13[3] = &unk_1E7577430;
  v8 = replyCopy;
  v14 = v8;
  v9 = [momentGraphService remoteObjectProxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __89__PLPhotoAnalysisMomentGraphService_performLocalMemoryEnrichmentForMemoryCategory_reply___block_invoke_2;
  v11[3] = &unk_1E756B9C0;
  v12 = v8;
  v10 = v8;
  [v9 performLocalMemoryEnrichmentForMemoryCategory:category reply:v11];
}

- (void)performLocalMemoryEnrichmentForUUIDs:(id)ds reply:(id)reply
{
  replyCopy = reply;
  serviceProvider = self->_serviceProvider;
  dsCopy = ds;
  momentGraphService = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __80__PLPhotoAnalysisMomentGraphService_performLocalMemoryEnrichmentForUUIDs_reply___block_invoke;
  v15[3] = &unk_1E7577430;
  v10 = replyCopy;
  v16 = v10;
  v11 = [momentGraphService remoteObjectProxyWithErrorHandler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __80__PLPhotoAnalysisMomentGraphService_performLocalMemoryEnrichmentForUUIDs_reply___block_invoke_2;
  v13[3] = &unk_1E756B9C0;
  v14 = v10;
  v12 = v10;
  [v11 performLocalMemoryEnrichmentForUUIDs:dsCopy reply:v13];
}

- (void)performLocalMemoryEventElectionWithElectionMode:(id)mode operationID:(id)d reply:(id)reply
{
  replyCopy = reply;
  serviceProvider = self->_serviceProvider;
  dCopy = d;
  modeCopy = mode;
  momentGraphService = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __103__PLPhotoAnalysisMomentGraphService_performLocalMemoryEventElectionWithElectionMode_operationID_reply___block_invoke;
  v18[3] = &unk_1E7577430;
  v13 = replyCopy;
  v19 = v13;
  v14 = [momentGraphService remoteObjectProxyWithErrorHandler:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __103__PLPhotoAnalysisMomentGraphService_performLocalMemoryEventElectionWithElectionMode_operationID_reply___block_invoke_2;
  v16[3] = &unk_1E7577430;
  v17 = v13;
  v15 = v13;
  [v14 performLocalMemoryEventElectionWithElectionMode:modeCopy operationID:dCopy reply:v16];
}

- (void)performMemoryNodesRebuildForCategory:(unint64_t)category operationID:(id)d reply:(id)reply
{
  replyCopy = reply;
  serviceProvider = self->_serviceProvider;
  dCopy = d;
  momentGraphService = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __92__PLPhotoAnalysisMomentGraphService_performMemoryNodesRebuildForCategory_operationID_reply___block_invoke;
  v17[3] = &unk_1E7577430;
  v12 = replyCopy;
  v18 = v12;
  v13 = [momentGraphService remoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __92__PLPhotoAnalysisMomentGraphService_performMemoryNodesRebuildForCategory_operationID_reply___block_invoke_2;
  v15[3] = &unk_1E7577430;
  v16 = v12;
  v14 = v12;
  [v13 performMemoryNodesRebuildForCategory:category operationID:dCopy reply:v15];
}

- (void)performGraphIncrementalUpdateWithOptions:(id)options operationID:(id)d reply:(id)reply
{
  replyCopy = reply;
  serviceProvider = self->_serviceProvider;
  dCopy = d;
  optionsCopy = options;
  momentGraphService = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __96__PLPhotoAnalysisMomentGraphService_performGraphIncrementalUpdateWithOptions_operationID_reply___block_invoke;
  v18[3] = &unk_1E7577430;
  v13 = replyCopy;
  v19 = v13;
  v14 = [momentGraphService remoteObjectProxyWithErrorHandler:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __96__PLPhotoAnalysisMomentGraphService_performGraphIncrementalUpdateWithOptions_operationID_reply___block_invoke_2;
  v16[3] = &unk_1E7577430;
  v17 = v13;
  v15 = v13;
  [v14 performGraphIncrementalUpdateWithOptions:optionsCopy operationID:dCopy reply:v16];
}

- (void)performGraphRebuildWithOptions:(id)options operationID:(id)d reply:(id)reply
{
  replyCopy = reply;
  serviceProvider = self->_serviceProvider;
  dCopy = d;
  optionsCopy = options;
  momentGraphService = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __86__PLPhotoAnalysisMomentGraphService_performGraphRebuildWithOptions_operationID_reply___block_invoke;
  v18[3] = &unk_1E7577430;
  v13 = replyCopy;
  v19 = v13;
  v14 = [momentGraphService remoteObjectProxyWithErrorHandler:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __86__PLPhotoAnalysisMomentGraphService_performGraphRebuildWithOptions_operationID_reply___block_invoke_2;
  v16[3] = &unk_1E7577430;
  v17 = v13;
  v15 = v13;
  [v14 performGraphRebuildWithOptions:optionsCopy operationID:dCopy reply:v16];
}

- (PLPhotoAnalysisMomentGraphService)initWithServiceProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = PLPhotoAnalysisMomentGraphService;
  v6 = [(PLPhotoAnalysisMomentGraphService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serviceProvider, provider);
  }

  return v7;
}

@end