@interface PGGraphMomentNode
+ (MANodeFilter)filterEncodedCLIPFeatureVectorNotEmpty;
+ (MARelation)addressOfMoment;
+ (MARelation)anniversaryPersonInMoment;
+ (MARelation)authorOfMoment;
+ (MARelation)birthdayPersonInMoment;
+ (MARelation)businessOfMoment;
+ (MARelation)celebratedHolidayOfMoment;
+ (MARelation)cityOfMoment;
+ (MARelation)consolidatedPersonInMoment;
+ (MARelation)consolidatedPersonPresentInAssets;
+ (MARelation)dateOfMoment;
+ (MARelation)featureOfMoment;
+ (MARelation)frequentLocationOfMoment;
+ (MARelation)highlightOfMoment;
+ (MARelation)meaningHierarchyOfMoment;
+ (MARelation)meaningOfMoment;
+ (MARelation)memoryOfMoment;
+ (MARelation)mobilityOfMoment;
+ (MARelation)momentWithOnlyPrivateAssetsOfMoment;
+ (MARelation)momentWithOnlySharedAssetsOfMoment;
+ (MARelation)momentWithPrivateAndSharedAssetsOfMoment;
+ (MARelation)momentWithPrivateAssetsOfMoment;
+ (MARelation)momentWithSharedAssetsOfMoment;
+ (MARelation)nextMomentOfMoment;
+ (MARelation)partOfDayOfMoment;
+ (MARelation)personActivityMeaningOfMoment;
+ (MARelation)personExcludingMeInMoment;
+ (MARelation)personInMoment;
+ (MARelation)personInProximityInMoment;
+ (MARelation)personPhysicallyPresentInMoment;
+ (MARelation)petPresentInMoment;
+ (MARelation)poiOfMoment;
+ (MARelation)poiWithNonzeroConfidenceOfMoment;
+ (MARelation)preciseAddressOfMoment;
+ (MARelation)previousMomentOfMoment;
+ (MARelation)publicEventOfMoment;
+ (MARelation)reliableSceneOfMoment;
+ (MARelation)remoteAddressOfMoment;
+ (MARelation)roiOfMoment;
+ (MARelation)roiWithNonzeroConfidenceOfMoment;
+ (MARelation)sceneOfMoment;
+ (MARelation)significantPartOfDayOfMoment;
+ (MARelation)socialGroupInMoment;
+ (MARelation)weekdayOfMoment;
+ (MARelation)weekendOfMoment;
+ (id)alternativeMeaningOfMoment;
+ (id)contentBasedPropertiesWithMoment:(id)a3;
+ (id)contentScoreSortDescriptors;
+ (id)filter;
+ (id)filterEnoughFacesProcessed;
+ (id)filterEnoughScenesProcessed;
+ (id)filterHappeningAtSensitiveLocation;
+ (id)filterWithLocalDateInterval:(id)a3;
+ (id)filterWithTotalNumberOfPersonsGreaterThanOrEqualTo:(unint64_t)a3;
+ (id)filterWithUUID:(id)a3;
+ (id)filterWithUUIDs:(id)a3;
+ (id)filterWithUniversalDateInterval:(id)a3;
+ (id)firstAndLastMomentNodesInMomentNodes:(id)a3;
+ (id)improvedPOIOfMoment;
+ (id)inclusivePathFromTargetNodeDomain:(unsigned __int16)a3 withName:(id)a4;
+ (id)inclusivePathToTargetNodeDomain:(unsigned __int16)a3 withName:(id)a4;
+ (id)interestingFilter;
+ (id)interestingWithAlternateJunkingFilter;
+ (id)pathFromTargetNodeDomain:(unsigned __int16)a3;
+ (id)pathToTargetNodeDomain:(unsigned __int16)a3;
+ (id)propertiesWithMoment:(id)a3;
+ (id)reliableMeaningOfMoment;
+ (id)smartInterestingFilter;
+ (id)specialPOIOfMoment;
+ (id)timeBasedPropertiesWithMoment:(id)a3;
+ (int64_t)breakoutOfRoutineTypeWithNeighborScore:(double)a3;
+ (void)setLocalEndDate:(id)a3 onMomentNodeForIdentifier:(unint64_t)a4 inGraph:(id)a5;
+ (void)setLocalStartDate:(id)a3 onMomentNodeForIdentifier:(unint64_t)a4 inGraph:(id)a5;
+ (void)setNumberOfAssets:(unint64_t)a3 onMomentNodeForIdentifier:(unint64_t)a4 inGraph:(id)a5;
+ (void)setUniversalEndDate:(id)a3 onMomentNodeForIdentifier:(unint64_t)a4 inGraph:(id)a5;
+ (void)setUniversalStartDate:(id)a3 onMomentNodeForIdentifier:(unint64_t)a4 inGraph:(id)a5;
- (BOOL)happensPartiallyAtHomeOfPersonNodes:(id)a3;
- (BOOL)happensPartiallyAtHomeOrWorkOfPersonNodes:(id)a3;
- (BOOL)happensPartiallyAtWorkOfPersonNodes:(id)a3;
- (BOOL)hasPeopleCountingMe:(BOOL)a3;
- (BOOL)hasPersonNodes;
- (BOOL)hasProperties:(id)a3;
- (BOOL)isInterestingForMemories;
- (BOOL)isPartOfTrip;
- (BOOL)isWeekend;
- (BOOL)petIsPresent;
- (CLLocationCoordinate2D)bestLocationCoordinate;
- (MAFloatVector)clipFeatureVector;
- (NSDictionary)jsonDescription;
- (NSSet)frequentLocationNodes;
- (NSString)featureIdentifier;
- (PGGraphHighlightGroupNode)highlightGroupNode;
- (PGGraphHighlightNode)highlightNode;
- (PGGraphMomentNode)initWithLabel:(id)a3 domain:(unsigned __int16)a4 properties:(id)a5;
- (PGGraphMomentNode)nextMomentNode;
- (PGGraphMomentNode)previousMomentNode;
- (PGGraphMomentNodeCollection)collection;
- (double)graphScore;
- (double)meaningScore;
- (id)addressNodes;
- (id)alternativeMeaningLabels;
- (id)alternativeMeaningLabelsIncludingParents;
- (id)alternativeMeaningNodes;
- (id)anniversaryPersonNodes;
- (id)associatedNodesForRemoval;
- (id)bestAddressNode;
- (id)birthdayPersonNodes;
- (id)businessNodes;
- (id)celebratedHolidayNodes;
- (id)changingPropertiesWithProperties:(id)a3;
- (id)cityNodes;
- (id)connectedEventsWithTargetDomain:(unsigned __int16)a3;
- (id)consolidatedPersonNodes;
- (id)consolidatedPersonNodesPresentInAssets;
- (id)continentNodes;
- (id)countryNodes;
- (id)dateNodes;
- (id)debugDictionaryWithServiceManager:(id)a3;
- (id)earlierMomentNode:(id)a3;
- (id)eventEnrichmentSortedMomentNodes;
- (id)eventSortedMomentNodes;
- (id)fetchAssetCollectionInPhotoLibrary:(id)a3;
- (id)holidayNodes;
- (id)initFromMoment:(id)a3;
- (id)keywordsForRelatedType:(unint64_t)a3 focusOnNodes:(id)a4;
- (id)lastWeekendMoments;
- (id)laterMomentNode:(id)a3;
- (id)meaningLabels;
- (id)meaningLabelsIncludingParents;
- (id)meaningNodes;
- (id)naturalLanguageFeatures;
- (id)personNodes;
- (id)personNodesInProximity;
- (id)petNodes;
- (id)poiNodes;
- (id)preciseAddressEdges;
- (id)propertyDictionary;
- (id)propertyForKey:(id)a3;
- (id)publicEventNodes;
- (id)reliableMeaningLabels;
- (id)roiNodes;
- (id)sameMonthMoments;
- (id)sameWeekendMoments;
- (id)seasonNodes;
- (id)socialGroupNodes;
- (id)weekendNode;
- (int64_t)_compareToMomentNode:(id)a3 withSortDescriptors:(id)a4;
- (unint64_t)_partsOfDayWithThreshold:(double)a3;
- (unint64_t)locationMobilityType;
- (void)_enumeratePartsOfDayWithThreshold:(double)a3 usingBlock:(id)a4;
- (void)enumerateConsolidatedAddressesUsingBlock:(id)a3;
- (void)enumerateMeaningfulEventsUsingBlock:(id)a3;
- (void)enumeratePersonNodesUsingBlock:(id)a3;
- (void)enumeratePreciseAddressEdgesAndNodesUsingBlock:(id)a3;
- (void)enumeratePreciseAddressNodesUsingBlock:(id)a3;
- (void)enumerateReliableMeaningNodesUsingBlock:(id)a3;
- (void)setLocalProperties:(id)a3;
@end

@implementation PGGraphMomentNode

- (NSString)featureIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PGGraphMomentNode *)self localIdentifier];
  v7 = [v3 stringWithFormat:@"%@|%@", v5, v6];

  return v7;
}

- (BOOL)petIsPresent
{
  v2 = [(PGGraphMomentNode *)self collection];
  v3 = [v2 petNodes];
  v4 = [v3 count] != 0;

  return v4;
}

- (id)associatedNodesForRemoval
{
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [(PGGraphMomentNode *)self collection];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__PGGraphMomentNode_associatedNodesForRemoval__block_invoke;
  aBlock[3] = &unk_278887880;
  v5 = v3;
  v42 = v5;
  v6 = _Block_copy(aBlock);
  v7 = [v4 addressNodes];
  v6[2](v6, v7);

  v8 = [v4 remoteAddressNodes];
  v6[2](v6, v8);

  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __46__PGGraphMomentNode_associatedNodesForRemoval__block_invoke_3;
  v39[3] = &unk_2788875A8;
  v9 = v5;
  v40 = v9;
  [(PGGraphMomentNode *)self enumerateDateNodesUsingBlock:v39];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __46__PGGraphMomentNode_associatedNodesForRemoval__block_invoke_4;
  v37[3] = &unk_278887620;
  v10 = v9;
  v38 = v10;
  [(PGGraphMomentNode *)self enumerateBusinessNodesUsingBlock:v37];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __46__PGGraphMomentNode_associatedNodesForRemoval__block_invoke_5;
  v35[3] = &unk_278887648;
  v11 = v10;
  v36 = v11;
  [(PGGraphMomentNode *)self enumeratePublicEventNodesUsingBlock:v35];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __46__PGGraphMomentNode_associatedNodesForRemoval__block_invoke_6;
  v33[3] = &unk_2788875D0;
  v12 = v11;
  v34 = v12;
  [(PGGraphMomentNode *)self enumeratePOINodesUsingBlock:v33];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __46__PGGraphMomentNode_associatedNodesForRemoval__block_invoke_7;
  v31[3] = &unk_2788875F8;
  v13 = v12;
  v32 = v13;
  [(PGGraphMomentNode *)self enumerateROINodesUsingBlock:v31];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __46__PGGraphMomentNode_associatedNodesForRemoval__block_invoke_8;
  v29[3] = &unk_2788878A8;
  v14 = v13;
  v30 = v14;
  [(PGGraphMomentNode *)self enumerateSceneNodesUsingBlock:v29];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __46__PGGraphMomentNode_associatedNodesForRemoval__block_invoke_9;
  v27[3] = &unk_2788878D0;
  v15 = v14;
  v28 = v15;
  [(PGGraphMomentNode *)self enumerateFrequentLocationNodesUsingBlock:v27];
  v16 = [(PGGraphMomentNode *)self collection];
  v17 = [v16 personNodes];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __46__PGGraphMomentNode_associatedNodesForRemoval__block_invoke_10;
  v25[3] = &unk_278889240;
  v18 = v15;
  v26 = v18;
  [v17 enumerateNodesUsingBlock:v25];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __46__PGGraphMomentNode_associatedNodesForRemoval__block_invoke_11;
  v23[3] = &unk_278887920;
  v23[4] = self;
  v19 = v18;
  v24 = v19;
  v20 = _Block_copy(v23);
  v20[2](v20, @"MOBILITY", 203);
  v20[2](v20, @"PARTOFDAY", 400);
  v20[2](v20, @"PARTOFWEEK", 400);
  v21 = v19;

  return v19;
}

void __46__PGGraphMomentNode_associatedNodesForRemoval__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __46__PGGraphMomentNode_associatedNodesForRemoval__block_invoke_2;
  v3[3] = &unk_278887858;
  v4 = *(a1 + 32);
  [a2 enumerateIdentifiersAsCollectionsWithBlock:v3];
}

void __46__PGGraphMomentNode_associatedNodesForRemoval__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 countOfEdgesWithLabel:@"DATE" domain:400] == 1)
  {
    [*(a1 + 32) addObject:v3];
  }
}

void __46__PGGraphMomentNode_associatedNodesForRemoval__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 countOfEdgesWithLabel:@"BUSINESS" domain:503] == 1)
  {
    [*(a1 + 32) addObject:v3];
  }
}

void __46__PGGraphMomentNode_associatedNodesForRemoval__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 countOfEdgesWithLabel:@"PUBLIC_EVENT" domain:900] == 1)
  {
    [*(a1 + 32) addObject:v3];
  }
}

void __46__PGGraphMomentNode_associatedNodesForRemoval__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 countOfEdgesWithLabel:@"POI" domain:501] == 1)
  {
    [*(a1 + 32) addObject:v3];
  }
}

void __46__PGGraphMomentNode_associatedNodesForRemoval__block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 countOfEdgesWithLabel:@"ROI" domain:502] == 1)
  {
    [*(a1 + 32) addObject:v3];
  }
}

void __46__PGGraphMomentNode_associatedNodesForRemoval__block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 countOfEdgesWithLabel:@"SCENE" domain:600] == 1)
  {
    [*(a1 + 32) addObject:v3];
  }
}

