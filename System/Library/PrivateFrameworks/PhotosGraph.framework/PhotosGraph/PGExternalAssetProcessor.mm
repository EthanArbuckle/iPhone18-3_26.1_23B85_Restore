@interface PGExternalAssetProcessor
+ (id)clusterAssetsToProcess:(id)a3 inPhotoLibrary:(id)a4;
- (BOOL)processExternalAssetRelevanceInferenceWithError:(id *)a3 progressReporter:(id)a4 shareBackSuggester:(id)a5;
- (PGExternalAssetProcessor)initWithWorkingContext:(id)a3;
@end

@implementation PGExternalAssetProcessor

- (BOOL)processExternalAssetRelevanceInferenceWithError:(id *)a3 progressReporter:(id)a4 shareBackSuggester:(id)a5
{
  v75 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = v8;
  if (![v10 isCancelledWithProgress:0.0])
  {
    v12 = [(PGManagerWorkingContext *)self->_workingContext loggingConnection];
    v13 = os_signpost_id_generate(v12);
    v14 = v12;
    v15 = v14;
    v57 = v13 - 1;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "ExternalAssetRelevance", "", buf, 2u);
    }

    info = 0;
    mach_timebase_info(&info);
    v56 = mach_absolute_time();
    v16 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
    [v16 setIncludeGuestAssets:0];
    v17 = +[PGCurationManager assetPropertySetsForCuration];
    [v16 setFetchPropertySets:v17];

    v18 = [MEMORY[0x277D3C7D0] internalPredicateToIncludeExternalAssetsNeedingProcessing];
    [v16 setInternalPredicate:v18];

    v19 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:v16];
    if ([v10 isCancelledWithProgress:0.1])
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_14:
        if (a3 && !*a3)
        {
          [MEMORY[0x277D22C28] errorForCode:-4];
          *a3 = v11 = 0;
        }

        else
        {
          v11 = 0;
        }

LABEL_49:

        goto LABEL_50;
      }

      *buf = 67109378;
      *v74 = 58;
      *&v74[4] = 2080;
      *&v74[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/ExternalAssetProcessing/PGExternalAssetProcessor.m";
      v20 = MEMORY[0x277D86220];
LABEL_13:
      _os_log_impl(&dword_22F0FC000, v20, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      goto LABEL_14;
    }

    v55 = [v19 count];
    if (!v55)
    {
      if (![v10 isCancelledWithProgress:1.0])
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_DEFAULT, "No asset eligible for relevance processing", buf, 2u);
        }

        v11 = 1;
        goto LABEL_49;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_14;
      }

      *buf = 67109378;
      *v74 = 62;
      *&v74[4] = 2080;
      *&v74[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/ExternalAssetProcessing/PGExternalAssetProcessor.m";
      v20 = MEMORY[0x277D86220];
      goto LABEL_13;
    }

    spid = v13;
    v53 = [MEMORY[0x277CBEB58] set];
    v46 = [MEMORY[0x277CBEB38] dictionary];
    v50 = [objc_alloc(MEMORY[0x277D22C88]) initWithProgressReporter:v10];
    v21 = [v50 childProgressReporterToCheckpoint:0.9];
    [(PGManagerWorkingContext *)self->_workingContext serviceManager];
    v23 = v22 = v19;
    workingContext = self->_workingContext;
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __112__PGExternalAssetProcessor_processExternalAssetRelevanceInferenceWithError_progressReporter_shareBackSuggester___block_invoke;
    v63[3] = &unk_278889AF0;
    v49 = v21;
    v64 = v49;
    v52 = v9;
    v65 = v9;
    v51 = v15;
    v25 = v15;
    v66 = v25;
    v67 = self;
    v26 = v23;
    v19 = v22;
    v48 = v26;
    v68 = v26;
    v27 = v22;
    v69 = v27;
    v54 = v53;
    v70 = v54;
    v28 = v46;
    v71 = v28;
    [(PGManagerWorkingContext *)workingContext performSynchronousConcurrentGraphReadUsingBlock:v63];
    v29 = v25;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [v27 count];
      *buf = 134217984;
      *v74 = v30;
      _os_log_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_DEFAULT, "%lu external assets processed", buf, 0xCu);
    }

    v31 = v29;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [v54 count];
      *buf = 134217984;
      *v74 = v32;
      _os_log_impl(&dword_22F0FC000, v31, OS_LOG_TYPE_DEFAULT, "%lu external assets inferred as relevant", buf, 0xCu);
    }

    photoLibrary = self->_photoLibrary;
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __112__PGExternalAssetProcessor_processExternalAssetRelevanceInferenceWithError_progressReporter_shareBackSuggester___block_invoke_299;
    v59[3] = &unk_278889B18;
    v62 = v55;
    v60 = v27;
    v47 = v28;
    v61 = v47;
    v58 = 0;
    v11 = [(PHPhotoLibrary *)photoLibrary performChangesAndWait:v59 error:&v58];
    v34 = v58;
    v9 = v52;
    if ((v11 & 1) == 0)
    {
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v74 = v34;
        _os_log_error_impl(&dword_22F0FC000, v31, OS_LOG_TYPE_ERROR, "Error saving external asset inference to database: %@", buf, 0xCu);
        if (!a3)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

      if (a3)
      {
LABEL_25:
        v35 = v34;
        *a3 = v34;
      }
    }

