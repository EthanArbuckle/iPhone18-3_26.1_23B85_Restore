@interface PGUpNextMemoryBasedMatchingInfo
+ (id)matchingInfosWithMemoryNodes:(id)a3;
- (BOOL)_implIsTripMemory;
- (NSString)debugInfo;
- (PGGraphFeatureNodeCollection)memoryFeatureNodes;
- (PGUpNextMemoryBasedMatchingInfo)initWithMemoryNodeAsCollection:(id)a3;
- (PGUpNextMemoryBasedMatchingInfo)initWithMemoryNodeAsCollection:(id)a3 momentNodes:(id)a4;
- (unint64_t)nodeIdentifier;
@end

@implementation PGUpNextMemoryBasedMatchingInfo

- (NSString)debugInfo
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(PGGraphMemoryNodeCollection *)self->_memoryNodeAsCollection uniqueMemoryIdentifiers];
  v4 = [v3 anyObject];
  v5 = [v2 stringWithFormat:@"Memory unique identifier %@", v4];

  return v5;
}

- (BOOL)_implIsTripMemory
{
  v2 = [(MANodeCollection *)self->_memoryNodeAsCollection labels];
  v3 = [PGGraphBuilder memoryLabelForCategory:19];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (PGGraphFeatureNodeCollection)memoryFeatureNodes
{
  memoryFeatureNodes = self->_memoryFeatureNodes;
  if (!memoryFeatureNodes)
  {
    v4 = [(PGGraphMemoryNodeCollection *)self->_memoryNodeAsCollection featureNodes];
    v5 = [(MAElementCollection *)self->_memoryNodeAsCollection graph];
    v6 = [(PGGraphNodeCollection *)PGGraphOverTheYearsNodeCollection nodesInGraph:v5];
    v7 = [v4 collectionBySubtracting:v6];

    v8 = self->_memoryFeatureNodes;
    self->_memoryFeatureNodes = v7;

    memoryFeatureNodes = self->_memoryFeatureNodes;
  }

  return memoryFeatureNodes;
}

- (unint64_t)nodeIdentifier
{
  v2 = [(MAElementCollection *)self->_memoryNodeAsCollection elementIdentifiers];
  v3 = [v2 firstElement];

  return v3;
}

- (PGUpNextMemoryBasedMatchingInfo)initWithMemoryNodeAsCollection:(id)a3 momentNodes:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PGUpNextMemoryBasedMatchingInfo;
  v8 = [(PGUpNextMomentCollectionBasedMatchingInfo *)&v11 initWithMomentNodes:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_memoryNodeAsCollection, a3);
  }

  return v9;
}

- (PGUpNextMemoryBasedMatchingInfo)initWithMemoryNodeAsCollection:(id)a3
{
  v5 = a3;
  v6 = [v5 momentNodes];
  v9.receiver = self;
  v9.super_class = PGUpNextMemoryBasedMatchingInfo;
  v7 = [(PGUpNextMomentCollectionBasedMatchingInfo *)&v9 initWithMomentNodes:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_memoryNodeAsCollection, a3);
  }

  return v7;
}

