@interface PGGraphMemoriesEnrichmentProcessor
+ (id)categoriesOfMemoriesToPrioritize;
- (BOOL)runWithGraphManager:(id)manager incrementalChange:(id)change progressReporter:(id)reporter error:(id *)error;
- (PGGraphMemoriesEnrichmentProcessor)initWithNumberOfMemoriesToEnrich:(unint64_t)enrich;
- (id)_memoryNodesSortedForEnrichment:(id)enrichment localMemoryByUniqueIdentifier:(id)identifier graph:(id)graph;
- (id)enrichMemoryNodes:(id)nodes localMemoryByUniqueIdentifier:(id)identifier workingContext:(id)context graph:(id)graph progressReporter:(id)reporter;
- (id)enrichedMemoryFromMemoryNode:(id)node atCreationDate:(id)date configuration:(id)configuration curationContext:(id)context enrichedMemoryFactory:(id)factory graph:(id)graph progressReporter:(id)reporter;
- (id)runWithGraphManager:(id)manager forMemoryCategory:(unint64_t)category progressReporter:(id)reporter error:(id *)error;
- (id)runWithGraphManager:(id)manager forMemoryUUIDs:(id)ds progressReporter:(id)reporter error:(id *)error;
- (id)sortedMemoryNodesToEnrichForIncrementalForMemoryNodes:(id)nodes localMemoryByUniqueIdentifier:(id)identifier graph:(id)graph;
- (id)sortedMemoryNodesToEnrichForMemoryNodes:(id)nodes localMemoryByUniqueIdentifier:(id)identifier graph:(id)graph;
- (id)uniqueMemoryIdentifiersToPrioritizeWithGraph:(id)graph;
- (unint64_t)_targetNumberOfMemoriesToEnrichWithPhotoLibrary:(id)library;
- (void)deleteNoLongerExistingMemoryNodes:(id)nodes fromLocalMemoryByUniqueIdentifier:(id)identifier inPhotoLibrary:(id)library progressReporter:(id)reporter;
- (void)insertOrUpdateLocalMemoriesForEnrichedMemories:(id)memories localMemoryByUniqueIdentifier:(id)identifier memoryPersister:(id)persister progressReporter:(id)reporter;
@end

@implementation PGGraphMemoriesEnrichmentProcessor

