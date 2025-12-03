@interface PLPhotoAnalysisServiceClient
- (BOOL)rebuildPersonsWithOptions:(id)options error:(id *)error;
- (BOOL)reclusterFacesWithOptions:(id)options error:(id *)error;
- (BOOL)reportMetricsWithOptions:(id)options error:(id *)error;
- (BOOL)requestAssetRevGeocodingForAssetLocalIdentifiers:(id)identifiers withError:(id *)error;
- (BOOL)requestAssetRevGeocodingWithError:(id *)error;
- (BOOL)requestEnrichmentWithOptions:(id)options error:(id *)error;
- (BOOL)requestGenerateDefaultRulesForLibraryScopeWithLocalIdentifier:(id)identifier withOptions:(id)options error:(id *)error;
- (BOOL)requestHighlightCollectionEnrichmentWithOptions:(id)options error:(id *)error;
- (BOOL)requestHighlightEnrichmentWithOptions:(id)options error:(id *)error;
- (BOOL)requestInvalidatePersistentCaches:(id *)caches;
- (BOOL)requestInvalidateTransientCaches:(id *)caches;
- (BOOL)requestSetDefaultsObject:(id)object forKey:(id)key withError:(id *)error;
- (BOOL)requestStartSharedLibrarySuggestionResultWithError:(id *)error;
- (BOOL)requestSyndicationLibraryRevGeocodingWithError:(id *)error;
- (BOOL)requestTitleForAssetCollectionWithLocalIdentifier:(id)identifier format:(int64_t)format title:(id *)title subtitle:(id *)subtitle error:(id *)error;
- (BOOL)requestTitleForCollectionMomentListWithLocalIdentifier:(id)identifier format:(int64_t)format title:(id *)title subtitle:(id *)subtitle error:(id *)error;
- (BOOL)requestTitleForPersonLocalIdentifiers:(id)identifiers format:(int64_t)format title:(id *)title subtitle:(id *)subtitle error:(id *)error;
- (BOOL)resetFaceClassificationModel:(id *)model;
- (BOOL)resetFaceClusteringState:(id *)state;
- (PLPhotoAnalysisServiceClient)init;
- (PLPhotoAnalysisServiceClient)initWithLibraryURL:(id)l;
- (id)_xpcConnection;
- (id)differencesBetweenClustersInClusterCacheAndLibrary:(id *)library;
- (id)dumpAnalysisStatusError:(id *)error;
- (id)executiveService;
- (id)faceCandidatesForKeyFaceForPersonsWithLocalIdentifiers:(id)identifiers error:(id *)error;
- (id)legacyService;
- (id)momentGraphService;
- (id)photoLibraryService;
- (id)remoteObjectProxyWithErrorHandler:(id)handler;
- (id)requestAllSocialGroupsForMemberLocalIdentifier:(id)identifier withOptions:(id)options error:(id *)error;
- (id)requestAssetLocalIdentifiersByCityNameWithError:(id *)error;
- (id)requestAssetsForPersonLocalIdentifiers:(id)identifiers withError:(id *)error;
- (id)requestAvailableSuggestionTypeInfosWithOptions:(id)options error:(id *)error;
- (id)requestBatchSuggestedRecipientsForMomentUUIDByAssetUUID:(id)d options:(id)options error:(id *)error;
- (id)requestCameraSmartSharingProcessingForLibraryScopeWithUUID:(id)d withOptions:(id)options error:(id *)error;
- (id)requestComposabilityScoresOfAssetsForLocalIdentifiers:(id)identifiers options:(id)options error:(id *)error;
- (id)requestConfidenceByMomentLocalIdentifierForMeaning:(id)meaning useAlternativeMeaningEdge:(BOOL)edge onlyHighPrecision:(BOOL)precision error:(id *)error;
- (id)requestContextDictionary;
- (id)requestCuratedAssetForAssetCollectionWithLocalIdentifier:(id)identifier referenceAssetLocalIdentifier:(id)localIdentifier options:(id)options error:(id *)error;
- (id)requestCuratedAssetsForAssetCollectionWithLocalIdentifier:(id)identifier duration:(unint64_t)duration options:(id)options error:(id *)error;
- (id)requestCurationDebugInformationForAssetCollectionWithLocalIdentifier:(id)identifier options:(id)options error:(id *)error;
- (id)requestCurationDebugInformationForAssetLocalIdentifier:(id)identifier error:(id *)error;
- (id)requestCurationOfLength:(unint64_t)length forMemoryForLocalIdentifier:(id)identifier withOptions:(id)options error:(id *)error;
- (id)requestCurationScoreByAssetUUIDForAssetUUIDs:(id)ds error:(id *)error;
- (id)requestDefaultsObjectForKey:(id)key withError:(id *)error;
- (id)requestEnergyStatusWithError:(id *)error;
- (id)requestExportGraphForPurpose:(id)purpose error:(id *)error;
- (id)requestGeoHashForAssetLocalIdentifiers:(id)identifiers geoHashSize:(id)size error:(id *)error;
- (id)requestGraphInferencesSummaryWithDateInterval:(id)interval error:(id *)error;
- (id)requestGraphInferencesSummaryWithMomentLocalIdentifiers:(id)identifiers error:(id *)error;
- (id)requestGraphMomentLocalIdentifiersWithDateInterval:(id)interval error:(id *)error;
- (id)requestGraphPerformQuery:(id)query error:(id *)error;
- (id)requestGraphStatisticsWithOptions:(id)options error:(id *)error;
- (id)requestGraphStatus:(id *)status;
- (id)requestHighlightDebugInformationForHighlightWithLocalIdentifier:(id)identifier error:(id *)error;
- (id)requestIconicSceneScoreForAssetLocalIdentifiers:(id)identifiers error:(id *)error;
- (id)requestKeyAssetLocalIdentifierForPrototypeCategory:(id)category error:(id *)error;
- (id)requestMeaningScoreDebugDescriptionForMomentLocalIdentifier:(id)identifier error:(id *)error;
- (id)requestMemoryDebugInformationForMemoryWithLocalIdentifier:(id)identifier error:(id *)error;
- (id)requestNightlySuggestionsForPosterConfiguration:(id)configuration atDate:(id)date error:(id *)error;
- (id)requestOnDemandFaceCropsForFaceLocalIdentifiers:(id)identifiers error:(id *)error;
- (id)requestPersonalTraitsForAssetsWithUUIDs:(id)ds error:(id *)error;
- (id)requestPersonalTraitsForHighlightsWithUUIDs:(id)ds error:(id *)error;
- (id)requestRelatedMomentsForPersonLocalIdentifiers:(id)identifiers withError:(id *)error;
- (id)requestRelationshipInferencesForPersonLocalIdentifiers:(id)identifiers error:(id *)error;
- (id)requestRepresentativeAssetsForAssetCollectionWithLocalIdentifier:(id)identifier options:(id)options error:(id *)error;
- (id)requestSharingMessageSuggestionDebugInformationForAssetCollectionLocalIdentifier:(id)identifier error:(id *)error;
- (id)requestSharingSuggestionDebugInformationForAssetCollectionLocalIdentifier:(id)identifier error:(id *)error;
- (id)requestSignalModelInfosWithError:(id *)error;
- (id)requestSocialGroupsOverlappingMemberLocalIdentifiers:(id)identifiers withError:(id *)error;
- (id)requestSortedArrayOfPersonLocalIdentifiers:(id)identifiers withError:(id *)error;
- (id)requestSuggestedContributionsForAssetsMetadata:(id)metadata error:(id *)error;
- (id)requestSuggestedMePersonIdentifierWithError:(id *)error;
- (id)requestSuggestedMomentLocalIdentifiersForPersonLocalIdentifiers:(id)identifiers withOptions:(id)options error:(id *)error;
- (id)requestSuggestedPersonsWithOptions:(id)options error:(id *)error;
- (id)requestSuggestedRecipientsForAssetLocalIdentifiers:(id)identifiers momentLocalIdentifiers:(id)localIdentifiers options:(id)options error:(id *)error;
- (id)requestSuggestionInfosWithOptions:(id)options error:(id *)error;
- (id)requestSummaryCurationForHighlightLocalIdentifier:(id)identifier options:(id)options error:(id *)error;
- (id)requestTextFeaturesForMomentLocalIdentifiers:(id)identifiers error:(id *)error;
- (id)requestTrendsByIdentifierWithCadence:(id)cadence forYear:(unint64_t)year error:(id *)error;
- (id)requestUpNextAssetLocalIdentifiersForAssetWithLocalIdentifier:(id)identifier error:(id *)error;
- (id)requestUpNextMemoryLocalIdentifiersWithOptions:(id)options error:(id *)error;
- (id)requestUtilityAssetInformationWithError:(id *)error;
- (id)requestUtilityAssetLocalIdentifiersWithError:(id *)error;
- (id)runCurationWithItems:(id)items options:(id)options error:(id *)error;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (id)testService;
- (id)wallpaperService;
- (id)xpcConnection;
- (int)photoanalysisdPid;
- (int64_t)suggestedPersonsForPersonWithLocalIdentifier:(id)identifier toBeConfirmedPersonSuggestions:(id)suggestions toBeRejectedPersonSuggestions:(id)personSuggestions completion:(id)completion;
- (int64_t)updateKeyFacesOfPersonsWithLocalIdentifiers:(id)identifiers forceUpdate:(BOOL)update completion:(id)completion;
- (void)_resetServicesIncludingConnection:(BOOL)connection;
- (void)_setupLegacyServiceInterface:(id)interface;
- (void)_setupServiceProviderInterface:(id)interface;
- (void)_setupServices;
- (void)_setupXPCConnection;
- (void)asyncRequestCameraSmartSharingProcessingForLibraryScopeWithUUID:(id)d withOptions:(id)options reply:(id)reply;
- (void)cacheCPAnalyticsPropertiesWithReply:(id)reply;
- (void)cancelOperationsWithIdentifiers:(id)identifiers reply:(id)reply;
- (void)dealloc;
- (void)dispatchOnQueue:(id)queue blockWithoutBoost:(id)boost;
- (void)exportWallpaperForAssets:(id)assets options:(id)options reply:(id)reply;
- (void)generateMemoriesWithOptions:(id)options reply:(id)reply;
- (void)generateSuggestionsWithOptions:(id)options reply:(id)reply;
- (void)notifyLibraryAvailableAtURLForMediaanalysisd:(id)mediaanalysisd;
- (void)notifyLibraryAvailableAtURLForPhotoanalysisd:(id)photoanalysisd;
- (void)notifyWhenGraphReadyWithCoalescingIdentifier:(id)identifier reply:(id)reply;
- (void)personPromoterAdvancedStatus:(id)status;
- (void)personPromoterStatus:(id)status;
- (void)recordFeatureUsageFromCounts:(id)counts reply:(id)reply;
- (void)reloadAlbumWidgetTimelineWithReply:(id)reply;
- (void)reloadForYouWidgetTimelineWithReply:(id)reply;
- (void)reloadWallpaperSuggestions:(id)suggestions reply:(id)reply;
- (void)requestCacheSongSourceWithOptions:(id)options reply:(id)reply;
- (void)requestClearMusicCacheWithOptions:(id)options reply:(id)reply;
- (void)requestExternalAssetRelevanceProcessingWithReply:(id)reply;
- (void)requestFlexMusicCurationDebugInformationForAssetCollectionWithLocalIdentifier:(id)identifier reply:(id)reply;
- (void)requestFlexMusicCurationDebugInformationForSongWithUID:(id)d reply:(id)reply;
- (void)requestFlexMusicCurationForAssetCollectionLocalIdentifier:(id)identifier options:(id)options reply:(id)reply;
- (void)requestFlexMusicCurationForAssetLocalIdentifiers:(id)identifiers options:(id)options reply:(id)reply;
- (void)requestFlexMusicCurationWithOptions:(id)options reply:(id)reply;
- (void)requestGenerateQuestionsWithOptions:(id)options reply:(id)reply;
- (void)requestGraphModelResultWithOptions:(id)options progress:(id)progress reply:(id)reply;
- (void)requestGraphRebuildFractionCompletedWithReply:(id)reply;
- (void)requestHighlightEstimatesWithReply:(id)reply;
- (void)requestMaestroSongsWithOptions:(id)options reply:(id)reply;
- (void)requestModelInference:(id)inference options:(id)options reply:(id)reply;
- (void)requestMusicCacheStatusWithReply:(id)reply;
- (void)requestMusicCatalogAdamIDsForPurchasedSongID:(id)d options:(id)options reply:(id)reply;
- (void)requestMusicCurationDebugInformationForAssetCollectionWithLocalIdentifier:(id)identifier reply:(id)reply;
- (void)requestMusicCurationDebugInformationForSongWithAdamID:(id)d reply:(id)reply;
- (void)requestMusicCurationForAssetCollectionLocalIdentifier:(id)identifier options:(id)options reply:(id)reply;
- (void)requestMusicCurationForAssetLocalIdentifiers:(id)identifiers options:(id)options reply:(id)reply;
- (void)requestMusicCurationWithOptions:(id)options reply:(id)reply;
- (void)requestOnDemandTasksWithOptions:(id)options reply:(id)reply;
- (void)requestPeopleForWallpaperSuggestionsWithOptions:(id)options reply:(id)reply;
- (void)requestPrecachingOfAudioDataForAdamIDs:(id)ds reply:(id)reply;
- (void)requestRecentlyUsedSongsWithOptions:(id)options reply:(id)reply;
- (void)requestReprocessSuggestionsOnLibraryScopeRulesChangeWithReply:(id)reply;
- (void)requestRunPFLWithAttachments:(id)attachments recipeUserInfo:(id)info resultBlock:(id)block;
- (void)requestRunShadowEvaluationWithRecipe:(id)recipe models:(id)models trialDeploymentID:(id)d trialExperimentID:(id)iD trialTreatmentID:(id)treatmentID resultBlock:(id)block;
- (void)requestSongsForAdamIDs:(id)ds options:(id)options reply:(id)reply;
- (void)requestSyndicationProcessingWithOptions:(id)options reply:(id)reply;
- (void)requestUpdateFeaturedContentBasedOnUserFeedbackWithPersonUUIDs:(id)ds reply:(id)reply;
- (void)requestWallpaperProperties:(id)properties options:(id)options reply:(id)reply;
- (void)runPerformanceTest:(id)test options:(id)options reply:(id)reply;
- (void)simulateMemoriesNotificationWithOptions:(id)options reply:(id)reply;
- (void)warmupLegacyStorytellingWorkerForDuration:(double)duration operationID:(id)d reply:(id)reply;
- (void)writeQALog:(id)log;
@end

@implementation PLPhotoAnalysisServiceClient

- (id)momentGraphService
{
  os_unfair_lock_lock(&self->_connectionLock);
  _xpcConnection = [(PLPhotoAnalysisServiceClient *)self _xpcConnection];
  v4 = self->_momentGraphService;
  os_unfair_lock_unlock(&self->_connectionLock);

  return v4;
}

- (id)_xpcConnection
{
  os_unfair_lock_assert_owner(&self->_connectionLock);
  if (self->_xpcConnection)
  {
    if (!self->_legacyService)
    {
      [(PLPhotoAnalysisServiceClient *)self _setupServices];
    }
  }

  else
  {
    [(PLPhotoAnalysisServiceClient *)self _setupXPCConnection];
  }

  xpcConnection = self->_xpcConnection;

  return xpcConnection;
}

- (id)requestOnDemandFaceCropsForFaceLocalIdentifiers:(id)identifiers error:(id *)error
{
  identifiersCopy = identifiers;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__17777;
  v20 = __Block_byref_object_dispose__17778;
  v21 = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy__17777;
  v14[4] = __Block_byref_object_dispose__17778;
  v15 = 0;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy__17777;
  v12[4] = __Block_byref_object_dispose__17778;
  v13 = 0;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __94__PLPhotoAnalysisServiceClient_Vision__requestOnDemandFaceCropsForFaceLocalIdentifiers_error___block_invoke;
  v11[3] = &unk_1E75773B8;
  v11[4] = v14;
  v7 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __94__PLPhotoAnalysisServiceClient_Vision__requestOnDemandFaceCropsForFaceLocalIdentifiers_error___block_invoke_2;
  v10[3] = &unk_1E75773E0;
  v10[4] = &v16;
  v10[5] = v12;
  [v7 requestOnDemandFaceCropsForFaceLocalIdentifiers:identifiersCopy context:requestContextDictionary reply:v10];

  v8 = v17[5];
  _Block_object_dispose(v12, 8);

  _Block_object_dispose(v14, 8);
  _Block_object_dispose(&v16, 8);

  return v8;
}

void __94__PLPhotoAnalysisServiceClient_Vision__requestOnDemandFaceCropsForFaceLocalIdentifiers_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (BOOL)rebuildPersonsWithOptions:(id)options error:(id *)error
{
  v31[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  dictionary = [requestContextDictionary mutableCopy];

  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  [dictionary addEntriesFromDictionary:optionsCopy];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__17777;
  v29 = __Block_byref_object_dispose__17778;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v9 = [optionsCopy objectForKeyedSubscript:@"personLocalIdentifier"];
  v10 = v9;
  if (v9)
  {
    v31[0] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  }

  else
  {
    v11 = 0;
  }

  v12 = dispatch_block_create(0, &__block_literal_global_153);
  libraryURL = [(PLPhotoAnalysisServiceClient *)self libraryURL];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __72__PLPhotoAnalysisServiceClient_Vision__rebuildPersonsWithOptions_error___block_invoke_3;
  v17[3] = &unk_1E7568490;
  v19 = &v21;
  v20 = &v25;
  v14 = v12;
  v18 = v14;
  [PLMediaAnalysisServiceRequestAdapter requestRebuildPersonsWithLocalIdentifiers:v11 photoLibraryURL:libraryURL progressHandler:&__block_literal_global_155 completionHandler:v17];

  dispatch_block_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
  v15 = *(v22 + 24);
  if (error && (v22[3] & 1) == 0)
  {
    *error = v26[5];
    v15 = *(v22 + 24);
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);

  return v15 & 1;
}

void __72__PLPhotoAnalysisServiceClient_Vision__rebuildPersonsWithOptions_error___block_invoke_3(void *a1, char a2, id obj)
{
  *(*(a1[5] + 8) + 24) = a2;
  objc_storeStrong((*(a1[6] + 8) + 40), obj);
  v5 = obj;
  (*(a1[4] + 16))();
}

- (id)faceCandidatesForKeyFaceForPersonsWithLocalIdentifiers:(id)identifiers error:(id *)error
{
  identifiersCopy = identifiers;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__17777;
  v27 = __Block_byref_object_dispose__17778;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__17777;
  v21 = __Block_byref_object_dispose__17778;
  v22 = 0;
  v7 = dispatch_block_create(0, &__block_literal_global_144_17784);
  libraryURL = [(PLPhotoAnalysisServiceClient *)self libraryURL];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __101__PLPhotoAnalysisServiceClient_Vision__faceCandidatesForKeyFaceForPersonsWithLocalIdentifiers_error___block_invoke_3;
  v13[3] = &unk_1E75684E0;
  v15 = &v17;
  v16 = &v23;
  v9 = v7;
  v14 = v9;
  [PLMediaAnalysisServiceRequestAdapter requestFaceCandidatesforKeyFaceForPersonsWithLocalIdentifiers:identifiersCopy photoLibraryURL:libraryURL progessHandler:&__block_literal_global_146 completionHandler:v13];

  dispatch_block_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  v10 = v24[5];
  if (error && !v10)
  {
    *error = v18[5];
    v10 = v24[5];
  }

  v11 = v10;

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v11;
}

void __101__PLPhotoAnalysisServiceClient_Vision__faceCandidatesForKeyFaceForPersonsWithLocalIdentifiers_error___block_invoke_3(void *a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(a1[5] + 8) + 40), a3);
  v9 = a3;
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  (*(a1[4] + 16))();
}

- (void)personPromoterAdvancedStatus:(id)status
{
  statusCopy = status;
  v5 = dispatch_block_create(0, &__block_literal_global_140);
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__17777;
  v22 = __Block_byref_object_dispose__17778;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__17777;
  v16 = __Block_byref_object_dispose__17778;
  v17 = 0;
  libraryURL = [(PLPhotoAnalysisServiceClient *)self libraryURL];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__PLPhotoAnalysisServiceClient_Vision__personPromoterAdvancedStatus___block_invoke_3;
  v8[3] = &unk_1E75684B8;
  v10 = &v18;
  v11 = &v12;
  v7 = v5;
  v9 = v7;
  [PLMediaAnalysisServiceRequestAdapter requestPersonPromoterStatusWithAdvancedFlag:1 photoLibraryURL:libraryURL progressHandler:&__block_literal_global_142 completionHandler:v8];

  dispatch_block_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  if (statusCopy)
  {
    statusCopy[2](statusCopy, v19[5], v13[5]);
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);
}

void __69__PLPhotoAnalysisServiceClient_Vision__personPromoterAdvancedStatus___block_invoke_3(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  (*(a1[4] + 16))();
}

- (void)personPromoterStatus:(id)status
{
  statusCopy = status;
  v5 = dispatch_block_create(0, &__block_literal_global_136_17788);
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__17777;
  v22 = __Block_byref_object_dispose__17778;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__17777;
  v16 = __Block_byref_object_dispose__17778;
  v17 = 0;
  libraryURL = [(PLPhotoAnalysisServiceClient *)self libraryURL];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__PLPhotoAnalysisServiceClient_Vision__personPromoterStatus___block_invoke_3;
  v8[3] = &unk_1E75684B8;
  v10 = &v18;
  v11 = &v12;
  v7 = v5;
  v9 = v7;
  [PLMediaAnalysisServiceRequestAdapter requestPersonPromoterStatusWithAdvancedFlag:0 photoLibraryURL:libraryURL progressHandler:&__block_literal_global_138 completionHandler:v8];

  dispatch_block_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  if (statusCopy)
  {
    statusCopy[2](statusCopy, v19[5], v13[5]);
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);
}

void __61__PLPhotoAnalysisServiceClient_Vision__personPromoterStatus___block_invoke_3(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  (*(a1[4] + 16))();
}

- (id)differencesBetweenClustersInClusterCacheAndLibrary:(id *)library
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__17777;
  v25 = __Block_byref_object_dispose__17778;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__17777;
  v19 = __Block_byref_object_dispose__17778;
  v20 = 0;
  v5 = dispatch_block_create(0, &__block_literal_global_131);
  libraryURL = [(PLPhotoAnalysisServiceClient *)self libraryURL];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __91__PLPhotoAnalysisServiceClient_Vision__differencesBetweenClustersInClusterCacheAndLibrary___block_invoke_3;
  v11[3] = &unk_1E75684B8;
  v13 = &v21;
  v14 = &v15;
  v7 = v5;
  v12 = v7;
  [PLMediaAnalysisServiceRequestAdapter requestClusterCacheValidationWithPhotoLibraryURL:libraryURL progressHandler:&__block_literal_global_133 completionHandler:v11];

  dispatch_block_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v8 = v22[5];
  if (library && !v8)
  {
    *library = v16[5];
    v8 = v22[5];
  }

  v9 = v8;

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

