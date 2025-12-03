@interface PGGraphBuilder
+ (BOOL)isSharedLibraryEnabledForLibrary:(id)library;
+ (double)topTierAestheticScoreForRatio:(double)ratio inPhotoLibrary:(id)library;
+ (id)expandedRelationshipLabelsForRelationship:(unint64_t)relationship;
+ (id)memoryLabelForCategory:(unint64_t)category;
+ (id)reducedRelationshipLabelForRelationshipLabels:(id)labels;
+ (id)sharedLibraryParticipantsForLibrary:(id)library;
+ (unint64_t)memoryCategoryForLabel:(id)label;
+ (unsigned)edgeDomainForMeaningNodeLabel:(id)label isV1Algorithm:(BOOL)algorithm;
+ (void)prepareGraphForRebuild:(id)rebuild;
+ (void)setLastIncrementalUpdateInvocationDate:(id)date inGraph:(id)graph;
- (BOOL)_shouldUpdateCurationScore:(double)score withNewCurationScore:(double)curationScore;
- (BOOL)shouldUpdatePersonRepresentativeAssetUUIDsWithPositiveSceneCriteria:(id)criteria actionValueString:(id)string assetIsPassingSceneCriteria:(BOOL)sceneCriteria personLocalIdentifierIsDoingActionInAsset:(BOOL)asset;
- (CLSCurationContext)curationContext;
- (NSDictionary)personActivityMeaningCriteriaDictionaryByMeaningLabel;
- (PGGraphBuilder)initWithGraph:(id)graph;
- (PGGraphBuilder)initWithGraph:(id)graph locationCache:(id)cache;
- (PGGraphBuilder)initWithGraph:(id)graph manager:(id)manager;
- (id)_anniversaryEventEdgeFromMomentNode:(id)node toPersonNode:(id)personNode confidence:(double)confidence insertIfNeededToChangeRequest:(id)request;
- (id)_birthdayEventEdgeFromMomentNode:(id)node toPersonNode:(id)personNode confidence:(double)confidence insertIfNeededToChangeRequest:(id)request;
- (id)_cleanUpMoments:(id)moments;
- (id)_findAlternativeMeaningEdgeToMeaningfulEventNode:(id)node withMeaningNode:(id)meaningNode;
- (id)_findMeaningEdgeToMeaningfulEventNode:(id)node withMeaningNode:(id)meaningNode;
- (id)_insertMomentNodeForClueCollection:(id)collection feeder:(id)feeder insertedAndUpdatedPersonNodes:(id *)nodes graphUpdate:(id)update progressBlock:(id)block;
- (id)_insertScene:(id)scene fromMomentNode:(id)node changeRequest:(id)request;
- (id)_momentNodesFromPersonNodes:(id)nodes;
- (id)_propertiesFromIngestHighlight:(id)highlight;
- (id)_removeInvalidPeopleEventEdgesFromMomentNode:(id)node edgesToUpsert:(id)upsert;
- (id)_upsertPeopleEventEdgesFromMomentNode:(id)node matchingResults:(id)results changeRequest:(id)request;
- (id)_uuidForPlacemark:(id)placemark forNodeLabel:(id)label;
- (id)criteriaEvaluatorsByValidPersonActivityMeaningLabelFromAssets:(id)assets withPersonActivityMeaningCriteriaDictionaryByMeaningLabel:(id)label;
- (id)criteriaEvaluatorsByValidPersonActivityMeaningLabelFromMomentNode:(id)node sceneEdges:(id)edges withPersonActivityMeaningCriteriaDictionaryByMeaningLabel:(id)label;
- (id)featureProviderWithProgressBlock:(id)block;
- (id)feederForInsertingAssetCollection:(id)collection;
- (id)insertAddressNodeWithPlacemark:(id)placemark location:(id)location relevance:(double)relevance numberOfAssets:(unint64_t)assets duringDateInterval:(id)interval fromMomentNode:(id)node;
- (id)insertAddressNodeWithProjectedPlacemark:(id)placemark atEventLocation:(id)location usingImprovedPlacemark:(BOOL)improvedPlacemark changeRequest:(id)request;
- (id)insertBusiness:(id)business fromMomentNode:(id)node;
- (id)insertContactSuggestion:(id)suggestion forPersonNode:(id)node confidence:(double)confidence edgeProperties:(id)properties;
- (id)insertDateNodeHierarchyWithDateComponents:(id)components;
- (id)insertDateNodesFromEventNode:(id)node;
- (id)insertDateNodesFromLocalStartDate:(id)date toLocalEndDate:(id)endDate fromEventNode:(id)node;
- (id)insertDateNodesWithClueCollection:(id)collection fromMomentNode:(id)node;
- (id)insertHighlightGroupNodeWithHighlight:(id)highlight;
- (id)insertHighlightNodeWithHighlight:(id)highlight;
- (id)insertHomeWorkNodeForPerson:(id)person personNode:(id)node fromAddressNodes:(id)nodes;
- (id)insertLocationHierarchyWithClueCollection:(id)collection fromMomentNode:(id)node;
- (id)insertLocationMobilityNodeWithClueCollection:(id)collection fromMomentNode:(id)node;
- (id)insertLocationMobilityNodeWithMobility:(id)mobility fromMomentNode:(id)node confidence:(double)confidence;
- (id)insertMemoryNodeFromMemory:(id)memory;
- (id)insertMemoryNodeFromMemory:(id)memory changeRequest:(id)request;
- (id)insertMomentNodeForMoment:(id)moment;
- (id)insertMonthDayNodeForMonth:(int64_t)month day:(int64_t)day;
- (id)insertOrUpdateMePersonNodeIfNeeded;
- (id)insertPOINodeWithPlace:(id)place fromMomentNode:(id)node hasInsertedSpecialPOIAmusementParkNode:(BOOL)parkNode;
- (id)insertPOIWithFeeder:(id)feeder fromMomentNode:(id)node isNearHomeOrWork:(BOOL)work;
- (id)insertPartOfDayNodeWithPartOfDayName:(id)name fromMomentNode:(id)node ratio:(double)ratio;
- (id)insertPartOfDayNodesWithClueCollection:(id)collection fromMomentNode:(id)node;
- (id)insertPeopleWithClueCollection:(id)collection fromMomentNode:(id)node addressNodes:(id)nodes isNearPeopleAddress:(BOOL *)address;
- (id)insertPersonNodeForPerson:(id)person;
- (id)insertPet:(id)pet;
- (id)insertPresentEdgeFromPersonNode:(id)node toEventNode:(id)eventNode numberOfAssetsWithPerson:(unint64_t)person edgeWeight:(float)weight;
- (id)insertPresentEdgeFromPersonNode:(id)node toMomentNode:(id)momentNode numberOfAssetsWithPerson:(unint64_t)person importance:(double)importance includeMergeCandidates:(BOOL)candidates;
- (id)insertProximityEdgeFromPersonNode:(id)node toMomentNode:(id)momentNode;
- (id)insertPublicEvent:(id)event fromEventNode:(id)node;
- (id)insertROINodeWithPlace:(id)place fromMomentNode:(id)node;
- (id)insertROINodeWithType:(unint64_t)type;
- (id)insertROINodeWithType:(unint64_t)type fromMomentNode:(id)node confidence:(double)confidence;
- (id)insertROIWithClueCollection:(id)collection fromMomentNode:(id)node;
- (id)insertScene:(id)scene fromMomentNode:(id)node;
- (id)insertScenesWithClueCollection:(id)collection fromMomentNode:(id)node;
- (id)insertSpecialPOIAmusementParkNodeFromMomentNode:(id)node;
- (id)insertTimeNodesWithDateComponents:(id)components fromEventNode:(id)node;
- (id)momentForMomentNode:(id)node;
- (id)momentNodesWhereMeIsPresent;
- (id)nodesForHighlightsInHighlightDayGroup:(id)group;
- (id)nodesForMomentsInHighlight:(id)highlight;
- (id)updateMeNode:(id)node withPropertiesFromPerson:(id)person;
- (signed)generativeMemoryCreationEligibleStateWithAsset:(id)asset;
- (unint64_t)_roiTypeForPlaceInterestType:(id)type;
- (void)_buildSceneNodeCache;
- (void)_cleanGraphBuildCachesAfterUpdate;
- (void)_connectPersonActivityMeaningNode:(id)node toMomentNode:(id)momentNode withChangeRequest:(id)request representativeAssetUUIDsByPersonLocalIdentifier:(id)identifier;
- (void)_deleteMomentsWithGraphUpdate:(id)update;
- (void)_deleteSocialGroupsWithGraphUpdate:(id)update;
- (void)_insertEntityNetScene:(id)scene fromMomentNode:(id)node withEntityNetSceneTaxonomy:(id)taxonomy changeRequest:(id)request;
- (void)_onGraphDidUpdate;
- (void)_persistCurationScores:(id)scores;
- (void)_persistGenerativeMemoryCreationEligibilityState:(id)state;
- (void)_registerInsertedMomentNodes:(id)nodes inGraphUpdate:(id)update;
- (void)_removeEdgesFromMomentNode:(id)node forUpdateTypes:(unint64_t)types;
- (void)_updatePersonActivitiesOfMomentNode:(id)node assets:(id)assets graph:(id)graph withPositiveSceneCriteriaByValidPersonActivityMeaningLabel:(id)label andActionCriteriaByValidPersonActivityMeaningLabel:(id)meaningLabel validPersonActivityMeaningLabelByActionValue:(id)value changeRequest:(id)request;
- (void)addCurationScore:(double)score forAsset:(id)asset;
- (void)addMeaningToMeaningfulEventNode:(id)node meaningLabel:(id)label meaningIsReliable:(BOOL)reliable;
- (void)addParentMeaningHierarchyForMeaningNode:(id)node;
- (void)addRelationshipEdgesBetweenPersonNode:(id)node andPersonNode:(id)personNode forRelationship:(unint64_t)relationship confidence:(double)confidence properties:(id)properties;
- (void)addStorytellingRelationshipsToMeNode:(id)node relationshipByPerson:(id)person;
- (void)checkAndInsertPersonIsAroundEdgeFromMeNode:(id)node toMomentNode:(id)momentNode withClueCollection:(id)collection;
- (void)clearPersonActivityMeaningCriteriaDictionaryByMeaningLabel;
- (void)computeAndPersistAssetStatistics;
- (void)computeAndPersistTopTierAestheticScores;
- (void)deleteAllMeaningNodesAndEdges;
- (void)deleteAllMemoryNodesAndEdges;
- (void)deleteAllMemoryNodesAndEdgesForMemoryCategories:(id)categories;
- (void)deleteAllMemoryNodesAndEdgesForMemoryCategory:(unint64_t)category;
- (void)deleteHighlightsWithGraphUpdate:(id)update;
- (void)deletePersonsWithGraphUpdate:(id)update progressBlock:(id)block;
- (void)enumerateDateComponentsBetweenLocalStartDate:(id)date andLocalEndDate:(id)endDate usingBlock:(id)block;
- (void)inferPersonNodeForMeNode:(id)node;
- (void)insertAreasOfInterestForProjectedPlacemark:(id)placemark fromAddressNode:(id)node changeRequest:(id)request;
- (void)insertAssetCurationScoreInLibraryForFeeder:(id)feeder progressBlock:(id)block;
- (void)insertEntityNetScenesWithClueCollection:(id)collection fromMomentNode:(id)node;
- (void)insertHighlightDayGroupsWithGraphUpdate:(id)update progressBlock:(id)block;
- (void)insertHighlightDaysWithGraphUpdate:(id)update progressBlock:(id)block;
- (void)insertHighlightsWithGraphUpdate:(id)update progressBlock:(id)block;
- (void)insertInferredEdgeFromMeNode:(id)node toInferredPersonNode:(id)personNode;
- (void)insertLocationHierarchyWithProjectedPlacemark:(id)placemark fromAddressNode:(id)node changeRequest:(id)request;
- (void)insertMeAsAuthor:(id)author forMomentNode:(id)node;
- (void)insertMomentsWithGraphUpdate:(id)update progressBlock:(id)block;
- (void)insertOwner:(id)owner forPets:(id)pets;
- (void)insertPersonNodeForShareParticipant:(id)participant;
- (void)insertPersonNodesForShareParticipants:(id)participants;
- (void)insertShareParticipantsAsAuthors:(id)authors forMomentNode:(id)node;
- (void)insertStorytellingRelationshipsWithRelationshipsForPersonNodes:(id)nodes meNode:(id)node;
- (void)performBatchUpdatesWithGraphUpdate:(id)update withRecipe:(id)recipe progressBlock:(id)block;
- (void)performChangeForGraphUpdate:(id)update progressBlock:(id)block;
- (void)performPostprocessingWithGraphUpdate:(id)update withRecipe:(id)recipe progressBlock:(id)block;
- (void)performPreprocessingWithGraphUpdate:(id)update withRecipe:(id)recipe progressBlock:(id)block;
- (void)performProcessingSteps:(id)steps withGraphUpdate:(id)update progressBlock:(id)block;
- (void)persistPendingScores;
- (void)prepareGraphForRebuild;
- (void)setAgeCategory:(unint64_t)category onPersonNodeForIdentifier:(unint64_t)identifier;
- (void)setBiologicalSex:(unint64_t)sex onPersonNodeForIdentifier:(unint64_t)identifier;
- (void)setCurationAlgorithmsVersion:(unint64_t)version;
- (void)setGeoServiceProviderID:(id)d;
- (void)setLanguageIdentifiers:(id)identifiers;
- (void)setLocaleIdentifier:(id)identifier;
- (void)updateHighlightNode:(id)node withHighlight:(id)highlight;
- (void)updateHighlightsForHighlightDayGroupNode:(id)node nodesForHighlightsInHighlightDayGroup:(id)group;
- (void)updateMomentsForHighlightNode:(id)node nodesForMomentsInHighlight:(id)highlight;
- (void)updatePersonNodeForIdentifier:(unint64_t)identifier withPerson:(id)person forPropertyNames:(id)names;
- (void)upsertPeopleEventEdgesOfMomentNode:(id)node matchingResults:(id)results;
@end

@implementation PGGraphBuilder

- (void)checkAndInsertPersonIsAroundEdgeFromMeNode:(id)node toMomentNode:(id)momentNode withClueCollection:(id)collection
{
  nodeCopy = node;
  momentNodeCopy = momentNode;
  collectionCopy = collection;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  serviceManager = [(PGGraphBuilder *)self serviceManager];
  universalDateInterval = [collectionCopy universalDateInterval];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __103__PGGraphBuilder_Presence__checkAndInsertPersonIsAroundEdgeFromMeNode_toMomentNode_withClueCollection___block_invoke;
  v17[3] = &unk_27887FD18;
  v13 = serviceManager;
  v18 = v13;
  v14 = universalDateInterval;
  v19 = v14;
  v20 = &v21;
  [collectionCopy enumerateLocationClues:v17];
  if (*(v22 + 24) == 1)
  {
    v15 = objc_alloc_init(MEMORY[0x277D22C50]);
    v16 = [[PGGraphPeoplePersonIsAroundEdge alloc] initFromPersonNode:nodeCopy toMomentNode:momentNodeCopy];
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

- (signed)generativeMemoryCreationEligibleStateWithAsset:(id)asset
{
  safeAssetAnalyzer = self->_safeAssetAnalyzer;
  assetCopy = asset;
  curationContext = [(PGGraphBuilder *)self curationContext];
  LOWORD(safeAssetAnalyzer) = [(PNSafeAssetAnalyzer *)safeAssetAnalyzer eligibilityStateWithAsset:assetCopy curationContext:curationContext];

  return safeAssetAnalyzer;
}

- (void)computeAndPersistAssetStatistics
{
  photoLibrary = [(PGGraphBuilder *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  v4 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:2 subtype:210 options:librarySpecificFetchOptions];
  firstObject = [v4 firstObject];

  librarySpecificFetchOptions2 = [photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions2 setShouldPrefetchCount:1];
  v7 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:firstObject options:librarySpecificFetchOptions2];
  v8 = [v7 count];
  infoNode = [(PGGraph *)self->_graph infoNode];
  identifier = [infoNode identifier];

  v11 = [PGGraphInfoNode numberOfSelfies:v8];
  [(MAGraph *)self->_graph persistModelProperties:v11 forNodeWithIdentifier:identifier clobberExisting:0];
}

- (void)computeAndPersistTopTierAestheticScores
{
  photoLibrary = [(PGGraphBuilder *)self photoLibrary];
  [objc_opt_class() topTierAestheticScoreForRatio:photoLibrary inPhotoLibrary:0.01];
  self->_topTierAestheticScore = v3;
  [objc_opt_class() topTierAestheticScoreForRatio:photoLibrary inPhotoLibrary:0.05];
  v5 = v4;
  infoNode = [(PGGraph *)self->_graph infoNode];
  identifier = [infoNode identifier];

  v8 = [PGGraphInfoNode topTierScorePropertiesWithAestheticScore:self->_topTierAestheticScore aestheticScoreForTripKeyAsset:v5];
  [(MAGraph *)self->_graph persistModelProperties:v8 forNodeWithIdentifier:identifier clobberExisting:0];
}

- (void)insertAssetCurationScoreInLibraryForFeeder:(id)feeder progressBlock:(id)block
{
  v58 = *MEMORY[0x277D85DE8];
  feederCopy = feeder;
  blockCopy = block;
  v8 = 0.0;
  v47 = _Block_copy(blockCopy);
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

  if (!feederCopy || [(PGGraphBuilder *)self keepsExistingAssetCurationScores])
  {
    goto LABEL_50;
  }

  v37 = blockCopy;
  v38 = feederCopy;
  allItems = [feederCopy allItems];
  v46 = [MEMORY[0x277D3C7A0] scoringContextWithAssets:allItems aestheticScoreThresholdToBeAwesome:self->_topTierAestheticScore];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = allItems;
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

              blockCopy = v37;
              feederCopy = v38;
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

      sceneAnalysisProperties = [v20 sceneAnalysisProperties];
      v26 = v18 != [sceneAnalysisProperties sceneAnalysisVersion] && *v42 != objc_msgSend(v20, "faceAnalysisVersion");

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
          loggingConnection = [(PGGraphBuilder *)self loggingConnection];
          if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
          {
            localIdentifier = [v20 localIdentifier];
            *buf = 134218498;
            *v54 = v28;
            *&v54[8] = 2048;
            *&v54[10] = v24;
            v55 = 2114;
            v56 = localIdentifier;
            _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "Keeping previous curationScore (%.3f) over the new one (%.3f) for asset %{public}@", buf, 0x20u);
          }
        }
      }

      curationProperties = [v20 curationProperties];
      allowedForAnalysis = [curationProperties allowedForAnalysis];

      if ((allowedForAnalysis & 1) == 0)
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

  blockCopy = v37;
  feederCopy = v38;
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

