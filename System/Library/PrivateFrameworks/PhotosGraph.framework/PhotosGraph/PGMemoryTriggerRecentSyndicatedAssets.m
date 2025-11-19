@interface PGMemoryTriggerRecentSyndicatedAssets
- (PGMemoryTriggerRecentSyndicatedAssets)initWithLoggingConnection:(id)a3 photoLibrary:(id)a4 momentNodesWithBlockedFeatureCache:(id)a5;
- (id)resultsTriggeredWithContext:(id)a3 inGraph:(id)a4 progressReporter:(id)a5;
@end

@implementation PGMemoryTriggerRecentSyndicatedAssets

- (id)resultsTriggeredWithContext:(id)a3 inGraph:(id)a4 progressReporter:(id)a5
{
  v83 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v76 = 0;
  v77 = &v76;
  v78 = 0x2020000000;
  v79 = 0;
  v11 = [v10 isCancelledWithProgress:0.0];
  *(v77 + 24) = v11;
  if (v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v82 = 56;
      *&v82[4] = 2080;
      *&v82[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerRecentSyndicatedAssets.m";
      v12 = MEMORY[0x277D86220];
LABEL_25:
      _os_log_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      goto LABEL_26;
    }

    goto LABEL_26;
  }

  v13 = [(PGPhotoKitMemoryTrigger *)self photoLibrary];
  v14 = v13 == 0;

  if (v14)
  {
    v35 = [(PGMemoryTrigger *)self loggingConnection];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F0FC000, v35, OS_LOG_TYPE_ERROR, "[PGMemoryTriggerRecentSyndicatedAssets]: Trigger not available without a photo library.", buf, 2u);
    }

    if (v77[3])
    {
      *(v77 + 24) = 1;
    }

    else
    {
      v37 = [v10 isCancelledWithProgress:1.0];
      *(v77 + 24) = v37;
      if ((v37 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v82 = 59;
      *&v82[4] = 2080;
      *&v82[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerRecentSyndicatedAssets.m";
      v12 = MEMORY[0x277D86220];
      goto LABEL_25;
    }

LABEL_26:
    v34 = MEMORY[0x277CBEBF8];
    goto LABEL_59;
  }

  v15 = [v8 localDate];
  v16 = MEMORY[0x277D27690];
  v17 = [v8 timeZone];
  v18 = [v16 universalDateFromLocalDate:v15 inTimeZone:v17];

  v64 = [MEMORY[0x277D27690] dateByAddingDays:-7 toDate:v18];
  v19 = [(PGPhotoKitMemoryTrigger *)self photoLibrary];
  v20 = [v19 librarySpecificFetchOptions];

  v63 = [MEMORY[0x277D3B248] predicateForIncludeMask:objc_msgSend(MEMORY[0x277D3B248] useIndex:{"maskForGuestAsset"), 1}];
  v62 = [MEMORY[0x277CCAC30] predicateWithFormat:@"dateCreated > %@ && dateCreated <= %@", v64, v18];
  v21 = MEMORY[0x277CCA920];
  v80[0] = v63;
  v80[1] = v62;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:2];
  v23 = [v21 andPredicateWithSubpredicates:v22];
  [v20 setInternalPredicate:v23];

  [v20 setIncludeGuestAssets:1];
  v61 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:v20];
  v24 = [v61 count];
  if (v24)
  {
    v25 = [(PGMemoryTrigger *)self loggingConnection];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *v82 = v24;
      _os_log_impl(&dword_22F0FC000, v25, OS_LOG_TYPE_INFO, "[PGMemoryTriggerRecentSyndicatedAssets]: Found %tu recent guest", buf, 0xCu);
    }

    v26 = [(PGPhotoKitMemoryTrigger *)self photoLibrary];
    v60 = [v26 librarySpecificFetchOptions];

    v57 = [MEMORY[0x277CD98F8] fetchMomentUUIDByAssetUUIDForAssets:v61 options:v60];
    v59 = [v57 allValues];
    if ([v59 count])
    {
      v58 = [PGGraphMomentNodeCollection momentNodesForArrayOfUUIDs:v59 inGraph:v9];
      if ([v58 count])
      {
        v27 = [MEMORY[0x277CCAB58] indexSetWithIndex:1];
        [v27 addIndex:19];
        [v27 addIndex:16];
        v55 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v28 = MEMORY[0x277D22BF8];
        v29 = +[PGGraphMomentNode memoryOfMoment];
        v30 = [v28 adjacencyWithSources:v58 relation:v29 targetsClass:objc_opt_class()];

        v31 = MEMORY[0x277D22C80];
        v73[0] = MEMORY[0x277D85DD0];
        v73[1] = 3221225472;
        v73[2] = __94__PGMemoryTriggerRecentSyndicatedAssets_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke;
        v73[3] = &unk_278889448;
        v75 = &v76;
        v51 = v10;
        v74 = v51;
        v32 = [v31 progressReporterWithProgressBlock:v73];
        v65[0] = MEMORY[0x277D85DD0];
        v65[1] = 3221225472;
        v65[2] = __94__PGMemoryTriggerRecentSyndicatedAssets_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke_2;
        v65[3] = &unk_278883698;
        v53 = v30;
        v66 = v53;
        v33 = v27;
        v67 = v33;
        v68 = self;
        v69 = v9;
        v54 = v32;
        v70 = v54;
        v72 = &v76;
        v56 = v55;
        v71 = v56;
        [v58 enumerateIdentifiersAsCollectionsWithBlock:v65];
        if (*(v77 + 24) == 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v82 = 161;
            *&v82[4] = 2080;
            *&v82[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerRecentSyndicatedAssets.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v34 = MEMORY[0x277CBEBF8];
          goto LABEL_55;
        }

        v52 = [MEMORY[0x277D27690] dateByAddingDays:5 toDate:v15];
        v41 = objc_opt_class();
        v42 = [v8 timeZone];
        v43 = [v41 validityIntervalForLocalStartDate:v15 localEndDate:v52 timeZone:v42];

        if (v77[3])
        {
          *(v77 + 24) = 1;
        }

        else
        {
          v46 = [v51 isCancelledWithProgress:1.0];
          *(v77 + 24) = v46;
          if ((v46 & 1) == 0)
          {
            v47 = objc_opt_class();
            v48 = [v56 allObjects];
            v34 = [v47 memoryTriggerResultsForMemoryNodesArray:v48 withValidityInterval:v43];

LABEL_54:
LABEL_55:

            goto LABEL_56;
          }
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v82 = 165;
          *&v82[4] = 2080;
          *&v82[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerRecentSyndicatedAssets.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v34 = MEMORY[0x277CBEBF8];
        goto LABEL_54;
      }

      v40 = [(PGMemoryTrigger *)self loggingConnection];
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v82 = v59;
        _os_log_impl(&dword_22F0FC000, v40, OS_LOG_TYPE_DEFAULT, "[PGMemoryTriggerRecentSyndicatedAssets]: Couldn't find moment node for moment UUIDs: %@", buf, 0xCu);
      }

      if (v77[3])
      {
        *(v77 + 24) = 1;
      }

      else
      {
        v45 = [v10 isCancelledWithProgress:1.0];
        *(v77 + 24) = v45;
        if ((v45 & 1) == 0)
        {
LABEL_48:
          v34 = MEMORY[0x277CBEBF8];
LABEL_56:

          goto LABEL_57;
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v82 = 103;
        *&v82[4] = 2080;
        *&v82[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerRecentSyndicatedAssets.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      goto LABEL_48;
    }

    v38 = [(PGMemoryTrigger *)self loggingConnection];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F0FC000, v38, OS_LOG_TYPE_ERROR, "[PGMemoryTriggerRecentSyndicatedAssets]: Cannot find moments featuring the guest assets available", buf, 2u);
    }

    if (v77[3])
    {
      *(v77 + 24) = 1;
    }

    else
    {
      v44 = [v10 isCancelledWithProgress:1.0];
      *(v77 + 24) = v44;
      if ((v44 & 1) == 0)
      {
LABEL_44:
        v34 = MEMORY[0x277CBEBF8];
LABEL_57:

        goto LABEL_58;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v82 = 94;
      *&v82[4] = 2080;
      *&v82[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerRecentSyndicatedAssets.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    goto LABEL_44;
  }

  v36 = [(PGMemoryTrigger *)self loggingConnection];
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, v36, OS_LOG_TYPE_DEFAULT, "[PGMemoryTriggerRecentSyndicatedAssets]: No recent guest assets available", buf, 2u);
  }

  if (v77[3])
  {
    *(v77 + 24) = 1;
    goto LABEL_32;
  }

  v39 = [v10 isCancelledWithProgress:1.0];
  *(v77 + 24) = v39;
  if (v39)
  {
LABEL_32:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v82 = 79;
      *&v82[4] = 2080;
      *&v82[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerRecentSyndicatedAssets.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }
  }

  v34 = MEMORY[0x277CBEBF8];
LABEL_58:

LABEL_59:
  _Block_object_dispose(&v76, 8);

  v49 = *MEMORY[0x277D85DE8];

  return v34;
}

uint64_t __94__PGMemoryTriggerRecentSyndicatedAssets_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke(uint64_t a1, _BYTE *a2)
{
  v4 = *(*(a1 + 40) + 8);
  if (*(v4 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:0.5];
    v4 = *(*(a1 + 40) + 8);
  }

  *(v4 + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

void __94__PGMemoryTriggerRecentSyndicatedAssets_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [*(a1 + 32) targetsForSources:v6];
  v8 = [v7 subsetWithMemoryCategories:*(a1 + 40)];

  if (![(PGGraphMemory *)v8 count])
  {
    v11 = [v6 momentNodesWithMinimumNumberOfExtendedCuratedAssets:13];
    if ([v11 count])
    {
      v13 = [v11 interestingWithAlternateJunkingSubset];

      if (![v13 count])
      {
        v12 = [*(a1 + 48) loggingConnection];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v19 = [v6 anyNode];
          v30 = 138412290;
          v31 = v19;
          _os_log_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_INFO, "[PGMemoryTriggerRecentSyndicatedAssets]: interestingWithAlternateJunking failed for moment %@", &v30, 0xCu);
        }

        v11 = v13;
        goto LABEL_18;
      }

      v11 = [v13 subsetWithEnoughScenesProcessed];

      v14 = [v11 count];
      v15 = *(a1 + 48);
      if (v14)
      {
        v16 = [v15[3] momentNodesWithBlockedFeatureInGraph:*(a1 + 56) progressReporter:*(a1 + 64)];
        v12 = v16;
        if (*(*(*(a1 + 80) + 8) + 24) == 1)
        {
          *a4 = 1;
          goto LABEL_18;
        }

        if (![v16 containsCollection:v6])
        {
          v22 = [v6 featureNodeCollection];
          v23 = [v6 dateNodes];
          v24 = [v23 monthDayNodes];
          v25 = [v24 featureNodeCollection];
          v26 = [v22 collectionByFormingUnionWith:v25];

          v27 = [[PGGraphMemory alloc] initWithMemoryCategory:1 memoryCategorySubcategory:1001 momentNodes:v11 featureNodes:v26];
          [*(a1 + 72) addObject:v27];
          v28 = [*(a1 + 48) loggingConnection];
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = [v6 anyNode];
            v30 = 138412546;
            v31 = v27;
            v32 = 2112;
            v33 = v29;
            _os_log_impl(&dword_22F0FC000, v28, OS_LOG_TYPE_DEFAULT, "[PGMemoryTriggerRecentSyndicatedAssets]: Created Memory %@ for %@", &v30, 0x16u);
          }

          goto LABEL_18;
        }

        v17 = [*(a1 + 48) loggingConnection];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v21 = [v6 anyNode];
          v30 = 138412290;
          v31 = v21;
          _os_log_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_INFO, "[PGMemoryTriggerRecentSyndicatedAssets]: Moment has blocked feature %@", &v30, 0xCu);
        }

LABEL_17:

        goto LABEL_18;
      }

      v12 = [v15 loggingConnection];
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        goto LABEL_18;
      }

      v17 = [v6 anyNode];
      v30 = 138412290;
      v31 = v17;
      v18 = "[PGMemoryTriggerRecentSyndicatedAssets]: Not enough scene processed assets for moment %@";
    }

    else
    {
      v12 = [*(a1 + 48) loggingConnection];
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        goto LABEL_18;
      }

      v17 = [v6 anyNode];
      v30 = 138412290;
      v31 = v17;
      v18 = "[PGMemoryTriggerRecentSyndicatedAssets]: Not enough assets for moment %@";
    }

    _os_log_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_INFO, v18, &v30, 0xCu);
    goto LABEL_17;
  }

  v9 = *(a1 + 72);
  v10 = [(PGGraphMemory *)v8 set];
  [v9 unionSet:v10];

  v11 = [*(a1 + 48) loggingConnection];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v6 anyNode];
    v30 = 138412546;
    v31 = v8;
    v32 = 2112;
    v33 = v12;
    _os_log_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_DEFAULT, "[PGMemoryTriggerRecentSyndicatedAssets]: Found Memories %@ for %@", &v30, 0x16u);
LABEL_18:
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (PGMemoryTriggerRecentSyndicatedAssets)initWithLoggingConnection:(id)a3 photoLibrary:(id)a4 momentNodesWithBlockedFeatureCache:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = PGMemoryTriggerRecentSyndicatedAssets;
  v10 = [(PGPhotoKitMemoryTrigger *)&v13 initWithLoggingConnection:a3 photoLibrary:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_momentNodesWithBlockedFeatureCache, a5);
  }

  return v11;
}

@end