void __91__PLPhotoAnalysisServiceClient_Vision__differencesBetweenClustersInClusterCacheAndLibrary___block_invoke_3(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  (*(a1[4] + 16))();
}

- (BOOL)reclusterFacesWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__17777;
  v24 = __Block_byref_object_dispose__17778;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v7 = dispatch_block_create(0, &__block_literal_global_127);
  libraryURL = [(PLPhotoAnalysisServiceClient *)self libraryURL];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__PLPhotoAnalysisServiceClient_Vision__reclusterFacesWithOptions_error___block_invoke_3;
  v12[3] = &unk_1E7568490;
  v14 = &v16;
  v15 = &v20;
  v9 = v7;
  v13 = v9;
  [PLMediaAnalysisServiceRequestAdapter requestResetFaceClusteringStateWithPhotoLibraryURL:libraryURL progressHandler:&__block_literal_global_129 completionHandler:v12];

  dispatch_block_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  v10 = *(v17 + 24);
  if (error && (v17[3] & 1) == 0)
  {
    *error = v21[5];
    v10 = *(v17 + 24);
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);

  return v10 & 1;
}

void __72__PLPhotoAnalysisServiceClient_Vision__reclusterFacesWithOptions_error___block_invoke_3(void *a1, char a2, id obj)
{
  *(*(a1[5] + 8) + 24) = a2;
  objc_storeStrong((*(a1[6] + 8) + 40), obj);
  v5 = obj;
  (*(a1[4] + 16))();
}

- (BOOL)resetFaceClassificationModel:(id *)model
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__17777;
  v22 = __Block_byref_object_dispose__17778;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v5 = dispatch_block_create(0, &__block_literal_global_123);
  libraryURL = [(PLPhotoAnalysisServiceClient *)self libraryURL];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__PLPhotoAnalysisServiceClient_Vision__resetFaceClassificationModel___block_invoke_3;
  v10[3] = &unk_1E7568490;
  v12 = &v14;
  v13 = &v18;
  v7 = v5;
  v11 = v7;
  [PLMediaAnalysisServiceRequestAdapter requestResetFaceClassificationModelForPhotoLibraryURL:libraryURL progressHandler:&__block_literal_global_125 completionHandler:v10];

  dispatch_block_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v8 = *(v15 + 24);
  if (model && (v15[3] & 1) == 0)
  {
    *model = v19[5];
    v8 = *(v15 + 24);
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  return v8 & 1;
}

void __69__PLPhotoAnalysisServiceClient_Vision__resetFaceClassificationModel___block_invoke_3(void *a1, char a2, id obj)
{
  *(*(a1[5] + 8) + 24) = a2;
  objc_storeStrong((*(a1[6] + 8) + 40), obj);
  v5 = obj;
  (*(a1[4] + 16))();
}

- (BOOL)resetFaceClusteringState:(id *)state
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__17777;
  v22 = __Block_byref_object_dispose__17778;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v5 = dispatch_block_create(0, &__block_literal_global_119);
  libraryURL = [(PLPhotoAnalysisServiceClient *)self libraryURL];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__PLPhotoAnalysisServiceClient_Vision__resetFaceClusteringState___block_invoke_3;
  v10[3] = &unk_1E7568490;
  v12 = &v14;
  v13 = &v18;
  v7 = v5;
  v11 = v7;
  [PLMediaAnalysisServiceRequestAdapter requestResetFaceClusteringStateWithPhotoLibraryURL:libraryURL progressHandler:&__block_literal_global_121_17790 completionHandler:v10];

  dispatch_block_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v8 = *(v15 + 24);
  if (state && (v15[3] & 1) == 0)
  {
    *state = v19[5];
    v8 = *(v15 + 24);
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  return v8 & 1;
}

void __65__PLPhotoAnalysisServiceClient_Vision__resetFaceClusteringState___block_invoke_3(void *a1, char a2, id obj)
{
  *(*(a1[5] + 8) + 24) = a2;
  objc_storeStrong((*(a1[6] + 8) + 40), obj);
  v5 = obj;
  (*(a1[4] + 16))();
}

- (int64_t)updateKeyFacesOfPersonsWithLocalIdentifiers:(id)identifiers forceUpdate:(BOOL)update completion:(id)completion
{
  updateCopy = update;
  completionCopy = completion;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  identifiersCopy = identifiers;
  libraryURL = [(PLPhotoAnalysisServiceClient *)self libraryURL];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __107__PLPhotoAnalysisServiceClient_Vision__updateKeyFacesOfPersonsWithLocalIdentifiers_forceUpdate_completion___block_invoke_2;
  v14[3] = &unk_1E7568468;
  v15 = completionCopy;
  v16 = &v17;
  v11 = completionCopy;
  v12 = [PLMediaAnalysisServiceRequestAdapter requestUpdateKeyFacesOfPersonsWithLocalIdentifiers:identifiersCopy forceUpdate:updateCopy photoLibraryURL:libraryURL progessHandler:&__block_literal_global_115 completionHandler:v14];

  v18[3] = v12;
  _Block_object_dispose(&v17, 8);

  return v12;
}

- (int64_t)suggestedPersonsForPersonWithLocalIdentifier:(id)identifier toBeConfirmedPersonSuggestions:(id)suggestions toBeRejectedPersonSuggestions:(id)personSuggestions completion:(id)completion
{
  completionCopy = completion;
  personSuggestionsCopy = personSuggestions;
  suggestionsCopy = suggestions;
  identifierCopy = identifier;
  v15 = [suggestionsCopy valueForKey:@"suggestionDictionaryRepresentation"];
  v16 = [v15 count];
  v17 = [suggestionsCopy count];

  if (v16 != v17)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPhotoAnalysisServiceClient+Vision.m" lineNumber:90 description:@"dictionary representation failure for confirmed face suggestions"];
  }

  v18 = [personSuggestionsCopy valueForKey:@"suggestionDictionaryRepresentation"];
  v19 = [v18 count];
  v20 = [personSuggestionsCopy count];

  if (v19 != v20)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLPhotoAnalysisServiceClient+Vision.m" lineNumber:93 description:@"dictionary representation failure for rejected face suggestions"];
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  libraryURL = [(PLPhotoAnalysisServiceClient *)self libraryURL];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __157__PLPhotoAnalysisServiceClient_Vision__suggestedPersonsForPersonWithLocalIdentifier_toBeConfirmedPersonSuggestions_toBeRejectedPersonSuggestions_completion___block_invoke_2;
  v27[3] = &unk_1E7568440;
  v28 = completionCopy;
  v29 = &v30;
  v22 = completionCopy;
  v23 = [PLMediaAnalysisServiceRequestAdapter requestSuggestedPersonsForPersonWithLocalIdentifier:identifierCopy toBeConfirmedPersonSuggestions:v15 toBeRejectedPersonSuggestions:v18 photoLibraryURL:libraryURL progessHandler:&__block_literal_global_17795 completionHandler:v27];

  v31[3] = v23;
  _Block_object_dispose(&v30, 8);

  return v23;
}

void __157__PLPhotoAnalysisServiceClient_Vision__suggestedPersonsForPersonWithLocalIdentifier_toBeConfirmedPersonSuggestions_toBeRejectedPersonSuggestions_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          v12 = [PLPhotoAnalysisPersonSuggestion alloc];
          v13 = [(PLPhotoAnalysisPersonSuggestion *)v12 initWithSuggestionDictionary:v11, v14];
          if (v13)
          {
            [v5 addObject:v13];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (id)legacyService
{
  os_unfair_lock_lock(&self->_connectionLock);
  _xpcConnection = [(PLPhotoAnalysisServiceClient *)self _xpcConnection];
  v4 = self->_legacyService;
  os_unfair_lock_unlock(&self->_connectionLock);
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *v6 = 0;
    _os_log_fault_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "The Legacy Service to PAD is unexpectedly nil", v6, 2u);
  }

  return v4;
}

- (void)dispatchOnQueue:(id)queue blockWithoutBoost:(id)boost
{
  queueCopy = queue;
  v6 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_DETACHED, QOS_CLASS_BACKGROUND, 0, boost);
  dispatch_async(queueCopy, v6);
}

- (id)remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  legacyService = [(PLPhotoAnalysisServiceClient *)self legacyService];
  v6 = [legacyService remoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  legacyService = [(PLPhotoAnalysisServiceClient *)self legacyService];
  v6 = [legacyService synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (id)requestContextDictionary
{
  v2 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:self->_cachedRequestContextDictionary];
  atomic_fetch_add(requestContextDictionary_lastOperationId, 1uLL);
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
  [v2 setObject:v3 forKeyedSubscript:@"PHPhotoAnalysisOptionOperationIdKey"];

  return v2;
}

- (id)xpcConnection
{
  os_unfair_lock_lock(&self->_connectionLock);
  _xpcConnection = [(PLPhotoAnalysisServiceClient *)self _xpcConnection];
  os_unfair_lock_unlock(&self->_connectionLock);
  if (!_xpcConnection && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *v5 = 0;
    _os_log_fault_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "The XPC connection to PAD is unexpectedly nil", v5, 2u);
  }

  return _xpcConnection;
}

- (void)_setupServices
{
  v3 = self->_libraryURL;
  v4 = [PLPhotoAnalysisServiceClientSideService alloc];
  xpcConnection = self->_xpcConnection;
  legacyServiceInterface = self->_legacyServiceInterface;
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __46__PLPhotoAnalysisServiceClient__setupServices__block_invoke;
  v50[3] = &unk_1E7572350;
  v7 = v3;
  v51 = v7;
  v8 = [(PLPhotoAnalysisServiceClientSideService *)v4 initWithConnection:xpcConnection remoteInterface:legacyServiceInterface instantiationBlock:v50];
  legacyService = self->_legacyService;
  self->_legacyService = v8;

  v10 = [PLPhotoAnalysisServiceClientSideService alloc];
  v11 = self->_xpcConnection;
  photoLibraryServiceInterface = self->_photoLibraryServiceInterface;
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __46__PLPhotoAnalysisServiceClient__setupServices__block_invoke_2;
  v48[3] = &unk_1E7572350;
  v13 = v7;
  v49 = v13;
  v14 = [(PLPhotoAnalysisServiceClientSideService *)v10 initWithConnection:v11 remoteInterface:photoLibraryServiceInterface instantiationBlock:v48];
  photoLibraryService = self->_photoLibraryService;
  self->_photoLibraryService = v14;

  v16 = [PLPhotoAnalysisServiceClientSideService alloc];
  v17 = self->_xpcConnection;
  momentGraphServiceInterface = self->_momentGraphServiceInterface;
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __46__PLPhotoAnalysisServiceClient__setupServices__block_invoke_3;
  v46[3] = &unk_1E7572350;
  v19 = v13;
  v47 = v19;
  v20 = [(PLPhotoAnalysisServiceClientSideService *)v16 initWithConnection:v17 remoteInterface:momentGraphServiceInterface instantiationBlock:v46];
  momentGraphService = self->_momentGraphService;
  self->_momentGraphService = v20;

  v22 = [PLPhotoAnalysisServiceClientSideService alloc];
  v23 = self->_xpcConnection;
  testServiceInterface = self->_testServiceInterface;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __46__PLPhotoAnalysisServiceClient__setupServices__block_invoke_4;
  v44[3] = &unk_1E7572350;
  v25 = v19;
  v45 = v25;
  v26 = [(PLPhotoAnalysisServiceClientSideService *)v22 initWithConnection:v23 remoteInterface:testServiceInterface instantiationBlock:v44];
  testService = self->_testService;
  self->_testService = v26;

  v28 = [PLPhotoAnalysisServiceClientSideService alloc];
  v29 = self->_xpcConnection;
  executiveServiceInterface = self->_executiveServiceInterface;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __46__PLPhotoAnalysisServiceClient__setupServices__block_invoke_5;
  v42[3] = &unk_1E7572350;
  v31 = v25;
  v43 = v31;
  v32 = [(PLPhotoAnalysisServiceClientSideService *)v28 initWithConnection:v29 remoteInterface:executiveServiceInterface instantiationBlock:v42];
  executiveService = self->_executiveService;
  self->_executiveService = v32;

  v34 = [PLPhotoAnalysisServiceClientSideService alloc];
  v35 = self->_xpcConnection;
  wallpaperServiceInterface = self->_wallpaperServiceInterface;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __46__PLPhotoAnalysisServiceClient__setupServices__block_invoke_6;
  v40[3] = &unk_1E7572350;
  v41 = v31;
  v37 = v31;
  v38 = [(PLPhotoAnalysisServiceClientSideService *)v34 initWithConnection:v35 remoteInterface:wallpaperServiceInterface instantiationBlock:v40];
  wallpaperService = self->_wallpaperService;
  self->_wallpaperService = v38;
}

- (void)_setupServiceProviderInterface:(id)interface
{
  v4 = MEMORY[0x1E696B0D0];
  interfaceCopy = interface;
  v5 = [v4 interfaceWithProtocol:&unk_1F109F2A8];
  legacyServiceInterface = self->_legacyServiceInterface;
  self->_legacyServiceInterface = v5;

  [(PLPhotoAnalysisServiceClient *)self _setupLegacyServiceInterface:self->_legacyServiceInterface];
  [interfaceCopy setInterface:self->_legacyServiceInterface forSelector:sel_legacyStorytellingServiceAt_reply_ argumentIndex:0 ofReply:1];
  v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F109F308];
  photoLibraryServiceInterface = self->_photoLibraryServiceInterface;
  self->_photoLibraryServiceInterface = v7;

  [interfaceCopy setInterface:self->_photoLibraryServiceInterface forSelector:sel_photoLibraryServiceAt_reply_ argumentIndex:0 ofReply:1];
  v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F109F368];
  momentGraphServiceInterface = self->_momentGraphServiceInterface;
  self->_momentGraphServiceInterface = v9;

  v11 = MEMORY[0x1E695DFA8];
  v12 = [(NSXPCInterface *)self->_momentGraphServiceInterface classesForSelector:sel_requestAssetSearchKeywordsForAssetCollectionUUIDs_ofType_operationID_reply_ argumentIndex:0 ofReply:1];
  v13 = [v11 setWithSet:v12];

  [v13 addObject:objc_opt_class()];
  [(NSXPCInterface *)self->_momentGraphServiceInterface setClasses:v13 forSelector:sel_requestAssetSearchKeywordsForAssetCollectionUUIDs_ofType_operationID_reply_ argumentIndex:0 ofReply:1];

  [interfaceCopy setInterface:self->_momentGraphServiceInterface forSelector:sel_momentGraphServiceAt_reply_ argumentIndex:0 ofReply:1];
  v14 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F109F3C8];
  testServiceInterface = self->_testServiceInterface;
  self->_testServiceInterface = v14;

  [interfaceCopy setInterface:self->_testServiceInterface forSelector:sel_testServiceAt_reply_ argumentIndex:0 ofReply:1];
  v16 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F109F428];
  executiveServiceInterface = self->_executiveServiceInterface;
  self->_executiveServiceInterface = v16;

  [interfaceCopy setInterface:self->_executiveServiceInterface forSelector:sel_executiveServiceAt_reply_ argumentIndex:0 ofReply:1];
  v18 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F109F488];
  wallpaperServiceInterface = self->_wallpaperServiceInterface;
  self->_wallpaperServiceInterface = v18;

  [interfaceCopy setInterface:self->_wallpaperServiceInterface forSelector:sel_wallpaperServiceAt_reply_ argumentIndex:0 ofReply:1];
}

- (void)_setupLegacyServiceInterface:(id)interface
{
  v33[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFA8];
  interfaceCopy = interface;
  v5 = [interfaceCopy classesForSelector:sel_cancelOperationsWithIdentifiers_context_reply_ argumentIndex:0 ofReply:1];
  v6 = [v3 setWithSet:v5];

  v33[0] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  [v6 addObjectsFromArray:v7];

  [interfaceCopy setClasses:v6 forSelector:sel_cancelOperationsWithIdentifiers_context_reply_ argumentIndex:0 ofReply:1];
  v8 = MEMORY[0x1E695DFA8];
  v9 = [interfaceCopy classesForSelector:sel_requestAvailableSuggestionTypeInfosWithOptions_context_reply_ argumentIndex:0 ofReply:1];
  v10 = [v8 setWithSet:v9];

  v32[0] = objc_opt_class();
  v32[1] = objc_opt_class();
  v32[2] = objc_opt_class();
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:3];
  [v10 addObjectsFromArray:v11];

  [interfaceCopy setClasses:v10 forSelector:sel_requestAvailableSuggestionTypeInfosWithOptions_context_reply_ argumentIndex:0 ofReply:1];
  v12 = MEMORY[0x1E695DFA8];
  v13 = [interfaceCopy classesForSelector:sel_requestSuggestionInfosWithOptions_context_reply_ argumentIndex:0 ofReply:1];
  v14 = [v12 setWithSet:v13];

  v31[0] = objc_opt_class();
  v31[1] = objc_opt_class();
  v31[2] = objc_opt_class();
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:3];
  [v14 addObjectsFromArray:v15];

  [interfaceCopy setClasses:v14 forSelector:sel_requestSuggestionInfosWithOptions_context_reply_ argumentIndex:0 ofReply:1];
  v16 = MEMORY[0x1E695DFA8];
  v17 = [interfaceCopy classesForSelector:sel_requestGraphInferencesSummaryWithDateInterval_context_reply_ argumentIndex:0 ofReply:1];
  v18 = [v16 setWithSet:v17];

  v30[0] = objc_opt_class();
  v30[1] = objc_opt_class();
  v30[2] = objc_opt_class();
  v30[3] = objc_opt_class();
  v30[4] = objc_opt_class();
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:5];
  [v18 addObjectsFromArray:v19];

  [interfaceCopy setClasses:v18 forSelector:sel_requestGraphInferencesSummaryWithDateInterval_context_reply_ argumentIndex:0 ofReply:1];
  v20 = MEMORY[0x1E695DFA8];
  v21 = [interfaceCopy classesForSelector:sel_requestGraphInferencesSummaryWithMomentLocalIdentifiers_context_reply_ argumentIndex:0 ofReply:1];
  v22 = [v20 setWithSet:v21];

  v29[0] = objc_opt_class();
  v29[1] = objc_opt_class();
  v29[2] = objc_opt_class();
  v29[3] = objc_opt_class();
  v29[4] = objc_opt_class();
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:5];
  [v22 addObjectsFromArray:v23];

  [interfaceCopy setClasses:v22 forSelector:sel_requestGraphInferencesSummaryWithMomentLocalIdentifiers_context_reply_ argumentIndex:0 ofReply:1];
  v24 = MEMORY[0x1E695DFA8];
  v25 = [interfaceCopy classesForSelector:sel_requestGraphMomentLocalIdentifiersWithDateInterval_context_reply_ argumentIndex:0 ofReply:1];
  v26 = [v24 setWithSet:v25];

  v28[0] = objc_opt_class();
  v28[1] = objc_opt_class();
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  [v26 addObjectsFromArray:v27];

  [interfaceCopy setClasses:v26 forSelector:sel_requestGraphMomentLocalIdentifiersWithDateInterval_context_reply_ argumentIndex:0 ofReply:1];
}

- (void)_setupXPCConnection
{
  os_unfair_lock_assert_owner(&self->_connectionLock);
  v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.photoanalysisd" options:0];
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = v3;

  v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F109F248];
  [(PLPhotoAnalysisServiceClient *)self _setupServiceProviderInterface:v5];
  [(NSXPCConnection *)self->_xpcConnection setRemoteObjectInterface:v5];
  [(PLPhotoAnalysisServiceClient *)self _setupServices];
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__PLPhotoAnalysisServiceClient__setupXPCConnection__block_invoke;
  v8[3] = &unk_1E75788C0;
  objc_copyWeak(&v9, &location);
  [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:v8];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__PLPhotoAnalysisServiceClient__setupXPCConnection__block_invoke_85;
  v6[3] = &unk_1E75788C0;
  objc_copyWeak(&v7, &location);
  [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:v6];
  [(NSXPCConnection *)self->_xpcConnection activate];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __51__PLPhotoAnalysisServiceClient__setupXPCConnection__block_invoke(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Photo analysis client XPC connection invalidated", v3, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resetServicesIncludingConnection:1];
}

void __51__PLPhotoAnalysisServiceClient__setupXPCConnection__block_invoke_85(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Photo analysis client XPC connection interrupted", v3, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resetServicesIncludingConnection:0];
}

- (void)_resetServicesIncludingConnection:(BOOL)connection
{
  connectionCopy = connection;
  os_unfair_lock_lock(&self->_connectionLock);
  if (connectionCopy)
  {
    xpcConnection = self->_xpcConnection;
    self->_xpcConnection = 0;
  }

  legacyService = self->_legacyService;
  self->_legacyService = 0;

  photoLibraryService = self->_photoLibraryService;
  self->_photoLibraryService = 0;

  momentGraphService = self->_momentGraphService;
  self->_momentGraphService = 0;

  testService = self->_testService;
  self->_testService = 0;

  executiveService = self->_executiveService;
  self->_executiveService = 0;

  wallpaperService = self->_wallpaperService;
  self->_wallpaperService = 0;

  os_unfair_lock_unlock(&self->_connectionLock);
}

- (void)writeQALog:(id)log
{
  logCopy = log;
  v5 = [(PLPhotoAnalysisServiceClient *)self remoteObjectProxyWithErrorHandler:&__block_literal_global_79642];
  [v5 writeQALog:logCopy];
}

- (void)notifyLibraryAvailableAtURLForMediaanalysisd:(id)mediaanalysisd
{
  v9 = *MEMORY[0x1E69E9840];
  mediaanalysisdCopy = mediaanalysisd;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = mediaanalysisdCopy;
    _os_log_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Notifying mediaanalysisd of photo library available at %@", &v7, 0xCu);
  }

  v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.mediaanalysisd.analysis" options:0];
  v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1083E38];
  [v4 setRemoteObjectInterface:v5];

  [v4 resume];
  _unboostingRemoteObjectProxy = [v4 _unboostingRemoteObjectProxy];
  [_unboostingRemoteObjectProxy notifyLibraryAvailableAtURL:mediaanalysisdCopy];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    LOWORD(v7) = 0;
    _os_log_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Invalidating temporary connection to mediaanalysisd", &v7, 2u);
  }

  [v4 invalidate];
}