- (void)_persistGenerativeMemoryCreationEligibilityState:(id)state
{
  v15 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if ([stateCopy count])
  {
    photoLibrary = [(PGGraphBuilder *)self photoLibrary];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __77__PGGraphBuilder_Curation___persistGenerativeMemoryCreationEligibilityState___block_invoke;
    v11[3] = &unk_27888A660;
    v12 = stateCopy;
    v10 = 0;
    v6 = [photoLibrary performChangesAndWait:v11 error:&v10];
    v7 = v10;

    if ((v6 & 1) == 0)
    {
      loggingConnection = [(PGGraphBuilder *)self loggingConnection];
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v14 = v7;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Error persisting eligibility state to database: %@", buf, 0xCu);
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

- (void)addCurationScore:(double)score forAsset:(id)asset
{
  assetCopy = asset;
  [assetCopy cacheCurationScore:score];
  v6 = self->_curationScoreByAsset;
  objc_sync_enter(v6);
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:score];
  [(NSMutableDictionary *)self->_curationScoreByAsset setObject:v7 forKeyedSubscript:assetCopy];

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

- (void)_persistCurationScores:(id)scores
{
  v15 = *MEMORY[0x277D85DE8];
  scoresCopy = scores;
  if ([scoresCopy count])
  {
    photoLibrary = [(PGGraphBuilder *)self photoLibrary];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __51__PGGraphBuilder_Curation___persistCurationScores___block_invoke;
    v11[3] = &unk_27888A660;
    v12 = scoresCopy;
    v10 = 0;
    v6 = [photoLibrary performChangesAndWait:v11 error:&v10];
    v7 = v10;

    if ((v6 & 1) == 0)
    {
      loggingConnection = [(PGGraphBuilder *)self loggingConnection];
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v14 = v7;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Error saving curation scores to database: %@", buf, 0xCu);
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

- (BOOL)_shouldUpdateCurationScore:(double)score withNewCurationScore:(double)curationScore
{
  if (score != 0.0 && *MEMORY[0x277D3C768] != score && *MEMORY[0x277D3C768] == curationScore)
  {
    return 0;
  }

  v5 = *MEMORY[0x277D3C760];
  v6 = *MEMORY[0x277D3C758];
  v7 = score <= curationScore || v6 <= score;
  v8 = v7 || v5 > score;
  v9 = v8 || v5 > curationScore;
  if (!v9 && v6 > curationScore)
  {
    return 0;
  }

  v11 = *MEMORY[0x277D3C770];
  if (score > curationScore)
  {
    v12 = v5 <= score || v11 > score;
    v13 = v12 || v5 <= curationScore;
    if (!v13 && v11 <= curationScore)
    {
      return 0;
    }
  }

  v16 = *MEMORY[0x277D3C768] > curationScore;
  if (*MEMORY[0x277D3C768] > score)
  {
    v16 = 1;
  }

  if (v11 <= curationScore)
  {
    v16 = 1;
  }

  if (v11 <= score)
  {
    v16 = 1;
  }

  return score <= curationScore || v16;
}

+ (double)topTierAestheticScoreForRatio:(double)ratio inPhotoLibrary:(id)library
{
  v19[1] = *MEMORY[0x277D85DE8];
  libraryCopy = library;
  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
  [librarySpecificFetchOptions setShouldPrefetchCount:1];
  v7 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:librarySpecificFetchOptions];
  v8 = ([v7 count] * ratio);
  librarySpecificFetchOptions2 = [libraryCopy librarySpecificFetchOptions];

  v10 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"overallAestheticScore" ascending:0];
  v19[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  [librarySpecificFetchOptions2 setSortDescriptors:v11];

  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"overallAestheticScore != %f", *MEMORY[0x277D3CA40]];
  [librarySpecificFetchOptions2 setInternalPredicate:v12];

  [librarySpecificFetchOptions2 setFetchLimit:v8 + 1];
  [librarySpecificFetchOptions2 setChunkSizeForFetch:1];
  [librarySpecificFetchOptions2 setCacheSizeForFetch:1];
  v13 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:librarySpecificFetchOptions2];
  lastObject = [v13 lastObject];

  if (lastObject)
  {
    [lastObject overallAestheticScore];
    v16 = v15;
  }

  else
  {
    v16 = 1.0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)_findMeaningEdgeToMeaningfulEventNode:(id)node withMeaningNode:(id)meaningNode
{
  nodeCopy = node;
  meaningNodeCopy = meaningNode;
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
  v7 = meaningNodeCopy;
  v11 = v7;
  v12 = &v13;
  [nodeCopy enumerateMeaningEdgesAndNodesUsingBlock:v10];
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

- (id)_findAlternativeMeaningEdgeToMeaningfulEventNode:(id)node withMeaningNode:(id)meaningNode
{
  nodeCopy = node;
  meaningNodeCopy = meaningNode;
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
  v7 = meaningNodeCopy;
  v11 = v7;
  v12 = &v13;
  [nodeCopy enumerateMeaningEdgesAndNodesWithDomain:702 block:v10];
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

- (void)addParentMeaningHierarchyForMeaningNode:(id)node
{
  nodeCopy = node;
  label = [nodeCopy label];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__PGGraphBuilder_Meaning__addParentMeaningHierarchyForMeaningNode___block_invoke;
  v7[3] = &unk_27887FF10;
  v7[4] = self;
  v8 = nodeCopy;
  v6 = nodeCopy;
  [PGGraph traverseParentMeaningsForMeaningLabel:label usingBlock:v7];
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

- (void)addMeaningToMeaningfulEventNode:(id)node meaningLabel:(id)label meaningIsReliable:(BOOL)reliable
{
  v5 = 0.0;
  if (reliable)
  {
    v5 = 1.0;
  }

  [PGGraphBuilder addMeaningToMeaningfulEventNode:"addMeaningToMeaningfulEventNode:meaningLabel:meaningConfidence:meaningIsHighPrecision:isV1Algorithm:" meaningLabel:node meaningConfidence:label meaningIsHighPrecision:v5 isV1Algorithm:?];
}

- (void)deleteAllMeaningNodesAndEdges
{
  v4 = objc_alloc_init(MEMORY[0x277D22C50]);
  v3 = [(PGGraphNodeCollection *)PGGraphMeaningNodeCollection nodesInGraph:self->_graph];
  [v4 removeNodes:v3];
  [(MAGraph *)self->_graph executeGraphChangeRequest:v4];
}

+ (unsigned)edgeDomainForMeaningNodeLabel:(id)label isV1Algorithm:(BOOL)algorithm
{
  algorithmCopy = algorithm;
  v5 = 700;
  if (+[PGEventLabelingConfiguration isEventLabelingEnabled])
  {
    v6 = +[PGEventLabelingConfiguration usePrimaryMeaningDomainForEventLabelingMeanings];
    if (algorithmCopy)
    {
      v7 = 700;
    }

    else
    {
      v7 = 702;
    }

    if (algorithmCopy)
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

- (id)insertBusiness:(id)business fromMomentNode:(id)node
{
  v83 = *MEMORY[0x277D85DE8];
  businessCopy = business;
  nodeCopy = node;
  v8 = objc_alloc_init(MEMORY[0x277D22C50]);
  muid = [businessCopy muid];
  name = [businessCopy name];
  if (![(__CFString *)name length])
  {
    v11 = +[PGLogging sharedLogging];
    loggingConnection = [v11 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v78 = muid;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Inserting business w/o name: muid %lu", buf, 0xCu);
    }

    name = &stru_2843F5C58;
  }

  v13 = [PGGraphBusinessNodeCollection businessNodeForBusinessMuid:muid inGraph:self->_graph];
  if ([v13 count])
  {
    collection = [nodeCopy collection];
    v15 = [(PGGraphEdgeCollection *)PGGraphPlaceBusinessEdgeCollection edgesFromNodes:collection toNodes:v13];

    anyNode = [v13 anyNode];
  }

  else
  {
    v67 = v13;
    region = [businessCopy region];
    [region center];
    v19 = v18;
    v21 = v20;
    v22 = [PGGraphBusinessNode alloc];
    venueCapacity = [businessCopy venueCapacity];
    v59 = region;
    [region radius];
    anyNode = [(PGGraphBusinessNode *)v22 initWithMuid:muid name:name venueCapacity:venueCapacity coordinates:v19 radius:v21, v24];
    [v8 addNode:anyNode];
    v25 = MEMORY[0x277CBEB98];
    v60 = businessCopy;
    businessCategories = [businessCopy businessCategories];
    v27 = [v25 setWithArray:businessCategories];

    v28 = [PGGraphBusinessCategoryNodeCollection businessCategoryNodesForCategories:v27 inGraph:self->_graph];
    v29 = MEMORY[0x277CBEB18];
    array = [v28 array];
    v31 = [v29 arrayWithArray:array];

    v61 = v28;
    v32 = [v28 count];
    v62 = v27;
    if (v32 < [v27 count])
    {
      selfCopy = self;
      v65 = name;
      categories = [v28 categories];
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
            if (([categories containsObject:v39] & 1) == 0)
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

      self = selfCopy;
      name = v65;
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

          v46 = [[PGGraphBusinessCategoryEdge alloc] initFromBusinessNode:anyNode toBusinessCategoryNode:*(*(&v69 + 1) + 8 * j)];
          [v8 addEdge:v46];
        }

        v43 = [v41 countByEnumeratingWithState:&v69 objects:v81 count:16];
      }

      while (v43);
    }

    v15 = 0;
    businessCopy = v60;
    v13 = v67;
  }

  if (![v15 count])
  {
    v66 = name;
    dateInterval = [businessCopy dateInterval];
    selfCopy2 = self;
    v68 = v13;
    if (dateInterval)
    {
      hasRoutineVisit = [businessCopy hasRoutineVisit];
    }

    else
    {
      hasRoutineVisit = 0;
    }

    v49 = [PGGraphPlaceBusinessEdge alloc];
    [businessCopy routineVisitConfidence];
    v51 = v50;
    startDate = [dateInterval startDate];
    endDate = [dateInterval endDate];
    v54 = [(PGGraphPlaceBusinessEdge *)v49 initFromMomentNode:nodeCopy toBusinessNode:anyNode confidence:hasRoutineVisit hasRoutineInfo:startDate universalStartDate:endDate universalEndDate:v51];

    [v8 addEdge:v54];
    self = selfCopy2;
    name = v66;
    v13 = v68;
  }

  [(MAGraph *)self->_graph executeGraphChangeRequest:v8];
  loggingConnection2 = [(PGGraphBuilder *)self loggingConnection];
  if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_DEBUG))
  {
    localStartDate = [nodeCopy localStartDate];
    *buf = 138478083;
    v78 = name;
    v79 = 2113;
    v80 = localStartDate;
    _os_log_debug_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_DEBUG, "Insert business %{private}@ to momentNode %{private}@", buf, 0x16u);
  }

  v56 = *MEMORY[0x277D85DE8];

  return anyNode;
}

- (id)insertPOIWithFeeder:(id)feeder fromMomentNode:(id)node isNearHomeOrWork:(BOOL)work
{
  v27 = *MEMORY[0x277D85DE8];
  feederCopy = feeder;
  nodeCopy = node;
  array = [MEMORY[0x277CBEB18] array];
  if (!work)
  {
    v11 = [(PGGraphBuilder *)self insertSpecialPOIAmusementParkNodeFromMomentNode:nodeCopy];
    poiCache = [(PGGraphBuilder *)self poiCache];
    v13 = [PGGraphPlacesResolver resolvePlacesForMomentNode:nodeCopy feeder:feederCopy poiCache:poiCache];

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

          v19 = [(PGGraphBuilder *)self insertPOINodeWithPlace:*(*(&v22 + 1) + 8 * i) fromMomentNode:nodeCopy hasInsertedSpecialPOIAmusementParkNode:v11 != 0, v22];
          if (v19)
          {
            [array addObject:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v16);
    }
  }

  v20 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)insertROIWithClueCollection:(id)collection fromMomentNode:(id)node
{
  nodeCopy = node;
  v7 = MEMORY[0x277CBEB18];
  collectionCopy = collection;
  array = [v7 array];
  v10 = [collectionCopy uniqueMeaningCluesForKey:@"ROI"];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __68__PGGraphBuilder_Place__insertROIWithClueCollection_fromMomentNode___block_invoke;
  v16[3] = &unk_278880580;
  v16[4] = self;
  v17 = nodeCopy;
  v11 = array;
  v18 = v11;
  v12 = nodeCopy;
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

- (id)insertROINodeWithType:(unint64_t)type
{
  typeCopy = type;
  if (type)
  {
    v5 = [PGGraphROINodeCollection roiNodesOfType:type inGraph:self->_graph];
    if ([v5 count])
    {
      typeCopy = [v5 anyNode];
    }

    else
    {
      typeCopy = [[PGGraphROINode alloc] initWithROIType:typeCopy];
      v6 = objc_alloc_init(MEMORY[0x277D22C50]);
      [v6 addNode:typeCopy];
      [(MAGraph *)self->_graph executeGraphChangeRequest:v6];
    }
  }

  return typeCopy;
}

- (id)insertROINodeWithType:(unint64_t)type fromMomentNode:(id)node confidence:(double)confidence
{
  nodeCopy = node;
  if (type)
  {
    v9 = objc_alloc_init(MEMORY[0x277D22C50]);
    v10 = [PGGraphROINodeCollection roiNodesOfType:type inGraph:self->_graph];
    if ([v10 count])
    {
      type = [v10 anyNode];
      collection = [nodeCopy collection];
      v12 = [(PGGraphEdgeCollection *)PGGraphROIEdgeCollection edgesFromNodes:collection toNodes:v10];
    }

    else
    {
      type = [[PGGraphROINode alloc] initWithROIType:type];
      [v9 addNode:type];
      v12 = 0;
    }

    if (![v12 count])
    {
      v13 = [[PGGraphROIEdge alloc] initFromMomentNode:nodeCopy toROINode:type confidence:confidence];
      [v9 addEdge:v13];
    }

    [(MAGraph *)self->_graph executeGraphChangeRequest:v9];
  }

  return type;
}

- (unint64_t)_roiTypeForPlaceInterestType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:*MEMORY[0x277D27598]])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:*MEMORY[0x277D27580]])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:*MEMORY[0x277D27588]])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:*MEMORY[0x277D27590]])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:*MEMORY[0x277D275A0]])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)insertROINodeWithPlace:(id)place fromMomentNode:(id)node
{
  placeCopy = place;
  nodeCopy = node;
  placeInterestType = [placeCopy placeInterestType];
  v9 = [(PGGraphBuilder *)self _roiTypeForPlaceInterestType:placeInterestType];

  if (v9)
  {
    [placeCopy confidence];
    v10 = [(PGGraphBuilder *)self insertROINodeWithType:v9 fromMomentNode:nodeCopy confidence:?];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)insertPOINodeWithPlace:(id)place fromMomentNode:(id)node hasInsertedSpecialPOIAmusementParkNode:(BOOL)parkNode
{
  parkNodeCopy = parkNode;
  placeCopy = place;
  nodeCopy = node;
  placeInterestType = [placeCopy placeInterestType];
  v11 = [PGGraph poiLabelForPOIType:placeInterestType];
  v12 = v11;
  if (v11)
  {
    if (!parkNodeCopy || (v13 = [v11 isEqualToString:@"AmusementPark"], v14 = objc_msgSend(v12, "isEqualToString:", @"Entertainment"), anyNode = 0, (v13 & 1) == 0) && (v14 & 1) == 0)
    {
      v16 = objc_alloc_init(MEMORY[0x277D22C50]);
      v17 = [PGGraphPOINodeCollection poiNodesForLabel:v12 inGraph:self->_graph];
      if ([v17 count])
      {
        anyNode = [v17 anyNode];
        collection = [nodeCopy collection];
        v19 = [(PGGraphEdgeCollection *)PGGraphPOIEdgeCollection edgesFromNodes:collection toNodes:v17];
      }

      else
      {
        anyNode = [[PGGraphPOINode alloc] initWithLabel:v12];
        [v16 addNode:anyNode];
        v19 = 0;
      }

      if (![v19 count])
      {
        v20 = [PGGraphPOIEdge alloc];
        [placeCopy confidence];
        v21 = [(PGGraphPOIEdge *)v20 initFromMomentNode:nodeCopy toPOINode:anyNode confidence:0 poiIsImproved:0 poiIsSpecial:?];
        [v16 addEdge:v21];
      }

      [(MAGraph *)self->_graph executeGraphChangeRequest:v16];
    }
  }

  else
  {
    anyNode = 0;
  }

  return anyNode;
}

- (id)insertSpecialPOIAmusementParkNodeFromMomentNode:(id)node
{
  v16[1] = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  v5 = [PGSpecialPOIResolver alloc];
  v16[0] = nodeCopy;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v7 = [(PGSpecialPOIResolver *)v5 initWithMomentNodes:v6];

  if ([(PGSpecialPOIResolver *)v7 anyMomentHasPOIAmusementPark])
  {
    v8 = objc_alloc_init(MEMORY[0x277D22C50]);
    v9 = [PGGraphPOINodeCollection poiNodesForLabel:@"AmusementPark" inGraph:self->_graph];
    if ([v9 count])
    {
      anyNode = [v9 anyNode];
      collection = [nodeCopy collection];
      v12 = [(PGGraphEdgeCollection *)PGGraphPOIEdgeCollection edgesFromNodes:collection toNodes:v9];
    }

    else
    {
      anyNode = [[PGGraphPOINode alloc] initWithLabel:@"AmusementPark"];
      [v8 addNode:anyNode];
      v12 = 0;
    }

    if (![v12 count])
    {
      v13 = [[PGGraphPOIEdge alloc] initFromMomentNode:nodeCopy toPOINode:anyNode confidence:0 poiIsImproved:1 poiIsSpecial:1.0];
      [v8 addEdge:v13];
    }

    [(MAGraph *)self->_graph executeGraphChangeRequest:v8];
  }

  else
  {
    anyNode = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return anyNode;
}

- (void)insertEntityNetScenesWithClueCollection:(id)collection fromMomentNode:(id)node
{
  nodeCopy = node;
  v7 = [collection meaningCluesForKey:@"EntityNetScene"];
  v8 = objc_alloc_init(MEMORY[0x277D22C50]);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__PGGraphBuilder_Scene__insertEntityNetScenesWithClueCollection_fromMomentNode___block_invoke;
  v11[3] = &unk_2788805E0;
  v11[4] = self;
  v9 = nodeCopy;
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

- (id)insertScenesWithClueCollection:(id)collection fromMomentNode:(id)node
{
  nodeCopy = node;
  v7 = [collection meaningCluesForKey:@"Scene"];
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v9 = objc_alloc_init(MEMORY[0x277D22C50]);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __71__PGGraphBuilder_Scene__insertScenesWithClueCollection_fromMomentNode___block_invoke;
  v19 = &unk_2788805B0;
  selfCopy = self;
  v21 = nodeCopy;
  v22 = v9;
  v10 = v8;
  v23 = v10;
  v11 = v9;
  v12 = nodeCopy;
  [v7 enumerateObjectsUsingBlock:&v16];
  [(MAGraph *)self->_graph executeGraphChangeRequest:v11, v16, v17, v18, v19, selfCopy];
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

- (id)_insertScene:(id)scene fromMomentNode:(id)node changeRequest:(id)request
{
  v27 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  nodeCopy = node;
  requestCopy = request;
  identifier = [sceneCopy identifier];
  sceneNodeBySceneName = self->_sceneNodeBySceneName;
  if (!sceneNodeBySceneName)
  {
    __assert_rtn("[PGGraphBuilder(Scene) _insertScene:fromMomentNode:changeRequest:]", "PGGraphBuilder+Scene.m", 72, "_sceneNodeBySceneName != nil");
  }

  v13 = [(NSMutableDictionary *)sceneNodeBySceneName objectForKeyedSubscript:identifier];
  if (v13)
  {
    v14 = v13;
LABEL_4:
    v15 = [PGGraphSceneEdge alloc];
    [sceneCopy confidence];
    v17 = -[PGGraphSceneEdge initFromMomentNode:toSceneNode:confidence:isReliable:numberOfAssets:numberOfHighConfidenceAssets:numberOfSearchConfidenceAssets:numberOfDominantSceneAssets:](v15, "initFromMomentNode:toSceneNode:confidence:isReliable:numberOfAssets:numberOfHighConfidenceAssets:numberOfSearchConfidenceAssets:numberOfDominantSceneAssets:", nodeCopy, v14, [sceneCopy isReliable], objc_msgSend(sceneCopy, "numberOfAssets"), objc_msgSend(sceneCopy, "numberOfHighConfidenceAssets"), objc_msgSend(sceneCopy, "numberOfSearchConfidenceAssets"), v16, objc_msgSend(sceneCopy, "numberOfDominantSceneAssets"));
    [requestCopy addEdge:v17];
    goto LABEL_12;
  }

  sceneTaxonomy = [(PGGraphBuilder *)self sceneTaxonomy];
  v19 = [sceneTaxonomy nodeForName:identifier];

  if (v19)
  {
    v20 = [PGGraphSceneNode alloc];
    [sceneCopy relevance];
    v14 = [(PGGraphSceneNode *)v20 initWithSceneTaxonomyNode:v19 level:v21];
    [requestCopy addNode:v14];
    [(NSMutableDictionary *)self->_sceneNodeBySceneName setObject:v14 forKeyedSubscript:identifier];

    if (v14)
    {
      goto LABEL_4;
    }
  }

  else
  {
    loggingConnection = [(PGGraphBuilder *)self loggingConnection];
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = identifier;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Unknown scene '%@'", buf, 0xCu);
    }

    v14 = 0;
  }

  v17 = 0;
LABEL_12:

  v23 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)insertScene:(id)scene fromMomentNode:(id)node
{
  v6 = MEMORY[0x277D22C50];
  nodeCopy = node;
  sceneCopy = scene;
  v9 = objc_alloc_init(v6);
  v10 = [(PGGraphBuilder *)self _insertScene:sceneCopy fromMomentNode:nodeCopy changeRequest:v9];

  [(MAGraph *)self->_graph executeGraphChangeRequest:v9];

  return v10;
}

- (void)_insertEntityNetScene:(id)scene fromMomentNode:(id)node withEntityNetSceneTaxonomy:(id)taxonomy changeRequest:(id)request
{
  sceneCopy = scene;
  nodeCopy = node;
  taxonomyCopy = taxonomy;
  requestCopy = request;
  identifier = [sceneCopy identifier];
  if (identifier)
  {
    v14 = [(NSMutableDictionary *)self->_sceneNodeBySceneName objectForKeyedSubscript:identifier];
    if (v14 || ([(NSMutableSet *)self->_entityNetSceneTaxonomyNodesNotIndexedInSearch containsObject:identifier]& 1) != 0)
    {
      goto LABEL_8;
    }

    if (![sceneCopy numberOfSearchConfidenceAssets])
    {
      goto LABEL_9;
    }

    v15 = [(NSMutableDictionary *)self->_entityNetSceneNodeBySceneName objectForKeyedSubscript:identifier];
    if (v15)
    {
      v14 = v15;
LABEL_7:
      v16 = [PGGraphEntityNetSceneEdge alloc];
      [sceneCopy confidence];
      v18 = -[PGGraphSceneEdge initFromMomentNode:toSceneNode:confidence:isReliable:numberOfAssets:numberOfHighConfidenceAssets:numberOfSearchConfidenceAssets:numberOfDominantSceneAssets:](v16, "initFromMomentNode:toSceneNode:confidence:isReliable:numberOfAssets:numberOfHighConfidenceAssets:numberOfSearchConfidenceAssets:numberOfDominantSceneAssets:", nodeCopy, v14, [sceneCopy isReliable], objc_msgSend(sceneCopy, "numberOfAssets"), objc_msgSend(sceneCopy, "numberOfHighConfidenceAssets"), objc_msgSend(sceneCopy, "numberOfSearchConfidenceAssets"), v17, objc_msgSend(sceneCopy, "numberOfDominantSceneAssets"));
      [requestCopy addEdge:v18];

LABEL_8:
      goto LABEL_9;
    }

    v19 = [taxonomyCopy nodeForName:identifier];
    if (v19)
    {
      v14 = v19;
      if (([v19 isIndexed] & 1) == 0)
      {
        [(NSMutableSet *)self->_entityNetSceneTaxonomyNodesNotIndexedInSearch addObject:identifier];
        goto LABEL_8;
      }

      v20 = [PGGraphEntityNetSceneNode alloc];
      [sceneCopy relevance];
      v22 = [(PGGraphSceneNode *)v20 initWithSceneTaxonomyNode:v14 level:v21];
      [requestCopy addNode:v22];
      [(NSMutableDictionary *)self->_entityNetSceneNodeBySceneName setObject:v22 forKeyedSubscript:identifier];

      if (v22)
      {
        v14 = v22;
        goto LABEL_7;
      }
    }
  }

LABEL_9:
}

- (void)insertPersonNodeForShareParticipant:(id)participant
{
  participantCopy = participant;
  if ([participantCopy isCurrentUser])
  {
    serviceManager = [(PGGraphBuilder *)self serviceManager];
    mePerson = [serviceManager mePerson];
  }

  else
  {
    v6 = MEMORY[0x277CD9938];
    photoLibrary = [(PGGraphBuilder *)self photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
    v9 = [v6 fetchPersonForShareParticipant:participantCopy options:librarySpecificFetchOptions];
    serviceManager = [v9 firstObject];

    if (serviceManager)
    {
      serviceManager2 = [(PGGraphBuilder *)self serviceManager];
      localIdentifier = [serviceManager localIdentifier];
      photoLibrary2 = [(PGGraphBuilder *)self photoLibrary];
      mePerson = [serviceManager2 personForName:localIdentifier inPhotoLibrary:photoLibrary2];
    }

    else
    {
      mePerson = 0;
    }
  }

  v13 = [[PGGraphIngestShareParticipantContainer alloc] initWithShareParticipant:participantCopy person:mePerson];
  v14 = [(PGGraphBuilder *)self insertPersonNodeForPerson:v13];
  [(PGGraphPeopleDomainBuildingHelper *)self->_peopleDomainBuildingHelper cacheAuthorNode:v14 forShareParticipant:participantCopy];
}

- (void)insertPersonNodesForShareParticipants:(id)participants
{
  v38 = *MEMORY[0x277D85DE8];
  participantsCopy = participants;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = participantsCopy;
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
        localIdentifier = [v11 localIdentifier];
        [v5 setObject:v11 forKeyedSubscript:localIdentifier];
      }

      v8 = [v6 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v8);
  }

  v13 = MEMORY[0x277CBEB98];
  allKeys = [v5 allKeys];
  v15 = [v13 setWithArray:allKeys];

  graph = [(PGGraphBuilder *)self graph];
  v17 = [PGGraphPersonNodeCollection personNodesForShareParticipantIdentifiers:v15 inGraph:graph];

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __71__PGGraphBuilder_SharedLibrary__insertPersonNodesForShareParticipants___block_invoke;
  v29[3] = &unk_278889EA0;
  v18 = v5;
  v30 = v18;
  selfCopy = self;
  [v17 enumerateNodesUsingBlock:v29];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  allValues = [v18 allValues];
  v20 = [allValues countByEnumeratingWithState:&v25 objects:v36 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [(PGGraphBuilder *)self insertPersonNodeForShareParticipant:*(*(&v25 + 1) + 8 * j)];
      }

      v21 = [allValues countByEnumeratingWithState:&v25 objects:v36 count:16];
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

+ (id)sharedLibraryParticipantsForLibrary:(id)library
{
  librarySpecificFetchOptions = [library librarySpecificFetchOptions];
  v4 = [MEMORY[0x277CD98A8] fetchActiveLibraryScopeWithOptions:librarySpecificFetchOptions];
  firstObject = [v4 firstObject];

  if (firstObject)
  {
    v6 = [MEMORY[0x277CD99C8] fetchParticipantsInShare:firstObject options:librarySpecificFetchOptions];
    fetchedObjects = [v6 fetchedObjects];

    v8 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:fetchedObjects];
  }

  else
  {
    v8 = [MEMORY[0x277CBEB98] set];
  }

  return v8;
}

+ (BOOL)isSharedLibraryEnabledForLibrary:(id)library
{
  v3 = MEMORY[0x277CD98A8];
  librarySpecificFetchOptions = [library librarySpecificFetchOptions];
  v5 = [v3 fetchActiveLibraryScopeWithOptions:librarySpecificFetchOptions];
  firstObject = [v5 firstObject];

  return firstObject != 0;
}

- (id)insertLocationMobilityNodeWithMobility:(id)mobility fromMomentNode:(id)node confidence:(double)confidence
{
  v8 = MEMORY[0x277D22C50];
  nodeCopy = node;
  mobilityCopy = mobility;
  v11 = objc_alloc_init(v8);
  v12 = [[PGGraphMobilityNode alloc] initWithLabel:mobilityCopy];

  if (![(MAGraph *)self->_graph findAndResolveUniqueNode:v12])
  {
    [v11 addNode:v12];
  }

  v13 = [[PGGraphMobilityEdge alloc] initFromMomentNode:nodeCopy toMobilityNode:v12 confidence:confidence];

  if (![(MAGraph *)self->_graph findAndResolveUniqueEdge:v13])
  {
    [v11 addEdge:v13];
  }

  [(MAGraph *)self->_graph executeGraphChangeRequest:v11];

  return v12;
}

- (id)insertLocationMobilityNodeWithClueCollection:(id)collection fromMomentNode:(id)node
{
  collectionCopy = collection;
  nodeCopy = node;
  serviceManager = [(PGGraphBuilder *)self serviceManager];
  v9 = objc_alloc(MEMORY[0x277CCA970]);
  universalStartDate = [nodeCopy universalStartDate];
  universalEndDate = [nodeCopy universalEndDate];
  v12 = [v9 initWithStartDate:universalStartDate endDate:universalEndDate];

  v21 = 0.0;
  v13 = [serviceManager predominantLocationMobilityForDateInterval:v12 confidence:&v21];
  if (v13)
  {
    v14 = v21;
    if (v21 >= 0.2)
    {
      goto LABEL_7;
    }
  }

  locationMobilityClue = [collectionCopy locationMobilityClue];
  v16 = locationMobilityClue;
  if (locationMobilityClue)
  {
    value = [locationMobilityClue value];

    [v16 confidence];
    v21 = v18;
    v13 = value;
  }

  if (v13)
  {
    v14 = v21;
LABEL_7:
    v19 = [(PGGraphBuilder *)self insertLocationMobilityNodeWithMobility:v13 fromMomentNode:nodeCopy confidence:v14];
    goto LABEL_8;
  }

  v19 = 0;
LABEL_8:

  return v19;
}

- (id)insertAddressNodeWithPlacemark:(id)placemark location:(id)location relevance:(double)relevance numberOfAssets:(unint64_t)assets duringDateInterval:(id)interval fromMomentNode:(id)node
{
  placemarkCopy = placemark;
  locationCopy = location;
  intervalCopy = interval;
  nodeCopy = node;
  v18 = 0;
  if (placemarkCopy && locationCopy)
  {
    serviceManager = [(PGGraphBuilder *)self serviceManager];
    if ([MEMORY[0x277D3ACD0] locationIsCoarse:locationCopy])
    {
      v20 = 0;
    }

    else
    {
      v21 = [serviceManager locationOfInterestCloseToLocation:locationCopy inDateInterval:intervalCopy];
      locationCache = [(PGGraphBuilder *)self locationCache];
      v23 = [v21 placemarkWithLocationCache:locationCache];

      if (v23 && ([v23 isEqual:placemarkCopy] & 1) == 0)
      {
        v36 = v23;

        v20 = 1;
        placemarkCopy = v36;
      }

      else
      {
        v20 = 0;
      }
    }

    [locationCopy coordinate];
    v25 = v24;
    v27 = v26;
    v28 = objc_alloc_init(MEMORY[0x277D22C50]);
    v29 = [(PGGraphBuilder *)self insertAddressNodeWithProjectedPlacemark:placemarkCopy atEventLocation:locationCopy usingImprovedPlacemark:v20 changeRequest:v28];
    v18 = v29;
    if (v29)
    {
      v37 = serviceManager;
      v38 = nodeCopy;
      if ([v29 isPrecise] && (objc_msgSend(serviceManager, "isRemoteLocation:inDateInterval:", locationCopy, intervalCopy) & 1) != 0)
      {
        v30 = off_27887B358;
      }

      else
      {
        v30 = off_27887AB80;
      }

      v31 = objc_alloc(*v30);
      startDate = [intervalCopy startDate];
      endDate = [intervalCopy endDate];
      v34 = [v31 initFromMomentNode:v38 toAddressNode:v18 relevance:startDate universalStartDate:endDate universalEndDate:assets photoCoordinate:relevance numberOfAssets:{v25, v27}];

      if (![(MAGraph *)self->_graph findAndResolveUniqueEdge:v34])
      {
        [v28 addEdge:v34];
      }

      serviceManager = v37;
      nodeCopy = v38;
    }

    [(MAGraph *)self->_graph executeGraphChangeRequest:v28];
  }

  return v18;
}

- (id)insertLocationHierarchyWithClueCollection:(id)collection fromMomentNode:(id)node
{
  collectionCopy = collection;
  nodeCopy = node;
  v8 = [MEMORY[0x277CBEB58] set];
  array = [MEMORY[0x277CBEB18] array];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __85__PGGraphBuilder_Location__insertLocationHierarchyWithClueCollection_fromMomentNode___block_invoke;
  v26[3] = &unk_278880DB0;
  v10 = array;
  v27 = v10;
  [collectionCopy enumerateTimeClues:v26];
  v11 = [v10 count];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __85__PGGraphBuilder_Location__insertLocationHierarchyWithClueCollection_fromMomentNode___block_invoke_2;
  v19[3] = &unk_278880DD8;
  v25 = v11;
  v20 = v10;
  v21 = collectionCopy;
  selfCopy = self;
  v23 = nodeCopy;
  v12 = v8;
  v24 = v12;
  v13 = nodeCopy;
  v14 = collectionCopy;
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

- (id)insertAddressNodeWithProjectedPlacemark:(id)placemark atEventLocation:(id)location usingImprovedPlacemark:(BOOL)improvedPlacemark changeRequest:(id)request
{
  improvedPlacemarkCopy = improvedPlacemark;
  v42 = *MEMORY[0x277D85DE8];
  placemarkCopy = placemark;
  locationCopy = location;
  requestCopy = request;
  location = [placemarkCopy location];
  [location coordinate];
  v15 = v14;
  v17 = v16;

  [locationCopy coordinate];
  v19 = v18;
  v21 = v20;
  v29 = v18;
  v31 = v20;
  v44.latitude = v15;
  v44.longitude = v17;
  if (!CLLocationCoordinate2DIsValid(v44) || v15 == 0.0 && v17 == 0.0 || (v45.latitude = v19, v45.longitude = v21, !CLLocationCoordinate2DIsValid(v45)) || v19 == 0.0 && v21 == 0.0)
  {
    v22 = +[PGLogging sharedLogging];
    loggingConnection = [v22 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 138478851;
      v33 = placemarkCopy;
      v34 = 2049;
      v35 = v15;
      v36 = 2049;
      v37 = v17;
      v38 = 2049;
      v39 = v19;
      v40 = 2049;
      v41 = v21;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Coordinate invalid for placemark %{private}@ projection(%{private}f, %{private}f), photoCoordinate (%{private}f, %{private}f).", buf, 0x34u);
    }

    v24 = 0;
  }

  else
  {
    if ([placemarkCopy isOcean])
    {
      CLLocationCoordinate2DGetDistanceFrom();
      if (v27 >= 10000.0)
      {
        v15 = v30;
        v17 = v31;
      }

      v28 = 3;
    }

    else if ([MEMORY[0x277D3ACD0] locationIsCoarse:locationCopy])
    {
      v28 = 2;
    }

    else
    {
      v28 = improvedPlacemarkCopy;
    }

    loggingConnection = [(PGGraphBuilder *)self _uuidForPlacemark:placemarkCopy forNodeLabel:@"Number"];
    v24 = [[PGGraphAddressNode alloc] initWithLocationMode:v28 coordinate:loggingConnection name:v15, v17];
    if (![(MAGraph *)self->_graph findAndResolveUniqueNode:v24])
    {
      [requestCopy addNode:v24];
    }

    [(PGGraphBuilder *)self insertAreasOfInterestForProjectedPlacemark:placemarkCopy fromAddressNode:v24 changeRequest:requestCopy];
    [(PGGraphBuilder *)self insertLocationHierarchyWithProjectedPlacemark:placemarkCopy fromAddressNode:v24 changeRequest:requestCopy];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (void)insertLocationHierarchyWithProjectedPlacemark:(id)placemark fromAddressNode:(id)node changeRequest:(id)request
{
  v104 = *MEMORY[0x277D85DE8];
  placemarkCopy = placemark;
  nodeCopy = node;
  requestCopy = request;
  if (![nodeCopy identifier])
  {
    v11 = nodeCopy;
    subThoroughfare = [placemarkCopy subThoroughfare];

    if (subThoroughfare)
    {
      v13 = [(PGGraphBuilder *)self _uuidForPlacemark:placemarkCopy forNodeLabel:@"Number"];
      v14 = [PGGraphLocationNumberNode alloc];
      subThoroughfare2 = [placemarkCopy subThoroughfare];
      v16 = [(PGGraphNamedLocationNode *)v14 initWithName:subThoroughfare2 uuid:v13];

      v17 = [(MAGraph *)self->_graph findAndResolveUniqueNode:v16];
      if (!v17)
      {
        [requestCopy addNode:v16];
      }

      v18 = [[PGGraphLocationNumberEdge alloc] initFromLocationNode:v11 toLocationNumberNode:v16];
      if (![(MAGraph *)self->_graph findAndResolveUniqueEdge:v18])
      {
        [requestCopy addEdge:v18];
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

    thoroughfare = [placemarkCopy thoroughfare];

    if (thoroughfare)
    {
      v20 = [(PGGraphBuilder *)self _uuidForPlacemark:placemarkCopy forNodeLabel:@"Street"];
      v21 = [PGGraphLocationStreetNode alloc];
      thoroughfare2 = [placemarkCopy thoroughfare];
      v11 = [(PGGraphNamedLocationNode *)v21 initWithName:thoroughfare2 uuid:v20];

      v23 = [(MAGraph *)self->_graph findAndResolveUniqueNode:v11];
      if (!v23)
      {
        [requestCopy addNode:v11];
      }

      v24 = [[PGGraphLocationStreetEdge alloc] initFromLocationNode:v16 toStreetNode:v11];
      if (![(MAGraph *)self->_graph findAndResolveUniqueEdge:v24])
      {
        [requestCopy addEdge:v24];
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

    subLocality = [placemarkCopy subLocality];

    if (subLocality)
    {
      v13 = [(PGGraphBuilder *)self _uuidForPlacemark:placemarkCopy forNodeLabel:@"District"];
      v26 = [PGGraphLocationDistrictNode alloc];
      subLocality2 = [placemarkCopy subLocality];
      v16 = [(PGGraphNamedLocationNode *)v26 initWithName:subLocality2 uuid:v13];

      v28 = [(MAGraph *)self->_graph findAndResolveUniqueNode:v16];
      if (!v28)
      {
        [requestCopy addNode:v16];
      }

      v18 = [[PGGraphLocationDistrictEdge alloc] initFromLocationNode:v11 toDistrictNode:v16];
      if (![(MAGraph *)self->_graph findAndResolveUniqueEdge:v18])
      {
        [requestCopy addEdge:v18];
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

    locality = [placemarkCopy locality];

    if (locality)
    {
      v20 = [(PGGraphBuilder *)self _uuidForPlacemark:placemarkCopy forNodeLabel:@"City"];
      v30 = [PGGraphLocationCityNode alloc];
      locality2 = [placemarkCopy locality];
      v11 = [(PGGraphNamedLocationNode *)v30 initWithName:locality2 uuid:v20];

      v32 = [(MAGraph *)self->_graph findAndResolveUniqueNode:v11];
      if (!v32)
      {
        [requestCopy addNode:v11];
      }

      v24 = [[PGGraphLocationCityEdge alloc] initFromLocationNode:v16 toCityNode:v11];
      if (![(MAGraph *)self->_graph findAndResolveUniqueEdge:v24])
      {
        [requestCopy addEdge:v24];
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

    subAdministrativeArea = [placemarkCopy subAdministrativeArea];

    if (subAdministrativeArea)
    {
      v13 = [(PGGraphBuilder *)self _uuidForPlacemark:placemarkCopy forNodeLabel:@"County"];
      v34 = [PGGraphLocationCountyNode alloc];
      subAdministrativeArea2 = [placemarkCopy subAdministrativeArea];
      v16 = [(PGGraphNamedLocationNode *)v34 initWithName:subAdministrativeArea2 uuid:v13];

      v36 = [(MAGraph *)self->_graph findAndResolveUniqueNode:v16];
      if (!v36)
      {
        [requestCopy addNode:v16];
      }

      v18 = [[PGGraphLocationCountyEdge alloc] initFromLocationNode:v11 toCountyNode:v16];
      if (![(MAGraph *)self->_graph findAndResolveUniqueEdge:v18])
      {
        [requestCopy addEdge:v18];
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

    administrativeArea = [placemarkCopy administrativeArea];

    if (administrativeArea)
    {
      v20 = [(PGGraphBuilder *)self _uuidForPlacemark:placemarkCopy forNodeLabel:@"State"];
      v38 = [PGGraphLocationStateNode alloc];
      administrativeArea2 = [placemarkCopy administrativeArea];
      v11 = [(PGGraphNamedLocationNode *)v38 initWithName:administrativeArea2 uuid:v20];

      v40 = [(MAGraph *)self->_graph findAndResolveUniqueNode:v11];
      if (!v40)
      {
        [requestCopy addNode:v11];
      }

      v24 = [[PGGraphLocationStateEdge alloc] initFromLocationNode:v16 toStateNode:v11];
      if (![(MAGraph *)self->_graph findAndResolveUniqueEdge:v24])
      {
        [requestCopy addEdge:v24];
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

    iSOcountryCode = [placemarkCopy ISOcountryCode];

    if (iSOcountryCode)
    {
      iSOcountryCode2 = [placemarkCopy ISOcountryCode];
      v44 = [PGGraphLocationCountryNode alloc];
      iSOcountryCode3 = [placemarkCopy ISOcountryCode];
      v46 = [(PGGraphNamedLocationNode *)v44 initWithName:iSOcountryCode3 uuid:iSOcountryCode2];

      v47 = [(MAGraph *)self->_graph findAndResolveUniqueNode:v46];
      if (!v47)
      {
        [requestCopy addNode:v46];
      }

      v48 = [[PGGraphLocationCountryEdge alloc] initFromLocationNode:v11 toCountryNode:v46];
      if (![(MAGraph *)self->_graph findAndResolveUniqueEdge:v48])
      {
        [requestCopy addEdge:v48];
      }

      if (v47)
      {

        goto LABEL_50;
      }

      v84 = v48;
      v85 = iSOcountryCode2;
      v91 = v11;
      v86 = nodeCopy;
      v87 = placemarkCopy;
      v49 = MEMORY[0x277CBEAF8];
      iSOcountryCode4 = [placemarkCopy ISOcountryCode];
      v51 = [v49 languagesForRegion:iSOcountryCode4 subdivision:0 withThreshold:2 filter:0];

      selfCopy = self;
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
              [requestCopy addNode:v61];
            }

            v62 = [[PGGraphLanguageEdge alloc] initFromLocationNode:v46 toLanguageNode:v61];
            [requestCopy addEdge:v62];
          }

          v57 = [v55 countByEnumeratingWithState:&v93 objects:v103 count:16];
        }

        while (v57);
      }

      placemarkCopy = v87;
      self = selfCopy;
    }

    else
    {
      v86 = nodeCopy;
      v46 = v11;
    }

    iSOcountryCode5 = [placemarkCopy ISOcountryCode];

    if (iSOcountryCode5)
    {
      v64 = requestCopy;
      currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
      v66 = MEMORY[0x277CBEAF8];
      iSOcountryCode6 = [placemarkCopy ISOcountryCode];
      v68 = [v66 containingRegionOfRegion:iSOcountryCode6];

      v69 = [currentLocale localizedStringForCountryCode:v68];
      v70 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
      v71 = [v70 localizedStringForCountryCode:v68];

      v88 = v71;
      if (v69)
      {
        nodeCopy = v86;
        requestCopy = v64;
        if (v71)
        {
          v72 = [(PGGraphNamedLocationNode *)[PGGraphLocationSubcontinentNode alloc] initWithName:v69 uuid:v71];
          v73 = [(MAGraph *)self->_graph findAndResolveUniqueNode:v72];
          if (!v73)
          {
            [requestCopy addNode:v72];
          }

          loggingConnection2 = [[PGGraphLocationSubcontinentEdge alloc] initFromLocationNode:v46 toSubcontinentNode:v72];
          if (![(MAGraph *)self->_graph findAndResolveUniqueEdge:loggingConnection2])
          {
            [requestCopy addEdge:loggingConnection2];
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

          iSOcountryCode7 = [placemarkCopy ISOcountryCode];

          if (iSOcountryCode7)
          {
            v90 = v69;
            currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
            v78 = MEMORY[0x277CBEAF8];
            iSOcountryCode8 = [placemarkCopy ISOcountryCode];
            v80 = [v78 containingContinentOfRegion:iSOcountryCode8];

            v75 = [currentLocale2 localizedStringForCountryCode:v80];
            v81 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
            loggingConnection2 = [v81 localizedStringForCountryCode:v80];

            if (v75)
            {
              v69 = v90;
              if (loggingConnection2)
              {
                loggingConnection = [(PGGraphNamedLocationNode *)[PGGraphLocationContinentNode alloc] initWithName:v75 uuid:loggingConnection2];
                if (![(MAGraph *)self->_graph findAndResolveUniqueNode:loggingConnection])
                {
                  [requestCopy addNode:loggingConnection];
                }

                v83 = [[PGGraphLocationContinentEdge alloc] initFromLocationNode:v92 toContinentNode:loggingConnection];
                if (![(MAGraph *)self->_graph findAndResolveUniqueEdge:v83])
                {
                  [requestCopy addEdge:v83];
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
            loggingConnection2 = 0;
          }

          loggingConnection = [(PGGraphBuilder *)self loggingConnection];
          if (os_log_type_enabled(&loggingConnection->super.super.super.super.super.super, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v100 = v75;
            v101 = 2112;
            v102 = loggingConnection2;
            _os_log_error_impl(&dword_22F0FC000, &loggingConnection->super.super.super.super.super.super, OS_LOG_TYPE_ERROR, "Either or both of the localized continent name (%@) and UUID (%@) is or are nil", buf, 0x16u);
          }

          goto LABEL_98;
        }
      }

      else
      {
        nodeCopy = v86;
        requestCopy = v64;
      }
    }

    else
    {
      v69 = 0;
      v88 = 0;
      nodeCopy = v86;
    }

    loggingConnection2 = [(PGGraphBuilder *)self loggingConnection];
    if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v100 = v69;
      v101 = 2112;
      v102 = v88;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "Either or both of the localized subcontinent name (%@) and UUID (%@) is or are nil", buf, 0x16u);
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

- (void)insertAreasOfInterestForProjectedPlacemark:(id)placemark fromAddressNode:(id)node changeRequest:(id)request
{
  placemarkCopy = placemark;
  nodeCopy = node;
  requestCopy = request;
  v11 = objc_alloc(MEMORY[0x277CBEB70]);
  areasOfInterest = [placemarkCopy areasOfInterest];
  v13 = [v11 initWithArray:areasOfInterest];

  v14 = [v13 count];
  popularityScoresOrderedByAOI = [placemarkCopy popularityScoresOrderedByAOI];
  if (v14 == [popularityScoresOrderedByAOI count])
  {
    if (v14)
    {
      if (v14 == 1)
      {
        isIsland = [placemarkCopy isIsland];
      }

      else
      {
        isIsland = 0;
      }

      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __101__PGGraphBuilder_Location__insertAreasOfInterestForProjectedPlacemark_fromAddressNode_changeRequest___block_invoke;
      v18[3] = &unk_278880D88;
      v22 = v14;
      v18[4] = self;
      v19 = popularityScoresOrderedByAOI;
      v23 = isIsland;
      v20 = requestCopy;
      v21 = nodeCopy;
      v24 = v14 != 1;
      [v13 enumerateObjectsUsingBlock:v18];
    }
  }

  else
  {
    loggingConnection = [(PGGraphBuilder *)self loggingConnection];
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Length of areasOfInterest and popularityScoresOrderedByAOI arrays are different", buf, 2u);
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

- (id)_uuidForPlacemark:(id)placemark forNodeLabel:(id)label
{
  placemarkCopy = placemark;
  labelCopy = label;
  string = [MEMORY[0x277CCAB68] string];
  if ([labelCopy isEqualToString:@"Number"])
  {
    subThoroughfare = [placemarkCopy subThoroughfare];
    v9 = subThoroughfare;
    if (subThoroughfare)
    {
      [string appendFormat:@"%@", subThoroughfare];
    }

    goto LABEL_6;
  }

  if ([labelCopy isEqualToString:@"Street"])
  {
LABEL_6:
    thoroughfare = [placemarkCopy thoroughfare];
    v11 = thoroughfare;
    if (thoroughfare)
    {
      [string appendFormat:@"%@", thoroughfare];
    }

    goto LABEL_9;
  }

  if ([labelCopy isEqualToString:@"District"])
  {
LABEL_9:
    subLocality = [placemarkCopy subLocality];
    v13 = subLocality;
    if (subLocality)
    {
      [string appendFormat:@"%@", subLocality];
    }

    goto LABEL_12;
  }

  if ([labelCopy isEqualToString:@"City"])
  {
LABEL_12:
    locality = [placemarkCopy locality];
    v15 = locality;
    if (locality)
    {
      [string appendFormat:@"%@", locality];
    }

    goto LABEL_15;
  }

  if ([labelCopy isEqualToString:@"County"])
  {
LABEL_15:
    subAdministrativeArea = [placemarkCopy subAdministrativeArea];
    v17 = subAdministrativeArea;
    if (subAdministrativeArea)
    {
      [string appendFormat:@"%@", subAdministrativeArea];
    }

    goto LABEL_18;
  }

  if (![labelCopy isEqualToString:@"State"])
  {
    if (![labelCopy isEqualToString:@"Country"])
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

LABEL_18:
  administrativeArea = [placemarkCopy administrativeArea];
  v19 = administrativeArea;
  if (administrativeArea)
  {
    [string appendFormat:@"%@", administrativeArea];
  }

LABEL_21:
  iSOcountryCode = [placemarkCopy ISOcountryCode];
  v21 = iSOcountryCode;
  if (iSOcountryCode)
  {
    [string appendFormat:@"%@", iSOcountryCode];
  }

LABEL_24:

  return string;
}

- (void)_onGraphDidUpdate
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = +[PGLogging sharedLogging];
  loggingConnection = [v3 loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[GraphBuilder] - signaling availability state did change", buf, 2u);
  }

  v5 = [objc_alloc(MEMORY[0x277D3AC60]) initWithSourceIdentifier:@"com.apple.photoanalysisd"];
  [v5 setPhotosKnowledgeGraphIsReady:MEMORY[0x277CBEC38]];
  photoLibrary = [(PHPhotoLibrary *)self->_photoLibrary photoLibrary];
  assetsdClient = [photoLibrary assetsdClient];
  libraryInternalClient = [assetsdClient libraryInternalClient];
  v14 = 0;
  v9 = [libraryInternalClient signalAvailabilityWithChanges:v5 error:&v14];
  v10 = v14;

  v11 = +[PGLogging sharedLogging];
  loggingConnection2 = [v11 loggingConnection];

  if (v9)
  {
    if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, "[GraphBuilder] - successfully updated availability state", buf, 2u);
    }
  }

  else if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v16 = v10;
    _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "[GraphBuilder] - failed to update availability state, error: %@", buf, 0xCu);
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
      loggingConnection = [v5 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v10 = v4;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGGraphBuilder] Error clearing features cache: %@", buf, 0xCu);
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
  selfCopy = self;
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
      loggingConnection = [v6 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PERSON ACTIVITY MEANING CRITERIA] nil personActivityMeaningLabels found", buf, 2u);
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
            v17 = [PGMeaningCriteriaEvaluator meaningCriteriaEvaluatorsForMeaningLabel:v14 withDictionary:v16 serviceManager:selfCopy->_serviceManager];
            [(NSDictionary *)v30 setObject:v17 forKeyedSubscript:v14];
          }

          else
          {
            v18 = v10;
            v19 = v12;
            v20 = v4;
            v21 = v11;
            v22 = selfCopy;
            v23 = +[PGLogging sharedLogging];
            loggingConnection2 = [v23 loggingConnection];

            if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v36 = v14;
              _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "[PERSON ACTIVITY MEANING CRITERIA] nil personActivityMeaning criteria dictionary found for meaning %@", buf, 0xCu);
            }

            [(NSDictionary *)v30 setObject:MEMORY[0x277CBEBF8] forKeyedSubscript:v14];
            selfCopy = v22;
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

    v25 = selfCopy->_personActivityMeaningCriteriaDictionaryByMeaningLabel;
    selfCopy->_personActivityMeaningCriteriaDictionaryByMeaningLabel = v30;

    personActivityMeaningCriteriaDictionaryByMeaningLabel = selfCopy->_personActivityMeaningCriteriaDictionaryByMeaningLabel;
  }

  v26 = *MEMORY[0x277D85DE8];

  return personActivityMeaningCriteriaDictionaryByMeaningLabel;
}

- (void)setCurationAlgorithmsVersion:(unint64_t)version
{
  infoNode = [(PGGraph *)self->_graph infoNode];
  creationDate = [infoNode creationDate];
  localeIdentifier = [infoNode localeIdentifier];
  languageIdentifiers = [infoNode languageIdentifiers];
  geoServiceProviderID = [infoNode geoServiceProviderID];
  v9 = [PGGraphInfoNode genericPropertiesWithCreationDate:creationDate localeIdentifier:localeIdentifier languageIdentifiers:languageIdentifiers geoServiceProviderID:geoServiceProviderID curationAlgorithmsVersion:version contactsStoreAccess:1];

  -[MAGraph persistModelProperties:forNodeWithIdentifier:clobberExisting:](self->_graph, "persistModelProperties:forNodeWithIdentifier:clobberExisting:", v9, [infoNode identifier], 0);
}

- (void)setGeoServiceProviderID:(id)d
{
  graph = self->_graph;
  dCopy = d;
  infoNode = [(PGGraph *)graph infoNode];
  creationDate = [infoNode creationDate];
  localeIdentifier = [infoNode localeIdentifier];
  languageIdentifiers = [infoNode languageIdentifiers];
  v9 = +[PGGraphInfoNode genericPropertiesWithCreationDate:localeIdentifier:languageIdentifiers:geoServiceProviderID:curationAlgorithmsVersion:contactsStoreAccess:](PGGraphInfoNode, "genericPropertiesWithCreationDate:localeIdentifier:languageIdentifiers:geoServiceProviderID:curationAlgorithmsVersion:contactsStoreAccess:", creationDate, localeIdentifier, languageIdentifiers, dCopy, [infoNode curationAlgorithmsVersion], 1);

  -[MAGraph persistModelProperties:forNodeWithIdentifier:clobberExisting:](self->_graph, "persistModelProperties:forNodeWithIdentifier:clobberExisting:", v9, [infoNode identifier], 0);
}

- (void)setLanguageIdentifiers:(id)identifiers
{
  graph = self->_graph;
  identifiersCopy = identifiers;
  infoNode = [(PGGraph *)graph infoNode];
  creationDate = [infoNode creationDate];
  localeIdentifier = [infoNode localeIdentifier];
  geoServiceProviderID = [infoNode geoServiceProviderID];
  v9 = +[PGGraphInfoNode genericPropertiesWithCreationDate:localeIdentifier:languageIdentifiers:geoServiceProviderID:curationAlgorithmsVersion:contactsStoreAccess:](PGGraphInfoNode, "genericPropertiesWithCreationDate:localeIdentifier:languageIdentifiers:geoServiceProviderID:curationAlgorithmsVersion:contactsStoreAccess:", creationDate, localeIdentifier, identifiersCopy, geoServiceProviderID, [infoNode curationAlgorithmsVersion], 1);

  -[MAGraph persistModelProperties:forNodeWithIdentifier:clobberExisting:](self->_graph, "persistModelProperties:forNodeWithIdentifier:clobberExisting:", v9, [infoNode identifier], 0);
}

- (void)setLocaleIdentifier:(id)identifier
{
  graph = self->_graph;
  identifierCopy = identifier;
  infoNode = [(PGGraph *)graph infoNode];
  creationDate = [infoNode creationDate];
  languageIdentifiers = [infoNode languageIdentifiers];
  geoServiceProviderID = [infoNode geoServiceProviderID];
  v9 = +[PGGraphInfoNode genericPropertiesWithCreationDate:localeIdentifier:languageIdentifiers:geoServiceProviderID:curationAlgorithmsVersion:contactsStoreAccess:](PGGraphInfoNode, "genericPropertiesWithCreationDate:localeIdentifier:languageIdentifiers:geoServiceProviderID:curationAlgorithmsVersion:contactsStoreAccess:", creationDate, identifierCopy, languageIdentifiers, geoServiceProviderID, [infoNode curationAlgorithmsVersion], 1);

  -[MAGraph persistModelProperties:forNodeWithIdentifier:clobberExisting:](self->_graph, "persistModelProperties:forNodeWithIdentifier:clobberExisting:", v9, [infoNode identifier], 0);
}

- (id)_momentNodesFromPersonNodes:(id)nodes
{
  v21 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  v4 = [MEMORY[0x277CBEB58] set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = nodesCopy;
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

        collection = [*(*(&v16 + 1) + 8 * i) collection];
        momentNodes = [collection momentNodes];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __46__PGGraphBuilder__momentNodesFromPersonNodes___block_invoke;
        v14[3] = &unk_278889290;
        v15 = v4;
        [momentNodes enumerateNodesUsingBlock:v14];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)feederForInsertingAssetCollection:(id)collection
{
  photoLibrary = self->_photoLibrary;
  collectionCopy = collection;
  librarySpecificFetchOptions = [(PHPhotoLibrary *)photoLibrary librarySpecificFetchOptions];
  v7 = +[PGGraph assetPropertySetsForIngest];
  [librarySpecificFetchOptions addFetchPropertySets:v7];

  [librarySpecificFetchOptions setIncludeGuestAssets:1];
  v8 = [MEMORY[0x277D276B8] feederPrefetchOptionsWithDefaultMode:2];
  v9 = MEMORY[0x277D27710];
  curationContext = [(PGGraphBuilder *)self curationContext];
  v11 = [v9 feederForAssetCollection:collectionCopy options:librarySpecificFetchOptions feederPrefetchOptions:v8 curationContext:curationContext sharedLibraryEnabled:{-[PGGraphBuilder isSharedLibraryEnabled](self, "isSharedLibraryEnabled")}];

  personLocalIdentifiers = [(CLSFocusPeopleCache *)self->_focusPeopleIngestCache personLocalIdentifiers];
  [v11 setFocusPersonLocalIdentifiers:personLocalIdentifiers];

  return v11;
}

- (id)momentForMomentNode:(id)node
{
  v12[1] = *MEMORY[0x277D85DE8];
  localIdentifier = [node localIdentifier];
  if (localIdentifier)
  {
    librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
    [librarySpecificFetchOptions setFetchLimit:1];
    v6 = MEMORY[0x277CD97B8];
    v12[0] = localIdentifier;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v8 = [v6 fetchAssetCollectionsWithLocalIdentifiers:v7 options:librarySpecificFetchOptions];

    firstObject = [v8 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return firstObject;
}

- (void)_registerInsertedMomentNodes:(id)nodes inGraphUpdate:(id)update
{
  nodesCopy = nodes;
  updateCopy = update;
  if ([updateCopy isResumingFullAnalysis])
  {
    momentNodes = [(PGGraph *)self->_graph momentNodes];
    v8 = [momentNodes set];
    [updateCopy setInsertedMomentNodes:v8];
  }

  else
  {
    [updateCopy setInsertedMomentNodes:nodesCopy];
  }
}

- (void)insertMomentsWithGraphUpdate:(id)update progressBlock:(id)block
{
  v120 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  blockCopy = block;
  v67 = _Block_copy(blockCopy);
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
    momentsToIngest = [updateCopy momentsToIngest];
    v9 = [momentsToIngest count];
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v9;
    _os_log_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_INFO, "Batch Updates - About to insert %lu new moments", &buf, 0xCu);
  }

  momentsToIngest2 = [updateCopy momentsToIngest];
  v11 = [(PGGraphBuilder *)self _cleanUpMoments:momentsToIngest2];

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

        uuid = [*(*(&v95 + 1) + 8 * i) uuid];
        [v13 addObject:uuid];
      }

      v15 = [v14 countByEnumeratingWithState:&v95 objects:v116 count:16];
    }

    while (v15);
  }

  v19 = [PGGraphMomentNodeCollection momentNodesForArrayOfUUIDs:v13 inGraph:self->_graph];
  uuids = [v19 uuids];
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
  if ([updateCopy isResumingFullAnalysis] && !objc_msgSend(uuids, "count"))
  {
    [(PGGraphBuilder *)self computeAndPersistTopTierAestheticScores];
    [(PGGraphBuilder *)self computeAndPersistAssetStatistics];
  }

  insertOrUpdateMePersonNodeIfNeeded = [(PGGraphBuilder *)self insertOrUpdateMePersonNodeIfNeeded];
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    LODWORD(v112) = 138412290;
    *(&v112 + 4) = insertOrUpdateMePersonNodeIfNeeded;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGGraphBuilder][insertMomentsWithGraphUpdate:progressBlock:] Me node=%@", &v112, 0xCu);
  }

  if ([(PGGraphBuilder *)self isSharedLibraryEnabled])
  {
    sharedLibraryParticipants = [(PGGraphBuilder *)self sharedLibraryParticipants];
    [(PGGraphBuilder *)self insertPersonNodesForShareParticipants:sharedLibraryParticipants];
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
  v55 = uuids;
  v75 = v55;
  v33 = v67;
  v92 = 0x3F847AE147AE147BLL;
  v86 = &v100;
  p_buf = &buf;
  v88 = v99;
  v84 = v33;
  selfCopy = self;
  v53 = v63;
  v77 = v53;
  v62 = v29;
  v78 = v62;
  v64 = v31;
  v79 = v64;
  v66 = v65;
  v80 = v66;
  v70 = updateCopy;
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
  anyNode = [v38 anyNode];

  localIdentifier = [anyNode localIdentifier];
  LODWORD(v38) = [localIdentifier length] == 0;

  if (v38)
  {
    v41 = self->_loggingConnection;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      LOWORD(v108) = 0;
      _os_log_impl(&dword_22F0FC000, v41, OS_LOG_TYPE_INFO, "[PGGraphBuilder][insertMomentsWithGraphUpdate:progressBlock:] Me node gets inferred", &v108, 2u);
    }

    [(PGGraphBuilder *)self inferPersonNodeForMeNode:anyNode];
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
        identifier = [v46 identifier];

        [(MAGraph *)self->_graph persistModelProperties:v60 forNodeWithIdentifier:identifier clobberExisting:0];
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

- (void)_removeEdgesFromMomentNode:(id)node forUpdateTypes:(unint64_t)types
{
  typesCopy = types;
  collection = [node collection];
  v6 = objc_alloc_init(MEMORY[0x277D22C50]);
  if ((typesCopy & 2) != 0)
  {
    v7 = +[PGGraphDateEdge filter];
    v8 = [(MAEdgeCollection *)PGGraphEdgeCollection edgesFromNodes:collection matchingFilter:v7];

    [v6 removeEdges:v8];
  }

  if ((typesCopy & 4) != 0)
  {
    v9 = +[PGGraphAddressEdge filter];
    v10 = [(MAEdgeCollection *)PGGraphEdgeCollection edgesFromNodes:collection matchingFilter:v9];

    [v6 removeEdges:v10];
    if ((typesCopy & 8) == 0)
    {
LABEL_8:
      v13 = +[PGGraphPOIEdge filter];
      v14 = [(MAEdgeCollection *)PGGraphEdgeCollection edgesFromNodes:collection matchingFilter:v13];

      [v6 removeEdges:v14];
      v15 = +[PGGraphROIEdge filter];
      v16 = [(MAEdgeCollection *)PGGraphEdgeCollection edgesFromNodes:collection matchingFilter:v15];

      [v6 removeEdges:v16];
      goto LABEL_9;
    }

LABEL_7:
    v11 = +[PGGraphBasePresentEdge filter];
    v12 = [(MAEdgeCollection *)PGGraphBasePresentEdgeCollection edgesFromNodes:collection matchingFilter:v11];

    [v6 removeEdges:v12];
    goto LABEL_8;
  }

  if ((typesCopy & 8) != 0)
  {
    goto LABEL_7;
  }

LABEL_9:
  if ((typesCopy & 0x19) != 0)
  {
    v17 = +[PGGraphSceneEdge filter];
    v18 = [(MAEdgeCollection *)PGGraphEdgeCollection edgesFromNodes:collection matchingFilter:v17];

    [v6 removeEdges:v18];
    v19 = +[(PGGraphSceneEdge *)PGGraphEntityNetSceneEdge];
    v20 = [(MAEdgeCollection *)PGGraphEdgeCollection edgesFromNodes:collection matchingFilter:v19];

    [v6 removeEdges:v20];
  }

  [(MAGraph *)self->_graph executeGraphChangeRequest:v6];
}

- (void)performChangeForGraphUpdate:(id)update progressBlock:(id)block
{
  v91 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  blockCopy = block;
  v80 = 0;
  v81 = &v80;
  v82 = 0x2020000000;
  v83 = 0;
  v76 = 0;
  v77 = &v76;
  v78 = 0x2020000000;
  v79 = 0;
  v45 = _Block_copy(blockCopy);
  if (!v45 || (v7 = CFAbsoluteTimeGetCurrent(), v7 - v77[3] < 0.01) || (v77[3] = v7, LOBYTE(v84) = 0, (*(v45 + 2))(v45, &v84, 0.0), v8 = *(v81 + 24) | v84, *(v81 + 24) = v8, (v8 & 1) == 0))
  {
    v40 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v39 = objc_alloc_init(MEMORY[0x277CBEB58]);
    oslog = self->_loggingConnection;
    uuidsOfMomentsToUpdate = [updateCopy uuidsOfMomentsToUpdate];
    v48 = [PGGraphMomentNodeCollection momentNodesForUUIDs:uuidsOfMomentsToUpdate inGraph:self->_graph];

    v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v48, "count")}];
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __60__PGGraphBuilder_performChangeForGraphUpdate_progressBlock___block_invoke;
    v74[3] = &unk_278889290;
    v11 = v10;
    v75 = v11;
    [v48 enumerateNodesUsingBlock:v74];
    v37 = v11;
    uuidsOfHighlightsToUpdate = [updateCopy uuidsOfHighlightsToUpdate];
    v47 = [PGGraphHighlightNodeCollection highlightNodesForUUIDs:uuidsOfHighlightsToUpdate inGraph:self->_graph];

    v13 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v47, "count")}];
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __60__PGGraphBuilder_performChangeForGraphUpdate_progressBlock___block_invoke_2;
    v72[3] = &unk_278885850;
    v14 = v13;
    v73 = v14;
    [v47 enumerateNodesUsingBlock:v72];
    localIdentifiersOfPersonsToUpdate = [updateCopy localIdentifiersOfPersonsToUpdate];
    v46 = [PGGraphPersonNodeCollection personNodesForLocalIdentifiers:localIdentifiersOfPersonsToUpdate inGraph:self->_graph];

    v16 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v46, "count")}];
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __60__PGGraphBuilder_performChangeForGraphUpdate_progressBlock___block_invoke_3;
    v70[3] = &unk_278889240;
    v17 = v16;
    v71 = v17;
    [v46 enumerateNodesUsingBlock:v70];
    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    contactIdentifiersOfPersonsToUpdate = [updateCopy contactIdentifiersOfPersonsToUpdate];
    LOBYTE(v11) = [contactIdentifiersOfPersonsToUpdate count] == 0;

    if ((v11 & 1) == 0)
    {
      contactIdentifiersOfPersonsToUpdate2 = [updateCopy contactIdentifiersOfPersonsToUpdate];
      v21 = [PGGraphPersonNodeCollection personNodesForContactIdentifiers:contactIdentifiersOfPersonsToUpdate2 inGraph:self->_graph];

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
    v24 = 1.0 / [updateCopy numberOfConsolidatedChanges];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __60__PGGraphBuilder_performChangeForGraphUpdate_progressBlock___block_invoke_5;
    v50[3] = &unk_2788810D0;
    v36 = v37;
    v51 = v36;
    v25 = updateCopy;
    v52 = v25;
    selfCopy = self;
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

- (void)_deleteSocialGroupsWithGraphUpdate:(id)update
{
  uuidsOfSocialGroupsToDelete = [update uuidsOfSocialGroupsToDelete];
  graph = self->_graph;
  v8 = uuidsOfSocialGroupsToDelete;
  v6 = [PGGraphSocialGroupNodeCollection socialGroupNodesForPersistedUUIDs:"socialGroupNodesForPersistedUUIDs:inGraph:" inGraph:?];
  if ([v6 count])
  {
    v7 = objc_alloc_init(MEMORY[0x277D22C50]);
    [v7 removeNodes:v6];
    [(MAGraph *)self->_graph executeGraphChangeRequest:v7];
  }
}

- (void)deletePersonsWithGraphUpdate:(id)update progressBlock:(id)block
{
  v22 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  blockCopy = block;
  localIdentifiersOfPersonsToDelete = [updateCopy localIdentifiersOfPersonsToDelete];
  v9 = [localIdentifiersOfPersonsToDelete count];
  serviceManager = self->_serviceManager;
  allObjects = [localIdentifiersOfPersonsToDelete allObjects];
  [(CLSServiceManager *)serviceManager invalidatePersonsCacheForPersonsWithNames:allObjects];

  v12 = [PGGraphPersonNodeCollection personNodesForLocalIdentifiers:localIdentifiersOfPersonsToDelete inGraph:self->_graph];
  v13 = [v12 count];
  if (v13)
  {
    relatedDetails = [updateCopy relatedDetails];
    [relatedDetails accumulateDetailsForDeletedPersonNodes:v12];

    v15 = objc_alloc_init(MEMORY[0x277D22C50]);
    [v15 removeNodes:v12];
    [(MAGraph *)self->_graph executeGraphChangeRequest:v15];
    [updateCopy setHasDeletedPersonNodes:1];
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
  blockCopy[2](blockCopy, &v18, 1.0);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_deleteMomentsWithGraphUpdate:(id)update
{
  v21 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  uuidsOfMomentsToDelete = [updateCopy uuidsOfMomentsToDelete];
  v6 = [uuidsOfMomentsToDelete count];
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    v17 = 134217984;
    v18 = v6;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "Batch Updates - About to delete %lu Moments", &v17, 0xCu);
  }

  [(PGCurationManager *)self->_curationManager invalidateCurationCacheForMomentUUIDs:uuidsOfMomentsToDelete];
  v8 = [PGGraphMomentNodeCollection momentNodesForUUIDs:uuidsOfMomentsToDelete inGraph:self->_graph];
  v9 = [v8 count];
  if (v9 != v6)
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:uuidsOfMomentsToDelete];
    uuids = [v8 uuids];
    [v10 minusSet:uuids];

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
    relatedDetails = [updateCopy relatedDetails];
    [relatedDetails accumulateDetailsForDeletedMomentNodes:v8];

    v14 = objc_alloc_init(MEMORY[0x277D22C50]);
    [v14 removeNodes:v8];
    [(MAGraph *)self->_graph executeGraphChangeRequest:v14];
    [updateCopy setHasDeletedMomentNodes:1];
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

- (void)performBatchUpdatesWithGraphUpdate:(id)update withRecipe:(id)recipe progressBlock:(id)block
{
  v222 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  recipeCopy = recipe;
  blockCopy = block;
  v9 = _Block_copy(blockCopy);
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
    if ([updateCopy hasAnythingToDo])
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
      [(PGGraphBuilder *)self performPreprocessingWithGraphUpdate:updateCopy withRecipe:recipeCopy progressBlock:v203];
      if ((v215[3] & 1) != 0 || ![(MAGraph *)self->_graph noFatalError])
      {
        v22 = MEMORY[0x277D86220];
        v23 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v24 = *(v215 + 24);
          noFatalError = [(MAGraph *)self->_graph noFatalError];
          *buf = 67109890;
          *v219 = v24;
          *&v219[4] = 1024;
          *&v219[6] = !noFatalError;
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

    hasHighlightsToDelete = [updateCopy hasHighlightsToDelete];
    if (hasHighlightsToDelete)
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
      [(PGGraphBuilder *)self deleteHighlightsWithGraphUpdate:updateCopy];
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
          noFatalError2 = [(MAGraph *)self->_graph noFatalError];
          *buf = 67109890;
          *v219 = v87;
          *&v219[4] = 1024;
          *&v219[6] = !noFatalError2;
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

    hasMomentsToDelete = [updateCopy hasMomentsToDelete];
    if (!hasMomentsToDelete)
    {
LABEL_44:
      hasPersonsToDelete = [updateCopy hasPersonsToDelete];
      v48 = hasPersonsToDelete;
      if (hasPersonsToDelete)
      {
        v161 = hasPersonsToDelete;
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
        [(PGGraphBuilder *)self deletePersonsWithGraphUpdate:updateCopy progressBlock:v196];
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
            noFatalError3 = [(MAGraph *)self->_graph noFatalError];
            *buf = 67109890;
            *v219 = v95;
            *&v219[4] = 1024;
            *&v219[6] = !noFatalError3;
            v220 = 1.51430681e-269;
            v221 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/PGGraphBuilder.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled (%d) or fatal (%d) at line %d in file %s", buf, 0x1Eu);
          }

          goto LABEL_137;
        }

        v48 = v161;
      }

      hasSocialGroupsToDelete = [updateCopy hasSocialGroupsToDelete];
      if (hasSocialGroupsToDelete)
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
        [(PGGraphBuilder *)self _deleteSocialGroupsWithGraphUpdate:updateCopy];
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
            noFatalError4 = [(MAGraph *)self->_graph noFatalError];
            *buf = 67109890;
            *v219 = v99;
            *&v219[4] = 1024;
            *&v219[6] = !noFatalError4;
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
      if (throughputReportBlock && ((hasHighlightsToDelete | hasMomentsToDelete | v48 | hasSocialGroupsToDelete) & 1) != 0)
      {
        uuidsOfMomentsToDelete = [updateCopy uuidsOfMomentsToDelete];
        v163 = [uuidsOfMomentsToDelete count];
        localIdentifiersOfPersonsToDelete = [updateCopy localIdentifiersOfPersonsToDelete];
        v71 = [localIdentifiersOfPersonsToDelete count];
        uuidsOfHighlightsToDelete = [updateCopy uuidsOfHighlightsToDelete];
        v73 = [uuidsOfHighlightsToDelete count];
        uuidsOfSocialGroupsToDelete = [updateCopy uuidsOfSocialGroupsToDelete];
        throughputReportBlock[2](throughputReportBlock, v71 + v163 + v73 + [uuidsOfSocialGroupsToDelete count], @"changesToDelete");
      }

      if ([updateCopy hasMomentsToInsert])
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
        [(PGGraphBuilder *)self insertMomentsWithGraphUpdate:updateCopy progressBlock:v190];
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
            noFatalError5 = [(MAGraph *)self->_graph noFatalError];
            *buf = 67109890;
            *v219 = v131;
            *&v219[4] = 1024;
            *&v219[6] = !noFatalError5;
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
        [(PGGraphBuilder *)self _registerInsertedMomentNodes:v84 inGraphUpdate:updateCopy];
      }

      if ([updateCopy hasHighlightsToInsert])
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
        [(PGGraphBuilder *)self insertHighlightsWithGraphUpdate:updateCopy progressBlock:v184];
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
            noFatalError6 = [(MAGraph *)self->_graph noFatalError];
            *buf = 67109890;
            *v219 = v139;
            *&v219[4] = 1024;
            *&v219[6] = !noFatalError6;
            v220 = 1.51430681e-269;
            v221 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/PGGraphBuilder.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled (%d) or fatal (%d) at line %d in file %s", buf, 0x1Eu);
          }

          goto LABEL_137;
        }

        v111 = self->_throughputReportBlock;
        if (v111)
        {
          uuidsOfHighlightsToInsert = [updateCopy uuidsOfHighlightsToInsert];
          v111[2](v111, [uuidsOfHighlightsToInsert count], @"uuidsOfHighlightsToInsert");
        }
      }

      if (([updateCopy hasMomentsToUpdate] & 1) != 0 || (objc_msgSend(updateCopy, "hasPersonsToUpdate") & 1) != 0 || objc_msgSend(updateCopy, "hasHighlightsToUpdate"))
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
        [(PGGraphBuilder *)self performChangeForGraphUpdate:updateCopy progressBlock:v178];
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
            noFatalError7 = [(MAGraph *)self->_graph noFatalError];
            *buf = 67109890;
            *v219 = v135;
            *&v219[4] = 1024;
            *&v219[6] = !noFatalError7;
            v220 = 1.51430681e-269;
            v221 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/PGGraphBuilder.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled (%d) or fatal (%d) at line %d in file %s", buf, 0x1Eu);
          }

          goto LABEL_137;
        }

        v123 = self->_throughputReportBlock;
        if (v123)
        {
          uuidsOfMomentsToUpdate = [updateCopy uuidsOfMomentsToUpdate];
          v124 = [uuidsOfMomentsToUpdate count];
          localIdentifiersOfPersonsToUpdate = [updateCopy localIdentifiersOfPersonsToUpdate];
          v126 = [localIdentifiersOfPersonsToUpdate count];
          uuidsOfHighlightsToUpdate = [updateCopy uuidsOfHighlightsToUpdate];
          v123[2](v123, v126 + v124 + [uuidsOfHighlightsToUpdate count], @"changesToUpdate");
        }
      }

      [updateCopy prepareForPostProcessingWithGraph:self->_graph];
      if ([updateCopy hasSocialGroupsToInsert])
      {
        hasSocialGroupsToUpdate = 1;
      }

      else
      {
        hasSocialGroupsToUpdate = [updateCopy hasSocialGroupsToUpdate];
      }

      if (([updateCopy didProcessNodes] | hasSocialGroupsToUpdate))
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
        [(PGGraphBuilder *)self performPostprocessingWithGraphUpdate:updateCopy withRecipe:recipeCopy progressBlock:v172];
        if ((v215[3] & 1) != 0 || ![(MAGraph *)self->_graph noFatalError])
        {
          v144 = MEMORY[0x277D86220];
          v145 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v144, OS_LOG_TYPE_INFO))
          {
            v146 = *(v215 + 24);
            noFatalError8 = [(MAGraph *)self->_graph noFatalError];
            *buf = 67109890;
            *v219 = v146;
            *&v219[4] = 1024;
            *&v219[6] = !noFatalError8;
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
              noFatalError9 = [(MAGraph *)self->_graph noFatalError];
              *buf = 67109890;
              *v219 = v158;
              *&v219[4] = 1024;
              *&v219[6] = !noFatalError9;
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
    [(PGGraphBuilder *)self _deleteMomentsWithGraphUpdate:updateCopy];
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
      noFatalError10 = [(MAGraph *)self->_graph noFatalError];
      *buf = 67109890;
      *v219 = v91;
      *&v219[4] = 1024;
      *&v219[6] = !noFatalError10;
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
    noFatalError11 = [(MAGraph *)self->_graph noFatalError];
    *buf = 67109890;
    *v219 = v20;
    *&v219[4] = 1024;
    *&v219[6] = !noFatalError11;
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
    graph = [(PGGraphBuilder *)self graph];
    meNodeCollection = [graph meNodeCollection];

    momentNodesWithPresence = [meNodeCollection momentNodesWithPresence];
    v7 = self->_momentNodesWhereMeIsPresent;
    self->_momentNodesWhereMeIsPresent = momentNodesWithPresence;

    momentNodesWhereMeIsPresent = self->_momentNodesWhereMeIsPresent;
  }

  return momentNodesWhereMeIsPresent;
}