+ (id)matchingInfosWithMemoryNodes:(id)a3
{
  v79[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 graph];
  v58 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v5 = MEMORY[0x277D22BF8];
  v6 = +[PGGraphMemoryNode momentOfMemory];
  v7 = objc_opt_self();
  v61 = [v5 adjacencyWithSources:v3 relation:v6 targetsClass:v7];

  v8 = [v61 targets];
  v9 = MEMORY[0x277D22BF8];
  v10 = +[PGGraphMomentNode personExcludingMeInMoment];
  v11 = objc_opt_self();
  v56 = [v9 adjacencyWithSources:v8 relation:v10 targetsClass:v11];

  v12 = MEMORY[0x277D22BF8];
  v13 = +[PGGraphMomentNode sceneOfMoment];
  v14 = objc_opt_self();
  v54 = [v12 adjacencyWithSources:v8 relation:v13 targetsClass:v14];

  v15 = MEMORY[0x277D22BF8];
  v16 = +[PGGraphMomentNode meaningOfMoment];
  v17 = objc_opt_self();
  v18 = [v15 adjacencyWithSources:v8 relation:v16 targetsClass:v17];

  v19 = @"Gathering";
  v79[0] = @"Gathering";
  v20 = @"HolidayEvent";
  v79[1] = @"HolidayEvent";
  v60 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:2];

  v57 = [PGGraphMeaningNodeCollection meaningNodesWithMeaningLabels:v60 inGraph:v4];
  v21 = [v18 subtractingTargetsWith:v57];

  v22 = MEMORY[0x277D22BF8];
  v23 = +[PGGraphMomentNode addressOfMoment];
  v24 = objc_opt_self();
  v25 = [v22 adjacencyWithSources:v8 relation:v23 targetsClass:v24];

  v26 = MEMORY[0x277D22BF8];
  v27 = +[PGGraphMemoryNode featureOfMemory];
  v28 = objc_opt_self();
  v29 = [v26 adjacencyWithSources:v3 relation:v27 targetsClass:v28];

  v55 = v4;
  v30 = [(PGGraphNodeCollection *)PGGraphOverTheYearsNodeCollection nodesInGraph:v4];
  v31 = [v30 featureNodeCollection];
  v32 = [v29 subtractingTargetsWith:v31];

  v33 = [PGGraphMemoryNodeCollection memoryNodesOfCategory:19 inGraph:v4];
  v34 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v35 = [v25 targets];
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = __64__PGUpNextMemoryBasedMatchingInfo_matchingInfosWithMemoryNodes___block_invoke;
  v77[3] = &unk_278889878;
  v36 = v34;
  v78 = v36;
  [v35 enumerateNodesUsingBlock:v77];

  v37 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = __64__PGUpNextMemoryBasedMatchingInfo_matchingInfosWithMemoryNodes___block_invoke_2;
  v75[3] = &unk_2788898A0;
  v38 = v37;
  v76 = v38;
  [v8 enumerateUniversalStartDatesUsingBlock:v75];
  v39 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 3221225472;
  v73[2] = __64__PGUpNextMemoryBasedMatchingInfo_matchingInfosWithMemoryNodes___block_invoke_3;
  v73[3] = &unk_2788898A0;
  v40 = v39;
  v74 = v40;
  [v8 enumerateUniversalEndDatesUsingBlock:v73];
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __64__PGUpNextMemoryBasedMatchingInfo_matchingInfosWithMemoryNodes___block_invoke_4;
  v62[3] = &unk_2788898F0;
  v63 = v56;
  v64 = v54;
  v65 = v21;
  v66 = v25;
  v67 = v36;
  v68 = v33;
  v69 = v38;
  v70 = v40;
  v71 = v32;
  v41 = v58;
  v72 = v41;
  v59 = v32;
  v42 = v40;
  v43 = v38;
  v53 = v33;
  v44 = v36;
  v45 = v25;
  v46 = v21;
  v47 = v54;
  v48 = v56;
  [v61 enumerateTargetsBySourceWithBlock:v62];
  v49 = v72;
  v50 = v41;

  v51 = *MEMORY[0x277D85DE8];
  return v41;
}

void __64__PGUpNextMemoryBasedMatchingInfo_matchingInfosWithMemoryNodes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = [v3 location];
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CCABB0];
  v6 = [v3 identifier];

  v7 = [v5 numberWithUnsignedInteger:v6];
  [v4 setObject:v8 forKeyedSubscript:v7];
}

void __64__PGUpNextMemoryBasedMatchingInfo_matchingInfosWithMemoryNodes___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CCABB0];
  v6 = a3;
  v7 = [v5 numberWithUnsignedInteger:a2];
  [v4 setObject:v6 forKeyedSubscript:v7];
}

