@interface PGGraphMomentNodeCollection
+ (id)_interestingForMemoriesSubsetFromMomentNodes:(id)a3 inGraph:(id)a4;
+ (id)momentNodeAsCollectionByMomentUUIDForArrayOfMomentUUIDs:(id)a3 inGraph:(id)a4;
+ (id)momentNodeAsCollectionByMomentUUIDForMomentUUIDs:(id)a3 inGraph:(id)a4;
+ (id)momentNodeForUUID:(id)a3 inGraph:(id)a4;
+ (id)momentNodesForArrayOfUUIDs:(id)a3 inGraph:(id)a4;
+ (id)momentNodesForLocalDateInterval:(id)a3 inGraph:(id)a4;
+ (id)momentNodesForUUIDs:(id)a3 inGraph:(id)a4;
+ (id)momentNodesHappeningAtSensitiveLocationInGraph:(id)a3;
+ (id)momentNodesInGraph:(id)a3;
+ (id)momentNodesInUniversalDateInterval:(id)a3 inGraph:(id)a4;
+ (id)momentNodesInterestingWithAlternateJunkingInGraph:(id)a3;
+ (id)momentNodesWithEnoughFacesProcessedInGraph:(id)a3;
+ (id)momentNodesWithEnoughScenesProcessedInGraph:(id)a3;
- (BOOL)happensPartiallyAtHomeOrWorkOfPersonNodes:(id)a3;
- (NSDateInterval)localDateInterval;
- (NSDateInterval)universalDateInterval;
- (NSDictionary)numberOfAssetsByMomentUUID;
- (NSSet)localIdentifiers;
- (NSSet)localStartDates;
- (NSSet)universalDateIntervals;
- (NSSet)universalEndDates;
- (NSSet)universalStartDates;
- (NSSet)uuids;
- (PGGraphAddressNodeCollection)addressNodes;
- (PGGraphAddressNodeCollection)preciseAddressNodes;
- (PGGraphAddressNodeCollection)remoteAddressNodes;
- (PGGraphBusinessNodeCollection)businessNodes;
- (PGGraphDateNodeCollection)dateNodes;
- (PGGraphEntityNetSceneNodeCollection)searchConfidenceEntityNetSceneNodes;
- (PGGraphFeatureNodeCollection)featureNodes;
- (PGGraphFrequentLocationNodeCollection)frequentLocationNodes;
- (PGGraphHighlightNodeCollection)highlightNodes;
- (PGGraphHolidayNodeCollection)celebratedHolidayNodes;
- (PGGraphLocationCityNodeCollection)cityNodes;
- (PGGraphMeaningNodeCollection)alternativeMeaningNodes;
- (PGGraphMeaningNodeCollection)meaningNodes;
- (PGGraphMeaningNodeCollection)reliableMeaningNodes;
- (PGGraphMemoryNodeCollection)memoryNodes;
- (PGGraphMobilityNodeCollection)mobilityNodes;
- (PGGraphMomentNodeCollection)interestingForMemoriesSubset;
- (PGGraphMomentNodeCollection)interestingSubset;
- (PGGraphMomentNodeCollection)interestingWithAlternateJunkingSubset;
- (PGGraphMomentNodeCollection)nextMomentNodes;
- (PGGraphMomentNodeCollection)previousMomentNodes;
- (PGGraphMomentNodeCollection)smartInterestingSubset;
- (PGGraphMomentNodeCollection)subsetHappeningAtSensitiveLocation;
- (PGGraphMomentNodeCollection)subsetWithBothPrivateAndSharedAssets;
- (PGGraphMomentNodeCollection)subsetWithOnlyPrivateAssets;
- (PGGraphMomentNodeCollection)subsetWithOnlySharedAssets;
- (PGGraphMomentNodeCollection)subsetWithPrivateAssets;
- (PGGraphMomentNodeCollection)subsetWithSharedAssets;
- (PGGraphPOINodeCollection)improvedPOINodes;
- (PGGraphPOINodeCollection)poiNodes;
- (PGGraphPOINodeCollection)poiNodesWithNonzeroConfidence;
- (PGGraphPOINodeCollection)specialPOINodes;
- (PGGraphPartOfWeekNodeCollection)partOfWeekNodes;
- (PGGraphPersonNodeCollection)anniversaryPersonNodes;
- (PGGraphPersonNodeCollection)authorNodes;
- (PGGraphPersonNodeCollection)birthdayPersonNodes;
- (PGGraphPersonNodeCollection)consolidatedPersonNodes;
- (PGGraphPersonNodeCollection)consolidatedPersonNodesPresentInAssets;
- (PGGraphPersonNodeCollection)personNodes;
- (PGGraphPersonNodeCollection)personNodesInProximity;
- (PGGraphPersonNodeCollection)presentPersonNodes;
- (PGGraphPetNodeCollection)petNodes;
- (PGGraphPublicEventNodeCollection)publicEventNodes;
- (PGGraphROINodeCollection)beachRoiNodes;
- (PGGraphROINodeCollection)mountainRoiNodes;
- (PGGraphROINodeCollection)natureRoiNodes;
- (PGGraphROINodeCollection)roiNodes;
- (PGGraphROINodeCollection)urbanRoiNodes;
- (PGGraphROINodeCollection)waterRoiNodes;
- (PGGraphSceneNodeCollection)highConfidenceSceneNodes;
- (PGGraphSceneNodeCollection)reliableSceneNodes;
- (PGGraphSceneNodeCollection)sceneNodes;
- (PGGraphSceneNodeCollection)searchConfidenceSceneNodes;
- (PGGraphSocialGroupNodeCollection)socialGroupNodes;
- (PGGraphWeekdayNodeCollection)weekdayNodes;
- (PGGraphWeekendNodeCollection)weekendNodes;
- (double)averageContentScore;
- (id)firstAndLastMomentNodes;
- (id)momentNodeAsCollectionByMomentUUID;
- (id)momentNodeByMomentUUID;
- (id)momentNodesWithContentScoreAbove:(double)a3;
- (id)momentNodesWithMinimumNumberOfExtendedCuratedAssets:(unint64_t)a3;
- (id)momentNodesWithMinimumNumberOfPersons:(unint64_t)a3;
- (id)momentUUIDByMomentNodeAsCollection;
- (id)personActivityMeaningNodes;
- (id)poiNodesForLabel:(id)a3;
- (id)subsetForLocalDateInterval:(id)a3;
- (id)subsetWithEnoughFacesProcessed;
- (id)subsetWithEnoughScenesProcessed;
- (id)subsetWithTotalNumberOfPersonsGreaterThanOrEqualTo:(unint64_t)a3;
- (unint64_t)numberOfAssets;
- (unint64_t)numberOfAssetsInExtendedCuration;
- (unint64_t)numberOfAssetsWithPersons;
- (void)enumerateContentScoresUsingBlock:(id)a3;
- (void)enumerateLocalEndDatesUsingBlock:(id)a3;
- (void)enumerateLocalStartDatesUsingBlock:(id)a3;
- (void)enumerateNumberOfAssetsInExtendedCurationUsingBlock:(id)a3;
- (void)enumerateUUIDsUsingBlock:(id)a3;
- (void)enumerateUniversalEndDatesUsingBlock:(id)a3;
- (void)enumerateUniversalStartDatesUsingBlock:(id)a3;
@end