void __46__PGGraphMomentNode_associatedNodesForRemoval__block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 countOfEdgesWithLabel:@"IN" domain:204] == 1)
  {
    [*(a1 + 32) addObject:v3];
  }
}

void __46__PGGraphMomentNode_associatedNodesForRemoval__block_invoke_10(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 collection];
  v4 = [v3 momentNodes];
  v5 = [v4 count];

  if (v5 == 1)
  {
    [*(a1 + 32) addObject:v6];
  }
}

void __46__PGGraphMomentNode_associatedNodesForRemoval__block_invoke_11(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__PGGraphMomentNode_associatedNodesForRemoval__block_invoke_12;
  v8[3] = &unk_2788878F8;
  v9 = v5;
  v11 = a3;
  v6 = *(a1 + 32);
  v10 = *(a1 + 40);
  v7 = v5;
  [v6 enumerateNeighborNodesThroughEdgesWithLabel:v7 domain:a3 usingBlock:v8];
}

void __46__PGGraphMomentNode_associatedNodesForRemoval__block_invoke_12(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 countOfEdgesWithLabel:*(a1 + 32) domain:*(a1 + 48)] == 1)
  {
    [*(a1 + 40) addObject:v3];
  }
}

void __46__PGGraphMomentNode_associatedNodesForRemoval__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v4 = [v7 momentNodes];
  if ([v4 count] == 1)
  {
    v5 = *(a1 + 32);
    v6 = [v7 anyNode];
    [v5 addObject:v6];
  }
}

- (id)sameMonthMoments
{
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = MEMORY[0x277D27690];
  v5 = [(PGGraphMomentNode *)self localStartDate];
  v6 = [v4 components:12 fromDate:v5];

  v7 = [(MANode *)self graph];
  v8 = +[PGGraphYearNodeCollection yearNodesForYear:inGraph:](PGGraphYearNodeCollection, "yearNodesForYear:inGraph:", [v6 year], v7);
  v9 = +[PGGraphMonthNodeCollection monthNodesForMonth:inGraph:](PGGraphMonthNodeCollection, "monthNodesForMonth:inGraph:", [v6 month], v7);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __37__PGGraphMomentNode_sameMonthMoments__block_invoke;
  v16[3] = &unk_278887830;
  v16[4] = self;
  v17 = v9;
  v18 = v8;
  v10 = v3;
  v19 = v10;
  v11 = v8;
  v12 = v9;
  v13 = _Block_copy(v16);
  v13[2](v13, 0);
  v13[2](v13, 1);
  v14 = v10;

  return v10;
}

void __37__PGGraphMomentNode_sameMonthMoments__block_invoke(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) collection];
  while (1)
  {
    v5 = objc_autoreleasePoolPush();
    if (a2)
    {
      [v4 nextMomentNodes];
    }

    else
    {
      [v4 previousMomentNodes];
    }
    v6 = ;

    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v7 = [v6 dateNodes];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __37__PGGraphMomentNode_sameMonthMoments__block_invoke_2;
    v10[3] = &unk_278887808;
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = &v14;
    [v7 enumerateIdentifiersAsCollectionsWithBlock:v10];

    if (!*(v15 + 24))
    {
      break;
    }

    v8 = *(a1 + 56);
    v9 = [v6 anyNode];
    [v8 addObject:v9];

    _Block_object_dispose(&v14, 8);
    objc_autoreleasePoolPop(v5);
    v4 = v6;
    if (![v6 count])
    {
      goto LABEL_9;
    }
  }

  _Block_object_dispose(&v14, 8);
  objc_autoreleasePoolPop(v5);
LABEL_9:
}

void __37__PGGraphMomentNode_sameMonthMoments__block_invoke_2(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  v6 = [v8 monthNodes];
  if ([v6 isEqual:a1[4]])
  {
    v7 = [v8 yearNodes];
    if ([v7 isEqual:a1[5]])
    {
      *(*(a1[6] + 8) + 24) = 1;
      *a4 = 1;
    }
  }
}

- (id)sameWeekendMoments
{
  v64 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  if ([(PGGraphMomentNode *)self isWeekend])
  {
    v46 = v3;
    v4 = [(MANode *)self graph];
    v5 = [v4 localDatesForMomentNode:self];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v57 objects:v63 count:16];
    if (!v6)
    {
      goto LABEL_51;
    }

    v7 = v6;
    v45 = self;
    v8 = 0;
    v9 = *v58;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v58 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v57 + 1) + 8 * i);
        v55 = 0;
        v56 = 0.0;
        [MEMORY[0x277D276A8] closestWeekendLocalStartDate:&v55 interval:&v56 afterDate:{v12, v45}];
        v13 = v55;
        v14 = v13;
        if (!v8 || v56 < v10)
        {
          v15 = v13;

          v10 = v56;
          v8 = v15;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v57 objects:v63 count:16];
    }

    while (v7);
    v16 = v45;
    if (v8)
    {
      v17 = [v8 dateByAddingTimeInterval:v10];
      v18 = [MEMORY[0x277D27690] dateByAddingDays:-1 toDate:v8];

      v19 = [MEMORY[0x277D27690] dateByAddingDays:1 toDate:v17];

      v20 = [(PGGraphMomentNode *)v45 previousMomentNode];
      if (v20)
      {
        v21 = v20;
        do
        {
          v22 = [v4 localDatesForMomentNode:v21];
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          v23 = v22;
          v24 = [v23 countByEnumeratingWithState:&v51 objects:v62 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v52;
            v27 = 1;
            do
            {
              for (j = 0; j != v25; ++j)
              {
                if (*v52 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                if ([*(*(&v51 + 1) + 8 * j) compare:v18] == -1)
                {
                  v27 = 0;
                }

                else if ([v21 isWeekend])
                {
                  [v46 addObject:v21];
                  goto LABEL_28;
                }
              }

              v25 = [v23 countByEnumeratingWithState:&v51 objects:v62 count:16];
            }

            while (v25);
          }

          else
          {
            v27 = 1;
          }

LABEL_28:

          v29 = [v21 previousMomentNode];

          if ((v27 & 1) == 0)
          {
            break;
          }

          v21 = v29;
        }

        while (v29);

        v16 = v45;
      }

      v30 = [(PGGraphMomentNode *)v16 nextMomentNode];
      if (v30)
      {
        v31 = v30;
        do
        {
          v32 = [v4 localDatesForMomentNode:v31];
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v33 = v32;
          v34 = [v33 countByEnumeratingWithState:&v47 objects:v61 count:16];
          if (v34)
          {
            v35 = v34;
            v36 = 0;
            v37 = *v48;
            while (2)
            {
              for (k = 0; k != v35; ++k)
              {
                if (*v48 != v37)
                {
                  objc_enumerationMutation(v33);
                }

                if ([*(*(&v47 + 1) + 8 * k) compare:v19] != 1)
                {
                  if ([v31 isWeekend])
                  {
                    [v46 addObject:v31];
                    v36 = 1;
                    goto LABEL_46;
                  }

                  v36 = 1;
                }
              }

              v35 = [v33 countByEnumeratingWithState:&v47 objects:v61 count:16];
              if (v35)
              {
                continue;
              }

              break;
            }
          }

          else
          {
            v36 = 0;
          }

LABEL_46:

          v39 = [v31 nextMomentNode];

          if ((v36 & 1) == 0)
          {
            break;
          }

          v31 = v39;
        }

        while (v39);
      }

      v3 = v46;
      v40 = v46;
    }

    else
    {
LABEL_51:
      v42 = v3;
    }
  }

  else
  {
    v41 = v3;
  }

  v43 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)lastWeekendMoments
{
  v32[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [(MANode *)self graph];
  v5 = [v4 localDatesForMomentNode:self];
  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:1];
  v32[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
  v8 = [v5 sortedArrayUsingDescriptors:v7];

  if ([v8 count])
  {
    v9 = [v8 firstObject];
    *buf = 0;
    v29 = 0;
    [MEMORY[0x277D276A8] nextWeekendLocalStartDate:&v29 interval:buf options:4 afterDate:v9];
    v10 = [MEMORY[0x277D27690] dateByAddingDays:-1 toDate:v29];
    v11 = [(PGGraphMomentNode *)self previousMomentNode];
    if (v11)
    {
      v12 = v11;
      v24 = v9;
      do
      {
        v13 = [v4 localDatesForMomentNode:v12];
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v14 = v13;
        v15 = [v14 countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v26;
          v18 = 1;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v26 != v17)
              {
                objc_enumerationMutation(v14);
              }

              if ([*(*(&v25 + 1) + 8 * i) compare:v10] == -1)
              {
                v18 = 0;
              }

              else if ([v12 isWeekend])
              {
                [v3 addObject:v12];
                goto LABEL_17;
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v25 objects:v30 count:16];
          }

          while (v16);
        }

        else
        {
          v18 = 1;
        }

LABEL_17:

        v20 = [v12 previousMomentNode];

        if ((v18 & 1) == 0)
        {
          break;
        }

        v12 = v20;
      }

      while (v20);

      v9 = v24;
    }
  }

  else
  {
    v21 = +[PGLogging sharedLogging];
    v9 = [v21 loggingConnection];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = self;
      _os_log_error_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_ERROR, "No date node for moment node %@", buf, 0xCu);
    }
  }

  v22 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)weekendNode
{
  v2 = [(PGGraphMomentNode *)self collection];
  v3 = [v2 weekendNodes];
  v4 = [v3 anyNode];

  return v4;
}

- (BOOL)isWeekend
{
  v2 = [(PGGraphMomentNode *)self weekendNode];
  v3 = v2 != 0;

  return v3;
}

- (id)connectedEventsWithTargetDomain:(unsigned __int16)a3
{
  v3 = a3;
  v16 = *MEMORY[0x277D85DE8];
  if ([(PGGraphMomentNode *)self domain]== a3)
  {
    v5 = [MEMORY[0x277CBEB98] setWithObject:self];
  }

  else if (v3 == 102)
  {
    v6 = [(PGGraphMomentNode *)self highlightNode];
    if (v6)
    {
      v7 = [MEMORY[0x277CBEB98] setWithObject:v6];
    }

    else
    {
      v10 = +[PGLogging sharedLogging];
      v11 = [v10 loggingConnection];

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v14 = 138412290;
        v15 = self;
        _os_log_error_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_ERROR, "Moment node has no highlight node: %@", &v14, 0xCu);
      }

      v7 = [MEMORY[0x277CBEB98] set];
    }

    v5 = v7;
  }

  else
  {
    v8 = +[PGLogging sharedLogging];
    v9 = [v8 loggingConnection];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = 67109120;
      LODWORD(v15) = v3;
      _os_log_error_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_ERROR, "Unsupported target domain: %u", &v14, 8u);
    }

    v5 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)fetchAssetCollectionInPhotoLibrary:(id)a3
{
  v4 = a3;
  v5 = [(MANode *)self graph];
  v6 = [v5 momentForMomentNode:self inPhotoLibrary:v4];

  return v6;
}

- (id)anniversaryPersonNodes
{
  v2 = [(PGGraphMomentNode *)self collection];
  v3 = [v2 anniversaryPersonNodes];

  return v3;
}

- (id)birthdayPersonNodes
{
  v2 = [(PGGraphMomentNode *)self collection];
  v3 = [v2 birthdayPersonNodes];

  return v3;
}

- (id)reliableMeaningLabels
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__PGGraphMomentNode_reliableMeaningLabels__block_invoke;
  v6[3] = &unk_2788877E0;
  v4 = v3;
  v7 = v4;
  [(PGGraphMomentNode *)self enumerateReliableMeaningNodesUsingBlock:v6];

  return v4;
}

void __42__PGGraphMomentNode_reliableMeaningLabels__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 label];
  [v2 addObject:v3];
}

- (id)eventEnrichmentSortedMomentNodes
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = self;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)naturalLanguageFeatures
{
  v3 = [PGTextFeatureGenerator alloc];
  v4 = [MEMORY[0x277CBEB98] setWithObject:self];
  v5 = [(MANode *)self graph];
  v6 = [(PGTextFeatureGenerator *)v3 initWithMomentNodes:v4 graph:v5];

  v7 = [(PGTextFeatureGenerator *)v6 naturalLanguageFeatures];

  return v7;
}

- (id)keywordsForRelatedType:(unint64_t)a3 focusOnNodes:(id)a4
{
  v48[6] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v34 = [MEMORY[0x277CBEB18] array];
  v33 = [MEMORY[0x277CBEB18] array];
  v7 = [MEMORY[0x277CBEB18] array];
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = [MEMORY[0x277CBEB18] array];
  v10 = [MEMORY[0x277CBEB18] array];
  if ((a3 & 2) != 0)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [(PGGraphMomentNode *)self localStartDate];
    v13 = [v11 stringWithFormat:@"[EventStart] %@", v12];

    v14 = MEMORY[0x277CCACA8];
    v15 = [(PGGraphMomentNode *)self localEndDate];
    v16 = [v14 stringWithFormat:@"[EventEnd] %@", v15];

    [v7 addObject:v13];
    [v7 addObject:v16];
  }

  v17 = "MusicKitRequestFactory";
  if (a3)
  {
    v18 = [(MANode *)self graph];
    v19 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:v18];
    v20 = [v19 anyNode];

    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __57__PGGraphMomentNode_keywordsForRelatedType_focusOnNodes___block_invoke;
    v43[3] = &unk_2788876C0;
    v44 = v6;
    v45 = v20;
    v21 = v34;
    v46 = v21;
    v22 = v20;
    [(PGGraphMomentNode *)self enumeratePersonEdgesAndNodesUsingBlock:v43];
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"[All Persons] %lu", -[PGGraphMomentNode totalNumberOfPersons](self, "totalNumberOfPersons")];
    [v21 addObject:v23];

    v17 = "MusicKitRequestFactory";
  }

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = *(v17 + 256);
  v35[2] = __57__PGGraphMomentNode_keywordsForRelatedType_focusOnNodes___block_invoke_2;
  v35[3] = &unk_2788877B8;
  v41 = v10;
  v42 = a3;
  v36 = v6;
  v37 = v33;
  v38 = v7;
  v39 = v8;
  v40 = v9;
  v24 = v10;
  v25 = v9;
  v26 = v8;
  v27 = v7;
  v28 = v33;
  v29 = v6;
  [(MANode *)self enumerateNeighborEdgesAndNodesThroughOutEdgesUsingBlock:v35];
  v47[0] = &unk_284484458;
  v47[1] = &unk_284484470;
  v48[0] = v34;
  v48[1] = v28;
  v47[2] = &unk_284484488;
  v47[3] = &unk_2844844A0;
  v48[2] = v27;
  v48[3] = v26;
  v47[4] = &unk_2844844B8;
  v47[5] = &unk_2844844D0;
  v48[4] = v25;
  v48[5] = v24;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:6];

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