- (void)notifyLibraryAvailableAtURLForPhotoanalysisd:(id)photoanalysisd
{
  photoanalysisdCopy = photoanalysisd;
  v10 = photoanalysisdCopy;
  if (!photoanalysisdCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPhotoAnalysisServiceClient.m" lineNumber:131 description:{@"Invalid parameter not satisfying: %@", @"libraryURL"}];

    photoanalysisdCopy = 0;
  }

  if (([photoanalysisdCopy isEqual:self->_libraryURL] & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLPhotoAnalysisServiceClient.m" lineNumber:132 description:{@"Invalid parameter not satisfying: %@", @"[libraryURL isEqual:_libraryURL]"}];
  }

  xpcConnection = [(PLPhotoAnalysisServiceClient *)self xpcConnection];
  _unboostingRemoteObjectProxy = [xpcConnection _unboostingRemoteObjectProxy];
  [_unboostingRemoteObjectProxy notifyLibraryAvailableAtURL:v10];
}

- (void)cancelOperationsWithIdentifiers:(id)identifiers reply:(id)reply
{
  identifiersCopy = identifiers;
  replyCopy = reply;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70__PLPhotoAnalysisServiceClient_cancelOperationsWithIdentifiers_reply___block_invoke;
  v15[3] = &unk_1E7576050;
  v8 = replyCopy;
  v16 = identifiersCopy;
  v17 = v8;
  v9 = identifiersCopy;
  v10 = [(PLPhotoAnalysisServiceClient *)self remoteObjectProxyWithErrorHandler:v15];
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__PLPhotoAnalysisServiceClient_cancelOperationsWithIdentifiers_reply___block_invoke_2;
  v13[3] = &unk_1E7572328;
  v14 = v8;
  v12 = v8;
  [v10 cancelOperationsWithIdentifiers:v9 context:requestContextDictionary reply:v13];
}

void __70__PLPhotoAnalysisServiceClient_cancelOperationsWithIdentifiers_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 40))
  {
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

          [v4 setObject:v3 forKey:{*(*(&v10 + 1) + 8 * v9++), v10}];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __70__PLPhotoAnalysisServiceClient_cancelOperationsWithIdentifiers_reply___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)dumpAnalysisStatusError:(id *)error
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__79662;
  v21 = __Block_byref_object_dispose__79663;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__79662;
  v15 = __Block_byref_object_dispose__79663;
  v16 = 0;
  executiveService = [(PLPhotoAnalysisServiceClient *)self executiveService];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__PLPhotoAnalysisServiceClient_dumpAnalysisStatusError___block_invoke;
  v10[3] = &unk_1E75773B8;
  v10[4] = &v17;
  v5 = [executiveService synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__PLPhotoAnalysisServiceClient_dumpAnalysisStatusError___block_invoke_2;
  v9[3] = &unk_1E75773E0;
  v9[4] = &v17;
  v9[5] = &v11;
  [v5 requestAnalysisStatusWithReply:v9];

  if (error)
  {
    v6 = v18[5];
    if (v6)
    {
      *error = v6;
    }
  }

  v7 = v12[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);

  return v7;
}

void __56__PLPhotoAnalysisServiceClient_dumpAnalysisStatusError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (int)photoanalysisdPid
{
  xpcConnection = [(PLPhotoAnalysisServiceClient *)self xpcConnection];
  processIdentifier = [xpcConnection processIdentifier];

  return processIdentifier;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v3.receiver = self;
  v3.super_class = PLPhotoAnalysisServiceClient;
  [(PLPhotoAnalysisServiceClient *)&v3 dealloc];
}

- (PLPhotoAnalysisServiceClient)initWithLibraryURL:(id)l
{
  v21[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPhotoAnalysisServiceClient.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"libraryURL"}];
  }

  path = [lCopy path];
  v8 = [path hasPrefix:@"/var/mobile/Media/PhotoData"];

  if (v8)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLPhotoAnalysisServiceClient.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"![libraryURL.path hasPrefix:@/var/mobile/Media/PhotoData]"}];

    if (!lCopy)
    {
      goto LABEL_8;
    }
  }

  else if (!lCopy)
  {
LABEL_8:

    self = 0;
    goto LABEL_9;
  }

  v19.receiver = self;
  v19.super_class = PLPhotoAnalysisServiceClient;
  v9 = [(PLPhotoAnalysisServiceClient *)&v19 init];
  self = v9;
  if (!v9)
  {
    goto LABEL_8;
  }

  objc_storeStrong(&v9->_libraryURL, l);
  v20 = @"PHPhotoAnalysisOptionPhotoLibraryURLKey";
  absoluteString = [(NSURL *)self->_libraryURL absoluteString];
  v21[0] = absoluteString;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  cachedRequestContextDictionary = self->_cachedRequestContextDictionary;
  self->_cachedRequestContextDictionary = v11;

  v13 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v14 = dispatch_queue_create("com.apple.photoanalysis.PLPhotoAnalysisServiceClient.backgroundQueue", v13);
  backgroundQueue = self->_backgroundQueue;
  self->_backgroundQueue = v14;

  self->_connectionLock._os_unfair_lock_opaque = 0;
LABEL_9:

  return self;
}

- (PLPhotoAnalysisServiceClient)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PLPhotoAnalysisServiceClient.m" lineNumber:61 description:@"Invalid initialization"];

  return 0;
}

- (id)wallpaperService
{
  os_unfair_lock_lock(&self->_connectionLock);
  _xpcConnection = [(PLPhotoAnalysisServiceClient *)self _xpcConnection];
  v4 = self->_wallpaperService;
  os_unfair_lock_unlock(&self->_connectionLock);

  return v4;
}

- (id)executiveService
{
  os_unfair_lock_lock(&self->_connectionLock);
  _xpcConnection = [(PLPhotoAnalysisServiceClient *)self _xpcConnection];
  v4 = self->_executiveService;
  os_unfair_lock_unlock(&self->_connectionLock);

  return v4;
}

- (id)testService
{
  os_unfair_lock_lock(&self->_connectionLock);
  _xpcConnection = [(PLPhotoAnalysisServiceClient *)self _xpcConnection];
  v4 = self->_testService;
  os_unfair_lock_unlock(&self->_connectionLock);

  return v4;
}

- (id)photoLibraryService
{
  os_unfair_lock_lock(&self->_connectionLock);
  _xpcConnection = [(PLPhotoAnalysisServiceClient *)self _xpcConnection];
  v4 = self->_photoLibraryService;
  os_unfair_lock_unlock(&self->_connectionLock);

  return v4;
}

- (void)cacheCPAnalyticsPropertiesWithReply:(id)reply
{
  replyCopy = reply;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__PLPhotoAnalysisServiceClient_Job__cacheCPAnalyticsPropertiesWithReply___block_invoke;
  v11[3] = &unk_1E7577430;
  v6 = replyCopy;
  v12 = v6;
  v7 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__PLPhotoAnalysisServiceClient_Job__cacheCPAnalyticsPropertiesWithReply___block_invoke_2;
  v9[3] = &unk_1E75774A8;
  v10 = v6;
  v8 = v6;
  [v7 cacheCPAnalyticsPropertiesWithContext:requestContextDictionary reply:v9];
}

uint64_t __73__PLPhotoAnalysisServiceClient_Job__cacheCPAnalyticsPropertiesWithReply___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

uint64_t __73__PLPhotoAnalysisServiceClient_Job__cacheCPAnalyticsPropertiesWithReply___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)recordFeatureUsageFromCounts:(id)counts reply:(id)reply
{
  replyCopy = reply;
  countsCopy = counts;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72__PLPhotoAnalysisServiceClient_Job__recordFeatureUsageFromCounts_reply___block_invoke;
  v14[3] = &unk_1E7577430;
  v9 = replyCopy;
  v15 = v9;
  v10 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__PLPhotoAnalysisServiceClient_Job__recordFeatureUsageFromCounts_reply___block_invoke_2;
  v12[3] = &unk_1E75774A8;
  v13 = v9;
  v11 = v9;
  [v10 recordFeatureUsageFromCounts:countsCopy context:requestContextDictionary reply:v12];
}

uint64_t __72__PLPhotoAnalysisServiceClient_Job__recordFeatureUsageFromCounts_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

uint64_t __72__PLPhotoAnalysisServiceClient_Job__recordFeatureUsageFromCounts_reply___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)reloadAlbumWidgetTimelineWithReply:(id)reply
{
  replyCopy = reply;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__PLPhotoAnalysisServiceClient_Job__reloadAlbumWidgetTimelineWithReply___block_invoke;
  v11[3] = &unk_1E7577430;
  v6 = replyCopy;
  v12 = v6;
  v7 = [(PLPhotoAnalysisServiceClient *)self remoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__PLPhotoAnalysisServiceClient_Job__reloadAlbumWidgetTimelineWithReply___block_invoke_2;
  v9[3] = &unk_1E75774A8;
  v10 = v6;
  v8 = v6;
  [v7 reloadAlbumWidgetTimelineWithContext:requestContextDictionary reply:v9];
}

uint64_t __72__PLPhotoAnalysisServiceClient_Job__reloadAlbumWidgetTimelineWithReply___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

uint64_t __72__PLPhotoAnalysisServiceClient_Job__reloadAlbumWidgetTimelineWithReply___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)reloadForYouWidgetTimelineWithReply:(id)reply
{
  replyCopy = reply;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__PLPhotoAnalysisServiceClient_Job__reloadForYouWidgetTimelineWithReply___block_invoke;
  v11[3] = &unk_1E7577430;
  v6 = replyCopy;
  v12 = v6;
  v7 = [(PLPhotoAnalysisServiceClient *)self remoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__PLPhotoAnalysisServiceClient_Job__reloadForYouWidgetTimelineWithReply___block_invoke_2;
  v9[3] = &unk_1E75774A8;
  v10 = v6;
  v8 = v6;
  [v7 reloadForYouWidgetTimelineWithContext:requestContextDictionary reply:v9];
}

uint64_t __73__PLPhotoAnalysisServiceClient_Job__reloadForYouWidgetTimelineWithReply___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

uint64_t __73__PLPhotoAnalysisServiceClient_Job__reloadForYouWidgetTimelineWithReply___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)warmupLegacyStorytellingWorkerForDuration:(double)duration operationID:(id)d reply:(id)reply
{
  replyCopy = reply;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __99__PLPhotoAnalysisServiceClient_Graph__warmupLegacyStorytellingWorkerForDuration_operationID_reply___block_invoke;
  v15[3] = &unk_1E7577430;
  v9 = replyCopy;
  v16 = v9;
  dCopy = d;
  v11 = [(PLPhotoAnalysisServiceClient *)self remoteObjectProxyWithErrorHandler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __99__PLPhotoAnalysisServiceClient_Graph__warmupLegacyStorytellingWorkerForDuration_operationID_reply___block_invoke_2;
  v13[3] = &unk_1E7577430;
  v14 = v9;
  v12 = v9;
  [v11 warmupLegacyStorytellingWorkerForDuration:dCopy operationID:v13 reply:duration];
}

uint64_t __99__PLPhotoAnalysisServiceClient_Graph__warmupLegacyStorytellingWorkerForDuration_operationID_reply___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __99__PLPhotoAnalysisServiceClient_Graph__warmupLegacyStorytellingWorkerForDuration_operationID_reply___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)requestGraphModelResultWithOptions:(id)options progress:(id)progress reply:(id)reply
{
  replyCopy = reply;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __89__PLPhotoAnalysisServiceClient_Graph__requestGraphModelResultWithOptions_progress_reply___block_invoke;
  v20[3] = &unk_1E7577430;
  v9 = replyCopy;
  v21 = v9;
  progressCopy = progress;
  optionsCopy = options;
  v12 = [(PLPhotoAnalysisServiceClient *)self remoteObjectProxyWithErrorHandler:v20];
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  [progressCopy becomeCurrentWithPendingUnitCount:1];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __89__PLPhotoAnalysisServiceClient_Graph__requestGraphModelResultWithOptions_progress_reply___block_invoke_2;
  v18 = &unk_1E7577458;
  v19 = v9;
  v14 = v9;
  [v12 requestGraphModelResultWithOptions:optionsCopy context:requestContextDictionary reply:&v15];

  [progressCopy resignCurrent];
}

- (void)runPerformanceTest:(id)test options:(id)options reply:(id)reply
{
  replyCopy = reply;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __72__PLPhotoAnalysisServiceClient_Graph__runPerformanceTest_options_reply___block_invoke;
  v17[3] = &unk_1E7577430;
  v9 = replyCopy;
  v18 = v9;
  optionsCopy = options;
  testCopy = test;
  v12 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v17];
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__PLPhotoAnalysisServiceClient_Graph__runPerformanceTest_options_reply___block_invoke_2;
  v15[3] = &unk_1E75774A8;
  v16 = v9;
  v14 = v9;
  [v12 runPerformanceTest:testCopy options:optionsCopy context:requestContextDictionary reply:v15];
}

uint64_t __72__PLPhotoAnalysisServiceClient_Graph__runPerformanceTest_options_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

uint64_t __72__PLPhotoAnalysisServiceClient_Graph__runPerformanceTest_options_reply___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)requestEnergyStatusWithError:(id *)error
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__111939;
  v23 = __Block_byref_object_dispose__111940;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__111939;
  v17 = __Block_byref_object_dispose__111940;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__PLPhotoAnalysisServiceClient_Graph__requestEnergyStatusWithError___block_invoke;
  v12[3] = &unk_1E75773B8;
  v12[4] = &v19;
  v5 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v12];
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__PLPhotoAnalysisServiceClient_Graph__requestEnergyStatusWithError___block_invoke_2;
  v11[3] = &unk_1E7577790;
  v11[4] = &v13;
  [v5 requestEnergyStatusWithContext:requestContextDictionary reply:v11];

  v7 = v20[5];
  v8 = v7;
  if (v7 && error)
  {
    v8 = v8;
    *error = v8;
  }

  v9 = v14[5];
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v9;
}

- (void)exportWallpaperForAssets:(id)assets options:(id)options reply:(id)reply
{
  replyCopy = reply;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __78__PLPhotoAnalysisServiceClient_Graph__exportWallpaperForAssets_options_reply___block_invoke;
  v17[3] = &unk_1E7577430;
  v9 = replyCopy;
  v18 = v9;
  optionsCopy = options;
  assetsCopy = assets;
  v12 = [(PLPhotoAnalysisServiceClient *)self remoteObjectProxyWithErrorHandler:v17];
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __78__PLPhotoAnalysisServiceClient_Graph__exportWallpaperForAssets_options_reply___block_invoke_2;
  v15[3] = &unk_1E75774A8;
  v16 = v9;
  v14 = v9;
  [v12 exportWallpaperForAssets:assetsCopy options:optionsCopy context:requestContextDictionary reply:v15];
}

uint64_t __78__PLPhotoAnalysisServiceClient_Graph__exportWallpaperForAssets_options_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

uint64_t __78__PLPhotoAnalysisServiceClient_Graph__exportWallpaperForAssets_options_reply___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)requestWallpaperProperties:(id)properties options:(id)options reply:(id)reply
{
  replyCopy = reply;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __80__PLPhotoAnalysisServiceClient_Graph__requestWallpaperProperties_options_reply___block_invoke;
  v17[3] = &unk_1E7577430;
  v9 = replyCopy;
  v18 = v9;
  optionsCopy = options;
  propertiesCopy = properties;
  v12 = [(PLPhotoAnalysisServiceClient *)self remoteObjectProxyWithErrorHandler:v17];
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __80__PLPhotoAnalysisServiceClient_Graph__requestWallpaperProperties_options_reply___block_invoke_2;
  v15[3] = &unk_1E7577458;
  v16 = v9;
  v14 = v9;
  [v12 requestWallpaperPropertiesForAssets:propertiesCopy options:optionsCopy context:requestContextDictionary reply:v15];
}

uint64_t __80__PLPhotoAnalysisServiceClient_Graph__requestWallpaperProperties_options_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

uint64_t __80__PLPhotoAnalysisServiceClient_Graph__requestWallpaperProperties_options_reply___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)requestPeopleForWallpaperSuggestionsWithOptions:(id)options reply:(id)reply
{
  replyCopy = reply;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __93__PLPhotoAnalysisServiceClient_Graph__requestPeopleForWallpaperSuggestionsWithOptions_reply___block_invoke;
  v14[3] = &unk_1E7577430;
  v7 = replyCopy;
  v15 = v7;
  optionsCopy = options;
  v9 = [(PLPhotoAnalysisServiceClient *)self remoteObjectProxyWithErrorHandler:v14];
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __93__PLPhotoAnalysisServiceClient_Graph__requestPeopleForWallpaperSuggestionsWithOptions_reply___block_invoke_2;
  v12[3] = &unk_1E7577458;
  v13 = v7;
  v11 = v7;
  [v9 requestPeopleForWallpaperSuggestionsWithOptions:optionsCopy context:requestContextDictionary reply:v12];
}

uint64_t __93__PLPhotoAnalysisServiceClient_Graph__requestPeopleForWallpaperSuggestionsWithOptions_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

uint64_t __93__PLPhotoAnalysisServiceClient_Graph__requestPeopleForWallpaperSuggestionsWithOptions_reply___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)reloadWallpaperSuggestions:(id)suggestions reply:(id)reply
{
  replyCopy = reply;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72__PLPhotoAnalysisServiceClient_Graph__reloadWallpaperSuggestions_reply___block_invoke;
  v14[3] = &unk_1E7577430;
  v7 = replyCopy;
  v15 = v7;
  suggestionsCopy = suggestions;
  v9 = [(PLPhotoAnalysisServiceClient *)self remoteObjectProxyWithErrorHandler:v14];
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__PLPhotoAnalysisServiceClient_Graph__reloadWallpaperSuggestions_reply___block_invoke_2;
  v12[3] = &unk_1E75774A8;
  v13 = v7;
  v11 = v7;
  [v9 reloadWallpaperSuggestionsWithSuggestionUUIDs:suggestionsCopy context:requestContextDictionary reply:v12];
}

uint64_t __72__PLPhotoAnalysisServiceClient_Graph__reloadWallpaperSuggestions_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

uint64_t __72__PLPhotoAnalysisServiceClient_Graph__reloadWallpaperSuggestions_reply___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)requestNightlySuggestionsForPosterConfiguration:(id)configuration atDate:(id)date error:(id *)error
{
  configurationCopy = configuration;
  dateCopy = date;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__111939;
  v33 = __Block_byref_object_dispose__111940;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__111939;
  v27 = __Block_byref_object_dispose__111940;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__111939;
  v21 = __Block_byref_object_dispose__111940;
  v22 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __100__PLPhotoAnalysisServiceClient_Graph__requestNightlySuggestionsForPosterConfiguration_atDate_error___block_invoke;
  v16[3] = &unk_1E75773B8;
  v16[4] = &v29;
  v10 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v16];
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __100__PLPhotoAnalysisServiceClient_Graph__requestNightlySuggestionsForPosterConfiguration_atDate_error___block_invoke_2;
  v15[3] = &unk_1E75773E0;
  v15[4] = &v17;
  v15[5] = &v23;
  [v10 requestNightlySuggestionsForPosterConfiguration:configurationCopy atDate:dateCopy context:requestContextDictionary reply:v15];

  if (error)
  {
    v12 = v30[5];
    if (!v12)
    {
      v12 = v24[5];
    }

    *error = v12;
  }

  v13 = v18[5];
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v13;
}

void __100__PLPhotoAnalysisServiceClient_Graph__requestNightlySuggestionsForPosterConfiguration_atDate_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (void)requestReprocessSuggestionsOnLibraryScopeRulesChangeWithReply:(id)reply
{
  replyCopy = reply;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __101__PLPhotoAnalysisServiceClient_Graph__requestReprocessSuggestionsOnLibraryScopeRulesChangeWithReply___block_invoke;
  v11[3] = &unk_1E7577430;
  v5 = replyCopy;
  v12 = v5;
  v6 = [(PLPhotoAnalysisServiceClient *)self remoteObjectProxyWithErrorHandler:v11];
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __101__PLPhotoAnalysisServiceClient_Graph__requestReprocessSuggestionsOnLibraryScopeRulesChangeWithReply___block_invoke_2;
  v9[3] = &unk_1E75774A8;
  v10 = v5;
  v8 = v5;
  [v6 requestReprocessSuggestionsOnLibraryScopeRulesChangeWithContext:requestContextDictionary reply:v9];
}

uint64_t __101__PLPhotoAnalysisServiceClient_Graph__requestReprocessSuggestionsOnLibraryScopeRulesChangeWithReply___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

uint64_t __101__PLPhotoAnalysisServiceClient_Graph__requestReprocessSuggestionsOnLibraryScopeRulesChangeWithReply___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)asyncRequestCameraSmartSharingProcessingForLibraryScopeWithUUID:(id)d withOptions:(id)options reply:(id)reply
{
  replyCopy = reply;
  optionsCopy = options;
  dCopy = d;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __121__PLPhotoAnalysisServiceClient_Graph__asyncRequestCameraSmartSharingProcessingForLibraryScopeWithUUID_withOptions_reply___block_invoke;
  v17[3] = &unk_1E7577430;
  v12 = replyCopy;
  v18 = v12;
  v13 = [(PLPhotoAnalysisServiceClient *)self remoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __121__PLPhotoAnalysisServiceClient_Graph__asyncRequestCameraSmartSharingProcessingForLibraryScopeWithUUID_withOptions_reply___block_invoke_2;
  v15[3] = &unk_1E7577458;
  v16 = v12;
  v14 = v12;
  [v13 requestCameraSmartSharingProcessingForLibraryScopeWithUUID:dCopy withOptions:optionsCopy context:requestContextDictionary reply:v15];
}

uint64_t __121__PLPhotoAnalysisServiceClient_Graph__asyncRequestCameraSmartSharingProcessingForLibraryScopeWithUUID_withOptions_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

uint64_t __121__PLPhotoAnalysisServiceClient_Graph__asyncRequestCameraSmartSharingProcessingForLibraryScopeWithUUID_withOptions_reply___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)requestCameraSmartSharingProcessingForLibraryScopeWithUUID:(id)d withOptions:(id)options error:(id *)error
{
  dCopy = d;
  optionsCopy = options;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__111939;
  v33 = __Block_byref_object_dispose__111940;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__111939;
  v27 = __Block_byref_object_dispose__111940;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__111939;
  v21 = __Block_byref_object_dispose__111940;
  v22 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __116__PLPhotoAnalysisServiceClient_Graph__requestCameraSmartSharingProcessingForLibraryScopeWithUUID_withOptions_error___block_invoke;
  v16[3] = &unk_1E75773B8;
  v16[4] = &v29;
  v10 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v16];
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __116__PLPhotoAnalysisServiceClient_Graph__requestCameraSmartSharingProcessingForLibraryScopeWithUUID_withOptions_error___block_invoke_2;
  v15[3] = &unk_1E75773E0;
  v15[4] = &v17;
  v15[5] = &v23;
  [v10 requestCameraSmartSharingProcessingForLibraryScopeWithUUID:dCopy withOptions:optionsCopy context:requestContextDictionary reply:v15];

  if (error)
  {
    v12 = v30[5];
    if (!v12)
    {
      v12 = v24[5];
    }

    *error = v12;
  }

  v13 = v18[5];
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v13;
}

