@interface PGGraphPhotosHighlightEnrichmentProcessor
- (PGGraphPhotosHighlightEnrichmentProcessor)initWithHighlightTailorOptions:(unint64_t)options;
- (id)_dayGroupHighlightsToEnrichForDayHighlights:(id)highlights dayGroupHighlights:(id)groupHighlights;
- (void)enrichDataModelWithManager:(id)manager curationContext:(id)context graphUpdateInventory:(id)inventory progressReporter:(id)reporter;
@end

@implementation PGGraphPhotosHighlightEnrichmentProcessor

- (id)_dayGroupHighlightsToEnrichForDayHighlights:(id)highlights dayGroupHighlights:(id)groupHighlights
{
  highlightsCopy = highlights;
  groupHighlightsCopy = groupHighlights;
  if ([highlightsCopy count])
  {
    firstObject = [highlightsCopy firstObject];
    v8 = [objc_opt_class() fetchParentDayGroupHighlightsForDayHighlights:highlightsCopy];
    if ([v8 count])
    {
      v9 = [MEMORY[0x277CBEB58] setWithArray:v8];
      [v9 addObjectsFromArray:groupHighlightsCopy];
      allObjects = [v9 allObjects];

      goto LABEL_6;
    }
  }

  allObjects = groupHighlightsCopy;
LABEL_6:

  return allObjects;
}