void __57__PGGraphMomentNode_keywordsForRelatedType_focusOnNodes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (!v7 || [v7 containsObject:v6])
  {
    v8 = MEMORY[0x277CCAB68];
    v9 = [v6 keywordDescription];
    v10 = [v8 stringWithString:v9];

    if (*(a1 + 40) && ([v6 isEqualToNode:?] & 1) == 0)
    {
      v11 = [v6 collection];
      v12 = [v11 relationshipEdges];
      v13 = [v12 labels];

      if ([v13 count])
      {
        v14 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:1];
        v20[0] = v14;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
        v16 = [v13 sortedArrayUsingDescriptors:v15];

        v17 = [v16 componentsJoinedByString:@"/"];
        [v10 appendFormat:@" - %@ -", v17];
      }
    }

    [v5 importance];
    [v10 appendFormat:@" (%0.2f)", v18];
    [*(a1 + 48) addObject:v10];
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __57__PGGraphMomentNode_keywordsForRelatedType_focusOnNodes___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__PGGraphMomentNode_keywordsForRelatedType_focusOnNodes___block_invoke_3;
  aBlock[3] = &unk_2788876E8;
  v7 = v6;
  v57 = v7;
  v8 = _Block_copy(aBlock);
  v9 = *(a1 + 32);
  if (!v9 || [v9 containsObject:v7])
  {
    if ([v5 domain] == 200 && (*(a1 + 80) & 4) != 0)
    {
      [v5 relevance];
      v14 = v13;
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __57__PGGraphMomentNode_keywordsForRelatedType_focusOnNodes___block_invoke_4;
      v54[3] = &unk_278887710;
      v55[1] = v13;
      v12 = v55;
      v55[0] = *(a1 + 40);
      v15 = v7;
      [v15 enumerateOutEdgesUsingBlock:v54];
      v16 = [v15 collection];
      v17 = [v16 homeWorkNodes];
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __57__PGGraphMomentNode_keywordsForRelatedType_focusOnNodes___block_invoke_5;
      v51[3] = &unk_278887760;
      v53 = v14;
      v52 = *(a1 + 40);
      [v17 enumerateNodesUsingBlock:v51];

      goto LABEL_10;
    }

    if ([v5 domain] == 400 && (*(a1 + 80) & 2) != 0)
    {
      v10 = *(a1 + 48);
      v11 = [v7 keywordDescription];
      [v10 addObject:v11];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = __57__PGGraphMomentNode_keywordsForRelatedType_focusOnNodes___block_invoke_7;
        v49[3] = &unk_278887788;
        v12 = &v50;
        v50 = *(a1 + 48);
        [v7 enumerateHolidayEdgesAndNodesUsingBlock:v49];
LABEL_10:
      }
    }
  }

  if ([v5 domain] == 301 && (*(a1 + 80) & 8) != 0)
  {
    v23 = [v5 label];
    if (([v23 isEqualToString:@"BIRTHDAY"] & 1) != 0 || objc_msgSend(v23, "isEqualToString:", @"BIRTHDAY"))
    {
      v33 = *(a1 + 56);
      [v5 confidence];
      v34 = v8[2](v8);
      [v33 addObject:v34];
    }

    goto LABEL_37;
  }

  if ([v5 domain] == 401 && (*(a1 + 80) & 8) != 0)
  {
    v32 = *(a1 + 56);
    goto LABEL_32;
  }

  v18 = [v5 domain];
  v19 = *(a1 + 80);
  if (v18 == 700 && (v19 & 8) != 0)
  {
    v20 = *(a1 + 56);
    v21 = MEMORY[0x277CCACA8];
    v22 = v5;
    v23 = [v22 label];
    v24 = [v23 capitalizedString];
    v25 = [v7 label];
    [v22 confidence];
    v27 = v26;
    v28 = [v22 isReliable];

    v29 = @"Unreliable";
    if (v28)
    {
      v29 = @"Reliable";
    }

    v30 = [v21 stringWithFormat:@"[%@] %@ (%.2f, %@)", v24, v25, v27, v29];
    [v20 addObject:v30];

    goto LABEL_37;
  }

  v31 = [v5 domain];
  if ((v19 & 0x10) != 0)
  {
    if (v31 != 501 && [v5 domain] != 502)
    {
      goto LABEL_38;
    }

LABEL_35:
    v32 = *(a1 + 64);
    [v5 confidence];
    v35 = v8[2](v8);
    goto LABEL_36;
  }

  if (v31 == 600 && (*(a1 + 80) & 0x20) != 0)
  {
    v36 = v5;
    v37 = v7;
    v48 = v37;
    v38 = [v36 isReliable];
    v39 = @"NO";
    if (v38)
    {
      v39 = @"YES";
    }

    v40 = v39;
    v47 = [v36 numberOfAssets];
    v41 = [v36 numberOfHighConfidenceAssets];
    v42 = [v36 numberOfSearchConfidenceAssets];
    v43 = MEMORY[0x277CCACA8];
    v44 = [v37 keywordDescription];
    [v36 confidence];
    v46 = v45;

    v23 = [v43 stringWithFormat:@"%@ #all:%lu #highConf:%lu #searchConf:%lu reliable:%@ - (%0.2f)", v44, v47, v41, v42, v40, v46];

    [*(a1 + 72) addObject:v23];
    goto LABEL_37;
  }

  if ([v5 domain] == 503 && (*(a1 + 80) & 0x10) != 0)
  {
    goto LABEL_35;
  }

  if ([v5 domain] == 900 && (*(a1 + 80) & 0x10) != 0)
  {
    v32 = *(a1 + 64);
LABEL_32:
    v35 = [v7 keywordDescription];
LABEL_36:
    v23 = v35;
    [v32 addObject:v35];
LABEL_37:
  }

LABEL_38:
}

id __57__PGGraphMomentNode_keywordsForRelatedType_focusOnNodes___block_invoke_3(uint64_t a1, double a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [*(a1 + 32) keywordDescription];
  v5 = [v3 stringWithFormat:@"%@ (%0.2f)", v4, *&a2];

  return v5;
}

void __57__PGGraphMomentNode_keywordsForRelatedType_focusOnNodes___block_invoke_4(uint64_t a1, void *a2)
{
  v9 = a2;
  if ([v9 domain] == 200)
  {
    v3 = *(a1 + 40);
  }

  else
  {
    if ([v9 domain] != 201)
    {
      goto LABEL_6;
    }

    [v9 relevance];
    v3 = v4;
  }

  v5 = [v9 targetNode];
  v6 = MEMORY[0x277CCACA8];
  v7 = [v5 keywordDescription];
  v8 = [v6 stringWithFormat:@"%@ (%0.2f)", v7, v3];

  [*(a1 + 32) addObject:v8];
LABEL_6:
}

void __57__PGGraphMomentNode_keywordsForRelatedType_focusOnNodes___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 collection];
  v5 = [v4 ownerNodes];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__PGGraphMomentNode_keywordsForRelatedType_focusOnNodes___block_invoke_6;
  v7[3] = &unk_278887738;
  v8 = v3;
  v10 = *(a1 + 40);
  v9 = *(a1 + 32);
  v6 = v3;
  [v5 enumerateNodesUsingBlock:v7];
}

void __57__PGGraphMomentNode_keywordsForRelatedType_focusOnNodes___block_invoke_7(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x277CCACA8];
  v5 = [a3 keywordDescription];
  v6 = [v4 stringWithFormat:@"%@", v5];

  [*(a1 + 32) addObject:v6];
}

void __57__PGGraphMomentNode_keywordsForRelatedType_focusOnNodes___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 label];
  v7 = [v5 name];

  v8 = [v3 stringWithFormat:@"[%@] - %@ (%0.2f)", v6, v7, *(a1 + 48)];

  [*(a1 + 40) addObject:v8];
}

- (id)debugDictionaryWithServiceManager:(id)a3
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = MEMORY[0x277CCABB0];
  [(PGGraphMomentNode *)self graphScore];
  v6 = [v5 numberWithDouble:?];
  [v4 setObject:v6 forKeyedSubscript:@"graphScore"];

  v7 = objc_alloc_init(PGNeighborScoreComputer);
  v8 = MEMORY[0x277CCABB0];
  [(PGNeighborScoreComputer *)v7 neighborScoreWithMomentNode:self];
  v9 = [v8 numberWithDouble:?];
  [v4 setObject:v9 forKeyedSubscript:@"neighborScore"];

  v10 = MEMORY[0x277CCABB0];
  [(PGGraphMomentNode *)self contentScore];
  v11 = [v10 numberWithDouble:?];
  [v4 setObject:v11 forKeyedSubscript:@"curationScore"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PGGraphMomentNode numberOfAssets](self, "numberOfAssets")}];
  [v4 setObject:v12 forKeyedSubscript:@"numberOfAssets"];

  v13 = [(PGGraphMomentNode *)self keywordsForRelatedType:63 focusOnNodes:0];
  v14 = [PGManager exportableDictionaryFromKeywords:v13];
  [v4 setObject:v14 forKeyedSubscript:@"keywords"];

  return v4;
}

- (int64_t)_compareToMomentNode:(id)a3 withSortDescriptors:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = a4;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v16 + 1) + 8 * v11) compareObject:self toObject:{v6, v16}];
        if (v12)
        {
          v13 = v12;
          goto LABEL_11;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)laterMomentNode:(id)a3
{
  v14[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  if (v4)
  {
    v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalStartDate" ascending:1];
    v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalEndDate" ascending:{1, v6}];
    v14[1] = v7;
    v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"UUID" ascending:1];
    v14[2] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];

    if ([(PGGraphMomentNode *)v5 _compareToMomentNode:v4 withSortDescriptors:v9]== -1)
    {
      v10 = v4;
    }

    else
    {
      v10 = v5;
    }

    v11 = v10;

    v5 = v11;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)earlierMomentNode:(id)a3
{
  v14[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  if (v4)
  {
    v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalStartDate" ascending:1];
    v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalEndDate" ascending:{1, v6}];
    v14[1] = v7;
    v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"UUID" ascending:1];
    v14[2] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];

    if ([(PGGraphMomentNode *)v5 _compareToMomentNode:v4 withSortDescriptors:v9]== 1)
    {
      v10 = v4;
    }

    else
    {
      v10 = v5;
    }

    v11 = v10;

    v5 = v11;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)enumerateMeaningfulEventsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = 0;
  if ([(PGGraphMomentNode *)self hasMeanings])
  {
    v4[2](v4, self, &v5);
  }
}

- (void)enumerateReliableMeaningNodesUsingBlock:(id)a3
{
  v4 = a3;
  v6 = [(PGGraphMomentNode *)self collection];
  v5 = [v6 reliableMeaningNodes];
  [v5 enumerateNodesUsingBlock:v4];
}

- (id)alternativeMeaningLabelsIncludingParents
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [(PGGraphMomentNode *)self alternativeMeaningLabels];
  v3 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:v2];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = v2;
  v4 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __61__PGGraphMomentNode_alternativeMeaningLabelsIncludingParents__block_invoke;
        v12[3] = &unk_278887698;
        v13 = v3;
        [PGGraph traverseParentMeaningsForMeaningLabel:v8 usingBlock:v12];
      }

      v5 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)meaningLabelsIncludingParents
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [(PGGraphMomentNode *)self meaningLabels];
  v3 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:v2];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = v2;
  v4 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __50__PGGraphMomentNode_meaningLabelsIncludingParents__block_invoke;
        v12[3] = &unk_278887698;
        v13 = v3;
        [PGGraph traverseParentMeaningsForMeaningLabel:v8 usingBlock:v12];
      }

      v5 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)alternativeMeaningNodes
{
  v2 = [(PGGraphMomentNode *)self collection];
  v3 = [v2 alternativeMeaningNodes];

  return v3;
}

- (id)alternativeMeaningLabels
{
  v2 = [(PGGraphMomentNode *)self alternativeMeaningNodes];
  v3 = [v2 meaningLabels];

  return v3;
}

- (id)meaningNodes
{
  v2 = [(PGGraphMomentNode *)self collection];
  v3 = [v2 meaningNodes];

  return v3;
}

- (id)meaningLabels
{
  v2 = [(PGGraphMomentNode *)self meaningNodes];
  v3 = [v2 meaningLabels];

  return v3;
}

- (double)meaningScore
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v3 = +[PGGraph frequentMeaningLabels];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__PGGraphMomentNode_meaningScore__block_invoke;
  v7[3] = &unk_278887670;
  v4 = v3;
  v8 = v4;
  v9 = &v10;
  [(PGGraphMomentNode *)self enumerateMeaningNodesUsingBlock:v7];
  v5 = v11[3];

  _Block_object_dispose(&v10, 8);
  return v5;
}

void __33__PGGraphMomentNode_meaningScore__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = *(a1 + 32);
  v6 = [a2 label];
  LOBYTE(v5) = [v5 containsObject:v6];

  v7 = *(*(a1 + 40) + 8);
  v8 = 0.5;
  if ((v5 & 1) == 0)
  {
    *a3 = 1;
    v8 = 1.0;
  }

  *(v7 + 24) = v8;
}