void __116__PLPhotoAnalysisServiceClient_Graph__requestCameraSmartSharingProcessingForLibraryScopeWithUUID_withOptions_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (BOOL)requestStartSharedLibrarySuggestionResultWithError:(id *)error
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__111939;
  v26 = __Block_byref_object_dispose__111940;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__111939;
  v20 = __Block_byref_object_dispose__111940;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __90__PLPhotoAnalysisServiceClient_Graph__requestStartSharedLibrarySuggestionResultWithError___block_invoke;
  v11[3] = &unk_1E75773B8;
  v11[4] = &v22;
  v5 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v11];
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __90__PLPhotoAnalysisServiceClient_Graph__requestStartSharedLibrarySuggestionResultWithError___block_invoke_2;
  v10[3] = &unk_1E7577598;
  v10[4] = &v16;
  v10[5] = &v12;
  [v5 requestStartSharedLibrarySuggestionResultWithContext:requestContextDictionary reply:v10];

  if (error)
  {
    v7 = v23[5];
    if (!v7)
    {
      v7 = v17[5];
    }

    *error = v7;
  }

  v8 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
  return v8;
}

void __90__PLPhotoAnalysisServiceClient_Graph__requestStartSharedLibrarySuggestionResultWithError___block_invoke_2(uint64_t a1, char a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (id)requestSuggestedMomentLocalIdentifiersForPersonLocalIdentifiers:(id)identifiers withOptions:(id)options error:(id *)error
{
  identifiersCopy = identifiers;
  optionsCopy = options;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__111939;
  v33 = __Block_byref_object_dispose__111940;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__111939;
  v27 = __Block_byref_object_dispose__111940;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__111939;
  v21 = __Block_byref_object_dispose__111940;
  v22 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __121__PLPhotoAnalysisServiceClient_Graph__requestSuggestedMomentLocalIdentifiersForPersonLocalIdentifiers_withOptions_error___block_invoke;
  v16[3] = &unk_1E75773B8;
  v16[4] = &v29;
  v10 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v16];
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __121__PLPhotoAnalysisServiceClient_Graph__requestSuggestedMomentLocalIdentifiersForPersonLocalIdentifiers_withOptions_error___block_invoke_2;
  v15[3] = &unk_1E7577408;
  v15[4] = &v17;
  v15[5] = &v23;
  [v10 requestSuggestedMomentLocalIdentifiersForPersonLocalIdentifiers:identifiersCopy withOptions:optionsCopy context:requestContextDictionary reply:v15];

  if (error)
  {
    v12 = v30[5];
    if (!v12)
    {
      v12 = v24[5];
    }

    *error = v12;
  }

  v13 = v18[5];
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v13;
}

void __121__PLPhotoAnalysisServiceClient_Graph__requestSuggestedMomentLocalIdentifiersForPersonLocalIdentifiers_withOptions_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (BOOL)requestGenerateDefaultRulesForLibraryScopeWithLocalIdentifier:(id)identifier withOptions:(id)options error:(id *)error
{
  identifierCopy = identifier;
  optionsCopy = options;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__111939;
  v31 = __Block_byref_object_dispose__111940;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__111939;
  v25 = __Block_byref_object_dispose__111940;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __119__PLPhotoAnalysisServiceClient_Graph__requestGenerateDefaultRulesForLibraryScopeWithLocalIdentifier_withOptions_error___block_invoke;
  v16[3] = &unk_1E75773B8;
  v16[4] = &v27;
  v10 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v16];
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __119__PLPhotoAnalysisServiceClient_Graph__requestGenerateDefaultRulesForLibraryScopeWithLocalIdentifier_withOptions_error___block_invoke_2;
  v15[3] = &unk_1E7577598;
  v15[4] = &v17;
  v15[5] = &v21;
  [v10 requestGenerateDefaultRulesForLibraryScopeWithLocalIdentifier:identifierCopy withOptions:optionsCopy context:requestContextDictionary reply:v15];

  if (error)
  {
    v12 = v28[5];
    if (!v12)
    {
      v12 = v22[5];
    }

    *error = v12;
  }

  v13 = *(v18 + 24);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);
  return v13;
}

- (void)requestUpdateFeaturedContentBasedOnUserFeedbackWithPersonUUIDs:(id)ds reply:(id)reply
{
  replyCopy = reply;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __108__PLPhotoAnalysisServiceClient_Graph__requestUpdateFeaturedContentBasedOnUserFeedbackWithPersonUUIDs_reply___block_invoke;
  v14[3] = &unk_1E7577430;
  v7 = replyCopy;
  v15 = v7;
  dsCopy = ds;
  v9 = [(PLPhotoAnalysisServiceClient *)self remoteObjectProxyWithErrorHandler:v14];
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __108__PLPhotoAnalysisServiceClient_Graph__requestUpdateFeaturedContentBasedOnUserFeedbackWithPersonUUIDs_reply___block_invoke_2;
  v12[3] = &unk_1E75774A8;
  v13 = v7;
  v11 = v7;
  [v9 requestUpdateFeaturedContentBasedOnUserFeedbackWithPersonUUIDs:dsCopy context:requestContextDictionary reply:v12];
}

uint64_t __108__PLPhotoAnalysisServiceClient_Graph__requestUpdateFeaturedContentBasedOnUserFeedbackWithPersonUUIDs_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

uint64_t __108__PLPhotoAnalysisServiceClient_Graph__requestUpdateFeaturedContentBasedOnUserFeedbackWithPersonUUIDs_reply___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)requestMeaningScoreDebugDescriptionForMomentLocalIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__111939;
  v23 = __Block_byref_object_dispose__111940;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__111939;
  v17 = __Block_byref_object_dispose__111940;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __105__PLPhotoAnalysisServiceClient_Graph__requestMeaningScoreDebugDescriptionForMomentLocalIdentifier_error___block_invoke;
  v12[3] = &unk_1E75773B8;
  v12[4] = &v19;
  v7 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v12];
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __105__PLPhotoAnalysisServiceClient_Graph__requestMeaningScoreDebugDescriptionForMomentLocalIdentifier_error___block_invoke_2;
  v11[3] = &unk_1E75774D0;
  v11[4] = &v13;
  v11[5] = &v19;
  [v7 requestMeaningScoreDebugDescriptionForMomentLocalIdentifier:identifierCopy context:requestContextDictionary reply:v11];

  if (error)
  {
    *error = v20[5];
  }

  v9 = v14[5];
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v9;
}

void __105__PLPhotoAnalysisServiceClient_Graph__requestMeaningScoreDebugDescriptionForMomentLocalIdentifier_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (id)requestAssetLocalIdentifiersByCityNameWithError:(id *)error
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__111939;
  v21 = __Block_byref_object_dispose__111940;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__111939;
  v15 = __Block_byref_object_dispose__111940;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __87__PLPhotoAnalysisServiceClient_Graph__requestAssetLocalIdentifiersByCityNameWithError___block_invoke;
  v10[3] = &unk_1E75773B8;
  v10[4] = &v17;
  v5 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v10];
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __87__PLPhotoAnalysisServiceClient_Graph__requestAssetLocalIdentifiersByCityNameWithError___block_invoke_2;
  v9[3] = &unk_1E75773E0;
  v9[4] = &v11;
  v9[5] = &v17;
  [v5 requestAssetLocalIdentifiersByCityNameWithContext:requestContextDictionary reply:v9];

  if (error)
  {
    *error = v18[5];
  }

  v7 = v12[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);

  return v7;
}

void __87__PLPhotoAnalysisServiceClient_Graph__requestAssetLocalIdentifiersByCityNameWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (id)requestConfidenceByMomentLocalIdentifierForMeaning:(id)meaning useAlternativeMeaningEdge:(BOOL)edge onlyHighPrecision:(BOOL)precision error:(id *)error
{
  precisionCopy = precision;
  edgeCopy = edge;
  meaningCopy = meaning;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__111939;
  v27 = __Block_byref_object_dispose__111940;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__111939;
  v21 = __Block_byref_object_dispose__111940;
  v22 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __140__PLPhotoAnalysisServiceClient_Graph__requestConfidenceByMomentLocalIdentifierForMeaning_useAlternativeMeaningEdge_onlyHighPrecision_error___block_invoke;
  v16[3] = &unk_1E75773B8;
  v16[4] = &v23;
  v11 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v16];
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __140__PLPhotoAnalysisServiceClient_Graph__requestConfidenceByMomentLocalIdentifierForMeaning_useAlternativeMeaningEdge_onlyHighPrecision_error___block_invoke_2;
  v15[3] = &unk_1E75773E0;
  v15[4] = &v17;
  v15[5] = &v23;
  [v11 requestConfidenceByMomentLocalIdentifierForMeaning:meaningCopy useAlternativeMeaningEdge:edgeCopy onlyHighPrecision:precisionCopy context:requestContextDictionary reply:v15];

  if (error)
  {
    *error = v24[5];
  }

  v13 = v18[5];
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);

  return v13;
}

void __140__PLPhotoAnalysisServiceClient_Graph__requestConfidenceByMomentLocalIdentifierForMeaning_useAlternativeMeaningEdge_onlyHighPrecision_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (id)requestUtilityAssetLocalIdentifiersWithError:(id *)error
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__111939;
  v21 = __Block_byref_object_dispose__111940;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__111939;
  v15 = __Block_byref_object_dispose__111940;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__PLPhotoAnalysisServiceClient_Graph__requestUtilityAssetLocalIdentifiersWithError___block_invoke;
  v10[3] = &unk_1E75773B8;
  v10[4] = &v17;
  v5 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v10];
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __84__PLPhotoAnalysisServiceClient_Graph__requestUtilityAssetLocalIdentifiersWithError___block_invoke_2;
  v9[3] = &unk_1E75773E0;
  v9[4] = &v11;
  v9[5] = &v17;
  [v5 requestUtilityAssetLocalIdentifiersWithContext:requestContextDictionary reply:v9];

  if (error)
  {
    *error = v18[5];
  }

  v7 = v12[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);

  return v7;
}

void __84__PLPhotoAnalysisServiceClient_Graph__requestUtilityAssetLocalIdentifiersWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (id)requestTrendsByIdentifierWithCadence:(id)cadence forYear:(unint64_t)year error:(id *)error
{
  cadenceCopy = cadence;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__111939;
  v25 = __Block_byref_object_dispose__111940;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__111939;
  v19 = __Block_byref_object_dispose__111940;
  v20 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __90__PLPhotoAnalysisServiceClient_Graph__requestTrendsByIdentifierWithCadence_forYear_error___block_invoke;
  v14[3] = &unk_1E75773B8;
  v14[4] = &v21;
  v9 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v14];
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __90__PLPhotoAnalysisServiceClient_Graph__requestTrendsByIdentifierWithCadence_forYear_error___block_invoke_2;
  v13[3] = &unk_1E75773E0;
  v13[4] = &v15;
  v13[5] = &v21;
  [v9 requestTrendsByIdentifierWithCadence:cadenceCopy forYear:year context:requestContextDictionary reply:v13];

  if (error)
  {
    *error = v22[5];
  }

  v11 = v16[5];
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);

  return v11;
}

void __90__PLPhotoAnalysisServiceClient_Graph__requestTrendsByIdentifierWithCadence_forYear_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (id)requestUpNextAssetLocalIdentifiersForAssetWithLocalIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__111939;
  v23 = __Block_byref_object_dispose__111940;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__111939;
  v17 = __Block_byref_object_dispose__111940;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __107__PLPhotoAnalysisServiceClient_Graph__requestUpNextAssetLocalIdentifiersForAssetWithLocalIdentifier_error___block_invoke;
  v12[3] = &unk_1E75773B8;
  v12[4] = &v19;
  v7 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v12];
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __107__PLPhotoAnalysisServiceClient_Graph__requestUpNextAssetLocalIdentifiersForAssetWithLocalIdentifier_error___block_invoke_2;
  v11[3] = &unk_1E7577408;
  v11[4] = &v13;
  v11[5] = &v19;
  [v7 requestUpNextAssetLocalIdentifiersForAssetWithLocalIdentifier:identifierCopy context:requestContextDictionary reply:v11];

  if (error)
  {
    *error = v20[5];
  }

  v9 = v14[5];
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v9;
}

void __107__PLPhotoAnalysisServiceClient_Graph__requestUpNextAssetLocalIdentifiersForAssetWithLocalIdentifier_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (id)requestKeyAssetLocalIdentifierForPrototypeCategory:(id)category error:(id *)error
{
  categoryCopy = category;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__111939;
  v23 = __Block_byref_object_dispose__111940;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__111939;
  v17 = __Block_byref_object_dispose__111940;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __96__PLPhotoAnalysisServiceClient_Graph__requestKeyAssetLocalIdentifierForPrototypeCategory_error___block_invoke;
  v12[3] = &unk_1E75773B8;
  v12[4] = &v19;
  v7 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v12];
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __96__PLPhotoAnalysisServiceClient_Graph__requestKeyAssetLocalIdentifierForPrototypeCategory_error___block_invoke_2;
  v11[3] = &unk_1E75774D0;
  v11[4] = &v13;
  v11[5] = &v19;
  [v7 requestKeyAssetLocalIdentifierForPrototypeCategory:categoryCopy context:requestContextDictionary reply:v11];

  if (error)
  {
    *error = v20[5];
  }

  v9 = v14[5];
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v9;
}

void __96__PLPhotoAnalysisServiceClient_Graph__requestKeyAssetLocalIdentifierForPrototypeCategory_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (id)requestUpNextMemoryLocalIdentifiersWithOptions:(id)options error:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__111939;
  v34 = __Block_byref_object_dispose__111940;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__111939;
  v28 = __Block_byref_object_dispose__111940;
  v29 = 0;
  v7 = PLPhotoAnalysisQueriesGetLog();
  v8 = os_signpost_id_generate(v7);
  info = 0;
  mach_timebase_info(&info);
  v9 = v7;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "RequestUpNextMemoriesWithOptions", "", buf, 2u);
  }

  v11 = mach_absolute_time();
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __92__PLPhotoAnalysisServiceClient_Graph__requestUpNextMemoryLocalIdentifiersWithOptions_error___block_invoke;
  v22[3] = &unk_1E75773B8;
  v22[4] = &v30;
  v12 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v22];
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __92__PLPhotoAnalysisServiceClient_Graph__requestUpNextMemoryLocalIdentifiersWithOptions_error___block_invoke_2;
  v21[3] = &unk_1E75773E0;
  v21[4] = &v24;
  v21[5] = &v30;
  [v12 requestUpNextMemoriesWithOptions:optionsCopy context:requestContextDictionary reply:v21];

  v14 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v17 = v10;
  v18 = v17;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v18, OS_SIGNPOST_INTERVAL_END, v8, "RequestUpNextMemoriesWithOptions", " enableTelemetry=YES ", buf, 2u);
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v37 = "RequestUpNextMemoriesWithOptions";
    v38 = 2048;
    v39 = ((((v14 - v11) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  if (error)
  {
    *error = v31[5];
  }

  v19 = v25[5];

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return v19;
}

void __92__PLPhotoAnalysisServiceClient_Graph__requestUpNextMemoryLocalIdentifiersWithOptions_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (id)requestPersonalTraitsForAssetsWithUUIDs:(id)ds error:(id *)error
{
  v42 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__111939;
  v36 = __Block_byref_object_dispose__111940;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__111939;
  v30 = __Block_byref_object_dispose__111940;
  v31 = 0;
  v7 = PLPhotoAnalysisQueriesGetLog();
  v8 = os_signpost_id_generate(v7);
  info = 0;
  mach_timebase_info(&info);
  v9 = v7;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "requestPersonalTraitsForAssetsWithUUIDs", "", buf, 2u);
  }

  v11 = mach_absolute_time();
  momentGraphService = [(PLPhotoAnalysisServiceClient *)self momentGraphService];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __85__PLPhotoAnalysisServiceClient_Graph__requestPersonalTraitsForAssetsWithUUIDs_error___block_invoke;
  v24[3] = &unk_1E75773B8;
  v24[4] = &v32;
  v13 = [momentGraphService synchronousRemoteObjectProxyWithErrorHandler:v24];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __85__PLPhotoAnalysisServiceClient_Graph__requestPersonalTraitsForAssetsWithUUIDs_error___block_invoke_2;
  v23[3] = &unk_1E7577408;
  v23[4] = &v26;
  v23[5] = &v32;
  [v13 requestPersonalTraitsForAssetUUIDs:dsCopy operationID:&stru_1F0F06D80 reply:v23];

  v14 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v17 = v10;
  v18 = v17;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v18, OS_SIGNPOST_INTERVAL_END, v8, "requestPersonalTraitsForAssetsWithUUIDs", " enableTelemetry=YES ", buf, 2u);
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v39 = "requestPersonalTraitsForAssetsWithUUIDs";
    v40 = 2048;
    v41 = ((((v14 - v11) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v19 = v33[5];
  v20 = v19;
  if (v19 && error)
  {
    v20 = v20;
    *error = v20;
  }

  v21 = v27[5];
  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v32, 8);

  return v21;
}

void __85__PLPhotoAnalysisServiceClient_Graph__requestPersonalTraitsForAssetsWithUUIDs_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (id)requestPersonalTraitsForHighlightsWithUUIDs:(id)ds error:(id *)error
{
  v42 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__111939;
  v36 = __Block_byref_object_dispose__111940;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__111939;
  v30 = __Block_byref_object_dispose__111940;
  v31 = 0;
  v7 = PLPhotoAnalysisQueriesGetLog();
  v8 = os_signpost_id_generate(v7);
  info = 0;
  mach_timebase_info(&info);
  v9 = v7;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "requestPersonalTraitsForHighlightsWithUUIDs", "", buf, 2u);
  }

  v11 = mach_absolute_time();
  momentGraphService = [(PLPhotoAnalysisServiceClient *)self momentGraphService];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __89__PLPhotoAnalysisServiceClient_Graph__requestPersonalTraitsForHighlightsWithUUIDs_error___block_invoke;
  v24[3] = &unk_1E75773B8;
  v24[4] = &v32;
  v13 = [momentGraphService synchronousRemoteObjectProxyWithErrorHandler:v24];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __89__PLPhotoAnalysisServiceClient_Graph__requestPersonalTraitsForHighlightsWithUUIDs_error___block_invoke_2;
  v23[3] = &unk_1E7577408;
  v23[4] = &v26;
  v23[5] = &v32;
  [v13 requestPersonalTraitsForHighlightUUIDs:dsCopy operationID:&stru_1F0F06D80 reply:v23];

  v14 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v17 = v10;
  v18 = v17;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v18, OS_SIGNPOST_INTERVAL_END, v8, "requestPersonalTraitsForHighlightsWithUUIDs", " enableTelemetry=YES ", buf, 2u);
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v39 = "requestPersonalTraitsForHighlightsWithUUIDs";
    v40 = 2048;
    v41 = ((((v14 - v11) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v19 = v33[5];
  v20 = v19;
  if (v19 && error)
  {
    v20 = v20;
    *error = v20;
  }

  v21 = v27[5];
  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v32, 8);

  return v21;
}

void __89__PLPhotoAnalysisServiceClient_Graph__requestPersonalTraitsForHighlightsWithUUIDs_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (id)requestGraphMomentLocalIdentifiersWithDateInterval:(id)interval error:(id *)error
{
  v42 = *MEMORY[0x1E69E9840];
  intervalCopy = interval;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__111939;
  v36 = __Block_byref_object_dispose__111940;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__111939;
  v30 = __Block_byref_object_dispose__111940;
  v31 = 0;
  v7 = PLPhotoAnalysisQueriesGetLog();
  v8 = os_signpost_id_generate(v7);
  info = 0;
  mach_timebase_info(&info);
  v9 = v7;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "RequestGraphInferencesSummaryWithDateInterval", "", buf, 2u);
  }

  v11 = mach_absolute_time();
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __96__PLPhotoAnalysisServiceClient_Graph__requestGraphMomentLocalIdentifiersWithDateInterval_error___block_invoke;
  v24[3] = &unk_1E75773B8;
  v24[4] = &v32;
  v12 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v24];
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __96__PLPhotoAnalysisServiceClient_Graph__requestGraphMomentLocalIdentifiersWithDateInterval_error___block_invoke_2;
  v23[3] = &unk_1E7577408;
  v23[4] = &v26;
  v23[5] = &v32;
  [v12 requestGraphMomentLocalIdentifiersWithDateInterval:intervalCopy context:requestContextDictionary reply:v23];

  v14 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v17 = v10;
  v18 = v17;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v18, OS_SIGNPOST_INTERVAL_END, v8, "RequestGraphInferencesSummaryWithDateInterval", " enableTelemetry=YES ", buf, 2u);
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v39 = "RequestGraphInferencesSummaryWithDateInterval";
    v40 = 2048;
    v41 = ((((v14 - v11) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v19 = v33[5];
  v20 = v19;
  if (v19 && error)
  {
    v20 = v20;
    *error = v20;
  }

  v21 = v27[5];
  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v32, 8);

  return v21;
}

void __96__PLPhotoAnalysisServiceClient_Graph__requestGraphMomentLocalIdentifiersWithDateInterval_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (id)requestGraphInferencesSummaryWithMomentLocalIdentifiers:(id)identifiers error:(id *)error
{
  v42 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__111939;
  v36 = __Block_byref_object_dispose__111940;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__111939;
  v30 = __Block_byref_object_dispose__111940;
  v31 = 0;
  v7 = PLPhotoAnalysisQueriesGetLog();
  v8 = os_signpost_id_generate(v7);
  info = 0;
  mach_timebase_info(&info);
  v9 = v7;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "RequestGraphInferencesSummaryWithDateInterval", "", buf, 2u);
  }

  v11 = mach_absolute_time();
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __101__PLPhotoAnalysisServiceClient_Graph__requestGraphInferencesSummaryWithMomentLocalIdentifiers_error___block_invoke;
  v24[3] = &unk_1E75773B8;
  v24[4] = &v32;
  v12 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v24];
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __101__PLPhotoAnalysisServiceClient_Graph__requestGraphInferencesSummaryWithMomentLocalIdentifiers_error___block_invoke_2;
  v23[3] = &unk_1E75773E0;
  v23[4] = &v26;
  v23[5] = &v32;
  [v12 requestGraphInferencesSummaryWithMomentLocalIdentifiers:identifiersCopy context:requestContextDictionary reply:v23];

  v14 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v17 = v10;
  v18 = v17;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v18, OS_SIGNPOST_INTERVAL_END, v8, "RequestGraphInferencesSummaryWithDateInterval", " enableTelemetry=YES ", buf, 2u);
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v39 = "RequestGraphInferencesSummaryWithDateInterval";
    v40 = 2048;
    v41 = ((((v14 - v11) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v19 = v33[5];
  v20 = v19;
  if (v19 && error)
  {
    v20 = v20;
    *error = v20;
  }

  v21 = v27[5];
  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v32, 8);

  return v21;
}

void __101__PLPhotoAnalysisServiceClient_Graph__requestGraphInferencesSummaryWithMomentLocalIdentifiers_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (id)requestGraphInferencesSummaryWithDateInterval:(id)interval error:(id *)error
{
  v42 = *MEMORY[0x1E69E9840];
  intervalCopy = interval;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__111939;
  v36 = __Block_byref_object_dispose__111940;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__111939;
  v30 = __Block_byref_object_dispose__111940;
  v31 = 0;
  v7 = PLPhotoAnalysisQueriesGetLog();
  v8 = os_signpost_id_generate(v7);
  info = 0;
  mach_timebase_info(&info);
  v9 = v7;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "RequestGraphInferencesSummaryWithDateInterval", "", buf, 2u);
  }

  v11 = mach_absolute_time();
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __91__PLPhotoAnalysisServiceClient_Graph__requestGraphInferencesSummaryWithDateInterval_error___block_invoke;
  v24[3] = &unk_1E75773B8;
  v24[4] = &v32;
  v12 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v24];
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __91__PLPhotoAnalysisServiceClient_Graph__requestGraphInferencesSummaryWithDateInterval_error___block_invoke_2;
  v23[3] = &unk_1E75773E0;
  v23[4] = &v26;
  v23[5] = &v32;
  [v12 requestGraphInferencesSummaryWithDateInterval:intervalCopy context:requestContextDictionary reply:v23];

  v14 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v17 = v10;
  v18 = v17;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v18, OS_SIGNPOST_INTERVAL_END, v8, "RequestGraphInferencesSummaryWithDateInterval", " enableTelemetry=YES ", buf, 2u);
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v39 = "RequestGraphInferencesSummaryWithDateInterval";
    v40 = 2048;
    v41 = ((((v14 - v11) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v19 = v33[5];
  v20 = v19;
  if (v19 && error)
  {
    v20 = v20;
    *error = v20;
  }

  v21 = v27[5];
  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v32, 8);

  return v21;
}

void __91__PLPhotoAnalysisServiceClient_Graph__requestGraphInferencesSummaryWithDateInterval_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (id)requestSuggestedMePersonIdentifierWithError:(id *)error
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__111939;
  v28 = __Block_byref_object_dispose__111940;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__111939;
  v22 = __Block_byref_object_dispose__111940;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__111939;
  v16 = __Block_byref_object_dispose__111940;
  v17 = 0;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __83__PLPhotoAnalysisServiceClient_Graph__requestSuggestedMePersonIdentifierWithError___block_invoke;
  v11[3] = &unk_1E75773B8;
  v11[4] = &v18;
  v6 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __83__PLPhotoAnalysisServiceClient_Graph__requestSuggestedMePersonIdentifierWithError___block_invoke_2;
  v10[3] = &unk_1E75774D0;
  v10[4] = &v24;
  v10[5] = &v12;
  [v6 requestInferredMePersonLocalIdentifierWithErrorForContext:requestContextDictionary reply:v10];

  if (error)
  {
    v7 = v19[5];
    if (!v7)
    {
      v7 = v13[5];
    }

    *error = v7;
  }

  v8 = v25[5];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);

  return v8;
}