@implementation PGGraphMomentNodeCollection

- (NSSet)universalDateIntervals
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__PGGraphMomentNodeCollection_universalDateIntervals__block_invoke;
  v6[3] = &unk_278887A68;
  v4 = v3;
  v7 = v4;
  [(MAElementCollection *)self enumerateIdentifiersAsCollectionsWithBlock:v6];

  return v4;
}

void __53__PGGraphMomentNodeCollection_universalDateIntervals__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 universalDateInterval];
  [*(a1 + 32) addObject:v4];
}

- (PGGraphMomentNodeCollection)subsetHappeningAtSensitiveLocation
{
  v3 = +[PGGraphMomentNode filterHappeningAtSensitiveLocation];
  v4 = [(MANodeCollection *)self nodesMatchingFilter:v3];

  return v4;
}

- (PGGraphMomentNodeCollection)subsetWithOnlyPrivateAssets
{
  v3 = +[PGGraphMomentNode momentWithOnlyPrivateAssetsOfMoment];
  v4 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphMomentNodeCollection)subsetWithOnlySharedAssets
{
  v3 = +[PGGraphMomentNode momentWithOnlySharedAssetsOfMoment];
  v4 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphMomentNodeCollection)subsetWithBothPrivateAndSharedAssets
{
  v3 = +[PGGraphMomentNode momentWithPrivateAndSharedAssetsOfMoment];
  v4 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphMomentNodeCollection)subsetWithPrivateAssets
{
  v3 = +[PGGraphMomentNode momentWithPrivateAssetsOfMoment];
  v4 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphMomentNodeCollection)subsetWithSharedAssets
{
  v3 = +[PGGraphMomentNode momentWithSharedAssetsOfMoment];
  v4 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (id)subsetForLocalDateInterval:(id)a3
{
  v4 = [PGGraphMomentNode filterWithLocalDateInterval:a3];
  v5 = [v4 relation];
  v6 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v5];

  return v6;
}

- (BOOL)happensPartiallyAtHomeOrWorkOfPersonNodes:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(PGGraphMomentNodeCollection *)self preciseAddressNodes];
    v6 = [v4 homeOrWorkNodes];
    v7 = [v6 addressNodes];
    v8 = [v5 intersectsCollection:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)subsetWithTotalNumberOfPersonsGreaterThanOrEqualTo:(unint64_t)a3
{
  v4 = [PGGraphMomentNode filterWithTotalNumberOfPersonsGreaterThanOrEqualTo:a3];
  v5 = [v4 relation];
  v6 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v5];

  return v6;
}

- (id)momentNodesWithMinimumNumberOfExtendedCuratedAssets:(unint64_t)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = +[PGGraphMomentNode filter];
  v15 = @"extc";
  v6 = objc_alloc(MEMORY[0x277D22B98]);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v8 = [v6 initWithComparator:6 value:v7];
  v16[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v10 = [v5 filterBySettingProperties:v9];

  v11 = [v10 relation];
  v12 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)momentNodesWithMinimumNumberOfPersons:(unint64_t)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = +[PGGraphMomentNode filter];
  v15 = @"tnop";
  v6 = objc_alloc(MEMORY[0x277D22B98]);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v8 = [v6 initWithComparator:6 value:v7];
  v16[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v10 = [v5 filterBySettingProperties:v9];

  v11 = [v10 relation];
  v12 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)momentNodesWithContentScoreAbove:(double)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = +[PGGraphMomentNode filter];
  v15 = @"cntsc";
  v6 = objc_alloc(MEMORY[0x277D22B98]);
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v8 = [v6 initWithComparator:5 value:v7];
  v16[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v10 = [v5 filterBySettingProperties:v9];

  v11 = [v10 relation];
  v12 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)subsetWithEnoughFacesProcessed
{
  v3 = +[PGGraphMomentNode filterEnoughFacesProcessed];
  v4 = [(MANodeCollection *)self nodesMatchingFilter:v3];

  return v4;
}

- (id)subsetWithEnoughScenesProcessed
{
  v3 = +[PGGraphMomentNode filterEnoughScenesProcessed];
  v4 = [(MANodeCollection *)self nodesMatchingFilter:v3];

  return v4;
}

