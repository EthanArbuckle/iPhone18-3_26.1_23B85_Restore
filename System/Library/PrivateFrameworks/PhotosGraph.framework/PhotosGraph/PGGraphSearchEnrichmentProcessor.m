@interface PGGraphSearchEnrichmentProcessor
- (BOOL)_shouldProcessGraphUpdate:(id)a3;
- (unint64_t)_processGraphUpdateInventory:(id)a3 onGraph:(id)a4 photoLibrary:(id)a5 curationManager:(id)a6 curationContext:(id)a7 searchComputationCache:(id)a8 progressBlock:(id)a9 loggingConnection:(id)a10 completionBlock:(id)a11;
- (void)enrichDataModelWithManager:(id)a3 curationContext:(id)a4 graphUpdateInventory:(id)a5 progressReporter:(id)a6;
@end

@implementation PGGraphSearchEnrichmentProcessor

- (unint64_t)_processGraphUpdateInventory:(id)a3 onGraph:(id)a4 photoLibrary:(id)a5 curationManager:(id)a6 curationContext:(id)a7 searchComputationCache:(id)a8 progressBlock:(id)a9 loggingConnection:(id)a10 completionBlock:(id)a11
{
  v100 = *MEMORY[0x277D85DE8];
  v64 = a3;
  v16 = a4;
  v59 = a5;
  v55 = a6;
  v56 = a7;
  v65 = a8;
  v17 = a9;
  oslog = a10;
  v57 = v17;
  v58 = a11;
  v18 = _Block_copy(v17);
  v93 = 0;
  v94 = &v93;
  v95 = 0x2020000000;
  v96 = 0;
  v89 = 0;
  v90 = &v89;
  v91 = 0x2020000000;
  v92 = 0;
  if (!v18 || (v19 = CFAbsoluteTimeGetCurrent(), v19 - v90[3] < 0.01) || (v90[3] = v19, v88 = 0, (*(v18 + 2))(v18, &v88, 0.0), v20 = *(v94 + 24) | v88, *(v94 + 24) = v20, (v20 & 1) == 0))
  {
    v63 = [PGGraphSynonymSupportHelper synonymsByIndexCategoryMaskForGraph:v16];
    v62 = [v16 localeIdentifier];
    v66 = [[PGSearchEntityAccumulator alloc] initWithSynonymsByCategoryMask:v63 graphLocaleIdentifier:v62];
    v61 = [[PGSearchKeywordComputer alloc] initWithGraph:v16 searchComputationCache:v65];
    v22 = [v64 momentsToProcessForMomentUpdateTypes:31 includeMomentsToIngest:1];
    v21 = [v22 count];
    v23 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:v21];
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v24 = v22;
    v25 = [v24 countByEnumeratingWithState:&v84 objects:v97 count:16];
    if (v25)
    {
      v26 = *v85;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v85 != v26)
          {
            objc_enumerationMutation(v24);
          }

          v28 = [*(*(&v84 + 1) + 8 * i) uuid];
          [v23 addObject:v28];
        }

        v25 = [v24 countByEnumeratingWithState:&v84 objects:v97 count:16];
      }

      while (v25);
    }

    v53 = [PGGraphMomentNodeCollection momentNodesForUUIDs:v23 inGraph:v16];
    v29 = [v53 uuids];
    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = __189__PGGraphSearchEnrichmentProcessor__processGraphUpdateInventory_onGraph_photoLibrary_curationManager_curationContext_searchComputationCache_progressBlock_loggingConnection_completionBlock___block_invoke;
    v79[3] = &unk_27888A188;
    v30 = v18;
    v80 = v30;
    v81 = &v89;
    v82 = &v93;
    v83 = 0x3F847AE147AE147BLL;
    v31 = [(PGSearchKeywordComputer *)v61 assetSearchKeywordsByMomentUUIDWithEventUUIDs:v29 ofType:0 searchEntityAccumulator:v66 progressBlock:v79];
    v54 = v29;
    if (*(v94 + 24) == 1)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_18:
        v21 = 0;
        v34 = v53;
        v33 = v29;