void __83__PLPhotoAnalysisServiceClient_Graph__requestSuggestedMePersonIdentifierWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (id)requestComposabilityScoresOfAssetsForLocalIdentifiers:(id)identifiers options:(id)options error:(id *)error
{
  v43 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  optionsCopy = options;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__111939;
  v37 = __Block_byref_object_dispose__111940;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__111939;
  v31 = __Block_byref_object_dispose__111940;
  v32 = 0;
  v10 = PLPhotoAnalysisQueriesGetLog();
  v11 = os_signpost_id_generate(v10);
  info = 0;
  mach_timebase_info(&info);
  v12 = v10;
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "RequestComposabilityScores", "", buf, 2u);
  }

  v14 = mach_absolute_time();
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __107__PLPhotoAnalysisServiceClient_Graph__requestComposabilityScoresOfAssetsForLocalIdentifiers_options_error___block_invoke;
  v25[3] = &unk_1E75773B8;
  v25[4] = &v33;
  v15 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v25];
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __107__PLPhotoAnalysisServiceClient_Graph__requestComposabilityScoresOfAssetsForLocalIdentifiers_options_error___block_invoke_2;
  v24[3] = &unk_1E75773E0;
  v24[4] = &v27;
  v24[5] = &v33;
  [v15 requestComposabilityScoresOfAssetsForLocalIdentifiers:identifiersCopy options:optionsCopy context:requestContextDictionary reply:v24];

  v17 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v20 = v13;
  v21 = v20;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v21, OS_SIGNPOST_INTERVAL_END, v11, "RequestComposabilityScores", " enableTelemetry=YES ", buf, 2u);
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v40 = "RequestComposabilityScores";
    v41 = 2048;
    v42 = ((((v17 - v14) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  if (error)
  {
    *error = v34[5];
  }

  v22 = v28[5];

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  return v22;
}

void __107__PLPhotoAnalysisServiceClient_Graph__requestComposabilityScoresOfAssetsForLocalIdentifiers_options_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (id)requestSuggestedPersonsWithOptions:(id)options error:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__111939;
  v34 = __Block_byref_object_dispose__111940;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__111939;
  v28 = __Block_byref_object_dispose__111940;
  v29 = 0;
  v7 = PLPhotoAnalysisQueriesGetLog();
  v8 = os_signpost_id_generate(v7);
  info = 0;
  mach_timebase_info(&info);
  v9 = v7;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "RequestSuggestedPersonsWithOptions", "", buf, 2u);
  }

  v11 = mach_absolute_time();
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __80__PLPhotoAnalysisServiceClient_Graph__requestSuggestedPersonsWithOptions_error___block_invoke;
  v22[3] = &unk_1E75773B8;
  v22[4] = &v30;
  v12 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v22];
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __80__PLPhotoAnalysisServiceClient_Graph__requestSuggestedPersonsWithOptions_error___block_invoke_2;
  v21[3] = &unk_1E7577408;
  v21[4] = &v24;
  v21[5] = &v30;
  [v12 requestSuggestedPersonsWithOptions:optionsCopy context:requestContextDictionary reply:v21];

  v14 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v17 = v10;
  v18 = v17;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v18, OS_SIGNPOST_INTERVAL_END, v8, "RequestSuggestedPersonsWithOptions", " enableTelemetry=YES ", buf, 2u);
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v37 = "RequestSuggestedPersonsWithOptions";
    v38 = 2048;
    v39 = ((((v14 - v11) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  if (error)
  {
    *error = v31[5];
  }

  v19 = v25[5];

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return v19;
}

void __80__PLPhotoAnalysisServiceClient_Graph__requestSuggestedPersonsWithOptions_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (id)requestRelationshipInferencesForPersonLocalIdentifiers:(id)identifiers error:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__111939;
  v34 = __Block_byref_object_dispose__111940;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__111939;
  v28 = __Block_byref_object_dispose__111940;
  v29 = 0;
  v7 = PLPhotoAnalysisQueriesGetLog();
  v8 = os_signpost_id_generate(v7);
  info = 0;
  mach_timebase_info(&info);
  v9 = v7;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "RequestRelationshipInferencesForPersonLocalIdentifiers", "", buf, 2u);
  }

  v11 = mach_absolute_time();
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __100__PLPhotoAnalysisServiceClient_Graph__requestRelationshipInferencesForPersonLocalIdentifiers_error___block_invoke;
  v22[3] = &unk_1E75773B8;
  v22[4] = &v30;
  v12 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v22];
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __100__PLPhotoAnalysisServiceClient_Graph__requestRelationshipInferencesForPersonLocalIdentifiers_error___block_invoke_2;
  v21[3] = &unk_1E75773E0;
  v21[4] = &v24;
  v21[5] = &v30;
  [v12 requestRelationshipInferencesForPersonLocalIdentifiers:identifiersCopy context:requestContextDictionary reply:v21];

  if (error)
  {
    *error = v31[5];
  }

  v14 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v17 = v10;
  v18 = v17;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v18, OS_SIGNPOST_INTERVAL_END, v8, "RequestRelationshipInferencesForPersonLocalIdentifiers", " enableTelemetry=YES ", buf, 2u);
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v37 = "RequestRelationshipInferencesForPersonLocalIdentifiers";
    v38 = 2048;
    v39 = ((((v14 - v11) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v19 = v25[5];

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return v19;
}

void __100__PLPhotoAnalysisServiceClient_Graph__requestRelationshipInferencesForPersonLocalIdentifiers_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (void)requestModelInference:(id)inference options:(id)options reply:(id)reply
{
  replyCopy = reply;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __75__PLPhotoAnalysisServiceClient_Graph__requestModelInference_options_reply___block_invoke;
  v17[3] = &unk_1E7577430;
  v9 = replyCopy;
  v18 = v9;
  optionsCopy = options;
  inferenceCopy = inference;
  v12 = [(PLPhotoAnalysisServiceClient *)self remoteObjectProxyWithErrorHandler:v17];
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__PLPhotoAnalysisServiceClient_Graph__requestModelInference_options_reply___block_invoke_2;
  v15[3] = &unk_1E75774A8;
  v16 = v9;
  v14 = v9;
  [v12 runModelInferenceForFingerprintVersion:inferenceCopy options:optionsCopy context:requestContextDictionary reply:v15];
}

uint64_t __75__PLPhotoAnalysisServiceClient_Graph__requestModelInference_options_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

uint64_t __75__PLPhotoAnalysisServiceClient_Graph__requestModelInference_options_reply___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)requestRunShadowEvaluationWithRecipe:(id)recipe models:(id)models trialDeploymentID:(id)d trialExperimentID:(id)iD trialTreatmentID:(id)treatmentID resultBlock:(id)block
{
  recipeCopy = recipe;
  modelsCopy = models;
  dCopy = d;
  iDCopy = iD;
  treatmentIDCopy = treatmentID;
  blockCopy = block;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__111939;
  v35 = __Block_byref_object_dispose__111940;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__111939;
  v29 = __Block_byref_object_dispose__111940;
  v30 = 0;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __148__PLPhotoAnalysisServiceClient_Graph__requestRunShadowEvaluationWithRecipe_models_trialDeploymentID_trialExperimentID_trialTreatmentID_resultBlock___block_invoke;
  v24[3] = &unk_1E75773B8;
  v24[4] = &v31;
  v20 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v24];
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __148__PLPhotoAnalysisServiceClient_Graph__requestRunShadowEvaluationWithRecipe_models_trialDeploymentID_trialExperimentID_trialTreatmentID_resultBlock___block_invoke_2;
  v23[3] = &unk_1E75773B8;
  v23[4] = &v25;
  [v20 runShadowEvaluationWithRecipe:recipeCopy models:modelsCopy trialDeploymentID:dCopy trialExperimentID:iDCopy trialTreatmentID:treatmentIDCopy context:requestContextDictionary resultBlock:v23];

  v22 = v26[5];
  if (!v22)
  {
    v22 = v32[5];
  }

  blockCopy[2](blockCopy, v22);
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);
}

- (void)requestRunPFLWithAttachments:(id)attachments recipeUserInfo:(id)info resultBlock:(id)block
{
  attachmentsCopy = attachments;
  infoCopy = info;
  blockCopy = block;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__111939;
  v38 = __Block_byref_object_dispose__111940;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__111939;
  v32 = __Block_byref_object_dispose__111940;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__111939;
  v26 = __Block_byref_object_dispose__111940;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__111939;
  v20 = __Block_byref_object_dispose__111940;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __95__PLPhotoAnalysisServiceClient_Graph__requestRunPFLWithAttachments_recipeUserInfo_resultBlock___block_invoke;
  v15[3] = &unk_1E75773B8;
  v15[4] = &v34;
  v11 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v15];
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __95__PLPhotoAnalysisServiceClient_Graph__requestRunPFLWithAttachments_recipeUserInfo_resultBlock___block_invoke_2;
  v14[3] = &unk_1E75775C0;
  v14[4] = &v22;
  v14[5] = &v16;
  v14[6] = &v28;
  [v11 requestRunPFLWithAttachments:attachmentsCopy recipeUserInfo:infoCopy context:requestContextDictionary resultBlock:v14];

  v13 = v29[5];
  if (!v13)
  {
    v13 = v35[5];
  }

  blockCopy[2](blockCopy, v23[5], v17[5], v13);
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  _Block_object_dispose(&v34, 8);
}

void __95__PLPhotoAnalysisServiceClient_Graph__requestRunPFLWithAttachments_recipeUserInfo_resultBlock___block_invoke_2(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1[4] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v17 = v7;

  v12 = *(a1[5] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  v15 = *(a1[6] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v9;
}

- (BOOL)reportMetricsWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__111939;
  v28 = __Block_byref_object_dispose__111940;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__111939;
  v22 = __Block_byref_object_dispose__111940;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__PLPhotoAnalysisServiceClient_Graph__reportMetricsWithOptions_error___block_invoke;
  v13[3] = &unk_1E75773B8;
  v13[4] = &v24;
  v7 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v13];
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__PLPhotoAnalysisServiceClient_Graph__reportMetricsWithOptions_error___block_invoke_2;
  v12[3] = &unk_1E7577598;
  v12[4] = &v14;
  v12[5] = &v18;
  [v7 reportMetricsWithOptions:optionsCopy context:requestContextDictionary reply:v12];

  if (error)
  {
    v9 = v25[5];
    if (!v9)
    {
      v9 = v19[5];
    }

    *error = v9;
  }

  v10 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
  return v10;
}

- (id)runCurationWithItems:(id)items options:(id)options error:(id *)error
{
  itemsCopy = items;
  optionsCopy = options;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__111939;
  v26 = __Block_byref_object_dispose__111940;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__111939;
  v20 = __Block_byref_object_dispose__111940;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __74__PLPhotoAnalysisServiceClient_Graph__runCurationWithItems_options_error___block_invoke;
  v15[3] = &unk_1E75773B8;
  v15[4] = &v22;
  v11 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __74__PLPhotoAnalysisServiceClient_Graph__runCurationWithItems_options_error___block_invoke_2;
  v14[3] = &unk_1E75773E0;
  v14[4] = &v16;
  v14[5] = &v22;
  [v11 runCurationWithItems:itemsCopy options:optionsCopy context:requestContextDictionary reply:v14];

  if (error)
  {
    *error = v23[5];
  }

  v12 = v17[5];
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);

  return v12;
}

void __74__PLPhotoAnalysisServiceClient_Graph__runCurationWithItems_options_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (id)requestCurationScoreByAssetUUIDForAssetUUIDs:(id)ds error:(id *)error
{
  dsCopy = ds;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__111939;
  v23 = __Block_byref_object_dispose__111940;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__111939;
  v17 = __Block_byref_object_dispose__111940;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __90__PLPhotoAnalysisServiceClient_Graph__requestCurationScoreByAssetUUIDForAssetUUIDs_error___block_invoke;
  v12[3] = &unk_1E75773B8;
  v12[4] = &v19;
  v8 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __90__PLPhotoAnalysisServiceClient_Graph__requestCurationScoreByAssetUUIDForAssetUUIDs_error___block_invoke_2;
  v11[3] = &unk_1E75773E0;
  v11[4] = &v13;
  v11[5] = &v19;
  [v8 requestCurationScoreByAssetUUIDForAssetUUIDs:dsCopy context:requestContextDictionary reply:v11];

  if (error)
  {
    *error = v20[5];
  }

  v9 = v14[5];
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v9;
}

void __90__PLPhotoAnalysisServiceClient_Graph__requestCurationScoreByAssetUUIDForAssetUUIDs_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (id)requestGeoHashForAssetLocalIdentifiers:(id)identifiers geoHashSize:(id)size error:(id *)error
{
  identifiersCopy = identifiers;
  sizeCopy = size;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__111939;
  v26 = __Block_byref_object_dispose__111940;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__111939;
  v20 = __Block_byref_object_dispose__111940;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __96__PLPhotoAnalysisServiceClient_Graph__requestGeoHashForAssetLocalIdentifiers_geoHashSize_error___block_invoke;
  v15[3] = &unk_1E75773B8;
  v15[4] = &v22;
  v11 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __96__PLPhotoAnalysisServiceClient_Graph__requestGeoHashForAssetLocalIdentifiers_geoHashSize_error___block_invoke_2;
  v14[3] = &unk_1E75773E0;
  v14[4] = &v16;
  v14[5] = &v22;
  [v11 requestGeoHashForAssetLocalIdentifiers:identifiersCopy geoHashSize:sizeCopy context:requestContextDictionary reply:v14];

  if (error)
  {
    *error = v23[5];
  }

  v12 = v17[5];
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);

  return v12;
}

void __96__PLPhotoAnalysisServiceClient_Graph__requestGeoHashForAssetLocalIdentifiers_geoHashSize_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (id)requestIconicSceneScoreForAssetLocalIdentifiers:(id)identifiers error:(id *)error
{
  identifiersCopy = identifiers;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__111939;
  v23 = __Block_byref_object_dispose__111940;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__111939;
  v17 = __Block_byref_object_dispose__111940;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __93__PLPhotoAnalysisServiceClient_Graph__requestIconicSceneScoreForAssetLocalIdentifiers_error___block_invoke;
  v12[3] = &unk_1E75773B8;
  v12[4] = &v19;
  v8 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __93__PLPhotoAnalysisServiceClient_Graph__requestIconicSceneScoreForAssetLocalIdentifiers_error___block_invoke_2;
  v11[3] = &unk_1E75773E0;
  v11[4] = &v13;
  v11[5] = &v19;
  [v8 requestIconicSceneScoreForAssetLocalIdentifiers:identifiersCopy context:requestContextDictionary reply:v11];

  if (error)
  {
    *error = v20[5];
  }

  v9 = v14[5];
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v9;
}

void __93__PLPhotoAnalysisServiceClient_Graph__requestIconicSceneScoreForAssetLocalIdentifiers_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (id)requestTextFeaturesForMomentLocalIdentifiers:(id)identifiers error:(id *)error
{
  identifiersCopy = identifiers;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__111939;
  v23 = __Block_byref_object_dispose__111940;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__111939;
  v17 = __Block_byref_object_dispose__111940;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __90__PLPhotoAnalysisServiceClient_Graph__requestTextFeaturesForMomentLocalIdentifiers_error___block_invoke;
  v12[3] = &unk_1E75773B8;
  v12[4] = &v19;
  v8 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __90__PLPhotoAnalysisServiceClient_Graph__requestTextFeaturesForMomentLocalIdentifiers_error___block_invoke_2;
  v11[3] = &unk_1E75773E0;
  v11[4] = &v13;
  v11[5] = &v19;
  [v8 requestTextFeaturesForMomentLocalIdentifiers:identifiersCopy context:requestContextDictionary reply:v11];

  if (error)
  {
    *error = v20[5];
  }

  v9 = v14[5];
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v9;
}

void __90__PLPhotoAnalysisServiceClient_Graph__requestTextFeaturesForMomentLocalIdentifiers_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (id)requestHighlightDebugInformationForHighlightWithLocalIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__111939;
  v31 = __Block_byref_object_dispose__111940;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__111939;
  v25 = __Block_byref_object_dispose__111940;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__111939;
  v19 = __Block_byref_object_dispose__111940;
  v20 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __109__PLPhotoAnalysisServiceClient_Graph__requestHighlightDebugInformationForHighlightWithLocalIdentifier_error___block_invoke;
  v14[3] = &unk_1E75773B8;
  v14[4] = &v21;
  v7 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v14];
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __109__PLPhotoAnalysisServiceClient_Graph__requestHighlightDebugInformationForHighlightWithLocalIdentifier_error___block_invoke_2;
  v13[3] = &unk_1E75773E0;
  v13[4] = &v27;
  v13[5] = &v15;
  [v7 requestHighlightDebugInformationForHighlightWithLocalIdentifier:identifierCopy context:requestContextDictionary reply:v13];

  v9 = v28[5];
  if (error && !v9)
  {
    v10 = v22[5];
    if (!v10)
    {
      v10 = v16[5];
    }

    *error = v10;
    v9 = v28[5];
  }

  v11 = v9;
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v11;
}

void __109__PLPhotoAnalysisServiceClient_Graph__requestHighlightDebugInformationForHighlightWithLocalIdentifier_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (BOOL)requestSyndicationLibraryRevGeocodingWithError:(id *)error
{
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__111939;
  v15 = __Block_byref_object_dispose__111940;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __86__PLPhotoAnalysisServiceClient_Graph__requestSyndicationLibraryRevGeocodingWithError___block_invoke;
  v10[3] = &unk_1E75773B8;
  v10[4] = &v11;
  v6 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __86__PLPhotoAnalysisServiceClient_Graph__requestSyndicationLibraryRevGeocodingWithError___block_invoke_2;
  v9[3] = &unk_1E7577570;
  v9[4] = &v11;
  [v6 requestRevGeocodingSyndicationLibraryWithContext:requestContextDictionary reply:v9];

  if (error)
  {
    *error = v12[5];
  }

  v7 = v12[5] == 0;
  _Block_object_dispose(&v11, 8);

  return v7;
}

- (BOOL)requestAssetRevGeocodingForAssetLocalIdentifiers:(id)identifiers withError:(id *)error
{
  identifiersCopy = identifiers;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__111939;
  v17 = __Block_byref_object_dispose__111940;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __98__PLPhotoAnalysisServiceClient_Graph__requestAssetRevGeocodingForAssetLocalIdentifiers_withError___block_invoke;
  v12[3] = &unk_1E75773B8;
  v12[4] = &v13;
  v8 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __98__PLPhotoAnalysisServiceClient_Graph__requestAssetRevGeocodingForAssetLocalIdentifiers_withError___block_invoke_2;
  v11[3] = &unk_1E75773B8;
  v11[4] = &v13;
  [v8 requestAssetRevGeocodingForAssetLocalIdentifiers:identifiersCopy context:requestContextDictionary reply:v11];

  if (error)
  {
    *error = v14[5];
  }

  v9 = v14[5] == 0;
  _Block_object_dispose(&v13, 8);

  return v9;
}

- (BOOL)requestAssetRevGeocodingWithError:(id *)error
{
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__111939;
  v15 = __Block_byref_object_dispose__111940;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__PLPhotoAnalysisServiceClient_Graph__requestAssetRevGeocodingWithError___block_invoke;
  v10[3] = &unk_1E75773B8;
  v10[4] = &v11;
  v6 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__PLPhotoAnalysisServiceClient_Graph__requestAssetRevGeocodingWithError___block_invoke_2;
  v9[3] = &unk_1E75773B8;
  v9[4] = &v11;
  [v6 requestAssetRevGeocodingWithContext:requestContextDictionary reply:v9];

  if (error)
  {
    *error = v12[5];
  }

  v7 = v12[5] == 0;
  _Block_object_dispose(&v11, 8);

  return v7;
}

