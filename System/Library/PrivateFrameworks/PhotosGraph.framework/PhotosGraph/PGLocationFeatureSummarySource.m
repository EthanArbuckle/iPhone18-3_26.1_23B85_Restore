@interface PGLocationFeatureSummarySource
- (PGLocationFeatureSummarySource)initWithLoggingConnection:(id)a3 titleGenerationContext:(id)a4 graph:(id)a5;
- (id)summarizedAreaNodesForMomentNode:(id)a3 momentAddressNodesAsSet:(id)a4;
- (id)summarizedCityOrCountyNodesForMomentNode:(id)a3 momentAddressNodesAsSet:(id)a4;
- (id)summarizedDistrictNodesForMomentNode:(id)a3 momentAddressNodes:(id)a4 momentCityNodes:(id)a5;
- (id)summarizedFeaturesForMomentNodes:(id)a3;
- (id)summarizedHomeWorkNodesForMomentNode:(id)a3 momentAddressNodes:(id)a4;
@end

@implementation PGLocationFeatureSummarySource

- (id)summarizedCityOrCountyNodesForMomentNode:(id)a3 momentAddressNodesAsSet:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v35 = self;
  v8 = [(PGTitleGenerationContext *)self->_titleGenerationContext locationHelper];
  v9 = [[PGIncompleteLocationResolver alloc] initWithAddressNodes:v7 locationHelper:v8];
  v29 = [MEMORY[0x277CBEB98] setWithObject:v6];
  v30 = v9;
  v31 = v8;
  v32 = v7;
  v10 = [PGLocationTitleUtility commonCityTitleComponentsFromMomentNodes:"commonCityTitleComponentsFromMomentNodes:addressNodes:incompleteLocationResolver:locationHelper:" addressNodes:? incompleteLocationResolver:? locationHelper:?];
  v33 = v6;
  v36 = [v6 collection];
  v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v10;
  v11 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v39;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v39 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v38 + 1) + 8 * i);
        v16 = [v15 addressNodes];
        v17 = [v16 count];

        if (v17)
        {
          v18 = [PGGraphAddressNodeCollection alloc];
          v19 = [v15 addressNodes];
          v20 = [(MAElementCollection *)v18 initWithSet:v19 graph:v35->_graph];

          v21 = [(PGGraphEdgeCollection *)PGGraphAddressEdgeCollection edgesFromNodes:v36 toNodes:v20];
          v22 = [v15 node];
          v23 = [PGLocationSummarizedFeature summarizedFeatureSubtypeForLocationNode:v22];
          v24 = [PGLocationSummarizedFeature alloc];
          v25 = [v21 universalDateIntervals];
          v26 = -[PGLocationSummarizedFeature initWithSubtype:intervalsPresent:numberOfAssets:isMandatoryForKeyAsset:locationNode:](v24, "initWithSubtype:intervalsPresent:numberOfAssets:isMandatoryForKeyAsset:locationNode:", v23, v25, [v21 numberOfAssets], 1, v22);

          [v37 addObject:v26];
        }
      }

      v12 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v12);
  }

  v27 = *MEMORY[0x277D85DE8];

  return v37;
}

- (id)summarizedDistrictNodesForMomentNode:(id)a3 momentAddressNodes:(id)a4 momentCityNodes:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PGTitleGenerationContext *)self->_titleGenerationContext locationHelper];
  if ([v10 count] == 1 && -[MAElementCollection containsCollection:](self->_supersetCityNodes, "containsCollection:", v10))
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 1;
    v12 = objc_alloc_init(MEMORY[0x277D22BD0]);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __106__PGLocationFeatureSummarySource_summarizedDistrictNodesForMomentNode_momentAddressNodes_momentCityNodes___block_invoke;
    v25[3] = &unk_27887F6F0;
    v13 = v11;
    v26 = v13;
    v28 = &v29;
    v14 = v12;
    v27 = v14;
    [v9 enumerateIdentifiersAsCollectionsWithBlock:v25];
    if (*(v30 + 24))
    {
      v15 = [(MAElementCollection *)[PGGraphLocationDistrictNodeCollection alloc] initWithGraph:self->_graph elementIdentifiers:v14];
      v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __106__PGLocationFeatureSummarySource_summarizedDistrictNodesForMomentNode_momentAddressNodes_momentCityNodes___block_invoke_2;
      v21[3] = &unk_27887F718;
      v22 = v13;
      v23 = v8;
      v17 = v16;
      v24 = v17;
      [(MAElementCollection *)v15 enumerateIdentifiersAsCollectionsWithBlock:v21];
      v18 = v24;
      v19 = v17;
    }

    else
    {
      v19 = MEMORY[0x277CBEBF8];
    }

    _Block_object_dispose(&v29, 8);
  }

  else
  {
    v19 = MEMORY[0x277CBEBF8];
  }

  return v19;
}