- (void)insertOrUpdateLocalMemoriesForEnrichedMemories:(id)memories localMemoryByUniqueIdentifier:(id)identifier memoryPersister:(id)persister progressReporter:(id)reporter
{
  v53 = *MEMORY[0x277D85DE8];
  memoriesCopy = memories;
  identifierCopy = identifier;
  persisterCopy = persister;
  reporterCopy = reporter;
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v42 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v13 = memoriesCopy;
  v14 = [v13 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v45;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v45 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v44 + 1) + 8 * i);
        uniqueMemoryIdentifier = [v18 uniqueMemoryIdentifier];
        v20 = [identifierCopy objectForKeyedSubscript:uniqueMemoryIdentifier];

        v21 = v11;
        if (v20)
        {
          [v20 photosGraphVersion];
          if (PLMemoriesAlgorithmsVersionFromPhotosGraphVersion() < 0x400 || (v22 = [v20 isRejected], v21 = v12, v22) && (v23 = objc_msgSend(v18, "failedEnrichment"), v21 = v12, (v23 & 1) == 0))
          {
            [v42 addObject:v20];
            v21 = v11;
          }
        }

        [v21 addObject:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v15);
  }

  v24 = [objc_alloc(MEMORY[0x277D22C88]) initWithProgressReporter:reporterCopy];
  v25 = [v24 childProgressReporterToCheckpoint:0.5];
  v26 = [v24 childProgressReporterToCheckpoint:1.0];
  v27 = [v11 count];
  if (v27)
  {
    v28 = v27;
    v37 = v26;
    v38 = v25;
    v43 = 0;
    v29 = [persisterCopy persistLocalMemoriesFromEnrichedMemories:v11 localMemoriesToDelete:v42 progressReporter:v25 error:&v43];
    v30 = v43;
    loggingConnection = self->_loggingConnection;
    if (v29)
    {
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v49 = v28;
        _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[PGGraphMemoriesEnrichmentProcessor] Successfully inserted %d memories.", buf, 8u);
      }
    }

    else if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109378;
      v49 = v28;
      v50 = 2112;
      v51 = v30;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGGraphMemoriesEnrichmentProcessor] Failed to insert %d memories (%@)", buf, 0x12u);
    }

    v26 = v37;
    v25 = v38;
  }

  v32 = [v12 count];
  if (v32)
  {
    v33 = v32;
    v34 = [persisterCopy updateExistingMemories:v12 localMemoryByUniqueIdentifier:identifierCopy progressReporter:v26];
    v35 = self->_loggingConnection;
    if (v34)
    {
      if (os_log_type_enabled(self->_loggingConnection, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v49 = v33;
        _os_log_impl(&dword_22F0FC000, v35, OS_LOG_TYPE_DEFAULT, "[PGGraphMemoriesEnrichmentProcessor] Successfully updated %d memories.", buf, 8u);
      }
    }

    else if (os_log_type_enabled(self->_loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v49 = v33;
      _os_log_error_impl(&dword_22F0FC000, v35, OS_LOG_TYPE_ERROR, "[PGGraphMemoriesEnrichmentProcessor] Failed to update %d memories.", buf, 8u);
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)deleteNoLongerExistingMemoryNodes:(id)nodes fromLocalMemoryByUniqueIdentifier:(id)identifier inPhotoLibrary:(id)library progressReporter:(id)reporter
{
  v50 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  identifierCopy = identifier;
  libraryCopy = library;
  reporterCopy = reporter;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  if ([identifierCopy count])
  {
    *v47 = 0;
    *&v48 = v47;
    *(&v48 + 1) = 0x2020000000;
    v49 = 0;
    v14 = [identifierCopy count];
    uniqueMemoryIdentifiers = [nodesCopy uniqueMemoryIdentifiers];
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __138__PGGraphMemoriesEnrichmentProcessor_deleteNoLongerExistingMemoryNodes_fromLocalMemoryByUniqueIdentifier_inPhotoLibrary_progressReporter___block_invoke;
    v32[3] = &unk_278884700;
    v17 = uniqueMemoryIdentifiers;
    v33 = v17;
    v18 = v16;
    v34 = v18;
    v36 = v47;
    v38 = 0.5 / v14;
    v37 = &v39;
    v19 = reporterCopy;
    v35 = v19;
    [identifierCopy enumerateKeysAndObjectsUsingBlock:v32];
    if (*(v40 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v44 = 536;
        v45 = 2080;
        v46 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphMemoriesEnrichmentProcessor.m";
        v20 = MEMORY[0x277D86220];
LABEL_22:
        _os_log_impl(&dword_22F0FC000, v20, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    else
    {
      v21 = [v18 count];
      v22 = v21;
      if (v21)
      {
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __138__PGGraphMemoriesEnrichmentProcessor_deleteNoLongerExistingMemoryNodes_fromLocalMemoryByUniqueIdentifier_inPhotoLibrary_progressReporter___block_invoke_310;
        v30[3] = &unk_27888A660;
        v31 = v18;
        v29 = 0;
        v23 = [libraryCopy performChangesAndWait:v30 error:&v29];
        v28 = v29;
        loggingConnection = self->_loggingConnection;
        if (v23)
        {
          if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            v44 = v22;
            _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[PGGraphMemoriesEnrichmentProcessor] Successfully deleted %d local memories.", buf, 8u);
          }
        }

        else if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109378;
          v44 = v22;
          v45 = 2112;
          v46 = v28;
          _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGGraphMemoriesEnrichmentProcessor] Failed to delete %d local memories: %@", buf, 0x12u);
        }
      }

      if (v40[3])
      {
        *(v40 + 24) = 1;
      }

      else
      {
        v26 = [v19 isCancelledWithProgress:1.0];
        *(v40 + 24) = v26;
        if ((v26 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v44 = 551;
        v45 = 2080;
        v46 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphMemoriesEnrichmentProcessor.m";
        v20 = MEMORY[0x277D86220];
        goto LABEL_22;
      }
    }

LABEL_23:

    _Block_object_dispose(v47, 8);
    goto LABEL_24;
  }

  if (v40[3])
  {
    *(v40 + 24) = 1;
  }

  else
  {
    v25 = [reporterCopy isCancelledWithProgress:1.0];
    *(v40 + 24) = v25;
    if ((v25 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v47 = 67109378;
    *&v47[4] = 520;
    LOWORD(v48) = 2080;
    *(&v48 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphMemoriesEnrichmentProcessor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v47, 0x12u);
  }

LABEL_24:
  _Block_object_dispose(&v39, 8);

  v27 = *MEMORY[0x277D85DE8];
}

void __138__PGGraphMemoriesEnrichmentProcessor_deleteNoLongerExistingMemoryNodes_fromLocalMemoryByUniqueIdentifier_inPhotoLibrary_progressReporter___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  if (([*(a1 + 32) containsObject:a2] & 1) == 0)
  {
    [*(a1 + 40) addObject:v9];
  }

  *(*(*(a1 + 56) + 8) + 24) = *(a1 + 72) + *(*(*(a1 + 56) + 8) + 24);
  v7 = *(*(a1 + 64) + 8);
  if (*(v7 + 24))
  {
    v8 = 1;
  }

  else
  {
    v8 = [*(a1 + 48) isCancelledWithProgress:*(*(*(a1 + 56) + 8) + 24)];
    v7 = *(*(a1 + 64) + 8);
  }

  *(v7 + 24) = v8;
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    *a4 = 1;
  }
}

- (id)uniqueMemoryIdentifiersToPrioritizeWithGraph:(id)graph
{
  uniqueMemoryIdentifiersToPrioritize = self->_uniqueMemoryIdentifiersToPrioritize;
  if (!uniqueMemoryIdentifiersToPrioritize)
  {
    v5 = MEMORY[0x277D3C818];
    graphCopy = graph;
    eventElectionMode = [v5 eventElectionMode];
    v8 = [PGEventElector memoryUniqueIdentifiersToElectWithGraph:graphCopy electionMode:eventElectionMode error:0];

    v9 = self->_uniqueMemoryIdentifiersToPrioritize;
    self->_uniqueMemoryIdentifiersToPrioritize = v8;

    uniqueMemoryIdentifiersToPrioritize = self->_uniqueMemoryIdentifiersToPrioritize;
  }

  return uniqueMemoryIdentifiersToPrioritize;
}

- (id)_memoryNodesSortedForEnrichment:(id)enrichment localMemoryByUniqueIdentifier:(id)identifier graph:(id)graph
{
  identifierCopy = identifier;
  graphCopy = graph;
  enrichmentCopy = enrichment;
  categoriesOfMemoriesToPrioritize = [objc_opt_class() categoriesOfMemoriesToPrioritize];
  v12 = [(PGGraphMemoriesEnrichmentProcessor *)self uniqueMemoryIdentifiersToPrioritizeWithGraph:graphCopy];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __106__PGGraphMemoriesEnrichmentProcessor__memoryNodesSortedForEnrichment_localMemoryByUniqueIdentifier_graph___block_invoke;
  v18[3] = &unk_2788846D8;
  v19 = identifierCopy;
  v20 = categoriesOfMemoriesToPrioritize;
  v21 = v12;
  v13 = v12;
  v14 = categoriesOfMemoriesToPrioritize;
  v15 = identifierCopy;
  v16 = [enrichmentCopy sortedArrayUsingComparator:v18];

  return v16;
}

uint64_t __106__PGGraphMemoriesEnrichmentProcessor__memoryNodesSortedForEnrichment_localMemoryByUniqueIdentifier_graph___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 uniqueMemoryIdentifier];
  v8 = [v6 uniqueMemoryIdentifier];
  v9 = [*(a1 + 32) objectForKeyedSubscript:v7];
  v10 = [*(a1 + 32) objectForKeyedSubscript:v8];
  v11 = [*(a1 + 40) containsIndex:{objc_msgSend(v5, "memoryCategory")}];
  v12 = [*(a1 + 40) containsIndex:{objc_msgSend(v6, "memoryCategory")}];
  if (v11 && !v12)
  {
    goto LABEL_3;
  }

  if (!(v11 & 1 | ((v12 & 1) == 0)))
  {
    goto LABEL_12;
  }

  v14 = *(a1 + 48);
  v15 = [v5 uniqueMemoryIdentifier];
  v16 = [v14 containsObject:v15];

  v17 = *(a1 + 48);
  v18 = [v6 uniqueMemoryIdentifier];
  v19 = [v17 containsObject:v18];

  if (!v16 || v19)
  {
    if (!(v16 & 1 | ((v19 & 1) == 0)))
    {
      goto LABEL_12;
    }

    if (v9 || !v10)
    {
      if (v9 && !v10)
      {
        goto LABEL_12;
      }

      if (!v9 || !v10)
      {
LABEL_24:
        v13 = [v7 compare:v8];
        goto LABEL_13;
      }

      v21 = [v9 photosGraphVersion];
      v22 = [v10 photosGraphVersion];
      if (v21 >= v22)
      {
        if (v22 >= v21)
        {
          v23 = [v9 lastEnrichmentDate];
          v24 = [v10 lastEnrichmentDate];
          if (v23 | v24)
          {
            if (!v23 || [v23 compare:v24] == -1)
            {
              v13 = -1;
            }

            else
            {
              if (v24 && [v24 compare:v23] != -1)
              {
                goto LABEL_23;
              }

              v13 = 1;
            }

            goto LABEL_13;
          }

LABEL_23:

          goto LABEL_24;
        }

LABEL_12:
        v13 = 1;
        goto LABEL_13;
      }
    }
  }

LABEL_3:
  v13 = -1;
LABEL_13:

  return v13;
}

- (id)sortedMemoryNodesToEnrichForMemoryNodes:(id)nodes localMemoryByUniqueIdentifier:(id)identifier graph:(id)graph
{
  v64 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  identifierCopy = identifier;
  graphCopy = graph;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__42278;
  v52 = __Block_byref_object_dispose__42279;
  v53 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__42278;
  v46 = __Block_byref_object_dispose__42279;
  v47 = 0;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __114__PGGraphMemoriesEnrichmentProcessor_sortedMemoryNodesToEnrichForMemoryNodes_localMemoryByUniqueIdentifier_graph___block_invoke;
  v36[3] = &unk_278884688;
  v13 = identifierCopy;
  v37 = v13;
  v14 = v11;
  v38 = v14;
  v40 = &v48;
  v41 = &v42;
  v15 = v12;
  v39 = v15;
  v32 = nodesCopy;
  [nodesCopy enumerateNodesUsingBlock:v36];
  v16 = [v15 count];
  if (v16)
  {
    v17 = [(PGGraphMemoriesEnrichmentProcessor *)self _memoryNodesSortedForEnrichment:v15 localMemoryByUniqueIdentifier:0 graph:graphCopy];
    [v10 addObjectsFromArray:v17];
  }

  v18 = [v14 count];
  if (v18)
  {
    v19 = MEMORY[0x277CCAC30];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __114__PGGraphMemoriesEnrichmentProcessor_sortedMemoryNodesToEnrichForMemoryNodes_localMemoryByUniqueIdentifier_graph___block_invoke_2;
    v34[3] = &unk_2788846B0;
    v20 = v13;
    v35 = v20;
    v21 = [v19 predicateWithBlock:v34];
    v22 = [v14 filteredArrayUsingPredicate:v21];

    v23 = [(PGGraphMemoriesEnrichmentProcessor *)self _memoryNodesSortedForEnrichment:v22 localMemoryByUniqueIdentifier:v20 graph:graphCopy];
    [v10 addObjectsFromArray:v23];
  }

  v24 = self->_loggingConnection;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [v10 count];
    v26 = v49[5];
    v27 = v43[5];
    *buf = 134219010;
    v55 = v25;
    v56 = 2048;
    v57 = v16;
    v58 = 2048;
    v59 = v18;
    v60 = 2112;
    v61 = v26;
    v62 = 2112;
    v63 = v27;
    _os_log_impl(&dword_22F0FC000, v24, OS_LOG_TYPE_DEFAULT, "[PGGraphMemoriesEnrichmentProcessor] Found %lu Memory nodes to enrich out of %lu without local memories and %lu with local memories.\n\tEnrichment date range: %@ - %@", buf, 0x34u);
  }

  v28 = v39;
  v29 = v10;

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v48, 8);

  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

void __114__PGGraphMemoriesEnrichmentProcessor_sortedMemoryNodesToEnrichForMemoryNodes_localMemoryByUniqueIdentifier_graph___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v17 = [v3 uniqueMemoryIdentifier];
  v4 = [*(a1 + 32) objectForKeyedSubscript:?];
  if (v4)
  {
    [*(a1 + 40) addObject:v3];

    v3 = [v4 lastEnrichmentDate];
    v5 = *(*(a1 + 56) + 8);
    v6 = *(v5 + 40);
    if (v6)
    {
      v7 = [v6 earlierDate:v3];
      v8 = *(*(a1 + 56) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;
    }

    else
    {
      v10 = v3;
      v9 = *(v5 + 40);
      *(v5 + 40) = v10;
    }

    v11 = *(*(a1 + 64) + 8);
    v12 = *(v11 + 40);
    if (v12)
    {
      v13 = [v12 laterDate:v3];
      v14 = *(*(a1 + 64) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;
    }

    else
    {
      v16 = v3;
      v15 = *(v11 + 40);
      *(v11 + 40) = v16;
    }
  }

  else
  {
    [*(a1 + 48) addObject:v3];
  }
}

BOOL __114__PGGraphMemoriesEnrichmentProcessor_sortedMemoryNodesToEnrichForMemoryNodes_localMemoryByUniqueIdentifier_graph___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueMemoryIdentifier];
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  [v4 photosGraphVersion];
  if (PLMemoriesAlgorithmsVersionFromPhotosGraphVersion() >= 0x400)
  {
    v6 = [v4 lastEnrichmentDate];
    [v6 timeIntervalSinceNow];
    v5 = fabs(v7) > 2629800.0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)sortedMemoryNodesToEnrichForIncrementalForMemoryNodes:(id)nodes localMemoryByUniqueIdentifier:(id)identifier graph:(id)graph
{
  v44 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v9 = MEMORY[0x277CBEB18];
  graphCopy = graph;
  nodesCopy = nodes;
  v12 = objc_alloc_init(v9);
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v30 = MEMORY[0x277D85DD0];
  v31 = 3221225472;
  v32 = __128__PGGraphMemoriesEnrichmentProcessor_sortedMemoryNodesToEnrichForIncrementalForMemoryNodes_localMemoryByUniqueIdentifier_graph___block_invoke;
  v33 = &unk_278884660;
  v16 = identifierCopy;
  v34 = v16;
  v17 = v13;
  v35 = v17;
  v18 = v15;
  v36 = v18;
  v19 = v14;
  v37 = v19;
  [nodesCopy enumerateNodesUsingBlock:&v30];

  v20 = [(PGGraphMemoriesEnrichmentProcessor *)self _memoryNodesSortedForEnrichment:v17 localMemoryByUniqueIdentifier:0 graph:graphCopy, v30, v31, v32, v33];
  [v12 addObjectsFromArray:v20];

  v21 = [(PGGraphMemoriesEnrichmentProcessor *)self _memoryNodesSortedForEnrichment:v18 localMemoryByUniqueIdentifier:v16 graph:graphCopy];
  [v12 addObjectsFromArray:v21];

  v22 = [(PGGraphMemoriesEnrichmentProcessor *)self _memoryNodesSortedForEnrichment:v19 localMemoryByUniqueIdentifier:v16 graph:graphCopy];

  [v12 addObjectsFromArray:v22];
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    v24 = loggingConnection;
    v25 = [v12 count];
    v26 = [v17 count];
    v27 = [v19 count];
    *buf = 134218496;
    v39 = v25;
    v40 = 2048;
    v41 = v26;
    v42 = 2048;
    v43 = v27;
    _os_log_impl(&dword_22F0FC000, v24, OS_LOG_TYPE_DEFAULT, "[PGGraphMemoriesEnrichmentProcessor] Found %lu Memory nodes to enrich out of %lu without local memories and %lu with local memories whose lastEnrichmentDate is nil.", buf, 0x20u);
  }

  v28 = *MEMORY[0x277D85DE8];

  return v12;
}

void __128__PGGraphMemoriesEnrichmentProcessor_sortedMemoryNodesToEnrichForIncrementalForMemoryNodes_localMemoryByUniqueIdentifier_graph___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9 = v3;
  v5 = [v3 uniqueMemoryIdentifier];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    [v6 photosGraphVersion];
    if (PLMemoriesAlgorithmsVersionFromPhotosGraphVersion() >= 0x400)
    {
      v8 = [v6 lastEnrichmentDate];

      if (v8)
      {
        goto LABEL_8;
      }

      v7 = 56;
    }

    else
    {
      v7 = 48;
    }
  }

  else
  {
    v7 = 40;
  }

  [*(a1 + v7) addObject:v9];