- (id)publicEventNodes
{
  v3 = [MEMORY[0x277CBEB58] set];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__PGGraphMomentNode_publicEventNodes__block_invoke;
  v6[3] = &unk_278887648;
  v4 = v3;
  v7 = v4;
  [(PGGraphMomentNode *)self enumeratePublicEventNodesUsingBlock:v6];

  return v4;
}

- (id)businessNodes
{
  v3 = [MEMORY[0x277CBEB58] set];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__PGGraphMomentNode_businessNodes__block_invoke;
  v6[3] = &unk_278887620;
  v4 = v3;
  v7 = v4;
  [(PGGraphMomentNode *)self enumerateBusinessNodesUsingBlock:v6];

  return v4;
}

- (id)addressNodes
{
  v2 = [(PGGraphMomentNode *)self collection];
  v3 = [v2 addressNodes];
  v4 = [v3 temporarySet];

  return v4;
}

- (id)roiNodes
{
  v3 = [MEMORY[0x277CBEB58] set];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __29__PGGraphMomentNode_roiNodes__block_invoke;
  v6[3] = &unk_2788875F8;
  v4 = v3;
  v7 = v4;
  [(PGGraphMomentNode *)self enumerateROINodesUsingBlock:v6];

  return v4;
}

- (id)poiNodes
{
  v3 = [MEMORY[0x277CBEB58] set];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __29__PGGraphMomentNode_poiNodes__block_invoke;
  v6[3] = &unk_2788875D0;
  v4 = v3;
  v7 = v4;
  [(PGGraphMomentNode *)self enumeratePOINodesUsingBlock:v6];

  return v4;
}

- (id)celebratedHolidayNodes
{
  v3 = [MEMORY[0x277CBEB58] set];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__PGGraphMomentNode_celebratedHolidayNodes__block_invoke;
  v6[3] = &unk_278888D00;
  v4 = v3;
  v7 = v4;
  [(PGGraphMomentNode *)self enumerateCelebratedHolidayNodesUsingBlock:v6];

  return v4;
}

- (id)holidayNodes
{
  v3 = [MEMORY[0x277CBEB58] set];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__PGGraphMomentNode_holidayNodes__block_invoke;
  v6[3] = &unk_2788875A8;
  v4 = v3;
  v7 = v4;
  [(PGGraphMomentNode *)self enumerateDateNodesUsingBlock:v6];

  return v4;
}

void __33__PGGraphMomentNode_holidayNodes__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __33__PGGraphMomentNode_holidayNodes__block_invoke_2;
  v3[3] = &unk_278888D00;
  v4 = *(a1 + 32);
  [a2 enumerateHolidayNodesUsingBlock:v3];
}

- (id)seasonNodes
{
  v3 = [MEMORY[0x277CBEB58] set];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__PGGraphMomentNode_seasonNodes__block_invoke;
  v6[3] = &unk_2788875A8;
  v4 = v3;
  v7 = v4;
  [(PGGraphMomentNode *)self enumerateDateNodesUsingBlock:v6];

  return v4;
}

void __32__PGGraphMomentNode_seasonNodes__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 seasonNode];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObject:v3];
    v3 = v4;
  }
}

- (id)dateNodes
{
  v3 = [MEMORY[0x277CBEB58] set];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __30__PGGraphMomentNode_dateNodes__block_invoke;
  v6[3] = &unk_2788875A8;
  v4 = v3;
  v7 = v4;
  [(PGGraphMomentNode *)self enumerateDateNodesUsingBlock:v6];

  return v4;
}

- (id)consolidatedPersonNodesPresentInAssets
{
  v2 = [(PGGraphMomentNode *)self collection];
  v3 = [v2 consolidatedPersonNodesPresentInAssets];
  v4 = [v3 set];

  return v4;
}

- (id)consolidatedPersonNodes
{
  v2 = [(PGGraphMomentNode *)self collection];
  v3 = [v2 consolidatedPersonNodes];
  v4 = [v3 set];

  return v4;
}

- (id)personNodesInProximity
{
  v2 = [(PGGraphMomentNode *)self collection];
  v3 = [v2 personNodesInProximity];
  v4 = [v3 set];

  return v4;
}

- (id)socialGroupNodes
{
  v2 = [(PGGraphMomentNode *)self collection];
  v3 = [v2 socialGroupNodes];
  v4 = [v3 set];

  return v4;
}

- (id)petNodes
{
  v2 = [(PGGraphMomentNode *)self collection];
  v3 = [v2 petNodes];
  v4 = [v3 set];

  return v4;
}

- (id)personNodes
{
  v2 = [(PGGraphMomentNode *)self collection];
  v3 = [v2 personNodes];
  v4 = [v3 set];

  return v4;
}

- (BOOL)hasPeopleCountingMe:(BOOL)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__PGGraphMomentNode_hasPeopleCountingMe___block_invoke;
  v5[3] = &unk_278887580;
  v5[4] = &v7;
  v6 = a3;
  [(PGGraphMomentNode *)self enumeratePersonNodesUsingBlock:v5];
  v3 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t __41__PGGraphMomentNode_hasPeopleCountingMe___block_invoke(uint64_t result, void *a2, _BYTE *a3)
{
  v4 = result;
  if (*(result + 40))
  {
    v5 = 1;
  }

  else
  {
    result = [a2 isMeNode];
    v5 = result ^ 1;
  }

  *(*(*(v4 + 32) + 8) + 24) = v5;
  *a3 = *(*(*(v4 + 32) + 8) + 24);
  return result;
}

- (NSSet)frequentLocationNodes
{
  v2 = [(PGGraphMomentNode *)self collection];
  v3 = [v2 frequentLocationNodes];
  v4 = [v3 temporarySet];

  return v4;
}

- (id)eventSortedMomentNodes
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = self;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)enumeratePersonNodesUsingBlock:(id)a3
{
  v4 = a3;
  v6 = [(PGGraphMomentNode *)self collection];
  v5 = [v6 personNodes];
  [v5 enumerateNodesUsingBlock:v4];
}

- (void)enumerateConsolidatedAddressesUsingBlock:(id)a3
{
  v60[1] = *MEMORY[0x277D85DE8];
  v49 = a3;
  v4 = objc_autoreleasePoolPush();
  v57 = 0;
  v5 = [(PGGraphMomentNode *)self preciseAddressEdges];
  v6 = [v5 count];
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = [v5 anyObject];
      [(PGConsolidatedAddress *)v7 photoCoordinate];
      v9 = v8;
      v11 = v10;
      v12 = [PGConsolidatedAddress alloc];
      v13 = [(PGConsolidatedAddress *)v7 targetNode];
      v60[0] = v7;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:1];
      v15 = [(PGConsolidatedAddress *)v12 initWithAddressNode:v13 addressEdgesSortedByTime:v14 centerCoordinates:v9, v11];

      v49[2](v49, v15, &v57);
LABEL_30:

      goto LABEL_31;
    }

    v16 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestampUTCStart" ascending:1];
    v59 = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v59 count:1];
    v18 = [v5 sortedArrayUsingDescriptors:v17];

    v56 = 0uLL;
    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v7 = v18;
    v20 = [(PGConsolidatedAddress *)v7 countByEnumeratingWithState:&v52 objects:v58 count:16];
    if (v20)
    {
      v21 = v20;
      v47 = v5;
      v48 = v4;
      v15 = 0;
      v50 = *v53;
      v22 = 0.0;
      v23 = 0.0;
      do
      {
        v24 = 0;
        do
        {
          v25 = v23;
          if (*v53 != v50)
          {
            objc_enumerationMutation(v7);
          }

          v26 = *(*(&v52 + 1) + 8 * v24);
          v27 = objc_autoreleasePoolPush();
          v28 = v27;
          if (v57 == 1)
          {
            objc_autoreleasePoolPop(v27);
            goto LABEL_22;
          }

          v29 = [v26 targetNode];
          [v26 timestampUTCEnd];
          v23 = v30;
          [v26 photoCoordinate];
          *&v51 = v31;
          *(&v51 + 1) = v32;
          [v26 relevance];
          v34 = v33;
          if (v15)
          {
            if (-[PGConsolidatedAddress isSameNodeAsNode:](v15, "isSameNodeAsNode:", v29) && ([v26 timestampUTCStart], v35 - v25 <= 14400.0) && (CLLocationCoordinate2DGetDistanceFrom(), v36 <= 1500.0))
            {
              [v19 addObject:v26];
              CLSCentroidForCoordinates();
              *&v56 = v41;
              *(&v56 + 1) = v42;
              v22 = v22 + v34;
            }

            else
            {
              v37 = [PGConsolidatedAddress alloc];
              v38 = [(PGConsolidatedAddress *)v37 initWithAddressNode:v15 addressEdgesSortedByTime:v19 centerCoordinates:v56];
              v49[2](v49, v38, &v57);
              v39 = v29;

              v56 = v51;
              v40 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v26, 0}];

              v19 = v40;
              v22 = v34;
              v15 = v39;
            }
          }

          else
          {
            v15 = v29;
            v56 = v51;
            [v19 addObject:v26];
            v22 = v34;
          }

          objc_autoreleasePoolPop(v28);
          ++v24;
        }

        while (v21 != v24);
        v43 = [(PGConsolidatedAddress *)v7 countByEnumeratingWithState:&v52 objects:v58 count:16];
        v21 = v43;
      }

      while (v43);
LABEL_22:

      if (!v15)
      {
        v5 = v47;
        v4 = v48;
        goto LABEL_29;
      }

      v5 = v47;
      v4 = v48;
      if (![v19 count] || v57)
      {
        goto LABEL_29;
      }

      v44 = [PGConsolidatedAddress alloc];
      v45 = [(PGConsolidatedAddress *)v44 initWithAddressNode:v15 addressEdgesSortedByTime:v19 centerCoordinates:v56];
      v49[2](v49, v45, &v57);
    }

    else
    {
      v15 = 0;
      v45 = v7;
    }

LABEL_29:
    goto LABEL_30;
  }

LABEL_31:

  objc_autoreleasePoolPop(v4);
  v46 = *MEMORY[0x277D85DE8];
}

- (void)enumeratePreciseAddressNodesUsingBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__PGGraphMomentNode_enumeratePreciseAddressNodesUsingBlock___block_invoke;
  v6[3] = &unk_278887528;
  v7 = v4;
  v5 = v4;
  [(MANode *)self enumerateNeighborNodesThroughEdgesWithLabel:@"ADDRESS" domain:200 usingBlock:v6];
}

void __60__PGGraphMomentNode_enumeratePreciseAddressNodesUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isPrecise])
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)enumeratePreciseAddressEdgesAndNodesUsingBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__PGGraphMomentNode_enumeratePreciseAddressEdgesAndNodesUsingBlock___block_invoke;
  v6[3] = &unk_278887500;
  v7 = v4;
  v5 = v4;
  [(MANode *)self enumerateNeighborEdgesAndNodesThroughEdgesWithLabel:@"ADDRESS" domain:200 usingBlock:v6];
}

void __68__PGGraphMomentNode_enumeratePreciseAddressEdgesAndNodesUsingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v5 isPrecise])
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (id)continentNodes
{
  v2 = [(PGGraphMomentNode *)self collection];
  v3 = [v2 addressNodes];
  v4 = [v3 continentNodes];
  v5 = [v4 temporarySet];

  return v5;
}

- (id)countryNodes
{
  v2 = [(PGGraphMomentNode *)self collection];
  v3 = [v2 addressNodes];
  v4 = [v3 countryNodes];
  v5 = [v4 temporarySet];

  return v5;
}

- (id)cityNodes
{
  v2 = [(PGGraphMomentNode *)self collection];
  v3 = [v2 addressNodes];
  v4 = [v3 cityNodes];
  v5 = [v4 temporarySet];

  return v5;
}

- (id)preciseAddressEdges
{
  v3 = [MEMORY[0x277CBEB58] set];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__PGGraphMomentNode_preciseAddressEdges__block_invoke;
  v6[3] = &unk_2788874D8;
  v4 = v3;
  v7 = v4;
  [(PGGraphMomentNode *)self enumerateAddressEdgesAndNodesUsingBlock:v6];

  return v4;
}

void __40__PGGraphMomentNode_preciseAddressEdges__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 isPrecise])
  {
    [*(a1 + 32) addObject:v5];
  }
}

- (BOOL)hasPersonNodes
{
  v2 = [(PGGraphMomentNode *)self collection];
  v3 = [v2 personNodes];
  v4 = [v3 count] != 0;

  return v4;
}

- (void)_enumeratePartsOfDayWithThreshold:(double)a3 usingBlock:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__PGGraphMomentNode__enumeratePartsOfDayWithThreshold_usingBlock___block_invoke;
  v8[3] = &unk_2788874A8;
  v10 = a3;
  v9 = v6;
  v7 = v6;
  [(PGGraphMomentNode *)self enumeratePartOfDayEdgesAndNodesUsingBlock:v8];
}

void __66__PGGraphMomentNode__enumeratePartsOfDayWithThreshold_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  [a2 ratio];
  if (v5 >= *(a1 + 40))
  {
    [v6 partOfDay];
    (*(*(a1 + 32) + 16))();
  }
}

- (unint64_t)_partsOfDayWithThreshold:(double)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__PGGraphMomentNode__partsOfDayWithThreshold___block_invoke;
  v5[3] = &unk_278887480;
  v5[4] = &v6;
  v5[5] = &v10;
  [(PGGraphMomentNode *)self _enumeratePartsOfDayWithThreshold:v5 usingBlock:a3];
  if (*(v7 + 24))
  {
    v3 = v11[3];
  }

  else
  {
    v3 = 1;
    v11[3] = 1;
  }

  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(&v10, 8);
  return v3;
}

uint64_t __46__PGGraphMomentNode__partsOfDayWithThreshold___block_invoke(uint64_t result, uint64_t a2)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  v2 = *(*(result + 40) + 8);
  v3 = *(v2 + 24);
  if (v3 != 1)
  {
    *(v2 + 24) = v3 | a2;
  }

  return result;
}

