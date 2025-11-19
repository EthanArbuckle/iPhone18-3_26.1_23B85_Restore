@interface PGGraphBuilder
+ (BOOL)isSharedLibraryEnabledForLibrary:(id)a3;
+ (double)topTierAestheticScoreForRatio:(double)a3 inPhotoLibrary:(id)a4;
+ (id)expandedRelationshipLabelsForRelationship:(unint64_t)a3;
+ (id)memoryLabelForCategory:(unint64_t)a3;
+ (id)reducedRelationshipLabelForRelationshipLabels:(id)a3;
+ (id)sharedLibraryParticipantsForLibrary:(id)a3;
+ (unint64_t)memoryCategoryForLabel:(id)a3;
+ (unsigned)edgeDomainForMeaningNodeLabel:(id)a3 isV1Algorithm:(BOOL)a4;
+ (void)prepareGraphForRebuild:(id)a3;
+ (void)setLastIncrementalUpdateInvocationDate:(id)a3 inGraph:(id)a4;
- (BOOL)_shouldUpdateCurationScore:(double)a3 withNewCurationScore:(double)a4;
- (BOOL)shouldUpdatePersonRepresentativeAssetUUIDsWithPositiveSceneCriteria:(id)a3 actionValueString:(id)a4 assetIsPassingSceneCriteria:(BOOL)a5 personLocalIdentifierIsDoingActionInAsset:(BOOL)a6;
- (CLSCurationContext)curationContext;
- (NSDictionary)personActivityMeaningCriteriaDictionaryByMeaningLabel;
- (PGGraphBuilder)initWithGraph:(id)a3;
- (PGGraphBuilder)initWithGraph:(id)a3 locationCache:(id)a4;
- (PGGraphBuilder)initWithGraph:(id)a3 manager:(id)a4;
- (id)_anniversaryEventEdgeFromMomentNode:(id)a3 toPersonNode:(id)a4 confidence:(double)a5 insertIfNeededToChangeRequest:(id)a6;
- (id)_birthdayEventEdgeFromMomentNode:(id)a3 toPersonNode:(id)a4 confidence:(double)a5 insertIfNeededToChangeRequest:(id)a6;
- (id)_cleanUpMoments:(id)a3;
- (id)_findAlternativeMeaningEdgeToMeaningfulEventNode:(id)a3 withMeaningNode:(id)a4;
- (id)_findMeaningEdgeToMeaningfulEventNode:(id)a3 withMeaningNode:(id)a4;
- (id)_insertMomentNodeForClueCollection:(id)a3 feeder:(id)a4 insertedAndUpdatedPersonNodes:(id *)a5 graphUpdate:(id)a6 progressBlock:(id)a7;
- (id)_insertScene:(id)a3 fromMomentNode:(id)a4 changeRequest:(id)a5;
- (id)_momentNodesFromPersonNodes:(id)a3;
- (id)_propertiesFromIngestHighlight:(id)a3;
- (id)_removeInvalidPeopleEventEdgesFromMomentNode:(id)a3 edgesToUpsert:(id)a4;
- (id)_upsertPeopleEventEdgesFromMomentNode:(id)a3 matchingResults:(id)a4 changeRequest:(id)a5;
- (id)_uuidForPlacemark:(id)a3 forNodeLabel:(id)a4;
- (id)criteriaEvaluatorsByValidPersonActivityMeaningLabelFromAssets:(id)a3 withPersonActivityMeaningCriteriaDictionaryByMeaningLabel:(id)a4;
- (id)criteriaEvaluatorsByValidPersonActivityMeaningLabelFromMomentNode:(id)a3 sceneEdges:(id)a4 withPersonActivityMeaningCriteriaDictionaryByMeaningLabel:(id)a5;
- (id)featureProviderWithProgressBlock:(id)a3;
- (id)feederForInsertingAssetCollection:(id)a3;
- (id)insertAddressNodeWithPlacemark:(id)a3 location:(id)a4 relevance:(double)a5 numberOfAssets:(unint64_t)a6 duringDateInterval:(id)a7 fromMomentNode:(id)a8;
- (id)insertAddressNodeWithProjectedPlacemark:(id)a3 atEventLocation:(id)a4 usingImprovedPlacemark:(BOOL)a5 changeRequest:(id)a6;
- (id)insertBusiness:(id)a3 fromMomentNode:(id)a4;
- (id)insertContactSuggestion:(id)a3 forPersonNode:(id)a4 confidence:(double)a5 edgeProperties:(id)a6;
- (id)insertDateNodeHierarchyWithDateComponents:(id)a3;
- (id)insertDateNodesFromEventNode:(id)a3;
- (id)insertDateNodesFromLocalStartDate:(id)a3 toLocalEndDate:(id)a4 fromEventNode:(id)a5;
- (id)insertDateNodesWithClueCollection:(id)a3 fromMomentNode:(id)a4;
- (id)insertHighlightGroupNodeWithHighlight:(id)a3;
- (id)insertHighlightNodeWithHighlight:(id)a3;
- (id)insertHomeWorkNodeForPerson:(id)a3 personNode:(id)a4 fromAddressNodes:(id)a5;
- (id)insertLocationHierarchyWithClueCollection:(id)a3 fromMomentNode:(id)a4;
- (id)insertLocationMobilityNodeWithClueCollection:(id)a3 fromMomentNode:(id)a4;
- (id)insertLocationMobilityNodeWithMobility:(id)a3 fromMomentNode:(id)a4 confidence:(double)a5;
- (id)insertMemoryNodeFromMemory:(id)a3;
- (id)insertMemoryNodeFromMemory:(id)a3 changeRequest:(id)a4;
- (id)insertMomentNodeForMoment:(id)a3;
- (id)insertMonthDayNodeForMonth:(int64_t)a3 day:(int64_t)a4;
- (id)insertOrUpdateMePersonNodeIfNeeded;
- (id)insertPOINodeWithPlace:(id)a3 fromMomentNode:(id)a4 hasInsertedSpecialPOIAmusementParkNode:(BOOL)a5;
- (id)insertPOIWithFeeder:(id)a3 fromMomentNode:(id)a4 isNearHomeOrWork:(BOOL)a5;
- (id)insertPartOfDayNodeWithPartOfDayName:(id)a3 fromMomentNode:(id)a4 ratio:(double)a5;
- (id)insertPartOfDayNodesWithClueCollection:(id)a3 fromMomentNode:(id)a4;
- (id)insertPeopleWithClueCollection:(id)a3 fromMomentNode:(id)a4 addressNodes:(id)a5 isNearPeopleAddress:(BOOL *)a6;
- (id)insertPersonNodeForPerson:(id)a3;
- (id)insertPet:(id)a3;
- (id)insertPresentEdgeFromPersonNode:(id)a3 toEventNode:(id)a4 numberOfAssetsWithPerson:(unint64_t)a5 edgeWeight:(float)a6;
- (id)insertPresentEdgeFromPersonNode:(id)a3 toMomentNode:(id)a4 numberOfAssetsWithPerson:(unint64_t)a5 importance:(double)a6 includeMergeCandidates:(BOOL)a7;
- (id)insertProximityEdgeFromPersonNode:(id)a3 toMomentNode:(id)a4;
- (id)insertPublicEvent:(id)a3 fromEventNode:(id)a4;
- (id)insertROINodeWithPlace:(id)a3 fromMomentNode:(id)a4;
- (id)insertROINodeWithType:(unint64_t)a3;
- (id)insertROINodeWithType:(unint64_t)a3 fromMomentNode:(id)a4 confidence:(double)a5;
- (id)insertROIWithClueCollection:(id)a3 fromMomentNode:(id)a4;
- (id)insertScene:(id)a3 fromMomentNode:(id)a4;
- (id)insertScenesWithClueCollection:(id)a3 fromMomentNode:(id)a4;
- (id)insertSpecialPOIAmusementParkNodeFromMomentNode:(id)a3;
- (id)insertTimeNodesWithDateComponents:(id)a3 fromEventNode:(id)a4;
- (id)momentForMomentNode:(id)a3;
- (id)momentNodesWhereMeIsPresent;
- (id)nodesForHighlightsInHighlightDayGroup:(id)a3;
- (id)nodesForMomentsInHighlight:(id)a3;
- (id)updateMeNode:(id)a3 withPropertiesFromPerson:(id)a4;
- (signed)generativeMemoryCreationEligibleStateWithAsset:(id)a3;
- (unint64_t)_roiTypeForPlaceInterestType:(id)a3;
- (void)_buildSceneNodeCache;
- (void)_cleanGraphBuildCachesAfterUpdate;
- (void)_connectPersonActivityMeaningNode:(id)a3 toMomentNode:(id)a4 withChangeRequest:(id)a5 representativeAssetUUIDsByPersonLocalIdentifier:(id)a6;
- (void)_deleteMomentsWithGraphUpdate:(id)a3;
- (void)_deleteSocialGroupsWithGraphUpdate:(id)a3;
- (void)_insertEntityNetScene:(id)a3 fromMomentNode:(id)a4 withEntityNetSceneTaxonomy:(id)a5 changeRequest:(id)a6;
- (void)_onGraphDidUpdate;
- (void)_persistCurationScores:(id)a3;
- (void)_persistGenerativeMemoryCreationEligibilityState:(id)a3;
- (void)_registerInsertedMomentNodes:(id)a3 inGraphUpdate:(id)a4;
- (void)_removeEdgesFromMomentNode:(id)a3 forUpdateTypes:(unint64_t)a4;
- (void)_updatePersonActivitiesOfMomentNode:(id)a3 assets:(id)a4 graph:(id)a5 withPositiveSceneCriteriaByValidPersonActivityMeaningLabel:(id)a6 andActionCriteriaByValidPersonActivityMeaningLabel:(id)a7 validPersonActivityMeaningLabelByActionValue:(id)a8 changeRequest:(id)a9;
- (void)addCurationScore:(double)a3 forAsset:(id)a4;
- (void)addMeaningToMeaningfulEventNode:(id)a3 meaningLabel:(id)a4 meaningIsReliable:(BOOL)a5;
- (void)addParentMeaningHierarchyForMeaningNode:(id)a3;
- (void)addRelationshipEdgesBetweenPersonNode:(id)a3 andPersonNode:(id)a4 forRelationship:(unint64_t)a5 confidence:(double)a6 properties:(id)a7;
- (void)addStorytellingRelationshipsToMeNode:(id)a3 relationshipByPerson:(id)a4;
- (void)checkAndInsertPersonIsAroundEdgeFromMeNode:(id)a3 toMomentNode:(id)a4 withClueCollection:(id)a5;
- (void)clearPersonActivityMeaningCriteriaDictionaryByMeaningLabel;
- (void)computeAndPersistAssetStatistics;
- (void)computeAndPersistTopTierAestheticScores;
- (void)deleteAllMeaningNodesAndEdges;
- (void)deleteAllMemoryNodesAndEdges;
- (void)deleteAllMemoryNodesAndEdgesForMemoryCategories:(id)a3;
- (void)deleteAllMemoryNodesAndEdgesForMemoryCategory:(unint64_t)a3;
- (void)deleteHighlightsWithGraphUpdate:(id)a3;
- (void)deletePersonsWithGraphUpdate:(id)a3 progressBlock:(id)a4;
- (void)enumerateDateComponentsBetweenLocalStartDate:(id)a3 andLocalEndDate:(id)a4 usingBlock:(id)a5;
- (void)inferPersonNodeForMeNode:(id)a3;
- (void)insertAreasOfInterestForProjectedPlacemark:(id)a3 fromAddressNode:(id)a4 changeRequest:(id)a5;
- (void)insertAssetCurationScoreInLibraryForFeeder:(id)a3 progressBlock:(id)a4;
- (void)insertEntityNetScenesWithClueCollection:(id)a3 fromMomentNode:(id)a4;
- (void)insertHighlightDayGroupsWithGraphUpdate:(id)a3 progressBlock:(id)a4;
- (void)insertHighlightDaysWithGraphUpdate:(id)a3 progressBlock:(id)a4;
- (void)insertHighlightsWithGraphUpdate:(id)a3 progressBlock:(id)a4;
- (void)insertInferredEdgeFromMeNode:(id)a3 toInferredPersonNode:(id)a4;
- (void)insertLocationHierarchyWithProjectedPlacemark:(id)a3 fromAddressNode:(id)a4 changeRequest:(id)a5;
- (void)insertMeAsAuthor:(id)a3 forMomentNode:(id)a4;
- (void)insertMomentsWithGraphUpdate:(id)a3 progressBlock:(id)a4;
- (void)insertOwner:(id)a3 forPets:(id)a4;
- (void)insertPersonNodeForShareParticipant:(id)a3;
- (void)insertPersonNodesForShareParticipants:(id)a3;
- (void)insertShareParticipantsAsAuthors:(id)a3 forMomentNode:(id)a4;
- (void)insertStorytellingRelationshipsWithRelationshipsForPersonNodes:(id)a3 meNode:(id)a4;
- (void)performBatchUpdatesWithGraphUpdate:(id)a3 withRecipe:(id)a4 progressBlock:(id)a5;
- (void)performChangeForGraphUpdate:(id)a3 progressBlock:(id)a4;
- (void)performPostprocessingWithGraphUpdate:(id)a3 withRecipe:(id)a4 progressBlock:(id)a5;
- (void)performPreprocessingWithGraphUpdate:(id)a3 withRecipe:(id)a4 progressBlock:(id)a5;
- (void)performProcessingSteps:(id)a3 withGraphUpdate:(id)a4 progressBlock:(id)a5;
- (void)persistPendingScores;
- (void)prepareGraphForRebuild;
- (void)setAgeCategory:(unint64_t)a3 onPersonNodeForIdentifier:(unint64_t)a4;
- (void)setBiologicalSex:(unint64_t)a3 onPersonNodeForIdentifier:(unint64_t)a4;
- (void)setCurationAlgorithmsVersion:(unint64_t)a3;
- (void)setGeoServiceProviderID:(id)a3;
- (void)setLanguageIdentifiers:(id)a3;
- (void)setLocaleIdentifier:(id)a3;
- (void)updateHighlightNode:(id)a3 withHighlight:(id)a4;
- (void)updateHighlightsForHighlightDayGroupNode:(id)a3 nodesForHighlightsInHighlightDayGroup:(id)a4;
- (void)updateMomentsForHighlightNode:(id)a3 nodesForMomentsInHighlight:(id)a4;
- (void)updatePersonNodeForIdentifier:(unint64_t)a3 withPerson:(id)a4 forPropertyNames:(id)a5;
- (void)upsertPeopleEventEdgesOfMomentNode:(id)a3 matchingResults:(id)a4;
@end

@implementation PGGraphBuilder

- (void)checkAndInsertPersonIsAroundEdgeFromMeNode:(id)a3 toMomentNode:(id)a4 withClueCollection:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v11 = [(PGGraphBuilder *)self serviceManager];
  v12 = [v10 universalDateInterval];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __103__PGGraphBuilder_Presence__checkAndInsertPersonIsAroundEdgeFromMeNode_toMomentNode_withClueCollection___block_invoke;
  v17[3] = &unk_27887FD18;
  v13 = v11;
  v18 = v13;
  v14 = v12;
  v19 = v14;
  v20 = &v21;
  [v10 enumerateLocationClues:v17];
  if (*(v22 + 24) == 1)
  {
    v15 = objc_alloc_init(MEMORY[0x277D22C50]);
    v16 = [[PGGraphPeoplePersonIsAroundEdge alloc] initFromPersonNode:v8 toMomentNode:v9];
    [v15 addEdge:v16];
    [(MAGraph *)self->_graph executeGraphChangeRequest:v15];
  }

  _Block_object_dispose(&v21, 8);
}

void __103__PGGraphBuilder_Presence__checkAndInsertPersonIsAroundEdgeFromMeNode_toMomentNode_withClueCollection___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 location];
  v7 = MEMORY[0x277D3ACD0];
  v9 = v6;
  [v6 horizontalAccuracy];
  if (([v7 horizontalAccuracyIsCoarse:?] & 1) == 0)
  {
    v8 = [*(a1 + 32) locationOfInterestCloseToLocation:v9 inDateInterval:*(a1 + 40)];

    if (v8)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
      *a4 = 1;
    }
  }
}

- (signed)generativeMemoryCreationEligibleStateWithAsset:(id)a3
{
  safeAssetAnalyzer = self->_safeAssetAnalyzer;
  v5 = a3;
  v6 = [(PGGraphBuilder *)self curationContext];
  LOWORD(safeAssetAnalyzer) = [(PNSafeAssetAnalyzer *)safeAssetAnalyzer eligibilityStateWithAsset:v5 curationContext:v6];

  return safeAssetAnalyzer;
}

- (void)computeAndPersistAssetStatistics
{
  v12 = [(PGGraphBuilder *)self photoLibrary];
  v3 = [v12 librarySpecificFetchOptions];
  v4 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:2 subtype:210 options:v3];
  v5 = [v4 firstObject];

  v6 = [v12 librarySpecificFetchOptions];
  [v6 setShouldPrefetchCount:1];
  v7 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:v5 options:v6];
  v8 = [v7 count];
  v9 = [(PGGraph *)self->_graph infoNode];
  v10 = [v9 identifier];

  v11 = [PGGraphInfoNode numberOfSelfies:v8];
  [(MAGraph *)self->_graph persistModelProperties:v11 forNodeWithIdentifier:v10 clobberExisting:0];
}

- (void)computeAndPersistTopTierAestheticScores
{
  v9 = [(PGGraphBuilder *)self photoLibrary];
  [objc_opt_class() topTierAestheticScoreForRatio:v9 inPhotoLibrary:0.01];
  self->_topTierAestheticScore = v3;
  [objc_opt_class() topTierAestheticScoreForRatio:v9 inPhotoLibrary:0.05];
  v5 = v4;
  v6 = [(PGGraph *)self->_graph infoNode];
  v7 = [v6 identifier];

  v8 = [PGGraphInfoNode topTierScorePropertiesWithAestheticScore:self->_topTierAestheticScore aestheticScoreForTripKeyAsset:v5];
  [(MAGraph *)self->_graph persistModelProperties:v8 forNodeWithIdentifier:v7 clobberExisting:0];
}

- (void)insertAssetCurationScoreInLibraryForFeeder:(id)a3 progressBlock:(id)a4
{
  v58 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = 0.0;
  v47 = _Block_copy(v7);
  if (v47)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current >= 0.01)
    {
      v52 = 0;
      v47[2](v47, &v52, 0.0);
      if (v52 == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v54 = 176;
          *&v54[4] = 2080;
          *&v54[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/PGGraphBuilder+Curation.m";
          v10 = MEMORY[0x277D86220];
          goto LABEL_55;
        }

        goto LABEL_56;
      }

      v8 = Current;
    }
  }

  if (!v6 || [(PGGraphBuilder *)self keepsExistingAssetCurationScores])
  {
    goto LABEL_50;
  }

  v37 = v7;
  v38 = v6;
  v11 = [v6 allItems];
  v46 = [MEMORY[0x277D3C7A0] scoringContextWithAssets:v11 aestheticScoreThresholdToBeAwesome:self->_topTierAestheticScore];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v11;
  v12 = [obj countByEnumeratingWithState:&v48 objects:v57 count:16];
  if (!v12)
  {
    v40 = 0;
    v41 = 0;
    *&v42[4] = 0;
    v45 = 0;
    goto LABEL_49;
  }

  v13 = v12;
  v14 = 0;
  *&v42[8] = 0;
  v40 = 0;
  v41 = 0;
  v44 = *v49;
  v45 = 0;
  v15 = *MEMORY[0x277D3C760];
  v16 = *MEMORY[0x277D3C770];
  v17 = *MEMORY[0x277D3C778];
  v18 = *MEMORY[0x277D3ADE8];
  *v42 = *MEMORY[0x277D3ADE0];
  while (2)
  {
    v19 = 0;
    v39 = v14 + v13;
    do
    {
      if (*v49 != v44)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v48 + 1) + 8 * v19);
      v21 = objc_autoreleasePoolPush();
      if (v47)
      {
        if (!(v14 % 10))
        {
          v22 = CFAbsoluteTimeGetCurrent();
          if (v22 - v8 >= 0.01)
          {
            buf[0] = 0;
            v47[2](v47, buf, 0.1);
            v8 = v22;
            if (buf[0])
            {
              objc_autoreleasePoolPop(v21);

              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                *v54 = 261;
                *&v54[4] = 2080;
                *&v54[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/PGGraphBuilder+Curation.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              v7 = v37;
              v6 = v38;
              goto LABEL_56;
            }
          }
        }
      }

      [v20 scoreInContext:v46];
      v24 = v23;
      if (v23 >= v15)
      {
        ++v45;
      }

      else if (v23 >= v16)
      {
        ++*&v42[4];
      }

      else if (v23 <= v17)
      {
        ++v40;
      }

      else
      {
        ++v41;
      }

      v25 = [v20 sceneAnalysisProperties];
      v26 = v18 != [v25 sceneAnalysisVersion] && *v42 != objc_msgSend(v20, "faceAnalysisVersion");

      [v20 curationScore];
      v28 = v27;
      if (([MEMORY[0x277CD97A8] isScore:v24 closeToValue:v27] & 1) == 0)
      {
        if (v26 || [(PGGraphBuilder *)self _shouldUpdateCurationScore:v28 withNewCurationScore:v24])
        {
          [(PGGraphBuilder *)self addCurationScore:v20 forAsset:v24];
        }

        else
        {
          v29 = [(PGGraphBuilder *)self loggingConnection];
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v30 = [v20 localIdentifier];
            *buf = 134218498;
            *v54 = v28;
            *&v54[8] = 2048;
            *&v54[10] = v24;
            v55 = 2114;
            v56 = v30;
            _os_log_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_INFO, "Keeping previous curationScore (%.3f) over the new one (%.3f) for asset %{public}@", buf, 0x20u);
          }
        }
      }

      v31 = [v20 curationProperties];
      v32 = [v31 allowedForAnalysis];

      if ((v32 & 1) == 0)
      {
        if (![v20 generativeMemoryCreationEligibilityState])
        {
          goto LABEL_42;
        }

        v33 = 0;
LABEL_41:
        [(PGGraphBuilder *)self addGenerativeMemoryCreationEligibilityState:v33 forAsset:v20];
        goto LABEL_42;
      }

      if (v26)
      {
        v33 = [(PGGraphBuilder *)self generativeMemoryCreationEligibleStateWithAsset:v20];
        if (v33 != [v20 generativeMemoryCreationEligibilityState])
        {
          goto LABEL_41;
        }
      }

LABEL_42:
      objc_autoreleasePoolPop(v21);
      ++v19;
      ++v14;
    }

    while (v13 != v19);
    v13 = [obj countByEnumeratingWithState:&v48 objects:v57 count:16];
    v14 = v39;
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_49:

  v34 = self->_numberOfDefaultAssets + v41;
  self->_numberOfUtilityAssets += v40;
  self->_numberOfDefaultAssets = v34;
  v35 = self->_numberOfBetterAssets + v45;
  self->_numberOfImprovedAssets += *&v42[4];
  self->_numberOfBetterAssets = v35;

  v7 = v37;
  v6 = v38;
LABEL_50:
  if (v47)
  {
    if (CFAbsoluteTimeGetCurrent() - v8 >= 0.01)
    {
      v52 = 0;
      v47[2](v47, &v52, 1.0);
      if (v52)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v54 = 271;
          *&v54[4] = 2080;
          *&v54[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/PGGraphBuilder+Curation.m";
          v10 = MEMORY[0x277D86220];
LABEL_55:
          _os_log_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }
      }
    }
  }

LABEL_56:

  v36 = *MEMORY[0x277D85DE8];
}

- (void)_persistGenerativeMemoryCreationEligibilityState:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(PGGraphBuilder *)self photoLibrary];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __77__PGGraphBuilder_Curation___persistGenerativeMemoryCreationEligibilityState___block_invoke;
    v11[3] = &unk_27888A660;
    v12 = v4;
    v10 = 0;
    v6 = [v5 performChangesAndWait:v11 error:&v10];
    v7 = v10;

    if ((v6 & 1) == 0)
    {
      v8 = [(PGGraphBuilder *)self loggingConnection];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v14 = v7;
        _os_log_error_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_ERROR, "Error persisting eligibility state to database: %@", buf, 0xCu);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __77__PGGraphBuilder_Curation___persistGenerativeMemoryCreationEligibilityState___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x277CD97B0];
  v5 = a3;
  v7 = [v4 changeRequestForAsset:a2];
  v6 = [v5 shortValue];

  [v7 setGenerativeMemoryCreationEligibilityState:v6];
}

- (void)persistPendingScores
{
  v3 = self->_curationScoreByAsset;
  objc_sync_enter(v3);
  v6 = [(NSMutableDictionary *)self->_curationScoreByAsset copy];
  [(NSMutableDictionary *)self->_curationScoreByAsset removeAllObjects];
  objc_sync_exit(v3);

  [(PGGraphBuilder *)self _persistCurationScores:v6];
  v4 = self->_generativeMemoryCreationEligibilityStateByAsset;
  objc_sync_enter(v4);
  v5 = [(NSMutableDictionary *)self->_generativeMemoryCreationEligibilityStateByAsset copy];
  [(NSMutableDictionary *)self->_generativeMemoryCreationEligibilityStateByAsset removeAllObjects];
  objc_sync_exit(v4);

  [(PGGraphBuilder *)self _persistGenerativeMemoryCreationEligibilityState:v5];
}

- (void)addCurationScore:(double)a3 forAsset:(id)a4
{
  v9 = a4;
  [v9 cacheCurationScore:a3];
  v6 = self->_curationScoreByAsset;
  objc_sync_enter(v6);
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(NSMutableDictionary *)self->_curationScoreByAsset setObject:v7 forKeyedSubscript:v9];

  if ([(NSMutableDictionary *)self->_curationScoreByAsset count]< 0xC8)
  {
    v8 = 0;
  }

  else
  {
    v8 = [(NSMutableDictionary *)self->_curationScoreByAsset copy];
    [(NSMutableDictionary *)self->_curationScoreByAsset removeAllObjects];
  }

  objc_sync_exit(v6);

  if (v8)
  {
    [(PGGraphBuilder *)self _persistCurationScores:v8];
  }
}

- (void)_persistCurationScores:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(PGGraphBuilder *)self photoLibrary];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __51__PGGraphBuilder_Curation___persistCurationScores___block_invoke;
    v11[3] = &unk_27888A660;
    v12 = v4;
    v10 = 0;
    v6 = [v5 performChangesAndWait:v11 error:&v10];
    v7 = v10;

    if ((v6 & 1) == 0)
    {
      v8 = [(PGGraphBuilder *)self loggingConnection];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v14 = v7;
        _os_log_error_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_ERROR, "Error saving curation scores to database: %@", buf, 0xCu);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __51__PGGraphBuilder_Curation___persistCurationScores___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x277CD97B0];
  v5 = a3;
  v8 = [v4 changeRequestForAsset:a2];
  [v5 doubleValue];
  v7 = v6;

  [v8 setCurationScore:v7];
}

- (BOOL)_shouldUpdateCurationScore:(double)a3 withNewCurationScore:(double)a4
{
  if (a3 != 0.0 && *MEMORY[0x277D3C768] != a3 && *MEMORY[0x277D3C768] == a4)
  {
    return 0;
  }

  v5 = *MEMORY[0x277D3C760];
  v6 = *MEMORY[0x277D3C758];
  v7 = a3 <= a4 || v6 <= a3;
  v8 = v7 || v5 > a3;
  v9 = v8 || v5 > a4;
  if (!v9 && v6 > a4)
  {
    return 0;
  }

  v11 = *MEMORY[0x277D3C770];
  if (a3 > a4)
  {
    v12 = v5 <= a3 || v11 > a3;
    v13 = v12 || v5 <= a4;
    if (!v13 && v11 <= a4)
    {
      return 0;
    }
  }

  v16 = *MEMORY[0x277D3C768] > a4;
  if (*MEMORY[0x277D3C768] > a3)
  {
    v16 = 1;
  }

  if (v11 <= a4)
  {
    v16 = 1;
  }

  if (v11 <= a3)
  {
    v16 = 1;
  }

  return a3 <= a4 || v16;
}

+ (double)topTierAestheticScoreForRatio:(double)a3 inPhotoLibrary:(id)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [v5 librarySpecificFetchOptions];
  [v6 setShouldPrefetchCount:1];
  v7 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:v6];
  v8 = ([v7 count] * a3);
  v9 = [v5 librarySpecificFetchOptions];

  v10 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"overallAestheticScore" ascending:0];
  v19[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  [v9 setSortDescriptors:v11];

  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"overallAestheticScore != %f", *MEMORY[0x277D3CA40]];
  [v9 setInternalPredicate:v12];

  [v9 setFetchLimit:v8 + 1];
  [v9 setChunkSizeForFetch:1];
  [v9 setCacheSizeForFetch:1];
  v13 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:v9];
  v14 = [v13 lastObject];

  if (v14)
  {
    [v14 overallAestheticScore];
    v16 = v15;
  }

  else
  {
    v16 = 1.0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)_findMeaningEdgeToMeaningfulEventNode:(id)a3 withMeaningNode:(id)a4
{
  v5 = a3;
  v6 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__10338;
  v17 = __Block_byref_object_dispose__10339;
  v18 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__PGGraphBuilder_Meaning___findMeaningEdgeToMeaningfulEventNode_withMeaningNode___block_invoke;
  v10[3] = &unk_27887FF38;
  v7 = v6;
  v11 = v7;
  v12 = &v13;
  [v5 enumerateMeaningEdgesAndNodesUsingBlock:v10];
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __81__PGGraphBuilder_Meaning___findMeaningEdgeToMeaningfulEventNode_withMeaningNode___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  if ([a3 isSameNodeAsNode:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)_findAlternativeMeaningEdgeToMeaningfulEventNode:(id)a3 withMeaningNode:(id)a4
{
  v5 = a3;
  v6 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__10338;
  v17 = __Block_byref_object_dispose__10339;
  v18 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __92__PGGraphBuilder_Meaning___findAlternativeMeaningEdgeToMeaningfulEventNode_withMeaningNode___block_invoke;
  v10[3] = &unk_27887FF38;
  v7 = v6;
  v11 = v7;
  v12 = &v13;
  [v5 enumerateMeaningEdgesAndNodesWithDomain:702 block:v10];
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __92__PGGraphBuilder_Meaning___findAlternativeMeaningEdgeToMeaningfulEventNode_withMeaningNode___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  if ([a3 isSameNodeAsNode:*(a1 + 32)])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a4 = 1;
    }
  }
}

- (void)addParentMeaningHierarchyForMeaningNode:(id)a3
{
  v4 = a3;
  v5 = [v4 label];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__PGGraphBuilder_Meaning__addParentMeaningHierarchyForMeaningNode___block_invoke;
  v7[3] = &unk_27887FF10;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [PGGraph traverseParentMeaningsForMeaningLabel:v5 usingBlock:v7];
}

void __67__PGGraphBuilder_Meaning__addParentMeaningHierarchyForMeaningNode___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = v5;
  v10 = 0;
  if (v5 && [v5 length])
  {
    v7 = [*(*(a1 + 32) + 8) addUniqueNodeWithLabel:v6 domain:700 properties:0 didCreate:&v10];
    v8 = [*(*(a1 + 32) + 8) addUniqueEdgeWithLabel:@"SUBMEANING_OF" sourceNode:*(a1 + 40) targetNode:v7 domain:700 properties:0];
    *a3 = v10 ^ 1;
  }

  else
  {
    v7 = [*(a1 + 32) loggingConnection];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_INFO, "[PGGraphBuilder+Meaning] Trying to insert a node with empty meaningLabel", v9, 2u);
    }
  }
}

- (void)addMeaningToMeaningfulEventNode:(id)a3 meaningLabel:(id)a4 meaningIsReliable:(BOOL)a5
{
  v5 = 0.0;
  if (a5)
  {
    v5 = 1.0;
  }

  [PGGraphBuilder addMeaningToMeaningfulEventNode:"addMeaningToMeaningfulEventNode:meaningLabel:meaningConfidence:meaningIsHighPrecision:isV1Algorithm:" meaningLabel:a3 meaningConfidence:a4 meaningIsHighPrecision:v5 isV1Algorithm:?];
}

- (void)deleteAllMeaningNodesAndEdges
{
  v4 = objc_alloc_init(MEMORY[0x277D22C50]);
  v3 = [(PGGraphNodeCollection *)PGGraphMeaningNodeCollection nodesInGraph:self->_graph];
  [v4 removeNodes:v3];
  [(MAGraph *)self->_graph executeGraphChangeRequest:v4];
}

+ (unsigned)edgeDomainForMeaningNodeLabel:(id)a3 isV1Algorithm:(BOOL)a4
{
  v4 = a4;
  v5 = 700;
  if (+[PGEventLabelingConfiguration isEventLabelingEnabled])
  {
    v6 = +[PGEventLabelingConfiguration usePrimaryMeaningDomainForEventLabelingMeanings];
    if (v4)
    {
      v7 = 700;
    }

    else
    {
      v7 = 702;
    }

    if (v4)
    {
      v8 = 702;
    }

    else
    {
      v8 = 700;
    }

    if (v6)
    {
      return v8;
    }

    else
    {
      return v7;
    }
  }

  return v5;
}

- (id)insertBusiness:(id)a3 fromMomentNode:(id)a4
{
  v83 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277D22C50]);
  v9 = [v6 muid];
  v10 = [v6 name];
  if (![(__CFString *)v10 length])
  {
    v11 = +[PGLogging sharedLogging];
    v12 = [v11 loggingConnection];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v78 = v9;
      _os_log_error_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_ERROR, "Inserting business w/o name: muid %lu", buf, 0xCu);
    }

    v10 = &stru_2843F5C58;
  }

  v13 = [PGGraphBusinessNodeCollection businessNodeForBusinessMuid:v9 inGraph:self->_graph];
  if ([v13 count])
  {
    v14 = [v7 collection];
    v15 = [(PGGraphEdgeCollection *)PGGraphPlaceBusinessEdgeCollection edgesFromNodes:v14 toNodes:v13];

    v16 = [v13 anyNode];
  }

  else
  {
    v67 = v13;
    v17 = [v6 region];
    [v17 center];
    v19 = v18;
    v21 = v20;
    v22 = [PGGraphBusinessNode alloc];
    v23 = [v6 venueCapacity];
    v59 = v17;
    [v17 radius];
    v16 = [(PGGraphBusinessNode *)v22 initWithMuid:v9 name:v10 venueCapacity:v23 coordinates:v19 radius:v21, v24];
    [v8 addNode:v16];
    v25 = MEMORY[0x277CBEB98];
    v60 = v6;
    v26 = [v6 businessCategories];
    v27 = [v25 setWithArray:v26];

    v28 = [PGGraphBusinessCategoryNodeCollection businessCategoryNodesForCategories:v27 inGraph:self->_graph];
    v29 = MEMORY[0x277CBEB18];
    v30 = [v28 array];
    v31 = [v29 arrayWithArray:v30];

    v61 = v28;
    v32 = [v28 count];
    v62 = v27;
    if (v32 < [v27 count])
    {
      v63 = self;
      v65 = v10;
      v33 = [v28 categories];
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v34 = v27;
      v35 = [v34 countByEnumeratingWithState:&v73 objects:v82 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v74;
        do
        {
          for (i = 0; i != v36; ++i)
          {
            if (*v74 != v37)
            {
              objc_enumerationMutation(v34);
            }

            v39 = *(*(&v73 + 1) + 8 * i);
            if (([v33 containsObject:v39] & 1) == 0)
            {
              v40 = [[PGGraphBusinessCategoryNode alloc] initWithLabel:v39];
              [v8 addNode:v40];
              [v31 addObject:v40];
            }
          }

          v36 = [v34 countByEnumeratingWithState:&v73 objects:v82 count:16];
        }

        while (v36);
      }

      self = v63;
      v10 = v65;
    }

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v41 = v31;
    v42 = [v41 countByEnumeratingWithState:&v69 objects:v81 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v70;
      do
      {
        for (j = 0; j != v43; ++j)
        {
          if (*v70 != v44)
          {
            objc_enumerationMutation(v41);
          }

          v46 = [[PGGraphBusinessCategoryEdge alloc] initFromBusinessNode:v16 toBusinessCategoryNode:*(*(&v69 + 1) + 8 * j)];
          [v8 addEdge:v46];
        }

        v43 = [v41 countByEnumeratingWithState:&v69 objects:v81 count:16];
      }

      while (v43);
    }

    v15 = 0;
    v6 = v60;
    v13 = v67;
  }

  if (![v15 count])
  {
    v66 = v10;
    v47 = [v6 dateInterval];
    v64 = self;
    v68 = v13;
    if (v47)
    {
      v48 = [v6 hasRoutineVisit];
    }

    else
    {
      v48 = 0;
    }

    v49 = [PGGraphPlaceBusinessEdge alloc];
    [v6 routineVisitConfidence];
    v51 = v50;
    v52 = [v47 startDate];
    v53 = [v47 endDate];
    v54 = [(PGGraphPlaceBusinessEdge *)v49 initFromMomentNode:v7 toBusinessNode:v16 confidence:v48 hasRoutineInfo:v52 universalStartDate:v53 universalEndDate:v51];

    [v8 addEdge:v54];
    self = v64;
    v10 = v66;
    v13 = v68;
  }

  [(MAGraph *)self->_graph executeGraphChangeRequest:v8];
  v55 = [(PGGraphBuilder *)self loggingConnection];
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
  {
    v58 = [v7 localStartDate];
    *buf = 138478083;
    v78 = v10;
    v79 = 2113;
    v80 = v58;
    _os_log_debug_impl(&dword_22F0FC000, v55, OS_LOG_TYPE_DEBUG, "Insert business %{private}@ to momentNode %{private}@", buf, 0x16u);
  }

  v56 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)insertPOIWithFeeder:(id)a3 fromMomentNode:(id)a4 isNearHomeOrWork:(BOOL)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x277CBEB18] array];
  if (!a5)
  {
    v11 = [(PGGraphBuilder *)self insertSpecialPOIAmusementParkNodeFromMomentNode:v9];
    v12 = [(PGGraphBuilder *)self poiCache];
    v13 = [PGGraphPlacesResolver resolvePlacesForMomentNode:v9 feeder:v8 poiCache:v12];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [(PGGraphBuilder *)self insertPOINodeWithPlace:*(*(&v22 + 1) + 8 * i) fromMomentNode:v9 hasInsertedSpecialPOIAmusementParkNode:v11 != 0, v22];
          if (v19)
          {
            [v10 addObject:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v16);
    }
  }

  v20 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)insertROIWithClueCollection:(id)a3 fromMomentNode:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277CBEB18];
  v8 = a3;
  v9 = [v7 array];
  v10 = [v8 uniqueMeaningCluesForKey:@"ROI"];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __68__PGGraphBuilder_Place__insertROIWithClueCollection_fromMomentNode___block_invoke;
  v16[3] = &unk_278880580;
  v16[4] = self;
  v17 = v6;
  v11 = v9;
  v18 = v11;
  v12 = v6;
  [v10 enumerateObjectsUsingBlock:v16];
  v13 = v18;
  v14 = v11;

  return v11;
}

void __68__PGGraphBuilder_Place__insertROIWithClueCollection_fromMomentNode___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) insertROINodeWithPlace:a2 fromMomentNode:*(a1 + 40)];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 48) addObject:v3];
    v3 = v4;
  }
}

- (id)insertROINodeWithType:(unint64_t)a3
{
  v3 = a3;
  if (a3)
  {
    v5 = [PGGraphROINodeCollection roiNodesOfType:a3 inGraph:self->_graph];
    if ([v5 count])
    {
      v3 = [v5 anyNode];
    }

    else
    {
      v3 = [[PGGraphROINode alloc] initWithROIType:v3];
      v6 = objc_alloc_init(MEMORY[0x277D22C50]);
      [v6 addNode:v3];
      [(MAGraph *)self->_graph executeGraphChangeRequest:v6];
    }
  }

  return v3;
}

- (id)insertROINodeWithType:(unint64_t)a3 fromMomentNode:(id)a4 confidence:(double)a5
{
  v8 = a4;
  if (a3)
  {
    v9 = objc_alloc_init(MEMORY[0x277D22C50]);
    v10 = [PGGraphROINodeCollection roiNodesOfType:a3 inGraph:self->_graph];
    if ([v10 count])
    {
      a3 = [v10 anyNode];
      v11 = [v8 collection];
      v12 = [(PGGraphEdgeCollection *)PGGraphROIEdgeCollection edgesFromNodes:v11 toNodes:v10];
    }

    else
    {
      a3 = [[PGGraphROINode alloc] initWithROIType:a3];
      [v9 addNode:a3];
      v12 = 0;
    }

    if (![v12 count])
    {
      v13 = [[PGGraphROIEdge alloc] initFromMomentNode:v8 toROINode:a3 confidence:a5];
      [v9 addEdge:v13];
    }

    [(MAGraph *)self->_graph executeGraphChangeRequest:v9];
  }

  return a3;
}

- (unint64_t)_roiTypeForPlaceInterestType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x277D27598]])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D27580]])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D27588]])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D27590]])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D275A0]])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)insertROINodeWithPlace:(id)a3 fromMomentNode:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 placeInterestType];
  v9 = [(PGGraphBuilder *)self _roiTypeForPlaceInterestType:v8];

  if (v9)
  {
    [v6 confidence];
    v10 = [(PGGraphBuilder *)self insertROINodeWithType:v9 fromMomentNode:v7 confidence:?];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)insertPOINodeWithPlace:(id)a3 fromMomentNode:(id)a4 hasInsertedSpecialPOIAmusementParkNode:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [v8 placeInterestType];
  v11 = [PGGraph poiLabelForPOIType:v10];
  v12 = v11;
  if (v11)
  {
    if (!v5 || (v13 = [v11 isEqualToString:@"AmusementPark"], v14 = objc_msgSend(v12, "isEqualToString:", @"Entertainment"), v15 = 0, (v13 & 1) == 0) && (v14 & 1) == 0)
    {
      v16 = objc_alloc_init(MEMORY[0x277D22C50]);
      v17 = [PGGraphPOINodeCollection poiNodesForLabel:v12 inGraph:self->_graph];
      if ([v17 count])
      {
        v15 = [v17 anyNode];
        v18 = [v9 collection];
        v19 = [(PGGraphEdgeCollection *)PGGraphPOIEdgeCollection edgesFromNodes:v18 toNodes:v17];
      }

      else
      {
        v15 = [[PGGraphPOINode alloc] initWithLabel:v12];
        [v16 addNode:v15];
        v19 = 0;
      }

      if (![v19 count])
      {
        v20 = [PGGraphPOIEdge alloc];
        [v8 confidence];
        v21 = [(PGGraphPOIEdge *)v20 initFromMomentNode:v9 toPOINode:v15 confidence:0 poiIsImproved:0 poiIsSpecial:?];
        [v16 addEdge:v21];
      }

      [(MAGraph *)self->_graph executeGraphChangeRequest:v16];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)insertSpecialPOIAmusementParkNodeFromMomentNode:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [PGSpecialPOIResolver alloc];
  v16[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v7 = [(PGSpecialPOIResolver *)v5 initWithMomentNodes:v6];

  if ([(PGSpecialPOIResolver *)v7 anyMomentHasPOIAmusementPark])
  {
    v8 = objc_alloc_init(MEMORY[0x277D22C50]);
    v9 = [PGGraphPOINodeCollection poiNodesForLabel:@"AmusementPark" inGraph:self->_graph];
    if ([v9 count])
    {
      v10 = [v9 anyNode];
      v11 = [v4 collection];
      v12 = [(PGGraphEdgeCollection *)PGGraphPOIEdgeCollection edgesFromNodes:v11 toNodes:v9];
    }

    else
    {
      v10 = [[PGGraphPOINode alloc] initWithLabel:@"AmusementPark"];
      [v8 addNode:v10];
      v12 = 0;
    }

    if (![v12 count])
    {
      v13 = [[PGGraphPOIEdge alloc] initFromMomentNode:v4 toPOINode:v10 confidence:0 poiIsImproved:1 poiIsSpecial:1.0];
      [v8 addEdge:v13];
    }

    [(MAGraph *)self->_graph executeGraphChangeRequest:v8];
  }

  else
  {
    v10 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)insertEntityNetScenesWithClueCollection:(id)a3 fromMomentNode:(id)a4
{
  v6 = a4;
  v7 = [a3 meaningCluesForKey:@"EntityNetScene"];
  v8 = objc_alloc_init(MEMORY[0x277D22C50]);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__PGGraphBuilder_Scene__insertEntityNetScenesWithClueCollection_fromMomentNode___block_invoke;
  v11[3] = &unk_2788805E0;
  v11[4] = self;
  v9 = v6;
  v12 = v9;
  v10 = v8;
  v13 = v10;
  [v7 enumerateObjectsUsingBlock:v11];
  if ([v10 numberOfChanges])
  {
    [(MAGraph *)self->_graph executeGraphChangeRequest:v10];
  }
}

void __80__PGGraphBuilder_Scene__insertEntityNetScenesWithClueCollection_fromMomentNode___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v3 entityNetSceneTaxonomy];
  [v3 _insertEntityNetScene:v5 fromMomentNode:v4 withEntityNetSceneTaxonomy:v6 changeRequest:a1[6]];
}

- (id)insertScenesWithClueCollection:(id)a3 fromMomentNode:(id)a4
{
  v6 = a4;
  v7 = [a3 meaningCluesForKey:@"Scene"];
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v9 = objc_alloc_init(MEMORY[0x277D22C50]);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __71__PGGraphBuilder_Scene__insertScenesWithClueCollection_fromMomentNode___block_invoke;
  v19 = &unk_2788805B0;
  v20 = self;
  v21 = v6;
  v22 = v9;
  v10 = v8;
  v23 = v10;
  v11 = v9;
  v12 = v6;
  [v7 enumerateObjectsUsingBlock:&v16];
  [(MAGraph *)self->_graph executeGraphChangeRequest:v11, v16, v17, v18, v19, v20];
  v13 = v23;
  v14 = v10;

  return v10;
}

void __71__PGGraphBuilder_Scene__insertScenesWithClueCollection_fromMomentNode___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _insertScene:a2 fromMomentNode:*(a1 + 40) changeRequest:*(a1 + 48)];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 56) addObject:v3];
    v3 = v4;
  }
}

- (id)_insertScene:(id)a3 fromMomentNode:(id)a4 changeRequest:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 identifier];
  sceneNodeBySceneName = self->_sceneNodeBySceneName;
  if (!sceneNodeBySceneName)
  {
    __assert_rtn("[PGGraphBuilder(Scene) _insertScene:fromMomentNode:changeRequest:]", "PGGraphBuilder+Scene.m", 72, "_sceneNodeBySceneName != nil");
  }

  v13 = [(NSMutableDictionary *)sceneNodeBySceneName objectForKeyedSubscript:v11];
  if (v13)
  {
    v14 = v13;
LABEL_4:
    v15 = [PGGraphSceneEdge alloc];
    [v8 confidence];
    v17 = -[PGGraphSceneEdge initFromMomentNode:toSceneNode:confidence:isReliable:numberOfAssets:numberOfHighConfidenceAssets:numberOfSearchConfidenceAssets:numberOfDominantSceneAssets:](v15, "initFromMomentNode:toSceneNode:confidence:isReliable:numberOfAssets:numberOfHighConfidenceAssets:numberOfSearchConfidenceAssets:numberOfDominantSceneAssets:", v9, v14, [v8 isReliable], objc_msgSend(v8, "numberOfAssets"), objc_msgSend(v8, "numberOfHighConfidenceAssets"), objc_msgSend(v8, "numberOfSearchConfidenceAssets"), v16, objc_msgSend(v8, "numberOfDominantSceneAssets"));
    [v10 addEdge:v17];
    goto LABEL_12;
  }

  v18 = [(PGGraphBuilder *)self sceneTaxonomy];
  v19 = [v18 nodeForName:v11];

  if (v19)
  {
    v20 = [PGGraphSceneNode alloc];
    [v8 relevance];
    v14 = [(PGGraphSceneNode *)v20 initWithSceneTaxonomyNode:v19 level:v21];
    [v10 addNode:v14];
    [(NSMutableDictionary *)self->_sceneNodeBySceneName setObject:v14 forKeyedSubscript:v11];

    if (v14)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v22 = [(PGGraphBuilder *)self loggingConnection];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v11;
      _os_log_error_impl(&dword_22F0FC000, v22, OS_LOG_TYPE_ERROR, "Unknown scene '%@'", buf, 0xCu);
    }

    v14 = 0;
  }

  v17 = 0;
LABEL_12:

  v23 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)insertScene:(id)a3 fromMomentNode:(id)a4
{
  v6 = MEMORY[0x277D22C50];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  v10 = [(PGGraphBuilder *)self _insertScene:v8 fromMomentNode:v7 changeRequest:v9];

  [(MAGraph *)self->_graph executeGraphChangeRequest:v9];

  return v10;
}

- (void)_insertEntityNetScene:(id)a3 fromMomentNode:(id)a4 withEntityNetSceneTaxonomy:(id)a5 changeRequest:(id)a6
{
  v23 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v23 identifier];
  if (v13)
  {
    v14 = [(NSMutableDictionary *)self->_sceneNodeBySceneName objectForKeyedSubscript:v13];
    if (v14 || ([(NSMutableSet *)self->_entityNetSceneTaxonomyNodesNotIndexedInSearch containsObject:v13]& 1) != 0)
    {
      goto LABEL_8;
    }

    if (![v23 numberOfSearchConfidenceAssets])
    {
      goto LABEL_9;
    }

    v15 = [(NSMutableDictionary *)self->_entityNetSceneNodeBySceneName objectForKeyedSubscript:v13];
    if (v15)
    {
      v14 = v15;
LABEL_7:
      v16 = [PGGraphEntityNetSceneEdge alloc];
      [v23 confidence];
      v18 = -[PGGraphSceneEdge initFromMomentNode:toSceneNode:confidence:isReliable:numberOfAssets:numberOfHighConfidenceAssets:numberOfSearchConfidenceAssets:numberOfDominantSceneAssets:](v16, "initFromMomentNode:toSceneNode:confidence:isReliable:numberOfAssets:numberOfHighConfidenceAssets:numberOfSearchConfidenceAssets:numberOfDominantSceneAssets:", v10, v14, [v23 isReliable], objc_msgSend(v23, "numberOfAssets"), objc_msgSend(v23, "numberOfHighConfidenceAssets"), objc_msgSend(v23, "numberOfSearchConfidenceAssets"), v17, objc_msgSend(v23, "numberOfDominantSceneAssets"));
      [v12 addEdge:v18];

LABEL_8:
      goto LABEL_9;
    }

    v19 = [v11 nodeForName:v13];
    if (v19)
    {
      v14 = v19;
      if (([v19 isIndexed] & 1) == 0)
      {
        [(NSMutableSet *)self->_entityNetSceneTaxonomyNodesNotIndexedInSearch addObject:v13];
        goto LABEL_8;
      }

      v20 = [PGGraphEntityNetSceneNode alloc];
      [v23 relevance];
      v22 = [(PGGraphSceneNode *)v20 initWithSceneTaxonomyNode:v14 level:v21];
      [v12 addNode:v22];
      [(NSMutableDictionary *)self->_entityNetSceneNodeBySceneName setObject:v22 forKeyedSubscript:v13];

      if (v22)
      {
        v14 = v22;
        goto LABEL_7;
      }
    }
  }

LABEL_9:
}

- (void)insertPersonNodeForShareParticipant:(id)a3
{
  v15 = a3;
  if ([v15 isCurrentUser])
  {
    v4 = [(PGGraphBuilder *)self serviceManager];
    v5 = [v4 mePerson];
  }

  else
  {
    v6 = MEMORY[0x277CD9938];
    v7 = [(PGGraphBuilder *)self photoLibrary];
    v8 = [v7 librarySpecificFetchOptions];
    v9 = [v6 fetchPersonForShareParticipant:v15 options:v8];
    v4 = [v9 firstObject];

    if (v4)
    {
      v10 = [(PGGraphBuilder *)self serviceManager];
      v11 = [v4 localIdentifier];
      v12 = [(PGGraphBuilder *)self photoLibrary];
      v5 = [v10 personForName:v11 inPhotoLibrary:v12];
    }

    else
    {
      v5 = 0;
    }
  }

  v13 = [[PGGraphIngestShareParticipantContainer alloc] initWithShareParticipant:v15 person:v5];
  v14 = [(PGGraphBuilder *)self insertPersonNodeForPerson:v13];
  [(PGGraphPeopleDomainBuildingHelper *)self->_peopleDomainBuildingHelper cacheAuthorNode:v14 forShareParticipant:v15];
}

- (void)insertPersonNodesForShareParticipants:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v33;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        v12 = [v11 localIdentifier];
        [v5 setObject:v11 forKeyedSubscript:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v8);
  }

  v13 = MEMORY[0x277CBEB98];
  v14 = [v5 allKeys];
  v15 = [v13 setWithArray:v14];

  v16 = [(PGGraphBuilder *)self graph];
  v17 = [PGGraphPersonNodeCollection personNodesForShareParticipantIdentifiers:v15 inGraph:v16];

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __71__PGGraphBuilder_SharedLibrary__insertPersonNodesForShareParticipants___block_invoke;
  v29[3] = &unk_278889EA0;
  v18 = v5;
  v30 = v18;
  v31 = self;
  [v17 enumerateNodesUsingBlock:v29];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v19 = [v18 allValues];
  v20 = [v19 countByEnumeratingWithState:&v25 objects:v36 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v26;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [(PGGraphBuilder *)self insertPersonNodeForShareParticipant:*(*(&v25 + 1) + 8 * j)];
      }

      v21 = [v19 countByEnumeratingWithState:&v25 objects:v36 count:16];
    }

    while (v21);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __71__PGGraphBuilder_SharedLibrary__insertPersonNodesForShareParticipants___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 shareParticipantLocalIdentifier];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v9 shareParticipantLocalIdentifier];
    v6 = [v4 objectForKeyedSubscript:v5];

    if (*(a1 + 32))
    {
      [*(*(a1 + 40) + 88) cacheAuthorNode:v9 forShareParticipant:v6];
      v7 = *(a1 + 32);
      v8 = [v9 shareParticipantLocalIdentifier];
      [v7 removeObjectForKey:v8];
    }
  }
}

+ (id)sharedLibraryParticipantsForLibrary:(id)a3
{
  v3 = [a3 librarySpecificFetchOptions];
  v4 = [MEMORY[0x277CD98A8] fetchActiveLibraryScopeWithOptions:v3];
  v5 = [v4 firstObject];

  if (v5)
  {
    v6 = [MEMORY[0x277CD99C8] fetchParticipantsInShare:v5 options:v3];
    v7 = [v6 fetchedObjects];

    v8 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v7];
  }

  else
  {
    v8 = [MEMORY[0x277CBEB98] set];
  }

  return v8;
}

+ (BOOL)isSharedLibraryEnabledForLibrary:(id)a3
{
  v3 = MEMORY[0x277CD98A8];
  v4 = [a3 librarySpecificFetchOptions];
  v5 = [v3 fetchActiveLibraryScopeWithOptions:v4];
  v6 = [v5 firstObject];

  return v6 != 0;
}

- (id)insertLocationMobilityNodeWithMobility:(id)a3 fromMomentNode:(id)a4 confidence:(double)a5
{
  v8 = MEMORY[0x277D22C50];
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(v8);
  v12 = [[PGGraphMobilityNode alloc] initWithLabel:v10];

  if (![(MAGraph *)self->_graph findAndResolveUniqueNode:v12])
  {
    [v11 addNode:v12];
  }

  v13 = [[PGGraphMobilityEdge alloc] initFromMomentNode:v9 toMobilityNode:v12 confidence:a5];

  if (![(MAGraph *)self->_graph findAndResolveUniqueEdge:v13])
  {
    [v11 addEdge:v13];
  }

  [(MAGraph *)self->_graph executeGraphChangeRequest:v11];

  return v12;
}

- (id)insertLocationMobilityNodeWithClueCollection:(id)a3 fromMomentNode:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PGGraphBuilder *)self serviceManager];
  v9 = objc_alloc(MEMORY[0x277CCA970]);
  v10 = [v7 universalStartDate];
  v11 = [v7 universalEndDate];
  v12 = [v9 initWithStartDate:v10 endDate:v11];

  v21 = 0.0;
  v13 = [v8 predominantLocationMobilityForDateInterval:v12 confidence:&v21];
  if (v13)
  {
    v14 = v21;
    if (v21 >= 0.2)
    {
      goto LABEL_7;
    }
  }

  v15 = [v6 locationMobilityClue];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 value];

    [v16 confidence];
    v21 = v18;
    v13 = v17;
  }

  if (v13)
  {
    v14 = v21;
LABEL_7:
    v19 = [(PGGraphBuilder *)self insertLocationMobilityNodeWithMobility:v13 fromMomentNode:v7 confidence:v14];
    goto LABEL_8;
  }

  v19 = 0;
LABEL_8:

  return v19;
}

- (id)insertAddressNodeWithPlacemark:(id)a3 location:(id)a4 relevance:(double)a5 numberOfAssets:(unint64_t)a6 duringDateInterval:(id)a7 fromMomentNode:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v17 = a8;
  v18 = 0;
  if (v14 && v15)
  {
    v19 = [(PGGraphBuilder *)self serviceManager];
    if ([MEMORY[0x277D3ACD0] locationIsCoarse:v15])
    {
      v20 = 0;
    }

    else
    {
      v21 = [v19 locationOfInterestCloseToLocation:v15 inDateInterval:v16];
      v22 = [(PGGraphBuilder *)self locationCache];
      v23 = [v21 placemarkWithLocationCache:v22];

      if (v23 && ([v23 isEqual:v14] & 1) == 0)
      {
        v36 = v23;

        v20 = 1;
        v14 = v36;
      }

      else
      {
        v20 = 0;
      }
    }

    [v15 coordinate];
    v25 = v24;
    v27 = v26;
    v28 = objc_alloc_init(MEMORY[0x277D22C50]);
    v29 = [(PGGraphBuilder *)self insertAddressNodeWithProjectedPlacemark:v14 atEventLocation:v15 usingImprovedPlacemark:v20 changeRequest:v28];
    v18 = v29;
    if (v29)
    {
      v37 = v19;
      v38 = v17;
      if ([v29 isPrecise] && (objc_msgSend(v19, "isRemoteLocation:inDateInterval:", v15, v16) & 1) != 0)
      {
        v30 = off_27887B358;
      }

      else
      {
        v30 = off_27887AB80;
      }

      v31 = objc_alloc(*v30);
      v32 = [v16 startDate];
      v33 = [v16 endDate];
      v34 = [v31 initFromMomentNode:v38 toAddressNode:v18 relevance:v32 universalStartDate:v33 universalEndDate:a6 photoCoordinate:a5 numberOfAssets:{v25, v27}];

      if (![(MAGraph *)self->_graph findAndResolveUniqueEdge:v34])
      {
        [v28 addEdge:v34];
      }

      v19 = v37;
      v17 = v38;
    }

    [(MAGraph *)self->_graph executeGraphChangeRequest:v28];
  }

  return v18;
}

- (id)insertLocationHierarchyWithClueCollection:(id)a3 fromMomentNode:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB58] set];
  v9 = [MEMORY[0x277CBEB18] array];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __85__PGGraphBuilder_Location__insertLocationHierarchyWithClueCollection_fromMomentNode___block_invoke;
  v26[3] = &unk_278880DB0;
  v10 = v9;
  v27 = v10;
  [v6 enumerateTimeClues:v26];
  v11 = [v10 count];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __85__PGGraphBuilder_Location__insertLocationHierarchyWithClueCollection_fromMomentNode___block_invoke_2;
  v19[3] = &unk_278880DD8;
  v25 = v11;
  v20 = v10;
  v21 = v6;
  v22 = self;
  v23 = v7;
  v12 = v8;
  v24 = v12;
  v13 = v7;
  v14 = v6;
  v15 = v10;
  [v14 enumerateLocationClues:v19];
  v16 = v24;
  v17 = v12;

  return v12;
}

void __85__PGGraphBuilder_Location__insertLocationHierarchyWithClueCollection_fromMomentNode___block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 placemark];
  if (v6)
  {
    if (*(a1 + 72) <= a3)
    {
      v8 = [*(a1 + 40) universalStartDate];
      v9 = [*(a1 + 40) universalEndDate];
      v10 = +[PGLogging sharedLogging];
      v11 = [v10 loggingConnection];

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v18 = [*(a1 + 32) count];
        v19 = 134218498;
        v20 = a3;
        v21 = 2048;
        v22 = v18;
        v23 = 2112;
        v24 = v8;
        _os_log_error_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_ERROR, "Index of location (%lu) mismatches number of time input clues (%lu). Will use start date of clue collection %@", &v19, 0x20u);
      }
    }

    else
    {
      v7 = [*(a1 + 32) objectAtIndexedSubscript:a3];
      v8 = [v7 universalStartDate];
      v9 = [v7 universalEndDate];
    }

    v12 = [v5 location];
    v13 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v8 endDate:v9];
    v14 = *(a1 + 48);
    [v5 score];
    v16 = [v14 insertAddressNodeWithPlacemark:v6 location:v12 relevance:objc_msgSend(v5 numberOfAssets:"numberOfAssets") duringDateInterval:v13 fromMomentNode:{*(a1 + 56), v15}];
    if (v16)
    {
      [*(a1 + 64) addObject:v16];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)insertAddressNodeWithProjectedPlacemark:(id)a3 atEventLocation:(id)a4 usingImprovedPlacemark:(BOOL)a5 changeRequest:(id)a6
{
  v7 = a5;
  v42 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [v10 location];
  [v13 coordinate];
  v15 = v14;
  v17 = v16;

  [v11 coordinate];
  v19 = v18;
  v21 = v20;
  v29 = v18;
  v31 = v20;
  v44.latitude = v15;
  v44.longitude = v17;
  if (!CLLocationCoordinate2DIsValid(v44) || v15 == 0.0 && v17 == 0.0 || (v45.latitude = v19, v45.longitude = v21, !CLLocationCoordinate2DIsValid(v45)) || v19 == 0.0 && v21 == 0.0)
  {
    v22 = +[PGLogging sharedLogging];
    v23 = [v22 loggingConnection];

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138478851;
      v33 = v10;
      v34 = 2049;
      v35 = v15;
      v36 = 2049;
      v37 = v17;
      v38 = 2049;
      v39 = v19;
      v40 = 2049;
      v41 = v21;
      _os_log_error_impl(&dword_22F0FC000, v23, OS_LOG_TYPE_ERROR, "Coordinate invalid for placemark %{private}@ projection(%{private}f, %{private}f), photoCoordinate (%{private}f, %{private}f).", buf, 0x34u);
    }

    v24 = 0;
  }

  else
  {
    if ([v10 isOcean])
    {
      CLLocationCoordinate2DGetDistanceFrom();
      if (v27 >= 10000.0)
      {
        v15 = v30;
        v17 = v31;
      }

      v28 = 3;
    }

    else if ([MEMORY[0x277D3ACD0] locationIsCoarse:v11])
    {
      v28 = 2;
    }

    else
    {
      v28 = v7;
    }

    v23 = [(PGGraphBuilder *)self _uuidForPlacemark:v10 forNodeLabel:@"Number"];
    v24 = [[PGGraphAddressNode alloc] initWithLocationMode:v28 coordinate:v23 name:v15, v17];
    if (![(MAGraph *)self->_graph findAndResolveUniqueNode:v24])
    {
      [v12 addNode:v24];
    }

    [(PGGraphBuilder *)self insertAreasOfInterestForProjectedPlacemark:v10 fromAddressNode:v24 changeRequest:v12];
    [(PGGraphBuilder *)self insertLocationHierarchyWithProjectedPlacemark:v10 fromAddressNode:v24 changeRequest:v12];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (void)insertLocationHierarchyWithProjectedPlacemark:(id)a3 fromAddressNode:(id)a4 changeRequest:(id)a5
{
  v104 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![v9 identifier])
  {
    v11 = v9;
    v12 = [v8 subThoroughfare];

    if (v12)
    {
      v13 = [(PGGraphBuilder *)self _uuidForPlacemark:v8 forNodeLabel:@"Number"];
      v14 = [PGGraphLocationNumberNode alloc];
      v15 = [v8 subThoroughfare];
      v16 = [(PGGraphNamedLocationNode *)v14 initWithName:v15 uuid:v13];

      v17 = [(MAGraph *)self->_graph findAndResolveUniqueNode:v16];
      if (!v17)
      {
        [v10 addNode:v16];
      }

      v18 = [[PGGraphLocationNumberEdge alloc] initFromLocationNode:v11 toLocationNumberNode:v16];
      if (![(MAGraph *)self->_graph findAndResolveUniqueEdge:v18])
      {
        [v10 addEdge:v18];
      }

      if (v17)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v16 = v11;
    }

    v19 = [v8 thoroughfare];

    if (v19)
    {
      v20 = [(PGGraphBuilder *)self _uuidForPlacemark:v8 forNodeLabel:@"Street"];
      v21 = [PGGraphLocationStreetNode alloc];
      v22 = [v8 thoroughfare];
      v11 = [(PGGraphNamedLocationNode *)v21 initWithName:v22 uuid:v20];

      v23 = [(MAGraph *)self->_graph findAndResolveUniqueNode:v11];
      if (!v23)
      {
        [v10 addNode:v11];
      }

      v24 = [[PGGraphLocationStreetEdge alloc] initFromLocationNode:v16 toStreetNode:v11];
      if (![(MAGraph *)self->_graph findAndResolveUniqueEdge:v24])
      {
        [v10 addEdge:v24];
      }

      if (v23)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v11 = v16;
    }

    v25 = [v8 subLocality];

    if (v25)
    {
      v13 = [(PGGraphBuilder *)self _uuidForPlacemark:v8 forNodeLabel:@"District"];
      v26 = [PGGraphLocationDistrictNode alloc];
      v27 = [v8 subLocality];
      v16 = [(PGGraphNamedLocationNode *)v26 initWithName:v27 uuid:v13];

      v28 = [(MAGraph *)self->_graph findAndResolveUniqueNode:v16];
      if (!v28)
      {
        [v10 addNode:v16];
      }

      v18 = [[PGGraphLocationDistrictEdge alloc] initFromLocationNode:v11 toDistrictNode:v16];
      if (![(MAGraph *)self->_graph findAndResolveUniqueEdge:v18])
      {
        [v10 addEdge:v18];
      }

      if (v28)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v16 = v11;
    }

    v29 = [v8 locality];

    if (v29)
    {
      v20 = [(PGGraphBuilder *)self _uuidForPlacemark:v8 forNodeLabel:@"City"];
      v30 = [PGGraphLocationCityNode alloc];
      v31 = [v8 locality];
      v11 = [(PGGraphNamedLocationNode *)v30 initWithName:v31 uuid:v20];

      v32 = [(MAGraph *)self->_graph findAndResolveUniqueNode:v11];
      if (!v32)
      {
        [v10 addNode:v11];
      }

      v24 = [[PGGraphLocationCityEdge alloc] initFromLocationNode:v16 toCityNode:v11];
      if (![(MAGraph *)self->_graph findAndResolveUniqueEdge:v24])
      {
        [v10 addEdge:v24];
      }

      if (v32)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v11 = v16;
    }

    v33 = [v8 subAdministrativeArea];

    if (v33)
    {
      v13 = [(PGGraphBuilder *)self _uuidForPlacemark:v8 forNodeLabel:@"County"];
      v34 = [PGGraphLocationCountyNode alloc];
      v35 = [v8 subAdministrativeArea];
      v16 = [(PGGraphNamedLocationNode *)v34 initWithName:v35 uuid:v13];

      v36 = [(MAGraph *)self->_graph findAndResolveUniqueNode:v16];
      if (!v36)
      {
        [v10 addNode:v16];
      }

      v18 = [[PGGraphLocationCountyEdge alloc] initFromLocationNode:v11 toCountyNode:v16];
      if (![(MAGraph *)self->_graph findAndResolveUniqueEdge:v18])
      {
        [v10 addEdge:v18];
      }

      if (v36)
      {
LABEL_40:

LABEL_50:
        goto LABEL_51;
      }
    }

    else
    {
      v16 = v11;
    }

    v37 = [v8 administrativeArea];

    if (v37)
    {
      v20 = [(PGGraphBuilder *)self _uuidForPlacemark:v8 forNodeLabel:@"State"];
      v38 = [PGGraphLocationStateNode alloc];
      v39 = [v8 administrativeArea];
      v11 = [(PGGraphNamedLocationNode *)v38 initWithName:v39 uuid:v20];

      v40 = [(MAGraph *)self->_graph findAndResolveUniqueNode:v11];
      if (!v40)
      {
        [v10 addNode:v11];
      }

      v24 = [[PGGraphLocationStateEdge alloc] initFromLocationNode:v16 toStateNode:v11];
      if (![(MAGraph *)self->_graph findAndResolveUniqueEdge:v24])
      {
        [v10 addEdge:v24];
      }

      if (v40)
      {
LABEL_49:

        v11 = v16;
        goto LABEL_50;
      }
    }

    else
    {
      v11 = v16;
    }

    v42 = [v8 ISOcountryCode];

    if (v42)
    {
      v43 = [v8 ISOcountryCode];
      v44 = [PGGraphLocationCountryNode alloc];
      v45 = [v8 ISOcountryCode];
      v46 = [(PGGraphNamedLocationNode *)v44 initWithName:v45 uuid:v43];

      v47 = [(MAGraph *)self->_graph findAndResolveUniqueNode:v46];
      if (!v47)
      {
        [v10 addNode:v46];
      }

      v48 = [[PGGraphLocationCountryEdge alloc] initFromLocationNode:v11 toCountryNode:v46];
      if (![(MAGraph *)self->_graph findAndResolveUniqueEdge:v48])
      {
        [v10 addEdge:v48];
      }

      if (v47)
      {

        goto LABEL_50;
      }

      v84 = v48;
      v85 = v43;
      v91 = v11;
      v86 = v9;
      v87 = v8;
      v49 = MEMORY[0x277CBEAF8];
      v50 = [v8 ISOcountryCode];
      v51 = [v49 languagesForRegion:v50 subdivision:0 withThreshold:2 filter:0];

      v89 = self;
      v52 = [PGGraphLanguageNodeCollection nodesWithLocaleIdentifiers:v51 inGraph:self->_graph];
      v53 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v97[0] = MEMORY[0x277D85DD0];
      v97[1] = 3221225472;
      v97[2] = __104__PGGraphBuilder_Location__insertLocationHierarchyWithProjectedPlacemark_fromAddressNode_changeRequest___block_invoke;
      v97[3] = &unk_278888290;
      v54 = v53;
      v98 = v54;
      [v52 enumerateNodesUsingBlock:v97];
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v55 = v51;
      v56 = [v55 countByEnumeratingWithState:&v93 objects:v103 count:16];
      if (v56)
      {
        v57 = v56;
        v58 = *v94;
        do
        {
          for (i = 0; i != v57; ++i)
          {
            if (*v94 != v58)
            {
              objc_enumerationMutation(v55);
            }

            v60 = *(*(&v93 + 1) + 8 * i);
            v61 = [v54 objectForKeyedSubscript:v60];
            if (!v61)
            {
              v61 = [[PGGraphLanguageNode alloc] initWithLocaleIdentifier:v60];
              [v10 addNode:v61];
            }

            v62 = [[PGGraphLanguageEdge alloc] initFromLocationNode:v46 toLanguageNode:v61];
            [v10 addEdge:v62];
          }

          v57 = [v55 countByEnumeratingWithState:&v93 objects:v103 count:16];
        }

        while (v57);
      }

      v8 = v87;
      self = v89;
    }

    else
    {
      v86 = v9;
      v46 = v11;
    }

    v63 = [v8 ISOcountryCode];

    if (v63)
    {
      v64 = v10;
      v65 = [MEMORY[0x277CBEAF8] currentLocale];
      v66 = MEMORY[0x277CBEAF8];
      v67 = [v8 ISOcountryCode];
      v68 = [v66 containingRegionOfRegion:v67];

      v69 = [v65 localizedStringForCountryCode:v68];
      v70 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
      v71 = [v70 localizedStringForCountryCode:v68];

      v88 = v71;
      if (v69)
      {
        v9 = v86;
        v10 = v64;
        if (v71)
        {
          v72 = [(PGGraphNamedLocationNode *)[PGGraphLocationSubcontinentNode alloc] initWithName:v69 uuid:v71];
          v73 = [(MAGraph *)self->_graph findAndResolveUniqueNode:v72];
          if (!v73)
          {
            [v10 addNode:v72];
          }

          v74 = [[PGGraphLocationSubcontinentEdge alloc] initFromLocationNode:v46 toSubcontinentNode:v72];
          if (![(MAGraph *)self->_graph findAndResolveUniqueEdge:v74])
          {
            [v10 addEdge:v74];
          }

          if (v73)
          {
            v75 = v72;
            v92 = v46;
LABEL_99:

            v11 = v92;
            goto LABEL_50;
          }

          v46 = v72;
LABEL_85:
          v92 = v46;

          v76 = [v8 ISOcountryCode];

          if (v76)
          {
            v90 = v69;
            v77 = [MEMORY[0x277CBEAF8] currentLocale];
            v78 = MEMORY[0x277CBEAF8];
            v79 = [v8 ISOcountryCode];
            v80 = [v78 containingContinentOfRegion:v79];

            v75 = [v77 localizedStringForCountryCode:v80];
            v81 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
            v74 = [v81 localizedStringForCountryCode:v80];

            if (v75)
            {
              v69 = v90;
              if (v74)
              {
                v82 = [(PGGraphNamedLocationNode *)[PGGraphLocationContinentNode alloc] initWithName:v75 uuid:v74];
                if (![(MAGraph *)self->_graph findAndResolveUniqueNode:v82])
                {
                  [v10 addNode:v82];
                }

                v83 = [[PGGraphLocationContinentEdge alloc] initFromLocationNode:v92 toContinentNode:v82];
                if (![(MAGraph *)self->_graph findAndResolveUniqueEdge:v83])
                {
                  [v10 addEdge:v83];
                }

LABEL_98:
                goto LABEL_99;
              }
            }

            else
            {
              v69 = v90;
            }
          }

          else
          {
            v75 = 0;
            v74 = 0;
          }

          v82 = [(PGGraphBuilder *)self loggingConnection];
          if (os_log_type_enabled(&v82->super.super.super.super.super.super, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v100 = v75;
            v101 = 2112;
            v102 = v74;
            _os_log_error_impl(&dword_22F0FC000, &v82->super.super.super.super.super.super, OS_LOG_TYPE_ERROR, "Either or both of the localized continent name (%@) and UUID (%@) is or are nil", buf, 0x16u);
          }

          goto LABEL_98;
        }
      }

      else
      {
        v9 = v86;
        v10 = v64;
      }
    }

    else
    {
      v69 = 0;
      v88 = 0;
      v9 = v86;
    }

    v74 = [(PGGraphBuilder *)self loggingConnection];
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v100 = v69;
      v101 = 2112;
      v102 = v88;
      _os_log_error_impl(&dword_22F0FC000, v74, OS_LOG_TYPE_ERROR, "Either or both of the localized subcontinent name (%@) and UUID (%@) is or are nil", buf, 0x16u);
    }

    goto LABEL_85;
  }

LABEL_51:

  v41 = *MEMORY[0x277D85DE8];
}

void __104__PGGraphBuilder_Location__insertLocationHierarchyWithProjectedPlacemark_fromAddressNode_changeRequest___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 localeIdentifier];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

- (void)insertAreasOfInterestForProjectedPlacemark:(id)a3 fromAddressNode:(id)a4 changeRequest:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc(MEMORY[0x277CBEB70]);
  v12 = [v8 areasOfInterest];
  v13 = [v11 initWithArray:v12];

  v14 = [v13 count];
  v15 = [v8 popularityScoresOrderedByAOI];
  if (v14 == [v15 count])
  {
    if (v14)
    {
      if (v14 == 1)
      {
        v16 = [v8 isIsland];
      }

      else
      {
        v16 = 0;
      }

      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __101__PGGraphBuilder_Location__insertAreasOfInterestForProjectedPlacemark_fromAddressNode_changeRequest___block_invoke;
      v18[3] = &unk_278880D88;
      v22 = v14;
      v18[4] = self;
      v19 = v15;
      v23 = v16;
      v20 = v10;
      v21 = v9;
      v24 = v14 != 1;
      [v13 enumerateObjectsUsingBlock:v18];
    }
  }

  else
  {
    v17 = [(PGGraphBuilder *)self loggingConnection];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_ERROR, "Length of areasOfInterest and popularityScoresOrderedByAOI arrays are different", buf, 2u);
    }
  }
}

void __101__PGGraphBuilder_Location__insertAreasOfInterestForProjectedPlacemark_fromAddressNode_changeRequest___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = vcvtd_n_f64_u64(*(a1 + 64) - a3, 1uLL) / *(a1 + 64) + 0.5;
  v7 = [PGGraphAreaNode filterWithName:v5];
  v8 = [*(*(a1 + 32) + 8) anyNodeMatchingFilter:v7];
  v9 = [*(a1 + 40) objectAtIndexedSubscript:a3];
  [v9 doubleValue];
  v11 = v10;
  if (!v8)
  {
    v8 = [[PGGraphAreaNode alloc] initWithName:v5 isBlocked:*(a1 + 72) popularityScore:v10];
    [*(a1 + 48) addNode:v8];
    v12 = [[PGGraphAreaEdge alloc] initFromAddressNode:*(a1 + 56) toAreaNode:v8 relevance:v6];
LABEL_17:
    [*(a1 + 48) addEdge:v12];
    goto LABEL_18;
  }

  if ((*(a1 + 73) & 1) == 0 && *(a1 + 72) != [(PGGraphAreaNode *)v8 isBlocked])
  {
    if (*(a1 + 72))
    {
      [PGGraphAreaNode setIsBlocked:1 onNodeForIdentifier:[(MANode *)v8 identifier] inGraph:*(*(a1 + 32) + 8)];
    }

    else
    {
      v13 = [*(a1 + 32) loggingConnection];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v19 = 138477827;
        v20 = v5;
        _os_log_error_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_ERROR, "Inconsistent blocked state for area %{private}@", &v19, 0xCu);
      }
    }
  }

  [(PGGraphAreaNode *)v8 popularityScore];
  if (v14 != v11)
  {
    v15 = v14;
    [*MEMORY[0x277D27620] doubleValue];
    if (v15 == v16)
    {
      [PGGraphAreaNode setPopularityScore:[(MANode *)v8 identifier] onNodeForIdentifier:*(*(a1 + 32) + 8) inGraph:v11];
    }

    else
    {
      v17 = [*(a1 + 32) loggingConnection];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v19 = 138477827;
        v20 = v5;
        _os_log_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_INFO, "Inconsistent popularity score for area %{private}@.", &v19, 0xCu);
      }
    }
  }

  v12 = [[PGGraphAreaEdge alloc] initFromAddressNode:*(a1 + 56) toAreaNode:v8 relevance:v6];
  if (([*(*(a1 + 32) + 8) findAndResolveUniqueEdge:v12] & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_18:

  v18 = *MEMORY[0x277D85DE8];
}

- (id)_uuidForPlacemark:(id)a3 forNodeLabel:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCAB68] string];
  if ([v6 isEqualToString:@"Number"])
  {
    v8 = [v5 subThoroughfare];
    v9 = v8;
    if (v8)
    {
      [v7 appendFormat:@"%@", v8];
    }

    goto LABEL_6;
  }

  if ([v6 isEqualToString:@"Street"])
  {
LABEL_6:
    v10 = [v5 thoroughfare];
    v11 = v10;
    if (v10)
    {
      [v7 appendFormat:@"%@", v10];
    }

    goto LABEL_9;
  }

  if ([v6 isEqualToString:@"District"])
  {
LABEL_9:
    v12 = [v5 subLocality];
    v13 = v12;
    if (v12)
    {
      [v7 appendFormat:@"%@", v12];
    }

    goto LABEL_12;
  }

  if ([v6 isEqualToString:@"City"])
  {
LABEL_12:
    v14 = [v5 locality];
    v15 = v14;
    if (v14)
    {
      [v7 appendFormat:@"%@", v14];
    }

    goto LABEL_15;
  }

  if ([v6 isEqualToString:@"County"])
  {
LABEL_15:
    v16 = [v5 subAdministrativeArea];
    v17 = v16;
    if (v16)
    {
      [v7 appendFormat:@"%@", v16];
    }

    goto LABEL_18;
  }

  if (![v6 isEqualToString:@"State"])
  {
    if (![v6 isEqualToString:@"Country"])
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

LABEL_18:
  v18 = [v5 administrativeArea];
  v19 = v18;
  if (v18)
  {
    [v7 appendFormat:@"%@", v18];
  }

LABEL_21:
  v20 = [v5 ISOcountryCode];
  v21 = v20;
  if (v20)
  {
    [v7 appendFormat:@"%@", v20];
  }

LABEL_24:

  return v7;
}

- (void)_onGraphDidUpdate
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = +[PGLogging sharedLogging];
  v4 = [v3 loggingConnection];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, v4, OS_LOG_TYPE_INFO, "[GraphBuilder] - signaling availability state did change", buf, 2u);
  }

  v5 = [objc_alloc(MEMORY[0x277D3AC60]) initWithSourceIdentifier:@"com.apple.photoanalysisd"];
  [v5 setPhotosKnowledgeGraphIsReady:MEMORY[0x277CBEC38]];
  v6 = [(PHPhotoLibrary *)self->_photoLibrary photoLibrary];
  v7 = [v6 assetsdClient];
  v8 = [v7 libraryInternalClient];
  v14 = 0;
  v9 = [v8 signalAvailabilityWithChanges:v5 error:&v14];
  v10 = v14;

  v11 = +[PGLogging sharedLogging];
  v12 = [v11 loggingConnection];

  if (v9)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_INFO, "[GraphBuilder] - successfully updated availability state", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v16 = v10;
    _os_log_error_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_ERROR, "[GraphBuilder] - failed to update availability state, error: %@", buf, 0xCu);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_cleanGraphBuildCachesAfterUpdate
{
  v11 = *MEMORY[0x277D85DE8];
  eventLabelingFeaturesCache = self->_eventLabelingFeaturesCache;
  if (eventLabelingFeaturesCache)
  {
    v8 = 0;
    v3 = [(PGEventLabelingFeaturesFileCache *)eventLabelingFeaturesCache clearCacheWithError:&v8];
    v4 = v8;
    if (!v3)
    {
      v5 = +[PGLogging sharedLogging];
      v6 = [v5 loggingConnection];

      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v10 = v4;
        _os_log_error_impl(&dword_22F0FC000, v6, OS_LOG_TYPE_ERROR, "[PGGraphBuilder] Error clearing features cache: %@", buf, 0xCu);
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)clearPersonActivityMeaningCriteriaDictionaryByMeaningLabel
{
  personActivityMeaningCriteriaDictionaryByMeaningLabel = self->_personActivityMeaningCriteriaDictionaryByMeaningLabel;
  self->_personActivityMeaningCriteriaDictionaryByMeaningLabel = 0;
}

- (NSDictionary)personActivityMeaningCriteriaDictionaryByMeaningLabel
{
  v2 = self;
  v38 = *MEMORY[0x277D85DE8];
  personActivityMeaningCriteriaDictionaryByMeaningLabel = self->_personActivityMeaningCriteriaDictionaryByMeaningLabel;
  if (!personActivityMeaningCriteriaDictionaryByMeaningLabel)
  {
    v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v4 = +[PGTrialSession newTrialSession];
    v5 = [v4 arrayForFactorName:@"personActivityMeaning" withNamespaceType:3];
    if (![v5 count])
    {
      v6 = +[PGLogging sharedLogging];
      v7 = [v6 loggingConnection];

      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_ERROR, "[PERSON ACTIVITY MEANING CRITERIA] nil personActivityMeaningLabels found", buf, 2u);
      }
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v5;
    v8 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v32;
      v11 = 0x277CCA000uLL;
      v12 = @"%@.plist";
      do
      {
        v13 = 0;
        v28 = v9;
        do
        {
          if (*v32 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v31 + 1) + 8 * v13);
          v15 = [*(v11 + 3240) stringWithFormat:v12, v14];
          v16 = [v4 dictionaryForFactorName:v15 withNamespaceType:3];

          if (v16)
          {
            v17 = [PGMeaningCriteriaEvaluator meaningCriteriaEvaluatorsForMeaningLabel:v14 withDictionary:v16 serviceManager:v2->_serviceManager];
            [(NSDictionary *)v30 setObject:v17 forKeyedSubscript:v14];
          }

          else
          {
            v18 = v10;
            v19 = v12;
            v20 = v4;
            v21 = v11;
            v22 = v2;
            v23 = +[PGLogging sharedLogging];
            v24 = [v23 loggingConnection];

            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v36 = v14;
              _os_log_error_impl(&dword_22F0FC000, v24, OS_LOG_TYPE_ERROR, "[PERSON ACTIVITY MEANING CRITERIA] nil personActivityMeaning criteria dictionary found for meaning %@", buf, 0xCu);
            }

            [(NSDictionary *)v30 setObject:MEMORY[0x277CBEBF8] forKeyedSubscript:v14];
            v2 = v22;
            v11 = v21;
            v4 = v20;
            v12 = v19;
            v10 = v18;
            v9 = v28;
          }

          ++v13;
        }

        while (v9 != v13);
        v9 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
      }

      while (v9);
    }

    v25 = v2->_personActivityMeaningCriteriaDictionaryByMeaningLabel;
    v2->_personActivityMeaningCriteriaDictionaryByMeaningLabel = v30;

    personActivityMeaningCriteriaDictionaryByMeaningLabel = v2->_personActivityMeaningCriteriaDictionaryByMeaningLabel;
  }

  v26 = *MEMORY[0x277D85DE8];

  return personActivityMeaningCriteriaDictionaryByMeaningLabel;
}

- (void)setCurationAlgorithmsVersion:(unint64_t)a3
{
  v10 = [(PGGraph *)self->_graph infoNode];
  v5 = [v10 creationDate];
  v6 = [v10 localeIdentifier];
  v7 = [v10 languageIdentifiers];
  v8 = [v10 geoServiceProviderID];
  v9 = [PGGraphInfoNode genericPropertiesWithCreationDate:v5 localeIdentifier:v6 languageIdentifiers:v7 geoServiceProviderID:v8 curationAlgorithmsVersion:a3 contactsStoreAccess:1];

  -[MAGraph persistModelProperties:forNodeWithIdentifier:clobberExisting:](self->_graph, "persistModelProperties:forNodeWithIdentifier:clobberExisting:", v9, [v10 identifier], 0);
}

- (void)setGeoServiceProviderID:(id)a3
{
  graph = self->_graph;
  v5 = a3;
  v10 = [(PGGraph *)graph infoNode];
  v6 = [v10 creationDate];
  v7 = [v10 localeIdentifier];
  v8 = [v10 languageIdentifiers];
  v9 = +[PGGraphInfoNode genericPropertiesWithCreationDate:localeIdentifier:languageIdentifiers:geoServiceProviderID:curationAlgorithmsVersion:contactsStoreAccess:](PGGraphInfoNode, "genericPropertiesWithCreationDate:localeIdentifier:languageIdentifiers:geoServiceProviderID:curationAlgorithmsVersion:contactsStoreAccess:", v6, v7, v8, v5, [v10 curationAlgorithmsVersion], 1);

  -[MAGraph persistModelProperties:forNodeWithIdentifier:clobberExisting:](self->_graph, "persistModelProperties:forNodeWithIdentifier:clobberExisting:", v9, [v10 identifier], 0);
}

- (void)setLanguageIdentifiers:(id)a3
{
  graph = self->_graph;
  v5 = a3;
  v10 = [(PGGraph *)graph infoNode];
  v6 = [v10 creationDate];
  v7 = [v10 localeIdentifier];
  v8 = [v10 geoServiceProviderID];
  v9 = +[PGGraphInfoNode genericPropertiesWithCreationDate:localeIdentifier:languageIdentifiers:geoServiceProviderID:curationAlgorithmsVersion:contactsStoreAccess:](PGGraphInfoNode, "genericPropertiesWithCreationDate:localeIdentifier:languageIdentifiers:geoServiceProviderID:curationAlgorithmsVersion:contactsStoreAccess:", v6, v7, v5, v8, [v10 curationAlgorithmsVersion], 1);

  -[MAGraph persistModelProperties:forNodeWithIdentifier:clobberExisting:](self->_graph, "persistModelProperties:forNodeWithIdentifier:clobberExisting:", v9, [v10 identifier], 0);
}

- (void)setLocaleIdentifier:(id)a3
{
  graph = self->_graph;
  v5 = a3;
  v10 = [(PGGraph *)graph infoNode];
  v6 = [v10 creationDate];
  v7 = [v10 languageIdentifiers];
  v8 = [v10 geoServiceProviderID];
  v9 = +[PGGraphInfoNode genericPropertiesWithCreationDate:localeIdentifier:languageIdentifiers:geoServiceProviderID:curationAlgorithmsVersion:contactsStoreAccess:](PGGraphInfoNode, "genericPropertiesWithCreationDate:localeIdentifier:languageIdentifiers:geoServiceProviderID:curationAlgorithmsVersion:contactsStoreAccess:", v6, v5, v7, v8, [v10 curationAlgorithmsVersion], 1);

  -[MAGraph persistModelProperties:forNodeWithIdentifier:clobberExisting:](self->_graph, "persistModelProperties:forNodeWithIdentifier:clobberExisting:", v9, [v10 identifier], 0);
}

- (id)_momentNodesFromPersonNodes:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB58] set];
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

        v10 = [*(*(&v16 + 1) + 8 * i) collection];
        v11 = [v10 momentNodes];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __46__PGGraphBuilder__momentNodesFromPersonNodes___block_invoke;
        v14[3] = &unk_278889290;
        v15 = v4;
        [v11 enumerateNodesUsingBlock:v14];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)feederForInsertingAssetCollection:(id)a3
{
  photoLibrary = self->_photoLibrary;
  v5 = a3;
  v6 = [(PHPhotoLibrary *)photoLibrary librarySpecificFetchOptions];
  v7 = +[PGGraph assetPropertySetsForIngest];
  [v6 addFetchPropertySets:v7];

  [v6 setIncludeGuestAssets:1];
  v8 = [MEMORY[0x277D276B8] feederPrefetchOptionsWithDefaultMode:2];
  v9 = MEMORY[0x277D27710];
  v10 = [(PGGraphBuilder *)self curationContext];
  v11 = [v9 feederForAssetCollection:v5 options:v6 feederPrefetchOptions:v8 curationContext:v10 sharedLibraryEnabled:{-[PGGraphBuilder isSharedLibraryEnabled](self, "isSharedLibraryEnabled")}];

  v12 = [(CLSFocusPeopleCache *)self->_focusPeopleIngestCache personLocalIdentifiers];
  [v11 setFocusPersonLocalIdentifiers:v12];

  return v11;
}

- (id)momentForMomentNode:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = [a3 localIdentifier];
  if (v4)
  {
    v5 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
    [v5 setFetchLimit:1];
    v6 = MEMORY[0x277CD97B8];
    v12[0] = v4;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v8 = [v6 fetchAssetCollectionsWithLocalIdentifiers:v7 options:v5];

    v9 = [v8 firstObject];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)_registerInsertedMomentNodes:(id)a3 inGraphUpdate:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([v6 isResumingFullAnalysis])
  {
    v7 = [(PGGraph *)self->_graph momentNodes];
    v8 = [v7 set];
    [v6 setInsertedMomentNodes:v8];
  }

  else
  {
    [v6 setInsertedMomentNodes:v9];
  }
}

- (void)insertMomentsWithGraphUpdate:(id)a3 progressBlock:(id)a4
{
  v120 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v58 = a4;
  v67 = _Block_copy(v58);
  v104 = 0;
  v105 = &v104;
  v106 = 0x2020000000;
  v107 = 0;
  v100 = 0;
  v101 = &v100;
  v102 = 0x2020000000;
  v103 = 0;
  v7 = self->_loggingConnection;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v6 momentsToIngest];
    v9 = [v8 count];
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v9;
    _os_log_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_INFO, "Batch Updates - About to insert %lu new moments", &buf, 0xCu);
  }

  v10 = [v6 momentsToIngest];
  v11 = [(PGGraphBuilder *)self _cleanUpMoments:v10];

  v12 = objc_opt_new();
  v63 = objc_opt_new();
  v65 = objc_alloc_init(PGUnfairLock);
  v61 = objc_alloc_init(PGUnfairLock);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v118 = 0x2020000000;
  v119 = 0;
  v99[0] = 0.0;
  *&v99[1] = v99;
  *&v99[2] = 0x2020000000;
  v59 = v12;
  v99[3] = 0.95 / [v11 count];
  v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v11, "count")}];
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v14 = v11;
  v15 = [v14 countByEnumeratingWithState:&v95 objects:v116 count:16];
  if (v15)
  {
    v16 = *v96;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v96 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = [*(*(&v95 + 1) + 8 * i) uuid];
        [v13 addObject:v18];
      }

      v15 = [v14 countByEnumeratingWithState:&v95 objects:v116 count:16];
    }

    while (v15);
  }

  v19 = [PGGraphMomentNodeCollection momentNodesForArrayOfUUIDs:v13 inGraph:self->_graph];
  v69 = [v19 uuids];
  v20 = self->_loggingConnection;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = [v19 count];
    LODWORD(v112) = 134217984;
    *(&v112 + 4) = v21;
    _os_log_impl(&dword_22F0FC000, v20, OS_LOG_TYPE_INFO, "Batch Updates - %lu moments are already ingested", &v112, 0xCu);
  }

  v57 = v19;

  [(MAGraph *)self->_graph enterBatch];
  if ([v6 isResumingFullAnalysis] && !objc_msgSend(v69, "count"))
  {
    [(PGGraphBuilder *)self computeAndPersistTopTierAestheticScores];
    [(PGGraphBuilder *)self computeAndPersistAssetStatistics];
  }

  v22 = [(PGGraphBuilder *)self insertOrUpdateMePersonNodeIfNeeded];
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    LODWORD(v112) = 138412290;
    *(&v112 + 4) = v22;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGGraphBuilder][insertMomentsWithGraphUpdate:progressBlock:] Me node=%@", &v112, 0xCu);
  }

  if ([(PGGraphBuilder *)self isSharedLibraryEnabled])
  {
    v24 = [(PGGraphBuilder *)self sharedLibraryParticipants];
    [(PGGraphBuilder *)self insertPersonNodesForShareParticipants:v24];
  }

  v25 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalStartDate" ascending:0];
  v115[0] = v25;
  v26 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v115[1] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v115 count:2];
  v28 = [v14 sortedArrayUsingDescriptors:v27];

  v29 = [objc_alloc(MEMORY[0x277D27708]) initWithServiceManager:self->_serviceManager locationCache:self->_locationCache aoiCache:self->_aoiCache poiCache:self->_poiCache roiCache:self->_roiCache natureCache:self->_natureCache];
  throughputReportBlock = self->_throughputReportBlock;
  if (throughputReportBlock)
  {
    throughputReportBlock[2](throughputReportBlock, 1, @"prepareMomentsToInsert");
  }

  v31 = objc_alloc_init(MEMORY[0x277D276F8]);
  v32 = self->_graph;
  *&v112 = 0;
  *(&v112 + 1) = &v112;
  v113 = 0x2020000000;
  v114 = 0;
  v94[0] = 0;
  v94[1] = v94;
  v94[2] = 0x2020000000;
  v94[3] = 0;
  v93[0] = 0;
  v93[1] = v93;
  v93[2] = 0x2020000000;
  v93[3] = CFAbsoluteTimeGetCurrent();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__PGGraphBuilder_insertMomentsWithGraphUpdate_progressBlock___block_invoke;
  aBlock[3] = &unk_278881148;
  v54 = v61;
  v73 = v54;
  v85 = &v104;
  v56 = v28;
  v74 = v56;
  v55 = v69;
  v75 = v55;
  v33 = v67;
  v92 = 0x3F847AE147AE147BLL;
  v86 = &v100;
  p_buf = &buf;
  v88 = v99;
  v84 = v33;
  v76 = self;
  v53 = v63;
  v77 = v53;
  v62 = v29;
  v78 = v62;
  v64 = v31;
  v79 = v64;
  v66 = v65;
  v80 = v66;
  v70 = v6;
  v81 = v70;
  v34 = v32;
  v82 = v34;
  v68 = v59;
  v83 = v68;
  v89 = &v112;
  v90 = v94;
  v91 = v93;
  v35 = _Block_copy(aBlock);
  v36 = [v14 count];
  v37 = [v35 copy];
  dispatch_apply(v36, 0, v37);

  v38 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:self->_graph];
  v39 = [v38 anyNode];

  v40 = [v39 localIdentifier];
  LODWORD(v38) = [v40 length] == 0;

  if (v38)
  {
    v41 = self->_loggingConnection;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      LOWORD(v108) = 0;
      _os_log_impl(&dword_22F0FC000, v41, OS_LOG_TYPE_INFO, "[PGGraphBuilder][insertMomentsWithGraphUpdate:progressBlock:] Me node gets inferred", &v108, 2u);
    }

    [(PGGraphBuilder *)self inferPersonNodeForMeNode:v39];
  }

  [(MAGraph *)self->_graph leaveBatch];
  if ([(MAGraph *)self->_graph noFatalError])
  {
    if ((v105[3] & 1) == 0)
    {
      [(PGGraphBuilder *)self clearPersonActivityMeaningCriteriaDictionaryByMeaningLabel];
      if (v33 && (v42 = CFAbsoluteTimeGetCurrent(), v42 - v101[3] >= 0.01) && (v101[3] = v42, v71 = 0, (*(v33 + 2))(v33, &v71, 0.9), v43 = *(v105 + 24) | v71, *(v105 + 24) = v43, (v43 & 1) != 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v108 = 67109378;
          v109 = 1308;
          v110 = 2080;
          v111 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/PGGraphBuilder.m";
          v44 = MEMORY[0x277D86220];
LABEL_35:
          _os_log_impl(&dword_22F0FC000, v44, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v108, 0x12u);
          goto LABEL_45;
        }
      }

      else
      {
        [(PGGraphBuilder *)self persistPendingScores];
        [(MAGraph *)self->_graph enterBatch];
        v51 = [PGGraphInfoNode assetPropertiesWithNumberOfUtilityAssets:self->_numberOfUtilityAssets numberOfDefaultAssets:self->_numberOfDefaultAssets numberOfImprovedAssets:self->_numberOfImprovedAssets numberOfBetterAssets:self->_numberOfBetterAssets];
        v60 = v51;
        if ([v70 isResumingFullAnalysis])
        {
          v60 = [v51 mutableCopy];
          v45 = [PGGraphInfoNode routineInfoPropertiesWithServiceManager:self->_serviceManager];
          [v60 addEntriesFromDictionary:v45];
        }

        v46 = [(PGGraph *)self->_graph infoNode:v51];
        v47 = [v46 identifier];

        [(MAGraph *)self->_graph persistModelProperties:v60 forNodeWithIdentifier:v47 clobberExisting:0];
        [(MAGraph *)self->_graph leaveBatch];
        [(PGGraph *)self->_graph invalidateMemoryCaches];
        if (v33 && (Current = CFAbsoluteTimeGetCurrent(), Current - v101[3] >= 0.01) && (v101[3] = Current, v71 = 0, (*(v33 + 2))(v33, &v71, 1.0), v49 = *(v105 + 24) | v71, *(v105 + 24) = v49, (v49 & 1) != 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v108 = 67109378;
            v109 = 1330;
            v110 = 2080;
            v111 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/PGGraphBuilder.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v108, 0x12u);
          }
        }

        else
        {
          [(PGGraphBuilder *)self _registerInsertedMomentNodes:v68 inGraphUpdate:v70];
        }
      }

      goto LABEL_45;
    }
  }

  else
  {
    *(v105 + 24) = 1;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v108 = 67109378;
    v109 = 1304;
    v110 = 2080;
    v111 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/PGGraphBuilder.m";
    v44 = MEMORY[0x277D86220];
    goto LABEL_35;
  }

LABEL_45:

  _Block_object_dispose(v93, 8);
  _Block_object_dispose(v94, 8);
  _Block_object_dispose(&v112, 8);

  _Block_object_dispose(v99, 8);
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(&v100, 8);
  _Block_object_dispose(&v104, 8);

  v50 = *MEMORY[0x277D85DE8];
}

void __61__PGGraphBuilder_insertMomentsWithGraphUpdate_progressBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v59[1] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) lock];
  v4 = *(*(*(a1 + 128) + 8) + 24);
  [*(a1 + 32) unlock];
  if ((v4 & 1) == 0)
  {
    v5 = [*(a1 + 40) objectAtIndexedSubscript:a2];
    v6 = *(a1 + 48);
    v7 = [v5 uuid];
    v8 = [v6 containsObject:v7];

    if (*(a1 + 120))
    {
      Current = CFAbsoluteTimeGetCurrent();
      [*(a1 + 32) lock];
      v10 = *(*(a1 + 136) + 8);
      if (Current - *(v10 + 24) >= *(a1 + 184))
      {
        *(v10 + 24) = Current;
        buf[0] = 0;
        (*(*(a1 + 120) + 16))(*(*(*(a1 + 144) + 8) + 24));
        *(*(*(a1 + 128) + 8) + 24) = *(*(*(a1 + 128) + 8) + 24);
        if (*(*(*(a1 + 128) + 8) + 24) == 1)
        {
          goto LABEL_9;
        }
      }

      [*(a1 + 32) unlock];
    }

    if (!v8)
    {
      v11 = [v5 estimatedAssetCount];
      if (v11 <= *MEMORY[0x277D27618])
      {
        v12 = objc_autoreleasePoolPush();
        v13 = [*(a1 + 56) feederForInsertingAssetCollection:v5];
        [v13 setLocationClusteringAlgorithm:0];
        v14 = objc_alloc(MEMORY[0x277D27700]);
        v59[0] = *(a1 + 64);
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:1];
        v16 = [v14 initWithFeeder:v13 profiles:v15 helper:*(a1 + 72)];

        [v16 setPrecision:1];
        v17 = *(a1 + 80);
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __61__PGGraphBuilder_insertMomentsWithGraphUpdate_progressBlock___block_invoke_2;
        v45[3] = &unk_2788810F8;
        v47 = *(a1 + 120);
        v46 = *(a1 + 32);
        v50 = *(a1 + 184);
        v48 = *(a1 + 136);
        v49 = *(a1 + 128);
        [v17 performInvestigation:v16 progressBlock:v45];
        [*(a1 + 32) lock];
        LOBYTE(v17) = *(*(*(a1 + 128) + 8) + 24);
        [*(a1 + 32) unlock];
        if ((v17 & 1) == 0)
        {
          [*(a1 + 88) lock];
          v18 = *(a1 + 56);
          v19 = [v16 clueCollection];
          v44 = 0;
          v20 = *(a1 + 96);
          v34 = MEMORY[0x277D85DD0];
          v35 = 3221225472;
          v36 = __61__PGGraphBuilder_insertMomentsWithGraphUpdate_progressBlock___block_invoke_3;
          v37 = &unk_278881120;
          v40 = *(a1 + 120);
          v38 = *(a1 + 32);
          v43 = *(a1 + 184);
          v41 = *(a1 + 136);
          v42 = *(a1 + 128);
          v39 = *(a1 + 104);
          v21 = [v18 _insertMomentNodeForClueCollection:v19 feeder:v13 insertedAndUpdatedPersonNodes:&v44 graphUpdate:v20 progressBlock:&v34];
          v22 = v44;

          [*(a1 + 32) lock];
          LODWORD(v19) = *(*(*(a1 + 128) + 8) + 24);
          [*(a1 + 32) unlock];
          if (v19 == 1)
          {
            [*(a1 + 88) unlock];
          }

          else
          {
            if (v21)
            {
              [*(a1 + 112) addObject:v21];
              if (v22)
              {
                [*(a1 + 96) registerInsertedAndUpdatedPersonNodes:v22];
              }
            }

            else
            {
              v23 = +[PGLogging sharedLogging];
              v24 = [v23 loggingConnection];

              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v52 = v5;
                _os_log_error_impl(&dword_22F0FC000, v24, OS_LOG_TYPE_ERROR, "Failed to insert moment collection: %@", buf, 0xCu);
              }
            }

            [*(a1 + 32) lock];
            *(*(*(a1 + 144) + 8) + 24) = *(*(*(a1 + 152) + 8) + 24) + *(*(*(a1 + 144) + 8) + 24);
            [*(a1 + 32) unlock];

            ++*(*(*(a1 + 160) + 8) + 24);
            *(*(*(a1 + 168) + 8) + 24) += [v13 numberOfItems];
            if (0x8F5C28F5C28F5C29 * [*(a1 + 112) count] <= 0xA3D70A3D70A3D70)
            {
              [*(a1 + 56) persistPendingScores];
              [*(a1 + 104) leaveBatch];
              [*(a1 + 104) invalidateMemoryCaches];
              [*(a1 + 104) enterBatch];
              v25 = CFAbsoluteTimeGetCurrent();
              v26 = +[PGLogging sharedLogging];
              v27 = [v26 loggingConnection];

              if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
              {
                v28 = [*(a1 + 112) count];
                v29 = *(*(*(a1 + 160) + 8) + 24);
                v30 = *(*(*(a1 + 168) + 8) + 24);
                v31 = v25 - *(*(*(a1 + 176) + 8) + 24);
                *buf = 134218752;
                v52 = v28;
                v53 = 2048;
                v54 = v29;
                v55 = 2048;
                v56 = v30;
                v57 = 2048;
                v58 = v31;
                _os_log_impl(&dword_22F0FC000, v27, OS_LOG_TYPE_INFO, "Saved graph for %lu moments, batch is %lu moments, %lu assets, took %.3f seconds", buf, 0x2Au);
              }

              *(*(*(a1 + 160) + 8) + 24) = 0;
              *(*(*(a1 + 168) + 8) + 24) = 0;
              *(*(*(a1 + 176) + 8) + 24) = v25;
              v32 = *(*(a1 + 56) + 280);
              if (v32)
              {
                (*(v32 + 16))(v32, 25, @"batchOfMomentsToInsert");
              }
            }

            [*(a1 + 88) unlock];
          }
        }

        objc_autoreleasePoolPop(v12);
        goto LABEL_26;
      }
    }

    [*(a1 + 32) lock];
    *(*(*(a1 + 144) + 8) + 24) = *(*(*(a1 + 152) + 8) + 24) + *(*(*(a1 + 144) + 8) + 24);
LABEL_9:
    [*(a1 + 32) unlock];
LABEL_26:
  }

  v33 = *MEMORY[0x277D85DE8];
}

uint64_t __61__PGGraphBuilder_insertMomentsWithGraphUpdate_progressBlock___block_invoke_2(uint64_t result, _BYTE *a2)
{
  if (*(result + 40))
  {
    v3 = result;
    Current = CFAbsoluteTimeGetCurrent();
    [*(v3 + 32) lock];
    v5 = *(*(v3 + 48) + 8);
    if (Current - *(v5 + 24) >= *(v3 + 72))
    {
      *(v5 + 24) = Current;
      (*(*(v3 + 40) + 16))(*(*(*(v3 + 56) + 8) + 24));
      *(*(*(v3 + 64) + 8) + 24) = *(*(*(v3 + 64) + 8) + 24);
      if (*(*(*(v3 + 64) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }

    return [*(v3 + 32) unlock];
  }

  return result;
}

uint64_t __61__PGGraphBuilder_insertMomentsWithGraphUpdate_progressBlock___block_invoke_3(uint64_t result, _BYTE *a2)
{
  if (*(result + 48))
  {
    v3 = result;
    Current = CFAbsoluteTimeGetCurrent();
    [*(v3 + 32) lock];
    v5 = *(*(v3 + 56) + 8);
    if (Current - *(v5 + 24) >= *(v3 + 80))
    {
      *(v5 + 24) = Current;
      (*(*(v3 + 48) + 16))(*(*(*(v3 + 64) + 8) + 24));
      *(*(*(v3 + 72) + 8) + 24) = *(*(*(v3 + 72) + 8) + 24);
      v6 = *(*(*(v3 + 72) + 8) + 24);
      if (v6)
      {
LABEL_6:
        *a2 = v6;
        return [*(v3 + 32) unlock];
      }

      if (([*(v3 + 40) noFatalError] & 1) == 0)
      {
        v6 = *(*(*(v3 + 72) + 8) + 24);
        goto LABEL_6;
      }
    }

    return [*(v3 + 32) unlock];
  }

  return result;
}

- (void)_removeEdgesFromMomentNode:(id)a3 forUpdateTypes:(unint64_t)a4
{
  v4 = a4;
  v21 = [a3 collection];
  v6 = objc_alloc_init(MEMORY[0x277D22C50]);
  if ((v4 & 2) != 0)
  {
    v7 = +[PGGraphDateEdge filter];
    v8 = [(MAEdgeCollection *)PGGraphEdgeCollection edgesFromNodes:v21 matchingFilter:v7];

    [v6 removeEdges:v8];
  }

  if ((v4 & 4) != 0)
  {
    v9 = +[PGGraphAddressEdge filter];
    v10 = [(MAEdgeCollection *)PGGraphEdgeCollection edgesFromNodes:v21 matchingFilter:v9];

    [v6 removeEdges:v10];
    if ((v4 & 8) == 0)
    {
LABEL_8:
      v13 = +[PGGraphPOIEdge filter];
      v14 = [(MAEdgeCollection *)PGGraphEdgeCollection edgesFromNodes:v21 matchingFilter:v13];

      [v6 removeEdges:v14];
      v15 = +[PGGraphROIEdge filter];
      v16 = [(MAEdgeCollection *)PGGraphEdgeCollection edgesFromNodes:v21 matchingFilter:v15];

      [v6 removeEdges:v16];
      goto LABEL_9;
    }

LABEL_7:
    v11 = +[PGGraphBasePresentEdge filter];
    v12 = [(MAEdgeCollection *)PGGraphBasePresentEdgeCollection edgesFromNodes:v21 matchingFilter:v11];

    [v6 removeEdges:v12];
    goto LABEL_8;
  }

  if ((v4 & 8) != 0)
  {
    goto LABEL_7;
  }

LABEL_9:
  if ((v4 & 0x19) != 0)
  {
    v17 = +[PGGraphSceneEdge filter];
    v18 = [(MAEdgeCollection *)PGGraphEdgeCollection edgesFromNodes:v21 matchingFilter:v17];

    [v6 removeEdges:v18];
    v19 = +[(PGGraphSceneEdge *)PGGraphEntityNetSceneEdge];
    v20 = [(MAEdgeCollection *)PGGraphEdgeCollection edgesFromNodes:v21 matchingFilter:v19];

    [v6 removeEdges:v20];
  }

  [(MAGraph *)self->_graph executeGraphChangeRequest:v6];
}

- (void)performChangeForGraphUpdate:(id)a3 progressBlock:(id)a4
{
  v91 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v42 = a4;
  v80 = 0;
  v81 = &v80;
  v82 = 0x2020000000;
  v83 = 0;
  v76 = 0;
  v77 = &v76;
  v78 = 0x2020000000;
  v79 = 0;
  v45 = _Block_copy(v42);
  if (!v45 || (v7 = CFAbsoluteTimeGetCurrent(), v7 - v77[3] < 0.01) || (v77[3] = v7, LOBYTE(v84) = 0, (*(v45 + 2))(v45, &v84, 0.0), v8 = *(v81 + 24) | v84, *(v81 + 24) = v8, (v8 & 1) == 0))
  {
    v40 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v39 = objc_alloc_init(MEMORY[0x277CBEB58]);
    oslog = self->_loggingConnection;
    v9 = [v6 uuidsOfMomentsToUpdate];
    v48 = [PGGraphMomentNodeCollection momentNodesForUUIDs:v9 inGraph:self->_graph];

    v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v48, "count")}];
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __60__PGGraphBuilder_performChangeForGraphUpdate_progressBlock___block_invoke;
    v74[3] = &unk_278889290;
    v11 = v10;
    v75 = v11;
    [v48 enumerateNodesUsingBlock:v74];
    v37 = v11;
    v12 = [v6 uuidsOfHighlightsToUpdate];
    v47 = [PGGraphHighlightNodeCollection highlightNodesForUUIDs:v12 inGraph:self->_graph];

    v13 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v47, "count")}];
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __60__PGGraphBuilder_performChangeForGraphUpdate_progressBlock___block_invoke_2;
    v72[3] = &unk_278885850;
    v14 = v13;
    v73 = v14;
    [v47 enumerateNodesUsingBlock:v72];
    v15 = [v6 localIdentifiersOfPersonsToUpdate];
    v46 = [PGGraphPersonNodeCollection personNodesForLocalIdentifiers:v15 inGraph:self->_graph];

    v16 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v46, "count")}];
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __60__PGGraphBuilder_performChangeForGraphUpdate_progressBlock___block_invoke_3;
    v70[3] = &unk_278889240;
    v17 = v16;
    v71 = v17;
    [v46 enumerateNodesUsingBlock:v70];
    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v19 = [v6 contactIdentifiersOfPersonsToUpdate];
    LOBYTE(v11) = [v19 count] == 0;

    if ((v11 & 1) == 0)
    {
      v20 = [v6 contactIdentifiersOfPersonsToUpdate];
      v21 = [PGGraphPersonNodeCollection personNodesForContactIdentifiers:v20 inGraph:self->_graph];

      v68[0] = MEMORY[0x277D85DD0];
      v68[1] = 3221225472;
      v68[2] = __60__PGGraphBuilder_performChangeForGraphUpdate_progressBlock___block_invoke_4;
      v68[3] = &unk_278889240;
      v69 = v18;
      [v21 enumerateNodesUsingBlock:v68];
    }

    v22 = objc_alloc_init(MEMORY[0x277D276F8]);
    v23 = [objc_alloc(MEMORY[0x277D27708]) initWithServiceManager:self->_serviceManager locationCache:self->_locationCache aoiCache:self->_aoiCache poiCache:self->_poiCache roiCache:self->_roiCache natureCache:self->_natureCache];
    [(MAGraph *)self->_graph enterBatch];
    buf = 0;
    *&v89 = &buf;
    *(&v89 + 1) = 0x2020000000;
    v90 = 0;
    v24 = 1.0 / [v6 numberOfConsolidatedChanges];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __60__PGGraphBuilder_performChangeForGraphUpdate_progressBlock___block_invoke_5;
    v50[3] = &unk_2788810D0;
    v36 = v37;
    v51 = v36;
    v25 = v6;
    v52 = v25;
    v53 = self;
    osloga = oslog;
    v54 = osloga;
    v26 = v23;
    v55 = v26;
    v38 = v22;
    v56 = v38;
    p_buf = &buf;
    v66 = v24;
    v27 = v45;
    v62 = v27;
    v67 = 0x3F847AE147AE147BLL;
    v64 = &v76;
    v65 = &v80;
    v41 = v40;
    v57 = v41;
    v28 = v17;
    v58 = v28;
    v29 = v18;
    v59 = v29;
    v30 = v39;
    v60 = v30;
    v31 = v14;
    v61 = v31;
    [v25 enumerateConsolidatedChanges:v50];
    [(MAGraph *)self->_graph leaveBatch];
    if ([(MAGraph *)self->_graph noFatalError])
    {
      if ((v81[3] & 1) == 0)
      {
        [v25 registerInsertedAndUpdatedPersonNodes:{v41, v36, v38}];
        [v25 registerUpdatedPersonNodesUnrelatedToMomentChange:v30];
        [(PGGraphBuilder *)self persistPendingScores];
        if (!v45)
        {
          goto LABEL_21;
        }

        Current = CFAbsoluteTimeGetCurrent();
        if (Current - v77[3] < 0.01)
        {
          goto LABEL_21;
        }

        v77[3] = Current;
        v49 = 0;
        (*(v27 + 2))(v27, &v49, 1.0);
        v33 = *(v81 + 24) | v49;
        *(v81 + 24) = v33;
        if ((v33 & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          goto LABEL_21;
        }

        v84 = 67109378;
        v85 = 994;
        v86 = 2080;
        v87 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/PGGraphBuilder.m";
        v34 = MEMORY[0x277D86220];
        goto LABEL_20;
      }
    }

    else
    {
      if (os_log_type_enabled(osloga, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v84) = 0;
        _os_log_error_impl(&dword_22F0FC000, osloga, OS_LOG_TYPE_ERROR, "[PGGraphBuilder] encountered graph fatal error, cancelling operation", &v84, 2u);
      }

      *(v81 + 24) = 1;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
LABEL_21:

      _Block_object_dispose(&buf, 8);
      goto LABEL_22;
    }

    v84 = 67109378;
    v85 = 987;
    v86 = 2080;
    v87 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/PGGraphBuilder.m";
    v34 = MEMORY[0x277D86220];
LABEL_20:
    _os_log_impl(&dword_22F0FC000, v34, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v84, 0x12u);
    goto LABEL_21;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    buf = 0x2CB04000202;
    LOWORD(v89) = 2080;
    *(&v89 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/PGGraphBuilder.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
  }

LABEL_22:
  _Block_object_dispose(&v76, 8);
  _Block_object_dispose(&v80, 8);

  v35 = *MEMORY[0x277D85DE8];
}

void __60__PGGraphBuilder_performChangeForGraphUpdate_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 uuid];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

void __60__PGGraphBuilder_performChangeForGraphUpdate_progressBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 uuid];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

void __60__PGGraphBuilder_performChangeForGraphUpdate_progressBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 localIdentifier];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

void __60__PGGraphBuilder_performChangeForGraphUpdate_progressBlock___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 contactIdentifier];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

void __60__PGGraphBuilder_performChangeForGraphUpdate_progressBlock___block_invoke_5(uint64_t a1, void *a2, _BYTE *a3)
{
  v150[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  if ([v5 type] == 3)
  {
    v7 = v5;
    v8 = *(a1 + 32);
    v9 = [v7 momentUUID];
    v10 = [v8 objectForKeyedSubscript:v9];

    if (!v10)
    {
      v25 = *(a1 + 56);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = v25;
        v27 = [v7 momentUUID];
        *buf = 138412290;
        v147 = v27;
        _os_log_impl(&dword_22F0FC000, v26, OS_LOG_TYPE_INFO, "No momentNode found for UUID %@", buf, 0xCu);
      }

      goto LABEL_41;
    }

    v11 = [*(a1 + 40) cachedDataModelObjectForGraphChange:v7];
    v12 = v11;
    if (!v11)
    {
LABEL_40:

LABEL_41:
      goto LABEL_42;
    }

    v128 = v6;
    v130 = a3;
    v125 = v11;
    v126 = v5;
    v13 = [*(a1 + 48) feederForInsertingAssetCollection:v11];
    [v13 setLocationClusteringAlgorithm:0];
    v14 = *(a1 + 56);
    v15 = os_signpost_id_generate(v14);
    v16 = v14;
    v17 = v16;
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "Investigation", "", buf, 2u);
    }

    info = 0;
    mach_timebase_info(&info);
    v120 = mach_absolute_time();
    v18 = objc_alloc(MEMORY[0x277D27700]);
    v19 = objc_opt_new();
    v150[0] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v150 count:1];
    v21 = [v18 initWithFeeder:v13 profiles:v20 helper:*(a1 + 64)];

    v22 = *(a1 + 72);
    v138[0] = MEMORY[0x277D85DD0];
    v138[1] = 3221225472;
    v138[2] = __60__PGGraphBuilder_performChangeForGraphUpdate_progressBlock___block_invoke_321;
    v138[3] = &unk_27888A110;
    v141 = *(a1 + 152);
    v123 = *(a1 + 120);
    v23 = v123;
    v139 = v123;
    v142 = *(a1 + 160);
    v140 = *(a1 + 136);
    [v22 performInvestigation:v21 progressBlock:v138];
    v122 = v17;
    if (*(*(*(a1 + 144) + 8) + 24) == 1)
    {
      *v130 = 1;

      v5 = v126;
      v6 = v128;
      v24 = v13;
LABEL_35:

      goto LABEL_99;
    }

    v28 = v21;
    v29 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v32 = v17;
    v33 = v32;
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v33, OS_SIGNPOST_INTERVAL_END, v15, "Investigation", "", buf, 2u);
    }

    v24 = v13;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v147 = "Investigation";
      v148 = 2048;
      v149 = ((((v29 - v120) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v33, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    v34 = v28;
    v35 = [v28 clueCollection];
    v137 = 0;
    [*(a1 + 48) _removeEdgesFromMomentNode:v10 forUpdateTypes:{objc_msgSend(v7, "updateTypes")}];
    v121 = [[PGGraphIngestMomentContainer alloc] initMomentContainerWithFeeder:v24 clueCollection:v35 curationManager:*(*(a1 + 48) + 152) topTierAestheticScore:*(*(a1 + 48) + 192) curationContext:*(*(a1 + 48) + 32)];
    v124 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5 = v126;
    v119 = v33;
    if (([v7 updateTypes] & 2) != 0)
    {
      v36 = *(a1 + 56);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v37 = v36;
        v38 = [v7 momentUUID];
        *buf = 138412290;
        v147 = v38;
        _os_log_impl(&dword_22F0FC000, v37, OS_LOG_TYPE_INFO, "MomentNode UUID %@ for moment update related to date", buf, 0xCu);
      }

      v39 = [*(a1 + 48) insertDateNodesWithClueCollection:v35 fromMomentNode:v10];
      v40 = [PGGraphMomentNode timeBasedPropertiesWithMoment:v121];
      [v124 addEntriesFromDictionary:v40];
      [*(a1 + 40) updatedMomentNode:v10 forUpdateChangeType:2];
    }

    if (([v7 updateTypes] & 4) != 0)
    {
      v41 = *(a1 + 56);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v42 = v41;
        v43 = [v7 momentUUID];
        *buf = 138412290;
        v147 = v43;
        _os_log_impl(&dword_22F0FC000, v42, OS_LOG_TYPE_INFO, "MomentNode UUID %@ for moment update related to location", buf, 0xCu);
      }

      v44 = [*(a1 + 48) insertLocationHierarchyWithClueCollection:v35 fromMomentNode:v10];
      [*(a1 + 40) updatedMomentNode:v10 forUpdateChangeType:4];
      if (([v7 updateTypes] & 8) == 0)
      {
        goto LABEL_29;
      }
    }

    else if (([v7 updateTypes] & 8) == 0)
    {
      goto LABEL_30;
    }

    v45 = *(a1 + 56);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      v46 = v45;
      v47 = [v7 momentUUID];
      *buf = 138412290;
      v147 = v47;
      _os_log_impl(&dword_22F0FC000, v46, OS_LOG_TYPE_INFO, "MomentNode UUID %@ for moment update related to person changes", buf, 0xCu);
    }

    v48 = [v10 addressNodes];
    v49 = [*(a1 + 48) insertPeopleWithClueCollection:v35 fromMomentNode:v10 addressNodes:v48 isNearPeopleAddress:&v137];
    [*(a1 + 80) unionSet:v49];
    [*(a1 + 40) updatedMomentNode:v10 forUpdateChangeType:8];

LABEL_29:
    v50 = [*(a1 + 48) insertPOIWithFeeder:v24 fromMomentNode:v10 isNearHomeOrWork:v137];
    v51 = [*(a1 + 48) insertROIWithClueCollection:v35 fromMomentNode:v10];
    [*(a1 + 40) updatedMomentNode:v10 forUpdateChangeType:4];
LABEL_30:
    if (([v7 updateTypes] & 0x19) != 0)
    {
      v52 = *(a1 + 56);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        v53 = v52;
        v54 = [v7 momentUUID];
        *buf = 138412290;
        v147 = v54;
        _os_log_impl(&dword_22F0FC000, v53, OS_LOG_TYPE_INFO, "MomentNode UUID %@ for moment update related to curation content", buf, 0xCu);
      }

      v55 = *(a1 + 48);
      v132[0] = MEMORY[0x277D85DD0];
      v132[1] = 3221225472;
      v132[2] = __60__PGGraphBuilder_performChangeForGraphUpdate_progressBlock___block_invoke_324;
      v132[3] = &unk_27888A110;
      v135 = *(a1 + 152);
      v118 = *(a1 + 120);
      v56 = v118;
      v136 = *(a1 + 160);
      v57 = *(a1 + 136);
      v133 = v118;
      v134 = v57;
      [v55 insertAssetCurationScoreInLibraryForFeeder:v24 progressBlock:v132];
      if (*(*(*(a1 + 144) + 8) + 24))
      {
        *v130 = 1;

        v6 = v128;
        goto LABEL_35;
      }

      v58 = [PGGraphMomentNode contentBasedPropertiesWithMoment:v121];
      [v124 addEntriesFromDictionary:v58];
      v59 = *(*(a1 + 48) + 152);
      v60 = MEMORY[0x277CBEB98];
      v61 = [v7 momentUUID];
      v62 = [v60 setWithObject:v61];
      [v59 invalidateCurationCacheForMomentUUIDs:v62];

      v5 = v126;
      v63 = [*(a1 + 48) insertScenesWithClueCollection:v35 fromMomentNode:v10];
      [*(a1 + 48) insertEntityNetScenesWithClueCollection:v35 fromMomentNode:v10];
      [*(a1 + 40) updatedMomentNode:v10 forUpdateChangeType:25];
    }

    v64 = [v10 changingPropertiesWithProperties:{v124, v118}];
    if ([v64 count])
    {
      [*(*(a1 + 48) + 8) persistModelProperties:v64 forNodeWithIdentifier:objc_msgSend(v10 clobberExisting:{"identifier"), 0}];
    }

    v6 = v128;
    a3 = v130;
    v12 = v125;
    goto LABEL_40;
  }

LABEL_42:
  if ([v5 type] == 6)
  {
    v131 = a3;
    v65 = v5;
    v66 = [v65 personLocalIdentifier];
    v67 = [v65 contactIdentifier];
    if ([v66 length])
    {
      v68 = *(a1 + 88);
      v69 = [v65 personLocalIdentifier];
    }

    else
    {
      if (![v67 length])
      {
        goto LABEL_50;
      }

      v68 = *(a1 + 96);
      v69 = [v65 contactIdentifier];
    }

    v70 = v69;
    v71 = [v68 objectForKeyedSubscript:v69];

    if (v71)
    {
      if ([v66 length])
      {
        v72 = *(*(a1 + 48) + 160);
        v145 = v66;
        v73 = [MEMORY[0x277CBEA60] arrayWithObjects:&v145 count:1];
        [v72 invalidatePersonsCacheForPersonsWithNames:v73];

        v74 = [MEMORY[0x277D276E8] clueWithPersonLocalIdentifier:v66 inPhotoLibrary:*(*(a1 + 48) + 144) serviceManager:*(*(a1 + 48) + 160)];
      }

      else
      {
        v74 = 0;
      }

      if (![v67 length])
      {
        v78 = v66;
        v79 = v6;
        v80 = [v71 contactIdentifier];
        v81 = [v80 length];

        if (v81)
        {
          v82 = [v71 contactIdentifier];

          v67 = v82;
        }

        v6 = v79;
        v66 = v78;
      }

      v129 = v6;
      if ([v67 length])
      {
        v83 = *(*(a1 + 48) + 160);
        v144 = v67;
        v84 = [MEMORY[0x277CBEA60] arrayWithObjects:&v144 count:1];
        [v83 invalidatePersonsCacheForPersonsWithContactIdentifiers:v84];

        if (v74)
        {
          goto LABEL_61;
        }

        v74 = [MEMORY[0x277D276E8] clueWithPersonContactIdentifier:v67 inPhotoLibrary:*(*(a1 + 48) + 144) serviceManager:*(*(a1 + 48) + 160)];
      }

      if (!v74)
      {
LABEL_64:
        v93 = [*(a1 + 40) relatedDetails];
        [v93 accumulateDetailsForUpdatedPersonNode:v71 personChange:v65];

        [*(a1 + 80) addObject:v71];
        [*(a1 + 104) addObject:v71];

        v6 = v129;
LABEL_65:
        a3 = v131;

        goto LABEL_66;
      }

LABEL_61:
      v85 = [v74 person];
      if (v85)
      {
        v127 = *(a1 + 48);
        v86 = v74;
        v87 = v67;
        v88 = v66;
        v89 = v5;
        v90 = [v71 identifier];
        v91 = [v65 propertyNames];
        v92 = v90;
        v5 = v89;
        v66 = v88;
        v67 = v87;
        v74 = v86;
        [v127 updatePersonNodeForIdentifier:v92 withPerson:v85 forPropertyNames:v91];
      }

      goto LABEL_64;
    }

LABEL_50:
    v75 = *(a1 + 56);
    if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
    {
      v76 = v75;
      v77 = [v65 personLocalIdentifier];
      *buf = 138412290;
      v147 = v77;
      _os_log_impl(&dword_22F0FC000, v76, OS_LOG_TYPE_INFO, "No personNode found for localIdentifier %@", buf, 0xCu);
    }

    goto LABEL_65;
  }

LABEL_66:
  if ([v5 type] == 9)
  {
    v94 = v5;
    if (([v94 updateTypes] & 4) != 0 || (objc_msgSend(v94, "updateTypes") & 2) != 0)
    {
      v95 = *(a1 + 112);
      v96 = [v94 highlightUUID];
      v97 = [v95 objectForKeyedSubscript:v96];

      if (v97)
      {
        v98 = [*(a1 + 40) cachedDataModelObjectForGraphChange:v94];
        if (v98)
        {
          [*(a1 + 48) updateHighlightNode:v97 withHighlight:v98];
          if (([v94 updateTypes] & 4) != 0)
          {
            [*(a1 + 40) updatedHighlightNode:v97 forUpdateChangeType:4];
          }

          if (([v94 updateTypes] & 2) != 0)
          {
            [*(a1 + 40) updatedHighlightNode:v97 forUpdateChangeType:2];
          }
        }

        else
        {
          v102 = *(a1 + 56);
          if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v147 = v97;
            _os_log_error_impl(&dword_22F0FC000, v102, OS_LOG_TYPE_ERROR, "GraphUpdate instance does not have cached PhotosHighlight data model but graph has Highlight node: %@", buf, 0xCu);
          }
        }
      }

      else
      {
        v99 = *(a1 + 56);
        if (os_log_type_enabled(v99, OS_LOG_TYPE_INFO))
        {
          v100 = v99;
          v101 = [v94 highlightUUID];
          *buf = 138412290;
          v147 = v101;
          _os_log_impl(&dword_22F0FC000, v100, OS_LOG_TYPE_INFO, "No highlightNode found for uuid %@", buf, 0xCu);
        }
      }
    }

    if (([v94 updateTypes] & 8) != 0)
    {
      v103 = *(a1 + 112);
      v104 = [v94 highlightUUID];
      v105 = [v103 objectForKeyedSubscript:v104];

      if (v105)
      {
        v106 = [*(a1 + 40) cachedDataModelObjectForGraphChange:v94];
        v107 = v106;
        if (v106)
        {
          v108 = [v106 kind];
          v109 = *(a1 + 48);
          if (v108 == 3)
          {
            v110 = [v109 nodesForHighlightsInHighlightDayGroup:v107];
            [*(a1 + 48) updateHighlightsForHighlightDayGroupNode:v105 nodesForHighlightsInHighlightDayGroup:v110];
          }

          else
          {
            v110 = [v109 nodesForMomentsInHighlight:v107];
            [*(a1 + 48) updateMomentsForHighlightNode:v105 nodesForMomentsInHighlight:v110];
          }

          [*(a1 + 40) updatedHighlightNode:v105 forUpdateChangeType:8];
        }

        else
        {
          v114 = *(a1 + 56);
          if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v147 = v105;
            _os_log_error_impl(&dword_22F0FC000, v114, OS_LOG_TYPE_ERROR, "GraphUpdate instance does not have cached PhotosHighlight data model but graph has Highlight node: %@", buf, 0xCu);
          }
        }
      }

      else
      {
        v111 = *(a1 + 56);
        if (os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
        {
          v112 = v111;
          v113 = [v94 highlightUUID];
          *buf = 138412290;
          v147 = v113;
          _os_log_impl(&dword_22F0FC000, v112, OS_LOG_TYPE_INFO, "No highlightNode found for uuid %@", buf, 0xCu);
        }
      }
    }
  }

  *(*(*(a1 + 128) + 8) + 24) = *(a1 + 152) + *(*(*(a1 + 128) + 8) + 24);
  if (*(a1 + 120))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v116 = *(*(a1 + 136) + 8);
    if (Current - *(v116 + 24) >= *(a1 + 160))
    {
      *(v116 + 24) = Current;
      buf[0] = 0;
      (*(*(a1 + 120) + 16))(*(*(*(a1 + 128) + 8) + 24));
      *(*(*(a1 + 144) + 8) + 24) |= buf[0];
      if (*(*(*(a1 + 144) + 8) + 24) == 1)
      {
        *a3 = 1;
      }
    }
  }

LABEL_99:
  objc_autoreleasePoolPop(v6);

  v117 = *MEMORY[0x277D85DE8];
}

void __60__PGGraphBuilder_performChangeForGraphUpdate_progressBlock___block_invoke_321(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    v6 = *(*(*(a1 + 40) + 8) + 24);
    v7 = *(a1 + 64);
    Current = CFAbsoluteTimeGetCurrent();
    v9 = *(*(a1 + 48) + 8);
    if (Current - *(v9 + 24) >= *(a1 + 72))
    {
      *(v9 + 24) = Current;
      (*(*(a1 + 32) + 16))(v6 + v7 * (a3 * 0.5));
      *(*(*(a1 + 56) + 8) + 24) = *(*(*(a1 + 56) + 8) + 24);
      if (*(*(*(a1 + 56) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __60__PGGraphBuilder_performChangeForGraphUpdate_progressBlock___block_invoke_324(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    v6 = *(*(*(a1 + 40) + 8) + 24);
    v7 = *(a1 + 64);
    Current = CFAbsoluteTimeGetCurrent();
    v9 = *(*(a1 + 48) + 8);
    if (Current - *(v9 + 24) >= *(a1 + 72))
    {
      *(v9 + 24) = Current;
      (*(*(a1 + 32) + 16))(v6 + v7 * (a3 * 0.5 + 0.5));
      *(*(*(a1 + 56) + 8) + 24) = *(*(*(a1 + 56) + 8) + 24);
      if (*(*(*(a1 + 56) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (void)_deleteSocialGroupsWithGraphUpdate:(id)a3
{
  v4 = [a3 uuidsOfSocialGroupsToDelete];
  graph = self->_graph;
  v8 = v4;
  v6 = [PGGraphSocialGroupNodeCollection socialGroupNodesForPersistedUUIDs:"socialGroupNodesForPersistedUUIDs:inGraph:" inGraph:?];
  if ([v6 count])
  {
    v7 = objc_alloc_init(MEMORY[0x277D22C50]);
    [v7 removeNodes:v6];
    [(MAGraph *)self->_graph executeGraphChangeRequest:v7];
  }
}

- (void)deletePersonsWithGraphUpdate:(id)a3 progressBlock:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 localIdentifiersOfPersonsToDelete];
  v9 = [v8 count];
  serviceManager = self->_serviceManager;
  v11 = [v8 allObjects];
  [(CLSServiceManager *)serviceManager invalidatePersonsCacheForPersonsWithNames:v11];

  v12 = [PGGraphPersonNodeCollection personNodesForLocalIdentifiers:v8 inGraph:self->_graph];
  v13 = [v12 count];
  if (v13)
  {
    v14 = [v6 relatedDetails];
    [v14 accumulateDetailsForDeletedPersonNodes:v12];

    v15 = objc_alloc_init(MEMORY[0x277D22C50]);
    [v15 removeNodes:v12];
    [(MAGraph *)self->_graph executeGraphChangeRequest:v15];
    [v6 setHasDeletedPersonNodes:1];
  }

  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    v18 = 134218240;
    v19 = v13;
    v20 = 2048;
    v21 = v9;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "Batch Updates - Deleted %lu persons (%lu persons requested)", &v18, 0x16u);
  }

  LOBYTE(v18) = 0;
  v7[2](v7, &v18, 1.0);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_deleteMomentsWithGraphUpdate:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 uuidsOfMomentsToDelete];
  v6 = [v5 count];
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    v17 = 134217984;
    v18 = v6;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "Batch Updates - About to delete %lu Moments", &v17, 0xCu);
  }

  [(PGCurationManager *)self->_curationManager invalidateCurationCacheForMomentUUIDs:v5];
  v8 = [PGGraphMomentNodeCollection momentNodesForUUIDs:v5 inGraph:self->_graph];
  v9 = [v8 count];
  if (v9 != v6)
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:v5];
    v11 = [v8 uuids];
    [v10 minusSet:v11];

    v12 = self->_loggingConnection;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v17 = 138412290;
      v18 = v10;
      _os_log_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_INFO, "Failed to lookup Moment nodes for deletion with UUIDs: %@", &v17, 0xCu);
    }
  }

  if (v9)
  {
    v13 = [v4 relatedDetails];
    [v13 accumulateDetailsForDeletedMomentNodes:v8];

    v14 = objc_alloc_init(MEMORY[0x277D22C50]);
    [v14 removeNodes:v8];
    [(MAGraph *)self->_graph executeGraphChangeRequest:v14];
    [v4 setHasDeletedMomentNodes:1];
  }

  v15 = self->_loggingConnection;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v17 = 134218240;
    v18 = v9;
    v19 = 2048;
    v20 = v6;
    _os_log_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_INFO, "Batch Updates - Deleted %lu Moments (%lu requested)", &v17, 0x16u);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)performBatchUpdatesWithGraphUpdate:(id)a3 withRecipe:(id)a4 progressBlock:(id)a5
{
  v222 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v171 = a4;
  v170 = a5;
  v9 = _Block_copy(v170);
  v214 = 0;
  v215 = &v214;
  v216 = 0x2020000000;
  v217 = 0;
  v210 = 0;
  v211 = &v210;
  v212 = 0x2020000000;
  v213 = 0;
  if (!v9 || (v10 = CFAbsoluteTimeGetCurrent(), v10 - v211[3] < 0.01) || (v211[3] = v10, LOBYTE(info.numer) = 0, (*(v9 + 2))(v9, &info, 0.0), v17 = *(v215 + 24) | LOBYTE(info.numer), *(v215 + 24) = v17, (v17 & 1) == 0) && [(MAGraph *)self->_graph noFatalError])
  {
    v11 = self->_loggingConnection;
    v12 = os_signpost_id_generate(v11);
    v13 = v11;
    v14 = v13;
    v168 = v12 - 1;
    spid = v12;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PerformBatchUpdate", "", buf, 2u);
    }

    info = 0;
    mach_timebase_info(&info);
    v167 = mach_absolute_time();
    if ([v8 hasAnythingToDo])
    {
      v15 = objc_autoreleasePoolPush();
      v203[0] = MEMORY[0x277D85DD0];
      v203[1] = 3221225472;
      v203[2] = __78__PGGraphBuilder_performBatchUpdatesWithGraphUpdate_withRecipe_progressBlock___block_invoke;
      v203[3] = &unk_278886858;
      v207 = vdupq_n_s64(0x3FB999999999999AuLL);
      v204 = v9;
      v205 = &v210;
      v208 = 0x3F847AE147AE147BLL;
      v206 = &v214;
      [(PGGraphBuilder *)self performPreprocessingWithGraphUpdate:v8 withRecipe:v171 progressBlock:v203];
      if ((v215[3] & 1) != 0 || ![(MAGraph *)self->_graph noFatalError])
      {
        v22 = MEMORY[0x277D86220];
        v23 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v24 = *(v215 + 24);
          v25 = [(MAGraph *)self->_graph noFatalError];
          *buf = 67109890;
          *v219 = v24;
          *&v219[4] = 1024;
          *&v219[6] = !v25;
          v220 = 1.51430681e-269;
          v221 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/PGGraphBuilder.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled (%d) or fatal (%d) at line %d in file %s", buf, 0x1Eu);
        }

        v16 = 0;
      }

      else
      {
        v16 = 1;
      }

      objc_autoreleasePoolPop(v15);
      if (!v16)
      {
        goto LABEL_137;
      }
    }

    v26 = [v8 hasHighlightsToDelete];
    if (v26)
    {
      v27 = v14;
      v28 = os_signpost_id_generate(v27);
      v29 = v27;
      v30 = v29;
      if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v30, OS_SIGNPOST_INTERVAL_BEGIN, v28, "DeleteHighlights", "", buf, 2u);
      }

      v202 = 0;
      mach_timebase_info(&v202);
      v31 = mach_absolute_time();
      [(PGGraphBuilder *)self deleteHighlightsWithGraphUpdate:v8];
      v32 = mach_absolute_time();
      v33 = v202;
      v34 = v30;
      v35 = v34;
      if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v35, OS_SIGNPOST_INTERVAL_END, v28, "DeleteHighlights", "", buf, 2u);
      }

      v36 = v35;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *v219 = "DeleteHighlights";
        *&v219[8] = 2048;
        v220 = ((((v32 - v31) * v33.numer) / v33.denom) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v36, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }

      if ((v215[3] & 1) != 0 || ![(MAGraph *)self->_graph noFatalError])
      {
        v85 = MEMORY[0x277D86220];
        v86 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
        {
          v87 = *(v215 + 24);
          v88 = [(MAGraph *)self->_graph noFatalError];
          *buf = 67109890;
          *v219 = v87;
          *&v219[4] = 1024;
          *&v219[6] = !v88;
          v220 = 1.51430681e-269;
          v221 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/PGGraphBuilder.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled (%d) or fatal (%d) at line %d in file %s", buf, 0x1Eu);
        }

        goto LABEL_85;
      }

      v37 = 0.2;
    }

    else
    {
      v37 = 0.1;
    }

    v164 = [v8 hasMomentsToDelete];
    if (!v164)
    {
LABEL_44:
      v47 = [v8 hasPersonsToDelete];
      v48 = v47;
      if (v47)
      {
        v161 = v47;
        v49 = v14;
        v50 = os_signpost_id_generate(v49);
        v51 = v49;
        v52 = v51;
        if (v50 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v51))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v52, OS_SIGNPOST_INTERVAL_BEGIN, v50, "DeletePersons", "", buf, 2u);
        }

        v202 = 0;
        mach_timebase_info(&v202);
        v53 = mach_absolute_time();
        v37 = v37 + 0.1;
        v196[0] = MEMORY[0x277D85DD0];
        v196[1] = 3221225472;
        v196[2] = __78__PGGraphBuilder_performBatchUpdatesWithGraphUpdate_withRecipe_progressBlock___block_invoke_289;
        v196[3] = &unk_278886858;
        v200 = v37;
        v197 = v9;
        v198 = &v210;
        v201 = xmmword_22F78C030;
        v199 = &v214;
        [(PGGraphBuilder *)self deletePersonsWithGraphUpdate:v8 progressBlock:v196];
        v54 = mach_absolute_time();
        v55 = v202;
        v56 = v52;
        v57 = v56;
        if (v50 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v56))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v57, OS_SIGNPOST_INTERVAL_END, v50, "DeletePersons", "", buf, 2u);
        }

        v58 = v57;
        if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *v219 = "DeletePersons";
          *&v219[8] = 2048;
          v220 = ((((v54 - v53) * v55.numer) / v55.denom) / 1000000.0);
          _os_log_impl(&dword_22F0FC000, v58, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
        }

        if ((v215[3] & 1) != 0 || ![(MAGraph *)self->_graph noFatalError])
        {
          v93 = MEMORY[0x277D86220];
          v94 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
          {
            v95 = *(v215 + 24);
            v96 = [(MAGraph *)self->_graph noFatalError];
            *buf = 67109890;
            *v219 = v95;
            *&v219[4] = 1024;
            *&v219[6] = !v96;
            v220 = 1.51430681e-269;
            v221 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/PGGraphBuilder.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled (%d) or fatal (%d) at line %d in file %s", buf, 0x1Eu);
          }

          goto LABEL_137;
        }

        v48 = v161;
      }

      v59 = [v8 hasSocialGroupsToDelete];
      if (v59)
      {
        v162 = v48;
        v60 = v14;
        v61 = os_signpost_id_generate(v60);
        v62 = v60;
        v63 = v62;
        if (v61 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v62))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v63, OS_SIGNPOST_INTERVAL_BEGIN, v61, "DeleteSocialGroups", "", buf, 2u);
        }

        v202 = 0;
        mach_timebase_info(&v202);
        v160 = mach_absolute_time();
        [(PGGraphBuilder *)self _deleteSocialGroupsWithGraphUpdate:v8];
        v64 = mach_absolute_time();
        v65 = v202;
        v66 = v63;
        v67 = v66;
        if (v61 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v66))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v67, OS_SIGNPOST_INTERVAL_END, v61, "DeleteSocialGroups", "", buf, 2u);
        }

        v68 = v67;
        if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *v219 = "DeleteSocialGroups";
          *&v219[8] = 2048;
          v220 = ((((v64 - v160) * v65.numer) / v65.denom) / 1000000.0);
          _os_log_impl(&dword_22F0FC000, v68, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
        }

        if ((v215[3] & 1) != 0 || ![(MAGraph *)self->_graph noFatalError])
        {
          v97 = MEMORY[0x277D86220];
          v98 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
          {
            v99 = *(v215 + 24);
            v100 = [(MAGraph *)self->_graph noFatalError];
            *buf = 67109890;
            *v219 = v99;
            *&v219[4] = 1024;
            *&v219[6] = !v100;
            v220 = 1.51430681e-269;
            v221 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/PGGraphBuilder.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled (%d) or fatal (%d) at line %d in file %s", buf, 0x1Eu);
          }

          goto LABEL_137;
        }

        v37 = v37 + 0.1;
        v48 = v162;
      }

      throughputReportBlock = self->_throughputReportBlock;
      if (throughputReportBlock && ((v26 | v164 | v48 | v59) & 1) != 0)
      {
        v165 = [v8 uuidsOfMomentsToDelete];
        v163 = [v165 count];
        v70 = [v8 localIdentifiersOfPersonsToDelete];
        v71 = [v70 count];
        v72 = [v8 uuidsOfHighlightsToDelete];
        v73 = [v72 count];
        v74 = [v8 uuidsOfSocialGroupsToDelete];
        throughputReportBlock[2](throughputReportBlock, v71 + v163 + v73 + [v74 count], @"changesToDelete");
      }

      if ([v8 hasMomentsToInsert])
      {
        v75 = v14;
        v76 = os_signpost_id_generate(v75);
        v77 = v75;
        v78 = v77;
        if (v76 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v77))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v78, OS_SIGNPOST_INTERVAL_BEGIN, v76, "InsertMoments", "", buf, 2u);
        }

        v202 = 0;
        mach_timebase_info(&v202);
        v79 = mach_absolute_time();
        v37 = v37 + 0.1;
        v190[0] = MEMORY[0x277D85DD0];
        v190[1] = 3221225472;
        v190[2] = __78__PGGraphBuilder_performBatchUpdatesWithGraphUpdate_withRecipe_progressBlock___block_invoke_295;
        v190[3] = &unk_278886858;
        v194 = v37;
        v191 = v9;
        v192 = &v210;
        v195 = xmmword_22F78C030;
        v193 = &v214;
        [(PGGraphBuilder *)self insertMomentsWithGraphUpdate:v8 progressBlock:v190];
        v80 = mach_absolute_time();
        v81 = v202;
        v82 = v78;
        v83 = v82;
        if (v76 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v82))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v83, OS_SIGNPOST_INTERVAL_END, v76, "InsertMoments", "", buf, 2u);
        }

        v84 = v83;
        if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *v219 = "InsertMoments";
          *&v219[8] = 2048;
          v220 = ((((v80 - v79) * v81.numer) / v81.denom) / 1000000.0);
          _os_log_impl(&dword_22F0FC000, v84, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
        }

        if ((v215[3] & 1) != 0 || ![(MAGraph *)self->_graph noFatalError])
        {
          v129 = MEMORY[0x277D86220];
          v130 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v129, OS_LOG_TYPE_INFO))
          {
            v131 = *(v215 + 24);
            v132 = [(MAGraph *)self->_graph noFatalError];
            *buf = 67109890;
            *v219 = v131;
            *&v219[4] = 1024;
            *&v219[6] = !v132;
            v220 = 1.51430681e-269;
            v221 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/PGGraphBuilder.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled (%d) or fatal (%d) at line %d in file %s", buf, 0x1Eu);
          }

          goto LABEL_137;
        }
      }

      else
      {
        v84 = [MEMORY[0x277CBEB98] set];
        [(PGGraphBuilder *)self _registerInsertedMomentNodes:v84 inGraphUpdate:v8];
      }

      if ([v8 hasHighlightsToInsert])
      {
        v101 = v14;
        v102 = os_signpost_id_generate(v101);
        v103 = v101;
        v104 = v103;
        if (v102 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v103))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v104, OS_SIGNPOST_INTERVAL_BEGIN, v102, "InsertHighlights", "", buf, 2u);
        }

        v202 = 0;
        mach_timebase_info(&v202);
        v105 = mach_absolute_time();
        v37 = v37 + 0.1;
        v184[0] = MEMORY[0x277D85DD0];
        v184[1] = 3221225472;
        v184[2] = __78__PGGraphBuilder_performBatchUpdatesWithGraphUpdate_withRecipe_progressBlock___block_invoke_297;
        v184[3] = &unk_278886858;
        v188 = v37;
        v185 = v9;
        v186 = &v210;
        v189 = xmmword_22F78C030;
        v187 = &v214;
        [(PGGraphBuilder *)self insertHighlightsWithGraphUpdate:v8 progressBlock:v184];
        v106 = mach_absolute_time();
        v107 = v202;
        v108 = v104;
        v109 = v108;
        if (v102 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v108))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v109, OS_SIGNPOST_INTERVAL_END, v102, "InsertHighlights", "", buf, 2u);
        }

        v110 = v109;
        if (os_log_type_enabled(v110, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *v219 = "InsertHighlights";
          *&v219[8] = 2048;
          v220 = ((((v106 - v105) * v107.numer) / v107.denom) / 1000000.0);
          _os_log_impl(&dword_22F0FC000, v110, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
        }

        if ((v215[3] & 1) != 0 || ![(MAGraph *)self->_graph noFatalError])
        {
          v137 = MEMORY[0x277D86220];
          v138 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v137, OS_LOG_TYPE_INFO))
          {
            v139 = *(v215 + 24);
            v140 = [(MAGraph *)self->_graph noFatalError];
            *buf = 67109890;
            *v219 = v139;
            *&v219[4] = 1024;
            *&v219[6] = !v140;
            v220 = 1.51430681e-269;
            v221 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/PGGraphBuilder.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled (%d) or fatal (%d) at line %d in file %s", buf, 0x1Eu);
          }

          goto LABEL_137;
        }

        v111 = self->_throughputReportBlock;
        if (v111)
        {
          v112 = [v8 uuidsOfHighlightsToInsert];
          v111[2](v111, [v112 count], @"uuidsOfHighlightsToInsert");
        }
      }

      if (([v8 hasMomentsToUpdate] & 1) != 0 || (objc_msgSend(v8, "hasPersonsToUpdate") & 1) != 0 || objc_msgSend(v8, "hasHighlightsToUpdate"))
      {
        v113 = v14;
        v114 = os_signpost_id_generate(v113);
        v115 = v113;
        v116 = v115;
        if (v114 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v115))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v116, OS_SIGNPOST_INTERVAL_BEGIN, v114, "PerformChanges", "", buf, 2u);
        }

        v202 = 0;
        mach_timebase_info(&v202);
        v117 = mach_absolute_time();
        v37 = v37 + 0.1;
        v178[0] = MEMORY[0x277D85DD0];
        v178[1] = 3221225472;
        v178[2] = __78__PGGraphBuilder_performBatchUpdatesWithGraphUpdate_withRecipe_progressBlock___block_invoke_302;
        v178[3] = &unk_278886858;
        v182 = v37;
        v179 = v9;
        v180 = &v210;
        v183 = xmmword_22F78C030;
        v181 = &v214;
        [(PGGraphBuilder *)self performChangeForGraphUpdate:v8 progressBlock:v178];
        v118 = mach_absolute_time();
        v119 = v202;
        v120 = v116;
        v121 = v120;
        if (v114 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v120))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v121, OS_SIGNPOST_INTERVAL_END, v114, "PerformChanges", "", buf, 2u);
        }

        v122 = v121;
        if (os_log_type_enabled(v122, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *v219 = "PerformChanges";
          *&v219[8] = 2048;
          v220 = ((((v118 - v117) * v119.numer) / v119.denom) / 1000000.0);
          _os_log_impl(&dword_22F0FC000, v122, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
        }

        if ((v215[3] & 1) != 0 || ![(MAGraph *)self->_graph noFatalError])
        {
          v133 = MEMORY[0x277D86220];
          v134 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v133, OS_LOG_TYPE_INFO))
          {
            v135 = *(v215 + 24);
            v136 = [(MAGraph *)self->_graph noFatalError];
            *buf = 67109890;
            *v219 = v135;
            *&v219[4] = 1024;
            *&v219[6] = !v136;
            v220 = 1.51430681e-269;
            v221 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/PGGraphBuilder.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled (%d) or fatal (%d) at line %d in file %s", buf, 0x1Eu);
          }

          goto LABEL_137;
        }

        v123 = self->_throughputReportBlock;
        if (v123)
        {
          v166 = [v8 uuidsOfMomentsToUpdate];
          v124 = [v166 count];
          v125 = [v8 localIdentifiersOfPersonsToUpdate];
          v126 = [v125 count];
          v127 = [v8 uuidsOfHighlightsToUpdate];
          v123[2](v123, v126 + v124 + [v127 count], @"changesToUpdate");
        }
      }

      [v8 prepareForPostProcessingWithGraph:self->_graph];
      if ([v8 hasSocialGroupsToInsert])
      {
        v128 = 1;
      }

      else
      {
        v128 = [v8 hasSocialGroupsToUpdate];
      }

      if (([v8 didProcessNodes] | v128))
      {
        v142 = objc_autoreleasePoolPush();
        v172[0] = MEMORY[0x277D85DD0];
        v172[1] = 3221225472;
        v172[2] = __78__PGGraphBuilder_performBatchUpdatesWithGraphUpdate_withRecipe_progressBlock___block_invoke_307;
        v172[3] = &unk_27888A1B0;
        v176 = v37 + 0.1;
        v173 = v9;
        v174 = &v210;
        v177 = 0x3F847AE147AE147BLL;
        v175 = &v214;
        [(PGGraphBuilder *)self performPostprocessingWithGraphUpdate:v8 withRecipe:v171 progressBlock:v172];
        if ((v215[3] & 1) != 0 || ![(MAGraph *)self->_graph noFatalError])
        {
          v144 = MEMORY[0x277D86220];
          v145 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v144, OS_LOG_TYPE_INFO))
          {
            v146 = *(v215 + 24);
            v147 = [(MAGraph *)self->_graph noFatalError];
            *buf = 67109890;
            *v219 = v146;
            *&v219[4] = 1024;
            *&v219[6] = !v147;
            v220 = 1.51430681e-269;
            v221 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/PGGraphBuilder.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled (%d) or fatal (%d) at line %d in file %s", buf, 0x1Eu);
          }

          v143 = 0;
        }

        else
        {
          v143 = 1;
        }

        objc_autoreleasePoolPop(v142);
        if (!v143)
        {
          goto LABEL_137;
        }

        [(PGGraphBuilder *)self _onGraphDidUpdate];
      }

      [(PGGraph *)self->_graph invalidateMemoryCaches];
      [(MAGraph *)self->_graph savePersistentStore];
      [(PGGraphBuilder *)self _cleanGraphBuildCachesAfterUpdate];
      v148 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v151 = v14;
      v152 = v151;
      if (v168 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v151))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v152, OS_SIGNPOST_INTERVAL_END, spid, "PerformBatchUpdate", "", buf, 2u);
      }

      v153 = v152;
      if (os_log_type_enabled(v153, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *v219 = "PerformBatchUpdate";
        *&v219[8] = 2048;
        v220 = ((((v148 - v167) * numer) / denom) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v153, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }

      if (v9)
      {
        Current = CFAbsoluteTimeGetCurrent();
        if (Current - v211[3] >= 0.01)
        {
          v211[3] = Current;
          LOBYTE(v202.numer) = 0;
          (*(v9 + 2))(v9, &v202, 1.0);
          v155 = *(v215 + 24) | LOBYTE(v202.numer);
          *(v215 + 24) = v155;
          if ((v155 & 1) != 0 || ![(MAGraph *)self->_graph noFatalError])
          {
            v156 = MEMORY[0x277D86220];
            v157 = MEMORY[0x277D86220];
            if (os_log_type_enabled(v156, OS_LOG_TYPE_INFO))
            {
              v158 = *(v215 + 24);
              v159 = [(MAGraph *)self->_graph noFatalError];
              *buf = 67109890;
              *v219 = v158;
              *&v219[4] = 1024;
              *&v219[6] = !v159;
              v220 = 1.51430681e-269;
              v221 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/PGGraphBuilder.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled (%d) or fatal (%d) at line %d in file %s", buf, 0x1Eu);
            }
          }
        }
      }

LABEL_137:

      goto LABEL_138;
    }

    v38 = v14;
    v39 = os_signpost_id_generate(v38);
    v40 = v38;
    v41 = v40;
    if (v39 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v41, OS_SIGNPOST_INTERVAL_BEGIN, v39, "DeleteMoments", "", buf, 2u);
    }

    v202 = 0;
    mach_timebase_info(&v202);
    v42 = mach_absolute_time();
    [(PGGraphBuilder *)self _deleteMomentsWithGraphUpdate:v8];
    v43 = mach_absolute_time();
    v44 = v202;
    v45 = v41;
    v46 = v45;
    if (v39 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v46, OS_SIGNPOST_INTERVAL_END, v39, "DeleteMoments", "", buf, 2u);
    }

    v36 = v46;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *v219 = "DeleteMoments";
      *&v219[8] = 2048;
      v220 = ((((v43 - v42) * v44.numer) / v44.denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v36, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    if ((v215[3] & 1) == 0 && [(MAGraph *)self->_graph noFatalError])
    {

      v37 = v37 + 0.1;
      goto LABEL_44;
    }

    v89 = MEMORY[0x277D86220];
    v90 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
    {
      v91 = *(v215 + 24);
      v92 = [(MAGraph *)self->_graph noFatalError];
      *buf = 67109890;
      *v219 = v91;
      *&v219[4] = 1024;
      *&v219[6] = !v92;
      v220 = 1.51430681e-269;
      v221 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/PGGraphBuilder.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled (%d) or fatal (%d) at line %d in file %s", buf, 0x1Eu);
    }

LABEL_85:

    goto LABEL_137;
  }

  v18 = MEMORY[0x277D86220];
  v19 = MEMORY[0x277D86220];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v20 = *(v215 + 24);
    v21 = [(MAGraph *)self->_graph noFatalError];
    *buf = 67109890;
    *v219 = v20;
    *&v219[4] = 1024;
    *&v219[6] = !v21;
    v220 = 1.51430681e-269;
    v221 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/PGGraphBuilder.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled (%d) or fatal (%d) at line %d in file %s", buf, 0x1Eu);
  }

LABEL_138:
  _Block_object_dispose(&v210, 8);
  _Block_object_dispose(&v214, 8);

  v141 = *MEMORY[0x277D85DE8];
}

void __78__PGGraphBuilder_performBatchUpdatesWithGraphUpdate_withRecipe_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    Current = CFAbsoluteTimeGetCurrent();
    v9 = *(*(a1 + 40) + 8);
    if (Current - *(v9 + 24) >= *(a1 + 72))
    {
      *(v9 + 24) = Current;
      (*(*(a1 + 32) + 16))(v6 + v7 * a3);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __78__PGGraphBuilder_performBatchUpdatesWithGraphUpdate_withRecipe_progressBlock___block_invoke_289(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    Current = CFAbsoluteTimeGetCurrent();
    v9 = *(*(a1 + 40) + 8);
    if (Current - *(v9 + 24) >= *(a1 + 72))
    {
      *(v9 + 24) = Current;
      (*(*(a1 + 32) + 16))(v6 + v7 * a3);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __78__PGGraphBuilder_performBatchUpdatesWithGraphUpdate_withRecipe_progressBlock___block_invoke_295(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    Current = CFAbsoluteTimeGetCurrent();
    v9 = *(*(a1 + 40) + 8);
    if (Current - *(v9 + 24) >= *(a1 + 72))
    {
      *(v9 + 24) = Current;
      (*(*(a1 + 32) + 16))(v6 + v7 * a3);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __78__PGGraphBuilder_performBatchUpdatesWithGraphUpdate_withRecipe_progressBlock___block_invoke_297(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    Current = CFAbsoluteTimeGetCurrent();
    v9 = *(*(a1 + 40) + 8);
    if (Current - *(v9 + 24) >= *(a1 + 72))
    {
      *(v9 + 24) = Current;
      (*(*(a1 + 32) + 16))(v6 + v7 * a3);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __78__PGGraphBuilder_performBatchUpdatesWithGraphUpdate_withRecipe_progressBlock___block_invoke_302(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    Current = CFAbsoluteTimeGetCurrent();
    v9 = *(*(a1 + 40) + 8);
    if (Current - *(v9 + 24) >= *(a1 + 72))
    {
      *(v9 + 24) = Current;
      (*(*(a1 + 32) + 16))(v6 + v7 * a3);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __78__PGGraphBuilder_performBatchUpdatesWithGraphUpdate_withRecipe_progressBlock___block_invoke_307(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    v6 = *(a1 + 56);
    Current = CFAbsoluteTimeGetCurrent();
    v8 = *(*(a1 + 40) + 8);
    if (Current - *(v8 + 24) >= *(a1 + 64))
    {
      *(v8 + 24) = Current;
      (*(*(a1 + 32) + 16))(v6 + a3 * 0.3);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (void)_buildSceneNodeCache
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  sceneNodeBySceneName = self->_sceneNodeBySceneName;
  self->_sceneNodeBySceneName = v3;

  v5 = [(PGGraphNodeCollection *)PGGraphSceneNodeCollection nodesInGraph:self->_graph];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __38__PGGraphBuilder__buildSceneNodeCache__block_invoke;
  v12[3] = &unk_2788878A8;
  v12[4] = self;
  [v5 enumerateNodesUsingBlock:v12];
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  entityNetSceneNodeBySceneName = self->_entityNetSceneNodeBySceneName;
  self->_entityNetSceneNodeBySceneName = v6;

  v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
  entityNetSceneTaxonomyNodesNotIndexedInSearch = self->_entityNetSceneTaxonomyNodesNotIndexedInSearch;
  self->_entityNetSceneTaxonomyNodesNotIndexedInSearch = v8;

  v10 = [(PGGraphNodeCollection *)PGGraphEntityNetSceneNodeCollection nodesInGraph:self->_graph];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __38__PGGraphBuilder__buildSceneNodeCache__block_invoke_2;
  v11[3] = &unk_2788810A8;
  v11[4] = self;
  [v10 enumerateNodesUsingBlock:v11];
}

void __38__PGGraphBuilder__buildSceneNodeCache__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 96);
  v3 = a2;
  v4 = [v3 sceneName];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

void __38__PGGraphBuilder__buildSceneNodeCache__block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 sceneName];
  if (v3)
  {
    [*(*(a1 + 32) + 104) setObject:v4 forKeyedSubscript:v3];
  }
}

- (id)momentNodesWhereMeIsPresent
{
  momentNodesWhereMeIsPresent = self->_momentNodesWhereMeIsPresent;
  if (!momentNodesWhereMeIsPresent)
  {
    v4 = [(PGGraphBuilder *)self graph];
    v5 = [v4 meNodeCollection];

    v6 = [v5 momentNodesWithPresence];
    v7 = self->_momentNodesWhereMeIsPresent;
    self->_momentNodesWhereMeIsPresent = v6;

    momentNodesWhereMeIsPresent = self->_momentNodesWhereMeIsPresent;
  }

  return momentNodesWhereMeIsPresent;
}

- (id)_insertMomentNodeForClueCollection:(id)a3 feeder:(id)a4 insertedAndUpdatedPersonNodes:(id *)a5 graphUpdate:(id)a6 progressBlock:(id)a7
{
  v145 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v15 = _Block_copy(v14);
  v139 = 0;
  v140 = &v139;
  v141 = 0x2020000000;
  v142 = 0;
  v135 = 0;
  v136 = &v135;
  v137 = 0x2020000000;
  v138 = 0;
  if (v15)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v136[3] >= 0.01)
    {
      v136[3] = Current;
      LOBYTE(info.numer) = 0;
      v15[2](v15, &info, 0.0);
      v17 = *(v140 + 24) | LOBYTE(info.numer);
      *(v140 + 24) = v17;
      if (v17)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v144 = 323;
          *&v144[4] = 2080;
          *&v144[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/PGGraphBuilder.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

LABEL_10:
        v24 = 0;
        goto LABEL_142;
      }
    }
  }

  v18 = [v11 universalEndDate];
  v19 = [v11 universalStartDate];
  [v18 timeIntervalSinceDate:v19];
  v21 = v20 > 172800.0;

  if (v21)
  {
    v22 = self->_loggingConnection;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = [v12 assetCollection];
      *buf = 138412290;
      *v144 = v23;
      _os_log_impl(&dword_22F0FC000, v22, OS_LOG_TYPE_INFO, "Don't insert [%@] because its time interval is more than 2 days", buf, 0xCu);
    }

    goto LABEL_10;
  }

  context = objc_autoreleasePoolPush();
  if (v15)
  {
    v25 = CFAbsoluteTimeGetCurrent();
    if (v25 - v136[3] >= 0.01)
    {
      v136[3] = v25;
      LOBYTE(info.numer) = 0;
      v15[2](v15, &info, 0.1);
      v26 = *(v140 + 24) | LOBYTE(info.numer);
      *(v140 + 24) = v26;
      if (v26)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v144 = 335;
          *&v144[4] = 2080;
          *&v144[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/PGGraphBuilder.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v27 = 0;
        v28 = 0;
        v29 = 0;
        goto LABEL_136;
      }
    }
  }

  v114 = [[PGGraphIngestMomentContainer alloc] initMomentContainerWithFeeder:v12 clueCollection:v11 curationManager:self->_curationManager topTierAestheticScore:self->_curationContext curationContext:self->_topTierAestheticScore];
  v130[0] = MEMORY[0x277D85DD0];
  v130[1] = 3221225472;
  v130[2] = __116__PGGraphBuilder__insertMomentNodeForClueCollection_feeder_insertedAndUpdatedPersonNodes_graphUpdate_progressBlock___block_invoke;
  v130[3] = &unk_27888A188;
  v30 = v15;
  v131 = v30;
  v132 = &v135;
  v133 = &v139;
  v134 = 0x3F847AE147AE147BLL;
  [(PGGraphBuilder *)self insertAssetCurationScoreInLibraryForFeeder:v12 progressBlock:v130];
  v31 = [v12 assetCollection];
  v115 = [v31 uuid];

  if (v115)
  {
    curationManager = self->_curationManager;
    v33 = [MEMORY[0x277CBEB98] setWithObject:v115];
    [(PGCurationManager *)curationManager invalidateCurationCacheForMomentUUIDs:v33];
  }

  if (!v15 || (v34 = CFAbsoluteTimeGetCurrent(), v34 - v136[3] < 0.01) || (v136[3] = v34, LOBYTE(info.numer) = 0, v30[2](v30, &info, 0.2), v35 = *(v140 + 24) | LOBYTE(info.numer), *(v140 + 24) = v35, (v35 & 1) == 0))
  {
    v28 = [(PGGraphBuilder *)self insertMomentNodeForMoment:v114];
    if (!v28)
    {
      v47 = +[PGLogging sharedLogging];
      v48 = [v47 loggingConnection];

      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v97 = [v12 assetCollection];
        *buf = 138412290;
        *v144 = v97;
        _os_log_error_impl(&dword_22F0FC000, v48, OS_LOG_TYPE_ERROR, "Failed to insert moment: %@", buf, 0xCu);
      }

      goto LABEL_52;
    }

    if (v15)
    {
      v36 = CFAbsoluteTimeGetCurrent();
      if (v36 - v136[3] >= 0.01)
      {
        v136[3] = v36;
        LOBYTE(info.numer) = 0;
        v30[2](v30, &info, 0.4);
        v37 = *(v140 + 24) | LOBYTE(info.numer);
        *(v140 + 24) = v37;
        if (v37)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v144 = 356;
            *&v144[4] = 2080;
            *&v144[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/PGGraphBuilder.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v27 = 0;
          goto LABEL_53;
        }
      }
    }

    v38 = [[PGGraphBuilderMomentEnvelope alloc] initWithMomentNode:v28];
    v39 = [(PGGraphBuilder *)self insertDateNodesWithClueCollection:v11 fromMomentNode:v28];
    v111 = v38;
    if (v15)
    {
      v40 = CFAbsoluteTimeGetCurrent();
      if (v40 - v136[3] >= 0.01)
      {
        v136[3] = v40;
        LOBYTE(info.numer) = 0;
        v30[2](v30, &info, 0.5);
        v41 = *(v140 + 24) | LOBYTE(info.numer);
        *(v140 + 24) = v41;
        if (v41)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v144 = 362;
            *&v144[4] = 2080;
            *&v144[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/PGGraphBuilder.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v27 = 0;
          v29 = 0;
          goto LABEL_134;
        }
      }
    }

    v112 = [(PGGraphBuilder *)self insertScenesWithClueCollection:v11 fromMomentNode:v28];
    [(PGGraphBuilderMomentEnvelope *)v38 setSceneEdges:v112];
    if (v15)
    {
      v42 = CFAbsoluteTimeGetCurrent();
      if (v42 - v136[3] >= 0.01)
      {
        v136[3] = v42;
        LOBYTE(info.numer) = 0;
        v30[2](v30, &info, 0.6);
        v43 = *(v140 + 24) | LOBYTE(info.numer);
        *(v140 + 24) = v43;
        if (v43)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v144 = 367;
            *&v144[4] = 2080;
            *&v144[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/PGGraphBuilder.m";
            v44 = MEMORY[0x277D86220];
LABEL_47:
            _os_log_impl(&dword_22F0FC000, v44, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            goto LABEL_48;
          }

          goto LABEL_48;
        }
      }
    }

    [(PGGraphBuilder *)self insertEntityNetScenesWithClueCollection:v11 fromMomentNode:v28];
    if (v15)
    {
      v45 = CFAbsoluteTimeGetCurrent();
      if (v45 - v136[3] >= 0.01)
      {
        v136[3] = v45;
        LOBYTE(info.numer) = 0;
        v30[2](v30, &info, 0.7);
        v46 = *(v140 + 24) | LOBYTE(info.numer);
        *(v140 + 24) = v46;
        if (v46)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v144 = 370;
            *&v144[4] = 2080;
            *&v144[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/PGGraphBuilder.m";
            v44 = MEMORY[0x277D86220];
            goto LABEL_47;
          }

LABEL_48:
          v27 = 0;
          v29 = 0;
LABEL_133:

LABEL_134:
          goto LABEL_135;
        }
      }
    }

    v110 = [(PGGraphBuilder *)self insertLocationHierarchyWithClueCollection:v11 fromMomentNode:v28];
    if (v15)
    {
      v49 = CFAbsoluteTimeGetCurrent();
      if (v49 - v136[3] >= 0.01)
      {
        v136[3] = v49;
        LOBYTE(info.numer) = 0;
        v30[2](v30, &info, 0.8);
        v50 = *(v140 + 24) | LOBYTE(info.numer);
        *(v140 + 24) = v50;
        if (v50)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v144 = 374;
            *&v144[4] = 2080;
            *&v144[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/PGGraphBuilder.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v27 = 0;
LABEL_65:
          v29 = 0;
LABEL_132:

          goto LABEL_133;
        }
      }
    }

    v129 = 0;
    v27 = [(PGGraphBuilder *)self insertPeopleWithClueCollection:v11 fromMomentNode:v28 addressNodes:v110 isNearPeopleAddress:&v129];
    if (v15)
    {
      v51 = CFAbsoluteTimeGetCurrent();
      if (v51 - v136[3] >= 0.01)
      {
        v136[3] = v51;
        LOBYTE(info.numer) = 0;
        v30[2](v30, &info, 0.9);
        v52 = *(v140 + 24) | LOBYTE(info.numer);
        *(v140 + 24) = v52;
        if (v52)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v144 = 380;
            *&v144[4] = 2080;
            *&v144[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/PGGraphBuilder.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_65;
        }
      }
    }

    v109 = [(PGGraph *)self->_graph meNode];
    if (-[PGGraphBuilder isSharedLibraryEnabled](self, "isSharedLibraryEnabled") && [v28 sharingComposition])
    {
      v53 = [v12 shareParticipants];
      [(PGGraphBuilder *)self insertShareParticipantsAsAuthors:v53 forMomentNode:v28];

      if (v109 && [v28 sharingComposition] == 1)
      {
        [(PGGraphBuilder *)self checkAndInsertPersonIsAroundEdgeFromMeNode:v109 toMomentNode:v28 withClueCollection:v11];
      }
    }

    else if (v109)
    {
      [(PGGraphBuilder *)self insertMeAsAuthor:v109 forMomentNode:v28];
    }

    else
    {
      v54 = self->_loggingConnection;
      if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_22F0FC000, v54, OS_LOG_TYPE_FAULT, "[PGGraphBuilder][_insertMomentNodeForClueCollection:feeder:] Graph should have Me node during moment ingestion", buf, 2u);
      }
    }

    if (v15)
    {
      v55 = CFAbsoluteTimeGetCurrent();
      if (v55 - v136[3] >= 0.01)
      {
        v136[3] = v55;
        LOBYTE(info.numer) = 0;
        v30[2](v30, &info, 0.91);
        v56 = *(v140 + 24) | LOBYTE(info.numer);
        *(v140 + 24) = v56;
        if (v56)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v144 = 396;
            *&v144[4] = 2080;
            *&v144[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/PGGraphBuilder.m";
            v57 = MEMORY[0x277D86220];
LABEL_93:
            _os_log_impl(&dword_22F0FC000, v57, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            goto LABEL_94;
          }

          goto LABEL_94;
        }
      }
    }

    if ([v110 count])
    {
      v58 = [(PGGraphBuilder *)self insertPOIWithFeeder:v12 fromMomentNode:v28 isNearHomeOrWork:v129];
    }

    v59 = [(PGGraphBuilder *)self insertROIWithClueCollection:v11 fromMomentNode:v28];
    if (v15)
    {
      v60 = CFAbsoluteTimeGetCurrent();
      if (v60 - v136[3] >= 0.01)
      {
        v136[3] = v60;
        LOBYTE(info.numer) = 0;
        v30[2](v30, &info, 0.93);
        v61 = *(v140 + 24) | LOBYTE(info.numer);
        *(v140 + 24) = v61;
        if (v61)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v144 = 404;
            *&v144[4] = 2080;
            *&v144[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/PGGraphBuilder.m";
            v57 = MEMORY[0x277D86220];
            goto LABEL_93;
          }

LABEL_94:
          v29 = 0;
LABEL_131:

          goto LABEL_132;
        }
      }
    }

    v62 = [(PGGraphBuilder *)self insertPartOfDayNodesWithClueCollection:v11 fromMomentNode:v28];
    if (v15)
    {
      v63 = CFAbsoluteTimeGetCurrent();
      if (v63 - v136[3] >= 0.01)
      {
        v136[3] = v63;
        LOBYTE(info.numer) = 0;
        v30[2](v30, &info, 0.97);
        v64 = *(v140 + 24) | LOBYTE(info.numer);
        *(v140 + 24) = v64;
        if (v64)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v144 = 408;
            *&v144[4] = 2080;
            *&v144[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/PGGraphBuilder.m";
            v57 = MEMORY[0x277D86220];
            goto LABEL_93;
          }

          goto LABEL_94;
        }
      }
    }

    v65 = [(PGGraphBuilder *)self insertLocationMobilityNodeWithClueCollection:v11 fromMomentNode:v28];
    v124[0] = MEMORY[0x277D85DD0];
    v124[1] = 3221225472;
    v124[2] = __116__PGGraphBuilder__insertMomentNodeForClueCollection_feeder_insertedAndUpdatedPersonNodes_graphUpdate_progressBlock___block_invoke_280;
    v124[3] = &unk_27888A188;
    v108 = v30;
    v125 = v108;
    v126 = &v135;
    v127 = &v139;
    v128 = 0x3F847AE147AE147BLL;
    v66 = [(PGGraphBuilder *)self featureProviderWithProgressBlock:v124];
    if (v15 && (v67 = CFAbsoluteTimeGetCurrent(), v67 - v136[3] >= 0.01) && (v136[3] = v67, LOBYTE(info.numer) = 0, v108[2](v108, &info, 0.98), v68 = *(v140 + 24) | LOBYTE(info.numer), *(v140 + 24) = v68, (v68 & 1) != 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v144 = 415;
        *&v144[4] = 2080;
        *&v144[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/PGGraphBuilder.m";
        v69 = MEMORY[0x277D86220];
LABEL_105:
        _os_log_impl(&dword_22F0FC000, v69, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    else
    {
      v70 = [v12 allItems];
      [(PGGraphBuilder *)self insertMomentFeaturesForMomentNode:v28 momentEnvelope:v111 assets:v70 featureProvider:v66 atMomentIngest:1 curationContext:self->_curationContext];
      v107 = v66;

      if (!v15 || (v71 = CFAbsoluteTimeGetCurrent(), v71 - v136[3] < 0.01) || (v136[3] = v71, LOBYTE(info.numer) = 0, v108[2](v108, &info, 0.99), v72 = *(v140 + 24) | LOBYTE(info.numer), *(v140 + 24) = v72, (v72 & 1) == 0))
      {
        if (self->_eventLabelingFeaturesCache)
        {
          v73 = self->_loggingConnection;
          v74 = os_signpost_id_generate(v73);
          v75 = v73;
          v76 = v75;
          spid = v74;
          v103 = v74 - 1;
          if (v74 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v75))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_22F0FC000, v76, OS_SIGNPOST_INTERVAL_BEGIN, v74, "PGEventLabelingFeaturesFileCache", "", buf, 2u);
          }

          info = 0;
          mach_timebase_info(&info);
          v101 = mach_absolute_time();
          v104 = v76;
          v77 = MEMORY[0x277D22C80];
          v118[0] = MEMORY[0x277D85DD0];
          v118[1] = 3221225472;
          v118[2] = __116__PGGraphBuilder__insertMomentNodeForClueCollection_feeder_insertedAndUpdatedPersonNodes_graphUpdate_progressBlock___block_invoke_281;
          v118[3] = &unk_27888A188;
          v119 = v108;
          v120 = &v135;
          v121 = &v139;
          v122 = 0x3F847AE147AE147BLL;
          v106 = [v77 progressReporterWithProgressBlock:v118];
          eventLabelingFeaturesCache = self->_eventLabelingFeaturesCache;
          v79 = [v12 assetFetchResult];
          photoLibrary = self->_photoLibrary;
          v117 = 0;
          v81 = [(PGEventLabelingFeaturesFileCache *)eventLabelingFeaturesCache writeFeaturesForMomentNode:v28 assetFetchResult:v79 photoLibrary:photoLibrary progressReporter:v106 error:&v117];
          v105 = v117;

          if (!v81)
          {
            v82 = +[PGLogging sharedLogging];
            v83 = [v82 loggingConnection];

            if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
            {
              v100 = [v28 localIdentifier];
              v98 = [v105 description];
              *buf = 138412546;
              *v144 = v100;
              *&v144[8] = 2112;
              *&v144[10] = v98;
              v99 = v98;
              _os_log_error_impl(&dword_22F0FC000, v83, OS_LOG_TYPE_ERROR, "[EventLabeling] Error caching features for moment %@: %@", buf, 0x16u);
            }
          }

          v84 = mach_absolute_time();
          numer = info.numer;
          denom = info.denom;
          v87 = v104;
          v88 = v87;
          if (v103 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v87))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_22F0FC000, v88, OS_SIGNPOST_INTERVAL_END, spid, "PGEventLabelingFeaturesFileCache", "", buf, 2u);
          }

          v89 = v88;
          if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            *v144 = "PGEventLabelingFeaturesFileCache";
            *&v144[8] = 2048;
            *&v144[10] = ((((v84 - v101) * numer) / denom) / 1000000.0);
            _os_log_impl(&dword_22F0FC000, v89, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
          }
        }

        if (v15)
        {
          v90 = CFAbsoluteTimeGetCurrent();
          v66 = v107;
          if (v90 - v136[3] < 0.01 || (v136[3] = v90, LOBYTE(info.numer) = 0, v108[2](v108, &info, 1.0), v91 = *(v140 + 24) | LOBYTE(info.numer), *(v140 + 24) = v91, (v91 & 1) == 0))
          {
            v29 = 1;
            goto LABEL_130;
          }

          v92 = MEMORY[0x277D86220];
          v93 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v144 = 436;
            *&v144[4] = 2080;
            *&v144[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/PGGraphBuilder.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v29 = 0;
        }

        else
        {
          v29 = 1;
        }

        v66 = v107;
        goto LABEL_130;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v144 = 419;
        *&v144[4] = 2080;
        *&v144[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/PGGraphBuilder.m";
        v69 = MEMORY[0x277D86220];
        goto LABEL_105;
      }
    }

    v29 = 0;
LABEL_130:

    goto LABEL_131;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v144 = 348;
    *&v144[4] = 2080;
    *&v144[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/PGGraphBuilder.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_52:
  v27 = 0;
  v28 = 0;
LABEL_53:
  v29 = 0;
LABEL_135:

LABEL_136:
  objc_autoreleasePoolPop(context);
  if (v29)
  {
    if (a5)
    {
      v94 = v27;
      *a5 = v27;
    }

    v24 = v28;
  }

  else
  {
    v24 = 0;
  }

LABEL_142:
  _Block_object_dispose(&v135, 8);
  _Block_object_dispose(&v139, 8);

  v95 = *MEMORY[0x277D85DE8];

  return v24;
}

void __116__PGGraphBuilder__insertMomentNodeForClueCollection_feeder_insertedAndUpdatedPersonNodes_graphUpdate_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
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

void __116__PGGraphBuilder__insertMomentNodeForClueCollection_feeder_insertedAndUpdatedPersonNodes_graphUpdate_progressBlock___block_invoke_280(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.1 + 0.97);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __116__PGGraphBuilder__insertMomentNodeForClueCollection_feeder_insertedAndUpdatedPersonNodes_graphUpdate_progressBlock___block_invoke_281(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.01 + 0.99);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (id)_cleanUpMoments:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if ([v3 count])
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v4 = v3;
    v6 = [v4 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v25;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v24 + 1) + 8 * i);
          v11 = [v10 startDate];
          v12 = [v10 endDate];
          v13 = v12;
          if (v11)
          {
            v14 = v12 == 0;
          }

          else
          {
            v14 = 1;
          }

          if (v14 || [v11 compare:v12] == 1 || objc_msgSend(MEMORY[0x277D27690], "yearFromDate:", v11) < 1826 || objc_msgSend(MEMORY[0x277D27690], "yearFromDate:", v13) >= 2201)
          {
            [v5 addObject:v10];
            v15 = +[PGLogging sharedLogging];
            v16 = [v15 loggingConnection];

            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v29 = v11;
              v30 = 2112;
              v31 = v13;
              _os_log_error_impl(&dword_22F0FC000, v16, OS_LOG_TYPE_ERROR, "Moment to insert has bogus dates (%@ -> %@)", buf, 0x16u);
            }
          }
        }

        v7 = [v4 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v7);
    }

    v17 = [v5 count];
    if (v17)
    {
      v18 = v17;
      v19 = [v4 mutableCopy];
      [v19 minusSet:v5];

      v20 = +[PGLogging sharedLogging];
      v21 = [v20 loggingConnection];

      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v29 = v18;
        _os_log_error_impl(&dword_22F0FC000, v21, OS_LOG_TYPE_ERROR, "Found %lu bogus moments, removing them from Moments to insert", buf, 0xCu);
      }

      v4 = v19;
    }
  }

  v22 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)prepareGraphForRebuild
{
  v3 = objc_opt_class();
  graph = self->_graph;

  [v3 prepareGraphForRebuild:graph];
}

- (id)featureProviderWithProgressBlock:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v5->_featureProvider)
  {
LABEL_2:
    objc_sync_exit(v5);

    v6 = v5->_featureProvider;
    goto LABEL_12;
  }

  v7 = [[PGMomentFeatureSpecificationFactory alloc] initWithSceneTaxonomy:v5->_sceneTaxonomy photoLibrary:v5->_photoLibrary loggingConnection:v5->_loggingConnection];
  v8 = [(PGMomentFeatureSpecificationFactory *)v7 allSupportedFeatureTypes];
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = [v8 count];
  if (v10)
  {
    v11 = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:v4];
    v12 = [objc_alloc(MEMORY[0x277D22C88]) initWithProgressReporter:v11];
    *buf = 0;
    v33 = buf;
    v34 = 0x2020000000;
    v35 = 0;
    v31[0] = 0;
    v31[1] = v31;
    v31[2] = 0x2020000000;
    *&v31[3] = 1.0 / v10;
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __51__PGGraphBuilder_featureProviderWithProgressBlock___block_invoke;
    v24 = &unk_278881080;
    v29 = buf;
    v30 = v31;
    v13 = v12;
    v25 = v13;
    v14 = v9;
    v26 = v14;
    v15 = v7;
    v27 = v15;
    v16 = v11;
    v28 = v16;
    [v8 enumerateIndexesUsingBlock:&v21];
    v17 = [v16 isCancelled];
    if ((v17 & 1) == 0)
    {
      v18 = [[PGAssetCollectionFeatureProvider alloc] initWithFeatureSpecifications:v14];
      featureProvider = v5->_featureProvider;
      v5->_featureProvider = v18;
    }

    _Block_object_dispose(v31, 8);
    _Block_object_dispose(buf, 8);

    if ((v17 & 1) == 0)
    {
      goto LABEL_2;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[PGGraphBuilder] No supported feature types", buf, 2u);
    }
  }

  objc_sync_exit(v5);

  v6 = 0;
LABEL_12:

  return v6;
}

void __51__PGGraphBuilder_featureProviderWithProgressBlock___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(*(*(a1 + 64) + 8) + 24) = *(*(*(a1 + 72) + 8) + 24) + *(*(*(a1 + 64) + 8) + 24);
  v6 = [*(a1 + 32) childProgressReporterToCheckpoint:*(*(*(a1 + 64) + 8) + 24)];
  v7 = *(a1 + 40);
  v9 = v6;
  v8 = [*(a1 + 48) specificationsForFeatureType:a2 progressReporter:?];
  [v7 addObjectsFromArray:v8];

  if ([*(a1 + 56) isCancelled])
  {
    *a3 = 1;
  }
}

- (CLSCurationContext)curationContext
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_curationContext)
  {
    v3 = [objc_alloc(MEMORY[0x277D3C790]) initWithPhotoLibrary:v2->_photoLibrary];
    curationContext = v2->_curationContext;
    v2->_curationContext = v3;
  }

  objc_sync_exit(v2);

  v5 = v2->_curationContext;

  return v5;
}

- (PGGraphBuilder)initWithGraph:(id)a3
{
  v4 = MEMORY[0x277D27718];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = MEMORY[0x277D27718];
  v8 = [PGManager graphServicesURLWithPhotoLibrary:0];
  v9 = [v7 urlWithParentURL:v8];
  v10 = [v6 initWithURL:v9];

  v11 = [(PGGraphBuilder *)self initWithGraph:v5 locationCache:v10];
  return v11;
}

- (PGGraphBuilder)initWithGraph:(id)a3 locationCache:(id)a4
{
  v7 = a3;
  v8 = a4;
  v22.receiver = self;
  v22.super_class = PGGraphBuilder;
  v9 = [(PGGraphBuilder *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_graph, a3);
    v11 = [objc_alloc(MEMORY[0x277D3C7B8]) initForSceneNetOnly:1];
    sceneTaxonomy = v10->_sceneTaxonomy;
    v10->_sceneTaxonomy = v11;

    v13 = [objc_alloc(MEMORY[0x277D3C7B8]) initForSceneNetOnly:0];
    entityNetSceneTaxonomy = v10->_entityNetSceneTaxonomy;
    v10->_entityNetSceneTaxonomy = v13;

    objc_storeStrong(&v10->_loggingConnection, MEMORY[0x277D86220]);
    v15 = [[PGGraphTimeDomainBuildingHelper alloc] initWithGraph:v10->_graph];
    timeDomainBuildingHelper = v10->_timeDomainBuildingHelper;
    v10->_timeDomainBuildingHelper = v15;

    v17 = objc_alloc_init(PGGraphPeopleDomainBuildingHelper);
    peopleDomainBuildingHelper = v10->_peopleDomainBuildingHelper;
    v10->_peopleDomainBuildingHelper = v17;

    [(PGGraphBuilder *)v10 _buildSceneNodeCache];
    objc_storeStrong(&v10->_locationCache, a4);
    v19 = [objc_alloc(MEMORY[0x277D277B0]) initWithLocationCache:v10->_locationCache];
    serviceManager = v10->_serviceManager;
    v10->_serviceManager = v19;
  }

  return v10;
}

- (PGGraphBuilder)initWithGraph:(id)a3 manager:(id)a4
{
  v68 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v65.receiver = self;
  v65.super_class = PGGraphBuilder;
  v9 = [(PGGraphBuilder *)&v65 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_graph, a3);
    v11 = [v8 photoLibrary];
    photoLibrary = v10->_photoLibrary;
    v10->_photoLibrary = v11;

    v13 = [objc_alloc(MEMORY[0x277D3C7B8]) initForSceneNetOnly:1];
    sceneTaxonomy = v10->_sceneTaxonomy;
    v10->_sceneTaxonomy = v13;

    v15 = [objc_alloc(MEMORY[0x277D3C7B8]) initForSceneNetOnly:0];
    entityNetSceneTaxonomy = v10->_entityNetSceneTaxonomy;
    v10->_entityNetSceneTaxonomy = v15;

    v17 = [v8 curationManager];
    curationManager = v10->_curationManager;
    v10->_curationManager = v17;

    v19 = [v8 serviceManager];
    serviceManager = v10->_serviceManager;
    v10->_serviceManager = v19;

    v21 = [v8 ingestLoggingConnection];
    loggingConnection = v10->_loggingConnection;
    v10->_loggingConnection = v21;

    v10->_keepsExistingAssetCurationScores = [v8 photoLibraryIsReadonly];
    v23 = [(PGGraph *)v10->_graph infoNode];
    [v23 topTierAestheticScore];
    v10->_topTierAestheticScore = v24;
    v10->_numberOfUtilityAssets = [v23 numberOfUtilityAssets];
    v10->_numberOfDefaultAssets = [v23 numberOfDefaultAssets];
    v10->_numberOfImprovedAssets = [v23 numberOfImprovedAssets];
    v10->_numberOfBetterAssets = [v23 numberOfBetterAssets];
    v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
    curationScoreByAsset = v10->_curationScoreByAsset;
    v10->_curationScoreByAsset = v25;

    v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
    generativeMemoryCreationEligibilityStateByAsset = v10->_generativeMemoryCreationEligibilityStateByAsset;
    v10->_generativeMemoryCreationEligibilityStateByAsset = v27;

    if (v10->_photoLibrary)
    {
      v29 = [objc_alloc(MEMORY[0x277D3C7F8]) initWithPhotoLibrary:v10->_photoLibrary];
    }

    else
    {
      v29 = 0;
    }

    safeAssetAnalyzer = v10->_safeAssetAnalyzer;
    v10->_safeAssetAnalyzer = v29;

    v31 = [[PGGraphTimeDomainBuildingHelper alloc] initWithGraph:v10->_graph];
    timeDomainBuildingHelper = v10->_timeDomainBuildingHelper;
    v10->_timeDomainBuildingHelper = v31;

    v33 = objc_alloc_init(PGGraphPeopleDomainBuildingHelper);
    peopleDomainBuildingHelper = v10->_peopleDomainBuildingHelper;
    v10->_peopleDomainBuildingHelper = v33;

    [(PGGraphBuilder *)v10 _buildSceneNodeCache];
    if (v10->_photoLibrary)
    {
      v10->_isSharedLibraryEnabled = [PGGraphBuilder isSharedLibraryEnabledForLibrary:?];
      [PGGraphBuilder sharedLibraryParticipantsForLibrary:v10->_photoLibrary];
    }

    else
    {
      v10->_isSharedLibraryEnabled = 0;
      [MEMORY[0x277CBEB98] set];
    }
    v35 = ;
    sharedLibraryParticipants = v10->_sharedLibraryParticipants;
    v10->_sharedLibraryParticipants = v35;

    if (+[PGEventLabelingConfiguration isEventLabelingEnabled])
    {
      v37 = v10->_photoLibrary;
      v64 = 0;
      v38 = [(PHPhotoLibrary *)v37 urlForApplicationDataFolderIdentifier:1 error:&v64];
      v39 = v64;
      if (v38)
      {
        graph = v10->_graph;
        v63 = 0;
        v41 = [PGEventLabelingFeaturesFileCache cacheForMomentGraphRebuildWithGraphServiceURL:v38 graph:graph error:&v63];
        v42 = v63;
        eventLabelingFeaturesCache = v10->_eventLabelingFeaturesCache;
        v10->_eventLabelingFeaturesCache = v41;

        if (!v10->_eventLabelingFeaturesCache)
        {
          v44 = +[PGLogging sharedLogging];
          v45 = [v44 loggingConnection];

          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            p_super = v42;
            _os_log_error_impl(&dword_22F0FC000, v45, OS_LOG_TYPE_ERROR, "[PGGraphBuilder] Error initializing EventLabeling cache: %@", buf, 0xCu);
          }
        }
      }

      else
      {
        v46 = +[PGLogging sharedLogging];
        v42 = [v46 loggingConnection];

        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          p_super = &v39->super;
          _os_log_error_impl(&dword_22F0FC000, v42, OS_LOG_TYPE_ERROR, "[PGGraphBuilder] Error initializing EventLabeling cache - nil service url: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v39 = v10->_eventLabelingFeaturesCache;
      v10->_eventLabelingFeaturesCache = 0;
    }

    v47 = [v8 locationCache];
    locationCache = v10->_locationCache;
    v10->_locationCache = v47;

    v49 = [v8 aoiCache];
    aoiCache = v10->_aoiCache;
    v10->_aoiCache = v49;

    v51 = [v8 poiCache];
    poiCache = v10->_poiCache;
    v10->_poiCache = v51;

    v53 = [v8 roiCache];
    roiCache = v10->_roiCache;
    v10->_roiCache = v53;

    v55 = [v8 natureCache];
    natureCache = v10->_natureCache;
    v10->_natureCache = v55;

    v57 = [v8 publicEventManager];
    publicEventManager = v10->_publicEventManager;
    v10->_publicEventManager = v57;

    v59 = [v8 throughputReportBlock];
    throughputReportBlock = v10->_throughputReportBlock;
    v10->_throughputReportBlock = v59;
  }

  v61 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (void)setLastIncrementalUpdateInvocationDate:(id)a3 inGraph:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 infoNode];
  if (v7)
  {
    v8 = [PGGraphInfoNode propertiesWithLastIncrementalUpdateInvocationOnDate:v5];
    [v6 persistModelProperties:v8 forNodeWithIdentifier:objc_msgSend(v7 clobberExisting:{"identifier"), 0}];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v9 = 0;
    _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[PGGraphBuilder] PGGraphInfoNode should not be nil when updating the dateOfLastIncrementalUpdateInvocation", v9, 2u);
  }
}

+ (void)prepareGraphForRebuild:(id)a3
{
  v12 = a3;
  [v12 enterBatch];
  [v12 setVersion:701];
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [MEMORY[0x277CBEAF8] currentLocale];
  v5 = [v4 localeIdentifier];

  v6 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v7 = [MEMORY[0x277D3AD60] currentRevGeoProvider];
  v8 = [MEMORY[0x277D277B0] canAccessContactsStore];
  v9 = [v12 infoNode];
  if (v9)
  {
    v10 = v9;
    v11 = [PGGraphInfoNode genericPropertiesWithCreationDate:v3 localeIdentifier:v5 languageIdentifiers:v6 geoServiceProviderID:v7 curationAlgorithmsVersion:12 contactsStoreAccess:v8];
    [v12 persistModelProperties:v11 forNodeWithIdentifier:-[MANode identifier](v10 clobberExisting:{"identifier"), 1}];
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x277D22C50]);
    v10 = [[PGGraphInfoNode alloc] initWithCreationDate:v3 localeIdentifier:v5 languageIdentifiers:v6 geoServiceProviderID:v7 curationAlgorithmsVersion:12 contactsStoreAccess:v8];
    [v11 addNode:v10];
    [v12 executeGraphChangeRequest:v11];
  }

  [v12 leaveBatch];
}

- (void)insertOwner:(id)a3 forPets:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277D22C50]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * v13);
        v15 = [PGGraphIsOwnerOfPetEdge alloc];
        v16 = [(PGGraphIsOwnerOfPetEdge *)v15 initFromPersonNode:v6 toPetNode:v14, v18];
        [v8 addEdge:v16];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  [(MAGraph *)self->_graph executeGraphChangeRequest:v8];
  v17 = *MEMORY[0x277D85DE8];
}

- (id)insertPet:(id)a3
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 name];
  v5 = v4;
  v6 = &stru_2843F5C58;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = [PGGraphPetNode alloc];
  v9 = [v3 localIdentifier];
  v40 = v7;
  v10 = -[PGGraphPetNode initWithLocalIdentifier:petSpecies:name:isFavorite:](v8, "initWithLocalIdentifier:petSpecies:name:isFavorite:", v9, [v3 species], v7, objc_msgSend(v3, "isFavorite"));

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v13 = [v3 momentNodes];
  v14 = [v13 temporarySet];

  v15 = [v14 countByEnumeratingWithState:&v54 objects:v61 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v55;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v55 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [[PGGraphPetPresentEdge alloc] initFromPetNode:v10 toMomentNode:*(*(&v54 + 1) + 8 * i)];
        [v11 addObject:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v54 objects:v61 count:16];
    }

    while (v16);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v20 = [v3 ownerNodes];
  v21 = [v20 temporarySet];

  v22 = [v21 countByEnumeratingWithState:&v50 objects:v60 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v51;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v51 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [[PGGraphIsOwnerOfPetEdge alloc] initFromPersonNode:*(*(&v50 + 1) + 8 * j) toPetNode:v10];
        [v12 addObject:v26];
      }

      v23 = [v21 countByEnumeratingWithState:&v50 objects:v60 count:16];
    }

    while (v23);
  }

  v27 = objc_alloc_init(MEMORY[0x277D22C50]);
  [v27 addNode:v10];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v28 = v11;
  v29 = [v28 countByEnumeratingWithState:&v46 objects:v59 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v47;
    do
    {
      for (k = 0; k != v30; ++k)
      {
        if (*v47 != v31)
        {
          objc_enumerationMutation(v28);
        }

        [v27 addEdge:*(*(&v46 + 1) + 8 * k)];
      }

      v30 = [v28 countByEnumeratingWithState:&v46 objects:v59 count:16];
    }

    while (v30);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v33 = v12;
  v34 = [v33 countByEnumeratingWithState:&v42 objects:v58 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v43;
    do
    {
      for (m = 0; m != v35; ++m)
      {
        if (*v43 != v36)
        {
          objc_enumerationMutation(v33);
        }

        [v27 addEdge:*(*(&v42 + 1) + 8 * m)];
      }

      v35 = [v33 countByEnumeratingWithState:&v42 objects:v58 count:16];
    }

    while (v35);
  }

  [(MAGraph *)self->_graph executeGraphChangeRequest:v27];
  v38 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)shouldUpdatePersonRepresentativeAssetUUIDsWithPositiveSceneCriteria:(id)a3 actionValueString:(id)a4 assetIsPassingSceneCriteria:(BOOL)a5 personLocalIdentifierIsDoingActionInAsset:(BOOL)a6
{
  v6 = a6;
  v9 = a4;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a3, "count")}];
  if ([v10 intValue] >= 1 && objc_msgSend(v9, "length"))
  {
    v11 = a5 && v6;
  }

  else if ([v10 intValue] >= 1 && a5 || (v11 = 0, objc_msgSend(v9, "length")) && v6)
  {
    v11 = 1;
  }

  return v11;
}

- (void)_connectPersonActivityMeaningNode:(id)a3 toMomentNode:(id)a4 withChangeRequest:(id)a5 representativeAssetUUIDsByPersonLocalIdentifier:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v19 = [[PGGraphPersonActivityMeaningEdge alloc] initFromMomentNode:v11 toPersonActivityMeaningNode:v12];
  [v10 addEdge:v19];
  v13 = [v12 personLocalIdentifier];
  v14 = [v9 objectForKeyedSubscript:v13];

  v15 = [v14 allObjects];
  v16 = [v15 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];
  v17 = [v16 componentsJoinedByString:{@", "}];

  v18 = -[PGGraphMomentFeaturesEdge initFromMomentNode:toFeatureNode:numberOfRelevantAssets:allAssetUUIDs:]([PGGraphMomentFeaturesEdge alloc], "initFromMomentNode:toFeatureNode:numberOfRelevantAssets:allAssetUUIDs:", v11, v12, [v14 count], v17);
  [v10 addEdge:v18];
}

- (void)_updatePersonActivitiesOfMomentNode:(id)a3 assets:(id)a4 graph:(id)a5 withPositiveSceneCriteriaByValidPersonActivityMeaningLabel:(id)a6 andActionCriteriaByValidPersonActivityMeaningLabel:(id)a7 validPersonActivityMeaningLabelByActionValue:(id)a8 changeRequest:(id)a9
{
  v130 = *MEMORY[0x277D85DE8];
  v78 = a3;
  v14 = a4;
  v77 = a5;
  v15 = a6;
  v16 = a7;
  v75 = a8;
  v74 = a9;
  v17 = MEMORY[0x277CBEB98];
  v76 = v15;
  v18 = [v15 allKeys];
  v19 = [v17 setWithArray:v18];
  v84 = v16;
  v20 = [v16 allKeys];
  v21 = [v19 setByAddingObjectsFromArray:v20];

  if ([v21 count])
  {
    v71 = v21;
    v87 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v88 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v122 = 0u;
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v70 = v14;
    obj = v14;
    v22 = [obj countByEnumeratingWithState:&v122 objects:v129 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v123;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v123 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v122 + 1) + 8 * i);
          v27 = [v26 curationModel];
          v28 = [v27 sceneModel];
          v29 = [v26 clsSceneClassifications];
          v30 = [v28 sceneNamesFromSceneClassifications:v29 passingThresholdOfType:1];

          if ([v30 count])
          {
            v31 = [v26 uuid];
            [v87 setObject:v30 forKeyedSubscript:v31];
          }

          v32 = [v26 mediaAnalysisProperties];
          v33 = [v32 mediaAnalysisVersion];

          v34 = [v26 clsFaceInformationSummary];
          v35 = [v34 faceInformationByConsolidatedPersonLocalIdentifier];

          v116[0] = MEMORY[0x277D85DD0];
          v116[1] = 3221225472;
          v116[2] = __252__PGGraphBuilder_MomentFeatures___updatePersonActivitiesOfMomentNode_assets_graph_withPositiveSceneCriteriaByValidPersonActivityMeaningLabel_andActionCriteriaByValidPersonActivityMeaningLabel_validPersonActivityMeaningLabelByActionValue_changeRequest___block_invoke;
          v116[3] = &unk_2788848E0;
          v117 = v88;
          v118 = v26;
          v119 = v75;
          v121 = v33;
          v120 = v84;
          [v35 enumerateKeysAndObjectsUsingBlock:v116];
        }

        v23 = [obj countByEnumeratingWithState:&v122 objects:v129 count:16];
      }

      while (v23);
    }

    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v72 = v71;
    v79 = [v72 countByEnumeratingWithState:&v112 objects:v128 count:16];
    if (v79)
    {
      v73 = *v113;
      do
      {
        v36 = 0;
        do
        {
          if (*v113 != v73)
          {
            objc_enumerationMutation(v72);
          }

          v83 = v36;
          v37 = *(*(&v112 + 1) + 8 * v36);
          v38 = [v76 objectForKeyedSubscript:{v37, v70}];
          v82 = v37;
          v39 = [PGMeaningActionCriteria actionValueStringUsingActionCriteriaByValidPersonActivityMeaningLabel:v84 withPersonActivityMeaningLabel:v37];
          v94 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v108 = 0u;
          v109 = 0u;
          v110 = 0u;
          v111 = 0u;
          v85 = obj;
          v89 = [v85 countByEnumeratingWithState:&v108 objects:v127 count:16];
          if (v89)
          {
            v86 = *v109;
            do
            {
              v40 = 0;
              do
              {
                if (*v109 != v86)
                {
                  objc_enumerationMutation(v85);
                }

                v91 = v40;
                v41 = *(*(&v108 + 1) + 8 * v40);
                v42 = [v41 clsConsolidatedPersonLocalIdentifiers];
                v43 = [v41 uuid];
                v44 = [v88 objectForKeyedSubscript:v43];
                v45 = [v44 objectForKeyedSubscript:v39];

                v92 = v41;
                v46 = [v41 uuid];
                v47 = [v87 objectForKeyedSubscript:v46];

                v90 = v47;
                v48 = [v47 intersectsSet:v38];
                v104 = 0u;
                v105 = 0u;
                v106 = 0u;
                v107 = 0u;
                v49 = v42;
                v50 = [v49 countByEnumeratingWithState:&v104 objects:v126 count:16];
                if (v50)
                {
                  v51 = v50;
                  v52 = *v105;
                  do
                  {
                    for (j = 0; j != v51; ++j)
                    {
                      if (*v105 != v52)
                      {
                        objc_enumerationMutation(v49);
                      }

                      v54 = *(*(&v104 + 1) + 8 * j);
                      if (-[PGGraphBuilder shouldUpdatePersonRepresentativeAssetUUIDsWithPositiveSceneCriteria:actionValueString:assetIsPassingSceneCriteria:personLocalIdentifierIsDoingActionInAsset:](self, "shouldUpdatePersonRepresentativeAssetUUIDsWithPositiveSceneCriteria:actionValueString:assetIsPassingSceneCriteria:personLocalIdentifierIsDoingActionInAsset:", v38, v39, v48, [v45 containsObject:v54]))
                      {
                        v55 = v39;
                        v56 = v38;
                        v57 = [v94 objectForKeyedSubscript:v54];
                        if (!v57)
                        {
                          v57 = objc_alloc_init(MEMORY[0x277CBEB58]);
                          [v94 setObject:v57 forKeyedSubscript:v54];
                        }

                        v58 = [v92 uuid];
                        [v57 addObject:v58];

                        v38 = v56;
                        v39 = v55;
                      }
                    }

                    v51 = [v49 countByEnumeratingWithState:&v104 objects:v126 count:16];
                  }

                  while (v51);
                }

                v40 = v91 + 1;
              }

              while (v91 + 1 != v89);
              v89 = [v85 countByEnumeratingWithState:&v108 objects:v127 count:16];
            }

            while (v89);
          }

          v81 = v38;

          v59 = MEMORY[0x277CBEB58];
          v60 = [v94 allKeys];
          v61 = [v59 setWithArray:v60];

          v62 = [PGGraphPersonActivityMeaningNodeCollection personActivityMeaningNodesForActivityLabel:v82 personLocalIdentifiers:v61 inGraph:v77];
          v100[0] = MEMORY[0x277D85DD0];
          v100[1] = 3221225472;
          v100[2] = __252__PGGraphBuilder_MomentFeatures___updatePersonActivitiesOfMomentNode_assets_graph_withPositiveSceneCriteriaByValidPersonActivityMeaningLabel_andActionCriteriaByValidPersonActivityMeaningLabel_validPersonActivityMeaningLabelByActionValue_changeRequest___block_invoke_2;
          v100[3] = &unk_278884908;
          v100[4] = self;
          v63 = v78;
          v101 = v63;
          v64 = v74;
          v102 = v64;
          v65 = v94;
          v103 = v65;
          v93 = v62;
          [v62 enumerateNodesUsingBlock:v100];
          v66 = [v62 personLocalIdentifiers];
          [v61 minusSet:v66];
          v67 = [PGGraphPersonNodeCollection personNodesForLocalIdentifiers:v61 inGraph:v77];
          v96[0] = MEMORY[0x277D85DD0];
          v96[1] = 3221225472;
          v96[2] = __252__PGGraphBuilder_MomentFeatures___updatePersonActivitiesOfMomentNode_assets_graph_withPositiveSceneCriteriaByValidPersonActivityMeaningLabel_andActionCriteriaByValidPersonActivityMeaningLabel_validPersonActivityMeaningLabelByActionValue_changeRequest___block_invoke_3;
          v96[3] = &unk_278884930;
          v96[4] = self;
          v96[5] = v82;
          v97 = v64;
          v98 = v63;
          v99 = v65;
          v68 = v65;
          [v67 enumerateNodesUsingBlock:v96];

          v36 = v83 + 1;
        }

        while (v83 + 1 != v79);
        v79 = [v72 countByEnumeratingWithState:&v112 objects:v128 count:16];
      }

      while (v79);
    }

    v14 = v70;
    v21 = v71;
  }

  v69 = *MEMORY[0x277D85DE8];
}

void __252__PGGraphBuilder_MomentFeatures___updatePersonActivitiesOfMomentNode_assets_graph_withPositiveSceneCriteriaByValidPersonActivityMeaningLabel_andActionCriteriaByValidPersonActivityMeaningLabel_validPersonActivityMeaningLabelByActionValue_changeRequest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = a2;
  v5 = [a3 traits];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        if ([v10 type] == 1)
        {
          v11 = *(a1 + 32);
          v12 = [*(a1 + 40) uuid];
          v13 = [v11 objectForKeyedSubscript:v12];

          if (!v13)
          {
            v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v14 = *(a1 + 32);
            v15 = [*(a1 + 40) uuid];
            [v14 setObject:v13 forKeyedSubscript:v15];
          }

          v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%i", objc_msgSend(v10, "value")];
          v17 = [*(a1 + 48) objectForKeyedSubscript:v16];
          [PGMeaningActionCriteria actionHighRecallThresholdForAssetMediaAnalysisVersion:*(a1 + 64) usingActionCriteriaByValidPersonActivityMeaningLabel:*(a1 + 56) andValidPersonActivity:v17];
          v19 = v18;
          [v10 score];
          if (v20 >= v19)
          {
            v21 = [v13 objectForKeyedSubscript:v16];
            if (!v21)
            {
              v21 = objc_alloc_init(MEMORY[0x277CBEB58]);
              [v13 setObject:v21 forKeyedSubscript:v16];
            }

            [v21 addObject:v23];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v7);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __252__PGGraphBuilder_MomentFeatures___updatePersonActivitiesOfMomentNode_assets_graph_withPositiveSceneCriteriaByValidPersonActivityMeaningLabel_andActionCriteriaByValidPersonActivityMeaningLabel_validPersonActivityMeaningLabelByActionValue_changeRequest___block_invoke_3(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 localIdentifier];
  if (v4)
  {
    v5 = [[PGGraphPersonActivityMeaningNode alloc] initWithPersonLocalIdentifier:v4 activity:*(a1 + 40)];
    [*(a1 + 48) addNode:v5];
    v6 = [[PGGraphPracticesActivityEdge alloc] initFromPersonNode:v3 toActivityNode:v5];
    [*(a1 + 48) addEdge:v6];
    [*(a1 + 32) _connectPersonActivityMeaningNode:v5 toMomentNode:*(a1 + 56) withChangeRequest:*(a1 + 48) representativeAssetUUIDsByPersonLocalIdentifier:*(a1 + 64)];
  }

  else
  {
    v7 = [*(a1 + 32) loggingConnection];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v3 name];
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_INFO, "[PGGraphBuilder+MomentFeatures] No person Local identifier for person node with name %@", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)criteriaEvaluatorsByValidPersonActivityMeaningLabelFromAssets:(id)a3 withPersonActivityMeaningCriteriaDictionaryByMeaningLabel:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v20 = v6;
    v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v7 = v6;
    v23 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v23)
    {
      v22 = *v29;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v29 != v22)
          {
            objc_enumerationMutation(v7);
          }

          v9 = *(*(&v28 + 1) + 8 * i);
          v10 = [v7 objectForKeyedSubscript:{v9, v20}];
          v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v12 = v10;
          v13 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v25;
            do
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v25 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v24 + 1) + 8 * j);
                if ([v17 allCriteriaPassForAssets:v5])
                {
                  [v11 addObject:v17];
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v14);
          }

          if ([v11 count])
          {
            [v21 setObject:v11 forKeyedSubscript:v9];
          }
        }

        v23 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v23);
    }

    v6 = v20;
  }

  else
  {
    v21 = MEMORY[0x277CBEC10];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)criteriaEvaluatorsByValidPersonActivityMeaningLabelFromMomentNode:(id)a3 sceneEdges:(id)a4 withPersonActivityMeaningCriteriaDictionaryByMeaningLabel:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    v10 = [[PGMeaningCriteriaMomentNodeCache alloc] initWithMomentNode:v7];
    v24 = v8;
    [(PGMeaningCriteriaMomentNodeCache *)v10 setSceneEdges:v8];
    v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v23 = v9;
    obj = v9;
    v27 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v27)
    {
      v26 = *v34;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v34 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v33 + 1) + 8 * i);
          v13 = [obj objectForKeyedSubscript:{v12, v23}];
          v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v15 = v13;
          v16 = [v15 countByEnumeratingWithState:&v29 objects:v37 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v30;
            do
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v30 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v29 + 1) + 8 * j);
                if ([v20 allCriteriaPassForMomentNode:v7 momentNodeCache:v10])
                {
                  [v14 addObject:v20];
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v29 objects:v37 count:16];
            }

            while (v17);
          }

          if ([v14 count])
          {
            [v25 setObject:v14 forKeyedSubscript:v12];
          }
        }

        v27 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v27);
    }

    v9 = v23;
    v8 = v24;
  }

  else
  {
    v25 = MEMORY[0x277CBEC10];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v25;
}

void __151__PGGraphBuilder_MomentFeatures___insertMomentFeaturesForMomentNode_momentEnvelope_assets_photoLibrary_featureProvider_atMomentIngest_curationContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v11 = [v5 componentsJoinedByString:{@", "}];
  v7 = [PGGraphMomentFeaturesEdge alloc];
  v8 = *(a1 + 32);
  v9 = [v5 count];

  v10 = [(PGGraphMomentFeaturesEdge *)v7 initFromMomentNode:v8 toFeatureNode:v6 numberOfRelevantAssets:v9 allAssetUUIDs:v11];
  [*(a1 + 40) addEdge:v10];
}

- (id)_removeInvalidPeopleEventEdgesFromMomentNode:(id)a3 edgesToUpsert:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[PGGraphAnniversaryEventEdge filter];
  v8 = [v7 labels];
  v9 = +[PGGraphBirthdayEventEdge filter];
  v10 = [v9 labels];
  v11 = [v8 setByAddingObjectsFromSet:v10];

  v12 = objc_alloc(MEMORY[0x277D22C20]);
  v13 = [v12 initWithLabels:v11 domain:301 properties:MEMORY[0x277CBEC10]];
  v14 = [v6 collection];

  v15 = [(MAEdgeCollection *)PGGraphEdgeCollection edgesFromNodes:v14 matchingFilter:v13];

  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __91__PGGraphBuilder_PeopleEvents___removeInvalidPeopleEventEdgesFromMomentNode_edgesToUpsert___block_invoke;
  v22[3] = &unk_278885D60;
  v23 = v5;
  v17 = v16;
  v24 = v17;
  v18 = v5;
  [v15 enumerateEdgesUsingBlock:v22];
  v19 = v24;
  v20 = v17;

  return v17;
}

void __91__PGGraphBuilder_PeopleEvents___removeInvalidPeopleEventEdgesFromMomentNode_edgesToUpsert___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([v3 isSameEdgeAsEdge:{*(*(&v10 + 1) + 8 * v8), v10}])
        {

          goto LABEL_11;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  [*(a1 + 40) addObject:v3];
LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
}

- (id)_anniversaryEventEdgeFromMomentNode:(id)a3 toPersonNode:(id)a4 confidence:(double)a5 insertIfNeededToChangeRequest:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [v10 collection];
  v14 = [v11 collection];
  v15 = [(PGGraphEdgeCollection *)PGGraphAnniversaryEventEdgeCollection edgesFromNodes:v13 toNodes:v14];
  v16 = [v15 anyEdge];

  if (v16)
  {
    v17 = [v16 propertyDictionary];
    v18 = [PGGraphAnniversaryEventEdge propertyDictionaryWithConfidence:a5];
    if (([v17 isEqualToDictionary:v18] & 1) == 0)
    {
      -[MAGraph persistModelProperties:forEdgeWithIdentifier:clobberExisting:](self->_graph, "persistModelProperties:forEdgeWithIdentifier:clobberExisting:", v18, [v16 identifier], 1);
      v19 = [(PGGraphEdgeCollection *)PGGraphAnniversaryEventEdgeCollection edgesFromNodes:v13 toNodes:v14];
      v20 = [v19 anyEdge];

      v16 = v20;
    }
  }

  else
  {
    v16 = [[PGGraphAnniversaryEventEdge alloc] initFromMomentNode:v10 toPersonNode:v11 confidence:a5];
    [v12 addEdge:v16];
  }

  return v16;
}

- (id)_birthdayEventEdgeFromMomentNode:(id)a3 toPersonNode:(id)a4 confidence:(double)a5 insertIfNeededToChangeRequest:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [v10 collection];
  v14 = [v11 collection];
  v15 = [(PGGraphEdgeCollection *)PGGraphBirthdayEventEdgeCollection edgesFromNodes:v13 toNodes:v14];
  v16 = [v15 anyEdge];

  if (v16)
  {
    v17 = [v16 propertyDictionary];
    v18 = [PGGraphBirthdayEventEdge propertyDictionaryWithConfidence:a5];
    if (([v17 isEqualToDictionary:v18] & 1) == 0)
    {
      -[MAGraph persistModelProperties:forEdgeWithIdentifier:clobberExisting:](self->_graph, "persistModelProperties:forEdgeWithIdentifier:clobberExisting:", v18, [v16 identifier], 1);
      v19 = [(PGGraphEdgeCollection *)PGGraphBirthdayEventEdgeCollection edgesFromNodes:v13 toNodes:v14];
      v20 = [v19 anyEdge];

      v16 = v20;
    }
  }

  else
  {
    v16 = [[PGGraphBirthdayEventEdge alloc] initFromMomentNode:v10 toPersonNode:v11 confidence:a5];
    [v12 addEdge:v16];
  }

  return v16;
}

- (id)_upsertPeopleEventEdgesFromMomentNode:(id)a3 matchingResults:(id)a4 changeRequest:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v31 = a3;
  v8 = a4;
  v30 = a5;
  v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v28 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:self->_graph];
  v9 = [v28 anyNode];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v33;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v32 + 1) + 8 * i);
        if ([v15 isMatching])
        {
          v16 = [v15 requiredCriteria];
          v17 = [v16 meaningNodeLabel];

          [v15 score];
          v19 = v18;
          if ([v17 isEqualToString:@"Birthday"])
          {
            v20 = [v15 requiredCriteria];
            v21 = [v20 additionalInfo];
            v22 = [v21 objectForKeyedSubscript:@"personLocalIdentifier"];

            v23 = [PGGraphPersonNodeCollection personNodesForLocalIdentifier:v22 inGraph:self->_graph];
            v24 = [v23 anyNode];

            if (v24)
            {
              v25 = [(PGGraphBuilder *)self _birthdayEventEdgeFromMomentNode:v31 toPersonNode:v24 confidence:v30 insertIfNeededToChangeRequest:v19];
            }

            else
            {
              v25 = 0;
            }

            if (v25)
            {
LABEL_16:
              [v29 addObject:v25];
            }
          }

          else if (v9)
          {
            if ([v17 isEqualToString:@"Anniversary"])
            {
              v25 = [(PGGraphBuilder *)self _anniversaryEventEdgeFromMomentNode:v31 toPersonNode:v9 confidence:v30 insertIfNeededToChangeRequest:v19];
              if (v25)
              {
                goto LABEL_16;
              }
            }
          }

          continue;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v12);
  }

  v26 = *MEMORY[0x277D85DE8];

  return v29;
}

- (void)upsertPeopleEventEdgesOfMomentNode:(id)a3 matchingResults:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D22C50];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  v10 = [(PGGraphBuilder *)self _upsertPeopleEventEdgesFromMomentNode:v8 matchingResults:v7 changeRequest:v9];

  v11 = [(PGGraphBuilder *)self _removeInvalidPeopleEventEdgesFromMomentNode:v8 edgesToUpsert:v10];

  if ([v11 count])
  {
    v12 = [(MAElementCollection *)[PGGraphEdgeCollection alloc] initWithArray:v11 graph:self->_graph];
    [v9 removeEdges:v12];
  }

  if ([v10 count] || objc_msgSend(v11, "count"))
  {
    [(MAGraph *)self->_graph executeGraphChangeRequest:v9];
    v13 = [(PGGraphBuilder *)self loggingConnection];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v17 = 134217984;
      v18 = [v11 count];
      _os_log_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_INFO, "[PGGraphBuilder+PeopleEvents] Successfully remove %lu PeopleEvent domain edges", &v17, 0xCu);
    }

    v14 = [(PGGraphBuilder *)self loggingConnection];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [v10 count];
      v17 = 134217984;
      v18 = v15;
      _os_log_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_INFO, "[PGGraphBuilder+PeopleEvents] Successfully upsert %lu PeopleEvent domain edges", &v17, 0xCu);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)performProcessingSteps:(id)a3 withGraphUpdate:(id)a4 progressBlock:(id)a5
{
  v72 = *MEMORY[0x277D85DE8];
  v44 = a3;
  v8 = a4;
  v43 = a5;
  v9 = _Block_copy(v43);
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  if (v9)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v60[3] >= 0.01)
    {
      v60[3] = Current;
      v58 = 0;
      v9[2](v9, &v58, 0.0);
      v37 = *(v64 + 24) | v58;
      *(v64 + 24) = v37;
      if ((v37 & 1) != 0 || ![(MAGraph *)self->_graph noFatalError])
      {
        v38 = MEMORY[0x277D86220];
        v39 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          v40 = *(v64 + 24);
          v41 = [(MAGraph *)self->_graph noFatalError];
          *buf = 67109890;
          LODWORD(v69) = v40;
          WORD2(v69) = 1024;
          *(&v69 + 6) = !v41;
          WORD5(v69) = 1024;
          HIDWORD(v69) = 54;
          v70 = 2080;
          v71 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphBuilder+Processing.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled (%d) or fatal (%d) at line %d in file %s", buf, 0x1Eu);
        }

        goto LABEL_39;
      }
    }
  }

  v46 = [(PGGraphBuilder *)self loggingConnection];
  [(MAGraph *)self->_graph enterBatch];
  v11 = [v44 count];
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v44;
  v12 = [obj countByEnumeratingWithState:&v54 objects:v67 count:16];
  if (v12)
  {
    v13 = 1.0 / v11;
    v14 = *v55;
    v15 = 0.0;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v55 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v54 + 1) + 8 * i);
        v18 = objc_autoreleasePoolPush();
        v19 = [v17 shouldRunWithGraphUpdate:v8];
        v20 = v46;
        v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
        if (v19)
        {
          if (v21)
          {
            v22 = objc_opt_class();
            v23 = NSStringFromClass(v22);
            *buf = 138412290;
            *&v69 = v23;
            _os_log_impl(&dword_22F0FC000, v20, OS_LOG_TYPE_INFO, "GraphBuilder - Starting %@", buf, 0xCu);
          }

          v47[0] = MEMORY[0x277D85DD0];
          v47[1] = 3221225472;
          v47[2] = __83__PGGraphBuilder_Processing__performProcessingSteps_withGraphUpdate_progressBlock___block_invoke;
          v47[3] = &unk_278886858;
          v51 = v15;
          v52 = v13;
          v48 = v9;
          v49 = &v59;
          v53 = 0x3F847AE147AE147BLL;
          v50 = &v63;
          [v17 runWithGraphUpdate:v8 progressBlock:v47];
          if (*(v64 + 24) == 1)
          {
            v24 = 0;
            v25 = v48;
LABEL_21:

            goto LABEL_25;
          }

          v34 = [(MAGraph *)self->_graph noFatalError];

          if (!v34)
          {
LABEL_23:
            v24 = 0;
            goto LABEL_25;
          }
        }

        else
        {
          if (v21)
          {
            v26 = objc_opt_class();
            v27 = NSStringFromClass(v26);
            *buf = 138412290;
            *&v69 = v27;
            _os_log_impl(&dword_22F0FC000, v20, OS_LOG_TYPE_INFO, "GraphBuilder - Skipping %@", buf, 0xCu);
          }
        }

        v15 = v13 + v15;
        if (v9)
        {
          v28 = CFAbsoluteTimeGetCurrent();
          if (v28 - v60[3] >= 0.01)
          {
            v60[3] = v28;
            buf[0] = 0;
            v9[2](v9, buf, v15);
            v29 = *(v64 + 24) | buf[0];
            *(v64 + 24) = v29;
            if (v29)
            {
              goto LABEL_23;
            }
          }
        }

        v30 = [(PGGraphBuilder *)self throughputReportBlock];
        v31 = v30 == 0;

        if (!v31)
        {
          v25 = [(PGGraphBuilder *)self throughputReportBlock];
          v32 = objc_opt_class();
          v33 = NSStringFromClass(v32);
          (*(v25 + 2))(v25, 1, v33);

          v24 = 1;
          goto LABEL_21;
        }

        v24 = 1;
LABEL_25:
        objc_autoreleasePoolPop(v18);
        if (!v24)
        {
          goto LABEL_28;
        }
      }

      v12 = [obj countByEnumeratingWithState:&v54 objects:v67 count:16];
    }

    while (v12);
  }

LABEL_28:

  [(MAGraph *)self->_graph leaveBatch];
  if (v9)
  {
    v35 = CFAbsoluteTimeGetCurrent();
    if (v35 - v60[3] >= 0.01)
    {
      v60[3] = v35;
      v58 = 0;
      v9[2](v9, &v58, 1.0);
      v36 = *(v64 + 24) | v58;
      *(v64 + 24) = v36;
      if ((v36 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        LODWORD(v69) = 85;
        WORD2(v69) = 2080;
        *(&v69 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphBuilder+Processing.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }
  }

LABEL_39:
  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(&v63, 8);

  v42 = *MEMORY[0x277D85DE8];
}

void __83__PGGraphBuilder_Processing__performProcessingSteps_withGraphUpdate_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    Current = CFAbsoluteTimeGetCurrent();
    v9 = *(*(a1 + 40) + 8);
    if (Current - *(v9 + 24) >= *(a1 + 72))
    {
      *(v9 + 24) = Current;
      (*(*(a1 + 32) + 16))(v6 + v7 * a3);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (void)performPostprocessingWithGraphUpdate:(id)a3 withRecipe:(id)a4 progressBlock:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PGGraphBuilder *)self loggingConnection];
  v12 = os_signpost_id_generate(v11);
  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PostProcessing", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v15 = mach_absolute_time();
  [(PGGraph *)self->_graph invalidateProcessingCaches];
  v16 = [v9 postprocessorsWithGraphBuilder:self];

  [(PGGraphBuilder *)self performProcessingSteps:v16 withGraphUpdate:v10 progressBlock:v8];
  v17 = mach_absolute_time();
  v18 = info;
  v19 = v14;
  v20 = v19;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v20, OS_SIGNPOST_INTERVAL_END, v12, "PostProcessing", "", buf, 2u);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v24 = "PostProcessing";
    v25 = 2048;
    v26 = ((((v17 - v15) * v18.numer) / v18.denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v20, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)performPreprocessingWithGraphUpdate:(id)a3 withRecipe:(id)a4 progressBlock:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PGGraphBuilder *)self loggingConnection];
  v12 = os_signpost_id_generate(v11);
  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PreProcessing", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v15 = mach_absolute_time();
  v16 = [v9 preprocessorsWithGraphBuilder:self];

  [(PGGraphBuilder *)self performProcessingSteps:v16 withGraphUpdate:v10 progressBlock:v8];
  v17 = mach_absolute_time();
  v18 = info;
  v19 = v14;
  v20 = v19;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v20, OS_SIGNPOST_INTERVAL_END, v12, "PreProcessing", "", buf, 2u);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v24 = "PreProcessing";
    v25 = 2048;
    v26 = ((((v17 - v15) * v18.numer) / v18.denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v20, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)insertMomentNodeForMoment:(id)a3
{
  v4 = a3;
  v5 = [[PGGraphMomentNode alloc] initFromMoment:v4];

  v6 = objc_alloc_init(MEMORY[0x277D22C50]);
  [v6 addNode:v5];
  [(MAGraph *)self->_graph executeGraphChangeRequest:v6];

  return v5;
}

- (id)nodesForMomentsInHighlight:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 photoLibrary];
  v6 = [v5 librarySpecificFetchOptions];

  v7 = [MEMORY[0x277CD9958] fetchMomentsInHighlight:v4 options:v6];
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "count")}];
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

        v14 = [*(*(&v19 + 1) + 8 * i) uuid];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v15 = [PGGraphMomentNodeCollection momentNodesForArrayOfUUIDs:v8 inGraph:self->_graph];
  v16 = [v15 set];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)nodesForHighlightsInHighlightDayGroup:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 photoLibrary];
  v6 = [v5 librarySpecificFetchOptions];

  v7 = [MEMORY[0x277CD9958] fetchChildDayGroupHighlightsForHighlight:v4 options:v6];
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "count")}];
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

        v14 = [*(*(&v19 + 1) + 8 * i) uuid];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v15 = [PGGraphHighlightNodeCollection highlightNodesForArrayOfUUIDs:v8 inGraph:self->_graph];
  v16 = [v15 set];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)insertHighlightGroupNodeWithHighlight:(id)a3
{
  v4 = a3;
  v5 = [PGGraphHighlightNode propertiesWithHighlight:v4];
  v22 = 0;
  v6 = [(PGMutableGraph *)self->_graph addUniqueNodeWithLabel:@"HighlightGroup" domain:102 properties:v5 didCreate:&v22];
  graph = self->_graph;
  v8 = [v4 type];

  v9 = [(PGGraph *)graph nodeLabelForHighlightType:v8];
  if ((v22 & 1) == 0)
  {
    v10 = [v6 collection];
    v11 = [v10 typeNodes];
    v12 = [v11 anyNode];
    v13 = [v12 label];
    v14 = [v13 isEqualToString:v9];

    if (v14)
    {
      goto LABEL_6;
    }

    v15 = [v6 collection];
    v16 = +[PGGraphHasTypeEdge filter];
    v17 = [(MAEdgeCollection *)PGGraphEdgeCollection edgesFromNodes:v15 matchingFilter:v16];

    v18 = objc_alloc_init(MEMORY[0x277D22C50]);
    [v18 removeEdges:v17];
    [(MAGraph *)self->_graph executeGraphChangeRequest:v18];
  }

  if ([v9 length])
  {
    v19 = [(PGMutableGraph *)self->_graph addUniqueNodeWithLabel:v9 domain:103 properties:0 didCreate:0];
    v20 = [(PGMutableGraph *)self->_graph addUniqueEdgeWithLabel:@"HAS_TYPE" sourceNode:v6 targetNode:v19 domain:103 properties:0];
  }

LABEL_6:

  return v6;
}

- (void)updateHighlightsForHighlightDayGroupNode:(id)a3 nodesForHighlightsInHighlightDayGroup:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x277D22C50];
  v8 = a4;
  v9 = objc_alloc_init(v7);
  v10 = [v6 collection];
  v11 = [(MAElementCollection *)[PGGraphHighlightNodeCollection alloc] initWithSet:v8 graph:self->_graph];

  v12 = [(PGGraphHighlightNodeCollection *)v11 highlightGroupNodes];
  v23 = [v12 collectionBySubtracting:v10];

  v13 = +[PGGraphGroupContainsEdge filter];
  v14 = [(MAEdgeCollection *)PGGraphEdgeCollection edgesFromNodes:v23 toNodes:v11 matchingFilter:v13];

  [v9 removeEdges:v14];
  v15 = [v10 highlightNodes];
  v16 = [v15 collectionBySubtracting:v11];
  v17 = +[PGGraphGroupContainsEdge filter];
  v18 = [(MAEdgeCollection *)PGGraphEdgeCollection edgesFromNodes:v10 toNodes:v16 matchingFilter:v17];

  [v9 removeEdges:v18];
  v19 = [(MAElementCollection *)v11 collectionBySubtracting:v15];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __108__PGGraphBuilder_Highlight__updateHighlightsForHighlightDayGroupNode_nodesForHighlightsInHighlightDayGroup___block_invoke;
  v24[3] = &unk_278887AA0;
  v25 = v6;
  v26 = v9;
  v20 = v9;
  v21 = v6;
  [v19 enumerateNodesUsingBlock:v24];
  [(MAGraph *)self->_graph executeGraphChangeRequest:v20];
}

void __108__PGGraphBuilder_Highlight__updateHighlightsForHighlightDayGroupNode_nodesForHighlightsInHighlightDayGroup___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PGGraphGroupContainsEdge alloc] initFromHighlightGroupNode:*(a1 + 32) toHighlightNode:v3];

  [*(a1 + 40) addEdge:v4];
}

- (void)insertHighlightDayGroupsWithGraphUpdate:(id)a3 progressBlock:(id)a4
{
  v64 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = 0.0;
  v50 = _Block_copy(v7);
  if (v50)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current >= 0.01)
    {
      v59 = 0;
      v50[2](v50, &v59, 0.0);
      if (v59 == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v63 = 184;
          *&v63[4] = 2080;
          *&v63[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/PGGraphBuilder+Highlight.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        goto LABEL_48;
      }

      v8 = Current;
    }
  }

  v44 = v7;
  v45 = v6;
  v10 = [v6 highlightDayGroupsToIngest];
  v11 = [(PGGraphBuilder *)self loggingConnection];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [v10 count];
    *buf = 134217984;
    *v63 = v12;
    _os_log_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_INFO, "Batch Updates - About to insert %lu new highlight groups", buf, 0xCu);
  }

  v13 = [(PGGraphBuilder *)self photoLibrary];
  v14 = [v13 librarySpecificFetchOptions];

  v47 = v14;
  [v14 setShouldPrefetchCount:1];
  v15 = [v10 count];
  v46 = [MEMORY[0x277CBEB58] setWithCapacity:v15];
  v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v15];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v17 = v10;
  v18 = [v17 countByEnumeratingWithState:&v55 objects:v61 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v56;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v56 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [*(*(&v55 + 1) + 8 * i) uuid];
        [v16 addObject:v22];
      }

      v19 = [v17 countByEnumeratingWithState:&v55 objects:v61 count:16];
    }

    while (v19);
  }

  v43 = [(PGGraphHighlightNodeCollection *)PGGraphHighlightGroupNodeCollection highlightNodesForArrayOfUUIDs:v16 inGraph:self->_graph];
  v49 = [v43 highlightNodeByHighlightUUID];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v23 = v17;
  v24 = [v23 countByEnumeratingWithState:&v51 objects:v60 count:16];
  if (v24)
  {
    v26 = v24;
    v27 = 0;
    v28 = *v52;
    v29 = v15;
    *&v25 = 138412290;
    v42 = v25;
    obj = v23;
LABEL_18:
    v30 = 0;
    while (1)
    {
      if (*v52 != v28)
      {
        objc_enumerationMutation(obj);
      }

      v31 = *(*(&v51 + 1) + 8 * v30);
      v32 = objc_autoreleasePoolPush();
      v33 = [v31 uuid];
      v34 = [v49 objectForKeyedSubscript:v33];

      if (v34)
      {
        goto LABEL_22;
      }

      v34 = [MEMORY[0x277CD9958] fetchChildDayGroupHighlightsForHighlight:v31 options:v47];
      if ([v34 count])
      {
        break;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      v35 = [v31 uuid];
      *buf = v42;
      *v63 = v35;
      _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Not inserting highlightDayGroupNode (%@) because it has no children", buf, 0xCu);
LABEL_27:

LABEL_28:
      objc_autoreleasePoolPop(v32);
      if (v26 == ++v30)
      {
        v23 = obj;
        v39 = [obj countByEnumeratingWithState:&v51 objects:v60 count:16];
        v26 = v39;
        if (v39)
        {
          goto LABEL_18;
        }

        goto LABEL_38;
      }
    }

    v37 = [(PGGraphBuilder *)self insertHighlightGroupNodeWithHighlight:v31];
    if (!v37)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "[PGGraphBuilder+Highlight] calling this function insertHighlightGroupNodeWithHighlight: should not return nil", buf, 2u);
      }

      goto LABEL_28;
    }

    v38 = v37;
    [v46 addObject:v37];

    v34 = v38;
LABEL_22:
    v35 = [(PGGraphBuilder *)self nodesForHighlightsInHighlightDayGroup:v31, v42];
    [(PGGraphBuilder *)self updateHighlightsForHighlightDayGroupNode:v34 nodesForHighlightsInHighlightDayGroup:v35];
    if (v50)
    {
      v36 = CFAbsoluteTimeGetCurrent();
      if (v36 - v8 >= 0.01)
      {
        v59 = 0;
        v50[2](v50, &v59, v27 / v29 * 0.5 + 0.2);
        if (v59)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v63 = 232;
            *&v63[4] = 2080;
            *&v63[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/PGGraphBuilder+Highlight.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          objc_autoreleasePoolPop(v32);
          v23 = obj;

          v7 = v44;
          v6 = v45;
          v40 = v46;
          goto LABEL_47;
        }

        v8 = v36;
      }
    }

    ++v27;
    goto LABEL_27;
  }

LABEL_38:

  v7 = v44;
  v6 = v45;
  v40 = v46;
  if (v50 && CFAbsoluteTimeGetCurrent() - v8 >= 0.01 && (v59 = 0, v50[2](v50, &v59, 1.0), v59))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v63 = 237;
      *&v63[4] = 2080;
      *&v63[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/PGGraphBuilder+Highlight.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }
  }

  else
  {
    [v45 setInsertedHighlightDayGroupNodes:{v46, v42}];
  }

LABEL_47:

LABEL_48:
  v41 = *MEMORY[0x277D85DE8];
}

- (id)_propertiesFromIngestHighlight:(id)a3
{
  v24[5] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 uuid];
  v5 = v4;
  v6 = &stru_2843F5C58;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v24[0] = v7;
  v23[0] = @"id";
  v23[1] = @"tzs";
  v8 = MEMORY[0x277CCABB0];
  v9 = [v3 localStartDate];
  [v9 timeIntervalSince1970];
  v10 = [v8 numberWithDouble:?];
  v24[1] = v10;
  v23[2] = @"utcs";
  v11 = MEMORY[0x277CCABB0];
  v12 = [v3 startDate];
  [v12 timeIntervalSince1970];
  v13 = [v11 numberWithDouble:?];
  v24[2] = v13;
  v23[3] = @"tze";
  v14 = MEMORY[0x277CCABB0];
  v15 = [v3 localEndDate];
  [v15 timeIntervalSince1970];
  v16 = [v14 numberWithDouble:?];
  v24[3] = v16;
  v23[4] = @"utce";
  v17 = MEMORY[0x277CCABB0];
  v18 = [v3 endDate];

  [v18 timeIntervalSince1970];
  v19 = [v17 numberWithDouble:?];
  v24[4] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:5];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)updateHighlightNode:(id)a3 withHighlight:(id)a4
{
  v6 = a3;
  v9 = [(PGGraphBuilder *)self _propertiesFromIngestHighlight:a4];
  graph = self->_graph;
  v8 = [v6 identifier];

  [(MAGraph *)graph persistModelProperties:v9 forNodeWithIdentifier:v8 clobberExisting:0];
}

- (id)insertHighlightNodeWithHighlight:(id)a3
{
  v4 = a3;
  v5 = [v4 uuid];
  v6 = [PGGraphHighlightNodeCollection highlightNodeForUUID:v5 inGraph:self->_graph];

  if ([v6 count])
  {
    v7 = [v6 anyNode];
  }

  else
  {
    v7 = [[PGGraphHighlightNode alloc] initFromHighlight:v4];
    v8 = objc_alloc_init(MEMORY[0x277D22C50]);
    [v8 addNode:v7];
    [(MAGraph *)self->_graph executeGraphChangeRequest:v8];
  }

  return v7;
}

- (void)updateMomentsForHighlightNode:(id)a3 nodesForMomentsInHighlight:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x277D22C50];
  v8 = a4;
  v9 = objc_alloc_init(v7);
  v10 = [(MANodeCollection *)[PGGraphHighlightNodeCollection alloc] initWithNode:v6];
  v11 = [(MAElementCollection *)[PGGraphMomentNodeCollection alloc] initWithSet:v8 graph:self->_graph];

  v12 = [(PGGraphMomentNodeCollection *)v11 highlightNodes];
  v13 = [v12 collectionBySubtracting:v10];

  v14 = +[PGGraphContainsEdge filter];
  v15 = [(MAEdgeCollection *)PGGraphEdgeCollection edgesFromNodes:v13 toNodes:v11 matchingFilter:v14];
  [v9 removeEdges:v15];

  v16 = [(PGGraphHighlightNodeCollection *)v10 momentNodes];
  v17 = [v16 collectionBySubtracting:v11];
  v18 = +[PGGraphContainsEdge filter];
  v19 = [(MAEdgeCollection *)PGGraphEdgeCollection edgesFromNodes:v10 toNodes:v17 matchingFilter:v18];
  [v9 removeEdges:v19];

  v20 = [(MAElementCollection *)v11 collectionBySubtracting:v16];
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __86__PGGraphBuilder_Highlight__updateMomentsForHighlightNode_nodesForMomentsInHighlight___block_invoke;
  v26 = &unk_278888B78;
  v27 = v6;
  v28 = v9;
  v21 = v9;
  v22 = v6;
  [v20 enumerateNodesUsingBlock:&v23];
  [(MAGraph *)self->_graph executeGraphChangeRequest:v21, v23, v24, v25, v26];
}

void __86__PGGraphBuilder_Highlight__updateMomentsForHighlightNode_nodesForMomentsInHighlight___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PGGraphContainsEdge alloc] initFromHighlightNode:*(a1 + 32) toMomentNode:v3];

  [*(a1 + 40) addEdge:v4];
}

- (void)insertHighlightDaysWithGraphUpdate:(id)a3 progressBlock:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = 0.0;
  v9 = &unk_22F784000;
  v35 = _Block_copy(v7);
  if (v35)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current >= 0.01)
    {
      v41 = 0;
      v35[2](v35, &v41, 0.0);
      if (v41 == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v44 = 79;
          *&v44[4] = 2080;
          *&v44[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/PGGraphBuilder+Highlight.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        goto LABEL_37;
      }

      v8 = Current;
    }
  }

  v11 = [v6 highlightDaysToIngest];
  v12 = [(PGGraphBuilder *)self loggingConnection];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [v11 count];
    *buf = 134217984;
    *v44 = v13;
    _os_log_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_INFO, "Batch Updates - About to insert %lu new highlights", buf, 0xCu);
  }

  [(MAGraph *)self->_graph enterBatch];
  v14 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v11, "count")}];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v11;
  v15 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v15)
  {
    v16 = v15;
    v32 = v7;
    v33 = v6;
    v17 = 0;
    v18 = *v38;
    v34 = v14;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v38 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v37 + 1) + 8 * i);
        v21 = objc_autoreleasePoolPush();
        v22 = [v20 uuid];
        v23 = [PGGraphHighlightNodeCollection highlightNodeForUUID:v22 inGraph:self->_graph];
        v24 = [v23 anyNode];

        if (!v24)
        {
          v24 = [(PGGraphBuilder *)self insertHighlightNodeWithHighlight:v20];
          [v34 addObject:v24];
        }

        v25 = [(PGGraphBuilder *)self nodesForMomentsInHighlight:v20, v32, v33];
        [(PGGraphBuilder *)self updateMomentsForHighlightNode:v24 nodesForMomentsInHighlight:v25];
        v26 = [obj count];
        if (v35)
        {
          v27 = v26;
          v28 = CFAbsoluteTimeGetCurrent();
          if (v28 - v8 >= 0.01)
          {
            buf[0] = 0;
            v35[2](v35, buf, v17 / v27 * 0.5 + 0.2);
            if (buf[0])
            {

              objc_autoreleasePoolPop(v21);
              v29 = 1;
              v8 = v28;
              goto LABEL_24;
            }

            v8 = v28;
          }
        }

        ++v17;

        objc_autoreleasePoolPop(v21);
      }

      v16 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }

    v29 = 0;
LABEL_24:
    v7 = v32;
    v6 = v33;
    v9 = &unk_22F784000;
    v14 = v34;
  }

  else
  {
    v29 = 0;
  }

  [(MAGraph *)self->_graph leaveBatch];
  if (![(MAGraph *)self->_graph noFatalError])
  {
    v30 = [(PGGraphBuilder *)self loggingConnection];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F0FC000, v30, OS_LOG_TYPE_ERROR, "[PGGraphBuilder] encountered graph fatal error, cancelling operation", buf, 2u);
    }

    v29 = 1;
  }

  if (v35 && CFAbsoluteTimeGetCurrent() - v8 >= v9[76] && (v41 = 0, v35[2](v35, &v41, 1.0), v41 | v29))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v44 = 114;
      *&v44[4] = 2080;
      *&v44[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/PGGraphBuilder+Highlight.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }
  }

  else
  {
    [v6 setInsertedHighlightNodes:v14];
  }

LABEL_37:
  v31 = *MEMORY[0x277D85DE8];
}

- (void)insertHighlightsWithGraphUpdate:(id)a3 progressBlock:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _Block_copy(v7);
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  if (!v8 || (Current = CFAbsoluteTimeGetCurrent(), Current - v26[3] < 0.01) || (v26[3] = Current, v24 = 0, (*(v8 + 2))(v8, &v24, 0.0), v10 = *(v30 + 24) | v24, *(v30 + 24) = v10, (v10 & 1) == 0))
  {
    [(MAGraph *)self->_graph enterBatch];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __75__PGGraphBuilder_Highlight__insertHighlightsWithGraphUpdate_progressBlock___block_invoke;
    v19[3] = &unk_27888A188;
    v11 = v8;
    v20 = v11;
    v21 = &v25;
    v22 = &v29;
    v23 = 0x3F847AE147AE147BLL;
    [(PGGraphBuilder *)self insertHighlightDaysWithGraphUpdate:v6 progressBlock:v19];
    [(MAGraph *)self->_graph leaveBatch];
    if ([(MAGraph *)self->_graph noFatalError])
    {
      if ((v30[3] & 1) == 0)
      {
        [(MAGraph *)self->_graph enterBatch];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __75__PGGraphBuilder_Highlight__insertHighlightsWithGraphUpdate_progressBlock___block_invoke_254;
        v14[3] = &unk_27888A188;
        v15 = v11;
        v16 = &v25;
        v17 = &v29;
        v18 = 0x3F847AE147AE147BLL;
        [(PGGraphBuilder *)self insertHighlightDayGroupsWithGraphUpdate:v6 progressBlock:v14];
        [(MAGraph *)self->_graph leaveBatch];
        if (*(v30 + 24) == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v34 = 73;
          v35 = 2080;
          v36 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/PGGraphBuilder+Highlight.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

LABEL_17:
        goto LABEL_18;
      }
    }

    else
    {
      v12 = [(PGGraphBuilder *)self loggingConnection];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_ERROR, "[PGGraphBuilder] encountered graph fatal error, cancelling operation", buf, 2u);
      }

      *(v30 + 24) = 1;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v34 = 66;
      v35 = 2080;
      v36 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/PGGraphBuilder+Highlight.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    goto LABEL_17;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v34 = 55;
    v35 = 2080;
    v36 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/PGGraphBuilder+Highlight.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_18:
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);

  v13 = *MEMORY[0x277D85DE8];
}

void __75__PGGraphBuilder_Highlight__insertHighlightsWithGraphUpdate_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __75__PGGraphBuilder_Highlight__insertHighlightsWithGraphUpdate_progressBlock___block_invoke_254(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.5 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (void)deleteHighlightsWithGraphUpdate:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 uuidsOfHighlightsToDelete];
  v6 = [v5 count];
  v7 = [(PGGraphBuilder *)self loggingConnection];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v14 = 134217984;
    v15 = v6;
    _os_log_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_INFO, "Batch Updates - About to delete %lu Highlights", &v14, 0xCu);
  }

  v8 = [PGGraphHighlightNodeCollection highlightNodesForUUIDs:v5 inGraph:self->_graph];
  v9 = [v8 count];
  if (v9 != v6)
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:v5];
    v11 = [v8 uuids];
    [v10 minusSet:v11];

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = v10;
      _os_log_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_INFO, "Failed to lookup Highlight nodes for deletion with UUIDs: %@", &v14, 0xCu);
    }
  }

  if (v9)
  {
    v12 = objc_alloc_init(MEMORY[0x277D22C50]);
    [v12 removeNodes:v8];
    [(MAGraph *)self->_graph executeGraphChangeRequest:v12];
    [v4 setHasDeletedHighlightNodes:1];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v14 = 134218240;
    v15 = v9;
    v16 = 2048;
    v17 = v6;
    _os_log_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_INFO, "Batch Updates - Deleted %lu Highlights (%lu requested)", &v14, 0x16u);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)insertPublicEvent:(id)a3 fromEventNode:(id)a4
{
  v101[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v62 = a4;
  v100[0] = @"id";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v6, "muid")}];
  v100[1] = @"name";
  v101[0] = v7;
  v8 = [v6 name];
  v101[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v101 forKeys:v100 count:2];
  v63 = [v9 mutableCopy];

  v10 = [v6 expectedAttendance];
  if ([v6 hasExpectedAttendance] && v10 >= 1)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
    [v63 setObject:v11 forKeyedSubscript:@"attdc"];
  }

  if (_os_feature_enabled_impl())
  {
    v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "canUseWithoutBusiness")}];
    [v63 setObject:v12 forKeyedSubscript:@"canUseWithoutBusiness"];

    v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "supportsEventExperience")}];
    [v63 setObject:v13 forKeyedSubscript:@"supportsEventExperience"];
  }

  v14 = [v6 identifier];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = &stru_2843F5C58;
  }

  [v63 setObject:v16 forKeyedSubscript:@"eventID"];

  v86 = 0;
  [(PGMutableGraph *)self->_graph addUniqueNodeWithLabel:@"PublicEvent" domain:900 properties:v63 didCreate:&v86];
  v18 = v17 = v6;
  v19 = [(PGMutableGraph *)self->_graph addUniqueEdgeWithLabel:@"PUBLIC_EVENT" sourceNode:v62 targetNode:v18 domain:900 properties:0];
  if (v86 == 1)
  {
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v61 = v17;
    v20 = [v17 performers];
    v21 = [v20 countByEnumeratingWithState:&v82 objects:v99 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v83;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v83 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v82 + 1) + 8 * i);
          v26 = [v25 localizedName];
          if ([v26 length])
          {
            v27 = [v25 iTunesIdentifier];
            if ([v27 length])
            {
              v95[0] = @"name";
              v95[1] = @"id";
              v96[0] = v26;
              v96[1] = v27;
              v28 = MEMORY[0x277CBEAC0];
              v29 = v96;
              v30 = v95;
              v31 = 2;
            }

            else
            {
              v93 = @"name";
              v94 = v26;
              v28 = MEMORY[0x277CBEAC0];
              v29 = &v94;
              v30 = &v93;
              v31 = 1;
            }

            v33 = [v28 dictionaryWithObjects:v29 forKeys:v30 count:v31];
            v34 = [(PGMutableGraph *)self->_graph addUniqueNodeWithLabel:@"Performer" domain:900 properties:v33 didCreate:0];
            v35 = [(PGMutableGraph *)self->_graph addUniqueEdgeWithLabel:@"PERFORMER" sourceNode:v18 targetNode:v34 domain:900 properties:0];
          }

          else
          {
            v32 = +[PGLogging sharedLogging];
            v33 = [v32 loggingConnection];

            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v98 = v25;
              _os_log_impl(&dword_22F0FC000, v33, OS_LOG_TYPE_INFO, "Not ingesting performer with empty name %@", buf, 0xCu);
            }
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v82 objects:v99 count:16];
      }

      while (v22);
    }

    v64 = [objc_opt_class() supportedCategories];
    v68 = [v64 count];
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    obj = [v61 categories];
    v36 = [obj countByEnumeratingWithState:&v78 objects:v92 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v79;
      v65 = *v79;
      do
      {
        v39 = 0;
        v66 = v37;
        do
        {
          if (*v79 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v40 = *(*(&v78 + 1) + 8 * v39);
          v73 = [v40 category];
          if (![v73 length])
          {
            v44 = +[PGLogging sharedLogging];
            v45 = [v44 loggingConnection];

            if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v98 = v40;
              _os_log_impl(&dword_22F0FC000, v45, OS_LOG_TYPE_INFO, "Not ingesting empty categoryName string for category %@", buf, 0xCu);
            }

            goto LABEL_52;
          }

          if (!v68 || [v64 containsObject:v73])
          {
            v41 = [v40 localizedName];
            v72 = v39;
            v70 = v41;
            if (v41 && (v42 = v41, [v41 length]))
            {
              v90 = @"lcln";
              v91 = v42;
              v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
            }

            else
            {
              v43 = MEMORY[0x277CBEC10];
            }

            v71 = v43;
            v69 = [PGMutableGraph addUniqueNodeWithLabel:"addUniqueNodeWithLabel:domain:properties:didCreate:" domain:v73 properties:901 didCreate:?];
            v46 = [PGMutableGraph addUniqueEdgeWithLabel:"addUniqueEdgeWithLabel:sourceNode:targetNode:domain:properties:" sourceNode:@"CATEGORY" targetNode:v18 domain:? properties:?];
            v74 = 0u;
            v75 = 0u;
            v76 = 0u;
            v77 = 0u;
            v47 = [v40 localizedSubcategories];
            v48 = [v47 countByEnumeratingWithState:&v74 objects:v89 count:16];
            if (v48)
            {
              v49 = v48;
              v50 = *v75;
              do
              {
                for (j = 0; j != v49; ++j)
                {
                  if (*v75 != v50)
                  {
                    objc_enumerationMutation(v47);
                  }

                  v52 = *(*(&v74 + 1) + 8 * j);
                  if ([v52 length])
                  {
                    v53 = [v40 levelForLocalizedSubcategory:v52];
                    v54 = MEMORY[0x277CBEC10];
                    if (v53 != 0x7FFFFFFFFFFFFFFFLL)
                    {
                      v87 = @"lvl";
                      v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v53];
                      v88 = v55;
                      v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
                    }

                    buf[0] = 0;
                    v56 = [(PGMutableGraph *)self->_graph addUniqueNodeWithLabel:v52 domain:902 properties:v54 didCreate:buf];
                    v57 = [(PGMutableGraph *)self->_graph addUniqueEdgeWithLabel:@"LOCALIZED_SUBCATEGORY" sourceNode:v18 targetNode:v56 domain:902 properties:0];
                  }

                  else
                  {
                    v58 = +[PGLogging sharedLogging];
                    v54 = [v58 loggingConnection];

                    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      v98 = v73;
                      _os_log_impl(&dword_22F0FC000, v54, OS_LOG_TYPE_INFO, "Not ingesting empty localizedSubcategory string for category %@", buf, 0xCu);
                    }
                  }
                }

                v49 = [v47 countByEnumeratingWithState:&v74 objects:v89 count:16];
              }

              while (v49);
            }

            v38 = v65;
            v37 = v66;
            v45 = v71;
            v39 = v72;
LABEL_52:
          }

          ++v39;
        }

        while (v39 != v37);
        v37 = [obj countByEnumeratingWithState:&v78 objects:v92 count:16];
      }

      while (v37);
    }

    v17 = v61;
  }

  v59 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)deleteAllMemoryNodesAndEdgesForMemoryCategory:(unint64_t)a3
{
  v6 = objc_alloc_init(MEMORY[0x277D22C50]);
  v5 = [PGGraphMemoryNodeCollection memoryNodesOfCategory:a3 inGraph:self->_graph];
  [v6 removeNodes:v5];
  [(MAGraph *)self->_graph executeGraphChangeRequest:v6];
}

- (void)deleteAllMemoryNodesAndEdgesForMemoryCategories:(id)a3
{
  v4 = MEMORY[0x277D22C50];
  v5 = a3;
  v7 = objc_alloc_init(v4);
  v6 = [PGGraphMemoryNodeCollection memoryNodesOfCategories:v5 inGraph:self->_graph];

  [v7 removeNodes:v6];
  [(MAGraph *)self->_graph executeGraphChangeRequest:v7];
}

- (void)deleteAllMemoryNodesAndEdges
{
  v4 = objc_alloc_init(MEMORY[0x277D22C50]);
  v3 = [(PGGraphNodeCollection *)PGGraphMemoryNodeCollection nodesInGraph:self->_graph];
  [v4 removeNodes:v3];
  [(MAGraph *)self->_graph executeGraphChangeRequest:v4];
}

- (id)insertMemoryNodeFromMemory:(id)a3 changeRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 memoryCategory])
  {
    v8 = [v6 memoryMomentNodes];
    if (![v8 count])
    {
      v9 = +[PGLogging sharedLogging];
      v10 = [v9 loggingConnection];

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_ERROR, "[IngestMemory] Attempting to insert memory with no moment nodes", buf, 2u);
      }
    }

    v11 = [v6 memoryFeatureNodesInGraph:self->_graph];
    if (![v11 count])
    {
      v12 = +[PGLogging sharedLogging];
      v13 = [v12 loggingConnection];

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_ERROR, "[IngestMemory] Attempting to insert memory with no feature nodes", buf, 2u);
      }
    }

    v14 = [objc_opt_class() memoryLabelForCategory:{objc_msgSend(v6, "memoryCategory")}];
    v15 = [PGGraphMemoryNode uniqueMemoryIdentifierWithMemoryLabel:v14 featureNodes:v11];
    v16 = -[PGGraphMemoryNode initWithLabel:memoryCategorySubcategory:uniqueMemoryIdentifier:generatedWithFallbackRequirements:]([PGGraphMemoryNode alloc], "initWithLabel:memoryCategorySubcategory:uniqueMemoryIdentifier:generatedWithFallbackRequirements:", v14, [v6 memoryCategorySubcategory], v15, objc_msgSend(v6, "generatedWithFallbackRequirements"));
    [v7 addNode:v16];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __67__PGGraphBuilder_Memory__insertMemoryNodeFromMemory_changeRequest___block_invoke;
    v27[3] = &unk_278888B50;
    v17 = v16;
    v28 = v17;
    v18 = v7;
    v29 = v18;
    [v11 enumerateNodesUsingBlock:v27];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __67__PGGraphBuilder_Memory__insertMemoryNodeFromMemory_changeRequest___block_invoke_2;
    v24[3] = &unk_278888B78;
    v19 = v17;
    v25 = v19;
    v26 = v18;
    [v8 enumerateNodesUsingBlock:v24];
    v20 = v26;
    v21 = v19;
  }

  else
  {
    v22 = +[PGLogging sharedLogging];
    v8 = [v22 loggingConnection];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_ERROR, "[IngestMemory] Attempting to insert memory with unknown memory category", buf, 2u);
    }

    v21 = 0;
  }

  return v21;
}

void __67__PGGraphBuilder_Memory__insertMemoryNodeFromMemory_changeRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PGGraphMemoryFeaturesEdge alloc] initFromMemoryNode:*(a1 + 32) toFeatureNode:v3];

  [*(a1 + 40) addEdge:v4];
}

void __67__PGGraphBuilder_Memory__insertMemoryNodeFromMemory_changeRequest___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PGGraphMemoryContainsAssetsFromEdge alloc] initFromMemoryNode:*(a1 + 32) toMomentSourceNode:v3];

  [*(a1 + 40) addEdge:v4];
}

- (id)insertMemoryNodeFromMemory:(id)a3
{
  v4 = MEMORY[0x277D22C50];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [(PGGraphBuilder *)self insertMemoryNodeFromMemory:v5 changeRequest:v6];

  if (v7)
  {
    [(MAGraph *)self->_graph executeGraphChangeRequest:v6];
  }

  return v7;
}

+ (unint64_t)memoryCategoryForLabel:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"YearInReview"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"PersonOverTime"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"LastMonthAtHome"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"Foodie"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"Pet"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"Baby"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"Person"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"EarlyMomentsWithPerson"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"CityLocation"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"RegionLocation"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"MeaningfulEvent"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"MeaningfulEventAggregation"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"SocialGroupOverTime"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"SocialGroup"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"RecurrentTrip"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"Trip"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"OngoingTrip"])
  {
    v4 = 31;
  }

  else if ([v3 isEqualToString:@"PastSuperset"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"SingleMoment"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Season"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"AreaLocation"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"DayInHistoryAggregation"])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"BusinessLocation"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"RecentHighlights"])
  {
    v4 = 24;
  }

  else if ([v3 isEqualToString:@"ChildActivity"])
  {
    v4 = 25;
  }

  else if ([v3 isEqualToString:@"ExcitingMoments"])
  {
    v4 = 26;
  }

  else if ([v3 isEqualToString:@"Trends"])
  {
    v4 = 27;
  }

  else if ([v3 isEqualToString:@"PetOutdoor"])
  {
    v4 = 28;
  }

  else if ([v3 isEqualToString:@"ChildAndPerson"])
  {
    v4 = 29;
  }

  else if ([v3 isEqualToString:@"ChildOutdoor"])
  {
    v4 = 30;
  }

  else if ([v3 isEqualToString:@"ContentCreationTool"])
  {
    v4 = 100;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)memoryLabelForCategory:(unint64_t)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = @"Unknown";
  v5 = @"Unknown";
  if (a3 > 200)
  {
    if (a3 - 201 < 0x15 || a3 - 301 < 2 || a3 == 401)
    {
LABEL_5:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v9 = 134217984;
        v10 = a3;
        _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "+[PGGraphBuilder memoryLabelForCategory:] is not compatible with legacy category: %lu", &v9, 0xCu);
      }

      v4 = @"Legacy";
    }
  }

  else
  {
    switch(a3)
    {
      case 1uLL:
        v4 = @"SingleMoment";
        goto LABEL_43;
      case 2uLL:
        v4 = @"PersonOverTime";
        goto LABEL_43;
      case 3uLL:
        v4 = @"Person";
        goto LABEL_43;
      case 4uLL:
        v4 = @"EarlyMomentsWithPerson";
        goto LABEL_43;
      case 5uLL:
        v4 = @"SocialGroupOverTime";
        goto LABEL_43;
      case 6uLL:
        v4 = @"SocialGroup";
        goto LABEL_43;
      case 7uLL:
        v4 = @"LastMonthAtHome";
        goto LABEL_43;
      case 8uLL:
        v4 = @"YearInReview";
        goto LABEL_43;
      case 9uLL:
        v4 = @"Foodie";
        goto LABEL_43;
      case 0xAuLL:
        v4 = @"Pet";
        goto LABEL_43;
      case 0xBuLL:
        v4 = @"Baby";
        goto LABEL_43;
      case 0xCuLL:
        v4 = @"CityLocation";
        goto LABEL_43;
      case 0xDuLL:
        v4 = @"RegionLocation";
        goto LABEL_43;
      case 0xEuLL:
        v4 = @"AreaLocation";
        goto LABEL_43;
      case 0xFuLL:
        v4 = @"BusinessLocation";
        goto LABEL_43;
      case 0x10uLL:
        v4 = @"MeaningfulEvent";
        goto LABEL_43;
      case 0x11uLL:
        v4 = @"MeaningfulEventAggregation";
        goto LABEL_43;
      case 0x12uLL:
        v4 = @"RecurrentTrip";
        goto LABEL_43;
      case 0x13uLL:
        v4 = @"Trip";
        goto LABEL_43;
      case 0x14uLL:
        v4 = @"PastSuperset";
        goto LABEL_43;
      case 0x15uLL:
        v4 = @"Season";
        goto LABEL_43;
      case 0x16uLL:
        break;
      case 0x17uLL:
        v4 = @"DayInHistoryAggregation";
        goto LABEL_43;
      case 0x18uLL:
        v4 = @"RecentHighlights";
        goto LABEL_43;
      case 0x19uLL:
        v4 = @"ChildActivity";
        goto LABEL_43;
      case 0x1AuLL:
        v4 = @"ExcitingMoments";
        goto LABEL_43;
      case 0x1BuLL:
        v4 = @"Trends";
        goto LABEL_43;
      case 0x1CuLL:
        v4 = @"PetOutdoor";
        goto LABEL_43;
      case 0x1DuLL:
        v4 = @"ChildAndPerson";
        goto LABEL_43;
      case 0x1EuLL:
        v4 = @"ChildOutdoor";
        goto LABEL_43;
      case 0x1FuLL:
        v4 = @"OngoingTrip";
        goto LABEL_43;
      default:
        if (a3 - 101 < 2)
        {
          goto LABEL_5;
        }

        if (a3 != 100)
        {
          break;
        }

        v4 = @"ContentCreationTool";
LABEL_43:
        v6 = v4;

        break;
    }
  }

  v7 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)insertPresentEdgeFromPersonNode:(id)a3 toEventNode:(id)a4 numberOfAssetsWithPerson:(unint64_t)a5 edgeWeight:(float)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [v10 collection];
  v13 = [v11 collection];
  v14 = [(PGGraphEdgeCollection *)PGGraphPersonPresentEdgeCollection edgesFromNodes:v12 toNodes:v13];

  if ([v14 count])
  {
    v15 = [v14 anyEdge];
  }

  else
  {
    v16 = objc_alloc_init(MEMORY[0x277D22C50]);
    v15 = [(PGGraphBasePresentEdge *)[PGGraphPersonPresentEdge alloc] initFromPersonNode:v10 toMomentNode:v11 importance:a5 numberOfAssets:a6];
    [v16 addEdge:v15];
    [(MAGraph *)self->_graph executeGraphChangeRequest:v16];
  }

  return v15;
}

- (void)insertInferredEdgeFromMeNode:(id)a3 toInferredPersonNode:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 collection];
  v9 = +[PGGraphInferredPersonEdge filter];
  v10 = [(MAEdgeCollection *)PGGraphEdgeCollection edgesFromNodes:v8 matchingFilter:v9];

  if (![v10 count])
  {
    v15 = objc_alloc_init(MEMORY[0x277D22C50]);
    if (!v15)
    {
      goto LABEL_15;
    }

LABEL_11:
    v18 = [(PGGraphBuilder *)self loggingConnection];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [v7 localIdentifier];
      v22 = 138412290;
      v23 = v19;
      _os_log_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_INFO, "Inferring Me to %@", &v22, 0xCu);
    }

    v20 = [[PGGraphInferredPersonEdge alloc] initFromPersonNode:v6 toInferredPersonNode:v7];
    [v15 addEdge:v20];
    [(MAGraph *)self->_graph executeGraphChangeRequest:v15];

    goto LABEL_14;
  }

  if ([v10 count] <= 1)
  {
    v11 = [v10 anyEdge];
    v12 = [v11 targetNode];
    v13 = [v12 identifier];
    v14 = [v7 identifier];

    if (v13 == v14)
    {
      v15 = [(PGGraphBuilder *)self loggingConnection];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [v7 localIdentifier];
        v22 = 138412290;
        v23 = v16;
        _os_log_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_INFO, "Inferred Me is up-to-date (%@)", &v22, 0xCu);
      }

LABEL_14:

      goto LABEL_15;
    }
  }

  v17 = [(PGGraphBuilder *)self loggingConnection];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 67109120;
    LODWORD(v23) = [v10 count];
    _os_log_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_DEFAULT, "Deleting out-of-date Me inferred edge (found %d)", &v22, 8u);
  }

  v15 = objc_alloc_init(MEMORY[0x277D22C50]);
  [v15 removeEdges:v10];
  if (v15)
  {
    goto LABEL_11;
  }

LABEL_15:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)inferPersonNodeForMeNode:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PGGraphBuilder *)self serviceManager];
  v6 = [(PGGraphBuilder *)self photoLibrary];
  v7 = [v5 inferredDeviceOwnerForPhotoLibrary:v6 ignoreContactLinking:0];

  v8 = [(PGGraphBuilder *)self loggingConnection];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v7 localIdentifier];
    v18 = 138412290;
    v19 = v9;
    _os_log_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_INFO, "Inferred device owner: %@", &v18, 0xCu);
  }

  if (v7)
  {
    peopleDomainBuildingHelper = self->_peopleDomainBuildingHelper;
    v11 = [v7 localIdentifier];
    v12 = [(PGGraphPeopleDomainBuildingHelper *)peopleDomainBuildingHelper insertedIdentifiedPersonForPersonLocalIdentifier:v11];

    if (v12)
    {
      v13 = [v12 personNode];
    }

    else
    {
      v15 = [MEMORY[0x277D27760] personWithPHPerson:v7];
      v13 = [(PGGraphBuilder *)self insertPersonNodeForPerson:v15];
    }

    v16 = [(PGGraphBuilder *)self loggingConnection];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v18 = 138412290;
      v19 = v13;
      _os_log_impl(&dword_22F0FC000, v16, OS_LOG_TYPE_INFO, "Inferred Me: %@", &v18, 0xCu);
    }
  }

  else
  {
    v14 = [(PGGraphBuilder *)self graph];
    v13 = [v14 inferMeNodeFromSocialGroups];

    v12 = [(PGGraphBuilder *)self loggingConnection];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v18 = 138412290;
      v19 = v13;
      _os_log_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_INFO, "Inferred Me (fallback): %@", &v18, 0xCu);
    }
  }

  if (v13)
  {
    [(PGGraphBuilder *)self insertInferredEdgeFromMeNode:v4 toInferredPersonNode:v13];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)insertOrUpdateMePersonNodeIfNeeded
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(PGGraph *)self->_graph meNode];
  if (!v3)
  {
    v4 = [(PGGraphBuilder *)self serviceManager];
    v5 = [v4 mePersonForGraphIngest];

    v6 = [(PGGraphBuilder *)self loggingConnection];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_22F0FC000, v6, OS_LOG_TYPE_INFO, "No me node, using person identity: %@", &v10, 0xCu);
    }

    v3 = [(PGGraphBuilder *)self insertMePersonNodeForPerson:v5];
  }

  v7 = [(PGGraphBuilder *)self loggingConnection];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_INFO, "Using Me node: %@", &v10, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)setAgeCategory:(unint64_t)a3 onPersonNodeForIdentifier:(unint64_t)a4
{
  v6 = [PGGraphPersonNode propertiesWithAgeCategory:a3];
  [(MAGraph *)self->_graph persistModelProperties:v6 forNodeWithIdentifier:a4 clobberExisting:0];
}

- (void)setBiologicalSex:(unint64_t)a3 onPersonNodeForIdentifier:(unint64_t)a4
{
  v6 = [PGGraphPersonNode propertiesWithBiologicalSex:a3];
  [(MAGraph *)self->_graph persistModelProperties:v6 forNodeWithIdentifier:a4 clobberExisting:0];
}

- (id)insertContactSuggestion:(id)a3 forPersonNode:(id)a4 confidence:(double)a5 edgeProperties:(id)a6
{
  v106 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [v10 fullName];
  if ([v13 length])
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  v16 = [v10 CNIdentifier];
  if ([v16 length])
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  v19 = v18;
  v101 = 0;
  if (v15 && v18)
  {
    v99 = v15;
    v20 = objc_alloc_init(MEMORY[0x277D22C50]);
    v97 = self;
    v21 = [PGGraphContactNodeCollection contactNodeForContactIdentifier:v19 inGraph:self->_graph];
    v100 = v20;
    v98 = v21;
    if ([v21 count])
    {
      v101 = [v21 anyNode];
      v22 = v11;
      v23 = [v11 collection];
      v24 = [(PGGraphEdgeCollection *)PGGraphContactSuggestionEdgeCollection edgesFromNodes:v23 toNodes:v21];
    }

    else
    {
      v22 = v11;
      v25 = [PGGraphContactNode alloc];
      v26 = [v10 birthdayDate];
      v27 = [v10 potentialBirthdayDate];
      v28 = [(PGGraphContactNode *)v25 initWithName:v99 contactIdentifier:v19 birthdayDate:v26 potentialBirthdayDate:v27];

      v101 = v28;
      [v20 addNode:v28];
      v24 = 0;
    }

    v96 = v24;
    v11 = v22;
    v29 = v20;
    if (![v24 count])
    {
      v30 = [v12 objectForKeyedSubscript:@"gwscore"];
      [v30 doubleValue];
      v95 = v31;

      v32 = [v12 objectForKeyedSubscript:@"gwnummmtshome"];
      v89 = [v32 unsignedIntegerValue];

      v33 = [v12 objectForKeyedSubscript:@"gwnummentndaddrs"];
      v94 = [v33 unsignedIntegerValue];

      v34 = [v12 objectForKeyedSubscript:@"gwnumbdaymmt"];
      v93 = [v34 unsignedIntegerValue];

      v35 = [v12 objectForKeyedSubscript:@"gwnummbdaymmt"];
      v92 = [v35 unsignedIntegerValue];

      v36 = [v12 objectForKeyedSubscript:@"gwnummmtsclndrevents"];
      v91 = [v36 unsignedIntegerValue];

      v37 = [v12 objectForKeyedSubscript:@"gwnumassts"];
      v90 = [v37 unsignedIntegerValue];

      v38 = [v12 objectForKeyedSubscript:@"gwnumcmm"];
      v88 = [v38 unsignedIntegerValue];

      v39 = [v12 objectForKeyedSubscript:@"gwftfprntconf"];
      [v39 doubleValue];
      v87 = v40;

      v41 = [v12 objectForKeyedSubscript:@"gwfprntsmatch"];
      v86 = [v41 BOOLValue];

      v84 = [v12 objectForKeyedSubscript:@"gwreldebug"];
      v42 = [v12 objectForKeyedSubscript:@"gwsocialgrpsconf"];
      [v42 doubleValue];
      v85 = v43;

      v44 = [v12 objectForKeyedSubscript:@"gwsocialgrps"];
      v45 = [v12 objectForKeyedSubscript:@"gwmsggrps"];
      v46 = [v12 objectForKeyedSubscript:@"bdayscore"];
      [v46 doubleValue];
      v83 = v47;

      v48 = [v12 objectForKeyedSubscript:@"pbdayscore"];
      [v48 doubleValue];
      v82 = v49;

      v50 = [v12 objectForKeyedSubscript:@"addscore"];
      [v50 doubleValue];
      v81 = v51;

      v52 = [v12 objectForKeyedSubscript:@"maddscore"];
      [v52 doubleValue];
      v54 = v53;

      v55 = [v12 objectForKeyedSubscript:@"calscore"];
      [v55 doubleValue];
      v57 = v56;

      v58 = [v12 objectForKeyedSubscript:@"asstscore"];
      [v58 doubleValue];
      v60 = v59;

      v61 = [v12 objectForKeyedSubscript:@"cmmscore"];
      [v61 doubleValue];
      v63 = v62;

      v64 = [v12 objectForKeyedSubscript:@"relscore"];
      [v64 doubleValue];
      v66 = v65;

      v67 = [v12 objectForKeyedSubscript:@"scoremfp"];
      [v67 doubleValue];
      v69 = v68;

      v70 = [v12 objectForKeyedSubscript:@"gwgenmatch"];
      v71 = [v70 unsignedIntegerValue];

      LOBYTE(v80) = v86;
      v72 = [[PGGraphContactSuggestionEdge alloc] initFromPersonNode:v11 toContactNode:v101 confidence:v89 contactScore:v94 numberOfMomentsAtHome:v93 numberOfMomentsAtMentionedAddress:v92 numberOfWeakBirthdayMomentsAroundBirthdayDate:a5 numberOfWeakBirthdayMomentsAroundPotentialBirthdayDate:v95 numberOfMomentsOverlappingWithCalendarEvents:v87 numberOfAppearancesInSharedAssets:v85 numberOfCMMMoments:v83 facetimeFaceprintConfidence:v82 contactFaceprintMatch:v81 relationshipsDebug:v54 socialGroupsConfidence:v91 socialGroupsDebug:v90 messageGroupsDebug:v88 birthdayScore:v80 potentialBirthdayScore:v84 addressScore:v44 mentionedAddressScore:v45 calendarScore:v57 sharedAssetScore:v60 sharedCMMScore:v63 relationshipScore:v66 scoreAfterMessagePenalty:v69 sexMatch:v71];
      [v100 addEdge:v72];
    }

    [(MAGraph *)v97->_graph executeGraphChangeRequest:v100];
    v73 = +[PGLogging sharedLogging];
    v74 = [v73 loggingConnection];

    if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
    {
      v75 = [v11 stringDescription];
      [v101 name];
      v77 = v76 = v11;
      *buf = 138478083;
      v103 = v75;
      v104 = 2113;
      v105 = v77;
      _os_log_impl(&dword_22F0FC000, v74, OS_LOG_TYPE_INFO, "IngestPeople: Photos Person %{private}@ with Contact %{private}@", buf, 0x16u);

      v11 = v76;
      v29 = v100;
    }

    v15 = v99;
  }

  v78 = *MEMORY[0x277D85DE8];

  return v101;
}

- (void)updatePersonNodeForIdentifier:(unint64_t)a3 withPerson:(id)a4 forPropertyNames:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v23 = v8;
  v10 = [PGGraphPersonNode propertiesWithPerson:v8];
  v11 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        v18 = [v10 objectForKeyedSubscript:v17];

        if (v18)
        {
          v19 = [v10 objectForKeyedSubscript:v17];
          [v11 setObject:v19 forKeyedSubscript:v17];
        }

        else
        {
          v19 = [(PGGraphBuilder *)self graph];
          [v19 removeModelPropertyForKey:v17 forNodeWithIdentifier:a3];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v14);
  }

  v20 = [(PGGraphBuilder *)self loggingConnection];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v29 = v11;
    v30 = 2112;
    v31 = v23;
    _os_log_impl(&dword_22F0FC000, v20, OS_LOG_TYPE_INFO, "[PGGraphBuilder+People] relevantProperties to update = %@ with ingestPerson = %@", buf, 0x16u);
  }

  v21 = [(PGGraphBuilder *)self graph];
  [v21 persistModelProperties:v11 forNodeWithIdentifier:a3 clobberExisting:0];

  v22 = *MEMORY[0x277D85DE8];
}

- (id)insertProximityEdgeFromPersonNode:(id)a3 toMomentNode:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 collection];
  v9 = [v7 collection];
  v10 = [(PGGraphEdgeCollection *)PGGraphPersonProximityEdgeCollection edgesFromNodes:v8 toNodes:v9];

  if ([v10 count])
  {
    v11 = [v10 anyEdge];
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x277D22C50]);
    v11 = [[PGGraphPersonProximityEdge alloc] initFromPersonNode:v6 toMomentNode:v7];
    [v12 addEdge:v11];
    [(MAGraph *)self->_graph executeGraphChangeRequest:v12];
  }

  return v11;
}

- (id)insertPresentEdgeFromPersonNode:(id)a3 toMomentNode:(id)a4 numberOfAssetsWithPerson:(unint64_t)a5 importance:(double)a6 includeMergeCandidates:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = objc_alloc_init(MEMORY[0x277D22C50]);
  if (!a7)
  {
    v19 = [v12 collection];
    v20 = [v13 collection];
    v17 = [(PGGraphEdgeCollection *)PGGraphPersonPresentEdgeCollection edgesFromNodes:v19 toNodes:v20];

    if (![v17 count])
    {
      v18 = PGGraphPersonPresentEdge;
      goto LABEL_7;
    }

LABEL_5:
    v21 = [v17 anyEdge];
    goto LABEL_8;
  }

  v15 = [v12 collection];
  v16 = [v13 collection];
  v17 = [(PGGraphEdgeCollection *)PGGraphConsolidatedPersonPresentEdgeCollection edgesFromNodes:v15 toNodes:v16];

  if ([v17 count])
  {
    goto LABEL_5;
  }

  v18 = PGGraphConsolidatedPersonPresentEdge;
LABEL_7:
  v21 = [[v18 alloc] initFromPersonNode:v12 toMomentNode:v13 importance:a5 numberOfAssets:a6];
  [v14 addEdge:v21];
LABEL_8:

  [(MAGraph *)self->_graph executeGraphChangeRequest:v14];

  return v21;
}

- (id)insertPeopleWithClueCollection:(id)a3 fromMomentNode:(id)a4 addressNodes:(id)a5 isNearPeopleAddress:(BOOL *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__69454;
  v40 = __Block_byref_object_dispose__69455;
  v41 = [(PGGraph *)self->_graph meNode];
  v14 = [v10 mePerson];
  v15 = v37[5];
  if (v15)
  {
    v16 = [v15 localIdentifier];
    if ([v16 length])
    {
LABEL_6:

      goto LABEL_7;
    }
  }

  if (v14)
  {
    v17 = [(PGGraphBuilder *)self insertMePersonNodeForPerson:v14];
    v16 = v37[5];
    v37[5] = v17;
    goto LABEL_6;
  }

LABEL_7:
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = __Block_byref_object_copy__69454;
  v34[4] = __Block_byref_object_dispose__69455;
  v35 = [v37[5] localIdentifier];
  if (v14 && [v12 count])
  {
    v18 = [(PGGraphBuilder *)self insertHomeWorkNodeForPerson:v14 personNode:v37[5] fromAddressNodes:v12];
    *(v43 + 24) |= v18 != 0;
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __105__PGGraphBuilder_People__insertPeopleWithClueCollection_fromMomentNode_addressNodes_isNearPeopleAddress___block_invoke;
  v26[3] = &unk_278889F38;
  v26[4] = self;
  v19 = v14;
  v27 = v19;
  v31 = v34;
  v32 = &v36;
  v20 = v11;
  v28 = v20;
  v21 = v12;
  v29 = v21;
  v33 = &v42;
  v22 = v13;
  v30 = v22;
  [v10 enumeratePeopleClues:v26];
  *a6 = *(v43 + 24);
  v23 = v30;
  v24 = v22;

  _Block_object_dispose(v34, 8);
  _Block_object_dispose(&v36, 8);

  _Block_object_dispose(&v42, 8);

  return v24;
}

void __105__PGGraphBuilder_People__insertPeopleWithClueCollection_fromMomentNode_addressNodes_isNearPeopleAddress___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 includeMergeCandidates];
  v5 = [v3 person];
  v6 = [v5 localIdentifier];
  v7 = v6;
  if (!v5 || ![v6 length])
  {
    v8 = [*(a1 + 32) loggingConnection];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v3 name];
      v25 = 138478083;
      v26 = v9;
      v27 = 2113;
      v28 = v5;
      v10 = "Skipping ingest of %{private}@ (%{private}@): personLocalIdentifier should not be nil or empty";
      goto LABEL_8;
    }

LABEL_9:

    goto LABEL_10;
  }

  if ([v5 isHidden])
  {
    v8 = [*(a1 + 32) loggingConnection];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v3 name];
      v25 = 138478083;
      v26 = v9;
      v27 = 2113;
      v28 = v5;
      v10 = "Skipping ingest of %{private}@ (%{private}@) because person is hidden";
LABEL_8:
      _os_log_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_INFO, v10, &v25, 0x16u);

      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v12 = [v3 numberOfFaces];
  [v3 score];
  v14 = v13;
  if (([v5 isMe] & 1) != 0 || objc_msgSend(v5, "isSamePersonAs:", *(a1 + 40)))
  {
    if (![*(*(*(a1 + 72) + 8) + 40) length] && objc_msgSend(v7, "length"))
    {
      objc_storeStrong((*(*(a1 + 72) + 8) + 40), v7);
      v15 = [*(a1 + 32) updateMeNode:*(*(*(a1 + 80) + 8) + 40) withPropertiesFromPerson:v5];
      v16 = *(*(a1 + 80) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;
    }

    v18 = [v5 CNIdentifier];
    v19 = [*(a1 + 40) CNIdentifier];
    v20 = [v18 isEqualToString:v19] ^ 1;

    v21 = *(*(*(a1 + 80) + 8) + 40);
  }

  else
  {
    v21 = [*(a1 + 32) insertPersonNodeForPerson:v5];
    v20 = 1;
  }

  [*(a1 + 32) insertPresentEdgeFromPersonNode:v21 toMomentNode:*(a1 + 48) numberOfAssetsWithPerson:v12 importance:v4 includeMergeCandidates:v14];

  if (v20)
  {
    if ([*(a1 + 56) count])
    {
      v22 = [v5 locationsByAddressTypes];
      v23 = [v22 count];

      if (v23)
      {
        v24 = [*(a1 + 32) insertHomeWorkNodeForPerson:v5 personNode:v21 fromAddressNodes:*(a1 + 56)];
        *(*(*(a1 + 88) + 8) + 24) |= v24 != 0;
      }
    }
  }

  if (v21)
  {
    [*(a1 + 64) addObject:v21];
  }

LABEL_10:
  v11 = *MEMORY[0x277D85DE8];
}

- (id)updateMeNode:(id)a3 withPropertiesFromPerson:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [PGGraphPersonNode propertiesWithPerson:a4];
  v8 = [v6 changingPropertiesWithProperties:v7];
  v9 = v6;
  if ([v8 count])
  {
    v10 = [(PGGraphBuilder *)self loggingConnection];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v14 = 138412547;
      v15 = v6;
      v16 = 2113;
      v17 = v8;
      _os_log_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_INFO, "Updating Me node %@ with properties %{private}@", &v14, 0x16u);
    }

    v11 = [v6 identifier];
    [(MAGraph *)self->_graph persistModelProperties:v8 forNodeWithIdentifier:v11 clobberExisting:0];
    v9 = [(MAGraph *)self->_graph nodeForIdentifier:v11];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)insertHomeWorkNodeForPerson:(id)a3 personNode:(id)a4 fromAddressNodes:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__69454;
  v38 = __Block_byref_object_dispose__69455;
  v39 = 0;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = a5;
  v10 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v10)
  {
    v11 = *v31;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v30 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        [v13 coordinate];
        v16 = v15;
        v18 = v17;
        v19 = [v8 locationsByAddressTypes];
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __82__PGGraphBuilder_People__insertHomeWorkNodeForPerson_personNode_fromAddressNodes___block_invoke;
        v24[3] = &unk_278889F10;
        v28 = v16;
        v29 = v18;
        v27 = &v34;
        v24[4] = self;
        v25 = v9;
        v26 = v13;
        [v19 enumerateKeysAndObjectsUsingBlock:v24];

        objc_autoreleasePoolPop(v14);
      }

      v10 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
    }

    while (v10);
  }

  v20 = v35[5];
  _Block_object_dispose(&v34, 8);

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

void __82__PGGraphBuilder_People__insertHomeWorkNodeForPerson_personNode_fromAddressNodes___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = a3;
  v9 = [v8 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v29 + 1) + 8 * i) coordinate];
        if ([PGLocationUtility coordinate:*(a1 + 64) isCloseToCoordinate:*(a1 + 72) threshold:v13, v14, 150.0])
        {
          v15 = [v7 unsignedIntegerValue];
          v16 = @"Work";
          if (!v15)
          {
            v16 = @"Home";
          }

          v17 = *(a1 + 40);
          v18 = *(*(a1 + 32) + 8);
          v33 = @"id";
          v19 = MEMORY[0x277CCABB0];
          v20 = v16;
          v21 = [v19 numberWithUnsignedInteger:{objc_msgSend(v17, "identifier")}];
          v34 = v21;
          v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
          v23 = [v18 addUniqueNodeWithLabel:v20 domain:202 properties:v22 didCreate:0];
          v24 = *(*(a1 + 56) + 8);
          v25 = *(v24 + 40);
          *(v24 + 40) = v23;

          v26 = [*(*(a1 + 32) + 8) addUniqueEdgeWithLabel:@"IS_OWNED_BY" sourceNode:*(*(*(a1 + 56) + 8) + 40) targetNode:*(a1 + 40) domain:202 properties:0];
          v27 = [*(*(a1 + 32) + 8) addUniqueEdgeWithLabel:@"IS_HOME_WORK" sourceNode:*(a1 + 48) targetNode:*(*(*(a1 + 56) + 8) + 40) domain:202 properties:0];
          *a4 = 1;
          goto LABEL_13;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v29 objects:v35 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v28 = *MEMORY[0x277D85DE8];
}

- (void)addStorytellingRelationshipsToMeNode:(id)a3 relationshipByPerson:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x277D22C50];
  v8 = a4;
  v9 = objc_alloc_init(v7);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __84__PGGraphBuilder_People__addStorytellingRelationshipsToMeNode_relationshipByPerson___block_invoke;
  v12[3] = &unk_278889EC8;
  v12[4] = self;
  v10 = v6;
  v13 = v10;
  v11 = v9;
  v14 = v11;
  [v8 enumerateKeysAndObjectsUsingBlock:v12];

  if ([v11 numberOfChanges])
  {
    [(MAGraph *)self->_graph executeGraphChangeRequest:v11];
  }
}

void __84__PGGraphBuilder_People__addStorytellingRelationshipsToMeNode_relationshipByPerson___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[PGGraphBuilder expandedRelationshipLabelsForRelationship:](PGGraphBuilder, "expandedRelationshipLabelsForRelationship:", [v6 unsignedIntegerValue]);
  if ([v7 count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          v14 = [PGGraphStorytellingRelationshipEdge alloc];
          v15 = [(PGGraphStorytellingRelationshipEdge *)v14 initWithRelationship:v13 fromMeNode:*(a1 + 40) toPersonNode:v5, v19];
          [*(a1 + 48) addEdge:v15];
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v8 = [*(a1 + 32) loggingConnection];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v17 = [v6 unsignedIntegerValue];
      v18 = [v5 localIdentifier];
      *buf = 134218242;
      v25 = v17;
      v26 = 2112;
      v27 = v18;
      _os_log_error_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_ERROR, "No storytelling labels for relationship %lu for person %@", buf, 0x16u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)insertStorytellingRelationshipsWithRelationshipsForPersonNodes:(id)a3 meNode:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277D22C50];
  v8 = a3;
  v9 = objc_alloc_init(v7);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __96__PGGraphBuilder_People__insertStorytellingRelationshipsWithRelationshipsForPersonNodes_meNode___block_invoke;
  v15 = &unk_278889EA0;
  v10 = v6;
  v16 = v10;
  v11 = v9;
  v17 = v11;
  [v8 enumerateNodesUsingBlock:&v12];

  if ([v11 numberOfChanges])
  {
    [(MAGraph *)self->_graph executeGraphChangeRequest:v11];
  }
}

void __96__PGGraphBuilder_People__insertStorytellingRelationshipsWithRelationshipsForPersonNodes_meNode___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v15 = [v3 collection];
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__69454;
  v32 = __Block_byref_object_dispose__69455;
  v33 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v27[3] = 0;
  v4 = [v15 relationshipInEdges];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __96__PGGraphBuilder_People__insertStorytellingRelationshipsWithRelationshipsForPersonNodes_meNode___block_invoke_259;
  v23[3] = &unk_278889E50;
  v24 = *(a1 + 32);
  v25 = v27;
  v26 = &v28;
  [v4 enumerateEdgesUsingBlock:v23];

  v14 = [v15 storytellingRelationshipEdges];
  v5 = [v14 labels];
  v6 = [MEMORY[0x277CBEB58] setWithSet:v5];
  v7 = [MEMORY[0x277CBEB58] setWithSet:v29[5]];
  [v6 minusSet:v29[5]];
  [v7 minusSet:v5];
  if ([v6 count])
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __96__PGGraphBuilder_People__insertStorytellingRelationshipsWithRelationshipsForPersonNodes_meNode___block_invoke_2;
    v20[3] = &unk_278889E78;
    v21 = v6;
    v22 = *(a1 + 40);
    [v14 enumerateEdgesUsingBlock:v20];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v34 count:16];
  if (v9)
  {
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [[PGGraphStorytellingRelationshipEdge alloc] initWithRelationship:*(*(&v16 + 1) + 8 * v11) fromMeNode:*(a1 + 32) toPersonNode:v3];
        [*(a1 + 40) addEdge:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v16 objects:v34 count:16];
    }

    while (v9);
  }

  _Block_object_dispose(v27, 8);
  _Block_object_dispose(&v28, 8);

  v13 = *MEMORY[0x277D85DE8];
}

void __96__PGGraphBuilder_People__insertStorytellingRelationshipsWithRelationshipsForPersonNodes_meNode___block_invoke_259(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = [v16 sourceNode];
  v4 = [v3 identifier];
  v5 = [*(a1 + 32) identifier];

  if (v4 == v5)
  {
    [v16 confidence];
    if (v6 <= *(*(*(a1 + 40) + 8) + 24))
    {
      [v16 confidence];
      if (v13 == *(*(*(a1 + 40) + 8) + 24))
      {
        v14 = *(*(*(a1 + 48) + 8) + 40);
        v15 = [v16 label];
        [v14 addObject:v15];
      }
    }

    else
    {
      v7 = MEMORY[0x277CBEB58];
      v8 = [v16 label];
      v9 = [v7 setWithObject:v8];
      v10 = *(*(a1 + 48) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      [v16 confidence];
      *(*(*(a1 + 40) + 8) + 24) = v12;
    }
  }
}

void __96__PGGraphBuilder_People__insertStorytellingRelationshipsWithRelationshipsForPersonNodes_meNode___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  v5 = [v3 label];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    [*(a1 + 40) removeEdge:v6];
  }
}

- (void)addRelationshipEdgesBetweenPersonNode:(id)a3 andPersonNode:(id)a4 forRelationship:(unint64_t)a5 confidence:(double)a6 properties:(id)a7
{
  v91 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  if (a7)
  {
    v14 = a7;
  }

  else
  {
    v14 = MEMORY[0x277CBEC10];
  }

  v15 = [v14 mutableCopy];
  v16 = 2;
  if (a6 > 0.0)
  {
    v16 = 1;
  }

  if (a6 == 1.0)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17];
  [v15 setObject:v18 forKeyedSubscript:@"relstatus"];

  v19 = MEMORY[0x277CBEB58];
  v20 = [PGGraphBuilder expandedRelationshipLabelsForRelationship:a5];
  v21 = [v19 setWithSet:v20];

  v85 = v12;
  v22 = [v12 collection];
  v84 = v13;
  v23 = [v13 collection];
  v24 = [(PGGraphEdgeCollection *)PGGraphRelationshipEdgeCollection edgesFromNodes:v22 toNodes:v23];
  v25 = [v24 labels];

  [v21 minusSet:v25];
  if ([v21 count])
  {
    v74 = self;
    v26 = [v15 objectForKeyedSubscript:@"relstatus"];
    v83 = [v26 unsignedIntegerValue];

    v27 = [v15 objectForKeyedSubscript:@"relsource"];
    v82 = [v27 unsignedIntegerValue];

    v28 = [v15 objectForKeyedSubscript:@"rfamhol"];
    [v28 doubleValue];
    v30 = v29;

    v31 = [v15 objectForKeyedSubscript:@"rparnam"];
    v81 = [v31 BOOLValue];

    v32 = [v15 objectForKeyedSubscript:@"rfamnam"];
    v80 = [v32 BOOLValue];

    v33 = [v15 objectForKeyedSubscript:@"gwnummmtshome"];
    v79 = [v33 unsignedIntegerValue];

    v34 = [v15 objectForKeyedSubscript:@"rhasanniv"];
    v78 = [v34 BOOLValue];

    v35 = [v15 objectForKeyedSubscript:@"rtop2sg"];
    v77 = [v35 BOOLValue];

    v36 = [v15 objectForKeyedSubscript:@"rlovexch"];
    v76 = [v36 unsignedIntegerValue];

    v37 = [v15 objectForKeyedSubscript:@"rtop"];
    v75 = [v37 BOOLValue];

    v38 = [v15 objectForKeyedSubscript:@"rfrndnghtout"];
    [v38 doubleValue];
    v40 = v39;

    v41 = [v15 objectForKeyedSubscript:@"rprtnrtrip"];
    [v41 doubleValue];
    v43 = v42;

    v44 = [v15 objectForKeyedSubscript:@"rfrfamtrip"];
    [v44 doubleValue];
    v46 = v45;

    v47 = [v15 objectForKeyedSubscript:@"rwkend"];
    [v47 doubleValue];
    v49 = v48;

    v50 = [v15 objectForKeyedSubscript:@"rwork"];
    [v50 doubleValue];
    v52 = v51;

    v53 = [v15 objectForKeyedSubscript:@"rcal"];
    [v53 doubleValue];
    v55 = v54;

    v56 = [v15 objectForKeyedSubscript:@"ragediff"];
    v57 = [v56 BOOLValue];

    v58 = [v15 objectForKeyedSubscript:@"rold"];
    v59 = [v58 BOOLValue];

    v73 = v15;
    v60 = [v15 objectForKeyedSubscript:@"rchild"];
    v61 = [v60 BOOLValue];

    v62 = objc_alloc_init(MEMORY[0x277D22C50]);
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v72 = v21;
    v63 = v21;
    v64 = [v63 countByEnumeratingWithState:&v86 objects:v90 count:16];
    if (v64)
    {
      v65 = v64;
      v66 = *v87;
      do
      {
        for (i = 0; i != v65; ++i)
        {
          if (*v87 != v66)
          {
            objc_enumerationMutation(v63);
          }

          BYTE4(v71) = v82;
          BYTE3(v71) = v61;
          BYTE2(v71) = v59;
          BYTE1(v71) = v57;
          LOBYTE(v71) = v75;
          BYTE1(v70) = v77;
          LOBYTE(v70) = v78;
          v68 = [PGGraphRelationshipEdge initWithRelationship:"initWithRelationship:fromPersonNode:toPersonNode:confidence:status:familyHolidayAttendanceRate:hasParentContactName:hasSameFamilyNameAsMePerson:numberOfMomentsAtHome:hasAnniversaryDate:isTopTwoPersonsSocialGroup:numberOfLoveEmojisExchanged:isTopPerson:friendNightOutAttendanceRate:partnerTripAttendanceRate:friendsAndFamilyTripAttendanceRate:weekendAppearanceRatio:momentsAtWorkAppearanceRate:calendarAttendanceRatio:isPersonAgeDifferentThanMeNode:isPersonOldEnoughToBeParentOrGrandparent:isPersonYoungEnoughToBeMeNodeChild:source:" fromPersonNode:*(*(&v86 + 1) + 8 * i) toPersonNode:v85 confidence:v84 status:v83 familyHolidayAttendanceRate:v81 hasParentContactName:v80 hasSameFamilyNameAsMePerson:a6 numberOfMomentsAtHome:v30 hasAnniversaryDate:v40 isTopTwoPersonsSocialGroup:v43 numberOfLoveEmojisExchanged:v46 isTopPerson:v49 friendNightOutAttendanceRate:v52 partnerTripAttendanceRate:v55 friendsAndFamilyTripAttendanceRate:v79 weekendAppearanceRatio:v70 momentsAtWorkAppearanceRate:v76 calendarAttendanceRatio:v71 isPersonAgeDifferentThanMeNode:? isPersonOldEnoughToBeParentOrGrandparent:? isPersonYoungEnoughToBeMeNodeChild:? source:?];
          [v62 addEdge:v68];
        }

        v65 = [v63 countByEnumeratingWithState:&v86 objects:v90 count:16];
      }

      while (v65);
    }

    [(MAGraph *)v74->_graph executeGraphChangeRequest:v62];
    v21 = v72;
    v15 = v73;
  }

  v69 = *MEMORY[0x277D85DE8];
}

- (id)insertPersonNodeForPerson:(id)a3
{
  v61 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 isMe];
  v6 = [(PGGraph *)self->_graph meNode];
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [(PGGraphBuilder *)self updateMeNode:v6 withPropertiesFromPerson:v4];

    v7 = v8;
    v9 = v7;
    goto LABEL_37;
  }

  v10 = @"People";
  if (v5)
  {
    v10 = @"Me";
  }

  v11 = v10;
  v12 = [PGGraphPersonNode propertiesWithPerson:v4];
  v13 = [v4 localIdentifier];
  v14 = [(PGGraphPeopleDomainBuildingHelper *)self->_peopleDomainBuildingHelper insertedIdentifiedPersonForPersonLocalIdentifier:v13];
  v15 = v14;
  if (v14)
  {
    v9 = [v14 personNode];
    v54 = [v15 birthdayDate];
    v53 = [v15 anniversaryDate];
    v49 = [v15 relationship];
    v16 = [v9 changingPropertiesWithProperties:v12];
    v50 = v16;
    if (v9 && ![v16 count])
    {
      goto LABEL_13;
    }
  }

  else
  {
    v9 = 0;
    v53 = 0;
    v54 = 0;
    v49 = 0;
    v50 = 0;
  }

  v17 = v9;
  v9 = [(PGMutableGraph *)self->_graph addUniquelyIdentifiedNodeWithLabel:v11 domain:300 properties:v12 didCreate:0];

  if ([v13 length])
  {
    v18 = [(PGGraphPeopleDomainBuildingHelper *)self->_peopleDomainBuildingHelper insertIdentifiedPersonWithPersonNode:v9 forPersonLocalIdentifier:v13];

    v15 = v18;
  }

LABEL_13:
  v19 = [v4 birthdayDate];
  v51 = v13;
  v52 = v19;
  if (v19)
  {
    if (v54)
    {
      if (([v19 isEqualToDate:?] & 1) == 0)
      {
        v20 = [(PGGraphBuilder *)self loggingConnection];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v41 = [v4 localIdentifier];
          *buf = 138478339;
          v56 = v41;
          v57 = 2113;
          v58 = v52;
          v59 = 2113;
          v60 = v54;
          _os_log_error_impl(&dword_22F0FC000, v20, OS_LOG_TYPE_ERROR, "Two different birthday dates for person %{private}@, %{private}@ and %{private}@", buf, 0x20u);
        }
      }
    }

    else
    {
      v45 = v11;
      v47 = v12;
      v21 = [MEMORY[0x277D27690] components:24 fromDate:v19];
      v22 = [v21 month];
      v23 = [v21 day];
      v43 = v22;
      v24 = [PGGraphMonthDayNodeCollection monthDayNodesForMonth:v22 day:v23 inGraph:self->_graph];
      v25 = [v24 anyNode];

      if (!v25)
      {
        v25 = [(PGGraphBuilder *)self insertMonthDayNodeForMonth:v43 day:v23];
      }

      v26 = [(PGMutableGraph *)self->_graph addUniqueEdgeWithLabel:@"BDAY_MONTH_DAY" sourceNode:v9 targetNode:v25 domain:400 properties:0];
      [v15 setBirthdayDate:v52];

      v11 = v45;
      v12 = v47;
    }
  }

  v27 = [v4 anniversaryDate];
  v28 = v27;
  if (!v27)
  {
    goto LABEL_32;
  }

  if (!v53)
  {
    v46 = v11;
    v48 = v12;
    v29 = [MEMORY[0x277D27690] components:24 fromDate:v27];
    v31 = [v29 month];
    v32 = [v29 day];
    graph = self->_graph;
    v42 = v32;
    v44 = v31;
    v34 = [PGGraphMonthDayNodeCollection monthDayNodesForMonth:"monthDayNodesForMonth:day:inGraph:" day:v31 inGraph:?];
    v35 = [v34 anyNode];

    if (!v35)
    {
      v35 = [(PGGraphBuilder *)self insertMonthDayNodeForMonth:v44 day:v42];
    }

    v36 = [(PGMutableGraph *)self->_graph addUniqueEdgeWithLabel:@"ANNIVERSARY_MONTH_DAY" sourceNode:v9 targetNode:v35 domain:400 properties:0];
    [v15 setAnniversaryDate:v28];

    v11 = v46;
    goto LABEL_30;
  }

  if ([v27 isEqualToDate:?])
  {
    goto LABEL_32;
  }

  v29 = [(PGGraphBuilder *)self loggingConnection];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    [v4 localIdentifier];
    v30 = v48 = v12;
    *buf = 138478339;
    v56 = v30;
    v57 = 2113;
    v58 = v28;
    v59 = 2113;
    v60 = v53;
    _os_log_error_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_ERROR, "Two different anniversary dates for person %{private}@, %{private}@ and %{private}@", buf, 0x20u);

LABEL_30:
    v12 = v48;
  }

LABEL_32:
  if ((v5 & 1) == 0)
  {
    if (v7)
    {
      v37 = [v4 relationship];
      if (v37 != v49)
      {
        v38 = v37;
        [(PGGraphBuilder *)self addRelationshipEdgesBetweenPersonNode:v7 andPersonNode:v9 forRelationship:v37 confidence:0 properties:1.0];
        [v15 setRelationship:v38];
      }
    }
  }

LABEL_37:
  v39 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)reducedRelationshipLabelForRelationshipLabels:(id)a3
{
  v11[7] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count] > 1)
  {
    v5 = MEMORY[0x277CBEB58];
    v11[0] = @"SISTER";
    v11[1] = @"BROTHER";
    v11[2] = @"MOTHER";
    v11[3] = @"FATHER";
    v11[4] = @"DAUGHTER";
    v11[5] = @"SON";
    v11[6] = @"PARTNER";
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:7];
    v7 = [v5 setWithArray:v6];

    [v7 intersectSet:v3];
    if ([v7 count])
    {
      v4 = [v7 anyObject];
    }

    else
    {
      if ([v3 containsObject:@"PARENT"])
      {
        v4 = @"PARENT";
      }

      else if ([v3 containsObject:@"CHILD"])
      {
        v4 = @"CHILD";
      }

      else
      {
        v4 = @"FAMILY";
      }

      v8 = v4;
    }
  }

  else
  {
    v4 = [v3 anyObject];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)expandedRelationshipLabelsForRelationship:(unint64_t)a3
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v5 = v4;
  v6 = kPGGraphEdgePeopleFamily;
  switch(a3)
  {
    case 1uLL:
      v6 = kPGGraphEdgePeopleCoworker;
      goto LABEL_16;
    case 2uLL:
    case 3uLL:
      v6 = kPGGraphEdgePeopleFriend;
      goto LABEL_16;
    case 4uLL:
      goto LABEL_16;
    case 5uLL:
      goto LABEL_12;
    case 6uLL:
      v9 = @"DAUGHTER";
      goto LABEL_11;
    case 7uLL:
      v9 = @"SON";
LABEL_11:
      [v4 addObject:v9];
LABEL_12:
      v8 = @"CHILD";
      goto LABEL_15;
    case 8uLL:
      goto LABEL_8;
    case 9uLL:
      v7 = @"MOTHER";
      goto LABEL_7;
    case 0xAuLL:
      v7 = @"FATHER";
LABEL_7:
      [v4 addObject:v7];
LABEL_8:
      v8 = @"PARENT";
      goto LABEL_15;
    case 0xBuLL:
      v8 = @"BROTHER";
      goto LABEL_15;
    case 0xCuLL:
      v8 = @"SISTER";
LABEL_15:
      [v5 addObject:v8];
      v6 = kPGGraphEdgePeopleFamily;
      goto LABEL_16;
    case 0xDuLL:
      v6 = kPGGraphEdgePeoplePartner;
      goto LABEL_16;
    case 0x11uLL:
      v6 = kPGGraphEdgePeopleHouseholdMember;
LABEL_16:
      [v5 addObject:*v6];
      break;
    default:
      break;
  }

  return v5;
}

- (id)insertPartOfDayNodeWithPartOfDayName:(id)a3 fromMomentNode:(id)a4 ratio:(double)a5
{
  v8 = a4;
  v9 = [PGGraphPartOfDayNode partOfDayForPartOfDayName:a3];
  if (v9 == 1)
  {
    v10 = 0;
  }

  else
  {
    v11 = v9;
    v12 = objc_alloc_init(MEMORY[0x277D22C50]);
    v13 = [PGGraphPartOfDayNodeCollection partOfDayNodeForPartOfDay:v11 inGraph:self->_graph];
    if ([v13 count])
    {
      v10 = [v13 anyNode];
      v14 = [v8 collection];
      v15 = [(PGGraphEdgeCollection *)PGGraphPartOfDayEdgeCollection edgesFromNodes:v14 toNodes:v13];
    }

    else
    {
      v10 = [[PGGraphPartOfDayNode alloc] initWithPartOfDay:v11];
      [v12 addNode:v10];
      v15 = 0;
    }

    if (![v15 count])
    {
      v16 = [[PGGraphPartOfDayEdge alloc] initFromMomentNode:v8 toPartOfDayNode:v10 ratio:a5];
      [v12 addEdge:v16];
    }

    [(MAGraph *)self->_graph executeGraphChangeRequest:v12];
  }

  return v10;
}

- (id)insertPartOfDayNodesWithClueCollection:(id)a3 fromMomentNode:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277CBEB18];
  v8 = a3;
  v9 = [v7 array];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78__PGGraphBuilder_Time__insertPartOfDayNodesWithClueCollection_fromMomentNode___block_invoke;
  v15[3] = &unk_27888A390;
  v15[4] = self;
  v16 = v6;
  v10 = v9;
  v17 = v10;
  v11 = v6;
  [v8 enumerateTimeOfDayClues:v15];

  v12 = v17;
  v13 = v10;

  return v10;
}

void __78__PGGraphBuilder_Time__insertPartOfDayNodesWithClueCollection_fromMomentNode___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = [v3 value];
  [v3 confidence];
  v5 = v4;

  v6 = [*(a1 + 32) insertPartOfDayNodeWithPartOfDayName:v7 fromMomentNode:*(a1 + 40) ratio:v5];
  if (v6)
  {
    [*(a1 + 48) addObject:v6];
  }
}

- (id)insertDateNodesFromEventNode:(id)a3
{
  v4 = a3;
  v5 = [v4 localStartDate];
  v6 = [v4 localEndDate];
  v7 = [(PGGraphBuilder *)self insertDateNodesFromLocalStartDate:v5 toLocalEndDate:v6 fromEventNode:v4];

  return v7;
}

- (id)insertDateNodesFromLocalStartDate:(id)a3 toLocalEndDate:(id)a4 fromEventNode:(id)a5
{
  v8 = a5;
  v9 = MEMORY[0x277CBEB18];
  v10 = a4;
  v11 = a3;
  v12 = [v9 array];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __87__PGGraphBuilder_Time__insertDateNodesFromLocalStartDate_toLocalEndDate_fromEventNode___block_invoke;
  v18[3] = &unk_27888A368;
  v18[4] = self;
  v19 = v8;
  v13 = v12;
  v20 = v13;
  v14 = v8;
  [(PGGraphBuilder *)self enumerateDateComponentsBetweenLocalStartDate:v11 andLocalEndDate:v10 usingBlock:v18];

  v15 = v20;
  v16 = v13;

  return v13;
}

void __87__PGGraphBuilder_Time__insertDateNodesFromLocalStartDate_toLocalEndDate_fromEventNode___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) insertTimeNodesWithDateComponents:a2 fromEventNode:*(a1 + 40)];
  [*(a1 + 48) addObject:v3];
}

- (id)insertDateNodesWithClueCollection:(id)a3 fromMomentNode:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 localStartDate];
  v9 = [v7 localEndDate];

  v10 = [(PGGraphBuilder *)self insertDateNodesFromLocalStartDate:v8 toLocalEndDate:v9 fromEventNode:v6];

  return v10;
}

- (id)insertMonthDayNodeForMonth:(int64_t)a3 day:(int64_t)a4
{
  v5 = [[PGGraphCalendarUnitNode alloc] initWithCalendarUnit:3 value:[PGGraphCalendarUnitNode encodedMonthDayForMonth:a3 day:a4]];
  [(MAGraph *)self->_graph addUniqueNode:v5 didInsert:0];

  return v5;
}

- (void)enumerateDateComponentsBetweenLocalStartDate:(id)a3 andLocalEndDate:(id)a4 usingBlock:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277D27690] componentsFromDate:v7 inTimeZone:0];
  v11 = [MEMORY[0x277D27690] componentsFromDate:v8 inTimeZone:0];
  [v10 setTimeZone:0];
  [v11 setTimeZone:0];
  v18 = 0;
  v9[2](v9, v10, &v18);
  v12 = v7;
  if ((NSDateComponentsEqualToDateComponents() & 1) != 0 || v18)
  {
    v13 = v12;
  }

  else
  {
    v13 = v12;
    do
    {
      v14 = v10;
      v15 = v13;
      v13 = [MEMORY[0x277D27690] dateByAddingDays:1 toDate:v13];

      v10 = [MEMORY[0x277D27690] componentsFromDate:v13 inTimeZone:0];

      [v10 setTimeZone:0];
      v16 = NSDateComponentsEqualToDateComponents();
      if (v16 && [v11 hour] < 5)
      {
        break;
      }

      v9[2](v9, v10, &v18);
      v17 = v18 ? 1 : v16;
    }

    while (v17 != 1);
  }
}

- (id)insertTimeNodesWithDateComponents:(id)a3 fromEventNode:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PGGraphBuilder *)self insertDateNodeHierarchyWithDateComponents:v7];
  v9 = [(PGMutableGraph *)self->_graph addUniqueEdgeWithLabel:@"DATE" sourceNode:v6 targetNode:v8 domain:400 properties:0];
  v10 = MEMORY[0x277D27690];
  v11 = [v7 timeZone];
  v12 = [v10 dateFromComponents:v7 inTimeZone:v11];

  v13 = [MEMORY[0x277D276A8] isWeekendDate:v12];
  graph = self->_graph;
  if (v13)
  {
    v15 = @"Weekend";
  }

  else
  {
    v15 = @"Weekday";
  }

  v16 = [(PGMutableGraph *)self->_graph addUniqueNodeWithLabel:v15 domain:400 properties:0 didCreate:0];
  v17 = [(PGMutableGraph *)self->_graph addUniqueEdgeWithLabel:@"PARTOFWEEK" sourceNode:v6 targetNode:v16 domain:400 properties:0];

  return v8;
}

- (id)insertDateNodeHierarchyWithDateComponents:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D27690];
  v6 = [v4 timeZone];
  v7 = [v5 dateFromComponents:v4 inTimeZone:v6];

  v8 = [(PGGraph *)self->_graph dateNodeNameWithLocalDate:v7];
  v35 = 0;
  v9 = [[PGGraphDateNode alloc] initWithName:v8];
  [(MAGraph *)self->_graph addUniqueNode:v9 didInsert:&v35];
  if (v35 == 1)
  {
    v10 = objc_alloc_init(MEMORY[0x277D22C50]);
    v11 = [v4 day];
    v12 = [v4 month];
    v13 = [v4 year];
    v14 = [PGGraphCalendarUnitNode encodedMonthDayForMonth:v12 day:v11];
    v34 = [(PGGraphTimeDomainBuildingHelper *)self->_timeDomainBuildingHelper calendarUnitNodeForCalendarUnit:1 value:v11];
    v33 = [(PGGraphTimeDomainBuildingHelper *)self->_timeDomainBuildingHelper calendarUnitNodeForCalendarUnit:2 value:v12];
    v32 = [(PGGraphTimeDomainBuildingHelper *)self->_timeDomainBuildingHelper calendarUnitNodeForCalendarUnit:3 value:v14];
    v15 = 0x27887A000;
    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v31 = [(PGGraphTimeDomainBuildingHelper *)self->_timeDomainBuildingHelper calendarUnitNodeForCalendarUnit:4 value:v13];
      v16 = -[PGGraphTimeDomainBuildingHelper calendarUnitNodeForCalendarUnit:value:](self->_timeDomainBuildingHelper, "calendarUnitNodeForCalendarUnit:value:", 6, [v4 weekOfYear]);
      v17 = -[PGGraphTimeDomainBuildingHelper calendarUnitNodeForCalendarUnit:value:](self->_timeDomainBuildingHelper, "calendarUnitNodeForCalendarUnit:value:", 5, [v4 weekOfMonth]);
      v18 = [[PGGraphCalendarUnitEdge alloc] initWithCalendarUnit:4 fromDateNode:v9 toCalendarUnitNode:v31];
      [v10 addEdge:v18];

      v19 = [[PGGraphCalendarUnitEdge alloc] initWithCalendarUnit:6 fromDateNode:v9 toCalendarUnitNode:v16];
      [v10 addEdge:v19];

      v20 = [[PGGraphCalendarUnitEdge alloc] initWithCalendarUnit:5 fromDateNode:v9 toCalendarUnitNode:v17];
      [v10 addEdge:v20];

      [(PGGraphTimeDomainBuildingHelper *)self->_timeDomainBuildingHelper calendarUnitNodeForCalendarUnit:4 value:v13 + 1];
      v15 = 0x27887A000uLL;
    }

    v21 = [objc_alloc(*(v15 + 3208)) initWithCalendarUnit:1 fromDateNode:v9 toCalendarUnitNode:v34];
    [v10 addEdge:v21];

    v22 = [objc_alloc(*(v15 + 3208)) initWithCalendarUnit:2 fromDateNode:v9 toCalendarUnitNode:v33];
    [v10 addEdge:v22];

    v23 = [objc_alloc(*(v15 + 3208)) initWithCalendarUnit:3 fromDateNode:v9 toCalendarUnitNode:v32];
    [v10 addEdge:v23];

    v24 = [MEMORY[0x277D27690] seasonNameForDateComponents:v4 locale:0];
    if (v24)
    {
      v25 = [(PGGraphTimeDomainBuildingHelper *)self->_timeDomainBuildingHelper seasonNodeForSeasonName:v24];
      v26 = [[PGGraphSeasonEdge alloc] initFromDateNode:v9 toSeasonNode:v25];
      [v10 addEdge:v26];
    }

    v27 = [MEMORY[0x277D27690] dayOfWeekFromDate:v7];
    if (v27 != -1)
    {
      v28 = [(PGGraphTimeDomainBuildingHelper *)self->_timeDomainBuildingHelper dayOfWeekNodeForDayOfWeek:v27];
      v29 = [[PGGraphDayOfWeekEdge alloc] initFromDateNode:v9 toDayOfWeekNode:v28];
      [v10 addEdge:v29];
    }

    [(MAGraph *)self->_graph executeGraphChangeRequest:v10];
  }

  return v9;
}

- (void)insertShareParticipantsAsAuthors:(id)a3 forMomentNode:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = objc_alloc_init(MEMORY[0x277D22C50]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v20 = v6;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          v15 = [(PGGraphPeopleDomainBuildingHelper *)self->_peopleDomainBuildingHelper cachedAuthorNodeForShareParticipant:v14];
          if (v15)
          {
            v16 = [[PGGraphAuthorEdge alloc] initFromPersonNode:v15 toMomentNode:v7];
            [v8 addEdge:v16];
          }

          else
          {
            v16 = [(PGGraphBuilder *)self loggingConnection];
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              v17 = [v14 localIdentifier];
              *buf = 138412290;
              v27 = v17;
              _os_log_error_impl(&dword_22F0FC000, v16, OS_LOG_TYPE_ERROR, "No person node for share participant identifier: %@", buf, 0xCu);
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    [(MAGraph *)self->_graph executeGraphChangeRequest:v8];
    v6 = v20;
  }

  else
  {
    v8 = [(PGGraphBuilder *)self loggingConnection];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v19 = [v7 localIdentifier];
      *buf = 138412290;
      v27 = v19;
      _os_log_error_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_ERROR, "No share participants for moment with identifier: %@", buf, 0xCu);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)insertMeAsAuthor:(id)a3 forMomentNode:(id)a4
{
  v6 = MEMORY[0x277D22C50];
  v7 = a4;
  v8 = a3;
  v10 = objc_alloc_init(v6);
  v9 = [[PGGraphAuthorEdge alloc] initFromPersonNode:v8 toMomentNode:v7];

  [v10 addEdge:v9];
  [(MAGraph *)self->_graph executeGraphChangeRequest:v10];
}

@end