@interface PLPhotoAnalysisMomentGraphService
- (PLPhotoAnalysisMomentGraphService)initWithServiceProvider:(id)a3;
- (id)graphStatusWithError:(id *)a3;
- (id)requestAssetSearchKeywordsForAssetCollectionUUIDs:(id)a3 ofType:(unint64_t)a4 operationID:(id)a5 error:(id *)a6;
- (id)requestGraphSearchMetadataWithOptions:(id)a3 operationID:(id)a4 error:(id *)a5;
- (id)requestSearchIndexKeywordsForAssetCollectionUUIDs:(id)a3 ofType:(unint64_t)a4 operationID:(id)a5 error:(id *)a6;
- (id)requestSearchableAssetUUIDsBySocialGroupForAssetCollectionUUIDs:(id)a3 ofType:(unint64_t)a4 isFullAnalysis:(BOOL)a5 operationID:(id)a6 error:(id *)a7;
- (id)requestSynonymsDictionariesWithOperationID:(id)a3 error:(id *)a4;
- (void)cancelOperationsWithIdentifiers:(id)a3 reply:(id)a4;
- (void)debugValidationFromQueryTemplate:(id)a3 person:(id)a4 city:(id)a5 place:(id)a6 time:(id)a7 reply:(id)a8;
- (void)fetchUnvalidatedPromptSuggestionsWithFetchLimit:(int64_t)a3 reply:(id)a4;
- (void)generateContextualPromptSuggestionsWithReply:(id)a3;
- (void)generateMagicSlotSuggestionsWithOptions:(id)a3 reply:(id)a4;
- (void)generateWhimsicalPromptSuggestionsWithReply:(id)a3;
- (void)performGraphIncrementalUpdateWithOptions:(id)a3 operationID:(id)a4 reply:(id)a5;
- (void)performGraphRebuildWithOptions:(id)a3 operationID:(id)a4 reply:(id)a5;
- (void)performGraphSearchEntityRankingDonationWithOperationID:(id)a3 reply:(id)a4;
- (void)performLibraryUnderstandingWithOperationID:(id)a3 reply:(id)a4;
- (void)performLocalMemoryEnrichmentForMemoryCategory:(unint64_t)a3 reply:(id)a4;
- (void)performLocalMemoryEnrichmentForUUIDs:(id)a3 reply:(id)a4;
- (void)performLocalMemoryEventElectionWithElectionMode:(id)a3 operationID:(id)a4 reply:(id)a5;
- (void)performMemoryNodesRebuildForCategory:(unint64_t)a3 operationID:(id)a4 reply:(id)a5;
- (void)performPromptSuggestionCachingWithOperationID:(id)a3 reply:(id)a4;
- (void)performPublicEventCachingTaskWithOptions:(id)a3 operationID:(id)a4 reply:(id)a5;
- (void)requestCharacterCurationInfoForCharacterUUIDs:(id)a3 operationID:(id)a4 reply:(id)a5;
- (void)requestExtendedTokenCollectionFromQueryTokensAsData:(id)a3 representativeMomentUUIDByAssetUUID:(id)a4 personOrPetUUIDsWithNegativeFeedback:(id)a5 sharingFilter:(int64_t)a6 operationID:(id)a7 reply:(id)a8;
- (void)requestFilterLocationsByMomentLocationHierarchyForRecipeAsData:(id)a3 operationID:(id)a4 reply:(id)a5;
- (void)requestGraphIsAvailableWithReply:(id)a3;
- (void)requestMeaningsForMomentUUIDs:(id)a3 operationID:(id)a4 reply:(id)a5;
- (void)requestPersonGroundingForPersonQuery:(id)a3 operationID:(id)a4 reply:(id)a5;
- (void)requestPersonalEventMomentsForQueryTokenAsData:(id)a3 associatedPersonUUID:(id)a4 scopedMomentUUIDs:(id)a5 momentUUIDByAssetUUID:(id)a6 operationID:(id)a7 reply:(id)a8;
- (void)requestPersonalTraitsForAssetUUIDs:(id)a3 momentUUIDByAssetUUID:(id)a4 extendedTokenCollectionAsData:(id)a5 configurationAsData:(id)a6 sharingFilter:(int64_t)a7 operationID:(id)a8 reply:(id)a9;
- (void)requestPersonalTraitsForAssetUUIDs:(id)a3 operationID:(id)a4 reply:(id)a5;
- (void)requestPersonalTraitsForHighlightUUIDs:(id)a3 operationID:(id)a4 reply:(id)a5;
- (void)requestPrewarmQueryAnnotatorForOriginatorPID:(int64_t)a3 operationID:(id)a4 reply:(id)a5;
- (void)requestPublicEventDataForAssetUUID:(id)a3 operationID:(id)a4 reply:(id)a5;
- (void)requestPublicEventDataForMomentUUID:(id)a3 operationID:(id)a4 reply:(id)a5;
- (void)requestQueryAnnotationForQuery:(id)a3 originatorPID:(int64_t)a4 operationID:(id)a5 reply:(id)a6;
- (void)validatePromptSuggestionsWithSuggestionUUIDs:(id)a3 operationID:(id)a4 reply:(id)a5;
- (void)warmupMomentGraphWorkerForDuration:(double)a3 operationID:(id)a4 reply:(id)a5;
@end

