@interface PHAForcedHighlightEnrichmentTask
- (BOOL)runWithGraphManager:(id)manager progressReporter:(id)reporter error:(id *)error;
- (id)_highlightUUIDsNeedingForceEnrichmentInPhotoLibrary:(id)library;
- (void)timeoutFatal:(BOOL)fatal;
@end

@implementation PHAForcedHighlightEnrichmentTask

- (id)_highlightUUIDsNeedingForceEnrichmentInPhotoLibrary:(id)library
{
  v27[3] = *MEMORY[0x277D85DE8];
  libraryCopy = library;
  v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2629800.0];
  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"lastEnrichmentDate" ascending:1];
  v27[0] = v6;
  v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:0];
  v27[1] = v7;
  v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:0];
  v27[2] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:3];
  [librarySpecificFetchOptions setInternalSortDescriptors:v9];

  v10 = MEMORY[0x277CCA920];
  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == nil || %K < %@", @"lastEnrichmentDate", @"lastEnrichmentDate", v4];
  v26[0] = v11;
  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %d || %K == %d", @"kind", 0, @"kind", 3];
  v26[1] = v12;
  v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != %d", @"category", 1];
  v26[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:3];
  v15 = [v10 andPredicateWithSubpredicates:v14];
  [librarySpecificFetchOptions setInternalPredicate:v15];

  [librarySpecificFetchOptions setFetchLimit:500];
  [librarySpecificFetchOptions setWantsIncrementalChangeDetails:0];
  v25 = *MEMORY[0x277CD9CA0];
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
  [librarySpecificFetchOptions setFetchPropertySets:v16];

  v17 = [MEMORY[0x277CD9958] fetchAssetCollectionsWithType:6 subtype:0x7FFFFFFFFFFFFFFFLL options:librarySpecificFetchOptions];
  v18 = [v17 count];
  if (v18)
  {
    v19 = v18;
    v20 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:v18];
    for (i = 0; i != v19; ++i)
    {
      v22 = [v17 objectAtIndexedSubscript:i];
      uuid = [v22 uuid];
      [v20 addObject:uuid];
    }
  }

  else
  {
    v20 = [MEMORY[0x277CBEB98] set];
  }

  return v20;
}

- (void)timeoutFatal:(BOOL)fatal
{
  if (fatal)
  {
    __assert_rtn("[PHAForcedHighlightEnrichmentTask timeoutFatal:]", "PHAForcedHighlightEnrichmentTask.m", 64, "NO");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "PHAForcedHighlightEnrichmentTask is stuck", v3, 2u);
  }
}

- (BOOL)runWithGraphManager:(id)manager progressReporter:(id)reporter error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  reporterCopy = reporter;
  photoLibrary = [managerCopy photoLibrary];
  v11 = [(PHAForcedHighlightEnrichmentTask *)self _highlightUUIDsNeedingForceEnrichmentInPhotoLibrary:photoLibrary];

  workingContext = [managerCopy workingContext];
  loggingConnection = [workingContext loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v22 = [v11 count];
    _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_INFO, "PHAForcedHighlightEnrichmentTask: %tu highlights to force enrich", buf, 0xCu);
  }

  if ([v11 count])
  {
    v14 = [objc_alloc(MEMORY[0x277D3B9A0]) initWithHighlightTailorOptions:{-[PHAForcedHighlightEnrichmentTask tailorOptions](self, "tailorOptions")}];
    v15 = objc_alloc(MEMORY[0x277D3B928]);
    v20 = v14;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
    v17 = [v15 initWithManager:managerCopy enrichmentProcessors:v16];

    v18 = [v17 enrichDataModelForHighlightUUIDs:v11 progressReporter:reporterCopy error:error];
  }

  else
  {
    v18 = 1;
  }

  return v18;
}

@end