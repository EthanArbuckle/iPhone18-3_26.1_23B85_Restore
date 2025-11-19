@interface PGManager
+ (BOOL)geoServiceProviderDidChangeForGraph:(id)a3;
+ (id)_calendarEventsBetweenDate:(id)a3 andDate:(id)a4 atLocation:(id)a5 withPersonLocalIdentifiers:(id)a6 inPhotoLibrary:(id)a7 serviceManager:(id)a8 locationCache:(id)a9;
+ (id)_nodesOfClass:(id)a3 matchingNodes:(id)a4 inGraph:(id)a5;
+ (id)consistencyCheckResultOfGraph:(id)a3 andGraph:(id)a4 loggingConnection:(id)a5 progressBlock:(id)a6;
+ (id)consistencyIgnoredNodeDomainClasses;
+ (id)consistencyIgnoredNodeDomainCodes;
+ (id)defaultRulesWithOptions:(id)a3 graph:(id)a4;
+ (id)edgesByNodeFromEdges:(id)a3 andNode:(id)a4;
+ (id)exportableDictionaryFromKeywords:(id)a3;
+ (id)graphServicesURLWithPhotoLibrary:(id)a3;
+ (id)nodeDomainsFromGraph:(id)a3;
+ (id)nodesByClassFromGraph:(id)a3;
+ (id)nodesOfClass:(id)a3 matchingNode:(id)a4 inGraph:(id)a5;
+ (id)stringFromPGDuration:(unint64_t)a3;
+ (id)summaryCurationForHighlight:(id)a3;
+ (int64_t)_totalNumberOfIdenticalNodesFromNode1ByNode2:(id)a3 withNumberOfIdenticalNodesByDomain:(id)a4 loggingConnection:(id)a5 progressBlock:(id)a6;
+ (void)initialize;
- (BOOL)_addressesDidChangeBetweenAddressesInGraph:(id)a3 andAddressesInContacts:(id)a4 addressType:(unint64_t)a5 person:(id)a6 graph:(id)a7;
- (BOOL)_isReadyWithError:(id *)a3;
- (BOOL)_supportsSemanticalDedupingForMemory:(id)a3;
- (BOOL)copyGraphToURL:(id)a3;
- (BOOL)date:(id)a3 isEqualToDate:(id)a4;
- (BOOL)destroyValidationGraph;
- (BOOL)generateDefaultRulesForLibraryScopeWithLocalIdentifier:(id)a3 withOptions:(id)a4 error:(id *)a5;
- (BOOL)graphIsUsable:(id)a3 error:(id *)a4;
- (BOOL)homeWorkAddressesDidChangeForPersonInContact:(id)a3 andPersonNode:(id)a4 withHomeWorkNodesByPersonNode:(id)a5 graph:(id)a6;
- (BOOL)isInterestingForMoment:(id)a3;
- (BOOL)isSmartInterestingForMoment:(id)a3;
- (BOOL)mePersonContactIdentifierDidChangeWithGraphUpdate:(id)a3;
- (BOOL)saveGraphToURL:(id)a3;
- (BOOL)shouldValidateGraphConsistency;
- (BOOL)suggestsToStartSharedLibraryWithError:(id *)a3;
- (BOOL)swapInGraphAtURL:(id)a3 progressBlock:(id)a4 error:(id *)a5;
- (BOOL)updateGraph:(id)a3 withGraphUpdate:(id)a4 withRecipe:(id)a5 progressBlock:(id)a6;
- (CPAnalytics)analytics;
- (NSArray)availableMetricEvents;
- (NSDate)dateOfLastIncrementalUpdateInvocation;
- (NSURL)graphPersistenceParentDirectoryURL;
- (PGManager)init;
- (PGManager)initWithGraph:(id)a3 photoLibrary:(id)a4;
- (PGManager)initWithGraph:(id)a3 readonlyPhotoLibrary:(id)a4;
- (PGManager)initWithGraphPersistentStoreURL:(id)a3 photoLibrary:(id)a4 analytics:(id)a5 progressBlock:(id)a6;
- (PGManager)initWithImmutableGraph:(id)a3 photoLibrary:(id)a4;
- (PGManager)initWithPhotoLibrary:(id)a3 analytics:(id)a4 progressBlock:(id)a5;
- (PGManager)initWithPhotoLibrary:(id)a3 progressBlock:(id)a4;
- (PGManager)initWithReadonlyPhotoLibrary:(id)a3;
- (double)graphScoreForMoment:(id)a3;
- (double)libraryDuration;
- (double)neighborScoreForMoment:(id)a3;
- (double)targetCurationDurationWithCurationLength:(unint64_t)a3 customDuration:(double)result;
- (double)timeIntervalSinceLastGraphFullRebuild;
- (id)_changingPropertyKeysForPersonProperties:(id)a3 andPersonContactProperties:(id)a4;
- (id)_checkConsistencyOfGraph:(id)a3;
- (id)_collectionStatisticsForCurrentPhotoLibrary;
- (id)_curationDebugInformationForHighlight:(id)a3 options:(id)a4;
- (id)_dateFormatter;
- (id)_dayOfWeekStatisticsWithGraph:(id)a3;
- (id)_defaultStatisticsWithGraph:(id)a3 verbose:(BOOL)a4 forDiagnostics:(BOOL)a5;
- (id)_diagnosticSummaryInfoForMemory:(id)a3;
- (id)_domainLabelCountStatisticsWithGraph:(id)a3;
- (id)_entityTagsStatistics:(id)a3;
- (id)_extractDatesAndAssetCountsFromMemory:(id)a3;
- (id)_extractYearStatsFromOrderedCollectionFetchResults:(id)a3 fetchOptions:(id)a4 yearEntryKey:(id)a5 numberOfYearsEntryKey:(id)a6;
- (id)_fallbackCurationOfLength:(unint64_t)a3 forMemory:(id)a4 customDuration:(double)a5 curationContext:(id)a6;
- (id)_featureNodesForEncodedFeatures:(id)a3 inGraph:(id)a4;
- (id)_fetchResultMatchingInternalPredicate:(id)a3;
- (id)_getDefaultOutputPathForMetadataSnapshot;
- (id)_highlightEstimatesStatisticsWithCurationContext:(id)a3;
- (id)_highlightTitleStatisticsWithGraph:(id)a3 titleGenerationContext:(id)a4;
- (id)_homeWorkNodesByPersonNodeForContactIdentifiers:(id)a3 inGraph:(id)a4;
- (id)_interestingStatisticsWithGraph:(id)a3;
- (id)_mobilityStatisticsWithGraph:(id)a3;
- (id)_momentNodesFromMemory:(id)a3 inGraph:(id)a4;
- (id)_momentsStatisticsForCurrentPhotoLibrary;
- (id)_moodStatisticsWithGraph:(id)a3;
- (id)_oneOnOneTripsWithGraph:(id)a3;
- (id)_partOfDayStatisticsWithGraph:(id)a3 titleGenerationContext:(id)a4;
- (id)_peopleNameBiologicalSexStatisticsWithGraph:(id)a3;
- (id)_peopleRelationshipsStatisticsWithGraph:(id)a3 includingDebugInfo:(BOOL)a4;
- (id)_peopleVisionAgeStatisticsWithGraph:(id)a3;
- (id)_peopleVisionBiologicalSexStatisticsWithGraph:(id)a3;
- (id)_poiStatisticsWithGraph:(id)a3;
- (id)_recentlyUsedSongAdamIDsFromCurationOptions:(id)a3;
- (id)_sanitizeGraphDataDictionaryForArchiving:(id)a3 referencedMemory:(id)a4;
- (id)_sharedLibraryStatistics:(id)a3;
- (id)_snapshotFilenameForLookupKey:(id)a3;
- (id)_socialGroupsDebugStatistics:(id)a3;
- (id)_socialGroupsDebugStringWithGraph:(id)a3;
- (id)_socialGroupsStatistics:(id)a3;
- (id)_sortedTextFeaturesFromTextFeatures:(id)a3;
- (id)_stringDescriptionForDisambiguatedLocationsWithGraph:(id)a3;
- (id)_stringDescriptionForDisambiguatedPOIsInMomentNodes:(id)a3;
- (id)_stringDescriptionForInterestingAreas:(id)a3;
- (id)_stringDescriptionForInterestingCities:(id)a3;
- (id)_stringDescriptionForLanguagesWithGraph:(id)a3;
- (id)_stringDescriptionForLocationsWithGraph:(id)a3;
- (id)_stringDescriptionForMeNode:(id)a3;
- (id)_stringDescriptionForMeaningfulEvents:(id)a3 isTrip:(BOOL)a4 forDiagnostics:(BOOL)a5 titleGenerationContext:(id)a6;
- (id)_stringDescriptionForMemoriesNotification;
- (id)_stringDescriptionForPeopleEventsWithGraph:(id)a3;
- (id)_stringDescriptionForPetsWithGraph:(id)a3;
- (id)_stringDescriptionForPublicEventsWithGraph:(id)a3 verbose:(BOOL)a4;
- (id)_stringDescriptionForSocialGroups:(id)a3 includeImportance:(BOOL)a4;
- (id)_stringDescriptionForUrbanCities:(id)a3;
- (id)_summaryOfInferencesForMomentNodes:(id)a3 inGraph:(id)a4;
- (id)_titleStatisticsWithGraph:(id)a3 titleGenerationContext:(id)a4;
- (id)_yearsStatisticsForCurrentPhotoLibrary;
- (id)allSocialGroupsForMemberLocalIdentifier:(id)a3 options:(id)a4;
- (id)assetCollectionFingerprintsWithVersion:(int64_t)a3 forAssetCollections:(id)a4 withTransformers:(id)a5 error:(id *)a6;
- (id)assetCollectionsForPersonLocalIdentifiers:(id)a3;
- (id)assetFingerprintsWithVersion:(int64_t)a3 forAssets:(id)a4 withTransformers:(id)a5 error:(id *)a6;
- (id)assetIdentifiersForPersonLocalIdentifiers:(id)a3;
- (id)assetSearchKeywordsByMomentUUIDWithEventUUIDs:(id)a3 ofType:(unint64_t)a4 progressReporter:(id)a5;
- (id)blockedFeatures;
- (id)curatedKeyAssetForAssetCollection:(id)a3 curatedAssetCollection:(id)a4 options:(id)a5 curationContext:(id)a6;
- (id)curationDebugInformationForAssetCollection:(id)a3 options:(id)a4 curationContext:(id)a5;
- (id)curationOfLength:(unint64_t)a3 forMemory:(id)a4 customDuration:(double)a5 useAssetEligibility:(BOOL)a6 curationContext:(id)a7;
- (id)defaultGraphExportFullPath;
- (id)defaultPeopleClustersExportIntermediatePath;
- (id)diagnosticsSummaryInfoOnExistingMemoriesForCurrentPhotoLibrary;
- (id)fastGraphExportFullPath;
- (id)graphAndAlgorithmVersionsWithGraph:(id)a3;
- (id)graphForLibraryFullAnalysisAtURL:(id)a3 alreadyIngestedMomentIdentifiers:(id *)a4 alreadyIngestedHighlightIdentifiers:(id *)a5 progressBlock:(id)a6 error:(id *)a7;
- (id)graphPersistenceParentDirectoryCandidateURLs;
- (id)graphPersistentStoreURL;
- (id)graphUpdateForContactsChangesWithProgressReporter:(id)a3;
- (id)highlightDebugInformationWithHighlight:(id)a3;
- (id)homeCircularRegions;
- (id)initForTesting;
- (id)instantiateMutableGraphWithError:(id *)a3;
- (id)keywordsForAssetCollection:(id)a3 relatedType:(unint64_t)a4;
- (id)libraryStatisticsForCurrentPhotoLibrary;
- (id)maximalSocialGroupsOverlappingMemberLocalIdentifiers:(id)a3;
- (id)memoryDebugInformationWithMoments:(id)a3 meaningLabels:(id)a4;
- (id)momentLocalIdentifiersInDateInterval:(id)a3 error:(id *)a4;
- (id)musicCurationInflationContextWithInflationOptions:(id)a3 error:(id *)a4;
- (id)musicCuratorContextWithCurationOptions:(id)a3 error:(id *)a4;
- (id)musicCuratorContextWithRecentlyUsedSongAdamIDs:(id)a3 error:(id *)a4;
- (id)newSearchComputationCache;
- (id)performerIdentifiersForMomentUUIDs:(id)a3;
- (id)performerIdentifiersForMomentUUIDs:(id)a3 withCategoryNames:(id)a4;
- (id)processSubdirectoryName;
- (id)recentFrequentLocationRegions;
- (id)relationshipInferencesForPersonLocalIdentifiers:(id)a3;
- (id)searchKeywordsByEventWithUUIDs:(id)a3 ofType:(unint64_t)a4 progressReporter:(id)a5;
- (id)searchMetadataWithOptions:(id)a3 progressReporter:(id)a4;
- (id)searchSynonymsDictionariesWithProgressReporter:(id)a3;
- (id)searchableAssetUUIDsBySocialGroupWithEventUUIDs:(id)a3 ofType:(unint64_t)a4 isFullAnalysis:(BOOL)a5 progressReporter:(id)a6;
- (id)sharingMessageSuggestionDebugInformationForAssetCollection:(id)a3;
- (id)sharingSuggestionDebugInformationForSuggestion:(id)a3;
- (id)snapshotOuputFilePathURLForKey:(id)a3;
- (id)socialGroupsOverlappingMemberLocalIdentifiers:(id)a3;
- (id)sortedArrayForPersonLocalIdentifiers:(id)a3;
- (id)statisticsWithTypeStrings:(id)a3;
- (id)suggestedContributionsForAssetsMetadata:(id)a3;
- (id)suggestedMomentLocalIdentifiersForPersonLocalIdentifiers:(id)a3 withOptions:(id)a4 error:(id *)a5;
- (id)suggestedPersonsForHome;
- (id)suggestedPersonsForSharedLibraryContentInclusion;
- (id)suggestedPersonsForSharedLibraryParticipants;
- (id)suggestedRecipientsForAssetLocalIdentifiers:(id)a3 momentLocalIdentifiers:(id)a4 sharingOptions:(id)a5;
- (id)summaryOfInferencesPerMomentByLocalIdentifiers:(id)a3 error:(id *)a4;
- (id)summaryOfInferencesPerMomentInDateInterval:(id)a3 error:(id *)a4;
- (id)textFeaturesForMomentLocalIdentifiers:(id)a3;
- (id)titleTupleForAlbum:(id)a3 format:(int64_t)a4 error:(id *)a5;
- (id)titleTupleForAssetCollection:(id)a3 format:(int64_t)a4 error:(id *)a5;
- (id)titleTupleForMoment:(id)a3 format:(int64_t)a4 error:(id *)a5;
- (id)titleTupleForMomentList:(id)a3 format:(int64_t)a4 error:(id *)a5;
- (id)titleTupleForPersonLocalIdentifiers:(id)a3 format:(int64_t)a4 error:(id *)a5;
- (id)utilityAssetInformation;
- (id)workingContext;
- (id)workingContextForEnrichment;
- (id)workingContextForExternalRelevance;
- (id)workingContextForGraphConsistencyCheck;
- (id)workingContextForMemories;
- (id)workingContextForMetrics;
- (id)workingContextForRelated;
- (id)workingContextForSuggestions;
- (id)workingContextForUpNext;
- (id)zeroKeywordsWithOptions:(id)a3 progressReporter:(id)a4;
- (int64_t)performLibraryAnalysisWithGraphURL:(id)a3 withRecipe:(id)a4 processedGraphUpdate:(id *)a5 progressBlock:(id)a6;
- (int64_t)validatePHObject:(id)a3 featureAggregationValidator:(id)a4 assetFetchOptionPropertySet:(id)a5 error:(id *)a6;
- (int64_t)validatePHObject:(id)a3 graphRelationsFeatureValidator:(id)a4 error:(id *)a5;
- (unint64_t)_numberOfAssetsMatchingInternalPredicate:(id)a3;
- (unint64_t)_numberOfFamilyHolidayMomentsWithGraph:(id)a3;
- (unint64_t)_numberOfMomentsOverWeekendsWithGraph:(id)a3;
- (unint64_t)_numberOfNightOutMomentsWithGraph:(id)a3;
- (unint64_t)_sexHintForGivenNameOfContactForIdentifier:(id)a3 inGraph:(id)a4;
- (unint64_t)medianValueFromUnsignedItegerArray:(id)a3;
- (unint64_t)numberOfEntities;
- (void)_invalidatePersistentCachesBeforeDateWithTimestamp:(double)a3;
- (void)_invalidatePersistentCachesForGeoServiceProviderChange;
- (void)_invalidatePersistentCachesIncludingPublicEvents:(BOOL)a3;
- (void)_invalidateTransientCaches;
- (void)_precachePersonsInformationFromGraph:(id)a3 progressBlock:(id)a4;
- (void)_unloadGraph;
- (void)_waitGraphUntilFinishedUsingBlock:(id)a3;
- (void)_waitLibraryUpdateUntilFinishedUsingBlock:(id)a3;
- (void)commonInitWithPhotoLibrary:(id)a3 progressBlock:(id)a4;
- (void)legacyPerformAsynchronousBarrierGraphWriteUsingBlock:(id)a3;
- (void)loadGraphWithProgressBlock:(id)a3;
- (void)matchWithVisualFormat:(id)a3 elements:(id)a4 usingBlock:(id)a5;
- (void)matchWithVisualFormat:(id)a3 usingBlock:(id)a4;
- (void)notifyCoalescingBlocksGraphAnalysisFinished:(BOOL)a3 error:(id)a4;
- (void)performAsynchronousGraphBarrierUsingBlock:(id)a3;
- (void)performAsynchronousGraphWriteUsingBlock:(id)a3;
- (void)performAsynchronousNotification:(id)a3;
- (void)performFullLibraryAnalysisInGraph:(id)a3 withRecipe:(id)a4 withAlreadyIngestedMomentIdentifiers:(id)a5 alreadyIngestedHighlightIdentifiers:(id)a6 processedGraphUpdate:(id *)a7 progressBlock:(id)a8;
- (void)performSynchronousConcurrentGraphReadUsingBlock:(id)a3;
- (void)regenerateMemoriesOfCategory:(unint64_t)a3 progressReporter:(id)a4 completionBlock:(id)a5;
- (void)registerCoalescingBlockWhenGraphAnalysisFinishes:(id)a3;
- (void)reportMetricsLogWithConsistencyCheckResult:(id)a3 loggingConnection:(id)a4;
- (void)setGraph:(id)a3;
- (void)setGraphInfoDateOfLastIncrementalUpdateInvocationWithDate:(id)a3 completionBlock:(id)a4;
- (void)setMutableGraph:(id)a3;
- (void)startGraphUpdate:(id)a3 progressBlock:(id)a4 completionBlock:(id)a5;
- (void)startLibraryAnalysisWithRecipe:(id)a3 progressBlock:(id)a4 keepExistingGraph:(BOOL)a5 completionBlock:(id)a6;
- (void)unloadGraph;
- (void)updateGraphWithRecipe:(id)a3 keepExistingGraph:(BOOL)a4 progressBlock:(id)a5 completionBlock:(id)a6;
- (void)validateGraphConsistencyIfNeededWithProgressBlock:(id)a3;
- (void)waitUntilFinishedUsingBlock:(id)a3;
@end

@implementation PGManager

- (id)textFeaturesForMomentLocalIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__PGManager_Sharing__textFeaturesForMomentLocalIdentifiers___block_invoke;
  v11[3] = &unk_27888A4D0;
  v12 = v4;
  v13 = self;
  v6 = v5;
  v14 = v6;
  v7 = v4;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v11];
  v8 = v14;
  v9 = v6;

  return v6;
}

void __60__PGManager_Sharing__textFeaturesForMomentLocalIdentifiers___block_invoke(id *a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a1[4], "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = a1[4];
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [MEMORY[0x277CD9918] uuidFromLocalIdentifier:*(*(&v18 + 1) + 8 * v9)];
        [v4 addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v7);
  }

  v11 = [v3 graph];
  v12 = [PGGraphMomentNodeCollection momentNodesForArrayOfUUIDs:v4 inGraph:v11];

  if ([v12 count])
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __60__PGManager_Sharing__textFeaturesForMomentLocalIdentifiers___block_invoke_295;
    v16[3] = &unk_278889290;
    v17 = a1[6];
    [v12 enumerateNodesUsingBlock:v16];
    v13 = v17;
  }

  else
  {
    v13 = [a1[5] suggestionsLoggingConnection];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = a1[4];
      *buf = 138412290;
      v23 = v14;
      _os_log_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_DEFAULT, "Cannot get text features for moments %@ - no moment node found", buf, 0xCu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __60__PGManager_Sharing__textFeaturesForMomentLocalIdentifiers___block_invoke_295(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [PGTextFeatureGenerator alloc];
  v5 = [MEMORY[0x277CBEB98] setWithObject:v3];
  v6 = [v3 graph];
  v7 = [(PGTextFeatureGenerator *)v4 initWithMomentNodes:v5 graph:v6];

  v8 = [(PGTextFeatureGenerator *)v7 knowledgeFeatures];
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      v14 = 0;
      do
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v19 + 1) + 8 * v14) encodedData];
        [v9 addObject:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v16 = *(a1 + 32);
  v17 = [v3 localIdentifier];
  [v16 setObject:v9 forKeyedSubscript:v17];

  v18 = *MEMORY[0x277D85DE8];
}

- (id)recentFrequentLocationRegions
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__PGManager_Sharing__recentFrequentLocationRegions__block_invoke;
  v7[3] = &unk_27888A638;
  v4 = v3;
  v8 = v4;
  v9 = self;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v7];
  v5 = v4;

  return v4;
}

void __51__PGManager_Sharing__recentFrequentLocationRegions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 graph];
  v5 = [(PGGraphNodeCollection *)PGGraphFrequentLocationNodeCollection nodesInGraph:v4];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = [MEMORY[0x277CBEAA8] distantPast];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __51__PGManager_Sharing__recentFrequentLocationRegions__block_invoke_2;
  v18[3] = &unk_27887F098;
  v18[4] = &v19;
  [v5 enumerateNodesUsingBlock:v18];
  v6 = v20[5];
  v7 = [MEMORY[0x277CBEAA8] distantPast];
  LOBYTE(v6) = [v6 isEqualToDate:v7];

  if ((v6 & 1) == 0)
  {
    v8 = [v20[5] dateByAddingTimeInterval:-7889400.0];
    v9 = objc_alloc(MEMORY[0x277CCA970]);
    v10 = [v9 initWithStartDate:v8 endDate:v20[5]];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __51__PGManager_Sharing__recentFrequentLocationRegions__block_invoke_3;
    v14[3] = &unk_27887F0C0;
    v11 = v10;
    v15 = v11;
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v16 = v12;
    v17 = v13;
    [v5 enumerateNodesUsingBlock:v14];
  }

  _Block_object_dispose(&v19, 8);
}

void __51__PGManager_Sharing__recentFrequentLocationRegions__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v7 = [a2 universalEndDate];
  v4 = [v3 laterDate:v7];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __51__PGManager_Sharing__recentFrequentLocationRegions__block_invoke_3(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 universalDateInterval];
  v5 = [v4 intersectsDateInterval:*(a1 + 32)];

  if (v5)
  {
    v6 = [v3 addressNode];
    if (v6)
    {
      v7 = objc_alloc(MEMORY[0x277CBFBC8]);
      [v6 coordinate];
      v9 = v8;
      v11 = v10;
      v12 = [v6 description];
      v13 = [v7 initWithCenter:v12 radius:v9 identifier:{v11, 150.0}];

      [*(a1 + 40) addObject:v13];
    }

    else
    {
      v14 = [*(a1 + 48) graphLoggingConnection];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        v16 = 136315395;
        v17 = "[PGManager(Sharing) recentFrequentLocationRegions]_block_invoke_3";
        v18 = 2113;
        v19 = v3;
        _os_log_fault_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_FAULT, "%s: frequent location skipped due to missing address node edge: %{private}@", &v16, 0x16u);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)homeCircularRegions
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(PGManager *)self serviceManager];
  if (!v4)
  {
    __assert_rtn("[PGManager(Sharing) homeCircularRegions]", "PGManager+Sharing.m", 270, "serviceManager != nil");
  }

  v5 = v4;
  v6 = [v4 mePerson];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 countOfAddressesOfType:0];
    v9 = [(PGManager *)self graphLoggingConnection];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v20 = "[PGManager(Sharing) homeCircularRegions]";
      v21 = 2048;
      v22 = v8;
      _os_log_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_DEFAULT, "%s: Found %zu potential home addresses", buf, 0x16u);
    }

    v10 = [(PGManager *)self locationCache];
    [v7 prefetchPersonAddressesIfNeededWithLocationCache:v10];

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __41__PGManager_Sharing__homeCircularRegions__block_invoke;
    v17[3] = &unk_27887F070;
    v11 = v3;
    v18 = v11;
    [v7 enumerateAddressesOfType:0 asPlacemarkWithBlock:v17];
    v12 = [(PGManager *)self graphLoggingConnection];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v11 count];
      *buf = 136315394;
      v20 = "[PGManager(Sharing) homeCircularRegions]";
      v21 = 2048;
      v22 = v13;
      _os_log_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_DEFAULT, "%s: Created %zu home circular regions", buf, 0x16u);
    }

    v14 = v18;
  }

  else
  {
    v14 = [(PGManager *)self graphLoggingConnection];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v20 = "[PGManager(Sharing) homeCircularRegions]";
      _os_log_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_DEFAULT, "%s: No me person found, not returning any home circular regions", buf, 0xCu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return v3;
}

void __41__PGManager_Sharing__homeCircularRegions__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 region];
  [v2 addObject:v3];
}

- (id)suggestedMomentLocalIdentifiersForPersonLocalIdentifiers:(id)a3 withOptions:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __97__PGManager_Sharing__suggestedMomentLocalIdentifiersForPersonLocalIdentifiers_withOptions_error___block_invoke;
  v13[3] = &unk_27887F048;
  v10 = v8;
  v14 = v10;
  v15 = &v23;
  v16 = &v17;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v13];
  if (a5)
  {
    *a5 = v18[5];
  }

  v11 = [v24[5] allObjects];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v11;
}

void __97__PGManager_Sharing__suggestedMomentLocalIdentifiersForPersonLocalIdentifiers_withOptions_error___block_invoke(void *a1, void *a2)
{
  v25 = [a2 graph];
  v3 = [PGGraphPersonNodeCollection personNodesForArrayOfLocalIdentifiers:a1[4] inGraph:?];
  if ([v3 count])
  {
    v4 = [v3 momentNodes];
    v5 = [v4 count];
    v6 = *(a1[5] + 8);
    v7 = *(v6 + 40);
    if (v5)
    {
      v8 = [v4 localIdentifiers];
      [v7 unionSet:v8];

      v9 = [PGGraphHighlightTypeNodeCollection concludedTripTypeNodesInGraph:v25];
      v10 = [v9 highlightGroupNodes];
      v11 = [v4 highlightNodes];
      v12 = [v11 highlightGroupNodes];

      v13 = [v10 collectionByIntersecting:v12];
      v14 = *(*(a1[5] + 8) + 40);
      v15 = [v13 momentNodes];
      v16 = [v15 localIdentifiers];
      [v14 unionSet:v16];
    }

    else
    {
      *(v6 + 40) = 0;

      v22 = MEMORY[0x277CCA9B8];
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"No moment nodes found for persons with local identifiers: %@", a1[4]];
      v23 = [v22 errorWithDescription:v9];
      v24 = *(a1[6] + 8);
      v10 = *(v24 + 40);
      *(v24 + 40) = v23;
    }
  }

  else
  {
    v17 = *(a1[5] + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = 0;

    v19 = MEMORY[0x277CCA9B8];
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"No person nodes found for local identifiers: %@", a1[4]];
    v20 = [v19 errorWithDescription:v4];
    v21 = *(a1[6] + 8);
    v9 = *(v21 + 40);
    *(v21 + 40) = v20;
  }
}

- (BOOL)generateDefaultRulesForLibraryScopeWithLocalIdentifier:(id)a3 withOptions:(id)a4 error:(id *)a5
{
  v35[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(PGManager *)self photoLibrary];
  v11 = [v10 librarySpecificFetchOptions];
  v12 = MEMORY[0x277CD98A8];
  v35[0] = v8;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
  v14 = [v12 fetchLibraryScopesWithLocalIdentifiers:v13 options:v11];

  v15 = [v14 firstObject];
  if (v15)
  {
    v16 = [MEMORY[0x277CD98C0] fetchLibraryScopeRulesForLibraryScope:v15 options:v11];
    if ([v16 count])
    {
      if (a5)
      {
        v17 = MEMORY[0x277CCA9B8];
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Library scope already has existing rules: %@", v16];
        *a5 = [v17 errorWithDescription:v18];
      }

      v19 = 0;
    }

    else
    {
      v29 = 0;
      v30 = &v29;
      v31 = 0x3032000000;
      v32 = __Block_byref_object_copy_;
      v33 = __Block_byref_object_dispose_;
      v34 = 0;
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __95__PGManager_Sharing__generateDefaultRulesForLibraryScopeWithLocalIdentifier_withOptions_error___block_invoke;
      v26[3] = &unk_278888EB8;
      v28 = &v29;
      v26[4] = self;
      v27 = v9;
      [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v26];
      if ([v30[5] count])
      {
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __95__PGManager_Sharing__generateDefaultRulesForLibraryScopeWithLocalIdentifier_withOptions_error___block_invoke_2;
        v23[3] = &unk_27888A700;
        v24 = v15;
        v25 = &v29;
        v19 = [v10 performChangesAndWait:v23 error:a5];
      }

      else
      {
        v19 = 1;
      }

      _Block_object_dispose(&v29, 8);
    }

    goto LABEL_13;
  }

  if (a5)
  {
    v20 = MEMORY[0x277CCA9B8];
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot find library scope for identifier: %@", v8];
    [v20 errorWithDescription:v16];
    *a5 = v19 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v19 = 0;
LABEL_14:

  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

void __95__PGManager_Sharing__generateDefaultRulesForLibraryScopeWithLocalIdentifier_withOptions_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = objc_opt_class();
  v6 = a1[5];
  v10 = [v4 graph];

  v7 = [v5 defaultRulesWithOptions:v6 graph:v10];
  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void __95__PGManager_Sharing__generateDefaultRulesForLibraryScopeWithLocalIdentifier_withOptions_error___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CD98B0] changeRequestForLibraryScope:*(a1 + 32)];
  if ([*(a1 + 32) autoSharePolicy] != 2)
  {
    [v2 setAutoSharePolicy:2];
  }

  [v2 updateWithCustomRules:*(*(*(a1 + 40) + 8) + 40)];
}

- (id)suggestedContributionsForAssetsMetadata:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PGManager *)self suggestionsLoggingConnection];
  v6 = objc_opt_new();
  v7 = v5;
  v8 = os_signpost_id_generate(v7);
  v9 = v7;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "SuggestedContribution", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v11 = mach_absolute_time();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v31 = v4;
    _os_log_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Asking for contributions for metadata: %{private}@", buf, 0xCu);
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __62__PGManager_Sharing__suggestedContributionsForAssetsMetadata___block_invoke;
  v24[3] = &unk_27888A408;
  v25 = v4;
  v12 = v10;
  v26 = v12;
  v27 = self;
  v13 = v6;
  v28 = v13;
  v14 = v4;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v24];
  v15 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v18 = v12;
  v19 = v18;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v19, OS_SIGNPOST_INTERVAL_END, v8, "SuggestedContribution", "", buf, 2u);
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v31 = "SuggestedContribution";
    v32 = 2048;
    v33 = ((((v15 - v11) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v19, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v20 = v28;
  v21 = v13;

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

void __62__PGManager_Sharing__suggestedContributionsForAssetsMetadata___block_invoke(uint64_t a1, void *a2)
{
  v84 = *MEMORY[0x277D85DE8];
  v3 = [a2 graph];
  v4 = [PGShareBackSuggesterInput suggesterInputsWithDictionaries:*(a1 + 32)];
  v5 = *(a1 + 40);
  v6 = [*(a1 + 48) photoLibrary];
  v7 = [PGShareBackSuggester shareBackSuggesterForCMMWithLoggingConnection:v5 photoLibrary:v6 graph:v3];

  v77 = 0;
  v8 = [v7 suggesterResultsForUnclusteredSuggesterInputs:v4 inGraph:v3 error:&v77];
  v9 = v77;
  v10 = [PGShareBackSuggesterResult momentNodesForSuggesterResults:v8];
  v11 = [v10 mutableCopy];

  if ([v11 count] < 2)
  {
    v59 = v7;
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x277D3AC30]) initWithDistanceBlock:&__block_literal_global_1138];
    [v12 setMaximumDistance:864000.0];
    [v12 setMinimumNumberOfObjects:2];
    v13 = [v11 allObjects];
    v14 = [v12 performWithDataset:v13 progressBlock:0];

    if (![v14 count])
    {
      v31 = *(a1 + 40);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v83 = v11;
        _os_log_impl(&dword_22F0FC000, v31, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] None of the matched moment nodes were contiguous: %{private}@", buf, 0xCu);
      }

      goto LABEL_26;
    }

    v57 = v3;
    v59 = v7;
    v52 = v9;
    v53 = v4;
    v54 = [v11 mutableCopy];
    v15 = objc_opt_new();
    v16 = v11;
    v11 = v15;

    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v17 = v14;
    v18 = [v17 countByEnumeratingWithState:&v73 objects:v81 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v74;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v74 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [*(*(&v73 + 1) + 8 * i) objects];
          [v11 addObjectsFromArray:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v73 objects:v81 count:16];
      }

      while (v19);
    }

    [v54 minusSet:v11];
    if ([v54 count])
    {
      v23 = *(a1 + 40);
      v3 = v57;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v83 = v54;
        _os_log_impl(&dword_22F0FC000, v23, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Discarding non contiguous moments: %{private}@", buf, 0xCu);
      }

      v9 = v52;
      v4 = v53;
      v7 = v59;
LABEL_26:

      goto LABEL_27;
    }

    v56 = v8;
    v33 = objc_alloc_init(MEMORY[0x277CCA940]);
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v34 = v11;
    v35 = [v34 countByEnumeratingWithState:&v69 objects:v80 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v70;
      do
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v70 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = *(*(&v69 + 1) + 8 * j);
          if ([v39 isPartOfTrip])
          {
            v40 = [v39 highlightGroupNode];
            [v33 addObject:v40];
          }
        }

        v36 = [v34 countByEnumeratingWithState:&v69 objects:v80 count:16];
      }

      while (v36);
    }

    v60 = v34;

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v41 = v33;
    v42 = [v41 countByEnumeratingWithState:&v65 objects:v79 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v66;
      do
      {
        for (k = 0; k != v43; ++k)
        {
          if (*v66 != v44)
          {
            objc_enumerationMutation(v41);
          }

          v46 = *(*(&v65 + 1) + 8 * k);
          v47 = [v41 countForObject:v46];
          if (v47 >= 2)
          {
            v48 = v47;
            v49 = [v46 eventEnrichmentMomentNodes];
            if ([v49 count] > v48)
            {
              v50 = *(a1 + 40);
              if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138477827;
                v83 = v46;
                _os_log_impl(&dword_22F0FC000, v50, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Adding moment nodes from trip %{private}@", buf, 0xCu);
              }

              v51 = [v49 temporarySet];
              [v60 unionSet:v51];
            }
          }
        }

        v43 = [v41 countByEnumeratingWithState:&v65 objects:v79 count:16];
      }

      while (v43);
    }

    v8 = v56;
    v3 = v57;
    v9 = v52;
    v4 = v53;
    v11 = v60;
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v12 = v11;
  v24 = [v12 countByEnumeratingWithState:&v61 objects:v78 count:16];
  if (v24)
  {
    v25 = v24;
    v55 = v8;
    v58 = v3;
    v26 = v9;
    v27 = *v62;
    do
    {
      for (m = 0; m != v25; ++m)
      {
        if (*v62 != v27)
        {
          objc_enumerationMutation(v12);
        }

        v29 = *(a1 + 56);
        v30 = [*(*(&v61 + 1) + 8 * m) localIdentifier];
        [v29 addObject:v30];
      }

      v25 = [v12 countByEnumeratingWithState:&v61 objects:v78 count:16];
    }

    while (v25);
    v11 = v12;
    v3 = v58;
    v7 = v59;
    v9 = v26;
    v8 = v55;
  }

  else
  {
    v11 = v12;
    v7 = v59;
  }

LABEL_27:

  v32 = *MEMORY[0x277D85DE8];
}

void __62__PGManager_Sharing__suggestedContributionsForAssetsMetadata___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 universalStartDate];
  v6 = [v4 universalStartDate];

  [v5 timeIntervalSinceDate:v6];
}

- (id)suggestedRecipientsForAssetLocalIdentifiers:(id)a3 momentLocalIdentifiers:(id)a4 sharingOptions:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PGManager *)self suggestionsLoggingConnection];
  v12 = os_signpost_id_generate(v11);
  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "SuggestedRecipientsForAssetLocalIdentifiers", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v26 = mach_absolute_time();
  v15 = [(PGManager *)self workingContextForSuggestions];
  v16 = [[PGSharingManager alloc] initWithWorkingContext:v15];
  v17 = [(PGManager *)self suggestionsLoggingConnection];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v29 = v10;
    v30 = 2112;
    v31 = *&v8;
    v32 = 2112;
    v33 = v9;
    _os_log_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Asking for recipient suggestions from options %@, for assets %@ moments %@", buf, 0x20u);
  }

  v18 = [(PGSharingManager *)v16 suggestionResultsForAssetLocalIdentifiers:v8 momentLocalIdentifiers:v9 options:v10];
  v19 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v22 = v14;
  v23 = v22;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v23, OS_SIGNPOST_INTERVAL_END, v12, "SuggestedRecipientsForAssetLocalIdentifiers", "", buf, 2u);
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v29 = "SuggestedRecipientsForAssetLocalIdentifiers";
    v30 = 2048;
    v31 = ((((v19 - v26) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v23, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v24 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)defaultRulesWithOptions:(id)a3 graph:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [v4 partners];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v18 + 1) + 8 * i) localIdentifier];
        if ([v11 length])
        {
          v12 = [MEMORY[0x277CD9938] uuidFromLocalIdentifier:v11];
          v13 = objc_alloc_init(MEMORY[0x277CD98B8]);
          [v13 setCriteria:1];
          v22 = v12;
          v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
          [v13 setPersonUUIDs:v14];

          v15 = objc_alloc_init(MEMORY[0x277CD98C0]);
          [v15 addCondition:v13];
          [v5 addObject:v15];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v8);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)regenerateMemoriesOfCategory:(unint64_t)a3 progressReporter:(id)a4 completionBlock:(id)a5
{
  v8 = a4;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __92__PGManager_MemoriesPrivate__regenerateMemoriesOfCategory_progressReporter_completionBlock___block_invoke;
  v12[3] = &unk_27887F188;
  v12[4] = self;
  v13 = v8;
  v14 = v9;
  v15 = a3;
  v10 = v9;
  v11 = v8;
  [(PGManager *)self performAsynchronousGraphWriteUsingBlock:v12];
}

void __92__PGManager_MemoriesPrivate__regenerateMemoriesOfCategory_progressReporter_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9 = 0;
  v5 = [v4 instantiateMutableGraphWithError:&v9];
  v6 = v9;
  if (v5)
  {
    [v5 enableInTransactionCheck];
    [v5 enterBatch];
    v7 = [[PGGraphBuilder alloc] initWithGraph:v5 manager:v3];
    v8 = [*(a1 + 40) childProgressReporterFromStart:0.1 toEnd:1.0];
    [PGGraphIngestMemoryProcessor regenerateMemoriesOfCategory:*(a1 + 56) withGraphBuilder:v7 progressReporter:v8];
    [v5 leaveBatch];
  }

  (*(*(a1 + 48) + 16))();
}

- (id)_fallbackCurationOfLength:(unint64_t)a3 forMemory:(id)a4 customDuration:(double)a5 curationContext:(id)a6
{
  v89[1] = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a6;
  v12 = [(PGManager *)self photoLibrary];
  v13 = v12;
  if (a3 == 2)
  {
    v14 = [v12 librarySpecificFetchOptions];
    v89[0] = *MEMORY[0x277CD9AA8];
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:1];
    [v14 setFetchPropertySets:v15];

    v16 = [MEMORY[0x277CD97A8] fetchCuratedAssetsInAssetCollection:v10 options:v14];
    v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v16, "count")}];
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v18 = v16;
    v19 = [v18 countByEnumeratingWithState:&v81 objects:v88 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v82;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v82 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [*(*(&v81 + 1) + 8 * i) uuid];
          [v17 addObject:v23];
        }

        v20 = [v18 countByEnumeratingWithState:&v81 objects:v88 count:16];
      }

      while (v20);
    }

    v24 = v18;
  }

  else
  {
    v25 = [(PGManager *)self curationManager];
    v26 = [v13 librarySpecificFetchOptions];
    v87 = *MEMORY[0x277CD9AA8];
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v87 count:1];
    [v26 setFetchPropertySets:v27];

    v71 = v25;
    v18 = [v25 defaultAssetFetchOptionsForMemories];
    v69 = v10;
    v67 = v26;
    if (a3 != 1 && (a3 || a5 >= 60.0))
    {
      v28 = [MEMORY[0x277CD97A8] fetchExtendedCuratedAssetsInAssetCollection:v10 options:v18];
      v29 = [MEMORY[0x277CD97A8] fetchCuratedAssetsInAssetCollection:v10 options:v26];
    }

    else
    {
      v28 = [MEMORY[0x277CD97A8] fetchCuratedAssetsInAssetCollection:v10 options:v18];
      v29 = [MEMORY[0x277CD97A8] fetchKeyAssetsInAssetCollection:v10 options:v26];
    }

    v30 = v29;
    v31 = objc_alloc(MEMORY[0x277CBEA60]);
    v66 = v28;
    v32 = [v28 fetchedObjects];
    v33 = [v31 initWithArray:v32];

    v34 = [v11 curationSession];
    [v34 prepareAssets:v33];

    [PGGraphBuilder topTierAestheticScoreForRatio:v13 inPhotoLibrary:0.01];
    [PGMemoryGenerationHelper prepareAssets:v33 forMemoriesWithTopTierAestheticScore:v11 curationContext:?];
    v35 = objc_alloc(MEMORY[0x277CD98D0]);
    v36 = MEMORY[0x277CBEB98];
    v37 = [v18 fetchPropertySets];
    v38 = [v36 setWithArray:v37];
    v65 = v33;
    v72 = v13;
    v39 = [v35 initWithObjects:v33 photoLibrary:v13 fetchType:0 fetchPropertySets:v38 identifier:0 registerIfNeeded:0];

    v64 = v39;
    v70 = [objc_alloc(MEMORY[0x277D27710]) initWithAssetFetchResult:v39 curationContext:v11];
    v40 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v30, "count")}];
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v41 = v30;
    v42 = [v41 countByEnumeratingWithState:&v77 objects:v86 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v78;
      do
      {
        for (j = 0; j != v43; ++j)
        {
          if (*v78 != v44)
          {
            objc_enumerationMutation(v41);
          }

          v46 = [*(*(&v77 + 1) + 8 * j) uuid];
          [v40 addObject:v46];
        }

        v43 = [v41 countByEnumeratingWithState:&v77 objects:v86 count:16];
      }

      while (v43);
    }

    v47 = [(PGManager *)self memoriesLoggingConnection];
    v48 = objc_alloc_init(PGCurator_PHAsset);
    [(PGCurator *)v48 setLoggingConnection:v47];
    +[PGGraphLocationHelper inefficientLocationHelper];
    v61 = v68 = v11;
    v60 = [[PGMemoryCurationSession alloc] initWithCurationManager:v71 photoLibrary:v72 curationContext:v11 locationHelper:v61];
    v63 = v47;
    v59 = [[PGMemoryGenerator alloc] initWithMemoryCurationSession:v60 loggingConnection:v47];
    v49 = [(PGMemoryGenerator *)v59 baseCurationOptionsWithRequiredAssetUUIDs:v40 eligibleAssetUUIDs:0];
    [v49 setUseDurationBasedCuration:1];
    [v49 setMinimumDuration:0.0];
    [(PGManager *)self targetCurationDurationWithCurationLength:a3 customDuration:a5];
    [v49 setTargetDuration:?];
    [v49 setFailIfMinimumDurationNotReached:0];
    v62 = v48;
    v50 = [(PGCurator_PHAsset *)v48 bestAssetsForFeeder:v70 options:v49 debugInfo:0 progressBlock:&__block_literal_global_1405];
    v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v50, "count")}];
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v51 = v50;
    v52 = [v51 countByEnumeratingWithState:&v73 objects:v85 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v74;
      do
      {
        for (k = 0; k != v53; ++k)
        {
          if (*v74 != v54)
          {
            objc_enumerationMutation(v51);
          }

          v56 = [*(*(&v73 + 1) + 8 * k) uuid];
          [v17 addObject:v56];
        }

        v53 = [v51 countByEnumeratingWithState:&v73 objects:v85 count:16];
      }

      while (v53);
    }

    v11 = v68;
    v10 = v69;
    v14 = v71;
    v13 = v72;
    v24 = v67;
  }

  v57 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)curationOfLength:(unint64_t)a3 forMemory:(id)a4 customDuration:(double)a5 useAssetEligibility:(BOOL)a6 curationContext:(id)a7
{
  v8 = a6;
  v71[1] = *MEMORY[0x277D85DE8];
  v45 = a4;
  v43 = a7;
  v44 = [(PGManager *)self photoLibrary];
  if ([(PGManager *)self isReady])
  {
    context = objc_autoreleasePoolPush();
    v11 = [v44 librarySpecificFetchOptions];
    v71[0] = *MEMORY[0x277CD9AA8];
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:1];
    [v11 setFetchPropertySets:v12];

    [v11 setIncludeGuestAssets:1];
    v13 = [MEMORY[0x277CD97A8] fetchKeyAssetsInAssetCollection:v45 options:v11];
    v40 = [v13 firstObject];

    if (v8)
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v15 = [MEMORY[0x277CD97A8] fetchExtendedCuratedAssetsInAssetCollection:v45 options:{v11, v40}];
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v16 = 0;
      v17 = [v15 countByEnumeratingWithState:&v58 objects:v70 count:16];
      if (v17)
      {
        v18 = *v59;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v59 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v58 + 1) + 8 * i);
            v21 = [v20 uuid];
            [v14 addObject:v21];

            if (v16)
            {
              v16 = 1;
            }

            else
            {
              v16 = [v20 isGuestAsset];
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v58 objects:v70 count:16];
        }

        while (v17);
      }
    }

    else
    {
      v16 = 0;
      v14 = 0;
    }

    objc_autoreleasePoolPop(context);
    v26 = [(PGManager *)self curationManager];
    v27 = [(PGManager *)self serviceManager];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v67 = __Block_byref_object_copy__1408;
    v68 = __Block_byref_object_dispose__1409;
    v69 = 0;
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __101__PGManager_Memories__curationOfLength_forMemory_customDuration_useAssetEligibility_curationContext___block_invoke;
    v46[3] = &unk_27887F160;
    v46[4] = self;
    v28 = v45;
    v47 = v28;
    v55 = a3;
    v56 = a5;
    v29 = v26;
    v48 = v29;
    v49 = v44;
    v30 = v43;
    v50 = v30;
    v31 = v27;
    v51 = v31;
    v54 = buf;
    v32 = v40;
    v52 = v32;
    v33 = v14;
    v53 = v33;
    v57 = v16;
    [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v46];
    if ([*(*&buf[8] + 40) count])
    {
      v34 = *(*&buf[8] + 40);
    }

    else
    {
      v35 = [(PGManager *)self workingContext];
      v36 = [v35 loggingConnection];

      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = [v28 uuid];
        *v62 = 136315394;
        v63 = "[PGManager(Memories) curationOfLength:forMemory:customDuration:useAssetEligibility:curationContext:]";
        v64 = 2112;
        v65 = v37;
        _os_log_impl(&dword_22F0FC000, v36, OS_LOG_TYPE_DEFAULT, "%s using fallback curation for memory uuid %@, as memory specific enrichment failed", v62, 0x16u);
      }

      v34 = [(PGManager *)self _fallbackCurationOfLength:a3 forMemory:v28 customDuration:v30 curationContext:a5];
    }

    v25 = v34;

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v22 = [(PGManager *)self workingContext];
    v23 = [v22 loggingConnection];

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [v45 uuid];
      *buf = 136315394;
      *&buf[4] = "[PGManager(Memories) curationOfLength:forMemory:customDuration:useAssetEligibility:curationContext:]";
      *&buf[12] = 2112;
      *&buf[14] = v24;
      _os_log_impl(&dword_22F0FC000, v23, OS_LOG_TYPE_DEFAULT, "%s using fallback curation for memory uuid %@, graph is not ready", buf, 0x16u);
    }

    v25 = [(PGManager *)self _fallbackCurationOfLength:a3 forMemory:v45 customDuration:v43 curationContext:a5];
  }

  v38 = *MEMORY[0x277D85DE8];

  return v25;
}

void __101__PGManager_Memories__curationOfLength_forMemory_customDuration_useAssetEligibility_curationContext___block_invoke(uint64_t a1, void *a2)
{
  v31 = [a2 graph];
  v29 = [*(a1 + 32) _momentNodesFromMemory:*(a1 + 40) inGraph:v31];
  v3 = [*(a1 + 40) photosGraphProperties];
  v30 = [v3 objectForKeyedSubscript:@"encodedFeatures"];

  v4 = [*(a1 + 40) photosGraphProperties];
  v5 = [v4 objectForKeyedSubscript:@"memoryCategorySubcategory"];
  v6 = [v5 unsignedIntegerValue];

  v7 = [*(a1 + 32) _featureNodesForEncodedFeatures:v30 inGraph:v31];
  v8 = [*(a1 + 40) photosGraphProperties];
  v9 = [v8 objectForKeyedSubscript:@"generatedWithFallbackRequirements"];
  v10 = [v9 BOOLValue];

  v11 = [PGTriggeredMemory alloc];
  v12 = [*(a1 + 40) category];
  v13 = [MEMORY[0x277CBEAA8] date];
  v14 = [*(a1 + 40) graphMemoryIdentifier];
  LOBYTE(v28) = v10;
  v15 = [(PGTriggeredMemory *)v11 initWithMemoryCategory:v12 memoryCategorySubcategory:v6 memoryMomentNodes:v29 memoryFeatureNodes:v7 validityIntervalByTriggerType:MEMORY[0x277CBEC10] creationDate:v13 uniqueMemoryIdentifier:v14 generatedWithFallbackRequirements:v28];

  [*(a1 + 32) targetCurationDurationWithCurationLength:*(a1 + 104) customDuration:*(a1 + 112)];
  v17 = v16;
  v18 = [[PGGraphLocationHelper alloc] initWithGraph:v31];
  v19 = [[PGMemoryCurationSession alloc] initWithCurationManager:*(a1 + 48) photoLibrary:*(a1 + 56) curationContext:*(a1 + 64) locationHelper:v18];
  v20 = [[PGEnrichedMemoryFactory alloc] initWithMemoryCurationSession:v19 graph:v31 serviceManager:*(a1 + 72)];
  v21 = *(a1 + 80);
  v22 = *(a1 + 88);
  v23 = *(a1 + 120);
  v24 = [MEMORY[0x277D22C80] ignoreProgress];
  v25 = [(PGEnrichedMemoryFactory *)v20 curatedAssetUUIDsWithTriggeredMemory:v15 keyAsset:v21 extendedCuratedAssetUUIDs:v22 targetCurationDuration:v23 allowGuestAsset:v24 progressReporter:v17];
  v26 = *(*(a1 + 96) + 8);
  v27 = *(v26 + 40);
  *(v26 + 40) = v25;
}

- (double)targetCurationDurationWithCurationLength:(unint64_t)a3 customDuration:(double)result
{
  if (a3)
  {
    if (a3 == 4)
    {
      return 90.0;
    }

    else
    {
      result = 60.0;
      if (a3 == 1)
      {
        return 40.0;
      }
    }
  }

  return result;
}

- (id)_featureNodesForEncodedFeatures:(id)a3 inGraph:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = objc_alloc_init(MEMORY[0x277D22BD0]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          v14 = [PGFeature alloc];
          v15 = [(PGFeature *)v14 initWithEncodedFeature:v13, v21];
          v16 = [(PGFeature *)v15 nodeInGraph:v6];
          v17 = v16;
          if (v16)
          {
            [v7 addIdentifier:{objc_msgSend(v16, "identifier")}];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }

    v18 = [(MAElementCollection *)[PGGraphFeatureNodeCollection alloc] initWithGraph:v6 elementIdentifiers:v7];
  }

  else
  {
    v18 = [(MAElementCollection *)[PGGraphFeatureNodeCollection alloc] initWithGraph:v6];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)_momentNodesFromMemory:(id)a3 inGraph:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 photoLibrary];
  v8 = [v7 librarySpecificFetchOptions];

  v9 = [MEMORY[0x277CD98D8] fetchMomentsBackingMemory:v5 options:v8];
  v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v20 + 1) + 8 * i) uuid];
        [v10 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  v17 = [PGGraphMomentNodeCollection momentNodesForArrayOfUUIDs:v10 inGraph:v6];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)validateGraphConsistencyIfNeededWithProgressBlock:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PGManager *)self graphConsistencyCheckLoggingConnection];
  if ([(PGManager *)self shouldValidateGraphConsistency])
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__3805;
    v30 = __Block_byref_object_dispose__3806;
    v31 = 0;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __76__PGManager_Consistency__validateGraphConsistencyIfNeededWithProgressBlock___block_invoke;
    v22[3] = &unk_278880D38;
    v22[4] = self;
    v25 = &v26;
    v24 = v4;
    v6 = v5;
    v23 = v6;
    [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v22];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = v27[5];
      *buf = 138412290;
      v33 = v7;
      _os_log_impl(&dword_22F0FC000, v6, OS_LOG_TYPE_INFO, "[PGManager+Consistency] Graph consistency check: %@", buf, 0xCu);
    }

    v8 = *(v27 + 5);
    if (!v8)
    {
      goto LABEL_13;
    }

    v9 = [(PGManager *)self graphConsistencyCheckLoggingConnection];
    [(PGManager *)self reportMetricsLogWithConsistencyCheckResult:v8 loggingConnection:v9];

    [*(v27 + 5) overallSimilarityScore];
    v11 = v10;
    +[PGUserDefaults graphConsistencyPercentageThresholdForTTR];
    v13 = v12;
    v14 = +[PGUserDefaults graphConsistencyNotificationIsEnabled];
    if (v11 < v13 && v14)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v33 = v11;
        v34 = 2048;
        v35 = v13;
        _os_log_impl(&dword_22F0FC000, v6, OS_LOG_TYPE_DEFAULT, "[PGManager+Consistency] Graph consistency score %.2f bellow %.2f: prompting user to file a radar.", buf, 0x16u);
      }

      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"an incremental graph rebuild inconsistency was detected"];
      v17 = v11 * 100.0;
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"[Graph] %@ - %.2f%% consistent", v16, *&v17];
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"The last incrementally updated graph is %.2f%% consistent with the fully rebuilt one. Please file a radar to help diagnose consistency issues.", *&v17];
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n\n%@\n\nDetails per domain:\n%@", v18, v19, *(v27 + 5)];
      [MEMORY[0x277D3AC50] tapToRadarWithTitle:v18 description:v20 radarComponent:1 isUserInitiated:0 displayReason:v16 attachments:MEMORY[0x277CBEBF8]];
    }

    else
    {
LABEL_13:
      [(PGManager *)self destroyValidationGraph];
    }

    _Block_object_dispose(&v26, 8);
  }

  else
  {
    [(PGManager *)self destroyValidationGraph];
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __76__PGManager_Consistency__validateGraphConsistencyIfNeededWithProgressBlock___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) graphPersistenceParentDirectoryURL];
  v5 = [PGGraph graphURLForName:@"validation-photosgraph" parentDirectoryURL:v4];
  v17 = 0;
  v6 = [(MAGraph *)[PGGraph alloc] initWithPersistentStoreURL:v5 options:4 error:&v17];
  v7 = v17;
  if (v6)
  {
    v8 = [v3 graph];
    v9 = *(a1 + 32);
    v10 = objc_opt_class();
    v11 = [*(a1 + 32) graphConsistencyCheckLoggingConnection];
    v12 = [v10 consistencyCheckResultOfGraph:v6 andGraph:v8 loggingConnection:v11 progressBlock:*(a1 + 48)];
    v13 = *(*(a1 + 56) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  else
  {
    v15 = *(a1 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v7;
      _os_log_error_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_ERROR, "[PGManager+Consistency] Failed to load validation graph: %@", buf, 0xCu);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)reportMetricsLogWithConsistencyCheckResult:(id)a3 loggingConnection:(id)a4
{
  v20[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(PGManager *)self analytics];

    if (v8)
    {
      [v6 overallSimilarityScore];
      v10 = v9;
      v11 = [(PGManager *)self analytics];
      v19[0] = @"graphSchemaVersion";
      v19[1] = @"type";
      v20[0] = &unk_2844821C0;
      v20[1] = @"overall";
      v19[2] = @"similarityScore";
      v12 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
      v20[2] = v12;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
      [v11 sendEvent:@"com.apple.Photos.Intelligence.GraphConsistency" withPayload:v13];

      objc_initWeak(&location, self);
      v14 = [v6 similarityScoreByDomain];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __87__PGManager_Consistency__reportMetricsLogWithConsistencyCheckResult_loggingConnection___block_invoke;
      v16[3] = &unk_27887F4D8;
      objc_copyWeak(&v17, &location);
      [v14 enumerateKeysAndObjectsUsingBlock:v16];

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location) = 0;
      _os_log_error_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_ERROR, "[PGManager+Consistency] Core Analytics is nil", &location, 2u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __87__PGManager_Consistency__reportMetricsLogWithConsistencyCheckResult_loggingConnection___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12[3] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = PGGraphDomainToString([a2 unsignedIntValue]);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained analytics];
  v11[0] = @"graphSchemaVersion";
  v11[1] = @"type";
  v12[0] = &unk_2844821C0;
  v12[1] = v6;
  v11[2] = @"similarityScore";
  v12[2] = v5;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];

  [v8 sendEvent:@"com.apple.Photos.Intelligence.GraphConsistency" withPayload:v9];
  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)destroyValidationGraph
{
  v2 = [(PGManager *)self graphPersistenceParentDirectoryURL];
  v3 = [PGGraph graphURLForName:@"validation-photosgraph" parentDirectoryURL:v2];
  v6 = 0;
  v4 = [(MAGraph *)PGGraph destroyPersistentStoreAtURL:v3 error:&v6];

  return v4;
}

- (BOOL)shouldValidateGraphConsistency
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(PGManager *)self graphConsistencyCheckLoggingConnection];
  if ([objc_opt_class() graphConsistencyCheckIsEnabled])
  {
    v4 = @"validation-photosgraph";
    v5 = [(PGManager *)self graphPersistenceParentDirectoryURL];
    v6 = [PGGraph graphURLForName:@"validation-photosgraph" parentDirectoryURL:v5];
    if ([(PGManager *)self isReady])
    {
      v7 = [MEMORY[0x277CCAA00] defaultManager];
      v8 = [v6 path];
      v9 = [v7 fileExistsAtPath:v8];

      if (v9)
      {
        v19 = 0;
        v10 = [(MAGraph *)[PGGraph alloc] initWithPersistentStoreURL:v6 options:4 error:&v19];
        v11 = v19;
        if (v10)
        {
          v12 = [(PGGraph *)v10 infoNode];
          v13 = [v12 dateOfLastIncrementalUpdateInvocation];
          if (v13 && ([MEMORY[0x277CBEA80] currentCalendar], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isDateInToday:", v13), v14, (v15 & 1) != 0))
          {
            v16 = 1;
          }

          else
          {
            if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v21 = v13;
              _os_log_impl(&dword_22F0FC000, v3, OS_LOG_TYPE_INFO, "Skipping graph consistency check: Graph was last updated on %@", buf, 0xCu);
            }

            v16 = 0;
          }
        }

        else
        {
          if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v21 = v11;
            _os_log_error_impl(&dword_22F0FC000, v3, OS_LOG_TYPE_ERROR, "[PGManager+Consistency] Skipping graph consistency check: Failed to load the validation graph: %@", buf, 0xCu);
          }

          v16 = 0;
        }
      }

      else
      {
        if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22F0FC000, v3, OS_LOG_TYPE_INFO, "[PGManager+Consistency] Skipping graph consistency check: No validation graph available", buf, 2u);
        }

        v16 = 0;
      }
    }

    else
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22F0FC000, v3, OS_LOG_TYPE_INFO, "[PGManager+Consistency] Skipping graph consistency check: manager is not ready", buf, 2u);
      }

      v16 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, v3, OS_LOG_TYPE_INFO, "[PGManager+Consistency] Skipping graph consistency check: default disabled", buf, 2u);
    }

    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

+ (id)consistencyIgnoredNodeDomainCodes
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:21];
  v7[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:302];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)consistencyIgnoredNodeDomainClasses
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v11[0] = v4;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v8 = [v2 setWithArray:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)_nodesOfClass:(id)a3 matchingNodes:(id)a4 inGraph:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__3805;
  v24 = __Block_byref_object_dispose__3806;
  v25 = [(MAElementCollection *)[PGGraphNodeCollection alloc] initWithGraph:v10];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __62__PGManager_Consistency___nodesOfClass_matchingNodes_inGraph___block_invoke;
  v15[3] = &unk_27887F5A0;
  v19 = a1;
  v11 = v8;
  v16 = v11;
  v12 = v10;
  v17 = v12;
  v18 = &v20;
  [v9 enumerateNodesUsingBlock:v15];
  v13 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v13;
}

void __62__PGManager_Consistency___nodesOfClass_matchingNodes_inGraph___block_invoke(void *a1, void *a2)
{
  v3 = a1[7];
  v4 = a2;
  v8 = [objc_opt_class() nodesOfClass:a1[4] matchingNode:v4 inGraph:a1[5]];

  v5 = [*(*(a1[6] + 8) + 40) collectionByFormingUnionWith:v8];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

+ (id)nodesOfClass:(id)a3 matchingNode:(id)a4 inGraph:(id)a5
{
  v32[2] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [v9 isEqualToString:v11];

  if (v12)
  {
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [v7 collection];
    v17 = [v16 ownerNodes];
    v18 = [v13 _nodesOfClass:v15 matchingNodes:v17 inGraph:v8];

    v19 = objc_alloc(MEMORY[0x277D22C00]);
    v20 = +[PGGraphIsOwnedByEdge filter];
    v21 = [v20 inRelation];
    v32[0] = v21;
    v22 = objc_alloc(MEMORY[0x277D22C78]);
    v23 = [v7 label];
    v24 = [v22 initWithLabel:v23 domain:{objc_msgSend(v7, "domain")}];
    v25 = [v24 relation];
    v32[1] = v25;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
    v27 = [v19 initWithSteps:v26];

    v28 = [(MANodeCollection *)PGGraphHomeWorkNodeCollection nodesRelatedToNodes:v18 withRelation:v27];
  }

  else
  {
    v29 = [v7 entityFilter];
    v28 = [(MANodeCollection *)PGGraphNodeCollection nodesMatchingFilter:v29 inGraph:v8];
  }

  v30 = *MEMORY[0x277D85DE8];

  return v28;
}

+ (id)nodesByClassFromGraph:(id)a3
{
  v4 = MEMORY[0x277CBEB38];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [a1 consistencyIgnoredNodeDomainClasses];
  v8 = [MEMORY[0x277D22C78] any];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __48__PGManager_Consistency__nodesByClassFromGraph___block_invoke;
  v14[3] = &unk_278887CF8;
  v15 = v7;
  v9 = v6;
  v16 = v9;
  v10 = v7;
  [v5 enumerateNodesMatchingFilter:v8 usingBlock:v14];

  v11 = v16;
  v12 = v9;

  return v9;
}

void __48__PGManager_Consistency__nodesByClassFromGraph___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  if (([*(a1 + 32) containsObject:v4] & 1) == 0)
  {
    v5 = [*(a1 + 40) objectForKeyedSubscript:v4];
    if (!v5)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
      [*(a1 + 40) setObject:v5 forKeyedSubscript:v4];
    }

    [v5 addObject:v6];
  }
}

+ (id)nodeDomainsFromGraph:(id)a3
{
  v4 = MEMORY[0x277CBEB58];
  v5 = a3;
  v6 = [v4 set];
  v7 = [a1 consistencyIgnoredNodeDomainClasses];
  v8 = [MEMORY[0x277D22C78] any];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __47__PGManager_Consistency__nodeDomainsFromGraph___block_invoke;
  v14[3] = &unk_278887CF8;
  v15 = v7;
  v9 = v6;
  v16 = v9;
  v10 = v7;
  [v5 enumerateNodesMatchingFilter:v8 usingBlock:v14];

  v11 = v16;
  v12 = v9;

  return v9;
}

void __47__PGManager_Consistency__nodeDomainsFromGraph___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  if (([*(a1 + 32) containsObject:v4] & 1) == 0)
  {
    v5 = *(a1 + 40);
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v7, "domain")}];
    [v5 addObject:v6];
  }
}

+ (id)edgesByNodeFromEdges:(id)a3 andNode:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x277CBEB38];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__PGManager_Consistency__edgesByNodeFromEdges_andNode___block_invoke;
  v14[3] = &unk_278885D60;
  v15 = v5;
  v9 = v8;
  v16 = v9;
  v10 = v5;
  [v7 enumerateEdgesUsingBlock:v14];

  v11 = v16;
  v12 = v9;

  return v9;
}

void __55__PGManager_Consistency__edgesByNodeFromEdges_andNode___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 oppositeNode:*(a1 + 32)];
  v4 = [*(a1 + 40) objectForKeyedSubscript:v3];
  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [*(a1 + 40) setObject:v4 forKeyedSubscript:v3];
  }

  [v4 addObject:v5];
}

+ (int64_t)_totalNumberOfIdenticalNodesFromNode1ByNode2:(id)a3 withNumberOfIdenticalNodesByDomain:(id)a4 loggingConnection:(id)a5 progressBlock:(id)a6
{
  v53 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = _Block_copy(v13);
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  if (!v14 || (v15 = CFAbsoluteTimeGetCurrent(), v15 - v39[3] < 0.01) || (v39[3] = v15, LOBYTE(v46) = 0, (*(v14 + 2))(v14, &v46, 0.0), v16 = *(v43 + 24) | v46, *(v43 + 24) = v16, (v16 & 1) == 0))
  {
    v18 = [objc_opt_class() consistencyIgnoredNodeDomainClasses];
    buf = 0;
    *&v51 = &buf;
    *(&v51 + 1) = 0x2020000000;
    v52 = 0;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __138__PGManager_Consistency___totalNumberOfIdenticalNodesFromNode1ByNode2_withNumberOfIdenticalNodesByDomain_loggingConnection_progressBlock___block_invoke;
    v27[3] = &unk_27887F578;
    v36 = a1;
    v28 = v10;
    v19 = v18;
    v29 = v19;
    v30 = v11;
    p_buf = &buf;
    v31 = v12;
    v20 = v14;
    v32 = v20;
    v34 = &v38;
    v37 = 0x3F847AE147AE147BLL;
    v35 = &v42;
    [v28 enumerateKeysAndObjectsUsingBlock:v27];
    if (*(v43 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v46 = 67109378;
        v47 = 408;
        v48 = 2080;
        v49 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Consistency.m";
        v21 = MEMORY[0x277D86220];
LABEL_10:
        _os_log_impl(&dword_22F0FC000, v21, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v46, 0x12u);
      }
    }

    else
    {
      if (!v14 || (Current = CFAbsoluteTimeGetCurrent(), Current - v39[3] < 0.01) || (v39[3] = Current, v26 = 0, (*(v20 + 2))(v20, &v26, 1.0), v23 = *(v43 + 24) | v26, *(v43 + 24) = v23, (v23 & 1) == 0))
      {
        v17 = *(v51 + 24);
        goto LABEL_18;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v46 = 67109378;
        v47 = 410;
        v48 = 2080;
        v49 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Consistency.m";
        v21 = MEMORY[0x277D86220];
        goto LABEL_10;
      }
    }

    v17 = 0;
LABEL_18:

    _Block_object_dispose(&buf, 8);
    goto LABEL_19;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    buf = 0x14104000202;
    LOWORD(v51) = 2080;
    *(&v51 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Consistency.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
  }

  v17 = 0;
LABEL_19:
  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);

  v24 = *MEMORY[0x277D85DE8];
  return v17;
}

void __138__PGManager_Consistency___totalNumberOfIdenticalNodesFromNode1ByNode2_withNumberOfIdenticalNodesByDomain_loggingConnection_progressBlock___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v29 = a4;
  v47 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || ([v7 properties], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "properties"), v9 = objc_claimAutoreleasedReturnValue(), v10 = +[PGConsistencyUtility properties:areConsistentWithProperties:toleranceFactor:](PGConsistencyUtility, "properties:areConsistentWithProperties:toleranceFactor:", v8, v9, 2), v9, v8, v10))
  {
    v11 = [(MANodeCollection *)[PGGraphNodeCollection alloc] initWithNode:v7];
    v12 = [PGGraphEdgeCollection edgesFromNodes:v11];
    v13 = [*(a1 + 96) edgesByNodeFromEdges:v12 andNode:v7];
    v14 = [(MANodeCollection *)[PGGraphNodeCollection alloc] initWithNode:v6];
    v15 = [PGGraphEdgeCollection edgesFromNodes:v14];
    v16 = [v12 count];
    if (v16 == [v15 count])
    {
      v30 = MEMORY[0x277D85DD0];
      v31 = 3221225472;
      v32 = __138__PGManager_Consistency___totalNumberOfIdenticalNodesFromNode1ByNode2_withNumberOfIdenticalNodesByDomain_loggingConnection_progressBlock___block_invoke_2;
      v33 = &unk_27887F550;
      v17 = v6;
      v34 = v17;
      v35 = *(a1 + 32);
      v36 = *(a1 + 40);
      v38 = &v39;
      v37 = v13;
      [v15 enumerateEdgesUsingBlock:&v30];
      if (*(v40 + 24) == 1)
      {
        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v17, "domain")}];
        v19 = [*(a1 + 48) objectForKey:v18];
        v20 = v19 == 0;

        if (v20)
        {
          [*(a1 + 48) setObject:&unk_2844870A8 forKeyedSubscript:v18];
        }

        v21 = [*(a1 + 48) objectForKeyedSubscript:{v18, v29, v30, v31, v32, v33, v34, v35, v36}];
        [v21 doubleValue];
        v23 = v22;

        v24 = [MEMORY[0x277CCABB0] numberWithDouble:v23 + 1.0];
        [*(a1 + 48) setObject:v24 forKeyedSubscript:v18];

        ++*(*(*(a1 + 72) + 8) + 24);
      }

      else
      {
        v25 = *(a1 + 56);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v44 = v7;
          v45 = 2112;
          v46 = v17;
          _os_log_impl(&dword_22F0FC000, v25, OS_LOG_TYPE_INFO, "[PGManager+Consistency] The node %@ is not consistent with node %@", buf, 0x16u);
        }
      }

      if (*(a1 + 64))
      {
        Current = CFAbsoluteTimeGetCurrent();
        v27 = *(*(a1 + 80) + 8);
        if (Current - *(v27 + 24) >= *(a1 + 104))
        {
          *(v27 + 24) = Current;
          buf[0] = 0;
          (*(*(a1 + 64) + 16))(0.5);
          *(*(*(a1 + 88) + 8) + 24) |= buf[0];
          if (*(*(*(a1 + 88) + 8) + 24) == 1)
          {
            *v29 = 1;
          }
        }
      }
    }
  }

  _Block_object_dispose(&v39, 8);

  v28 = *MEMORY[0x277D85DE8];
}

void __138__PGManager_Consistency___totalNumberOfIdenticalNodesFromNode1ByNode2_withNumberOfIdenticalNodesByDomain_loggingConnection_progressBlock___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  v7 = [v5 oppositeNode:*(a1 + 32)];
  v8 = [*(a1 + 40) objectForKeyedSubscript:v7];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  if (([*(a1 + 48) containsObject:v10] & 1) == 0 && (objc_msgSend(*(a1 + 48), "containsObject:", v12) & 1) == 0)
  {
    if (v8)
    {
      v29 = v12;
      v30 = v10;
      v27 = a1;
      v28 = a3;
      v32 = v7;
      v33 = v6;
      v31 = v8;
      [*(a1 + 56) objectForKeyedSubscript:v8];
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v13 = v37 = 0u;
      v14 = [v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v35;
LABEL_6:
        v17 = 0;
        while (1)
        {
          if (*v35 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v34 + 1) + 8 * v17);
          v19 = [v18 label];
          v20 = [v5 label];
          if ([v19 isEqualToString:v20])
          {
            v21 = [v18 domain];
            v22 = [v5 domain];

            if (v21 == v22)
            {
              v23 = [v18 properties];
              v24 = [v5 properties];
              v25 = [PGConsistencyUtility properties:v23 areConsistentWithProperties:v24 toleranceFactor:2];

              if (v25)
              {
                goto LABEL_19;
              }

              goto LABEL_18;
            }
          }

          else
          {
          }

          if (v15 == ++v17)
          {
            v15 = [v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
            if (v15)
            {
              goto LABEL_6;
            }

            break;
          }
        }
      }

LABEL_18:
      *(*(*(v27 + 64) + 8) + 24) = 0;
      *v28 = 1;
LABEL_19:

      v7 = v32;
      v6 = v33;
      v10 = v30;
      v8 = v31;
      v12 = v29;
    }

    else
    {
      *(*(*(a1 + 64) + 8) + 24) = 0;
      *a3 = 1;
    }
  }

  objc_autoreleasePoolPop(v6);
  v26 = *MEMORY[0x277D85DE8];
}

+ (id)consistencyCheckResultOfGraph:(id)a3 andGraph:(id)a4 loggingConnection:(id)a5 progressBlock:(id)a6
{
  v153 = *MEMORY[0x277D85DE8];
  v99 = a3;
  v100 = a4;
  v9 = a5;
  aBlock = a6;
  v10 = v9;
  v11 = os_signpost_id_generate(v10);
  v12 = v10;
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "PGManagerConsitencySimilarityScore", "", &buf, 2u);
  }

  oslog = v13;

  info = 0;
  mach_timebase_info(&info);
  v80 = mach_absolute_time();
  v97 = _Block_copy(aBlock);
  v137 = 0;
  v138 = &v137;
  v139 = 0x2020000000;
  v140 = 0;
  v133 = 0;
  v134 = &v133;
  v135 = 0x2020000000;
  v136 = 0;
  if (!v97 || (v14 = CFAbsoluteTimeGetCurrent(), v14 - v134[3] < 0.01) || (v134[3] = v14, LOBYTE(v142) = 0, v97[2](v97, &v142, 0.0), v15 = *(v138 + 24) | v142, *(v138 + 24) = v15, (v15 & 1) == 0))
  {
    v16 = 0;
    if (!v99 || !v100)
    {
      goto LABEL_110;
    }

    v17 = [v99 nodesCount];
    v18 = [v100 nodesCount];
    +[PGManager consistencyIgnoredNodeDomainCodes];
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    obj = v130 = 0u;
    v19 = [obj countByEnumeratingWithState:&v129 objects:v152 count:16];
    if (v19)
    {
      v20 = *v130;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v130 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = [*(*(&v129 + 1) + 8 * i) unsignedIntValue];
          v17 -= [v99 nodesCountForDomain:v22];
          v18 -= [v100 nodesCountForDomain:v22];
        }

        v19 = [obj countByEnumeratingWithState:&v129 objects:v152 count:16];
      }

      while (v19);
    }

    v85 = objc_alloc_init(PGGraphConsistencyCheckResult);
    v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v24 = [objc_opt_class() nodeDomainsFromGraph:v99];
    v86 = [v24 mutableCopy];

    v25 = [objc_opt_class() nodeDomainsFromGraph:v100];
    [v86 unionSet:v25];

    v127[0] = MEMORY[0x277D85DD0];
    v127[1] = 3221225472;
    v127[2] = __97__PGManager_Consistency__consistencyCheckResultOfGraph_andGraph_loggingConnection_progressBlock___block_invoke;
    v127[3] = &unk_27887F500;
    v26 = v23;
    v128 = v26;
    [v86 enumerateObjectsUsingBlock:v127];
    [(PGGraphConsistencyCheckResult *)v85 setSimilarityScoreByDomain:v26];
    v79 = v26;
    if (!v17 && v18 > 0 || v17 >= 1 && !v18)
    {
      v16 = v85;
LABEL_109:

      goto LABEL_110;
    }

    v84 = [objc_opt_class() nodesByClassFromGraph:v99];
    v83 = [objc_opt_class() nodesByClassFromGraph:v100];
    if (v97)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v134[3] >= 0.01)
      {
        v134[3] = Current;
        LOBYTE(v142) = 0;
        v97[2](v97, &v142, 0.1);
        v28 = *(v138 + 24) | v142;
        *(v138 + 24) = v28;
        if (v28)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            buf = 0xF104000202;
            LOWORD(v145) = 2080;
            *(&v145 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Consistency.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
          }

          v16 = 0;
          goto LABEL_108;
        }
      }
    }

    v29 = MEMORY[0x277CBEB98];
    v30 = [v84 allKeys];
    v77 = [v29 setWithArray:v30];

    v31 = MEMORY[0x277CBEB98];
    v32 = [v83 allKeys];
    v76 = [v31 setWithArray:v32];

    v33 = [v77 mutableCopy];
    [v33 intersectSet:v76];
    v75 = v33;
    if (![v33 count])
    {
      v16 = v85;
LABEL_107:

LABEL_108:
      goto LABEL_109;
    }

    v95 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v78 = v33;
    v34 = [v78 countByEnumeratingWithState:&v123 objects:v151 count:16];
    if (v34)
    {
      v82 = *v124;
      while (2)
      {
        v35 = 0;
        v81 = v34;
        do
        {
          if (*v124 != v82)
          {
            objc_enumerationMutation(v78);
          }

          v88 = v35;
          v36 = *(*(&v123 + 1) + 8 * v35);
          context = objc_autoreleasePoolPush();
          v37 = [v84 objectForKeyedSubscript:v36];
          v89 = [v83 objectForKeyedSubscript:v36];
          v121 = 0u;
          v122 = 0u;
          v119 = 0u;
          v120 = 0u;
          v96 = v37;
          v38 = [v96 countByEnumeratingWithState:&v119 objects:v150 count:16];
          if (v38)
          {
            v39 = *v120;
            while (2)
            {
              for (j = 0; j != v38; ++j)
              {
                if (*v120 != v39)
                {
                  objc_enumerationMutation(v96);
                }

                v41 = *(*(&v119 + 1) + 8 * j);
                if (v97)
                {
                  v42 = CFAbsoluteTimeGetCurrent();
                  if (v42 - v134[3] >= 0.01)
                  {
                    v134[3] = v42;
                    LOBYTE(v142) = 0;
                    v97[2](v97, &v142, 0.4);
                    v43 = *(v138 + 24) | v142;
                    *(v138 + 24) = v43;
                    if (v43)
                    {
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                      {
                        buf = 0x10504000202;
                        LOWORD(v145) = 2080;
                        *(&v145 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Consistency.m";
                        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
                      }

                      v58 = 0;
                      v47 = v96;
                      goto LABEL_73;
                    }
                  }
                }

                v44 = [objc_opt_class() nodesOfClass:v36 matchingNode:v41 inGraph:v100];
                v45 = v44;
                if (v44 && [v44 count] == 1)
                {
                  v46 = [v45 anyNode];
                  [v95 setObject:v41 forKeyedSubscript:v46];
                }
              }

              v38 = [v96 countByEnumeratingWithState:&v119 objects:v150 count:16];
              if (v38)
              {
                continue;
              }

              break;
            }
          }

          v117 = 0u;
          v118 = 0u;
          v115 = 0u;
          v116 = 0u;
          v47 = v89;
          v48 = [v47 countByEnumeratingWithState:&v115 objects:v149 count:16];
          if (v48)
          {
            v92 = v47;
            v93 = *v116;
            while (2)
            {
              v94 = v48;
              for (k = 0; k != v94; ++k)
              {
                if (*v116 != v93)
                {
                  objc_enumerationMutation(v92);
                }

                v50 = *(*(&v115 + 1) + 8 * k);
                if (v97)
                {
                  v51 = CFAbsoluteTimeGetCurrent();
                  if (v51 - v134[3] >= 0.01)
                  {
                    v134[3] = v51;
                    LOBYTE(v142) = 0;
                    v97[2](v97, &v142, 0.4);
                    v52 = *(v138 + 24) | v142;
                    *(v138 + 24) = v52;
                    if (v52)
                    {
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                      {
                        buf = 0x10E04000202;
                        LOWORD(v145) = 2080;
                        *(&v145 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Consistency.m";
                        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
                      }

                      v58 = 0;
                      goto LABEL_71;
                    }
                  }
                }

                v53 = [objc_opt_class() nodesOfClass:v36 matchingNode:v50 inGraph:v99];
                v54 = v53;
                if (v53 && [v53 count] == 1)
                {
                  v55 = [v54 anyNode];
                  v56 = [v95 objectForKeyedSubscript:v50];
                  v57 = [v55 isEqualToNode:v56];

                  if ((v57 & 1) == 0)
                  {
                    [v95 removeObjectForKey:v50];
                  }
                }
              }

              v48 = [v92 countByEnumeratingWithState:&v115 objects:v149 count:16];
              if (v48)
              {
                continue;
              }

              break;
            }

            v58 = 1;
LABEL_71:
            v47 = v92;
          }

          else
          {
            v58 = 1;
          }

LABEL_73:

          objc_autoreleasePoolPop(context);
          if (!v58)
          {
            v16 = 0;
            v62 = v78;
            goto LABEL_106;
          }

          v35 = v88 + 1;
        }

        while (v88 + 1 != v81);
        v34 = [v78 countByEnumeratingWithState:&v123 objects:v151 count:16];
        if (v34)
        {
          continue;
        }

        break;
      }
    }

    v59 = objc_opt_class();
    v110[0] = MEMORY[0x277D85DD0];
    v110[1] = 3221225472;
    v110[2] = __97__PGManager_Consistency__consistencyCheckResultOfGraph_andGraph_loggingConnection_progressBlock___block_invoke_321;
    v110[3] = &unk_27888A188;
    v60 = v97;
    v111 = v60;
    v112 = &v133;
    v113 = &v137;
    v114 = 0x3F847AE147AE147BLL;
    v61 = [v59 _totalNumberOfIdenticalNodesFromNode1ByNode2:v95 withNumberOfIdenticalNodesByDomain:v79 loggingConnection:oslog progressBlock:v110];
    if (*(v138 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        buf = 0x11E04000202;
        LOWORD(v145) = 2080;
        *(&v145 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Consistency.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
      }

      v16 = 0;
LABEL_105:
      v62 = v111;
LABEL_106:

      goto LABEL_107;
    }

    v63 = v61;
    buf = 0;
    *&v145 = &buf;
    *(&v145 + 1) = 0x3032000000;
    v146 = __Block_byref_object_copy__3805;
    v147 = __Block_byref_object_dispose__3806;
    v148 = [MEMORY[0x277CBEB38] dictionary];
    v102[0] = MEMORY[0x277D85DD0];
    v102[1] = 3221225472;
    v102[2] = __97__PGManager_Consistency__consistencyCheckResultOfGraph_andGraph_loggingConnection_progressBlock___block_invoke_323;
    v102[3] = &unk_27887F528;
    v103 = v99;
    v104 = v100;
    p_buf = &buf;
    v64 = v60;
    v105 = v64;
    v107 = &v133;
    v108 = &v137;
    v109 = 0x3F847AE147AE147BLL;
    [v79 enumerateKeysAndObjectsUsingBlock:v102];
    if (*(v138 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v142 = 67109378;
        LODWORD(v143[0]) = 303;
        WORD2(v143[0]) = 2080;
        *(v143 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Consistency.m";
        v65 = MEMORY[0x277D86220];
LABEL_85:
        _os_log_impl(&dword_22F0FC000, v65, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v142, 0x12u);
      }
    }

    else
    {
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
      {
        v142 = 134217984;
        v143[0] = v63;
        _os_log_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_INFO, "[PGManager+Consistency] Total number of identical nodes in graph1 and graph2 = %lu\n", &v142, 0xCu);
      }

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
      {
        v142 = 134217984;
        v143[0] = v17;
        _os_log_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_INFO, "[PGManager+Consistency] Total number of nodes in graph1 = %lu\n", &v142, 0xCu);
      }

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
      {
        v142 = 134217984;
        v143[0] = v18;
        _os_log_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_INFO, "[PGManager+Consistency] Total number of nodes in graph2 = %lu\n", &v142, 0xCu);
      }

      [(PGGraphConsistencyCheckResult *)v85 setOverallSimilarityScore:v63 / (v17 + v18 - v63)];
      [(PGGraphConsistencyCheckResult *)v85 setSimilarityScoreByDomain:*(v145 + 40)];
      v66 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v69 = oslog;
      v70 = v69;
      if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v69))
      {
        LOWORD(v142) = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v70, OS_SIGNPOST_INTERVAL_END, v11, "PGManagerConsitencySimilarityScore", "", &v142, 2u);
      }

      if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
      {
        v142 = 136315394;
        v143[0] = "PGManagerConsitencySimilarityScore";
        LOWORD(v143[1]) = 2048;
        *(&v143[1] + 2) = ((((v66 - v80) * numer) / denom) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v70, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", &v142, 0x16u);
      }

      if (!v97 || (v71 = CFAbsoluteTimeGetCurrent(), v71 - v134[3] < 0.01) || (v134[3] = v71, v101 = 0, v64[2](v64, &v101, 1.0), v72 = *(v138 + 24) | v101, *(v138 + 24) = v72, (v72 & 1) == 0))
      {
        v16 = v85;
        goto LABEL_104;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v142 = 67109378;
        LODWORD(v143[0]) = 314;
        WORD2(v143[0]) = 2080;
        *(v143 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Consistency.m";
        v65 = MEMORY[0x277D86220];
        goto LABEL_85;
      }
    }

    v16 = 0;
LABEL_104:

    _Block_object_dispose(&buf, 8);
    goto LABEL_105;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    buf = 0xD004000202;
    LOWORD(v145) = 2080;
    *(&v145 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Consistency.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
  }

  v16 = 0;
LABEL_110:
  _Block_object_dispose(&v133, 8);
  _Block_object_dispose(&v137, 8);

  v73 = *MEMORY[0x277D85DE8];

  return v16;
}

void __97__PGManager_Consistency__consistencyCheckResultOfGraph_andGraph_loggingConnection_progressBlock___block_invoke_321(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v5 = *(*(a1 + 40) + 8);
    if (Current - *(v5 + 24) >= *(a1 + 56))
    {
      *(v5 + 24) = Current;
      (*(*(a1 + 32) + 16))(0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __97__PGManager_Consistency__consistencyCheckResultOfGraph_andGraph_loggingConnection_progressBlock___block_invoke_323(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [v7 unsignedIntValue];
  v10 = [*(a1 + 32) nodesCountForDomain:v9];
  v11 = [*(a1 + 40) nodesCountForDomain:v9];
  [v8 doubleValue];
  v13 = v12;

  v14 = v10 + v11 - v13;
  if (v14 <= 0.0)
  {
    [*(*(*(a1 + 56) + 8) + 40) setObject:&unk_2844870A8 forKeyedSubscript:v7];
  }

  else
  {
    v15 = [MEMORY[0x277CCABB0] numberWithDouble:v13 / v14];
    [*(*(*(a1 + 56) + 8) + 40) setObject:v15 forKeyedSubscript:v7];
  }

  if (*(a1 + 48))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v17 = *(*(a1 + 64) + 8);
    if (Current - *(v17 + 24) >= *(a1 + 80))
    {
      *(v17 + 24) = Current;
      (*(*(a1 + 48) + 16))(0.9);
      *(*(*(a1 + 72) + 8) + 24) = *(*(*(a1 + 72) + 8) + 24);
      if (*(*(*(a1 + 72) + 8) + 24) == 1)
      {
        *a4 = 1;
      }
    }
  }
}

- (id)suggestedPersonsForSharedLibraryContentInclusion
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(PGManager *)self guessWhoLoggingConnection];
  v4 = os_signpost_id_generate(v3);
  v5 = v3;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "suggestedPersonsForSharedLibraryContentInclusion", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v7 = mach_absolute_time();
  v8 = [MEMORY[0x277CBEB18] array];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__PGManager_People__suggestedPersonsForSharedLibraryContentInclusion__block_invoke;
  v16[3] = &unk_27888A3B8;
  v9 = v8;
  v17 = v9;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v16];
  v10 = mach_absolute_time();
  v11 = info;
  v12 = v6;
  v13 = v12;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v13, OS_SIGNPOST_INTERVAL_END, v4, "suggestedPersonsForSharedLibraryContentInclusion", "", buf, 2u);
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v20 = "suggestedPersonsForSharedLibraryContentInclusion";
    v21 = 2048;
    v22 = ((((v10 - v7) * v11.numer) / v11.denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v9;
}

void __69__PGManager_People__suggestedPersonsForSharedLibraryContentInclusion__block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v21 = [a2 graph];
  v3 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:?];
  v4 = [v3 familyPersonNodes];
  v20 = v3;
  v5 = [v3 inferredFamilyPersonNodes];
  v6 = [v4 collectionByFormingUnionWith:v5];

  v19 = v6;
  v7 = [v6 array];
  v8 = [v7 sortedArrayUsingComparator:PGManagerPersonNodeComparisonBlock];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      v13 = 0;
      do
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v23 + 1) + 8 * v13) localIdentifier];
        if ([v14 length])
        {
          v15 = *(a1 + 32);
          v27 = @"localIdentifier";
          v28 = v14;
          v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
          [v15 addObject:v16];
        }

        else
        {
          v17 = +[PGLogging sharedLogging];
          v16 = [v17 loggingConnection];

          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_22F0FC000, v16, OS_LOG_TYPE_ERROR, "[Person Knowledge] no local identifier found for person", buf, 2u);
          }
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v11);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)suggestedPersonsForSharedLibraryParticipants
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(PGManager *)self guessWhoLoggingConnection];
  v4 = os_signpost_id_generate(v3);
  v5 = v3;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "suggestedPersonsForSharedLibraryParticipants", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v7 = mach_absolute_time();
  v8 = [MEMORY[0x277CBEB18] array];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __65__PGManager_People__suggestedPersonsForSharedLibraryParticipants__block_invoke;
  v16[3] = &unk_27888A3B8;
  v9 = v8;
  v17 = v9;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v16];
  v10 = mach_absolute_time();
  v11 = info;
  v12 = v6;
  v13 = v12;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v13, OS_SIGNPOST_INTERVAL_END, v4, "suggestedPersonsForSharedLibraryParticipants", "", buf, 2u);
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v20 = "suggestedPersonsForSharedLibraryParticipants";
    v21 = 2048;
    v22 = ((((v10 - v7) * v11.numer) / v11.denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v9;
}

void __65__PGManager_People__suggestedPersonsForSharedLibraryParticipants__block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [a2 graph];
  v4 = [MEMORY[0x277CBEB58] set];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __65__PGManager_People__suggestedPersonsForSharedLibraryParticipants__block_invoke_2;
  v23[3] = &unk_278889240;
  v5 = v4;
  v24 = v5;
  [v3 enumeratePersonNodesIncludingMe:0 withBlock:v23];
  v18 = v5;
  v6 = [v5 allObjects];
  v7 = [v6 sortedArrayUsingComparator:PGManagerPersonNodeComparisonBlock];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = *(a1 + 32);
        v25 = @"localIdentifier";
        v15 = [v13 localIdentifier];
        v26 = v15;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
        [v14 addObject:v16];
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v10);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __65__PGManager_People__suggestedPersonsForSharedLibraryParticipants__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isMyPartner] & 1) != 0 || objc_msgSend(v3, "isMyInferredPartner"))
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (id)suggestedPersonsForHome
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(PGManager *)self guessWhoLoggingConnection];
  v4 = os_signpost_id_generate(v3);
  v5 = v3;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "SuggestedPersonsForHome", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v7 = mach_absolute_time();
  v8 = [MEMORY[0x277CBEB18] array];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __44__PGManager_People__suggestedPersonsForHome__block_invoke;
  v16[3] = &unk_27888A3B8;
  v9 = v8;
  v17 = v9;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v16];
  v10 = mach_absolute_time();
  v11 = info;
  v12 = v6;
  v13 = v12;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v13, OS_SIGNPOST_INTERVAL_END, v4, "SuggestedPersonsForHome", "", buf, 2u);
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v20 = "SuggestedPersonsForHome";
    v21 = 2048;
    v22 = ((((v10 - v7) * v11.numer) / v11.denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v9;
}

void __44__PGManager_People__suggestedPersonsForHome__block_invoke(uint64_t a1, void *a2)
{
  v63 = *MEMORY[0x277D85DE8];
  v3 = [a2 graph];
  v4 = [MEMORY[0x277CBEB58] set];
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __44__PGManager_People__suggestedPersonsForHome__block_invoke_2;
  v56[3] = &unk_278889240;
  v5 = v4;
  v57 = v5;
  [v3 enumeratePersonNodesIncludingMe:1 withBlock:v56];
  v6 = objc_alloc_init(MEMORY[0x277CCA940]);
  v41 = v3;
  v7 = [v3 meNodeCollection];
  v8 = [v7 homeNodes];
  v9 = [v8 addressNodes];
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __44__PGManager_People__suggestedPersonsForHome__block_invoke_3;
  v54[3] = &unk_278887858;
  v10 = v6;
  v55 = v10;
  [v9 enumerateIdentifiersAsCollectionsWithBlock:v54];

  v11 = [v10 count];
  if (v11)
  {
    v12 = v11;
    v50 = 0u;
    v51 = 0u;
    v13 = [v10 pg_accumulatedCount] / v11;
    v52 = 0u;
    v53 = 0u;
    v14 = v10;
    v15 = [v14 countByEnumeratingWithState:&v50 objects:v62 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v51;
      v18 = 0.0;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v51 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v20 = [v14 countForObject:*(*(&v50 + 1) + 8 * i)];
          v18 = v18 + (v20 - v13) * (v20 - v13);
        }

        v16 = [v14 countByEnumeratingWithState:&v50 objects:v62 count:16];
      }

      while (v16);
    }

    else
    {
      v18 = 0.0;
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v21 = v14;
    v22 = [v21 countByEnumeratingWithState:&v46 objects:v61 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = fmax(ceil(v13 + sqrt(v18 / v12) * -0.5), 2.0);
      v25 = *v47;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v47 != v25)
          {
            objc_enumerationMutation(v21);
          }

          v27 = *(*(&v46 + 1) + 8 * j);
          if ([v21 countForObject:v27] > v24)
          {
            [v5 addObject:v27];
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v46 objects:v61 count:16];
      }

      while (v23);
    }
  }

  v39 = v10;
  v40 = v5;
  v28 = [v5 allObjects];
  v29 = [v28 sortedArrayUsingComparator:PGManagerPersonNodeComparisonBlock];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v30 = v29;
  v31 = [v30 countByEnumeratingWithState:&v42 objects:v60 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v43;
    do
    {
      for (k = 0; k != v32; ++k)
      {
        if (*v43 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = [*(*(&v42 + 1) + 8 * k) localIdentifier];
        if ([v35 length])
        {
          v36 = *(a1 + 32);
          v58 = @"localIdentifier";
          v59 = v35;
          v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
          [v36 addObject:v37];
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v42 objects:v60 count:16];
    }

    while (v32);
  }

  v38 = *MEMORY[0x277D85DE8];
}

void __44__PGManager_People__suggestedPersonsForHome__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isFavorite] & 1) != 0 || (objc_msgSend(v3, "isMemberOfMyFamily") & 1) != 0 || (objc_msgSend(v3, "isInferredMemberOfMyFamily") & 1) != 0 || objc_msgSend(v3, "isMeNode"))
  {
    [*(a1 + 32) addObject:v3];
  }
}

void __44__PGManager_People__suggestedPersonsForHome__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 momentNodes];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__PGManager_People__suggestedPersonsForHome__block_invoke_4;
  v5[3] = &unk_278887A68;
  v6 = *(a1 + 32);
  [v4 enumerateIdentifiersAsCollectionsWithBlock:v5];
}

void __44__PGManager_People__suggestedPersonsForHome__block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v5 = [a3 personNodes];
  v4 = [v5 temporarySet];
  [v3 unionSet:v4];
}

- (id)relationshipInferencesForPersonLocalIdentifiers:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PGManager *)self guessWhoLoggingConnection];
  v6 = os_signpost_id_generate(v5);
  v7 = v5;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "RelationshipInferencesForPersonLocalIdentifiers", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v9 = mach_absolute_time();
  v10 = [MEMORY[0x277CBEB38] dictionary];
  if ([v4 count])
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __69__PGManager_People__relationshipInferencesForPersonLocalIdentifiers___block_invoke;
    v21[3] = &unk_27888A638;
    v22 = v4;
    v11 = v10;
    v23 = v11;
    [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v21];
    v12 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v15 = v8;
    v16 = v15;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v16, OS_SIGNPOST_INTERVAL_END, v6, "RelationshipInferencesForPersonLocalIdentifiers", "", buf, 2u);
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v26 = "RelationshipInferencesForPersonLocalIdentifiers";
      v27 = 2048;
      v28 = ((((v12 - v9) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v16, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    v17 = v23;
    v18 = v11;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v10;
}

void __69__PGManager_People__relationshipInferencesForPersonLocalIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v55 = *MEMORY[0x277D85DE8];
  v3 = [a2 graph];
  [v3 _checkCanRead];
  v35 = [v3 meNode];
  if (v35)
  {
    v32 = a1;
    v4 = [*(a1 + 32) allObjects];
    v31 = v3;
    v5 = [v3 personNodesForPersonLocalIdentifiers:v4];

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v6 = v5;
    v36 = [v6 countByEnumeratingWithState:&v43 objects:v54 count:16];
    if (v36)
    {
      v33 = *v44;
      v34 = v6;
      do
      {
        v7 = 0;
        do
        {
          if (*v44 != v33)
          {
            objc_enumerationMutation(v6);
          }

          v37 = v7;
          v8 = *(*(&v43 + 1) + 8 * v7);
          v9 = [v8 localIdentifier];
          v10 = +[PGLogging sharedLogging];
          v11 = [v10 loggingConnection];

          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v48 = v9;
            _os_log_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_INFO, "[Person Knowledge] Querying for inferred relationships for person %@", buf, 0xCu);
          }

          v38 = v9;

          v12 = [MEMORY[0x277CBEB38] dictionary];
          v13 = [v35 relationshipEdgesToPersonNode:v8 matchingQuery:2];
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v14 = [v13 countByEnumeratingWithState:&v39 objects:v53 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v40;
            do
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v40 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v39 + 1) + 8 * i);
                v19 = [v18 label];
                v20 = PGRelationshipTypeFromRelationshipLabel(v19);
                v21 = MEMORY[0x277CCABB0];
                [v18 confidence];
                v22 = [v21 numberWithDouble:?];
                [v12 setObject:v22 forKeyedSubscript:v20];

                v23 = +[PGLogging sharedLogging];
                v24 = [v23 loggingConnection];

                if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                {
                  [v18 confidence];
                  *buf = 138412802;
                  v48 = v19;
                  v49 = 2112;
                  v50 = v38;
                  v51 = 2048;
                  v52 = v25;
                  _os_log_impl(&dword_22F0FC000, v24, OS_LOG_TYPE_INFO, "[Person Knowledge] Relationship of type %@ inferred for person %@ with confidence %.02f", buf, 0x20u);
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v39 objects:v53 count:16];
            }

            while (v15);
          }

          if ([v12 count])
          {
            v26 = v38;
            [*(v32 + 40) setObject:v12 forKeyedSubscript:v38];
          }

          else
          {
            v27 = +[PGLogging sharedLogging];
            v28 = [v27 loggingConnection];

            v26 = v38;
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v48 = v38;
              _os_log_impl(&dword_22F0FC000, v28, OS_LOG_TYPE_INFO, "[Person Knowledge] No inferred relationships found for person %@", buf, 0xCu);
            }
          }

          v6 = v34;

          v7 = v37 + 1;
        }

        while (v37 + 1 != v36);
        v36 = [v34 countByEnumeratingWithState:&v43 objects:v54 count:16];
      }

      while (v36);
    }

    v3 = v31;
  }

  else
  {
    v29 = +[PGLogging sharedLogging];
    v6 = [v29 loggingConnection];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, v6, OS_LOG_TYPE_INFO, "[Person Knowledge] No relationship inferences found due to nil me node", buf, 2u);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (BOOL)mePersonContactIdentifierDidChangeWithGraphUpdate:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PGManager *)self loggingConnection];
  v6 = os_signpost_id_generate(v5);
  v7 = v5;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "MePersonContactIdentifierDidChange", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v9 = mach_absolute_time();
  *buf = 0;
  v22 = buf;
  v23 = 0x2020000000;
  v24 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __71__PGManager_People__mePersonContactIdentifierDidChangeWithGraphUpdate___block_invoke;
  v18[3] = &unk_27888A570;
  v10 = v4;
  v19 = v10;
  v20 = buf;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v18];
  v11 = mach_absolute_time();
  v12 = info;
  v13 = v8;
  v14 = v13;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *v26 = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v14, OS_SIGNPOST_INTERVAL_END, v6, "MePersonContactIdentifierDidChange", "", v26, 2u);
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *v26 = 136315394;
    v27 = "MePersonContactIdentifierDidChange";
    v28 = 2048;
    v29 = ((((v11 - v9) * v12.numer) / v12.denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", v26, 0x16u);
  }

  v15 = v22[24];

  _Block_object_dispose(buf, 8);
  v16 = *MEMORY[0x277D85DE8];
  return v15 & 1;
}

void __71__PGManager_People__mePersonContactIdentifierDidChangeWithGraphUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 graph];
  v4 = [v3 meNode];
  v5 = [v4 inferredPersonNode];
  v6 = [v4 localIdentifier];
  if ([v6 length])
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  v8 = [v7 localIdentifier];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__PGManager_People__mePersonContactIdentifierDidChangeWithGraphUpdate___block_invoke_2;
  v12[3] = &unk_27887FBA8;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v8;
  v14 = v9;
  v11 = v8;
  [v10 enumerateConsolidatedChanges:v12];
}

void __71__PGManager_People__mePersonContactIdentifierDidChangeWithGraphUpdate___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  v5 = objc_autoreleasePoolPush();
  if ([v9 type] == 6)
  {
    v6 = v9;
    v7 = [v6 personLocalIdentifier];
    v8 = [v6 propertyNames];

    if ([v7 isEqualToString:*(a1 + 32)] && objc_msgSend(v8, "containsObject:", @"cnid"))
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a3 = 1;
    }
  }

  objc_autoreleasePoolPop(v5);
}

- (id)assetIdentifiersForPersonLocalIdentifiers:(id)a3
{
  v42[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__7680;
  v38 = __Block_byref_object_dispose__7681;
  v39 = 0;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __63__PGManager_People__assetIdentifiersForPersonLocalIdentifiers___block_invoke;
  v31[3] = &unk_27888A570;
  v6 = v4;
  v32 = v6;
  v33 = &v34;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v31];
  if ([v35[5] count])
  {
    v7 = [(PGManager *)self photoLibrary];
    v8 = [v7 librarySpecificFetchOptions];

    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __63__PGManager_People__assetIdentifiersForPersonLocalIdentifiers___block_invoke_2;
    v29[3] = &unk_278887698;
    v10 = v9;
    v30 = v10;
    [v6 enumerateObjectsUsingBlock:v29];
    v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN (%@) AND ANY %K.%K IN (%@)", @"moment.uuid", v35[5], @"detectedFaces", @"personForFace.personUUID", v10];
    v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
    v42[0] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:1];
    [v8 setSortDescriptors:v13];

    [v8 setInternalPredicate:v11];
    [v8 setChunkSizeForFetch:2000];
    v41 = *MEMORY[0x277CD9AA8];
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
    [v8 setFetchPropertySets:v14];

    [v8 setIncludeAssetSourceTypes:5];
    v15 = [(PGManager *)self photoLibrary];
    [v8 setPhotoLibrary:v15];

    [v8 setIncludeGuestAssets:1];
    [MEMORY[0x277CD97A8] fetchAssetsWithOptions:v8];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v16 = v26 = 0u;
    v17 = [v16 countByEnumeratingWithState:&v25 objects:v40 count:16];
    if (v17)
    {
      v18 = *v26;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = [*(*(&v25 + 1) + 8 * i) localIdentifier];
          [v5 addObject:v20];
        }

        v17 = [v16 countByEnumeratingWithState:&v25 objects:v40 count:16];
      }

      while (v17);
    }
  }

  v21 = MEMORY[0x277CBEBF8];
  if (v5)
  {
    v21 = v5;
  }

  v22 = v21;

  _Block_object_dispose(&v34, 8);
  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

void __63__PGManager_People__assetIdentifiersForPersonLocalIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 graph];
  v10 = [PGGraphPersonNodeCollection personNodesForLocalIdentifiers:v3 inGraph:v4];

  v5 = [v10 socialGroupNodes];
  v6 = [v5 momentNodes];
  v7 = [v6 uuids];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void __63__PGManager_People__assetIdentifiersForPersonLocalIdentifiers___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CD9918] uuidFromLocalIdentifier:a2];
  [*(a1 + 32) addObject:v3];
}

- (id)assetCollectionsForPersonLocalIdentifiers:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__7680;
  v18 = __Block_byref_object_dispose__7681;
  v19 = 0;
  v5 = [(PGManager *)self photoLibrary];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__PGManager_People__assetCollectionsForPersonLocalIdentifiers___block_invoke;
  v10[3] = &unk_278888EB8;
  v6 = v4;
  v11 = v6;
  v13 = &v14;
  v7 = v5;
  v12 = v7;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v10];
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

void __63__PGManager_People__assetCollectionsForPersonLocalIdentifiers___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v14 = [v3 graph];
  v4 = a1[4];
  v5 = [v3 graph];

  v6 = [PGGraphPersonNodeCollection personNodesForLocalIdentifiers:v4 inGraph:v5];

  v7 = [v6 count];
  if (v7)
  {
    if (v7 == 1)
    {
      v8 = [v6 socialGroupNodes];
      v9 = [v8 momentNodes];
    }

    else
    {
      v9 = [v14 momentNodesForPersonNodes:v6];
    }

    v10 = [v9 temporarySet];
    v11 = [v14 momentsForMomentNodes:v10 inPhotoLibrary:a1[5] sortChronologically:1];
    v12 = *(a1[6] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }
}

- (id)maximalSocialGroupsOverlappingMemberLocalIdentifiers:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__7680;
  v18 = __Block_byref_object_dispose__7681;
  v19 = 0;
  v5 = [(PGManager *)self photoLibrary];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__PGManager_People__maximalSocialGroupsOverlappingMemberLocalIdentifiers___block_invoke;
  v10[3] = &unk_278888EB8;
  v13 = &v14;
  v6 = v4;
  v11 = v6;
  v7 = v5;
  v12 = v7;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v10];
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

void __74__PGManager_People__maximalSocialGroupsOverlappingMemberLocalIdentifiers___block_invoke(void *a1, void *a2)
{
  v9 = [a2 graph];
  v3 = [v9 maximalSocialGroupsOverlappingMemberLocalIdentifiers:a1[4]];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [PGPeopleUtilities validateSocialGroups:*(*(a1[6] + 8) + 40) withPhotoLibrary:a1[5] graph:v9];
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (id)socialGroupsOverlappingMemberLocalIdentifiers:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__7680;
  v18 = __Block_byref_object_dispose__7681;
  v19 = 0;
  v5 = [(PGManager *)self photoLibrary];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__PGManager_People__socialGroupsOverlappingMemberLocalIdentifiers___block_invoke;
  v10[3] = &unk_278888EB8;
  v13 = &v14;
  v6 = v4;
  v11 = v6;
  v7 = v5;
  v12 = v7;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v10];
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

void __67__PGManager_People__socialGroupsOverlappingMemberLocalIdentifiers___block_invoke(void *a1, void *a2)
{
  v9 = [a2 graph];
  v3 = [v9 socialGroupsOverlappingMemberLocalIdentifiers:a1[4]];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [PGPeopleUtilities validateSocialGroups:*(*(a1[6] + 8) + 40) withPhotoLibrary:a1[5] graph:v9];
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (id)allSocialGroupsForMemberLocalIdentifier:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__7680;
  v23 = __Block_byref_object_dispose__7681;
  v24 = 0;
  v8 = [(PGManager *)self photoLibrary];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__PGManager_People__allSocialGroupsForMemberLocalIdentifier_options___block_invoke;
  v14[3] = &unk_278889308;
  v18 = &v19;
  v9 = v6;
  v15 = v9;
  v10 = v7;
  v16 = v10;
  v11 = v8;
  v17 = v11;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v14];
  v12 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v12;
}

void __69__PGManager_People__allSocialGroupsForMemberLocalIdentifier_options___block_invoke(uint64_t a1, void *a2)
{
  v11 = [a2 graph];
  v3 = [v11 allSocialGroupsForMemberLocalIdentifier:*(a1 + 32) options:*(a1 + 40)];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x277D3AFF0]];
  v7 = v6 != 0;

  v8 = [PGPeopleUtilities validateSocialGroups:*(*(*(a1 + 56) + 8) + 40) withPhotoLibrary:*(a1 + 48) graph:v11 usePersonMoments:v7];
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

- (id)sortedArrayForPersonLocalIdentifiers:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__PGManager_People__sortedArrayForPersonLocalIdentifiers___block_invoke;
  v11[3] = &unk_27888A638;
  v12 = v4;
  v6 = v5;
  v13 = v6;
  v7 = v4;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v11];
  v8 = v13;
  v9 = v6;

  return v6;
}

void __58__PGManager_People__sortedArrayForPersonLocalIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [a2 graph];
  v4 = [*(a1 + 32) allObjects];
  v5 = [v3 personNodesForPersonLocalIdentifiers:v4];

  v6 = [v5 sortedArrayUsingComparator:PGManagerPersonNodeComparisonBlock];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(a1 + 40);
        v12 = [*(*(&v14 + 1) + 8 * v10) localIdentifier];
        [v11 addObject:v12];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)blockedFeatures
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = [(PGManager *)self photoLibrary];
  v4 = [v3 librarySpecificFetchOptions];

  v32 = v4;
  v31 = [MEMORY[0x277CD98D8] fetchBlockedMemoriesWithOptions:v4];
  v5 = [v31 fetchedObjects];
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v38;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v38 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v37 + 1) + 8 * i) blacklistedFeature];
        if (v12)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v9);
  }

  v30 = v7;

  v13 = [(PGManager *)self photoLibrary];
  v14 = [v13 librarySpecificFetchOptions];

  v42 = *MEMORY[0x277CD9C68];
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
  [v14 setFetchPropertySets:v15];

  v29 = v14;
  v16 = [MEMORY[0x277CD9938] fetchPersonsWithUserFeedbackWithOptions:v14];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v34;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v34 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v33 + 1) + 8 * j);
        v22 = [v21 userFeedbackProperties];
        v23 = [v22 userFeedback];

        if ([v23 type] == 2 || objc_msgSend(v23, "type") == 3)
        {
          v24 = MEMORY[0x277CD98F0];
          v25 = [v21 localIdentifier];
          v26 = [v24 peopleMemoryFeatureWithPersonLocalIdentifier:v25];

          if (v26)
          {
            [v6 addObject:v26];
          }
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v18);
  }

  v27 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)date:(id)a3 isEqualToDate:(id)a4
{
  if (a3 && a4)
  {
    return [a3 isEqualToDate:a4];
  }

  else
  {
    return a3 == a4;
  }
}

- (id)_changingPropertyKeysForPersonProperties:(id)a3 andPersonContactProperties:(id)a4
{
  v82 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToDictionary:v7])
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB98]);
    goto LABEL_67;
  }

  v9 = [(PGManager *)self workingContext];
  v10 = [v9 loggingConnection];

  v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v12 = [v6 objectForKeyedSubscript:@"id"];
  v13 = [v7 objectForKeyedSubscript:@"id"];
  if (v13)
  {
    if (-[PGManager length](v12, "length") && [v13 length] && (-[PGManager isEqualToString:](v12, "isEqualToString:", v13) & 1) == 0)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v77 = v13;
        v78 = 2112;
        v79 = v12;
        _os_log_error_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_ERROR, "Trying to merge person local identifier %@ into person node with local identifier %@", buf, 0x16u);
      }

      v8 = objc_alloc_init(MEMORY[0x277CBEB98]);
      goto LABEL_66;
    }

    if (!-[PGManager length](v12, "length") && [v13 length])
    {
      [v11 addObject:@"id"];
    }
  }

  v73 = v13;
  v14 = [v6 objectForKeyedSubscript:@"cnid"];
  v15 = [v7 objectForKeyedSubscript:@"cnid"];
  if (v15)
  {
    if (-[PGManager length](v14, "length") && [v15 length] && (-[PGManager isEqualToString:](v14, "isEqualToString:", v15) & 1) == 0 && os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v77 = v15;
      v78 = 2112;
      v79 = v14;
      _os_log_error_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_ERROR, "Trying to merge person contact identifier %@ into person node with contact identifier %@", buf, 0x16u);
    }

    if (!-[PGManager length](v14, "length") && [v15 length])
    {
      [v11 addObject:@"cnid"];
    }
  }

  v71 = v15;
  v16 = [v6 objectForKeyedSubscript:@"shareparticipant"];
  v17 = [v7 objectForKeyedSubscript:@"shareparticipant"];
  v18 = v17;
  if (v17)
  {
    if ([v17 length] && objc_msgSend(v16, "length") && (objc_msgSend(v16, "isEqualToString:", v18) & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v77 = v18;
      v78 = 2112;
      v79 = self;
      v80 = 2112;
      v81 = v16;
      _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Trying to merge ShareParticipantIdentifier %@ into person node %@ with share participant identifier %@", buf, 0x20u);
      if (!v16)
      {
LABEL_25:
        if ([v18 length])
        {
          [v11 addObject:@"shareparticipant"];
        }
      }
    }

    else if (!v16)
    {
      goto LABEL_25;
    }
  }

  v69 = v18;
  v74 = v12;
  v75 = v10;
  v19 = [v6 objectForKeyedSubscript:@"name"];
  v67 = [v7 objectForKeyedSubscript:@"name"];
  v20 = [v67 length];
  v68 = v19;
  if (v20 > [v19 length])
  {
    [v11 addObject:@"name"];
  }

  v21 = [v6 objectForKeyedSubscript:@"sex"];
  v22 = [v21 unsignedIntegerValue];

  v23 = [v7 objectForKeyedSubscript:@"sex"];
  v24 = [v23 unsignedIntegerValue];

  if (!v22 && v24)
  {
    [v11 addObject:@"sex"];
  }

  v25 = [v6 objectForKeyedSubscript:@"agecategory"];
  v26 = [v25 unsignedIntegerValue];

  v27 = [v7 objectForKeyedSubscript:@"agecategory"];
  v28 = [v27 unsignedIntegerValue];

  if (!v26 && v28)
  {
    [v11 addObject:@"agecategory"];
  }

  v29 = [v6 objectForKeyedSubscript:@"fav"];
  v30 = [v29 BOOLValue];

  v31 = [v7 objectForKeyedSubscript:@"fav"];
  v32 = [v31 BOOLValue];

  if ((v30 & 1) == 0 && v32)
  {
    [v11 addObject:@"fav"];
  }

  v33 = [v6 objectForKeyedSubscript:@"usercreated"];
  v34 = [v33 BOOLValue];

  v35 = [v7 objectForKeyedSubscript:@"usercreated"];
  v36 = [v35 BOOLValue];

  if ((v34 & 1) == 0 && v36)
  {
    [v11 addObject:@"usercreated"];
  }

  v37 = [v6 objectForKeyedSubscript:@"bday"];
  v66 = v37;
  if (v37)
  {
    v38 = MEMORY[0x277CBEAA8];
    [v37 doubleValue];
    v39 = [v38 dateWithTimeIntervalSince1970:?];
  }

  else
  {
    v39 = 0;
  }

  v40 = [v7 objectForKeyedSubscript:@"bday"];
  v64 = v40;
  if (v40)
  {
    v41 = MEMORY[0x277CBEAA8];
    [v40 doubleValue];
    v42 = [v41 dateWithTimeIntervalSince1970:?];
  }

  else
  {
    v42 = 0;
  }

  v63 = v42;
  if (![(PGManager *)self date:v39 isEqualToDate:v42])
  {
    [v11 addObject:@"bday"];
  }

  v43 = [v6 objectForKeyedSubscript:@"pbday"];
  v72 = v14;
  v62 = v43;
  if (v43)
  {
    v44 = MEMORY[0x277CBEAA8];
    [v43 doubleValue];
    v45 = [v44 dateWithTimeIntervalSince1970:?];
  }

  else
  {
    v45 = 0;
  }

  v65 = v39;
  v46 = [v7 objectForKeyedSubscript:@"pbday"];
  v47 = v46;
  if (v46)
  {
    v48 = MEMORY[0x277CBEAA8];
    [v46 doubleValue];
    v49 = [v48 dateWithTimeIntervalSince1970:?];
  }

  else
  {
    v49 = 0;
  }

  if (![(PGManager *)self date:v45 isEqualToDate:v49, v45])
  {
    [v11 addObject:@"pbday"];
  }

  v50 = v11;
  v51 = [v6 objectForKeyedSubscript:@"anniv"];
  v52 = v51;
  v70 = v16;
  if (v51)
  {
    v53 = MEMORY[0x277CBEAA8];
    [v51 doubleValue];
    v54 = [v53 dateWithTimeIntervalSince1970:?];
  }

  else
  {
    v54 = 0;
  }

  v55 = [v7 objectForKeyedSubscript:@"anniv"];
  v56 = v55;
  if (v55)
  {
    v57 = MEMORY[0x277CBEAA8];
    [v55 doubleValue];
    v58 = [v57 dateWithTimeIntervalSince1970:?];
  }

  else
  {
    v58 = 0;
  }

  if (![(PGManager *)self date:v54 isEqualToDate:v58])
  {
    [v50 addObject:@"anniv"];
  }

  v8 = v50;

  v11 = v50;
  v12 = v74;
  v10 = v75;
  v13 = v73;
LABEL_66:

LABEL_67:
  v59 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_homeWorkNodesByPersonNodeForContactIdentifiers:(id)a3 inGraph:(id)a4
{
  v5 = MEMORY[0x277CBEB98];
  v6 = a4;
  v7 = [v5 setWithArray:a3];
  v8 = [PGGraphPersonNodeCollection personNodesForContactIdentifiers:v7 inGraph:v6];

  v9 = MEMORY[0x277D22BF8];
  v10 = +[PGGraphPersonNode homeOrWorkOfPerson];
  v11 = [v9 adjacencyWithSources:v8 relation:v10 targetsClass:objc_opt_class()];

  return v11;
}

- (id)graphUpdateForContactsChangesWithProgressReporter:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PGManager *)self graphLoggingConnection];
  v6 = os_signpost_id_generate(v5);
  v7 = v5;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "GetGraphUpdateForContactChanges", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v33 = mach_absolute_time();
  v9 = [(PGManager *)self workingContext];
  v10 = [v9 loggingConnection];

  v11 = [PGGraphUpdate alloc];
  v12 = [(PGManager *)self photoLibrary];
  v13 = [(PGGraphUpdate *)v11 initWithPhotoLibrary:v12 updateType:1];

  v14 = v4;
  v15 = v13;
  *buf = 0;
  v40 = buf;
  v41 = 0x2020000000;
  v42 = 0;
  v16 = [v14 isCancelledWithProgress:0.0];
  v40[24] = v16;
  if (!v16)
  {
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __73__PGManager_Contacts__graphUpdateForContactsChangesWithProgressReporter___block_invoke;
    v34[3] = &unk_278883A18;
    v34[4] = self;
    v38 = buf;
    v18 = v14;
    v35 = v18;
    v19 = v10;
    v36 = v19;
    v20 = v15;
    v37 = v20;
    [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v34];
    if (v40[24])
    {
      v40[24] = 1;
    }

    else
    {
      v21 = [v18 isCancelledWithProgress:1.0];
      v40[24] = v21;
      if ((v21 & 1) == 0)
      {
        v25 = mach_absolute_time();
        numer = info.numer;
        denom = info.denom;
        v28 = v8;
        v29 = v28;
        if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
        {
          *v44 = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v29, OS_SIGNPOST_INTERVAL_END, v6, "GetGraphUpdateForContactChanges", "", v44, 2u);
        }

        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *v44 = 136315394;
          *v45 = "GetGraphUpdateForContactChanges";
          *&v45[8] = 2048;
          *&v45[10] = ((((v25 - v33) * numer) / denom) / 1000000.0);
          _os_log_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", v44, 0x16u);
        }

        if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          goto LABEL_21;
        }

        *v44 = 0;
        v23 = "PGManager (Contacts): finished proceeding with the graph update from Contacts";
        v22 = v19;
        v24 = 2;
        goto LABEL_20;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
LABEL_21:
      v30 = v20;

      goto LABEL_22;
    }

    *v44 = 67109378;
    *v45 = 92;
    *&v45[4] = 2080;
    *&v45[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Contacts.m";
    v22 = MEMORY[0x277D86220];
    v23 = "Cancelled at line %d in file %s";
    v24 = 18;
LABEL_20:
    _os_log_impl(&dword_22F0FC000, v22, OS_LOG_TYPE_INFO, v23, v44, v24);
    goto LABEL_21;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v44 = 67109378;
    *v45 = 34;
    *&v45[4] = 2080;
    *&v45[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Contacts.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v44, 0x12u);
  }

  v17 = v15;
LABEL_22:
  _Block_object_dispose(buf, 8);

  v31 = *MEMORY[0x277D85DE8];

  return v15;
}

void __73__PGManager_Contacts__graphUpdateForContactsChangesWithProgressReporter___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 graph];
  v5 = [PGGraphPersonNodeCollection personNodesIncludingMeInGraph:v4];
  if ([v5 count])
  {
    v6 = *(a1 + 32);
    v7 = [v5 contactIdentifiers];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __73__PGManager_Contacts__graphUpdateForContactsChangesWithProgressReporter___block_invoke_2;
    v30[3] = &unk_278889448;
    v32 = *(a1 + 64);
    v31 = *(a1 + 40);
    v8 = [v6 clsPersonByContactIdentifierWithPersonContactIdentifiers:v7 progressBlock:v30];

    if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
    {
      v9 = *(a1 + 48);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v8;
        _os_log_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_INFO, "PGManager (Contacts): people in Contacts: %@", &buf, 0xCu);
      }

      v10 = *(a1 + 32);
      v11 = [v8 allKeys];
      v12 = [v10 _homeWorkNodesByPersonNodeForContactIdentifiers:v11 inGraph:v4];

      *&buf = 0;
      *(&buf + 1) = &buf;
      v34 = 0x2020000000;
      v35 = 0x3FE3333333333333;
      v13 = 1.0 / [v5 count];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __73__PGManager_Contacts__graphUpdateForContactsChangesWithProgressReporter___block_invoke_253;
      v19[3] = &unk_278881DA0;
      v14 = v8;
      v15 = *(a1 + 32);
      v20 = v14;
      v21 = v15;
      v16 = v12;
      v22 = v16;
      v23 = v4;
      v24 = *(a1 + 48);
      v25 = *(a1 + 56);
      v29 = v13;
      v17 = *(a1 + 64);
      p_buf = &buf;
      v28 = v17;
      v26 = *(a1 + 40);
      [v5 enumerateNodesUsingBlock:v19];

      _Block_object_dispose(&buf, 8);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __73__PGManager_Contacts__graphUpdateForContactsChangesWithProgressReporter___block_invoke_2(uint64_t a1, _BYTE *a2)
{
  v4 = *(*(a1 + 40) + 8);
  if (*(v4 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:0.1];
    v4 = *(*(a1 + 40) + 8);
  }

  *(v4 + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

void __73__PGManager_Contacts__graphUpdateForContactsChangesWithProgressReporter___block_invoke_253(uint64_t a1, void *a2, _BYTE *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  v7 = [v5 contactIdentifier];
  if ([v7 length])
  {
    v8 = [v5 localIdentifier];
    v9 = [*(a1 + 32) objectForKeyedSubscript:v7];
    if (v9)
    {
      v20 = a3;
      v10 = [v5 propertyDictionary];
      v11 = [PGGraphPersonNode propertiesWithPerson:v9];
      v12 = [*(a1 + 40) _changingPropertyKeysForPersonProperties:v10 andPersonContactProperties:v11];
      if ([v12 count] || objc_msgSend(*(a1 + 40), "homeWorkAddressesDidChangeForPersonInContact:andPersonNode:withHomeWorkNodesByPersonNode:graph:", v9, v5, *(a1 + 48), *(a1 + 56)))
      {
        v13 = *(a1 + 64);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v22 = v5;
          v23 = 2112;
          v24 = v12;
          _os_log_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_INFO, "PGManager (Contacts): Update %@ with information from Contacts for property keys = %@", buf, 0x16u);
        }

        v14 = [[PGGraphPersonChange alloc] initWithPersonLocalIdentifier:v8 contactIdentifier:v7 propertyNames:v12];
        [*(a1 + 72) addChange:v14];
      }

      a3 = v20;
    }

    else
    {
      v15 = +[PGGraphPersonNode changedPropertyNamesForContactsChange];
      v16 = [[PGGraphPersonChange alloc] initWithPersonLocalIdentifier:v8 contactIdentifier:v7 propertyNames:v15];
      [*(a1 + 72) addChange:v16];
    }

    *(*(*(a1 + 88) + 8) + 24) = *(a1 + 104) + *(*(*(a1 + 88) + 8) + 24);
    v17 = *(*(a1 + 96) + 8);
    if (*(v17 + 24))
    {
      v18 = 1;
    }

    else
    {
      v18 = [*(a1 + 80) isCancelledWithProgress:*(*(*(a1 + 88) + 8) + 24)];
      v17 = *(*(a1 + 96) + 8);
    }

    *(v17 + 24) = v18;
    if (*(*(*(a1 + 96) + 8) + 24) == 1)
    {
      *a3 = 1;
    }
  }

  objc_autoreleasePoolPop(v6);
  v19 = *MEMORY[0x277D85DE8];
}

- (id)libraryStatisticsForCurrentPhotoLibrary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(PGManager *)self _momentsStatisticsForCurrentPhotoLibrary];
  if ([v4 count])
  {
    [v3 addEntriesFromDictionary:v4];
  }

  v5 = [(PGManager *)self _collectionStatisticsForCurrentPhotoLibrary];

  if ([v5 count])
  {
    [v3 addEntriesFromDictionary:v5];
  }

  v6 = [(PGManager *)self _yearsStatisticsForCurrentPhotoLibrary];

  if ([v6 count])
  {
    [v3 addEntriesFromDictionary:v6];
  }

  return v3;
}

- (id)_yearsStatisticsForCurrentPhotoLibrary
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(PGManager *)self photoLibrary];
  v5 = [v4 librarySpecificFetchOptions];

  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:1];
  v17[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  [v5 setSortDescriptors:v7];

  v8 = [MEMORY[0x277CD9848] fetchMomentListsWithSubtype:2 options:v5];
  v9 = [(PGManager *)self _extractYearStatsFromOrderedCollectionFetchResults:v8 fetchOptions:v5 yearEntryKey:@"startYear" numberOfYearsEntryKey:0];
  [v3 addEntriesFromDictionary:v9];
  v10 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"endDate" ascending:0];
  v16 = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  [v5 setSortDescriptors:v11];

  v12 = [MEMORY[0x277CD9848] fetchMomentListsWithSubtype:2 options:v5];
  v13 = [(PGManager *)self _extractYearStatsFromOrderedCollectionFetchResults:v12 fetchOptions:v5 yearEntryKey:@"endYear" numberOfYearsEntryKey:@"numberOfYearsWithAsset"];
  [v3 addEntriesFromDictionary:v13];

  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)_extractYearStatsFromOrderedCollectionFetchResults:(id)a3 fetchOptions:(id)a4 yearEntryKey:(id)a5 numberOfYearsEntryKey:(id)a6
{
  v38 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v27 = a4;
  v24 = a5;
  v26 = a6;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (!v10)
  {
    v12 = 0;
    v11 = 0;
    v18 = -1;
    v17 = obj;
    goto LABEL_18;
  }

  v11 = 0;
  v12 = 0;
  v13 = *v34;
  while (2)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v34 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v33 + 1) + 8 * i);
      v16 = [MEMORY[0x277CD97B8] fetchMomentsInMomentList:v15 options:v27];
      v29 = 0;
      v30 = &v29;
      v31 = 0x2020000000;
      v32 = 0;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __125__PGManager_Diagnostics___extractYearStatsFromOrderedCollectionFetchResults_fetchOptions_yearEntryKey_numberOfYearsEntryKey___block_invoke;
      v28[3] = &unk_278881F50;
      v28[4] = &v29;
      [v16 enumerateObjectsUsingBlock:v28];
      if (v30[3])
      {
        if (!v12)
        {
          v12 = [v15 startDate];
        }

        if (!v26)
        {
          _Block_object_dispose(&v29, 8);

          goto LABEL_15;
        }

        ++v11;
      }

      _Block_object_dispose(&v29, 8);
    }

    v10 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_15:

  if (v12)
  {
    v17 = [MEMORY[0x277CBEA80] currentCalendar];
    v18 = [v17 component:4 fromDate:v12];
LABEL_18:

    goto LABEL_20;
  }

  v18 = -1;
LABEL_20:
  v19 = [MEMORY[0x277CBEB38] dictionary];
  v20 = [MEMORY[0x277CCABB0] numberWithInteger:v18];
  [v19 setObject:v20 forKey:v24];

  if (v26)
  {
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
    [v19 setObject:v21 forKey:v26];
  }

  v22 = *MEMORY[0x277D85DE8];

  return v19;
}

uint64_t __125__PGManager_Diagnostics___extractYearStatsFromOrderedCollectionFetchResults_fetchOptions_yearEntryKey_numberOfYearsEntryKey___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 estimatedAssetCount];
  *(*(*(a1 + 32) + 8) + 24) += result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    *a4 = 1;
  }

  return result;
}

- (id)_collectionStatisticsForCurrentPhotoLibrary
{
  v43[1] = *MEMORY[0x277D85DE8];
  v29 = [MEMORY[0x277CBEB38] dictionary];
  v2 = [(PGManager *)self photoLibrary];
  v32 = [v2 librarySpecificFetchOptions];

  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:1];
  v43[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:1];
  [v32 setSortDescriptors:v4];

  v5 = [MEMORY[0x277CD9848] fetchMomentListsWithSubtype:1 options:v32];
  v6 = [MEMORY[0x277CBEB38] dictionary];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v5;
  v7 = 0;
  v8 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v8)
  {
    v31 = *v39;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v39 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v38 + 1) + 8 * i);
        v11 = [v10 localIdentifier];
        v34 = 0;
        v35 = &v34;
        v36 = 0x2020000000;
        v37 = 0;
        v12 = [MEMORY[0x277CD97B8] fetchMomentsInMomentList:v10 options:v32];
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __69__PGManager_Diagnostics___collectionStatisticsForCurrentPhotoLibrary__block_invoke;
        v33[3] = &unk_278881F50;
        v33[4] = &v34;
        [v12 enumerateObjectsUsingBlock:v33];
        v13 = [v6 objectForKeyedSubscript:v11];
        if (v13)
        {
          v14 = v13;
        }

        else
        {
          v14 = &unk_2844832E8;
        }

        v15 = [v14 unsignedIntegerValue];
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v35[3] + v15];
        [v6 setObject:v16 forKeyedSubscript:v11];

        v17 = v35[3];
        _Block_object_dispose(&v34, 8);

        v7 += v17;
      }

      v8 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v8);
  }

  v18 = [v6 count];
  v19 = v18;
  if (v18)
  {
    v20 = v7 / v18;
  }

  else
  {
    v20 = 0;
  }

  v21 = [v6 allValues];
  v22 = [(PGManager *)self medianValueFromUnsignedItegerArray:v21];

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19];
  [v29 setObject:v23 forKey:@"numberOfCollections"];

  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v20];
  [v29 setObject:v24 forKey:@"averageNumberOfAssetsInCollections"];

  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v22];
  [v29 setObject:v25 forKey:@"medianNumberOfAssetsInCollections"];

  v26 = *MEMORY[0x277D85DE8];

  return v29;
}

uint64_t __69__PGManager_Diagnostics___collectionStatisticsForCurrentPhotoLibrary__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 estimatedAssetCount];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

- (id)_momentsStatisticsForCurrentPhotoLibrary
{
  v35 = *MEMORY[0x277D85DE8];
  v29 = [MEMORY[0x277CBEB38] dictionary];
  v27 = self;
  v3 = [(PGManager *)self photoLibrary];
  v4 = [v3 librarySpecificFetchOptions];

  v28 = v4;
  v5 = [MEMORY[0x277CD97B8] fetchMomentsWithOptions:v4];
  v26 = [v5 count];
  v6 = [MEMORY[0x277CBEB18] array];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    v12 = *v31;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v30 + 1) + 8 * i);
        v15 = objc_autoreleasePoolPush();
        v16 = [v14 estimatedAssetCount];
        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16];
        [v6 addObject:v17];

        v10 += v16;
        if (v16 == 1)
        {
          ++v11;
        }

        objc_autoreleasePoolPop(v15);
      }

      v9 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v18 = v10 / v26;
  v19 = [(PGManager *)v27 medianValueFromUnsignedItegerArray:v6];
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v26];
  [v29 setObject:v20 forKey:@"numberOfMoments"];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18];
  [v29 setObject:v21 forKey:@"averageNumberOfAssetsInMoments"];

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19];
  [v29 setObject:v22 forKey:@"medianNumberOfAssetsInMoments"];

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
  [v29 setObject:v23 forKey:@"numberOfMomentsWithSingleAsset"];

  v24 = *MEMORY[0x277D85DE8];

  return v29;
}

- (unint64_t)medianValueFromUnsignedItegerArray:(id)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count])
  {
    if ([v3 count] == 1)
    {
      v4 = [v3 firstObject];
      v5 = [v4 unsignedIntegerValue];
    }

    else
    {
      v4 = [v3 sortedArrayUsingSelector:sel_compare_];
      v6 = [v3 count];
      v7 = [v4 count] >> 1;
      if (v6)
      {
        v8 = [v4 objectAtIndex:v7];
        v5 = [v8 unsignedIntegerValue];
      }

      else
      {
        v8 = [v4 objectAtIndex:v7 - 1];
        v14[0] = v8;
        v9 = [v4 objectAtIndex:v7];
        v14[1] = v9;
        v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
        v11 = [v10 valueForKeyPath:@"@avg.self"];
        v5 = [v11 unsignedIntegerValue];
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)diagnosticsSummaryInfoOnExistingMemoriesForCurrentPhotoLibrary
{
  v24[1] = *MEMORY[0x277D85DE8];
  v3 = [(PGManager *)self photoLibrary];
  v4 = [v3 librarySpecificFetchOptions];

  [v4 setIncludePendingMemories:0];
  [v4 setIncludeRejectedMemories:0];
  v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:0];
  v24[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  [v4 setSortDescriptors:v6];

  [v4 setFetchLimit:15];
  v7 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v4];
  v8 = [MEMORY[0x277CBEB38] dictionary];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        v15 = [(PGManager *)self _diagnosticSummaryInfoForMemory:v14, v19];
        v16 = [v14 localIdentifier];
        [v8 setValue:v15 forKey:v16];
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_diagnosticSummaryInfoForMemory:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [v4 localizedTitle];
  v7 = [v6 length];

  if (v7)
  {
    v8 = [v4 localizedTitle];
    [v5 setObject:v8 forKey:@"title"];
  }

  v9 = [v4 assetCollectionType];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
  [v5 setObject:v10 forKey:@"assetCollectionType"];

  v11 = [v4 assetCollectionSubtype];
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
  [v5 setObject:v12 forKey:@"assetCollectionSubType"];

  v13 = [v4 creationDate];

  if (v13)
  {
    v14 = [v4 creationDate];
    [v5 setObject:v14 forKey:@"creationDate"];
  }

  v15 = [v4 localIdentifier];

  if (v15)
  {
    v16 = [v4 localIdentifier];
    [v5 setObject:v16 forKey:@"localIdentifier"];
  }

  v17 = [v4 isRejected];
  v18 = [MEMORY[0x277CCABB0] numberWithBool:v17];
  [v5 setObject:v18 forKey:@"rejected"];

  v19 = [v4 isFavorite];
  v20 = [MEMORY[0x277CCABB0] numberWithBool:v19];
  [v5 setObject:v20 forKey:@"favorite"];

  v21 = [v4 pendingState];
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v21];
  [v5 setObject:v22 forKey:@"pendingState"];

  v23 = [v4 photosGraphVersion];
  v24 = [MEMORY[0x277CCABB0] numberWithLongLong:v23];
  [v5 setObject:v24 forKey:@"photoGraphVersion"];

  v25 = [v4 photosGraphProperties];
  if (v25)
  {
    v26 = [(PGManager *)self _sanitizeGraphDataDictionaryForArchiving:v25 referencedMemory:v4];
    [v5 setObject:v26 forKey:@"photosGraphProperties"];
  }

  v27 = [v4 movieData];
  if (v27)
  {
    [v5 setObject:v27 forKey:@"movieData"];
  }

  [v4 score];
  v28 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  [v5 setObject:v28 forKey:@"score"];

  v29 = [v4 uuid];
  if (v29)
  {
    [v5 setObject:v29 forKey:@"uuid"];
  }

  v30 = [v4 lastViewedDate];
  if (v30)
  {
    [v5 setObject:v30 forKey:@"lastViewedDate"];
  }

  v31 = [v4 lastMoviePlayedDate];
  if (v31)
  {
    [v5 setObject:v31 forKey:@"lastMoviePlayedDate"];
  }

  v32 = [v4 category];
  v33 = [MEMORY[0x277CD98D8] stringForCategory:v32];
  [v5 setObject:v33 forKey:@"category"];
  v34 = [v4 subcategory];
  v35 = [MEMORY[0x277CD98D8] stringForSubcategory:v34];
  [v5 setObject:v35 forKey:@"subCategory"];
  v36 = [(PGManager *)self _extractDatesAndAssetCountsFromMemory:v4];
  [v5 addEntriesFromDictionary:v36];

  return v5;
}

- (id)_extractDatesAndAssetCountsFromMemory:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [v3 photoLibrary];
  v6 = [v5 librarySpecificFetchOptions];

  [v6 setIncludeGuestAssets:1];
  v7 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:v3 options:v6];
  v8 = [v7 count];
  if (v8)
  {
    v9 = v8;
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__26362;
    v25 = __Block_byref_object_dispose__26363;
    v26 = 0;
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__26362;
    v19 = __Block_byref_object_dispose__26363;
    v20 = 0;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __64__PGManager_Diagnostics___extractDatesAndAssetCountsFromMemory___block_invoke;
    v14[3] = &unk_278881F28;
    v14[4] = &v21;
    v14[5] = &v15;
    [v7 enumerateObjectsUsingBlock:v14];
    v10 = v22[5];
    if (v10)
    {
      [v4 setObject:v10 forKey:@"startDate"];
    }

    v11 = v16[5];
    if (v11)
    {
      [v4 setObject:v11 forKey:@"endDate"];
    }

    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
    [v4 setObject:v12 forKey:@"estimatedAssetCount"];

    _Block_object_dispose(&v15, 8);
    _Block_object_dispose(&v21, 8);
  }

  return v4;
}

void __64__PGManager_Diagnostics___extractDatesAndAssetCountsFromMemory___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 creationDate];
  v4 = v3;
  v5 = *(*(a1 + 32) + 8);
  obj = v3;
  if (*(v5 + 40))
  {
    if ([v3 compare:?] != -1)
    {
      goto LABEL_5;
    }

    v5 = *(*(a1 + 32) + 8);
    v4 = obj;
  }

  objc_storeStrong((v5 + 40), v4);
LABEL_5:
  v6 = *(*(a1 + 40) + 8);
  if (*(v6 + 40))
  {
    if ([obj compare:?] != 1)
    {
      goto LABEL_9;
    }

    v6 = *(*(a1 + 40) + 8);
  }

  objc_storeStrong((v6 + 40), obj);
LABEL_9:
}

- (id)_sanitizeGraphDataDictionaryForArchiving:(id)a3 referencedMemory:(id)a4
{
  v56 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 objectForKey:@"backingMoments"];
    v9 = [v6 objectForKey:@"collectionsInfo"];
    v41 = v7;
    v44 = v9;
    if (!v8 || !v9)
    {
      v10 = [(PGManager *)self photoLibrary];
      v11 = [v10 librarySpecificFetchOptions];

      v42 = v11;
      v12 = [MEMORY[0x277CD97B8] fetchMomentsBackingMemory:v7 options:v11];
      v13 = [v12 fetchedObjects];
      v14 = [v6 objectForKeyedSubscript:@"info"];
      v15 = [v14 objectForKeyedSubscript:@"meaningLabels"];

      v16 = [MEMORY[0x277CBEB98] setWithArray:v15];
      v17 = [(PGManager *)self memoryDebugInformationWithMoments:v13 meaningLabels:v16];

      v18 = [v17 objectForKeyedSubscript:@"backingMoments"];
      v19 = v18;
      if (v8 || !v18)
      {
        v21 = +[PGLogging sharedLogging];
        v22 = [v21 loggingConnection];

        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v53 = v13;
          _os_log_impl(&dword_22F0FC000, v22, OS_LOG_TYPE_INFO, "Memory backing moments debug information is not available for moments: %@", buf, 0xCu);
        }
      }

      else
      {
        v8 = [v17 objectForKeyedSubscript:@"backingMoments"];
      }

      v23 = [v17 objectForKeyedSubscript:@"collectionsInfo"];

      if (v44 || !v23)
      {
        v24 = +[PGLogging sharedLogging];
        v25 = [v24 loggingConnection];

        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = [v15 componentsJoinedByString:{@", "}];
          *buf = 138412546;
          v53 = v13;
          v54 = 2112;
          v55 = v26;
          _os_log_impl(&dword_22F0FC000, v25, OS_LOG_TYPE_INFO, "Memory graph collections debug information is not available for moments: '%@' and meanings: '%@'", buf, 0x16u);
        }
      }

      else
      {
        v44 = [v17 objectForKeyedSubscript:@"collectionsInfo"];
      }
    }

    v43 = v6;
    v40 = [v6 mutableCopy];
    v27 = [MEMORY[0x277CBEB18] array];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v28 = v8;
    v29 = [v28 countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v48;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v48 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v47 + 1) + 8 * i);
          v34 = [v33 objectForKey:@"keywords"];
          if (v34)
          {
            v35 = [MEMORY[0x277CBEB38] dictionary];
            v45[0] = MEMORY[0x277D85DD0];
            v45[1] = 3221225472;
            v45[2] = __84__PGManager_Diagnostics___sanitizeGraphDataDictionaryForArchiving_referencedMemory___block_invoke;
            v45[3] = &unk_278881F00;
            v46 = v35;
            v36 = v35;
            [v34 enumerateKeysAndObjectsUsingBlock:v45];
            v37 = [v33 mutableCopy];
            [v37 setObject:v36 forKey:@"keywords"];
            [v27 addObject:v37];
          }

          else
          {
            [v27 addObject:v33];
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v47 objects:v51 count:16];
      }

      while (v30);
    }

    v20 = v40;
    [v40 setObject:v27 forKey:@"backingMoments"];
    if (v44)
    {
      [v40 setObject:v44 forKey:@"collectionsInfo"];
    }

    v7 = v41;
    v6 = v43;
  }

  else
  {
    v20 = [MEMORY[0x277CBEAC0] dictionary];
  }

  v38 = *MEMORY[0x277D85DE8];

  return v20;
}

void __84__PGManager_Diagnostics___sanitizeGraphDataDictionaryForArchiving_referencedMemory___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 stringValue];

    v5 = v6;
  }

  [*(a1 + 32) setObject:v7 forKey:v5];
}

- (id)highlightDebugInformationWithHighlight:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [(PGManager *)self photoLibrary];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__PGManager_Diagnostics__highlightDebugInformationWithHighlight___block_invoke;
  v12[3] = &unk_27888A408;
  v13 = v4;
  v14 = v6;
  v7 = v5;
  v15 = v7;
  v16 = self;
  v8 = v6;
  v9 = v4;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v12];
  v10 = v7;

  return v7;
}

void __65__PGManager_Diagnostics__highlightDebugInformationWithHighlight___block_invoke(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = [a2 graph];
  v4 = [*(a1 + 32) uuid];
  v5 = [PGGraphHighlightNodeCollection highlightNodeForUUID:v4 inGraph:v3];
  v6 = [v5 anyNode];

  if (v6)
  {
    v31 = v3;
    v7 = [MEMORY[0x277CBEB38] dictionary];
    [*(a1 + 32) nonDefaultCurationScorePercentageForPhotoLibrary:*(a1 + 40)];
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [v7 setObject:v8 forKeyedSubscript:@"curationScorePercentage"];

    [*(a1 + 32) faceAnalysisProgressForPhotoLibrary:*(a1 + 40)];
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [v7 setObject:v9 forKeyedSubscript:@"faceAnalysisProgress"];

    [*(a1 + 32) sceneAnalysisProgressForPhotoLibrary:*(a1 + 40)];
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [v7 setObject:v10 forKeyedSubscript:@"sceneAnalysisProgress"];

    [*(a1 + 48) setObject:v7 forKeyedSubscript:@"collectionsInfo"];
    v11 = objc_alloc_init(PGNeighborScoreComputer);
    if ([v6 isTrip])
    {
      v12 = 0;
    }

    else
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    }

    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v14 = [v6 collection];
    v15 = [v14 momentNodes];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __65__PGManager_Diagnostics__highlightDebugInformationWithHighlight___block_invoke_2;
    v36[3] = &unk_278881ED8;
    v16 = v11;
    v37 = v16;
    v38 = v3;
    v17 = *(a1 + 40);
    v18 = *(a1 + 56);
    v39 = v17;
    v40 = v18;
    v19 = v13;
    v41 = v19;
    v20 = v12;
    v42 = v20;
    [v15 enumerateNodesUsingBlock:v36];

    [*(a1 + 48) setObject:v19 forKeyedSubscript:@"backingMoments"];
    if ([v20 count])
    {
      v29 = v16;
      v30 = v7;
      v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v22 = +[PGMeaningfulEventRequiredCriteriaFactory availableMeaningLabels];
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v23 = [v22 countByEnumeratingWithState:&v32 objects:v43 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v33;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v33 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v32 + 1) + 8 * i);
            if ([v20 containsObject:v27])
            {
              [v21 addObject:v27];
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v32 objects:v43 count:16];
        }

        while (v24);
      }

      [*(a1 + 48) setObject:v21 forKeyedSubscript:@"sortedMeaningLabels"];

      v7 = v30;
      v3 = v31;
      v16 = v29;
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __65__PGManager_Diagnostics__highlightDebugInformationWithHighlight___block_invoke_2(uint64_t a1, void *a2)
{
  v25 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v25, "numberOfAssets")}];
  [v4 setObject:v5 forKeyedSubscript:@"numberOfAssets"];

  v6 = MEMORY[0x277CCABB0];
  [v25 graphScore];
  v7 = [v6 numberWithDouble:?];
  [v4 setObject:v7 forKeyedSubscript:@"graphScore"];

  v8 = MEMORY[0x277CCABB0];
  [*(a1 + 32) neighborScoreWithMomentNode:v25];
  v9 = [v8 numberWithDouble:?];
  [v4 setObject:v9 forKeyedSubscript:@"neighborScore"];

  v10 = MEMORY[0x277CCABB0];
  [v25 contentScore];
  v11 = [v10 numberWithDouble:?];
  [v4 setObject:v11 forKeyedSubscript:@"curationScore"];

  v12 = [v25 keywordsForRelatedType:63 focusOnNodes:0];
  v13 = [v12 mutableCopy];

  v14 = [*(a1 + 40) momentForMomentNode:v25 inPhotoLibrary:*(a1 + 48)];
  if (v14)
  {
    v15 = [v13 objectForKeyedSubscript:&unk_2844832D0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = [v15 mutableCopy];
    }

    v17 = v16;
    v18 = MEMORY[0x277CCACA8];
    v19 = MEMORY[0x231902040]([v14 processedLocation]);
    v20 = [v18 stringWithFormat:@"[processedLocationType] %@", v19];
    [v17 addObject:v20];

    [v13 setObject:v17 forKeyedSubscript:&unk_2844832D0];
  }

  if ([v13 count])
  {
    v21 = *(a1 + 56);
    v22 = [objc_opt_class() exportableDictionaryFromKeywords:v13];
    [v4 setObject:v22 forKeyedSubscript:@"keywords"];
  }

  [*(a1 + 64) addObject:v4];
  v23 = *(a1 + 72);
  v24 = [v25 meaningLabels];
  [v23 unionSet:v24];

  objc_autoreleasePoolPop(v3);
}

- (id)memoryDebugInformationWithMoments:(id)a3 meaningLabels:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__26362;
  v23 = __Block_byref_object_dispose__26363;
  v24 = 0;
  v8 = [(PGManager *)self serviceManager];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __74__PGManager_Diagnostics__memoryDebugInformationWithMoments_meaningLabels___block_invoke;
  v14[3] = &unk_278889308;
  v9 = v6;
  v15 = v9;
  v18 = &v19;
  v10 = v7;
  v16 = v10;
  v11 = v8;
  v17 = v11;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v14];
  v12 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v12;
}

void __74__PGManager_Diagnostics__memoryDebugInformationWithMoments_meaningLabels___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v18 + 1) + 8 * v9) uuid];
        [v4 addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v11 = [v3 graph];
  v12 = [PGGraphMomentNodeCollection momentNodesForArrayOfUUIDs:v4 inGraph:v11];

  v13 = [v12 array];
  v14 = [PGMemoryDebugConvenience memoryDebugInformationWithMomentNodes:v13 meaningLabels:*(a1 + 40) serviceManager:*(a1 + 48)];
  v15 = *(*(a1 + 56) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  v17 = *MEMORY[0x277D85DE8];
}

- (id)workingContextForGraphConsistencyCheck
{
  v2 = [[PGManagerWorkingContext alloc] initWithManager:self loggingConnection:self->_graphConsistencyCheckLoggingConnection];

  return v2;
}

- (id)workingContextForExternalRelevance
{
  v2 = [[PGManagerWorkingContext alloc] initWithManager:self loggingConnection:self->_externalRelevanceLoggingConnection];

  return v2;
}

- (id)workingContextForUpNext
{
  v2 = [[PGManagerWorkingContext alloc] initWithManager:self loggingConnection:self->_upNextLoggingConnection];

  return v2;
}

- (id)workingContextForMetrics
{
  v2 = [[PGManagerWorkingContext alloc] initWithManager:self loggingConnection:self->_metricsLoggingConnection];

  return v2;
}

- (id)workingContextForSuggestions
{
  v2 = [[PGManagerWorkingContext alloc] initWithManager:self loggingConnection:self->_suggestionsLoggingConnection];

  return v2;
}

- (id)workingContextForEnrichment
{
  v2 = [[PGManagerWorkingContext alloc] initWithManager:self loggingConnection:self->_enrichmentLoggingConnection];

  return v2;
}

- (id)workingContextForRelated
{
  v2 = [[PGManagerWorkingContext alloc] initWithManager:self loggingConnection:self->_relatedLoggingConnection];

  return v2;
}

- (id)workingContextForMemories
{
  v2 = [[PGManagerWorkingContext alloc] initWithManager:self loggingConnection:self->_memoriesLoggingConnection];

  return v2;
}

- (id)workingContext
{
  v2 = [[PGManagerWorkingContext alloc] initWithManager:self loggingConnection:self->_loggingConnection];

  return v2;
}

- (int64_t)validatePHObject:(id)a3 featureAggregationValidator:(id)a4 assetFetchOptionPropertySet:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([(PGManager *)self isReady])
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__29844;
    v25 = __Block_byref_object_dispose__29845;
    v26 = 0;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __92__PGManager_validatePHObject_featureAggregationValidator_assetFetchOptionPropertySet_error___block_invoke;
    v15[3] = &unk_2788826E0;
    v19 = &v27;
    v16 = v11;
    v17 = v10;
    v18 = v12;
    v20 = &v21;
    [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v15];
    v13 = v28[3];
    if (a6 && !v13)
    {
      *a6 = v22[5];
      v13 = v28[3];
    }

    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(&v27, 8);
  }

  else
  {
    v13 = [v11 isValidEntity:v10 graph:0 assetFetchOptionPropertySet:v12 error:a6];
  }

  return v13;
}

void __92__PGManager_validatePHObject_featureAggregationValidator_assetFetchOptionPropertySet_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = [a2 graph];
  v6 = a1[6];
  v7 = *(a1[8] + 8);
  obj = *(v7 + 40);
  v8 = [v3 isValidEntity:v4 graph:v5 assetFetchOptionPropertySet:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  *(*(a1[7] + 8) + 24) = v8;
}

- (int64_t)validatePHObject:(id)a3 graphRelationsFeatureValidator:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([(PGManager *)self isReady])
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__29844;
    v21 = __Block_byref_object_dispose__29845;
    v22 = 0;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __67__PGManager_validatePHObject_graphRelationsFeatureValidator_error___block_invoke;
    v12[3] = &unk_2788826B8;
    v15 = &v23;
    v13 = v9;
    v14 = v8;
    v16 = &v17;
    [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v12];
    v10 = v24[3];
    if (a5 && !v10)
    {
      *a5 = v18[5];
      v10 = v24[3];
    }

    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v10 = [v9 isValidEntity:v8 graph:0 error:a5];
  }

  return v10;
}

void __67__PGManager_validatePHObject_graphRelationsFeatureValidator_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = [a2 graph];
  v6 = *(a1[7] + 8);
  obj = *(v6 + 40);
  v7 = [v3 isValidEntity:v4 graph:v5 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  *(*(a1[6] + 8) + 24) = v7;
}

- (id)assetCollectionFingerprintsWithVersion:(int64_t)a3 forAssetCollections:(id)a4 withTransformers:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  if ([(PGManager *)self isReady])
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__29844;
    v31 = __Block_byref_object_dispose__29845;
    v32 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__29844;
    v25 = __Block_byref_object_dispose__29845;
    v26 = 0;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __95__PGManager_assetCollectionFingerprintsWithVersion_forAssetCollections_withTransformers_error___block_invoke;
    v15[3] = &unk_278882A28;
    v18 = &v27;
    v20 = a3;
    v16 = v10;
    v17 = v11;
    v19 = &v21;
    [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v15];
    v12 = v28[5];
    if (a6 && !v12)
    {
      *a6 = v22[5];
      v12 = v28[5];
    }

    v13 = v12;

    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(&v27, 8);
  }

  else
  {
    v13 = [PGFingerprint assetCollectionFingerprintsWithVersion:a3 forAssetCollections:v10 withGraph:0 withTransformers:v11 error:a6];
  }

  return v13;
}

void __95__PGManager_assetCollectionFingerprintsWithVersion_forAssetCollections_withTransformers_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[8];
  v4 = a1[4];
  v5 = [a2 graph];
  v6 = a1[5];
  v7 = *(a1[7] + 8);
  obj = *(v7 + 40);
  v8 = [PGFingerprint assetCollectionFingerprintsWithVersion:v3 forAssetCollections:v4 withGraph:v5 withTransformers:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

- (id)assetFingerprintsWithVersion:(int64_t)a3 forAssets:(id)a4 withTransformers:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  if ([(PGManager *)self isReady])
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__29844;
    v31 = __Block_byref_object_dispose__29845;
    v32 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__29844;
    v25 = __Block_byref_object_dispose__29845;
    v26 = 0;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __75__PGManager_assetFingerprintsWithVersion_forAssets_withTransformers_error___block_invoke;
    v15[3] = &unk_278882A28;
    v18 = &v27;
    v20 = a3;
    v16 = v10;
    v17 = v11;
    v19 = &v21;
    [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v15];
    v12 = v28[5];
    if (a6 && !v12)
    {
      *a6 = v22[5];
      v12 = v28[5];
    }

    v13 = v12;

    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(&v27, 8);
  }

  else
  {
    v13 = [PGFingerprint assetFingerprintsWithVersion:a3 forAssets:v10 withGraph:0 withTransformers:v11 error:a6];
  }

  return v13;
}

void __75__PGManager_assetFingerprintsWithVersion_forAssets_withTransformers_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[8];
  v4 = a1[4];
  v5 = [a2 graph];
  v6 = a1[5];
  v7 = *(a1[7] + 8);
  obj = *(v7 + 40);
  v8 = [PGFingerprint assetFingerprintsWithVersion:v3 forAssets:v4 withGraph:v5 withTransformers:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

- (BOOL)copyGraphToURL:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __28__PGManager_copyGraphToURL___block_invoke;
  v7[3] = &unk_27888A570;
  v9 = &v10;
  v5 = v4;
  v8 = v5;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

void __28__PGManager_copyGraphToURL___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [a2 graph];
  v4 = *(a1 + 32);
  v10 = 0;
  v5 = [v3 copyPersistentStoreToURL:v4 error:&v10];
  v6 = v10;
  *(*(*(a1 + 40) + 8) + 24) = v5;

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0 && v6)
  {
    v7 = +[PGLogging sharedLogging];
    v8 = [v7 loggingConnection];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v6;
      _os_log_error_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_ERROR, "requested graph copy failed: %@", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)saveGraphToURL:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __28__PGManager_saveGraphToURL___block_invoke;
  v7[3] = &unk_27888A570;
  v9 = &v10;
  v5 = v4;
  v8 = v5;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

void __28__PGManager_saveGraphToURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 graph];
  *(*(*(a1 + 40) + 8) + 24) = [v3 saveToURL:*(a1 + 32)];
}

- (void)matchWithVisualFormat:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__PGManager_matchWithVisualFormat_usingBlock___block_invoke;
  v10[3] = &unk_278882690;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v10];
}

void __46__PGManager_matchWithVisualFormat_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v88 = *MEMORY[0x277D85DE8];
  v3 = [a2 graph];
  v48 = a1;
  v4 = *(a1 + 32);
  v77 = 0;
  v5 = [v3 matchWithVisualFormat:v4 elements:MEMORY[0x277CBEC10] error:&v77];
  v47 = v77;

  v59 = [MEMORY[0x277CBEB38] dictionary];
  v60 = v5;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = [v5 nodesNames];
  v53 = [obj countByEnumeratingWithState:&v73 objects:v87 count:16];
  if (v53)
  {
    v51 = *v74;
    do
    {
      v6 = 0;
      do
      {
        if (*v74 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v55 = *(*(&v73 + 1) + 8 * v6);
        v57 = v6;
        v7 = [v60 nodesForName:?];
        v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"identifier" ascending:1];
        v86 = v8;
        v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v86 count:1];
        v10 = [v7 sortedArrayUsingDescriptors:v9];

        v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v10, "count")}];
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v12 = v10;
        v13 = [v12 countByEnumeratingWithState:&v69 objects:v85 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v70;
          do
          {
            v16 = 0;
            do
            {
              if (*v70 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v69 + 1) + 8 * v16);
              v18 = [MEMORY[0x277CBEB38] dictionary];
              v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v17, "identifier")}];
              [v18 setObject:v19 forKeyedSubscript:@"identifier"];

              v20 = [v17 label];
              [v18 setObject:v20 forKeyedSubscript:@"label"];

              v21 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v17, "domain")}];
              [v18 setObject:v21 forKeyedSubscript:@"domain"];

              v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v17, "inEdgesCount")}];
              [v18 setObject:v22 forKeyedSubscript:@"inEdgesCount"];

              v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v17, "outEdgesCount")}];
              [v18 setObject:v23 forKeyedSubscript:@"outEdgesCount"];

              v24 = [v17 propertyDictionary];
              [v18 setObject:v24 forKeyedSubscript:@"properties"];

              [v11 addObject:v18];
              ++v16;
            }

            while (v14 != v16);
            v14 = [v12 countByEnumeratingWithState:&v69 objects:v85 count:16];
          }

          while (v14);
        }

        v83[0] = @"count";
        v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v12, "count")}];
        v83[1] = @"nodes";
        v84[0] = v25;
        v84[1] = v11;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v84 forKeys:v83 count:2];
        [v59 setObject:v26 forKeyedSubscript:v55];

        v6 = v57 + 1;
      }

      while (v57 + 1 != v53);
      v53 = [obj countByEnumeratingWithState:&v73 objects:v87 count:16];
    }

    while (v53);
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  obja = [v60 edgesNames];
  v54 = [obja countByEnumeratingWithState:&v65 objects:v82 count:16];
  if (v54)
  {
    v52 = *v66;
    do
    {
      v27 = 0;
      do
      {
        if (*v66 != v52)
        {
          objc_enumerationMutation(obja);
        }

        v56 = *(*(&v65 + 1) + 8 * v27);
        v58 = v27;
        v28 = [v60 edgesForName:?];
        v29 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"identifier" ascending:1];
        v81 = v29;
        v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v81 count:1];
        v31 = [v28 sortedArrayUsingDescriptors:v30];

        v32 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v31, "count")}];
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v33 = v31;
        v34 = [v33 countByEnumeratingWithState:&v61 objects:v80 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v62;
          do
          {
            v37 = 0;
            do
            {
              if (*v62 != v36)
              {
                objc_enumerationMutation(v33);
              }

              v38 = *(*(&v61 + 1) + 8 * v37);
              v39 = [MEMORY[0x277CBEB38] dictionary];
              v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v38, "identifier")}];
              [v39 setObject:v40 forKeyedSubscript:@"identifier"];

              v41 = [v38 label];
              [v39 setObject:v41 forKeyedSubscript:@"label"];

              v42 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v38, "domain")}];
              [v39 setObject:v42 forKeyedSubscript:@"domain"];

              v43 = [v38 propertyDictionary];
              [v39 setObject:v43 forKeyedSubscript:@"properties"];

              [v32 addObject:v39];
              ++v37;
            }

            while (v35 != v37);
            v35 = [v33 countByEnumeratingWithState:&v61 objects:v80 count:16];
          }

          while (v35);
        }

        v78[0] = @"count";
        v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v33, "count")}];
        v78[1] = @"edges";
        v79[0] = v44;
        v79[1] = v32;
        v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:2];
        [v59 setObject:v45 forKeyedSubscript:v56];

        v27 = v58 + 1;
      }

      while (v58 + 1 != v54);
      v54 = [obja countByEnumeratingWithState:&v65 objects:v82 count:16];
    }

    while (v54);
  }

  (*(*(v48 + 40) + 16))();
  v46 = *MEMORY[0x277D85DE8];
}

- (void)matchWithVisualFormat:(id)a3 elements:(id)a4 usingBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__PGManager_matchWithVisualFormat_elements_usingBlock___block_invoke;
  v14[3] = &unk_27888B2F8;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v14];
}

void __55__PGManager_matchWithVisualFormat_elements_usingBlock___block_invoke(void *a1, void *a2)
{
  v3 = [a2 graph];
  v4 = a1[4];
  v5 = a1[5];
  v8 = 0;
  v6 = [v3 matchWithVisualFormat:v4 elements:v5 error:&v8];
  v7 = v8;

  (*(a1[6] + 16))();
}

- (void)waitUntilFinishedUsingBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__PGManager_waitUntilFinishedUsingBlock___block_invoke;
  v6[3] = &unk_2788825D0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(PGManager *)self _waitLibraryUpdateUntilFinishedUsingBlock:v6];
}

void __41__PGManager_waitUntilFinishedUsingBlock___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __41__PGManager_waitUntilFinishedUsingBlock___block_invoke_2;
  v2[3] = &unk_278883848;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _waitGraphUntilFinishedUsingBlock:v2];
}

- (void)_waitLibraryUpdateUntilFinishedUsingBlock:(id)a3
{
  v4 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__PGManager__waitLibraryUpdateUntilFinishedUsingBlock___block_invoke;
  block[3] = &unk_2788825D0;
  block[4] = self;
  v11 = v4;
  v5 = v4;
  v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__PGManager__waitLibraryUpdateUntilFinishedUsingBlock___block_invoke_2;
  v8[3] = &unk_278882668;
  v9 = v6;
  v7 = v6;
  [(PGManager *)self performAsynchronousGraphBarrierUsingBlock:v8];
}

- (void)_waitGraphUntilFinishedUsingBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__PGManager__waitGraphUntilFinishedUsingBlock___block_invoke;
  v6[3] = &unk_278882668;
  v7 = v4;
  v5 = v4;
  [(PGManager *)self performAsynchronousGraphBarrierUsingBlock:v6];
}

void __47__PGManager__waitGraphUntilFinishedUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__PGManager__waitGraphUntilFinishedUsingBlock___block_invoke_2;
  v3[3] = &unk_278883848;
  v4 = *(a1 + 32);
  [a2 performAsynchronousNotification:v3];
}

- (BOOL)_isReadyWithError:(id *)a3
{
  v21 = *MEMORY[0x277D85DE8];
  graph = self->_graph;
  v4 = graph != 0;
  if (a3 && !graph)
  {
    v7 = [(PGManager *)self graphPersistentStoreURL];
    if (!v7 || ![PGGraph graphExistsAtURL:v7])
    {
      loggingConnection = self->_loggingConnection;
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        v18 = v7;
        _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "Graph does not exist at URL %@", &v17, 0xCu);
      }

      [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:27];
      *a3 = v4 = 0;
      goto LABEL_21;
    }

    v8 = [objc_alloc(objc_msgSend(objc_opt_class() "graphClass"))];
    if (v8)
    {
      v9 = [(PGManager *)self graphIsUsable:v8 error:a3];
      v10 = self->_loggingConnection;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = @"NO";
        if (v9)
        {
          v11 = @"YES";
        }

        v17 = 138412546;
        v18 = v7;
        v19 = 2112;
        v20 = v11;
        _os_log_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_DEFAULT, "Loaded graph from URL %@, is graph usable: %@", &v17, 0x16u);
      }

      if (v9)
      {
        v12 = self->_loggingConnection;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          v17 = 138412290;
          v18 = v7;
          _os_log_fault_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_FAULT, "Loaded a usable graph from URL %@, but unexpectedly had a nil graph in this manager", &v17, 0xCu);
        }

        [(PGManager *)self setGraph:v8];
        v4 = 1;
        goto LABEL_20;
      }
    }

    else
    {
      v14 = self->_loggingConnection;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        v18 = v7;
        _os_log_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_DEFAULT, "Tried and failed to load the graph from URL: %@", &v17, 0xCu);
      }
    }

    v4 = 0;
LABEL_20:

LABEL_21:
  }

  v15 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)_addressesDidChangeBetweenAddressesInGraph:(id)a3 andAddressesInContacts:(id)a4 addressType:(unint64_t)a5 person:(id)a6 graph:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v15 = [v11 count];
  v16 = [v12 count];
  if (v15 | v16)
  {
    if (!v15 || v16)
    {
      if (v15 || !v16)
      {
        v24 = 0;
        v25 = &v24;
        v26 = 0x2020000000;
        v27 = 0;
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __104__PGManager__addressesDidChangeBetweenAddressesInGraph_andAddressesInContacts_addressType_person_graph___block_invoke;
        v20[3] = &unk_278882640;
        v22 = &v24;
        v23 = 0x4062C00000000000;
        v21 = v11;
        [v13 enumerateAddressesOfType:a5 asCLLocationsWithBlock:v20];
        v17 = v25[3] != 0;

        _Block_object_dispose(&v24, 8);
      }

      else
      {
        v18 = [PGGraphAddressNodeCollection addressNodesWithinDistance:v12 ofLocations:v14 inGraph:150.0];
        v17 = [v18 count] != 0;
      }
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void __104__PGManager__addressesDidChangeBetweenAddressesInGraph_andAddressesInContacts_addressType_person_graph___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  [a2 coordinate];
  v6 = v5;
  v8 = v7;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = *(a1 + 32);
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    while (2)
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v17 + 1) + 8 * v13) coordinate];
        if ([PGLocationUtility coordinate:v6 isCloseToCoordinate:v8 threshold:v14, v15, *(a1 + 48)])
        {

          goto LABEL_11;
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  ++*(*(*(a1 + 40) + 8) + 24);
  *a3 = 1;
LABEL_11:
  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)homeWorkAddressesDidChangeForPersonInContact:(id)a3 andPersonNode:(id)a4 withHomeWorkNodesByPersonNode:(id)a5 graph:(id)a6
{
  v9 = a3;
  v34 = a6;
  v10 = a5;
  v37 = [a4 collection];
  v11 = [v10 targetsForSources:?];

  v12 = +[PGGraphHomeWorkNode homeFilter];
  v13 = [v11 nodesMatchingFilter:v12];

  v14 = MEMORY[0x277CBEB98];
  v36 = v13;
  v15 = [v13 addressNodes];
  v16 = [v15 locations];
  v17 = [v14 setWithArray:v16];

  v18 = +[PGGraphHomeWorkNode workFilter];
  v19 = [v11 nodesMatchingFilter:v18];

  v20 = MEMORY[0x277CBEB98];
  v21 = [v19 addressNodes];
  v22 = [v21 locations];
  v23 = [v20 setWithArray:v22];

  v24 = MEMORY[0x277CBEB98];
  v25 = [v9 locationsByAddressTypes];
  v26 = [v25 objectForKeyedSubscript:&unk_2844836D8];
  v27 = [v24 setWithArray:v26];

  v28 = MEMORY[0x277CBEB98];
  v29 = [v9 locationsByAddressTypes];
  v30 = [v29 objectForKeyedSubscript:&unk_2844836F0];
  v31 = [v28 setWithArray:v30];

  v32 = [(PGManager *)self _addressesDidChangeBetweenAddressesInGraph:v17 andAddressesInContacts:v27 addressType:0 person:v9 graph:v34]|| [(PGManager *)self _addressesDidChangeBetweenAddressesInGraph:v23 andAddressesInContacts:v31 addressType:1 person:v9 graph:v34];
  return v32;
}

void __39__PGManager_invalidatePersistentCaches__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  [v5 _invalidatePersistentCachesIncludingPublicEvents:1];
  [v4 invalidateMemoryCaches];

  [v5 _invalidateTransientCaches];
}

void __38__PGManager_invalidateTransientCaches__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  [a3 invalidateMemoryCaches];
  [v4 _invalidateTransientCaches];
}

- (void)_invalidatePersistentCachesIncludingPublicEvents:(BOOL)a3
{
  v3 = a3;
  [(CLSLocationCache *)self->_locationCache invalidateDiskCaches];
  [(CLSPOICache *)self->_poiCache invalidateDiskCaches];
  [(CLSROICache *)self->_roiCache invalidateDiskCaches];
  [(CLSAOICache *)self->_aoiCache invalidateDiskCaches];
  [(CLSNatureCache *)self->_natureCache invalidateDiskCaches];
  [(CLSServiceManager *)self->_serviceManager invalidatePermanentMemoryCaches];
  [(PGCurationManager *)self->_curationManager invalidateDiskCaches];
  if (!_os_feature_enabled_impl() || v3)
  {
    publicEventManager = self->_publicEventManager;

    [(CLSPublicEventManager *)publicEventManager invalidateDiskCaches];
  }
}

- (void)_invalidatePersistentCachesBeforeDateWithTimestamp:(double)a3
{
  [(CLSLocationCache *)self->_locationCache invalidateCacheItemsBeforeDateWithTimestamp:?];
  [(CLSPOICache *)self->_poiCache invalidateCacheItemsBeforeDateWithTimestamp:a3];
  [(CLSROICache *)self->_roiCache invalidateCacheItemsBeforeDateWithTimestamp:a3];
  [(CLSAOICache *)self->_aoiCache invalidateCacheItemsBeforeDateWithTimestamp:a3];
  [(CLSNatureCache *)self->_natureCache invalidateCacheItemsBeforeDateWithTimestamp:a3];
  [(CLSServiceManager *)self->_serviceManager invalidateMePerson];
  [(CLSServiceManager *)self->_serviceManager invalidatePermanentMemoryCaches];
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    publicEventManager = self->_publicEventManager;

    [(CLSPublicEventManager *)publicEventManager invalidateCacheItemsBeforeDateWithTimestamp:a3];
  }
}

- (void)_invalidatePersistentCachesForGeoServiceProviderChange
{
  v3 = [MEMORY[0x277D3AD60] currentRevGeoProvider];
  [(CLSLocationCache *)self->_locationCache invalidateCacheForGeoServiceProviderChangeToProvider:v3];
  [(CLSPOICache *)self->_poiCache invalidateCacheForGeoServiceProviderChangeToProvider:v3];
  [(CLSROICache *)self->_roiCache invalidateCacheForGeoServiceProviderChangeToProvider:v3];
  [(CLSAOICache *)self->_aoiCache invalidateCacheForGeoServiceProviderChangeToProvider:v3];
  [(CLSNatureCache *)self->_natureCache invalidateCacheForGeoServiceProviderChangeToProvider:v3];
  [(CLSServiceManager *)self->_serviceManager invalidatePermanentMemoryCaches];
  [(PGCurationManager *)self->_curationManager invalidateDiskCaches];
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    [(CLSPublicEventManager *)self->_publicEventManager invalidateDiskCaches];
  }
}

- (void)_invalidateTransientCaches
{
  [(CLSLocationCache *)self->_locationCache invalidateMemoryCaches];
  [(CLSPOICache *)self->_poiCache invalidateMemoryCaches];
  [(CLSROICache *)self->_roiCache invalidateMemoryCaches];
  [(CLSAOICache *)self->_aoiCache invalidateMemoryCaches];
  [(CLSNatureCache *)self->_natureCache invalidateMemoryCaches];
  [(CLSServiceManager *)self->_serviceManager invalidateMomentaryMemoryCaches];
  [(PGCurationManager *)self->_curationManager invalidateMemoryCaches];
  publicEventManager = self->_publicEventManager;

  [(CLSPublicEventManager *)publicEventManager invalidateMemoryCaches];
}

- (void)performAsynchronousNotification:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    notificationQueue = self->_notificationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__PGManager_performAsynchronousNotification___block_invoke;
    block[3] = &unk_278883848;
    v8 = v4;
    dispatch_async(notificationQueue, block);
  }
}

- (void)legacyPerformAsynchronousBarrierGraphWriteUsingBlock:(id)a3
{
  v4 = a3;
  atomic_fetch_add(&self->_numberOfCurrentGraphAccesses, 1uLL);
  graphAccessQueue = self->_graphAccessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__PGManager_legacyPerformAsynchronousBarrierGraphWriteUsingBlock___block_invoke;
  v7[3] = &unk_2788825D0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_async(graphAccessQueue, v7);
}

void __66__PGManager_legacyPerformAsynchronousBarrierGraphWriteUsingBlock___block_invoke(uint64_t a1)
{
  v2 = os_signpost_id_generate(*(*(a1 + 32) + 184));
  v3 = *(*(a1 + 32) + 184);
  v4 = v3;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "Perform Graph Transaction Barrier", "", buf, 2u);
  }

  v5 = *(*(a1 + 32) + 48);
  (*(*(a1 + 40) + 16))();
  atomic_fetch_add((*(a1 + 32) + 64), 0xFFFFFFFFFFFFFFFFLL);
  v6 = *(*(a1 + 32) + 184);
  v7 = v6;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v7, OS_SIGNPOST_INTERVAL_END, v2, "Perform Graph Transaction Barrier", "", v8, 2u);
  }
}

- (void)performAsynchronousGraphBarrierUsingBlock:(id)a3
{
  v4 = a3;
  atomic_fetch_add(&self->_numberOfCurrentGraphAccesses, 1uLL);
  graphAccessQueue = self->_graphAccessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__PGManager_performAsynchronousGraphBarrierUsingBlock___block_invoke;
  v7[3] = &unk_2788825D0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_async(graphAccessQueue, v7);
}

void __55__PGManager_performAsynchronousGraphBarrierUsingBlock___block_invoke(uint64_t a1)
{
  v2 = os_signpost_id_generate(*(*(a1 + 32) + 184));
  v3 = *(*(a1 + 32) + 184);
  v4 = v3;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "Perform Graph Barrier", "", buf, 2u);
  }

  v5 = *(*(a1 + 32) + 8);
  (*(*(a1 + 40) + 16))();
  [MEMORY[0x277D22BB0] drainBitsetPool];
  atomic_fetch_add((*(a1 + 32) + 64), 0xFFFFFFFFFFFFFFFFLL);
  v6 = *(*(a1 + 32) + 184);
  v7 = v6;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v7, OS_SIGNPOST_INTERVAL_END, v2, "Perform Graph Barrier", "", v8, 2u);
  }
}

- (void)performSynchronousConcurrentGraphReadUsingBlock:(id)a3
{
  v4 = a3;
  atomic_fetch_add(&self->_numberOfCurrentGraphAccesses, 1uLL);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __61__PGManager_performSynchronousConcurrentGraphReadUsingBlock___block_invoke;
  v10 = &unk_2788825D0;
  v11 = self;
  v5 = v4;
  v12 = v5;
  v6 = _Block_copy(&v7);
  if ([(PGGraph *)self->_graph isOnGraphQueue:v7])
  {
    v6[2](v6);
  }

  else
  {
    dispatch_sync(self->_graphAccessQueue, v6);
  }
}

void __61__PGManager_performSynchronousConcurrentGraphReadUsingBlock___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  [v2 enableInTransactionCheck];
  [v2 enterBatch];
  v3 = [[PGGraphEnabler alloc] initWithGraph:v2];
  (*(*(a1 + 40) + 16))();
  [v2 leaveBatch];
  [MEMORY[0x277D22BB0] drainBitsetPool];
  atomic_fetch_add((*(a1 + 32) + 64), 0xFFFFFFFFFFFFFFFFLL);
}

- (void)performAsynchronousGraphWriteUsingBlock:(id)a3
{
  v4 = a3;
  atomic_fetch_add(&self->_numberOfCurrentGraphAccesses, 1uLL);
  graphAccessQueue = self->_graphAccessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__PGManager_performAsynchronousGraphWriteUsingBlock___block_invoke;
  v7[3] = &unk_2788825D0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(graphAccessQueue, v7);
}

void __53__PGManager_performAsynchronousGraphWriteUsingBlock___block_invoke(uint64_t a1)
{
  v2 = os_signpost_id_generate(*(*(a1 + 32) + 184));
  v3 = *(*(a1 + 32) + 184);
  v4 = v3;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "Perform Graph Transaction", "", buf, 2u);
  }

  v5 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
  [MEMORY[0x277D22BB0] drainBitsetPool];
  atomic_fetch_add((*(a1 + 32) + 64), 0xFFFFFFFFFFFFFFFFLL);
  v6 = *(*(a1 + 32) + 184);
  v7 = v6;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v7, OS_SIGNPOST_INTERVAL_END, v2, "Perform Graph Transaction", "", v8, 2u);
  }
}

- (id)instantiateMutableGraphWithError:(id *)a3
{
  v5 = self->_mutableGraph;
  if (!v5)
  {
    v6 = [(PGManager *)self graphPersistentStoreURL];
    v5 = [(PGGraph *)[PGMutableGraph alloc] initWithURL:v6 persistenceOptions:32 error:a3];
  }

  return v5;
}

- (double)timeIntervalSinceLastGraphFullRebuild
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0x7FEFFFFFFFFFFFFFLL;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__PGManager_timeIntervalSinceLastGraphFullRebuild__block_invoke;
  v4[3] = &unk_27888A5C0;
  v4[4] = &v5;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __50__PGManager_timeIntervalSinceLastGraphFullRebuild__block_invoke(uint64_t a1, void *a2)
{
  v7 = [a2 graph];
  v3 = [v7 infoNode];
  v4 = [v3 creationDate];

  if (v4)
  {
    v5 = [MEMORY[0x277CBEAA8] now];
    [v5 timeIntervalSinceDate:v4];
    *(*(*(a1 + 32) + 8) + 24) = v6;
  }
}

- (void)setGraphInfoDateOfLastIncrementalUpdateInvocationWithDate:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __87__PGManager_setGraphInfoDateOfLastIncrementalUpdateInvocationWithDate_completionBlock___block_invoke;
  v10[3] = &unk_2788825F8;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(PGManager *)self performAsynchronousGraphWriteUsingBlock:v10];
}

void __87__PGManager_setGraphInfoDateOfLastIncrementalUpdateInvocationWithDate_completionBlock___block_invoke(void *a1)
{
  v2 = a1[4];
  v5 = 0;
  v3 = [v2 instantiateMutableGraphWithError:&v5];
  v4 = v5;
  if (v3)
  {
    [v3 enableInTransactionCheck];
    [v3 enterBatch];
    [PGGraphBuilder setLastIncrementalUpdateInvocationDate:a1[5] inGraph:v3];
    [v3 leaveBatch];
  }

  (*(a1[6] + 16))();
}

- (void)setMutableGraph:(id)a3
{
  v5 = a3;
  [(PGManager *)self _unloadGraph];
  objc_storeStrong(&self->_mutableGraph, a3);
  graph = self->_graph;
  self->_graph = v5;
  v7 = v5;

  [(PGGraph *)self->_graph setGraphQueue:self->_graphAccessQueue];
}

- (void)setGraph:(id)a3
{
  v4 = a3;
  [(PGManager *)self _unloadGraph];
  graph = self->_graph;
  self->_graph = v4;
  v6 = v4;

  [(PGGraph *)self->_graph setGraphQueue:self->_graphAccessQueue];
}

- (CPAnalytics)analytics
{
  analytics = self->_analytics;
  if (!analytics)
  {
    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_FAULT))
    {
      *v6 = 0;
      _os_log_fault_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_FAULT, "PGManager: analytics instance is nil.", v6, 2u);
      analytics = self->_analytics;
    }

    else
    {
      analytics = 0;
    }
  }

  return analytics;
}

- (id)processSubdirectoryName
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 bundleIdentifier];

  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277CCAC38] processInfo];
    v4 = [v5 processName];
  }

  return v4;
}

- (id)graphPersistenceParentDirectoryCandidateURLs
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(PGManager *)self photoLibrary];
  v5 = [v4 pg_urlForGraphApplicationData];

  if (v5)
  {
    [v3 addObject:v5];
  }

  return v3;
}

- (NSURL)graphPersistenceParentDirectoryURL
{
  v33 = *MEMORY[0x277D85DE8];
  cachedGraphPersistenceParentDirectoryURL = self->_cachedGraphPersistenceParentDirectoryURL;
  if (cachedGraphPersistenceParentDirectoryURL)
  {
    v3 = cachedGraphPersistenceParentDirectoryURL;
    goto LABEL_27;
  }

  location = &self->_cachedGraphPersistenceParentDirectoryURL;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = [(PGManager *)self graphPersistenceParentDirectoryCandidateURLs];
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = 0;
    v11 = *v27;
    *&v8 = 138412290;
    v23 = v8;
LABEL_5:
    v12 = 0;
    while (1)
    {
      if (*v27 != v11)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v26 + 1) + 8 * v12);
      v14 = [v13 path];
      if (([v5 fileExistsAtPath:v14] & 1) == 0)
      {
        v25 = v10;
        v15 = [v5 createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:0 error:&v25];
        v16 = v25;

        if ((v15 & 1) == 0)
        {
          v17 = +[PGLogging sharedLogging];
          v18 = [v17 loggingConnection];

          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = v23;
            v31 = v16;
            _os_log_error_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_ERROR, "Unable to create graph cache directory: %@", buf, 0xCu);
          }

          v10 = v16;
          goto LABEL_16;
        }

        v10 = v16;
      }

      if ([v5 isWritableFileAtPath:v14])
      {
        v3 = v13;

        if (v3)
        {
          goto LABEL_26;
        }

        goto LABEL_23;
      }

LABEL_16:

      if (v9 == ++v12)
      {
        v9 = [v6 countByEnumeratingWithState:&v26 objects:v32 count:16];
        if (v9)
        {
          goto LABEL_5;
        }

        goto LABEL_22;
      }
    }
  }

  v10 = 0;
LABEL_22:

LABEL_23:
  v19 = +[PGLogging sharedLogging];
  v20 = [v19 loggingConnection];

  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_22F0FC000, v20, OS_LOG_TYPE_ERROR, "Unable to find writable graph cache directory", buf, 2u);
  }

  v3 = 0;
LABEL_26:
  objc_storeStrong(location, v3);

LABEL_27:
  v21 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)graphPersistentStoreURL
{
  cachedGraphPersistentStoreURL = self->_cachedGraphPersistentStoreURL;
  if (cachedGraphPersistentStoreURL)
  {
    v3 = cachedGraphPersistentStoreURL;
  }

  else
  {
    v5 = [(PGManager *)self graphPersistenceParentDirectoryURL];
    if (v5)
    {
      graphName = self->_graphName;
      if (!graphName)
      {
        graphName = @"photosgraph";
      }

      v7 = graphName;
      v8 = [PGGraph graphURLForName:v7 parentDirectoryURL:v5];
      if (v8)
      {
        [(PGManager *)self setGraphPersistentStoreURL:v8];
        v3 = self->_cachedGraphPersistentStoreURL;
      }

      else
      {
        v10 = +[PGLogging sharedLogging];
        v11 = [v10 loggingConnection];

        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *v13 = 0;
          _os_log_error_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_ERROR, "Unable to construct writable graph persistence store URL", v13, 2u);
        }

        v3 = 0;
      }
    }

    else
    {
      v9 = +[PGLogging sharedLogging];
      v7 = [v9 loggingConnection];

      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_ERROR, "Unable to construct writable graph persistence store URL", buf, 2u);
      }

      v3 = 0;
    }
  }

  return v3;
}

- (void)notifyCoalescingBlocksGraphAnalysisFinished:(BOOL)a3 error:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = self;
  objc_sync_enter(v6);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v6->_coalescingGraphIsReady;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        (*(*(*(&v12 + 1) + 8 * v10) + 16))(*(*(&v12 + 1) + 8 * v10));
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(NSMutableArray *)v6->_coalescingGraphIsReady removeAllObjects];
  objc_sync_exit(v6);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)registerCoalescingBlockWhenGraphAnalysisFinishes:(id)a3
{
  aBlock = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (aBlock)
  {
    if ([(PGManager *)v4 libraryAnalysisState])
    {
      coalescingGraphIsReady = v4->_coalescingGraphIsReady;
      v6 = _Block_copy(aBlock);
      [(NSMutableArray *)coalescingGraphIsReady addObject:v6];
    }

    else
    {
      (*(aBlock + 2))(aBlock, [(PGManager *)v4 isReady], 0);
    }
  }

  objc_sync_exit(v4);
}

- (void)commonInitWithPhotoLibrary:(id)a3 progressBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_storeStrong(&self->_photoLibrary, a3);
  v9 = os_log_create("com.apple.PhotosGraph", "core");
  loggingConnection = self->_loggingConnection;
  self->_loggingConnection = v9;

  v11 = os_log_create("com.apple.PhotosGraph", "memory");
  memoriesLoggingConnection = self->_memoriesLoggingConnection;
  self->_memoriesLoggingConnection = v11;

  v13 = os_log_create("com.apple.PhotosGraph", "related");
  relatedLoggingConnection = self->_relatedLoggingConnection;
  self->_relatedLoggingConnection = v13;

  v15 = os_log_create("com.apple.PhotosGraph", "ingest");
  ingestLoggingConnection = self->_ingestLoggingConnection;
  self->_ingestLoggingConnection = v15;

  v17 = os_log_create("com.apple.PhotosGraph", "graph");
  graphLoggingConnection = self->_graphLoggingConnection;
  self->_graphLoggingConnection = v17;

  v19 = os_log_create("com.apple.PhotosGraph", "enrichment");
  enrichmentLoggingConnection = self->_enrichmentLoggingConnection;
  self->_enrichmentLoggingConnection = v19;

  v21 = os_log_create("com.apple.PhotosGraph", "suggestions");
  suggestionsLoggingConnection = self->_suggestionsLoggingConnection;
  self->_suggestionsLoggingConnection = v21;

  v23 = os_log_create("com.apple.PhotosGraph", "guess");
  guessWhoLoggingConnection = self->_guessWhoLoggingConnection;
  self->_guessWhoLoggingConnection = v23;

  v25 = os_log_create("com.apple.PhotosGraph", "metrics");
  metricsLoggingConnection = self->_metricsLoggingConnection;
  self->_metricsLoggingConnection = v25;

  v27 = os_log_create("com.apple.PhotosGraph", "upNext");
  upNextLoggingConnection = self->_upNextLoggingConnection;
  self->_upNextLoggingConnection = v27;

  v29 = os_log_create("com.apple.PhotosGraph", "externalAssetRelevance");
  externalRelevanceLoggingConnection = self->_externalRelevanceLoggingConnection;
  self->_externalRelevanceLoggingConnection = v29;

  v31 = os_log_create("com.apple.PhotosGraph", "graphConsistencyCheck");
  graphConsistencyCheckLoggingConnection = self->_graphConsistencyCheckLoggingConnection;
  self->_graphConsistencyCheckLoggingConnection = v31;

  v33 = [objc_opt_class() graphServicesURLWithPhotoLibrary:v7];
  v34 = [[PGCurationManager alloc] initWithPhotoLibrary:v7 cacheURL:v33];
  curationManager = self->_curationManager;
  self->_curationManager = v34;

  v36 = objc_alloc(MEMORY[0x277D27718]);
  v37 = [MEMORY[0x277D27718] urlWithParentURL:v33];
  v38 = [v36 initWithURL:v37];
  locationCache = self->_locationCache;
  self->_locationCache = v38;

  v40 = [objc_alloc(MEMORY[0x277D277B0]) initWithLocationCache:self->_locationCache];
  serviceManager = self->_serviceManager;
  self->_serviceManager = v40;

  v42 = objc_alloc(MEMORY[0x277D27660]);
  v43 = [MEMORY[0x277D27660] urlWithParentURL:v33];
  v44 = [v42 initWithURL:v43];
  aoiCache = self->_aoiCache;
  self->_aoiCache = v44;

  v46 = objc_alloc(MEMORY[0x277D27750]);
  v47 = [MEMORY[0x277D27750] urlWithParentURL:v33];
  v48 = [v46 initWithURL:v47];
  poiCache = self->_poiCache;
  self->_poiCache = v48;

  v50 = objc_alloc(MEMORY[0x277D27790]);
  v51 = [MEMORY[0x277D27790] urlWithParentURL:v33];
  v52 = [v50 initWithURL:v51];
  roiCache = self->_roiCache;
  self->_roiCache = v52;

  v54 = objc_alloc(MEMORY[0x277D27740]);
  v55 = [MEMORY[0x277D27740] urlWithParentURL:v33];
  v56 = [v54 initWithURL:v55];
  natureCache = self->_natureCache;
  self->_natureCache = v56;

  v58 = objc_alloc(MEMORY[0x277D27788]);
  v59 = [(PGManager *)self analytics];
  v60 = [v58 initWithURL:v33 analytics:v59];
  publicEventManager = self->_publicEventManager;
  self->_publicEventManager = v60;

  v62 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v63 = dispatch_queue_attr_make_initially_inactive(v62);
  v64 = dispatch_queue_create("com.apple.PhotosGraph.graphAccessQueue", v63);
  graphAccessQueue = self->_graphAccessQueue;
  self->_graphAccessQueue = v64;

  dispatch_set_qos_class_floor(self->_graphAccessQueue, QOS_CLASS_UTILITY, 0);
  dispatch_activate(self->_graphAccessQueue);
  v66 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v67 = dispatch_queue_attr_make_initially_inactive(v66);
  v68 = dispatch_queue_create("com.apple.PhotosGraph.graphUpdateQueue", v67);
  graphUpdateQueue = self->_graphUpdateQueue;
  self->_graphUpdateQueue = v68;

  dispatch_set_qos_class_floor(self->_graphUpdateQueue, QOS_CLASS_UTILITY, 0);
  dispatch_activate(self->_graphUpdateQueue);
  v70 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v71 = dispatch_queue_create("com.apple.PhotosGraph.notificationQueue", v70);
  notificationQueue = self->_notificationQueue;
  self->_notificationQueue = v71;

  atomic_store(0, &self->_numberOfCurrentGraphAccesses);
  if (!self->_graph && self->_photoLibrary)
  {
    v73 = self->_graphAccessQueue;
    v76 = MEMORY[0x277D85DD0];
    v77 = 3221225472;
    v78 = __54__PGManager_commonInitWithPhotoLibrary_progressBlock___block_invoke;
    v79 = &unk_2788825D0;
    v80 = self;
    v81 = v8;
    dispatch_sync(v73, &v76);
  }

  v74 = [MEMORY[0x277CBEB18] array];
  coalescingGraphIsReady = self->_coalescingGraphIsReady;
  self->_coalescingGraphIsReady = v74;
}

- (NSDate)dateOfLastIncrementalUpdateInvocation
{
  v2 = [(PGGraph *)self->_graph infoNode];
  v3 = [v2 dateOfLastIncrementalUpdateInvocation];

  return v3;
}

- (unint64_t)numberOfEntities
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __29__PGManager_numberOfEntities__block_invoke;
  v4[3] = &unk_27888A5C0;
  v4[4] = &v5;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __29__PGManager_numberOfEntities__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 graph];
  *(*(*(a1 + 32) + 8) + 24) += [v3 nodesCount];
  *(*(*(a1 + 32) + 8) + 24) += [v3 edgesCount];
}

- (void)unloadGraph
{
  graphAccessQueue = self->_graphAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__PGManager_unloadGraph__block_invoke;
  block[3] = &unk_27888A660;
  block[4] = self;
  dispatch_barrier_sync(graphAccessQueue, block);
}

- (void)_unloadGraph
{
  if (self->_graph)
  {
    [(MAGraph *)self->_mutableGraph savePersistentStore];
    [(MAGraph *)self->_graph closePersistentStore];
    graph = self->_graph;
    self->_graph = 0;

    mutableGraph = self->_mutableGraph;
    self->_mutableGraph = 0;
  }
}

- (void)loadGraphWithProgressBlock:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = self->_graphLoggingConnection;
  v6 = a3;
  v7 = os_signpost_id_generate(v5);
  v8 = v5;
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "GraphLoading", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v10 = mach_absolute_time();
  v11 = _Block_copy(v6);

  v12 = 0.0;
  v13 = &unk_22F784000;
  if (!v11 || (v14 = CFAbsoluteTimeGetCurrent(), v14 < 0.01))
  {
LABEL_10:
    v15 = [(PGManager *)self graphPersistentStoreURL];
    if (!v15 || ![PGGraph graphExistsAtURL:v15])
    {
LABEL_37:
      v25 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v28 = v9;
      v29 = v28;
      if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v29, OS_SIGNPOST_INTERVAL_END, v7, "GraphLoading", " enableTelemetry=YES ", buf, 2u);
      }

      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *v39 = "GraphLoading";
        *&v39[8] = 2048;
        *&v39[10] = ((((v25 - v10) * numer) / denom) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }

      v30 = v29;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        v32 = [MEMORY[0x277D22C58] humanReadableMemoryFootprint];
        *buf = 136315394;
        *v39 = "GraphLoading";
        *&v39[8] = 2112;
        *&v39[10] = v32;
        _os_log_debug_impl(&dword_22F0FC000, v30, OS_LOG_TYPE_DEBUG, "[Memory Footprint] %s : %@", buf, 0x16u);
      }

      if (v11)
      {
        if (CFAbsoluteTimeGetCurrent() - v12 >= v13[76])
        {
          v36 = 0;
          v11[2](v11, &v36, 1.0);
          if (v36)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v39 = 474;
              *&v39[4] = 2080;
              *&v39[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }
          }
        }
      }

      goto LABEL_49;
    }

    v33 = v10;
    v35 = 0;
    v16 = [objc_alloc(objc_msgSend(objc_opt_class() "graphClass"))];
    v17 = v35;
    if (!v16 && (loggingConnection = self->_loggingConnection, os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR)))
    {
      *buf = 138412290;
      *v39 = v17;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Error loading existing graph due to internal error, graph database is corrupt or missing, rebuild required and will occur next time we attempt to open it: %@", buf, 0xCu);
      if (v11)
      {
LABEL_15:
        Current = CFAbsoluteTimeGetCurrent();
        if (Current - v12 >= 0.01)
        {
          v36 = 0;
          v11[2](v11, &v36, 0.5);
          if (v36)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v39 = 434;
              *&v39[4] = 2080;
              *&v39[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

LABEL_49:
            goto LABEL_50;
          }

          v12 = Current;
        }
      }
    }

    else if (v11)
    {
      goto LABEL_15;
    }

    if (v16)
    {
      v34 = v17;
      v20 = [(PGManager *)self graphIsUsable:v16 error:&v34];
      v21 = v34;

      if (v20)
      {
        v13 = &unk_22F784000;
        v10 = v33;
      }

      else
      {
        [v16 closePersistentStore];

        v10 = v33;
        if ([v21 code] == 34)
        {
          [(PGManager *)self _invalidatePersistentCachesForGeoServiceProviderChange];
          v16 = 0;
          v13 = &unk_22F784000;
        }

        else
        {
          [(PGManager *)self _invalidateTransientCaches];
          v22 = _os_feature_enabled_impl();
          v13 = &unk_22F784000;
          if (v22)
          {
            v23 = [v21 code] == 32 || objc_msgSend(v21, "code") == 33;
            v24 = self;
          }

          else
          {
            v24 = self;
            v23 = 1;
          }

          [(PGManager *)v24 _invalidatePersistentCachesIncludingPublicEvents:v23];
          v16 = 0;
        }
      }

      [(PGManager *)self setGraph:v16];
    }

    else
    {
      v21 = v17;
      v10 = v33;
    }

    goto LABEL_37;
  }

  v36 = 0;
  v11[2](v11, &v36, 0.0);
  if (v36 != 1)
  {
    v12 = v14;
    goto LABEL_10;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v39 = 418;
    *&v39[4] = 2080;
    *&v39[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_50:

  v31 = *MEMORY[0x277D85DE8];
}

- (BOOL)graphIsUsable:(id)a3 error:(id *)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(PGManager *)self graphLoggingConnection];
  v8 = [v6 version];
  if (v8 == 701)
  {
    v9 = [v6 infoNode];
    if ([v9 curationAlgorithmsVersion] == 12)
    {
      if ([v9 meaningAlgorithmsVersion] == 5)
      {
        v10 = objc_alloc_init(PGEventLabelingConfiguration);
        v11 = [(PGEventLabelingConfiguration *)v10 modelVersion];
        if ([v9 eventLabelingV2ModelVersion] == v11)
        {
          v12 = objc_alloc_init(MEMORY[0x277D3C800]);
          v13 = [v12 configurationVersion];

          if ([v9 personalTraitsEntityNamesVersion] == v13)
          {
            v14 = [v9 localeIdentifier];
            v15 = [MEMORY[0x277CBEAF8] currentLocale];
            v16 = [v15 localeIdentifier];
            v17 = [v14 isEqualToString:v16];

            if (v17)
            {
              v18 = MEMORY[0x277CBEB98];
              v19 = [MEMORY[0x277CBEAF8] preferredLanguages];
              v20 = [v18 setWithArray:v19];

              v21 = MEMORY[0x277CBEB98];
              v22 = [v9 languageIdentifiers];
              v23 = [v21 setWithArray:v22];

              if ([v23 isEqualToSet:v20])
              {
                if (![PGManager geoServiceProviderDidChangeForGraph:v6])
                {
                  v36 = [MEMORY[0x277D277B0] canAccessContactsStore];
                  v37 = v36 ^ [v9 canAccessContactsStore];
                  if (v37 == 1)
                  {
                    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
                    {
                      LOWORD(v40) = 0;
                      _os_log_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_DEFAULT, "Graph cannot be used because of diverging contacts store access permission", &v40, 2u);
                    }

                    if (a4)
                    {
                      *a4 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:35];
                    }
                  }

                  v27 = v37 ^ 1;
                  goto LABEL_54;
                }

                if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(v40) = 0;
                  _os_log_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_DEFAULT, "Graph cannot be used because of diverging geo service provider id", &v40, 2u);
                }

                if (a4)
                {
                  v24 = MEMORY[0x277CCA9B8];
                  v25 = 34;
LABEL_46:
                  [v24 pl_analysisErrorWithCode:v25];
                  *a4 = v27 = 0;
LABEL_54:

                  goto LABEL_55;
                }
              }

              else
              {
                if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(v40) = 0;
                  _os_log_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_DEFAULT, "Graph cannot be used because of diverging keyboard languages", &v40, 2u);
                }

                if (a4)
                {
                  v24 = MEMORY[0x277CCA9B8];
                  v25 = 33;
                  goto LABEL_46;
                }
              }

              v27 = 0;
              goto LABEL_54;
            }

            if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v40) = 0;
              _os_log_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_DEFAULT, "Graph cannot be used because of diverging locale", &v40, 2u);
            }

            if (a4)
            {
              v33 = MEMORY[0x277CCA9B8];
              v34 = 32;
              goto LABEL_40;
            }

LABEL_41:
            v27 = 0;
            goto LABEL_55;
          }

          v35 = v7;
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v40 = 134218240;
            v41 = [v9 personalTraitsEntityNamesVersion];
            v42 = 2048;
            v43 = v13;
            _os_log_impl(&dword_22F0FC000, v35, OS_LOG_TYPE_DEFAULT, "Graph cannot be used because of diverging graph personalTraitsEntityNames version (%ld vs expected %ld)", &v40, 0x16u);
          }

          if (!a4)
          {
            goto LABEL_41;
          }

          v33 = MEMORY[0x277CCA9B8];
          v34 = 36;
        }

        else
        {
          v32 = v7;
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v40 = 134218240;
            v41 = [v9 eventLabelingV2ModelVersion];
            v42 = 2048;
            v43 = v11;
            _os_log_impl(&dword_22F0FC000, v32, OS_LOG_TYPE_DEFAULT, "Graph cannot be used because of diverging graph eventLabelingV2 model version (%ld vs expected %ld)", &v40, 0x16u);
          }

          if (!a4)
          {
            goto LABEL_41;
          }

          v33 = MEMORY[0x277CCA9B8];
          v34 = 31;
        }

LABEL_40:
        [v33 pl_analysisErrorWithCode:v34];
        *a4 = v27 = 0;
LABEL_55:

        goto LABEL_56;
      }

      v31 = v7;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v40 = 134218240;
        v41 = [v9 meaningAlgorithmsVersion];
        v42 = 1024;
        LODWORD(v43) = 5;
        _os_log_impl(&dword_22F0FC000, v31, OS_LOG_TYPE_DEFAULT, "Graph cannot be used because of diverging graph meaning inference algorithm version (%lu vs expected %d)", &v40, 0x12u);
      }

      if (a4)
      {
        v29 = MEMORY[0x277CCA9B8];
        v30 = 30;
        goto LABEL_26;
      }
    }

    else
    {
      v28 = v7;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v40 = 134218240;
        v41 = [v9 curationAlgorithmsVersion];
        v42 = 1024;
        LODWORD(v43) = 12;
        _os_log_impl(&dword_22F0FC000, v28, OS_LOG_TYPE_DEFAULT, "Graph cannot be used because of diverging curation algorithms version (%lu vs expected %d)", &v40, 0x12u);
      }

      if (a4)
      {
        v29 = MEMORY[0x277CCA9B8];
        v30 = 29;
LABEL_26:
        [v29 pl_analysisErrorWithCode:v30];
        *a4 = v27 = 0;
LABEL_56:

        goto LABEL_57;
      }
    }

    v27 = 0;
    goto LABEL_56;
  }

  v26 = v8;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v40 = 134218240;
    v41 = v26;
    v42 = 1024;
    LODWORD(v43) = 701;
    _os_log_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_DEFAULT, "Graph cannot be used because of diverging graph versions (%lu vs expected %d)", &v40, 0x12u);
  }

  if (a4)
  {
    [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:28];
    *a4 = v27 = 0;
  }

  else
  {
    v27 = 0;
  }

LABEL_57:

  v38 = *MEMORY[0x277D85DE8];
  return v27;
}

- (PGManager)initWithGraph:(id)a3 photoLibrary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PGManager;
  v8 = [(PGManager *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(PGManager *)v8 setMutableGraph:v6];
    [(PGManager *)v9 commonInitWithPhotoLibrary:v7 progressBlock:0];
  }

  return v9;
}

- (PGManager)initWithImmutableGraph:(id)a3 photoLibrary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PGManager;
  v8 = [(PGManager *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(PGManager *)v8 setGraph:v6];
    [(PGManager *)v9 commonInitWithPhotoLibrary:v7 progressBlock:0];
  }

  return v9;
}

- (id)initForTesting
{
  v5.receiver = self;
  v5.super_class = PGManager;
  v2 = [(PGManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PGManager *)v2 commonInitWithPhotoLibrary:0 progressBlock:0];
  }

  return v3;
}

- (PGManager)init
{
  [(PGManager *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PGManager)initWithGraph:(id)a3 readonlyPhotoLibrary:(id)a4
{
  result = [(PGManager *)self initWithGraph:a3 photoLibrary:a4];
  if (result)
  {
    result->_photoLibraryIsReadonly = 1;
  }

  return result;
}

- (PGManager)initWithReadonlyPhotoLibrary:(id)a3
{
  result = [(PGManager *)self initWithPhotoLibrary:a3 progressBlock:&__block_literal_global_265];
  if (result)
  {
    result->_photoLibraryIsReadonly = 1;
  }

  return result;
}

- (PGManager)initWithGraphPersistentStoreURL:(id)a3 photoLibrary:(id)a4 analytics:(id)a5 progressBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = PGManager;
  v14 = [(PGManager *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_analytics, a5);
    [(PGManager *)v15 setGraphPersistentStoreURL:v10];
    [(PGManager *)v15 commonInitWithPhotoLibrary:v11 progressBlock:v13];
  }

  return v15;
}

- (PGManager)initWithPhotoLibrary:(id)a3 progressBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PGManager;
  v8 = [(PGManager *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(PGManager *)v8 commonInitWithPhotoLibrary:v6 progressBlock:v7];
  }

  return v9;
}

- (PGManager)initWithPhotoLibrary:(id)a3 analytics:(id)a4 progressBlock:(id)a5
{
  v9 = a4;
  v10 = [(PGManager *)self initWithPhotoLibrary:a3 progressBlock:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_analytics, a4);
  }

  return v11;
}

+ (id)stringFromPGDuration:(unint64_t)a3
{
  if (a3 > 0x17)
  {
    return @"invalid";
  }

  else
  {
    return off_278882700[a3];
  }
}

+ (BOOL)geoServiceProviderDidChangeForGraph:(id)a3
{
  v3 = [a3 infoNode];
  v4 = [v3 geoServiceProviderID];

  v5 = [MEMORY[0x277D3AD60] currentRevGeoProvider];
  v6 = [v4 isEqualToString:v5];

  return v6 ^ 1;
}

+ (id)graphServicesURLWithPhotoLibrary:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCAC38] processInfo];
  v5 = [v4 processName];

  if (([v5 isEqualToString:@"photoanalysisd"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"LifeCipher"))
  {
    v27 = 0;
    v6 = [v3 urlForApplicationDataFolderIdentifier:1 error:&v27];
    v7 = v27;
    if (v6)
    {
      goto LABEL_22;
    }

    v8 = +[PGLogging sharedLogging];
    v9 = [v8 loggingConnection];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v29 = v7;
      _os_log_error_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_ERROR, "Failed to access the graph service URL. Error: %@", buf, 0xCu);
    }
  }

  v10 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v26 = 0;
  v11 = [v10 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:&v26];
  v12 = v26;
  if (v11)
  {
    v6 = [v11 URLByAppendingPathComponent:v5];
    if (v3)
    {
      v13 = [v3 databaseUUID];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v16 = [MEMORY[0x277CCAD78] UUID];
        v15 = [v16 UUIDString];
      }

      v17 = [v6 URLByAppendingPathComponent:v15];

      v6 = v17;
    }

    buf[0] = 0;
    v18 = [v6 path];
    v19 = [v10 fileExistsAtPath:v18 isDirectory:buf];

    if (v19)
    {
      v20 = v12;
      if (buf[0])
      {
        v20 = v12;
LABEL_19:
        v12 = v20;
        goto LABEL_20;
      }
    }

    else
    {
      v25 = v12;
      v21 = [v10 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:&v25];
      v20 = v25;

      if (v21)
      {
        goto LABEL_19;
      }
    }

    v6 = 0;
    goto LABEL_19;
  }

  v6 = 0;
LABEL_20:

  if (v6)
  {
    goto LABEL_23;
  }

  v22 = MEMORY[0x277CBEBC0];
  v7 = NSTemporaryDirectory();
  v6 = [v22 fileURLWithPath:v7 isDirectory:1];
LABEL_22:

LABEL_23:
  v23 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (void)initialize
{
  if (initialize_onceToken_30066 != -1)
  {
    dispatch_once(&initialize_onceToken_30066, &__block_literal_global_30067);
  }
}

- (id)titleTupleForAlbum:(id)a3 format:(int64_t)a4 error:(id *)a5
{
  v40[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (a4)
  {
    v9 = [(PGManager *)self photoLibrary];
    v10 = [v9 librarySpecificFetchOptions];

    [v10 setIncludeGuestAssets:1];
    v11 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
    v40[0] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
    [v10 setSortDescriptors:v12];

    v13 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:v8 options:v10];
    if ([v13 count])
    {
      v14 = [v13 firstObject];
      v15 = [v13 lastObject];
      v16 = [v14 localCreationDate];
      v17 = v16;
      if (v14 == v15)
      {
        v18 = v16;
      }

      else
      {
        v18 = [v15 localCreationDate];
      }

      v38 = v18;
      v22 = [PGTimeUtility dateIntervalWithStartDate:v17 endDate:v18];
      v39 = v22;
      if (a4 == 2)
      {
        goto LABEL_15;
      }

      v23 = [v8 localizedTitle];
      if (!v23)
      {
        goto LABEL_15;
      }

      v24 = v23;
      v25 = [v8 localizedTitle];
      v26 = [v25 length];

      v22 = v39;
      if (v26)
      {
        if (a4 == 3)
        {
          v27 = 0;
        }

        else
        {
          v36 = [v8 localizedTitle];
          v27 = [PGTitle titleWithString:v36 category:4];
        }

        v30 = [PGTimeTitleUtility timeTitleWithDateInterval:v39 allowedFormats:7];
        v33 = [PGTitle titleWithString:v30 category:5];
      }

      else
      {
LABEL_15:
        v37 = v14;
        v28 = v17;
        v29 = v15;
        v30 = [PGTimeTitleUtility splitTimeTitleWithDateInterval:v22 allowedFormats:7];
        v31 = [v30 firstObject];
        v27 = [PGTitle titleWithString:v31 category:5];

        if ([v30 count] < 2)
        {
          v33 = 0;
        }

        else
        {
          v32 = [v30 objectAtIndexedSubscript:1];
          v33 = [PGTitle titleWithString:v32 category:5];
        }

        v15 = v29;
        v17 = v28;
        v14 = v37;
      }

      v19 = [[PGTitleTuple alloc] initWithWithTitle:v27 subtitle:v33];
    }

    else
    {
      if (!a5)
      {
        v19 = 0;
        goto LABEL_21;
      }

      v20 = MEMORY[0x277CCACA8];
      v21 = [v8 localIdentifier];
      v14 = [v20 stringWithFormat:@"Cannot create title from asset collection %@ with no assets.", v21];

      [MEMORY[0x277CCA9B8] errorWithDomain:@"PGErrorDomain" code:-101 localizedDescription:v14];
      *a5 = v19 = 0;
    }

LABEL_21:
    goto LABEL_22;
  }

  if (a5)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"PGErrorDomain" code:-101 localizedDescription:@"Undefined format"];
    *a5 = v19 = 0;
  }

  else
  {
    v19 = 0;
  }

LABEL_22:

  v34 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)titleTupleForMoment:(id)a3 format:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = v8;
  if (a4)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__30784;
    v28 = __Block_byref_object_dispose__30785;
    v29 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__30784;
    v22 = __Block_byref_object_dispose__30785;
    v23 = 0;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __60__PGManager_TitleSupport__titleTupleForMoment_format_error___block_invoke;
    v12[3] = &unk_278882A28;
    v13 = v8;
    v14 = self;
    v16 = &v18;
    v17 = a4;
    v15 = &v24;
    [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v12];
    if (a5)
    {
      *a5 = v19[5];
    }

    v10 = v25[5];

    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(&v24, 8);
  }

  else if (a5)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"PGErrorDomain" code:-101 localizedDescription:@"Undefined format"];
    *a5 = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __60__PGManager_TitleSupport__titleTupleForMoment_format_error___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [a2 graph];
  v4 = [v3 momentNodeForMoment:*(a1 + 32)];

  if (v4)
  {
    if (*(a1 + 64) == 2)
    {
      v5 = 1;
    }

    else
    {
      v15 = [*(a1 + 32) localizedTitle];
      if (v15)
      {
        v16 = [*(a1 + 32) localizedTitle];
        v5 = [v16 length] == 0;
      }

      else
      {
        v5 = 1;
      }
    }

    v17 = objc_alloc_init(PGTimeTitleOptions);
    v18 = [MEMORY[0x277CBEB98] setWithObject:v4];
    [(PGTimeTitleOptions *)v17 setMomentNodes:v18];

    if (v5)
    {
      v19 = [PGTimeTitleUtility splitTimeTitleWithOptions:v17];
      v20 = [v19 firstObject];
      v21 = [PGTitle titleWithString:v20 category:5];

      if ([v19 count] < 2)
      {
        v23 = 0;
      }

      else
      {
        v22 = [v19 objectAtIndexedSubscript:1];
        v23 = [PGTitle titleWithString:v22 category:5];
      }
    }

    else
    {
      if (*(a1 + 64) == 3)
      {
        v21 = 0;
      }

      else
      {
        v24 = [*(a1 + 32) localizedTitle];
        v21 = [PGTitle titleWithString:v24 category:4];
      }

      v19 = [PGTimeTitleUtility timeTitleWithOptions:v17];
      v23 = [PGTitle titleWithString:v19 category:5];
    }

    v25 = [[PGTitleTuple alloc] initWithWithTitle:v21 subtitle:v23];
    v26 = *(*(a1 + 48) + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = v25;
  }

  else
  {
    v6 = [*(a1 + 40) graphLoggingConnection];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [*(a1 + 32) localIdentifier];
      *buf = 138412290;
      v31 = v7;
      _os_log_impl(&dword_22F0FC000, v6, OS_LOG_TYPE_INFO, "Cannot find node for moment %@. Generating without graph access.", buf, 0xCu);
    }

    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = *(a1 + 64);
    v11 = *(*(a1 + 56) + 8);
    obj = *(v11 + 40);
    v12 = [v8 titleTupleForAlbum:v9 format:v10 error:&obj];
    objc_storeStrong((v11 + 40), obj);
    v13 = *(*(a1 + 48) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (id)titleTupleForAssetCollection:(id)a3 format:(int64_t)a4 error:(id *)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [v8 assetCollectionType];
  if (v9 == 3)
  {
    v10 = [(PGManager *)self titleTupleForMoment:v8 format:a4 error:a5];
LABEL_5:
    v12 = v10;
    goto LABEL_11;
  }

  v11 = v9;
  if ((v9 - 1) <= 1)
  {
    v10 = [(PGManager *)self titleTupleForAlbum:v8 format:a4 error:a5];
    goto LABEL_5;
  }

  v13 = MEMORY[0x277CCACA8];
  v14 = [v8 localIdentifier];
  v15 = [v13 stringWithFormat:@"Unsupported asset collection type %lu for asset collection %@", v11, v14];

  v16 = [(PGManager *)self graphLoggingConnection];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v20 = v15;
    _os_log_impl(&dword_22F0FC000, v16, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  if (a5)
  {
    *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PGErrorDomain" code:-101 localizedDescription:v15];
  }

  v12 = 0;
LABEL_11:

  v17 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)titleTupleForMomentList:(id)a3 format:(int64_t)a4 error:(id *)a5
{
  v69 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = v8;
  if (!a4)
  {
    if (a5)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"PGErrorDomain" code:-101 localizedDescription:@"Undefined format"];
      *a5 = v17 = 0;
      goto LABEL_53;
    }

    goto LABEL_14;
  }

  v10 = [v8 collectionListType];
  v11 = [v9 collectionListSubtype];
  if (v10 != 1)
  {
    v18 = MEMORY[0x277CCACA8];
    v19 = [v9 localIdentifier];
    v15 = [v18 stringWithFormat:@"Unsupported collection list type %lu for collection list %@.", v10, v19];

    v16 = [(PGManager *)self graphLoggingConnection];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v68 = v15;
      goto LABEL_10;
    }

LABEL_11:

    if (a5)
    {
      *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PGErrorDomain" code:-101 localizedDescription:v15];
    }

LABEL_14:
    v17 = 0;
    goto LABEL_53;
  }

  v12 = v11;
  if ((v11 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = MEMORY[0x277CCACA8];
    v14 = [v9 localIdentifier];
    v15 = [v13 stringWithFormat:@"Unsupported collection list sub type %lu for collection list %@.", v12, v14];

    v16 = [(PGManager *)self graphLoggingConnection];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v68 = v15;
LABEL_10:
      _os_log_impl(&dword_22F0FC000, v16, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v20 = [(PGManager *)self photoLibrary];
  v21 = [v20 librarySpecificFetchOptions];

  v22 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:1];
  v66 = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v66 count:1];
  [v21 setSortDescriptors:v23];

  v24 = [MEMORY[0x277CD97B8] fetchMomentsInMomentList:v9 options:v21];
  v25 = [v24 firstObject];
  v65 = v24;
  v26 = [v24 lastObject];
  v27 = v26;
  if (v25 && v26)
  {
    v28 = [v25 cls_localStartDate];
    v29 = [v27 cls_localEndDate];
    v61 = v25;
    v62 = v21;
    if (v12 == 2)
    {
      v30 = [MEMORY[0x277D27690] yearFromDate:v28];
      v31 = v65;
      if (v30 != [MEMORY[0x277D27690] yearFromDate:v29] && objc_msgSend(v65, "count") >= 3)
      {
        v59 = v27;
        v63 = v29;
        v32 = [MEMORY[0x277D27690] monthFromDate:v28];
        v33 = [MEMORY[0x277D27690] dayFromDate:v28];
        v34 = [v65 count] - 2;
        v35 = 1;
        v36 = v34;
        while (v32 == 12 && v33 == 31)
        {
          v37 = [v65 objectAtIndex:v35];
          v38 = [v37 cls_localEndDate];

          v32 = [MEMORY[0x277D27690] monthFromDate:v38];
          v33 = [MEMORY[0x277D27690] dayFromDate:v38];
          ++v35;

          v28 = v38;
          if (!--v36)
          {
            goto LABEL_57;
          }
        }

        v38 = v28;
LABEL_57:
        v29 = v63;
        v55 = [MEMORY[0x277D27690] monthFromDate:v63];
        v56 = [MEMORY[0x277D27690] dayFromDate:v63];
        v31 = v65;
        while (v55 == 1 && v56 == 1)
        {
          v57 = [v65 objectAtIndex:v34];
          v58 = [v57 cls_localStartDate];

          v55 = [MEMORY[0x277D27690] monthFromDate:v58];
          v56 = [MEMORY[0x277D27690] dayFromDate:v58];
          --v34;

          v29 = v58;
          if (!v34)
          {
            v29 = v58;
            break;
          }
        }

        v28 = v38;
        v12 = 2;
        v27 = v59;
      }
    }

    else
    {
      v31 = v24;
    }

    v64 = v29;
    v43 = [PGTimeUtility dateIntervalWithStartDate:v28 endDate:v29];
    if (v12 == 2)
    {
      v44 = [PGTimeTitleUtility timeTitleWithDateInterval:v43 allowedFormats:4];
      v45 = [PGTitle titleWithString:v44 category:5];
      v46 = a4 == 3;
      if (a4 == 3)
      {
        v47 = 0;
      }

      else
      {
        v47 = v45;
      }

      if (v46)
      {
        v48 = v45;
      }

      else
      {
        v48 = 0;
      }
    }

    else
    {
      v49 = [v9 localizedTitle];
      v44 = v49;
      if (a4 != 2 && v49 && [v49 length])
      {
        if (a4 == 3)
        {
          v47 = 0;
        }

        else
        {
          v47 = [PGTitle titleWithString:v44 category:4];
        }

        v50 = [PGTimeTitleUtility timeTitleWithDateInterval:v43 allowedFormats:7];
        v48 = [PGTitle titleWithString:v50 category:5];
      }

      else
      {
        v60 = v27;
        v50 = [PGTimeTitleUtility splitTimeTitleWithDateInterval:v43 allowedFormats:7];
        v51 = [v50 firstObject];
        v47 = [PGTitle titleWithString:v51 category:5];

        if ([v50 count] < 2)
        {
          v48 = 0;
        }

        else
        {
          v52 = [v50 objectAtIndexedSubscript:1];
          v48 = [PGTitle titleWithString:v52 category:5];
        }

        v27 = v60;
      }
    }

    v17 = [[PGTitleTuple alloc] initWithWithTitle:v47 subtitle:v48];
    v25 = v61;
    v21 = v62;
  }

  else
  {
    v39 = v26;
    v40 = MEMORY[0x277CCACA8];
    v41 = [v9 localIdentifier];
    v28 = [v40 stringWithFormat:@"Missing moments in collection list %@.", v41];

    v42 = [(PGManager *)self graphLoggingConnection];
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v68 = v28;
      _os_log_impl(&dword_22F0FC000, v42, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }

    if (a5)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"PGErrorDomain" code:-101 localizedDescription:v28];
      *a5 = v17 = 0;
    }

    else
    {
      v17 = 0;
    }

    v31 = v65;
    v27 = v39;
  }

LABEL_53:
  v53 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)titleTupleForPersonLocalIdentifiers:(id)a3 format:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = v8;
  if (!a4)
  {
    if (a5)
    {
      v13 = MEMORY[0x277CCA9B8];
      v14 = @"Undefined format";
      goto LABEL_11;
    }

LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  if (!v8 || ![v8 count])
  {
    if (a5)
    {
      v13 = MEMORY[0x277CCA9B8];
      v14 = @"No person identifiers given. Need at least one person identifier.";
LABEL_11:
      [v13 errorWithDomain:@"PGErrorDomain" code:-101 localizedDescription:v14];
      *a5 = v12 = 0;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__30784;
  v32 = __Block_byref_object_dispose__30785;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__30784;
  v26 = __Block_byref_object_dispose__30785;
  v27 = 0;
  v10 = [(PGManager *)self serviceManager];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __76__PGManager_TitleSupport__titleTupleForPersonLocalIdentifiers_format_error___block_invoke;
  v16[3] = &unk_278882A28;
  v17 = v9;
  v19 = &v22;
  v11 = v10;
  v20 = &v28;
  v21 = a4;
  v18 = v11;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v16];
  if (a5)
  {
    *a5 = v23[5];
  }

  v12 = v29[5];

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

LABEL_13:

  return v12;
}

void __76__PGManager_TitleSupport__titleTupleForPersonLocalIdentifiers_format_error___block_invoke(uint64_t *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v30 = v3;
  v5 = [v3 graph];
  v6 = [PGGraphPersonNodeCollection personNodesForArrayOfLocalIdentifiers:v4 inGraph:v5];

  if ([v6 isEmpty])
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Information Mismatch. Cannot find people for person id's %@.", a1[4]];
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PGErrorDomain" code:-102 localizedDescription:v7];
    v9 = *(a1[6] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  else
  {
    v11 = [v30 graph];
    v7 = [v11 momentNodesForPersonNodes:v6];

    if ([v7 isEmpty])
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Information Mismatch. Cannot find moments for people nodes with id's %@.", a1[4]];
      v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PGErrorDomain" code:-102 localizedDescription:v10];
      v13 = *(a1[6] + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;
    }

    else
    {
      v15 = 2 * ([a1[4] count] > 1);
      v16 = [PGPeopleMemoryTitleGenerator alloc];
      v17 = [v7 temporarySet];
      v18 = [v6 temporarySet];
      v19 = [PGTitleGenerationContext alloc];
      v20 = [v30 graph];
      v21 = [(PGTitleGenerationContext *)v19 initWithGraph:v20 serviceManager:a1[5]];
      v10 = [(PGPeopleMemoryTitleGenerator *)v16 initWithMomentNodes:v17 personNodes:v18 timeTitleOptions:0 type:v15 titleGenerationContext:v21];

      v22 = [(PGTitleGenerator *)v10 subtitle];
      v23 = v22;
      v24 = a1[8];
      if (v24 == 2)
      {
        v25 = 0;
        v14 = v22;
      }

      else
      {
        if (v24 == 3)
        {
          v14 = 0;
        }

        else
        {
          v14 = [(PGTitleGenerator *)v10 title];
        }

        v25 = v23;
      }

      v26 = v23;
      v27 = [[PGTitleTuple alloc] initWithWithTitle:v14 subtitle:v25];

      v28 = *(a1[7] + 8);
      v29 = *(v28 + 40);
      *(v28 + 40) = v27;
    }
  }
}

- (id)searchSynonymsDictionariesWithProgressReporter:(id)a3
{
  v4 = a3;
  if ([v4 isCancelledWithProgress:0.0])
  {
    v5 = MEMORY[0x277CBEC10];
  }

  else
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__31820;
    v18 = __Block_byref_object_dispose__31821;
    v19 = 0;
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __68__PGManager_Search__searchSynonymsDictionariesWithProgressReporter___block_invoke;
    v11 = &unk_27888A570;
    v6 = v4;
    v12 = v6;
    v13 = &v14;
    [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:&v8];
    if ([v6 isCancelled] & 1) != 0 || (objc_msgSend(v6, "isCancelledWithProgress:", 1.0))
    {
      v5 = MEMORY[0x277CBEC10];
    }

    else
    {
      v5 = v15[5];
    }

    _Block_object_dispose(&v14, 8);
  }

  return v5;
}

void __68__PGManager_Search__searchSynonymsDictionariesWithProgressReporter___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (([*(a1 + 32) isCancelledWithProgress:0.1] & 1) == 0)
  {
    v3 = [v7 graph];
    v4 = [PGGraphSynonymSupportHelper synonymsByIndexCategoryMaskForGraph:v3];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

- (id)searchableAssetUUIDsBySocialGroupWithEventUUIDs:(id)a3 ofType:(unint64_t)a4 isFullAnalysis:(BOOL)a5 progressReporter:(id)a6
{
  v10 = a3;
  v11 = a6;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__31820;
  v30 = __Block_byref_object_dispose__31821;
  v31 = 0;
  v12 = [(PGManager *)self newSearchComputationCache];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __108__PGManager_Search__searchableAssetUUIDsBySocialGroupWithEventUUIDs_ofType_isFullAnalysis_progressReporter___block_invoke;
  v18[3] = &unk_278882EC8;
  v13 = v12;
  v19 = v13;
  v23 = &v26;
  v14 = v10;
  v24 = a4;
  v20 = v14;
  v21 = self;
  v25 = a5;
  v15 = v11;
  v22 = v15;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v18];
  [v13 save];
  v16 = v27[5];

  _Block_object_dispose(&v26, 8);

  return v16;
}

void __108__PGManager_Search__searchableAssetUUIDsBySocialGroupWithEventUUIDs_ofType_isFullAnalysis_progressReporter___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [PGSearchKeywordComputer alloc];
  v5 = [v3 graph];

  v6 = [(PGSearchKeywordComputer *)v4 initWithGraph:v5 searchComputationCache:*(a1 + 32)];
  v7 = *(a1 + 72);
  v8 = *(a1 + 40);
  v9 = [*(a1 + 48) photoLibrary];
  v10 = *(a1 + 80);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __108__PGManager_Search__searchableAssetUUIDsBySocialGroupWithEventUUIDs_ofType_isFullAnalysis_progressReporter___block_invoke_2;
  v14[3] = &unk_278882E50;
  v15 = *(a1 + 56);
  v11 = [(PGSearchKeywordComputer *)v6 searchableAssetUUIDsBySocialGroupWithEventUUIDs:v8 ofType:v7 inPhotoLibrary:v9 isFullAnalysis:v10 progressBlock:v14];
  v12 = *(*(a1 + 64) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;
}

uint64_t __108__PGManager_Search__searchableAssetUUIDsBySocialGroupWithEventUUIDs_ofType_isFullAnalysis_progressReporter___block_invoke_2(uint64_t a1, _BYTE *a2)
{
  result = [*(a1 + 32) isCancelledWithProgress:?];
  *a2 = result;
  return result;
}

- (id)assetSearchKeywordsByMomentUUIDWithEventUUIDs:(id)a3 ofType:(unint64_t)a4 progressReporter:(id)a5
{
  v8 = a3;
  v9 = a5;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__31820;
  v26 = __Block_byref_object_dispose__31821;
  v27 = 0;
  v10 = [(PGManager *)self newSearchComputationCache];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __91__PGManager_Search__assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_progressReporter___block_invoke;
  v16[3] = &unk_278882EA0;
  v11 = v10;
  v17 = v11;
  v20 = &v22;
  v12 = v8;
  v18 = v12;
  v21 = a4;
  v13 = v9;
  v19 = v13;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v16];
  [v11 save];
  v14 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v14;
}

void __91__PGManager_Search__assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_progressReporter___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [PGSearchKeywordComputer alloc];
  v5 = [v3 graph];

  v6 = [(PGSearchKeywordComputer *)v4 initWithGraph:v5 searchComputationCache:*(a1 + 32)];
  v7 = *(a1 + 64);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __91__PGManager_Search__assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_progressReporter___block_invoke_2;
  v12[3] = &unk_278882E50;
  v8 = *(a1 + 40);
  v13 = *(a1 + 48);
  v9 = [(PGSearchKeywordComputer *)v6 assetSearchKeywordsByMomentUUIDWithEventUUIDs:v8 ofType:v7 progressBlock:v12];
  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

uint64_t __91__PGManager_Search__assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_progressReporter___block_invoke_2(uint64_t a1, _BYTE *a2)
{
  result = [*(a1 + 32) isCancelledWithProgress:?];
  *a2 = result;
  return result;
}

- (id)searchKeywordsByEventWithUUIDs:(id)a3 ofType:(unint64_t)a4 progressReporter:(id)a5
{
  v8 = a3;
  v9 = a5;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__31820;
  v30 = __Block_byref_object_dispose__31821;
  v31 = 0;
  v10 = [(PGManager *)self newSearchComputationCache];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __76__PGManager_Search__searchKeywordsByEventWithUUIDs_ofType_progressReporter___block_invoke;
  v19 = &unk_278882E78;
  v11 = v10;
  v20 = v11;
  v24 = &v26;
  v12 = v8;
  v25 = a4;
  v21 = v12;
  v22 = self;
  v13 = v9;
  v23 = v13;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:&v16];
  [v11 save];
  v14 = v27[5];

  _Block_object_dispose(&v26, 8);

  return v14;
}

void __76__PGManager_Search__searchKeywordsByEventWithUUIDs_ofType_progressReporter___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [PGSearchKeywordComputer alloc];
  v5 = [v3 graph];

  v6 = [(PGSearchKeywordComputer *)v4 initWithGraph:v5 searchComputationCache:*(a1 + 32)];
  v7 = *(a1 + 72);
  v8 = *(a1 + 40);
  v9 = [*(a1 + 48) photoLibrary];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__PGManager_Search__searchKeywordsByEventWithUUIDs_ofType_progressReporter___block_invoke_2;
  v13[3] = &unk_278882E50;
  v14 = *(a1 + 56);
  v10 = [(PGSearchKeywordComputer *)v6 searchKeywordsByEventWithEventUUIDs:v8 ofType:v7 photoLibrary:v9 progressBlock:v13];
  v11 = *(*(a1 + 64) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

uint64_t __76__PGManager_Search__searchKeywordsByEventWithUUIDs_ofType_progressReporter___block_invoke_2(uint64_t a1, _BYTE *a2)
{
  result = [*(a1 + 32) isCancelledWithProgress:?];
  *a2 = result;
  return result;
}

- (id)searchMetadataWithOptions:(id)a3 progressReporter:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 isCancelledWithProgress:0.0])
  {
    v8 = MEMORY[0x277CBEC10];
  }

  else
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__31820;
    v19 = __Block_byref_object_dispose__31821;
    v20 = 0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __64__PGManager_Search__searchMetadataWithOptions_progressReporter___block_invoke;
    v11[3] = &unk_278888EB8;
    v9 = v7;
    v12 = v9;
    v14 = &v15;
    v13 = v6;
    [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v11];
    if ([v9 isCancelled] & 1) != 0 || (objc_msgSend(v9, "isCancelledWithProgress:", 1.0))
    {
      v8 = MEMORY[0x277CBEC10];
    }

    else
    {
      v8 = v16[5];
    }

    _Block_object_dispose(&v15, 8);
  }

  return v8;
}

void __64__PGManager_Search__searchMetadataWithOptions_progressReporter___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  if (([*(a1 + 32) isCancelledWithProgress:0.1] & 1) == 0)
  {
    v3 = [PGSearchMetadataComputer alloc];
    v4 = [v9 graph];
    v5 = [(PGSearchMetadataComputer *)v3 initWithGraph:v4];

    v6 = [(PGSearchMetadataComputer *)v5 searchMetadataWithOptions:*(a1 + 40)];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (id)zeroKeywordsWithOptions:(id)a3 progressReporter:(id)a4
{
  v6 = a3;
  v7 = a4;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__31820;
  v32 = __Block_byref_object_dispose__31821;
  v33 = 0;
  v8 = [(PGManager *)self newSearchComputationCache];
  v9 = [(PGManager *)self photoLibrary];
  v10 = [(PGManager *)self curationManager];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __62__PGManager_Search__zeroKeywordsWithOptions_progressReporter___block_invoke;
  v21 = &unk_27888A6D8;
  v11 = v9;
  v22 = v11;
  v12 = v10;
  v23 = v12;
  v13 = v8;
  v24 = v13;
  v27 = &v28;
  v14 = v6;
  v25 = v14;
  v15 = v7;
  v26 = v15;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:&v18];
  [v13 save];
  v16 = v29[5];

  _Block_object_dispose(&v28, 8);

  return v16;
}

void __62__PGManager_Search__zeroKeywordsWithOptions_progressReporter___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PGZeroKeywordComputer alloc] initWithPhotoLibrary:*(a1 + 32) curationManager:*(a1 + 40) searchComputationCache:*(a1 + 48)];
  v5 = [objc_alloc(MEMORY[0x277D3C790]) initWithPhotoLibrary:*(a1 + 32)];
  v6 = [v3 graph];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__PGManager_Search__zeroKeywordsWithOptions_progressReporter___block_invoke_2;
  v11[3] = &unk_278882E50;
  v7 = *(a1 + 56);
  v12 = *(a1 + 64);
  v8 = [(PGZeroKeywordComputer *)v4 zeroKeywordsWithGraph:v6 curationContext:v5 options:v7 progressBlock:v11];
  v9 = *(*(a1 + 72) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

uint64_t __62__PGManager_Search__zeroKeywordsWithOptions_progressReporter___block_invoke_2(uint64_t a1, _BYTE *a2)
{
  result = [*(a1 + 32) isCancelledWithProgress:?];
  *a2 = result;
  return result;
}

- (id)newSearchComputationCache
{
  v3 = [PGSearchComputationCache persistentStoreURLWithManager:self];
  v4 = [PGSearchComputationCache alloc];
  v5 = [(PGManager *)self photoLibrary];
  v6 = [(PGSearchComputationCache *)v4 initWithPersistentStoreURL:v3 photoLibrary:v5];

  return v6;
}

- (NSArray)availableMetricEvents
{
  v17[4] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  v4 = [[PGCuratedLibraryIntelligenceMetricEvent alloc] initWithGraphManager:self];
  v17[0] = v4;
  v5 = [[PGGraphStatisticsMetricEvent alloc] initWithGraphManager:self];
  v17[1] = v5;
  v6 = [[PGGuessWhoRelationshipMetricEvent alloc] initWithGraphManager:self];
  v17[2] = v6;
  v7 = [PGGraphSyndicatedAssetsMetricEvent alloc];
  v8 = [(PGManager *)self workingContext];
  v9 = [(PGGraphSyndicatedAssetsMetricEvent *)v7 initWithWorkingContext:v8];
  v17[3] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:4];
  v11 = [v3 arrayWithArray:v10];

  v12 = [PGGraphHolidayMetricEvent celebratedHolidayMetricEventsWithGraphManager:self];
  [v11 addObjectsFromArray:v12];
  if (PGIsAppleInternal_onceToken != -1)
  {
    dispatch_once(&PGIsAppleInternal_onceToken, &__block_literal_global_8316);
  }

  if (PGIsAppleInternal_isAppleInternal == 1 && [objc_opt_class() photosChallengeIsEnabled])
  {
    v13 = [PGPhotosChallengeMetricEvent allMetricEventsWithGraphManager:self];
    [v11 addObjectsFromArray:v13];
  }

  v14 = [MEMORY[0x277CBEA60] arrayWithArray:v11];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)updateGraphWithRecipe:(id)a3 keepExistingGraph:(BOOL)a4 progressBlock:(id)a5 completionBlock:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  [(PGManager *)self setLibraryAnalysisState:1];
  if (!a4)
  {
    [(PGManager *)self _unloadGraph];
  }

  [(PGManager *)self stampFullGraphRebuild];
  v13 = [(PGManager *)self currentFullGraphRebuildStamp];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __101__PGManager_Analysis_Private__updateGraphWithRecipe_keepExistingGraph_progressBlock_completionBlock___block_invoke;
  aBlock[3] = &unk_278883920;
  v22 = v11;
  v23 = v13;
  aBlock[4] = self;
  v20 = v10;
  v21 = v12;
  v14 = v11;
  v15 = v10;
  v16 = v12;
  v17 = _Block_copy(aBlock);
  v18 = [(PGManager *)self graphUpdateQueue];
  dispatch_async(v18, v17);
}

void __101__PGManager_Analysis_Private__updateGraphWithRecipe_keepExistingGraph_progressBlock_completionBlock___block_invoke(uint64_t a1)
{
  v58 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = atomic_load((a1 + 64));
  if ([v2 canProceedWithFullGraphRebuildStamp:v3])
  {
    v4 = [*(a1 + 32) graphPersistenceParentDirectoryURL];
    v5 = @"construction-photosgraph";
    v6 = [PGGraph graphURLForName:@"construction-photosgraph" parentDirectoryURL:v4];
    v7 = @"validation-photosgraph";
    v8 = [PGGraph graphURLForName:@"validation-photosgraph" parentDirectoryURL:v4];
    v9 = *(a1 + 32);
    if ([objc_opt_class() graphConsistencyCheckIsEnabled])
    {
      [*(a1 + 32) copyGraphToURL:v8];
    }

    v10 = [*(a1 + 32) ingestLoggingConnection];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_INFO, "[PGManager][updateGraphWithRecipe] Start performing library analysis", buf, 2u);
    }

    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v51 = 0;
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __101__PGManager_Analysis_Private__updateGraphWithRecipe_keepExistingGraph_progressBlock_completionBlock___block_invoke_280;
    v48[3] = &unk_278883880;
    v13 = *(a1 + 56);
    v48[4] = *(a1 + 32);
    v49 = v13;
    v14 = atomic_load((a1 + 64));
    v50 = v14;
    v15 = [v11 performLibraryAnalysisWithGraphURL:v6 withRecipe:v12 processedGraphUpdate:&v51 progressBlock:v48];
    v16 = v51;
    v17 = [*(a1 + 32) ingestLoggingConnection];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v55 = v15;
      _os_log_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_INFO, "[PGManager][updateGraphWithRecipe] Finished performing library analysis with analysis result=%ld", buf, 0xCu);
    }

    if (v15 == 2)
    {
      v25 = dispatch_semaphore_create(0);
      v26 = *(a1 + 32);
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __101__PGManager_Analysis_Private__updateGraphWithRecipe_keepExistingGraph_progressBlock_completionBlock___block_invoke_284;
      v38[3] = &unk_2788838F8;
      v27 = v6;
      v39 = v27;
      v28 = v8;
      v40 = v28;
      v29 = v25;
      v41 = v29;
      [v26 performAsynchronousGraphBarrierUsingBlock:v38];
      dispatch_semaphore_wait(v29, 0xFFFFFFFFFFFFFFFFLL);
      v30 = [*(a1 + 32) ingestLoggingConnection];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = [v27 path];
        v32 = [v28 path];
        *buf = 138412546;
        v55 = v31;
        v56 = 2112;
        v57 = v32;
        _os_log_impl(&dword_22F0FC000, v30, OS_LOG_TYPE_INFO, "[PGManager][updateGraphWithRecipe] Successfully destroy the two databases=%@ and %@", buf, 0x16u);
      }
    }

    else if (!v15)
    {
      v18 = dispatch_semaphore_create(0);
      v19 = *(a1 + 32);
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __101__PGManager_Analysis_Private__updateGraphWithRecipe_keepExistingGraph_progressBlock_completionBlock___block_invoke_281;
      v42[3] = &unk_2788838D0;
      v43 = v6;
      v46 = *(a1 + 56);
      v47 = *(a1 + 48);
      v44 = v16;
      v20 = v18;
      v45 = v20;
      [v19 performAsynchronousGraphBarrierUsingBlock:v42];
      dispatch_semaphore_wait(v20, 0xFFFFFFFFFFFFFFFFLL);
      v21 = [*(a1 + 32) ingestLoggingConnection];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22F0FC000, v21, OS_LOG_TYPE_INFO, "[PGManager][updateGraphWithRecipe] Successfully perform a graph full rebuild", buf, 2u);
      }

      goto LABEL_23;
    }

    [*(a1 + 32) setLibraryAnalysisState:0];
    v33 = *(a1 + 48);
    if (!v33)
    {
LABEL_24:

      goto LABEL_25;
    }

    v34 = *(a1 + 32);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __101__PGManager_Analysis_Private__updateGraphWithRecipe_keepExistingGraph_progressBlock_completionBlock___block_invoke_285;
    v36[3] = &unk_278883848;
    v37 = v33;
    [v34 performAsynchronousNotification:v36];
    v20 = v37;
LABEL_23:

    goto LABEL_24;
  }

  v22 = *(a1 + 48);
  if (v22)
  {
    v23 = *(a1 + 32);
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __101__PGManager_Analysis_Private__updateGraphWithRecipe_keepExistingGraph_progressBlock_completionBlock___block_invoke_2;
    v52[3] = &unk_278883848;
    v53 = v22;
    [v23 performAsynchronousNotification:v52];
  }

  v24 = [*(a1 + 32) ingestLoggingConnection];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, v24, OS_LOG_TYPE_INFO, "[PGManager][updateGraphWithRecipe] Unable to proceed with the full graph rebuild stamp", buf, 2u);
  }

  [*(a1 + 32) setLibraryAnalysisState:0];
LABEL_25:
  v35 = *MEMORY[0x277D85DE8];
}

void __101__PGManager_Analysis_Private__updateGraphWithRecipe_keepExistingGraph_progressBlock_completionBlock___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [PGError errorForCode:-4];
  (*(v1 + 16))(v1, 0, v2, 0);
}

uint64_t __101__PGManager_Analysis_Private__updateGraphWithRecipe_keepExistingGraph_progressBlock_completionBlock___block_invoke_280(void *a1, _BYTE *a2, double a3)
{
  (*(a1[5] + 16))(a3 * 0.95);
  v5 = a1[4];
  v6 = atomic_load(a1 + 6);
  result = [v5 canProceedWithFullGraphRebuildStamp:v6];
  if ((result & 1) == 0)
  {
    *a2 = 1;
  }

  return result;
}

void __101__PGManager_Analysis_Private__updateGraphWithRecipe_keepExistingGraph_progressBlock_completionBlock___block_invoke_281(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 56);
  v18 = 0;
  v6 = [v3 swapInGraphAtURL:v4 progressBlock:v5 error:&v18];
  v7 = v18;
  [v3 setLibraryAnalysisState:0];
  v8 = *(a1 + 64);
  if (v8)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __101__PGManager_Analysis_Private__updateGraphWithRecipe_keepExistingGraph_progressBlock_completionBlock___block_invoke_2_282;
    v12[3] = &unk_2788838A8;
    v16 = v8;
    v17 = v6;
    v13 = v7;
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    [v3 performAsynchronousNotification:v12];
  }

  else
  {
    v9 = +[PGLogging sharedLogging];
    v10 = [v9 loggingConnection];

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v7;
      _os_log_error_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_ERROR, "Failed swapping the updated graph in: %@", buf, 0xCu);
    }

    dispatch_semaphore_signal(*(a1 + 48));
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __101__PGManager_Analysis_Private__updateGraphWithRecipe_keepExistingGraph_progressBlock_completionBlock___block_invoke_284(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v14 = 0;
  v3 = [(MAGraph *)PGGraph destroyPersistentStoreAtURL:v2 error:&v14];
  v4 = v14;
  if (!v3)
  {
    v5 = +[PGLogging sharedLogging];
    v6 = [v5 loggingConnection];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v4;
      _os_log_error_impl(&dword_22F0FC000, v6, OS_LOG_TYPE_ERROR, "An error occurred while destroying working (and possibly corrupt) database %@", buf, 0xCu);
    }
  }

  v7 = *(a1 + 40);
  v13 = v4;
  v8 = [(MAGraph *)PGGraph destroyPersistentStoreAtURL:v7 error:&v13];
  v9 = v13;

  if (!v8)
  {
    v10 = +[PGLogging sharedLogging];
    v11 = [v10 loggingConnection];

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v9;
      _os_log_error_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_ERROR, "An error occurred while destroying validation graph database %@", buf, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 48));

  v12 = *MEMORY[0x277D85DE8];
}

void __101__PGManager_Analysis_Private__updateGraphWithRecipe_keepExistingGraph_progressBlock_completionBlock___block_invoke_285(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [PGError errorForCode:-4];
  (*(v1 + 16))(v1, 0, v2, 0);
}

intptr_t __101__PGManager_Analysis_Private__updateGraphWithRecipe_keepExistingGraph_progressBlock_completionBlock___block_invoke_2_282(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  (*(*(a1 + 56) + 16))();
  v5 = *(a1 + 48);

  return dispatch_semaphore_signal(v5);
}

- (void)startGraphUpdate:(id)a3 progressBlock:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PGManager *)self ingestLoggingConnection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __78__PGManager_Analysis_Private__startGraphUpdate_progressBlock_completionBlock___block_invoke;
  v16[3] = &unk_278883820;
  v20 = v9;
  v21 = v10;
  v17 = v8;
  v18 = self;
  v19 = v11;
  v12 = v11;
  v13 = v8;
  v14 = v10;
  v15 = v9;
  [(PGManager *)self performAsynchronousGraphWriteUsingBlock:v16];
}

void __78__PGManager_Analysis_Private__startGraphUpdate_progressBlock_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _Block_copy(*(a1 + 56));
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  if (!v4)
  {
    goto LABEL_6;
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (Current - v28[3] >= 0.01)
  {
    v28[3] = Current;
    buf[0] = 0;
    v4[2](v4, buf, 0.0);
    v8 = *(v32 + 24) | buf[0];
    *(v32 + 24) = v8;
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_6:
    v9 = *(a1 + 40);
    v26 = 0;
    v10 = [v9 instantiateMutableGraphWithError:&v26];
    v7 = v26;
    if (v10)
    {
      [v10 enableInTransactionCheck];
      [v10 enterBatch];
      v11 = [PGGraphIngestRecipe alloc];
      v12 = [v3 photoLibrary];
      v13 = [(PGGraphIngestRecipe *)v11 initWithPhotoLibrary:v12];

      v14 = *(a1 + 32);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __78__PGManager_Analysis_Private__startGraphUpdate_progressBlock_completionBlock___block_invoke_2;
      v21[3] = &unk_27888A188;
      v22 = v4;
      v23 = &v27;
      v24 = &v31;
      v25 = 0x3F847AE147AE147BLL;
      if ([v3 updateGraph:v10 withGraphUpdate:v14 withRecipe:v13 progressBlock:v21])
      {

        v15 = [MEMORY[0x277CBEAA8] date];
        [PGGraphBuilder setLastIncrementalUpdateInvocationDate:v15 inGraph:v10];
        v16 = *(a1 + 48);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_22F0FC000, v16, OS_LOG_TYPE_DEFAULT, "Live update succeeded", buf, 2u);
        }

        [v10 leaveBatch];

LABEL_15:
        v19 = *(a1 + 32);
        (*(*(a1 + 64) + 16))();

        goto LABEL_16;
      }

      v17 = [PGError errorForCode:-4];

      v7 = v17;
    }

    v18 = *(a1 + 48);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v36 = v7;
      _os_log_error_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_ERROR, "Live update failed, rolling back: %@", buf, 0xCu);
    }

    [v10 rollbackBatch];
    goto LABEL_15;
  }

  if ((v32[3] & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_4:
  v6 = *(a1 + 64);
  v7 = [PGError errorForCode:-4];
  (*(v6 + 16))(v6, 0, v7, *(a1 + 32));
LABEL_16:

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);

  v20 = *MEMORY[0x277D85DE8];
}

void __78__PGManager_Analysis_Private__startGraphUpdate_progressBlock_completionBlock___block_invoke_2(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.8 + 0.1);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (BOOL)updateGraph:(id)a3 withGraphUpdate:(id)a4 withRecipe:(id)a5 progressBlock:(id)a6
{
  v49 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = _Block_copy(v13);
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  if (!v14 || (v15 = CFAbsoluteTimeGetCurrent(), v15 - v38[3] < 0.01) || (v38[3] = v15, v36 = 0, (*(v14 + 2))(v14, &v36, 0.0), v16 = *(v42 + 24) | v36, *(v42 + 24) = v16, (v16 & 1) == 0))
  {
    v18 = [[PGGraphBuilder alloc] initWithGraph:v10 manager:self];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __84__PGManager_Analysis_Private__updateGraph_withGraphUpdate_withRecipe_progressBlock___block_invoke;
    v31[3] = &unk_27888A188;
    v19 = v14;
    v32 = v19;
    v33 = &v37;
    v34 = &v41;
    v35 = 0x3F847AE147AE147BLL;
    [(PGManager *)self _precachePersonsInformationFromGraph:v10 progressBlock:v31];
    if (*(v42 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v46 = 459;
        v47 = 2080;
        v48 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Analysis.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v17 = 0;
      goto LABEL_23;
    }

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __84__PGManager_Analysis_Private__updateGraph_withGraphUpdate_withRecipe_progressBlock___block_invoke_275;
    v26[3] = &unk_27888A188;
    v20 = v19;
    v27 = v20;
    v28 = &v37;
    v29 = &v41;
    v30 = 0x3F847AE147AE147BLL;
    [(PGGraphBuilder *)v18 performBatchUpdatesWithGraphUpdate:v11 withRecipe:v12 progressBlock:v26];
    [(PGManager *)self _invalidateTransientCaches];
    if (*(v42 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v46 = 468;
        v47 = 2080;
        v48 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Analysis.m";
        v21 = MEMORY[0x277D86220];
LABEL_14:
        _os_log_impl(&dword_22F0FC000, v21, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    else
    {
      if (!v14 || (Current = CFAbsoluteTimeGetCurrent(), Current - v38[3] < 0.01) || (v38[3] = Current, v36 = 0, (*(v20 + 2))(v20, &v36, 1.0), v23 = *(v42 + 24) | v36, *(v42 + 24) = v23, (v23 & 1) == 0))
      {
        v17 = 1;
        goto LABEL_22;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v46 = 470;
        v47 = 2080;
        v48 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Analysis.m";
        v21 = MEMORY[0x277D86220];
        goto LABEL_14;
      }
    }

    v17 = 0;
LABEL_22:

LABEL_23:
    goto LABEL_24;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v46 = 451;
    v47 = 2080;
    v48 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Analysis.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v17 = 0;
LABEL_24:
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);

  v24 = *MEMORY[0x277D85DE8];
  return v17;
}

void __84__PGManager_Analysis_Private__updateGraph_withGraphUpdate_withRecipe_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.1);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __84__PGManager_Analysis_Private__updateGraph_withGraphUpdate_withRecipe_progressBlock___block_invoke_275(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.9 + 0.1);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (BOOL)swapInGraphAtURL:(id)a3 progressBlock:(id)a4 error:(id *)a5
{
  v93 = *MEMORY[0x277D85DE8];
  v69 = a3;
  v8 = a4;
  v9 = _Block_copy(v8);
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v90 = 0;
  v83 = 0;
  v84 = &v83;
  v85 = 0x2020000000;
  v86 = 0;
  v68 = v8;
  if (!v9 || (v10 = CFAbsoluteTimeGetCurrent(), v10 - v84[3] < 0.01) || (v84[3] = v10, LOBYTE(info.numer) = 0, v9[2](v9, &info, 0.0), v11 = *(v88 + 24) | LOBYTE(info.numer), *(v88 + 24) = v11, (v11 & 1) == 0))
  {
    v13 = [(PGManager *)self graphName];
    v14 = v13;
    v15 = @"photosgraph";
    if (v13)
    {
      v15 = v13;
    }

    v70 = v15;

    v16 = [(PGManager *)self graphPersistenceParentDirectoryURL];
    v17 = [PGGraph graphURLForName:v70 parentDirectoryURL:v16];
    v71 = [PGGraph graphURLForName:@"photosgraph-tmp" parentDirectoryURL:v16];
    if (v9)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v84[3] >= 0.01)
      {
        v84[3] = Current;
        LOBYTE(info.numer) = 0;
        v9[2](v9, &info, 0.2);
        v19 = *(v88 + 24) | LOBYTE(info.numer);
        *(v88 + 24) = v19;
        if (v19)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v92 = 372;
            *&v92[4] = 2080;
            *&v92[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Analysis.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

LABEL_30:
          LOBYTE(v12) = 0;
LABEL_76:

          goto LABEL_77;
        }
      }
    }

    if (!v71 || !v17)
    {
      v33 = +[PGLogging sharedLogging];
      v34 = [v33 loggingConnection];

      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *v92 = v71;
        *&v92[8] = 2112;
        *&v92[10] = v17;
        _os_log_error_impl(&dword_22F0FC000, v34, OS_LOG_TYPE_ERROR, "Cannot access URLs: %@, %@", buf, 0x16u);
      }

      goto LABEL_30;
    }

    v67 = [MEMORY[0x277CCAA00] defaultManager];
    v20 = [(PGManager *)self graphLoggingConnection];
    v21 = os_signpost_id_generate(v20);
    v22 = v20;
    v23 = v22;
    spid = v21;
    v65 = v21 - 1;
    if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v21, "SwapGraph", "", buf, 2u);
    }

    v66 = v23;

    info = 0;
    mach_timebase_info(&info);
    v63 = mach_absolute_time();
    [(PGManager *)self _unloadGraph];
    v24 = [v17 path];
    v25 = [v67 fileExistsAtPath:v24];

    if (v25)
    {
      v81 = 0;
      v26 = [(MAGraph *)PGGraph migratePersistentStoreFromURL:v17 toURL:v71 error:&v81];
      v27 = v81;
      if (!v26)
      {
        v28 = +[PGLogging sharedLogging];
        v29 = [v28 loggingConnection];

        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *v92 = v27;
          _os_log_error_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_ERROR, "Error when renaming previous graph library: %@", buf, 0xCu);
        }
      }
    }

    v80 = 0;
    v12 = [(MAGraph *)PGGraph migratePersistentStoreFromURL:v69 toURL:v17 error:&v80];
    v30 = v80;
    v31 = v30;
    if (v12)
    {
      v32 = v30;
    }

    else
    {
      v35 = +[PGLogging sharedLogging];
      v36 = [v35 loggingConnection];

      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v92 = v31;
        _os_log_error_impl(&dword_22F0FC000, v36, OS_LOG_TYPE_ERROR, "Error when moving new graph to Library directory, trying to rollback the old one %@", buf, 0xCu);
      }

      if (a5)
      {
        v37 = v31;
        *a5 = v31;
      }

      v79 = v31;
      v38 = [(MAGraph *)PGGraph migratePersistentStoreFromURL:v71 toURL:v17 error:&v79];
      v32 = v79;

      if (!v38)
      {
        v39 = +[PGLogging sharedLogging];
        v40 = [v39 loggingConnection];

        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *v92 = v32;
          _os_log_error_impl(&dword_22F0FC000, v40, OS_LOG_TYPE_ERROR, "Error when rolling back the previous graph library %@", buf, 0xCu);
        }
      }
    }

    if (v9)
    {
      v41 = CFAbsoluteTimeGetCurrent();
      if (v41 - v84[3] >= 0.01)
      {
        v84[3] = v41;
        v78 = 0;
        v9[2](v9, &v78, 0.6);
        v42 = *(v88 + 24) | v78;
        *(v88 + 24) = v42;
        if (v42)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v92 = 415;
            *&v92[4] = 2080;
            *&v92[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Analysis.m";
            v43 = MEMORY[0x277D86220];
LABEL_62:
            _os_log_impl(&dword_22F0FC000, v43, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            goto LABEL_63;
          }

          goto LABEL_63;
        }
      }
    }

    if (v12)
    {
      v77 = 0;
      v44 = [(MAGraph *)PGGraph destroyPersistentStoreAtURL:v71 error:&v77];
      v45 = v77;
      if (!v44)
      {
        v46 = +[PGLogging sharedLogging];
        v47 = [v46 loggingConnection];

        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *v92 = v45;
          _os_log_error_impl(&dword_22F0FC000, v47, OS_LOG_TYPE_ERROR, "Error when destroying temporary library %@", buf, 0xCu);
        }
      }

      v48 = +[PGLogging sharedLogging];
      v49 = [v48 loggingConnection];

      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22F0FC000, v49, OS_LOG_TYPE_INFO, "Updated graph successfully!", buf, 2u);
      }
    }

    v50 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v53 = v66;
    v54 = v53;
    if (v65 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v53))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v54, OS_SIGNPOST_INTERVAL_END, spid, "SwapGraph", "", buf, 2u);
    }

    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *v92 = "SwapGraph";
      *&v92[8] = 2048;
      *&v92[10] = ((((v50 - v63) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v54, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    if (v9)
    {
      v55 = CFAbsoluteTimeGetCurrent();
      if (v55 - v84[3] >= 0.01)
      {
        v84[3] = v55;
        v78 = 0;
        v9[2](v9, &v78, 0.8);
        v56 = *(v88 + 24) | v78;
        *(v88 + 24) = v56;
        if (v56)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v92 = 429;
            *&v92[4] = 2080;
            *&v92[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Analysis.m";
            v43 = MEMORY[0x277D86220];
            goto LABEL_62;
          }

LABEL_63:
          LOBYTE(v12) = 0;
LABEL_75:

          goto LABEL_76;
        }
      }
    }

    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __69__PGManager_Analysis_Internal__swapInGraphAtURL_progressBlock_error___block_invoke;
    v72[3] = &unk_27888A188;
    v57 = v9;
    v73 = v57;
    v74 = &v83;
    v75 = &v87;
    v76 = 0x3F847AE147AE147BLL;
    [(PGManager *)self loadGraphWithProgressBlock:v72];
    if (*(v88 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v92 = 434;
        *&v92[4] = 2080;
        *&v92[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Analysis.m";
        v58 = MEMORY[0x277D86220];
LABEL_67:
        _os_log_impl(&dword_22F0FC000, v58, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    else
    {
      if (!v9)
      {
        goto LABEL_74;
      }

      v59 = CFAbsoluteTimeGetCurrent();
      if (v59 - v84[3] < 0.01)
      {
        goto LABEL_74;
      }

      v84[3] = v59;
      v78 = 0;
      v57[2](v57, &v78, 1.0);
      v60 = *(v88 + 24) | v78;
      *(v88 + 24) = v60;
      if ((v60 & 1) == 0)
      {
        goto LABEL_74;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v92 = 436;
        *&v92[4] = 2080;
        *&v92[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Analysis.m";
        v58 = MEMORY[0x277D86220];
        goto LABEL_67;
      }
    }

    LOBYTE(v12) = 0;
LABEL_74:

    goto LABEL_75;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v92 = 365;
    *&v92[4] = 2080;
    *&v92[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Analysis.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  LOBYTE(v12) = 0;
LABEL_77:
  _Block_object_dispose(&v83, 8);
  _Block_object_dispose(&v87, 8);

  v61 = *MEMORY[0x277D85DE8];
  return v12;
}

void __69__PGManager_Analysis_Internal__swapInGraphAtURL_progressBlock_error___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.1 + 0.8);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (int64_t)performLibraryAnalysisWithGraphURL:(id)a3 withRecipe:(id)a4 processedGraphUpdate:(id *)a5 progressBlock:(id)a6
{
  v57 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v30 = a4;
  v11 = a6;
  v12 = _Block_copy(v11);
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  if (!v12 || (v13 = CFAbsoluteTimeGetCurrent(), v13 - v46[3] < 0.01) || (v46[3] = v13, v44 = 0, (*(v12 + 2))(v12, &v44, 0.0), v14 = *(v50 + 24) | v44, *(v50 + 24) = v14, (v14 & 1) == 0))
  {
    v42 = 0;
    v43 = 0;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __113__PGManager_Analysis_Internal__performLibraryAnalysisWithGraphURL_withRecipe_processedGraphUpdate_progressBlock___block_invoke;
    v37[3] = &unk_27888A188;
    v16 = v12;
    v38 = v16;
    v39 = &v45;
    v40 = &v49;
    v41 = 0x3F847AE147AE147BLL;
    v36 = 0;
    v17 = [(PGManager *)self graphForLibraryFullAnalysisAtURL:v10 alreadyIngestedMomentIdentifiers:&v43 alreadyIngestedHighlightIdentifiers:&v42 progressBlock:v37 error:&v36];
    v28 = v43;
    v29 = v42;
    v27 = v36;
    if (*(v50 + 24) == 1)
    {
      [v17 closePersistentStore];
LABEL_9:
      v15 = 1;
LABEL_23:

      goto LABEL_24;
    }

    if (v17)
    {
      if ([v17 noFatalError])
      {
        if (v12)
        {
          Current = CFAbsoluteTimeGetCurrent();
          if (Current - v46[3] >= 0.01)
          {
            v46[3] = Current;
            buf[0] = 0;
            (*(v16 + 2))(v16, buf, 0.05);
            *(v50 + 24) |= buf[0];
          }
        }

        if (*(v50 + 24) == 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v54 = 318;
            v55 = 2080;
            v56 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Analysis.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }

        else
        {
          v21 = [MEMORY[0x277CBEAA8] date];
          [v21 timeIntervalSince1970];
          v23 = v22;

          [(PGManager *)self _invalidatePersistentCachesBeforeDateWithTimestamp:v23 + -7776000.0];
          if (v12)
          {
            v24 = CFAbsoluteTimeGetCurrent();
            if (v24 - v46[3] >= 0.01)
            {
              v46[3] = v24;
              buf[0] = 0;
              (*(v16 + 2))(v16, buf, 0.09);
              *(v50 + 24) |= buf[0];
            }
          }

          if (*(v50 + 24) != 1)
          {
            v31[0] = MEMORY[0x277D85DD0];
            v31[1] = 3221225472;
            v31[2] = __113__PGManager_Analysis_Internal__performLibraryAnalysisWithGraphURL_withRecipe_processedGraphUpdate_progressBlock___block_invoke_264;
            v31[3] = &unk_27888A188;
            v25 = v16;
            v32 = v25;
            v33 = &v45;
            v34 = &v49;
            v35 = 0x3F847AE147AE147BLL;
            [(PGManager *)self performFullLibraryAnalysisInGraph:v17 withRecipe:v30 withAlreadyIngestedMomentIdentifiers:v28 alreadyIngestedHighlightIdentifiers:v29 processedGraphUpdate:a5 progressBlock:v31];
            [(PGManager *)self _invalidateTransientCaches];
            if (*(v50 + 24) == 1)
            {
              [v17 closePersistentStore];
              v15 = 1;
            }

            else if ([v17 noFatalError])
            {
              [v17 closePersistentStore];
              if (v12)
              {
                v26 = CFAbsoluteTimeGetCurrent();
                if (v26 - v46[3] >= 0.01)
                {
                  v46[3] = v26;
                  buf[0] = 0;
                  (*(v25 + 2))(v25, buf, 1.0);
                  *(v50 + 24) |= buf[0];
                }
              }

              if (*(v50 + 24) == 1)
              {
                v15 = 1;
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  *buf = 67109378;
                  v54 = 355;
                  v55 = 2080;
                  v56 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Analysis.m";
                  v15 = 1;
                  _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                }
              }

              else
              {
                v15 = 0;
              }
            }

            else
            {
              [v17 closePersistentStore];
              v15 = 2;
            }

            goto LABEL_23;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v54 = 328;
            v55 = 2080;
            v56 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Analysis.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }

        [v17 closePersistentStore];
        goto LABEL_9;
      }

      [v17 closePersistentStore];
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v15 = 2;
      _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not get a valid graph to perform full analysis, aborting", buf, 2u);
      goto LABEL_23;
    }

    v15 = 2;
    goto LABEL_23;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v54 = 291;
    v55 = 2080;
    v56 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Analysis.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v15 = 1;
LABEL_24:
  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v49, 8);

  v19 = *MEMORY[0x277D85DE8];
  return v15;
}

void __113__PGManager_Analysis_Internal__performLibraryAnalysisWithGraphURL_withRecipe_processedGraphUpdate_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.05);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __113__PGManager_Analysis_Internal__performLibraryAnalysisWithGraphURL_withRecipe_processedGraphUpdate_progressBlock___block_invoke_264(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.8 + 0.1);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (void)performFullLibraryAnalysisInGraph:(id)a3 withRecipe:(id)a4 withAlreadyIngestedMomentIdentifiers:(id)a5 alreadyIngestedHighlightIdentifiers:(id)a6 processedGraphUpdate:(id *)a7 progressBlock:(id)a8
{
  v113 = *MEMORY[0x277D85DE8];
  v73 = a3;
  v72 = a4;
  v77 = a5;
  v76 = a6;
  v68 = a8;
  v101 = 0;
  v102 = &v101;
  v103 = 0x2020000000;
  v104 = 0;
  v97 = 0;
  v98 = &v97;
  v99 = 0x2020000000;
  v100 = 0;
  v69 = _Block_copy(v68);
  if (v69 && (v13 = CFAbsoluteTimeGetCurrent(), v13 - v98[3] >= 0.01) && ((v98[3] = v13, v96 = 0, (*(v69 + 2))(v69, &v96, 0.0), v57 = *(v102 + 24) | v96, *(v102 + 24) = v57, (v57 & 1) != 0) || ([v73 noFatalError] & 1) == 0))
  {
    v58 = MEMORY[0x277D86220];
    v59 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      v60 = *(v102 + 24);
      v61 = [v73 noFatalError];
      *buf = 67109890;
      v108 = v60;
      v109 = 1024;
      *v110 = v61 ^ 1;
      *&v110[4] = 1024;
      *&v110[6] = 202;
      v111 = 2080;
      v112 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Analysis.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled (%d) or fatal (%d) at line %d in file %s", buf, 0x1Eu);
    }
  }

  else
  {
    v14 = [v72 momentsToIngest];
    v67 = a7;
    v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    obj = v14;
    v17 = [obj countByEnumeratingWithState:&v92 objects:v106 count:16];
    if (v17)
    {
      v18 = *v93;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v93 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v92 + 1) + 8 * i);
          v21 = [v20 uuid];
          v22 = [v77 containsObject:v21];

          if (v22)
          {
            v23 = v16;
          }

          else
          {
            v23 = v15;
          }

          [v23 addObject:v20];
        }

        v17 = [obj countByEnumeratingWithState:&v92 objects:v106 count:16];
      }

      while (v17);
    }

    v24 = [PGGraphUpdate alloc];
    v25 = [(PGManager *)self photoLibrary];
    v71 = [(PGGraphUpdate *)v24 initWithPhotoLibrary:v25];

    if ([v15 count])
    {
      v26 = [[PGGraphMomentsInsertion alloc] initWithMoments:v15];
      [(PGGraphUpdate *)v71 addChange:v26];
    }

    v27 = [v72 highlightsToIngest];
    v28 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v29 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v74 = v27;
    v30 = [v74 countByEnumeratingWithState:&v88 objects:v105 count:16];
    if (v30)
    {
      v31 = *v89;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v89 != v31)
          {
            objc_enumerationMutation(v74);
          }

          v33 = *(*(&v88 + 1) + 8 * j);
          v34 = [v33 uuid];
          v35 = [v76 containsObject:v34];

          if (v35)
          {
            v36 = v29;
          }

          else
          {
            v36 = v28;
          }

          [v36 addObject:v33];
        }

        v30 = [v74 countByEnumeratingWithState:&v88 objects:v105 count:16];
      }

      while (v30);
    }

    if ([v28 count])
    {
      v37 = [[PGGraphHighlightsInsertion alloc] initWithHighlights:v28];
      [(PGGraphUpdate *)v71 addChange:v37];
    }

    [(PGGraphUpdate *)v71 setIsResumingFullAnalysis:1];
    v38 = [[PGGraphBuilder alloc] initWithGraph:v73 manager:self];
    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = __185__PGManager_Analysis_Internal__performFullLibraryAnalysisInGraph_withRecipe_withAlreadyIngestedMomentIdentifiers_alreadyIngestedHighlightIdentifiers_processedGraphUpdate_progressBlock___block_invoke;
    v83[3] = &unk_27888A188;
    v39 = v69;
    v84 = v39;
    v85 = &v97;
    v86 = &v101;
    v87 = 0x3F847AE147AE147BLL;
    [(PGManager *)self _precachePersonsInformationFromGraph:v73 progressBlock:v83];
    if ((v102[3] & 1) != 0 || ([v73 noFatalError] & 1) == 0)
    {
      v53 = MEMORY[0x277D86220];
      v54 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
      {
        v55 = *(v102 + 24);
        v56 = [v73 noFatalError];
        *buf = 67109890;
        v108 = v55;
        v109 = 1024;
        *v110 = v56 ^ 1;
        *&v110[4] = 1024;
        *&v110[6] = 259;
        v111 = 2080;
        v112 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Analysis.m";
        _os_log_impl(&dword_22F0FC000, v53, OS_LOG_TYPE_INFO, "Cancelled (%d) or fatal (%d) at line %d in file %s", buf, 0x1Eu);
      }
    }

    else
    {
      v78[0] = MEMORY[0x277D85DD0];
      v78[1] = 3221225472;
      v78[2] = __185__PGManager_Analysis_Internal__performFullLibraryAnalysisInGraph_withRecipe_withAlreadyIngestedMomentIdentifiers_alreadyIngestedHighlightIdentifiers_processedGraphUpdate_progressBlock___block_invoke_263;
      v78[3] = &unk_27888A188;
      v40 = v39;
      v79 = v40;
      v80 = &v97;
      v81 = &v101;
      v82 = 0x3F847AE147AE147BLL;
      [(PGGraphBuilder *)v38 performBatchUpdatesWithGraphUpdate:v71 withRecipe:v72 progressBlock:v78];
      if ((v102[3] & 1) != 0 || ([v73 noFatalError] & 1) == 0)
      {
        v62 = MEMORY[0x277D86220];
        v63 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
        {
          v64 = *(v102 + 24);
          v65 = [v73 noFatalError];
          *buf = 67109890;
          v108 = v64;
          v109 = 1024;
          *v110 = v65 ^ 1;
          *&v110[4] = 1024;
          *&v110[6] = 267;
          v111 = 2080;
          v112 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Analysis.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled (%d) or fatal (%d) at line %d in file %s", buf, 0x1Eu);
        }
      }

      else
      {
        if (v67)
        {
          v41 = v71;
          *v67 = v71;
        }

        v42 = [v73 numberOfMomentNodes];
        v43 = [v16 count];
        v44 = [v15 count];
        v45 = v44 + v43;
        if (v42 != v44 + v43)
        {
          v46 = +[PGLogging sharedLogging];
          v47 = [v46 loggingConnection];

          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109376;
            v108 = v42;
            v109 = 1024;
            *v110 = v45;
            _os_log_error_impl(&dword_22F0FC000, v47, OS_LOG_TYPE_ERROR, "Moment nodes count & moment asset collections count are different %u - %u", buf, 0xEu);
          }
        }

        v48 = [(PGManager *)self analytics];
        v49 = [(PGManager *)self photoLibrary];
        v50 = [(PGManager *)self serviceManager];
        [v73 reportMetricsLogsWithAnalytics:v48 photoLibrary:v49 serviceManager:v50];

        if (v69)
        {
          Current = CFAbsoluteTimeGetCurrent();
          if (Current - v98[3] >= 0.01)
          {
            v98[3] = Current;
            v96 = 0;
            (v40[2].isa)(v40, &v96, 1.0);
            v52 = *(v102 + 24) | v96;
            *(v102 + 24) = v52;
            if ((v52 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              v108 = 283;
              v109 = 2080;
              *v110 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Analysis.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }
          }
        }
      }

      v53 = v79;
    }
  }

  _Block_object_dispose(&v97, 8);
  _Block_object_dispose(&v101, 8);

  v66 = *MEMORY[0x277D85DE8];
}

void __185__PGManager_Analysis_Internal__performFullLibraryAnalysisInGraph_withRecipe_withAlreadyIngestedMomentIdentifiers_alreadyIngestedHighlightIdentifiers_processedGraphUpdate_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.1 + 0.1);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __185__PGManager_Analysis_Internal__performFullLibraryAnalysisInGraph_withRecipe_withAlreadyIngestedMomentIdentifiers_alreadyIngestedHighlightIdentifiers_processedGraphUpdate_progressBlock___block_invoke_263(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.7 + 0.2);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (id)graphForLibraryFullAnalysisAtURL:(id)a3 alreadyIngestedMomentIdentifiers:(id *)a4 alreadyIngestedHighlightIdentifiers:(id *)a5 progressBlock:(id)a6 error:(id *)a7
{
  *&v60[5] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = _Block_copy(a6);
  v14 = 0.0;
  if (v13)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current >= 0.01)
    {
      v58 = 0;
      v13[2](v13, &v58, 0.0);
      if (v58 == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v60[0] = 82;
          LOWORD(v60[1]) = 2080;
          *(&v60[1] + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Analysis.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        goto LABEL_16;
      }

      v14 = Current;
    }
  }

  v16 = [(PGGraph *)[PGMutableGraph alloc] initWithURL:v12 persistenceOptions:32 error:a7];
  if (!v16)
  {
    goto LABEL_16;
  }

  v17 = v16;
  if (![(MAGraph *)v16 version]|| [(PGManager *)self graphIsUsable:v17 error:0])
  {
LABEL_12:
    if (v13)
    {
      v20 = CFAbsoluteTimeGetCurrent();
      if (v20 - v14 >= 0.01)
      {
        buf[0] = 0;
        v13[2](v13, buf, 0.5);
        if (buf[0])
        {
          [(MAGraph *)v17 closePersistentStore];
LABEL_21:
          v21 = 0;
          goto LABEL_56;
        }

        v14 = v20;
      }
    }

    v53 = a4;
    v54 = a5;
    v25 = [(PGGraph *)v17 momentNodes];
    v26 = [v25 localIdentifiers];
    v27 = [v26 mutableCopy];

    v28 = [PGGraphHighlightNodeCollection dayHighlightNodesInGraph:v17];
    v29 = [v28 localIdentifiers];
    v55 = [v29 mutableCopy];

    if (!v13 || (v30 = CFAbsoluteTimeGetCurrent(), v30 - v14 < 0.01) || (buf[0] = 0, v13[2](v13, buf, 0.6), v14 = v30, buf[0] != 1))
    {
      if ([v27 count] || objc_msgSend(v55, "count"))
      {
        v52 = v25;
        v31 = [(PGGraph *)v17 infoNode];
        v32 = [v31 creationDate];
        v33 = [MEMORY[0x277CBEAA8] date];
        [v32 timeIntervalSinceDate:v33];
        v35 = v34;

        v36 = -v35;
        if (v35 >= 0.0)
        {
          v36 = v35;
        }

        v37 = v36 > 172800.0;
        if (v36 <= 172800.0)
        {
          v28 = v51;
        }

        else
        {
          [(MAGraph *)v17 closePersistentStore];
          v38 = +[PGLogging sharedLogging];
          v39 = [v38 loggingConnection];

          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v60 = v12;
            _os_log_impl(&dword_22F0FC000, v39, OS_LOG_TYPE_DEFAULT, "Invalidating graph (%@), because it needs to be rebuilt", buf, 0xCu);
          }

          v56 = 0;
          v40 = [(MAGraph *)PGGraph destroyPersistentStoreAtURL:v12 error:&v56];
          v41 = v56;
          if (!v40)
          {
            v46 = +[PGLogging sharedLogging];
            v47 = [v46 loggingConnection];

            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *v60 = v41;
              _os_log_error_impl(&dword_22F0FC000, v47, OS_LOG_TYPE_ERROR, "An error occurred while destroying temporary database %@", buf, 0xCu);
            }

            v25 = v52;
            if (a7)
            {
              v48 = v41;
              *a7 = v41;
            }

            v28 = v51;
            goto LABEL_53;
          }

          [v27 removeAllObjects];
          [v55 removeAllObjects];
          v42 = [(PGGraph *)[PGMutableGraph alloc] initWithURL:v12 persistenceOptions:32 error:a7];

          v17 = v42;
          v28 = v51;
          if (!v42)
          {
            v25 = v52;
LABEL_53:

            goto LABEL_54;
          }
        }

        v25 = v52;
      }

      else
      {
        v37 = 1;
      }

      v43 = v27;
      *v53 = v27;
      *v54 = v55;
      if (!v13 || (v44 = CFAbsoluteTimeGetCurrent(), v44 - v14 < 0.01) || (buf[0] = 0, v13[2](v13, buf, 0.8), v14 = v44, buf[0] != 1))
      {
        if (v37)
        {
          [PGGraphBuilder prepareGraphForRebuild:v17];
          v45 = [(PGManager *)self curationManager];
          [v45 invalidateMemoryCaches];
          [v45 invalidateDiskCaches];
        }

        if (!v13 || CFAbsoluteTimeGetCurrent() - v14 < 0.01 || (buf[0] = 0, v13[2](v13, buf, 1.0), buf[0] != 1))
        {
          v17 = v17;
          v21 = v17;
LABEL_55:

          goto LABEL_56;
        }
      }
    }

    [(MAGraph *)v17 closePersistentStore];
LABEL_54:
    v21 = 0;
    goto LABEL_55;
  }

  [(MAGraph *)v17 closePersistentStore];

  v57 = 0;
  v18 = [(MAGraph *)PGGraph destroyPersistentStoreAtURL:v12 error:&v57];
  v17 = v57;
  if (v18)
  {
    v19 = [(PGGraph *)[PGMutableGraph alloc] initWithURL:v12 persistenceOptions:0 error:a7];

    v17 = v19;
    if (v19)
    {
      goto LABEL_12;
    }

LABEL_16:
    v21 = 0;
    goto LABEL_57;
  }

  v22 = +[PGLogging sharedLogging];
  v23 = [v22 loggingConnection];

  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    *v60 = v17;
    _os_log_error_impl(&dword_22F0FC000, v23, OS_LOG_TYPE_ERROR, "An error occurred while destroying temporary database %@", buf, 0xCu);
  }

  if (!a7)
  {
    goto LABEL_21;
  }

  v24 = v17;
  v21 = 0;
  *a7 = v17;
LABEL_56:

LABEL_57:
  v49 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)_precachePersonsInformationFromGraph:(id)a3 progressBlock:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = _Block_copy(a4);
  v8 = 0.0;
  if (v7)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current >= 0.01)
    {
      v32 = 0;
      v7[2](v7, &v32, 0.0);
      if (v32 == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v35 = 56;
          v36 = 2080;
          v37 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Analysis.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        goto LABEL_30;
      }

      v8 = Current;
    }
  }

  v27 = [(PGManager *)self photoLibrary];
  v10 = [PGGraphPersonNodeCollection personNodesIncludingMeInGraph:v6];
  if ([v10 count])
  {
    v26 = v6;
    v11 = [v10 count];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v25 = v10;
    v12 = [v10 localIdentifiers];
    v13 = [v12 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 1.0 / v11;
      v16 = *v29;
      v17 = 0.0;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v29 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v19 = *(*(&v28 + 1) + 8 * i);
          v17 = v15 + v17;
          if (v7)
          {
            v20 = CFAbsoluteTimeGetCurrent();
            if (v20 - v8 >= 0.01)
            {
              v32 = 0;
              v7[2](v7, &v32, v17);
              if (v32)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  *buf = 67109378;
                  v35 = 69;
                  v36 = 2080;
                  v37 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Analysis.m";
                  _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                }

                v10 = v25;
                v6 = v26;
                goto LABEL_29;
              }

              v8 = v20;
            }
          }

          if ([v19 length])
          {
            v21 = MEMORY[0x277D276E8];
            v22 = [(PGManager *)self serviceManager];
            v23 = [v21 clueWithPersonLocalIdentifier:v19 inPhotoLibrary:v27 serviceManager:v22];

            [v23 prepareIfNeeded];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v28 objects:v33 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v10 = v25;
    v6 = v26;
    if (v7)
    {
      if (CFAbsoluteTimeGetCurrent() - v8 >= 0.01)
      {
        v32 = 0;
        v7[2](v7, &v32, 1.0);
        if (v32)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v35 = 76;
            v36 = 2080;
            v37 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Analysis.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }
      }
    }
  }

LABEL_29:

LABEL_30:
  v24 = *MEMORY[0x277D85DE8];
}

- (void)startLibraryAnalysisWithRecipe:(id)a3 progressBlock:(id)a4 keepExistingGraph:(BOOL)a5 completionBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &__block_literal_global_35918;
  }

  v14 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:10000];
  [(PGManager *)self setRebuildProgress:v14];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __102__PGManager_Analysis__startLibraryAnalysisWithRecipe_progressBlock_keepExistingGraph_completionBlock___block_invoke_2;
  aBlock[3] = &unk_278883948;
  aBlock[4] = self;
  v26 = v13;
  v15 = _Block_copy(aBlock);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __102__PGManager_Analysis__startLibraryAnalysisWithRecipe_progressBlock_keepExistingGraph_completionBlock___block_invoke_3;
  v19[3] = &unk_278883998;
  v24 = a5;
  v20 = v10;
  v21 = self;
  v22 = v15;
  v23 = v12;
  v16 = v12;
  v17 = v15;
  v18 = v10;
  [(PGManager *)self performAsynchronousGraphBarrierUsingBlock:v19];
}

void __102__PGManager_Analysis__startLibraryAnalysisWithRecipe_progressBlock_keepExistingGraph_completionBlock___block_invoke_2(uint64_t a1, double a2)
{
  (*(*(a1 + 40) + 16))();
  v4 = [*(a1 + 32) rebuildProgress];
  [v4 setCompletedUnitCount:(a2 * 10000.0)];
}

void __102__PGManager_Analysis__startLibraryAnalysisWithRecipe_progressBlock_keepExistingGraph_completionBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 64);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __102__PGManager_Analysis__startLibraryAnalysisWithRecipe_progressBlock_keepExistingGraph_completionBlock___block_invoke_4;
  v6[3] = &unk_278883970;
  v4 = *(a1 + 32);
  v6[4] = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = *(a1 + 56);
  [a2 updateGraphWithRecipe:v4 keepExistingGraph:v3 progressBlock:v5 completionBlock:v6];
}

void __102__PGManager_Analysis__startLibraryAnalysisWithRecipe_progressBlock_keepExistingGraph_completionBlock___block_invoke_4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3;
  v7 = a4;
  [*(a1 + 32) setRebuildProgress:0];
  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v9, v7);
  }

  [*(a1 + 32) notifyCoalescingBlocksGraphAnalysisFinished:a2 error:v9];
}

- (BOOL)_supportsSemanticalDedupingForMemory:(id)a3
{
  v3 = [a3 subcategory];
  v4 = v3 != 401;
  if (v3 == 217)
  {
    v4 = 0;
  }

  return v3 != 212 && v4;
}

- (id)_curationDebugInformationForHighlight:(id)a3 options:(id)a4
{
  v58 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [PGHighlightTailor alloc];
  v9 = [(PGManager *)self workingContextForEnrichment];
  v10 = [(PGHighlightTailor *)v8 initWithWorkingContext:v9];

  v11 = [(PGHighlightTailor *)v10 bestEnrichmentProfileForHighlight:v6 options:255];
  [v11 setCollectsDebugInfo:1];
  if (v11)
  {
    v12 = [v7 objectForKeyedSubscript:@"extendedCurationOptions"];
    v44 = v12;
    if (v12)
    {
      v13 = [[PGDejunkerDeduperOptions alloc] initWithDictionaryRepresentation:v12];
    }

    else
    {
      v13 = 0;
    }

    v15 = [v7 objectForKeyedSubscript:@"setGlobally"];
    v16 = [v15 BOOLValue];

    if (v16)
    {
      v17 = [(PGDejunkerDeduperOptions *)v13 dictionaryRepresentationRestrictingToGlobalOptions:1];
      [PGUserDefaults setExtendedCurationOptions:v17];
    }

    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v19 = [(PGManager *)self photoLibrary];
    v20 = [(PGManager *)self serviceManager];
    [(PGManager *)self enrichmentLoggingConnection];
    v21 = v43 = v13;
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __69__PGManager_Curation___curationDebugInformationForHighlight_options___block_invoke;
    v46[3] = &unk_278883A68;
    v47 = v19;
    v48 = v20;
    v49 = v21;
    v50 = v7;
    v51 = v10;
    v22 = v6;
    v52 = v22;
    v53 = v11;
    v23 = v18;
    v54 = v23;
    v55 = self;
    v42 = v11;
    v24 = v21;
    v41 = v20;
    v40 = v19;
    [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v46];
    v25 = [PGCompleteEnrichmentProfile alloc];
    [(PGManager *)self curationManager];
    v45 = v7;
    v27 = v26 = v6;
    [(PGManager *)self enrichmentLoggingConnection];
    v29 = v28 = v10;
    v30 = [(PGDefaultEnrichmentProfile *)v25 initWithCurationManager:v27 loggingConnection:v29];

    [(PGDefaultEnrichmentProfile *)v30 setCollectsDebugInfo:1];
    v31 = [PGHighlightTailorHighlightInfo alloc];
    v32 = [(PGManager *)self serviceManager];
    v33 = [(PGHighlightTailorHighlightInfo *)v31 initWithHighlight:v22 serviceManager:v32 loggingConnection:v24];

    [(PGHighlightTailorHighlightInfo *)v33 setPromotionScore:0.4];
    v34 = [(PGDefaultEnrichmentProfile *)v30 summaryCurationWithHighlightInfo:v33 sharingFilter:2 progressBlock:&__block_literal_global_430];
    v35 = [(PGDefaultEnrichmentProfile *)v30 debugInfos];
    v36 = [v35 objectForKeyedSubscript:@"curation"];
    [v23 setObject:v36 forKeyedSubscript:@"onDemandCuration"];

    v10 = v28;
    v6 = v26;
    v7 = v45;

    v14 = v23;
    v11 = v42;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v39 = [v6 uuid];
      *buf = 138412290;
      v57 = v39;
      _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not find enrichment profile for highlight %@", buf, 0xCu);
    }

    v14 = MEMORY[0x277CBEC10];
  }

  v37 = *MEMORY[0x277D85DE8];

  return v14;
}

void __69__PGManager_Curation___curationDebugInformationForHighlight_options___block_invoke(uint64_t a1, void *a2)
{
  v48[3] = *MEMORY[0x277D85DE8];
  v3 = [a2 graph];
  v4 = [[PGHighlightTailorContext alloc] initWithPhotoLibrary:*(a1 + 32) graph:v3 serviceManager:*(a1 + 40) loggingConnection:*(a1 + 48)];
  v5 = [*(a1 + 56) objectForKeyedSubscript:@"includeCuration"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = 1073742079;
  }

  else
  {
    v7 = 1073742063;
  }

  v8 = [*(a1 + 56) objectForKeyedSubscript:@"includeKeyAsset"];
  v9 = [v8 BOOLValue];

  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = v7 & 0x400000F7;
  }

  v11 = [*(a1 + 64) enrichmentValuesForHighlight:*(a1 + 72) usingEnrichmentProfile:*(a1 + 80) graph:v3 options:v10 reportChangedValuesOnly:1 highlightTailorContext:v4 progressBlock:&__block_literal_global_415];
  v12 = *(a1 + 88);
  v13 = [*(a1 + 80) debugInfos];
  [v12 addEntriesFromDictionary:v13];

  v14 = [*(a1 + 56) objectForKeyedSubscript:@"includeDetailedHighlightInfo"];
  LODWORD(v13) = [v14 BOOLValue];

  if (v13)
  {
    v36 = v11;
    v37 = v4;
    v39 = v3;
    v47[0] = @"startDate";
    v15 = [*(a1 + 72) startDate];
    v48[0] = v15;
    v47[1] = @"endDate";
    v16 = [*(a1 + 72) endDate];
    v48[1] = v16;
    v47[2] = @"estimatedAssetCount";
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 72), "estimatedAssetCount")}];
    v48[2] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:3];
    [*(a1 + 88) setObject:v18 forKeyedSubscript:@"detailedHighlightInfo"];

    v19 = [*(a1 + 96) photoLibrary];
    v20 = [v19 librarySpecificFetchOptions];

    v38 = a1;
    v35 = v20;
    v21 = [MEMORY[0x277CD97B8] fetchMomentsInHighlight:*(a1 + 72) options:v20];
    v22 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v21, "count")}];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v23 = v21;
    v24 = [v23 countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v41;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v41 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v40 + 1) + 8 * i);
          v44[0] = @"startDate";
          v29 = [v28 startDate];
          v45[0] = v29;
          v44[1] = @"endDate";
          v30 = [v28 endDate];
          v45[1] = v30;
          v44[2] = @"estimatedAssetCount";
          v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v28, "estimatedAssetCount")}];
          v45[2] = v31;
          v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:3];
          v33 = [v28 uuid];
          [v22 setObject:v32 forKeyedSubscript:v33];
        }

        v25 = [v23 countByEnumeratingWithState:&v40 objects:v46 count:16];
      }

      while (v25);
    }

    [*(v38 + 88) setObject:v22 forKeyedSubscript:@"momentsInHighlightInfo"];
    v3 = v39;
    v11 = v36;
    v4 = v37;
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (id)curationDebugInformationForAssetCollection:(id)a3 options:(id)a4 curationContext:(id)a5
{
  v79[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v74 = a4;
  v73 = a5;
  v75 = v8;
  v9 = [v8 assetCollectionType];
  if (v9 == 6)
  {
    v10 = [(PGManager *)self _curationDebugInformationForHighlight:v8 options:v74];
  }

  else
  {
    v11 = v9;
    v12 = [v8 photoLibrary];
    v13 = [v12 librarySpecificFetchOptions];

    v14 = +[PGCurationManager assetPropertySetsForCuration];
    [v13 addFetchPropertySets:v14];

    v15 = [MEMORY[0x277D276B8] feederPrefetchOptionsWithDefaultMode:2];
    [v15 setPersonsPrefetchMode:2];
    [v15 setFaceInformationPrefetchMode:2];
    v70 = v15;
    v71 = v13;
    v16 = [MEMORY[0x277D27710] feederForAssetCollection:v8 options:v13 feederPrefetchOptions:v15 curationContext:v73];
    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v18 = [[PGCurationOptions alloc] initWithDuration:12];
    v19 = [v74 objectForKeyedSubscript:@"includeAllFaces"];
    v69 = v19;
    if (v19)
    {
      v20 = [v19 BOOLValue];
    }

    else
    {
      v20 = 1;
    }

    [(PGCurationOptions *)v18 setIncludesAllFaces:v20];
    v21 = v11 == 4 && [(PGManager *)self _supportsSemanticalDedupingForMemory:v8];
    v72 = v17;
    [(PGCurationOptions *)v18 setSemanticalDedupingEnabled:v21];
    [(PGCurationOptions *)v18 setMovieDedupingEnabled:v11 == 4];
    v22 = [v74 objectForKeyedSubscript:@"includeKeyAsset"];
    v23 = [v22 BOOLValue];

    if (v23)
    {
      v24 = v11 == 4;
      v25 = [PGKeyCurator alloc];
      v26 = [(PGManager *)self curationManager];
      v27 = [v26 curationCriteriaFactory];
      v28 = [(PGKeyCurator *)v25 initWithCurationCriteriaFactory:v27];

      v29 = objc_alloc(MEMORY[0x277D276A0]);
      v30 = [v16 allItems];
      v31 = [v29 initWithItems:v30];

      v32 = objc_alloc_init(PGKeyAssetCurationOptions);
      [(PGKeyAssetCurationOptions *)v32 setIsForMemories:v24];
      v33 = [(PGKeyCurator *)v28 keyItemWithFeeder:v16 options:v32 criteria:0 debugInfo:v31 progressBlock:0];
      v34 = [v31 dictionaryRepresentationWithAppendExtraItemInfoBlock:0];
      [v72 setObject:v34 forKeyedSubscript:@"keyAsset"];
    }

    v35 = objc_alloc_init(PGCurator_PHAsset);
    v36 = [(PGManager *)self curationManager];
    v37 = [v36 curationLoggingConnection];
    [(PGCurator *)v35 setLoggingConnection:v37];

    v38 = [v16 allItems];
    v39 = [objc_alloc(MEMORY[0x277D276A0]) initWithItems:v38];
    v40 = [(PGCurator_PHAsset *)v35 bestAssetsForFeeder:v16 options:v18 debugInfo:v39 progressBlock:0];
    if (v40)
    {
      v67 = v40;
      context = objc_autoreleasePoolPush();
      v68 = v35;
      v41 = objc_alloc_init(MEMORY[0x277D3C7A0]);
      v42 = [v8 photoLibrary];
      v43 = [v42 librarySpecificFetchOptions];

      v79[0] = *MEMORY[0x277CD9BC0];
      v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:1];
      [v43 setFetchPropertySets:v44];

      [v43 setIncludedDetectionTypes:&unk_284485BC8];
      v45 = [MEMORY[0x277CD9868] fetchFacesGroupedByAssetLocalIdentifierForAssets:v38 options:v43];
      v76[0] = MEMORY[0x277D85DD0];
      v76[1] = 3221225472;
      v76[2] = __90__PGManager_Curation__curationDebugInformationForAssetCollection_options_curationContext___block_invoke;
      v76[3] = &unk_278883A40;
      v77 = v41;
      v78 = v45;
      v46 = v45;
      v65 = v41;
      [v39 dictionaryRepresentationWithAppendExtraItemInfoBlock:v76];
      v48 = v47 = v16;
      v49 = [v48 mutableCopy];
      [(PGCurationOptions *)v18 dictionaryRepresentation];
      v51 = v50 = v18;
      [v49 setObject:v51 forKeyedSubscript:@"curationOptions"];

      v18 = v50;
      v35 = v68;
      [v72 setObject:v49 forKeyedSubscript:@"summary"];

      v16 = v47;
      objc_autoreleasePoolPop(context);
      v40 = v67;
    }

    v52 = objc_alloc(MEMORY[0x277D276A0]);
    v53 = [v16 allItems];
    v54 = [v52 initWithItems:v53];

    v55 = [(PGCurationOptions *)v18 copy];
    [v55 setDuration:16];
    [v55 setFocusOnInterestingItems:0];
    v56 = [(PGCurator_PHAsset *)v35 bestAssetsForFeeder:v16 options:v55 debugInfo:v54 progressBlock:0];
    v10 = v72;
    if (v56)
    {
      [v54 dictionaryRepresentationWithAppendExtraItemInfoBlock:0];
      v58 = v57 = v35;
      v59 = [v58 mutableCopy];
      [v55 dictionaryRepresentation];
      v60 = v18;
      v62 = v61 = v16;
      [v59 setObject:v62 forKeyedSubscript:@"curationOptions"];

      v16 = v61;
      v18 = v60;
      [v72 setObject:v59 forKeyedSubscript:@"extended"];

      v35 = v57;
    }
  }

  v63 = *MEMORY[0x277D85DE8];

  return v10;
}

void __90__PGManager_Curation__curationDebugInformationForAssetCollection_options_curationContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v83[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x277CCABB0];
  [v5 curationScore];
  v8 = [v7 numberWithDouble:?];
  [v6 setObject:v8 forKeyedSubscript:@"persistedCurationScore"];

  v9 = [v5 creationDate];
  [v6 setObject:v9 forKeyedSubscript:@"creationDate"];

  v10 = [v5 localCreationDate];
  [v6 setObject:v10 forKeyedSubscript:@"localCreationDate"];

  v11 = [v5 location];
  v12 = v11;
  if (v11)
  {
    [v11 coordinate];
    v14 = v13;
    v16 = v15;
  }

  else
  {
    v14 = *MEMORY[0x277CE4278];
    v16 = *(MEMORY[0x277CE4278] + 8);
  }

  v84.latitude = v14;
  v84.longitude = v16;
  v71 = v12;
  if (CLLocationCoordinate2DIsValid(v84))
  {
    v82[0] = @"latitude";
    v17 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
    v82[1] = @"longitude";
    v83[0] = v17;
    v18 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
    v83[1] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:2];
    [v6 setObject:v19 forKeyedSubscript:@"location"];
  }

  else
  {
    [v6 setObject:&unk_284487370 forKeyedSubscript:@"location"];
  }

  v20 = [v5 clsSceneprint];
  if (v20)
  {
    v78 = 0;
    v21 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v20 requiringSecureCoding:1 error:&v78];
    [v6 setObject:v21 forKeyedSubscript:@"sceneprint"];
  }

  v22 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsIsInterestingVideo", v20)}];
  [v6 setObject:v22 forKeyedSubscript:@"isInterestingVideo"];

  v23 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsIsInterestingLivePhoto")}];
  [v6 setObject:v23 forKeyedSubscript:@"isInterestingLivePhoto"];

  v24 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsIsInterestingPanorama")}];
  [v6 setObject:v24 forKeyedSubscript:@"isInterestingPanorama"];

  v25 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsIsInterestingSDOF")}];
  [v6 setObject:v25 forKeyedSubscript:@"isInterestingSDOF"];

  v26 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsIsInterestingHDR")}];
  [v6 setObject:v26 forKeyedSubscript:@"isInterestingHDR"];

  v27 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsHasInterestingAudioClassification")}];
  [v6 setObject:v27 forKeyedSubscript:@"hasInterestingAudioClassification"];

  v28 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsHasCustomPlaybackVariation")}];
  [v6 setObject:v28 forKeyedSubscript:@"hasCustomPlaybackVariation"];

  v29 = MEMORY[0x277CCABB0];
  [v5 clsSharpnessScore];
  v30 = [v29 numberWithDouble:?];
  [v6 setObject:v30 forKeyedSubscript:@"sharpnessScore"];

  v31 = MEMORY[0x277CCABB0];
  [v5 clsExposureScore];
  v32 = [v31 numberWithDouble:?];
  [v6 setObject:v32 forKeyedSubscript:@"exposureScore"];

  v33 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsIsBlurry")}];
  [v6 setObject:v33 forKeyedSubscript:@"isBlurry"];

  v34 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsIsInhabited")}];
  [v6 setObject:v34 forKeyedSubscript:@"isInhabited"];

  v35 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsHasInterestingScenes")}];
  [v6 setObject:v35 forKeyedSubscript:@"hasInterestingScenes"];

  v36 = [v5 clsPersonLocalIdentifiers];
  [v6 setObject:v36 forKeyedSubscript:@"peopleNames"];

  v37 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "isVideo")}];
  [v6 setObject:v37 forKeyedSubscript:@"isVideo"];

  v38 = [PGCurationManager sceneInfoWithAsset:v5 curationSession:*(a1 + 32)];
  [v6 setObject:v38 forKeyedSubscript:@"scenes"];

  v39 = MEMORY[0x277CCABB0];
  [v5 clsHighlightVisibilityScore];
  v40 = [v39 numberWithDouble:?];
  [v6 setObject:v40 forKeyedSubscript:@"highlightVisibilityScore"];

  v41 = MEMORY[0x277CCABB0];
  [v5 clsAutoplaySuggestionScore];
  v42 = [v41 numberWithDouble:?];
  [v6 setObject:v42 forKeyedSubscript:@"autoplaySuggestionScore"];

  v43 = MEMORY[0x277CCABB0];
  [v5 clsFaceScore];
  v44 = [v43 numberWithDouble:?];
  [v6 setObject:v44 forKeyedSubscript:@"faceScore"];

  v45 = MEMORY[0x277CCABB0];
  [v5 clsDuration];
  v46 = [v45 numberWithDouble:?];
  [v6 setObject:v46 forKeyedSubscript:@"duration"];

  v47 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsIsNonMemorable")}];
  [v6 setObject:v47 forKeyedSubscript:@"isNonMemorable"];

  v48 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsIsLoopOrBounce")}];
  [v6 setObject:v48 forKeyedSubscript:@"isLoopOrBounce"];

  v49 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsIsLongExposure")}];
  [v6 setObject:v49 forKeyedSubscript:@"isLongExposure"];

  v50 = MEMORY[0x277CCABB0];
  [v5 clsSquareCropScore];
  v51 = [v50 numberWithDouble:?];
  [v6 setObject:v51 forKeyedSubscript:@"squareCropScore"];

  v52 = [v5 clsFaceInformationSummary];
  v53 = [v52 dictionaryRepresentation];
  v72 = v6;
  [v6 setObject:v53 forKeyedSubscript:@"faceInformationSummary"];

  v54 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v55 = *(a1 + 40);
  v73 = v5;
  v56 = [v5 localIdentifier];
  v57 = [v55 objectForKeyedSubscript:v56];

  v58 = [v57 countByEnumeratingWithState:&v74 objects:v81 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v75;
    do
    {
      for (i = 0; i != v59; ++i)
      {
        if (*v75 != v60)
        {
          objc_enumerationMutation(v57);
        }

        v62 = *(*(&v74 + 1) + 8 * i);
        v63 = [v62 personLocalIdentifier];
        if (v63)
        {
          v64 = [v62 faceClusteringProperties];
          v65 = [v64 faceprint];

          if (v65)
          {
            v79[0] = @"faceprintData";
            v66 = [v65 faceprintData];
            v79[1] = @"faceprintVersion";
            v80[0] = v66;
            v67 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v65, "faceprintVersion")}];
            v80[1] = v67;
            v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:2];
            [v54 setObject:v68 forKeyedSubscript:v63];
          }
        }
      }

      v59 = [v57 countByEnumeratingWithState:&v74 objects:v81 count:16];
    }

    while (v59);
  }

  [v72 setObject:v54 forKeyedSubscript:@"faceprints"];
  v69 = *MEMORY[0x277D85DE8];
}

- (BOOL)isInterestingForMoment:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__PGManager_Curation__isInterestingForMoment___block_invoke;
  v7[3] = &unk_278888EB8;
  v5 = v4;
  v9 = self;
  v10 = &v11;
  v8 = v5;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v7];
  LOBYTE(self) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return self;
}

void __46__PGManager_Curation__isInterestingForMoment___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [a2 graph];
  v4 = [v3 momentNodeForMoment:*(a1 + 32)];

  if (v4)
  {
    *(*(*(a1 + 48) + 8) + 24) = [v4 isInteresting];
  }

  else
  {
    v5 = [*(a1 + 40) graphLoggingConnection];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138412290;
      v9 = v7;
      _os_log_error_impl(&dword_22F0FC000, v5, OS_LOG_TYPE_ERROR, "Cannot find node for moment: %@", &v8, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)isSmartInterestingForMoment:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__PGManager_Curation__isSmartInterestingForMoment___block_invoke;
  v7[3] = &unk_278888EB8;
  v5 = v4;
  v9 = self;
  v10 = &v11;
  v8 = v5;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v7];
  LOBYTE(self) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return self;
}

void __51__PGManager_Curation__isSmartInterestingForMoment___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [a2 graph];
  v4 = [v3 momentNodeForMoment:*(a1 + 32)];

  if (v4)
  {
    *(*(*(a1 + 48) + 8) + 24) = [v4 isSmartInteresting];
  }

  else
  {
    v5 = [*(a1 + 40) graphLoggingConnection];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138412290;
      v9 = v7;
      _os_log_error_impl(&dword_22F0FC000, v5, OS_LOG_TYPE_ERROR, "Cannot find node for moment: %@", &v8, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (double)neighborScoreForMoment:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__PGManager_Curation__neighborScoreForMoment___block_invoke;
  v8[3] = &unk_278888EB8;
  v5 = v4;
  v10 = self;
  v11 = &v12;
  v9 = v5;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v8];
  v6 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v6;
}

void __46__PGManager_Curation__neighborScoreForMoment___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [a2 graph];
  v4 = objc_alloc_init(PGNeighborScoreComputer);
  v5 = [v3 momentNodeForMoment:*(a1 + 32)];
  if (v5)
  {
    [(PGNeighborScoreComputer *)v4 neighborScoreWithMomentNode:v5];
    *(*(*(a1 + 48) + 8) + 24) = v6;
  }

  else
  {
    v7 = [*(a1 + 40) graphLoggingConnection];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = 138412290;
      v11 = v9;
      _os_log_error_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_ERROR, "Cannot find node for moment: %@", &v10, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (double)graphScoreForMoment:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__PGManager_Curation__graphScoreForMoment___block_invoke;
  v8[3] = &unk_27888A570;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v8];
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v6;
}

void __43__PGManager_Curation__graphScoreForMoment___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 graph];
  v6 = [v3 momentNodeForMoment:*(a1 + 32)];

  v4 = v6;
  if (v6)
  {
    [v6 graphScore];
    v4 = v6;
    *(*(*(a1 + 40) + 8) + 24) = v5;
  }
}

- (id)curatedKeyAssetForAssetCollection:(id)a3 curatedAssetCollection:(id)a4 options:(id)a5 curationContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(PGManager *)self curationManager];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__36389;
  v31 = __Block_byref_object_dispose__36390;
  v32 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __104__PGManager_Curation__curatedKeyAssetForAssetCollection_curatedAssetCollection_options_curationContext___block_invoke;
  v21[3] = &unk_278883A18;
  v26 = &v27;
  v15 = v14;
  v22 = v15;
  v16 = v10;
  v23 = v16;
  v17 = v12;
  v24 = v17;
  v18 = v13;
  v25 = v18;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v21];
  v19 = [v15 curatedKeyAssetForAssetCollection:v16 curatedAssetCollection:v11 options:v17 criteria:v28[5] curationContext:v18];

  _Block_object_dispose(&v27, 8);

  return v19;
}

void __104__PGManager_Curation__curatedKeyAssetForAssetCollection_curatedAssetCollection_options_curationContext___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v8 = [a2 graph];
  v5 = [v3 criteriaForKeyAssetCurationWithAssetCollection:v4 graph:v8 options:a1[6] curationContext:a1[7]];
  v6 = *(a1[8] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

+ (id)summaryCurationForHighlight:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = MEMORY[0x277D86220];
  v5 = MEMORY[0x277D86220];
  v6 = v4;
  v7 = os_signpost_id_generate(v4);
  info = 0;
  mach_timebase_info(&info);
  v8 = v4;
  v9 = v7 - 1;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_BEGIN, v7, "SummaryCuration", "", buf, 2u);
  }

  spid = v7;
  v10 = MEMORY[0x277D86220];

  v35 = mach_absolute_time();
  v11 = [v3 photoLibrary];
  v12 = [PGManager graphServicesURLWithPhotoLibrary:v11];

  v13 = [PGCurationManager alloc];
  v14 = [v3 photoLibrary];
  v37 = v12;
  v15 = [(PGCurationManager *)v13 initWithPhotoLibrary:v14 cacheURL:v12];

  v36 = v15;
  v16 = [(PGDefaultEnrichmentProfile *)[PGCompleteEnrichmentProfile alloc] initWithCurationManager:v15 loggingConnection:v10];
  v17 = [[PGHighlightTailorHighlightInfo alloc] initWithHighlight:v3 serviceManager:0 loggingConnection:v10];
  [(PGHighlightTailorHighlightInfo *)v17 setPromotionScore:0.4];
  v18 = [(PGDefaultEnrichmentProfile *)v16 summaryCurationWithHighlightInfo:v17 sharingFilter:2 progressBlock:&__block_literal_global_36393];
  v19 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v18, "count")}];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v20 = v18;
  v21 = [v20 countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v39;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v39 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v38 + 1) + 8 * i) uuid];
        [v19 addObject:v25];
      }

      v22 = [v20 countByEnumeratingWithState:&v38 objects:v47 count:16];
    }

    while (v22);
  }

  v26 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v29 = MEMORY[0x277D86220];
  if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_END, spid, "SummaryCuration", "", buf, 2u);
  }

  v30 = MEMORY[0x277D86220];

  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v44 = "SummaryCuration";
    v45 = 2048;
    v46 = ((((v26 - v35) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v31 = MEMORY[0x277D86220];
  v32 = *MEMORY[0x277D85DE8];

  return v19;
}

- (BOOL)suggestsToStartSharedLibraryWithError:(id *)a3
{
  v3 = [(PGManager *)self suggestedPersonsForSharedLibraryParticipants];
  v4 = [v3 count] != 0;

  return v4;
}

- (id)_summaryOfInferencesForMomentNodes:(id)a3 inGraph:(id)a4
{
  v69[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEB38];
  v56 = a4;
  v6 = a3;
  v55 = objc_alloc_init(v5);
  v53 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:v56];
  v7 = MEMORY[0x277D22BF8];
  v8 = +[PGGraphMomentNode personInMoment];
  v50 = [v7 adjacencyWithSources:v6 relation:v8 targetsClass:objc_opt_class()];

  v9 = MEMORY[0x277D22BF8];
  v10 = +[PGGraphMomentNode publicEventOfMoment];
  v48 = [v9 adjacencyWithSources:v6 relation:v10 targetsClass:objc_opt_class()];

  v11 = MEMORY[0x277D22C90];
  v12 = +[PGGraphMomentNode roiOfMoment];
  v69[0] = v12;
  v13 = +[PGGraphROINode natureFilter];
  v14 = [v13 relation];
  v69[1] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:2];
  v54 = [v11 chain:v15];

  v46 = [MEMORY[0x277D22BF8] adjacencyWithSources:v6 relation:v54 targetsClass:objc_opt_class()];
  v16 = MEMORY[0x277D22C90];
  v17 = +[PGGraphMomentNode roiOfMoment];
  v68[0] = v17;
  v18 = +[PGGraphROINode mountainFilter];
  v19 = [v18 relation];
  v68[1] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:2];
  v52 = [v16 chain:v20];

  v21 = [MEMORY[0x277D22BF8] adjacencyWithSources:v6 relation:v52 targetsClass:objc_opt_class()];
  v22 = MEMORY[0x277D22C90];
  v23 = +[PGGraphMomentNode roiOfMoment];
  v67[0] = v23;
  v24 = +[PGGraphROINode beachFilter];
  v25 = [v24 relation];
  v67[1] = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:2];
  v47 = [v22 chain:v26];

  v27 = [MEMORY[0x277D22BF8] adjacencyWithSources:v6 relation:v47 targetsClass:objc_opt_class()];
  v28 = MEMORY[0x277D22BF8];
  v29 = +[PGGraphMomentNode frequentLocationOfMoment];
  v30 = [v28 adjacencyWithSources:v6 relation:v29 targetsClass:objc_opt_class()];

  v31 = MEMORY[0x277D22BF8];
  v32 = +[PGGraphMomentNode celebratedHolidayOfMoment];
  v33 = [v31 adjacencyWithSources:v6 relation:v32 targetsClass:objc_opt_class()];

  v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __70__PGManager_KnowledgeSPI___summaryOfInferencesForMomentNodes_inGraph___block_invoke;
  v57[3] = &unk_2788840A8;
  v58 = v46;
  v59 = v27;
  v60 = v21;
  v61 = v53;
  v62 = v30;
  v63 = v33;
  v64 = v48;
  v65 = v50;
  v66 = v34;
  v35 = v34;
  v51 = v50;
  v49 = v48;
  v36 = v33;
  v37 = v30;
  v38 = v53;
  v39 = v21;
  v40 = v27;
  v41 = v46;
  [v6 enumerateNodesSortedByFloatPropertyForName:@"utcs" usingBlock:v57];

  [v55 setObject:v35 forKeyedSubscript:@"events"];
  v42 = [v56 infoNode];

  v43 = [v42 creationDate];
  [v55 setObject:v43 forKeyedSubscript:@"graphCreationDate"];

  v44 = *MEMORY[0x277D85DE8];

  return v55;
}

void __70__PGManager_KnowledgeSPI___summaryOfInferencesForMomentNodes_inGraph___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if ([v3 hasMeanings])
  {
    v6 = [v3 meaningLabelsIncludingParents];
    [v5 unionSet:v6];
  }

  if ([v3 isTrip])
  {
    [v5 addObject:@"trip"];
  }

  if ([v3 petIsPresent])
  {
    [v5 addObject:@"pet"];
  }

  v7 = [v3 identifier];
  v29 = [*(a1 + 32) targetsForSourceIdentifier:v7];
  if ([v29 count])
  {
    [v5 addObject:@"nature"];
  }

  v28 = [*(a1 + 40) targetsForSourceIdentifier:v7];
  if ([v28 count])
  {
    [v5 addObject:@"beach"];
  }

  v27 = [*(a1 + 48) targetsForSourceIdentifier:v7];
  if ([v27 count])
  {
    [v5 addObject:@"mountain"];
  }

  if ([v3 happensPartiallyAtHomeOfPersonNodes:*(a1 + 56)])
  {
    [v5 addObject:@"home"];
  }

  if ([v3 happensPartiallyAtWorkOfPersonNodes:*(a1 + 56)])
  {
    [v5 addObject:@"work"];
  }

  v26 = [*(a1 + 64) targetsForSourceIdentifier:v7];
  if ([v26 count])
  {
    [v5 addObject:@"frequentLocation"];
  }

  v25 = [*(a1 + 72) targetsForSourceIdentifier:v7];
  v8 = [v25 holidayNames];
  if ([v8 count])
  {
    v9 = [v8 allObjects];
    [v4 setObject:v9 forKeyedSubscript:@"holidays"];
  }

  v24 = v8;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = [*(a1 + 80) targetsForSourceIdentifier:v7];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __70__PGManager_KnowledgeSPI___summaryOfInferencesForMomentNodes_inGraph___block_invoke_2;
  v33[3] = &unk_278887648;
  v12 = v10;
  v34 = v12;
  v23 = v11;
  [v11 enumerateNodesUsingBlock:v33];
  if ([v12 count])
  {
    [v4 setObject:v12 forKeyedSubscript:@"publicEvents"];
  }

  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = [*(a1 + 88) targetsForSourceIdentifier:{objc_msgSend(v3, "identifier")}];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __70__PGManager_KnowledgeSPI___summaryOfInferencesForMomentNodes_inGraph___block_invoke_3;
  v30[3] = &unk_278889EA0;
  v15 = v5;
  v31 = v15;
  v16 = v13;
  v32 = v16;
  [v14 enumerateNodesUsingBlock:v30];
  if ([v16 count])
  {
    [v4 setObject:v16 forKeyedSubscript:@"persons"];
  }

  v17 = objc_alloc(MEMORY[0x277CCA970]);
  v18 = [v3 universalStartDate];
  v19 = [v3 universalEndDate];
  v20 = [v17 initWithStartDate:v18 endDate:v19];

  [v4 setObject:v20 forKeyedSubscript:@"eventUniversalDateInterval"];
  v21 = [v3 localIdentifier];
  [v4 setObject:v21 forKeyedSubscript:@"localIdentifier"];

  if ([v15 count])
  {
    v22 = [v15 allObjects];
    [v4 setObject:v22 forKeyedSubscript:@"inferences"];
  }

  [*(a1 + 96) addObject:v4];
}

void __70__PGManager_KnowledgeSPI___summaryOfInferencesForMomentNodes_inGraph___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [v11 name];
  [v3 setObject:v4 forKeyedSubscript:@"name"];

  v5 = [v11 performers];
  if ([v5 count])
  {
    v6 = [v5 allObjects];
    [v3 setObject:v6 forKeyedSubscript:@"performers"];
  }

  v7 = [v11 collection];
  v8 = [v7 businessNodes];

  v9 = [v8 businessNames];
  if ([v9 count])
  {
    v10 = [v9 anyObject];
    [v3 setObject:v10 forKeyedSubscript:@"venue"];
  }

  [*(a1 + 32) addObject:v3];
}

void __70__PGManager_KnowledgeSPI___summaryOfInferencesForMomentNodes_inGraph___block_invoke_3(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [v8 localIdentifier];
  if ([v4 length])
  {
    [v3 setObject:v4 forKeyedSubscript:@"localIdentifier"];
  }

  v5 = [v8 contactIdentifier];
  if ([v5 length])
  {
    [v3 setObject:v5 forKeyedSubscript:@"contactIdentifier"];
  }

  v6 = [v8 name];
  if ([v6 length])
  {
    [v3 setObject:v6 forKeyedSubscript:@"name"];
  }

  if ([v8 isMemberOfMyFamily])
  {
    v7 = @"confirmed";
  }

  else
  {
    if (![v8 isInferredMemberOfMyFamily])
    {
      goto LABEL_12;
    }

    v7 = @"inferred";
  }

  [v3 setObject:v7 forKeyedSubscript:@"family"];
LABEL_12:
  if ([v8 ageCategory] == 1)
  {
    [*(a1 + 32) addObject:@"baby"];
  }

  if ([v3 count])
  {
    [*(a1 + 40) addObject:v3];
  }
}

- (id)summaryOfInferencesPerMomentInDateInterval:(id)a3 error:(id *)a4
{
  v5 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__39481;
  v17 = __Block_byref_object_dispose__39482;
  v18 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__PGManager_KnowledgeSPI__summaryOfInferencesPerMomentInDateInterval_error___block_invoke;
  v9[3] = &unk_278888EB8;
  v6 = v5;
  v11 = self;
  v12 = &v13;
  v10 = v6;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v9];
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __76__PGManager_KnowledgeSPI__summaryOfInferencesPerMomentInDateInterval_error___block_invoke(uint64_t a1, void *a2)
{
  v7 = [a2 graph];
  v3 = [PGGraphMomentNodeCollection momentNodesInUniversalDateInterval:*(a1 + 32) inGraph:v7];
  v4 = [*(a1 + 40) _summaryOfInferencesForMomentNodes:v3 inGraph:v7];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)summaryOfInferencesPerMomentByLocalIdentifiers:(id)a3 error:(id *)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [MEMORY[0x277CD98F8] uuidFromLocalIdentifier:*(*(&v26 + 1) + 8 * i)];
        [v6 addObject:v11];
      }

      v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__39481;
  v24 = __Block_byref_object_dispose__39482;
  v25 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __80__PGManager_KnowledgeSPI__summaryOfInferencesPerMomentByLocalIdentifiers_error___block_invoke;
  v16[3] = &unk_278888EB8;
  v12 = v6;
  v18 = self;
  v19 = &v20;
  v17 = v12;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v16];
  v13 = v21[5];

  _Block_object_dispose(&v20, 8);
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void __80__PGManager_KnowledgeSPI__summaryOfInferencesPerMomentByLocalIdentifiers_error___block_invoke(uint64_t a1, void *a2)
{
  v7 = [a2 graph];
  v3 = [PGGraphMomentNodeCollection momentNodesForUUIDs:*(a1 + 32) inGraph:v7];
  v4 = [*(a1 + 40) _summaryOfInferencesForMomentNodes:v3 inGraph:v7];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)momentLocalIdentifiersInDateInterval:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__PGManager_KnowledgeSPI__momentLocalIdentifiersInDateInterval_error___block_invoke;
  v12[3] = &unk_27888A638;
  v13 = v5;
  v7 = v6;
  v14 = v7;
  v8 = v5;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v12];
  v9 = v14;
  v10 = v7;

  return v7;
}

void __70__PGManager_KnowledgeSPI__momentLocalIdentifiersInDateInterval_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 graph];
  v4 = [PGGraphMomentNodeCollection momentNodesInUniversalDateInterval:*(a1 + 32) inGraph:v3];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __70__PGManager_KnowledgeSPI__momentLocalIdentifiersInDateInterval_error___block_invoke_2;
  v5[3] = &unk_278889290;
  v6 = *(a1 + 40);
  [v4 enumerateNodesSortedByFloatPropertyForName:@"utcs" usingBlock:v5];
}

void __70__PGManager_KnowledgeSPI__momentLocalIdentifiersInDateInterval_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 localIdentifier];
  [v2 addObject:v3];
}

- (double)libraryDuration
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__PGManager_MoodKeywords__libraryDuration__block_invoke;
  v4[3] = &unk_27888A5C0;
  v4[4] = &v5;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __42__PGManager_MoodKeywords__libraryDuration__block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 graph];
  [v4 libraryDuration];
  *(*(*(a1 + 32) + 8) + 24) = v3;
}

- (id)_recentlyUsedSongAdamIDsFromCurationOptions:(id)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB58];
  v5 = a3;
  v6 = [v5 recentlyUsedSongAdamIDs];
  v7 = [v4 setWithArray:v6];

  v8 = [v5 rootMemoryLocalIdentifier];

  if (v8)
  {
    v9 = [(PGManager *)self photoLibrary];
    v10 = [v9 librarySpecificFetchOptions];

    [v10 setIncludeLocalMemories:1];
    v11 = MEMORY[0x277CD98D8];
    v19[0] = v8;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    v13 = [v11 fetchAssetCollectionsWithLocalIdentifiers:v12 options:v10];

    v14 = [v13 firstObject];
    if (v14)
    {
      v15 = [PGKeySongExtractor appleMusicKeySongIDFromMemory:v14];
      if (v15)
      {
        [v7 addObject:v15];
      }
    }
  }

  v16 = [v7 allObjects];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)musicCurationInflationContextWithInflationOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  if (v7->_musicCache)
  {
    goto LABEL_3;
  }

  v8 = [(PGManager *)v7 photoLibrary];
  v9 = [PGMusicCache cacheWithPhotoLibrary:v8 error:a4];
  musicCache = v7->_musicCache;
  v7->_musicCache = v9;

  if (v7->_musicCache)
  {
LABEL_3:
    v11 = +[PGMusicCurationInflationOptions stringFromInflationActionSource:](PGMusicCurationInflationOptions, "stringFromInflationActionSource:", [v6 inflationActionSource]);
    v12 = +[PGMusicCurationInflationContext contextWithMusicCache:actionSource:shouldForceMetadataRefetch:](PGMusicCurationInflationContext, "contextWithMusicCache:actionSource:shouldForceMetadataRefetch:", v7->_musicCache, v11, [v6 shouldForceMetadataRefetch]);
  }

  else
  {
    v12 = 0;
  }

  objc_sync_exit(v7);

  return v12;
}

- (id)musicCuratorContextWithCurationOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  if (v7->_musicCache)
  {
    goto LABEL_3;
  }

  v8 = [(PGManager *)v7 photoLibrary];
  v9 = [PGMusicCache cacheWithPhotoLibrary:v8 error:a4];
  musicCache = v7->_musicCache;
  v7->_musicCache = v9;

  if (v7->_musicCache)
  {
LABEL_3:
    v11 = [(PGManager *)v7 musicBag];

    if (!v11)
    {
      v12 = [[PGMusicBag alloc] initWithCache:v7->_musicCache];
      [(PGManager *)v7 setMusicBag:v12];
    }

    if (+[PGUserDefaults musicCurationAllowExplicitMusicContent])
    {
      v13 = MEMORY[0x277CBEC38];
    }

    else
    {
      v13 = MEMORY[0x277CBEC28];
    }

    v14 = [v6 musicCurationSpecificationOptions];
    if (!v14)
    {
      goto LABEL_11;
    }

    v15 = [v6 musicCurationSpecificationOptions];
    v16 = [v15 genres];
    v17 = [v16 count];

    if (v17)
    {
      v18 = [v6 musicCurationSpecificationOptions];
      v19 = [v18 genres];
      v33 = [v19 firstObject];
    }

    else
    {
LABEL_11:
      v33 = 0;
    }

    if ([v6 useMemoryCreationMusicCuratorConfiguration])
    {
      v32 = +[PGMusicCuratorConfigurationWrapper memoryCreationConfiguration];
      v20 = v13;
      v21 = a4;
      v22 = MEMORY[0x277CBEC38];
    }

    else
    {
      v20 = v13;
      v21 = a4;
      v32 = 0;
      v22 = MEMORY[0x277CBEC28];
    }

    v23 = [(PGManager *)v7 photoLibrary];
    v24 = v7->_musicCache;
    v25 = [(PGManager *)v7 musicBag];
    v26 = [v6 flexSongProviderName];
    v27 = [PGMusicCuratorContext contextWithPhotoLibrary:v23 adamIDsWithNegativeUserFeedback:0 allowExplicitMusicContent:v20 cache:v24 musicBag:v25 flexProviderName:v26 recentlyUsedSongs:0 genre:v33 isMemoryCreationCuration:v22 configuration:v32 error:v21];

    v28 = [(PGManager *)v7 _recentlyUsedSongAdamIDsFromCurationOptions:v6];
    if (v28)
    {
      v29 = [v27 recentlyUsedSongs];
      v30 = [MEMORY[0x277CBEAA8] date];
      [v29 addSongIDs:v28 date:v30];
    }

    [v27 setUseOnlyMusicForTopicInTopPickSuggestions:{objc_msgSend(v6, "useOnlyMusicForTopicInTopPickSuggestions")}];
    [v27 setAllowChillMixElection:{objc_msgSend(v6, "includeChillMixInMusicForYou")}];
    [v27 setAllowGetUpMixElection:{objc_msgSend(v6, "includeGetUpMixInMusicForYou")}];
    [v27 setRefreshSongMetadata:{objc_msgSend(v6, "shouldRefreshSongMetadata")}];
    [v27 setForceShareableInBestSuggestions:{objc_msgSend(v6, "shouldForceShareableInBestSuggestions")}];
  }

  else
  {
    v27 = 0;
  }

  objc_sync_exit(v7);

  return v27;
}

- (id)musicCuratorContextWithRecentlyUsedSongAdamIDs:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  if (v7->_musicCache)
  {
    goto LABEL_3;
  }

  v8 = [(PGManager *)v7 photoLibrary];
  v9 = [PGMusicCache cacheWithPhotoLibrary:v8 error:a4];
  musicCache = v7->_musicCache;
  v7->_musicCache = v9;

  if (v7->_musicCache)
  {
LABEL_3:
    v11 = [(PGManager *)v7 musicBag];

    if (!v11)
    {
      v12 = [[PGMusicBag alloc] initWithCache:v7->_musicCache];
      [(PGManager *)v7 setMusicBag:v12];
    }

    v13 = +[PGUserDefaults musicCurationAllowExplicitMusicContent];
    v14 = MEMORY[0x277CBEC28];
    if (v13)
    {
      v15 = MEMORY[0x277CBEC38];
    }

    else
    {
      v15 = MEMORY[0x277CBEC28];
    }

    v16 = [(PGManager *)v7 photoLibrary];
    v17 = v7->_musicCache;
    v18 = [(PGManager *)v7 musicBag];
    v19 = [PGMusicCuratorContext contextWithPhotoLibrary:v16 adamIDsWithNegativeUserFeedback:0 allowExplicitMusicContent:v15 cache:v17 musicBag:v18 flexProviderName:0 recentlyUsedSongs:0 genre:0 isMemoryCreationCuration:v14 configuration:0 error:a4];

    if (v6)
    {
      v20 = [v19 recentlyUsedSongs];
      v21 = [MEMORY[0x277CBEAA8] date];
      [v20 addSongIDs:v6 date:v21];
    }
  }

  else
  {
    v19 = 0;
  }

  objc_sync_exit(v7);

  return v19;
}

- (unint64_t)_numberOfAssetsMatchingInternalPredicate:(id)a3
{
  v3 = [(PGManager *)self _fetchResultMatchingInternalPredicate:a3];
  v4 = [v3 count];

  return v4;
}

- (id)_fetchResultMatchingInternalPredicate:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PGManager *)self photoLibrary];
  v6 = [v5 librarySpecificFetchOptions];

  [v6 setIncludeGuestAssets:1];
  v11[0] = *MEMORY[0x277CD9A80];
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [v6 addFetchPropertySets:v7];

  [v6 setInternalPredicate:v4];
  v8 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:v6];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_stringDescriptionForPetsWithGraph:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PGManager *)self _dateFormatter];
  v6 = [(PGGraphNodeCollection *)PGGraphPetNodeCollection nodesInGraph:v4];
  v7 = [MEMORY[0x277CCAB68] stringWithFormat:@"\nNumber of Pets: %lu\n", objc_msgSend(v6, "count")];
  v8 = [MEMORY[0x277CBEB18] array];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __55__PGManager_Debug___stringDescriptionForPetsWithGraph___block_invoke;
  v22[3] = &unk_278885FE0;
  v9 = v5;
  v23 = v9;
  v10 = v8;
  v24 = v10;
  [v6 enumerateNodesUsingBlock:v22];
  [v10 sortUsingSelector:sel_caseInsensitiveCompare_];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [v7 appendString:*(*(&v18 + 1) + 8 * i)];
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v25 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

void __55__PGManager_Debug___stringDescriptionForPetsWithGraph___block_invoke(uint64_t a1, void *a2)
{
  v60[3] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = [v2 collection];
  v5 = [v4 ownerNodes];
  v6 = +[PGGraphPersonNode personSortDescriptors];
  v7 = [v5 sortedArrayUsingDescriptors:v6];

  v8 = +[PGGraphPetNode stringFromPetSpecies:](PGGraphPetNode, "stringFromPetSpecies:", [v2 petSpecies]);
  v9 = [v2 name];
  v10 = [v2 localIdentifier];
  [v3 appendFormat:@"%@ with name %@ and local identifier %@ owned by:", v8, v9, v10];

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v54 objects:v59 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v55;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v55 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v54 + 1) + 8 * i) name];
        v17 = v16;
        if (v16)
        {
          v18 = v16;
        }

        else
        {
          v18 = @"Unnamed owner";
        }

        [v3 appendFormat:@"%@, ", v18];
      }

      v13 = [v11 countByEnumeratingWithState:&v54 objects:v59 count:16];
    }

    while (v13);
  }

  v47 = v11;

  v48 = v2;
  v19 = [v2 collection];
  v20 = [v19 momentNodes];
  v21 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalStartDate" ascending:1];
  v60[0] = v21;
  v22 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalEndDate" ascending:1];
  v60[1] = v22;
  v23 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"UUID" ascending:1];
  v60[2] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:3];

  v25 = [v20 sortedArrayUsingDescriptors:v24];

  v26 = [v25 firstObject];
  v27 = [v26 localStartDate];

  v28 = [v25 lastObject];
  v29 = [v28 localStartDate];

  v30 = [v25 count];
  v46 = v27;
  v31 = [*(a1 + 32) stringFromDate:v27];
  v45 = v29;
  v32 = [*(a1 + 32) stringFromDate:v29];
  [v3 appendFormat:@"\n\t\t%lu moments from %@ to %@:\n", v30, v31, v32];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v33 = v25;
  v34 = [v33 countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v51;
    do
    {
      for (j = 0; j != v35; ++j)
      {
        if (*v51 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v50 + 1) + 8 * j);
        v39 = *(a1 + 32);
        v40 = [v38 localStartDate];
        v41 = [v39 stringFromDate:v40];
        [v3 appendFormat:@"\t\t%@", v41];

        v42 = [v38 bestAddressNode];
        v43 = [v42 keywordDescription];
        [v3 appendFormat:@"\t\t\t%@\n", v43];
      }

      v35 = [v33 countByEnumeratingWithState:&v50 objects:v58 count:16];
    }

    while (v35);
  }

  [*(a1 + 40) addObject:v3];
  v44 = *MEMORY[0x277D85DE8];
}

- (id)_sortedTextFeaturesFromTextFeatures:(id)a3
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAC98];
  v4 = a3;
  v5 = [v3 sortDescriptorWithKey:@"type" ascending:1];
  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"origin" ascending:1];
  v11[0] = v5;
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v8 = [v4 sortedArrayUsingDescriptors:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)sharingMessageSuggestionDebugInformationForAssetCollection:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__PGManager_Debug__sharingMessageSuggestionDebugInformationForAssetCollection___block_invoke;
  v10[3] = &unk_27888A4D0;
  v11 = v4;
  v6 = v5;
  v12 = v6;
  v13 = self;
  v7 = v4;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v10];
  v8 = v6;

  return v6;
}

void __79__PGManager_Debug__sharingMessageSuggestionDebugInformationForAssetCollection___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 uuid];
  v6 = [v4 graph];

  v7 = [PGGraphMomentNodeCollection momentNodeForUUID:v5 inGraph:v6];
  v8 = [v7 anyNode];

  if (v8)
  {
    v23[0] = @"title";
    v9 = [*(a1 + 32) localizedTitle];
    v10 = v9;
    v11 = &stru_2843F5C58;
    if (v9)
    {
      v11 = v9;
    }

    v24[0] = v11;
    v24[1] = &unk_2844841E8;
    v23[1] = @"numberOfMoments";
    v23[2] = @"numberOfHighlights";
    v24[2] = &unk_284484200;
    v24[3] = &unk_2844840F8;
    v23[3] = @"graphSchemaVersion";
    v23[4] = @"curationAlgorithmsVersion";
    v23[5] = @"memoriesAlgorithmsVersion";
    v24[4] = &unk_284484110;
    v24[5] = &unk_284484128;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:6];
    [*(a1 + 40) setObject:v12 forKeyedSubscript:@"info"];

    v13 = *(a1 + 48);
    v14 = [v8 naturalLanguageFeatures];
    v15 = [v13 _sortedTextFeaturesFromTextFeatures:v14];

    v16 = [MEMORY[0x277CBEB38] dictionary];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __79__PGManager_Debug__sharingMessageSuggestionDebugInformationForAssetCollection___block_invoke_1576;
    v21[3] = &unk_278885FB8;
    v22 = v16;
    v17 = v16;
    [v15 enumerateObjectsUsingBlock:v21];
    [*(a1 + 40) setObject:v17 forKeyedSubscript:@"textFeatures"];
  }

  else
  {
    v18 = +[PGLogging sharedLogging];
    v15 = [v18 loggingConnection];

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 32);
      *buf = 138412290;
      v26 = v20;
      _os_log_error_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_ERROR, "No moment node found for %@", buf, 0xCu);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __79__PGManager_Debug__sharingMessageSuggestionDebugInformationForAssetCollection___block_invoke_1576(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a2;
  v8 = [v5 stringWithFormat:@"%lu", a3];
  v7 = [v6 description];

  [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
}

- (id)_dayOfWeekStatisticsWithGraph:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v23 = a3;
  v24 = [MEMORY[0x277CCAB68] string];
  [v24 appendFormat:@"Number of moments by day of week:\n"];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v3 = 0;
  v4 = [&unk_284486270 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v4)
  {
    v5 = *v31;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v31 != v5)
        {
          objc_enumerationMutation(&unk_284486270);
        }

        v7 = *(*(&v30 + 1) + 8 * i);
        v26 = 0;
        v27 = &v26;
        v28 = 0x2020000000;
        v29 = 0;
        v8 = [v23 dayOfWeekNodeForDayOfWeek:{objc_msgSend(v7, "integerValue")}];
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __50__PGManager_Debug___dayOfWeekStatisticsWithGraph___block_invoke;
        v25[3] = &unk_278885C98;
        v25[4] = &v26;
        [v8 enumerateNeighborNodesThroughEdgesWithLabel:@"DAYOFWEEK" domain:400 usingBlock:v25];
        v9 = [v8 name];
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v27[3]];
        [v24 appendFormat:@"\t%@: %@ moments\n", v9, v10];

        v11 = v27[3];
        v3 += v11;
        _Block_object_dispose(&v26, 8);
      }

      v4 = [&unk_284486270 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v4);
  }

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3];
  [v24 appendFormat:@"\n\tTotal: %@ moments\n", v12];

  v13 = [v23 anyNodeForLabel:@"Weekend" domain:400 properties:0];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 edgesCount];
  }

  else
  {
    v15 = 0;
  }

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15];
  [v24 appendFormat:@"\n\tWeekend: %@ moments\n", v16];

  v17 = [v23 anyNodeForLabel:@"Weekday" domain:400 properties:0];
  v18 = v17;
  if (v17)
  {
    v19 = [v17 edgesCount];
  }

  else
  {
    v19 = 0;
  }

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19];
  [v24 appendFormat:@"\tWeekday: %@ moments\n", v20];

  v21 = *MEMORY[0x277D85DE8];

  return v24;
}

void __50__PGManager_Debug___dayOfWeekStatisticsWithGraph___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 collection];
  v4 = [v3 momentNodes];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__PGManager_Debug___dayOfWeekStatisticsWithGraph___block_invoke_2;
  v5[3] = &unk_278885948;
  v5[4] = *(a1 + 32);
  [v4 enumerateNodesUsingBlock:v5];
}

- (id)snapshotOuputFilePathURLForKey:(id)a3
{
  v4 = a3;
  v5 = [(PGManager *)self defaultSnapshotRootPath];
  v6 = [(PGManager *)self _snapshotFilenameForLookupKey:v4];

  if (v6)
  {
    v7 = [v5 stringByAppendingPathComponent:v6];
    v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7];
  }

  else
  {
    v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
  }

  return v8;
}

- (id)_snapshotFilenameForLookupKey:(id)a3
{
  v3 = a3;
  if (_snapshotFilenameForLookupKey__onceToken != -1)
  {
    dispatch_once(&_snapshotFilenameForLookupKey__onceToken, &__block_literal_global_1519);
  }

  if (_snapshotFilenameForLookupKey__snapshotFilenameLookup)
  {
    v4 = [_snapshotFilenameForLookupKey__snapshotFilenameLookup valueForKey:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __50__PGManager_Debug___snapshotFilenameForLookupKey___block_invoke()
{
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"Graph.plist", @"snapshotFilenameForGraphState", @"photosgraph.kgdb", @"filenameForGraphKGDBSnapshot", @"CurationResult.bundle", @"snapshotFilenameForCurationResults", @"DebugInfoForRelated.plist", @"snapshotFilenameForDebugInfoForRelated", @"Memories.plist", @"snapshotFilenameForMemories", @"LibraryStatistics.plist", @"snapshotFilenameForLibraryStatistics", @"Errors.txt", @"snapshotFilenameForErrors", @"GraphStatistics.txt", @"snapshotFilenameForGraphStatistics", 0}];
  v1 = _snapshotFilenameForLookupKey__snapshotFilenameLookup;
  _snapshotFilenameForLookupKey__snapshotFilenameLookup = v0;
}

- (id)defaultPeopleClustersExportIntermediatePath
{
  v2 = [MEMORY[0x277CCACA8] stringWithString:@"/var/mobile/Media/PhotoData"];
  v3 = [v2 stringByAppendingPathComponent:@"PeopleClusters"];

  return v3;
}

- (id)fastGraphExportFullPath
{
  v2 = [(PGManager *)self graphPersistenceParentDirectoryURL];
  v3 = [v2 path];

  v4 = [v3 stringByAppendingPathComponent:@"Graph.plist"];

  return v4;
}

- (id)defaultGraphExportFullPath
{
  v2 = [MEMORY[0x277CCACA8] stringWithString:@"/var/mobile/Media/PhotoData"];
  v3 = [v2 stringByAppendingPathComponent:@"Graph.plist"];

  return v3;
}

- (id)_getDefaultOutputPathForMetadataSnapshot
{
  v2 = [(PGManager *)self metadataSnapshotOutputPathURL];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 path];
  }

  else
  {
    v5 = NSTemporaryDirectory();
    v4 = [v5 stringByAppendingPathComponent:@"Caches/Internal/MemoriesRelated/Memories"];
  }

  return v4;
}

- (id)utilityAssetInformation
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = [(PGManager *)self photoLibrary];
  v3 = [objc_alloc(MEMORY[0x277D3C790]) initWithPhotoLibrary:v2];
  v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [v2 librarySpecificFetchOptions];
  [v4 setIncludeGuestAssets:1];
  v5 = +[PGCurationManager assetPropertySetsForCuration];
  v27 = v4;
  [v4 setFetchPropertySets:v5];

  v24 = v2;
  v23 = [v2 librarySpecificFetchOptions];
  [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:3 subtype:0x7FFFFFFFFFFFFFFFLL options:?];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v40 = 0u;
  v28 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v28)
  {
    v26 = *v38;
    do
    {
      v6 = 0;
      do
      {
        if (*v38 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v31 = v6;
        v7 = *(*(&v37 + 1) + 8 * v6);
        context = objc_autoreleasePoolPush();
        v29 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:v7 options:v27];
        v8 = [MEMORY[0x277CD97A8] clsAllAssetsFromFetchResult:? prefetchOptions:? curationContext:?];
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v9 = [v8 countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v34;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v34 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v33 + 1) + 8 * i);
              v14 = [v13 curationModel];
              v15 = [v14 isUtilityWithAsset:v13];
              v16 = [v3 userFeedbackCalculator];
              v17 = [v14 isUtilityForMemoriesWithAsset:v13 userFeedbackCalculator:v16 blockSocialMediaImportedAssets:0];

              v18 = 4;
              if (!v17)
              {
                v18 = 0;
              }

              if (v18 | v15)
              {
                v19 = [MEMORY[0x277CCABB0] numberWithInteger:?];
                v20 = [v13 uuid];
                [v32 setObject:v19 forKeyedSubscript:v20];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v33 objects:v41 count:16];
          }

          while (v10);
        }

        objc_autoreleasePoolPop(context);
        v6 = v31 + 1;
      }

      while (v31 + 1 != v28);
      v28 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v28);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v32;
}

- (id)sharingSuggestionDebugInformationForSuggestion:(id)a3
{
  v80 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [(PGManager *)self photoLibrary];
  v7 = [v6 librarySpecificFetchOptions];

  v54 = v7;
  v8 = [MEMORY[0x277CD97A8] fetchKeyAssetsInAssetCollection:v4 options:v7];
  v9 = [MEMORY[0x277CD97A8] fetchRepresentativeAssetsInAssetCollection:v4];
  v55 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v71 objects:v79 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v72;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v72 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v71 + 1) + 8 * i) localIdentifier];
        [v55 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v71 objects:v79 count:16];
    }

    while (v12);
  }

  v16 = [MEMORY[0x277CD98F8] fetchMomentsForAssetsWithLocalIdentifiers:v55 options:v54];
  v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v16, "count")}];
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __67__PGManager_Debug__sharingSuggestionDebugInformationForSuggestion___block_invoke;
  v64[3] = &unk_278885F30;
  v18 = v16;
  v65 = v18;
  v19 = v17;
  v66 = v19;
  v52 = v4;
  v67 = v52;
  v53 = v5;
  v68 = v53;
  v50 = v10;
  v69 = v50;
  v49 = v8;
  v70 = v49;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v64];
  v20 = objc_opt_new();
  [v20 setSharingStream:1];
  v47 = [(PGManager *)self workingContextForSuggestions];
  v46 = [[PGSharingManager alloc] initWithWorkingContext:v47];
  v51 = v19;
  v48 = v20;
  v21 = [(PGSharingManager *)v46 suggestionResultsForAssetLocalIdentifiers:0 momentLocalIdentifiers:v19 options:v20];
  v22 = MEMORY[0x277CBEB38];
  v77 = @"numberOfPeopleSuggestions";
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v21, "count")}];
  v78 = v23;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
  v25 = [v22 dictionaryWithDictionary:v24];

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v26 = v21;
  v27 = [v26 countByEnumeratingWithState:&v60 objects:v76 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v61;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v61 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v60 + 1) + 8 * j);
        v32 = [v31 sourceNames];
        v33 = [v31 person];
        v34 = [v33 keywordDescription];
        [v25 setObject:v32 forKeyedSubscript:v34];
      }

      v28 = [v26 countByEnumeratingWithState:&v60 objects:v76 count:16];
    }

    while (v28);
  }

  [v53 setObject:v25 forKeyedSubscript:@"people"];
  v35 = objc_opt_new();
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v36 = v18;
  v37 = [v36 countByEnumeratingWithState:&v56 objects:v75 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v57;
    do
    {
      for (k = 0; k != v38; ++k)
      {
        if (*v57 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = [(PGManager *)self keywordsForAssetCollection:*(*(&v56 + 1) + 8 * k) relatedType:63];
        if (v41)
        {
          v42 = [objc_opt_class() exportableDictionaryFromKeywords:v41];
          [v35 addEntriesFromDictionary:v42];
        }
      }

      v38 = [v36 countByEnumeratingWithState:&v56 objects:v75 count:16];
    }

    while (v38);
  }

  [v53 setObject:v35 forKeyedSubscript:@"content"];
  v43 = v53;

  v44 = *MEMORY[0x277D85DE8];
  return v53;
}

void __67__PGManager_Debug__sharingSuggestionDebugInformationForSuggestion___block_invoke(uint64_t a1, void *a2)
{
  v71 = *MEMORY[0x277D85DE8];
  v46 = a2;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  v3 = objc_alloc_init(PGNeighborScoreComputer);
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v52 objects:v70 count:16];
  if (v6)
  {
    v7 = *v53;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v53 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v52 + 1) + 8 * i);
        v10 = *(a1 + 40);
        v11 = [v9 localIdentifier];
        [v10 addObject:v11];

        v12 = [v9 uuid];
        [v4 addObject:v12];
      }

      v6 = [v5 countByEnumeratingWithState:&v52 objects:v70 count:16];
    }

    while (v6);
  }

  v13 = [v46 graph];
  v45 = [PGGraphMomentNodeCollection momentNodesForArrayOfUUIDs:v4 inGraph:v13];

  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __67__PGManager_Debug__sharingSuggestionDebugInformationForSuggestion___block_invoke_2;
  v47[3] = &unk_278885F08;
  v31 = v3;
  v48 = v31;
  v49 = &v64;
  v50 = &v60;
  v51 = &v56;
  [v45 enumerateNodesUsingBlock:v47];
  v14 = [*(a1 + 48) featuresProperties];
  v32 = [v14 objectForKeyedSubscript:@"deviceInformation"];

  v68[0] = @"title";
  v44 = [*(a1 + 48) localizedTitle];
  v15 = v44;
  if (!v44)
  {
    v15 = &stru_2843F5C58;
  }

  v69[0] = v15;
  v68[1] = @"subtitle";
  v43 = [*(a1 + 48) localizedSubtitle];
  v16 = v43;
  if (!v43)
  {
    v16 = &stru_2843F5C58;
  }

  v69[1] = v16;
  v68[2] = @"creationDate";
  v42 = [*(a1 + 48) creationDate];
  v17 = v42;
  if (!v42)
  {
    v17 = &stru_2843F5C58;
  }

  v69[2] = v17;
  v68[3] = @"activationDate";
  v41 = [*(a1 + 48) activationDate];
  v18 = v41;
  if (!v41)
  {
    v18 = &stru_2843F5C58;
  }

  v69[3] = v18;
  v68[4] = @"relevantUntilDate";
  v40 = [*(a1 + 48) relevantUntilDate];
  v19 = v40;
  if (!v40)
  {
    v19 = &stru_2843F5C58;
  }

  v69[4] = v19;
  v68[5] = @"expungeDate";
  v39 = [*(a1 + 48) expungeDate];
  v20 = v39;
  if (!v39)
  {
    v20 = &stru_2843F5C58;
  }

  v69[5] = v20;
  v68[6] = @"type";
  [*(a1 + 48) type];
  v38 = PHSuggestionStringWithType();
  v69[6] = v38;
  v68[7] = @"subtype";
  [*(a1 + 48) subtype];
  v37 = PHSuggestionStringWithSubtype();
  v69[7] = v37;
  v68[8] = @"state";
  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(*(a1 + 48), "state")}];
  v69[8] = v36;
  v68[9] = @"notificationState";
  [*(a1 + 48) notificationState];
  v35 = PHSuggestionNotificationStateStringWithNotificationState();
  v69[9] = v35;
  v68[10] = @"version";
  v34 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 48), "version")}];
  v69[10] = v34;
  v68[11] = @"neighborScore";
  v33 = [MEMORY[0x277CCABB0] numberWithDouble:v65[3]];
  v69[11] = v33;
  v68[12] = @"neighborScoreInteresting";
  v21 = [MEMORY[0x277CCABB0] numberWithInt:v65[3] > 0.43];
  v69[12] = v21;
  v68[13] = @"neighborScoreHighlyInteresting";
  v22 = [MEMORY[0x277CCABB0] numberWithInt:v65[3] > 0.6];
  v69[13] = v22;
  v68[14] = @"isInteresting";
  v23 = [MEMORY[0x277CCABB0] numberWithBool:*(v61 + 24)];
  v69[14] = v23;
  v68[15] = @"isSmartInteresting";
  v24 = [MEMORY[0x277CCABB0] numberWithBool:*(v57 + 24)];
  v69[15] = v24;
  v68[16] = @"representativeAssetsCount";
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 64), "count")}];
  v69[16] = v25;
  v68[17] = @"keyAssetsCount";
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 72), "count")}];
  v69[17] = v26;
  v68[18] = @"numberOfMoments";
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count")}];
  v69[18] = v27;
  v69[19] = &unk_2844840F8;
  v68[19] = @"graphSchemaVersion";
  v68[20] = @"curationAlgorithmsVersion";
  v69[20] = &unk_284484110;
  v69[21] = &unk_284484128;
  v68[21] = @"memoriesAlgorithmsVersion";
  v68[22] = @"deviceInfo";
  v28 = v32;
  if (!v32)
  {
    v28 = &stru_2843F5C58;
  }

  v69[22] = v28;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:23];
  [*(a1 + 56) setObject:v29 forKeyedSubscript:@"info"];

  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(&v64, 8);

  v30 = *MEMORY[0x277D85DE8];
}

void __67__PGManager_Debug__sharingSuggestionDebugInformationForSuggestion___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v3 neighborScoreWithMomentNode:v4];
  v6 = *(a1[5] + 8);
  if (v5 > *(v6 + 24))
  {
    *(v6 + 24) = v5;
  }

  *(*(a1[6] + 8) + 24) |= [v4 isInteresting];
  v7 = [v4 isSmartInteresting];

  *(*(a1[7] + 8) + 24) |= v7;
}

- (id)_domainLabelCountStatisticsWithGraph:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCAB68] stringWithString:@"\nCounts by domain and label:\nnodes:"];
  v5 = [v3 nodesDomains];
  v6 = [v3 nodesLabels];
  v7 = [v6 allObjects];
  v8 = [v7 mutableCopy];

  [v8 sortUsingComparator:&__block_literal_global_1397];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __57__PGManager_Debug___domainLabelCountStatisticsWithGraph___block_invoke_2;
  v50[3] = &unk_278889B40;
  v9 = v3;
  v51 = v9;
  v10 = v4;
  v52 = v10;
  v38 = v5;
  [v5 enumerateIndexesUsingBlock:v50];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v47;
    v15 = *MEMORY[0x277D22CB0];
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v47 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v46 + 1) + 8 * i);
        v18 = [v9 nodesCountForLabel:v17 domain:v15];
        if (v18)
        {
          [v10 appendFormat:@"\nlabel %@ %lu", v17, v18];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v13);
  }

  [v10 appendString:@"\nedges:"];
  v19 = [v9 edgesDomains];
  v20 = [v9 edgesLabels];
  v21 = [v20 allObjects];
  v22 = [v21 mutableCopy];

  [v22 sortUsingComparator:&__block_literal_global_1408];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __57__PGManager_Debug___domainLabelCountStatisticsWithGraph___block_invoke_4;
  v43[3] = &unk_278889B40;
  v23 = v9;
  v44 = v23;
  v24 = v10;
  v45 = v24;
  v37 = v19;
  [v19 enumerateIndexesUsingBlock:v43];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v25 = v22;
  v26 = [v25 countByEnumeratingWithState:&v39 objects:v53 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v40;
    v29 = *MEMORY[0x277D22CB0];
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v40 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v31 = *(*(&v39 + 1) + 8 * j);
        v32 = [v23 edgesCountForLabel:v31 domain:v29];
        if (v32)
        {
          [v24 appendFormat:@"\nlabel %@ %lu", v31, v32];
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v39 objects:v53 count:16];
    }

    while (v27);
  }

  v33 = v45;
  v34 = v24;

  v35 = *MEMORY[0x277D85DE8];
  return v24;
}

uint64_t __57__PGManager_Debug___domainLabelCountStatisticsWithGraph___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) nodesCountForDomain:a2];
  if (result)
  {
    return [*(a1 + 40) appendFormat:@"\ndomain %lu %lu", a2, result];
  }

  return result;
}

uint64_t __57__PGManager_Debug___domainLabelCountStatisticsWithGraph___block_invoke_4(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) edgesCountForLabel:0 domain:a2];
  if (result)
  {
    return [*(a1 + 40) appendFormat:@"\ndomain %lu %lu", a2, result];
  }

  return result;
}

- (id)_mobilityStatisticsWithGraph:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [a3 momentNodesSortedByDate];
  v4 = [MEMORY[0x277CCAB68] stringWithFormat:@"\nLocation Mobility:"];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 locationMobilityType];
        if (v11)
        {
          if (v11 > 4)
          {
            v12 = 0;
          }

          else
          {
            v12 = off_27887F2D0[v11];
          }

          v13 = v12;
          v14 = [v10 name];
          [v4 appendFormat:@"\n\tMoment %@, mobility %@", v14, v13, v17];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_titleStatisticsWithGraph:(id)a3 titleGenerationContext:(id)a4
{
  v70 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v59 = a4;
  v53 = v6;
  v7 = [v6 momentNodesSortedByDate];
  v51 = [MEMORY[0x277CBEB18] array];
  v8 = [v7 count];
  v50 = self;
  v52 = [(PGManager *)self photoLibrary];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v64 objects:v69 count:16];
  if (v9)
  {
    v10 = v9;
    v49 = v8;
    v11 = 0;
    v12 = 0;
    v13 = off_27887C000;
    v57 = *v65;
    v14 = 0.0;
    do
    {
      v15 = 0;
      v54 = v10;
      do
      {
        if (*v65 != v57)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v64 + 1) + 8 * v15);
        v17 = [objc_alloc(v13[39]) initWithMomentNode:v16 type:0 titleGenerationContext:v59];
        v18 = [v17 title];
        v19 = [v18 stringValue];

        v20 = [v17 subtitle];
        v21 = [v20 stringValue];

        v22 = [(__CFString *)v19 length];
        if ([(__CFString *)v19 length]> 0x18)
        {
          ++v12;
        }

        if ([v16 isInteresting])
        {
          v23 = [v53 momentForMomentNode:v16 inPhotoLibrary:v52];
          v24 = [(PGManager *)v50 _dateFormatter];
          v25 = [v23 startDate];
          [v24 stringFromDate:v25];
          v26 = v56 = v12;

          v27 = [MEMORY[0x277CBEB38] dictionary];
          v28 = [v23 localizedTitle];
          v29 = v28;
          if (v28)
          {
            v30 = v28;
          }

          else
          {
            v30 = @"N/A";
          }

          [v27 setObject:v30 forKeyedSubscript:@"assetCollectionTitle"];

          v13 = off_27887C000;
          if (v26)
          {
            v31 = v26;
          }

          else
          {
            v31 = @"N/A";
          }

          [v27 setObject:v31 forKeyedSubscript:@"assetCollectionStartDate"];
          if (v19)
          {
            v32 = v19;
          }

          else
          {
            v32 = &stru_2843F5C58;
          }

          [v27 setObject:v32 forKeyedSubscript:@"graphMomentTitle"];
          if (v21)
          {
            v33 = v21;
          }

          else
          {
            v33 = &stru_2843F5C58;
          }

          [v27 setObject:v33 forKeyedSubscript:@"graphMomentSubtitle"];
          [v51 addObject:v27];

          v10 = v54;
          ++v11;
          v12 = v56;
        }

        v14 = v14 + v22;

        ++v15;
      }

      while (v10 != v15);
      v10 = [obj countByEnumeratingWithState:&v64 objects:v69 count:16];
    }

    while (v10);
    v34 = v12;
    v8 = v49;
  }

  else
  {
    v11 = 0;
    v14 = 0.0;
    v34 = 0.0;
  }

  if (v8)
  {
    v14 = v14 / v8;
    v35 = ((1.0 - (v34 / v8)) * 100.0);
  }

  else
  {
    v35 = 0.0;
  }

  v36 = [MEMORY[0x277CCAB68] stringWithFormat:@"\n\nInteresting Moment Titles (%lu):\nAverage #characters: %f, %.f%% <= %lu characters\n", v11, v14, *&v35, 24];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v58 = v51;
  v37 = [v58 countByEnumeratingWithState:&v60 objects:v68 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v61;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v61 != v39)
        {
          objc_enumerationMutation(v58);
        }

        v41 = *(*(&v60 + 1) + 8 * i);
        v42 = [v41 objectForKeyedSubscript:@"assetCollectionTitle"];
        v43 = [v41 objectForKeyedSubscript:@"graphMomentTitle"];
        v44 = [v41 objectForKeyedSubscript:@"graphMomentSubtitle"];
        v45 = [v42 length];
        v46 = [v41 objectForKeyedSubscript:@"assetCollectionStartDate"];
        [v36 appendFormat:@"\n\tMoment: %@ (#%lu, %@)\n\t\ttitle: %@ (#%lu)\n\t\tsubtitle: %@ (#%lu)\n", v42, v45, v46, v43, objc_msgSend(v43, "length"), v44, objc_msgSend(v44, "length")];
      }

      v38 = [v58 countByEnumeratingWithState:&v60 objects:v68 count:16];
    }

    while (v38);
  }

  v47 = *MEMORY[0x277D85DE8];

  return v36;
}

- (id)_highlightTitleStatisticsWithGraph:(id)a3 titleGenerationContext:(id)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v43 = a4;
  v40 = v5;
  v6 = [v5 dayHighlightNodesSortedByDate];
  v7 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v7 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v8 = [MEMORY[0x277CBEBB0] timeZoneWithAbbreviation:@"GMT"];
  [v7 setTimeZone:v8];

  v44 = [MEMORY[0x277CCAB68] stringWithFormat:@"\n\nHighlight Titles (%lu):", objc_msgSend(v6, "count")];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v50;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v50 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v49 + 1) + 8 * i);
        v14 = [[PGHighlightTitleGenerator alloc] initWithCollection:v13 curatedAssetCollection:0 keyAsset:0 createVerboseTitle:0 titleGenerationContext:v43];
        v15 = [(PGHighlightTitleGenerator *)v14 titleTuple];
        v16 = [v15 title];
        v17 = [v16 stringValue];

        v18 = [v13 localStartDate];
        v19 = [v7 stringFromDate:v18];

        v20 = [v13 localEndDate];
        v21 = [v7 stringFromDate:v20];

        v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n\t highlight:\t[%@ - %@]", v19, v21];
        [v44 appendFormat:@"%@ \ttitle:\t%@", v22, v17];
      }

      v10 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v10);
  }

  v23 = [v40 highlightGroupNodesSortedByDate];
  [v44 appendFormat:@"\n\nHighlight Group Titles (%lu):", objc_msgSend(v23, "count")];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v41 = v23;
  v24 = [v41 countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v46;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v46 != v26)
        {
          objc_enumerationMutation(v41);
        }

        v28 = *(*(&v45 + 1) + 8 * j);
        v29 = [[PGHighlightTitleGenerator alloc] initWithCollection:v28 curatedAssetCollection:0 keyAsset:0 createVerboseTitle:0 titleGenerationContext:v43];
        v30 = [(PGHighlightTitleGenerator *)v29 titleTuple];
        v31 = [v30 title];
        v32 = [v31 stringValue];

        v33 = [v28 localStartDate];
        v34 = [v7 stringFromDate:v33];

        v35 = [v28 localEndDate];
        v36 = [v7 stringFromDate:v35];

        v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n\t highlight:\t[%@ - %@]", v34, v36];
        [v44 appendFormat:@"%@ \ttitle:\t%@", v37, v32];
      }

      v25 = [v41 countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v25);
  }

  v38 = *MEMORY[0x277D85DE8];

  return v44;
}

- (id)_stringDescriptionForPublicEventsWithGraph:(id)a3 verbose:(BOOL)a4
{
  v102 = a4;
  v142[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v5 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v6 = [MEMORY[0x277CBEBB0] timeZoneWithAbbreviation:@"GMT"];
  v103 = v5;
  [v5 setTimeZone:v6];

  v80 = v4;
  v7 = [v4 nodesForLabel:@"PublicEvent" domain:900];
  v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"name" ascending:1];
  v142[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v142 count:1];
  v79 = v7;
  v10 = [v7 sortedArrayUsingDescriptors:v9];

  v101 = [MEMORY[0x277CBEB58] set];
  v107 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v86 = [MEMORY[0x277CBEB38] dictionary];
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  obj = v10;
  v11 = [obj countByEnumeratingWithState:&v128 objects:v141 count:16];
  if (v11)
  {
    v12 = v11;
    v108 = *v129;
    do
    {
      v13 = 0;
      v14 = sel_localizedCompare_;
      do
      {
        if (*v129 != v108)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v128 + 1) + 8 * v13);
        v16 = [v15 categories];
        v17 = v14;
        v18 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:0 ascending:1 selector:v14];
        v140 = v18;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v140 count:1];
        v20 = [v16 sortedArrayUsingDescriptors:v19];

        if ([v20 count])
        {
          v21 = [v20 firstObject];
        }

        else
        {
          v21 = @"No category";
        }

        v22 = [v86 objectForKeyedSubscript:v21];
        if (!v22)
        {
          v22 = [MEMORY[0x277CBEB38] dictionary];
          [v86 setObject:v22 forKeyedSubscript:v21];
        }

        v23 = [v15 businessNode];
        v24 = [v23 name];
        v25 = v24;
        v26 = @"No business";
        if (v24)
        {
          v26 = v24;
        }

        v27 = v26;

        v28 = [v22 objectForKeyedSubscript:v27];
        if (!v28)
        {
          v28 = [MEMORY[0x277CBEB58] set];
          [v22 setObject:v28 forKeyedSubscript:v27];
        }

        [v28 addObject:v15];

        ++v13;
        v14 = v17;
      }

      while (v12 != v13);
      v12 = [obj countByEnumeratingWithState:&v128 objects:v141 count:16];
    }

    while (v12);
  }

  else
  {
    v14 = sel_localizedCompare_;
  }

  v29 = [v86 allKeys];
  v30 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:0 ascending:1 selector:v14];
  v139 = v30;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v139 count:1];
  v32 = [v29 sortedArrayUsingDescriptors:v31];

  v33 = [(PGManager *)self publicEventManager];
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  v81 = v32;
  v84 = [v81 countByEnumeratingWithState:&v124 objects:v138 count:16];
  if (v84)
  {
    v83 = *v125;
    v95 = v14;
    v100 = v33;
    do
    {
      v34 = 0;
      do
      {
        if (*v125 != v83)
        {
          objc_enumerationMutation(v81);
        }

        v85 = v34;
        v35 = *(*(&v124 + 1) + 8 * v34);
        v36 = [v35 stringByReplacingOccurrencesOfString:@"GEOSpatialEventLookupCategory" withString:&stru_2843F5C58];
        [v107 appendFormat:@"[%@]\n", v36];

        v89 = [v86 objectForKeyedSubscript:v35];
        v37 = [v89 allKeys];
        v38 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:0 ascending:1 selector:v14];
        v137 = v38;
        v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v137 count:1];
        v40 = [v37 sortedArrayUsingDescriptors:v39];

        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v87 = v40;
        v90 = [v87 countByEnumeratingWithState:&v120 objects:v136 count:16];
        if (v90)
        {
          v88 = *v121;
          do
          {
            v41 = 0;
            do
            {
              if (*v121 != v88)
              {
                objc_enumerationMutation(v87);
              }

              v92 = v41;
              v42 = *(*(&v120 + 1) + 8 * v41);
              [v107 appendFormat:@"\t%@\n", v42];
              v43 = [v89 objectForKeyedSubscript:v42];
              v44 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"name" ascending:1];
              v135 = v44;
              v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v135 count:1];
              v91 = v43;
              v46 = [v43 sortedArrayUsingDescriptors:v45];

              v118 = 0u;
              v119 = 0u;
              v116 = 0u;
              v117 = 0u;
              v96 = v46;
              v106 = [v96 countByEnumeratingWithState:&v116 objects:v134 count:16];
              if (v106)
              {
                v104 = *v117;
                do
                {
                  for (i = 0; i != v106; ++i)
                  {
                    if (*v117 != v104)
                    {
                      objc_enumerationMutation(v96);
                    }

                    v48 = *(*(&v116 + 1) + 8 * i);
                    v49 = [v33 cachedPublicEventsForMuid:{objc_msgSend(v48, "muid")}];
                    if (![v49 count])
                    {
                      v50 = [v48 muid];
                      v51 = [v48 keywordDescription];
                      [v107 appendFormat:@"\t\t! Cannot find event %lu in cache: %@\n", v50, v51];
                    }

                    v52 = [MEMORY[0x277CBEB58] set];
                    v53 = [MEMORY[0x277CBEB18] array];
                    v54 = [v48 collection];
                    v55 = [v54 momentNodes];
                    v110[0] = MEMORY[0x277D85DD0];
                    v110[1] = 3221225472;
                    v110[2] = __71__PGManager_Debug___stringDescriptionForPublicEventsWithGraph_verbose___block_invoke;
                    v110[3] = &unk_278885A68;
                    v111 = v101;
                    v112 = v103;
                    v56 = v53;
                    v113 = v56;
                    v109 = v49;
                    v114 = v109;
                    v57 = v52;
                    v115 = v57;
                    [v55 enumerateNodesUsingBlock:v110];

                    [v56 sortUsingSelector:v14];
                    v58 = [v56 componentsJoinedByString:{@", "}];
                    v59 = v58;
                    if (v102)
                    {
                      v99 = v58;
                      v60 = [v48 localizedCategories];
                      v61 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:0 ascending:1 selector:v14];
                      v133 = v61;
                      v62 = [MEMORY[0x277CBEA60] arrayWithObjects:&v133 count:1];
                      v63 = [v60 sortedArrayUsingDescriptors:v62];

                      v64 = [v48 performers];
                      v65 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:0 ascending:1 selector:v14];
                      v132 = v65;
                      v66 = [MEMORY[0x277CBEA60] arrayWithObjects:&v132 count:1];
                      v67 = [v64 sortedArrayUsingDescriptors:v66];

                      v98 = [v63 componentsJoinedByString:{@", "}];
                      v68 = [v67 componentsJoinedByString:{@", "}];
                      v69 = [v57 allObjects];
                      v97 = [v69 componentsJoinedByString:&stru_2843F5C58];

                      v70 = [v48 expectedAttendance];
                      v71 = v70;
                      v72 = @"N/A";
                      if (v70 && v70 != 0x7FFFFFFFFFFFFFFFLL)
                      {
                        v94 = [MEMORY[0x277CCABB0] numberWithInteger:v70];
                        v93 = [v94 stringValue];
                        v72 = v93;
                      }

                      v73 = v72;
                      if (v71 && v71 != 0x7FFFFFFFFFFFFFFFLL)
                      {
                      }

                      v74 = [v48 name];
                      v75 = v99;
                      [v107 appendFormat:@"\t\t%@ %@\n\t\t\tattendance %@, \n\t\t\tcategories: %@, \n\t\t\tperformers: %@ -> %@ \n", v74, v97, v73, v98, v68, v99];

                      v14 = v95;
                    }

                    else
                    {
                      v63 = [v48 name];
                      [v107 appendFormat:@"\t\t%@ -> %@ \n", v63, v59];
                      v75 = v59;
                    }

                    v33 = v100;
                  }

                  v106 = [v96 countByEnumeratingWithState:&v116 objects:v134 count:16];
                }

                while (v106);
              }

              v41 = v92 + 1;
            }

            while (v92 + 1 != v90);
            v90 = [v87 countByEnumeratingWithState:&v120 objects:v136 count:16];
          }

          while (v90);
        }

        v34 = v85 + 1;
      }

      while (v85 + 1 != v84);
      v84 = [v81 countByEnumeratingWithState:&v124 objects:v138 count:16];
    }

    while (v84);
  }

  v76 = [MEMORY[0x277CCACA8] stringWithFormat:@"\nPublic Events: %lu, Moments %lu\n%@", objc_msgSend(v79, "count"), objc_msgSend(v101, "count"), v107];

  v77 = *MEMORY[0x277D85DE8];

  return v76;
}

void __71__PGManager_Debug___stringDescriptionForPublicEventsWithGraph_verbose___block_invoke(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) addObject:v3];
  v4 = *(a1 + 40);
  v5 = [v3 localStartDate];
  v6 = [v4 stringFromDate:v5];

  v7 = *(a1 + 40);
  v8 = [v3 localEndDate];
  v9 = [v7 stringFromDate:v8];

  v10 = *(a1 + 48);
  v11 = MEMORY[0x277CCACA8];
  v12 = [v3 uuid];
  v32 = v9;
  v33 = v6;
  v13 = [v11 stringWithFormat:@"\n\t\t\tmoment: [%@ - %@] | %@", v6, v9, v12];
  [v10 addObject:v13];

  v14 = [v3 universalStartDate];
  v34 = v3;
  v30 = [v3 universalEndDate];
  v31 = v14;
  v15 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v14 endDate:v30];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v16 = *(a1 + 56);
  v17 = [v16 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v36;
    do
    {
      v20 = 0;
      do
      {
        if (*v36 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v35 + 1) + 8 * v20) universalDateIntervalIncludingTime];
        if ([v15 intersectsDateInterval:v21])
        {
          v22 = *(a1 + 40);
          v23 = [v21 startDate];
          v24 = [v22 stringFromDate:v23];

          v25 = *(a1 + 40);
          v26 = [v21 endDate];
          v27 = [v25 stringFromDate:v26];

          v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@ - %@]", v24, v27];
          [*(a1 + 64) addObject:v28];
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v18);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (id)_poiStatisticsWithGraph:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v4 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v5 = [MEMORY[0x277CBEBB0] timeZoneWithAbbreviation:@"GMT"];
  [v4 setTimeZone:v5];

  v6 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v7 = [v3 poiNodes];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __44__PGManager_Debug___poiStatisticsWithGraph___block_invoke;
  v17 = &unk_278885EC0;
  v20 = &v21;
  v8 = v6;
  v18 = v8;
  v9 = v4;
  v19 = v9;
  [v7 enumerateNodesUsingBlock:&v14];
  v10 = MEMORY[0x277CCACA8];
  v11 = [v7 count];
  v12 = [v10 stringWithFormat:@"\nPOI: %lu, Moments: %lu\n%@", v11, v22[3], v8, v14, v15, v16, v17];

  _Block_object_dispose(&v21, 8);

  return v12;
}

void __44__PGManager_Debug___poiStatisticsWithGraph___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 collection];
  v5 = [v4 momentNodes];

  *(*(*(a1 + 48) + 8) + 24) += [v5 count];
  v6 = [v3 label];

  [*(a1 + 32) appendFormat:@"\n%@: %lu\n", v6, objc_msgSend(v5, "count")];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__PGManager_Debug___poiStatisticsWithGraph___block_invoke_2;
  v7[3] = &unk_278888B78;
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  [v5 enumerateNodesUsingBlock:v7];
}

void __44__PGManager_Debug___poiStatisticsWithGraph___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 localStartDate];
  v9 = [v3 stringFromDate:v5];

  v6 = *(a1 + 32);
  v7 = [v4 localEndDate];

  v8 = [v6 stringFromDate:v7];

  [*(a1 + 40) appendFormat:@"\tmoment:\t[%@ - %@]\n", v9, v8];
}

void __109__PGManager_Debug___stringDescriptionForBusinessItemsWithGraph_includingInferredThroughPublicEvents_verbose___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = a2;
  v5 = a3;
  [*(a1 + 32) addObject:v5];
  v6 = *(a1 + 40);
  v7 = [v5 localStartDate];
  v8 = [v6 stringFromDate:v7];

  v9 = *(a1 + 40);
  v10 = [v5 localEndDate];
  v11 = [v9 stringFromDate:v10];

  if (*(a1 + 56) == 1)
  {
    v12 = [v32 universalStartDate];
    v31 = v12;
    if (v12)
    {
      v13 = [*(a1 + 40) stringFromDate:v12];
    }

    else
    {
      v13 = 0;
    }

    v15 = [v32 universalEndDate];
    if (v15)
    {
      v16 = [*(a1 + 40) stringFromDate:v15];
    }

    else
    {
      v16 = 0;
    }

    v17 = [v32 hasRoutineInfo];
    v18 = @"location cluster";
    if (v17)
    {
      v18 = @"routine";
    }

    v19 = v18;
    v29 = v16;
    v30 = v13;
    if (v13)
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ - %@", v13, v16];
    }

    else
    {
      v20 = @"N/A";
    }

    v21 = *(a1 + 40);
    v22 = [v5 universalStartDate];
    v23 = [v21 stringFromDate:v22];

    v24 = *(a1 + 40);
    v25 = [v5 universalEndDate];
    v26 = [v24 stringFromDate:v25];

    v27 = MEMORY[0x277CCACA8];
    [v32 confidence];
    v14 = [v27 stringWithFormat:@"\n\t\tmoment:\t[%@ - %@], \n\t\t\tconfidence %.2f, \n\t\t\tmoment (utc): [%@ - %@], \n\t\t\t%@ visit (utc): [%@]", v8, v11, v28, v23, v26, v19, v20];
  }

  else
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n\t\tmoment:\t[%@ - %@]", v8, v11];
  }

  [*(a1 + 48) addObject:v14];
}

- (id)_stringDescriptionForLanguagesWithGraph:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [a3 inferredUserLocales];
  v4 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v16 + 1) + 8 * i) localeIdentifier];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v11 = MEMORY[0x277CCACA8];
  v12 = [v4 componentsJoinedByString:{@", "}];
  v13 = [v11 stringWithFormat:@"\nUser Languages: %@", v12];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_stringDescriptionForLocationsWithGraph:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __60__PGManager_Debug___stringDescriptionForLocationsWithGraph___block_invoke;
  v27[3] = &unk_278885E70;
  v5 = v4;
  v28 = v5;
  v20 = v3;
  [v3 enumerateNodesWithLabel:@"City" domain:200 usingBlock:v27];
  v6 = [v5 allKeys];
  v7 = [v6 sortedArrayUsingSelector:sel_compare_];

  v8 = [MEMORY[0x277CCAB68] string];
  v21 = [MEMORY[0x277CBEB18] array];
  [v8 appendString:@"CITIES: \n\n"];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = [v5 objectForKeyedSubscript:v13];
        v15 = [v5 objectForKeyedSubscript:v13];
        v16 = [v15 allObjects];
        v17 = [v16 componentsJoinedByString:@"\n\t"];
        [v8 appendFormat:@"%@\n\t%@\n", v13, v17];

        if ([v14 count] >= 2)
        {
          [v21 addObject:v13];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v10);
  }

  [v8 appendString:@"POTIENTIAL DUPLICATES: \n\n"];
  [v8 appendFormat:@"%@", v21];

  v18 = *MEMORY[0x277D85DE8];

  return v8;
}

void __60__PGManager_Debug___stringDescriptionForLocationsWithGraph___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = [v3 fullname];
  v4 = [v3 collection];
  v5 = [v4 addressNodes];
  v6 = [v5 count];

  v7 = [v3 name];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu: %@", v6, v11];
  v9 = [*(a1 + 32) objectForKeyedSubscript:v7];
  if (v9)
  {
    v10 = v9;
    [v9 addObject:v8];
  }

  else
  {
    v10 = [MEMORY[0x277CBEB58] setWithObject:v8];
    [*(a1 + 32) setObject:v10 forKeyedSubscript:v7];
  }
}

- (id)_stringDescriptionForDisambiguatedPOIsInMomentNodes:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v4 = [MEMORY[0x277CCAB68] string];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v6)
  {
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __72__PGManager_Debug___stringDescriptionForDisambiguatedPOIsInMomentNodes___block_invoke;
        v13[3] = &unk_278885E48;
        v16 = &v21;
        v14 = v4;
        v15 = v9;
        [v9 enumeratePOIEdgesAndNodesUsingBlock:v13];
      }

      v6 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v6);
  }

  v10 = [MEMORY[0x277CCAB68] stringWithFormat:@"\n\nDisambiguated POI Info: %lu\n%@", v22[3], v4];

  _Block_object_dispose(&v21, 8);
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __72__PGManager_Debug___stringDescriptionForDisambiguatedPOIsInMomentNodes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  if ([a2 poiIsImproved])
  {
    ++*(*(*(a1 + 48) + 8) + 24);
    v5 = *(a1 + 32);
    v6 = [v8 label];
    v7 = [*(a1 + 40) name];
    [v5 appendFormat:@"- Improved: %@ - %@\n", v6, v7];
  }
}

- (id)_stringDescriptionForDisambiguatedLocationsWithGraph:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v4 = [v3 infoNode];
  v5 = v4;
  if (v4)
  {
    [v4 routineInfo];
  }

  else
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
  }

  v6 = @"NO";
  if (v46)
  {
    v6 = @"YES";
  }

  v7 = [MEMORY[0x277CCAB68] stringWithFormat:@"\n\nDisambiguated Locations Info:\nRoutine available %@ #LOI %lu, #Visits %lu, Pinning %.2f\n#Requests %lu, #timeMatches %lu, #closeByLocationMatches %lu, #remoteLocationMatches %lu\n\n", v6, *(&v46 + 1), v47, *(&v49 + 1), v49, *(&v47 + 1), v48];
  v8 = [MEMORY[0x277CBEB38] dictionary];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __73__PGManager_Debug___stringDescriptionForDisambiguatedLocationsWithGraph___block_invoke;
  v43[3] = &unk_278885E20;
  v9 = v7;
  v44 = v9;
  v10 = v8;
  v45 = v10;
  v31 = v3;
  [v3 enumerateNodesWithLabel:@"Address" domain:200 usingBlock:v43];
  v34 = v10;
  v11 = [v10 allKeys];
  v12 = [v11 sortedArrayUsingSelector:sel_compare_];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v12;
  v13 = [obj countByEnumeratingWithState:&v39 objects:v51 count:16];
  if (v13)
  {
    v14 = v13;
    v33 = *v40;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v40 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v16 = [v34 objectForKeyedSubscript:*(*(&v39 + 1) + 8 * i)];
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v17 = [v16 countByEnumeratingWithState:&v35 objects:v50 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v36;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v36 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v35 + 1) + 8 * j);
              v22 = [v21 sourceNode];
              [v21 photoCoordinate];
              v24 = v23;
              v26 = v25;
              v27 = [v22 name];
              [v9 appendFormat:@"- Remote: %@ {%f, %f}\n", v27, v24, v26];
            }

            v18 = [v16 countByEnumeratingWithState:&v35 objects:v50 count:16];
          }

          while (v18);
        }
      }

      v14 = [obj countByEnumeratingWithState:&v39 objects:v51 count:16];
    }

    while (v14);
  }

  [v9 appendString:@"\n"];
  v28 = v9;

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

void __73__PGManager_Debug___stringDescriptionForDisambiguatedLocationsWithGraph___block_invoke(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if ([v3 isImproved])
  {
    [v3 coordinate];
    [*(a1 + 32) appendFormat:@"- Improved: {%f, %f}\n", v5, v6];
    v7 = [v3 edgesForLabel:@"ADDRESS" domain:200];
    v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:0 ascending:1 comparator:&__block_literal_global_51594];
    v16[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    v10 = [v7 sortedArrayUsingDescriptors:v9];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __73__PGManager_Debug___stringDescriptionForDisambiguatedLocationsWithGraph___block_invoke_3;
    v14[3] = &unk_278885DD0;
    v15 = *(a1 + 32);
    [v10 enumerateObjectsUsingBlock:v14];
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__PGManager_Debug___stringDescriptionForDisambiguatedLocationsWithGraph___block_invoke_4;
  v12[3] = &unk_278885DF8;
  v13 = *(a1 + 40);
  [v3 enumerateNeighborEdgesAndNodesThroughEdgesWithLabel:@"REMOTE_ADDRESS" domain:200 usingBlock:v12];

  objc_autoreleasePoolPop(v4);
  v11 = *MEMORY[0x277D85DE8];
}

void __73__PGManager_Debug___stringDescriptionForDisambiguatedLocationsWithGraph___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 photoCoordinate];
  v5 = v4;
  v7 = v6;
  v10 = [v3 sourceNode];

  v8 = *(a1 + 32);
  v9 = [v10 name];
  [v8 appendFormat:@"\t %@ {%f, %f}\n", v9, v5, v7];
}

void __73__PGManager_Debug___stringDescriptionForDisambiguatedLocationsWithGraph___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = MEMORY[0x277CCABB0];
  [a3 timestampUTCStart];
  v6 = [v5 numberWithDouble:?];
  v7 = [*(a1 + 32) objectForKeyedSubscript:v6];
  if (!v7)
  {
    v7 = [MEMORY[0x277CBEB58] set];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
  }

  [v7 addObject:v8];
}

uint64_t __73__PGManager_Debug___stringDescriptionForDisambiguatedLocationsWithGraph___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 sourceNode];
  v6 = [v4 sourceNode];

  v7 = [v5 name];
  v8 = [v6 name];
  v9 = [v7 compare:v8];

  return v9;
}

- (id)_stringDescriptionForMeNode:(id)a3
{
  v3 = MEMORY[0x277CCAB68];
  v4 = a3;
  v5 = [v4 localIdentifier];
  v6 = [v4 name];
  v7 = [v4 contactIdentifier];
  v8 = [v3 stringWithFormat:@"Me node information: localIdentifier:'%@', name:'%@', contact:'%@'", v5, v6, v7];

  v9 = [MEMORY[0x277CCAB68] string];
  v10 = [MEMORY[0x277CCAB68] string];
  v11 = [MEMORY[0x277CBEB58] set];
  v12 = [MEMORY[0x277CBEB58] set];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __48__PGManager_Debug___stringDescriptionForMeNode___block_invoke;
  v20[3] = &unk_278885D88;
  v21 = v10;
  v22 = v9;
  v23 = v12;
  v24 = v11;
  v13 = v11;
  v14 = v12;
  v15 = v9;
  v16 = v10;
  [v4 enumerateHomeOrWorkAddressNodesUsingBlock:v20];

  if ([(__CFString *)v15 length])
  {
    v17 = v15;
  }

  else
  {
    v17 = @"–";
  }

  [v8 appendFormat:@"\n\tHome addresses: %@", v17];
  if ([(__CFString *)v16 length])
  {
    v18 = v16;
  }

  else
  {
    v18 = @"–";
  }

  [v8 appendFormat:@"\n\tWork addresses: %@\n\n", v18];

  return v8;
}

void __48__PGManager_Debug___stringDescriptionForMeNode___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 collection];
  v8 = [v7 streetNodes];
  v20 = [v8 anyNode];

  v9 = [v20 name];
  v10 = [v6 collection];

  v11 = [v10 cityNodes];
  v12 = [v11 anyNode];

  v13 = [v12 name];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%@, %@}", v9, v13];
  v15 = [v5 label];

  v16 = [v15 isEqualToString:@"Work"];
  v17 = 40;
  if (v16)
  {
    v17 = 32;
  }

  v18 = *(a1 + v17);
  if (([v18 containsString:v14] & 1) == 0)
  {
    if (![v18 length])
    {
      [v18 appendString:v14];
      if (!v13)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }

    [v18 appendFormat:@", %@", v14];
  }

  if (!v13)
  {
    goto LABEL_10;
  }

LABEL_7:
  v19 = 56;
  if (v16)
  {
    v19 = 48;
  }

  [*(a1 + v19) addObject:v13];
LABEL_10:
}

- (id)_stringDescriptionForPeopleEventsWithGraph:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = [v3 dictionary];
  v6 = [MEMORY[0x277CBEB38] dictionary];
  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = [MEMORY[0x277CBEB38] dictionary];
  v9 = [MEMORY[0x277CBEB38] dictionary];
  v10 = objc_alloc_init(MEMORY[0x277CCA968]);
  v11 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"GMT"];
  [v10 setTimeZone:v11];

  [v10 setDateFormat:@"yyyy-MM-dd"];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__PGManager_Debug___stringDescriptionForPeopleEventsWithGraph___block_invoke;
  aBlock[3] = &unk_278885D10;
  v12 = v5;
  v69 = v12;
  v70 = v10;
  v13 = v6;
  v71 = v13;
  v14 = v7;
  v72 = v14;
  v47 = v10;
  v15 = _Block_copy(aBlock);
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __63__PGManager_Debug___stringDescriptionForPeopleEventsWithGraph___block_invoke_2;
  v66[3] = &unk_278885D38;
  v67 = v15;
  v46 = v15;
  [v4 enumeratePersonNodesIncludingMe:1 withBlock:v66];
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __63__PGManager_Debug___stringDescriptionForPeopleEventsWithGraph___block_invoke_3;
  v63[3] = &unk_278885D60;
  v16 = v8;
  v64 = v16;
  v17 = v9;
  v65 = v17;
  [v4 enumerateEdgesWithLabel:0 domain:301 usingBlock:v63];

  v18 = [MEMORY[0x277CCAB68] stringWithFormat:@"Birthday Dates: %ld\n", objc_msgSend(v12, "count")];
  v19 = [v12 allKeys];
  v20 = [v19 sortedArrayUsingSelector:sel_localizedCompare_];

  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __63__PGManager_Debug___stringDescriptionForPeopleEventsWithGraph___block_invoke_4;
  v60[3] = &unk_278886328;
  v61 = v12;
  v21 = v18;
  v62 = v21;
  v45 = v12;
  [v20 enumerateObjectsUsingBlock:v60];
  v22 = [v16 allValues];
  v23 = [v22 valueForKeyPath:@"@unionOfArrays.self"];
  [v21 appendFormat:@"\nCelebrated Birthdays: %ld\n", objc_msgSend(v23, "count")];

  v24 = [v16 allKeys];
  v25 = [v24 sortedArrayUsingSelector:sel_localizedCompare_];

  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __63__PGManager_Debug___stringDescriptionForPeopleEventsWithGraph___block_invoke_5;
  v57[3] = &unk_278886328;
  v58 = v16;
  v26 = v21;
  v59 = v26;
  v44 = v16;
  [v25 enumerateObjectsUsingBlock:v57];
  [v26 appendFormat:@"\nPotential Birthday Dates: %ld\n", objc_msgSend(v13, "count")];
  v27 = [v13 allKeys];
  v28 = [v27 sortedArrayUsingSelector:sel_localizedCompare_];

  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __63__PGManager_Debug___stringDescriptionForPeopleEventsWithGraph___block_invoke_6;
  v54[3] = &unk_278886328;
  v55 = v13;
  v29 = v26;
  v56 = v29;
  v30 = v13;
  [v28 enumerateObjectsUsingBlock:v54];
  [v29 appendFormat:@"\nAnniversary Dates: %ld\n", objc_msgSend(v14, "count")];
  v31 = [v14 allKeys];
  v32 = [v31 sortedArrayUsingSelector:sel_localizedCompare_];

  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __63__PGManager_Debug___stringDescriptionForPeopleEventsWithGraph___block_invoke_7;
  v51[3] = &unk_278886328;
  v52 = v14;
  v33 = v29;
  v53 = v33;
  v34 = v14;
  [v32 enumerateObjectsUsingBlock:v51];
  v35 = [v17 allValues];
  v36 = [v35 valueForKeyPath:@"@unionOfArrays.self"];
  [v33 appendFormat:@"\nCelebrated Anniversaries: %ld\n", objc_msgSend(v36, "count")];

  v37 = [v17 allKeys];
  v38 = [v37 sortedArrayUsingSelector:sel_localizedCompare_];

  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __63__PGManager_Debug___stringDescriptionForPeopleEventsWithGraph___block_invoke_8;
  v48[3] = &unk_278886328;
  v49 = v17;
  v39 = v33;
  v50 = v39;
  v40 = v17;
  [v38 enumerateObjectsUsingBlock:v48];
  v41 = v50;
  v42 = v39;

  return v39;
}

void __63__PGManager_Debug___stringDescriptionForPeopleEventsWithGraph___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v13 = [v3 stringDescription];
  v4 = [v3 birthdayDateComponents];
  v5 = [v3 anniversaryDateComponents];
  v6 = [v3 potentialBirthdayDateComponents];

  if (v4)
  {
    v7 = [MEMORY[0x277D27690] dateFromComponents:v4 inTimeZone:0];
    v8 = [a1[5] stringFromDate:v7];
    [a1[4] setObject:v8 forKeyedSubscript:v13];
  }

  if (v6)
  {
    v9 = [MEMORY[0x277D27690] dateFromComponents:v6 inTimeZone:0];
    v10 = [a1[5] stringFromDate:v9];
    [a1[6] setObject:v10 forKeyedSubscript:v13];
  }

  if (v5)
  {
    v11 = [MEMORY[0x277D27690] dateFromComponents:v5 inTimeZone:0];
    v12 = [a1[5] stringFromDate:v11];
    [a1[7] setObject:v12 forKeyedSubscript:v13];
  }
}

void __63__PGManager_Debug___stringDescriptionForPeopleEventsWithGraph___block_invoke_3(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = [v16 targetNode];
  v4 = [v3 stringDescription];
  v5 = [v16 sourceNode];
  v6 = [v5 name];
  v7 = [v16 label];
  v8 = [v7 isEqualToString:@"BIRTHDAY"];

  if (v8)
  {
    v9 = 32;
LABEL_5:
    v12 = *(a1 + v9);
    goto LABEL_7;
  }

  v10 = [v16 label];
  v11 = [v10 isEqualToString:@"ANNIVERSARY"];

  if (v11)
  {
    v9 = 40;
    goto LABEL_5;
  }

  v12 = 0;
LABEL_7:
  v13 = [v12 objectForKeyedSubscript:v4];

  if (!v13)
  {
    v14 = [MEMORY[0x277CBEB18] array];
    [v12 setObject:v14 forKeyedSubscript:v4];
  }

  v15 = [v12 objectForKeyedSubscript:v4];
  [v15 addObject:v6];
}

void __63__PGManager_Debug___stringDescriptionForPeopleEventsWithGraph___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:v4];
  [*(a1 + 40) appendFormat:@"\t%@: %@\n", v4, v5];
}

void __63__PGManager_Debug___stringDescriptionForPeopleEventsWithGraph___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v8 = [v3 objectForKeyedSubscript:v4];
  v5 = [v8 sortedArrayUsingSelector:sel_localizedCompare_];
  v6 = *(a1 + 40);
  v7 = [v5 componentsJoinedByString:{@", "}];
  [v6 appendFormat:@"\t%@: %@\n", v4, v7];
}

void __63__PGManager_Debug___stringDescriptionForPeopleEventsWithGraph___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:v4];
  [*(a1 + 40) appendFormat:@"\t%@: %@\n", v4, v5];
}

void __63__PGManager_Debug___stringDescriptionForPeopleEventsWithGraph___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:v4];
  [*(a1 + 40) appendFormat:@"\t%@: %@\n", v4, v5];
}

void __63__PGManager_Debug___stringDescriptionForPeopleEventsWithGraph___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v8 = [v3 objectForKeyedSubscript:v4];
  v5 = [v8 sortedArrayUsingSelector:sel_localizedCompare_];
  v6 = *(a1 + 40);
  v7 = [v5 componentsJoinedByString:{@", "}];
  [v6 appendFormat:@"\t%@: %@\n", v4, v7];
}

- (id)_stringDescriptionForInterestingAreas:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v20 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = [v9 name];
        if (v10)
        {
          v11 = [v9 collection];
          v12 = [v11 addressNodes];
          v13 = [v12 momentNodes];

          v14 = [v13 interestingForMemoriesSubset];
          v15 = MEMORY[0x277CCACA8];
          v16 = [v9 name];
          v17 = [v15 stringWithFormat:@"\t%@: %d interesting moments (out of %d moments)\n", v16, objc_msgSend(v14, "count"), objc_msgSend(v13, "count")];
          [v20 appendString:v17];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)_stringDescriptionForInterestingCities:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v29 = objc_opt_new();
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v35;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v34 + 1) + 8 * i);
        v11 = [v10 name];
        if (v11)
        {
          v12 = [v10 collection];
          v13 = [v12 addressNodes];
          v14 = [v13 momentNodes];

          v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v14, "count")}];
          [v4 setObject:v15 forKeyedSubscript:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v7);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v5;
  v16 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v31;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v31 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v30 + 1) + 8 * j);
        v21 = MEMORY[0x277CCACA8];
        v22 = [v20 name];
        v23 = [v20 name];
        v24 = [v4 objectForKeyedSubscript:v23];
        v25 = [v21 stringWithFormat:@"\t%@: %d moments\n", v22, objc_msgSend(v24, "intValue")];
        [v29 appendString:v25];
      }

      v17 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v17);
  }

  v26 = *MEMORY[0x277D85DE8];

  return v29;
}

- (id)_stringDescriptionForUrbanCities:(id)a3
{
  v31[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v23 = objc_opt_new();
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __53__PGManager_Debug___stringDescriptionForUrbanCities___block_invoke;
  v28[3] = &unk_278885CE8;
  v5 = v4;
  v29 = v5;
  [v3 enumerateIdentifiersAsCollectionsWithBlock:v28];
  v6 = [v3 set];
  v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"name" ascending:1];
  v31[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
  v9 = [v6 sortedArrayUsingDescriptors:v8];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        v15 = MEMORY[0x277CCACA8];
        v16 = [v14 name];
        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v14, "identifier")}];
        v18 = [v5 objectForKeyedSubscript:v17];
        v19 = [v15 stringWithFormat:@"\t%@: %@ moments\n", v16, v18];
        [v23 appendString:v19];
      }

      v11 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v11);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v23;
}

void __53__PGManager_Debug___stringDescriptionForUrbanCities___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 addressNodes];
  v6 = [v5 momentNodes];
  v7 = [v6 count];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
  v8 = *(a1 + 32);
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  [v8 setObject:v10 forKeyedSubscript:v9];
}

- (id)_dateFormatter
{
  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v2 setDateStyle:1];
  [v2 setTimeStyle:0];
  v3 = [MEMORY[0x277CBEBB0] timeZoneWithAbbreviation:@"GMT"];
  [v2 setTimeZone:v3];

  return v2;
}

- (id)_stringDescriptionForMeaningfulEvents:(id)a3 isTrip:(BOOL)a4 forDiagnostics:(BOOL)a5 titleGenerationContext:(id)a6
{
  v50 = a4;
  v51 = a5;
  v95 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v54 = a6;
  v52 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v52 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v8 = [MEMORY[0x277CBEBB0] timeZoneWithAbbreviation:@"GMT"];
  [v52 setTimeZone:v8];

  v55 = objc_opt_new();
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  obj = v7;
  v53 = [obj countByEnumeratingWithState:&v87 objects:v94 count:16];
  if (v53)
  {
    v49 = *v88;
    do
    {
      v9 = 0;
      do
      {
        if (*v88 != v49)
        {
          v10 = v9;
          objc_enumerationMutation(obj);
          v9 = v10;
        }

        v56 = v9;
        v11 = *(*(&v87 + 1) + 8 * v9);
        v12 = [v11 eventCollection];
        v13 = [v12 eventMomentNodes];
        v64 = [v13 firstAndLastMomentNodes];

        v63 = [v64 firstObject];
        v62 = [v64 lastObject];
        v81 = 0;
        v82 = &v81;
        v83 = 0x3032000000;
        v84 = __Block_byref_object_copy__51600;
        v85 = __Block_byref_object_dispose__51601;
        v86 = 0;
        v75 = 0;
        v76 = &v75;
        v77 = 0x3032000000;
        v78 = __Block_byref_object_copy__51600;
        v79 = __Block_byref_object_dispose__51601;
        v80 = 0;
        v74[0] = MEMORY[0x277D85DD0];
        v74[1] = 3221225472;
        v74[2] = __103__PGManager_Debug___stringDescriptionForMeaningfulEvents_isTrip_forDiagnostics_titleGenerationContext___block_invoke;
        v74[3] = &unk_278885C98;
        v74[4] = &v81;
        [v63 enumerateDateNodesUsingBlock:v74];
        v73[0] = MEMORY[0x277D85DD0];
        v73[1] = 3221225472;
        v73[2] = __103__PGManager_Debug___stringDescriptionForMeaningfulEvents_isTrip_forDiagnostics_titleGenerationContext___block_invoke_2;
        v73[3] = &unk_278885C98;
        v73[4] = &v75;
        [v62 enumerateDateNodesUsingBlock:v73];
        v14 = [PGCollectionTitleGenerator alloc];
        v15 = [v11 enrichableEvent];
        v60 = [(PGCollectionTitleGenerator *)v14 initWithCollection:v15 titleGenerationContext:v54];

        [(PGCollectionTitleGenerator *)v60 setForDiagnostics:v51];
        v16 = [(PGCollectionTitleGenerator *)v60 titleTuple];
        v17 = [v16 title];
        v18 = [v17 stringValue];
        v57 = [v18 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_2843F5C58];

        v19 = [v16 subtitle];
        v61 = [v19 stringValue];

        v59 = [v63 localStartDate];
        v58 = [v62 localEndDate];
        v20 = [v52 stringFromDate:v59];
        v21 = [v52 stringFromDate:v58];
        if (v50)
        {
          [v76[5] timeIntervalSinceDate:v82[5]];
          v23 = vcvtpd_u64_f64(v22 / 86400.0) + 1;
          if (v23 <= 1)
          {
            v24 = &stru_2843F5C58;
          }

          else
          {
            v24 = @"s";
          }

          [v55 appendFormat:@"\t[%@ - %@] Legacy title: %@, %@ (%lu day%@)", v20, v21, v57, v61, v23, v24];
          v25 = [v11 highlightGroupNode];
          v26 = v25;
          if (v25)
          {
            v47 = [v25 collection];
            v48 = [v47 tripFeatureNodes];
            v27 = objc_alloc_init(MEMORY[0x277CCAB68]);
            v71[0] = 0;
            v71[1] = v71;
            v71[2] = 0x2020000000;
            v72 = 1;
            v68[0] = MEMORY[0x277D85DD0];
            v68[1] = 3221225472;
            v68[2] = __103__PGManager_Debug___stringDescriptionForMeaningfulEvents_isTrip_forDiagnostics_titleGenerationContext___block_invoke_3;
            v68[3] = &unk_278888358;
            v28 = v27;
            v69 = v28;
            v70 = v71;
            [v48 enumerateIdentifiersAsCollectionsWithBlock:v68];
            v29 = [v54 locationHelper];
            v67 = 0;
            v30 = [PGTripTitleGenerator titleForTripNodeAsCollection:v47 locationHelper:v29 error:&v67];
            v46 = v67;

            v31 = objc_alloc_init(MEMORY[0x277CCAB68]);
            v32 = v31;
            if (v30)
            {
              [v31 appendFormat:@"\n\t\tCurrent title: %@, %@ (%lu day%@)", v30, v61, v23, v24];
            }

            else
            {
              v40 = MEMORY[0x277D86220];
              v41 = MEMORY[0x277D86220];
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                v42 = [v46 localizedDescription];
                *buf = 138412290;
                v93 = v42;
                _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);

                v40 = MEMORY[0x277D86220];
              }
            }

            if (v28)
            {
              [v32 appendFormat:@", with featured location nodes: [%@]", v28];
            }

            [v55 appendString:v32];

            _Block_object_dispose(v71, 8);
          }

          [v55 appendString:@"\n"];
        }

        else
        {
          v26 = [v11 meaningfulEvent];
          if (v26)
          {
            v33 = [MEMORY[0x277CBEB58] set];
            v65[0] = MEMORY[0x277D85DD0];
            v65[1] = 3221225472;
            v65[2] = __103__PGManager_Debug___stringDescriptionForMeaningfulEvents_isTrip_forDiagnostics_titleGenerationContext___block_invoke_1181;
            v65[3] = &unk_278885CC0;
            v34 = v33;
            v66 = v34;
            [v26 enumerateMeaningEdgesAndNodesUsingBlock:v65];
            v35 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:0 ascending:1 selector:sel_localizedCompare_];
            v91 = v35;
            v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v91 count:1];
            v37 = [v34 sortedArrayUsingDescriptors:v36];

            v38 = [v11 UUID];
            v39 = [v37 componentsJoinedByString:@" "];
            [v55 appendFormat:@"\t[%@ - %@] %@, %@, %@ %@\n", v20, v21, v38, v57, v61, v39];
          }

          else
          {
            [v55 appendFormat:@"\t[%@ - %@] %@, %@ Unknown event, not a trip nor a meaningful event\n", v20, v21, v57, v61];
            v26 = 0;
          }
        }

        _Block_object_dispose(&v75, 8);
        _Block_object_dispose(&v81, 8);

        v9 = v56 + 1;
      }

      while (v53 != v56 + 1);
      v53 = [obj countByEnumeratingWithState:&v87 objects:v94 count:16];
    }

    while (v53);
  }

  v43 = *MEMORY[0x277D85DE8];

  return v55;
}

void __103__PGManager_Debug___stringDescriptionForMeaningfulEvents_isTrip_forDiagnostics_titleGenerationContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 localDate];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  v6 = v3;
  if (v5)
  {
    if ([v5 compare:?] != 1)
    {
      goto LABEL_5;
    }

    v4 = *(*(a1 + 32) + 8);
    v3 = v6;
  }

  objc_storeStrong((v4 + 40), v3);
LABEL_5:
}

void __103__PGManager_Debug___stringDescriptionForMeaningfulEvents_isTrip_forDiagnostics_titleGenerationContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 localDate];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  obj = v3;
  if (v5)
  {
    if ([v5 compare:v3] != -1)
    {
      goto LABEL_5;
    }

    v4 = *(*(a1 + 32) + 8);
    v3 = obj;
  }

  objc_storeStrong((v4 + 40), v3);
LABEL_5:
}

void __103__PGManager_Debug___stringDescriptionForMeaningfulEvents_isTrip_forDiagnostics_titleGenerationContext___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 anyNode];
  v8 = v4;
  v5 = *(a1 + 32);
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v6 = @"%@";
  }

  else
  {
    v6 = @", %@";
  }

  v7 = [v4 name];
  [v5 appendFormat:v6, v7];

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void __103__PGManager_Debug___stringDescriptionForMeaningfulEvents_isTrip_forDiagnostics_titleGenerationContext___block_invoke_1181(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v12 = [a3 label];
  v6 = *(a1 + 32);
  v7 = MEMORY[0x277CCACA8];
  if ([v5 isReliable])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v5 confidence];
  v10 = v9;

  v11 = [v7 stringWithFormat:@"(%@, reliable %@, %.2f)", v12, v8, v10];
  [v6 addObject:v11];
}

- (id)_stringDescriptionForSocialGroups:(id)a3 includeImportance:(BOOL)a4
{
  v4 = a4;
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [v11 collection];
        v13 = [v12 memberNodes];

        if (v4)
        {
          [v11 importance];
          [v6 appendFormat:@"\t[%.4f] ", v14];
        }

        v15 = [v13 names];
        v16 = [v15 componentsJoinedByString:{@", "}];
        [v6 appendString:v16];

        [v6 appendString:@"\n"];
      }

      v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_highlightEstimatesStatisticsWithCurationContext:(id)a3
{
  v4 = a3;
  v5 = [(PGManager *)self workingContext];
  v6 = [[PGHighlightStatisticsEstimator alloc] initWithWorkingContext:v5];
  v7 = [(PGHighlightStatisticsEstimator *)v6 highlightEstimatesDescriptionWithCurationContext:v4];

  return v7;
}

- (id)_peopleNameBiologicalSexStatisticsWithGraph:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v27 = [MEMORY[0x277CBEB18] array];
  v26 = [MEMORY[0x277CBEB18] array];
  v6 = objc_alloc(MEMORY[0x277CBEB58]);
  v7 = [v4 nodesForLabel:@"Contact" domain:303];
  v8 = [v6 initWithSet:v7];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        v15 = [v14 contactIdentifier];
        v16 = [(PGManager *)self _sexHintForGivenNameOfContactForIdentifier:v15 inGraph:v4];

        v17 = [v14 name];
        if (!v16)
        {
          v18 = v26;
LABEL_11:
          [v18 addObject:v17];
          goto LABEL_12;
        }

        v18 = v5;
        if (v16 == 1)
        {
          goto LABEL_11;
        }

        v18 = v27;
        if (v16 == 2)
        {
          goto LABEL_11;
        }

LABEL_12:
      }

      v11 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v11);
  }

  v19 = MEMORY[0x277CCACA8];
  v20 = [v5 componentsJoinedByString:@"\n\t\t"];
  v21 = [v27 componentsJoinedByString:@"\n\t\t"];
  v22 = [v26 componentsJoinedByString:@"\n\t\t"];
  v23 = [v19 stringWithFormat:@"BiologicalSex from Name\n\tFemale BiologicalSex Type:\n\t\t%@\n\tMale BiologicalSex Type:\n\t\t%@\n\tUndefined BiologicalSex Type:\n\t\t%@\n", v20, v21, v22];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (unint64_t)_sexHintForGivenNameOfContactForIdentifier:(id)a3 inGraph:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PGManager *)self serviceManager];
  v9 = [v8 personForIdentifier:v7];

  v10 = [v6 inferredUserLocales];

  v11 = [v8 sexHintForPerson:v9 usingLocales:v10];
  return v11;
}

- (id)_peopleVisionBiologicalSexStatisticsWithGraph:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [v3 personNodesIncludingMe:1];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        v13 = [v12 stringDescription];
        v14 = [v12 sex];
        if (!v14)
        {
          v15 = v6;
LABEL_11:
          [v15 addObject:v13];
          goto LABEL_12;
        }

        v15 = v4;
        if (v14 == 1)
        {
          goto LABEL_11;
        }

        v15 = v5;
        if (v14 == 2)
        {
          goto LABEL_11;
        }

LABEL_12:
      }

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  v16 = MEMORY[0x277CCACA8];
  v17 = [v4 componentsJoinedByString:@"\n\t\t"];
  v18 = [v5 componentsJoinedByString:@"\n\t\t"];
  v19 = [v6 componentsJoinedByString:@"\n\t\t"];
  v20 = [v16 stringWithFormat:@"BiologicalSex from Vision\n\tFemale BiologicalSex Type:\n\t\t%@\n\tMale BiologicalSex Type:\n\t\t%@\n\tUndefined BiologicalSex Type:\n\t\t%@\n", v17, v18, v19];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)_peopleVisionAgeStatisticsWithGraph:(id)a3
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [MEMORY[0x277CBEB18] array];
  v47 = [MEMORY[0x277CBEB18] array];
  [MEMORY[0x277CBEB18] array];
  v46 = v45 = v3;
  v8 = [v3 personNodesIncludingMe:1];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (!v9)
  {
    goto LABEL_19;
  }

  v10 = v9;
  v11 = *v49;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v49 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v48 + 1) + 8 * i);
      v14 = [v13 stringDescription];
      v15 = [v13 ageCategory];
      if (v15 > 2)
      {
        v16 = v6;
        if (v15 == 3)
        {
          goto LABEL_16;
        }

        v16 = v7;
        if (v15 == 4)
        {
          goto LABEL_16;
        }

        v16 = v47;
        if (v15 == 5)
        {
          goto LABEL_16;
        }
      }

      else
      {
        if (!v15)
        {
          v16 = v46;
LABEL_16:
          [v16 addObject:v14];
          goto LABEL_17;
        }

        v16 = v4;
        if (v15 == 1)
        {
          goto LABEL_16;
        }

        v16 = v5;
        if (v15 == 2)
        {
          goto LABEL_16;
        }
      }

LABEL_17:
    }

    v10 = [v8 countByEnumeratingWithState:&v48 objects:v52 count:16];
  }

  while (v10);
LABEL_19:
  v17 = [MEMORY[0x277CBEB18] arrayWithObject:@"None"];
  if ([v4 count])
  {
    v18 = v4;
  }

  else
  {
    v18 = v17;
  }

  v19 = v18;
  v44 = v19;

  if ([v5 count])
  {
    v20 = v5;
  }

  else
  {
    v20 = v17;
  }

  v21 = v20;
  v43 = v21;

  if ([v6 count])
  {
    v22 = v6;
  }

  else
  {
    v22 = v17;
  }

  v23 = v22;
  v42 = v23;

  if ([v7 count])
  {
    v24 = v7;
  }

  else
  {
    v24 = v17;
  }

  v25 = v24;
  v41 = v25;

  if ([v47 count])
  {
    v26 = v47;
  }

  else
  {
    v26 = v17;
  }

  v27 = v26;
  v40 = v27;

  if ([v46 count])
  {
    v28 = v46;
  }

  else
  {
    v28 = v17;
  }

  v29 = v28;

  v30 = MEMORY[0x277CCACA8];
  v31 = [v19 componentsJoinedByString:@"\n\t\t"];
  v32 = [v21 componentsJoinedByString:@"\n\t\t"];
  v33 = [v23 componentsJoinedByString:@"\n\t\t"];
  v34 = [v25 componentsJoinedByString:@"\n\t\t"];
  v35 = [v27 componentsJoinedByString:@"\n\t\t"];
  v36 = [v29 componentsJoinedByString:@"\n\t\t"];
  v37 = [v30 stringWithFormat:@"Age from Vision\n\tBaby Age Category:\n\t\t%@\n\tChild Age Category:\n\t\t%@\n\tYoung Adult Age Category:\n\t\t%@\n\tAdult Age Category:\n\t\t%@\n\tSenior Age Category:\n\t\t%@\n\tUnspecified Age Category:\n\t\t%@\n", v31, v32, v33, v34, v35, v36];

  v38 = *MEMORY[0x277D85DE8];

  return v37;
}

- (id)_oneOnOneTripsWithGraph:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 trips];
  v5 = [MEMORY[0x277CBEB58] set];
  v35 = v3;
  v6 = [v3 meNode];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v4;
  v36 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v36)
  {
    v33 = v5;
    v34 = *v49;
    do
    {
      v7 = 0;
      do
      {
        if (*v49 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v37 = v7;
        v8 = *(*(&v48 + 1) + 8 * v7);
        v39 = [MEMORY[0x277CBEB58] set];
        v38 = [MEMORY[0x277CBEB58] set];
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v9 = v8;
        v10 = [v9 countByEnumeratingWithState:&v44 objects:v53 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = 0;
          v13 = *v45;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v45 != v13)
              {
                objc_enumerationMutation(v9);
              }

              v15 = *(*(&v44 + 1) + 8 * i);
              v16 = [v15 personNodes];
              v17 = [v16 count];
              v18 = [v16 containsObject:v6];
              if (!((v17 != 1) | v18 & 1) || ((v17 == 2) & v18) != 0)
              {
                v20 = [v16 allObjects];
                [v39 addObjectsFromArray:v20];

                [v38 addObject:v15];
                v19 = 1;
              }

              else
              {
                v19 = v17 > 1;
              }

              v12 += v19;
            }

            v11 = [v9 countByEnumeratingWithState:&v44 objects:v53 count:16];
          }

          while (v11);
          v21 = v12;
          v5 = v33;
        }

        else
        {
          v21 = 0.0;
        }

        v22 = [(MAElementCollection *)[PGGraphMomentNodeCollection alloc] initWithSet:v38 graph:v35];
        v23 = [(MAElementCollection *)[PGGraphPersonNodeCollection alloc] initWithSet:v39 graph:v35];
        v24 = [PGPeopleInferencesConveniences countedPersonNodesFromMomentNodes:v22 amongPersonNodes:v23];
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v25 = [v24 countByEnumeratingWithState:&v40 objects:v52 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v41;
          do
          {
            for (j = 0; j != v26; ++j)
            {
              if (*v41 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v40 + 1) + 8 * j);
              if (([v29 isMeNode] & 1) == 0 && objc_msgSend(v24, "countForObject:", v29) / v21 >= 0.75)
              {
                [v5 addObject:v9];
              }
            }

            v26 = [v24 countByEnumeratingWithState:&v40 objects:v52 count:16];
          }

          while (v26);
        }

        v7 = v37 + 1;
      }

      while (v37 + 1 != v36);
      v36 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v36);
  }

  v30 = *MEMORY[0x277D85DE8];

  return v5;
}

- (unint64_t)_numberOfNightOutMomentsWithGraph:(id)a3
{
  v3 = [a3 momentNodesWithMeaning:8];
  v4 = [v3 count];

  return v4;
}

- (unint64_t)_numberOfFamilyHolidayMomentsWithGraph:(id)a3
{
  v3 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__PGManager_Debug___numberOfFamilyHolidayMomentsWithGraph___block_invoke;
  v6[3] = &unk_278885C70;
  v6[4] = &v7;
  [v3 enumerateCelebratedHolidayNodesUsingBlock:v6];
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __59__PGManager_Debug___numberOfFamilyHolidayMomentsWithGraph___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 category] == 2)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __59__PGManager_Debug___numberOfFamilyHolidayMomentsWithGraph___block_invoke_2;
    v4[3] = &unk_278885948;
    v4[4] = *(a1 + 32);
    [v3 enumerateCelebratingMomentNodesUsingBlock:v4];
  }
}

- (unint64_t)_numberOfMomentsOverWeekendsWithGraph:(id)a3
{
  v3 = [a3 anyNodeForLabel:@"Weekend" domain:400 properties:0];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 edgesCount];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_peopleRelationshipsStatisticsWithGraph:(id)a3 includingDebugInfo:(BOOL)a4
{
  v4 = a4;
  v118[13] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v90 = [v5 meNode];
  if (v90)
  {
    v82 = v5;
    v91 = [MEMORY[0x277CCAB68] stringWithString:@"PEOPLE RELATIONSHIPS:\n\n"];
    v117[0] = @"PARTNER";
    v117[1] = @"FAMILY";
    v118[0] = &unk_284483FD8;
    v118[1] = &unk_284483FF0;
    v117[2] = @"PARENT";
    v117[3] = @"CHILD";
    v118[2] = &unk_284484008;
    v118[3] = &unk_284484020;
    v117[4] = @"FRIEND";
    v117[5] = @"COWORKER";
    v118[4] = &unk_284484038;
    v118[5] = &unk_284484050;
    v117[6] = @"PARTNER";
    v117[7] = @"MOTHER";
    v118[6] = &unk_284483FD8;
    v118[7] = &unk_284484068;
    v117[8] = @"FATHER";
    v117[9] = @"SISTER";
    v118[8] = &unk_284484080;
    v118[9] = &unk_284484098;
    v117[10] = @"BROTHER";
    v117[11] = @"DAUGHTER";
    v118[10] = &unk_2844840B0;
    v118[11] = &unk_2844840C8;
    v117[12] = @"SON";
    v118[12] = &unk_2844840E0;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v118 forKeys:v117 count:13];
    v84 = v4;
    v7 = 3;
    v109 = 0u;
    v110 = 0u;
    if (v4)
    {
      v7 = 7;
    }

    v87 = v7;
    v111 = 0uLL;
    v112 = 0uLL;
    obj = v6;
    v8 = [obj countByEnumeratingWithState:&v109 objects:v116 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v110;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v110 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v109 + 1) + 8 * i);
          v13 = [obj objectForKeyedSubscript:v12];
          v14 = [v13 unsignedIntegerValue];

          v15 = [MEMORY[0x277CBEB18] array];
          v16 = [MEMORY[0x277CBEB38] dictionary];
          v105[0] = MEMORY[0x277D85DD0];
          v105[1] = 3221225472;
          v105[2] = __79__PGManager_Debug___peopleRelationshipsStatisticsWithGraph_includingDebugInfo___block_invoke;
          v105[3] = &unk_278885BD0;
          v17 = v15;
          v106 = v17;
          v108 = v84;
          v18 = v16;
          v107 = v18;
          [v90 enumeratePersonNodesWithRelationship:v14 matchingQuery:v87 usingBlock:v105];
          v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:\n", v12];
          [v91 appendString:v19];

          v20 = [v17 count];
          if (!(v20 + [v18 count]))
          {
            v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"None\n"];
            [v91 appendString:v21];
LABEL_15:

            goto LABEL_16;
          }

          if ([v17 count])
          {
            v22 = MEMORY[0x277CCACA8];
            v23 = [v17 componentsJoinedByString:@"\n\t"];
            v24 = [v22 stringWithFormat:@"\t%@\n", v23];
            [v91 appendString:v24];
          }

          if ([v18 count])
          {
            v25 = [v18 keysSortedByValueUsingSelector:sel_compare_];
            v26 = [v25 reverseObjectEnumerator];
            v21 = [v26 allObjects];

            v27 = MEMORY[0x277CCACA8];
            v28 = [v21 componentsJoinedByString:@"\n\t"];
            v29 = [v27 stringWithFormat:@"\t%@\n", v28];
            [v91 appendString:v29];

            goto LABEL_15;
          }

LABEL_16:
        }

        v9 = [obj countByEnumeratingWithState:&v109 objects:v116 count:16];
      }

      while (v9);
    }

    v83 = [MEMORY[0x277CCAB68] stringWithString:@"\nSOCIAL GROUPS RELATIONSHIPS:\n"];
    v114[0] = @"FAMILY";
    v114[1] = @"COWORKER";
    v115[0] = &unk_284483FF0;
    v115[1] = &unk_284484050;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v115 forKeys:v114 count:2];
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v88 = v104 = 0u;
    v30 = [v88 countByEnumeratingWithState:&v101 objects:v113 count:16];
    v31 = v91;
    if (v30)
    {
      v32 = v30;
      v33 = *v102;
      do
      {
        for (j = 0; j != v32; ++j)
        {
          if (*v102 != v33)
          {
            objc_enumerationMutation(v88);
          }

          v35 = *(*(&v101 + 1) + 8 * j);
          v36 = [MEMORY[0x277CBEB18] array];
          v37 = [v88 objectForKeyedSubscript:v35];
          v38 = [v37 unsignedIntegerValue];

          v98[0] = MEMORY[0x277D85DD0];
          v98[1] = 3221225472;
          v98[2] = __79__PGManager_Debug___peopleRelationshipsStatisticsWithGraph_includingDebugInfo___block_invoke_2;
          v98[3] = &unk_278885BF8;
          v39 = v36;
          v99 = v39;
          v100 = self;
          [v90 enumerateSocialGroupNodesWithRelationship:v38 usingBlock:v98];
          v40 = [v39 count];
          v41 = MEMORY[0x277CCACA8];
          if (v40)
          {
            v42 = [v39 componentsJoinedByString:@"\n\t\t"];
            v43 = [v41 stringWithFormat:@"%@ SG:\n\t\t%@\n", v35, v42];
            [v83 appendString:v43];
          }

          else
          {
            v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"\tNo %@ Social Group\n", v35];
            [v83 appendString:v42];
          }

          v31 = v91;
        }

        v32 = [v88 countByEnumeratingWithState:&v101 objects:v113 count:16];
      }

      while (v32);
    }

    v44 = [v90 collection];
    v45 = [v44 ownedPetNodes];

    v46 = 0x277CCA000uLL;
    v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n\nPETS\n"];
    [v31 appendString:v47];

    v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"The user currently has %lu pets, based on the important entities inference\n", objc_msgSend(v45, "count")];
    [v31 appendString:v48];

    v96[0] = MEMORY[0x277D85DD0];
    v96[1] = 3221225472;
    v96[2] = __79__PGManager_Debug___peopleRelationshipsStatisticsWithGraph_includingDebugInfo___block_invoke_3;
    v96[3] = &unk_278885C20;
    v49 = v31;
    v97 = v49;
    [v45 enumerateNodesUsingBlock:v96];
    if (v84)
    {
      v5 = v82;
      v50 = [(PGManager *)self _numberOfFamilyHolidayMomentsWithGraph:v82];
      v81 = [MEMORY[0x277CCACA8] stringWithFormat:@"\nMISCELLANEOUS:\nNumber of family holiday moments: %lu", v50];
      v51 = [(PGManager *)self _numberOfNightOutMomentsWithGraph:v82];
      v52 = [MEMORY[0x277CCACA8] stringWithFormat:@"\nNumber of night out moments: %lu", v51];
      v80 = [(PGManager *)self _oneOnOneTripsWithGraph:v82];
      v53 = [v80 count];
      v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"\nNumber of one on one trips not including short trips: %lu", v53];
      v55 = MEMORY[0x277CBEB58];
      v56 = [v82 trips];
      [v82 weekends];
      v57 = v85 = v45;
      v58 = [v56 arrayByAddingObjectsFromArray:v57];
      v59 = [v55 setWithArray:v58];

      v79 = v59;
      [v59 minusSet:v80];
      v60 = [v59 count];
      v61 = [MEMORY[0x277CCACA8] stringWithFormat:@"\nNumber of non one on one trips including short trips: %lu", v60];
      v62 = [(PGManager *)self _numberOfMomentsOverWeekendsWithGraph:v82];
      v63 = [MEMORY[0x277CCACA8] stringWithFormat:@"\nNumber of moments over weekends: %lu", v62];
      v64 = [v82 momentNodes];
      v65 = [PGPeopleInferencesConveniences momentNodesAtWorkInMomentNodes:v64];

      v66 = [v65 count];
      v67 = [MEMORY[0x277CCACA8] stringWithFormat:@"\nNumber of moments at work: %lu", v66];
      v68 = v83;
      v69 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@", v49, v83, v81, v52, v54, v61, v63, v67];

      v45 = v85;
      v46 = 0x277CCA000;

      v70 = v69;
    }

    else
    {
      v70 = &stru_2843F5C58;
      v5 = v82;
      v68 = v83;
    }

    v72 = [MEMORY[0x277CCAB68] stringWithString:@"STORYTELLING (HIGH RECALL) RELATIONSHIPS:\n\n"];
    v73 = [(PGGraphEdgeCollection *)PGGraphStorytellingRelationshipEdgeCollection edgesInGraph:v5];
    v74 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v94[0] = MEMORY[0x277D85DD0];
    v94[1] = 3221225472;
    v94[2] = __79__PGManager_Debug___peopleRelationshipsStatisticsWithGraph_includingDebugInfo___block_invoke_4;
    v94[3] = &unk_2788863A0;
    v95 = v74;
    v75 = v74;
    [v73 enumerateEdgesUsingBlock:v94];
    v92[0] = MEMORY[0x277D85DD0];
    v92[1] = 3221225472;
    v92[2] = __79__PGManager_Debug___peopleRelationshipsStatisticsWithGraph_includingDebugInfo___block_invoke_5;
    v92[3] = &unk_278885C48;
    v93 = v72;
    v76 = v72;
    [v75 enumerateKeysAndObjectsUsingBlock:v92];
    v71 = [*(v46 + 3240) stringWithFormat:@"%@\n\n%@\n\n%@\n\n%@", v49, v68, v70, v76];
  }

  else
  {
    v71 = @"There is no menode in the graph -> cannot generate relationship report";
  }

  v77 = *MEMORY[0x277D85DE8];

  return v71;
}

void __79__PGManager_Debug___peopleRelationshipsStatisticsWithGraph_includingDebugInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = a3;
  v5 = [a2 stringDescription];
  v6 = [v18 status];
  v7 = +[PGGraphRelationshipEdge relationshipSourceToString:](PGGraphRelationshipEdge, "relationshipSourceToString:", [v18 source]);
  if (v6)
  {
    [v18 confidence];
    v9 = v8;
    v10 = @"FILTERED OUT";
    if (v6 == 1)
    {
      v10 = @"INFERRED";
    }

    if (*(a1 + 48) == 1)
    {
      v11 = v10;
      v12 = [v18 description];
      v13 = MEMORY[0x277CCACA8];
      v14 = [(__CFString *)v12 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
      v15 = [v13 stringWithFormat:@"%@ (%@ %0.2f) (Source: %@) : %@", v5, v11, *&v9, v7, v14];
    }

    else
    {
      v16 = MEMORY[0x277CCACA8];
      v12 = v10;
      v15 = [v16 stringWithFormat:@"%@ (%@ %0.2f) (Source: %@)", v5, v12, *&v9, v7];
    }

    v17 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
    [*(a1 + 40) setObject:v17 forKeyedSubscript:v15];
  }

  else
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ (GROUND TRUTH) (Source: %@)", v5, v7];
    [*(a1 + 32) addObject:v15];
  }
}

void __79__PGManager_Debug___peopleRelationshipsStatisticsWithGraph_includingDebugInfo___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v9 = a2;
  v4 = MEMORY[0x277CBEA60];
  v5 = a2;
  v6 = [v4 arrayWithObjects:&v9 count:1];
  v7 = [v3 _stringDescriptionForSocialGroups:v6 includeImportance:{0, v9, v10}];
  [v2 addObject:v7];

  v8 = *MEMORY[0x277D85DE8];
}

void __79__PGManager_Debug___peopleRelationshipsStatisticsWithGraph_includingDebugInfo___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CCACA8];
  v5 = [a2 description];
  v4 = [v3 stringWithFormat:@"\t%@\n", v5];
  [v2 appendString:v4];
}

void __79__PGManager_Debug___peopleRelationshipsStatisticsWithGraph_includingDebugInfo___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v14 = [v3 targetNode];
  v4 = MEMORY[0x277CCACA8];
  v5 = [v14 name];
  v6 = [v14 localIdentifier];
  if (v6)
  {
    v7 = [v14 localIdentifier];
    v8 = [v4 stringWithFormat:@"%@ (%@)", v5, v7];
  }

  else
  {
    v8 = [v4 stringWithFormat:@"%@ (%@)", v5, @"n/a"];
  }

  v9 = [v3 label];

  v10 = [*(a1 + 32) objectForKeyedSubscript:v8];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
  }

  v13 = v12;

  [v13 addObject:v9];
  [*(a1 + 32) setObject:v13 forKeyedSubscript:v8];
}

void __79__PGManager_Debug___peopleRelationshipsStatisticsWithGraph_includingDebugInfo___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CCACA8];
  v6 = a2;
  v9 = [a3 allObjects];
  v7 = [v9 componentsJoinedByString:{@", "}];
  v8 = [v5 stringWithFormat:@"%@ - %@\n", v6, v7];

  [v4 appendString:v8];
}

- (id)_partOfDayStatisticsWithGraph:(id)a3 titleGenerationContext:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v24 = a4;
  v6 = [MEMORY[0x277CCAB68] string];
  v21 = v5;
  [v5 momentNodesSortedByDate];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v30 = 0u;
  v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v23 = *v28;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = [[PGTitleGenerator alloc] initWithMomentNode:v10 type:0 titleGenerationContext:v24];
        v12 = [(PGTitleGenerator *)v11 title];
        v13 = [v12 stringValue];
        v14 = [v13 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_2843F5C58];

        v15 = [(PGTitleGenerator *)v11 subtitle];
        v16 = [v15 stringValue];
        v17 = [v16 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_2843F5C58];

        [v6 appendFormat:@"%@ - %@: ", v14, v17];
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __73__PGManager_Debug___partOfDayStatisticsWithGraph_titleGenerationContext___block_invoke;
        v25[3] = &unk_278885BA8;
        v18 = v6;
        v26 = v18;
        [v10 enumeratePartOfDayEdgesAndNodesUsingBlock:v25];
        [v18 appendString:@"\n"];
      }

      v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v8);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v6;
}

void __73__PGManager_Debug___partOfDayStatisticsWithGraph_titleGenerationContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v9 = [a3 name];
  v6 = *(a1 + 32);
  [v5 ratio];
  v8 = v7;

  [v6 appendFormat:@"[%@ %.2f] ", v9, v8];
}

- (id)_interestingStatisticsWithGraph:(id)a3
{
  v82 = *MEMORY[0x277D85DE8];
  v44 = a3;
  v45 = [(PGManager *)self photoLibrary];
  v42 = [v45 librarySpecificFetchOptions];
  v4 = [MEMORY[0x277CD97B8] fetchMomentsWithOptions:v42];
  v5 = [v44 momentNodesSortedByDate];
  v41 = [v5 count];
  v43 = [MEMORY[0x277CBEB58] set];
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v76 objects:v81 count:16];
  if (v6)
  {
    v53 = 0;
    v7 = 0;
    v8 = *v77;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v77 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v76 + 1) + 8 * i);
        v11 = [v10 isInteresting];
        if ([v10 isSmartInteresting])
        {
          v12 = [v44 momentForMomentNode:v10 inPhotoLibrary:v45];
          if (v12)
          {
            [v43 addObject:v12];
          }

          ++v53;
        }

        [v10 isInterestingForMemories];
        [v10 contentScore];
        v7 += v11;
      }

      v6 = [obj countByEnumeratingWithState:&v76 objects:v81 count:16];
    }

    while (v6);
  }

  else
  {
    v53 = 0;
    v7 = 0;
  }

  v52 = [MEMORY[0x277CCAB58] indexSet];
  [v52 addIndex:4];
  [v52 addIndex:10];
  v49 = objc_opt_new();
  v51 = objc_opt_new();
  v50 = [v45 librarySpecificFetchOptions];
  v13 = +[PGCurationManager assetPropertySetsForCuration];
  [v50 addFetchPropertySets:v13];

  v48 = [objc_alloc(MEMORY[0x277D3C790]) initWithPhotoLibrary:v45];
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v46 = v4;
  v14 = [v46 countByEnumeratingWithState:&v72 objects:v80 count:16];
  if (v14)
  {
    v15 = *v73;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v73 != v15)
        {
          objc_enumerationMutation(v46);
        }

        v17 = *(*(&v72 + 1) + 8 * j);
        v18 = objc_autoreleasePoolPush();
        v19 = [MEMORY[0x277D276B8] feederPrefetchOptionsWithDefaultMode:2];
        v20 = [MEMORY[0x277D27710] feederForAssetCollection:v17 options:v50 feederPrefetchOptions:v19 curationContext:v48];
        v21 = [v20 allItems];
        v67[0] = MEMORY[0x277D85DD0];
        v67[1] = 3221225472;
        v67[2] = __52__PGManager_Debug___interestingStatisticsWithGraph___block_invoke;
        v67[3] = &unk_278885B58;
        v68 = v21;
        v69 = v49;
        v70 = v51;
        v71 = v17;
        v22 = v21;
        [v52 enumerateIndexesUsingBlock:v67];

        objc_autoreleasePoolPop(v18);
      }

      v14 = [v46 countByEnumeratingWithState:&v72 objects:v80 count:16];
    }

    while (v14);
  }

  v23 = [MEMORY[0x277CCAB68] stringWithString:@"Interesting Moments Analysis:\n\n"];
  [v23 appendFormat:@"Total Smart Interesting Moments %lu/%lu\n", v53, v41];
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy__51600;
  v65 = __Block_byref_object_dispose__51601;
  v66 = [MEMORY[0x277CBEB58] setWithSet:v43];
  v24 = v62[5];
  v25 = [v51 objectForKey:&unk_284483FA8];
  [v24 intersectSet:v25];

  [v23 appendFormat:@"Total Current (Related) Interesting Moments %lu/%lu (%lu)\n", v7, v41, objc_msgSend(v62[5], "count")];
  v26 = [MEMORY[0x277CBEB58] setWithSet:v43];
  v27 = v62[5];
  v62[5] = v26;

  v28 = v62[5];
  v29 = [v51 objectForKey:&unk_284483FC0];
  [v28 intersectSet:v29];

  v30 = [v49 objectForKey:&unk_284483FC0];
  v31 = [v46 count];
  [v23 appendFormat:@"Total Current (Memories) Interesting Moments %@/%lu (%lu)\n\n", v30, v31, objc_msgSend(v62[5], "count")];

  [v23 appendFormat:@"Total Interesting Moments:\n"];
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __52__PGManager_Debug___interestingStatisticsWithGraph___block_invoke_1004;
  v54[3] = &unk_278885B80;
  v60 = &v61;
  v32 = v43;
  v55 = v32;
  v33 = v51;
  v56 = v33;
  v34 = v23;
  v57 = v34;
  v35 = v49;
  v58 = v35;
  v36 = v46;
  v59 = v36;
  [v52 enumerateIndexesUsingBlock:v54];
  v37 = v59;
  v38 = v34;

  _Block_object_dispose(&v61, 8);
  v39 = *MEMORY[0x277D85DE8];

  return v38;
}

void __52__PGManager_Debug___interestingStatisticsWithGraph___block_invoke(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if ([PGCurationManager areAssetsInteresting:a1[4] minimumNumberOfCuratedAssets:a2 duration:2])
  {
    v5 = a1[5];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
    v7 = [v5 objectForKey:v6];

    v8 = a1[5];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "unsignedIntegerValue") + 1}];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
    [v8 setObject:v9 forKey:v10];

    v11 = a1[6];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
    v13 = [v11 objectForKey:v12];

    if (!v13)
    {
      v13 = [MEMORY[0x277CBEB58] set];
      v14 = a1[6];
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
      [v14 setObject:v13 forKey:v15];
    }

    [v13 addObject:a1[7]];
  }

  objc_autoreleasePoolPop(v4);
}

void __52__PGManager_Debug___interestingStatisticsWithGraph___block_invoke_1004(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CBEB58] setWithSet:*(a1 + 32)];
  v5 = *(*(a1 + 72) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(*(a1 + 72) + 8) + 40);
  v8 = *(a1 + 40);
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v10 = [v8 objectForKey:v9];
  [v7 intersectSet:v10];

  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v13 = [v12 objectForKey:v14];
  [v11 appendFormat:@"\tminimumCurated=%lu %@/%lu (%lu)\n", a2, v13, objc_msgSend(*(a1 + 64), "count"), objc_msgSend(*(*(*(a1 + 72) + 8) + 40), "count")];
}

- (id)_moodStatisticsWithGraph:(id)a3
{
  v81[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v74 = 0;
  v75 = &v74;
  v76 = 0x3032000000;
  v77 = __Block_byref_object_copy__51600;
  v78 = __Block_byref_object_dispose__51601;
  v79 = [MEMORY[0x277CCA940] set];
  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = __Block_byref_object_copy__51600;
  v72 = __Block_byref_object_dispose__51601;
  v73 = [MEMORY[0x277CCA940] set];
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy__51600;
  v66 = __Block_byref_object_dispose__51601;
  v67 = [MEMORY[0x277CCA940] set];
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__51600;
  v60 = __Block_byref_object_dispose__51601;
  v61 = [MEMORY[0x277CCA940] set];
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v7 = [(PGManager *)self photoLibrary];
  v34 = [v7 librarySpecificFetchOptions];

  v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:1];
  v81[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:1];
  [v34 setSortDescriptors:v9];

  v10 = [MEMORY[0x277CD97B8] fetchMomentsWithOptions:v34];
  v11 = [(PGManager *)self workingContext];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __45__PGManager_Debug___moodStatisticsWithGraph___block_invoke;
  v42[3] = &unk_278885B30;
  v12 = v4;
  v43 = v12;
  v13 = v11;
  v44 = v13;
  v47 = &v74;
  v48 = &v68;
  v49 = &v62;
  v50 = &v56;
  v36 = v5;
  v45 = v36;
  v51 = &v52;
  v37 = v6;
  v46 = v37;
  [v10 enumerateObjectsUsingBlock:v42];
  v14 = v53[3];
  if (v14 >= 2)
  {
    [v37 multiplyByWeight:1.0 / (v14 + -1.0)];
  }

  v15 = [MEMORY[0x277CCAB68] stringWithString:@"Moods:\nMood Suggested Possible Recommended Forbidden Mean Stddev"];
  v33 = v10;
  v32 = v12;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v16 = [&unk_284486258 countByEnumeratingWithState:&v38 objects:v80 count:16];
  if (v16)
  {
    v17 = 0;
    v35 = *v39;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v39 != v35)
        {
          objc_enumerationMutation(&unk_284486258);
        }

        v19 = *(*(&v38 + 1) + 8 * i);
        [v15 appendFormat:@"\n%@", v19];
        v20 = v57[5];
        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v19];
        [v15 appendFormat:@" %lu", objc_msgSend(v20, "countForObject:", v21)];

        v22 = v63[5];
        v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v19];
        [v15 appendFormat:@" %lu", objc_msgSend(v22, "countForObject:", v23)];

        v24 = v75[5];
        v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v19];
        [v15 appendFormat:@" %lu", objc_msgSend(v24, "countForObject:", v25)];

        v26 = v69[5];
        v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v19];
        [v15 appendFormat:@" %lu", objc_msgSend(v26, "countForObject:", v27)];

        [v36 valueForMood:1 << v17];
        [v15 appendFormat:@" %.2f", v28];
        [v37 valueForMood:1 << v17];
        [v15 appendFormat:@" %.2f", sqrt(v29)];
        ++v17;
      }

      v16 = [&unk_284486258 countByEnumeratingWithState:&v38 objects:v80 count:16];
    }

    while (v16);
  }

  [v15 appendString:@"\n\n"];

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v56, 8);

  _Block_object_dispose(&v62, 8);
  _Block_object_dispose(&v68, 8);

  _Block_object_dispose(&v74, 8);
  v30 = *MEMORY[0x277D85DE8];

  return v15;
}

void __45__PGManager_Debug___moodStatisticsWithGraph___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) momentNodeForMoment:v3];
  if ([v4 isInteresting])
  {
    context = objc_autoreleasePoolPush();
    v5 = [PGMoodGenerator alloc];
    v6 = [*(a1 + 40) photoLibrary];
    v7 = [(PGMoodGenerator *)v5 initWithAssetCollection:v3 photoLibrary:v6 options:0];

    v8 = [(PGMoodGenerator *)v7 positiveMoodVectorWithGraph:*(a1 + 32)];
    v9 = [(PGMoodGenerator *)v7 negativeMoodVectorWithGraph:*(a1 + 32)];
    [(PGMoodGenerator *)v7 positiveThreshold];
    v11 = v10;
    [(PGMoodGenerator *)v7 negativeThreshold];
    v13 = v12;
    v14 = [v8 copy];
    [v14 filterWithMoods:{~objc_msgSend(v9, "moodsWithThreshold:", v13)}];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __45__PGManager_Debug___moodStatisticsWithGraph___block_invoke_2;
    v24[3] = &unk_278885B08;
    v24[5] = v11;
    v24[4] = *(a1 + 64);
    [v8 enumerateWithBlock:v24];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __45__PGManager_Debug___moodStatisticsWithGraph___block_invoke_3;
    v23[3] = &unk_278885B08;
    *&v23[5] = v13;
    v23[4] = *(a1 + 72);
    [v9 enumerateWithBlock:v23];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __45__PGManager_Debug___moodStatisticsWithGraph___block_invoke_4;
    v22[3] = &unk_278885B08;
    v22[5] = v11;
    v22[4] = *(a1 + 80);
    [v14 enumerateWithBlock:v22];
    v15 = *(*(*(a1 + 88) + 8) + 40);
    [(PGMoodGenerator *)v7 suggestedMoodWithGraph:*(a1 + 32)];
    v16 = PHStringForMemoryMood();
    [v15 addObject:v16];

    v17 = [v14 copy];
    [v17 substractMoodVector:*(a1 + 48)];
    v18 = [v17 copy];
    [v18 multiplyByWeight:1.0 / (*(*(*(a1 + 96) + 8) + 24) + 1.0)];
    [*(a1 + 48) addMoodVector:v18];
    v19 = [v14 copy];
    [v19 substractMoodVector:*(a1 + 48)];
    v20 = v17;

    [v20 multiplyMoodVector:v19];
    [*(a1 + 56) addMoodVector:v20];

    ++*(*(*(a1 + 96) + 8) + 24);
    objc_autoreleasePoolPop(context);
  }
}

void __45__PGManager_Debug___moodStatisticsWithGraph___block_invoke_2(uint64_t a1, double a2)
{
  if (*(a1 + 40) <= a2)
  {
    v3 = *(*(*(a1 + 32) + 8) + 40);
    v4 = PHStringForMemoryMood();
    [v3 addObject:v4];
  }
}

void __45__PGManager_Debug___moodStatisticsWithGraph___block_invoke_3(uint64_t a1, double a2)
{
  if (*(a1 + 40) <= a2)
  {
    v3 = *(*(*(a1 + 32) + 8) + 40);
    v4 = PHStringForMemoryMood();
    [v3 addObject:v4];
  }
}

void __45__PGManager_Debug___moodStatisticsWithGraph___block_invoke_4(uint64_t a1, double a2)
{
  if (*(a1 + 40) <= a2)
  {
    v3 = *(*(*(a1 + 32) + 8) + 40);
    v4 = PHStringForMemoryMood();
    [v3 addObject:v4];
  }
}

- (id)_stringDescriptionForMemoriesNotification
{
  v3 = objc_opt_new();
  v4 = [(PGManager *)self _dateFormatter];
  v5 = [(PGManager *)self photoLibrary];
  v6 = [PGMemoryNotificationHelper lastTriggeredNotificationDateWithPhotoLibrary:v5];
  v7 = [v4 stringFromDate:v6];
  [v3 appendFormat:@"\tLast notification triggered: %@\n", v7];

  v8 = [(PGManager *)self photoLibrary];
  v9 = [PGMemoryNotificationHelper nextPossibleNotificationDateWithPhotoLibrary:v8];
  v10 = [v4 stringFromDate:v9];
  [v3 appendFormat:@"\tNext possible notification: %@\n", v10];

  v11 = [(PGManager *)self memoriesOfTheDayAreWorthNotifying];
  v12 = @"NO";
  if (v11)
  {
    v12 = @"YES";
  }

  [v3 appendFormat:@"\tToday's Memories are worth notifying: %@\n", v12];

  return v3;
}

- (id)_socialGroupsDebugStringWithGraph:(id)a3
{
  v3 = MEMORY[0x277CCAB68];
  v4 = a3;
  v5 = [v3 string];
  v6 = [MEMORY[0x277CBEB18] array];
  [MEMORY[0x277CBEB18] array];
  v13 = v16 = 0.0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __54__PGManager_Debug___socialGroupsDebugStringWithGraph___block_invoke;
  v14[3] = &unk_278885AE0;
  v15 = v6;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54__PGManager_Debug___socialGroupsDebugStringWithGraph___block_invoke_2;
  v12[3] = &unk_278885AE0;
  v7 = v13;
  v8 = v6;
  [PGSocialGroupsQuestionFactory enumerateSocialGroupsWithGraph:v4 withLinkage:4 validGroupsBlock:v14 invalidGroupsBlock:v12 averageWeight:&v16];

  [v5 appendFormat:@"Social Groups from new algorithm with thresholds: [avgWeight=%.2f, minCohesion=%.2f]\n", v16, 0x3FD3333333333333];
  [v5 appendFormat:@"Valid Social Groups: %ld\n", objc_msgSend(v8, "count")];
  v9 = [v8 componentsJoinedByString:&stru_2843F5C58];
  [v5 appendString:v9];

  [v5 appendFormat:@"Candidate Social Groups: %ld\n", objc_msgSend(v7, "count")];
  v10 = [v7 componentsJoinedByString:&stru_2843F5C58];
  [v5 appendString:v10];

  return v5;
}

void __54__PGManager_Debug___socialGroupsDebugStringWithGraph___block_invoke(uint64_t a1, void *a2, float a3, double a4, double a5, double a6, float a7, float a8, float a9, float a10, uint64_t a11, void *a12, void *a13, float a14, float a15)
{
  v52 = *MEMORY[0x277D85DE8];
  v26 = a12;
  v27 = a13;
  v45 = MEMORY[0x277CCACA8];
  v28 = [a2 sortedArrayUsingComparator:PGManagerPersonNodeComparisonBlock];
  v29 = [MEMORY[0x277CBEB18] array];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v30 = v28;
  v31 = [v30 countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v48;
    do
    {
      v34 = 0;
      do
      {
        if (*v48 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v47 + 1) + 8 * v34);
        v36 = [v35 name];
        if ([v36 length])
        {
          if (!v36)
          {
            goto LABEL_9;
          }

LABEL_8:
          [v29 addObject:v36];
          goto LABEL_9;
        }

        v37 = [v35 stringDescription];
        v38 = [v37 lowercaseString];

        v36 = v38;
        if (v38)
        {
          goto LABEL_8;
        }

LABEL_9:

        ++v34;
      }

      while (v32 != v34);
      v39 = [v30 countByEnumeratingWithState:&v47 objects:v51 count:16];
      v32 = v39;
    }

    while (v39);
  }

  v40 = MEMORY[0x277CCACA8];
  v41 = [v29 componentsJoinedByString:{@", "}];
  v42 = [v40 stringWithFormat:@"%@ [wgt=%.4f, mom=%ld, supMom=%ld, excMomF=%.2f, supMomF=%.2f, familyF=%.2f, recF=%.2f, semCohF=%.2f, peoCohF=%.2f, rank=%.4f]", v41, a3, objc_msgSend(v26, "count"), objc_msgSend(v27, "count"), a7, a8, a9, a14, a10, *&a4, a15];

  v43 = [v45 stringWithFormat:@"\t%@\n", v42];

  [*(a1 + 32) addObject:v43];
  v44 = *MEMORY[0x277D85DE8];
}

void __54__PGManager_Debug___socialGroupsDebugStringWithGraph___block_invoke_2(uint64_t a1, void *a2, float a3, double a4, double a5, double a6, float a7, float a8, float a9, float a10, uint64_t a11, void *a12, void *a13, float a14, float a15)
{
  v52 = *MEMORY[0x277D85DE8];
  v26 = a12;
  v27 = a13;
  v45 = MEMORY[0x277CCACA8];
  v28 = [a2 sortedArrayUsingComparator:PGManagerPersonNodeComparisonBlock];
  v29 = [MEMORY[0x277CBEB18] array];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v30 = v28;
  v31 = [v30 countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v48;
    do
    {
      v34 = 0;
      do
      {
        if (*v48 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v47 + 1) + 8 * v34);
        v36 = [v35 name];
        if ([v36 length])
        {
          if (!v36)
          {
            goto LABEL_9;
          }

LABEL_8:
          [v29 addObject:v36];
          goto LABEL_9;
        }

        v37 = [v35 stringDescription];
        v38 = [v37 lowercaseString];

        v36 = v38;
        if (v38)
        {
          goto LABEL_8;
        }

LABEL_9:

        ++v34;
      }

      while (v32 != v34);
      v39 = [v30 countByEnumeratingWithState:&v47 objects:v51 count:16];
      v32 = v39;
    }

    while (v39);
  }

  v40 = MEMORY[0x277CCACA8];
  v41 = [v29 componentsJoinedByString:{@", "}];
  v42 = [v40 stringWithFormat:@"%@ [wgt=%.4f, mom=%ld, supMom=%ld, excMomF=%.2f, supMomF=%.2f, familyF=%.2f, recF=%.2f, semCohF=%.2f, peoCohF=%.2f, rank=%.4f]", v41, a3, objc_msgSend(v26, "count"), objc_msgSend(v27, "count"), a7, a8, a9, a14, a10, *&a4, a15];

  v43 = [v45 stringWithFormat:@"\t%@\n", v42];

  [*(a1 + 32) addObject:v43];
  v44 = *MEMORY[0x277D85DE8];
}

void __70__PGManager_Debug___socialGroupsDebugStringIncludingMeNode_withGraph___block_invoke(uint64_t a1, void *a2, float a3, double a4, uint64_t a5, void *a6)
{
  v34 = *MEMORY[0x277D85DE8];
  v9 = a6;
  v10 = MEMORY[0x277CCACA8];
  v11 = [a2 sortedArrayUsingComparator:PGManagerPersonNodeComparisonBlock];
  v12 = [MEMORY[0x277CBEB18] array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v30;
    do
    {
      v17 = 0;
      do
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v29 + 1) + 8 * v17);
        v19 = [v18 name];
        if ([v19 length])
        {
          if (!v19)
          {
            goto LABEL_9;
          }

LABEL_8:
          [v12 addObject:v19];
          goto LABEL_9;
        }

        v20 = [v18 stringDescription];
        v21 = [v20 lowercaseString];

        v19 = v21;
        if (v21)
        {
          goto LABEL_8;
        }

LABEL_9:

        ++v17;
      }

      while (v15 != v17);
      v22 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
      v15 = v22;
    }

    while (v22);
  }

  v23 = MEMORY[0x277CCACA8];
  v24 = [v12 componentsJoinedByString:{@", "}];
  v25 = [v23 stringWithFormat:@"%@ [moments=%ld, weight=%.4f, cohesion=%.2f]", v24, objc_msgSend(v9, "count"), a3, *&a4];

  v26 = [v10 stringWithFormat:@"\t%@\n", v25];

  [*(a1 + 32) addObject:v26];
  v27 = *MEMORY[0x277D85DE8];
}

void __70__PGManager_Debug___socialGroupsDebugStringIncludingMeNode_withGraph___block_invoke_2(uint64_t a1, void *a2, float a3, double a4, uint64_t a5, void *a6)
{
  v34 = *MEMORY[0x277D85DE8];
  v9 = a6;
  v10 = MEMORY[0x277CCACA8];
  v11 = [a2 sortedArrayUsingComparator:PGManagerPersonNodeComparisonBlock];
  v12 = [MEMORY[0x277CBEB18] array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v30;
    do
    {
      v17 = 0;
      do
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v29 + 1) + 8 * v17);
        v19 = [v18 name];
        if ([v19 length])
        {
          if (!v19)
          {
            goto LABEL_9;
          }

LABEL_8:
          [v12 addObject:v19];
          goto LABEL_9;
        }

        v20 = [v18 stringDescription];
        v21 = [v20 lowercaseString];

        v19 = v21;
        if (v21)
        {
          goto LABEL_8;
        }

LABEL_9:

        ++v17;
      }

      while (v15 != v17);
      v22 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
      v15 = v22;
    }

    while (v22);
  }

  v23 = MEMORY[0x277CCACA8];
  v24 = [v12 componentsJoinedByString:{@", "}];
  v25 = [v23 stringWithFormat:@"%@ [moments=%ld, weight=%.4f, cohesion=%.2f]", v24, objc_msgSend(v9, "count"), a3, *&a4];

  v26 = [v10 stringWithFormat:@"\t%@\n", v25];

  [*(a1 + 32) addObject:v26];
  v27 = *MEMORY[0x277D85DE8];
}

- (id)_entityTagsStatistics:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [(PGGraphNodeCollection *)PGGraphPersonRelationshipTagNodeCollection nodesInGraph:v3];

  [v4 appendFormat:@"Number of person relationship tags %lu\n", objc_msgSend(v5, "count")];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__PGManager_Debug___entityTagsStatistics___block_invoke;
  v8[3] = &unk_278887140;
  v6 = v4;
  v9 = v6;
  [v5 enumerateNodesUsingBlock:v8];

  return v6;
}

void __42__PGManager_Debug___entityTagsStatistics___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 collection];
  v5 = [v4 personNodes];

  v6 = *(a1 + 32);
  v7 = [v3 label];
  [v6 appendFormat:@"\tTag: %@. Total number of persons: %lu. List of persons:\n", v7, objc_msgSend(v5, "count")];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__PGManager_Debug___entityTagsStatistics___block_invoke_2;
  v8[3] = &unk_278885A90;
  v9 = *(a1 + 32);
  [v3 enumerateNeighborEdgesAndNodesThroughInEdgesUsingBlock:v8];
}

void __42__PGManager_Debug___entityTagsStatistics___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v8 = [a3 name];
  [v5 confidence];
  v7 = v6;

  [v4 appendFormat:@"\t\t%@, confidence: %.2f\n", v8, v7];
}

- (id)_sharedLibraryStatistics:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [(PGGraphNodeCollection *)PGGraphMomentNodeCollection nodesInGraph:v3];
  v6 = [v5 subsetWithOnlyPrivateAssets];
  v7 = [v6 count];

  v8 = [v5 subsetWithOnlySharedAssets];
  v9 = [v8 count];

  v10 = [v5 subsetWithBothPrivateAndSharedAssets];
  v11 = [v10 count];

  [v4 appendFormat:@"Moment nodes with both private and shared assets:\t%lu\nMoment nodes with only private assets:\t%lu\nMoment nodes with only shared assets:\t%lu\n\n", v11, v7, v9];
  v12 = [PGGraphPersonNodeCollection personNodesForSharedLibraryParticipantsInGraph:v3];

  [v4 appendFormat:@"Person nodes for share participants in the graph: %lu\n", objc_msgSend(v12, "count")];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __45__PGManager_Debug___sharedLibraryStatistics___block_invoke;
  v15[3] = &unk_278889240;
  v13 = v4;
  v16 = v13;
  [v12 enumerateNodesUsingBlock:v15];

  return v13;
}

void __45__PGManager_Debug___sharedLibraryStatistics___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 collection];
  v5 = *(a1 + 32);
  v6 = [v3 shareParticipantLocalIdentifier];
  v7 = [v3 description];

  [v5 appendFormat:@"\tPerson with share participant identifier: %@, Description: %@\n", v6, v7];
  v8 = [v4 authoredMomentNodes];
  [*(a1 + 32) appendFormat:@"\tMoments authored: %lu", objc_msgSend(v8, "count")];
  v9 = +[PGGraphPeoplePersonIsAroundEdge filter];
  v10 = [v9 outRelation];
  v11 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:v4 withRelation:v10];

  v12 = +[PGGraphPersonProximityEdge filter];
  v13 = [v12 outRelation];
  v14 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:v4 withRelation:v13];

  v15 = +[PGGraphPersonPresentEdge filter];
  v16 = [v15 outRelation];
  v17 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:v4 withRelation:v16];

  [*(a1 + 32) appendFormat:@"\tMoments where pressent: CoreRoutine: %lu, PeopleProximity: %lu, Face Detection: %lu", objc_msgSend(v11, "count"), objc_msgSend(v14, "count"), objc_msgSend(v17, "count")];
  v18 = [v4 momentNodesWithPresence];
  [*(a1 + 32) appendFormat:@"\tMoments where physically pressent: %lu", objc_msgSend(v18, "count")];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __45__PGManager_Debug___sharedLibraryStatistics___block_invoke_2;
  v23[3] = &unk_278885A68;
  v24 = v8;
  v25 = v11;
  v26 = v14;
  v27 = v17;
  v28 = *(a1 + 32);
  v19 = v17;
  v20 = v14;
  v21 = v11;
  v22 = v8;
  [v18 enumerateNodesUsingBlock:v23];
}

void __45__PGManager_Debug___sharedLibraryStatistics___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [v9 collection];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([*(a1 + 32) intersectsCollection:v4])
  {
    [v5 addObject:@"Author"];
  }

  if ([*(a1 + 40) intersectsCollection:v4])
  {
    [v5 addObject:@"CoreRoutine"];
  }

  if ([*(a1 + 48) intersectsCollection:v4])
  {
    [v5 addObject:@"PeopleProximity"];
  }

  if ([*(a1 + 56) intersectsCollection:v4])
  {
    [v5 addObject:@"FaceDetection"];
  }

  if ([v5 count])
  {
    v6 = [v5 componentsJoinedByString:@"/"];
  }

  else
  {
    v6 = @"undefined";
  }

  v7 = *(a1 + 64);
  v8 = [v9 uuid];
  [v7 appendFormat:@"\t\t%@ - %@\n", v8, v6];

  objc_autoreleasePoolPop(v3);
}

- (id)_socialGroupsDebugStatistics:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(PGManager *)self _socialGroupsDebugStringIncludingMeNode:0 withGraph:v4];
  [v5 appendFormat:@"%@\n", v6];
  v7 = [(PGManager *)self _socialGroupsDebugStringWithGraph:v4];

  [v5 appendFormat:@"%@\n", v7];

  return v5;
}

- (id)_socialGroupsStatistics:(id)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v43 = objc_opt_new();
  v38 = [v4 numberOfSocialGroupNodes];
  context = objc_autoreleasePoolPush();
  v44 = v4;
  [v4 socialGroupNodesSortedByImportance];
  v41 = v45 = self;
  v5 = [PGManager _stringDescriptionForSocialGroups:"_stringDescriptionForSocialGroups:includeImportance:" includeImportance:?];
  v47 = [MEMORY[0x277CBEB58] set];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v6 = [MEMORY[0x277CCA900] newlineCharacterSet];
  v40 = v5;
  v7 = [v5 componentsSeparatedByCharactersInSet:v6];

  v8 = [v7 countByEnumeratingWithState:&v52 objects:v57 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v53;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v53 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v52 + 1) + 8 * i);
        if ([v12 hasPrefix:@"\t["])
        {
          v13 = [v12 componentsSeparatedByString:@"] "];
          v14 = [v13 lastObject];
          v15 = objc_msgSend(v14, "componentsSeparatedByString:", @" (");
          v16 = [v15 firstObject];

          v17 = MEMORY[0x277CBEB98];
          v18 = [v16 componentsSeparatedByString:{@", "}];
          v19 = [v17 setWithArray:v18];
          [v47 addObject:v19];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v52 objects:v57 count:16];
    }

    while (v9);
  }

  v20 = [(PGManager *)v45 _socialGroupsDebugStringIncludingMeNode:0 withGraph:v44];
  v46 = [MEMORY[0x277CBEB58] set];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v21 = [MEMORY[0x277CCA900] newlineCharacterSet];
  v39 = v20;
  v22 = [v20 componentsSeparatedByCharactersInSet:v21];

  v23 = [v22 countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = 0;
    v26 = *v49;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v49 != v26)
        {
          objc_enumerationMutation(v22);
        }

        v28 = *(*(&v48 + 1) + 8 * j);
        if ([v28 hasPrefix:@"\t["])
        {
          v29 = [v28 componentsSeparatedByString:@"] "];
          v30 = [v29 lastObject];
          v31 = objc_msgSend(v30, "componentsSeparatedByString:", @" (");
          v32 = [v31 firstObject];

          v33 = MEMORY[0x277CBEB98];
          v34 = [v32 componentsSeparatedByString:{@", "}];
          v35 = [v33 setWithArray:v34];
          [v46 addObject:v35];
        }

        else
        {
          if (v25 > 1)
          {
            goto LABEL_21;
          }

          ++v25;
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v24);
  }

LABEL_21:

  if (([v47 isEqualToSet:v46] & 1) == 0)
  {
    [v43 appendFormat:@"Social Groups in graph: %lu\n", v38];
    [v43 appendFormat:@"%@\n", v40];
  }

  [v43 appendFormat:@"%@\n", v39];

  objc_autoreleasePoolPop(context);
  v36 = *MEMORY[0x277D85DE8];

  return v43;
}

- (id)_checkConsistencyOfGraph:(id)a3
{
  v125 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v114 = 0;
  v115 = &v114;
  v116 = 0x3032000000;
  v117 = __Block_byref_object_copy__51600;
  v118 = __Block_byref_object_dispose__51601;
  v119 = &stru_2843F5C58;
  v4 = [v3 nodesLabels];
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v110 objects:v124 count:16];
  if (v6)
  {
    v7 = *v111;
    v8 = *MEMORY[0x277D22CB0];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v111 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [v3 nodesForLabel:*(*(&v110 + 1) + 8 * i) domain:v8];
        if ([v10 intersectsSet:v5])
        {
          v11 = [v10 mutableCopy];
          [v11 intersectSet:v5];
          v12 = [v5 mutableCopy];
          [v12 intersectSet:v10];
          v13 = [v115[5] stringByAppendingFormat:@"Some nodes are registered for two labels:\n%@\n%@", v11, v12];
          v14 = v115[5];
          v115[5] = v13;
        }

        [v5 unionSet:v10];
      }

      v6 = [obj countByEnumeratingWithState:&v110 objects:v124 count:16];
    }

    while (v6);
  }

  v15 = [v5 count];
  if (v15 != [v3 nodesCount])
  {
    v16 = [v115[5] stringByAppendingFormat:@"(nodesForLabel:@).count found %d, nodesCount found %d\n", objc_msgSend(v5, "count"), objc_msgSend(v3, "nodesCount")];
    v17 = v115[5];
    v115[5] = v16;
  }

  v18 = [v3 edgesLabels];
  v19 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v73 = v18;
  v20 = [v73 countByEnumeratingWithState:&v106 objects:v123 count:16];
  if (v20)
  {
    v21 = *v107;
    v22 = *MEMORY[0x277D22CB0];
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v107 != v21)
        {
          objc_enumerationMutation(v73);
        }

        v24 = [v3 edgesForLabel:*(*(&v106 + 1) + 8 * j) domain:v22];
        if ([v24 intersectsSet:v19])
        {
          v25 = [v24 mutableCopy];
          [v25 intersectSet:v19];
          v26 = [v19 mutableCopy];
          [v26 intersectSet:v24];
          v27 = [v115[5] stringByAppendingFormat:@"Some edges are registered for two labels:\n%@\n%@", v25, v26];
          v28 = v115[5];
          v115[5] = v27;
        }

        [v19 unionSet:v24];
      }

      v20 = [v73 countByEnumeratingWithState:&v106 objects:v123 count:16];
    }

    while (v20);
  }

  v29 = [v19 count];
  if (v29 != [v3 edgesCount])
  {
    v30 = [v115[5] stringByAppendingFormat:@"(edgesForLabel:@).count found %d, edgesCount found %d\n", objc_msgSend(v19, "count"), objc_msgSend(v3, "edgesCount")];
    v31 = v115[5];
    v115[5] = v30;
  }

  v32 = objc_alloc_init(MEMORY[0x277D22BD0]);
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v33 = v5;
  v34 = [v33 countByEnumeratingWithState:&v102 objects:v122 count:16];
  if (v34)
  {
    v35 = *v103;
    do
    {
      for (k = 0; k != v34; ++k)
      {
        if (*v103 != v35)
        {
          objc_enumerationMutation(v33);
        }

        v37 = [*(*(&v102 + 1) + 8 * k) identifier];
        if ([v32 containsIdentifier:v37])
        {
          v38 = [v115[5] stringByAppendingFormat:@"Identifier %u is being used by more than one node\n", v37];
          v39 = v115[5];
          v115[5] = v38;
        }

        [v32 addIdentifier:v37];
      }

      v34 = [v33 countByEnumeratingWithState:&v102 objects:v122 count:16];
    }

    while (v34);
  }

  v40 = objc_alloc_init(MEMORY[0x277D22BD0]);
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v41 = v19;
  v42 = [v41 countByEnumeratingWithState:&v98 objects:v121 count:16];
  if (v42)
  {
    v43 = *v99;
    do
    {
      for (m = 0; m != v42; ++m)
      {
        if (*v99 != v43)
        {
          objc_enumerationMutation(v41);
        }

        v45 = [*(*(&v98 + 1) + 8 * m) identifier];
        if ([v40 containsIdentifier:v45])
        {
          v46 = [v115[5] stringByAppendingFormat:@"Identifier %u is being used by more than one edge\n", v45];
          v47 = v115[5];
          v115[5] = v46;
        }

        [v40 addIdentifier:v45];
      }

      v42 = [v41 countByEnumeratingWithState:&v98 objects:v121 count:16];
    }

    while (v42);
  }

  v48 = [v3 momentNodes];
  v97[0] = MEMORY[0x277D85DD0];
  v97[1] = 3221225472;
  v97[2] = __45__PGManager_Debug___checkConsistencyOfGraph___block_invoke;
  v97[3] = &unk_278885948;
  v97[4] = &v114;
  [v48 enumerateNodesUsingBlock:v97];

  v49 = objc_alloc_init(MEMORY[0x277CCA940]);
  v50 = [v3 nodesCountForLabel:@"Me" domain:300];
  if (v50 >= 2)
  {
    v51 = [v115[5] stringByAppendingFormat:@"Graph has %d Me nodes!\n", v50];
    v52 = v115[5];
    v115[5] = v51;
  }

  v93[0] = MEMORY[0x277D85DD0];
  v93[1] = 3221225472;
  v93[2] = __45__PGManager_Debug___checkConsistencyOfGraph___block_invoke_2;
  v93[3] = &unk_278885970;
  v53 = v49;
  v94 = v53;
  v54 = v3;
  v95 = v54;
  v96 = &v114;
  [v54 enumerateNodesWithLabel:@"Me" domain:300 usingBlock:v93];
  v90[0] = MEMORY[0x277D85DD0];
  v90[1] = 3221225472;
  v90[2] = __45__PGManager_Debug___checkConsistencyOfGraph___block_invoke_3;
  v90[3] = &unk_278889420;
  v92 = &v114;
  v55 = v53;
  v91 = v55;
  [v54 enumeratePersonNodesIncludingMe:0 withBlock:v90];
  v72 = v54;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v56 = v55;
  v57 = [v56 countByEnumeratingWithState:&v86 objects:v120 count:16];
  if (v57)
  {
    v58 = *v87;
    do
    {
      for (n = 0; n != v57; ++n)
      {
        if (*v87 != v58)
        {
          objc_enumerationMutation(v56);
        }

        v60 = *(*(&v86 + 1) + 8 * n);
        v61 = [v56 countForObject:v60];
        if (v61 >= 2)
        {
          v62 = [v115[5] stringByAppendingFormat:@"%lu people nodes found for local identifier %@\n", v61, v60];
          v63 = v115[5];
          v115[5] = v62;
        }
      }

      v57 = [v56 countByEnumeratingWithState:&v86 objects:v120 count:16];
    }

    while (v57);
  }

  v85[0] = MEMORY[0x277D85DD0];
  v85[1] = 3221225472;
  v85[2] = __45__PGManager_Debug___checkConsistencyOfGraph___block_invoke_4;
  v85[3] = &unk_278888DE0;
  v85[4] = &v114;
  [v72 enumerateNodesWithLabel:@"SocialGroup" domain:302 usingBlock:v85];
  v84[0] = MEMORY[0x277D85DD0];
  v84[1] = 3221225472;
  v84[2] = __45__PGManager_Debug___checkConsistencyOfGraph___block_invoke_5;
  v84[3] = &unk_278885998;
  v84[4] = &v114;
  [v72 enumerateNodesWithLabel:0 domain:200 usingBlock:v84];
  v83[0] = MEMORY[0x277D85DD0];
  v83[1] = 3221225472;
  v83[2] = __45__PGManager_Debug___checkConsistencyOfGraph___block_invoke_6;
  v83[3] = &unk_2788859C0;
  v83[4] = &v114;
  [v72 enumerateNodesWithLabel:@"Area" domain:201 usingBlock:v83];
  v82[0] = MEMORY[0x277D85DD0];
  v82[1] = 3221225472;
  v82[2] = __45__PGManager_Debug___checkConsistencyOfGraph___block_invoke_7;
  v82[3] = &unk_2788859F0;
  v82[4] = &v114;
  [v72 enumerateNodesWithLabel:0 domain:400 usingBlock:v82];
  v81[0] = MEMORY[0x277D85DD0];
  v81[1] = 3221225472;
  v81[2] = __45__PGManager_Debug___checkConsistencyOfGraph___block_invoke_8;
  v81[3] = &unk_2788859F0;
  v81[4] = &v114;
  [v72 enumerateNodesWithLabel:@"Holiday" domain:401 usingBlock:v81];
  v64 = [MEMORY[0x277CBEB38] dictionary];
  v65 = [(PGGraphNodeCollection *)PGGraphMemoryNodeCollection nodesInGraph:v72];
  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3221225472;
  v78[2] = __45__PGManager_Debug___checkConsistencyOfGraph___block_invoke_9;
  v78[3] = &unk_278885A18;
  v66 = v64;
  v79 = v66;
  v80 = &v114;
  [v65 enumerateNodesUsingBlock:v78];
  v67 = [MEMORY[0x277CBEB38] dictionary];
  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = __45__PGManager_Debug___checkConsistencyOfGraph___block_invoke_10;
  v75[3] = &unk_278885A40;
  v68 = v67;
  v76 = v68;
  v77 = &v114;
  [v72 enumerateNodesWithBlock:v75];
  v69 = v115[5];

  _Block_object_dispose(&v114, 8);
  v70 = *MEMORY[0x277D85DE8];

  return v69;
}

void __45__PGManager_Debug___checkConsistencyOfGraph___block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  context = objc_autoreleasePoolPush();
  [v3 edgesForLabel:@"NEXT" domain:101];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v35 = 0u;
  v4 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v33;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        v11 = [v10 sourceNode];
        v12 = [v11 isSameNodeAsNode:v3];

        v13 = [v10 targetNode];
        v14 = [v13 isSameNodeAsNode:v3];

        if ((v12 & v7) == 1)
        {
          v15 = [*(*(*(a1 + 32) + 8) + 40) stringByAppendingFormat:@"Moment node can have at most one next edge, moment %@\n", v3];
          v16 = *(*(a1 + 32) + 8);
          v17 = *(v16 + 40);
          *(v16 + 40) = v15;
        }

        if ((v14 & v6) == 1)
        {
          v18 = [*(*(*(a1 + 32) + 8) + 40) stringByAppendingFormat:@"Moment node can have at most one previous edge, moment %@\n", v3];
          v19 = *(*(a1 + 32) + 8);
          v20 = *(v19 + 40);
          *(v19 + 40) = v18;
        }

        v7 |= v12;
        v6 |= v14;
      }

      v5 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v5);
  }

  v21 = [v3 dateNodes];
  if (![v21 count])
  {
    v24 = *(a1 + 32);
    v22 = a1 + 32;
    [*(*(v24 + 8) + 40) stringByAppendingFormat:@"Moment node is not linked to any date node, which is not supposed to happen\n%@\n", v3, v29];
    goto LABEL_16;
  }

  if ([v21 count] >= 3)
  {
    v23 = *(a1 + 32);
    v22 = a1 + 32;
    [*(*(v23 + 8) + 40) stringByAppendingFormat:@"Moment node is linked to more than two date nodes, which is not supposed to happen\n%@ - %@\n", v3, v21];
    v25 = LABEL_16:;
    v26 = *(*v22 + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = v25;
  }

  objc_autoreleasePoolPop(context);
  v28 = *MEMORY[0x277D85DE8];
}

void __45__PGManager_Debug___checkConsistencyOfGraph___block_invoke_2(uint64_t a1, void *a2)
{
  v24 = a2;
  v3 = [v24 localIdentifier];
  if ([v3 length])
  {
    [*(a1 + 32) addObject:v3];
  }

  v4 = [*(a1 + 40) infoNode];
  v5 = [v4 canAccessContactsStore];

  v6 = [v24 name];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ((([v6 length] == 0) & v5) != 1)
      {
        goto LABEL_10;
      }

      v7 = a1 + 48;
      v8 = *(*(*(a1 + 48) + 8) + 40);
      v9 = @"Me node has an empty name\n";
    }

    else
    {
      v7 = a1 + 48;
      v8 = *(*(*(a1 + 48) + 8) + 40);
      v23 = v6;
      v9 = @"Me node has a non-string name '%@'\n";
    }
  }

  else
  {
    v7 = a1 + 48;
    v8 = *(*(*(a1 + 48) + 8) + 40);
    v9 = @"Me node has no name\n";
  }

  v10 = [v8 stringByAppendingFormat:v9, v23];
  v11 = *(*v7 + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

LABEL_10:
  v13 = [v24 contactIdentifier];
  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ((([v13 length] == 0) & v5) != 1)
      {
        goto LABEL_17;
      }

      v15 = *(a1 + 48);
      v14 = a1 + 48;
      v16 = *(*(v15 + 8) + 40);
      v17 = @"Me node has an empty cnid\n";
    }

    else
    {
      v19 = *(a1 + 48);
      v14 = a1 + 48;
      v16 = *(*(v19 + 8) + 40);
      v23 = v13;
      v17 = @"Me node has a non-string cnid '%@'\n";
    }
  }

  else
  {
    v18 = *(a1 + 48);
    v14 = a1 + 48;
    v16 = *(*(v18 + 8) + 40);
    v17 = @"Me node has no cnid\n";
  }

  v20 = [v16 stringByAppendingFormat:v17, v23];
  v21 = *(*v14 + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v20;

LABEL_17:
}

void __45__PGManager_Debug___checkConsistencyOfGraph___block_invoke_3(uint64_t a1, void *a2)
{
  v9 = [a2 localIdentifier];
  if (!v9)
  {
    v3 = *(*(*(a1 + 40) + 8) + 40);
    v4 = @"People node has no uuid\n";
LABEL_8:
    [v3 stringByAppendingFormat:v4, v8];
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v9 length])
    {
      [*(a1 + 32) addObject:v9];
      goto LABEL_10;
    }

    v3 = *(*(*(a1 + 40) + 8) + 40);
    v4 = @"People node has an empty uuid\n";
    goto LABEL_8;
  }

  [*(*(*(a1 + 40) + 8) + 40) stringByAppendingFormat:@"People node has a non-string uuid '%@'\n", v9];
  v5 = LABEL_9:;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

LABEL_10:
}

void __45__PGManager_Debug___checkConsistencyOfGraph___block_invoke_4(uint64_t a1, void *a2)
{
  v13 = [a2 UUID];
  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v13 length])
      {
        goto LABEL_8;
      }

      v4 = *(a1 + 32);
      v3 = a1 + 32;
      v5 = *(*(v4 + 8) + 40);
      v6 = @"Social Group node has an empty uuid\n";
    }

    else
    {
      v8 = *(a1 + 32);
      v3 = a1 + 32;
      v5 = *(*(v8 + 8) + 40);
      v12 = v13;
      v6 = @"Social Group node has a non-string uuid '%@'\n";
    }
  }

  else
  {
    v7 = *(a1 + 32);
    v3 = a1 + 32;
    v5 = *(*(v7 + 8) + 40);
    v6 = @"Social Group node has no uuid\n";
  }

  v9 = [v5 stringByAppendingFormat:v6, v12];
  v10 = *(*v3 + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

LABEL_8:
}

void __45__PGManager_Debug___checkConsistencyOfGraph___block_invoke_5(uint64_t a1, void *a2)
{
  v43 = a2;
  v3 = [v43 label];
  if (![v3 isEqualToString:@"Address"])
  {
    if ([v3 isEqualToString:@"Country"])
    {
      v7 = [v43 name];
      if (v7)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v7 length])
          {
LABEL_32:

            goto LABEL_33;
          }

          v9 = *(a1 + 32);
          v8 = a1 + 32;
          v10 = *(*(v9 + 8) + 40);
          v11 = [v43 label];
          [v10 stringByAppendingFormat:@"%@ node has an empty name\n", v11, v42];
        }

        else
        {
          v21 = *(a1 + 32);
          v8 = a1 + 32;
          v22 = *(*(v21 + 8) + 40);
          v11 = [v43 label];
          [v22 stringByAppendingFormat:@"%@ node has a non-string name '%@'\n", v11, v7];
        }
      }

      else
      {
        v18 = *(a1 + 32);
        v8 = a1 + 32;
        v19 = *(*(v18 + 8) + 40);
        v11 = [v43 label];
        [v19 stringByAppendingFormat:@"%@ node has no name\n", v11, v42];
      }
      v23 = ;
      v24 = *(*v8 + 8);
      v25 = *(v24 + 40);
      *(v24 + 40) = v23;

LABEL_31:
      goto LABEL_32;
    }

    v7 = v43;
    v11 = [v7 name];
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v11 length])
        {
          goto LABEL_23;
        }

        v15 = a1 + 32;
        v16 = *(*(*(a1 + 32) + 8) + 40);
        v17 = [v7 label];
        [v16 stringByAppendingFormat:@"%@ node has an empty name\n", v17, v42];
      }

      else
      {
        v15 = a1 + 32;
        v26 = *(*(*(a1 + 32) + 8) + 40);
        v17 = [v7 label];
        [v26 stringByAppendingFormat:@"%@ node has a non-string name '%@'\n", v17, v11];
      }
    }

    else
    {
      v15 = a1 + 32;
      v20 = *(*(*(a1 + 32) + 8) + 40);
      v17 = [v7 label];
      [v20 stringByAppendingFormat:@"%@ node has no name\n", v17, v42];
    }
    v27 = ;
    v28 = *(*v15 + 8);
    v29 = *(v28 + 40);
    *(v28 + 40) = v27;

LABEL_23:
    v30 = [v7 UUID];
    if (v30)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v30 length])
        {
LABEL_30:

          goto LABEL_31;
        }

        v32 = *(a1 + 32);
        v31 = a1 + 32;
        v33 = *(*(v32 + 8) + 40);
        v34 = [v7 label];
        [v33 stringByAppendingFormat:@"%@ node has an empty uuid\n", v34, v42];
      }

      else
      {
        v37 = *(a1 + 32);
        v31 = a1 + 32;
        v38 = *(*(v37 + 8) + 40);
        v34 = [v7 label];
        [v38 stringByAppendingFormat:@"%@ node has a non-string uuid '%@'\n", v34, v30];
      }
    }

    else
    {
      v35 = *(a1 + 32);
      v31 = a1 + 32;
      v36 = *(*(v35 + 8) + 40);
      v34 = [v7 label];
      [v36 stringByAppendingFormat:@"%@ node has no uuid\n", v34, v42];
    }
    v39 = ;
    v40 = *(*v31 + 8);
    v41 = *(v40 + 40);
    *(v40 + 40) = v39;

    goto LABEL_30;
  }

  [v43 coordinate];
  latitude = v45.latitude;
  longitude = v45.longitude;
  if (!CLLocationCoordinate2DIsValid(v45))
  {
    v12 = *(*(*(a1 + 32) + 8) + 40);
    v7 = [v43 label];
    [v12 stringByAppendingFormat:@"%@ node has invalid coordinates\n", v7];
    goto LABEL_12;
  }

  if (longitude == 0.0 && latitude == 0.0)
  {
    v6 = *(*(*(a1 + 32) + 8) + 40);
    v7 = [v43 label];
    [v6 stringByAppendingFormat:@"%@ node has null latitude and longitude\n", v7];
    v13 = LABEL_12:;
    v14 = *(*(a1 + 32) + 8);
    v11 = *(v14 + 40);
    *(v14 + 40) = v13;
    goto LABEL_31;
  }

LABEL_33:
}

void __45__PGManager_Debug___checkConsistencyOfGraph___block_invoke_6(uint64_t a1, void *a2)
{
  v13 = [a2 name];
  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v13 length])
      {
        goto LABEL_8;
      }

      v4 = *(a1 + 32);
      v3 = a1 + 32;
      v5 = *(*(v4 + 8) + 40);
      v6 = @"Area node has an empty name\n";
    }

    else
    {
      v8 = *(a1 + 32);
      v3 = a1 + 32;
      v5 = *(*(v8 + 8) + 40);
      v12 = v13;
      v6 = @"Area node has a non-string name '%@'\n";
    }
  }

  else
  {
    v7 = *(a1 + 32);
    v3 = a1 + 32;
    v5 = *(*(v7 + 8) + 40);
    v6 = @"Area node has no name\n";
  }

  v9 = [v5 stringByAppendingFormat:v6, v12];
  v10 = *(*v3 + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

LABEL_8:
}

void __45__PGManager_Debug___checkConsistencyOfGraph___block_invoke_7(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [v15 label];
  if (([v3 isEqualToString:@"Date"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Season") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"PartOfDay") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"DayOfWeek"))
  {
    v4 = [v15 name];
    if (v4)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v7 = *(a1 + 32);
        v5 = a1 + 32;
        [*(*(v7 + 8) + 40) stringByAppendingFormat:@"%@ node has a non-string name '%@'\n", v3, v4];
        goto LABEL_17;
      }

      if (![v4 length])
      {
        v6 = *(a1 + 32);
        v5 = a1 + 32;
        [*(*(v6 + 8) + 40) stringByAppendingFormat:@"%@ node has an empty name\n", v3, v14];
        v10 = LABEL_17:;
        v11 = *(*v5 + 8);
        v12 = *(v11 + 40);
        *(v11 + 40) = v10;
      }

LABEL_18:

      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (([v3 isEqualToString:@"Weekend"] & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", @"Weekday") & 1) == 0)
  {
    v4 = [v15 name];
    if (v4)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v13 = *(a1 + 32);
        v5 = a1 + 32;
        [*(*(v13 + 8) + 40) stringByAppendingFormat:@"%@ node has a string name '%@'\n", v3, v4];
        goto LABEL_17;
      }

      if ([v4 integerValue] < 0)
      {
        v8 = *(a1 + 32);
        v5 = a1 + 32;
        [*(*(v8 + 8) + 40) stringByAppendingFormat:@"%@ node has negative name\n", v3, v14];
        goto LABEL_17;
      }

      goto LABEL_18;
    }

LABEL_16:
    v9 = *(a1 + 32);
    v5 = a1 + 32;
    [*(*(v9 + 8) + 40) stringByAppendingFormat:@"%@ node has no name\n", v3, v14];
    goto LABEL_17;
  }

LABEL_19:
}

void __45__PGManager_Debug___checkConsistencyOfGraph___block_invoke_8(uint64_t a1, void *a2)
{
  v13 = [a2 name];
  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v13 length])
      {
        goto LABEL_8;
      }

      v4 = *(a1 + 32);
      v3 = a1 + 32;
      v5 = *(*(v4 + 8) + 40);
      v6 = @"Holiday node has an empty name\n";
    }

    else
    {
      v8 = *(a1 + 32);
      v3 = a1 + 32;
      v5 = *(*(v8 + 8) + 40);
      v12 = v13;
      v6 = @"Holiday node has a non-string name '%@'\n";
    }
  }

  else
  {
    v7 = *(a1 + 32);
    v3 = a1 + 32;
    v5 = *(*(v7 + 8) + 40);
    v6 = @"Holiday node has no name\n";
  }

  v9 = [v5 stringByAppendingFormat:v6, v12];
  v10 = *(*v3 + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

LABEL_8:
}

void __45__PGManager_Debug___checkConsistencyOfGraph___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = [v3 uniqueMemoryIdentifier];
  v4 = [*(a1 + 32) objectForKeyedSubscript:?];
  if (v4)
  {
    v5 = [*(*(*(a1 + 40) + 8) + 40) stringByAppendingFormat:@"Two memory nodes have the same unique identifier %@: %@, %@\n", v7, v4, v3];

    v6 = *(*(a1 + 40) + 8);
    v3 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  else
  {
    [*(a1 + 32) setObject:v3 forKeyedSubscript:v7];
  }
}

void __45__PGManager_Debug___checkConsistencyOfGraph___block_invoke_10(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 conformsToProtocol:&unk_284490578];
  v4 = v11;
  if (v3)
  {
    v5 = v11;
    v6 = [v5 featureIdentifier];
    v7 = [*(a1 + 32) objectForKeyedSubscript:v6];
    if (v7)
    {
      v8 = [*(*(*(a1 + 40) + 8) + 40) stringByAppendingFormat:@"Two feature nodes have the same unique identifier %@: %@, %@\n", v6, v7, v5];
      v9 = *(*(a1 + 40) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }

    else
    {
      [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
    }

    v4 = v11;
  }
}

- (id)_defaultStatisticsWithGraph:(id)a3 verbose:(BOOL)a4 forDiagnostics:(BOOL)a5
{
  MEMORY[0x28223BE20](self);
  v382 = v5;
  v336 = v6;
  v362 = v7;
  v535[1] = *MEMORY[0x277D85DE8];
  v345 = v8;
  v402 = [MEMORY[0x277CCAB68] string];
  v9 = objc_autoreleasePoolPush();
  v10 = [v362 _checkConsistencyOfGraph:v345];
  v11 = v10;
  if (v10 && [v10 length])
  {
    [v402 appendFormat:@"Critical - Graph has inconsistencies:\n%@\n\n", v11];
  }

  objc_autoreleasePoolPop(v9);
  v342 = [v345 infoNode];
  v12 = objc_autoreleasePoolPush();
  v13 = [v342 creationDate];
  [v402 appendFormat:@"Graph Date creation: %@\n", v13];

  if ([v342 canUseLocationDomain])
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  [v402 appendFormat:@"Can Use Domain Location: %@\n", v14];
  if ([v342 canAccessContactsStore])
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  [v402 appendFormat:@"Can Use Contacts Store: %@\n", v15];
  [v402 appendFormat:@"Graph Version: %lu\n", objc_msgSend(v345, "version")];
  objc_autoreleasePoolPop(v12);
  v16 = [v345 nodesCount];
  v17 = [v345 edgesCount];
  v18 = v17;
  if (v16)
  {
    v19 = v17 / v16;
  }

  else
  {
    v19 = 0.0;
  }

  [v402 appendFormat:@"Node Count: %lu\n", v16];
  [v402 appendFormat:@"Edge Count: %lu\n", v18];
  [v402 appendFormat:@"Average Edge by Node: %0.2f\n", *&v19];
  v344 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v347 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v346 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v343 = [v362 photoLibrary];
  v20 = "MusicKitRequestFactory";
  if ((v382 & 1) == 0)
  {
    v354 = objc_autoreleasePoolPush();
    v509 = 0;
    v510 = &v509;
    v511 = 0x2020000000;
    v512 = 0;
    v505 = 0;
    v506 = &v505;
    v507 = 0x2020000000;
    v508 = 0;
    v501 = 0;
    v502 = &v501;
    v503 = 0x2020000000;
    v504 = 0;
    v497 = 0;
    v498 = &v497;
    v499 = 0x2020000000;
    v500 = 0;
    v493 = 0;
    v494 = &v493;
    v495 = 0x2020000000;
    v496 = 0;
    v379 = [v343 librarySpecificFetchOptions];
    v52 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:1];
    v535[0] = v52;
    v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v535 count:1];
    [v379 setSortDescriptors:v53];

    [v379 setChunkSizeForFetch:100];
    [v379 setCacheSizeForFetch:{objc_msgSend(v379, "chunkSizeForFetch")}];
    v391 = objc_autoreleasePoolPush();
    v54 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:1000000301 options:v379];
    v352 = [v54 count];
    v55 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v492 = 0u;
    v491 = 0u;
    v490 = 0u;
    v489 = 0u;
    v397 = v54;
    v56 = [v397 countByEnumeratingWithState:&v489 objects:v534 count:16];
    if (v56)
    {
      v57 = *v490;
      do
      {
        for (i = 0; i != v56; ++i)
        {
          if (*v490 != v57)
          {
            objc_enumerationMutation(v397);
          }

          v59 = *(*(&v489 + 1) + 8 * i);
          v60 = objc_autoreleasePoolPush();
          v61 = [v59 uuid];
          [v347 addObject:v61];

          v62 = [MEMORY[0x277CD97B8] fetchMomentsInHighlight:v59 options:0];
          v488 = 0u;
          v487 = 0u;
          v486 = 0u;
          v485 = 0u;
          v63 = v62;
          v64 = [v63 countByEnumeratingWithState:&v485 objects:v533 count:16];
          if (v64)
          {
            v65 = *v486;
            do
            {
              for (j = 0; j != v64; ++j)
              {
                if (*v486 != v65)
                {
                  objc_enumerationMutation(v63);
                }

                v67 = [*(*(&v485 + 1) + 8 * j) uuid];
                [v55 addObject:v67];
              }

              v64 = [v63 countByEnumeratingWithState:&v485 objects:v533 count:16];
            }

            while (v64);
          }

          objc_autoreleasePoolPop(v60);
        }

        v56 = [v397 countByEnumeratingWithState:&v489 objects:v534 count:16];
      }

      while (v56);
    }

    v350 = [v55 count];
    objc_autoreleasePoolPop(v391);
    v392 = objc_autoreleasePoolPush();
    v68 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:1000000304 options:v379];
    v348 = [v68 count];
    v69 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v484 = 0u;
    v483 = 0u;
    v482 = 0u;
    v481 = 0u;
    v398 = v68;
    v70 = [v398 countByEnumeratingWithState:&v481 objects:v532 count:16];
    if (v70)
    {
      v71 = *v482;
      do
      {
        for (k = 0; k != v70; ++k)
        {
          if (*v482 != v71)
          {
            objc_enumerationMutation(v398);
          }

          v73 = *(*(&v481 + 1) + 8 * k);
          v74 = objc_autoreleasePoolPush();
          v75 = [v73 uuid];
          [v346 addObject:v75];

          v76 = [MEMORY[0x277CD9958] fetchChildDayGroupHighlightsForHighlight:v73 options:v379];
          v480 = 0u;
          v478 = 0u;
          v479 = 0u;
          v477 = 0u;
          v77 = v76;
          v78 = [v77 countByEnumeratingWithState:&v477 objects:v531 count:16];
          if (v78)
          {
            v79 = *v478;
            do
            {
              for (m = 0; m != v78; ++m)
              {
                if (*v478 != v79)
                {
                  objc_enumerationMutation(v77);
                }

                v81 = [*(*(&v477 + 1) + 8 * m) uuid];
                [v69 addObject:v81];
              }

              v78 = [v77 countByEnumeratingWithState:&v477 objects:v531 count:16];
            }

            while (v78);
          }

          objc_autoreleasePoolPop(v74);
        }

        v70 = [v398 countByEnumeratingWithState:&v481 objects:v532 count:16];
      }

      while (v70);
    }

    v335 = [v69 count];
    objc_autoreleasePoolPop(v392);
    v356 = [v343 librarySpecificFetchOptions];
    v82 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:1];
    v530 = v82;
    v83 = [MEMORY[0x277CBEA60] arrayWithObjects:&v530 count:1];
    [v356 setSortDescriptors:v83];

    [v356 setChunkSizeForFetch:100];
    [v356 setCacheSizeForFetch:{objc_msgSend(v356, "chunkSizeForFetch")}];
    v84 = [MEMORY[0x277CD97B8] fetchMomentsWithOptions:v356];
    v85 = [v84 firstObject];
    v340 = [v85 cls_localStartDateComponents];

    v86 = [v84 lastObject];
    v338 = [v86 cls_localEndDateComponents];

    v333 = [v84 count];
    [v342 topTierAestheticScore];
    v88 = v87;
    [PGGraphBuilder topTierAestheticScoreForRatio:v343 inPhotoLibrary:0.01];
    v90 = v89;
    [v342 topTierAestheticScoreForTripKeyAsset];
    v92 = v91;
    [PGGraphBuilder topTierAestheticScoreForRatio:v343 inPhotoLibrary:0.05];
    v94 = v93;
    v365 = [v343 librarySpecificFetchOptions];
    [v365 setIncludeGuestAssets:1];
    v95 = [MEMORY[0x277CCAC30] predicateWithFormat:@"curationScore > 0.0"];
    [v365 setInternalPredicate:v95];

    [v365 setChunkSizeForFetch:1000];
    [v365 setCacheSizeForFetch:1000];
    v96 = MEMORY[0x277D86220];
    v97 = MEMORY[0x277D86220];
    v98 = os_signpost_id_generate(v96);
    v99 = v96;
    if (v98 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_BEGIN, v98, "AssetScoreStatistics", "", buf, 2u);
    }

    info = 0;
    mach_timebase_info(&info);
    v328 = mach_absolute_time();
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __71__PGManager_Debug___defaultStatisticsWithGraph_verbose_forDiagnostics___block_invoke;
    aBlock[3] = &unk_278885800;
    aBlock[4] = &v493;
    aBlock[5] = &v497;
    aBlock[6] = &v501;
    aBlock[7] = &v509;
    aBlock[8] = &v505;
    v100 = _Block_copy(aBlock);
    contexta = [objc_alloc(MEMORY[0x277D3C790]) initWithPhotoLibrary:v343];
    v474 = 0u;
    v475 = 0u;
    v472 = 0u;
    v473 = 0u;
    obja = v84;
    v101 = [obja countByEnumeratingWithState:&v472 objects:v529 count:16];
    if (v101)
    {
      v363 = v101;
      v373 = 0;
      v360 = *v473;
      v102 = MEMORY[0x277D86220];
      do
      {
        for (n = 0; n != v363; ++n)
        {
          if (*v473 != v360)
          {
            objc_enumerationMutation(obja);
          }

          v377 = *(*(&v472 + 1) + 8 * n);
          v370 = objc_autoreleasePoolPush();
          v103 = [v377 uuid];
          [v344 addObject:v103];

          v104 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:v377 options:v365];
          v371 = [v104 count];
          v470 = 0u;
          v471 = 0u;
          v468 = 0u;
          v469 = 0u;
          v105 = v104;
          v106 = [v105 countByEnumeratingWithState:&v468 objects:v528 count:16];
          if (v106)
          {
            v107 = *v469;
            do
            {
              for (ii = 0; ii != v106; ++ii)
              {
                if (*v469 != v107)
                {
                  objc_enumerationMutation(v105);
                }

                (*(v100 + 2))(v100, *(*(&v468 + 1) + 8 * ii), 0);
              }

              v106 = [v105 countByEnumeratingWithState:&v468 objects:v528 count:16];
            }

            while (v106);
          }

          v373 += v371;
          v367 = [v377 estimatedAssetCount];
          if (v371 < v367)
          {
            v109 = [v343 librarySpecificFetchOptions];
            [v109 setIncludeGuestAssets:1];
            v110 = [MEMORY[0x277CCAC30] predicateWithFormat:@"curationScore == 0.0"];
            [v109 setInternalPredicate:v110];

            v111 = +[PGCurationManager assetPropertySetsForCuration];
            [v109 setFetchPropertySets:v111];

            [v109 setChunkSizeForFetch:1000];
            [v109 setCacheSizeForFetch:1000];
            v388 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:v377 options:v109];
            v399 = [v388 count];
            if (v399)
            {
              for (jj = 0; jj < v399; jj += 1000)
              {
                v393 = objc_autoreleasePoolPush();
                if (v399 - jj >= 0x3E8)
                {
                  v113 = 1000;
                }

                else
                {
                  v113 = v399 - jj;
                }

                v114 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{jj, v113}];
                v115 = [v388 objectsAtIndexes:v114];

                [MEMORY[0x277CD97A8] prefetchOnAssets:v115 options:31 curationContext:contexta];
                v466 = 0u;
                v467 = 0u;
                v464 = 0u;
                v465 = 0u;
                v116 = v115;
                v117 = [v116 countByEnumeratingWithState:&v464 objects:v527 count:16];
                if (v117)
                {
                  v118 = *v465;
                  do
                  {
                    for (kk = 0; kk != v117; ++kk)
                    {
                      if (*v465 != v118)
                      {
                        objc_enumerationMutation(v116);
                      }

                      (*(v100 + 2))(v100, *(*(&v464 + 1) + 8 * kk), 1);
                    }

                    v117 = [v116 countByEnumeratingWithState:&v464 objects:v527 count:16];
                  }

                  while (v117);
                }

                objc_autoreleasePoolPop(v393);
              }
            }

            if (v399 + v371 != v367)
            {
              v120 = v102;
              if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109890;
                *&buf[4] = v371;
                *&buf[8] = 1024;
                *&buf[10] = v399;
                *&buf[14] = 1024;
                *&buf[16] = v367;
                *&buf[20] = 2112;
                *&buf[22] = v377;
                _os_log_error_impl(&dword_22F0FC000, v102, OS_LOG_TYPE_ERROR, "Numbers of fetched assets with curation score %d and without curation score %d don't match expected number of assets %d for moment %@", buf, 0x1Eu);
              }
            }

            v373 += v399;
          }

          objc_autoreleasePoolPop(v370);
        }

        v363 = [obja countByEnumeratingWithState:&v472 objects:v529 count:16];
      }

      while (v363);
    }

    else
    {
      v373 = 0;
    }

    v316 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v319 = MEMORY[0x277D86220];
    if (v98 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_END, v98, "AssetScoreStatistics", "", buf, 2u);
    }

    v320 = MEMORY[0x277D86220];
    v321 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v320, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "AssetScoreStatistics";
      *&buf[12] = 2048;
      *&buf[14] = ((((v316 - v328) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    [v402 appendFormat:@"Photo Count: %lu\n", v373];
    [v402 appendFormat:@"Moment Count: %lu\n", v333];
    [v402 appendFormat:@"Highlight Count: %lu, covering %lu moments\n", v352, v350];
    [v402 appendFormat:@"Highlight Group Count: %lu, covering %lu highlights\n", v348, v335];
    [v402 appendFormat:@"Date Range: %lu - %lu\n\n", objc_msgSend(v340, "year"), objc_msgSend(v338, "year")];
    v322 = *(v498 + 6);
    v323 = [v342 numberOfBetterAssets];
    v324 = *(v502 + 6);
    v325 = [v342 numberOfImprovedAssets];
    v326 = *(v506 + 6);
    v327 = [v342 numberOfDefaultAssets];
    [v402 appendFormat:@"Assets Counts:\n\tBetter: %d (graph: %d)\n\tImproved: %d (graph: %d)\n\tDefault: %d (graph: %d)\n\tUtility: %d (graph: %d)\nTotal: %d (graph: %d)\n", v322, v323, v324, v325, v326, v327, *(v510 + 6), objc_msgSend(v342, "numberOfUtilityAssets"), v373, objc_msgSend(v342, "numberOfAssets")];
    [v402 appendFormat:@"Current Graph Top-tier Aesthetic Score: %f\n", v88];
    [v402 appendFormat:@"Library Top-tier Aesthetic Score: %f\n\n", v90];
    [v402 appendFormat:@"Current Graph Top-tier Aesthetic Score for Trip Key Asset: %f\n", v92];
    [v402 appendFormat:@"Library Top-tier Aesthetic Score for Trip Key Asset: %f\n\n", v94];

    _Block_object_dispose(&v493, 8);
    _Block_object_dispose(&v497, 8);
    _Block_object_dispose(&v501, 8);
    _Block_object_dispose(&v505, 8);
    _Block_object_dispose(&v509, 8);

    objc_autoreleasePoolPop(v354);
    v20 = "MusicKitRequestFactory";
  }

  v369 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v509 = 0;
  v510 = &v509;
  v21 = *(v20 + 261);
  v511 = v21;
  v512 = 0;
  v505 = 0;
  v506 = &v505;
  v507 = v21;
  v508 = 0;
  v501 = 0;
  v502 = &v501;
  v503 = v21;
  v504 = 0;
  v497 = 0;
  v498 = &v497;
  v499 = v21;
  v500 = 0;
  v493 = 0;
  v494 = &v493;
  v495 = v21;
  v496 = 0;
  context = objc_autoreleasePoolPush();
  v22 = [v345 momentNodesSortedByDate];
  v23 = [v22 count];
  v396 = [MEMORY[0x277CBEB58] set];
  v390 = [MEMORY[0x277CBEB58] set];
  v462 = 0u;
  v463 = 0u;
  v460 = 0u;
  v461 = 0u;
  obj = v22;
  v24 = [obj countByEnumeratingWithState:&v460 objects:v526 count:16];
  v387 = v23;
  v25 = 0;
  v26 = 0;
  if (v24)
  {
    v27 = *v461;
    do
    {
      for (mm = 0; mm != v24; ++mm)
      {
        if (*v461 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v460 + 1) + 8 * mm);
        v30 = [v29 uuid];
        [v369 addObject:v30];

        if ([v29 isInteresting])
        {
          [v396 addObject:v29];
        }

        if ([v29 isSmartInteresting])
        {
          [v390 addObject:v29];
        }

        v31 = [v29 isInterestingForMemories];
        [v29 contentScore];
        v33 = v32;
        v459[0] = MEMORY[0x277D85DD0];
        v459[1] = 3221225472;
        v459[2] = __71__PGManager_Debug___defaultStatisticsWithGraph_verbose_forDiagnostics___block_invoke_391;
        v459[3] = &unk_278885828;
        v459[4] = &v509;
        v459[5] = &v505;
        v459[6] = &v501;
        v459[7] = &v497;
        v459[8] = &v493;
        [v29 enumerateAddressEdgesAndNodesUsingBlock:v459];
        v26 += v31;
        if (v33 < 0.5)
        {
          ++v25;
        }
      }

      v24 = [obj countByEnumeratingWithState:&v460 objects:v526 count:16];
    }

    while (v24);
  }

  v34 = [v396 mutableCopy];
  [v34 intersectSet:v390];
  v35 = [v396 mutableCopy];
  [v35 minusSet:v390];
  v36 = [v390 mutableCopy];
  [v36 minusSet:v396];
  v37 = [MEMORY[0x277CBEB58] setWithArray:obj];
  [v37 minusSet:v396];
  [v37 minusSet:v390];
  [v402 appendFormat:@"Moment nodes count: %lu\n", v387];
  [v402 appendFormat:@"\tInteresting: %.lu\n", objc_msgSend(v396, "count")];
  [v402 appendFormat:@"\tSmart: %.lu\n", objc_msgSend(v390, "count")];
  [v402 appendFormat:@"\tInteresting and smart: %.lu\n", objc_msgSend(v34, "count")];
  [v402 appendFormat:@"\tInteresting and not smart: %.lu\n", objc_msgSend(v35, "count")];
  [v402 appendFormat:@"\tSmart and not interesting: %.lu\n", objc_msgSend(v36, "count")];
  [v402 appendFormat:@"\tNot smart and not interesting: %.lu\n", objc_msgSend(v37, "count")];
  [v402 appendFormat:@"\tInteresting for Memories: %.lu\n", v26];
  [v402 appendFormat:@"\tJunk (contentScore < 0.5): %.lu\n\n", v25];

  objc_autoreleasePoolPop(context);
  if ((v382 & 1) == 0)
  {
    v38 = objc_autoreleasePoolPush();
    [v402 appendFormat:@"Graph <-> Library Matching\n"];
    v39 = [v369 mutableCopy];
    [v39 intersectSet:v344];
    v40 = [v39 count];
    [v402 appendFormat:@"\tNumber of Moments: %lu\n", objc_msgSend(v344, "count")];
    [v402 appendFormat:@"\tNumber of Moment nodes: %lu\n", objc_msgSend(v369, "count")];
    [v402 appendFormat:@"\tNumber of Moment nodes matching moments: %lu\n", v40];
    [v402 appendFormat:@"\tNumber of Moment nodes without moment: %lu\n", objc_msgSend(v369, "count") - v40];
    [v402 appendFormat:@"\tNumber of Moments without moment nodes: %lu\n\n", objc_msgSend(v344, "count") - v40];
    v41 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v457[0] = MEMORY[0x277D85DD0];
    v457[1] = 3221225472;
    v457[2] = __71__PGManager_Debug___defaultStatisticsWithGraph_verbose_forDiagnostics___block_invoke_2;
    v457[3] = &unk_278885850;
    v42 = v41;
    v458 = v42;
    [v345 enumerateDayHighlightNodesWithBlock:v457];
    v43 = [v42 mutableCopy];
    [v43 intersectSet:v347];
    v44 = [v43 count];
    [v402 appendFormat:@"\tNumber of Highlights: %lu\n", objc_msgSend(v347, "count")];
    [v402 appendFormat:@"\tNumber of Highlight nodes: %lu\n", objc_msgSend(v42, "count")];
    [v402 appendFormat:@"\tNumber of Highlight nodes matching highlights: %lu\n", v44];
    [v402 appendFormat:@"\tNumber of Highlight nodes without highlights: %lu\n", objc_msgSend(v42, "count") - v44];
    [v402 appendFormat:@"\tNumber of Highlights without highlight nodes: %lu\n\n", objc_msgSend(v347, "count") - v44];
    v45 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v455[0] = MEMORY[0x277D85DD0];
    v455[1] = 3221225472;
    v455[2] = __71__PGManager_Debug___defaultStatisticsWithGraph_verbose_forDiagnostics___block_invoke_3;
    v455[3] = &unk_278885878;
    v46 = v45;
    v456 = v46;
    [v345 enumerateHighlightGroupNodesWithBlock:v455];
    v47 = [v46 mutableCopy];
    [v47 intersectSet:v346];
    v48 = [v47 count];
    [v402 appendFormat:@"\tNumber of Highlight groups: %lu\n", objc_msgSend(v346, "count")];
    [v402 appendFormat:@"\tNumber of Highlight group nodes: %lu\n", objc_msgSend(v46, "count")];
    [v402 appendFormat:@"\tNumber of Highlight group nodes matching highlight groups: %lu\n", v48];
    [v402 appendFormat:@"\tNumber of Highlight group nodes without highlight groups: %lu\n", objc_msgSend(v46, "count") - v48];
    [v402 appendFormat:@"\tNumber of Highlight groups without highlight group nodes: %lu\n\n", objc_msgSend(v346, "count") - v48];

    objc_autoreleasePoolPop(v38);
  }

  [v402 appendFormat:@"People: %lu\n", objc_msgSend(v345, "numberOfPersonNodesIncludingMe:", 0)];
  v49 = [v362 _socialGroupsStatistics:v345];
  [v402 appendFormat:@"%@\n", v49];

  v334 = [v345 meNode];
  v332 = [v334 localIdentifier];
  if (v334)
  {
    v50 = [v362 _stringDescriptionForMeNode:?];
    [v402 appendString:v50];

    v51 = [v345 nodesForLabel:@"Me" domain:300];
    v451[0] = MEMORY[0x277D85DD0];
    v451[1] = 3221225472;
    v451[2] = __71__PGManager_Debug___defaultStatisticsWithGraph_verbose_forDiagnostics___block_invoke_4;
    v451[3] = &unk_278888960;
    v452 = v334;
    v453 = v402;
    v454 = v362;
    [v51 enumerateObjectsUsingBlock:v451];
  }

  else
  {
    [v402 appendFormat:@"No Me node!!!\n"];
  }

  v121 = [v345 meNode];
  v337 = [v121 inferredPersonNode];

  if (!v337)
  {
    v124 = @"No Suggested Me node.\n\n";
    goto LABEL_101;
  }

  v122 = [v337 localIdentifier];
  v123 = [v332 isEqualToString:v122];

  if (v123)
  {
    v124 = @"### Suggested Me node matches Me node.\n\n";
LABEL_101:
    [v402 appendFormat:v124];
    goto LABEL_105;
  }

  if ([v332 length])
  {
    [v402 appendFormat:@"### Suggested Me node mismatch.\n\n"];
  }

  v125 = [v337 localIdentifier];
  v126 = [v337 name];
  v127 = [v337 contactIdentifier];
  [v402 appendFormat:@"Suggested Me node found: id:'%@', name:'%@', contact:'%@'\n\n", v125, v126, v127];

LABEL_105:
  v389 = [v362 _dateFormatter];
  [v402 appendFormat:@"Persons with age category child:\n"];
  v128 = [v345 personNodesIncludingMe:0];
  v129 = +[PGGraphPersonNode personSortDescriptors];
  v130 = [v128 sortedArrayUsingDescriptors:v129];

  v449 = 0u;
  v450 = 0u;
  v447 = 0u;
  v448 = 0u;
  v357 = v130;
  v131 = [v357 countByEnumeratingWithState:&v447 objects:v525 count:16];
  if (v131)
  {
    v132 = *v448;
    do
    {
      for (nn = 0; nn != v131; ++nn)
      {
        if (*v448 != v132)
        {
          objc_enumerationMutation(v357);
        }

        v134 = *(*(&v447 + 1) + 8 * nn);
        if ([v134 ageCategory] == 2)
        {
          v135 = [v134 birthdayDate];
          if (v135)
          {
            v136 = [v389 stringFromDate:v135];
            v137 = [v134 name];
            [v402 appendFormat:@"\t%@, with birthday:%@\n", v137, v136];
          }

          else
          {
            v138 = [v134 name];
            v136 = v138;
            if (v138)
            {
              v139 = v138;
            }

            else
            {
              v139 = @"Unnamed child";
            }

            [v402 appendFormat:@"\t%@\n", v139];
          }
        }
      }

      v131 = [v357 countByEnumeratingWithState:&v447 objects:v525 count:16];
    }

    while (v131);
  }

  [v402 appendString:@"\n"];
  if ((v382 & 1) == 0)
  {
    v140 = objc_autoreleasePoolPush();
    v141 = [v362 blockedFeatures];
    v142 = [(__CFString *)v141 count];
    v143 = @"none";
    if (v142)
    {
      v143 = v141;
    }

    [v402 appendFormat:@"Blocked Memory Features: %@\n\n", v143];

    objc_autoreleasePoolPop(v140);
  }

  v144 = objc_autoreleasePoolPush();
  v145 = [v362 _stringDescriptionForPeopleEventsWithGraph:v345];
  [v402 appendFormat:@"%@\n", v145];

  objc_autoreleasePoolPop(v144);
  v146 = objc_autoreleasePoolPush();
  v147 = [MEMORY[0x277D27690] currentLocalDate];
  v148 = objc_opt_class();
  v149 = [v147 dateByAddingTimeInterval:604800.0];
  v150 = [v362 serviceManager];
  v151 = [v362 locationCache];
  v152 = [v148 _calendarEventsBetweenDate:v149 andDate:v147 atLocation:0 withPersonLocalIdentifiers:0 inPhotoLibrary:0 serviceManager:v150 locationCache:v151];

  [v402 appendFormat:@"Number of significant calendar events in the past week: %d\n\n", objc_msgSend(v152, "count")];
  objc_autoreleasePoolPop(v146);
  v394 = objc_autoreleasePoolPush();
  v400 = [v345 supersets];
  [v402 appendFormat:@"\nSupersets: %zu\n", objc_msgSend(v400, "count")];
  v153 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalDateInterval" ascending:1];
  v524 = v153;
  v154 = [MEMORY[0x277CBEA60] arrayWithObjects:&v524 count:1];
  v155 = [v400 sortedArrayUsingDescriptors:v154];

  v445 = 0u;
  v446 = 0u;
  v443 = 0u;
  v444 = 0u;
  v156 = v155;
  v157 = [v156 countByEnumeratingWithState:&v443 objects:v523 count:16];
  if (v157)
  {
    v158 = *v444;
    do
    {
      for (i1 = 0; i1 != v157; ++i1)
      {
        if (*v444 != v158)
        {
          objc_enumerationMutation(v156);
        }

        v160 = *(*(&v443 + 1) + 8 * i1);
        v161 = [v160 addressNode];
        v162 = [v161 keywordDescription];

        v163 = [v160 universalStartDate];
        v164 = [v389 stringFromDate:v163];

        v165 = [v160 universalEndDate];
        v166 = [v389 stringFromDate:v165];

        v167 = [v160 collection];
        v168 = [v167 momentNodes];
        [v402 appendFormat:@"\t%@ from %@ to %@ (%lu moments)\n", v162, v164, v166, objc_msgSend(v168, "count")];
      }

      v157 = [v156 countByEnumeratingWithState:&v443 objects:v523 count:16];
    }

    while (v157);
  }

  objc_autoreleasePoolPop(v394);
  v169 = [PGTitleGenerationContext alloc];
  v170 = [v362 serviceManager];
  v361 = [(PGTitleGenerationContext *)v169 initWithGraph:v345 serviceManager:v170];

  v171 = objc_autoreleasePoolPush();
  v172 = [v345 longTripNodes];
  v173 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalStartDate" ascending:1];
  *buf = v173;
  v174 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalEndDate" ascending:1];
  *&buf[8] = v174;
  v175 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"UUID" ascending:1];
  *&buf[16] = v175;
  v176 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:3];

  v177 = [v172 sortedArrayUsingDescriptors:v176];

  [v402 appendFormat:@"\nTrips: %lu\n", objc_msgSend(v177, "count")];
  v178 = [v362 _stringDescriptionForMeaningfulEvents:v177 isTrip:1 forDiagnostics:v382 titleGenerationContext:v361];
  [v402 appendFormat:@"%@\n", v178];

  objc_autoreleasePoolPop(v171);
  v179 = objc_autoreleasePoolPush();
  v180 = [v345 shortTripNodes];
  v181 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalStartDate" ascending:1];
  *buf = v181;
  v182 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalEndDate" ascending:1];
  *&buf[8] = v182;
  v183 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"UUID" ascending:1];
  *&buf[16] = v183;
  v184 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:3];

  v185 = [v180 sortedArrayUsingDescriptors:v184];

  [v402 appendFormat:@"Weekends: %lu\n", objc_msgSend(v185, "count")];
  v186 = [v362 _stringDescriptionForMeaningfulEvents:v185 isTrip:1 forDiagnostics:v382 titleGenerationContext:v361];
  [v402 appendFormat:@"%@\n", v186];

  objc_autoreleasePoolPop(v179);
  v329 = objc_autoreleasePoolPush();
  v341 = +[PGMeaningfulEventRequiredCriteriaFactory availableMeaningLabels];
  v187 = [v345 edgesForLabel:@"MEANING" domain:700];
  contextb = [MEMORY[0x277CBEB38] dictionary];
  v401 = [MEMORY[0x277CBEB38] dictionary];
  v374 = [MEMORY[0x277CBEB38] dictionary];
  v339 = [v345 meaningfulEvents];
  v372 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v339, "count")}];
  v395 = [MEMORY[0x277CBEB38] dictionary];
  v349 = objc_alloc_init(PGEventLabelingConfiguration);
  if (+[PGEventLabelingConfiguration isEventLabelingEnabled])
  {
    v188 = [MEMORY[0x277CBEB58] setWithArray:v341];
    v189 = [(PGEventLabelingConfiguration *)v349 meaningLabels];
    [v188 unionSet:v189];

    v190 = [v188 allObjects];

    v341 = v190;
  }

  v441 = 0u;
  v442 = 0u;
  v439 = 0u;
  v440 = 0u;
  v355 = v187;
  v191 = [v355 countByEnumeratingWithState:&v439 objects:v522 count:16];
  if (v191)
  {
    v192 = *v440;
    do
    {
      for (i2 = 0; i2 != v191; ++i2)
      {
        if (*v440 != v192)
        {
          objc_enumerationMutation(v355);
        }

        v194 = *(*(&v439 + 1) + 8 * i2);
        v195 = [v194 meaningLabel];
        v196 = [v194 sourceNode];
        if (!+[PGEventLabelingConfiguration isEventLabelingEnabled](PGEventLabelingConfiguration, "isEventLabelingEnabled") || (-[PGEventLabelingConfiguration thresholdsBy:](v349, "thresholdsBy:", v195), v197 = objc_claimAutoreleasedReturnValue(), [v197 highPrecisionThreshold], v199 = v198, v197, objc_msgSend(v194, "confidence"), v200 >= v199))
        {
          v201 = [v196 alternativeMeaningLabels];
          v202 = [v201 containsObject:v195];

          if (v202)
          {
            v203 = MEMORY[0x277CCABB0];
            v204 = [v374 objectForKeyedSubscript:v195];
            v205 = [v203 numberWithInteger:{objc_msgSend(v204, "integerValue") + 1}];
            [v374 setObject:v205 forKeyedSubscript:v195];
          }

          v206 = [v395 objectForKeyedSubscript:v195];
          v207 = v206 == 0;

          if (v207)
          {
            v208 = [MEMORY[0x277CBEB18] array];
            [v395 setObject:v208 forKeyedSubscript:v195];
          }

          v209 = [v395 objectForKeyedSubscript:v195];
          [v209 addObject:v196];

          [v372 addObject:v196];
        }
      }

      v191 = [v355 countByEnumeratingWithState:&v439 objects:v522 count:16];
    }

    while (v191);
  }

  v210 = [v341 sortedArrayUsingSelector:sel_compare_];
  [v402 appendFormat:@"\nMeaningful Events: %lu events, %lu meanings\n", objc_msgSend(v339, "count"), objc_msgSend(v345, "edgesCountForLabel:domain:", @"MEANING", 700)];
  v437 = 0u;
  v438 = 0u;
  v435 = 0u;
  v436 = 0u;
  v380 = v210;
  v211 = [v380 countByEnumeratingWithState:&v435 objects:v521 count:16];
  if (v211)
  {
    v212 = *v436;
    do
    {
      for (i3 = 0; i3 != v211; ++i3)
      {
        if (*v436 != v212)
        {
          objc_enumerationMutation(v380);
        }

        v214 = *(*(&v435 + 1) + 8 * i3);
        v215 = [v395 objectForKeyedSubscript:v214];
        if ([v215 count])
        {
          v216 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalStartDate" ascending:1];
          *buf = v216;
          v217 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalEndDate" ascending:1];
          *&buf[8] = v217;
          v218 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"UUID" ascending:1];
          *&buf[16] = v218;
          v219 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:3];

          [v215 sortUsingDescriptors:v219];
          [v402 appendFormat:@"%@: %lu\n", v214, objc_msgSend(v215, "count")];
          v220 = [v362 _stringDescriptionForMeaningfulEvents:v215 isTrip:0 forDiagnostics:v382 titleGenerationContext:v361];
          [v402 appendFormat:@"%@\n", v220];
        }

        v221 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v215, "count")}];
        [contextb setObject:v221 forKeyedSubscript:v214];
      }

      v211 = [v380 countByEnumeratingWithState:&v435 objects:v521 count:16];
    }

    while (v211);
  }

  v222 = [v372 count];
  if (v222 < [v339 count])
  {
    v223 = [MEMORY[0x277CBEB18] array];
    v433 = 0u;
    v434 = 0u;
    v431 = 0u;
    v432 = 0u;
    v224 = v339;
    v225 = [v224 countByEnumeratingWithState:&v431 objects:v520 count:16];
    if (v225)
    {
      v226 = *v432;
      do
      {
        for (i4 = 0; i4 != v225; ++i4)
        {
          if (*v432 != v226)
          {
            objc_enumerationMutation(v224);
          }

          v228 = *(*(&v431 + 1) + 8 * i4);
          if (([v372 containsObject:v228] & 1) == 0)
          {
            [v223 addObject:v228];
          }
        }

        v225 = [v224 countByEnumeratingWithState:&v431 objects:v520 count:16];
      }

      while (v225);
    }

    [v402 appendFormat:@"Other meaningful events:\n"];
    v229 = [v362 _stringDescriptionForMeaningfulEvents:v223 isTrip:0 forDiagnostics:v382 titleGenerationContext:v361];
    [v402 appendFormat:@"%@\n", v229];
  }

  [v402 appendFormat:@"Number of alternative meanings: %lu \n", objc_msgSend(v345, "edgesCountForLabel:domain:", @"MEANING", 702)];
  v366 = [MEMORY[0x277CBEB58] set];
  v230 = [v345 edgesForLabel:@"MEANING" domain:702];
  v429 = 0u;
  v430 = 0u;
  v427 = 0u;
  v428 = 0u;
  v353 = v230;
  v231 = [v353 countByEnumeratingWithState:&v427 objects:v519 count:16];
  if (v231)
  {
    v232 = *v428;
    do
    {
      for (i5 = 0; i5 != v231; ++i5)
      {
        if (*v428 != v232)
        {
          objc_enumerationMutation(v353);
        }

        v234 = *(*(&v427 + 1) + 8 * i5);
        v235 = [v234 meaningLabel];
        v236 = MEMORY[0x277CCABB0];
        v237 = [v401 objectForKeyedSubscript:v235];
        v238 = [v236 numberWithInteger:{objc_msgSend(v237, "integerValue") + 1}];
        [v401 setObject:v238 forKeyedSubscript:v235];

        v239 = [v234 sourceNode];
        [v366 addObject:v239];
      }

      v231 = [v353 countByEnumeratingWithState:&v427 objects:v519 count:16];
    }

    while (v231);
  }

  [v402 appendFormat:@"Number of moments connected with alternative meanings: %lu\n", objc_msgSend(v366, "count")];
  v331 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@|   A   |   B   |  A\\B  |  B\\A  |  A⋂B  |  A⋃B  |", @"Meaning (A) / Alternative (B) "];
  v240 = [&stru_2843F5C58 stringByPaddingToLength:objc_msgSend(v331 withString:"length") startingAtIndex:{@"_", 0}];
  [v402 appendFormat:@"%@\n%@\n", v331, v240];
  spid = v240;
  v425 = 0u;
  v426 = 0u;
  v423 = 0u;
  v424 = 0u;
  v351 = v380;
  v241 = 0;
  v242 = 0;
  v243 = 0;
  v244 = 0;
  v245 = [v351 countByEnumeratingWithState:&v423 objects:v518 count:16];
  if (v245)
  {
    v381 = 0;
    v383 = 0;
    v364 = *v424;
    do
    {
      v246 = 0;
      v368 = v245;
      do
      {
        if (*v424 != v364)
        {
          objc_enumerationMutation(v351);
        }

        v376 = v244;
        v378 = v242;
        v247 = *(*(&v423 + 1) + 8 * v246);
        v248 = [contextb objectForKeyedSubscript:v247];
        v249 = [v248 unsignedLongValue];
        v250 = v241;

        v251 = [v401 objectForKeyedSubscript:v247];
        v252 = [v251 unsignedLongValue];

        v253 = [v374 objectForKeyedSubscript:v247];
        v254 = [v253 unsignedLongValue];

        v255 = [v247 stringByPaddingToLength:objc_msgSend(@"Meaning (A) / Alternative (B) " withString:"length") startingAtIndex:{@" ", 0}];
        v256 = v249 - v254;
        v257 = v252 - v254;
        v258 = v252 - v254 + v249;
        [v402 appendFormat:@"%@|%7lu|%7lu|%7lu|%7lu|%7lu|%7lu|\n", v255, v249, v252, v249 - v254, v252 - v254, v254, v258];

        v381 += v249;
        v383 += v252;
        v244 = v254 + v376;
        v242 = v258 + v378;
        v243 += v256;
        v241 = v257 + v250;
        ++v246;
      }

      while (v368 != v246);
      v245 = [v351 countByEnumeratingWithState:&v423 objects:v518 count:16];
    }

    while (v245);
  }

  else
  {
    v381 = 0;
    v383 = 0;
  }

  v259 = v242;

  v260 = [@"Totals" stringByPaddingToLength:objc_msgSend(@"Meaning (A) / Alternative (B) " withString:"length") startingAtIndex:{@" ", 0}];
  [v402 appendFormat:@"%@\n%@|%7lu|%7lu|%7lu|%7lu|%7lu|%7lu|\n", spid, v260, v381, v383, v243, v241, v244, v259];

  objc_autoreleasePoolPop(v329);
  v261 = objc_autoreleasePoolPush();
  v262 = [v345 mainUrbanCityNodes];
  [v402 appendFormat:@"\n\nMain Urban Cities: %lu\n", objc_msgSend(v262, "count")];
  v263 = [v362 _stringDescriptionForUrbanCities:v262];
  [v402 appendFormat:@"%@\n", v263];

  objc_autoreleasePoolPop(v261);
  v264 = objc_autoreleasePoolPush();
  v265 = [v345 interestingCityNodes];
  v266 = [v265 set];
  v267 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"name" ascending:1];
  v517 = v267;
  v268 = [MEMORY[0x277CBEA60] arrayWithObjects:&v517 count:1];
  v269 = [v266 sortedArrayUsingDescriptors:v268];

  [v402 appendFormat:@"Interesting Cities: %lu\n", objc_msgSend(v269, "count")];
  v270 = [v362 _stringDescriptionForInterestingCities:v269];
  [v402 appendFormat:@"%@\n", v270];

  objc_autoreleasePoolPop(v264);
  v271 = objc_autoreleasePoolPush();
  v272 = [v345 edgesForLabel:@"CELEBRATING" domain:401];
  v273 = [v272 valueForKeyPath:@"targetNode.name"];
  v274 = [v273 allObjects];

  [v402 appendFormat:@"Celebrated Events: %lu\n", objc_msgSend(v274, "count")];
  if ([v274 count])
  {
    v275 = [v274 componentsJoinedByString:{@", "}];
    [v402 appendFormat:@"%@\n", v275];
  }

  objc_autoreleasePoolPop(v271);
  v276 = objc_autoreleasePoolPush();
  v277 = [v362 _stringDescriptionForPetsWithGraph:v345];
  [v402 appendString:v277];

  objc_autoreleasePoolPop(v276);
  v278 = objc_autoreleasePoolPush();
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = v21;
  *&buf[24] = 0;
  info = 0;
  p_info = &info;
  v421 = v21;
  v422 = 0;
  v279 = objc_alloc_init(PGNeighborScoreComputer);
  v280 = [v345 momentNodes];
  v415[0] = MEMORY[0x277D85DD0];
  v415[1] = 3221225472;
  v415[2] = __71__PGManager_Debug___defaultStatisticsWithGraph_verbose_forDiagnostics___block_invoke_5;
  v415[3] = &unk_2788858A0;
  v281 = v279;
  v416 = v281;
  v417 = buf;
  v418 = &info;
  [v280 enumerateNodesUsingBlock:v415];

  [v402 appendFormat:@"[Neighbor] Interesting Events: %lu\n", *(*&buf[8] + 24)];
  [v402 appendFormat:@"[Neighbor] Highly Interesting Events: %lu\n", *&p_info[3]];

  _Block_object_dispose(&info, 8);
  _Block_object_dispose(buf, 8);
  objc_autoreleasePoolPop(v278);
  v282 = objc_autoreleasePoolPush();
  v283 = [MEMORY[0x277CBEB18] array];
  v413[0] = MEMORY[0x277D85DD0];
  v413[1] = 3221225472;
  v413[2] = __71__PGManager_Debug___defaultStatisticsWithGraph_verbose_forDiagnostics___block_invoke_6;
  v413[3] = &unk_278888CD0;
  v284 = v283;
  v414 = v284;
  [v345 enumerateNodesWithLabel:@"Area" domain:201 usingBlock:v413];
  [v284 sortUsingSelector:sel_localizedCompare_];
  v285 = [v284 count];
  v286 = [v284 componentsJoinedByString:@"\n"];
  [v402 appendFormat:@"\nBlocked AOIs: %lu %@", v285, v286];

  objc_autoreleasePoolPop(v282);
  [v402 appendFormat:@"\nNumber of Default Addresses: %lu", v510[3]];
  [v402 appendFormat:@"\nNumber of Improved Addresses: %lu", v506[3]];
  [v402 appendFormat:@"\nNumber of Coarse Addresses: %lu", v502[3]];
  v287 = v498[3];
  [v402 appendFormat:@"\nNumber of Ocean Addresses: %lu (far away from projection: %lu)", v287, v494[3]];
  v288 = objc_autoreleasePoolPush();
  v289 = [v362 _stringDescriptionForDisambiguatedLocationsWithGraph:v345];
  [v402 appendString:v289];

  objc_autoreleasePoolPop(v288);
  v290 = objc_autoreleasePoolPush();
  v291 = [v362 _stringDescriptionForDisambiguatedPOIsInMomentNodes:obj];
  [v402 appendString:v291];

  objc_autoreleasePoolPop(v290);
  v292 = objc_autoreleasePoolPush();
  v293 = [v362 _stringDescriptionForBusinessItemsWithGraph:v345 includingInferredThroughPublicEvents:0 verbose:v336];
  [v402 appendString:v293];

  objc_autoreleasePoolPop(v292);
  v294 = objc_autoreleasePoolPush();
  v295 = [v362 _stringDescriptionForPublicEventsWithGraph:v345 verbose:v336];
  [v402 appendString:v295];

  objc_autoreleasePoolPop(v294);
  v296 = objc_autoreleasePoolPush();
  [v402 appendFormat:@"\n\nPlaces:\n"];
  v297 = [MEMORY[0x277CBEB18] array];
  v411[0] = MEMORY[0x277D85DD0];
  v411[1] = 3221225472;
  v411[2] = __71__PGManager_Debug___defaultStatisticsWithGraph_verbose_forDiagnostics___block_invoke_7;
  v411[3] = &unk_2788875D0;
  v298 = v297;
  v412 = v298;
  [v345 enumerateNodesWithLabel:0 domain:501 usingBlock:v411];
  v299 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"label" ascending:1];
  v515 = v299;
  v300 = [MEMORY[0x277CBEA60] arrayWithObjects:&v515 count:1];
  [v298 sortUsingDescriptors:v300];

  v409[0] = MEMORY[0x277D85DD0];
  v409[1] = 3221225472;
  v409[2] = __71__PGManager_Debug___defaultStatisticsWithGraph_verbose_forDiagnostics___block_invoke_8;
  v409[3] = &unk_2788858C8;
  v301 = v402;
  v410 = v301;
  [v298 enumerateObjectsUsingBlock:v409];
  [v301 appendString:@"\n"];
  v302 = [MEMORY[0x277CBEB18] array];
  v407[0] = MEMORY[0x277D85DD0];
  v407[1] = 3221225472;
  v407[2] = __71__PGManager_Debug___defaultStatisticsWithGraph_verbose_forDiagnostics___block_invoke_9;
  v407[3] = &unk_2788875F8;
  v303 = v302;
  v408 = v303;
  [v345 enumerateNodesWithLabel:0 domain:502 usingBlock:v407];
  v304 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"label" ascending:1];
  v514 = v304;
  v305 = [MEMORY[0x277CBEA60] arrayWithObjects:&v514 count:1];
  [v303 sortUsingDescriptors:v305];

  v405[0] = MEMORY[0x277D85DD0];
  v405[1] = 3221225472;
  v405[2] = __71__PGManager_Debug___defaultStatisticsWithGraph_verbose_forDiagnostics___block_invoke_10;
  v405[3] = &unk_2788858F0;
  v306 = v301;
  v406 = v306;
  [v303 enumerateObjectsUsingBlock:v405];

  objc_autoreleasePoolPop(v296);
  v307 = objc_autoreleasePoolPush();
  [v306 appendFormat:@"\n\nScene:\n"];
  v308 = [(PGGraphNodeCollection *)PGGraphSceneNodeCollection nodesInGraph:v345];
  v309 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"label" ascending:1];
  v513 = v309;
  v310 = [MEMORY[0x277CBEA60] arrayWithObjects:&v513 count:1];
  v311 = [v308 sortedArrayUsingDescriptors:v310];

  v403[0] = MEMORY[0x277D85DD0];
  v403[1] = 3221225472;
  v403[2] = __71__PGManager_Debug___defaultStatisticsWithGraph_verbose_forDiagnostics___block_invoke_11;
  v403[3] = &unk_278885918;
  v312 = v306;
  v404 = v312;
  [v311 enumerateObjectsUsingBlock:v403];

  objc_autoreleasePoolPop(v307);
  [v312 appendFormat:@"\n\nGraph Description:\n%@", v345];
  v313 = v312;

  _Block_object_dispose(&v493, 8);
  _Block_object_dispose(&v497, 8);
  _Block_object_dispose(&v501, 8);
  _Block_object_dispose(&v505, 8);
  _Block_object_dispose(&v509, 8);

  v314 = *MEMORY[0x277D85DE8];

  return v313;
}

void __71__PGManager_Debug___defaultStatisticsWithGraph_verbose_forDiagnostics___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v8 = v5;
  if (a3)
  {
    [v5 clsContentScore];
  }

  else
  {
    [v5 curationScore];
  }

  if (v6 >= *MEMORY[0x277D3C758])
  {
    v7 = 32;
  }

  else if (v6 >= *MEMORY[0x277D3C760])
  {
    v7 = 40;
  }

  else if (v6 >= *MEMORY[0x277D3C770])
  {
    v7 = 48;
  }

  else
  {
    v7 = 56;
    if (v6 > *MEMORY[0x277D3C778])
    {
      v7 = 64;
    }
  }

  ++*(*(*(a1 + v7) + 8) + 24);
}

void __71__PGManager_Debug___defaultStatisticsWithGraph_verbose_forDiagnostics___block_invoke_391(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 locationMode];
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v8 = a1[6];
      goto LABEL_11;
    }

    if (v7 == 3)
    {
      ++*(*(a1[7] + 8) + 24);
      [v6 coordinate];
      [v5 photoCoordinate];
      CLLocationCoordinate2DGetDistanceFrom();
      if (v9 == 0.0)
      {
        v8 = a1[8];
        goto LABEL_11;
      }
    }
  }

  else
  {
    if (!v7)
    {
      v8 = a1[4];
      goto LABEL_11;
    }

    if (v7 == 1)
    {
      v8 = a1[5];
LABEL_11:
      ++*(*(v8 + 8) + 24);
    }
  }
}

void __71__PGManager_Debug___defaultStatisticsWithGraph_verbose_forDiagnostics___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uuid];
  [v2 addObject:v3];
}

void __71__PGManager_Debug___defaultStatisticsWithGraph_verbose_forDiagnostics___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uuid];
  [v2 addObject:v3];
}

void __71__PGManager_Debug___defaultStatisticsWithGraph_verbose_forDiagnostics___block_invoke_4(uint64_t a1, void *a2)
{
  v5 = a2;
  if (([v5 isSameNodeAsNode:*(a1 + 32)] & 1) == 0)
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 48) _stringDescriptionForMeNode:v5];
    [v3 appendFormat:@"### Additional %@", v4];
  }
}

uint64_t __71__PGManager_Debug___defaultStatisticsWithGraph_verbose_forDiagnostics___block_invoke_5(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) neighborScoreWithMomentNode:a2];
  if (v4 > 0.43)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  if (v4 > 0.6)
  {
    ++*(*(*(a1 + 48) + 8) + 24);
  }

  return result;
}

void __71__PGManager_Debug___defaultStatisticsWithGraph_verbose_forDiagnostics___block_invoke_6(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([v7 isBlocked])
  {
    v3 = *(a1 + 32);
    v4 = MEMORY[0x277CCACA8];
    v5 = [v7 name];
    v6 = [v4 stringWithFormat:@"- %@", v5];
    [v3 addObject:v6];
  }
}

void __71__PGManager_Debug___defaultStatisticsWithGraph_verbose_forDiagnostics___block_invoke_8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 label];
  v4 = [v3 edgesCount];

  [v2 appendFormat:@"[POI] Number of %@: %lu\n", v5, v4];
}

void __71__PGManager_Debug___defaultStatisticsWithGraph_verbose_forDiagnostics___block_invoke_10(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 label];
  v4 = [v3 edgesCount];

  [v2 appendFormat:@"[ROI] Number of %@: %lu\n", v5, v4];
}

void __71__PGManager_Debug___defaultStatisticsWithGraph_verbose_forDiagnostics___block_invoke_11(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 edgesForLabel:@"SCENE" domain:600];
  v17 = [v3 count];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v4);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v10 += [v13 numberOfAssets];
        v7 += [v13 numberOfHighConfidenceAssets];
        v8 += [v13 numberOfSearchConfidenceAssets];
        v9 += [v13 numberOfDominantSceneAssets];
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  v14 = *(a1 + 32);
  v15 = [v2 label];
  [v14 appendFormat:@"[Scene] Number of %@: %lu, all assets %lu, high conf. assets %lu, search conf. assets %lu, dominant scene assets %lu\n", v15, v17, v10, v7, v8, v9];

  v16 = *MEMORY[0x277D85DE8];
}

- (id)statisticsWithTypeStrings:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![v4 count])
  {
    v8 = 2;
    goto LABEL_60;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v30 objects:buf count:16];
  if (v6)
  {
    v7 = v6;
    v24 = v4;
    obj = v5;
    v23 = self;
    v8 = 0;
    v9 = *v31;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        if ([v11 isEqualToString:{@"default", v23}])
        {
          v8 |= 2uLL;
        }

        v8 |= [v11 isEqualToString:@"diagnostics"];
        if ([v11 isEqualToString:@"verbose"])
        {
          v8 |= 4uLL;
        }

        if ([v11 isEqualToString:@"mood"])
        {
          v8 |= 8uLL;
        }

        if ([v11 isEqualToString:@"title"])
        {
          v8 |= 0x10uLL;
        }

        if ([v11 isEqualToString:@"highlighttitle"])
        {
          v8 |= 0x1000000uLL;
        }

        if ([v11 isEqualToString:@"mobility"])
        {
          v8 |= 0x20uLL;
        }

        if ([v11 isEqualToString:@"interesting"])
        {
          v8 |= 0x40uLL;
        }

        if ([v11 isEqualToString:@"partofday"])
        {
          v8 |= 0x80uLL;
        }

        if ([v11 isEqualToString:@"highlightestimates"])
        {
          v8 |= 0x100uLL;
        }

        if ([v11 isEqualToString:@"relationships"])
        {
          v8 |= 0x800uLL;
        }

        if ([v11 isEqualToString:@"relationshipsdebug"])
        {
          v8 |= 0x1000uLL;
        }

        if ([v11 isEqualToString:@"dayofweek"])
        {
          v8 |= 0x8000uLL;
        }

        if ([v11 isEqualToString:@"publicevents"])
        {
          v8 |= 0x2000uLL;
        }

        if ([v11 isEqualToString:@"businessitems"])
        {
          v8 |= 0x4000uLL;
        }

        if ([v11 isEqualToString:@"poi"])
        {
          v8 |= 0x2000000uLL;
        }

        if ([v11 isEqualToString:@"locations"])
        {
          v8 |= 0x10000uLL;
        }

        if ([v11 isEqualToString:@"languages"])
        {
          v8 |= 0x8000000uLL;
        }

        if ([v11 isEqualToString:@"pets"])
        {
          v8 |= 0x20000uLL;
        }

        if ([v11 isEqualToString:@"domainlabelcounts"])
        {
          v8 |= 0x800000uLL;
        }

        if ([v11 isEqualToString:@"peopleattributes"])
        {
          v8 |= 0x4000000uLL;
        }

        if ([v11 isEqualToString:@"socialgroups"])
        {
          v8 |= 0x10000000uLL;
        }

        if ([v11 isEqualToString:@"socialgroupsdebug"])
        {
          v8 |= 0x20000000uLL;
        }

        if ([v11 isEqualToString:@"sharedlibrary"])
        {
          v8 |= 0x40000000uLL;
        }

        if ([v11 isEqualToString:@"entityTags"])
        {
          v8 |= 0xFFFFFFFF80000000;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v30 objects:buf count:16];
    }

    while (v7);
    v5 = obj;

    self = v23;
    if (v8 == 4)
    {
      v8 = 6;
      v4 = v24;
LABEL_60:

LABEL_61:
      Current = CFAbsoluteTimeGetCurrent();
      v13 = [MEMORY[0x277CCAB68] string];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __46__PGManager_Debug__statisticsWithTypeStrings___block_invoke;
      v26[3] = &unk_2788857D8;
      v14 = v13;
      v28 = self;
      v29 = v8;
      v27 = v14;
      [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v26];
      v15 = CFAbsoluteTimeGetCurrent();
      v16 = +[PGLogging sharedLogging];
      v17 = [v16 loggingConnection];

      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v35 = (v15 - Current) * 1000.0;
        _os_log_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_INFO, "Generating statistics took %.2f ms", buf, 0xCu);
      }

      v18 = v14;
      v19 = v18;
      goto LABEL_69;
    }

    v4 = v24;
    if (v8)
    {
      goto LABEL_61;
    }
  }

  else
  {
  }

  v20 = +[PGLogging sharedLogging];
  v18 = [v20 loggingConnection];

  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v35 = *&v5;
    _os_log_error_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_ERROR, "No valid type specified for statistics. Input: %@", buf, 0xCu);
  }

  v19 = &stru_2843F5C58;
LABEL_69:

  v21 = *MEMORY[0x277D85DE8];

  return v19;
}

void __46__PGManager_Debug__statisticsWithTypeStrings___block_invoke(uint64_t a1, void *a2)
{
  v35 = [a2 graph];
  if (!v35)
  {
    [*(a1 + 32) setString:@"Graph is nil. Please retry to analyze your library."];
    goto LABEL_30;
  }

  v3 = *(a1 + 48);
  v4 = [PGTitleGenerationContext alloc];
  v5 = [*(a1 + 40) serviceManager];
  v6 = [(PGTitleGenerationContext *)v4 initWithGraph:v35 serviceManager:v5];

  v7 = objc_alloc(MEMORY[0x277D3C790]);
  v8 = [*(a1 + 40) photoLibrary];
  v9 = [v7 initWithPhotoLibrary:v8];

  if ((v3 & 3) != 0)
  {
    v10 = [*(a1 + 40) _defaultStatisticsWithGraph:v35 verbose:(v3 >> 2) & 1 forDiagnostics:v3 & 1];
    [*(a1 + 32) appendString:v10];
  }

  if ((v3 & 8) != 0)
  {
    v13 = [*(a1 + 40) _moodStatisticsWithGraph:v35];
    [*(a1 + 32) appendString:v13];

    if ((v3 & 0x10) == 0)
    {
LABEL_6:
      if ((v3 & 0x1000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_35;
    }
  }

  else if ((v3 & 0x10) == 0)
  {
    goto LABEL_6;
  }

  v14 = [*(a1 + 40) _titleStatisticsWithGraph:v35 titleGenerationContext:v6];
  [*(a1 + 32) appendString:v14];

  if ((v3 & 0x1000000) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  v15 = [*(a1 + 40) _highlightTitleStatisticsWithGraph:v35 titleGenerationContext:v6];
  [*(a1 + 32) appendString:v15];

  if ((v3 & 0x20) == 0)
  {
LABEL_8:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  v16 = [*(a1 + 40) _mobilityStatisticsWithGraph:v35];
  [*(a1 + 32) appendString:v16];

  if ((v3 & 0x40) == 0)
  {
LABEL_9:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_37:
  v17 = [*(a1 + 40) _interestingStatisticsWithGraph:v35];
  [*(a1 + 32) appendString:v17];

  if ((v3 & 0x80) == 0)
  {
LABEL_10:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_39;
  }

LABEL_38:
  v18 = [*(a1 + 40) _partOfDayStatisticsWithGraph:v35 titleGenerationContext:v6];
  [*(a1 + 32) appendString:v18];

  if ((v3 & 0x100) == 0)
  {
LABEL_11:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_39:
  v19 = [*(a1 + 40) _highlightEstimatesStatisticsWithCurationContext:v9];
  [*(a1 + 32) appendString:v19];

  if ((v3 & 0x800) == 0)
  {
LABEL_12:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_40:
  v20 = [*(a1 + 40) _peopleRelationshipsStatisticsWithGraph:v35 includingDebugInfo:0];
  [*(a1 + 32) appendString:v20];

  if ((v3 & 0x1000) == 0)
  {
LABEL_13:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_41:
  v21 = [*(a1 + 40) _peopleRelationshipsStatisticsWithGraph:v35 includingDebugInfo:1];
  [*(a1 + 32) appendString:v21];

  if ((v3 & 0x8000) == 0)
  {
LABEL_14:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_43;
  }

LABEL_42:
  v22 = [*(a1 + 40) _dayOfWeekStatisticsWithGraph:v35];
  [*(a1 + 32) appendString:v22];

  if ((v3 & 0x2000) == 0)
  {
LABEL_15:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_44;
  }

LABEL_43:
  v23 = [*(a1 + 40) _stringDescriptionForPublicEventsWithGraph:v35 verbose:1];
  [*(a1 + 32) appendString:v23];

  if ((v3 & 0x4000) == 0)
  {
LABEL_16:
    if ((v3 & 0x2000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_45;
  }

LABEL_44:
  v24 = [*(a1 + 40) _stringDescriptionForBusinessItemsWithGraph:v35 includingInferredThroughPublicEvents:1 verbose:1];
  [*(a1 + 32) appendString:v24];

  if ((v3 & 0x2000000) == 0)
  {
LABEL_17:
    if ((v3 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

LABEL_45:
  v25 = [*(a1 + 40) _poiStatisticsWithGraph:v35];
  [*(a1 + 32) appendString:v25];

  if ((v3 & 0x10000) == 0)
  {
LABEL_18:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_47;
  }

LABEL_46:
  v26 = [*(a1 + 40) _stringDescriptionForLocationsWithGraph:v35];
  [*(a1 + 32) appendString:v26];

  if ((v3 & 0x8000000) == 0)
  {
LABEL_19:
    if ((v3 & 0x20000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_48;
  }

LABEL_47:
  v27 = [*(a1 + 40) _stringDescriptionForLanguagesWithGraph:v35];
  [*(a1 + 32) appendString:v27];

  if ((v3 & 0x20000) == 0)
  {
LABEL_20:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_49;
  }

LABEL_48:
  v28 = [*(a1 + 40) _stringDescriptionForPetsWithGraph:v35];
  [*(a1 + 32) appendString:v28];

  if ((v3 & 0x800000) == 0)
  {
LABEL_21:
    if ((v3 & 0x4000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_50;
  }

LABEL_49:
  v29 = [*(a1 + 40) _domainLabelCountStatisticsWithGraph:v35];
  [*(a1 + 32) appendString:v29];

  if ((v3 & 0x4000000) == 0)
  {
LABEL_22:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_51;
  }

LABEL_50:
  v30 = [*(a1 + 40) _peopleVisionAgeStatisticsWithGraph:v35];
  v31 = [*(a1 + 40) _peopleVisionBiologicalSexStatisticsWithGraph:v35];
  v32 = [*(a1 + 40) _peopleNameBiologicalSexStatisticsWithGraph:v35];
  [*(a1 + 32) appendString:v30];
  [*(a1 + 32) appendString:@"\n"];
  [*(a1 + 32) appendString:v31];
  [*(a1 + 32) appendString:@"\n"];
  [*(a1 + 32) appendString:v32];

  if ((v3 & 0x10000000) == 0)
  {
LABEL_23:
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_52:
    v34 = [*(a1 + 40) _socialGroupsDebugStatistics:v35];
    [*(a1 + 32) appendString:v34];

    if ((v3 & 0x40000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_51:
  v33 = [*(a1 + 40) _socialGroupsStatistics:v35];
  [*(a1 + 32) appendString:v33];

  if ((v3 & 0x20000000) != 0)
  {
    goto LABEL_52;
  }

LABEL_24:
  if ((v3 & 0x40000000) != 0)
  {
LABEL_25:
    v11 = [*(a1 + 40) _sharedLibraryStatistics:v35];
    [*(a1 + 32) appendString:v11];
  }

LABEL_26:
  if (v3 >> 31)
  {
    v12 = [*(a1 + 40) _entityTagsStatistics:v35];
    [*(a1 + 32) appendString:v12];
  }

LABEL_30:
}

- (id)graphAndAlgorithmVersionsWithGraph:(id)a3
{
  v3 = MEMORY[0x277CCAB68];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 infoNode];
  v7 = [v6 creationDate];
  [v5 appendFormat:@"Graph Date creation: %@\n", v7];

  v8 = [v4 version];
  [v5 appendFormat:@"Graph Version: %lu\n", v8];
  [v5 appendFormat:@"Graph Curation Algorithms Version: %lu\n", objc_msgSend(v6, "curationAlgorithmsVersion")];
  [v5 appendFormat:@"Graph Memories Algorithms Version: %lu\n", objc_msgSend(v6, "memoriesAlgorithmsVersion")];
  [v5 appendFormat:@"Graph Meanings Algorithms Version: %lu\n", objc_msgSend(v6, "meaningAlgorithmsVersion")];
  [v5 appendFormat:@"Graph EventLabelingV2 Model Version: %ld\n", objc_msgSend(v6, "eventLabelingV2ModelVersion")];
  [v5 appendFormat:@"Graph Personal Traits Entity Names Version: %ld\n", objc_msgSend(v6, "personalTraitsEntityNamesVersion")];
  [v5 appendFormat:@"Graph Memories Algorithms Version: %lu\n", objc_msgSend(v6, "memoriesAlgorithmsVersion")];

  return v5;
}

- (id)keywordsForAssetCollection:(id)a3 relatedType:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__51600;
  v19 = __Block_byref_object_dispose__51601;
  v20 = 0;
  if (v6)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__PGManager_Debug__keywordsForAssetCollection_relatedType___block_invoke;
    v11[3] = &unk_2788857B0;
    v12 = v6;
    v13 = &v15;
    v14 = a4;
    [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v11];
    v8 = v12;
  }

  else
  {
    v8 = 0;
    v20 = MEMORY[0x277CBEC10];
  }

  v9 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v9;
}

void __59__PGManager_Debug__keywordsForAssetCollection_relatedType___block_invoke(void *a1, void *a2)
{
  v3 = [a2 graph];
  v4 = [v3 eventNodeForAssetCollection:a1[4]];
  v8 = [v4 relatableEvent];

  v5 = [v8 keywordsForRelatedType:a1[6] focusOnNodes:0];
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

+ (id)_calendarEventsBetweenDate:(id)a3 andDate:(id)a4 atLocation:(id)a5 withPersonLocalIdentifiers:(id)a6 inPhotoLibrary:(id)a7 serviceManager:(id)a8 locationCache:(id)a9
{
  v40[2] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  if (!v19)
  {
    __assert_rtn("+[PGManager(Debug) _calendarEventsBetweenDate:andDate:atLocation:withPersonLocalIdentifiers:inPhotoLibrary:serviceManager:locationCache:]", "PGManager+Debug.m", 3803, "serviceManager != nil");
  }

  v21 = v20;
  v22 = [objc_alloc(MEMORY[0x277D27698]) initWithServiceManager:v19];
  v23 = MEMORY[0x277D276F0];
  v36 = v15;
  v37 = v14;
  v40[0] = v14;
  v40[1] = v15;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
  v25 = [v23 clueWithDates:v24 serviceManager:v19];

  v39 = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
  [v22 mergeClues:v26];

  if (v16)
  {
    v27 = [v21 fetchPlacemarkForLocation:v16 withQueryAccuracy:*MEMORY[0x277CE4250]];
    if (v27)
    {
      v28 = [MEMORY[0x277D276E0] clueWithLocation:v27 locationCache:v21];
      v38 = v28;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
      [v22 mergeClues:v29];
    }

    else
    {
      v28 = 0;
    }

    if (!v17)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v28 = 0;
    if (!v17)
    {
      goto LABEL_11;
    }
  }

  v30 = [MEMORY[0x277D276E8] cluesWithPersonLocalIdentifiers:v17 inPhotoLibrary:v18 serviceManager:v19];
  if (v30)
  {
    v31 = v30;
    [v22 mergeClues:v30];

LABEL_12:
    v32 = [v19 eventsForClueCollection:v22];
    goto LABEL_14;
  }

LABEL_11:
  if (v28)
  {
    goto LABEL_12;
  }

  v32 = [v25 events];
LABEL_14:
  v33 = v32;

  v34 = *MEMORY[0x277D85DE8];

  return v33;
}

+ (id)exportableDictionaryFromKeywords:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = [v3 dictionary];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__PGManager_Debug__exportableDictionaryFromKeywords___block_invoke;
  v8[3] = &unk_278885788;
  v6 = v5;
  v9 = v6;
  [v4 enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

void __53__PGManager_Debug__exportableDictionaryFromKeywords___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = [a2 unsignedIntegerValue];
  if (v5 <= 7)
  {
    if (v5 == 1)
    {
      v7 = @"People";
    }

    else
    {
      v6 = v8;
      if (v5 == 2)
      {
        v7 = @"Time";
      }

      else
      {
        if (v5 != 4)
        {
          goto LABEL_18;
        }

        v7 = @"Location";
      }
    }
  }

  else if (v5 > 31)
  {
    v6 = v8;
    if (v5 == 32)
    {
      v7 = @"Scene";
    }

    else
    {
      if (v5 != 63)
      {
        goto LABEL_18;
      }

      v7 = @"Any";
    }
  }

  else
  {
    v6 = v8;
    if (v5 == 8)
    {
      v7 = @"Event";
    }

    else
    {
      if (v5 != 16)
      {
        goto LABEL_18;
      }

      v7 = @"Place";
    }
  }

  [*(a1 + 32) setObject:v8 forKey:v7];
  v6 = v8;
LABEL_18:
}

- (id)performerIdentifiersForMomentUUIDs:(id)a3 withCategoryNames:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__65549;
  v20 = __Block_byref_object_dispose__65550;
  v21 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __80__PGManager_PublicEvents__performerIdentifiersForMomentUUIDs_withCategoryNames___block_invoke;
  v12[3] = &unk_278888EB8;
  v8 = v6;
  v13 = v8;
  v9 = v7;
  v14 = v9;
  v15 = &v16;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v12];
  v10 = [v17[5] allObjects];

  _Block_object_dispose(&v16, 8);

  return v10;
}

void __80__PGManager_PublicEvents__performerIdentifiersForMomentUUIDs_withCategoryNames___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v4 graph];
  v6 = [PGGraphMomentNodeCollection momentNodesForArrayOfUUIDs:v3 inGraph:v5];

  v7 = [v6 publicEventNodes];
  v8 = [MEMORY[0x277CBEB98] setWithArray:a1[5]];
  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __80__PGManager_PublicEvents__performerIdentifiersForMomentUUIDs_withCategoryNames___block_invoke_2;
  v22 = &unk_278888E90;
  v23 = v8;
  v24 = v9;
  v10 = v9;
  v11 = v8;
  [v7 enumerateNodesUsingBlock:&v19];
  v12 = [PGGraphPublicEventNodeCollection alloc];
  v13 = [v4 graph];

  v14 = [(MAElementCollection *)v12 initWithSet:v10 graph:v13];
  v15 = [(PGGraphPublicEventNodeCollection *)v14 performerNodes];
  v16 = [v15 performerIdentifiers];
  v17 = *(a1[6] + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;
}

void __80__PGManager_PublicEvents__performerIdentifiersForMomentUUIDs_withCategoryNames___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 categories];
  if ([v3 intersectsSet:*(a1 + 32)])
  {
    [*(a1 + 40) addObject:v4];
  }
}

- (id)performerIdentifiersForMomentUUIDs:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__65549;
  v18 = __Block_byref_object_dispose__65550;
  v19 = 0;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __62__PGManager_PublicEvents__performerIdentifiersForMomentUUIDs___block_invoke;
  v11 = &unk_27888A570;
  v5 = v4;
  v12 = v5;
  v13 = &v14;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:&v8];
  v6 = [v15[5] allObjects];

  _Block_object_dispose(&v14, 8);

  return v6;
}

void __62__PGManager_PublicEvents__performerIdentifiersForMomentUUIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 graph];
  v10 = [PGGraphMomentNodeCollection momentNodesForArrayOfUUIDs:v3 inGraph:v4];

  v5 = [v10 publicEventNodes];
  v6 = [v5 performerNodes];
  v7 = [v6 performerIdentifiers];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

@end