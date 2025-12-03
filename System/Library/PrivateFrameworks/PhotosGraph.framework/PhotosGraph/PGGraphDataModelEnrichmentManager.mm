@interface PGGraphDataModelEnrichmentManager
+ (NSArray)lightWeightEnrichmentProcessors;
+ (id)_allEnrichmentProcessorsWithTailorOptions:(unint64_t)options;
+ (id)enrichmentProcessorsForDataModelEnrichmentContext:(unint64_t)context;
+ (id)liveUpdateEnrichmentProcessors;
- (BOOL)_enrichDataModelWithGraphUpdateInventory:(id)inventory progressReporter:(id)reporter error:(id *)error;
- (BOOL)enrichDataModelForHighlightUUIDs:(id)ds progressReporter:(id)reporter error:(id *)error;
- (BOOL)enrichDataModelWithProgressReporter:(id)reporter error:(id *)error;
- (PGGraphDataModelEnrichmentManager)initWithManager:(id)manager enrichmentContext:(unint64_t)context;
- (PGGraphDataModelEnrichmentManager)initWithManager:(id)manager enrichmentProcessors:(id)processors;
- (PGGraphDataModelEnrichmentManagerDelegate)delegate;
@end

@implementation PGGraphDataModelEnrichmentManager

- (PGGraphDataModelEnrichmentManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)_enrichDataModelWithGraphUpdateInventory:(id)inventory progressReporter:(id)reporter error:(id *)error
{
  v72 = *MEMORY[0x277D85DE8];
  inventoryCopy = inventory;
  reporterCopy = reporter;
  if ([(NSArray *)self->_enrichmentProcessors count])
  {
    if (!error)
    {
      v65 = 0;
      error = &v65;
    }

    enrichmentLoggingConnection = [(PGManager *)self->_manager enrichmentLoggingConnection];
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v10 = self->_enrichmentProcessors;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v61 objects:v71 count:16];
    v52 = enrichmentLoggingConnection;
    errorCopy = error;
    if (v11)
    {
      v12 = v11;
      v13 = reporterCopy;
      requiresValidGraph = 0;
      v15 = *v62;
      v16 = &selRef_prefix;
      while (2)
      {
        v17 = 0;
        v18 = v16;
        v19 = v16[310];
        do
        {
          if (*v62 != v15)
          {
            objc_enumerationMutation(v10);
          }

          v20 = *(*(&v61 + 1) + 8 * v17);
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {

            reporterCopy = v13;
            enrichmentLoggingConnection = v52;
            v21 = errorCopy;
            goto LABEL_18;
          }

          if (requiresValidGraph)
          {
            requiresValidGraph = 1;
          }

          else
          {
            requiresValidGraph = [v20 requiresValidGraph];
          }

          ++v17;
        }

        while (v12 != v17);
        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v61 objects:v71 count:16];
        v16 = v18;
        if (v12)
        {
          continue;
        }

        break;
      }

      reporterCopy = v13;
      enrichmentLoggingConnection = v52;
      v21 = errorCopy;
      if ((requiresValidGraph & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_18:
      if ([(PGManager *)self->_manager isReadyWithError:v21])
      {
        goto LABEL_26;
      }

      if (os_log_type_enabled(enrichmentLoggingConnection, OS_LOG_TYPE_ERROR))
      {
        manager = self->_manager;
        v47 = *v21;
        *buf = 138412546;
        v68 = manager;
        v69 = 2112;
        v70 = v47;
        _os_log_error_impl(&dword_22F0FC000, enrichmentLoggingConnection, OS_LOG_TYPE_ERROR, "DataModelEnrichment failed because DataModelEnrichmentManager has no graph - graph manager: %@, error: %@", buf, 0x16u);
      }

      LOBYTE(v22) = 0;
    }

    else
    {

LABEL_24:
      if (os_log_type_enabled(enrichmentLoggingConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22F0FC000, enrichmentLoggingConnection, OS_LOG_TYPE_INFO, "DataModelEnrichmentManager skip graph is ready check", buf, 2u);
      }

LABEL_26:
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v24 = enrichmentLoggingConnection;
      v25 = os_signpost_id_generate(v24);
      v26 = v24;
      v27 = v26;
      v51 = v25 - 1;
      if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v27, OS_SIGNPOST_INTERVAL_BEGIN, v25, "EnrichDataModelWithEnrichmentProcessors", "", buf, 2u);
      }

      spid = v25;

      info = 0;
      mach_timebase_info(&info);
      v50 = mach_absolute_time();
      v28 = [(NSArray *)self->_enrichmentProcessors count];
      v29 = [objc_alloc(MEMORY[0x277D22C88]) initWithProgressReporter:reporterCopy];
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      obj = self->_enrichmentProcessors;
      v30 = [(NSArray *)obj countByEnumeratingWithState:&v56 objects:v66 count:16];
      if (v30)
      {
        v49 = reporterCopy;
        v31 = 1.0 / v28;
        v32 = *v57;
        v33 = 0.0;
        while (2)
        {
          for (i = 0; i != v30; i = i + 1)
          {
            if (*v57 != v32)
            {
              objc_enumerationMutation(obj);
            }

            v35 = *(*(&v56 + 1) + 8 * i);
            v36 = objc_autoreleasePoolPush();
            v33 = v31 + v33;
            v37 = [v29 childProgressReporterToCheckpoint:{v33, spid}];
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v68 = v35;
              _os_log_impl(&dword_22F0FC000, v27, OS_LOG_TYPE_INFO, "DataModelEnrichment - enriching data model with processor: %@", buf, 0xCu);
            }

            if (self->_forceRun || !WeakRetained || [WeakRetained enrichmentManager:self shouldRunProcessor:v35])
            {
              [v35 enrichDataModelWithManager:self->_manager curationContext:self->_curationContext graphUpdateInventory:inventoryCopy progressReporter:v37];
              if ([v37 isCancelled])
              {
                v30 = [PGError errorForCode:-4];
                [WeakRetained enrichmentManager:self didCancelProcessor:v35];

                objc_autoreleasePoolPop(v36);
                v22 = 0;
                goto LABEL_45;
              }

              [WeakRetained enrichmentManager:self didRunProcessor:v35];
            }

            objc_autoreleasePoolPop(v36);
          }

          v30 = [(NSArray *)obj countByEnumeratingWithState:&v56 objects:v66 count:16];
          if (v30)
          {
            continue;
          }

          break;
        }

        v22 = 1;
LABEL_45:
        reporterCopy = v49;
        enrichmentLoggingConnection = v52;
      }

      else
      {
        v22 = 1;
      }

      v38 = v30;
      *errorCopy = v30;
      v39 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v42 = v27;
      v43 = v42;
      if (v51 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v43, OS_SIGNPOST_INTERVAL_END, spid, "EnrichDataModelWithEnrichmentProcessors", "", buf, 2u);
      }

      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v68 = "EnrichDataModelWithEnrichmentProcessors";
        v69 = 2048;
        v70 = ((((v39 - v50) * numer) / denom) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v43, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }

      [WeakRetained enrichmentManager:self didFinishEnrichmentSuccessfully:{v22, spid}];
    }
  }

  else
  {
    LOBYTE(v22) = 1;
  }

  v44 = *MEMORY[0x277D85DE8];
  return v22;
}