- (id)momentNodeByMomentUUID
{
  v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[MAElementCollection count](self, "count")}];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__PGGraphMomentNodeCollection_momentNodeByMomentUUID__block_invoke;
  v6[3] = &unk_278889290;
  v4 = v3;
  v7 = v4;
  [(MANodeCollection *)self enumerateNodesUsingBlock:v6];

  return v4;
}

void __53__PGGraphMomentNodeCollection_momentNodeByMomentUUID__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 uuid];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

- (id)momentUUIDByMomentNodeAsCollection
{
  v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[MAElementCollection count](self, "count")}];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__PGGraphMomentNodeCollection_momentUUIDByMomentNodeAsCollection__block_invoke;
  v8[3] = &unk_278887A40;
  v8[4] = self;
  v4 = v3;
  v9 = v4;
  [(MANodeCollection *)self enumerateStringPropertyValuesForKey:@"lclid" withBlock:v8];
  v5 = v9;
  v6 = v4;

  return v4;
}

void __65__PGGraphMomentNodeCollection_momentUUIDByMomentNodeAsCollection__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [PGGraphMomentNodeCollection alloc];
  v7 = [*(a1 + 32) graph];
  v8 = [objc_alloc(MEMORY[0x277D22BB0]) initWithElementIdentifier:a2];
  v9 = [(MAElementCollection *)v6 initWithGraph:v7 elementIdentifiers:v8];

  [*(a1 + 40) setObject:v5 forKeyedSubscript:v9];
}

- (id)momentNodeAsCollectionByMomentUUID
{
  v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[MAElementCollection count](self, "count")}];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__PGGraphMomentNodeCollection_momentNodeAsCollectionByMomentUUID__block_invoke;
  v8[3] = &unk_278887A40;
  v8[4] = self;
  v4 = v3;
  v9 = v4;
  [(MANodeCollection *)self enumerateStringPropertyValuesForKey:@"lclid" withBlock:v8];
  v5 = v9;
  v6 = v4;

  return v4;
}

void __65__PGGraphMomentNodeCollection_momentNodeAsCollectionByMomentUUID__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [PGGraphMomentNodeCollection alloc];
  v7 = [*(a1 + 32) graph];
  v8 = [objc_alloc(MEMORY[0x277D22BB0]) initWithElementIdentifier:a2];
  v9 = [(MAElementCollection *)v6 initWithGraph:v7 elementIdentifiers:v8];

  [*(a1 + 40) setObject:v9 forKeyedSubscript:v5];
}

- (double)averageContentScore
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__PGGraphMomentNodeCollection_averageContentScore__block_invoke;
  v6[3] = &unk_2788897F8;
  v6[4] = &v7;
  [(MANodeCollection *)self enumerateDoublePropertyValuesForKey:@"cntsc" withBlock:v6];
  v3 = [(MAElementCollection *)self count];
  v4 = v8[3];
  if (v3)
  {
    v4 = v4 / v3;
    v8[3] = v4;
  }

  _Block_object_dispose(&v7, 8);
  return v4;
}

double __50__PGGraphMomentNodeCollection_averageContentScore__block_invoke(uint64_t a1, double a2)
{
  v2 = *(*(a1 + 32) + 8);
  result = *(v2 + 24) + a2;
  *(v2 + 24) = result;
  return result;
}

- (unint64_t)numberOfAssetsWithPersons
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__PGGraphMomentNodeCollection_numberOfAssetsWithPersons__block_invoke;
  v4[3] = &unk_278889820;
  v4[4] = &v5;
  [(MANodeCollection *)self enumerateUnsignedIntegerPropertyValuesForKey:@"nawp" withBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (unint64_t)numberOfAssets
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__PGGraphMomentNodeCollection_numberOfAssets__block_invoke;
  v4[3] = &unk_278889820;
  v4[4] = &v5;
  [(MANodeCollection *)self enumerateUnsignedIntegerPropertyValuesForKey:@"cnt" withBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)enumerateNumberOfAssetsInExtendedCurationUsingBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __83__PGGraphMomentNodeCollection_enumerateNumberOfAssetsInExtendedCurationUsingBlock___block_invoke;
  v6[3] = &unk_278887A18;
  v7 = v4;
  v5 = v4;
  [(MANodeCollection *)self enumerateUnsignedIntegerPropertyValuesForKey:@"extc" withBlock:v6];
}

- (void)enumerateContentScoresUsingBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__PGGraphMomentNodeCollection_enumerateContentScoresUsingBlock___block_invoke;
  v6[3] = &unk_278888AA8;
  v7 = v4;
  v5 = v4;
  [(MANodeCollection *)self enumerateDoublePropertyValuesForKey:@"cntsc" withBlock:v6];
}

- (NSDateInterval)localDateInterval
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__59572;
  v22 = __Block_byref_object_dispose__59573;
  v23 = [MEMORY[0x277CBEAA8] distantFuture];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __48__PGGraphMomentNodeCollection_localDateInterval__block_invoke;
  v17[3] = &unk_2788879C8;
  v17[4] = &v18;
  [(PGGraphMomentNodeCollection *)self enumerateLocalStartDatesUsingBlock:v17];
  v3 = v19[5];
  v4 = [MEMORY[0x277CBEAA8] distantFuture];
  LOBYTE(v3) = [v3 isEqualToDate:v4];

  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__59572;
    v15 = __Block_byref_object_dispose__59573;
    v16 = [MEMORY[0x277CBEAA8] distantPast];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __48__PGGraphMomentNodeCollection_localDateInterval__block_invoke_2;
    v10[3] = &unk_2788879C8;
    v10[4] = &v11;
    [(PGGraphMomentNodeCollection *)self enumerateLocalEndDatesUsingBlock:v10];
    v6 = v12[5];
    v7 = [MEMORY[0x277CBEAA8] distantPast];
    LOBYTE(v6) = [v6 isEqualToDate:v7];

    if ((v6 & 1) != 0 || [v19[5] compare:v12[5]] == 1)
    {
      v5 = 0;
    }

    else
    {
      v8 = objc_alloc(MEMORY[0x277CCA970]);
      v5 = [v8 initWithStartDate:v19[5] endDate:v12[5]];
    }

    _Block_object_dispose(&v11, 8);
  }

  _Block_object_dispose(&v18, 8);

  return v5;
}