- (id)_insertMomentNodeForClueCollection:(id)collection feeder:(id)feeder insertedAndUpdatedPersonNodes:(id *)nodes graphUpdate:(id)update progressBlock:(id)block
{
  v145 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  feederCopy = feeder;
  updateCopy = update;
  blockCopy = block;
  v15 = _Block_copy(blockCopy);
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

  universalEndDate = [collectionCopy universalEndDate];
  universalStartDate = [collectionCopy universalStartDate];
  [universalEndDate timeIntervalSinceDate:universalStartDate];
  v21 = v20 > 172800.0;

  if (v21)
  {
    v22 = self->_loggingConnection;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      assetCollection = [feederCopy assetCollection];
      *buf = 138412290;
      *v144 = assetCollection;
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

  v114 = [[PGGraphIngestMomentContainer alloc] initMomentContainerWithFeeder:feederCopy clueCollection:collectionCopy curationManager:self->_curationManager topTierAestheticScore:self->_curationContext curationContext:self->_topTierAestheticScore];
  v130[0] = MEMORY[0x277D85DD0];
  v130[1] = 3221225472;
  v130[2] = __116__PGGraphBuilder__insertMomentNodeForClueCollection_feeder_insertedAndUpdatedPersonNodes_graphUpdate_progressBlock___block_invoke;
  v130[3] = &unk_27888A188;
  v30 = v15;
  v131 = v30;
  v132 = &v135;
  v133 = &v139;
  v134 = 0x3F847AE147AE147BLL;
  [(PGGraphBuilder *)self insertAssetCurationScoreInLibraryForFeeder:feederCopy progressBlock:v130];
  assetCollection2 = [feederCopy assetCollection];
  uuid = [assetCollection2 uuid];

  if (uuid)
  {
    curationManager = self->_curationManager;
    v33 = [MEMORY[0x277CBEB98] setWithObject:uuid];
    [(PGCurationManager *)curationManager invalidateCurationCacheForMomentUUIDs:v33];
  }

  if (!v15 || (v34 = CFAbsoluteTimeGetCurrent(), v34 - v136[3] < 0.01) || (v136[3] = v34, LOBYTE(info.numer) = 0, v30[2](v30, &info, 0.2), v35 = *(v140 + 24) | LOBYTE(info.numer), *(v140 + 24) = v35, (v35 & 1) == 0))
  {
    v28 = [(PGGraphBuilder *)self insertMomentNodeForMoment:v114];
    if (!v28)
    {
      v47 = +[PGLogging sharedLogging];
      loggingConnection = [v47 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        assetCollection3 = [feederCopy assetCollection];
        *buf = 138412290;
        *v144 = assetCollection3;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Failed to insert moment: %@", buf, 0xCu);
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
    v39 = [(PGGraphBuilder *)self insertDateNodesWithClueCollection:collectionCopy fromMomentNode:v28];
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

    v112 = [(PGGraphBuilder *)self insertScenesWithClueCollection:collectionCopy fromMomentNode:v28];
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

    [(PGGraphBuilder *)self insertEntityNetScenesWithClueCollection:collectionCopy fromMomentNode:v28];
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

    v110 = [(PGGraphBuilder *)self insertLocationHierarchyWithClueCollection:collectionCopy fromMomentNode:v28];
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
    v27 = [(PGGraphBuilder *)self insertPeopleWithClueCollection:collectionCopy fromMomentNode:v28 addressNodes:v110 isNearPeopleAddress:&v129];
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

    meNode = [(PGGraph *)self->_graph meNode];
    if (-[PGGraphBuilder isSharedLibraryEnabled](self, "isSharedLibraryEnabled") && [v28 sharingComposition])
    {
      shareParticipants = [feederCopy shareParticipants];
      [(PGGraphBuilder *)self insertShareParticipantsAsAuthors:shareParticipants forMomentNode:v28];

      if (meNode && [v28 sharingComposition] == 1)
      {
        [(PGGraphBuilder *)self checkAndInsertPersonIsAroundEdgeFromMeNode:meNode toMomentNode:v28 withClueCollection:collectionCopy];
      }
    }

    else if (meNode)
    {
      [(PGGraphBuilder *)self insertMeAsAuthor:meNode forMomentNode:v28];
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
      v58 = [(PGGraphBuilder *)self insertPOIWithFeeder:feederCopy fromMomentNode:v28 isNearHomeOrWork:v129];
    }

    v59 = [(PGGraphBuilder *)self insertROIWithClueCollection:collectionCopy fromMomentNode:v28];
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

    v62 = [(PGGraphBuilder *)self insertPartOfDayNodesWithClueCollection:collectionCopy fromMomentNode:v28];
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

    v65 = [(PGGraphBuilder *)self insertLocationMobilityNodeWithClueCollection:collectionCopy fromMomentNode:v28];
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
      allItems = [feederCopy allItems];
      [(PGGraphBuilder *)self insertMomentFeaturesForMomentNode:v28 momentEnvelope:v111 assets:allItems featureProvider:v66 atMomentIngest:1 curationContext:self->_curationContext];
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
          assetFetchResult = [feederCopy assetFetchResult];
          photoLibrary = self->_photoLibrary;
          v117 = 0;
          v81 = [(PGEventLabelingFeaturesFileCache *)eventLabelingFeaturesCache writeFeaturesForMomentNode:v28 assetFetchResult:assetFetchResult photoLibrary:photoLibrary progressReporter:v106 error:&v117];
          v105 = v117;

          if (!v81)
          {
            v82 = +[PGLogging sharedLogging];
            loggingConnection2 = [v82 loggingConnection];

            if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
            {
              localIdentifier = [v28 localIdentifier];
              v98 = [v105 description];
              *buf = 138412546;
              *v144 = localIdentifier;
              *&v144[8] = 2112;
              *&v144[10] = v98;
              v99 = v98;
              _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "[EventLabeling] Error caching features for moment %@: %@", buf, 0x16u);
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
    if (nodes)
    {
      v94 = v27;
      *nodes = v27;
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

- (id)_cleanUpMoments:(id)moments
{
  v33 = *MEMORY[0x277D85DE8];
  momentsCopy = moments;
  v4 = momentsCopy;
  if ([momentsCopy count])
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v4 = momentsCopy;
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
          startDate = [v10 startDate];
          endDate = [v10 endDate];
          v13 = endDate;
          if (startDate)
          {
            v14 = endDate == 0;
          }

          else
          {
            v14 = 1;
          }

          if (v14 || [startDate compare:endDate] == 1 || objc_msgSend(MEMORY[0x277D27690], "yearFromDate:", startDate) < 1826 || objc_msgSend(MEMORY[0x277D27690], "yearFromDate:", v13) >= 2201)
          {
            [v5 addObject:v10];
            v15 = +[PGLogging sharedLogging];
            loggingConnection = [v15 loggingConnection];

            if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v29 = startDate;
              v30 = 2112;
              v31 = v13;
              _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Moment to insert has bogus dates (%@ -> %@)", buf, 0x16u);
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
      loggingConnection2 = [v20 loggingConnection];

      if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v29 = v18;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "Found %lu bogus moments, removing them from Moments to insert", buf, 0xCu);
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

- (id)featureProviderWithProgressBlock:(id)block
{
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_featureProvider)
  {
LABEL_2:
    objc_sync_exit(selfCopy);

    v6 = selfCopy->_featureProvider;
    goto LABEL_12;
  }

  v7 = [[PGMomentFeatureSpecificationFactory alloc] initWithSceneTaxonomy:selfCopy->_sceneTaxonomy photoLibrary:selfCopy->_photoLibrary loggingConnection:selfCopy->_loggingConnection];
  allSupportedFeatureTypes = [(PGMomentFeatureSpecificationFactory *)v7 allSupportedFeatureTypes];
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = [allSupportedFeatureTypes count];
  if (v10)
  {
    v11 = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:blockCopy];
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
    [allSupportedFeatureTypes enumerateIndexesUsingBlock:&v21];
    isCancelled = [v16 isCancelled];
    if ((isCancelled & 1) == 0)
    {
      v18 = [[PGAssetCollectionFeatureProvider alloc] initWithFeatureSpecifications:v14];
      featureProvider = selfCopy->_featureProvider;
      selfCopy->_featureProvider = v18;
    }

    _Block_object_dispose(v31, 8);
    _Block_object_dispose(buf, 8);

    if ((isCancelled & 1) == 0)
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

  objc_sync_exit(selfCopy);

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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_curationContext)
  {
    v3 = [objc_alloc(MEMORY[0x277D3C790]) initWithPhotoLibrary:selfCopy->_photoLibrary];
    curationContext = selfCopy->_curationContext;
    selfCopy->_curationContext = v3;
  }

  objc_sync_exit(selfCopy);

  v5 = selfCopy->_curationContext;

  return v5;
}

- (PGGraphBuilder)initWithGraph:(id)graph
{
  v4 = MEMORY[0x277D27718];
  graphCopy = graph;
  v6 = [v4 alloc];
  v7 = MEMORY[0x277D27718];
  v8 = [PGManager graphServicesURLWithPhotoLibrary:0];
  v9 = [v7 urlWithParentURL:v8];
  v10 = [v6 initWithURL:v9];

  v11 = [(PGGraphBuilder *)self initWithGraph:graphCopy locationCache:v10];
  return v11;
}

- (PGGraphBuilder)initWithGraph:(id)graph locationCache:(id)cache
{
  graphCopy = graph;
  cacheCopy = cache;
  v22.receiver = self;
  v22.super_class = PGGraphBuilder;
  v9 = [(PGGraphBuilder *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_graph, graph);
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
    objc_storeStrong(&v10->_locationCache, cache);
    v19 = [objc_alloc(MEMORY[0x277D277B0]) initWithLocationCache:v10->_locationCache];
    serviceManager = v10->_serviceManager;
    v10->_serviceManager = v19;
  }

  return v10;
}

- (PGGraphBuilder)initWithGraph:(id)graph manager:(id)manager
{
  v68 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  managerCopy = manager;
  v65.receiver = self;
  v65.super_class = PGGraphBuilder;
  v9 = [(PGGraphBuilder *)&v65 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_graph, graph);
    photoLibrary = [managerCopy photoLibrary];
    photoLibrary = v10->_photoLibrary;
    v10->_photoLibrary = photoLibrary;

    v13 = [objc_alloc(MEMORY[0x277D3C7B8]) initForSceneNetOnly:1];
    sceneTaxonomy = v10->_sceneTaxonomy;
    v10->_sceneTaxonomy = v13;

    v15 = [objc_alloc(MEMORY[0x277D3C7B8]) initForSceneNetOnly:0];
    entityNetSceneTaxonomy = v10->_entityNetSceneTaxonomy;
    v10->_entityNetSceneTaxonomy = v15;

    curationManager = [managerCopy curationManager];
    curationManager = v10->_curationManager;
    v10->_curationManager = curationManager;

    serviceManager = [managerCopy serviceManager];
    serviceManager = v10->_serviceManager;
    v10->_serviceManager = serviceManager;

    ingestLoggingConnection = [managerCopy ingestLoggingConnection];
    loggingConnection = v10->_loggingConnection;
    v10->_loggingConnection = ingestLoggingConnection;

    v10->_keepsExistingAssetCurationScores = [managerCopy photoLibraryIsReadonly];
    infoNode = [(PGGraph *)v10->_graph infoNode];
    [infoNode topTierAestheticScore];
    v10->_topTierAestheticScore = v24;
    v10->_numberOfUtilityAssets = [infoNode numberOfUtilityAssets];
    v10->_numberOfDefaultAssets = [infoNode numberOfDefaultAssets];
    v10->_numberOfImprovedAssets = [infoNode numberOfImprovedAssets];
    v10->_numberOfBetterAssets = [infoNode numberOfBetterAssets];
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
        loggingConnection2 = v63;
        eventLabelingFeaturesCache = v10->_eventLabelingFeaturesCache;
        v10->_eventLabelingFeaturesCache = v41;

        if (!v10->_eventLabelingFeaturesCache)
        {
          v44 = +[PGLogging sharedLogging];
          loggingConnection = [v44 loggingConnection];

          if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            p_super = loggingConnection2;
            _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGGraphBuilder] Error initializing EventLabeling cache: %@", buf, 0xCu);
          }
        }
      }

      else
      {
        v46 = +[PGLogging sharedLogging];
        loggingConnection2 = [v46 loggingConnection];

        if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          p_super = &v39->super;
          _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "[PGGraphBuilder] Error initializing EventLabeling cache - nil service url: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v39 = v10->_eventLabelingFeaturesCache;
      v10->_eventLabelingFeaturesCache = 0;
    }

    locationCache = [managerCopy locationCache];
    locationCache = v10->_locationCache;
    v10->_locationCache = locationCache;

    aoiCache = [managerCopy aoiCache];
    aoiCache = v10->_aoiCache;
    v10->_aoiCache = aoiCache;

    poiCache = [managerCopy poiCache];
    poiCache = v10->_poiCache;
    v10->_poiCache = poiCache;

    roiCache = [managerCopy roiCache];
    roiCache = v10->_roiCache;
    v10->_roiCache = roiCache;

    natureCache = [managerCopy natureCache];
    natureCache = v10->_natureCache;
    v10->_natureCache = natureCache;

    publicEventManager = [managerCopy publicEventManager];
    publicEventManager = v10->_publicEventManager;
    v10->_publicEventManager = publicEventManager;

    throughputReportBlock = [managerCopy throughputReportBlock];
    throughputReportBlock = v10->_throughputReportBlock;
    v10->_throughputReportBlock = throughputReportBlock;
  }

  v61 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (void)setLastIncrementalUpdateInvocationDate:(id)date inGraph:(id)graph
{
  dateCopy = date;
  graphCopy = graph;
  infoNode = [graphCopy infoNode];
  if (infoNode)
  {
    v8 = [PGGraphInfoNode propertiesWithLastIncrementalUpdateInvocationOnDate:dateCopy];
    [graphCopy persistModelProperties:v8 forNodeWithIdentifier:objc_msgSend(infoNode clobberExisting:{"identifier"), 0}];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v9 = 0;
    _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[PGGraphBuilder] PGGraphInfoNode should not be nil when updating the dateOfLastIncrementalUpdateInvocation", v9, 2u);
  }
}

+ (void)prepareGraphForRebuild:(id)rebuild
{
  rebuildCopy = rebuild;
  [rebuildCopy enterBatch];
  [rebuildCopy setVersion:701];
  date = [MEMORY[0x277CBEAA8] date];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];

  preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
  currentRevGeoProvider = [MEMORY[0x277D3AD60] currentRevGeoProvider];
  canAccessContactsStore = [MEMORY[0x277D277B0] canAccessContactsStore];
  infoNode = [rebuildCopy infoNode];
  if (infoNode)
  {
    v10 = infoNode;
    v11 = [PGGraphInfoNode genericPropertiesWithCreationDate:date localeIdentifier:localeIdentifier languageIdentifiers:preferredLanguages geoServiceProviderID:currentRevGeoProvider curationAlgorithmsVersion:12 contactsStoreAccess:canAccessContactsStore];
    [rebuildCopy persistModelProperties:v11 forNodeWithIdentifier:-[MANode identifier](v10 clobberExisting:{"identifier"), 1}];
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x277D22C50]);
    v10 = [[PGGraphInfoNode alloc] initWithCreationDate:date localeIdentifier:localeIdentifier languageIdentifiers:preferredLanguages geoServiceProviderID:currentRevGeoProvider curationAlgorithmsVersion:12 contactsStoreAccess:canAccessContactsStore];
    [v11 addNode:v10];
    [rebuildCopy executeGraphChangeRequest:v11];
  }

  [rebuildCopy leaveBatch];
}