LABEL_47:

        goto LABEL_48;
      }

      *buf = 67109378;
      *v99 = 132;
      *&v99[4] = 2080;
      *&v99[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphSearchEnrichmentProcessor.m";
      v32 = MEMORY[0x277D86220];
LABEL_17:
      _os_log_impl(&dword_22F0FC000, v32, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      goto LABEL_18;
    }

    if (v18)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v90[3] >= 0.01)
      {
        v90[3] = Current;
        v88 = 0;
        (*(v30 + 2))(v30, &v88, 0.1);
        v36 = *(v94 + 24) | v88;
        *(v94 + 24) = v36;
        if (v36)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            goto LABEL_18;
          }

          *buf = 67109378;
          *v99 = 134;
          *&v99[4] = 2080;
          *&v99[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphSearchEnrichmentProcessor.m";
          v32 = MEMORY[0x277D86220];
          goto LABEL_17;
        }
      }
    }

    v37 = MEMORY[0x277D22C80];
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __189__PGGraphSearchEnrichmentProcessor__processGraphUpdateInventory_onGraph_photoLibrary_curationManager_curationContext_searchComputationCache_progressBlock_loggingConnection_completionBlock___block_invoke_235;
    v74[3] = &unk_27888A188;
    v38 = v30;
    v75 = v38;
    v76 = &v89;
    v77 = &v93;
    v78 = 0x3F847AE147AE147BLL;
    [v37 progressReporterWithProgressBlock:v74];
    v51 = v73 = 0;
    v39 = [PGSearchEntityAccumulator accumulatePersonAndPetRelationshipsFromGraph:v66 progressReporter:"accumulatePersonAndPetRelationshipsFromGraph:progressReporter:error:" error:v16];
    v52 = 0;
    if (v18)
    {
      v40 = CFAbsoluteTimeGetCurrent();
      if (v40 - v90[3] >= 0.01)
      {
        v90[3] = v40;
        v88 = 0;
        (*(v38 + 2))(v38, &v88, 0.5);
        v41 = *(v94 + 24) | v88;
        *(v94 + 24) = v41;
        if (v41)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v99 = 141;
            *&v99[4] = 2080;
            *&v99[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphSearchEnrichmentProcessor.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v21 = 0;
          v34 = v53;
LABEL_45:
          v33 = v54;
LABEL_46:

          goto LABEL_47;
        }
      }
    }

    if (v39)
    {
      v42 = MEMORY[0x277D22C80];
      v68[0] = MEMORY[0x277D85DD0];
      v68[1] = 3221225472;
      v68[2] = __189__PGGraphSearchEnrichmentProcessor__processGraphUpdateInventory_onGraph_photoLibrary_curationManager_curationContext_searchComputationCache_progressBlock_loggingConnection_completionBlock___block_invoke_236;
      v68[3] = &unk_27888A188;
      v69 = v38;
      v70 = &v89;
      v71 = &v93;
      v72 = 0x3F847AE147AE147BLL;
      v43 = [v42 progressReporterWithProgressBlock:v68];
      v44 = [[PGSearchEntityPersister alloc] initWithPhotoLibrary:v59];
      v67 = 0;
      v50 = v43;
      v34 = v53;
      LOBYTE(v43) = [(PGSearchEntityPersister *)v44 persistSearchEntitiesFromSearchEntityProvider:v66 progressReporter:v43 error:&v67];
      v45 = v67;
      if ((v43 & 1) == 0 && os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v99 = v45;
        _os_log_error_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_ERROR, "[PGGraphSearchEnrichmentProcessor] Error returned by persistSearchEntitiesFromSearchEntityProvider(): (%@)", buf, 0xCu);
      }

      v33 = v54;
    }

    else
    {
      v34 = v53;
      v33 = v54;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v99 = v52;
        _os_log_error_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_ERROR, "[PGGraphSearchEnrichmentProcessor] Error returned by accumulatePersonAndPetRelationshipsFromGraph(): (%@)", buf, 0xCu);
        if (v18)
        {
          goto LABEL_37;
        }

        goto LABEL_43;
      }
    }

    if (v18)
    {
LABEL_37:
      v46 = CFAbsoluteTimeGetCurrent();
      if (v46 - v90[3] >= 0.01)
      {
        v90[3] = v46;
        v88 = 0;
        (*(v38 + 2))(v38, &v88, 1.0);
        v47 = *(v94 + 24) | v88;
        *(v94 + 24) = v47;
        if (v47)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v99 = 158;
            *&v99[4] = 2080;
            *&v99[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphSearchEnrichmentProcessor.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v21 = 0;
          goto LABEL_46;
        }
      }
    }