void __48__PGGraphMomentNodeCollection_localDateInterval__block_invoke(uint64_t a1)
{
  v2 = [*(*(*(a1 + 32) + 8) + 40) earlierDate:?];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __48__PGGraphMomentNodeCollection_localDateInterval__block_invoke_2(uint64_t a1)
{
  v2 = [*(*(*(a1 + 32) + 8) + 40) laterDate:?];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)enumerateLocalEndDatesUsingBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__PGGraphMomentNodeCollection_enumerateLocalEndDatesUsingBlock___block_invoke;
  v6[3] = &unk_278888AA8;
  v7 = v4;
  v5 = v4;
  [(MANodeCollection *)self enumerateDoublePropertyValuesForKey:@"tze" withBlock:v6];
}

void __64__PGGraphMomentNodeCollection_enumerateLocalEndDatesUsingBlock___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:?];
  (*(*(a1 + 32) + 16))();
}

- (void)enumerateLocalStartDatesUsingBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__PGGraphMomentNodeCollection_enumerateLocalStartDatesUsingBlock___block_invoke;
  v6[3] = &unk_278888AA8;
  v7 = v4;
  v5 = v4;
  [(MANodeCollection *)self enumerateDoublePropertyValuesForKey:@"tzs" withBlock:v6];
}

void __66__PGGraphMomentNodeCollection_enumerateLocalStartDatesUsingBlock___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:?];
  (*(*(a1 + 32) + 16))();
}

- (NSSet)localStartDates
{
  v3 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{-[MAElementCollection count](self, "count")}];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__PGGraphMomentNodeCollection_localStartDates__block_invoke;
  v6[3] = &unk_2788898A0;
  v4 = v3;
  v7 = v4;
  [(PGGraphMomentNodeCollection *)self enumerateLocalStartDatesUsingBlock:v6];

  return v4;
}

- (NSSet)universalEndDates
{
  v3 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{-[MAElementCollection count](self, "count")}];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__PGGraphMomentNodeCollection_universalEndDates__block_invoke;
  v6[3] = &unk_2788898A0;
  v4 = v3;
  v7 = v4;
  [(PGGraphMomentNodeCollection *)self enumerateUniversalEndDatesUsingBlock:v6];

  return v4;
}

- (NSSet)universalStartDates
{
  v3 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{-[MAElementCollection count](self, "count")}];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__PGGraphMomentNodeCollection_universalStartDates__block_invoke;
  v6[3] = &unk_2788898A0;
  v4 = v3;
  v7 = v4;
  [(PGGraphMomentNodeCollection *)self enumerateUniversalStartDatesUsingBlock:v6];

  return v4;
}

- (NSDateInterval)universalDateInterval
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__59572;
  v22 = __Block_byref_object_dispose__59573;
  v23 = [MEMORY[0x277CBEAA8] distantFuture];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __52__PGGraphMomentNodeCollection_universalDateInterval__block_invoke;
  v17[3] = &unk_2788879C8;
  v17[4] = &v18;
  [(PGGraphMomentNodeCollection *)self enumerateUniversalStartDatesUsingBlock:v17];
  v3 = v19[5];
  v4 = [MEMORY[0x277CBEAA8] distantFuture];
  LOBYTE(v3) = [v3 isEqualToDate:v4];

  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__59572;
    v15 = __Block_byref_object_dispose__59573;
    v16 = [MEMORY[0x277CBEAA8] distantPast];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __52__PGGraphMomentNodeCollection_universalDateInterval__block_invoke_2;
    v10[3] = &unk_2788879C8;
    v10[4] = &v11;
    [(PGGraphMomentNodeCollection *)self enumerateUniversalEndDatesUsingBlock:v10];
    v6 = v12[5];
    v7 = [MEMORY[0x277CBEAA8] distantPast];
    LOBYTE(v6) = [v6 isEqualToDate:v7];

    if ((v6 & 1) != 0 || [v19[5] compare:v12[5]] == 1)
    {
      v5 = 0;
    }

    else
    {
      v8 = objc_alloc(MEMORY[0x277CCA970]);
      v5 = [v8 initWithStartDate:v19[5] endDate:v12[5]];
    }

    _Block_object_dispose(&v11, 8);
  }

  _Block_object_dispose(&v18, 8);

  return v5;
}

void __52__PGGraphMomentNodeCollection_universalDateInterval__block_invoke(uint64_t a1)
{
  v2 = [*(*(*(a1 + 32) + 8) + 40) earlierDate:?];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __52__PGGraphMomentNodeCollection_universalDateInterval__block_invoke_2(uint64_t a1)
{
  v2 = [*(*(*(a1 + 32) + 8) + 40) laterDate:?];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)enumerateUniversalEndDatesUsingBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__PGGraphMomentNodeCollection_enumerateUniversalEndDatesUsingBlock___block_invoke;
  v6[3] = &unk_278888AA8;
  v7 = v4;
  v5 = v4;
  [(MANodeCollection *)self enumerateDoublePropertyValuesForKey:@"utce" withBlock:v6];
}

void __68__PGGraphMomentNodeCollection_enumerateUniversalEndDatesUsingBlock___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:?];
  (*(*(a1 + 32) + 16))();
}

- (void)enumerateUniversalStartDatesUsingBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__PGGraphMomentNodeCollection_enumerateUniversalStartDatesUsingBlock___block_invoke;
  v6[3] = &unk_278888AA8;
  v7 = v4;
  v5 = v4;
  [(MANodeCollection *)self enumerateDoublePropertyValuesForKey:@"utcs" withBlock:v6];
}