- (void)insertOwner:(id)owner forPets:(id)pets
{
  v23 = *MEMORY[0x277D85DE8];
  ownerCopy = owner;
  petsCopy = pets;
  v8 = objc_alloc_init(MEMORY[0x277D22C50]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = petsCopy;
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
        v16 = [(PGGraphIsOwnerOfPetEdge *)v15 initFromPersonNode:ownerCopy toPetNode:v14, v18];
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

- (id)insertPet:(id)pet
{
  v62 = *MEMORY[0x277D85DE8];
  petCopy = pet;
  name = [petCopy name];
  v5 = name;
  v6 = &stru_2843F5C58;
  if (name)
  {
    v6 = name;
  }

  v7 = v6;

  v8 = [PGGraphPetNode alloc];
  localIdentifier = [petCopy localIdentifier];
  v40 = v7;
  v10 = -[PGGraphPetNode initWithLocalIdentifier:petSpecies:name:isFavorite:](v8, "initWithLocalIdentifier:petSpecies:name:isFavorite:", localIdentifier, [petCopy species], v7, objc_msgSend(petCopy, "isFavorite"));

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  momentNodes = [petCopy momentNodes];
  temporarySet = [momentNodes temporarySet];

  v15 = [temporarySet countByEnumeratingWithState:&v54 objects:v61 count:16];
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
          objc_enumerationMutation(temporarySet);
        }

        v19 = [[PGGraphPetPresentEdge alloc] initFromPetNode:v10 toMomentNode:*(*(&v54 + 1) + 8 * i)];
        [v11 addObject:v19];
      }

      v16 = [temporarySet countByEnumeratingWithState:&v54 objects:v61 count:16];
    }

    while (v16);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  ownerNodes = [petCopy ownerNodes];
  temporarySet2 = [ownerNodes temporarySet];

  v22 = [temporarySet2 countByEnumeratingWithState:&v50 objects:v60 count:16];
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
          objc_enumerationMutation(temporarySet2);
        }

        v26 = [[PGGraphIsOwnerOfPetEdge alloc] initFromPersonNode:*(*(&v50 + 1) + 8 * j) toPetNode:v10];
        [v12 addObject:v26];
      }

      v23 = [temporarySet2 countByEnumeratingWithState:&v50 objects:v60 count:16];
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