- (CLLocationCoordinate2D)bestLocationCoordinate
{
  v2 = [(PGGraphMomentNode *)self bestAddressNode];
  v3 = v2;
  if (v2)
  {
    [v2 coordinate];
    v5 = v4;
    v7 = v6;
  }

  else
  {
    v5 = *MEMORY[0x277CE4278];
    v7 = *(MEMORY[0x277CE4278] + 8);
  }

  v8 = v5;
  v9 = v7;
  result.longitude = v9;
  result.latitude = v8;
  return result;
}

- (id)bestAddressNode
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__59572;
  v11 = __Block_byref_object_dispose__59573;
  v12 = 0;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  v6[3] = 0xFFEFFFFFFFFFFFFFLL;
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v5[3] = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__PGGraphMomentNode_bestAddressNode__block_invoke;
  v4[3] = &unk_278887458;
  v4[4] = v6;
  v4[5] = v5;
  v4[6] = &v7;
  [(PGGraphMomentNode *)self enumerateAddressEdgesAndNodesUsingBlock:v4];
  v2 = v8[5];
  _Block_object_dispose(v5, 8);
  _Block_object_dispose(v6, 8);
  _Block_object_dispose(&v7, 8);

  return v2;
}

void __36__PGGraphMomentNode_bestAddressNode__block_invoke(void *a1, void *a2, void *a3)
{
  v12 = a3;
  [a2 relevance];
  v7 = v6;
  v8 = *(*(a1[4] + 8) + 24);
  if (v7 > v8)
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_7:
    *(*(a1[4] + 8) + 24) = v7;
    objc_storeStrong((*(a1[6] + 8) + 40), a3);
    *(*(a1[5] + 8) + 24) = v9;
    goto LABEL_8;
  }

  if (v7 == v8)
  {
    v9 = [v12 countOfEdgesWithLabel:@"ADDRESS" domain:200];
    v10 = *(*(a1[5] + 8) + 24);
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      *(*(a1[5] + 8) + 24) = [*(*(a1[6] + 8) + 40) countOfEdgesWithLabel:@"ADDRESS" domain:200];
      v10 = *(*(a1[5] + 8) + 24);
    }

    if (v10 < v9)
    {
      goto LABEL_7;
    }

    if (v10 == v9)
    {
      v11 = [*(*(a1[6] + 8) + 40) identifier];
      if (v11 < [v12 identifier])
      {
        goto LABEL_7;
      }
    }
  }

LABEL_8:
}

- (PGGraphMomentNode)nextMomentNode
{
  v2 = [(PGGraphMomentNode *)self collection];
  v3 = [v2 nextMomentNodes];
  v4 = [v3 anyNode];

  return v4;
}

- (PGGraphMomentNode)previousMomentNode
{
  v2 = [(PGGraphMomentNode *)self collection];
  v3 = [v2 previousMomentNodes];
  v4 = [v3 anyNode];

  return v4;
}

- (PGGraphMomentNodeCollection)collection
{
  v2 = [(MANodeCollection *)[PGGraphMomentNodeCollection alloc] initWithNode:self];

  return v2;
}

- (BOOL)isPartOfTrip
{
  v2 = [(PGGraphMomentNode *)self highlightNode];
  v3 = [v2 isPartOfTrip];

  return v3;
}

- (PGGraphHighlightGroupNode)highlightGroupNode
{
  v2 = [(PGGraphMomentNode *)self highlightNode];
  v3 = [v2 highlightGroupNode];

  return v3;
}

- (PGGraphHighlightNode)highlightNode
{
  v2 = [(PGGraphMomentNode *)self collection];
  v3 = [v2 highlightNodes];
  v4 = [v3 anyNode];

  return v4;
}

- (unint64_t)locationMobilityType
{
  v2 = [(PGGraphMomentNode *)self collection];
  v3 = [v2 mobilityNodes];
  v4 = [v3 anyNode];

  if (v4)
  {
    v5 = [v4 mobilityType];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isInterestingForMemories
{
  v2 = [(PGGraphMomentNode *)self collection];
  v3 = [v2 interestingForMemoriesSubset];
  v4 = [v3 count] != 0;

  return v4;
}

- (BOOL)happensPartiallyAtHomeOrWorkOfPersonNodes:(id)a3
{
  v4 = a3;
  v5 = [(PGGraphMomentNode *)self collection];
  v6 = [v5 happensPartiallyAtHomeOrWorkOfPersonNodes:v4];

  return v6;
}

- (BOOL)happensPartiallyAtWorkOfPersonNodes:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(PGGraphMomentNode *)self collection];
    v6 = [v5 preciseAddressNodes];
    v7 = [v4 workNodes];
    v8 = [v7 addressNodes];
    v9 = [v6 intersectsCollection:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)happensPartiallyAtHomeOfPersonNodes:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(PGGraphMomentNode *)self collection];
    v6 = [v5 preciseAddressNodes];
    v7 = [v4 homeNodes];
    v8 = [v7 addressNodes];
    v9 = [v6 intersectsCollection:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (MAFloatVector)clipFeatureVector
{
  v16 = *MEMORY[0x277D85DE8];
  encodedCLIPFeatureVector = self->_encodedCLIPFeatureVector;
  v13 = 0;
  v4 = [PGMomentIngestCLIPFeatureVectorExtractor decodeEncodedCLIPFeatureVector:encodedCLIPFeatureVector withError:&v13];
  v5 = v13;
  if (v4)
  {
    if ([v4 count])
    {
      v6 = v4;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
  }

  else
  {
    v8 = +[PGLogging sharedLogging];
    v9 = [v8 loggingConnection];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      localIdentifier = self->_localIdentifier;
      *buf = 138412290;
      v15 = localIdentifier;
      _os_log_error_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_ERROR, "Error decoding CLIP Feature for moment %@", buf, 0xCu);
    }

    v7 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v7;
}

- (NSDictionary)jsonDescription
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"type";
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  localIdentifier = self->_localIdentifier;
  v10[0] = v4;
  v10[1] = localIdentifier;
  v9[1] = @"localIdentifier";
  v9[2] = @"name";
  v10[2] = self->_name;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)propertyForKey:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isEqualToString:@"name"])
  {
    v5 = 80;
LABEL_5:
    v6 = *(&self->super.super.super.super.isa + v5);
LABEL_15:
    v9 = v6;
    goto LABEL_16;
  }

  if ([v4 isEqualToString:@"clipfeature"])
  {
    v5 = 40;
    goto LABEL_5;
  }

  if ([v4 isEqualToString:@"utcs"])
  {
    v7 = MEMORY[0x277CCABB0];
    v8 = 104;
LABEL_14:
    v6 = [v7 numberWithDouble:*(&self->super.super.super.super.isa + v8)];
    goto LABEL_15;
  }

  if ([v4 isEqualToString:@"utce"])
  {
    v7 = MEMORY[0x277CCABB0];
    v8 = 112;
    goto LABEL_14;
  }

  if ([v4 isEqualToString:@"tzs"])
  {
    v7 = MEMORY[0x277CCABB0];
    v8 = 48;
    goto LABEL_14;
  }

  if ([v4 isEqualToString:@"tze"])
  {
    v7 = MEMORY[0x277CCABB0];
    v8 = 56;
    goto LABEL_14;
  }

  if ([v4 isEqualToString:@"tnop"])
  {
    v12 = MEMORY[0x277CCABB0];
    numberOfAssetsInExtendedCuration = *(self + 37);
LABEL_21:
    v6 = [v12 numberWithUnsignedInteger:numberOfAssetsInExtendedCuration];
    goto LABEL_15;
  }

  if ([v4 isEqualToString:@"inhbtscr"])
  {
    v7 = MEMORY[0x277CCABB0];
    v8 = 88;
    goto LABEL_14;
  }

  if ([v4 isEqualToString:@"lclid"])
  {
    v5 = 32;
    goto LABEL_5;
  }

  if ([v4 isEqualToString:@"cnt"])
  {
    v12 = MEMORY[0x277CCABB0];
    v14 = 68;
LABEL_28:
    numberOfAssetsInExtendedCuration = *(&self->super.super.super.super.isa + v14);
    goto LABEL_21;
  }

  if ([v4 isEqualToString:@"sharingComposition"])
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:self->_sharingComposition];
    goto LABEL_15;
  }

  if ([v4 isEqualToString:@"nawp"])
  {
    v12 = MEMORY[0x277CCABB0];
    v14 = 64;
    goto LABEL_28;
  }

  if ([v4 isEqualToString:@"intng"])
  {
    v15 = MEMORY[0x277CCABB0];
    happensAtSensitiveLocation = (*(self + 76) >> 4) & 1;
LABEL_39:
    v6 = [v15 numberWithBool:happensAtSensitiveLocation];
    goto LABEL_15;
  }

  if ([v4 isEqualToString:@"intngaj"])
  {
    v15 = MEMORY[0x277CCABB0];
    happensAtSensitiveLocation = (*(self + 76) >> 5) & 1;
    goto LABEL_39;
  }

  if ([v4 isEqualToString:@"sintng"])
  {
    v15 = MEMORY[0x277CCABB0];
    happensAtSensitiveLocation = (*(self + 76) >> 6) & 1;
    goto LABEL_39;
  }

  if ([v4 isEqualToString:@"cntsc"])
  {
    v7 = MEMORY[0x277CCABB0];
    v8 = 96;
    goto LABEL_14;
  }

  if ([v4 isEqualToString:@"cbsa"])
  {
    v15 = MEMORY[0x277CCABB0];
    happensAtSensitiveLocation = (*(self + 76) >> 2) & 1;
    goto LABEL_39;
  }

  if ([v4 isEqualToString:@"hghthnmprv"])
  {
    v15 = MEMORY[0x277CCABB0];
    happensAtSensitiveLocation = *(self + 76) & 1;
    goto LABEL_39;
  }

  if ([v4 isEqualToString:@"asswis"])
  {
    v15 = MEMORY[0x277CCABB0];
    happensAtSensitiveLocation = (*(self + 76) >> 1) & 1;
    goto LABEL_39;
  }

  if ([v4 isEqualToString:@"cnja"])
  {
    v15 = MEMORY[0x277CCABB0];
    happensAtSensitiveLocation = (*(self + 76) >> 3) & 1;
    goto LABEL_39;
  }

  if ([v4 isEqualToString:@"spr"])
  {
    v7 = MEMORY[0x277CCABB0];
    v8 = 120;
    goto LABEL_14;
  }

  if ([v4 isEqualToString:@"fpr"])
  {
    v7 = MEMORY[0x277CCABB0];
    v8 = 128;
    goto LABEL_14;
  }

  if ([v4 isEqualToString:@"extc"])
  {
    v12 = MEMORY[0x277CCABB0];
    numberOfAssetsInExtendedCuration = self->_numberOfAssetsInExtendedCuration;
    goto LABEL_21;
  }

  if ([v4 isEqualToString:@"hasl"])
  {
    v15 = MEMORY[0x277CCABB0];
    happensAtSensitiveLocation = self->_happensAtSensitiveLocation;
    goto LABEL_39;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    v17 = 138412290;
    v18 = v4;
    _os_log_fault_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Unsupported property '%@' accessed on PGGraphMomentNode.", &v17, 0xCu);
  }

  v9 = 0;