void __70__PGGraphMomentNodeCollection_enumerateUniversalStartDatesUsingBlock___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:?];
  (*(*(a1 + 32) + 16))();
}

- (id)firstAndLastMomentNodes
{
  v19[2] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__59572;
  v17 = __Block_byref_object_dispose__59573;
  v18 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__59572;
  v11 = __Block_byref_object_dispose__59573;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__PGGraphMomentNodeCollection_firstAndLastMomentNodes__block_invoke;
  v6[3] = &unk_2788879A0;
  v6[4] = &v13;
  v6[5] = &v7;
  [(MANodeCollection *)self enumerateNodesUsingBlock:v6];
  if (v14[5] && (v2 = v8[5]) != 0)
  {
    v19[0] = v14[5];
    v19[1] = v2;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

void __54__PGGraphMomentNodeCollection_firstAndLastMomentNodes__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v14 = v3;
  if (*(v4 + 40))
  {
    v5 = [v3 earlierMomentNode:?];
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  else
  {
    v8 = v3;
    v7 = *(v4 + 40);
    *(v4 + 40) = v8;
  }

  v9 = *(*(a1 + 40) + 8);
  if (*(v9 + 40))
  {
    v10 = [v14 laterMomentNode:?];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  else
  {
    v13 = v14;
    v12 = *(v9 + 40);
    *(v9 + 40) = v13;
  }
}

- (NSSet)uuids
{
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:{-[MAElementCollection count](self, "count")}];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__PGGraphMomentNodeCollection_uuids__block_invoke;
  v6[3] = &unk_27888B480;
  v4 = v3;
  v7 = v4;
  [(MANodeCollection *)self enumerateStringPropertyValuesForKey:@"lclid" withBlock:v6];

  return v4;
}

void __36__PGGraphMomentNodeCollection_uuids__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 length])
  {
    [*(a1 + 32) addObject:v4];
  }
}

- (NSSet)localIdentifiers
{
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:{-[MAElementCollection count](self, "count")}];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__PGGraphMomentNodeCollection_localIdentifiers__block_invoke;
  v6[3] = &unk_27888B480;
  v4 = v3;
  v7 = v4;
  [(PGGraphMomentNodeCollection *)self enumerateUUIDsUsingBlock:v6];

  return v4;
}

void __47__PGGraphMomentNodeCollection_localIdentifiers__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CD98F8] localIdentifierWithUUID:?];
  if ([v2 length])
  {
    [*(a1 + 32) addObject:v2];
  }
}

- (void)enumerateUUIDsUsingBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__PGGraphMomentNodeCollection_enumerateUUIDsUsingBlock___block_invoke;
  v6[3] = &unk_278887978;
  v7 = v4;
  v5 = v4;
  [(MANodeCollection *)self enumerateStringPropertyValuesForKey:@"lclid" withBlock:v6];
}

void __56__PGGraphMomentNodeCollection_enumerateUUIDsUsingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 length])
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (NSDictionary)numberOfAssetsByMomentUUID
{
  v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[MAElementCollection count](self, "count")}];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__PGGraphMomentNodeCollection_numberOfAssetsByMomentUUID__block_invoke;
  v14[3] = &unk_27888B480;
  v4 = v3;
  v15 = v4;
  [(PGGraphMomentNodeCollection *)self enumerateUUIDsUsingBlock:v14];
  v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[MAElementCollection count](self, "count")}];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__PGGraphMomentNodeCollection_numberOfAssetsByMomentUUID__block_invoke_2;
  v11[3] = &unk_278887950;
  v12 = v4;
  v6 = v5;
  v13 = v6;
  v7 = v4;
  [(MANodeCollection *)self enumerateUnsignedIntegerPropertyValuesForKey:@"cnt" withBlock:v11];
  v8 = v13;
  v9 = v6;

  return v6;
}

void __57__PGGraphMomentNodeCollection_numberOfAssetsByMomentUUID__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CCABB0];
  v6 = a3;
  v7 = [v5 numberWithUnsignedInteger:a2];
  [v4 setObject:v6 forKeyedSubscript:v7];
}

