@interface PGGraphIngestRecipe
- (NSArray)highlightsToIngest;
- (NSArray)momentsToIngest;
- (PGGraphIngestRecipe)initWithPhotoLibrary:(id)library;
- (id)_highlightsForLibraryAnalysis;
- (id)_momentsForLibraryAnalysis;
- (id)defaultPostprocessorsWithGraphBuilder:(id)builder;
- (id)defaultPreprocessorsWithGraphBuilder:(id)builder;
@end

@implementation PGGraphIngestRecipe

- (id)defaultPostprocessorsWithGraphBuilder:(id)builder
{
  v27[20] = *MEMORY[0x277D85DE8];
  builderCopy = builder;
  v26 = [[PGGraphIngestHomeWorkProcessor alloc] initWithGraphBuilder:builderCopy];
  v27[0] = v26;
  v25 = [[PGGraphIngestLocationDisambiguationProcessor alloc] initWithGraphBuilder:builderCopy];
  v27[1] = v25;
  v24 = [[PGGraphIngestFrequentLocationProcessor alloc] initWithGraphBuilder:builderCopy];
  v27[2] = v24;
  v23 = [[PGGraphIngestPointsOfInterestProcessor alloc] initWithGraphBuilder:builderCopy];
  v27[3] = v23;
  v22 = [[PGGraphIngestLocationsOfInterestProcessor alloc] initWithGraphBuilder:builderCopy];
  v27[4] = v22;
  v21 = [[PGGraphIngestPublicEventsProcessor alloc] initWithGraphBuilder:builderCopy];
  v27[5] = v21;
  v20 = [[PGGraphIngestBusinessProcessor alloc] initWithGraphBuilder:builderCopy];
  v27[6] = v20;
  v19 = [[PGGraphIngestNextEdgesProcessor alloc] initWithGraphBuilder:builderCopy];
  v27[7] = v19;
  v18 = [[PGGraphRelationshipTaggingProcessor alloc] initWithGraphBuilder:builderCopy];
  v27[8] = v18;
  v17 = [[PGGraphIngestSocialGroupsProcessor alloc] initWithGraphBuilder:builderCopy];
  v27[9] = v17;
  v16 = [[PGGraphIngestAOIBlockingProcessor alloc] initWithGraphBuilder:builderCopy];
  v27[10] = v16;
  v4 = [[PGGraphIngestHolidaysProcessor alloc] initWithGraphBuilder:builderCopy];
  v27[11] = v4;
  v5 = [[PGGraphIngestMeaningfulEventsProcessor alloc] initWithGraphBuilder:builderCopy];
  v27[12] = v5;
  v6 = [[PGGraphIngestPersonAgeCategoryProcessor alloc] initWithGraphBuilder:builderCopy];
  v27[13] = v6;
  v7 = [[PGGraphIngestPersonBiologicalSexProcessor alloc] initWithGraphBuilder:builderCopy];
  v27[14] = v7;
  v8 = [[PGGraphIngestRelationshipProcessor alloc] initWithGraphBuilder:builderCopy];
  v27[15] = v8;
  v9 = [[PGGraphIngestPetProcessor alloc] initWithGraphBuilder:builderCopy];
  v27[16] = v9;
  v10 = [[PGGraphIngestEventLabelingProcessor alloc] initWithGraphBuilder:builderCopy];
  v27[17] = v10;
  v11 = [[PGGraphIngestTripProcessor alloc] initWithGraphBuilder:builderCopy];
  v27[18] = v11;
  v12 = [[PGGraphIngestMemoryProcessor alloc] initWithGraphBuilder:builderCopy];

  v27[19] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:20];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)defaultPreprocessorsWithGraphBuilder:(id)builder
{
  v10[3] = *MEMORY[0x277D85DE8];
  builderCopy = builder;
  v4 = [[PGGraphIngestPrefetchEventProcessor alloc] initWithGraphBuilder:builderCopy];
  v5 = [[PGGraphIngestPrefetchPeopleProcessor alloc] initWithGraphBuilder:builderCopy, v4];
  v10[1] = v5;
  v6 = [[PGGraphIngestPrefetchLocationProcessor alloc] initWithGraphBuilder:builderCopy];

  v10[2] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_highlightsForLibraryAnalysis
{
  v14[3] = *MEMORY[0x277D85DE8];
  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:0];
  v14[0] = v3;
  v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"endDate" ascending:0];
  v14[1] = v4;
  v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v14[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
  [librarySpecificFetchOptions setSortDescriptors:v6];

  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"kind = %ld || kind = %ld", 0, 3];
  [librarySpecificFetchOptions setPredicate:v7];

  v8 = [MEMORY[0x277CD9958] fetchHighlightsWithOptions:librarySpecificFetchOptions];
  v9 = MEMORY[0x277CBEA60];
  fetchedObjects = [v8 fetchedObjects];
  v11 = [v9 arrayWithArray:fetchedObjects];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_momentsForLibraryAnalysis
{
  v21[3] = *MEMORY[0x277D85DE8];
  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:0];
  v21[0] = v3;
  v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"endDate" ascending:0];
  v21[1] = v4;
  v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v21[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
  [librarySpecificFetchOptions setSortDescriptors:v6];

  v7 = [MEMORY[0x277CD97B8] fetchMomentsWithOptions:librarySpecificFetchOptions];
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
    _highlightsForLibraryAnalysis = [(PGGraphIngestRecipe *)self _highlightsForLibraryAnalysis];
    v5 = self->_highlightsToIngest;
    self->_highlightsToIngest = _highlightsForLibraryAnalysis;

    highlightsToIngest = self->_highlightsToIngest;
  }

  return highlightsToIngest;
}

- (NSArray)momentsToIngest
{
  momentsToIngest = self->_momentsToIngest;
  if (!momentsToIngest)
  {
    _momentsForLibraryAnalysis = [(PGGraphIngestRecipe *)self _momentsForLibraryAnalysis];
    v5 = self->_momentsToIngest;
    self->_momentsToIngest = _momentsForLibraryAnalysis;

    momentsToIngest = self->_momentsToIngest;
  }

  return momentsToIngest;
}

- (PGGraphIngestRecipe)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v9.receiver = self;
  v9.super_class = PGGraphIngestRecipe;
  v6 = [(PGGraphIngestRecipe *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, library);
  }

  return v7;
}

@end