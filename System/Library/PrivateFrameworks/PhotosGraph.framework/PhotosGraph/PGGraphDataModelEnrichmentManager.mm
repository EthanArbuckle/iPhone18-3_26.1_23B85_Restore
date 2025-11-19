@interface PGGraphDataModelEnrichmentManager
+ (NSArray)lightWeightEnrichmentProcessors;
+ (id)_allEnrichmentProcessorsWithTailorOptions:(unint64_t)a3;
+ (id)enrichmentProcessorsForDataModelEnrichmentContext:(unint64_t)a3;
+ (id)liveUpdateEnrichmentProcessors;
- (BOOL)_enrichDataModelWithGraphUpdateInventory:(id)a3 progressReporter:(id)a4 error:(id *)a5;
- (BOOL)enrichDataModelForHighlightUUIDs:(id)a3 progressReporter:(id)a4 error:(id *)a5;
- (BOOL)enrichDataModelWithProgressReporter:(id)a3 error:(id *)a4;
- (PGGraphDataModelEnrichmentManager)initWithManager:(id)a3 enrichmentContext:(unint64_t)a4;
- (PGGraphDataModelEnrichmentManager)initWithManager:(id)a3 enrichmentProcessors:(id)a4;
- (PGGraphDataModelEnrichmentManagerDelegate)delegate;
@end

@implementation PGGraphDataModelEnrichmentManager

- (PGGraphDataModelEnrichmentManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)_enrichDataModelWithGraphUpdateInventory:(id)a3 progressReporter:(id)a4 error:(id *)a5
{
  v72 = *MEMORY[0x277D85DE8];
  v55 = a3;
  v8 = a4;
  if ([(NSArray *)self->_enrichmentProcessors count])
  {
    if (!a5)
    {
      v65 = 0;
      a5 = &v65;
    }

    v9 = [(PGManager *)self->_manager enrichmentLoggingConnection];
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v10 = self->_enrichmentProcessors;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v61 objects:v71 count:16];
    v52 = v9;
    v53 = a5;
    if (v11)
    {
      v12 = v11;
      v13 = v8;
      v14 = 0;
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

            v8 = v13;
            v9 = v52;
            v21 = v53;
            goto LABEL_18;
          }

          if (v14)
          {
            v14 = 1;
          }

          else
          {
            v14 = [v20 requiresValidGraph];
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

      v8 = v13;
      v9 = v52;
      v21 = v53;
      if ((v14 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_18:
      if ([(PGManager *)self->_manager isReadyWithError:v21])
      {
        goto LABEL_26;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        manager = self->_manager;
        v47 = *v21;
        *buf = 138412546;
        v68 = manager;
        v69 = 2112;
        v70 = v47;
        _os_log_error_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_ERROR, "DataModelEnrichment failed because DataModelEnrichmentManager has no graph - graph manager: %@, error: %@", buf, 0x16u);
      }

      LOBYTE(v22) = 0;
    }

    else
    {

LABEL_24:
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_INFO, "DataModelEnrichmentManager skip graph is ready check", buf, 2u);
      }

LABEL_26:
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v24 = v9;
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
      v29 = [objc_alloc(MEMORY[0x277D22C88]) initWithProgressReporter:v8];
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      obj = self->_enrichmentProcessors;
      v30 = [(NSArray *)obj countByEnumeratingWithState:&v56 objects:v66 count:16];
      if (v30)
      {
        v49 = v8;
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
              [v35 enrichDataModelWithManager:self->_manager curationContext:self->_curationContext graphUpdateInventory:v55 progressReporter:v37];
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
        v8 = v49;
        v9 = v52;
      }

      else
      {
        v22 = 1;
      }

      v38 = v30;
      *v53 = v30;
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

- (BOOL)enrichDataModelWithProgressReporter:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [PGGraphUpdate alloc];
  v8 = [(PGManager *)self->_manager photoLibrary];
  v9 = [(PGGraphUpdate *)v7 initWithPhotoLibrary:v8 updateType:4];

  [(PGGraphUpdate *)v9 setIsResumingFullAnalysis:1];
  LOBYTE(a4) = [(PGGraphDataModelEnrichmentManager *)self _enrichDataModelWithGraphUpdateInventory:v9 progressReporter:v6 error:a4];

  return a4;
}

- (BOOL)enrichDataModelForHighlightUUIDs:(id)a3 progressReporter:(id)a4 error:(id *)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [PGGraphUpdate alloc];
  v11 = [(PGManager *)self->_manager photoLibrary];
  v12 = [(PGGraphUpdate *)v10 initWithPhotoLibrary:v11 updateType:0];

  [(PGGraphUpdate *)v12 setIsResumingFullAnalysis:0];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = v8;
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

  v21 = [(PGGraphDataModelEnrichmentManager *)self _enrichDataModelWithGraphUpdateInventory:v12 progressReporter:v9 error:a5];
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (PGGraphDataModelEnrichmentManager)initWithManager:(id)a3 enrichmentProcessors:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = PGGraphDataModelEnrichmentManager;
  v9 = [(PGGraphDataModelEnrichmentManager *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_enrichmentProcessors, a4);
    objc_storeStrong(&v10->_manager, a3);
    v10->_enrichmentContext = 0;
    v11 = objc_alloc(MEMORY[0x277D3C790]);
    v12 = [(PGManager *)v10->_manager photoLibrary];
    v13 = [v11 initWithPhotoLibrary:v12];
    curationContext = v10->_curationContext;
    v10->_curationContext = v13;

    v10->_forceRun = 0;
  }

  return v10;
}

- (PGGraphDataModelEnrichmentManager)initWithManager:(id)a3 enrichmentContext:(unint64_t)a4
{
  v6 = a3;
  v7 = [PGGraphDataModelEnrichmentManager enrichmentProcessorsForDataModelEnrichmentContext:a4];
  v8 = [(PGGraphDataModelEnrichmentManager *)self initWithManager:v6 enrichmentProcessors:v7];

  if (v8)
  {
    v8->_enrichmentContext = a4;
  }

  return v8;
}

+ (id)enrichmentProcessorsForDataModelEnrichmentContext:(unint64_t)a3
{
  if (a3 == 3)
  {
    v3 = [a1 liveUpdateEnrichmentProcessors];
  }

  else if (a3 == 1)
  {
    v3 = [a1 backgroundEnrichmentProcessors];
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  return v3;
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

+ (id)_allEnrichmentProcessorsWithTailorOptions:(unint64_t)a3
{
  v13[6] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(PGGraphPeopleSuggestionEnrichmentProcessor);
  v13[0] = v4;
  v5 = [[PGGraphPhotosHighlightEnrichmentProcessor alloc] initWithHighlightTailorOptions:a3];
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