- (BOOL)shouldUpdatePersonRepresentativeAssetUUIDsWithPositiveSceneCriteria:(id)criteria actionValueString:(id)string assetIsPassingSceneCriteria:(BOOL)sceneCriteria personLocalIdentifierIsDoingActionInAsset:(BOOL)asset
{
  assetCopy = asset;
  stringCopy = string;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(criteria, "count")}];
  if ([v10 intValue] >= 1 && objc_msgSend(stringCopy, "length"))
  {
    v11 = sceneCriteria && assetCopy;
  }

  else if ([v10 intValue] >= 1 && sceneCriteria || (v11 = 0, objc_msgSend(stringCopy, "length")) && assetCopy)
  {
    v11 = 1;
  }

  return v11;
}

- (void)_connectPersonActivityMeaningNode:(id)node toMomentNode:(id)momentNode withChangeRequest:(id)request representativeAssetUUIDsByPersonLocalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  requestCopy = request;
  momentNodeCopy = momentNode;
  nodeCopy = node;
  v19 = [[PGGraphPersonActivityMeaningEdge alloc] initFromMomentNode:momentNodeCopy toPersonActivityMeaningNode:nodeCopy];
  [requestCopy addEdge:v19];
  personLocalIdentifier = [nodeCopy personLocalIdentifier];
  v14 = [identifierCopy objectForKeyedSubscript:personLocalIdentifier];

  allObjects = [v14 allObjects];
  v16 = [allObjects sortedArrayUsingSelector:sel_caseInsensitiveCompare_];
  v17 = [v16 componentsJoinedByString:{@", "}];

  v18 = -[PGGraphMomentFeaturesEdge initFromMomentNode:toFeatureNode:numberOfRelevantAssets:allAssetUUIDs:]([PGGraphMomentFeaturesEdge alloc], "initFromMomentNode:toFeatureNode:numberOfRelevantAssets:allAssetUUIDs:", momentNodeCopy, nodeCopy, [v14 count], v17);
  [requestCopy addEdge:v18];
}