@implementation PLPhotoAnalysisMomentGraphService

- (void)warmupMomentGraphWorkerForDuration:(double)a3 operationID:(id)a4 reply:(id)a5
{
  v8 = a5;
  serviceProvider = self->_serviceProvider;
  v10 = a4;
  v11 = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __90__PLPhotoAnalysisMomentGraphService_warmupMomentGraphWorkerForDuration_operationID_reply___block_invoke;
  v17[3] = &unk_1E7577430;
  v12 = v8;
  v18 = v12;
  v13 = [v11 remoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __90__PLPhotoAnalysisMomentGraphService_warmupMomentGraphWorkerForDuration_operationID_reply___block_invoke_2;
  v15[3] = &unk_1E7577430;
  v16 = v12;
  v14 = v12;
  [v13 warmupMomentGraphWorkerForDuration:v10 operationID:v15 reply:a3];
}

- (void)cancelOperationsWithIdentifiers:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PLPhotoAnalysisServiceProvider *)self->_serviceProvider momentGraphService];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__PLPhotoAnalysisMomentGraphService_cancelOperationsWithIdentifiers_reply___block_invoke;
  v15[3] = &unk_1E7576050;
  v16 = v6;
  v9 = v7;
  v17 = v9;
  v10 = v6;
  v11 = [v8 remoteObjectProxyWithErrorHandler:v15];
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