LABEL_16:

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)changingPropertiesWithProperties:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PGGraphMomentNode *)self propertyDictionary];
  v6 = [v5 isEqual:v4];

  if (v6)
  {
    v7 = MEMORY[0x277CBEC10];
  }

  else
  {
    v8 = [v4 objectForKeyedSubscript:@"lclid"];
    if (v8 && ![(NSString *)self->_localIdentifier isEqualToString:v8])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v14 = 138412546;
        v15 = v8;
        v16 = 2112;
        v17 = self;
        _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Trying to merge local identifier %@ into moment node %@", &v14, 0x16u);
      }

      v7 = MEMORY[0x277CBEC10];
    }

    else
    {
      v7 = v4;
      v9 = [v7 objectForKeyedSubscript:@"name"];
      v10 = v9;
      if (v9 && ![v9 length])
      {
        v11 = [v7 mutableCopy];
        [v11 removeObjectForKey:@"name"];

        v7 = v11;
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)propertyDictionary
{
  v32[24] = *MEMORY[0x277D85DE8];
  name = self->_name;
  if (!name)
  {
    name = &stru_2843F5C58;
  }

  v31[0] = @"name";
  v31[1] = @"clipfeature";
  encodedCLIPFeatureVector = self->_encodedCLIPFeatureVector;
  if (!encodedCLIPFeatureVector)
  {
    encodedCLIPFeatureVector = &stru_2843F5C58;
  }

  v32[0] = name;
  v32[1] = encodedCLIPFeatureVector;
  v31[2] = @"utcs";
  v30 = [MEMORY[0x277CCABB0] numberWithDouble:self->_universalStartTimestamp];
  v32[2] = v30;
  v31[3] = @"utce";
  v29 = [MEMORY[0x277CCABB0] numberWithDouble:self->_universalEndTimestamp];
  v32[3] = v29;
  v31[4] = @"tzs";
  v28 = [MEMORY[0x277CCABB0] numberWithDouble:self->_localStartTimestamp];
  v32[4] = v28;
  v31[5] = @"tze";
  v27 = [MEMORY[0x277CCABB0] numberWithDouble:self->_localEndTimestamp];
  v32[5] = v27;
  v31[6] = @"tnop";
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(self + 37)];
  v32[6] = v26;
  v31[7] = @"inhbtscr";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_inhabitationScore];
  v25 = v5;
  localIdentifier = self->_localIdentifier;
  if (!localIdentifier)
  {
    localIdentifier = &stru_2843F5C58;
  }

  v32[7] = v5;
  v32[8] = localIdentifier;
  v31[8] = @"lclid";
  v31[9] = @"cnt";
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(self + 17)];
  v32[9] = v24;
  v31[10] = @"sharingComposition";
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:self->_sharingComposition];
  v32[10] = v23;
  v31[11] = @"nawp";
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(self + 16)];
  v32[11] = v22;
  v31[12] = @"intng";
  v21 = [MEMORY[0x277CCABB0] numberWithBool:(*(self + 76) >> 4) & 1];
  v32[12] = v21;
  v31[13] = @"intngaj";
  v20 = [MEMORY[0x277CCABB0] numberWithBool:(*(self + 76) >> 5) & 1];
  v32[13] = v20;
  v31[14] = @"sintng";
  v19 = [MEMORY[0x277CCABB0] numberWithBool:(*(self + 76) >> 6) & 1];
  v32[14] = v19;
  v31[15] = @"cntsc";
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_contentScore];
  v32[15] = v7;
  v31[16] = @"cbsa";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:(*(self + 76) >> 2) & 1];
  v32[16] = v8;
  v31[17] = @"hghthnmprv";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:*(self + 76) & 1];
  v32[17] = v9;
  v31[18] = @"asswis";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:(*(self + 76) >> 1) & 1];
  v32[18] = v10;
  v31[19] = @"cnja";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:(*(self + 76) >> 3) & 1];
  v32[19] = v11;
  v31[20] = @"spr";
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:self->_scenesProcessedRatio];
  v32[20] = v12;
  v31[21] = @"fpr";
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:self->_facesProcessedRatio];
  v32[21] = v13;
  v31[22] = @"extc";
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfAssetsInExtendedCuration];
  v32[22] = v14;
  v31[23] = @"hasl";
  v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_happensAtSensitiveLocation];
  v32[23] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:24];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (BOOL)hasProperties:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [v5 objectForKeyedSubscript:@"lclid"];
    v7 = v6;
    if (v6 && ![v6 isEqual:self->_localIdentifier])
    {
      goto LABEL_53;
    }

    v8 = [v5 objectForKeyedSubscript:@"name"];
    v7 = v8;
    if (v8)
    {
      if (![v8 isEqual:self->_name])
      {
        goto LABEL_53;
      }
    }

    v9 = [v5 objectForKeyedSubscript:@"clipfeature"];
    v7 = v9;
    if (v9)
    {
      if (![v9 isEqual:self->_encodedCLIPFeatureVector])
      {
        goto LABEL_53;
      }
    }

    v10 = [v5 objectForKeyedSubscript:@"utcs"];
    v7 = v10;
    if (v10)
    {
      [v10 doubleValue];
      if (v11 != self->_universalStartTimestamp)
      {
        goto LABEL_53;
      }
    }

    v12 = [v5 objectForKeyedSubscript:@"utce"];
    v7 = v12;
    if (v12)
    {
      [v12 doubleValue];
      if (v13 != self->_universalEndTimestamp)
      {
        goto LABEL_53;
      }
    }

    v14 = [v5 objectForKeyedSubscript:@"tzs"];
    v7 = v14;
    if (v14)
    {
      [v14 doubleValue];
      if (v15 != self->_localStartTimestamp)
      {
        goto LABEL_53;
      }
    }

    v16 = [v5 objectForKeyedSubscript:@"tze"];
    v7 = v16;
    if (v16)
    {
      [v16 doubleValue];
      if (v17 != self->_localEndTimestamp)
      {
        goto LABEL_53;
      }
    }

    v18 = [v5 objectForKeyedSubscript:@"tnop"];
    v7 = v18;
    if (v18)
    {
      if ([v18 unsignedIntegerValue] != *(self + 37))
      {
        goto LABEL_53;
      }
    }

    v19 = [v5 objectForKeyedSubscript:@"inhbtscr"];
    v7 = v19;
    if (v19)
    {
      [v19 doubleValue];
      if (v20 != self->_inhabitationScore)
      {
        goto LABEL_53;
      }
    }

    v21 = [v5 objectForKeyedSubscript:@"cnt"];
    v7 = v21;
    if (v21)
    {
      if ([v21 unsignedIntegerValue] != *(self + 17))
      {
        goto LABEL_53;
      }
    }

    v22 = [v5 objectForKeyedSubscript:@"sharingComposition"];
    v7 = v22;
    if (v22)
    {
      if ([v22 unsignedShortValue] != self->_sharingComposition)
      {
        goto LABEL_53;
      }
    }

    v23 = [v5 objectForKeyedSubscript:@"nawp"];
    v7 = v23;
    if (v23)
    {
      if ([v23 unsignedIntegerValue] != *(self + 16))
      {
        goto LABEL_53;
      }
    }

    v24 = [v5 objectForKeyedSubscript:@"intng"];
    v7 = v24;
    if (v24)
    {
      if ([v24 BOOLValue] == ((*(self + 76) & 0x10) == 0))
      {
        goto LABEL_53;
      }
    }

    v25 = [v5 objectForKeyedSubscript:@"intngaj"];
    v7 = v25;
    if (v25)
    {
      if ([v25 BOOLValue] == ((*(self + 76) & 0x20) == 0))
      {
        goto LABEL_53;
      }
    }

    v26 = [v5 objectForKeyedSubscript:@"sintng"];
    v7 = v26;
    if (v26)
    {
      if ([v26 BOOLValue] == ((*(self + 76) & 0x40) == 0))
      {
        goto LABEL_53;
      }
    }

    v27 = [v5 objectForKeyedSubscript:@"cntsc"];
    v7 = v27;
    if (v27)
    {
      [v27 doubleValue];
      if (v28 != self->_contentScore)
      {
        goto LABEL_53;
      }
    }

    v29 = [v5 objectForKeyedSubscript:@"cbsa"];
    v7 = v29;
    if (v29)
    {
      if ([v29 BOOLValue] == ((*(self + 76) & 4) == 0))
      {
        goto LABEL_53;
      }
    }

    v30 = [v5 objectForKeyedSubscript:@"hghthnmprv"];
    v7 = v30;
    if (v30)
    {
      if ([v30 BOOLValue] != (*(self + 76) & 1))
      {
        goto LABEL_53;
      }
    }

    v31 = [v5 objectForKeyedSubscript:@"asswis"];
    v7 = v31;
    if (v31)
    {
      if ([v31 BOOLValue] == ((*(self + 76) & 2) == 0))
      {
        goto LABEL_53;
      }
    }

    v32 = [v5 objectForKeyedSubscript:@"cnja"];
    v7 = v32;
    if (v32)
    {
      if ([v32 BOOLValue] == ((*(self + 76) & 8) == 0))
      {
        goto LABEL_53;
      }
    }

    v33 = [v5 objectForKeyedSubscript:@"spr"];
    v7 = v33;
    if (v33)
    {
      [v33 doubleValue];
      if (v34 != self->_scenesProcessedRatio)
      {
        goto LABEL_53;
      }
    }

    v35 = [v5 objectForKeyedSubscript:@"fpr"];
    v7 = v35;
    if (v35)
    {
      [v35 doubleValue];
      if (v36 != self->_facesProcessedRatio)
      {
        goto LABEL_53;
      }
    }

    v37 = [v5 objectForKeyedSubscript:@"extc"];
    v7 = v37;
    if (v37)
    {
      if ([v37 unsignedIntegerValue] != self->_numberOfAssetsInExtendedCuration)
      {
        goto LABEL_53;
      }
    }

    v38 = [v5 objectForKeyedSubscript:@"hasl"];
    v7 = v38;
    if (v38 && self->_happensAtSensitiveLocation != [v38 BOOLValue])
    {
LABEL_53:
      v39 = 0;
    }

    else
    {
      v39 = 1;
    }
  }

  else
  {
    v39 = 1;
  }

  return v39;
}

- (void)setLocalProperties:(id)a3
{
  v45 = a3;
  if ([v45 count])
  {
    v4 = [v45 objectForKeyedSubscript:@"name"];
    name = self->_name;
    self->_name = v4;

    v6 = [v45 objectForKeyedSubscript:@"clipfeature"];
    encodedCLIPFeatureVector = self->_encodedCLIPFeatureVector;
    self->_encodedCLIPFeatureVector = v6;

    v8 = [v45 objectForKeyedSubscript:@"utcs"];
    [v8 doubleValue];
    self->_universalStartTimestamp = v9;

    v10 = [v45 objectForKeyedSubscript:@"utce"];
    [v10 doubleValue];
    self->_universalEndTimestamp = v11;

    v12 = [v45 objectForKeyedSubscript:@"tzs"];
    [v12 doubleValue];
    self->_localStartTimestamp = v13;

    v14 = [v45 objectForKeyedSubscript:@"tze"];
    [v14 doubleValue];
    self->_localEndTimestamp = v15;

    v16 = [v45 objectForKeyedSubscript:@"tnop"];
    *(self + 37) = [v16 unsignedIntegerValue];

    v17 = [v45 objectForKeyedSubscript:@"inhbtscr"];
    [v17 doubleValue];
    self->_inhabitationScore = v18;

    v19 = [v45 objectForKeyedSubscript:@"lclid"];
    localIdentifier = self->_localIdentifier;
    self->_localIdentifier = v19;

    v21 = [v45 objectForKeyedSubscript:@"nawp"];
    *(self + 16) = [v21 unsignedIntegerValue];

    v22 = [v45 objectForKeyedSubscript:@"cnt"];
    *(self + 17) = [v22 unsignedIntegerValue];

    v23 = [v45 objectForKeyedSubscript:@"sharingComposition"];
    self->_sharingComposition = [v23 unsignedShortValue];

    v24 = [v45 objectForKeyedSubscript:@"intng"];
    if ([v24 BOOLValue])
    {
      v25 = 16;
    }

    else
    {
      v25 = 0;
    }

    *(self + 76) = *(self + 76) & 0xEF | v25;

    v26 = [v45 objectForKeyedSubscript:@"intngaj"];
    if ([v26 BOOLValue])
    {
      v27 = 32;
    }

    else
    {
      v27 = 0;
    }

    *(self + 76) = *(self + 76) & 0xDF | v27;

    v28 = [v45 objectForKeyedSubscript:@"sintng"];
    if ([v28 BOOLValue])
    {
      v29 = 64;
    }

    else
    {
      v29 = 0;
    }

    *(self + 76) = *(self + 76) & 0xBF | v29;

    v30 = [v45 objectForKeyedSubscript:@"cntsc"];
    [v30 doubleValue];
    self->_contentScore = v31;

    v32 = [v45 objectForKeyedSubscript:@"cbsa"];
    if ([v32 BOOLValue])
    {
      v33 = 4;
    }

    else
    {
      v33 = 0;
    }

    *(self + 76) = *(self + 76) & 0xFB | v33;

    v34 = [v45 objectForKeyedSubscript:@"hghthnmprv"];
    *(self + 76) = *(self + 76) & 0xFE | [v34 BOOLValue];

    v35 = [v45 objectForKeyedSubscript:@"asswis"];
    if ([v35 BOOLValue])
    {
      v36 = 2;
    }

    else
    {
      v36 = 0;
    }

    *(self + 76) = *(self + 76) & 0xFD | v36;

    v37 = [v45 objectForKeyedSubscript:@"cnja"];
    if ([v37 BOOLValue])
    {
      v38 = 8;
    }

    else
    {
      v38 = 0;
    }

    *(self + 76) = *(self + 76) & 0xF7 | v38;

    v39 = [v45 objectForKeyedSubscript:@"spr"];
    [v39 doubleValue];
    self->_scenesProcessedRatio = v40;

    v41 = [v45 objectForKeyedSubscript:@"fpr"];
    [v41 doubleValue];
    self->_facesProcessedRatio = v42;

    v43 = [v45 objectForKeyedSubscript:@"extc"];
    self->_numberOfAssetsInExtendedCuration = [v43 unsignedIntegerValue];

    v44 = [v45 objectForKeyedSubscript:@"hasl"];
    self->_happensAtSensitiveLocation = [v44 BOOLValue];
  }
}

- (PGGraphMomentNode)initWithLabel:(id)a3 domain:(unsigned __int16)a4 properties:(id)a5
{
  v6 = a5;
  v7 = [(PGGraphNode *)self init];
  v8 = v7;
  if (v7)
  {
    [(PGGraphMomentNode *)v7 setLocalProperties:v6];
  }

  return v8;
}

- (id)initFromMoment:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PGGraphMomentNode;
  v5 = [(PGGraphNode *)&v8 init];
  if (v5)
  {
    v6 = [objc_opt_class() propertiesWithMoment:v4];
    [(PGGraphMomentNode *)v5 setLocalProperties:v6];
  }

  return v5;
}