- (BOOL)requestHighlightCollectionEnrichmentWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__111939;
  v17 = __Block_byref_object_dispose__111940;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __93__PLPhotoAnalysisServiceClient_Graph__requestHighlightCollectionEnrichmentWithOptions_error___block_invoke;
  v12[3] = &unk_1E75773B8;
  v12[4] = &v13;
  v8 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __93__PLPhotoAnalysisServiceClient_Graph__requestHighlightCollectionEnrichmentWithOptions_error___block_invoke_2;
  v11[3] = &unk_1E75773B8;
  v11[4] = &v13;
  [v8 requestHighlightCollectionEnrichmentWithOptions:optionsCopy context:requestContextDictionary reply:v11];

  if (error)
  {
    *error = v14[5];
  }

  v9 = v14[5] == 0;
  _Block_object_dispose(&v13, 8);

  return v9;
}

- (BOOL)requestEnrichmentWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__111939;
  v17 = __Block_byref_object_dispose__111940;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__PLPhotoAnalysisServiceClient_Graph__requestEnrichmentWithOptions_error___block_invoke;
  v12[3] = &unk_1E75773B8;
  v12[4] = &v13;
  v8 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__PLPhotoAnalysisServiceClient_Graph__requestEnrichmentWithOptions_error___block_invoke_2;
  v11[3] = &unk_1E75773B8;
  v11[4] = &v13;
  [v8 requestEnrichmentWithOptions:optionsCopy context:requestContextDictionary reply:v11];

  if (error)
  {
    *error = v14[5];
  }

  v9 = v14[5] == 0;
  _Block_object_dispose(&v13, 8);

  return v9;
}

- (BOOL)requestHighlightEnrichmentWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__111939;
  v17 = __Block_byref_object_dispose__111940;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __83__PLPhotoAnalysisServiceClient_Graph__requestHighlightEnrichmentWithOptions_error___block_invoke;
  v12[3] = &unk_1E75773B8;
  v12[4] = &v13;
  v8 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __83__PLPhotoAnalysisServiceClient_Graph__requestHighlightEnrichmentWithOptions_error___block_invoke_2;
  v11[3] = &unk_1E75773B8;
  v11[4] = &v13;
  [v8 requestHighlightEnrichmentWithOptions:optionsCopy context:requestContextDictionary reply:v11];

  if (error)
  {
    *error = v14[5];
  }

  v9 = v14[5] == 0;
  _Block_object_dispose(&v13, 8);

  return v9;
}

- (id)requestSuggestedContributionsForAssetsMetadata:(id)metadata error:(id *)error
{
  v47 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__111939;
  v41 = __Block_byref_object_dispose__111940;
  v42 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__111939;
  v35 = __Block_byref_object_dispose__111940;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__111939;
  v29 = __Block_byref_object_dispose__111940;
  v30 = 0;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v8 = PLPhotoAnalysisQueriesGetLog();
  v9 = os_signpost_id_generate(v8);
  info = 0;
  mach_timebase_info(&info);
  v10 = v8;
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "RequestSuggestedContributions", "", buf, 2u);
  }

  v12 = mach_absolute_time();
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __92__PLPhotoAnalysisServiceClient_Graph__requestSuggestedContributionsForAssetsMetadata_error___block_invoke;
  v23[3] = &unk_1E75773B8;
  v23[4] = &v31;
  v13 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v23];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __92__PLPhotoAnalysisServiceClient_Graph__requestSuggestedContributionsForAssetsMetadata_error___block_invoke_2;
  v22[3] = &unk_1E7577408;
  v22[4] = &v37;
  v22[5] = &v25;
  [v13 requestSuggestedContributionsForAssetsMetadata:metadataCopy options:0 context:requestContextDictionary reply:v22];

  if (error && !v38[5])
  {
    v14 = v32[5];
    if (!v14)
    {
      v14 = v26[5];
    }

    *error = v14;
  }

  v15 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v18 = v11;
  v19 = v18;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v19, OS_SIGNPOST_INTERVAL_END, v9, "RequestSuggestedContributions", " enableTelemetry=YES ", buf, 2u);
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v44 = "RequestSuggestedContributions";
    v45 = 2048;
    v46 = ((((v15 - v12) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v20 = v38[5];

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  _Block_object_dispose(&v37, 8);

  return v20;
}

void __92__PLPhotoAnalysisServiceClient_Graph__requestSuggestedContributionsForAssetsMetadata_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (id)requestBatchSuggestedRecipientsForMomentUUIDByAssetUUID:(id)d options:(id)options error:(id *)error
{
  dCopy = d;
  optionsCopy = options;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__111939;
  v34 = __Block_byref_object_dispose__111940;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__111939;
  v28 = __Block_byref_object_dispose__111940;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__111939;
  v22 = __Block_byref_object_dispose__111940;
  v23 = 0;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __109__PLPhotoAnalysisServiceClient_Graph__requestBatchSuggestedRecipientsForMomentUUIDByAssetUUID_options_error___block_invoke;
  v17[3] = &unk_1E75773B8;
  v17[4] = &v24;
  v11 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v17];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __109__PLPhotoAnalysisServiceClient_Graph__requestBatchSuggestedRecipientsForMomentUUIDByAssetUUID_options_error___block_invoke_2;
  v16[3] = &unk_1E75773E0;
  v16[4] = &v30;
  v16[5] = &v18;
  [v11 requestBatchSuggestedRecipientsForMomentUUIDByAssetUUID:dCopy options:optionsCopy context:requestContextDictionary reply:v16];

  v12 = v31[5];
  if (error && !v12)
  {
    v13 = v25[5];
    if (!v13)
    {
      v13 = v19[5];
    }

    *error = v13;
    v12 = v31[5];
  }

  v14 = v12;

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);

  return v14;
}

void __109__PLPhotoAnalysisServiceClient_Graph__requestBatchSuggestedRecipientsForMomentUUIDByAssetUUID_options_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (id)requestSuggestedRecipientsForAssetLocalIdentifiers:(id)identifiers momentLocalIdentifiers:(id)localIdentifiers options:(id)options error:(id *)error
{
  v53 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  localIdentifiersCopy = localIdentifiers;
  optionsCopy = options;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__111939;
  v47 = __Block_byref_object_dispose__111940;
  v48 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__111939;
  v41 = __Block_byref_object_dispose__111940;
  v42 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__111939;
  v35 = __Block_byref_object_dispose__111940;
  v36 = 0;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v14 = PLPhotoAnalysisQueriesGetLog();
  v15 = os_signpost_id_generate(v14);
  info = 0;
  mach_timebase_info(&info);
  v16 = v14;
  v17 = v16;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "RequestSuggestedRecipientsForAssetLocalIdentifiers", "", buf, 2u);
  }

  v18 = mach_absolute_time();
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __127__PLPhotoAnalysisServiceClient_Graph__requestSuggestedRecipientsForAssetLocalIdentifiers_momentLocalIdentifiers_options_error___block_invoke;
  v29[3] = &unk_1E75773B8;
  v29[4] = &v37;
  v19 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v29];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __127__PLPhotoAnalysisServiceClient_Graph__requestSuggestedRecipientsForAssetLocalIdentifiers_momentLocalIdentifiers_options_error___block_invoke_2;
  v28[3] = &unk_1E7577408;
  v28[4] = &v43;
  v28[5] = &v31;
  [v19 requestSuggestedRecipientsForAssetLocalIdentifiers:identifiersCopy momentLocalIdentifiers:localIdentifiersCopy options:optionsCopy context:requestContextDictionary reply:v28];

  if (error && !v44[5])
  {
    v20 = v38[5];
    if (!v20)
    {
      v20 = v32[5];
    }

    *error = v20;
  }

  v21 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v24 = v17;
  v25 = v24;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v25, OS_SIGNPOST_INTERVAL_END, v15, "RequestSuggestedRecipientsForAssetLocalIdentifiers", " enableTelemetry=YES ", buf, 2u);
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v50 = "RequestSuggestedRecipientsForAssetLocalIdentifiers";
    v51 = 2048;
    v52 = ((((v21 - v18) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v26 = v44[5];

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v37, 8);

  _Block_object_dispose(&v43, 8);

  return v26;
}

void __127__PLPhotoAnalysisServiceClient_Graph__requestSuggestedRecipientsForAssetLocalIdentifiers_momentLocalIdentifiers_options_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (BOOL)requestTitleForPersonLocalIdentifiers:(id)identifiers format:(int64_t)format title:(id *)title subtitle:(id *)subtitle error:(id *)error
{
  identifiersCopy = identifiers;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__111939;
  v35 = __Block_byref_object_dispose__111940;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__111939;
  v29 = __Block_byref_object_dispose__111940;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__111939;
  v23 = __Block_byref_object_dispose__111940;
  v24 = 0;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __105__PLPhotoAnalysisServiceClient_Graph__requestTitleForPersonLocalIdentifiers_format_title_subtitle_error___block_invoke;
  v18[3] = &unk_1E75773B8;
  v18[4] = &v19;
  v14 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v18];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __105__PLPhotoAnalysisServiceClient_Graph__requestTitleForPersonLocalIdentifiers_format_title_subtitle_error___block_invoke_2;
  v17[3] = &unk_1E7577548;
  v17[4] = &v31;
  v17[5] = &v25;
  v17[6] = &v19;
  [v14 requestTitleForPersonLocalIdentifiers:identifiersCopy format:format context:requestContextDictionary reply:v17];

  if (title)
  {
    *title = v32[5];
  }

  if (subtitle)
  {
    *subtitle = v26[5];
  }

  if (error)
  {
    *error = v20[5];
  }

  v15 = v20[5] == 0;

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);
  return v15;
}

void __105__PLPhotoAnalysisServiceClient_Graph__requestTitleForPersonLocalIdentifiers_format_title_subtitle_error___block_invoke_2(void *a1, void *a2, void *a3, void *a4)
{
  v13 = a2;
  v8 = a3;
  v9 = a4;
  objc_storeStrong((*(a1[4] + 8) + 40), a2);
  objc_storeStrong((*(a1[5] + 8) + 40), a3);
  v10 = *(a1[6] + 8);
  v12 = *(v10 + 40);
  v11 = (v10 + 40);
  if (!v12)
  {
    objc_storeStrong(v11, a4);
  }
}

- (BOOL)requestTitleForAssetCollectionWithLocalIdentifier:(id)identifier format:(int64_t)format title:(id *)title subtitle:(id *)subtitle error:(id *)error
{
  identifierCopy = identifier;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__111939;
  v35 = __Block_byref_object_dispose__111940;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__111939;
  v29 = __Block_byref_object_dispose__111940;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__111939;
  v23 = __Block_byref_object_dispose__111940;
  v24 = 0;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __117__PLPhotoAnalysisServiceClient_Graph__requestTitleForAssetCollectionWithLocalIdentifier_format_title_subtitle_error___block_invoke;
  v18[3] = &unk_1E75773B8;
  v18[4] = &v19;
  v14 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v18];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __117__PLPhotoAnalysisServiceClient_Graph__requestTitleForAssetCollectionWithLocalIdentifier_format_title_subtitle_error___block_invoke_2;
  v17[3] = &unk_1E7577548;
  v17[4] = &v31;
  v17[5] = &v25;
  v17[6] = &v19;
  [v14 requestTitleForAssetCollectionWithLocalIdentifier:identifierCopy format:format context:requestContextDictionary reply:v17];

  if (title)
  {
    *title = v32[5];
  }

  if (subtitle)
  {
    *subtitle = v26[5];
  }

  if (error)
  {
    *error = v20[5];
  }

  v15 = v20[5] == 0;

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);
  return v15;
}

void __117__PLPhotoAnalysisServiceClient_Graph__requestTitleForAssetCollectionWithLocalIdentifier_format_title_subtitle_error___block_invoke_2(void *a1, void *a2, void *a3, void *a4)
{
  v13 = a2;
  v8 = a3;
  v9 = a4;
  objc_storeStrong((*(a1[4] + 8) + 40), a2);
  objc_storeStrong((*(a1[5] + 8) + 40), a3);
  v10 = *(a1[6] + 8);
  v12 = *(v10 + 40);
  v11 = (v10 + 40);
  if (!v12)
  {
    objc_storeStrong(v11, a4);
  }
}

- (BOOL)requestTitleForCollectionMomentListWithLocalIdentifier:(id)identifier format:(int64_t)format title:(id *)title subtitle:(id *)subtitle error:(id *)error
{
  identifierCopy = identifier;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__111939;
  v35 = __Block_byref_object_dispose__111940;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__111939;
  v29 = __Block_byref_object_dispose__111940;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__111939;
  v23 = __Block_byref_object_dispose__111940;
  v24 = 0;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __122__PLPhotoAnalysisServiceClient_Graph__requestTitleForCollectionMomentListWithLocalIdentifier_format_title_subtitle_error___block_invoke;
  v18[3] = &unk_1E75773B8;
  v18[4] = &v19;
  v14 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v18];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __122__PLPhotoAnalysisServiceClient_Graph__requestTitleForCollectionMomentListWithLocalIdentifier_format_title_subtitle_error___block_invoke_2;
  v17[3] = &unk_1E7577548;
  v17[4] = &v31;
  v17[5] = &v25;
  v17[6] = &v19;
  [v14 requestTitleForCollectionMomentListWithLocalIdentifier:identifierCopy format:format context:requestContextDictionary reply:v17];

  if (title)
  {
    *title = v32[5];
  }

  if (subtitle)
  {
    *subtitle = v26[5];
  }

  if (error)
  {
    *error = v20[5];
  }

  v15 = v20[5] == 0;

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);
  return v15;
}

void __122__PLPhotoAnalysisServiceClient_Graph__requestTitleForCollectionMomentListWithLocalIdentifier_format_title_subtitle_error___block_invoke_2(void *a1, void *a2, void *a3, void *a4)
{
  v13 = a2;
  v8 = a3;
  v9 = a4;
  objc_storeStrong((*(a1[4] + 8) + 40), a2);
  objc_storeStrong((*(a1[5] + 8) + 40), a3);
  v10 = *(a1[6] + 8);
  v12 = *(v10 + 40);
  v11 = (v10 + 40);
  if (!v12)
  {
    objc_storeStrong(v11, a4);
  }
}

- (BOOL)requestSetDefaultsObject:(id)object forKey:(id)key withError:(id *)error
{
  objectCopy = object;
  keyCopy = key;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__111939;
  v27 = __Block_byref_object_dispose__111940;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__111939;
  v21 = __Block_byref_object_dispose__111940;
  v22 = 0;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __81__PLPhotoAnalysisServiceClient_Graph__requestSetDefaultsObject_forKey_withError___block_invoke;
  v16[3] = &unk_1E75773B8;
  v16[4] = &v23;
  v11 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v16];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __81__PLPhotoAnalysisServiceClient_Graph__requestSetDefaultsObject_forKey_withError___block_invoke_2;
  v15[3] = &unk_1E75773B8;
  v15[4] = &v17;
  [v11 requestSetDefaultsObject:objectCopy forKey:keyCopy context:requestContextDictionary reply:v15];

  if (error)
  {
    v12 = v24[5];
    if (!v12)
    {
      v12 = v18[5];
    }

    *error = v12;
  }

  if (v24[5])
  {
    v13 = 0;
  }

  else
  {
    v13 = v18[5] == 0;
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v13;
}

- (id)requestDefaultsObjectForKey:(id)key withError:(id *)error
{
  keyCopy = key;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__111939;
  v30 = __Block_byref_object_dispose__111940;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__111939;
  v24 = __Block_byref_object_dispose__111940;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__111939;
  v18 = __Block_byref_object_dispose__111940;
  v19 = 0;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__PLPhotoAnalysisServiceClient_Graph__requestDefaultsObjectForKey_withError___block_invoke;
  v13[3] = &unk_1E75773B8;
  v13[4] = &v26;
  v8 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77__PLPhotoAnalysisServiceClient_Graph__requestDefaultsObjectForKey_withError___block_invoke_2;
  v12[3] = &unk_1E7577520;
  v12[4] = &v14;
  v12[5] = &v20;
  [v8 requestDefaultsObjectForKey:keyCopy context:requestContextDictionary reply:v12];

  if (error)
  {
    v9 = v27[5];
    if (!v9)
    {
      v9 = v21[5];
    }

    *error = v9;
  }

  v10 = v15[5];

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);

  return v10;
}

void __77__PLPhotoAnalysisServiceClient_Graph__requestDefaultsObjectForKey_withError___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (BOOL)requestInvalidatePersistentCaches:(id *)caches
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__111939;
  v16 = __Block_byref_object_dispose__111940;
  v17 = 0;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__PLPhotoAnalysisServiceClient_Graph__requestInvalidatePersistentCaches___block_invoke;
  v11[3] = &unk_1E75773B8;
  v11[4] = &v12;
  v6 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__PLPhotoAnalysisServiceClient_Graph__requestInvalidatePersistentCaches___block_invoke_2;
  v10[3] = &unk_1E75773B8;
  v10[4] = &v12;
  [v6 requestInvalidateServicePersistentCachesWithContext:requestContextDictionary reply:v10];

  v7 = v13[5];
  if (caches && v7)
  {
    v7 = v7;
    *caches = v7;
  }

  v8 = v7 == 0;

  _Block_object_dispose(&v12, 8);
  return v8;
}

- (BOOL)requestInvalidateTransientCaches:(id *)caches
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__111939;
  v16 = __Block_byref_object_dispose__111940;
  v17 = 0;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__PLPhotoAnalysisServiceClient_Graph__requestInvalidateTransientCaches___block_invoke;
  v11[3] = &unk_1E75773B8;
  v11[4] = &v12;
  v6 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__PLPhotoAnalysisServiceClient_Graph__requestInvalidateTransientCaches___block_invoke_2;
  v10[3] = &unk_1E75773B8;
  v10[4] = &v12;
  [v6 requestInvalidateServiceTransientCachesWithContext:requestContextDictionary reply:v10];

  v7 = v13[5];
  if (caches && v7)
  {
    v7 = v7;
    *caches = v7;
  }

  v8 = v7 == 0;

  _Block_object_dispose(&v12, 8);
  return v8;
}

- (void)requestGraphRebuildFractionCompletedWithReply:(id)reply
{
  replyCopy = reply;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __85__PLPhotoAnalysisServiceClient_Graph__requestGraphRebuildFractionCompletedWithReply___block_invoke;
  v11[3] = &unk_1E7577430;
  v6 = replyCopy;
  v12 = v6;
  v7 = [(PLPhotoAnalysisServiceClient *)self remoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __85__PLPhotoAnalysisServiceClient_Graph__requestGraphRebuildFractionCompletedWithReply___block_invoke_2;
  v9[3] = &unk_1E7577480;
  v10 = v6;
  v8 = v6;
  [v7 requestGraphRebuildFractionCompletedWithContext:requestContextDictionary reply:v9];
}

- (id)requestGraphPerformQuery:(id)query error:(id *)error
{
  queryCopy = query;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__111939;
  v31 = __Block_byref_object_dispose__111940;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__111939;
  v25 = __Block_byref_object_dispose__111940;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__111939;
  v19 = __Block_byref_object_dispose__111940;
  v20 = 0;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __70__PLPhotoAnalysisServiceClient_Graph__requestGraphPerformQuery_error___block_invoke;
  v14[3] = &unk_1E75773B8;
  v14[4] = &v21;
  v8 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v14];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__PLPhotoAnalysisServiceClient_Graph__requestGraphPerformQuery_error___block_invoke_2;
  v13[3] = &unk_1E75773E0;
  v13[4] = &v27;
  v13[5] = &v15;
  [v8 requestGraphServicePerformsQueryWithContext:requestContextDictionary query:queryCopy reply:v13];

  v9 = v28[5];
  if (error && !v9)
  {
    v10 = v22[5];
    if (!v10)
    {
      v10 = v16[5];
    }

    *error = v10;
    v9 = v28[5];
  }

  v11 = v9;

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);

  return v11;
}

void __70__PLPhotoAnalysisServiceClient_Graph__requestGraphPerformQuery_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (id)requestGraphStatus:(id *)status
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__111939;
  v29 = __Block_byref_object_dispose__111940;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__111939;
  v23 = __Block_byref_object_dispose__111940;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__111939;
  v17 = __Block_byref_object_dispose__111940;
  v18 = 0;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__PLPhotoAnalysisServiceClient_Graph__requestGraphStatus___block_invoke;
  v12[3] = &unk_1E75773B8;
  v12[4] = &v19;
  v6 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__PLPhotoAnalysisServiceClient_Graph__requestGraphStatus___block_invoke_2;
  v11[3] = &unk_1E75773E0;
  v11[4] = &v25;
  v11[5] = &v13;
  [v6 requestGraphServiceStatusWithContext:requestContextDictionary reply:v11];

  if (v26[5])
  {
    v7 = [PLPhotosKnowledgeGraphAvailabilityStatus alloc];
    v8 = [(PLPhotosKnowledgeGraphAvailabilityStatus *)v7 initWithDictionary:v26[5]];
  }

  else if (status)
  {
    v9 = v20[5];
    if (!v9)
    {
      v9 = v14[5];
    }

    v8 = 0;
    *status = v9;
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);

  return v8;
}

void __58__PLPhotoAnalysisServiceClient_Graph__requestGraphStatus___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (void)requestHighlightEstimatesWithReply:(id)reply
{
  replyCopy = reply;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__PLPhotoAnalysisServiceClient_Graph__requestHighlightEstimatesWithReply___block_invoke;
  v11[3] = &unk_1E7577430;
  v5 = replyCopy;
  v12 = v5;
  v6 = [(PLPhotoAnalysisServiceClient *)self remoteObjectProxyWithErrorHandler:v11];
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74__PLPhotoAnalysisServiceClient_Graph__requestHighlightEstimatesWithReply___block_invoke_2;
  v9[3] = &unk_1E75774F8;
  v10 = v5;
  v8 = v5;
  [v6 requestHighlightEstimatesWithContext:requestContextDictionary reply:v9];
}

- (id)requestGraphStatisticsWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__111939;
  v31 = __Block_byref_object_dispose__111940;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__111939;
  v25 = __Block_byref_object_dispose__111940;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__111939;
  v19 = __Block_byref_object_dispose__111940;
  v20 = 0;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__PLPhotoAnalysisServiceClient_Graph__requestGraphStatisticsWithOptions_error___block_invoke;
  v14[3] = &unk_1E75773B8;
  v14[4] = &v21;
  v8 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v14];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__PLPhotoAnalysisServiceClient_Graph__requestGraphStatisticsWithOptions_error___block_invoke_2;
  v13[3] = &unk_1E75774D0;
  v13[4] = &v27;
  v13[5] = &v15;
  [v8 requestGraphServiceStatisticsWithOptions:optionsCopy context:requestContextDictionary reply:v13];

  v9 = v28[5];
  if (error && !v9)
  {
    v10 = v22[5];
    if (!v10)
    {
      v10 = v16[5];
    }

    *error = v10;
    v9 = v28[5];
  }

  v11 = v9;

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);

  return v11;
}