LABEL_8:
}

- (unint64_t)_targetNumberOfMemoriesToEnrichWithPhotoLibrary:(id)library
{
  v20 = *MEMORY[0x277D85DE8];
  libraryCopy = library;
  numberOfMemoriesToEnrich = self->_numberOfMemoriesToEnrich;
  if (numberOfMemoriesToEnrich)
  {
    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v17 = numberOfMemoriesToEnrich;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[PGGraphMemoriesEnrichmentProcessor] Target overriden: Will try to enrich %tu memory nodes.", buf, 0xCu);
      numberOfMemoriesToEnrich = self->_numberOfMemoriesToEnrich;
    }
  }

  else
  {
    v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-21600.0];
    librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
    [librarySpecificFetchOptions setIncludeLocalMemories:1];
    v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"lastEnrichmentDate > %@", v7];
    [librarySpecificFetchOptions setInternalPredicate:v9];

    v10 = [MEMORY[0x277CD98D8] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:librarySpecificFetchOptions];
    v11 = [v10 count];
    v12 = v11;
    if (v11 >= 0xC8)
    {
      numberOfMemoriesToEnrich = 200;
    }

    else
    {
      numberOfMemoriesToEnrich = 200 - v11;
    }

    v13 = self->_loggingConnection;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v17 = numberOfMemoriesToEnrich;
      v18 = 2048;
      v19 = v12;
      _os_log_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_DEFAULT, "[PGGraphMemoriesEnrichmentProcessor] Will try to enrich %tu memory nodes (%tu recently enriched).", buf, 0x16u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return numberOfMemoriesToEnrich;
}