+ (MARelation)momentWithOnlySharedAssetsOfMoment
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = +[PGGraphMomentNode filter];
  v8 = @"sharingComposition";
  v9[0] = &unk_2844844E8;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v4 = [v2 filterBySettingProperties:v3];

  v5 = [v4 relation];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (MARelation)momentWithOnlyPrivateAssetsOfMoment
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = +[PGGraphMomentNode filter];
  v8 = @"sharingComposition";
  v9[0] = &unk_284484500;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v4 = [v2 filterBySettingProperties:v3];

  v5 = [v4 relation];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (MARelation)momentWithPrivateAndSharedAssetsOfMoment
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = +[PGGraphMomentNode filter];
  v8 = @"sharingComposition";
  v9[0] = &unk_284484518;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v4 = [v2 filterBySettingProperties:v3];

  v5 = [v4 relation];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (MARelation)momentWithSharedAssetsOfMoment
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = +[PGGraphMomentNode filter];
  v9 = @"sharingComposition";
  v3 = [objc_alloc(MEMORY[0x277D22B98]) initWithComparator:2 value:&unk_284484500];
  v10[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v5 = [v2 filterBySettingProperties:v4];

  v6 = [v5 relation];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (MARelation)momentWithPrivateAssetsOfMoment
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = +[PGGraphMomentNode filter];
  v9 = @"sharingComposition";
  v3 = [objc_alloc(MEMORY[0x277D22B98]) initWithComparator:2 value:&unk_2844844E8];
  v10[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v5 = [v2 filterBySettingProperties:v4];

  v6 = [v5 relation];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (MARelation)highlightOfMoment
{
  v2 = +[PGGraphContainsEdge filter];
  v3 = [v2 inRelation];

  return v3;
}

+ (MARelation)cityOfMoment
{
  v14[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = [a1 filter];
  v4 = [v3 relation];
  v5 = +[PGGraphLocationEdge filter];
  v6 = [v5 outRelation];
  v7 = [v6 transitiveClosure];
  v14[1] = v7;
  v8 = +[PGGraphLocationCityNode filter];
  v9 = [v8 relation];
  v14[2] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
  v11 = [v2 chain:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (MARelation)socialGroupInMoment
{
  v2 = +[PGGraphSocialGroupEdge filter];
  v3 = [v2 outRelation];

  return v3;
}

+ (MARelation)meaningHierarchyOfMoment
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = [a1 meaningOfMoment];
  v10[0] = v3;
  v4 = +[PGGraphMeaningNode parentMeaningOfMeaning];
  v5 = [v4 optionalStep];
  v10[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v7 = [v2 chain:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (MARelation)celebratedHolidayOfMoment
{
  v2 = +[PGGraphCelebratingEdge filter];
  v3 = [v2 outRelation];

  return v3;
}

+ (MARelation)personActivityMeaningOfMoment
{
  v2 = +[PGGraphPersonActivityMeaningEdge filter];
  v3 = [v2 outRelation];

  return v3;
}

+ (id)reliableMeaningOfMoment
{
  v2 = +[PGGraphMeaningEdge reliableFilter];
  v3 = [v2 outRelation];

  return v3;
}

+ (id)alternativeMeaningOfMoment
{
  v2 = +[(PGGraphMeaningEdge *)PGGraphAlternativeMeaningEdge];
  v3 = [v2 outRelation];

  return v3;
}

+ (MARelation)meaningOfMoment
{
  v2 = +[PGGraphMeaningEdge filter];
  v3 = [v2 outRelation];

  return v3;
}

+ (MARelation)businessOfMoment
{
  v2 = +[PGGraphPlaceBusinessEdge filter];
  v3 = [v2 outRelation];

  return v3;
}

+ (MARelation)petPresentInMoment
{
  v2 = +[PGGraphPetPresentEdge filter];
  v3 = [v2 inRelation];

  return v3;
}

+ (MARelation)mobilityOfMoment
{
  v2 = +[PGGraphMobilityEdge filter];
  v3 = [v2 outRelation];

  return v3;
}

+ (MARelation)significantPartOfDayOfMoment
{
  v2 = +[PGGraphPartOfDayEdge significantFilter];
  v3 = [v2 outRelation];

  return v3;
}

+ (MARelation)partOfDayOfMoment
{
  v2 = +[PGGraphPartOfDayEdge filter];
  v3 = [v2 outRelation];

  return v3;
}

+ (MARelation)remoteAddressOfMoment
{
  v2 = +[PGGraphRemoteAddressEdge filter];
  v3 = [v2 outRelation];

  return v3;
}

+ (MARelation)addressOfMoment
{
  v2 = +[PGGraphAddressEdge filter];
  v3 = [v2 outRelation];

  return v3;
}

+ (MARelation)frequentLocationOfMoment
{
  v2 = +[PGGraphFrequentLocationInEdge filter];
  v3 = [v2 outRelation];

  return v3;
}

+ (MARelation)featureOfMoment
{
  v2 = +[PGGraphMomentFeaturesEdge filter];
  v3 = [v2 outRelation];

  return v3;
}

+ (MARelation)memoryOfMoment
{
  v2 = +[PGGraphMemoryContainsAssetsFromEdge filter];
  v3 = [v2 inRelation];

  return v3;
}

+ (MARelation)personPhysicallyPresentInMoment
{
  v15[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = +[PGGraphPeoplePersonIsAroundEdge filter];
  v4 = [v3 inRelation];
  v15[0] = v4;
  v5 = +[PGGraphPersonProximityEdge filter];
  v6 = [v5 inRelation];
  v15[1] = v6;
  v7 = +[PGGraphPersonPresentEdge filter];
  v8 = [v7 inRelation];
  v15[2] = v8;
  v9 = +[PGGraphAuthorEdge filter];
  v10 = [v9 inRelation];
  v15[3] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:4];
  v12 = [v2 union:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (MARelation)authorOfMoment
{
  v2 = +[PGGraphAuthorEdge filter];
  v3 = [v2 inRelation];

  return v3;
}

+ (MARelation)anniversaryPersonInMoment
{
  v2 = +[PGGraphAnniversaryEventEdge filter];
  v3 = [v2 outRelation];

  return v3;
}

+ (MARelation)birthdayPersonInMoment
{
  v2 = +[PGGraphBirthdayEventEdge filter];
  v3 = [v2 outRelation];

  return v3;
}

+ (MARelation)personExcludingMeInMoment
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = +[PGGraphPersonPresentEdge filter];
  v4 = [v3 inRelation];
  v11[0] = v4;
  v5 = +[PGGraphPersonNode filterExcludingMe];
  v6 = [v5 relation];
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v8 = [v2 chain:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (MARelation)personInProximityInMoment
{
  v2 = +[PGGraphPersonProximityEdge filter];
  v3 = [v2 inRelation];

  return v3;
}

+ (MARelation)consolidatedPersonPresentInAssets
{
  v2 = +[PGGraphBasePresentEdge consolidatedPresentInAssetsFilter];
  v3 = [v2 inRelation];

  return v3;
}

+ (MARelation)consolidatedPersonInMoment
{
  v2 = +[PGGraphBasePresentEdge consolidatedFilter];
  v3 = [v2 inRelation];

  return v3;
}

+ (MARelation)personInMoment
{
  v2 = +[PGGraphPersonPresentEdge filter];
  v3 = [v2 inRelation];

  return v3;
}

+ (MARelation)publicEventOfMoment
{
  v2 = +[PGGraphPublicEventEdge filter];
  v3 = [v2 outRelation];

  return v3;
}

+ (id)specialPOIOfMoment
{
  v2 = +[PGGraphPOIEdge filterSpecial];
  v3 = [v2 outRelation];

  return v3;
}

+ (id)improvedPOIOfMoment
{
  v2 = +[PGGraphPOIEdge filterImproved];
  v3 = [v2 outRelation];

  return v3;
}

+ (MARelation)poiWithNonzeroConfidenceOfMoment
{
  v2 = [PGGraphPOIEdge filterAboveConfidence:0.0];
  v3 = [v2 outRelation];

  return v3;
}

+ (MARelation)poiOfMoment
{
  v2 = +[PGGraphPOIEdge filter];
  v3 = [v2 outRelation];

  return v3;
}

+ (MARelation)roiWithNonzeroConfidenceOfMoment
{
  v2 = [PGGraphROIEdge filterAboveConfidence:0.0];
  v3 = [v2 outRelation];

  return v3;
}

+ (MARelation)roiOfMoment
{
  v2 = +[PGGraphROIEdge filter];
  v3 = [v2 outRelation];

  return v3;
}

+ (MARelation)weekendOfMoment
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = +[PGGraphPartOfWeekEdge filter];
  v4 = [v3 outRelation];
  v11[0] = v4;
  v5 = +[PGGraphWeekendNode filter];
  v6 = [v5 relation];
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v8 = [v2 chain:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (MARelation)weekdayOfMoment
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = +[PGGraphPartOfWeekEdge filter];
  v4 = [v3 outRelation];
  v11[0] = v4;
  v5 = +[PGGraphWeekdayNode filter];
  v6 = [v5 relation];
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v8 = [v2 chain:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (MARelation)reliableSceneOfMoment
{
  v2 = +[PGGraphSceneEdge isReliableFilter];
  v3 = [v2 outRelation];

  return v3;
}

+ (MARelation)sceneOfMoment
{
  v2 = +[PGGraphSceneEdge filter];
  v3 = [v2 outRelation];

  return v3;
}

+ (MARelation)dateOfMoment
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = +[PGGraphDateEdge filter];
  v4 = [v3 outRelation];
  v11[0] = v4;
  v5 = +[PGGraphDateNode filter];
  v6 = [v5 relation];
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v8 = [v2 chain:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (MARelation)previousMomentOfMoment
{
  v2 = +[PGGraphMomentNextEdge filter];
  v3 = [v2 inRelation];

  return v3;
}

+ (MARelation)nextMomentOfMoment
{
  v2 = +[PGGraphMomentNextEdge filter];
  v3 = [v2 outRelation];

  return v3;
}

+ (MARelation)preciseAddressOfMoment
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = +[PGGraphMomentNode addressOfMoment];
  v10[0] = v3;
  v4 = +[PGGraphAddressNode preciseFilter];
  v5 = [v4 relation];
  v10[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v7 = [v2 chain:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)inclusivePathToTargetNodeDomain:(unsigned __int16)a3 withName:(id)a4
{
  v4 = a3;
  v15 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (v4 == 102)
  {
    v7 = &stru_2843F5C58;
    if (v5)
    {
      v7 = v5;
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"(:Moment)<-[:CONTAINS]-(%@:Highlight)", v7];
    goto LABEL_9;
  }

  if (v4 == 100)
  {
    v6 = &stru_2843F5C58;
    if (v5)
    {
      v6 = v5;
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"(%@:Moment)", v6];
    v8 = LABEL_9:;
    goto LABEL_13;
  }

  v9 = +[PGLogging sharedLogging];
  v10 = [v9 loggingConnection];

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v14 = v4;
    _os_log_error_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_ERROR, "Unsupported target event domain: %u", buf, 8u);
  }

  v8 = 0;
LABEL_13:

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)inclusivePathFromTargetNodeDomain:(unsigned __int16)a3 withName:(id)a4
{
  v4 = a3;
  v15 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (v4 == 102)
  {
    v7 = &stru_2843F5C58;
    if (v5)
    {
      v7 = v5;
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"(%@:Highlight)-[:CONTAINS]->(:Moment)", v7];
    goto LABEL_9;
  }

  if (v4 == 100)
  {
    v6 = &stru_2843F5C58;
    if (v5)
    {
      v6 = v5;
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"(%@:Moment)", v6];
    v8 = LABEL_9:;
    goto LABEL_13;
  }

  v9 = +[PGLogging sharedLogging];
  v10 = [v9 loggingConnection];

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v14 = v4;
    _os_log_error_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_ERROR, "Unsupported target event domain: %u", buf, 8u);
  }

  v8 = 0;
LABEL_13:

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)pathToTargetNodeDomain:(unsigned __int16)a3
{
  v9 = *MEMORY[0x277D85DE8];
  if (a3 == 100)
  {
    result = &stru_2843F5C58;
  }

  else
  {
    v3 = a3;
    if (a3 == 102)
    {
      result = @"<-[:CONTAINS]-(:Highlight)";
    }

    else
    {
      v5 = +[PGLogging sharedLogging];
      v6 = [v5 loggingConnection];

      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8[0] = 67109120;
        v8[1] = v3;
        _os_log_error_impl(&dword_22F0FC000, v6, OS_LOG_TYPE_ERROR, "Unsupported target event domain: %u", v8, 8u);
      }

      result = 0;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)pathFromTargetNodeDomain:(unsigned __int16)a3
{
  v9 = *MEMORY[0x277D85DE8];
  if (a3 == 100)
  {
    result = &stru_2843F5C58;
  }

  else
  {
    v3 = a3;
    if (a3 == 102)
    {
      result = @"(:Highlight)-[:CONTAINS]->";
    }

    else
    {
      v5 = +[PGLogging sharedLogging];
      v6 = [v5 loggingConnection];

      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8[0] = 67109120;
        v8[1] = v3;
        _os_log_error_impl(&dword_22F0FC000, v6, OS_LOG_TYPE_ERROR, "Unsupported target event domain: %u", v8, 8u);
      }

      result = 0;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)firstAndLastMomentNodesInMomentNodes:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (!v4)
  {
    v7 = 0;
    v6 = 0;
    v13 = MEMORY[0x277CBEBF8];
    goto LABEL_17;
  }

  v5 = v4;
  v6 = 0;
  v7 = 0;
  v8 = *v17;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v17 != v8)
      {
        objc_enumerationMutation(v3);
      }

      v10 = *(*(&v16 + 1) + 8 * i);
      if (v6)
      {
        v11 = [*(*(&v16 + 1) + 8 * i) earlierMomentNode:v6];

        v6 = v11;
        if (v7)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v6 = v10;
        if (v7)
        {
LABEL_8:
          v12 = [v10 laterMomentNode:v7];

          v7 = v12;
          continue;
        }
      }

      v7 = v10;
    }

    v5 = [v3 countByEnumeratingWithState:&v16 objects:v21 count:16];
  }

  while (v5);
  v13 = MEMORY[0x277CBEBF8];
  if (v6 && v7)
  {
    v20[0] = v6;
    v20[1] = v7;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  }

LABEL_17:

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (void)setNumberOfAssets:(unint64_t)a3 onMomentNodeForIdentifier:(unint64_t)a4 inGraph:(id)a5
{
  v7 = MEMORY[0x277CCABB0];
  v8 = a5;
  v9 = [v7 numberWithUnsignedInteger:a3];
  [v8 persistModelProperty:v9 forKey:@"cnt" forNodeWithIdentifier:a4];
}

+ (void)setUniversalEndDate:(id)a3 onMomentNodeForIdentifier:(unint64_t)a4 inGraph:(id)a5
{
  v7 = a5;
  [a3 timeIntervalSince1970];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  [v7 persistModelProperty:v8 forKey:@"utce" forNodeWithIdentifier:a4];
}

+ (void)setUniversalStartDate:(id)a3 onMomentNodeForIdentifier:(unint64_t)a4 inGraph:(id)a5
{
  v7 = a5;
  [a3 timeIntervalSince1970];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  [v7 persistModelProperty:v8 forKey:@"utcs" forNodeWithIdentifier:a4];
}

+ (void)setLocalEndDate:(id)a3 onMomentNodeForIdentifier:(unint64_t)a4 inGraph:(id)a5
{
  v7 = a5;
  [a3 timeIntervalSince1970];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  [v7 persistModelProperty:v8 forKey:@"tze" forNodeWithIdentifier:a4];
}

+ (void)setLocalStartDate:(id)a3 onMomentNodeForIdentifier:(unint64_t)a4 inGraph:(id)a5
{
  v7 = a5;
  [a3 timeIntervalSince1970];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  [v7 persistModelProperty:v8 forKey:@"tzs" forNodeWithIdentifier:a4];
}

+ (id)contentBasedPropertiesWithMoment:(id)a3
{
  v32[18] = *MEMORY[0x277D85DE8];
  v31[0] = @"clipfeature";
  v3 = a3;
  v30 = [v3 encodedCLIPFeatureVector];
  v32[0] = v30;
  v31[1] = @"cnt";
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "numberOfItems")}];
  v32[1] = v29;
  v31[2] = @"nawp";
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "numberOfItemsWithPersons")}];
  v32[2] = v28;
  v31[3] = @"intng";
  v27 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "isInteresting")}];
  v32[3] = v27;
  v31[4] = @"intngaj";
  v26 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "isInterestingWithAlternateJunking")}];
  v32[4] = v26;
  v31[5] = @"sintng";
  v25 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "isSmartInteresting")}];
  v32[5] = v25;
  v31[6] = @"cntsc";
  v4 = MEMORY[0x277CCABB0];
  [v3 contentScore];
  v24 = [v4 numberWithDouble:?];
  v32[6] = v24;
  v31[7] = @"cbsa";
  v23 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "containsBetterScoringAsset")}];
  v32[7] = v23;
  v31[8] = @"hghthnmprv";
  v22 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "hasHigherThanImprovedAssets")}];
  v32[8] = v22;
  v31[9] = @"asswis";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "hasAssetsWithInterestingScenes")}];
  v32[9] = v5;
  v31[10] = @"cnja";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "containsNonJunkAssets")}];
  v32[10] = v6;
  v31[11] = @"spr";
  v7 = MEMORY[0x277CCABB0];
  [v3 scenesProcessedRatio];
  v8 = [v7 numberWithDouble:?];
  v32[11] = v8;
  v31[12] = @"fpr";
  v9 = MEMORY[0x277CCABB0];
  [v3 facesProcessedRatio];
  v10 = [v9 numberWithDouble:?];
  v32[12] = v10;
  v31[13] = @"extc";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "numberOfAssetsInExtendedCuration")}];
  v32[13] = v11;
  v31[14] = @"sharingComposition";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v3, "sharingComposition")}];
  v32[14] = v12;
  v31[15] = @"hasl";
  v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "happensAtSensitiveLocation")}];
  v32[15] = v13;
  v31[16] = @"tnop";
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "totalNumberOfPersons")}];
  v32[16] = v14;
  v31[17] = @"inhbtscr";
  v15 = MEMORY[0x277CCABB0];
  [v3 inhabitationScore];
  v17 = v16;

  v18 = [v15 numberWithDouble:v17];
  v32[17] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:18];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)timeBasedPropertiesWithMoment:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (timeBasedPropertiesWithMoment__onceToken != -1)
  {
    dispatch_once(&timeBasedPropertiesWithMoment__onceToken, &__block_literal_global_59759);
  }

  v4 = [v3 localStartDate];
  if (v4)
  {
    v21 = [timeBasedPropertiesWithMoment__momentNameDateFormatter stringFromDate:v4];
    v24[0] = v21;
    v23[0] = @"name";
    v23[1] = @"utcs";
    v5 = MEMORY[0x277CCABB0];
    v22 = [v3 universalStartDate];
    [v22 timeIntervalSince1970];
    v6 = [v5 numberWithDouble:?];
    v24[1] = v6;
    v23[2] = @"utce";
    v7 = MEMORY[0x277CCABB0];
    v8 = [v3 universalEndDate];
    [v8 timeIntervalSince1970];
    v9 = [v7 numberWithDouble:?];
    v24[2] = v9;
    v23[3] = @"tzs";
    v10 = MEMORY[0x277CCABB0];
    v11 = [v3 localStartDate];
    [v11 timeIntervalSince1970];
    v12 = [v10 numberWithDouble:?];
    v24[3] = v12;
    v23[4] = @"tze";
    v13 = MEMORY[0x277CCABB0];
    v14 = [v3 localEndDate];
    [v14 timeIntervalSince1970];
    v15 = [v13 numberWithDouble:?];
    v24[4] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:5];

    v17 = v21;
  }

  else
  {
    v18 = +[PGLogging sharedLogging];
    v17 = [v18 loggingConnection];

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v3;
      _os_log_error_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_ERROR, "Cannot insert moment %@: localStartDate returned nil", buf, 0xCu);
    }

    v16 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v16;
}