void __64__PGUpNextMemoryBasedMatchingInfo_matchingInfosWithMemoryNodes___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CCABB0];
  v6 = a3;
  v7 = [v5 numberWithUnsignedInteger:a2];
  [v4 setObject:v6 forKeyedSubscript:v7];
}

void __64__PGUpNextMemoryBasedMatchingInfo_matchingInfosWithMemoryNodes___block_invoke_4(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] intersectingSourcesWith:v6];
  v8 = [a1[5] intersectingSourcesWith:v6];
  v9 = [a1[6] intersectingSourcesWith:v6];
  v10 = [a1[7] targetsForSources:v6];
  v30 = [PGUpNextMomentCollectionBasedMatchingInfo representativePersonNodesForPersonNodesByMomentNode:v7];
  v29 = [PGUpNextMomentCollectionBasedMatchingInfo representativeSceneNodesForSceneNodesByMomentNode:v8];
  v27 = v9;
  v28 = [PGUpNextMomentCollectionBasedMatchingInfo representativeMeaningNodesForEligibleMeaningNodesByMomentNode:v9];
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = v10;
  v12 = [v10 elementIdentifiers];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __64__PGUpNextMemoryBasedMatchingInfo_matchingInfosWithMemoryNodes___block_invoke_5;
  v48[3] = &unk_278889B40;
  v49 = a1[8];
  v13 = v11;
  v50 = v13;
  [v12 enumerateIdentifiersWithBlock:v48];

  v14 = [a1[9] elementIdentifiers];
  v15 = [v5 elementIdentifiers];
  v16 = [v14 containsIdentifier:{objc_msgSend(v15, "firstElement")}];

  v17 = [PGUpNextMomentCollectionBasedMatchingInfo representativeLocationForLocations:v13];
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__68055;
  v46 = __Block_byref_object_dispose__68056;
  v47 = [MEMORY[0x277CBEAA8] distantFuture];
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__68055;
  v40 = __Block_byref_object_dispose__68056;
  v41 = [MEMORY[0x277CBEAA8] distantPast];
  v18 = [v6 elementIdentifiers];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __64__PGUpNextMemoryBasedMatchingInfo_matchingInfosWithMemoryNodes___block_invoke_141;
  v31[3] = &unk_2788898C8;
  v34 = &v42;
  v32 = a1[10];
  v35 = &v36;
  v33 = a1[11];
  [v18 enumerateIdentifiersWithBlock:v31];
  v25 = v8;

  v19 = objc_alloc(MEMORY[0x277CCA970]);
  v20 = [v19 initWithStartDate:v43[5] endDate:v37[5]];
  v21 = v7;
  v22 = [PGUpNextMomentCollectionBasedMatchingInfo representativeDateForMomentNodesUniversalDateInterval:v20];
  v23 = [a1[12] targetsForSources:v5];
  v24 = [[PGUpNextMemoryBasedMatchingInfo alloc] initWithMemoryNodeAsCollection:v5 momentNodes:v6 personNodes:v30 sceneNodes:v29 meaningNodes:v28 isTripMemory:v16 representativeLocation:v17 representativeDate:v22 memoryFeatureNodes:v23];
  [a1[13] addObject:v24];

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);
}

void __64__PGUpNextMemoryBasedMatchingInfo_matchingInfosWithMemoryNodes___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v6 = [v3 objectForKeyedSubscript:v4];

  v5 = v6;
  if (v6)
  {
    [*(a1 + 40) addObject:v6];
    v5 = v6;
  }
}

void __64__PGUpNextMemoryBasedMatchingInfo_matchingInfosWithMemoryNodes___block_invoke_141(void *a1, uint64_t a2)
{
  v4 = *(*(a1[6] + 8) + 40);
  v5 = a1[4];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = [v4 earlierDate:v7];
  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *(*(a1[7] + 8) + 40);
  v12 = a1[5];
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v13 = [v12 objectForKeyedSubscript:v17];
  v14 = [v11 laterDate:v13];
  v15 = *(a1[7] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;
}

@end