- (id)enrichedMemoryFromMemoryNode:(id)node atCreationDate:(id)date configuration:(id)configuration curationContext:(id)context enrichedMemoryFactory:(id)factory graph:(id)graph progressReporter:(id)reporter
{
  v44 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  configurationCopy = configuration;
  factoryCopy = factory;
  reporterCopy = reporter;
  contextCopy = context;
  dateCopy = date;
  v20 = [PGTriggeredMemory alloc];
  v21 = [(PGTriggeredMemory *)v20 initWithMemoryNode:nodeCopy validityIntervalByTriggerType:MEMORY[0x277CBEC10] creationDate:dateCopy];

  memoryFeatureNodes = [nodeCopy memoryFeatureNodes];
  memoryMomentNodes = [nodeCopy memoryMomentNodes];
  v24 = +[PGMemoryFeatureBlocking blockableFeaturesForFeatureNodes:momentNodes:memoryCategory:](PGMemoryFeatureBlocking, "blockableFeaturesForFeatureNodes:momentNodes:memoryCategory:", memoryFeatureNodes, memoryMomentNodes, [nodeCopy memoryCategory]);

  userFeedbackCalculator = [contextCopy userFeedbackCalculator];

  v26 = [userFeedbackCalculator memoryFeaturesWithNegativeFeedbackForMemoryFeatures:v24];

  if ([(__CFString *)v26 count])
  {
    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
    {
      v28 = MEMORY[0x277CD98D8];
      v29 = loggingConnection;
      v30 = [v28 stringForCategory:{objc_msgSend(nodeCopy, "memoryCategory")}];
      v40 = 138412546;
      v41 = v30;
      v42 = 2112;
      v43 = v26;
      _os_log_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_DEFAULT, "[PGGraphMemoriesEnrichmentProcessor] Not enriching memory of category %@ because it contains blocked features %@", &v40, 0x16u);
    }

    v31 = 0;
  }

  else
  {
    [(PGTriggeredMemory *)v21 setBlockableFeatures:v24];
    v31 = [factoryCopy debugEnrichedMemoryWithTriggeredMemory:v21 withConfiguration:configurationCopy progressReporter:reporterCopy];
    if ([v31 failedEnrichment])
    {
      v32 = self->_loggingConnection;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = v32;
        failureReason = [v31 failureReason];
        if (failureReason > 8)
        {
          v35 = @"PGEnrichedMemoryFailureReasonUnknown";
        }

        else
        {
          v35 = off_278884C98[failureReason];
        }

        v36 = v35;
        v40 = 138412546;
        v41 = v31;
        v42 = 2112;
        v43 = v36;
        _os_log_impl(&dword_22F0FC000, v33, OS_LOG_TYPE_DEFAULT, "[PGGraphMemoriesEnrichmentProcessor] Failed to enrich memory %@ (%@): Persisting empty memory", &v40, 0x16u);
      }

      uniqueMemoryIdentifier = [v31 uniqueMemoryIdentifier];
      [v31 setTitle:uniqueMemoryIdentifier];
    }
  }

  v38 = *MEMORY[0x277D85DE8];

  return v31;
}