- (void)_updatePersonActivitiesOfMomentNode:(id)node assets:(id)assets graph:(id)graph withPositiveSceneCriteriaByValidPersonActivityMeaningLabel:(id)label andActionCriteriaByValidPersonActivityMeaningLabel:(id)meaningLabel validPersonActivityMeaningLabelByActionValue:(id)value changeRequest:(id)request
{
  v130 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  assetsCopy = assets;
  graphCopy = graph;
  labelCopy = label;
  meaningLabelCopy = meaningLabel;
  valueCopy = value;
  requestCopy = request;
  v17 = MEMORY[0x277CBEB98];
  v76 = labelCopy;
  allKeys = [labelCopy allKeys];
  v19 = [v17 setWithArray:allKeys];
  v84 = meaningLabelCopy;
  allKeys2 = [meaningLabelCopy allKeys];
  v21 = [v19 setByAddingObjectsFromArray:allKeys2];

  if ([v21 count])
  {
    v71 = v21;
    v87 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v88 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v122 = 0u;
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v70 = assetsCopy;
    obj = assetsCopy;
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
          curationModel = [v26 curationModel];
          sceneModel = [curationModel sceneModel];
          clsSceneClassifications = [v26 clsSceneClassifications];
          v30 = [sceneModel sceneNamesFromSceneClassifications:clsSceneClassifications passingThresholdOfType:1];

          if ([v30 count])
          {
            uuid = [v26 uuid];
            [v87 setObject:v30 forKeyedSubscript:uuid];
          }

          mediaAnalysisProperties = [v26 mediaAnalysisProperties];
          mediaAnalysisVersion = [mediaAnalysisProperties mediaAnalysisVersion];

          clsFaceInformationSummary = [v26 clsFaceInformationSummary];
          faceInformationByConsolidatedPersonLocalIdentifier = [clsFaceInformationSummary faceInformationByConsolidatedPersonLocalIdentifier];

          v116[0] = MEMORY[0x277D85DD0];
          v116[1] = 3221225472;
          v116[2] = __252__PGGraphBuilder_MomentFeatures___updatePersonActivitiesOfMomentNode_assets_graph_withPositiveSceneCriteriaByValidPersonActivityMeaningLabel_andActionCriteriaByValidPersonActivityMeaningLabel_validPersonActivityMeaningLabelByActionValue_changeRequest___block_invoke;
          v116[3] = &unk_2788848E0;
          v117 = v88;
          v118 = v26;
          v119 = valueCopy;
          v121 = mediaAnalysisVersion;
          v120 = v84;
          [faceInformationByConsolidatedPersonLocalIdentifier enumerateKeysAndObjectsUsingBlock:v116];
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
                clsConsolidatedPersonLocalIdentifiers = [v41 clsConsolidatedPersonLocalIdentifiers];
                uuid2 = [v41 uuid];
                v44 = [v88 objectForKeyedSubscript:uuid2];
                v45 = [v44 objectForKeyedSubscript:v39];

                v92 = v41;
                uuid3 = [v41 uuid];
                v47 = [v87 objectForKeyedSubscript:uuid3];

                v90 = v47;
                v48 = [v47 intersectsSet:v38];
                v104 = 0u;
                v105 = 0u;
                v106 = 0u;
                v107 = 0u;
                v49 = clsConsolidatedPersonLocalIdentifiers;
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

                        uuid4 = [v92 uuid];
                        [v57 addObject:uuid4];

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
          allKeys3 = [v94 allKeys];
          v61 = [v59 setWithArray:allKeys3];

          v62 = [PGGraphPersonActivityMeaningNodeCollection personActivityMeaningNodesForActivityLabel:v82 personLocalIdentifiers:v61 inGraph:graphCopy];
          v100[0] = MEMORY[0x277D85DD0];
          v100[1] = 3221225472;
          v100[2] = __252__PGGraphBuilder_MomentFeatures___updatePersonActivitiesOfMomentNode_assets_graph_withPositiveSceneCriteriaByValidPersonActivityMeaningLabel_andActionCriteriaByValidPersonActivityMeaningLabel_validPersonActivityMeaningLabelByActionValue_changeRequest___block_invoke_2;
          v100[3] = &unk_278884908;
          v100[4] = self;
          v63 = nodeCopy;
          v101 = v63;
          v64 = requestCopy;
          v102 = v64;
          v65 = v94;
          v103 = v65;
          v93 = v62;
          [v62 enumerateNodesUsingBlock:v100];
          personLocalIdentifiers = [v62 personLocalIdentifiers];
          [v61 minusSet:personLocalIdentifiers];
          v67 = [PGGraphPersonNodeCollection personNodesForLocalIdentifiers:v61 inGraph:graphCopy];
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

    assetsCopy = v70;
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

- (id)criteriaEvaluatorsByValidPersonActivityMeaningLabelFromAssets:(id)assets withPersonActivityMeaningCriteriaDictionaryByMeaningLabel:(id)label
{
  v34 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  labelCopy = label;
  if (labelCopy)
  {
    v20 = labelCopy;
    v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v7 = labelCopy;
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
                if ([v17 allCriteriaPassForAssets:assetsCopy])
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

    labelCopy = v20;
  }

  else
  {
    v21 = MEMORY[0x277CBEC10];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)criteriaEvaluatorsByValidPersonActivityMeaningLabelFromMomentNode:(id)node sceneEdges:(id)edges withPersonActivityMeaningCriteriaDictionaryByMeaningLabel:(id)label
{
  v39 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  edgesCopy = edges;
  labelCopy = label;
  if (labelCopy)
  {
    v10 = [[PGMeaningCriteriaMomentNodeCache alloc] initWithMomentNode:nodeCopy];
    v24 = edgesCopy;
    [(PGMeaningCriteriaMomentNodeCache *)v10 setSceneEdges:edgesCopy];
    v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v23 = labelCopy;
    obj = labelCopy;
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
                if ([v20 allCriteriaPassForMomentNode:nodeCopy momentNodeCache:v10])
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

    labelCopy = v23;
    edgesCopy = v24;
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

- (id)_removeInvalidPeopleEventEdgesFromMomentNode:(id)node edgesToUpsert:(id)upsert
{
  upsertCopy = upsert;
  nodeCopy = node;
  v7 = +[PGGraphAnniversaryEventEdge filter];
  labels = [v7 labels];
  v9 = +[PGGraphBirthdayEventEdge filter];
  labels2 = [v9 labels];
  v11 = [labels setByAddingObjectsFromSet:labels2];

  v12 = objc_alloc(MEMORY[0x277D22C20]);
  v13 = [v12 initWithLabels:v11 domain:301 properties:MEMORY[0x277CBEC10]];
  collection = [nodeCopy collection];

  v15 = [(MAEdgeCollection *)PGGraphEdgeCollection edgesFromNodes:collection matchingFilter:v13];

  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __91__PGGraphBuilder_PeopleEvents___removeInvalidPeopleEventEdgesFromMomentNode_edgesToUpsert___block_invoke;
  v22[3] = &unk_278885D60;
  v23 = upsertCopy;
  v17 = v16;
  v24 = v17;
  v18 = upsertCopy;
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

- (id)_anniversaryEventEdgeFromMomentNode:(id)node toPersonNode:(id)personNode confidence:(double)confidence insertIfNeededToChangeRequest:(id)request
{
  nodeCopy = node;
  personNodeCopy = personNode;
  requestCopy = request;
  collection = [nodeCopy collection];
  collection2 = [personNodeCopy collection];
  v15 = [(PGGraphEdgeCollection *)PGGraphAnniversaryEventEdgeCollection edgesFromNodes:collection toNodes:collection2];
  anyEdge = [v15 anyEdge];

  if (anyEdge)
  {
    propertyDictionary = [anyEdge propertyDictionary];
    v18 = [PGGraphAnniversaryEventEdge propertyDictionaryWithConfidence:confidence];
    if (([propertyDictionary isEqualToDictionary:v18] & 1) == 0)
    {
      -[MAGraph persistModelProperties:forEdgeWithIdentifier:clobberExisting:](self->_graph, "persistModelProperties:forEdgeWithIdentifier:clobberExisting:", v18, [anyEdge identifier], 1);
      v19 = [(PGGraphEdgeCollection *)PGGraphAnniversaryEventEdgeCollection edgesFromNodes:collection toNodes:collection2];
      anyEdge2 = [v19 anyEdge];

      anyEdge = anyEdge2;
    }
  }

  else
  {
    anyEdge = [[PGGraphAnniversaryEventEdge alloc] initFromMomentNode:nodeCopy toPersonNode:personNodeCopy confidence:confidence];
    [requestCopy addEdge:anyEdge];
  }

  return anyEdge;
}

- (id)_birthdayEventEdgeFromMomentNode:(id)node toPersonNode:(id)personNode confidence:(double)confidence insertIfNeededToChangeRequest:(id)request
{
  nodeCopy = node;
  personNodeCopy = personNode;
  requestCopy = request;
  collection = [nodeCopy collection];
  collection2 = [personNodeCopy collection];
  v15 = [(PGGraphEdgeCollection *)PGGraphBirthdayEventEdgeCollection edgesFromNodes:collection toNodes:collection2];
  anyEdge = [v15 anyEdge];

  if (anyEdge)
  {
    propertyDictionary = [anyEdge propertyDictionary];
    v18 = [PGGraphBirthdayEventEdge propertyDictionaryWithConfidence:confidence];
    if (([propertyDictionary isEqualToDictionary:v18] & 1) == 0)
    {
      -[MAGraph persistModelProperties:forEdgeWithIdentifier:clobberExisting:](self->_graph, "persistModelProperties:forEdgeWithIdentifier:clobberExisting:", v18, [anyEdge identifier], 1);
      v19 = [(PGGraphEdgeCollection *)PGGraphBirthdayEventEdgeCollection edgesFromNodes:collection toNodes:collection2];
      anyEdge2 = [v19 anyEdge];

      anyEdge = anyEdge2;
    }
  }

  else
  {
    anyEdge = [[PGGraphBirthdayEventEdge alloc] initFromMomentNode:nodeCopy toPersonNode:personNodeCopy confidence:confidence];
    [requestCopy addEdge:anyEdge];
  }

  return anyEdge;
}

- (id)_upsertPeopleEventEdgesFromMomentNode:(id)node matchingResults:(id)results changeRequest:(id)request
{
  v37 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  resultsCopy = results;
  requestCopy = request;
  v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v28 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:self->_graph];
  anyNode = [v28 anyNode];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v10 = resultsCopy;
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
          requiredCriteria = [v15 requiredCriteria];
          meaningNodeLabel = [requiredCriteria meaningNodeLabel];

          [v15 score];
          v19 = v18;
          if ([meaningNodeLabel isEqualToString:@"Birthday"])
          {
            requiredCriteria2 = [v15 requiredCriteria];
            additionalInfo = [requiredCriteria2 additionalInfo];
            v22 = [additionalInfo objectForKeyedSubscript:@"personLocalIdentifier"];

            v23 = [PGGraphPersonNodeCollection personNodesForLocalIdentifier:v22 inGraph:self->_graph];
            anyNode2 = [v23 anyNode];

            if (anyNode2)
            {
              v25 = [(PGGraphBuilder *)self _birthdayEventEdgeFromMomentNode:nodeCopy toPersonNode:anyNode2 confidence:requestCopy insertIfNeededToChangeRequest:v19];
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

          else if (anyNode)
          {
            if ([meaningNodeLabel isEqualToString:@"Anniversary"])
            {
              v25 = [(PGGraphBuilder *)self _anniversaryEventEdgeFromMomentNode:nodeCopy toPersonNode:anyNode confidence:requestCopy insertIfNeededToChangeRequest:v19];
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

- (void)upsertPeopleEventEdgesOfMomentNode:(id)node matchingResults:(id)results
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D22C50];
  resultsCopy = results;
  nodeCopy = node;
  v9 = objc_alloc_init(v6);
  v10 = [(PGGraphBuilder *)self _upsertPeopleEventEdgesFromMomentNode:nodeCopy matchingResults:resultsCopy changeRequest:v9];

  v11 = [(PGGraphBuilder *)self _removeInvalidPeopleEventEdgesFromMomentNode:nodeCopy edgesToUpsert:v10];

  if ([v11 count])
  {
    v12 = [(MAElementCollection *)[PGGraphEdgeCollection alloc] initWithArray:v11 graph:self->_graph];
    [v9 removeEdges:v12];
  }

  if ([v10 count] || objc_msgSend(v11, "count"))
  {
    [(MAGraph *)self->_graph executeGraphChangeRequest:v9];
    loggingConnection = [(PGGraphBuilder *)self loggingConnection];
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      v17 = 134217984;
      v18 = [v11 count];
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGGraphBuilder+PeopleEvents] Successfully remove %lu PeopleEvent domain edges", &v17, 0xCu);
    }

    loggingConnection2 = [(PGGraphBuilder *)self loggingConnection];
    if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
    {
      v15 = [v10 count];
      v17 = 134217984;
      v18 = v15;
      _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, "[PGGraphBuilder+PeopleEvents] Successfully upsert %lu PeopleEvent domain edges", &v17, 0xCu);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)performProcessingSteps:(id)steps withGraphUpdate:(id)update progressBlock:(id)block
{
  v72 = *MEMORY[0x277D85DE8];
  stepsCopy = steps;
  updateCopy = update;
  blockCopy = block;
  v9 = _Block_copy(blockCopy);
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
          noFatalError = [(MAGraph *)self->_graph noFatalError];
          *buf = 67109890;
          LODWORD(v69) = v40;
          WORD2(v69) = 1024;
          *(&v69 + 6) = !noFatalError;
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

  loggingConnection = [(PGGraphBuilder *)self loggingConnection];
  [(MAGraph *)self->_graph enterBatch];
  v11 = [stepsCopy count];
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = stepsCopy;
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
        v19 = [v17 shouldRunWithGraphUpdate:updateCopy];
        v20 = loggingConnection;
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
          [v17 runWithGraphUpdate:updateCopy progressBlock:v47];
          if (*(v64 + 24) == 1)
          {
            v24 = 0;
            throughputReportBlock2 = v48;
LABEL_21:

            goto LABEL_25;
          }

          noFatalError2 = [(MAGraph *)self->_graph noFatalError];

          if (!noFatalError2)
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

        throughputReportBlock = [(PGGraphBuilder *)self throughputReportBlock];
        v31 = throughputReportBlock == 0;

        if (!v31)
        {
          throughputReportBlock2 = [(PGGraphBuilder *)self throughputReportBlock];
          v32 = objc_opt_class();
          v33 = NSStringFromClass(v32);
          (*(throughputReportBlock2 + 2))(throughputReportBlock2, 1, v33);

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

- (void)performPostprocessingWithGraphUpdate:(id)update withRecipe:(id)recipe progressBlock:(id)block
{
  v27 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  recipeCopy = recipe;
  updateCopy = update;
  loggingConnection = [(PGGraphBuilder *)self loggingConnection];
  v12 = os_signpost_id_generate(loggingConnection);
  v13 = loggingConnection;
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
  v16 = [recipeCopy postprocessorsWithGraphBuilder:self];

  [(PGGraphBuilder *)self performProcessingSteps:v16 withGraphUpdate:updateCopy progressBlock:blockCopy];
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

- (void)performPreprocessingWithGraphUpdate:(id)update withRecipe:(id)recipe progressBlock:(id)block
{
  v27 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  recipeCopy = recipe;
  updateCopy = update;
  loggingConnection = [(PGGraphBuilder *)self loggingConnection];
  v12 = os_signpost_id_generate(loggingConnection);
  v13 = loggingConnection;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PreProcessing", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v15 = mach_absolute_time();
  v16 = [recipeCopy preprocessorsWithGraphBuilder:self];

  [(PGGraphBuilder *)self performProcessingSteps:v16 withGraphUpdate:updateCopy progressBlock:blockCopy];
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

- (id)insertMomentNodeForMoment:(id)moment
{
  momentCopy = moment;
  v5 = [[PGGraphMomentNode alloc] initFromMoment:momentCopy];

  v6 = objc_alloc_init(MEMORY[0x277D22C50]);
  [v6 addNode:v5];
  [(MAGraph *)self->_graph executeGraphChangeRequest:v6];

  return v5;
}

- (id)nodesForMomentsInHighlight:(id)highlight
{
  v24 = *MEMORY[0x277D85DE8];
  highlightCopy = highlight;
  photoLibrary = [highlightCopy photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v7 = [MEMORY[0x277CD9958] fetchMomentsInHighlight:highlightCopy options:librarySpecificFetchOptions];
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

        uuid = [*(*(&v19 + 1) + 8 * i) uuid];
        [v8 addObject:uuid];
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

- (id)nodesForHighlightsInHighlightDayGroup:(id)group
{
  v24 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  photoLibrary = [groupCopy photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v7 = [MEMORY[0x277CD9958] fetchChildDayGroupHighlightsForHighlight:groupCopy options:librarySpecificFetchOptions];
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

        uuid = [*(*(&v19 + 1) + 8 * i) uuid];
        [v8 addObject:uuid];
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

- (id)insertHighlightGroupNodeWithHighlight:(id)highlight
{
  highlightCopy = highlight;
  v5 = [PGGraphHighlightNode propertiesWithHighlight:highlightCopy];
  v22 = 0;
  v6 = [(PGMutableGraph *)self->_graph addUniqueNodeWithLabel:@"HighlightGroup" domain:102 properties:v5 didCreate:&v22];
  graph = self->_graph;
  type = [highlightCopy type];

  v9 = [(PGGraph *)graph nodeLabelForHighlightType:type];
  if ((v22 & 1) == 0)
  {
    collection = [v6 collection];
    typeNodes = [collection typeNodes];
    anyNode = [typeNodes anyNode];
    label = [anyNode label];
    v14 = [label isEqualToString:v9];

    if (v14)
    {
      goto LABEL_6;
    }

    collection2 = [v6 collection];
    v16 = +[PGGraphHasTypeEdge filter];
    v17 = [(MAEdgeCollection *)PGGraphEdgeCollection edgesFromNodes:collection2 matchingFilter:v16];

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

- (void)updateHighlightsForHighlightDayGroupNode:(id)node nodesForHighlightsInHighlightDayGroup:(id)group
{
  nodeCopy = node;
  v7 = MEMORY[0x277D22C50];
  groupCopy = group;
  v9 = objc_alloc_init(v7);
  collection = [nodeCopy collection];
  v11 = [(MAElementCollection *)[PGGraphHighlightNodeCollection alloc] initWithSet:groupCopy graph:self->_graph];

  highlightGroupNodes = [(PGGraphHighlightNodeCollection *)v11 highlightGroupNodes];
  v23 = [highlightGroupNodes collectionBySubtracting:collection];

  v13 = +[PGGraphGroupContainsEdge filter];
  v14 = [(MAEdgeCollection *)PGGraphEdgeCollection edgesFromNodes:v23 toNodes:v11 matchingFilter:v13];

  [v9 removeEdges:v14];
  highlightNodes = [collection highlightNodes];
  v16 = [highlightNodes collectionBySubtracting:v11];
  v17 = +[PGGraphGroupContainsEdge filter];
  v18 = [(MAEdgeCollection *)PGGraphEdgeCollection edgesFromNodes:collection toNodes:v16 matchingFilter:v17];

  [v9 removeEdges:v18];
  v19 = [(MAElementCollection *)v11 collectionBySubtracting:highlightNodes];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __108__PGGraphBuilder_Highlight__updateHighlightsForHighlightDayGroupNode_nodesForHighlightsInHighlightDayGroup___block_invoke;
  v24[3] = &unk_278887AA0;
  v25 = nodeCopy;
  v26 = v9;
  v20 = v9;
  v21 = nodeCopy;
  [v19 enumerateNodesUsingBlock:v24];
  [(MAGraph *)self->_graph executeGraphChangeRequest:v20];
}

void __108__PGGraphBuilder_Highlight__updateHighlightsForHighlightDayGroupNode_nodesForHighlightsInHighlightDayGroup___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PGGraphGroupContainsEdge alloc] initFromHighlightGroupNode:*(a1 + 32) toHighlightNode:v3];

  [*(a1 + 40) addEdge:v4];
}

- (void)insertHighlightDayGroupsWithGraphUpdate:(id)update progressBlock:(id)block
{
  v64 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  blockCopy = block;
  v8 = 0.0;
  v50 = _Block_copy(blockCopy);
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

  v44 = blockCopy;
  v45 = updateCopy;
  highlightDayGroupsToIngest = [updateCopy highlightDayGroupsToIngest];
  loggingConnection = [(PGGraphBuilder *)self loggingConnection];
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    v12 = [highlightDayGroupsToIngest count];
    *buf = 134217984;
    *v63 = v12;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "Batch Updates - About to insert %lu new highlight groups", buf, 0xCu);
  }

  photoLibrary = [(PGGraphBuilder *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v47 = librarySpecificFetchOptions;
  [librarySpecificFetchOptions setShouldPrefetchCount:1];
  v15 = [highlightDayGroupsToIngest count];
  v46 = [MEMORY[0x277CBEB58] setWithCapacity:v15];
  v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v15];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v17 = highlightDayGroupsToIngest;
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

        uuid = [*(*(&v55 + 1) + 8 * i) uuid];
        [v16 addObject:uuid];
      }

      v19 = [v17 countByEnumeratingWithState:&v55 objects:v61 count:16];
    }

    while (v19);
  }

  v43 = [(PGGraphHighlightNodeCollection *)PGGraphHighlightGroupNodeCollection highlightNodesForArrayOfUUIDs:v16 inGraph:self->_graph];
  highlightNodeByHighlightUUID = [v43 highlightNodeByHighlightUUID];
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
      uuid2 = [v31 uuid];
      v34 = [highlightNodeByHighlightUUID objectForKeyedSubscript:uuid2];

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

      uuid3 = [v31 uuid];
      *buf = v42;
      *v63 = uuid3;
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
    uuid3 = [(PGGraphBuilder *)self nodesForHighlightsInHighlightDayGroup:v31, v42];
    [(PGGraphBuilder *)self updateHighlightsForHighlightDayGroupNode:v34 nodesForHighlightsInHighlightDayGroup:uuid3];
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

          blockCopy = v44;
          updateCopy = v45;
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

  blockCopy = v44;
  updateCopy = v45;
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

- (id)_propertiesFromIngestHighlight:(id)highlight
{
  v24[5] = *MEMORY[0x277D85DE8];
  highlightCopy = highlight;
  uuid = [highlightCopy uuid];
  v5 = uuid;
  v6 = &stru_2843F5C58;
  if (uuid)
  {
    v6 = uuid;
  }

  v7 = v6;

  v24[0] = v7;
  v23[0] = @"id";
  v23[1] = @"tzs";
  v8 = MEMORY[0x277CCABB0];
  localStartDate = [highlightCopy localStartDate];
  [localStartDate timeIntervalSince1970];
  v10 = [v8 numberWithDouble:?];
  v24[1] = v10;
  v23[2] = @"utcs";
  v11 = MEMORY[0x277CCABB0];
  startDate = [highlightCopy startDate];
  [startDate timeIntervalSince1970];
  v13 = [v11 numberWithDouble:?];
  v24[2] = v13;
  v23[3] = @"tze";
  v14 = MEMORY[0x277CCABB0];
  localEndDate = [highlightCopy localEndDate];
  [localEndDate timeIntervalSince1970];
  v16 = [v14 numberWithDouble:?];
  v24[3] = v16;
  v23[4] = @"utce";
  v17 = MEMORY[0x277CCABB0];
  endDate = [highlightCopy endDate];

  [endDate timeIntervalSince1970];
  v19 = [v17 numberWithDouble:?];
  v24[4] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:5];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)updateHighlightNode:(id)node withHighlight:(id)highlight
{
  nodeCopy = node;
  v9 = [(PGGraphBuilder *)self _propertiesFromIngestHighlight:highlight];
  graph = self->_graph;
  identifier = [nodeCopy identifier];

  [(MAGraph *)graph persistModelProperties:v9 forNodeWithIdentifier:identifier clobberExisting:0];
}

- (id)insertHighlightNodeWithHighlight:(id)highlight
{
  highlightCopy = highlight;
  uuid = [highlightCopy uuid];
  v6 = [PGGraphHighlightNodeCollection highlightNodeForUUID:uuid inGraph:self->_graph];

  if ([v6 count])
  {
    anyNode = [v6 anyNode];
  }

  else
  {
    anyNode = [[PGGraphHighlightNode alloc] initFromHighlight:highlightCopy];
    v8 = objc_alloc_init(MEMORY[0x277D22C50]);
    [v8 addNode:anyNode];
    [(MAGraph *)self->_graph executeGraphChangeRequest:v8];
  }

  return anyNode;
}

- (void)updateMomentsForHighlightNode:(id)node nodesForMomentsInHighlight:(id)highlight
{
  nodeCopy = node;
  v7 = MEMORY[0x277D22C50];
  highlightCopy = highlight;
  v9 = objc_alloc_init(v7);
  v10 = [(MANodeCollection *)[PGGraphHighlightNodeCollection alloc] initWithNode:nodeCopy];
  v11 = [(MAElementCollection *)[PGGraphMomentNodeCollection alloc] initWithSet:highlightCopy graph:self->_graph];

  highlightNodes = [(PGGraphMomentNodeCollection *)v11 highlightNodes];
  v13 = [highlightNodes collectionBySubtracting:v10];

  v14 = +[PGGraphContainsEdge filter];
  v15 = [(MAEdgeCollection *)PGGraphEdgeCollection edgesFromNodes:v13 toNodes:v11 matchingFilter:v14];
  [v9 removeEdges:v15];

  momentNodes = [(PGGraphHighlightNodeCollection *)v10 momentNodes];
  v17 = [momentNodes collectionBySubtracting:v11];
  v18 = +[PGGraphContainsEdge filter];
  v19 = [(MAEdgeCollection *)PGGraphEdgeCollection edgesFromNodes:v10 toNodes:v17 matchingFilter:v18];
  [v9 removeEdges:v19];

  v20 = [(MAElementCollection *)v11 collectionBySubtracting:momentNodes];
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __86__PGGraphBuilder_Highlight__updateMomentsForHighlightNode_nodesForMomentsInHighlight___block_invoke;
  v26 = &unk_278888B78;
  v27 = nodeCopy;
  v28 = v9;
  v21 = v9;
  v22 = nodeCopy;
  [v20 enumerateNodesUsingBlock:&v23];
  [(MAGraph *)self->_graph executeGraphChangeRequest:v21, v23, v24, v25, v26];
}

void __86__PGGraphBuilder_Highlight__updateMomentsForHighlightNode_nodesForMomentsInHighlight___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PGGraphContainsEdge alloc] initFromHighlightNode:*(a1 + 32) toMomentNode:v3];

  [*(a1 + 40) addEdge:v4];
}

- (void)insertHighlightDaysWithGraphUpdate:(id)update progressBlock:(id)block
{
  v45 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  blockCopy = block;
  v8 = 0.0;
  v9 = &unk_22F784000;
  v35 = _Block_copy(blockCopy);
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

  highlightDaysToIngest = [updateCopy highlightDaysToIngest];
  loggingConnection = [(PGGraphBuilder *)self loggingConnection];
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    v13 = [highlightDaysToIngest count];
    *buf = 134217984;
    *v44 = v13;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "Batch Updates - About to insert %lu new highlights", buf, 0xCu);
  }

  [(MAGraph *)self->_graph enterBatch];
  v14 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(highlightDaysToIngest, "count")}];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = highlightDaysToIngest;
  v15 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v15)
  {
    v16 = v15;
    v32 = blockCopy;
    v33 = updateCopy;
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
        uuid = [v20 uuid];
        v23 = [PGGraphHighlightNodeCollection highlightNodeForUUID:uuid inGraph:self->_graph];
        anyNode = [v23 anyNode];

        if (!anyNode)
        {
          anyNode = [(PGGraphBuilder *)self insertHighlightNodeWithHighlight:v20];
          [v34 addObject:anyNode];
        }

        v25 = [(PGGraphBuilder *)self nodesForMomentsInHighlight:v20, v32, v33];
        [(PGGraphBuilder *)self updateMomentsForHighlightNode:anyNode nodesForMomentsInHighlight:v25];
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
    blockCopy = v32;
    updateCopy = v33;
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
    loggingConnection2 = [(PGGraphBuilder *)self loggingConnection];
    if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "[PGGraphBuilder] encountered graph fatal error, cancelling operation", buf, 2u);
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
    [updateCopy setInsertedHighlightNodes:v14];
  }

LABEL_37:
  v31 = *MEMORY[0x277D85DE8];
}

- (void)insertHighlightsWithGraphUpdate:(id)update progressBlock:(id)block
{
  v37 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  blockCopy = block;
  v8 = _Block_copy(blockCopy);
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
    [(PGGraphBuilder *)self insertHighlightDaysWithGraphUpdate:updateCopy progressBlock:v19];
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
        [(PGGraphBuilder *)self insertHighlightDayGroupsWithGraphUpdate:updateCopy progressBlock:v14];
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
      loggingConnection = [(PGGraphBuilder *)self loggingConnection];
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGGraphBuilder] encountered graph fatal error, cancelling operation", buf, 2u);
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

- (void)deleteHighlightsWithGraphUpdate:(id)update
{
  v18 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  uuidsOfHighlightsToDelete = [updateCopy uuidsOfHighlightsToDelete];
  v6 = [uuidsOfHighlightsToDelete count];
  loggingConnection = [(PGGraphBuilder *)self loggingConnection];
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    v14 = 134217984;
    v15 = v6;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "Batch Updates - About to delete %lu Highlights", &v14, 0xCu);
  }

  v8 = [PGGraphHighlightNodeCollection highlightNodesForUUIDs:uuidsOfHighlightsToDelete inGraph:self->_graph];
  v9 = [v8 count];
  if (v9 != v6)
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:uuidsOfHighlightsToDelete];
    uuids = [v8 uuids];
    [v10 minusSet:uuids];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = v10;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "Failed to lookup Highlight nodes for deletion with UUIDs: %@", &v14, 0xCu);
    }
  }

  if (v9)
  {
    v12 = objc_alloc_init(MEMORY[0x277D22C50]);
    [v12 removeNodes:v8];
    [(MAGraph *)self->_graph executeGraphChangeRequest:v12];
    [updateCopy setHasDeletedHighlightNodes:1];
  }

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    v14 = 134218240;
    v15 = v9;
    v16 = 2048;
    v17 = v6;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "Batch Updates - Deleted %lu Highlights (%lu requested)", &v14, 0x16u);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)insertPublicEvent:(id)event fromEventNode:(id)node
{
  v101[2] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  nodeCopy = node;
  v100[0] = @"id";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(eventCopy, "muid")}];
  v100[1] = @"name";
  v101[0] = v7;
  name = [eventCopy name];
  v101[1] = name;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v101 forKeys:v100 count:2];
  v63 = [v9 mutableCopy];

  expectedAttendance = [eventCopy expectedAttendance];
  if ([eventCopy hasExpectedAttendance] && expectedAttendance >= 1)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:expectedAttendance];
    [v63 setObject:v11 forKeyedSubscript:@"attdc"];
  }

  if (_os_feature_enabled_impl())
  {
    v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(eventCopy, "canUseWithoutBusiness")}];
    [v63 setObject:v12 forKeyedSubscript:@"canUseWithoutBusiness"];

    v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(eventCopy, "supportsEventExperience")}];
    [v63 setObject:v13 forKeyedSubscript:@"supportsEventExperience"];
  }

  identifier = [eventCopy identifier];
  v15 = identifier;
  if (identifier)
  {
    v16 = identifier;
  }

  else
  {
    v16 = &stru_2843F5C58;
  }

  [v63 setObject:v16 forKeyedSubscript:@"eventID"];

  v86 = 0;
  [(PGMutableGraph *)self->_graph addUniqueNodeWithLabel:@"PublicEvent" domain:900 properties:v63 didCreate:&v86];
  v18 = v17 = eventCopy;
  v19 = [(PGMutableGraph *)self->_graph addUniqueEdgeWithLabel:@"PUBLIC_EVENT" sourceNode:nodeCopy targetNode:v18 domain:900 properties:0];
  if (v86 == 1)
  {
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v61 = v17;
    performers = [v17 performers];
    v21 = [performers countByEnumeratingWithState:&v82 objects:v99 count:16];
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
            objc_enumerationMutation(performers);
          }

          v25 = *(*(&v82 + 1) + 8 * i);
          localizedName = [v25 localizedName];
          if ([localizedName length])
          {
            iTunesIdentifier = [v25 iTunesIdentifier];
            if ([iTunesIdentifier length])
            {
              v95[0] = @"name";
              v95[1] = @"id";
              v96[0] = localizedName;
              v96[1] = iTunesIdentifier;
              v28 = MEMORY[0x277CBEAC0];
              v29 = v96;
              v30 = v95;
              v31 = 2;
            }

            else
            {
              v93 = @"name";
              v94 = localizedName;
              v28 = MEMORY[0x277CBEAC0];
              v29 = &v94;
              v30 = &v93;
              v31 = 1;
            }

            loggingConnection = [v28 dictionaryWithObjects:v29 forKeys:v30 count:v31];
            v34 = [(PGMutableGraph *)self->_graph addUniqueNodeWithLabel:@"Performer" domain:900 properties:loggingConnection didCreate:0];
            v35 = [(PGMutableGraph *)self->_graph addUniqueEdgeWithLabel:@"PERFORMER" sourceNode:v18 targetNode:v34 domain:900 properties:0];
          }

          else
          {
            v32 = +[PGLogging sharedLogging];
            loggingConnection = [v32 loggingConnection];

            if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v98 = v25;
              _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "Not ingesting performer with empty name %@", buf, 0xCu);
            }
          }
        }

        v22 = [performers countByEnumeratingWithState:&v82 objects:v99 count:16];
      }

      while (v22);
    }

    supportedCategories = [objc_opt_class() supportedCategories];
    v68 = [supportedCategories count];
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
          category = [v40 category];
          if (![category length])
          {
            v44 = +[PGLogging sharedLogging];
            loggingConnection2 = [v44 loggingConnection];

            if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v98 = v40;
              _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, "Not ingesting empty categoryName string for category %@", buf, 0xCu);
            }

            goto LABEL_52;
          }

          if (!v68 || [supportedCategories containsObject:category])
          {
            localizedName2 = [v40 localizedName];
            v72 = v39;
            v70 = localizedName2;
            if (localizedName2 && (v42 = localizedName2, [localizedName2 length]))
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
            v69 = [PGMutableGraph addUniqueNodeWithLabel:"addUniqueNodeWithLabel:domain:properties:didCreate:" domain:category properties:901 didCreate:?];
            v46 = [PGMutableGraph addUniqueEdgeWithLabel:"addUniqueEdgeWithLabel:sourceNode:targetNode:domain:properties:" sourceNode:@"CATEGORY" targetNode:v18 domain:? properties:?];
            v74 = 0u;
            v75 = 0u;
            v76 = 0u;
            v77 = 0u;
            localizedSubcategories = [v40 localizedSubcategories];
            v48 = [localizedSubcategories countByEnumeratingWithState:&v74 objects:v89 count:16];
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
                    objc_enumerationMutation(localizedSubcategories);
                  }

                  v52 = *(*(&v74 + 1) + 8 * j);
                  if ([v52 length])
                  {
                    v53 = [v40 levelForLocalizedSubcategory:v52];
                    loggingConnection3 = MEMORY[0x277CBEC10];
                    if (v53 != 0x7FFFFFFFFFFFFFFFLL)
                    {
                      v87 = @"lvl";
                      v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v53];
                      v88 = v55;
                      loggingConnection3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
                    }

                    buf[0] = 0;
                    v56 = [(PGMutableGraph *)self->_graph addUniqueNodeWithLabel:v52 domain:902 properties:loggingConnection3 didCreate:buf];
                    v57 = [(PGMutableGraph *)self->_graph addUniqueEdgeWithLabel:@"LOCALIZED_SUBCATEGORY" sourceNode:v18 targetNode:v56 domain:902 properties:0];
                  }

                  else
                  {
                    v58 = +[PGLogging sharedLogging];
                    loggingConnection3 = [v58 loggingConnection];

                    if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      v98 = category;
                      _os_log_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_INFO, "Not ingesting empty localizedSubcategory string for category %@", buf, 0xCu);
                    }
                  }
                }

                v49 = [localizedSubcategories countByEnumeratingWithState:&v74 objects:v89 count:16];
              }

              while (v49);
            }

            v38 = v65;
            v37 = v66;
            loggingConnection2 = v71;
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

- (void)deleteAllMemoryNodesAndEdgesForMemoryCategory:(unint64_t)category
{
  v6 = objc_alloc_init(MEMORY[0x277D22C50]);
  v5 = [PGGraphMemoryNodeCollection memoryNodesOfCategory:category inGraph:self->_graph];
  [v6 removeNodes:v5];
  [(MAGraph *)self->_graph executeGraphChangeRequest:v6];
}