void __51__PGGraphMomentNode_timeBasedPropertiesWithMoment___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = timeBasedPropertiesWithMoment__momentNameDateFormatter;
  timeBasedPropertiesWithMoment__momentNameDateFormatter = v0;

  [timeBasedPropertiesWithMoment__momentNameDateFormatter setDateFormat:@"yyyy-MM-dd HH"];
  v2 = [MEMORY[0x277CBEBB0] timeZoneWithAbbreviation:@"GMT"];
  [timeBasedPropertiesWithMoment__momentNameDateFormatter setTimeZone:v2];
}

+ (id)propertiesWithMoment:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 uuid];
  if (!v5)
  {
    v6 = [MEMORY[0x277CCAD78] UUID];
    v5 = [v6 UUIDString];
  }

  v13 = @"lclid";
  v14[0] = v5;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v8 = [v7 mutableCopy];

  v9 = [a1 timeBasedPropertiesWithMoment:v4];
  [v8 addEntriesFromDictionary:v9];

  v10 = [a1 contentBasedPropertiesWithMoment:v4];

  [v8 addEntriesFromDictionary:v10];
  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (int64_t)breakoutOfRoutineTypeWithNeighborScore:(double)a3
{
  if (a3 >= 0.6)
  {
    return 2;
  }

  else
  {
    return a3 >= 0.43;
  }
}

+ (id)contentScoreSortDescriptors
{
  v8[3] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"contentScore" ascending:0];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalStartDate" ascending:{1, v2}];
  v8[1] = v3;
  v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"UUID" ascending:1];
  v8[2] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)filterEnoughFacesProcessed
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = +[PGGraphMomentNode filter];
  v8 = @"fpr";
  v3 = [objc_alloc(MEMORY[0x277D22B98]) initWithComparator:6 value:&unk_2844871C8];
  v9[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v2 filterBySettingProperties:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)filterEnoughScenesProcessed
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = +[PGGraphMomentNode filter];
  v8 = @"spr";
  v3 = [objc_alloc(MEMORY[0x277D22B98]) initWithComparator:6 value:&unk_2844871C8];
  v9[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v2 filterBySettingProperties:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)filterHappeningAtSensitiveLocation
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = +[PGGraphMomentNode filter];
  v7 = @"hasl";
  v8[0] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [v2 filterBySettingProperties:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)filterWithUniversalDateInterval:(id)a3
{
  v22[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 startDate];
  [v4 timeIntervalSince1970];
  v6 = v5;

  v7 = [v3 endDate];

  [v7 timeIntervalSince1970];
  v9 = v8;

  v10 = objc_alloc(MEMORY[0x277D22B98]);
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
  v12 = [v10 initWithComparator:4 value:v11];

  v13 = objc_alloc(MEMORY[0x277D22B98]);
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
  v15 = [v13 initWithComparator:6 value:v14];

  v16 = objc_alloc(MEMORY[0x277D22C78]);
  v21[0] = @"utcs";
  v21[1] = @"utce";
  v22[0] = v12;
  v22[1] = v15;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v18 = [v16 initWithLabel:@"Moment" domain:100 properties:v17];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)filterWithLocalDateInterval:(id)a3
{
  v22[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 startDate];
  [v4 timeIntervalSince1970];
  v6 = v5;

  v7 = [v3 endDate];

  [v7 timeIntervalSince1970];
  v9 = v8;

  v10 = objc_alloc(MEMORY[0x277D22B98]);
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
  v12 = [v10 initWithComparator:4 value:v11];

  v13 = objc_alloc(MEMORY[0x277D22B98]);
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
  v15 = [v13 initWithComparator:6 value:v14];

  v16 = objc_alloc(MEMORY[0x277D22C78]);
  v21[0] = @"tzs";
  v21[1] = @"tze";
  v22[0] = v12;
  v22[1] = v15;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v18 = [v16 initWithLabel:@"Moment" domain:100 properties:v17];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)filterWithTotalNumberOfPersonsGreaterThanOrEqualTo:(unint64_t)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [a1 filter];
  v12 = @"tnop";
  v5 = objc_alloc(MEMORY[0x277D22B98]);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v7 = [v5 initWithComparator:6 value:v6];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v4 filterBySettingProperties:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)filterWithUUID:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 filter];
  v10 = @"lclid";
  v11[0] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = [v5 filterBySettingProperties:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)filterWithUUIDs:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 filter];
  v10 = @"lclid";
  v11[0] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = [v5 filterBySettingProperties:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)smartInterestingFilter
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D22C78]);
  v7 = @"sintng";
  v8[0] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [v2 initWithLabel:@"Moment" domain:100 properties:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)interestingWithAlternateJunkingFilter
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D22C78]);
  v7 = @"intngaj";
  v8[0] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [v2 initWithLabel:@"Moment" domain:100 properties:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)interestingFilter
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D22C78]);
  v7 = @"intng";
  v8[0] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [v2 initWithLabel:@"Moment" domain:100 properties:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (MANodeFilter)filterEncodedCLIPFeatureVectorNotEmpty
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = +[PGGraphMomentNode filter];
  v8 = @"clipfeature";
  v3 = [objc_alloc(MEMORY[0x277D22B98]) initWithComparator:2 value:&stru_2843F5C58];
  v9[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v2 filterBySettingProperties:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"Moment" domain:100];

  return v2;
}

- (double)graphScore
{
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __40__PGGraphMomentNode_Scoring__graphScore__block_invoke;
  v51[3] = &unk_278887D70;
  v51[4] = &v52;
  [(PGGraphMomentNode *)self enumeratePersonNodesUsingBlock:v51];
  v3 = v53[3];
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v4 = [(PGGraphMomentNode *)self collection];
  v5 = [v4 addressNodes];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __40__PGGraphMomentNode_Scoring__graphScore__block_invoke_2;
  v38[3] = &unk_278887D98;
  v38[4] = &v47;
  v38[5] = &v43;
  v38[6] = &v39;
  [v5 enumerateNodesUsingBlock:v38];
  v28 = v3;

  v6 = v48[3];
  v7 = v44[3];
  v27 = v40[3];
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __40__PGGraphMomentNode_Scoring__graphScore__block_invoke_3;
  v29[3] = &unk_278887DC0;
  v29[4] = &v34;
  v29[5] = &v30;
  [(PGGraphMomentNode *)self enumerateDateNodesUsingBlock:v29];
  v8 = v35[3];
  v9 = v31[3];
  v10 = [(MANode *)self countOfEdgesWithLabel:@"CELEBRATING" domain:401];
  v11 = [(MANode *)self countOfEdgesWithLabel:0 domain:301];
  v12 = [(MANode *)self countOfEdgesWithLabel:@"SOCIALGROUP" domain:302];
  v13 = [(MANode *)self countOfEdgesWithLabel:0 domain:501];
  v14 = [(MANode *)self countOfEdgesWithLabel:0 domain:502];
  v15 = [(MANode *)self countOfEdgesWithLabel:@"SCENE" domain:600];
  v16 = 6;
  if (v28 < 6)
  {
    v16 = v28;
  }

  v17 = 3;
  if (v6 < 3)
  {
    v17 = v6;
  }

  v18 = v17 + v16;
  if (v7 >= 2)
  {
    v19 = 2;
  }

  else
  {
    v19 = v7;
  }

  v20 = 0.0;
  if (v27)
  {
    v21 = 1.0;
  }

  else
  {
    v21 = 0.0;
  }

  v22 = (v18 + v19) + v21;
  if (v8 >= 2)
  {
    v23 = 2;
  }

  else
  {
    v23 = v8;
  }

  v24 = v22 + v23;
  if (v9)
  {
    v20 = 1.0;
  }

  v25 = (v24 + v20 + fmin(v10, 1.0) + fmin(v11, 1.0) + fmin(v12, 1.0) + fmin(v13, 1.0) + fmin(v14, 1.0) + fmin(v15, 3.0)) / 23.0;
  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v52, 8);
  return v25;
}

void __40__PGGraphMomentNode_Scoring__graphScore__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (([v4 isMeNode] & 1) == 0)
  {
    [v4 personScore];
    *(*(*(a1 + 32) + 8) + 24) += (v3 * 0.5 + 0.5);
  }
}

void __40__PGGraphMomentNode_Scoring__graphScore__block_invoke_2(void *a1, void *a2)
{
  ++*(*(a1[4] + 8) + 24);
  v3 = a2;
  *(*(a1[5] + 8) + 24) += [v3 countOfEdgesWithLabel:@"AREA" domain:201];
  v4 = [v3 hasEdgeWithLabel:@"IS_HOME_WORK" domain:202];

  if (v4)
  {
    ++*(*(a1[6] + 8) + 24);
  }
}

uint64_t __40__PGGraphMomentNode_Scoring__graphScore__block_invoke_3(uint64_t a1, void *a2)
{
  ++*(*(*(a1 + 32) + 8) + 24);
  result = [a2 countOfEdgesWithLabel:@"HOLIDAY" domain:401];
  *(*(*(a1 + 40) + 8) + 24) += result;
  return result;
}

@end