LABEL_26:
    v36 = [v10 throughputReportBlock];

    if (v36)
    {
      v37 = [v10 throughputReportBlock];
      v37[2](v37, v55, 0);
    }

    v38 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v41 = v31;
    v42 = v41;
    if (v57 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v42, OS_SIGNPOST_INTERVAL_END, spid, "ExternalAssetRelevance", "", buf, 2u);
    }

    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *v74 = "ExternalAssetRelevance";
      *&v74[8] = 2048;
      *&v74[10] = ((((v38 - v56) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v42, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    v15 = v51;
    if ([v10 isCancelledWithProgress:1.0])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v74 = 158;
        *&v74[4] = 2080;
        *&v74[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/ExternalAssetProcessing/PGExternalAssetProcessor.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      if (a3 && !*a3)
      {
        [MEMORY[0x277D22C28] errorForCode:-4];
        *a3 = v11 = 0;
      }

      else
      {
        v11 = 0;
      }
    }

    goto LABEL_49;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v74 = 46;
    *&v74[4] = 2080;
    *&v74[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/ExternalAssetProcessing/PGExternalAssetProcessor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  if (a3 && !*a3)
  {
    [MEMORY[0x277D22C28] errorForCode:-4];
    *a3 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_50:

  v43 = *MEMORY[0x277D85DE8];
  return v11;
}

void __112__PGExternalAssetProcessor_processExternalAssetRelevanceInferenceWithError_progressReporter_shareBackSuggester___block_invoke(uint64_t a1, void *a2)
{
  v68 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v41 = *(a1 + 32);
  v37 = v3;
  v45 = [v3 graph];
  v44 = *(a1 + 40);
  if (!v44)
  {
    v44 = [PGShareBackSuggester shareBackSuggesterForExternalAssetProcessingWithLoggingConnection:*(a1 + 48) photoLibrary:*(*(a1 + 56) + 16) graph:v45 serviceManager:*(a1 + 64)];
  }

  v4 = [*(a1 + 40) positiveProcessingValue];
  v5 = *(a1 + 56);
  v6 = [objc_opt_class() clusterAssetsToProcess:*(a1 + 72) inPhotoLibrary:*(v5 + 16)];
  v7 = [v6 count];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = v6;
  v43 = [obj countByEnumeratingWithState:&v59 objects:v67 count:16];
  if (!v43)
  {
    goto LABEL_43;
  }

  v9 = 1.0 / v7;
  v42 = *v60;
  v10 = 0.0;
  *&v8 = 138412290;
  v36 = v8;
  v39 = v4;
LABEL_5:
  v11 = 0;
  while (1)
  {
    if (*v60 != v42)
    {
      objc_enumerationMutation(obj);
    }

    v12 = *(*(&v59 + 1) + 8 * v11);
    v13 = objc_autoreleasePoolPush();
    v58 = 0;
    v14 = [v44 suggesterResultsForInputs:v12 inGraph:v45 error:&v58];
    v49 = v58;
    if (v14)
    {
      break;
    }

    v25 = *(a1 + 48);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = v36;
      *v64 = v49;
      _os_log_error_impl(&dword_22F0FC000, v25, OS_LOG_TYPE_ERROR, "PGShareBackSuggesterResults returned from PGShareBackSuggester is nil: %@", buf, 0xCu);
    }

    v24 = 0;
LABEL_37:

    objc_autoreleasePoolPop(v13);
    if (++v11 == v43)
    {
      v43 = [obj countByEnumeratingWithState:&v59 objects:v67 count:16];
      if (!v43)
      {
        goto LABEL_43;
      }

      goto LABEL_5;
    }
  }

  v47 = v11;
  v48 = v13;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v46 = v14;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v54 objects:v66 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = 0;
    v19 = *v55;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v55 != v19)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v54 + 1) + 8 * i);
        v22 = [v21 processingValue];
        v23 = v22;
        if ((v22 & v4) != 0)
        {
          v24 = v21;
          v18 = v23;
          goto LABEL_24;
        }

        v18 |= v22;
      }

      v17 = [v15 countByEnumeratingWithState:&v54 objects:v66 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v18 = 0;
  }

  v24 = 0;