void __79__PLPhotoAnalysisServiceClient_Graph__requestGraphStatisticsWithOptions_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (id)requestExportGraphForPurpose:(id)purpose error:(id *)error
{
  purposeCopy = purpose;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__111939;
  v31 = __Block_byref_object_dispose__111940;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__111939;
  v25 = __Block_byref_object_dispose__111940;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__111939;
  v19 = __Block_byref_object_dispose__111940;
  v20 = 0;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __74__PLPhotoAnalysisServiceClient_Graph__requestExportGraphForPurpose_error___block_invoke;
  v14[3] = &unk_1E75773B8;
  v14[4] = &v21;
  v8 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v14];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__PLPhotoAnalysisServiceClient_Graph__requestExportGraphForPurpose_error___block_invoke_2;
  v13[3] = &unk_1E75774D0;
  v13[4] = &v27;
  v13[5] = &v15;
  [v8 requestExportGraphServiceForPurpose:purposeCopy context:requestContextDictionary reply:v13];

  v9 = v28[5];
  if (error && !v9)
  {
    v10 = v22[5];
    if (!v10)
    {
      v10 = v16[5];
    }

    *error = v10;
    v9 = v28[5];
  }

  v11 = v9;

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);

  return v11;
}

void __74__PLPhotoAnalysisServiceClient_Graph__requestExportGraphForPurpose_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (id)requestSuggestionInfosWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__111939;
  v31 = __Block_byref_object_dispose__111940;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__111939;
  v25 = __Block_byref_object_dispose__111940;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__111939;
  v19 = __Block_byref_object_dispose__111940;
  v20 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__PLPhotoAnalysisServiceClient_Graph__requestSuggestionInfosWithOptions_error___block_invoke;
  v14[3] = &unk_1E75773B8;
  v14[4] = &v21;
  v7 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v14];
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__PLPhotoAnalysisServiceClient_Graph__requestSuggestionInfosWithOptions_error___block_invoke_2;
  v13[3] = &unk_1E7577408;
  v13[4] = &v27;
  v13[5] = &v15;
  [v7 requestSuggestionInfosWithOptions:optionsCopy context:requestContextDictionary reply:v13];

  v9 = v28[5];
  if (error && !v9)
  {
    v10 = v22[5];
    if (!v10)
    {
      v10 = v16[5];
    }

    *error = v10;
    v9 = v28[5];
  }

  v11 = v9;
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v11;
}

void __79__PLPhotoAnalysisServiceClient_Graph__requestSuggestionInfosWithOptions_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (id)requestAvailableSuggestionTypeInfosWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__111939;
  v31 = __Block_byref_object_dispose__111940;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__111939;
  v25 = __Block_byref_object_dispose__111940;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__111939;
  v19 = __Block_byref_object_dispose__111940;
  v20 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __92__PLPhotoAnalysisServiceClient_Graph__requestAvailableSuggestionTypeInfosWithOptions_error___block_invoke;
  v14[3] = &unk_1E75773B8;
  v14[4] = &v21;
  v7 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v14];
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __92__PLPhotoAnalysisServiceClient_Graph__requestAvailableSuggestionTypeInfosWithOptions_error___block_invoke_2;
  v13[3] = &unk_1E75773E0;
  v13[4] = &v27;
  v13[5] = &v15;
  [v7 requestAvailableSuggestionTypeInfosWithOptions:optionsCopy context:requestContextDictionary reply:v13];

  v9 = v28[5];
  if (error && !v9)
  {
    v10 = v22[5];
    if (!v10)
    {
      v10 = v16[5];
    }

    *error = v10;
    v9 = v28[5];
  }

  v11 = v9;
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v11;
}

void __92__PLPhotoAnalysisServiceClient_Graph__requestAvailableSuggestionTypeInfosWithOptions_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (id)requestCurationOfLength:(unint64_t)length forMemoryForLocalIdentifier:(id)identifier withOptions:(id)options error:(id *)error
{
  identifierCopy = identifier;
  optionsCopy = options;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__111939;
  v36 = __Block_byref_object_dispose__111940;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__111939;
  v30 = __Block_byref_object_dispose__111940;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__111939;
  v24 = __Block_byref_object_dispose__111940;
  v25 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __109__PLPhotoAnalysisServiceClient_Graph__requestCurationOfLength_forMemoryForLocalIdentifier_withOptions_error___block_invoke;
  v19[3] = &unk_1E75773B8;
  v19[4] = &v26;
  v12 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v19];
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __109__PLPhotoAnalysisServiceClient_Graph__requestCurationOfLength_forMemoryForLocalIdentifier_withOptions_error___block_invoke_2;
  v18[3] = &unk_1E7577408;
  v18[4] = &v32;
  v18[5] = &v20;
  [v12 requestCurationOfLength:length forMemoryForLocalIdentifier:identifierCopy withOptions:optionsCopy context:requestContextDictionary reply:v18];

  v14 = v33[5];
  if (error && !v14)
  {
    v15 = v27[5];
    if (!v15)
    {
      v15 = v21[5];
    }

    *error = v15;
    v14 = v33[5];
  }

  v16 = v14;
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  return v16;
}

void __109__PLPhotoAnalysisServiceClient_Graph__requestCurationOfLength_forMemoryForLocalIdentifier_withOptions_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (id)requestMemoryDebugInformationForMemoryWithLocalIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__111939;
  v31 = __Block_byref_object_dispose__111940;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__111939;
  v25 = __Block_byref_object_dispose__111940;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__111939;
  v19 = __Block_byref_object_dispose__111940;
  v20 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __103__PLPhotoAnalysisServiceClient_Graph__requestMemoryDebugInformationForMemoryWithLocalIdentifier_error___block_invoke;
  v14[3] = &unk_1E75773B8;
  v14[4] = &v21;
  v7 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v14];
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __103__PLPhotoAnalysisServiceClient_Graph__requestMemoryDebugInformationForMemoryWithLocalIdentifier_error___block_invoke_2;
  v13[3] = &unk_1E75773E0;
  v13[4] = &v27;
  v13[5] = &v15;
  [v7 requestMemoryDebugInformationForMemoryWithLocalIdentifier:identifierCopy context:requestContextDictionary reply:v13];

  v9 = v28[5];
  if (error && !v9)
  {
    v10 = v22[5];
    if (!v10)
    {
      v10 = v16[5];
    }

    *error = v10;
    v9 = v28[5];
  }

  v11 = v9;
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v11;
}

void __103__PLPhotoAnalysisServiceClient_Graph__requestMemoryDebugInformationForMemoryWithLocalIdentifier_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (id)requestSummaryCurationForHighlightLocalIdentifier:(id)identifier options:(id)options error:(id *)error
{
  identifierCopy = identifier;
  optionsCopy = options;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__111939;
  v34 = __Block_byref_object_dispose__111940;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__111939;
  v28 = __Block_byref_object_dispose__111940;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__111939;
  v22 = __Block_byref_object_dispose__111940;
  v23 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __103__PLPhotoAnalysisServiceClient_Graph__requestSummaryCurationForHighlightLocalIdentifier_options_error___block_invoke;
  v17[3] = &unk_1E75773B8;
  v17[4] = &v24;
  v10 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v17];
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __103__PLPhotoAnalysisServiceClient_Graph__requestSummaryCurationForHighlightLocalIdentifier_options_error___block_invoke_2;
  v16[3] = &unk_1E7577408;
  v16[4] = &v30;
  v16[5] = &v18;
  [v10 requestSummaryCurationForHighlightLocalIdentifier:identifierCopy options:optionsCopy context:requestContextDictionary reply:v16];

  v12 = v31[5];
  if (error && !v12)
  {
    v13 = v25[5];
    if (!v13)
    {
      v13 = v19[5];
    }

    *error = v13;
    v12 = v31[5];
  }

  v14 = v12;
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return v14;
}

void __103__PLPhotoAnalysisServiceClient_Graph__requestSummaryCurationForHighlightLocalIdentifier_options_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (id)requestCurationDebugInformationForAssetCollectionWithLocalIdentifier:(id)identifier options:(id)options error:(id *)error
{
  identifierCopy = identifier;
  optionsCopy = options;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__111939;
  v34 = __Block_byref_object_dispose__111940;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__111939;
  v28 = __Block_byref_object_dispose__111940;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__111939;
  v22 = __Block_byref_object_dispose__111940;
  v23 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __122__PLPhotoAnalysisServiceClient_Graph__requestCurationDebugInformationForAssetCollectionWithLocalIdentifier_options_error___block_invoke;
  v17[3] = &unk_1E75773B8;
  v17[4] = &v24;
  v10 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v17];
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __122__PLPhotoAnalysisServiceClient_Graph__requestCurationDebugInformationForAssetCollectionWithLocalIdentifier_options_error___block_invoke_2;
  v16[3] = &unk_1E75773E0;
  v16[4] = &v30;
  v16[5] = &v18;
  [v10 requestCurationDebugInformationForAssetCollectionWithLocalIdentifier:identifierCopy options:optionsCopy context:requestContextDictionary reply:v16];

  v12 = v31[5];
  if (error && !v12)
  {
    v13 = v25[5];
    if (!v13)
    {
      v13 = v19[5];
    }

    *error = v13;
    v12 = v31[5];
  }

  v14 = v12;
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return v14;
}

void __122__PLPhotoAnalysisServiceClient_Graph__requestCurationDebugInformationForAssetCollectionWithLocalIdentifier_options_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (id)requestSharingMessageSuggestionDebugInformationForAssetCollectionLocalIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__111939;
  v31 = __Block_byref_object_dispose__111940;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__111939;
  v25 = __Block_byref_object_dispose__111940;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__111939;
  v19 = __Block_byref_object_dispose__111940;
  v20 = 0;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __126__PLPhotoAnalysisServiceClient_Graph__requestSharingMessageSuggestionDebugInformationForAssetCollectionLocalIdentifier_error___block_invoke;
  v14[3] = &unk_1E75773B8;
  v14[4] = &v21;
  v8 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v14];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __126__PLPhotoAnalysisServiceClient_Graph__requestSharingMessageSuggestionDebugInformationForAssetCollectionLocalIdentifier_error___block_invoke_2;
  v13[3] = &unk_1E75773E0;
  v13[4] = &v27;
  v13[5] = &v15;
  [v8 requestSharingMessageSuggestionDebugInformationForAssetCollectionLocalIdentifier:identifierCopy context:requestContextDictionary reply:v13];

  v9 = v28[5];
  if (error && !v9)
  {
    v10 = v22[5];
    if (!v10)
    {
      v10 = v16[5];
    }

    *error = v10;
    v9 = v28[5];
  }

  v11 = v9;

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);

  return v11;
}

void __126__PLPhotoAnalysisServiceClient_Graph__requestSharingMessageSuggestionDebugInformationForAssetCollectionLocalIdentifier_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (id)requestSharingSuggestionDebugInformationForAssetCollectionLocalIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__111939;
  v31 = __Block_byref_object_dispose__111940;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__111939;
  v25 = __Block_byref_object_dispose__111940;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__111939;
  v19 = __Block_byref_object_dispose__111940;
  v20 = 0;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __119__PLPhotoAnalysisServiceClient_Graph__requestSharingSuggestionDebugInformationForAssetCollectionLocalIdentifier_error___block_invoke;
  v14[3] = &unk_1E75773B8;
  v14[4] = &v21;
  v8 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v14];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __119__PLPhotoAnalysisServiceClient_Graph__requestSharingSuggestionDebugInformationForAssetCollectionLocalIdentifier_error___block_invoke_2;
  v13[3] = &unk_1E75773E0;
  v13[4] = &v27;
  v13[5] = &v15;
  [v8 requestSharingSuggestionDebugInformationForAssetCollectionLocalIdentifier:identifierCopy context:requestContextDictionary reply:v13];

  v9 = v28[5];
  if (error && !v9)
  {
    v10 = v22[5];
    if (!v10)
    {
      v10 = v16[5];
    }

    *error = v10;
    v9 = v28[5];
  }

  v11 = v9;

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);

  return v11;
}

void __119__PLPhotoAnalysisServiceClient_Graph__requestSharingSuggestionDebugInformationForAssetCollectionLocalIdentifier_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (id)requestUtilityAssetInformationWithError:(id *)error
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__111939;
  v29 = __Block_byref_object_dispose__111940;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__111939;
  v23 = __Block_byref_object_dispose__111940;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__111939;
  v17 = __Block_byref_object_dispose__111940;
  v18 = 0;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__PLPhotoAnalysisServiceClient_Graph__requestUtilityAssetInformationWithError___block_invoke;
  v12[3] = &unk_1E75773B8;
  v12[4] = &v19;
  v6 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__PLPhotoAnalysisServiceClient_Graph__requestUtilityAssetInformationWithError___block_invoke_2;
  v11[3] = &unk_1E75773E0;
  v11[4] = &v25;
  v11[5] = &v13;
  [v6 requestUtilityAssetInformationWithContext:requestContextDictionary reply:v11];

  v7 = v26[5];
  if (error && !v7)
  {
    v8 = v20[5];
    if (!v8)
    {
      v8 = v14[5];
    }

    *error = v8;
    v7 = v26[5];
  }

  v9 = v7;

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);

  return v9;
}

void __79__PLPhotoAnalysisServiceClient_Graph__requestUtilityAssetInformationWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (id)requestCurationDebugInformationForAssetLocalIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__111939;
  v31 = __Block_byref_object_dispose__111940;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__111939;
  v25 = __Block_byref_object_dispose__111940;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__111939;
  v19 = __Block_byref_object_dispose__111940;
  v20 = 0;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __100__PLPhotoAnalysisServiceClient_Graph__requestCurationDebugInformationForAssetLocalIdentifier_error___block_invoke;
  v14[3] = &unk_1E75773B8;
  v14[4] = &v21;
  v8 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v14];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __100__PLPhotoAnalysisServiceClient_Graph__requestCurationDebugInformationForAssetLocalIdentifier_error___block_invoke_2;
  v13[3] = &unk_1E75773E0;
  v13[4] = &v27;
  v13[5] = &v15;
  [v8 requestCurationDebugInformationForAsset:identifierCopy context:requestContextDictionary reply:v13];

  v9 = v28[5];
  if (error && !v9)
  {
    v10 = v22[5];
    if (!v10)
    {
      v10 = v16[5];
    }

    *error = v10;
    v9 = v28[5];
  }

  v11 = v9;

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);

  return v11;
}

void __100__PLPhotoAnalysisServiceClient_Graph__requestCurationDebugInformationForAssetLocalIdentifier_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (void)requestOnDemandTasksWithOptions:(id)options reply:(id)reply
{
  replyCopy = reply;
  optionsCopy = options;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __77__PLPhotoAnalysisServiceClient_Graph__requestOnDemandTasksWithOptions_reply___block_invoke;
  v14[3] = &unk_1E7577430;
  v9 = replyCopy;
  v15 = v9;
  v10 = [(PLPhotoAnalysisServiceClient *)self remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77__PLPhotoAnalysisServiceClient_Graph__requestOnDemandTasksWithOptions_reply___block_invoke_2;
  v12[3] = &unk_1E75774A8;
  v13 = v9;
  v11 = v9;
  [v10 requestOnDemandTasksWithOptions:optionsCopy context:requestContextDictionary reply:v12];
}

- (void)notifyWhenGraphReadyWithCoalescingIdentifier:(id)identifier reply:(id)reply
{
  replyCopy = reply;
  identifierCopy = identifier;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __90__PLPhotoAnalysisServiceClient_Graph__notifyWhenGraphReadyWithCoalescingIdentifier_reply___block_invoke;
  v14[3] = &unk_1E7577430;
  v9 = replyCopy;
  v15 = v9;
  v10 = [(PLPhotoAnalysisServiceClient *)self remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __90__PLPhotoAnalysisServiceClient_Graph__notifyWhenGraphReadyWithCoalescingIdentifier_reply___block_invoke_2;
  v12[3] = &unk_1E75774A8;
  v13 = v9;
  v11 = v9;
  [v10 notifyWhenGraphReadyWithCoalescingIdentifier:identifierCopy context:requestContextDictionary reply:v12];
}

- (id)requestSignalModelInfosWithError:(id *)error
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__111939;
  v29 = __Block_byref_object_dispose__111940;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__111939;
  v23 = __Block_byref_object_dispose__111940;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__111939;
  v17 = __Block_byref_object_dispose__111940;
  v18 = 0;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__PLPhotoAnalysisServiceClient_Graph__requestSignalModelInfosWithError___block_invoke;
  v12[3] = &unk_1E75773B8;
  v12[4] = &v19;
  v6 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__PLPhotoAnalysisServiceClient_Graph__requestSignalModelInfosWithError___block_invoke_2;
  v11[3] = &unk_1E75773E0;
  v11[4] = &v25;
  v11[5] = &v13;
  [v6 requestSignalModelInfosWithContext:requestContextDictionary reply:v11];

  v7 = v26[5];
  if (error && !v7)
  {
    v8 = v20[5];
    if (!v8)
    {
      v8 = v14[5];
    }

    *error = v8;
    v7 = v26[5];
  }

  v9 = v7;

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);

  return v9;
}

void __72__PLPhotoAnalysisServiceClient_Graph__requestSignalModelInfosWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (id)requestAssetsForPersonLocalIdentifiers:(id)identifiers withError:(id *)error
{
  identifiersCopy = identifiers;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__111939;
  v31 = __Block_byref_object_dispose__111940;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__111939;
  v25 = __Block_byref_object_dispose__111940;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__111939;
  v19 = __Block_byref_object_dispose__111940;
  v20 = 0;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __88__PLPhotoAnalysisServiceClient_Graph__requestAssetsForPersonLocalIdentifiers_withError___block_invoke;
  v14[3] = &unk_1E75773B8;
  v14[4] = &v21;
  v8 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v14];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __88__PLPhotoAnalysisServiceClient_Graph__requestAssetsForPersonLocalIdentifiers_withError___block_invoke_2;
  v13[3] = &unk_1E7577408;
  v13[4] = &v27;
  v13[5] = &v15;
  [v8 requestAssetsForPersonLocalIdentifiers:identifiersCopy context:requestContextDictionary reply:v13];

  v9 = v28[5];
  if (error && !v9)
  {
    v10 = v22[5];
    if (!v10)
    {
      v10 = v16[5];
    }

    *error = v10;
    v9 = v28[5];
  }

  v11 = v9;

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);

  return v11;
}

void __88__PLPhotoAnalysisServiceClient_Graph__requestAssetsForPersonLocalIdentifiers_withError___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (id)requestRelatedMomentsForPersonLocalIdentifiers:(id)identifiers withError:(id *)error
{
  identifiersCopy = identifiers;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__111939;
  v31 = __Block_byref_object_dispose__111940;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__111939;
  v25 = __Block_byref_object_dispose__111940;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__111939;
  v19 = __Block_byref_object_dispose__111940;
  v20 = 0;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __96__PLPhotoAnalysisServiceClient_Graph__requestRelatedMomentsForPersonLocalIdentifiers_withError___block_invoke;
  v14[3] = &unk_1E75773B8;
  v14[4] = &v21;
  v8 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v14];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __96__PLPhotoAnalysisServiceClient_Graph__requestRelatedMomentsForPersonLocalIdentifiers_withError___block_invoke_2;
  v13[3] = &unk_1E7577408;
  v13[4] = &v27;
  v13[5] = &v15;
  [v8 requestRelatedMomentsForPersonLocalIdentifiers:identifiersCopy context:requestContextDictionary reply:v13];

  v9 = v28[5];
  if (error && !v9)
  {
    v10 = v22[5];
    if (!v10)
    {
      v10 = v16[5];
    }

    *error = v10;
    v9 = v28[5];
  }

  v11 = v9;

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);

  return v11;
}

void __96__PLPhotoAnalysisServiceClient_Graph__requestRelatedMomentsForPersonLocalIdentifiers_withError___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (id)requestSocialGroupsOverlappingMemberLocalIdentifiers:(id)identifiers withError:(id *)error
{
  identifiersCopy = identifiers;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__111939;
  v31 = __Block_byref_object_dispose__111940;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__111939;
  v25 = __Block_byref_object_dispose__111940;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__111939;
  v19 = __Block_byref_object_dispose__111940;
  v20 = 0;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __102__PLPhotoAnalysisServiceClient_Graph__requestSocialGroupsOverlappingMemberLocalIdentifiers_withError___block_invoke;
  v14[3] = &unk_1E75773B8;
  v14[4] = &v21;
  v8 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v14];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __102__PLPhotoAnalysisServiceClient_Graph__requestSocialGroupsOverlappingMemberLocalIdentifiers_withError___block_invoke_2;
  v13[3] = &unk_1E7577408;
  v13[4] = &v27;
  v13[5] = &v15;
  [v8 requestSocialGroupsOverlappingMemberLocalIdentifiers:identifiersCopy context:requestContextDictionary reply:v13];

  v9 = v28[5];
  if (error && !v9)
  {
    v10 = v22[5];
    if (!v10)
    {
      v10 = v16[5];
    }

    *error = v10;
    v9 = v28[5];
  }

  v11 = v9;

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);

  return v11;
}

void __102__PLPhotoAnalysisServiceClient_Graph__requestSocialGroupsOverlappingMemberLocalIdentifiers_withError___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (id)requestAllSocialGroupsForMemberLocalIdentifier:(id)identifier withOptions:(id)options error:(id *)error
{
  identifierCopy = identifier;
  optionsCopy = options;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__111939;
  v34 = __Block_byref_object_dispose__111940;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__111939;
  v28 = __Block_byref_object_dispose__111940;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__111939;
  v22 = __Block_byref_object_dispose__111940;
  v23 = 0;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __104__PLPhotoAnalysisServiceClient_Graph__requestAllSocialGroupsForMemberLocalIdentifier_withOptions_error___block_invoke;
  v17[3] = &unk_1E75773B8;
  v17[4] = &v24;
  v11 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v17];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __104__PLPhotoAnalysisServiceClient_Graph__requestAllSocialGroupsForMemberLocalIdentifier_withOptions_error___block_invoke_2;
  v16[3] = &unk_1E7577408;
  v16[4] = &v30;
  v16[5] = &v18;
  [v11 requestAllSocialGroupsForMemberLocalIdentifier:identifierCopy options:optionsCopy context:requestContextDictionary reply:v16];

  v12 = v31[5];
  if (error && !v12)
  {
    v13 = v25[5];
    if (!v13)
    {
      v13 = v19[5];
    }

    *error = v13;
    v12 = v31[5];
  }

  v14 = v12;

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);

  return v14;
}