- (void)deleteAllMemoryNodesAndEdgesForMemoryCategories:(id)categories
{
  v4 = MEMORY[0x277D22C50];
  categoriesCopy = categories;
  v7 = objc_alloc_init(v4);
  v6 = [PGGraphMemoryNodeCollection memoryNodesOfCategories:categoriesCopy inGraph:self->_graph];

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

- (id)insertMemoryNodeFromMemory:(id)memory changeRequest:(id)request
{
  memoryCopy = memory;
  requestCopy = request;
  if ([memoryCopy memoryCategory])
  {
    memoryMomentNodes = [memoryCopy memoryMomentNodes];
    if (![memoryMomentNodes count])
    {
      v9 = +[PGLogging sharedLogging];
      loggingConnection = [v9 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[IngestMemory] Attempting to insert memory with no moment nodes", buf, 2u);
      }
    }

    v11 = [memoryCopy memoryFeatureNodesInGraph:self->_graph];
    if (![v11 count])
    {
      v12 = +[PGLogging sharedLogging];
      loggingConnection2 = [v12 loggingConnection];

      if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "[IngestMemory] Attempting to insert memory with no feature nodes", buf, 2u);
      }
    }

    v14 = [objc_opt_class() memoryLabelForCategory:{objc_msgSend(memoryCopy, "memoryCategory")}];
    v15 = [PGGraphMemoryNode uniqueMemoryIdentifierWithMemoryLabel:v14 featureNodes:v11];
    v16 = -[PGGraphMemoryNode initWithLabel:memoryCategorySubcategory:uniqueMemoryIdentifier:generatedWithFallbackRequirements:]([PGGraphMemoryNode alloc], "initWithLabel:memoryCategorySubcategory:uniqueMemoryIdentifier:generatedWithFallbackRequirements:", v14, [memoryCopy memoryCategorySubcategory], v15, objc_msgSend(memoryCopy, "generatedWithFallbackRequirements"));
    [requestCopy addNode:v16];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __67__PGGraphBuilder_Memory__insertMemoryNodeFromMemory_changeRequest___block_invoke;
    v27[3] = &unk_278888B50;
    v17 = v16;
    v28 = v17;
    v18 = requestCopy;
    v29 = v18;
    [v11 enumerateNodesUsingBlock:v27];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __67__PGGraphBuilder_Memory__insertMemoryNodeFromMemory_changeRequest___block_invoke_2;
    v24[3] = &unk_278888B78;
    v19 = v17;
    v25 = v19;
    v26 = v18;
    [memoryMomentNodes enumerateNodesUsingBlock:v24];
    v20 = v26;
    v21 = v19;
  }

  else
  {
    v22 = +[PGLogging sharedLogging];
    memoryMomentNodes = [v22 loggingConnection];

    if (os_log_type_enabled(memoryMomentNodes, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F0FC000, memoryMomentNodes, OS_LOG_TYPE_ERROR, "[IngestMemory] Attempting to insert memory with unknown memory category", buf, 2u);
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

- (id)insertMemoryNodeFromMemory:(id)memory
{
  v4 = MEMORY[0x277D22C50];
  memoryCopy = memory;
  v6 = objc_alloc_init(v4);
  v7 = [(PGGraphBuilder *)self insertMemoryNodeFromMemory:memoryCopy changeRequest:v6];

  if (v7)
  {
    [(MAGraph *)self->_graph executeGraphChangeRequest:v6];
  }

  return v7;
}

+ (unint64_t)memoryCategoryForLabel:(id)label
{
  labelCopy = label;
  if ([labelCopy isEqualToString:@"YearInReview"])
  {
    v4 = 8;
  }

  else if ([labelCopy isEqualToString:@"PersonOverTime"])
  {
    v4 = 2;
  }

  else if ([labelCopy isEqualToString:@"LastMonthAtHome"])
  {
    v4 = 7;
  }

  else if ([labelCopy isEqualToString:@"Foodie"])
  {
    v4 = 9;
  }

  else if ([labelCopy isEqualToString:@"Pet"])
  {
    v4 = 10;
  }

  else if ([labelCopy isEqualToString:@"Baby"])
  {
    v4 = 11;
  }

  else if ([labelCopy isEqualToString:@"Person"])
  {
    v4 = 3;
  }

  else if ([labelCopy isEqualToString:@"EarlyMomentsWithPerson"])
  {
    v4 = 4;
  }

  else if ([labelCopy isEqualToString:@"CityLocation"])
  {
    v4 = 12;
  }

  else if ([labelCopy isEqualToString:@"RegionLocation"])
  {
    v4 = 13;
  }

  else if ([labelCopy isEqualToString:@"MeaningfulEvent"])
  {
    v4 = 16;
  }

  else if ([labelCopy isEqualToString:@"MeaningfulEventAggregation"])
  {
    v4 = 17;
  }

  else if ([labelCopy isEqualToString:@"SocialGroupOverTime"])
  {
    v4 = 5;
  }

  else if ([labelCopy isEqualToString:@"SocialGroup"])
  {
    v4 = 6;
  }

  else if ([labelCopy isEqualToString:@"RecurrentTrip"])
  {
    v4 = 18;
  }

  else if ([labelCopy isEqualToString:@"Trip"])
  {
    v4 = 19;
  }

  else if ([labelCopy isEqualToString:@"OngoingTrip"])
  {
    v4 = 31;
  }

  else if ([labelCopy isEqualToString:@"PastSuperset"])
  {
    v4 = 20;
  }

  else if ([labelCopy isEqualToString:@"SingleMoment"])
  {
    v4 = 1;
  }

  else if ([labelCopy isEqualToString:@"Season"])
  {
    v4 = 21;
  }

  else if ([labelCopy isEqualToString:@"AreaLocation"])
  {
    v4 = 14;
  }

  else if ([labelCopy isEqualToString:@"DayInHistoryAggregation"])
  {
    v4 = 23;
  }

  else if ([labelCopy isEqualToString:@"BusinessLocation"])
  {
    v4 = 15;
  }

  else if ([labelCopy isEqualToString:@"RecentHighlights"])
  {
    v4 = 24;
  }

  else if ([labelCopy isEqualToString:@"ChildActivity"])
  {
    v4 = 25;
  }

  else if ([labelCopy isEqualToString:@"ExcitingMoments"])
  {
    v4 = 26;
  }

  else if ([labelCopy isEqualToString:@"Trends"])
  {
    v4 = 27;
  }

  else if ([labelCopy isEqualToString:@"PetOutdoor"])
  {
    v4 = 28;
  }

  else if ([labelCopy isEqualToString:@"ChildAndPerson"])
  {
    v4 = 29;
  }

  else if ([labelCopy isEqualToString:@"ChildOutdoor"])
  {
    v4 = 30;
  }

  else if ([labelCopy isEqualToString:@"ContentCreationTool"])
  {
    v4 = 100;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)memoryLabelForCategory:(unint64_t)category
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = @"Unknown";
  v5 = @"Unknown";
  if (category > 200)
  {
    if (category - 201 < 0x15 || category - 301 < 2 || category == 401)
    {
LABEL_5:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v9 = 134217984;
        categoryCopy = category;
        _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "+[PGGraphBuilder memoryLabelForCategory:] is not compatible with legacy category: %lu", &v9, 0xCu);
      }

      v4 = @"Legacy";
    }
  }

  else
  {
    switch(category)
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
        if (category - 101 < 2)
        {
          goto LABEL_5;
        }

        if (category != 100)
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

- (id)insertPresentEdgeFromPersonNode:(id)node toEventNode:(id)eventNode numberOfAssetsWithPerson:(unint64_t)person edgeWeight:(float)weight
{
  nodeCopy = node;
  eventNodeCopy = eventNode;
  collection = [nodeCopy collection];
  collection2 = [eventNodeCopy collection];
  v14 = [(PGGraphEdgeCollection *)PGGraphPersonPresentEdgeCollection edgesFromNodes:collection toNodes:collection2];

  if ([v14 count])
  {
    anyEdge = [v14 anyEdge];
  }

  else
  {
    v16 = objc_alloc_init(MEMORY[0x277D22C50]);
    anyEdge = [(PGGraphBasePresentEdge *)[PGGraphPersonPresentEdge alloc] initFromPersonNode:nodeCopy toMomentNode:eventNodeCopy importance:person numberOfAssets:weight];
    [v16 addEdge:anyEdge];
    [(MAGraph *)self->_graph executeGraphChangeRequest:v16];
  }

  return anyEdge;
}

- (void)insertInferredEdgeFromMeNode:(id)node toInferredPersonNode:(id)personNode
{
  v24 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  personNodeCopy = personNode;
  collection = [nodeCopy collection];
  v9 = +[PGGraphInferredPersonEdge filter];
  v10 = [(MAEdgeCollection *)PGGraphEdgeCollection edgesFromNodes:collection matchingFilter:v9];

  if (![v10 count])
  {
    loggingConnection2 = objc_alloc_init(MEMORY[0x277D22C50]);
    if (!loggingConnection2)
    {
      goto LABEL_15;
    }

LABEL_11:
    loggingConnection = [(PGGraphBuilder *)self loggingConnection];
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      localIdentifier = [personNodeCopy localIdentifier];
      v22 = 138412290;
      v23 = localIdentifier;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "Inferring Me to %@", &v22, 0xCu);
    }

    v20 = [[PGGraphInferredPersonEdge alloc] initFromPersonNode:nodeCopy toInferredPersonNode:personNodeCopy];
    [loggingConnection2 addEdge:v20];
    [(MAGraph *)self->_graph executeGraphChangeRequest:loggingConnection2];

    goto LABEL_14;
  }

  if ([v10 count] <= 1)
  {
    anyEdge = [v10 anyEdge];
    targetNode = [anyEdge targetNode];
    identifier = [targetNode identifier];
    identifier2 = [personNodeCopy identifier];

    if (identifier == identifier2)
    {
      loggingConnection2 = [(PGGraphBuilder *)self loggingConnection];
      if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
      {
        localIdentifier2 = [personNodeCopy localIdentifier];
        v22 = 138412290;
        v23 = localIdentifier2;
        _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, "Inferred Me is up-to-date (%@)", &v22, 0xCu);
      }

LABEL_14:

      goto LABEL_15;
    }
  }

  loggingConnection3 = [(PGGraphBuilder *)self loggingConnection];
  if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 67109120;
    LODWORD(v23) = [v10 count];
    _os_log_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_DEFAULT, "Deleting out-of-date Me inferred edge (found %d)", &v22, 8u);
  }

  loggingConnection2 = objc_alloc_init(MEMORY[0x277D22C50]);
  [loggingConnection2 removeEdges:v10];
  if (loggingConnection2)
  {
    goto LABEL_11;
  }

LABEL_15:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)inferPersonNodeForMeNode:(id)node
{
  v20 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  serviceManager = [(PGGraphBuilder *)self serviceManager];
  photoLibrary = [(PGGraphBuilder *)self photoLibrary];
  v7 = [serviceManager inferredDeviceOwnerForPhotoLibrary:photoLibrary ignoreContactLinking:0];

  loggingConnection = [(PGGraphBuilder *)self loggingConnection];
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    localIdentifier = [v7 localIdentifier];
    v18 = 138412290;
    v19 = localIdentifier;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "Inferred device owner: %@", &v18, 0xCu);
  }

  if (v7)
  {
    peopleDomainBuildingHelper = self->_peopleDomainBuildingHelper;
    localIdentifier2 = [v7 localIdentifier];
    loggingConnection3 = [(PGGraphPeopleDomainBuildingHelper *)peopleDomainBuildingHelper insertedIdentifiedPersonForPersonLocalIdentifier:localIdentifier2];

    if (loggingConnection3)
    {
      personNode = [loggingConnection3 personNode];
    }

    else
    {
      v15 = [MEMORY[0x277D27760] personWithPHPerson:v7];
      personNode = [(PGGraphBuilder *)self insertPersonNodeForPerson:v15];
    }

    loggingConnection2 = [(PGGraphBuilder *)self loggingConnection];
    if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
    {
      v18 = 138412290;
      v19 = personNode;
      _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, "Inferred Me: %@", &v18, 0xCu);
    }
  }

  else
  {
    graph = [(PGGraphBuilder *)self graph];
    personNode = [graph inferMeNodeFromSocialGroups];

    loggingConnection3 = [(PGGraphBuilder *)self loggingConnection];
    if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_INFO))
    {
      v18 = 138412290;
      v19 = personNode;
      _os_log_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_INFO, "Inferred Me (fallback): %@", &v18, 0xCu);
    }
  }

  if (personNode)
  {
    [(PGGraphBuilder *)self insertInferredEdgeFromMeNode:nodeCopy toInferredPersonNode:personNode];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)insertOrUpdateMePersonNodeIfNeeded
{
  v12 = *MEMORY[0x277D85DE8];
  meNode = [(PGGraph *)self->_graph meNode];
  if (!meNode)
  {
    serviceManager = [(PGGraphBuilder *)self serviceManager];
    mePersonForGraphIngest = [serviceManager mePersonForGraphIngest];

    loggingConnection = [(PGGraphBuilder *)self loggingConnection];
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = mePersonForGraphIngest;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "No me node, using person identity: %@", &v10, 0xCu);
    }

    meNode = [(PGGraphBuilder *)self insertMePersonNodeForPerson:mePersonForGraphIngest];
  }

  loggingConnection2 = [(PGGraphBuilder *)self loggingConnection];
  if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    v11 = meNode;
    _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, "Using Me node: %@", &v10, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];

  return meNode;
}

- (void)setAgeCategory:(unint64_t)category onPersonNodeForIdentifier:(unint64_t)identifier
{
  v6 = [PGGraphPersonNode propertiesWithAgeCategory:category];
  [(MAGraph *)self->_graph persistModelProperties:v6 forNodeWithIdentifier:identifier clobberExisting:0];
}

- (void)setBiologicalSex:(unint64_t)sex onPersonNodeForIdentifier:(unint64_t)identifier
{
  v6 = [PGGraphPersonNode propertiesWithBiologicalSex:sex];
  [(MAGraph *)self->_graph persistModelProperties:v6 forNodeWithIdentifier:identifier clobberExisting:0];
}

- (id)insertContactSuggestion:(id)suggestion forPersonNode:(id)node confidence:(double)confidence edgeProperties:(id)properties
{
  v106 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  nodeCopy = node;
  propertiesCopy = properties;
  fullName = [suggestionCopy fullName];
  if ([fullName length])
  {
    v14 = fullName;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  cNIdentifier = [suggestionCopy CNIdentifier];
  if ([cNIdentifier length])
  {
    v17 = cNIdentifier;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  v19 = v18;
  anyNode = 0;
  if (v15 && v18)
  {
    v99 = v15;
    v20 = objc_alloc_init(MEMORY[0x277D22C50]);
    selfCopy = self;
    v21 = [PGGraphContactNodeCollection contactNodeForContactIdentifier:v19 inGraph:self->_graph];
    v100 = v20;
    v98 = v21;
    if ([v21 count])
    {
      anyNode = [v21 anyNode];
      v22 = nodeCopy;
      collection = [nodeCopy collection];
      v24 = [(PGGraphEdgeCollection *)PGGraphContactSuggestionEdgeCollection edgesFromNodes:collection toNodes:v21];
    }

    else
    {
      v22 = nodeCopy;
      v25 = [PGGraphContactNode alloc];
      birthdayDate = [suggestionCopy birthdayDate];
      potentialBirthdayDate = [suggestionCopy potentialBirthdayDate];
      v28 = [(PGGraphContactNode *)v25 initWithName:v99 contactIdentifier:v19 birthdayDate:birthdayDate potentialBirthdayDate:potentialBirthdayDate];

      anyNode = v28;
      [v20 addNode:v28];
      v24 = 0;
    }

    v96 = v24;
    nodeCopy = v22;
    v29 = v20;
    if (![v24 count])
    {
      v30 = [propertiesCopy objectForKeyedSubscript:@"gwscore"];
      [v30 doubleValue];
      v95 = v31;

      v32 = [propertiesCopy objectForKeyedSubscript:@"gwnummmtshome"];
      unsignedIntegerValue = [v32 unsignedIntegerValue];

      v33 = [propertiesCopy objectForKeyedSubscript:@"gwnummentndaddrs"];
      unsignedIntegerValue2 = [v33 unsignedIntegerValue];

      v34 = [propertiesCopy objectForKeyedSubscript:@"gwnumbdaymmt"];
      unsignedIntegerValue3 = [v34 unsignedIntegerValue];

      v35 = [propertiesCopy objectForKeyedSubscript:@"gwnummbdaymmt"];
      unsignedIntegerValue4 = [v35 unsignedIntegerValue];

      v36 = [propertiesCopy objectForKeyedSubscript:@"gwnummmtsclndrevents"];
      unsignedIntegerValue5 = [v36 unsignedIntegerValue];

      v37 = [propertiesCopy objectForKeyedSubscript:@"gwnumassts"];
      unsignedIntegerValue6 = [v37 unsignedIntegerValue];

      v38 = [propertiesCopy objectForKeyedSubscript:@"gwnumcmm"];
      unsignedIntegerValue7 = [v38 unsignedIntegerValue];

      v39 = [propertiesCopy objectForKeyedSubscript:@"gwftfprntconf"];
      [v39 doubleValue];
      v87 = v40;

      v41 = [propertiesCopy objectForKeyedSubscript:@"gwfprntsmatch"];
      bOOLValue = [v41 BOOLValue];

      v84 = [propertiesCopy objectForKeyedSubscript:@"gwreldebug"];
      v42 = [propertiesCopy objectForKeyedSubscript:@"gwsocialgrpsconf"];
      [v42 doubleValue];
      v85 = v43;

      v44 = [propertiesCopy objectForKeyedSubscript:@"gwsocialgrps"];
      v45 = [propertiesCopy objectForKeyedSubscript:@"gwmsggrps"];
      v46 = [propertiesCopy objectForKeyedSubscript:@"bdayscore"];
      [v46 doubleValue];
      v83 = v47;

      v48 = [propertiesCopy objectForKeyedSubscript:@"pbdayscore"];
      [v48 doubleValue];
      v82 = v49;

      v50 = [propertiesCopy objectForKeyedSubscript:@"addscore"];
      [v50 doubleValue];
      v81 = v51;

      v52 = [propertiesCopy objectForKeyedSubscript:@"maddscore"];
      [v52 doubleValue];
      v54 = v53;

      v55 = [propertiesCopy objectForKeyedSubscript:@"calscore"];
      [v55 doubleValue];
      v57 = v56;

      v58 = [propertiesCopy objectForKeyedSubscript:@"asstscore"];
      [v58 doubleValue];
      v60 = v59;

      v61 = [propertiesCopy objectForKeyedSubscript:@"cmmscore"];
      [v61 doubleValue];
      v63 = v62;

      v64 = [propertiesCopy objectForKeyedSubscript:@"relscore"];
      [v64 doubleValue];
      v66 = v65;

      v67 = [propertiesCopy objectForKeyedSubscript:@"scoremfp"];
      [v67 doubleValue];
      v69 = v68;

      v70 = [propertiesCopy objectForKeyedSubscript:@"gwgenmatch"];
      unsignedIntegerValue8 = [v70 unsignedIntegerValue];

      LOBYTE(v80) = bOOLValue;
      v72 = [[PGGraphContactSuggestionEdge alloc] initFromPersonNode:nodeCopy toContactNode:anyNode confidence:unsignedIntegerValue contactScore:unsignedIntegerValue2 numberOfMomentsAtHome:unsignedIntegerValue3 numberOfMomentsAtMentionedAddress:unsignedIntegerValue4 numberOfWeakBirthdayMomentsAroundBirthdayDate:confidence numberOfWeakBirthdayMomentsAroundPotentialBirthdayDate:v95 numberOfMomentsOverlappingWithCalendarEvents:v87 numberOfAppearancesInSharedAssets:v85 numberOfCMMMoments:v83 facetimeFaceprintConfidence:v82 contactFaceprintMatch:v81 relationshipsDebug:v54 socialGroupsConfidence:unsignedIntegerValue5 socialGroupsDebug:unsignedIntegerValue6 messageGroupsDebug:unsignedIntegerValue7 birthdayScore:v80 potentialBirthdayScore:v84 addressScore:v44 mentionedAddressScore:v45 calendarScore:v57 sharedAssetScore:v60 sharedCMMScore:v63 relationshipScore:v66 scoreAfterMessagePenalty:v69 sexMatch:unsignedIntegerValue8];
      [v100 addEdge:v72];
    }

    [(MAGraph *)selfCopy->_graph executeGraphChangeRequest:v100];
    v73 = +[PGLogging sharedLogging];
    loggingConnection = [v73 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      stringDescription = [nodeCopy stringDescription];
      [anyNode name];
      v77 = v76 = nodeCopy;
      *buf = 138478083;
      v103 = stringDescription;
      v104 = 2113;
      v105 = v77;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "IngestPeople: Photos Person %{private}@ with Contact %{private}@", buf, 0x16u);

      nodeCopy = v76;
      v29 = v100;
    }

    v15 = v99;
  }

  v78 = *MEMORY[0x277D85DE8];

  return anyNode;
}

- (void)updatePersonNodeForIdentifier:(unint64_t)identifier withPerson:(id)person forPropertyNames:(id)names
{
  v33 = *MEMORY[0x277D85DE8];
  personCopy = person;
  namesCopy = names;
  v23 = personCopy;
  v10 = [PGGraphPersonNode propertiesWithPerson:personCopy];
  v11 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(namesCopy, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = namesCopy;
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
          graph = [v10 objectForKeyedSubscript:v17];
          [v11 setObject:graph forKeyedSubscript:v17];
        }

        else
        {
          graph = [(PGGraphBuilder *)self graph];
          [graph removeModelPropertyForKey:v17 forNodeWithIdentifier:identifier];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v14);
  }

  loggingConnection = [(PGGraphBuilder *)self loggingConnection];
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v29 = v11;
    v30 = 2112;
    v31 = v23;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGGraphBuilder+People] relevantProperties to update = %@ with ingestPerson = %@", buf, 0x16u);
  }

  graph2 = [(PGGraphBuilder *)self graph];
  [graph2 persistModelProperties:v11 forNodeWithIdentifier:identifier clobberExisting:0];

  v22 = *MEMORY[0x277D85DE8];
}

- (id)insertProximityEdgeFromPersonNode:(id)node toMomentNode:(id)momentNode
{
  nodeCopy = node;
  momentNodeCopy = momentNode;
  collection = [nodeCopy collection];
  collection2 = [momentNodeCopy collection];
  v10 = [(PGGraphEdgeCollection *)PGGraphPersonProximityEdgeCollection edgesFromNodes:collection toNodes:collection2];

  if ([v10 count])
  {
    anyEdge = [v10 anyEdge];
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x277D22C50]);
    anyEdge = [[PGGraphPersonProximityEdge alloc] initFromPersonNode:nodeCopy toMomentNode:momentNodeCopy];
    [v12 addEdge:anyEdge];
    [(MAGraph *)self->_graph executeGraphChangeRequest:v12];
  }

  return anyEdge;
}

- (id)insertPresentEdgeFromPersonNode:(id)node toMomentNode:(id)momentNode numberOfAssetsWithPerson:(unint64_t)person importance:(double)importance includeMergeCandidates:(BOOL)candidates
{
  nodeCopy = node;
  momentNodeCopy = momentNode;
  v14 = objc_alloc_init(MEMORY[0x277D22C50]);
  if (!candidates)
  {
    collection = [nodeCopy collection];
    collection2 = [momentNodeCopy collection];
    v17 = [(PGGraphEdgeCollection *)PGGraphPersonPresentEdgeCollection edgesFromNodes:collection toNodes:collection2];

    if (![v17 count])
    {
      v18 = PGGraphPersonPresentEdge;
      goto LABEL_7;
    }

LABEL_5:
    anyEdge = [v17 anyEdge];
    goto LABEL_8;
  }

  collection3 = [nodeCopy collection];
  collection4 = [momentNodeCopy collection];
  v17 = [(PGGraphEdgeCollection *)PGGraphConsolidatedPersonPresentEdgeCollection edgesFromNodes:collection3 toNodes:collection4];

  if ([v17 count])
  {
    goto LABEL_5;
  }

  v18 = PGGraphConsolidatedPersonPresentEdge;
LABEL_7:
  anyEdge = [[v18 alloc] initFromPersonNode:nodeCopy toMomentNode:momentNodeCopy importance:person numberOfAssets:importance];
  [v14 addEdge:anyEdge];
LABEL_8:

  [(MAGraph *)self->_graph executeGraphChangeRequest:v14];

  return anyEdge;
}