LABEL_24:
  v40 = v15;

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v26 = v12;
  v27 = [v26 countByEnumeratingWithState:&v50 objects:v65 count:16];
  if (!v27)
  {
    goto LABEL_35;
  }

  v28 = v27;
  v29 = *v51;
  do
  {
    for (j = 0; j != v28; ++j)
    {
      if (*v51 != v29)
      {
        objc_enumerationMutation(v26);
      }

      v31 = *(*(&v50 + 1) + 8 * j);
      if (v24)
      {
        [*(a1 + 80) addObject:*(*(&v50 + 1) + 8 * j)];
LABEL_31:
        v32 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{v18, v36}];
        v33 = *(a1 + 88);
        v34 = [v31 uuid];
        [v33 setObject:v32 forKeyedSubscript:v34];

        continue;
      }

      if (!v49)
      {
        goto LABEL_31;
      }
    }

    v28 = [v26 countByEnumeratingWithState:&v50 objects:v65 count:16];
  }

  while (v28);
LABEL_35:

  v10 = v9 + v10;
  if (![v41 isCancelledWithProgress:v10])
  {
    v4 = v39;
    v11 = v47;
    v13 = v48;
    v14 = v46;
    goto LABEL_37;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v64 = 120;
    *&v64[4] = 2080;
    *&v64[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/ExternalAssetProcessing/PGExternalAssetProcessor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  objc_autoreleasePoolPop(v48);
LABEL_43:

  v35 = *MEMORY[0x277D85DE8];
}

void __112__PGExternalAssetProcessor_processExternalAssetRelevanceInferenceWithError_progressReporter_shareBackSuggester___block_invoke_299(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = 0;
    v3 = *MEMORY[0x277D3C830];
    do
    {
      v4 = objc_autoreleasePoolPush();
      v5 = [*(a1 + 32) objectAtIndexedSubscript:v2];
      v6 = *(a1 + 40);
      v7 = [v5 uuid];
      v8 = [v6 objectForKeyedSubscript:v7];

      if (v8)
      {
        v9 = [MEMORY[0x277CD97B0] changeRequestForAsset:v5];
        [v9 setSyndicationProcessingValue:{objc_msgSend(v8, "unsignedShortValue")}];
        [v9 setSyndicationProcessingVersion:v3];
      }

      objc_autoreleasePoolPop(v4);
      ++v2;
    }

    while (v2 < *(a1 + 48));
  }
}

- (PGExternalAssetProcessor)initWithWorkingContext:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PGExternalAssetProcessor;
  v6 = [(PGExternalAssetProcessor *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workingContext, a3);
    v8 = [(PGManagerWorkingContext *)v7->_workingContext photoLibrary];
    photoLibrary = v7->_photoLibrary;
    v7->_photoLibrary = v8;
  }

  return v7;
}

+ (id)clusterAssetsToProcess:(id)a3 inPhotoLibrary:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = MEMORY[0x277CD98F8];
  v7 = [a4 librarySpecificFetchOptions];
  v30 = [v6 fetchMomentUUIDByAssetUUIDForAssets:v5 options:v7];

  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v5;
  v9 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v32;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v31 + 1) + 8 * i);
        v14 = [v13 uuid];
        v15 = [v30 objectForKeyedSubscript:v14];
        v16 = v15;
        if (v15)
        {
          v17 = v15;
        }

        else
        {
          v17 = v14;
        }

        v18 = v17;

        v19 = [v13 curationProperties];
        v20 = [v19 importedByBundleIdentifier];
        v21 = v20;
        v22 = &stru_2843F5C58;
        if (v20)
        {
          v22 = v20;
        }

        v23 = v22;

        v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v18, v23];

        v25 = [v8 objectForKeyedSubscript:v24];
        if (!v25)
        {
          v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v8 setObject:v25 forKeyedSubscript:v24];
        }

        [v25 addObject:v13];
      }

      v10 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v10);
  }

  v26 = [v8 allValues];

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

@end