- (void)enrichDataModelWithManager:(id)manager curationContext:(id)context graphUpdateInventory:(id)inventory progressReporter:(id)reporter
{
  v68 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  contextCopy = context;
  inventoryCopy = inventory;
  reporterCopy = reporter;
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = 0;
  v13 = [reporterCopy isCancelledWithProgress:0.0];
  *(v63 + 24) = v13;
  if (!v13)
  {
    enrichmentLoggingConnection = [managerCopy enrichmentLoggingConnection];
    v15 = os_signpost_id_generate(enrichmentLoggingConnection);
    v16 = enrichmentLoggingConnection;
    v17 = v16;
    spid = v15;
    v49 = v15 - 1;
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "PGGraphPhotosHighlightEnrichmentProcessor", "", buf, 2u);
    }

    info = 0;
    mach_timebase_info(&info);
    v47 = mach_absolute_time();
    v18 = [PGHighlightTailor alloc];
    workingContextForEnrichment = [managerCopy workingContextForEnrichment];
    v50 = [(PGHighlightTailor *)v18 initWithWorkingContext:workingContextForEnrichment];

    updateType = [inventoryCopy updateType];
    isResumingFullAnalysis = [inventoryCopy isResumingFullAnalysis];
    if (updateType == 4)
    {
      v22 = 1;
    }

    else
    {
      v22 = isResumingFullAnalysis;
    }

    if (v22 == 1)
    {
      allObjects = [(PGHighlightTailor *)v50 allHighlightsNeedingEnrichmentWithOptions:self->_highlightTailorOptions];
      v24 = [allObjects count];
      highlightTailorOptions = self->_highlightTailorOptions;
      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 3221225472;
      v58[2] = __126__PGGraphPhotosHighlightEnrichmentProcessor_enrichDataModelWithManager_curationContext_graphUpdateInventory_progressReporter___block_invoke;
      v58[3] = &unk_278889448;
      v60 = &v62;
      v59 = reporterCopy;
      [(PGHighlightTailor *)v50 enrichHighlights:allObjects options:highlightTailorOptions progressBlock:v58];
      if (*(v63 + 24) == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v67 = 72;
          *&v67[4] = 2080;
          *&v67[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPhotosHighlightEnrichmentProcessor.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        goto LABEL_42;
      }

      v30 = v59;
      goto LABEL_30;
    }

    if (updateType == 2)
    {
      v26 = 127;
    }

    else
    {
      v26 = 4;
    }

    v27 = [inventoryCopy highlightsToProcessForKind:0 withHighlightUpdateTypes:v26 includeHighlightsToIngest:updateType == 2];
    allObjects = [v27 allObjects];

    v28 = [inventoryCopy highlightsToProcessForKind:3 withHighlightUpdateTypes:v26 includeHighlightsToIngest:updateType == 2];
    allObjects2 = [v28 allObjects];

    v46 = [allObjects count];
    v45 = [allObjects2 count];
    v30 = [(PGGraphPhotosHighlightEnrichmentProcessor *)self _dayGroupHighlightsToEnrichForDayHighlights:allObjects dayGroupHighlights:allObjects2];

    v31 = self->_highlightTailorOptions;
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __126__PGGraphPhotosHighlightEnrichmentProcessor_enrichDataModelWithManager_curationContext_graphUpdateInventory_progressReporter___block_invoke_246;
    v55[3] = &unk_278889448;
    v57 = &v62;
    v32 = reporterCopy;
    v56 = v32;
    [(PGHighlightTailor *)v50 enrichDayHighlights:allObjects dayGroupHighlights:v30 withOptions:v31 progressBlock:v55];
    if (*(v63 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v67 = 91;
        *&v67[4] = 2080;
        *&v67[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPhotosHighlightEnrichmentProcessor.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

LABEL_27:

      goto LABEL_42;
    }

    if ((~LODWORD(self->_highlightTailorOptions) & 0x26) != 0)
    {
      v33 = [inventoryCopy highlightsToProcessForKind:0 withHighlightUpdateTypes:123 includeHighlightsToIngest:1];
      allObjects3 = [v33 allObjects];

      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __126__PGGraphPhotosHighlightEnrichmentProcessor_enrichDataModelWithManager_curationContext_graphUpdateInventory_progressReporter___block_invoke_247;
      v52[3] = &unk_278889448;
      v54 = &v62;
      v53 = v32;
      [(PGHighlightTailor *)v50 enrichHighlights:allObjects3 options:-1073741786 progressBlock:v52];
      if (*(v63 + 24) == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v67 = 104;
          *&v67[4] = 2080;
          *&v67[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPhotosHighlightEnrichmentProcessor.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        goto LABEL_27;
      }
    }

    v24 = v45 + v46;
LABEL_30:

    v35 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v38 = v17;
    v39 = v38;
    if (v49 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v39, OS_SIGNPOST_INTERVAL_END, spid, "PGGraphPhotosHighlightEnrichmentProcessor", "", buf, 2u);
    }

    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *v67 = "PGGraphPhotosHighlightEnrichmentProcessor";
      *&v67[8] = 2048;
      *&v67[10] = ((((v35 - v47) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v39, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    throughputReportBlock = [reporterCopy throughputReportBlock];
    v41 = throughputReportBlock == 0;

    if (!v41)
    {
      throughputReportBlock2 = [reporterCopy throughputReportBlock];
      throughputReportBlock2[2](throughputReportBlock2, v24, 0);
    }

    if (v63[3])
    {
      *(v63 + 24) = 1;
      goto LABEL_40;
    }

    v43 = [reporterCopy isCancelledWithProgress:1.0];
    *(v63 + 24) = v43;
    if (v43)
    {
LABEL_40:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v67 = 114;
        *&v67[4] = 2080;
        *&v67[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPhotosHighlightEnrichmentProcessor.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

LABEL_42:

    goto LABEL_43;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v67 = 54;
    *&v67[4] = 2080;
    *&v67[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPhotosHighlightEnrichmentProcessor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_43:
  _Block_object_dispose(&v62, 8);

  v44 = *MEMORY[0x277D85DE8];
}

uint64_t __126__PGGraphPhotosHighlightEnrichmentProcessor_enrichDataModelWithManager_curationContext_graphUpdateInventory_progressReporter___block_invoke(uint64_t a1, _BYTE *a2)
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

uint64_t __126__PGGraphPhotosHighlightEnrichmentProcessor_enrichDataModelWithManager_curationContext_graphUpdateInventory_progressReporter___block_invoke_246(uint64_t a1, _BYTE *a2, double a3)
{
  v5 = *(*(a1 + 40) + 8);
  if (*(v5 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:a3 * 0.9];
    v5 = *(*(a1 + 40) + 8);
  }

  *(v5 + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

uint64_t __126__PGGraphPhotosHighlightEnrichmentProcessor_enrichDataModelWithManager_curationContext_graphUpdateInventory_progressReporter___block_invoke_247(uint64_t a1, _BYTE *a2, double a3)
{
  v5 = *(*(a1 + 40) + 8);
  if (*(v5 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:a3 * 0.1 + 0.9];
    v5 = *(*(a1 + 40) + 8);
  }

  *(v5 + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

- (PGGraphPhotosHighlightEnrichmentProcessor)initWithHighlightTailorOptions:(unint64_t)options
{
  v5.receiver = self;
  v5.super_class = PGGraphPhotosHighlightEnrichmentProcessor;
  result = [(PGGraphPhotosHighlightEnrichmentProcessor *)&v5 init];
  if (result)
  {
    result->_highlightTailorOptions = options;
  }

  return result;
}

@end