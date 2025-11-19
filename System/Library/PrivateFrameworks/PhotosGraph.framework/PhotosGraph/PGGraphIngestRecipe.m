@interface PGGraphIngestRecipe
- (NSArray)highlightsToIngest;
- (NSArray)momentsToIngest;
- (PGGraphIngestRecipe)initWithPhotoLibrary:(id)a3;
- (id)_highlightsForLibraryAnalysis;
- (id)_momentsForLibraryAnalysis;
- (id)defaultPostprocessorsWithGraphBuilder:(id)a3;
- (id)defaultPreprocessorsWithGraphBuilder:(id)a3;
@end

@implementation PGGraphIngestRecipe

- (id)defaultPostprocessorsWithGraphBuilder:(id)a3
{
  v27[20] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v26 = [[PGGraphIngestHomeWorkProcessor alloc] initWithGraphBuilder:v3];
  v27[0] = v26;
  v25 = [[PGGraphIngestLocationDisambiguationProcessor alloc] initWithGraphBuilder:v3];
  v27[1] = v25;
  v24 = [[PGGraphIngestFrequentLocationProcessor alloc] initWithGraphBuilder:v3];
  v27[2] = v24;
  v23 = [[PGGraphIngestPointsOfInterestProcessor alloc] initWithGraphBuilder:v3];
  v27[3] = v23;
  v22 = [[PGGraphIngestLocationsOfInterestProcessor alloc] initWithGraphBuilder:v3];
  v27[4] = v22;
  v21 = [[PGGraphIngestPublicEventsProcessor alloc] initWithGraphBuilder:v3];
  v27[5] = v21;
  v20 = [[PGGraphIngestBusinessProcessor alloc] initWithGraphBuilder:v3];
  v27[6] = v20;
  v19 = [[PGGraphIngestNextEdgesProcessor alloc] initWithGraphBuilder:v3];
  v27[7] = v19;
  v18 = [[PGGraphRelationshipTaggingProcessor alloc] initWithGraphBuilder:v3];
  v27[8] = v18;
  v17 = [[PGGraphIngestSocialGroupsProcessor alloc] initWithGraphBuilder:v3];
  v27[9] = v17;
  v16 = [[PGGraphIngestAOIBlockingProcessor alloc] initWithGraphBuilder:v3];
  v27[10] = v16;
  v4 = [[PGGraphIngestHolidaysProcessor alloc] initWithGraphBuilder:v3];
  v27[11] = v4;
  v5 = [[PGGraphIngestMeaningfulEventsProcessor alloc] initWithGraphBuilder:v3];
  v27[12] = v5;
  v6 = [[PGGraphIngestPersonAgeCategoryProcessor alloc] initWithGraphBuilder:v3];
  v27[13] = v6;
  v7 = [[PGGraphIngestPersonBiologicalSexProcessor alloc] initWithGraphBuilder:v3];
  v27[14] = v7;
  v8 = [[PGGraphIngestRelationshipProcessor alloc] initWithGraphBuilder:v3];
  v27[15] = v8;
  v9 = [[PGGraphIngestPetProcessor alloc] initWithGraphBuilder:v3];
  v27[16] = v9;
  v10 = [[PGGraphIngestEventLabelingProcessor alloc] initWithGraphBuilder:v3];
  v27[17] = v10;
  v11 = [[PGGraphIngestTripProcessor alloc] initWithGraphBuilder:v3];
  v27[18] = v11;
  v12 = [[PGGraphIngestMemoryProcessor alloc] initWithGraphBuilder:v3];

  v27[19] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:20];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)defaultPreprocessorsWithGraphBuilder:(id)a3
{
  v10[3] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [[PGGraphIngestPrefetchEventProcessor alloc] initWithGraphBuilder:v3];
  v5 = [[PGGraphIngestPrefetchPeopleProcessor alloc] initWithGraphBuilder:v3, v4];
  v10[1] = v5;
  v6 = [[PGGraphIngestPrefetchLocationProcessor alloc] initWithGraphBuilder:v3];

  v10[2] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_highlightsForLibraryAnalysis
{
  v14[3] = *MEMORY[0x277D85DE8];
  v2 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:0];
  v14[0] = v3;
  v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"endDate" ascending:0];
  v14[1] = v4;
  v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v14[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
  [v2 setSortDescriptors:v6];

  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"kind = %ld || kind = %ld", 0, 3];
  [v2 setPredicate:v7];

  v8 = [MEMORY[0x277CD9958] fetchHighlightsWithOptions:v2];
  v9 = MEMORY[0x277CBEA60];
  v10 = [v8 fetchedObjects];
  v11 = [v9 arrayWithArray:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_momentsForLibraryAnalysis
{
  v21[3] = *MEMORY[0x277D85DE8];
  v2 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:0];
  v21[0] = v3;
  v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"endDate" ascending:0];
  v21[1] = v4;
  v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v21[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
  [v2 setSortDescriptors:v6];

  v7 = [MEMORY[0x277CD97B8] fetchMomentsWithOptions:v2];
  v8 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexesInRange:{0, objc_msgSend(v7, "count")}];
  v9 = [v8 mutableCopy];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __49__PGGraphIngestRecipe__momentsForLibraryAnalysis__block_invoke;
  v18 = &unk_278889B40;
  v19 = v7;
  v20 = v9;
  v10 = v9;
  v11 = v7;
  [v8 enumerateIndexesUsingBlock:&v15];
  v12 = [v11 objectsAtIndexes:{v10, v15, v16, v17, v18}];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

void __49__PGGraphIngestRecipe__momentsForLibraryAnalysis__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) objectAtIndex:a2];
  if (![v4 estimatedAssetCount])
  {
    [*(a1 + 40) removeIndex:a2];
  }
}

- (NSArray)highlightsToIngest
{
  highlightsToIngest = self->_highlightsToIngest;
  if (!highlightsToIngest)
  {
    v4 = [(PGGraphIngestRecipe *)self _highlightsForLibraryAnalysis];
    v5 = self->_highlightsToIngest;
    self->_highlightsToIngest = v4;

    highlightsToIngest = self->_highlightsToIngest;
  }

  return highlightsToIngest;
}

- (NSArray)momentsToIngest
{
  momentsToIngest = self->_momentsToIngest;
  if (!momentsToIngest)
  {
    v4 = [(PGGraphIngestRecipe *)self _momentsForLibraryAnalysis];
    v5 = self->_momentsToIngest;
    self->_momentsToIngest = v4;

    momentsToIngest = self->_momentsToIngest;
  }

  return momentsToIngest;
}

- (PGGraphIngestRecipe)initWithPhotoLibrary:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PGGraphIngestRecipe;
  v6 = [(PGGraphIngestRecipe *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, a3);
  }

  return v7;
}

@end