void __57__PGGraphMomentNodeCollection_numberOfAssetsByMomentUUID__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (v8)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [*(a1 + 40) setObject:v9 forKeyedSubscript:v8];
  }

  else
  {
    v10 = +[PGLogging sharedLogging];
    v11 = [v10 loggingConnection];

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 134217984;
      v14 = a2;
      _os_log_error_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_ERROR, "[PGGraphMomentNodeCollection] No UUID for node with element identifier %lu.", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (unint64_t)numberOfAssetsInExtendedCuration
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__PGGraphMomentNodeCollection_numberOfAssetsInExtendedCuration__block_invoke;
  v4[3] = &unk_278889820;
  v4[4] = &v5;
  [(MANodeCollection *)self enumerateUnsignedIntegerPropertyValuesForKey:@"extc" withBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (PGGraphMobilityNodeCollection)mobilityNodes
{
  v3 = +[PGGraphMomentNode mobilityOfMoment];
  v4 = [(MANodeCollection *)PGGraphMobilityNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphFrequentLocationNodeCollection)frequentLocationNodes
{
  v3 = +[PGGraphMomentNode frequentLocationOfMoment];
  v4 = [(MANodeCollection *)PGGraphFrequentLocationNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphHolidayNodeCollection)celebratedHolidayNodes
{
  v3 = +[PGGraphMomentNode celebratedHolidayOfMoment];
  v4 = [(MANodeCollection *)PGGraphHolidayNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (id)poiNodesForLabel:(id)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D22C90];
  v5 = a3;
  v6 = +[PGGraphMomentNode poiOfMoment];
  v14[0] = v6;
  v7 = [PGGraphPOINode filterWithLabel:v5];

  v8 = [v7 relation];
  v14[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v10 = [v4 chain:v9];

  v11 = [(MANodeCollection *)PGGraphPOINodeCollection nodesRelatedToNodes:self withRelation:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (PGGraphEntityNetSceneNodeCollection)searchConfidenceEntityNetSceneNodes
{
  v3 = +[(PGGraphSceneEdge *)PGGraphEntityNetSceneEdge];
  v4 = [v3 outRelation];
  v5 = [(MANodeCollection *)PGGraphEntityNetSceneNodeCollection nodesRelatedToNodes:self withRelation:v4];

  return v5;
}

- (PGGraphSceneNodeCollection)searchConfidenceSceneNodes
{
  v3 = +[PGGraphSceneEdge searchConfidenceAssetsFilter];
  v4 = [v3 outRelation];
  v5 = [(MANodeCollection *)PGGraphSceneNodeCollection nodesRelatedToNodes:self withRelation:v4];

  return v5;
}

- (PGGraphMomentNodeCollection)smartInterestingSubset
{
  v3 = +[PGGraphMomentNode smartInterestingFilter];
  v4 = [v3 relation];
  v5 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v4];

  return v5;
}

- (PGGraphMomentNodeCollection)interestingForMemoriesSubset
{
  v3 = objc_opt_class();
  v4 = [(MAElementCollection *)self graph];
  v5 = [v3 _interestingForMemoriesSubsetFromMomentNodes:self inGraph:v4];

  return v5;
}

- (PGGraphMomentNodeCollection)interestingWithAlternateJunkingSubset
{
  v3 = +[PGGraphMomentNode interestingWithAlternateJunkingFilter];
  v4 = [v3 relation];
  v5 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v4];

  return v5;
}

- (PGGraphMomentNodeCollection)interestingSubset
{
  v3 = +[PGGraphMomentNode interestingFilter];
  v4 = [v3 relation];
  v5 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v4];

  return v5;
}

- (PGGraphSceneNodeCollection)highConfidenceSceneNodes
{
  v3 = +[PGGraphSceneEdge highConfidenceAssetsFilter];
  v4 = [v3 outRelation];
  v5 = [(MANodeCollection *)PGGraphSceneNodeCollection nodesRelatedToNodes:self withRelation:v4];

  return v5;
}

- (PGGraphSceneNodeCollection)reliableSceneNodes
{
  v3 = +[PGGraphSceneEdge isReliableFilter];
  v4 = [v3 outRelation];
  v5 = [(MANodeCollection *)PGGraphSceneNodeCollection nodesRelatedToNodes:self withRelation:v4];

  return v5;
}

- (PGGraphSceneNodeCollection)sceneNodes
{
  v3 = +[PGGraphSceneEdge filter];
  v4 = [v3 outRelation];
  v5 = [(MANodeCollection *)PGGraphSceneNodeCollection nodesRelatedToNodes:self withRelation:v4];

  return v5;
}

- (PGGraphROINodeCollection)waterRoiNodes
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D22C90];
  v4 = +[PGGraphMomentNode roiOfMoment];
  v12[0] = v4;
  v5 = +[PGGraphROINode waterFilter];
  v6 = [v5 relation];
  v12[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v8 = [v3 chain:v7];

  v9 = [(MANodeCollection *)PGGraphROINodeCollection nodesRelatedToNodes:self withRelation:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (PGGraphROINodeCollection)urbanRoiNodes
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D22C90];
  v4 = +[PGGraphMomentNode roiOfMoment];
  v12[0] = v4;
  v5 = +[PGGraphROINode urbanFilter];
  v6 = [v5 relation];
  v12[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v8 = [v3 chain:v7];

  v9 = [(MANodeCollection *)PGGraphROINodeCollection nodesRelatedToNodes:self withRelation:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (PGGraphROINodeCollection)natureRoiNodes
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D22C90];
  v4 = +[PGGraphMomentNode roiOfMoment];
  v12[0] = v4;
  v5 = +[PGGraphROINode natureFilter];
  v6 = [v5 relation];
  v12[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v8 = [v3 chain:v7];

  v9 = [(MANodeCollection *)PGGraphROINodeCollection nodesRelatedToNodes:self withRelation:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (PGGraphROINodeCollection)mountainRoiNodes
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D22C90];
  v4 = +[PGGraphMomentNode roiOfMoment];
  v12[0] = v4;
  v5 = +[PGGraphROINode mountainFilter];
  v6 = [v5 relation];
  v12[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v8 = [v3 chain:v7];

  v9 = [(MANodeCollection *)PGGraphROINodeCollection nodesRelatedToNodes:self withRelation:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (PGGraphROINodeCollection)beachRoiNodes
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D22C90];
  v4 = +[PGGraphMomentNode roiOfMoment];
  v12[0] = v4;
  v5 = +[PGGraphROINode beachFilter];
  v6 = [v5 relation];
  v12[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v8 = [v3 chain:v7];

  v9 = [(MANodeCollection *)PGGraphROINodeCollection nodesRelatedToNodes:self withRelation:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (PGGraphROINodeCollection)roiNodes
{
  v3 = +[PGGraphMomentNode roiOfMoment];
  v4 = [(MANodeCollection *)PGGraphROINodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphPOINodeCollection)specialPOINodes
{
  v3 = +[PGGraphMomentNode specialPOIOfMoment];
  v4 = [(MANodeCollection *)PGGraphPOINodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphPOINodeCollection)poiNodesWithNonzeroConfidence
{
  v3 = +[PGGraphMomentNode poiWithNonzeroConfidenceOfMoment];
  v4 = [(MANodeCollection *)PGGraphPOINodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphPOINodeCollection)improvedPOINodes
{
  v3 = +[PGGraphMomentNode improvedPOIOfMoment];
  v4 = [(MANodeCollection *)PGGraphPOINodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphPOINodeCollection)poiNodes
{
  v3 = +[PGGraphMomentNode poiOfMoment];
  v4 = [(MANodeCollection *)PGGraphPOINodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphFeatureNodeCollection)featureNodes
{
  v3 = +[PGGraphMomentNode featureOfMoment];
  v4 = [(MANodeCollection *)PGGraphFeatureNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphBusinessNodeCollection)businessNodes
{
  v3 = +[PGGraphMomentNode businessOfMoment];
  v4 = [(MANodeCollection *)PGGraphBusinessNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphPublicEventNodeCollection)publicEventNodes
{
  v3 = +[PGGraphMomentNode publicEventOfMoment];
  v4 = [(MANodeCollection *)PGGraphPublicEventNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (id)personActivityMeaningNodes
{
  v3 = +[PGGraphMomentNode personActivityMeaningOfMoment];
  v4 = [(MANodeCollection *)PGGraphPersonActivityMeaningNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphMeaningNodeCollection)reliableMeaningNodes
{
  v3 = +[PGGraphMomentNode reliableMeaningOfMoment];
  v4 = [(MANodeCollection *)PGGraphMeaningNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphMeaningNodeCollection)alternativeMeaningNodes
{
  v3 = +[PGGraphMomentNode alternativeMeaningOfMoment];
  v4 = [(MANodeCollection *)PGGraphMeaningNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphMeaningNodeCollection)meaningNodes
{
  v3 = +[PGGraphMomentNode meaningOfMoment];
  v4 = [(MANodeCollection *)PGGraphMeaningNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphWeekendNodeCollection)weekendNodes
{
  v3 = +[PGGraphMomentNode weekendOfMoment];
  v4 = [(MANodeCollection *)PGGraphWeekendNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphWeekdayNodeCollection)weekdayNodes
{
  v3 = +[PGGraphMomentNode weekdayOfMoment];
  v4 = [(MANodeCollection *)PGGraphWeekdayNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphMemoryNodeCollection)memoryNodes
{
  v3 = +[PGGraphMomentNode memoryOfMoment];
  v4 = [(MANodeCollection *)PGGraphMemoryNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphPersonNodeCollection)presentPersonNodes
{
  v3 = +[PGGraphMomentNode personPhysicallyPresentInMoment];
  v4 = [(MANodeCollection *)PGGraphPersonNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphPersonNodeCollection)authorNodes
{
  v3 = +[PGGraphMomentNode authorOfMoment];
  v4 = [(MANodeCollection *)PGGraphPersonNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphPartOfWeekNodeCollection)partOfWeekNodes
{
  v3 = +[PGGraphPartOfWeekEdge filter];
  v4 = [v3 outRelation];
  v5 = [(MANodeCollection *)PGGraphPartOfWeekNodeCollection nodesRelatedToNodes:self withRelation:v4];

  return v5;
}

- (PGGraphPetNodeCollection)petNodes
{
  v3 = +[PGGraphMomentNode petPresentInMoment];
  v4 = [(MANodeCollection *)PGGraphPetNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphHighlightNodeCollection)highlightNodes
{
  v3 = +[PGGraphMomentNode highlightOfMoment];
  v4 = [(MANodeCollection *)PGGraphHighlightNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphLocationCityNodeCollection)cityNodes
{
  v3 = +[PGGraphMomentNode cityOfMoment];
  v4 = [(MANodeCollection *)PGGraphLocationCityNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphPersonNodeCollection)anniversaryPersonNodes
{
  v3 = +[PGGraphMomentNode anniversaryPersonInMoment];
  v4 = [(MANodeCollection *)PGGraphPersonNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphPersonNodeCollection)birthdayPersonNodes
{
  v3 = +[PGGraphMomentNode birthdayPersonInMoment];
  v4 = [(MANodeCollection *)PGGraphPersonNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphPersonNodeCollection)personNodesInProximity
{
  v3 = +[PGGraphMomentNode personInProximityInMoment];
  v4 = [(MANodeCollection *)PGGraphPersonNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphPersonNodeCollection)consolidatedPersonNodesPresentInAssets
{
  v3 = +[PGGraphMomentNode consolidatedPersonPresentInAssets];
  v4 = [(MANodeCollection *)PGGraphPersonNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphPersonNodeCollection)consolidatedPersonNodes
{
  v3 = +[PGGraphMomentNode consolidatedPersonInMoment];
  v4 = [(MANodeCollection *)PGGraphPersonNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphPersonNodeCollection)personNodes
{
  v3 = +[PGGraphMomentNode personInMoment];
  v4 = [(MANodeCollection *)PGGraphPersonNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphAddressNodeCollection)remoteAddressNodes
{
  v3 = +[PGGraphMomentNode remoteAddressOfMoment];
  v4 = [(MANodeCollection *)PGGraphAddressNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphAddressNodeCollection)preciseAddressNodes
{
  v3 = +[PGGraphMomentNode preciseAddressOfMoment];
  v4 = [(MANodeCollection *)PGGraphAddressNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphAddressNodeCollection)addressNodes
{
  v3 = +[PGGraphMomentNode addressOfMoment];
  v4 = [(MANodeCollection *)PGGraphAddressNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphDateNodeCollection)dateNodes
{
  v3 = +[PGGraphMomentNode dateOfMoment];
  v4 = [(MANodeCollection *)PGGraphDateNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphMomentNodeCollection)nextMomentNodes
{
  v3 = +[PGGraphMomentNode nextMomentOfMoment];
  v4 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphMomentNodeCollection)previousMomentNodes
{
  v3 = +[PGGraphMomentNode previousMomentOfMoment];
  v4 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphSocialGroupNodeCollection)socialGroupNodes
{
  v3 = +[PGGraphMomentNode socialGroupInMoment];
  v4 = [(MANodeCollection *)PGGraphSocialGroupNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

+ (id)momentNodesWithEnoughFacesProcessedInGraph:(id)a3
{
  v4 = a3;
  v5 = +[PGGraphMomentNode filterEnoughFacesProcessed];
  v6 = [a1 nodesMatchingFilter:v5 inGraph:v4];

  return v6;
}

+ (id)momentNodesWithEnoughScenesProcessedInGraph:(id)a3
{
  v4 = a3;
  v5 = +[PGGraphMomentNode filterEnoughScenesProcessed];
  v6 = [a1 nodesMatchingFilter:v5 inGraph:v4];

  return v6;
}

+ (id)momentNodesInGraph:(id)a3
{
  v4 = a3;
  v5 = [a1 filter];
  v6 = [a1 nodesMatchingFilter:v5 inGraph:v4];

  return v6;
}

+ (id)momentNodesInterestingWithAlternateJunkingInGraph:(id)a3
{
  v4 = a3;
  v5 = +[PGGraphMomentNode interestingWithAlternateJunkingFilter];
  v6 = [a1 nodesMatchingFilter:v5 inGraph:v4];

  return v6;
}

+ (id)momentNodesHappeningAtSensitiveLocationInGraph:(id)a3
{
  v4 = a3;
  v5 = +[PGGraphMomentNode filterHappeningAtSensitiveLocation];
  v6 = [a1 nodesMatchingFilter:v5 inGraph:v4];

  return v6;
}

+ (id)momentNodeAsCollectionByMomentUUIDForArrayOfMomentUUIDs:(id)a3 inGraph:(id)a4
{
  v4 = [PGGraphMomentNodeCollection momentNodesForArrayOfUUIDs:a3 inGraph:a4];
  v5 = [v4 momentNodeAsCollectionByMomentUUID];

  return v5;
}

+ (id)momentNodeAsCollectionByMomentUUIDForMomentUUIDs:(id)a3 inGraph:(id)a4
{
  v4 = [PGGraphMomentNodeCollection momentNodesForUUIDs:a3 inGraph:a4];
  v5 = [v4 momentNodeAsCollectionByMomentUUID];

  return v5;
}

+ (id)momentNodeForUUID:(id)a3 inGraph:(id)a4
{
  v6 = a4;
  v7 = [PGGraphMomentNode filterWithUUID:a3];
  v8 = [a1 nodesMatchingFilter:v7 inGraph:v6];

  return v8;
}

+ (id)momentNodesInUniversalDateInterval:(id)a3 inGraph:(id)a4
{
  v6 = a4;
  v7 = [PGGraphMomentNode filterWithUniversalDateInterval:a3];
  v8 = [a1 nodesMatchingFilter:v7 inGraph:v6];

  return v8;
}

+ (id)momentNodesForLocalDateInterval:(id)a3 inGraph:(id)a4
{
  v6 = a4;
  v7 = [PGGraphMomentNode filterWithLocalDateInterval:a3];
  v8 = [a1 nodesMatchingFilter:v7 inGraph:v6];

  return v8;
}

+ (id)momentNodesForArrayOfUUIDs:(id)a3 inGraph:(id)a4
{
  v6 = a4;
  v7 = [PGGraphMomentNode filterWithUUIDs:a3];
  v8 = [a1 nodesMatchingFilter:v7 inGraph:v6];

  return v8;
}

+ (id)momentNodesForUUIDs:(id)a3 inGraph:(id)a4
{
  v6 = a4;
  v7 = [PGGraphMomentNode filterWithUUIDs:a3];
  v8 = [a1 nodesMatchingFilter:v7 inGraph:v6];

  return v8;
}

+ (id)_interestingForMemoriesSubsetFromMomentNodes:(id)a3 inGraph:(id)a4
{
  v33[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[PGGraphMomentNode filter];
  v32[0] = @"intngaj";
  v32[1] = @"spr";
  v33[0] = MEMORY[0x277CBEC38];
  v9 = [objc_alloc(MEMORY[0x277D22B98]) initWithComparator:6 value:&unk_2844871C8];
  v33[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
  v11 = [v8 filterBySettingProperties:v10];

  if (v6)
  {
    [v6 nodesMatchingFilter:v11];
  }

  else
  {
    [a1 nodesMatchingFilter:v11 inGraph:v7];
  }
  v12 = ;
  if ([v12 count])
  {
    v13 = [(PGGraphNodeCollection *)PGGraphFrequentLocationNodeCollection nodesInGraph:v7];
    v14 = [v7 meNodeCollection];
    v15 = [v14 homeOrWorkNodes];
    v16 = [v15 addressNodes];

    v17 = [v13 momentNodes];
    v18 = [v16 momentNodes];
    v19 = [v17 collectionByFormingUnionWith:v18];

    v20 = [v12 collectionByIntersecting:v19];
    v21 = [v12 collectionBySubtracting:v19];
    if ([v20 count])
    {
      v22 = [(PGGraphNodeCollection *)PGGraphPetNodeCollection nodesInGraph:v7];
      [v22 momentNodes];
      v23 = v29 = v13;

      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __84__PGGraphMomentNodeCollection__interestingForMemoriesSubsetFromMomentNodes_inGraph___block_invoke;
      v30[3] = &unk_278888AE0;
      v31 = v23;
      v24 = v23;
      v25 = [v20 filteredCollectionUsingBlock:v30];

      v13 = v29;
      v20 = v25;
    }

    v26 = [v21 collectionByFormingUnionWith:v20];
  }

  else
  {
    v26 = v12;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

BOOL __84__PGGraphMomentNodeCollection__interestingForMemoriesSubsetFromMomentNodes_inGraph___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsCollection:v3])
  {
    v4 = 1;
  }

  else
  {
    v5 = fmax(ceil([v3 numberOfAssets] * 0.1), 10.0);
    v4 = [v3 numberOfAssetsWithPersons] >= v5;
  }

  return v4;
}

@end