- (id)insertPeopleWithClueCollection:(id)collection fromMomentNode:(id)node addressNodes:(id)nodes isNearPeopleAddress:(BOOL *)address
{
  collectionCopy = collection;
  nodeCopy = node;
  nodesCopy = nodes;
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
  meNode = [(PGGraph *)self->_graph meNode];
  mePerson = [collectionCopy mePerson];
  v15 = v37[5];
  if (v15)
  {
    localIdentifier = [v15 localIdentifier];
    if ([localIdentifier length])
    {
LABEL_6:

      goto LABEL_7;
    }
  }

  if (mePerson)
  {
    v17 = [(PGGraphBuilder *)self insertMePersonNodeForPerson:mePerson];
    localIdentifier = v37[5];
    v37[5] = v17;
    goto LABEL_6;
  }

LABEL_7:
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = __Block_byref_object_copy__69454;
  v34[4] = __Block_byref_object_dispose__69455;
  localIdentifier2 = [v37[5] localIdentifier];
  if (mePerson && [nodesCopy count])
  {
    v18 = [(PGGraphBuilder *)self insertHomeWorkNodeForPerson:mePerson personNode:v37[5] fromAddressNodes:nodesCopy];
    *(v43 + 24) |= v18 != 0;
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __105__PGGraphBuilder_People__insertPeopleWithClueCollection_fromMomentNode_addressNodes_isNearPeopleAddress___block_invoke;
  v26[3] = &unk_278889F38;
  v26[4] = self;
  v19 = mePerson;
  v27 = v19;
  v31 = v34;
  v32 = &v36;
  v20 = nodeCopy;
  v28 = v20;
  v21 = nodesCopy;
  v29 = v21;
  v33 = &v42;
  v22 = v13;
  v30 = v22;
  [collectionCopy enumeratePeopleClues:v26];
  *address = *(v43 + 24);
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

- (id)updateMeNode:(id)node withPropertiesFromPerson:(id)person
{
  v18 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  v7 = [PGGraphPersonNode propertiesWithPerson:person];
  v8 = [nodeCopy changingPropertiesWithProperties:v7];
  v9 = nodeCopy;
  if ([v8 count])
  {
    loggingConnection = [(PGGraphBuilder *)self loggingConnection];
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      v14 = 138412547;
      v15 = nodeCopy;
      v16 = 2113;
      v17 = v8;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "Updating Me node %@ with properties %{private}@", &v14, 0x16u);
    }

    identifier = [nodeCopy identifier];
    [(MAGraph *)self->_graph persistModelProperties:v8 forNodeWithIdentifier:identifier clobberExisting:0];
    v9 = [(MAGraph *)self->_graph nodeForIdentifier:identifier];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)insertHomeWorkNodeForPerson:(id)person personNode:(id)node fromAddressNodes:(id)nodes
{
  v41 = *MEMORY[0x277D85DE8];
  personCopy = person;
  nodeCopy = node;
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
  obj = nodes;
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
        locationsByAddressTypes = [personCopy locationsByAddressTypes];
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __82__PGGraphBuilder_People__insertHomeWorkNodeForPerson_personNode_fromAddressNodes___block_invoke;
        v24[3] = &unk_278889F10;
        v28 = v16;
        v29 = v18;
        v27 = &v34;
        v24[4] = self;
        v25 = nodeCopy;
        v26 = v13;
        [locationsByAddressTypes enumerateKeysAndObjectsUsingBlock:v24];

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

- (void)addStorytellingRelationshipsToMeNode:(id)node relationshipByPerson:(id)person
{
  nodeCopy = node;
  v7 = MEMORY[0x277D22C50];
  personCopy = person;
  v9 = objc_alloc_init(v7);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __84__PGGraphBuilder_People__addStorytellingRelationshipsToMeNode_relationshipByPerson___block_invoke;
  v12[3] = &unk_278889EC8;
  v12[4] = self;
  v10 = nodeCopy;
  v13 = v10;
  v11 = v9;
  v14 = v11;
  [personCopy enumerateKeysAndObjectsUsingBlock:v12];

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

- (void)insertStorytellingRelationshipsWithRelationshipsForPersonNodes:(id)nodes meNode:(id)node
{
  nodeCopy = node;
  v7 = MEMORY[0x277D22C50];
  nodesCopy = nodes;
  v9 = objc_alloc_init(v7);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __96__PGGraphBuilder_People__insertStorytellingRelationshipsWithRelationshipsForPersonNodes_meNode___block_invoke;
  v15 = &unk_278889EA0;
  v10 = nodeCopy;
  v16 = v10;
  v11 = v9;
  v17 = v11;
  [nodesCopy enumerateNodesUsingBlock:&v12];

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

- (void)addRelationshipEdgesBetweenPersonNode:(id)node andPersonNode:(id)personNode forRelationship:(unint64_t)relationship confidence:(double)confidence properties:(id)properties
{
  v91 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  personNodeCopy = personNode;
  if (properties)
  {
    propertiesCopy = properties;
  }

  else
  {
    propertiesCopy = MEMORY[0x277CBEC10];
  }

  v15 = [propertiesCopy mutableCopy];
  v16 = 2;
  if (confidence > 0.0)
  {
    v16 = 1;
  }

  if (confidence == 1.0)
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
  v20 = [PGGraphBuilder expandedRelationshipLabelsForRelationship:relationship];
  v21 = [v19 setWithSet:v20];

  v85 = nodeCopy;
  collection = [nodeCopy collection];
  v84 = personNodeCopy;
  collection2 = [personNodeCopy collection];
  v24 = [(PGGraphEdgeCollection *)PGGraphRelationshipEdgeCollection edgesFromNodes:collection toNodes:collection2];
  labels = [v24 labels];

  [v21 minusSet:labels];
  if ([v21 count])
  {
    selfCopy = self;
    v26 = [v15 objectForKeyedSubscript:@"relstatus"];
    unsignedIntegerValue = [v26 unsignedIntegerValue];

    v27 = [v15 objectForKeyedSubscript:@"relsource"];
    unsignedIntegerValue2 = [v27 unsignedIntegerValue];

    v28 = [v15 objectForKeyedSubscript:@"rfamhol"];
    [v28 doubleValue];
    v30 = v29;

    v31 = [v15 objectForKeyedSubscript:@"rparnam"];
    bOOLValue = [v31 BOOLValue];

    v32 = [v15 objectForKeyedSubscript:@"rfamnam"];
    bOOLValue2 = [v32 BOOLValue];

    v33 = [v15 objectForKeyedSubscript:@"gwnummmtshome"];
    unsignedIntegerValue3 = [v33 unsignedIntegerValue];

    v34 = [v15 objectForKeyedSubscript:@"rhasanniv"];
    bOOLValue3 = [v34 BOOLValue];

    v35 = [v15 objectForKeyedSubscript:@"rtop2sg"];
    bOOLValue4 = [v35 BOOLValue];

    v36 = [v15 objectForKeyedSubscript:@"rlovexch"];
    unsignedIntegerValue4 = [v36 unsignedIntegerValue];

    v37 = [v15 objectForKeyedSubscript:@"rtop"];
    bOOLValue5 = [v37 BOOLValue];

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
    bOOLValue6 = [v56 BOOLValue];

    v58 = [v15 objectForKeyedSubscript:@"rold"];
    bOOLValue7 = [v58 BOOLValue];

    v73 = v15;
    v60 = [v15 objectForKeyedSubscript:@"rchild"];
    bOOLValue8 = [v60 BOOLValue];

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

          BYTE4(v71) = unsignedIntegerValue2;
          BYTE3(v71) = bOOLValue8;
          BYTE2(v71) = bOOLValue7;
          BYTE1(v71) = bOOLValue6;
          LOBYTE(v71) = bOOLValue5;
          BYTE1(v70) = bOOLValue4;
          LOBYTE(v70) = bOOLValue3;
          v68 = [PGGraphRelationshipEdge initWithRelationship:"initWithRelationship:fromPersonNode:toPersonNode:confidence:status:familyHolidayAttendanceRate:hasParentContactName:hasSameFamilyNameAsMePerson:numberOfMomentsAtHome:hasAnniversaryDate:isTopTwoPersonsSocialGroup:numberOfLoveEmojisExchanged:isTopPerson:friendNightOutAttendanceRate:partnerTripAttendanceRate:friendsAndFamilyTripAttendanceRate:weekendAppearanceRatio:momentsAtWorkAppearanceRate:calendarAttendanceRatio:isPersonAgeDifferentThanMeNode:isPersonOldEnoughToBeParentOrGrandparent:isPersonYoungEnoughToBeMeNodeChild:source:" fromPersonNode:*(*(&v86 + 1) + 8 * i) toPersonNode:v85 confidence:v84 status:unsignedIntegerValue familyHolidayAttendanceRate:bOOLValue hasParentContactName:bOOLValue2 hasSameFamilyNameAsMePerson:confidence numberOfMomentsAtHome:v30 hasAnniversaryDate:v40 isTopTwoPersonsSocialGroup:v43 numberOfLoveEmojisExchanged:v46 isTopPerson:v49 friendNightOutAttendanceRate:v52 partnerTripAttendanceRate:v55 friendsAndFamilyTripAttendanceRate:unsignedIntegerValue3 weekendAppearanceRatio:v70 momentsAtWorkAppearanceRate:unsignedIntegerValue4 calendarAttendanceRatio:v71 isPersonAgeDifferentThanMeNode:? isPersonOldEnoughToBeParentOrGrandparent:? isPersonYoungEnoughToBeMeNodeChild:? source:?];
          [v62 addEdge:v68];
        }

        v65 = [v63 countByEnumeratingWithState:&v86 objects:v90 count:16];
      }

      while (v65);
    }

    [(MAGraph *)selfCopy->_graph executeGraphChangeRequest:v62];
    v21 = v72;
    v15 = v73;
  }

  v69 = *MEMORY[0x277D85DE8];
}

- (id)insertPersonNodeForPerson:(id)person
{
  v61 = *MEMORY[0x277D85DE8];
  personCopy = person;
  isMe = [personCopy isMe];
  meNode = [(PGGraph *)self->_graph meNode];
  v7 = meNode;
  if (isMe && meNode)
  {
    v8 = [(PGGraphBuilder *)self updateMeNode:meNode withPropertiesFromPerson:personCopy];

    v7 = v8;
    personNode = v7;
    goto LABEL_37;
  }

  v10 = @"People";
  if (isMe)
  {
    v10 = @"Me";
  }

  v11 = v10;
  v12 = [PGGraphPersonNode propertiesWithPerson:personCopy];
  localIdentifier = [personCopy localIdentifier];
  v14 = [(PGGraphPeopleDomainBuildingHelper *)self->_peopleDomainBuildingHelper insertedIdentifiedPersonForPersonLocalIdentifier:localIdentifier];
  v15 = v14;
  if (v14)
  {
    personNode = [v14 personNode];
    birthdayDate = [v15 birthdayDate];
    anniversaryDate = [v15 anniversaryDate];
    relationship = [v15 relationship];
    v16 = [personNode changingPropertiesWithProperties:v12];
    v50 = v16;
    if (personNode && ![v16 count])
    {
      goto LABEL_13;
    }
  }

  else
  {
    personNode = 0;
    anniversaryDate = 0;
    birthdayDate = 0;
    relationship = 0;
    v50 = 0;
  }

  v17 = personNode;
  personNode = [(PGMutableGraph *)self->_graph addUniquelyIdentifiedNodeWithLabel:v11 domain:300 properties:v12 didCreate:0];

  if ([localIdentifier length])
  {
    v18 = [(PGGraphPeopleDomainBuildingHelper *)self->_peopleDomainBuildingHelper insertIdentifiedPersonWithPersonNode:personNode forPersonLocalIdentifier:localIdentifier];

    v15 = v18;
  }

LABEL_13:
  birthdayDate2 = [personCopy birthdayDate];
  v51 = localIdentifier;
  v52 = birthdayDate2;
  if (birthdayDate2)
  {
    if (birthdayDate)
    {
      if (([birthdayDate2 isEqualToDate:?] & 1) == 0)
      {
        loggingConnection = [(PGGraphBuilder *)self loggingConnection];
        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
        {
          localIdentifier2 = [personCopy localIdentifier];
          *buf = 138478339;
          v56 = localIdentifier2;
          v57 = 2113;
          v58 = v52;
          v59 = 2113;
          v60 = birthdayDate;
          _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Two different birthday dates for person %{private}@, %{private}@ and %{private}@", buf, 0x20u);
        }
      }
    }

    else
    {
      v45 = v11;
      v47 = v12;
      v21 = [MEMORY[0x277D27690] components:24 fromDate:birthdayDate2];
      month = [v21 month];
      v23 = [v21 day];
      v43 = month;
      v24 = [PGGraphMonthDayNodeCollection monthDayNodesForMonth:month day:v23 inGraph:self->_graph];
      anyNode = [v24 anyNode];

      if (!anyNode)
      {
        anyNode = [(PGGraphBuilder *)self insertMonthDayNodeForMonth:v43 day:v23];
      }

      v26 = [(PGMutableGraph *)self->_graph addUniqueEdgeWithLabel:@"BDAY_MONTH_DAY" sourceNode:personNode targetNode:anyNode domain:400 properties:0];
      [v15 setBirthdayDate:v52];

      v11 = v45;
      v12 = v47;
    }
  }

  anniversaryDate2 = [personCopy anniversaryDate];
  v28 = anniversaryDate2;
  if (!anniversaryDate2)
  {
    goto LABEL_32;
  }

  if (!anniversaryDate)
  {
    v46 = v11;
    v48 = v12;
    loggingConnection2 = [MEMORY[0x277D27690] components:24 fromDate:anniversaryDate2];
    month2 = [loggingConnection2 month];
    v32 = [loggingConnection2 day];
    graph = self->_graph;
    v42 = v32;
    v44 = month2;
    v34 = [PGGraphMonthDayNodeCollection monthDayNodesForMonth:"monthDayNodesForMonth:day:inGraph:" day:month2 inGraph:?];
    anyNode2 = [v34 anyNode];

    if (!anyNode2)
    {
      anyNode2 = [(PGGraphBuilder *)self insertMonthDayNodeForMonth:v44 day:v42];
    }

    v36 = [(PGMutableGraph *)self->_graph addUniqueEdgeWithLabel:@"ANNIVERSARY_MONTH_DAY" sourceNode:personNode targetNode:anyNode2 domain:400 properties:0];
    [v15 setAnniversaryDate:v28];

    v11 = v46;
    goto LABEL_30;
  }

  if ([anniversaryDate2 isEqualToDate:?])
  {
    goto LABEL_32;
  }

  loggingConnection2 = [(PGGraphBuilder *)self loggingConnection];
  if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
  {
    [personCopy localIdentifier];
    v30 = v48 = v12;
    *buf = 138478339;
    v56 = v30;
    v57 = 2113;
    v58 = v28;
    v59 = 2113;
    v60 = anniversaryDate;
    _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "Two different anniversary dates for person %{private}@, %{private}@ and %{private}@", buf, 0x20u);

LABEL_30:
    v12 = v48;
  }

LABEL_32:
  if ((isMe & 1) == 0)
  {
    if (v7)
    {
      relationship2 = [personCopy relationship];
      if (relationship2 != relationship)
      {
        v38 = relationship2;
        [(PGGraphBuilder *)self addRelationshipEdgesBetweenPersonNode:v7 andPersonNode:personNode forRelationship:relationship2 confidence:0 properties:1.0];
        [v15 setRelationship:v38];
      }
    }
  }

LABEL_37:
  v39 = *MEMORY[0x277D85DE8];

  return personNode;
}

+ (id)reducedRelationshipLabelForRelationshipLabels:(id)labels
{
  v11[7] = *MEMORY[0x277D85DE8];
  labelsCopy = labels;
  if ([labelsCopy count] > 1)
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

    [v7 intersectSet:labelsCopy];
    if ([v7 count])
    {
      anyObject = [v7 anyObject];
    }

    else
    {
      if ([labelsCopy containsObject:@"PARENT"])
      {
        anyObject = @"PARENT";
      }

      else if ([labelsCopy containsObject:@"CHILD"])
      {
        anyObject = @"CHILD";
      }

      else
      {
        anyObject = @"FAMILY";
      }

      v8 = anyObject;
    }
  }

  else
  {
    anyObject = [labelsCopy anyObject];
  }

  v9 = *MEMORY[0x277D85DE8];

  return anyObject;
}

+ (id)expandedRelationshipLabelsForRelationship:(unint64_t)relationship
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v5 = v4;
  v6 = kPGGraphEdgePeopleFamily;
  switch(relationship)
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

- (id)insertPartOfDayNodeWithPartOfDayName:(id)name fromMomentNode:(id)node ratio:(double)ratio
{
  nodeCopy = node;
  v9 = [PGGraphPartOfDayNode partOfDayForPartOfDayName:name];
  if (v9 == 1)
  {
    anyNode = 0;
  }

  else
  {
    v11 = v9;
    v12 = objc_alloc_init(MEMORY[0x277D22C50]);
    v13 = [PGGraphPartOfDayNodeCollection partOfDayNodeForPartOfDay:v11 inGraph:self->_graph];
    if ([v13 count])
    {
      anyNode = [v13 anyNode];
      collection = [nodeCopy collection];
      v15 = [(PGGraphEdgeCollection *)PGGraphPartOfDayEdgeCollection edgesFromNodes:collection toNodes:v13];
    }

    else
    {
      anyNode = [[PGGraphPartOfDayNode alloc] initWithPartOfDay:v11];
      [v12 addNode:anyNode];
      v15 = 0;
    }

    if (![v15 count])
    {
      v16 = [[PGGraphPartOfDayEdge alloc] initFromMomentNode:nodeCopy toPartOfDayNode:anyNode ratio:ratio];
      [v12 addEdge:v16];
    }

    [(MAGraph *)self->_graph executeGraphChangeRequest:v12];
  }

  return anyNode;
}

- (id)insertPartOfDayNodesWithClueCollection:(id)collection fromMomentNode:(id)node
{
  nodeCopy = node;
  v7 = MEMORY[0x277CBEB18];
  collectionCopy = collection;
  array = [v7 array];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78__PGGraphBuilder_Time__insertPartOfDayNodesWithClueCollection_fromMomentNode___block_invoke;
  v15[3] = &unk_27888A390;
  v15[4] = self;
  v16 = nodeCopy;
  v10 = array;
  v17 = v10;
  v11 = nodeCopy;
  [collectionCopy enumerateTimeOfDayClues:v15];

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

- (id)insertDateNodesFromEventNode:(id)node
{
  nodeCopy = node;
  localStartDate = [nodeCopy localStartDate];
  localEndDate = [nodeCopy localEndDate];
  v7 = [(PGGraphBuilder *)self insertDateNodesFromLocalStartDate:localStartDate toLocalEndDate:localEndDate fromEventNode:nodeCopy];

  return v7;
}

- (id)insertDateNodesFromLocalStartDate:(id)date toLocalEndDate:(id)endDate fromEventNode:(id)node
{
  nodeCopy = node;
  v9 = MEMORY[0x277CBEB18];
  endDateCopy = endDate;
  dateCopy = date;
  array = [v9 array];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __87__PGGraphBuilder_Time__insertDateNodesFromLocalStartDate_toLocalEndDate_fromEventNode___block_invoke;
  v18[3] = &unk_27888A368;
  v18[4] = self;
  v19 = nodeCopy;
  v13 = array;
  v20 = v13;
  v14 = nodeCopy;
  [(PGGraphBuilder *)self enumerateDateComponentsBetweenLocalStartDate:dateCopy andLocalEndDate:endDateCopy usingBlock:v18];

  v15 = v20;
  v16 = v13;

  return v13;
}

void __87__PGGraphBuilder_Time__insertDateNodesFromLocalStartDate_toLocalEndDate_fromEventNode___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) insertTimeNodesWithDateComponents:a2 fromEventNode:*(a1 + 40)];
  [*(a1 + 48) addObject:v3];
}

- (id)insertDateNodesWithClueCollection:(id)collection fromMomentNode:(id)node
{
  nodeCopy = node;
  collectionCopy = collection;
  localStartDate = [collectionCopy localStartDate];
  localEndDate = [collectionCopy localEndDate];

  v10 = [(PGGraphBuilder *)self insertDateNodesFromLocalStartDate:localStartDate toLocalEndDate:localEndDate fromEventNode:nodeCopy];

  return v10;
}

- (id)insertMonthDayNodeForMonth:(int64_t)month day:(int64_t)day
{
  v5 = [[PGGraphCalendarUnitNode alloc] initWithCalendarUnit:3 value:[PGGraphCalendarUnitNode encodedMonthDayForMonth:month day:day]];
  [(MAGraph *)self->_graph addUniqueNode:v5 didInsert:0];

  return v5;
}

- (void)enumerateDateComponentsBetweenLocalStartDate:(id)date andLocalEndDate:(id)endDate usingBlock:(id)block
{
  dateCopy = date;
  endDateCopy = endDate;
  blockCopy = block;
  v10 = [MEMORY[0x277D27690] componentsFromDate:dateCopy inTimeZone:0];
  v11 = [MEMORY[0x277D27690] componentsFromDate:endDateCopy inTimeZone:0];
  [v10 setTimeZone:0];
  [v11 setTimeZone:0];
  v18 = 0;
  blockCopy[2](blockCopy, v10, &v18);
  v12 = dateCopy;
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

      blockCopy[2](blockCopy, v10, &v18);
      v17 = v18 ? 1 : v16;
    }

    while (v17 != 1);
  }
}

- (id)insertTimeNodesWithDateComponents:(id)components fromEventNode:(id)node
{
  nodeCopy = node;
  componentsCopy = components;
  v8 = [(PGGraphBuilder *)self insertDateNodeHierarchyWithDateComponents:componentsCopy];
  v9 = [(PGMutableGraph *)self->_graph addUniqueEdgeWithLabel:@"DATE" sourceNode:nodeCopy targetNode:v8 domain:400 properties:0];
  v10 = MEMORY[0x277D27690];
  timeZone = [componentsCopy timeZone];
  v12 = [v10 dateFromComponents:componentsCopy inTimeZone:timeZone];

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
  v17 = [(PGMutableGraph *)self->_graph addUniqueEdgeWithLabel:@"PARTOFWEEK" sourceNode:nodeCopy targetNode:v16 domain:400 properties:0];

  return v8;
}

- (id)insertDateNodeHierarchyWithDateComponents:(id)components
{
  componentsCopy = components;
  v5 = MEMORY[0x277D27690];
  timeZone = [componentsCopy timeZone];
  v7 = [v5 dateFromComponents:componentsCopy inTimeZone:timeZone];

  v8 = [(PGGraph *)self->_graph dateNodeNameWithLocalDate:v7];
  v35 = 0;
  v9 = [[PGGraphDateNode alloc] initWithName:v8];
  [(MAGraph *)self->_graph addUniqueNode:v9 didInsert:&v35];
  if (v35 == 1)
  {
    v10 = objc_alloc_init(MEMORY[0x277D22C50]);
    v11 = [componentsCopy day];
    month = [componentsCopy month];
    year = [componentsCopy year];
    v14 = [PGGraphCalendarUnitNode encodedMonthDayForMonth:month day:v11];
    v34 = [(PGGraphTimeDomainBuildingHelper *)self->_timeDomainBuildingHelper calendarUnitNodeForCalendarUnit:1 value:v11];
    v33 = [(PGGraphTimeDomainBuildingHelper *)self->_timeDomainBuildingHelper calendarUnitNodeForCalendarUnit:2 value:month];
    v32 = [(PGGraphTimeDomainBuildingHelper *)self->_timeDomainBuildingHelper calendarUnitNodeForCalendarUnit:3 value:v14];
    v15 = 0x27887A000;
    if (year != 0x7FFFFFFFFFFFFFFFLL)
    {
      v31 = [(PGGraphTimeDomainBuildingHelper *)self->_timeDomainBuildingHelper calendarUnitNodeForCalendarUnit:4 value:year];
      v16 = -[PGGraphTimeDomainBuildingHelper calendarUnitNodeForCalendarUnit:value:](self->_timeDomainBuildingHelper, "calendarUnitNodeForCalendarUnit:value:", 6, [componentsCopy weekOfYear]);
      v17 = -[PGGraphTimeDomainBuildingHelper calendarUnitNodeForCalendarUnit:value:](self->_timeDomainBuildingHelper, "calendarUnitNodeForCalendarUnit:value:", 5, [componentsCopy weekOfMonth]);
      v18 = [[PGGraphCalendarUnitEdge alloc] initWithCalendarUnit:4 fromDateNode:v9 toCalendarUnitNode:v31];
      [v10 addEdge:v18];

      v19 = [[PGGraphCalendarUnitEdge alloc] initWithCalendarUnit:6 fromDateNode:v9 toCalendarUnitNode:v16];
      [v10 addEdge:v19];

      v20 = [[PGGraphCalendarUnitEdge alloc] initWithCalendarUnit:5 fromDateNode:v9 toCalendarUnitNode:v17];
      [v10 addEdge:v20];

      [(PGGraphTimeDomainBuildingHelper *)self->_timeDomainBuildingHelper calendarUnitNodeForCalendarUnit:4 value:year + 1];
      v15 = 0x27887A000uLL;
    }

    v21 = [objc_alloc(*(v15 + 3208)) initWithCalendarUnit:1 fromDateNode:v9 toCalendarUnitNode:v34];
    [v10 addEdge:v21];

    v22 = [objc_alloc(*(v15 + 3208)) initWithCalendarUnit:2 fromDateNode:v9 toCalendarUnitNode:v33];
    [v10 addEdge:v22];

    v23 = [objc_alloc(*(v15 + 3208)) initWithCalendarUnit:3 fromDateNode:v9 toCalendarUnitNode:v32];
    [v10 addEdge:v23];

    v24 = [MEMORY[0x277D27690] seasonNameForDateComponents:componentsCopy locale:0];
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

- (void)insertShareParticipantsAsAuthors:(id)authors forMomentNode:(id)node
{
  v28 = *MEMORY[0x277D85DE8];
  authorsCopy = authors;
  nodeCopy = node;
  if ([authorsCopy count])
  {
    loggingConnection2 = objc_alloc_init(MEMORY[0x277D22C50]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v20 = authorsCopy;
    v9 = authorsCopy;
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
            loggingConnection = [[PGGraphAuthorEdge alloc] initFromPersonNode:v15 toMomentNode:nodeCopy];
            [loggingConnection2 addEdge:loggingConnection];
          }

          else
          {
            loggingConnection = [(PGGraphBuilder *)self loggingConnection];
            if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
            {
              localIdentifier = [v14 localIdentifier];
              *buf = 138412290;
              v27 = localIdentifier;
              _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "No person node for share participant identifier: %@", buf, 0xCu);
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    [(MAGraph *)self->_graph executeGraphChangeRequest:loggingConnection2];
    authorsCopy = v20;
  }

  else
  {
    loggingConnection2 = [(PGGraphBuilder *)self loggingConnection];
    if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
    {
      localIdentifier2 = [nodeCopy localIdentifier];
      *buf = 138412290;
      v27 = localIdentifier2;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "No share participants for moment with identifier: %@", buf, 0xCu);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)insertMeAsAuthor:(id)author forMomentNode:(id)node
{
  v6 = MEMORY[0x277D22C50];
  nodeCopy = node;
  authorCopy = author;
  v10 = objc_alloc_init(v6);
  v9 = [[PGGraphAuthorEdge alloc] initFromPersonNode:authorCopy toMomentNode:nodeCopy];

  [v10 addEdge:v9];
  [(MAGraph *)self->_graph executeGraphChangeRequest:v10];
}

@end