- (BOOL)enrichDataModelWithProgressReporter:(id)reporter error:(id *)error
{
  reporterCopy = reporter;
  v7 = [PGGraphUpdate alloc];
  photoLibrary = [(PGManager *)self->_manager photoLibrary];
  v9 = [(PGGraphUpdate *)v7 initWithPhotoLibrary:photoLibrary updateType:4];

  [(PGGraphUpdate *)v9 setIsResumingFullAnalysis:1];
  LOBYTE(error) = [(PGGraphDataModelEnrichmentManager *)self _enrichDataModelWithGraphUpdateInventory:v9 progressReporter:reporterCopy error:error];

  return error;
}

- (BOOL)enrichDataModelForHighlightUUIDs:(id)ds progressReporter:(id)reporter error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  reporterCopy = reporter;
  v10 = [PGGraphUpdate alloc];
  photoLibrary = [(PGManager *)self->_manager photoLibrary];
  v12 = [(PGGraphUpdate *)v10 initWithPhotoLibrary:photoLibrary updateType:0];

  [(PGGraphUpdate *)v12 setIsResumingFullAnalysis:0];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = dsCopy;
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      v17 = 0;
      do
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v24 + 1) + 8 * v17);
        v19 = [PGGraphHighlightChange alloc];
        v20 = [(PGGraphHighlightChange *)v19 initWithHighlightUUID:v18 updateTypes:127, v24];
        [(PGGraphUpdate *)v12 addChange:v20];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v15);
  }

  v21 = [(PGGraphDataModelEnrichmentManager *)self _enrichDataModelWithGraphUpdateInventory:v12 progressReporter:reporterCopy error:error];
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (PGGraphDataModelEnrichmentManager)initWithManager:(id)manager enrichmentProcessors:(id)processors
{
  managerCopy = manager;
  processorsCopy = processors;
  v16.receiver = self;
  v16.super_class = PGGraphDataModelEnrichmentManager;
  v9 = [(PGGraphDataModelEnrichmentManager *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_enrichmentProcessors, processors);
    objc_storeStrong(&v10->_manager, manager);
    v10->_enrichmentContext = 0;
    v11 = objc_alloc(MEMORY[0x277D3C790]);
    photoLibrary = [(PGManager *)v10->_manager photoLibrary];
    v13 = [v11 initWithPhotoLibrary:photoLibrary];
    curationContext = v10->_curationContext;
    v10->_curationContext = v13;

    v10->_forceRun = 0;
  }

  return v10;
}