void __106__PGLocationFeatureSummarySource_summarizedDistrictNodesForMomentNode_momentAddressNodes_momentCityNodes___block_invoke(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a1[4];
  v7 = [a3 anyNode];
  v10 = [v6 districtNodeFromAddressNode:v7];

  if ([v10 count])
  {
    v8 = a1[5];
    v9 = [v10 elementIdentifiers];
    [v8 unionWithIdentifierSet:v9];
  }

  else
  {
    *(*(a1[6] + 8) + 24) = 0;
    *a4 = 1;
  }
}

void __106__PGLocationFeatureSummarySource_summarizedDistrictNodesForMomentNode_momentAddressNodes_momentCityNodes___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v12 = [v4 addressNodesFromLocationNodes:v5];
  v6 = [(PGGraphEdgeCollection *)PGGraphAddressEdgeCollection edgesFromNodes:*(a1 + 40) toNodes:v12];
  v7 = [v5 anyNode];

  v8 = [PGLocationSummarizedFeature summarizedFeatureSubtypeForLocationNode:v7];
  v9 = [PGLocationSummarizedFeature alloc];
  v10 = [v6 universalDateIntervals];
  v11 = -[PGLocationSummarizedFeature initWithSubtype:intervalsPresent:numberOfAssets:isMandatoryForKeyAsset:locationNode:](v9, "initWithSubtype:intervalsPresent:numberOfAssets:isMandatoryForKeyAsset:locationNode:", v8, v10, [v6 numberOfAssets], 1, v7);

  [*(a1 + 48) addObject:v11];
}

- (id)summarizedAreaNodesForMomentNode:(id)a3 momentAddressNodesAsSet:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB98] setWithObject:v6];
  v9 = [PGLocationTitleUtility containsAmusementParkPOIFromMomentNodes:v8];
  v34 = self;
  v10 = [(PGTitleGenerationContext *)self->_titleGenerationContext locationHelper];
  v30 = v8;
  v31 = v7;
  v11 = [PGLocationTitleUtility commonAOIComponentsForMomentNodes:v8 addressNodes:v7 aoiDisplayType:3 containsAmusementParkPOI:v9 locationHelper:v10];

  v32 = v6;
  v35 = [v6 collection];
  v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v11;
  v12 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v38;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v38 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v37 + 1) + 8 * i);
        v17 = [v16 addressNodes];
        v18 = [v17 count];

        if (v18)
        {
          v19 = [PGGraphAddressNodeCollection alloc];
          v20 = [v16 addressNodes];
          v21 = [(MAElementCollection *)v19 initWithSet:v20 graph:v34->_graph];

          v22 = [(PGGraphEdgeCollection *)PGGraphAddressEdgeCollection edgesFromNodes:v35 toNodes:v21];
          v23 = [v16 node];
          v24 = [PGLocationSummarizedFeature summarizedFeatureSubtypeForLocationNode:v23];
          v25 = [PGLocationSummarizedFeature alloc];
          v26 = [v22 universalDateIntervals];
          v27 = -[PGLocationSummarizedFeature initWithSubtype:intervalsPresent:numberOfAssets:isMandatoryForKeyAsset:locationNode:](v25, "initWithSubtype:intervalsPresent:numberOfAssets:isMandatoryForKeyAsset:locationNode:", v24, v26, [v22 numberOfAssets], 1, v23);

          [v36 addObject:v27];
        }
      }

      v13 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v13);
  }

  v28 = *MEMORY[0x277D85DE8];

  return v36;
}