- (id)enrichMemoryNodes:(id)nodes localMemoryByUniqueIdentifier:(id)identifier workingContext:(id)context graph:(id)graph progressReporter:(id)reporter
{
  v95 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  identifierCopy = identifier;
  contextCopy = context;
  graphCopy = graph;
  reporterCopy = reporter;
  photoLibrary = [contextCopy photoLibrary];
  v76 = [nodesCopy count];
  selfCopy = self;
  v87 = [objc_alloc(MEMORY[0x277D22C88]) initWithProgressReporter:reporterCopy];
  v75 = [(PGGraphMemoriesEnrichmentProcessor *)self _targetNumberOfMemoriesToEnrichWithPhotoLibrary:photoLibrary];
  v16 = [objc_alloc(MEMORY[0x277D3C790]) initWithPhotoLibrary:photoLibrary];
  v71 = [[PGMemoryPhotoKitPersister alloc] initWithPhotoLibrary:photoLibrary];
  v17 = objc_alloc_init(PGMemoryElectorConfiguration);
  v18 = [[PGGraphLocationHelper alloc] initWithGraph:graphCopy];
  v19 = [PGMemoryCurationSession alloc];
  curationManager = [contextCopy curationManager];
  v82 = v16;
  v69 = v18;
  v21 = [(PGMemoryCurationSession *)v19 initWithCurationManager:curationManager photoLibrary:photoLibrary curationContext:v16 locationHelper:v18];

  v22 = [PGEnrichedMemoryFactory alloc];
  serviceManager = [contextCopy serviceManager];
  v80 = [(PGEnrichedMemoryFactory *)v22 initWithMemoryCurationSession:v21 graph:graphCopy serviceManager:serviceManager];

  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v73 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = [PGMemoryDate alloc];
  localDate = [(PGMemoryElectorConfiguration *)v17 localDate];
  v27 = [(PGMemoryDate *)v25 initWithLocalDate:localDate];

  v81 = v17;
  timeZone = [(PGMemoryElectorConfiguration *)v17 timeZone];
  v68 = v27;
  v79 = [(PGMemoryDate *)v27 universalDateInTimeZone:timeZone];

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v29 = nodesCopy;
  v78 = [v29 countByEnumeratingWithState:&v88 objects:v94 count:16];
  v30 = 0;
  if (v78)
  {
    v31 = 0.6 / v76 * 0.5;
    v77 = *v89;
    v32 = 0.0;
    v33 = v24;
    v66 = photoLibrary;
    v67 = contextCopy;
    v70 = graphCopy;
    v65 = v21;
    obj = v29;
    while (2)
    {
      for (i = 0; i != v78; ++i)
      {
        if (*v89 != v77)
        {
          objc_enumerationMutation(obj);
        }

        v35 = *(*(&v88 + 1) + 8 * i);
        v36 = objc_autoreleasePoolPush();
        v32 = v31 + v32;
        v37 = [v87 childProgressReporterToCheckpoint:v32];
        v38 = [(PGGraphMemoriesEnrichmentProcessor *)selfCopy enrichedMemoryFromMemoryNode:v35 atCreationDate:v79 configuration:v81 curationContext:v82 enrichedMemoryFactory:v80 graph:graphCopy progressReporter:v37];
        throughputReportBlock = [reporterCopy throughputReportBlock];

        if (throughputReportBlock)
        {
          throughputReportBlock2 = [reporterCopy throughputReportBlock];
          v84 = i;
          v41 = v38;
          v42 = v37;
          v43 = v36;
          v44 = v30;
          v45 = reporterCopy;
          v46 = graphCopy;
          v47 = v33;
          v48 = [MEMORY[0x277CD98D8] stringForCategory:{objc_msgSend(v35, "memoryCategory")}];
          (throughputReportBlock2)[2](throughputReportBlock2, 1, v48);

          v33 = v47;
          graphCopy = v46;
          reporterCopy = v45;
          v30 = v44;
          v36 = v43;
          v37 = v42;
          v38 = v41;
          i = v84;
        }

        if ([reporterCopy isCancelled])
        {

          objc_autoreleasePoolPop(v36);
          v57 = obj;

          v58 = 0;
          photoLibrary = v66;
          contextCopy = v67;
          v21 = v65;
          goto LABEL_34;
        }

        if (v38)
        {
          v30 += [v38 failedEnrichment] ^ 1;
          [v33 addObject:v38];
          uniqueMemoryIdentifier = [v35 uniqueMemoryIdentifier];
          if (uniqueMemoryIdentifier)
          {
            [v73 addObject:uniqueMemoryIdentifier];
            v32 = v31 + v32;
            v50 = [v33 count];
            if (v50 > 0x18 || v30 >= v75)
            {
              v51 = [v87 childProgressReporterToCheckpoint:v32];
              v52 = v33;
              v53 = v51;
              v85 = v52;
              [PGGraphMemoriesEnrichmentProcessor insertOrUpdateLocalMemoriesForEnrichedMemories:selfCopy localMemoryByUniqueIdentifier:"insertOrUpdateLocalMemoriesForEnrichedMemories:localMemoryByUniqueIdentifier:memoryPersister:progressReporter:" memoryPersister:? progressReporter:?];
              throughputReportBlock3 = [reporterCopy throughputReportBlock];

              if (throughputReportBlock3)
              {
                throughputReportBlock4 = [reporterCopy throughputReportBlock];
                (throughputReportBlock4)[2](throughputReportBlock4, v50, @"persisting");
              }

              if ([reporterCopy isCancelled])
              {

                objc_autoreleasePoolPop(v36);
                v57 = obj;

                v58 = 0;
                photoLibrary = v66;
                contextCopy = v67;
                graphCopy = v70;
                v21 = v65;
                v33 = v85;
                goto LABEL_34;
              }

              v56 = objc_alloc_init(MEMORY[0x277CBEB18]);

              v33 = v56;
              graphCopy = v70;
            }

            if (v30 >= v75)
            {

              objc_autoreleasePoolPop(v36);
              photoLibrary = v66;
              contextCopy = v67;
              v21 = v65;
              v29 = obj;
              goto LABEL_27;
            }
          }

          else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Memory's uniqueMemoryIdentifier is nil", buf, 2u);
          }
        }

        objc_autoreleasePoolPop(v36);
      }

      v29 = obj;
      photoLibrary = v66;
      contextCopy = v67;
      v21 = v65;
      v78 = [obj countByEnumeratingWithState:&v88 objects:v94 count:16];
      if (v78)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v33 = v24;
  }

LABEL_27:
  v57 = v29;

  if ([v33 count] && (objc_msgSend(v87, "childProgressReporterToCheckpoint:", 0.7), v59 = objc_claimAutoreleasedReturnValue(), -[PGGraphMemoriesEnrichmentProcessor insertOrUpdateLocalMemoriesForEnrichedMemories:localMemoryByUniqueIdentifier:memoryPersister:progressReporter:](selfCopy, "insertOrUpdateLocalMemoriesForEnrichedMemories:localMemoryByUniqueIdentifier:memoryPersister:progressReporter:", v33, identifierCopy, v71, v59), v60 = objc_msgSend(reporterCopy, "isCancelled"), v59, (v60 & 1) != 0))
  {
    v58 = 0;
LABEL_34:
    v62 = v73;
  }

  else
  {
    loggingConnection = selfCopy->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v93 = v30;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[PGGraphMemoriesEnrichmentProcessor] Enriched %tu Memory nodes.", buf, 0xCu);
    }

    v62 = v73;
    v58 = v73;
  }

  v63 = *MEMORY[0x277D85DE8];

  return v58;
}

