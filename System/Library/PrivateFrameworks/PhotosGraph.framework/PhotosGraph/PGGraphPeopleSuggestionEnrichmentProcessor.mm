@interface PGGraphPeopleSuggestionEnrichmentProcessor
- (void)_performPeopleSuggestionForHomeWithManager:(id)manager progressReporter:(id)reporter;
- (void)enrichDataModelWithManager:(id)manager curationContext:(id)context graphUpdateInventory:(id)inventory progressReporter:(id)reporter;
@end

@implementation PGGraphPeopleSuggestionEnrichmentProcessor

- (void)_performPeopleSuggestionForHomeWithManager:(id)manager progressReporter:(id)reporter
{
  v60 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  reporterCopy = reporter;
  [managerCopy photoLibrary];
  v44 = v43 = managerCopy;
  suggestedPersonsForHome = [managerCopy suggestedPersonsForHome];
  v7 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(suggestedPersonsForHome, "count")}];
  v8 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(suggestedPersonsForHome, "count")}];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v9 = suggestedPersonsForHome;
  v10 = [v9 countByEnumeratingWithState:&v49 objects:v59 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v50;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v50 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v49 + 1) + 8 * i) objectForKeyedSubscript:@"localIdentifier"];
        if ([v14 length])
        {
          [v7 addObject:v14];
          v15 = [MEMORY[0x277CD9918] uuidFromLocalIdentifier:v14];
          [v8 addObject:v15];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v49 objects:v59 count:16];
    }

    while (v11);
  }

  if ([v7 count])
  {
    librarySpecificFetchOptions = [v44 librarySpecificFetchOptions];
    v17 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %d", @"suggestedForClientType", 0];
    [librarySpecificFetchOptions setInternalPredicate:v17];

    v18 = MEMORY[0x277CD9938];
    allObjects = [v7 allObjects];
    v20 = [v18 fetchPersonsWithLocalIdentifiers:allObjects options:librarySpecificFetchOptions];

    v41 = v20;
    v21 = [v20 count];
    librarySpecificFetchOptions2 = [v44 librarySpecificFetchOptions];
    v23 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %d && NOT (%K IN %@)", @"suggestedForClientType", 1, @"personUUID", v8];
    [librarySpecificFetchOptions2 setInternalPredicate:v23];

    v39 = librarySpecificFetchOptions2;
    v24 = [MEMORY[0x277CD9938] fetchPersonsWithOptions:librarySpecificFetchOptions2];
    v25 = [v24 count];
    v40 = v21;
    v26 = reporterCopy;
    if (v21 | v25)
    {
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __106__PGGraphPeopleSuggestionEnrichmentProcessor__performPeopleSuggestionForHomeWithManager_progressReporter___block_invoke;
      v46[3] = &unk_278880B88;
      v47 = v41;
      v48 = v24;
      v45 = 0;
      v27 = [v44 performChangesAndWait:v46 error:&v45];
      v28 = v45;
      if ((v27 & 1) == 0)
      {
        v29 = +[PGLogging sharedLogging];
        loggingConnection = [v29 loggingConnection];

        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v54 = v28;
          _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Failed to persist people suggestion for home: %@", buf, 0xCu);
        }
      }
    }

    throughputReportBlock = [reporterCopy throughputReportBlock];

    if (throughputReportBlock)
    {
      throughputReportBlock2 = [reporterCopy throughputReportBlock];
      throughputReportBlock2[2](throughputReportBlock2, v25 + v40, 0);
    }

    v33 = +[PGLogging sharedLogging];
    loggingConnection2 = [v33 loggingConnection];

    if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_DEFAULT))
    {
      v35 = [v7 count];
      *buf = 134218496;
      v54 = v35;
      v55 = 2048;
      v56 = v40;
      v57 = 2048;
      v58 = v25;
      _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_DEFAULT, "Suggesting %lu persons for client home (newly persisted: %lu, newly removed: %lu).", buf, 0x20u);
    }

    v36 = v43;
  }

  else
  {
    v37 = +[PGLogging sharedLogging];
    librarySpecificFetchOptions = [v37 loggingConnection];

    if (os_log_type_enabled(librarySpecificFetchOptions, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, librarySpecificFetchOptions, OS_LOG_TYPE_DEFAULT, "Found no persons to suggest for client home.", buf, 2u);
    }

    v26 = reporterCopy;
    v36 = managerCopy;
  }

  v38 = *MEMORY[0x277D85DE8];
}

void __106__PGGraphPeopleSuggestionEnrichmentProcessor__performPeopleSuggestionForHomeWithManager_progressReporter___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      v6 = 0;
      do
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [MEMORY[0x277CD9940] changeRequestForPerson:*(*(&v19 + 1) + 8 * v6)];
        [v7 persistSuggestionForClient:1];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v4);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = *(a1 + 40);
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [MEMORY[0x277CD9940] changeRequestForPerson:{*(*(&v15 + 1) + 8 * v12), v15}];
        [v13 persistSuggestionForClient:0];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)enrichDataModelWithManager:(id)manager curationContext:(id)context graphUpdateInventory:(id)inventory progressReporter:(id)reporter
{
  v29 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  reporterCopy = reporter;
  inventoryCopy = inventory;
  enrichmentLoggingConnection = [managerCopy enrichmentLoggingConnection];
  v13 = os_signpost_id_generate(enrichmentLoggingConnection);
  v14 = enrichmentLoggingConnection;
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "PGGraphPeopleSuggestionEnrichmentProcessor", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v16 = mach_absolute_time();
  isResumingFullAnalysis = [inventoryCopy isResumingFullAnalysis];

  if (isResumingFullAnalysis)
  {
    [(PGGraphPeopleSuggestionEnrichmentProcessor *)self _performPeopleSuggestionForHomeWithManager:managerCopy progressReporter:reporterCopy];
    [(PGGraphPeopleSuggestionEnrichmentProcessor *)self _performPeopleSuggestionForSharedLibraryWithManager:managerCopy progressReporter:reporterCopy];
    v18 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v21 = v15;
    v22 = v21;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v22, OS_SIGNPOST_INTERVAL_END, v13, "PGGraphPeopleSuggestionEnrichmentProcessor", "", buf, 2u);
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v26 = "PGGraphPeopleSuggestionEnrichmentProcessor";
      v27 = 2048;
      v28 = ((((v18 - v16) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v22, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

@end