void __104__PLPhotoAnalysisServiceClient_Graph__requestAllSocialGroupsForMemberLocalIdentifier_withOptions_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (id)requestSortedArrayOfPersonLocalIdentifiers:(id)identifiers withError:(id *)error
{
  identifiersCopy = identifiers;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__111939;
  v31 = __Block_byref_object_dispose__111940;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__111939;
  v25 = __Block_byref_object_dispose__111940;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__111939;
  v19 = __Block_byref_object_dispose__111940;
  v20 = 0;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __92__PLPhotoAnalysisServiceClient_Graph__requestSortedArrayOfPersonLocalIdentifiers_withError___block_invoke;
  v14[3] = &unk_1E75773B8;
  v14[4] = &v21;
  v8 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v14];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __92__PLPhotoAnalysisServiceClient_Graph__requestSortedArrayOfPersonLocalIdentifiers_withError___block_invoke_2;
  v13[3] = &unk_1E7577408;
  v13[4] = &v27;
  v13[5] = &v15;
  [v8 requestSortedArrayOfPersonLocalIdentifiers:identifiersCopy context:requestContextDictionary reply:v13];

  v9 = v28[5];
  if (error && !v9)
  {
    v10 = v22[5];
    if (!v10)
    {
      v10 = v16[5];
    }

    *error = v10;
    v9 = v28[5];
  }

  v11 = v9;

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);

  return v11;
}

void __92__PLPhotoAnalysisServiceClient_Graph__requestSortedArrayOfPersonLocalIdentifiers_withError___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (void)requestMaestroSongsWithOptions:(id)options reply:(id)reply
{
  replyCopy = reply;
  optionsCopy = options;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__PLPhotoAnalysisServiceClient_Graph__requestMaestroSongsWithOptions_reply___block_invoke;
  v11[3] = &unk_1E7577430;
  v12 = replyCopy;
  v9 = replyCopy;
  v10 = [(PLPhotoAnalysisServiceClient *)self remoteObjectProxyWithErrorHandler:v11];
  [v10 requestMaestroSongsWithOptions:optionsCopy context:requestContextDictionary reply:v9];
}

- (void)requestRecentlyUsedSongsWithOptions:(id)options reply:(id)reply
{
  replyCopy = reply;
  optionsCopy = options;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __81__PLPhotoAnalysisServiceClient_Graph__requestRecentlyUsedSongsWithOptions_reply___block_invoke;
  v11[3] = &unk_1E7577430;
  v12 = replyCopy;
  v9 = replyCopy;
  v10 = [(PLPhotoAnalysisServiceClient *)self remoteObjectProxyWithErrorHandler:v11];
  [v10 requestRecentlyUsedSongsWithOptions:optionsCopy context:requestContextDictionary reply:v9];
}

- (void)requestFlexMusicCurationWithOptions:(id)options reply:(id)reply
{
  replyCopy = reply;
  optionsCopy = options;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __81__PLPhotoAnalysisServiceClient_Graph__requestFlexMusicCurationWithOptions_reply___block_invoke;
  v11[3] = &unk_1E7577430;
  v12 = replyCopy;
  v9 = replyCopy;
  v10 = [(PLPhotoAnalysisServiceClient *)self remoteObjectProxyWithErrorHandler:v11];
  [v10 requestFlexMusicCurationWithOptions:optionsCopy context:requestContextDictionary reply:v9];
}

- (void)requestMusicCurationWithOptions:(id)options reply:(id)reply
{
  replyCopy = reply;
  optionsCopy = options;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__PLPhotoAnalysisServiceClient_Graph__requestMusicCurationWithOptions_reply___block_invoke;
  v11[3] = &unk_1E7577430;
  v12 = replyCopy;
  v9 = replyCopy;
  v10 = [(PLPhotoAnalysisServiceClient *)self remoteObjectProxyWithErrorHandler:v11];
  [v10 requestMusicCurationWithOptions:optionsCopy context:requestContextDictionary reply:v9];
}

- (void)requestCacheSongSourceWithOptions:(id)options reply:(id)reply
{
  replyCopy = reply;
  optionsCopy = options;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__PLPhotoAnalysisServiceClient_Graph__requestCacheSongSourceWithOptions_reply___block_invoke;
  v11[3] = &unk_1E7577430;
  v12 = replyCopy;
  v9 = replyCopy;
  v10 = [(PLPhotoAnalysisServiceClient *)self remoteObjectProxyWithErrorHandler:v11];
  [v10 requestCacheSongSourceWithOptions:optionsCopy context:requestContextDictionary reply:v9];
}

- (void)requestMusicCatalogAdamIDsForPurchasedSongID:(id)d options:(id)options reply:(id)reply
{
  replyCopy = reply;
  optionsCopy = options;
  dCopy = d;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __98__PLPhotoAnalysisServiceClient_Graph__requestMusicCatalogAdamIDsForPurchasedSongID_options_reply___block_invoke;
  v14[3] = &unk_1E7577430;
  v15 = replyCopy;
  v12 = replyCopy;
  v13 = [(PLPhotoAnalysisServiceClient *)self remoteObjectProxyWithErrorHandler:v14];
  [v13 requestMusicCatalogAdamIDsForPurchasedSongID:dCopy options:optionsCopy context:requestContextDictionary reply:v12];
}

- (void)requestClearMusicCacheWithOptions:(id)options reply:(id)reply
{
  replyCopy = reply;
  optionsCopy = options;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__PLPhotoAnalysisServiceClient_Graph__requestClearMusicCacheWithOptions_reply___block_invoke;
  v14[3] = &unk_1E7577430;
  v9 = replyCopy;
  v15 = v9;
  v10 = [(PLPhotoAnalysisServiceClient *)self remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__PLPhotoAnalysisServiceClient_Graph__requestClearMusicCacheWithOptions_reply___block_invoke_2;
  v12[3] = &unk_1E7577430;
  v13 = v9;
  v11 = v9;
  [v10 requestClearMusicCacheWithOptions:optionsCopy context:requestContextDictionary reply:v12];
}

- (void)requestFlexMusicCurationDebugInformationForAssetCollectionWithLocalIdentifier:(id)identifier reply:(id)reply
{
  replyCopy = reply;
  identifierCopy = identifier;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __123__PLPhotoAnalysisServiceClient_Graph__requestFlexMusicCurationDebugInformationForAssetCollectionWithLocalIdentifier_reply___block_invoke;
  v11[3] = &unk_1E7577430;
  v12 = replyCopy;
  v9 = replyCopy;
  v10 = [(PLPhotoAnalysisServiceClient *)self remoteObjectProxyWithErrorHandler:v11];
  [v10 requestFlexMusicCurationDebugInformationForAssetCollectionWithLocalIdentifier:identifierCopy context:requestContextDictionary reply:v9];
}

- (void)requestFlexMusicCurationDebugInformationForSongWithUID:(id)d reply:(id)reply
{
  replyCopy = reply;
  dCopy = d;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __100__PLPhotoAnalysisServiceClient_Graph__requestFlexMusicCurationDebugInformationForSongWithUID_reply___block_invoke;
  v11[3] = &unk_1E7577430;
  v12 = replyCopy;
  v9 = replyCopy;
  v10 = [(PLPhotoAnalysisServiceClient *)self remoteObjectProxyWithErrorHandler:v11];
  [v10 requestFlexMusicCurationDebugInformationForSongWithUID:dCopy context:requestContextDictionary reply:v9];
}

- (void)requestMusicCurationDebugInformationForAssetCollectionWithLocalIdentifier:(id)identifier reply:(id)reply
{
  replyCopy = reply;
  identifierCopy = identifier;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __119__PLPhotoAnalysisServiceClient_Graph__requestMusicCurationDebugInformationForAssetCollectionWithLocalIdentifier_reply___block_invoke;
  v11[3] = &unk_1E7577430;
  v12 = replyCopy;
  v9 = replyCopy;
  v10 = [(PLPhotoAnalysisServiceClient *)self remoteObjectProxyWithErrorHandler:v11];
  [v10 requestMusicCurationDebugInformationForAssetCollectionWithLocalIdentifier:identifierCopy context:requestContextDictionary reply:v9];
}

- (void)requestMusicCurationDebugInformationForSongWithAdamID:(id)d reply:(id)reply
{
  replyCopy = reply;
  dCopy = d;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __99__PLPhotoAnalysisServiceClient_Graph__requestMusicCurationDebugInformationForSongWithAdamID_reply___block_invoke;
  v11[3] = &unk_1E7577430;
  v12 = replyCopy;
  v9 = replyCopy;
  v10 = [(PLPhotoAnalysisServiceClient *)self remoteObjectProxyWithErrorHandler:v11];
  [v10 requestMusicCurationDebugInformationForSongWithAdamID:dCopy context:requestContextDictionary reply:v9];
}

- (void)requestPrecachingOfAudioDataForAdamIDs:(id)ds reply:(id)reply
{
  replyCopy = reply;
  dsCopy = ds;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84__PLPhotoAnalysisServiceClient_Graph__requestPrecachingOfAudioDataForAdamIDs_reply___block_invoke;
  v11[3] = &unk_1E7577430;
  v12 = replyCopy;
  v9 = replyCopy;
  v10 = [(PLPhotoAnalysisServiceClient *)self remoteObjectProxyWithErrorHandler:v11];
  [v10 requestPrecachingOfAudioDataForAdamIDs:dsCopy context:requestContextDictionary reply:v9];
}

- (void)requestMusicCacheStatusWithReply:(id)reply
{
  replyCopy = reply;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__PLPhotoAnalysisServiceClient_Graph__requestMusicCacheStatusWithReply___block_invoke;
  v8[3] = &unk_1E7577430;
  v9 = replyCopy;
  v6 = replyCopy;
  v7 = [(PLPhotoAnalysisServiceClient *)self remoteObjectProxyWithErrorHandler:v8];
  [v7 requestMusicCacheStatusWithContext:requestContextDictionary reply:v6];
}

- (void)requestSongsForAdamIDs:(id)ds options:(id)options reply:(id)reply
{
  replyCopy = reply;
  optionsCopy = options;
  dsCopy = ds;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __76__PLPhotoAnalysisServiceClient_Graph__requestSongsForAdamIDs_options_reply___block_invoke;
  v14[3] = &unk_1E7577430;
  v15 = replyCopy;
  v12 = replyCopy;
  v13 = [(PLPhotoAnalysisServiceClient *)self remoteObjectProxyWithErrorHandler:v14];
  [v13 requestSongsForAdamIDs:dsCopy options:optionsCopy context:requestContextDictionary reply:v12];
}

- (void)requestFlexMusicCurationForAssetLocalIdentifiers:(id)identifiers options:(id)options reply:(id)reply
{
  replyCopy = reply;
  optionsCopy = options;
  identifiersCopy = identifiers;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __102__PLPhotoAnalysisServiceClient_Graph__requestFlexMusicCurationForAssetLocalIdentifiers_options_reply___block_invoke;
  v14[3] = &unk_1E7577430;
  v15 = replyCopy;
  v12 = replyCopy;
  v13 = [(PLPhotoAnalysisServiceClient *)self remoteObjectProxyWithErrorHandler:v14];
  [v13 requestFlexMusicCurationForAssetLocalIdentifiers:identifiersCopy options:optionsCopy context:requestContextDictionary reply:v12];
}

- (void)requestFlexMusicCurationForAssetCollectionLocalIdentifier:(id)identifier options:(id)options reply:(id)reply
{
  replyCopy = reply;
  optionsCopy = options;
  identifierCopy = identifier;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __111__PLPhotoAnalysisServiceClient_Graph__requestFlexMusicCurationForAssetCollectionLocalIdentifier_options_reply___block_invoke;
  v14[3] = &unk_1E7577430;
  v15 = replyCopy;
  v12 = replyCopy;
  v13 = [(PLPhotoAnalysisServiceClient *)self remoteObjectProxyWithErrorHandler:v14];
  [v13 requestFlexMusicCurationForAssetCollectionLocalIdentifier:identifierCopy options:optionsCopy context:requestContextDictionary reply:v12];
}

- (void)requestMusicCurationForAssetLocalIdentifiers:(id)identifiers options:(id)options reply:(id)reply
{
  replyCopy = reply;
  optionsCopy = options;
  identifiersCopy = identifiers;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __98__PLPhotoAnalysisServiceClient_Graph__requestMusicCurationForAssetLocalIdentifiers_options_reply___block_invoke;
  v14[3] = &unk_1E7577430;
  v15 = replyCopy;
  v12 = replyCopy;
  v13 = [(PLPhotoAnalysisServiceClient *)self remoteObjectProxyWithErrorHandler:v14];
  [v13 requestMusicCurationForAssetLocalIdentifiers:identifiersCopy options:optionsCopy context:requestContextDictionary reply:v12];
}

- (void)requestMusicCurationForAssetCollectionLocalIdentifier:(id)identifier options:(id)options reply:(id)reply
{
  replyCopy = reply;
  optionsCopy = options;
  identifierCopy = identifier;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __107__PLPhotoAnalysisServiceClient_Graph__requestMusicCurationForAssetCollectionLocalIdentifier_options_reply___block_invoke;
  v14[3] = &unk_1E7577430;
  v15 = replyCopy;
  v12 = replyCopy;
  v13 = [(PLPhotoAnalysisServiceClient *)self remoteObjectProxyWithErrorHandler:v14];
  [v13 requestMusicCurationForAssetCollectionLocalIdentifier:identifierCopy options:optionsCopy context:requestContextDictionary reply:v12];
}

- (void)requestExternalAssetRelevanceProcessingWithReply:(id)reply
{
  replyCopy = reply;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88__PLPhotoAnalysisServiceClient_Graph__requestExternalAssetRelevanceProcessingWithReply___block_invoke;
  v11[3] = &unk_1E7577430;
  v6 = replyCopy;
  v12 = v6;
  v7 = [(PLPhotoAnalysisServiceClient *)self remoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __88__PLPhotoAnalysisServiceClient_Graph__requestExternalAssetRelevanceProcessingWithReply___block_invoke_2;
  v9[3] = &unk_1E7577480;
  v10 = v6;
  v8 = v6;
  [v7 requestExternalAssetRelevanceProcessingWithContext:requestContextDictionary reply:v9];
}

- (void)requestSyndicationProcessingWithOptions:(id)options reply:(id)reply
{
  replyCopy = reply;
  optionsCopy = options;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __85__PLPhotoAnalysisServiceClient_Graph__requestSyndicationProcessingWithOptions_reply___block_invoke;
  v14[3] = &unk_1E7577430;
  v9 = replyCopy;
  v15 = v9;
  v10 = [(PLPhotoAnalysisServiceClient *)self remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __85__PLPhotoAnalysisServiceClient_Graph__requestSyndicationProcessingWithOptions_reply___block_invoke_2;
  v12[3] = &unk_1E7577458;
  v13 = v9;
  v11 = v9;
  [v10 requestSyndicationProcessingWithOptions:optionsCopy context:requestContextDictionary reply:v12];
}

- (void)requestGenerateQuestionsWithOptions:(id)options reply:(id)reply
{
  replyCopy = reply;
  optionsCopy = options;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __81__PLPhotoAnalysisServiceClient_Graph__requestGenerateQuestionsWithOptions_reply___block_invoke;
  v14[3] = &unk_1E7577430;
  v9 = replyCopy;
  v15 = v9;
  v10 = [(PLPhotoAnalysisServiceClient *)self remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __81__PLPhotoAnalysisServiceClient_Graph__requestGenerateQuestionsWithOptions_reply___block_invoke_2;
  v12[3] = &unk_1E7577458;
  v13 = v9;
  v11 = v9;
  [v10 requestGenerateQuestionsWithOptions:optionsCopy context:requestContextDictionary reply:v12];
}

- (void)generateSuggestionsWithOptions:(id)options reply:(id)reply
{
  replyCopy = reply;
  optionsCopy = options;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __76__PLPhotoAnalysisServiceClient_Graph__generateSuggestionsWithOptions_reply___block_invoke;
  v14[3] = &unk_1E7577430;
  v9 = replyCopy;
  v15 = v9;
  v10 = [(PLPhotoAnalysisServiceClient *)self remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__PLPhotoAnalysisServiceClient_Graph__generateSuggestionsWithOptions_reply___block_invoke_2;
  v12[3] = &unk_1E7577458;
  v13 = v9;
  v11 = v9;
  [v10 generateSuggestionsWithOptions:optionsCopy context:requestContextDictionary reply:v12];
}

- (void)simulateMemoriesNotificationWithOptions:(id)options reply:(id)reply
{
  replyCopy = reply;
  optionsCopy = options;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __85__PLPhotoAnalysisServiceClient_Graph__simulateMemoriesNotificationWithOptions_reply___block_invoke;
  v14[3] = &unk_1E7577430;
  v9 = replyCopy;
  v15 = v9;
  v10 = [(PLPhotoAnalysisServiceClient *)self remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __85__PLPhotoAnalysisServiceClient_Graph__simulateMemoriesNotificationWithOptions_reply___block_invoke_2;
  v12[3] = &unk_1E7577458;
  v13 = v9;
  v11 = v9;
  [v10 simulateMemoriesNotificationWithOptions:optionsCopy context:requestContextDictionary reply:v12];
}

- (void)generateMemoriesWithOptions:(id)options reply:(id)reply
{
  replyCopy = reply;
  optionsCopy = options;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __73__PLPhotoAnalysisServiceClient_Graph__generateMemoriesWithOptions_reply___block_invoke;
  v14[3] = &unk_1E7577430;
  v9 = replyCopy;
  v15 = v9;
  v10 = [(PLPhotoAnalysisServiceClient *)self remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__PLPhotoAnalysisServiceClient_Graph__generateMemoriesWithOptions_reply___block_invoke_2;
  v12[3] = &unk_1E7577458;
  v13 = v9;
  v11 = v9;
  [v10 generateMemoriesWithOptions:optionsCopy context:requestContextDictionary reply:v12];
}

- (id)requestRepresentativeAssetsForAssetCollectionWithLocalIdentifier:(id)identifier options:(id)options error:(id *)error
{
  identifierCopy = identifier;
  optionsCopy = options;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__111939;
  v34 = __Block_byref_object_dispose__111940;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__111939;
  v28 = __Block_byref_object_dispose__111940;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__111939;
  v22 = __Block_byref_object_dispose__111940;
  v23 = 0;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __118__PLPhotoAnalysisServiceClient_Graph__requestRepresentativeAssetsForAssetCollectionWithLocalIdentifier_options_error___block_invoke;
  v17[3] = &unk_1E75773B8;
  v17[4] = &v24;
  v11 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v17];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __118__PLPhotoAnalysisServiceClient_Graph__requestRepresentativeAssetsForAssetCollectionWithLocalIdentifier_options_error___block_invoke_2;
  v16[3] = &unk_1E7577408;
  v16[4] = &v30;
  v16[5] = &v18;
  [v11 requestRepresentativeAssetsForAssetCollectionWithLocalIdentifier:identifierCopy options:optionsCopy context:requestContextDictionary reply:v16];

  v12 = v31[5];
  if (error && !v12)
  {
    v13 = v25[5];
    if (!v13)
    {
      v13 = v19[5];
    }

    *error = v13;
    v12 = v31[5];
  }

  v14 = v12;

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);

  return v14;
}

void __118__PLPhotoAnalysisServiceClient_Graph__requestRepresentativeAssetsForAssetCollectionWithLocalIdentifier_options_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (id)requestCuratedAssetsForAssetCollectionWithLocalIdentifier:(id)identifier duration:(unint64_t)duration options:(id)options error:(id *)error
{
  identifierCopy = identifier;
  optionsCopy = options;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__111939;
  v36 = __Block_byref_object_dispose__111940;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__111939;
  v30 = __Block_byref_object_dispose__111940;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__111939;
  v24 = __Block_byref_object_dispose__111940;
  v25 = 0;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __120__PLPhotoAnalysisServiceClient_Graph__requestCuratedAssetsForAssetCollectionWithLocalIdentifier_duration_options_error___block_invoke;
  v19[3] = &unk_1E75773B8;
  v19[4] = &v26;
  v13 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v19];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __120__PLPhotoAnalysisServiceClient_Graph__requestCuratedAssetsForAssetCollectionWithLocalIdentifier_duration_options_error___block_invoke_2;
  v18[3] = &unk_1E7577408;
  v18[4] = &v32;
  v18[5] = &v20;
  [v13 requestCuratedAssetsForAssetCollectionWithLocalIdentifier:identifierCopy duration:duration options:optionsCopy context:requestContextDictionary reply:v18];

  v14 = v33[5];
  if (error && !v14)
  {
    v15 = v27[5];
    if (!v15)
    {
      v15 = v21[5];
    }

    *error = v15;
    v14 = v33[5];
  }

  v16 = v14;

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v32, 8);

  return v16;
}

void __120__PLPhotoAnalysisServiceClient_Graph__requestCuratedAssetsForAssetCollectionWithLocalIdentifier_duration_options_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (id)requestCuratedAssetForAssetCollectionWithLocalIdentifier:(id)identifier referenceAssetLocalIdentifier:(id)localIdentifier options:(id)options error:(id *)error
{
  identifierCopy = identifier;
  localIdentifierCopy = localIdentifier;
  optionsCopy = options;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__111939;
  v37 = __Block_byref_object_dispose__111940;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__111939;
  v31 = __Block_byref_object_dispose__111940;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__111939;
  v25 = __Block_byref_object_dispose__111940;
  v26 = 0;
  requestContextDictionary = [(PLPhotoAnalysisServiceClient *)self requestContextDictionary];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __140__PLPhotoAnalysisServiceClient_Graph__requestCuratedAssetForAssetCollectionWithLocalIdentifier_referenceAssetLocalIdentifier_options_error___block_invoke;
  v20[3] = &unk_1E75773B8;
  v20[4] = &v27;
  v14 = [(PLPhotoAnalysisServiceClient *)self synchronousRemoteObjectProxyWithErrorHandler:v20];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __140__PLPhotoAnalysisServiceClient_Graph__requestCuratedAssetForAssetCollectionWithLocalIdentifier_referenceAssetLocalIdentifier_options_error___block_invoke_2;
  v19[3] = &unk_1E75773E0;
  v19[4] = &v33;
  v19[5] = &v21;
  [v14 requestCuratedAssetForAssetCollectionWithLocalIdentifier:identifierCopy referenceAssetLocalIdentifier:localIdentifierCopy options:optionsCopy context:requestContextDictionary reply:v19];

  v15 = v34[5];
  if (error && !v15)
  {
    v16 = v28[5];
    if (!v16)
    {
      v16 = v22[5];
    }

    *error = v16;
    v15 = v34[5];
  }

  v17 = v15;

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v33, 8);

  return v17;
}

void __140__PLPhotoAnalysisServiceClient_Graph__requestCuratedAssetForAssetCollectionWithLocalIdentifier_referenceAssetLocalIdentifier_options_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

@end