- (id)runWithGraphManager:(id)manager forMemoryUUIDs:(id)ds progressReporter:(id)reporter error:(id *)error
{
  managerCopy = manager;
  dsCopy = ds;
  reporterCopy = reporter;
  workingContextForMemories = [managerCopy workingContextForMemories];
  photoLibrary = [workingContextForMemories photoLibrary];
  v15 = [MEMORY[0x277CBEB98] setWithArray:dsCopy];
  v16 = [PGGraphMemoryProcessorHelper localMemoryByUniqueIdentifierForMemoryUUIDs:v15 inPhotoLibrary:photoLibrary];

  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__42278;
  v46 = __Block_byref_object_dispose__42279;
  v47 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__42278;
  v40 = __Block_byref_object_dispose__42279;
  v41 = 0;
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = __96__PGGraphMemoriesEnrichmentProcessor_runWithGraphManager_forMemoryUUIDs_progressReporter_error___block_invoke;
  v28 = &unk_278884638;
  selfCopy = self;
  v17 = v16;
  v30 = v17;
  v34 = &v36;
  v18 = dsCopy;
  v31 = v18;
  v35 = &v42;
  v19 = workingContextForMemories;
  v32 = v19;
  v20 = reporterCopy;
  v33 = v20;
  [v19 performSynchronousConcurrentGraphReadUsingBlock:&v25];
  if (error)
  {
    v21 = v37[5];
    if (v21)
    {
      v22 = v21;
    }

    else
    {
      if (![v20 isCancelled])
      {
        goto LABEL_7;
      }

      v22 = [PGError errorForCode:-4];
    }

    *error = v22;
  }

LABEL_7:
  v23 = v43[5];

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);

  return v23;
}