- (PGGraphDataModelEnrichmentManager)initWithManager:(id)manager enrichmentContext:(unint64_t)context
{
  managerCopy = manager;
  v7 = [PGGraphDataModelEnrichmentManager enrichmentProcessorsForDataModelEnrichmentContext:context];
  v8 = [(PGGraphDataModelEnrichmentManager *)self initWithManager:managerCopy enrichmentProcessors:v7];

  if (v8)
  {
    v8->_enrichmentContext = context;
  }

  return v8;
}

+ (id)enrichmentProcessorsForDataModelEnrichmentContext:(unint64_t)context
{
  if (context == 3)
  {
    liveUpdateEnrichmentProcessors = [self liveUpdateEnrichmentProcessors];
  }

  else if (context == 1)
  {
    liveUpdateEnrichmentProcessors = [self backgroundEnrichmentProcessors];
  }

  else
  {
    liveUpdateEnrichmentProcessors = MEMORY[0x277CBEBF8];
  }

  return liveUpdateEnrichmentProcessors;
}

+ (id)liveUpdateEnrichmentProcessors
{
  v10[5] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(PGGraphPeopleSuggestionEnrichmentProcessor);
  v3 = [[PGGraphPhotosHighlightEnrichmentProcessor alloc] initWithHighlightTailorOptions:255, v2];
  v10[1] = v3;
  v4 = objc_alloc_init(PGGraphHighlightCollectionEnrichmentProcessor);
  v10[2] = v4;
  v5 = objc_alloc_init(PGGraphAssetRevGeocodeEnrichmentProcessor);
  v10[3] = v5;
  v6 = objc_alloc_init(PGGraphSearchEnrichmentProcessor);
  v10[4] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (NSArray)lightWeightEnrichmentProcessors
{
  v8[3] = *MEMORY[0x277D85DE8];
  v2 = [[PGGraphPhotosHighlightEnrichmentProcessor alloc] initWithHighlightTailorOptions:255];
  v8[0] = v2;
  v3 = objc_alloc_init(PGGraphHighlightCollectionEnrichmentProcessor);
  v8[1] = v3;
  v4 = objc_alloc_init(PGGraphAssetRevGeocodeEnrichmentProcessor);
  v8[2] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)_allEnrichmentProcessorsWithTailorOptions:(unint64_t)options
{
  v13[6] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(PGGraphPeopleSuggestionEnrichmentProcessor);
  v13[0] = v4;
  v5 = [[PGGraphPhotosHighlightEnrichmentProcessor alloc] initWithHighlightTailorOptions:options];
  v13[1] = v5;
  v6 = objc_alloc_init(PGGraphHighlightCollectionEnrichmentProcessor);
  v13[2] = v6;
  v7 = objc_alloc_init(PGGraphSearchEnrichmentProcessor);
  v13[3] = v7;
  v8 = objc_alloc_init(PGGraphAssetRevGeocodeEnrichmentProcessor);
  v13[4] = v8;
  v9 = objc_alloc_init(PGGraphPortraitDonationEnrichmentProcessor);
  v13[5] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:6];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end