- (id)summarizedHomeWorkNodesForMomentNode:(id)a3 momentAddressNodes:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v33 = a3;
  v6 = a4;
  v31 = self;
  v7 = [(PGTitleGenerationContext *)self->_titleGenerationContext serviceManager];
  v29 = v6;
  v8 = [PGLocationTitleUtility peopleLocationTitleComponentsFromAddressNodes:v6 peopleDisplayType:1 serviceManager:v7];

  v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v37;
    v30 = *v37;
    do
    {
      v12 = 0;
      v34 = v10;
      do
      {
        if (*v37 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v36 + 1) + 8 * v12);
        v14 = [v13 addressNodes];
        v15 = [v14 count];

        if (v15 == 1)
        {
          v16 = [v13 node];
          v17 = [v13 addressNodes];
          v18 = [v17 anyObject];

          v19 = [v18 collection];
          v20 = [(PGGraphEdgeCollection *)PGGraphAddressEdgeCollection edgesFromNodes:v33 toNodes:v19];

          v21 = [v20 universalDateIntervals];
          v22 = [PGLocationSummarizedFeature summarizedFeatureSubtypeForLocationNode:v18];
          v23 = [v13 edge];
          v24 = [(PGTitleGenerationContext *)v31->_titleGenerationContext serviceManager];
          v25 = [PGPeopleTitleUtility beautifiedLocationStringWithPersonNode:v16 peopleAddressEdge:v23 titleComponent:v13 insertLineBreak:0 allowFamilyHome:0 serviceManager:v24];

          v26 = -[PGLocationSummarizedFeature initWithSubtype:intervalsPresent:numberOfAssets:isMandatoryForKeyAsset:locationNode:personNode:locationName:]([PGLocationSummarizedFeature alloc], "initWithSubtype:intervalsPresent:numberOfAssets:isMandatoryForKeyAsset:locationNode:personNode:locationName:", v22, v21, [v20 numberOfAssets], 1, v18, v16, v25);
          [v32 addObject:v26];

          v11 = v30;
          v10 = v34;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v10);
  }

  v27 = *MEMORY[0x277D85DE8];

  return v32;
}

- (id)summarizedFeaturesForMomentNodes:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(PGTitleGenerationContext *)self->_titleGenerationContext locationHelper];
    v6 = [v5 addressNodesByMomentNode];
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __67__PGLocationFeatureSummarySource_summarizedFeaturesForMomentNodes___block_invoke;
    v14[3] = &unk_27887F6C8;
    v15 = v6;
    v16 = self;
    v8 = v7;
    v17 = v8;
    v18 = v5;
    v9 = v5;
    v10 = v6;
    [v4 enumerateIdentifiersAsCollectionsWithBlock:v14];
    v11 = v18;
    v12 = v8;
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  return v12;
}

void __67__PGLocationFeatureSummarySource_summarizedFeaturesForMomentNodes___block_invoke(id *a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 anyNode];
  if (v5)
  {
    v6 = [a1[4] targetsForSources:v4];
    if ([v6 count])
    {
      v7 = [a1[5] summarizedHomeWorkNodesForMomentNode:v4 momentAddressNodes:v6];
      if ([v7 count])
      {
        [a1[6] addObjectsFromArray:v7];
      }

      else
      {
        v8 = [v6 set];
        v9 = [a1[5] summarizedAreaNodesForMomentNode:v5 momentAddressNodesAsSet:v8];
        if ([v9 count])
        {
          [a1[6] addObjectsFromArray:v9];
        }

        else
        {
          v10 = [a1[7] cityNodesFromAddressNodes:v6];
          v11 = [a1[5] summarizedDistrictNodesForMomentNode:v4 momentAddressNodes:v6 momentCityNodes:v10];
          if ([v11 count])
          {
            [a1[6] addObjectsFromArray:v11];
          }

          else
          {
            v12 = [a1[5] summarizedCityOrCountyNodesForMomentNode:v5 momentAddressNodesAsSet:v8];
            if ([v12 count])
            {
              [a1[6] addObjectsFromArray:v12];
            }

            else if ([v6 count])
            {
              v13 = *(a1[5] + 1);
              if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
              {
                v15 = v13;
                v16 = [v5 localIdentifier];
                *buf = 138412290;
                v18 = v16;
                _os_log_error_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_ERROR, "[PGLocationFeatureSummarySource] No summarized location features found from momentNode %@", buf, 0xCu);
              }
            }
          }
        }
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (PGLocationFeatureSummarySource)initWithLoggingConnection:(id)a3 titleGenerationContext:(id)a4 graph:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = PGLocationFeatureSummarySource;
  v12 = [(PGLocationFeatureSummarySource *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_loggingConnection, a3);
    objc_storeStrong(&v13->_titleGenerationContext, a4);
    objc_storeStrong(&v13->_graph, a5);
    v14 = [(PGGraph *)v13->_graph supersetCityNodes];
    supersetCityNodes = v13->_supersetCityNodes;
    v13->_supersetCityNodes = v14;
  }

  return v13;
}

@end