LABEL_43:
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_INFO, "[PGGraphSearchEnrichmentProcessor] search entity accumulation and persistence is complete", buf, 2u);
    }

    goto LABEL_45;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v99 = 111;
    *&v99[4] = 2080;
    *&v99[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphSearchEnrichmentProcessor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v21 = 0;
LABEL_48:
  _Block_object_dispose(&v89, 8);
  _Block_object_dispose(&v93, 8);

  v48 = *MEMORY[0x277D85DE8];
  return v21;
}

void __189__PGGraphSearchEnrichmentProcessor__processGraphUpdateInventory_onGraph_photoLibrary_curationManager_curationContext_searchComputationCache_progressBlock_loggingConnection_completionBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.1);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __189__PGGraphSearchEnrichmentProcessor__processGraphUpdateInventory_onGraph_photoLibrary_curationManager_curationContext_searchComputationCache_progressBlock_loggingConnection_completionBlock___block_invoke_235(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.4);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __189__PGGraphSearchEnrichmentProcessor__processGraphUpdateInventory_onGraph_photoLibrary_curationManager_curationContext_searchComputationCache_progressBlock_loggingConnection_completionBlock___block_invoke_236(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.5 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (BOOL)_shouldProcessGraphUpdate:(id)a3
{
  v3 = a3;
  if ([v3 hasHighlightsToInsert] & 1) != 0 || (objc_msgSend(v3, "hasHighlightsToDelete"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 hasHighlightsToUpdate];
  }

  if (([v3 hasMomentsToInsert] & 1) != 0 || (objc_msgSend(v3, "hasMomentsToDelete") & 1) != 0 || ((v4 | objc_msgSend(v3, "hasMomentsToUpdate")) & 1) != 0 || (objc_msgSend(v3, "hasPersonsToDelete") & 1) != 0 || (objc_msgSend(v3, "identifiersForMomentRelatedToUpdatedPersons"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v6))
  {
    v7 = 1;
  }

  else
  {
    v7 = [v3 isResumingFullAnalysis];
  }

  return v7;
}

- (void)enrichDataModelWithManager:(id)a3 curationContext:(id)a4 graphUpdateInventory:(id)a5 progressReporter:(id)a6
{
  v60 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 enrichmentLoggingConnection];
  v15 = os_signpost_id_generate(v14);
  v16 = v14;
  v17 = v16;
  spid = v15;
  v18 = v15 - 1;
  if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v17, OS_SIGNPOST_INTERVAL_BEGIN, spid, "PGGraphSearchEnrichmentProcessor", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v39 = mach_absolute_time();
  v19 = v13;
  *buf = 0;
  v54 = buf;
  v55 = 0x2020000000;
  v56 = 0;
  v20 = [v19 isCancelledWithProgress:0.0];
  v54[24] = v20;
  if (v20)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *v58 = 67109378;
      *&v58[4] = 37;
      *&v58[8] = 2080;
      *&v58[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphSearchEnrichmentProcessor.m";
      v21 = MEMORY[0x277D86220];
LABEL_27:
      _os_log_impl(&dword_22F0FC000, v21, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v58, 0x12u);
    }
  }

  else
  {
    v22 = [(PGGraphSearchEnrichmentProcessor *)self _shouldProcessGraphUpdate:v12];
    v23 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
    if (v22)
    {
      if (v23)
      {
        *v58 = 0;
        _os_log_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_INFO, "[PGGraphSearchEnrichmentProcessor] Run search processor to donate graph data to Search enrichment", v58, 2u);
      }

      v24 = [v10 photoLibrary];
      v37 = [PGSearchComputationCache persistentStoreURLWithManager:v10];
      v38 = v11;
      v25 = [[PGSearchComputationCache alloc] initWithPersistentStoreURL:v37 photoLibrary:v24];
      if ([v12 isResumingFullAnalysis])
      {
        [(PGSearchComputationCache *)v25 invalidateCache];
      }

      *v58 = 0;
      *&v58[8] = v58;
      *&v58[16] = 0x2020000000;
      v59 = 1;
      v26 = [v10 curationManager];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __117__PGGraphSearchEnrichmentProcessor_enrichDataModelWithManager_curationContext_graphUpdateInventory_progressReporter___block_invoke;
      v41[3] = &unk_278883F68;
      v51 = v58;
      v42 = v17;
      v43 = self;
      v44 = v12;
      v27 = v24;
      v45 = v27;
      v28 = v26;
      v46 = v28;
      v47 = v38;
      v29 = v25;
      v48 = v29;
      v52 = buf;
      v49 = v19;
      v50 = v49;
      [v10 performSynchronousConcurrentGraphReadUsingBlock:v41];
      if (*(*&v58[8] + 24) == 1)
      {
        [(PGSearchComputationCache *)v29 save];
      }

      v11 = v38;
      _Block_object_dispose(v58, 8);
    }

    else if (v23)
    {
      *v58 = 0;
      _os_log_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_INFO, "[PGGraphSearchEnrichmentProcessor] Should not run search processor since there are no changes needed to donate to Search enrichment", v58, 2u);
    }

    v30 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v33 = v17;
    v34 = v33;
    if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
    {
      *v58 = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v34, OS_SIGNPOST_INTERVAL_END, spid, "PGGraphSearchEnrichmentProcessor", "", v58, 2u);
    }

    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *v58 = 136315394;
      *&v58[4] = "PGGraphSearchEnrichmentProcessor";
      *&v58[12] = 2048;
      *&v58[14] = ((((v30 - v39) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v34, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", v58, 0x16u);
    }

    if (v54[24])
    {
      v54[24] = 1;
    }

    else
    {
      v35 = [v19 isCancelledWithProgress:1.0];
      v54[24] = v35;
      if ((v35 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *v58 = 67109378;
      *&v58[4] = 81;
      *&v58[8] = 2080;
      *&v58[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphSearchEnrichmentProcessor.m";
      v21 = MEMORY[0x277D86220];
      goto LABEL_27;
    }
  }

LABEL_28:
  _Block_object_dispose(buf, 8);

  v36 = *MEMORY[0x277D85DE8];
}

void __117__PGGraphSearchEnrichmentProcessor_enrichDataModelWithManager_curationContext_graphUpdateInventory_progressReporter___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 graph];
  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);
    v9 = *(a1 + 80);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __117__PGGraphSearchEnrichmentProcessor_enrichDataModelWithManager_curationContext_graphUpdateInventory_progressReporter___block_invoke_224;
    v17[3] = &unk_278889448;
    v19 = *(a1 + 112);
    v18 = *(a1 + 88);
    v10 = *(a1 + 32);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __117__PGGraphSearchEnrichmentProcessor_enrichDataModelWithManager_curationContext_graphUpdateInventory_progressReporter___block_invoke_2;
    v15[3] = &unk_278883F40;
    v16 = v10;
    v11 = [v4 _processGraphUpdateInventory:v5 onGraph:v3 photoLibrary:v6 curationManager:v7 curationContext:v8 searchComputationCache:v9 progressBlock:v17 loggingConnection:v16 completionBlock:v15];
    v12 = [*(a1 + 96) throughputReportBlock];

    if (v12)
    {
      v13 = [*(a1 + 96) throughputReportBlock];
      v13[2](v13, v11, 0);
    }
  }

  else
  {
    v14 = *(a1 + 32);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_FAULT, "[PGGraphSearchEnrichmentProcessor] Search enrichment will not run because the graph is unavailable", buf, 2u);
    }

    *(*(*(a1 + 104) + 8) + 24) = 0;
  }
}

uint64_t __117__PGGraphSearchEnrichmentProcessor_enrichDataModelWithManager_curationContext_graphUpdateInventory_progressReporter___block_invoke_224(uint64_t a1, _BYTE *a2)
{
  v4 = *(*(a1 + 40) + 8);
  if (*(v4 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:?];
    v4 = *(*(a1 + 40) + 8);
  }

  *(v4 + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

void __117__PGGraphSearchEnrichmentProcessor_enrichDataModelWithManager_curationContext_graphUpdateInventory_progressReporter___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_22F0FC000, v1, OS_LOG_TYPE_INFO, "[PGGraphSearchEnrichmentProcessor] Donate the graph data to Search enrichment", v2, 2u);
  }
}

@end