- (void)performPublicEventCachingTaskWithOptions:(id)a3 operationID:(id)a4 reply:(id)a5
{
  v8 = a5;
  serviceProvider = self->_serviceProvider;
  v10 = a4;
  v11 = a3;
  v12 = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __96__PLPhotoAnalysisMomentGraphService_performPublicEventCachingTaskWithOptions_operationID_reply___block_invoke;
  v18[3] = &unk_1E7577430;
  v13 = v8;
  v19 = v13;
  v14 = [v12 remoteObjectProxyWithErrorHandler:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __96__PLPhotoAnalysisMomentGraphService_performPublicEventCachingTaskWithOptions_operationID_reply___block_invoke_2;
  v16[3] = &unk_1E7577430;
  v17 = v13;
  v15 = v13;
  [v14 performPublicEventCachingTaskWithOptions:v11 operationID:v10 reply:v16];
}

- (void)requestPublicEventDataForAssetUUID:(id)a3 operationID:(id)a4 reply:(id)a5
{
  v8 = a5;
  serviceProvider = self->_serviceProvider;
  v10 = a4;
  v11 = a3;
  v12 = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __90__PLPhotoAnalysisMomentGraphService_requestPublicEventDataForAssetUUID_operationID_reply___block_invoke;
  v18[3] = &unk_1E7577430;
  v13 = v8;
  v19 = v13;
  v14 = [v12 remoteObjectProxyWithErrorHandler:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __90__PLPhotoAnalysisMomentGraphService_requestPublicEventDataForAssetUUID_operationID_reply___block_invoke_2;
  v16[3] = &unk_1E756B9C0;
  v17 = v13;
  v15 = v13;
  [v14 requestPublicEventDataForAssetUUID:v11 operationID:v10 reply:v16];
}

- (void)requestPublicEventDataForMomentUUID:(id)a3 operationID:(id)a4 reply:(id)a5
{
  v8 = a5;
  serviceProvider = self->_serviceProvider;
  v10 = a4;
  v11 = a3;
  v12 = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __91__PLPhotoAnalysisMomentGraphService_requestPublicEventDataForMomentUUID_operationID_reply___block_invoke;
  v18[3] = &unk_1E7577430;
  v13 = v8;
  v19 = v13;
  v14 = [v12 remoteObjectProxyWithErrorHandler:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __91__PLPhotoAnalysisMomentGraphService_requestPublicEventDataForMomentUUID_operationID_reply___block_invoke_2;
  v16[3] = &unk_1E756B9C0;
  v17 = v13;
  v15 = v13;
  [v14 requestPublicEventDataForMomentUUID:v11 operationID:v10 reply:v16];
}

- (void)generateMagicSlotSuggestionsWithOptions:(id)a3 reply:(id)a4
{
  v6 = a4;
  serviceProvider = self->_serviceProvider;
  v8 = a3;
  v9 = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __83__PLPhotoAnalysisMomentGraphService_generateMagicSlotSuggestionsWithOptions_reply___block_invoke;
  v15[3] = &unk_1E7577430;
  v10 = v6;
  v16 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __83__PLPhotoAnalysisMomentGraphService_generateMagicSlotSuggestionsWithOptions_reply___block_invoke_2;
  v13[3] = &unk_1E75774A8;
  v14 = v10;
  v12 = v10;
  [v11 generateMagicSlotSuggestionsWithOptions:v8 reply:v13];
}

- (void)requestFilterLocationsByMomentLocationHierarchyForRecipeAsData:(id)a3 operationID:(id)a4 reply:(id)a5
{
  v8 = a5;
  serviceProvider = self->_serviceProvider;
  v10 = a4;
  v11 = a3;
  v12 = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __118__PLPhotoAnalysisMomentGraphService_requestFilterLocationsByMomentLocationHierarchyForRecipeAsData_operationID_reply___block_invoke;
  v18[3] = &unk_1E7577430;
  v13 = v8;
  v19 = v13;
  v14 = [v12 remoteObjectProxyWithErrorHandler:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __118__PLPhotoAnalysisMomentGraphService_requestFilterLocationsByMomentLocationHierarchyForRecipeAsData_operationID_reply___block_invoke_2;
  v16[3] = &unk_1E75644F8;
  v17 = v13;
  v15 = v13;
  [v14 requestFilterLocationsByMomentLocationHierarchyForRecipeAsData:v11 operationID:v10 reply:v16];
}

- (void)requestPersonGroundingForPersonQuery:(id)a3 operationID:(id)a4 reply:(id)a5
{
  v8 = a5;
  serviceProvider = self->_serviceProvider;
  v10 = a4;
  v11 = a3;
  v12 = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __92__PLPhotoAnalysisMomentGraphService_requestPersonGroundingForPersonQuery_operationID_reply___block_invoke;
  v18[3] = &unk_1E7577430;
  v13 = v8;
  v19 = v13;
  v14 = [v12 remoteObjectProxyWithErrorHandler:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __92__PLPhotoAnalysisMomentGraphService_requestPersonGroundingForPersonQuery_operationID_reply___block_invoke_2;
  v16[3] = &unk_1E75644F8;
  v17 = v13;
  v15 = v13;
  [v14 requestPersonGroundingForPersonQuery:v11 operationID:v10 reply:v16];
}

- (void)requestQueryAnnotationForQuery:(id)a3 originatorPID:(int64_t)a4 operationID:(id)a5 reply:(id)a6
{
  v10 = a6;
  serviceProvider = self->_serviceProvider;
  v12 = a5;
  v13 = a3;
  v14 = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __100__PLPhotoAnalysisMomentGraphService_requestQueryAnnotationForQuery_originatorPID_operationID_reply___block_invoke;
  v20[3] = &unk_1E7577430;
  v15 = v10;
  v21 = v15;
  v16 = [v14 remoteObjectProxyWithErrorHandler:v20];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __100__PLPhotoAnalysisMomentGraphService_requestQueryAnnotationForQuery_originatorPID_operationID_reply___block_invoke_2;
  v18[3] = &unk_1E75644F8;
  v19 = v15;
  v17 = v15;
  [v16 requestQueryAnnotationForQuery:v13 originatorPID:a4 operationID:v12 reply:v18];
}

- (void)requestPrewarmQueryAnnotatorForOriginatorPID:(int64_t)a3 operationID:(id)a4 reply:(id)a5
{
  v8 = a5;
  serviceProvider = self->_serviceProvider;
  v10 = a4;
  v11 = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __100__PLPhotoAnalysisMomentGraphService_requestPrewarmQueryAnnotatorForOriginatorPID_operationID_reply___block_invoke;
  v17[3] = &unk_1E7577430;
  v12 = v8;
  v18 = v12;
  v13 = [v11 remoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __100__PLPhotoAnalysisMomentGraphService_requestPrewarmQueryAnnotatorForOriginatorPID_operationID_reply___block_invoke_2;
  v15[3] = &unk_1E7577430;
  v16 = v12;
  v14 = v12;
  [v13 requestPrewarmQueryAnnotatorForOriginatorPID:a3 operationID:v10 reply:v15];
}

- (void)validatePromptSuggestionsWithSuggestionUUIDs:(id)a3 operationID:(id)a4 reply:(id)a5
{
  v8 = a5;
  serviceProvider = self->_serviceProvider;
  v10 = a4;
  v11 = a3;
  v12 = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __100__PLPhotoAnalysisMomentGraphService_validatePromptSuggestionsWithSuggestionUUIDs_operationID_reply___block_invoke;
  v18[3] = &unk_1E7577430;
  v13 = v8;
  v19 = v13;
  v14 = [v12 remoteObjectProxyWithErrorHandler:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __100__PLPhotoAnalysisMomentGraphService_validatePromptSuggestionsWithSuggestionUUIDs_operationID_reply___block_invoke_2;
  v16[3] = &unk_1E75644F8;
  v17 = v13;
  v15 = v13;
  [v14 validatePromptSuggestionsWithSuggestionUUIDs:v11 operationID:v10 reply:v16];
}

- (void)generateContextualPromptSuggestionsWithReply:(id)a3
{
  v4 = a3;
  v5 = [(PLPhotoAnalysisServiceProvider *)self->_serviceProvider momentGraphService];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __82__PLPhotoAnalysisMomentGraphService_generateContextualPromptSuggestionsWithReply___block_invoke;
  v11[3] = &unk_1E7577430;
  v6 = v4;
  v12 = v6;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __82__PLPhotoAnalysisMomentGraphService_generateContextualPromptSuggestionsWithReply___block_invoke_2;
  v9[3] = &unk_1E75644F8;
  v10 = v6;
  v8 = v6;
  [v7 generateContextualPromptSuggestionsWithReply:v9];
}

- (void)generateWhimsicalPromptSuggestionsWithReply:(id)a3
{
  v4 = a3;
  v5 = [(PLPhotoAnalysisServiceProvider *)self->_serviceProvider momentGraphService];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __81__PLPhotoAnalysisMomentGraphService_generateWhimsicalPromptSuggestionsWithReply___block_invoke;
  v11[3] = &unk_1E7577430;
  v6 = v4;
  v12 = v6;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __81__PLPhotoAnalysisMomentGraphService_generateWhimsicalPromptSuggestionsWithReply___block_invoke_2;
  v9[3] = &unk_1E75644F8;
  v10 = v6;
  v8 = v6;
  [v7 generateWhimsicalPromptSuggestionsWithReply:v9];
}

- (void)debugValidationFromQueryTemplate:(id)a3 person:(id)a4 city:(id)a5 place:(id)a6 time:(id)a7 reply:(id)a8
{
  v14 = a8;
  serviceProvider = self->_serviceProvider;
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v21 = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __99__PLPhotoAnalysisMomentGraphService_debugValidationFromQueryTemplate_person_city_place_time_reply___block_invoke;
  v27[3] = &unk_1E7577430;
  v22 = v14;
  v28 = v22;
  v23 = [v21 remoteObjectProxyWithErrorHandler:v27];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __99__PLPhotoAnalysisMomentGraphService_debugValidationFromQueryTemplate_person_city_place_time_reply___block_invoke_2;
  v25[3] = &unk_1E75644B8;
  v26 = v22;
  v24 = v22;
  [v23 debugValidationFromQueryTemplate:v20 person:v19 city:v18 place:v17 time:v16 reply:v25];
}

- (void)fetchUnvalidatedPromptSuggestionsWithFetchLimit:(int64_t)a3 reply:(id)a4
{
  v6 = a4;
  v7 = [(PLPhotoAnalysisServiceProvider *)self->_serviceProvider momentGraphService];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __91__PLPhotoAnalysisMomentGraphService_fetchUnvalidatedPromptSuggestionsWithFetchLimit_reply___block_invoke;
  v13[3] = &unk_1E7577430;
  v8 = v6;
  v14 = v8;
  v9 = [v7 remoteObjectProxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __91__PLPhotoAnalysisMomentGraphService_fetchUnvalidatedPromptSuggestionsWithFetchLimit_reply___block_invoke_2;
  v11[3] = &unk_1E75644F8;
  v12 = v8;
  v10 = v8;
  [v9 fetchUnvalidatedPromptSuggestionsWithFetchLimit:a3 reply:v11];
}

- (void)performPromptSuggestionCachingWithOperationID:(id)a3 reply:(id)a4
{
  v6 = a4;
  serviceProvider = self->_serviceProvider;
  v8 = a3;
  v9 = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __89__PLPhotoAnalysisMomentGraphService_performPromptSuggestionCachingWithOperationID_reply___block_invoke;
  v15[3] = &unk_1E7577430;
  v10 = v6;
  v16 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __89__PLPhotoAnalysisMomentGraphService_performPromptSuggestionCachingWithOperationID_reply___block_invoke_2;
  v13[3] = &unk_1E7577430;
  v14 = v10;
  v12 = v10;
  [v11 performPromptSuggestionCachingWithOperationID:v8 reply:v13];
}

- (void)requestPersonalTraitsForAssetUUIDs:(id)a3 operationID:(id)a4 reply:(id)a5
{
  v8 = a5;
  serviceProvider = self->_serviceProvider;
  v10 = a4;
  v11 = a3;
  v12 = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __90__PLPhotoAnalysisMomentGraphService_requestPersonalTraitsForAssetUUIDs_operationID_reply___block_invoke;
  v18[3] = &unk_1E7577430;
  v13 = v8;
  v19 = v13;
  v14 = [v12 remoteObjectProxyWithErrorHandler:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __90__PLPhotoAnalysisMomentGraphService_requestPersonalTraitsForAssetUUIDs_operationID_reply___block_invoke_2;
  v16[3] = &unk_1E756B9C0;
  v17 = v13;
  v15 = v13;
  [v14 requestPersonalTraitsForAssetUUIDs:v11 operationID:v10 reply:v16];
}

- (void)requestPersonalTraitsForHighlightUUIDs:(id)a3 operationID:(id)a4 reply:(id)a5
{
  v8 = a5;
  serviceProvider = self->_serviceProvider;
  v10 = a4;
  v11 = a3;
  v12 = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __94__PLPhotoAnalysisMomentGraphService_requestPersonalTraitsForHighlightUUIDs_operationID_reply___block_invoke;
  v18[3] = &unk_1E7577430;
  v13 = v8;
  v19 = v13;
  v14 = [v12 remoteObjectProxyWithErrorHandler:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __94__PLPhotoAnalysisMomentGraphService_requestPersonalTraitsForHighlightUUIDs_operationID_reply___block_invoke_2;
  v16[3] = &unk_1E756B9C0;
  v17 = v13;
  v15 = v13;
  [v14 requestPersonalTraitsForHighlightUUIDs:v11 operationID:v10 reply:v16];
}

- (void)requestCharacterCurationInfoForCharacterUUIDs:(id)a3 operationID:(id)a4 reply:(id)a5
{
  v8 = a5;
  serviceProvider = self->_serviceProvider;
  v10 = a4;
  v11 = a3;
  v12 = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __101__PLPhotoAnalysisMomentGraphService_requestCharacterCurationInfoForCharacterUUIDs_operationID_reply___block_invoke;
  v18[3] = &unk_1E7577430;
  v13 = v8;
  v19 = v13;
  v14 = [v12 remoteObjectProxyWithErrorHandler:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __101__PLPhotoAnalysisMomentGraphService_requestCharacterCurationInfoForCharacterUUIDs_operationID_reply___block_invoke_2;
  v16[3] = &unk_1E75644F8;
  v17 = v13;
  v15 = v13;
  [v14 requestCharacterCurationInfoForCharacterUUIDs:v11 operationID:v10 reply:v16];
}

- (void)requestPersonalEventMomentsForQueryTokenAsData:(id)a3 associatedPersonUUID:(id)a4 scopedMomentUUIDs:(id)a5 momentUUIDByAssetUUID:(id)a6 operationID:(id)a7 reply:(id)a8
{
  v14 = a8;
  serviceProvider = self->_serviceProvider;
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v21 = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __163__PLPhotoAnalysisMomentGraphService_requestPersonalEventMomentsForQueryTokenAsData_associatedPersonUUID_scopedMomentUUIDs_momentUUIDByAssetUUID_operationID_reply___block_invoke;
  v27[3] = &unk_1E7577430;
  v22 = v14;
  v28 = v22;
  v23 = [v21 remoteObjectProxyWithErrorHandler:v27];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __163__PLPhotoAnalysisMomentGraphService_requestPersonalEventMomentsForQueryTokenAsData_associatedPersonUUID_scopedMomentUUIDs_momentUUIDByAssetUUID_operationID_reply___block_invoke_2;
  v25[3] = &unk_1E75644F8;
  v26 = v22;
  v24 = v22;
  [v23 requestPersonalEventMomentsForQueryTokenAsData:v20 associatedPersonUUID:v19 scopedMomentUUIDs:v18 momentUUIDByAssetUUID:v17 operationID:v16 reply:v25];
}

- (void)requestPersonalTraitsForAssetUUIDs:(id)a3 momentUUIDByAssetUUID:(id)a4 extendedTokenCollectionAsData:(id)a5 configurationAsData:(id)a6 sharingFilter:(int64_t)a7 operationID:(id)a8 reply:(id)a9
{
  v16 = a9;
  serviceProvider = self->_serviceProvider;
  v18 = a8;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __176__PLPhotoAnalysisMomentGraphService_requestPersonalTraitsForAssetUUIDs_momentUUIDByAssetUUID_extendedTokenCollectionAsData_configurationAsData_sharingFilter_operationID_reply___block_invoke;
  v29[3] = &unk_1E7577430;
  v24 = v16;
  v30 = v24;
  v25 = [v23 remoteObjectProxyWithErrorHandler:v29];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __176__PLPhotoAnalysisMomentGraphService_requestPersonalTraitsForAssetUUIDs_momentUUIDByAssetUUID_extendedTokenCollectionAsData_configurationAsData_sharingFilter_operationID_reply___block_invoke_2;
  v27[3] = &unk_1E75644F8;
  v28 = v24;
  v26 = v24;
  [v25 requestPersonalTraitsForAssetUUIDs:v22 momentUUIDByAssetUUID:v21 extendedTokenCollectionAsData:v20 configurationAsData:v19 sharingFilter:a7 operationID:v18 reply:v27];
}

- (void)requestMeaningsForMomentUUIDs:(id)a3 operationID:(id)a4 reply:(id)a5
{
  v8 = a5;
  serviceProvider = self->_serviceProvider;
  v10 = a4;
  v11 = a3;
  v12 = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __85__PLPhotoAnalysisMomentGraphService_requestMeaningsForMomentUUIDs_operationID_reply___block_invoke;
  v18[3] = &unk_1E7577430;
  v13 = v8;
  v19 = v13;
  v14 = [v12 remoteObjectProxyWithErrorHandler:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __85__PLPhotoAnalysisMomentGraphService_requestMeaningsForMomentUUIDs_operationID_reply___block_invoke_2;
  v16[3] = &unk_1E7577458;
  v17 = v13;
  v15 = v13;
  [v14 requestMeaningsForMomentUUIDs:v11 operationID:v10 reply:v16];
}

- (void)requestExtendedTokenCollectionFromQueryTokensAsData:(id)a3 representativeMomentUUIDByAssetUUID:(id)a4 personOrPetUUIDsWithNegativeFeedback:(id)a5 sharingFilter:(int64_t)a6 operationID:(id)a7 reply:(id)a8
{
  v14 = a8;
  serviceProvider = self->_serviceProvider;
  v16 = a7;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __194__PLPhotoAnalysisMomentGraphService_requestExtendedTokenCollectionFromQueryTokensAsData_representativeMomentUUIDByAssetUUID_personOrPetUUIDsWithNegativeFeedback_sharingFilter_operationID_reply___block_invoke;
  v26[3] = &unk_1E7577430;
  v21 = v14;
  v27 = v21;
  v22 = [v20 remoteObjectProxyWithErrorHandler:v26];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __194__PLPhotoAnalysisMomentGraphService_requestExtendedTokenCollectionFromQueryTokensAsData_representativeMomentUUIDByAssetUUID_personOrPetUUIDsWithNegativeFeedback_sharingFilter_operationID_reply___block_invoke_2;
  v24[3] = &unk_1E75644F8;
  v25 = v21;
  v23 = v21;
  [v22 requestExtendedTokenCollectionFromQueryTokensAsData:v19 representativeMomentUUIDByAssetUUID:v18 personOrPetUUIDsWithNegativeFeedback:v17 sharingFilter:a6 operationID:v16 reply:v24];
}

- (void)performLibraryUnderstandingWithOperationID:(id)a3 reply:(id)a4
{
  v6 = a4;
  serviceProvider = self->_serviceProvider;
  v8 = a3;
  v9 = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __86__PLPhotoAnalysisMomentGraphService_performLibraryUnderstandingWithOperationID_reply___block_invoke;
  v15[3] = &unk_1E7577430;
  v10 = v6;
  v16 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __86__PLPhotoAnalysisMomentGraphService_performLibraryUnderstandingWithOperationID_reply___block_invoke_2;
  v13[3] = &unk_1E7577430;
  v14 = v10;
  v12 = v10;
  [v11 performLibraryUnderstandingWithOperationID:v8 reply:v13];
}

- (void)performGraphSearchEntityRankingDonationWithOperationID:(id)a3 reply:(id)a4
{
  v6 = a4;
  serviceProvider = self->_serviceProvider;
  v8 = a3;
  v9 = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __98__PLPhotoAnalysisMomentGraphService_performGraphSearchEntityRankingDonationWithOperationID_reply___block_invoke;
  v15[3] = &unk_1E7577430;
  v10 = v6;
  v16 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __98__PLPhotoAnalysisMomentGraphService_performGraphSearchEntityRankingDonationWithOperationID_reply___block_invoke_2;
  v13[3] = &unk_1E7577430;
  v14 = v10;
  v12 = v10;
  [v11 performGraphSearchEntityRankingDonationWithOperationID:v8 reply:v13];
}

- (id)requestSearchableAssetUUIDsBySocialGroupForAssetCollectionUUIDs:(id)a3 ofType:(unint64_t)a4 isFullAnalysis:(BOOL)a5 operationID:(id)a6 error:(id *)a7
{
  v9 = a5;
  v12 = a3;
  v13 = a6;
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
  v14 = [(PLPhotoAnalysisServiceProvider *)self->_serviceProvider momentGraphService];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __141__PLPhotoAnalysisMomentGraphService_requestSearchableAssetUUIDsBySocialGroupForAssetCollectionUUIDs_ofType_isFullAnalysis_operationID_error___block_invoke;
  v19[3] = &unk_1E75773B8;
  v19[4] = &v20;
  v15 = [v14 synchronousRemoteObjectProxyWithErrorHandler:v19];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __141__PLPhotoAnalysisMomentGraphService_requestSearchableAssetUUIDsBySocialGroupForAssetCollectionUUIDs_ofType_isFullAnalysis_operationID_error___block_invoke_2;
  v18[3] = &unk_1E75773E0;
  v18[4] = &v26;
  v18[5] = &v20;
  [v15 requestSearchableAssetUUIDsBySocialGroupForAssetCollectionUUIDs:v12 ofType:a4 isFullAnalysis:v9 operationID:v13 reply:v18];

  if (a7)
  {
    *a7 = v21[5];
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

- (id)requestAssetSearchKeywordsForAssetCollectionUUIDs:(id)a3 ofType:(unint64_t)a4 operationID:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
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
  v12 = [(PLPhotoAnalysisServiceProvider *)self->_serviceProvider momentGraphService];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __112__PLPhotoAnalysisMomentGraphService_requestAssetSearchKeywordsForAssetCollectionUUIDs_ofType_operationID_error___block_invoke;
  v17[3] = &unk_1E75773B8;
  v17[4] = &v18;
  v13 = [v12 synchronousRemoteObjectProxyWithErrorHandler:v17];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __112__PLPhotoAnalysisMomentGraphService_requestAssetSearchKeywordsForAssetCollectionUUIDs_ofType_operationID_error___block_invoke_2;
  v16[3] = &unk_1E75773E0;
  v16[4] = &v24;
  v16[5] = &v18;
  [v13 requestAssetSearchKeywordsForAssetCollectionUUIDs:v10 ofType:a4 operationID:v11 reply:v16];

  if (a6)
  {
    *a6 = v19[5];
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

- (id)requestSearchIndexKeywordsForAssetCollectionUUIDs:(id)a3 ofType:(unint64_t)a4 operationID:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
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
  v12 = [(PLPhotoAnalysisServiceProvider *)self->_serviceProvider momentGraphService];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __112__PLPhotoAnalysisMomentGraphService_requestSearchIndexKeywordsForAssetCollectionUUIDs_ofType_operationID_error___block_invoke;
  v17[3] = &unk_1E75773B8;
  v17[4] = &v18;
  v13 = [v12 synchronousRemoteObjectProxyWithErrorHandler:v17];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __112__PLPhotoAnalysisMomentGraphService_requestSearchIndexKeywordsForAssetCollectionUUIDs_ofType_operationID_error___block_invoke_2;
  v16[3] = &unk_1E75773E0;
  v16[4] = &v24;
  v16[5] = &v18;
  [v13 requestSearchIndexKeywordsForAssetCollectionUUIDs:v10 ofType:a4 operationID:v11 reply:v16];

  if (a6)
  {
    *a6 = v19[5];
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

- (id)requestGraphSearchMetadataWithOptions:(id)a3 operationID:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
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
  v10 = [(PLPhotoAnalysisServiceProvider *)self->_serviceProvider momentGraphService];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __93__PLPhotoAnalysisMomentGraphService_requestGraphSearchMetadataWithOptions_operationID_error___block_invoke;
  v15[3] = &unk_1E75773B8;
  v15[4] = &v16;
  v11 = [v10 synchronousRemoteObjectProxyWithErrorHandler:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __93__PLPhotoAnalysisMomentGraphService_requestGraphSearchMetadataWithOptions_operationID_error___block_invoke_2;
  v14[3] = &unk_1E75773E0;
  v14[4] = &v22;
  v14[5] = &v16;
  [v11 requestGraphSearchMetadataWithOptions:v8 operationID:v9 reply:v14];

  if (a5)
  {
    *a5 = v17[5];
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

- (id)requestSynonymsDictionariesWithOperationID:(id)a3 error:(id *)a4
{
  v6 = a3;
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
  v7 = [(PLPhotoAnalysisServiceProvider *)self->_serviceProvider momentGraphService];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __86__PLPhotoAnalysisMomentGraphService_requestSynonymsDictionariesWithOperationID_error___block_invoke;
  v12[3] = &unk_1E75773B8;
  v12[4] = &v13;
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __86__PLPhotoAnalysisMomentGraphService_requestSynonymsDictionariesWithOperationID_error___block_invoke_2;
  v11[3] = &unk_1E75773E0;
  v11[4] = &v19;
  v11[5] = &v13;
  [v8 requestSynonymsDictionariesWithOperationID:v6 reply:v11];

  if (a4)
  {
    *a4 = v14[5];
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

- (void)requestGraphIsAvailableWithReply:(id)a3
{
  v4 = a3;
  v5 = [(PLPhotoAnalysisServiceProvider *)self->_serviceProvider momentGraphService];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__PLPhotoAnalysisMomentGraphService_requestGraphIsAvailableWithReply___block_invoke;
  v11[3] = &unk_1E7577430;
  v6 = v4;
  v12 = v6;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__PLPhotoAnalysisMomentGraphService_requestGraphIsAvailableWithReply___block_invoke_2;
  v9[3] = &unk_1E7577480;
  v10 = v6;
  v8 = v6;
  [v7 requestGraphIsAvailableWithReply:v9];
}

- (id)graphStatusWithError:(id *)a3
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
  v4 = [(PLPhotoAnalysisServiceProvider *)self->_serviceProvider momentGraphService];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__PLPhotoAnalysisMomentGraphService_graphStatusWithError___block_invoke;
  v10[3] = &unk_1E75773B8;
  v10[4] = &v11;
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__PLPhotoAnalysisMomentGraphService_graphStatusWithError___block_invoke_2;
  v9[3] = &unk_1E75773E0;
  v9[4] = &v17;
  v9[5] = &v11;
  [v5 requestGraphStatusWithReply:v9];

  if (a3)
  {
    *a3 = v12[5];
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

- (void)performLocalMemoryEnrichmentForMemoryCategory:(unint64_t)a3 reply:(id)a4
{
  v6 = a4;
  v7 = [(PLPhotoAnalysisServiceProvider *)self->_serviceProvider momentGraphService];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __89__PLPhotoAnalysisMomentGraphService_performLocalMemoryEnrichmentForMemoryCategory_reply___block_invoke;
  v13[3] = &unk_1E7577430;
  v8 = v6;
  v14 = v8;
  v9 = [v7 remoteObjectProxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __89__PLPhotoAnalysisMomentGraphService_performLocalMemoryEnrichmentForMemoryCategory_reply___block_invoke_2;
  v11[3] = &unk_1E756B9C0;
  v12 = v8;
  v10 = v8;
  [v9 performLocalMemoryEnrichmentForMemoryCategory:a3 reply:v11];
}

- (void)performLocalMemoryEnrichmentForUUIDs:(id)a3 reply:(id)a4
{
  v6 = a4;
  serviceProvider = self->_serviceProvider;
  v8 = a3;
  v9 = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __80__PLPhotoAnalysisMomentGraphService_performLocalMemoryEnrichmentForUUIDs_reply___block_invoke;
  v15[3] = &unk_1E7577430;
  v10 = v6;
  v16 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __80__PLPhotoAnalysisMomentGraphService_performLocalMemoryEnrichmentForUUIDs_reply___block_invoke_2;
  v13[3] = &unk_1E756B9C0;
  v14 = v10;
  v12 = v10;
  [v11 performLocalMemoryEnrichmentForUUIDs:v8 reply:v13];
}

- (void)performLocalMemoryEventElectionWithElectionMode:(id)a3 operationID:(id)a4 reply:(id)a5
{
  v8 = a5;
  serviceProvider = self->_serviceProvider;
  v10 = a4;
  v11 = a3;
  v12 = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __103__PLPhotoAnalysisMomentGraphService_performLocalMemoryEventElectionWithElectionMode_operationID_reply___block_invoke;
  v18[3] = &unk_1E7577430;
  v13 = v8;
  v19 = v13;
  v14 = [v12 remoteObjectProxyWithErrorHandler:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __103__PLPhotoAnalysisMomentGraphService_performLocalMemoryEventElectionWithElectionMode_operationID_reply___block_invoke_2;
  v16[3] = &unk_1E7577430;
  v17 = v13;
  v15 = v13;
  [v14 performLocalMemoryEventElectionWithElectionMode:v11 operationID:v10 reply:v16];
}

- (void)performMemoryNodesRebuildForCategory:(unint64_t)a3 operationID:(id)a4 reply:(id)a5
{
  v8 = a5;
  serviceProvider = self->_serviceProvider;
  v10 = a4;
  v11 = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __92__PLPhotoAnalysisMomentGraphService_performMemoryNodesRebuildForCategory_operationID_reply___block_invoke;
  v17[3] = &unk_1E7577430;
  v12 = v8;
  v18 = v12;
  v13 = [v11 remoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __92__PLPhotoAnalysisMomentGraphService_performMemoryNodesRebuildForCategory_operationID_reply___block_invoke_2;
  v15[3] = &unk_1E7577430;
  v16 = v12;
  v14 = v12;
  [v13 performMemoryNodesRebuildForCategory:a3 operationID:v10 reply:v15];
}

- (void)performGraphIncrementalUpdateWithOptions:(id)a3 operationID:(id)a4 reply:(id)a5
{
  v8 = a5;
  serviceProvider = self->_serviceProvider;
  v10 = a4;
  v11 = a3;
  v12 = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __96__PLPhotoAnalysisMomentGraphService_performGraphIncrementalUpdateWithOptions_operationID_reply___block_invoke;
  v18[3] = &unk_1E7577430;
  v13 = v8;
  v19 = v13;
  v14 = [v12 remoteObjectProxyWithErrorHandler:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __96__PLPhotoAnalysisMomentGraphService_performGraphIncrementalUpdateWithOptions_operationID_reply___block_invoke_2;
  v16[3] = &unk_1E7577430;
  v17 = v13;
  v15 = v13;
  [v14 performGraphIncrementalUpdateWithOptions:v11 operationID:v10 reply:v16];
}

- (void)performGraphRebuildWithOptions:(id)a3 operationID:(id)a4 reply:(id)a5
{
  v8 = a5;
  serviceProvider = self->_serviceProvider;
  v10 = a4;
  v11 = a3;
  v12 = [(PLPhotoAnalysisServiceProvider *)serviceProvider momentGraphService];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __86__PLPhotoAnalysisMomentGraphService_performGraphRebuildWithOptions_operationID_reply___block_invoke;
  v18[3] = &unk_1E7577430;
  v13 = v8;
  v19 = v13;
  v14 = [v12 remoteObjectProxyWithErrorHandler:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __86__PLPhotoAnalysisMomentGraphService_performGraphRebuildWithOptions_operationID_reply___block_invoke_2;
  v16[3] = &unk_1E7577430;
  v17 = v13;
  v15 = v13;
  [v14 performGraphRebuildWithOptions:v11 operationID:v10 reply:v16];
}

- (PLPhotoAnalysisMomentGraphService)initWithServiceProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PLPhotoAnalysisMomentGraphService;
  v6 = [(PLPhotoAnalysisMomentGraphService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serviceProvider, a3);
  }

  return v7;
}

@end