void __96__PGGraphMemoriesEnrichmentProcessor_runWithGraphManager_forMemoryUUIDs_progressReporter_error___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = *(*(a1 + 32) + 24);
  v5 = a2;
  v6 = os_signpost_id_generate(v4);
  v7 = v4;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "PGGraphMemoriesEnrichmentProcessorForUUIDs", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v9 = mach_absolute_time();
  v10 = [v5 graph];

  v11 = [*(a1 + 40) allKeys];
  v12 = [PGGraphMemoryNodeCollection memoryNodesWithUniqueIdentifierArray:v11 inGraph:v10];

  v13 = [v12 array];
  if ([v13 count])
  {
    v14 = [*(a1 + 32) enrichMemoryNodes:v13 localMemoryByUniqueIdentifier:*(a1 + 40) workingContext:*(a1 + 56) graph:v10 progressReporter:*(a1 + 64)];
    v15 = *(*(a1 + 80) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v17 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v20 = v8;
    v21 = v20;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v21, OS_SIGNPOST_INTERVAL_END, v6, "PGGraphMemoriesEnrichmentProcessorForUUIDs", "", buf, 2u);
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v32 = "PGGraphMemoriesEnrichmentProcessorForUUIDs";
      v33 = 2048;
      v34 = ((((v17 - v9) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v21, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }
  }

  else
  {
    v22 = MEMORY[0x277CCA9B8];
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"No memory nodes to enrich for %@", *(a1 + 48)];
    v24 = [v22 pl_analysisErrorWithCode:1 localizedDescription:v23];
    v25 = *(*(a1 + 72) + 8);
    v26 = *(v25 + 40);
    *(v25 + 40) = v24;

    v27 = *(*(a1 + 32) + 24);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v29 = *(*(*(a1 + 72) + 8) + 40);
      *buf = 138412290;
      v32 = v29;
      _os_log_error_impl(&dword_22F0FC000, v27, OS_LOG_TYPE_ERROR, "[PGGraphMemoriesEnrichmentProcessor] Error: %@", buf, 0xCu);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (id)runWithGraphManager:(id)manager forMemoryCategory:(unint64_t)category progressReporter:(id)reporter error:(id *)error
{
  managerCopy = manager;
  reporterCopy = reporter;
  workingContextForMemories = [managerCopy workingContextForMemories];
  photoLibrary = [workingContextForMemories photoLibrary];
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__42278;
  v38 = __Block_byref_object_dispose__42279;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__42278;
  v32 = __Block_byref_object_dispose__42279;
  v33 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __99__PGGraphMemoriesEnrichmentProcessor_runWithGraphManager_forMemoryCategory_progressReporter_error___block_invoke;
  v21[3] = &unk_278884610;
  categoryCopy = category;
  v21[4] = self;
  v25 = &v28;
  v14 = photoLibrary;
  v22 = v14;
  v26 = &v34;
  v15 = workingContextForMemories;
  v23 = v15;
  v16 = reporterCopy;
  v24 = v16;
  [v15 performSynchronousConcurrentGraphReadUsingBlock:v21];
  if (error)
  {
    v17 = v29[5];
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      if (![v16 isCancelled])
      {
        goto LABEL_7;
      }

      v18 = [PGError errorForCode:-4];
    }

    *error = v18;
  }

LABEL_7:
  v19 = v35[5];

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);

  return v19;
}

void __99__PGGraphMemoriesEnrichmentProcessor_runWithGraphManager_forMemoryCategory_progressReporter_error___block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = *(*(a1 + 32) + 24);
  v5 = a2;
  v6 = os_signpost_id_generate(v4);
  v7 = v4;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "PGGraphMemoriesEnrichmentProcessorForUUIDs", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v9 = mach_absolute_time();
  v10 = [v5 graph];

  v11 = [PGGraphMemoryNodeCollection memoryNodesOfCategory:*(a1 + 80) inGraph:v10];
  v12 = [v11 array];
  if ([v12 count])
  {
    v32 = v9;
    v13 = [v11 uniqueMemoryIdentifiers];
    v14 = [v13 allObjects];
    v15 = [PGGraphMemoryProcessorHelper localMemoryByUniqueIdentifierWithGraphMemoryIdentifiers:v14 inPhotoLibrary:*(a1 + 40)];

    v16 = [*(a1 + 32) enrichMemoryNodes:v12 localMemoryByUniqueIdentifier:v15 workingContext:*(a1 + 48) graph:v10 progressReporter:*(a1 + 56)];
    v17 = *(*(a1 + 72) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    v19 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v22 = v8;
    v23 = v22;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v23, OS_SIGNPOST_INTERVAL_END, v6, "PGGraphMemoriesEnrichmentProcessorForUUIDs", "", buf, 2u);
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v35 = "PGGraphMemoriesEnrichmentProcessorForUUIDs";
      v36 = 2048;
      v37 = ((((v19 - v32) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v23, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }
  }

  else
  {
    v24 = MEMORY[0x277CCA9B8];
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"No memory nodes to enrich for category %zu", *(a1 + 80)];
    v26 = [v24 pl_analysisErrorWithCode:1 localizedDescription:v25];
    v27 = *(*(a1 + 64) + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = v26;

    v29 = *(*(a1 + 32) + 24);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v31 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 138412290;
      v35 = v31;
      _os_log_error_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_ERROR, "[PGGraphMemoriesEnrichmentProcessor] Error: %@", buf, 0xCu);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (BOOL)runWithGraphManager:(id)manager incrementalChange:(id)change progressReporter:(id)reporter error:(id *)error
{
  managerCopy = manager;
  changeCopy = change;
  reporterCopy = reporter;
  workingContextForMemories = [managerCopy workingContextForMemories];
  photoLibrary = [workingContextForMemories photoLibrary];
  v15 = [PGGraphMemoryProcessorHelper localMemoryByUniqueIdentifierInPhotoLibrary:photoLibrary];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 1;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __99__PGGraphMemoriesEnrichmentProcessor_runWithGraphManager_incrementalChange_progressReporter_error___block_invoke;
  v24[3] = &unk_2788845E8;
  v24[4] = self;
  v16 = changeCopy;
  v25 = v16;
  v17 = v15;
  v26 = v17;
  v18 = reporterCopy;
  v27 = v18;
  v19 = photoLibrary;
  v28 = v19;
  v20 = workingContextForMemories;
  v29 = v20;
  v30 = &v31;
  [v20 performSynchronousConcurrentGraphReadUsingBlock:v24];
  v21 = [v18 isCancelled] ^ 1;
  if (!error)
  {
    LOBYTE(v21) = 1;
  }

  if ((v21 & 1) == 0)
  {
    *error = [PGError errorForCode:-4];
  }

  v22 = *(v32 + 24);

  _Block_object_dispose(&v31, 8);
  return v22;
}

void __99__PGGraphMemoriesEnrichmentProcessor_runWithGraphManager_incrementalChange_progressReporter_error___block_invoke(uint64_t a1, void *a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v5 = os_signpost_id_generate(v4);
  v6 = v4;
  v7 = v6;
  v8 = v5 - 1;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PGGraphMemoriesEnrichmentProcessor", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v9 = mach_absolute_time();
  v10 = [v3 graph];
  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = [v11 isResumingFullAnalysis];
  }

  else
  {
    v12 = 1;
  }

  v13 = *(a1 + 32);
  v14 = [objc_opt_class() enrichableMemoryNodesInGraph:v10];
  v15 = *(a1 + 32);
  v16 = *(a1 + 48);
  if (v12)
  {
    [v15 sortedMemoryNodesToEnrichForMemoryNodes:v14 localMemoryByUniqueIdentifier:v16 graph:v10];
  }

  else
  {
    [v15 sortedMemoryNodesToEnrichForIncrementalForMemoryNodes:v14 localMemoryByUniqueIdentifier:v16 graph:v10];
  }
  v17 = ;
  v45 = [*(a1 + 56) childProgressReporterFromStart:0.0 toEnd:0.1];
  [*(a1 + 32) deleteNoLongerExistingMemoryNodes:v14 fromLocalMemoryByUniqueIdentifier:*(a1 + 48) inPhotoLibrary:*(a1 + 64) progressReporter:?];
  if (([*(a1 + 56) isCancelled] & 1) == 0)
  {
    if ([v17 count])
    {
      v42 = v9;
      v18 = [*(a1 + 56) throughputReportBlock];

      if (v18)
      {
        v19 = [*(a1 + 56) throughputReportBlock];
        (v19)[2](v19, 1, @"prepareStep");
      }

      v43 = [*(a1 + 56) childProgressReporterFromStart:0.1 toEnd:1.0];
      v44 = [*(a1 + 32) enrichMemoryNodes:v17 localMemoryByUniqueIdentifier:*(a1 + 48) workingContext:*(a1 + 72) graph:v10 progressReporter:?];
      *(*(*(a1 + 80) + 8) + 24) = v44 != 0;
      if (([*(a1 + 56) isCancelled] & 1) == 0)
      {
        if ((v12 & 1) == 0)
        {
          v37 = v5 - 1;
          v39 = v5;
          v40 = v7;
          v41 = v3;
          v20 = [MEMORY[0x277CBEB58] set];
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v38 = v17;
          v21 = v17;
          v22 = [v21 countByEnumeratingWithState:&v46 objects:v55 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v47;
            do
            {
              for (i = 0; i != v23; ++i)
              {
                if (*v47 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v26 = *(*(&v46 + 1) + 8 * i);
                v27 = objc_autoreleasePoolPush();
                v28 = [v26 uniqueMemoryIdentifier];
                [v20 addObject:v28];

                objc_autoreleasePoolPop(v27);
              }

              v23 = [v21 countByEnumeratingWithState:&v46 objects:v55 count:16];
            }

            while (v23);
          }

          if (v44)
          {
            v29 = [MEMORY[0x277CBEB98] setWithArray:?];
            [v20 minusSet:v29];
          }

          [PGGraphMemoryProcessorHelper resetLocalMemoryLastEnrichmentDateOfMemoriesWithUniqueIdentifiers:v20 localMemoryByUniqueIdentifierCache:*(a1 + 48) inPhotoLibrary:*(a1 + 64)];

          v7 = v40;
          v3 = v41;
          v17 = v38;
          v5 = v39;
          v8 = v37;
        }

        v30 = mach_absolute_time();
        numer = info.numer;
        denom = info.denom;
        v33 = v7;
        v34 = v33;
        if (v8 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v34, OS_SIGNPOST_INTERVAL_END, v5, "PGGraphMemoriesEnrichmentProcessor", "", buf, 2u);
        }

        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v52 = "PGGraphMemoriesEnrichmentProcessor";
          v53 = 2048;
          v54 = ((((v30 - v42) * numer) / denom) / 1000000.0);
          _os_log_impl(&dword_22F0FC000, v34, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
        }
      }
    }

    else
    {
      v35 = *(*(a1 + 32) + 24);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22F0FC000, v35, OS_LOG_TYPE_DEFAULT, "[PGGraphMemoriesEnrichmentProcessor] No memory nodes to enrich", buf, 2u);
      }
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (PGGraphMemoriesEnrichmentProcessor)initWithNumberOfMemoriesToEnrich:(unint64_t)enrich
{
  v9.receiver = self;
  v9.super_class = PGGraphMemoriesEnrichmentProcessor;
  v4 = [(PGGraphMemoriesEnrichmentProcessor *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_numberOfMemoriesToEnrich = enrich;
    v6 = os_log_create("com.apple.PhotosGraph", "MemoriesEnrichment");
    loggingConnection = v5->_loggingConnection;
    v5->_loggingConnection = v6;
  }

  return v5;
}

+ (id)categoriesOfMemoriesToPrioritize
{
  v2 = objc_alloc_init(MEMORY[0x277CCAB58]);
  [v2 addIndex:31];
  [v2 addIndex:19];

  return v2;
}

@end