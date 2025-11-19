@interface PGGraphUpdateManager
- (BOOL)_performEnrichmentWithGraphUpdateInventory:(id)a3 enrichmentContext:(unint64_t)a4 progressBlock:(id)a5 error:(id *)a6;
- (BOOL)stopRequested;
- (PGGraphUpdateManager)initWithGraphManager:(id)a3;
- (id)description;
- (void)_onStopRequestedWasListening:(BOOL)a3;
- (void)_performRebuildWithGraphIngestRecipe:(id)a3 progressBlock:(id)a4 completionBlock:(id)a5;
- (void)_processRebuild;
- (void)_triggerUpdateForGraphUpdate:(id)a3;
- (void)performFullRebuildWithProgressBlock:(id)a3 completionBlock:(id)a4;
@end

@implementation PGGraphUpdateManager

- (BOOL)_performEnrichmentWithGraphUpdateInventory:(id)a3 enrichmentContext:(unint64_t)a4 progressBlock:(id)a5 error:(id *)a6
{
  v47 = *MEMORY[0x277D85DE8];
  v33 = a3;
  v10 = a5;
  v11 = _Block_copy(v10);
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v40[3] = 0;
  v12 = [(PGManager *)self->_manager enrichmentLoggingConnection];
  v13 = os_signpost_id_generate(v12);
  v14 = v12;
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "EnrichmentUpdate", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v32 = mach_absolute_time();
  v16 = [PGGraphDataModelEnrichmentManager enrichmentProcessorsForDataModelEnrichmentContext:a4];
  v17 = [PGGraphDataModelEnrichmentManager alloc];
  v18 = [(PGGraphUpdateManager *)self manager];
  v19 = [(PGGraphDataModelEnrichmentManager *)v17 initWithManager:v18 enrichmentProcessors:v16];

  v20 = MEMORY[0x277D22C80];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __105__PGGraphUpdateManager__performEnrichmentWithGraphUpdateInventory_enrichmentContext_progressBlock_error___block_invoke;
  v34[3] = &unk_27888A188;
  v21 = v11;
  v35 = v21;
  v36 = v40;
  v37 = &v41;
  v38 = 0x3F847AE147AE147BLL;
  v22 = [v20 progressReporterWithProgressBlock:v34];
  v23 = [(PGGraphDataModelEnrichmentManager *)v19 enrichDataModelWithGraphUpdateInventory:v33 progressReporter:v22 error:a6];
  v24 = *(v42 + 24);
  if (a6 && *(v42 + 24))
  {
    *a6 = [PGError errorForCode:-4];
    if ((v42[3] & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (!*(v42 + 24))
  {
LABEL_7:
    v25 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v28 = v15;
    v29 = v28;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v29, OS_SIGNPOST_INTERVAL_END, v13, "EnrichmentUpdate", "", buf, 2u);
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *v46 = "EnrichmentUpdate";
      *&v46[8] = 2048;
      *&v46[10] = ((((v25 - v32) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    goto LABEL_16;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v46 = 491;
    *&v46[4] = 2080;
    *&v46[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGGraphUpdateManager.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v23 = 0;
LABEL_16:

  _Block_object_dispose(v40, 8);
  _Block_object_dispose(&v41, 8);

  v30 = *MEMORY[0x277D85DE8];
  return v23;
}

void __105__PGGraphUpdateManager__performEnrichmentWithGraphUpdateInventory_enrichmentContext_progressBlock_error___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (void)_triggerUpdateForGraphUpdate:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_processingQueue);
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__19467;
  v33 = __Block_byref_object_dispose__19468;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__19467;
  v27 = __Block_byref_object_dispose__19468;
  v5 = v4;
  v28 = v5;
  v6 = dispatch_block_create(0, &__block_literal_global_257);
  manager = self->_manager;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __53__PGGraphUpdateManager__triggerUpdateForGraphUpdate___block_invoke_2;
  v22[3] = &unk_278882E50;
  v22[4] = self;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __53__PGGraphUpdateManager__triggerUpdateForGraphUpdate___block_invoke_3;
  v17[3] = &unk_2788812F8;
  v19 = &v35;
  v20 = &v29;
  v21 = &v23;
  v8 = v6;
  v18 = v8;
  [(PGManager *)manager startGraphUpdate:v5 progressBlock:v22 completionBlock:v17];
  dispatch_block_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  if (*(v36 + 24) == 1 && ![(PGGraphUpdateManager *)self stopRequested]&& [(PGGraphUpdateManager *)self executionContext]!= 2)
  {
    if ([(PGGraphUpdateManager *)self executionContext]== 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    v10 = v24[5];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __53__PGGraphUpdateManager__triggerUpdateForGraphUpdate___block_invoke_4;
    v16[3] = &unk_278882E50;
    v16[4] = self;
    v11 = v30;
    obj = v30[5];
    v12 = [(PGGraphUpdateManager *)self _performEnrichmentWithGraphUpdateInventory:v10 enrichmentContext:v9 progressBlock:v16 error:&obj];
    objc_storeStrong(v11 + 5, obj);
    *(v36 + 24) = v12;
  }

  if ((v36[3] & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v14 = v30[5];
    *buf = 138412290;
    v40 = v14;
    _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "GraphLiveUpdate - Update failed with error %@", buf, 0xCu);
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  _Block_object_dispose(&v35, 8);
  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __53__PGGraphUpdateManager__triggerUpdateForGraphUpdate___block_invoke_2(uint64_t a1, _BYTE *a2)
{
  result = [*(a1 + 32) stopRequested];
  *a2 = result;
  return result;
}

void __53__PGGraphUpdateManager__triggerUpdateForGraphUpdate___block_invoke_3(void *a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  *(*(a1[5] + 8) + 24) = a2;
  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v14 = v7;

  v11 = *(a1[7] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;
  v13 = v8;

  (*(a1[4] + 16))();
}

uint64_t __53__PGGraphUpdateManager__triggerUpdateForGraphUpdate___block_invoke_4(uint64_t a1, _BYTE *a2)
{
  result = [*(a1 + 32) stopRequested];
  *a2 = result;
  return result;
}

void __126__PGGraphUpdateManager__triggerFullRebuildDuringLiveUpdate_graphIngestRecipe_progressBlock_keepExistingGraph_completionBlock___block_invoke_3(void *a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  *(*(a1[5] + 8) + 24) = a2;
  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v14 = v7;

  v11 = *(a1[7] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;
  v13 = v8;

  (*(a1[4] + 16))();
}

- (void)_processRebuild
{
  dispatch_assert_queue_V2(self->_stateQueue);
  [(PGGraphUpdateManager *)self setProcessingState:4];
  objc_initWeak(&location, self);
  processingQueue = self->_processingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__PGGraphUpdateManager__processRebuild__block_invoke;
  block[3] = &unk_2788812A8;
  objc_copyWeak(&v5, &location);
  block[4] = self;
  dispatch_async(processingQueue, block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __39__PGGraphUpdateManager__processRebuild__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [PGGraphIngestRecipe alloc];
    v4 = [*(a1 + 32) manager];
    v5 = [v4 photoLibrary];
    v6 = [(PGGraphIngestRecipe *)v3 initWithPhotoLibrary:v5];

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __39__PGGraphUpdateManager__processRebuild__block_invoke_2;
    v8[3] = &unk_278882E50;
    v8[4] = *(a1 + 32);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __39__PGGraphUpdateManager__processRebuild__block_invoke_3;
    v7[3] = &unk_278884D38;
    v7[4] = WeakRetained;
    [WeakRetained _triggerFullRebuildDuringLiveUpdate:1 graphIngestRecipe:v6 progressBlock:v8 keepExistingGraph:1 completionBlock:v7];
  }
}

uint64_t __39__PGGraphUpdateManager__processRebuild__block_invoke_2(uint64_t a1, _BYTE *a2)
{
  result = [*(a1 + 32) stopRequested];
  *a2 = result;
  return result;
}

void __39__PGGraphUpdateManager__processRebuild__block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__PGGraphUpdateManager__processRebuild__block_invoke_4;
  block[3] = &unk_278881280;
  v12 = a2;
  v10 = v5;
  v11 = v6;
  v8 = v5;
  dispatch_sync(v7, block);
}

_BYTE *__39__PGGraphUpdateManager__processRebuild__block_invoke_4(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) & 1) != 0 || os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR) && (v4 = *(a1 + 32), v5 = 138412290, v6 = v4, _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "GraphLiveUpdate - _processRebuild failed with error %@", &v5, 0xCu), (*(a1 + 48)))
  {
    result = *(a1 + 40);
    if (!result[9])
    {
      goto LABEL_7;
    }
  }

  else
  {
    result = *(a1 + 40);
  }

  result = [result _onStopRequestedWasListening:0];
LABEL_7:
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_onStopRequestedWasListening:(BOOL)a3
{
  dispatch_assert_queue_V2(self->_stateQueue);
  [(PGGraphUpdateManager *)self setProcessingState:0];

  [(PGGraphUpdateManager *)self setStopRequested:0];
}

- (void)_performRebuildWithGraphIngestRecipe:(id)a3 progressBlock:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  stateQueue = self->_stateQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __91__PGGraphUpdateManager__performRebuildWithGraphIngestRecipe_progressBlock_completionBlock___block_invoke;
  v15[3] = &unk_278881258;
  v15[4] = self;
  v16 = v8;
  v17 = v10;
  v18 = v9;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  dispatch_sync(stateQueue, v15);
}

void __91__PGGraphUpdateManager__performRebuildWithGraphIngestRecipe_progressBlock_completionBlock___block_invoke(id *a1)
{
  location[3] = *MEMORY[0x277D85DE8];
  if ([a1[4] processingState])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      v6 = a1[4];
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v6;
      _os_log_fault_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "GraphLiveUpdate - received performFullRebuildWithProgressBlock when not stopped, this is not expected, please file a radar against 'Photos Knowledge Graph | all' - GraphUpdateManager: %@", location, 0xCu);
    }

    v2 = a1[6];
    if (v2)
    {
      v3 = [PGError errorForCode:-1];
      v2[2](v2, 0, v3);
    }
  }

  else
  {
    [a1[4] setProcessingState:4];
    objc_initWeak(location, a1[4]);
    v4 = *(a1[4] + 2);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __91__PGGraphUpdateManager__performRebuildWithGraphIngestRecipe_progressBlock_completionBlock___block_invoke_247;
    v7[3] = &unk_278881230;
    objc_copyWeak(&v11, location);
    v9 = a1[6];
    v8 = a1[5];
    v10 = a1[7];
    dispatch_async(v4, v7);

    objc_destroyWeak(&v11);
    objc_destroyWeak(location);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __91__PGGraphUpdateManager__performRebuildWithGraphIngestRecipe_progressBlock_completionBlock___block_invoke_247(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 48);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __91__PGGraphUpdateManager__performRebuildWithGraphIngestRecipe_progressBlock_completionBlock___block_invoke_2;
    v8[3] = &unk_278881208;
    v8[4] = WeakRetained;
    v5 = *(a1 + 32);
    v9 = *(a1 + 40);
    [v3 _triggerFullRebuildDuringLiveUpdate:0 graphIngestRecipe:v5 progressBlock:v4 keepExistingGraph:1 completionBlock:v8];
  }

  else
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = [PGError errorForCode:-1];
      (*(v6 + 16))(v6, 0, v7);
    }
  }
}

void __91__PGGraphUpdateManager__performRebuildWithGraphIngestRecipe_progressBlock_completionBlock___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) stateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__PGGraphUpdateManager__performRebuildWithGraphIngestRecipe_progressBlock_completionBlock___block_invoke_3;
  block[3] = &unk_27888A660;
  block[4] = *(a1 + 32);
  dispatch_sync(v6, block);

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }
}

- (void)performFullRebuildWithProgressBlock:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [PGGraphIngestRecipe alloc];
  v9 = [(PGGraphUpdateManager *)self manager];
  v10 = [v9 photoLibrary];
  v11 = [(PGGraphIngestRecipe *)v8 initWithPhotoLibrary:v10];

  [(PGGraphUpdateManager *)self _performRebuildWithGraphIngestRecipe:v11 progressBlock:v7 completionBlock:v6];
}

- (BOOL)stopRequested
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__PGGraphUpdateManager_stopRequested__block_invoke;
  v5[3] = &unk_27888A700;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = PGGraphUpdateManager;
  v4 = [(PGGraphUpdateManager *)&v12 description];
  v5 = [(PGGraphUpdateManager *)self processingState];
  if (v5 > 4)
  {
    v6 = @"Unknown Processing State";
  }

  else
  {
    v6 = off_278881318[v5];
  }

  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_stopRequested];
  v8 = [(PGGraphUpdateManager *)self executionContext];
  if (v8 > 2)
  {
    v9 = @"Unknown Execution Context";
  }

  else
  {
    v9 = off_278881340[v8];
  }

  v10 = [v3 stringWithFormat:@"%@ - processing state: %@, stopRequested: %@, execution context: %@", v4, v6, v7, v9];

  return v10;
}

- (PGGraphUpdateManager)initWithGraphManager:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = PGGraphUpdateManager;
  v6 = [(PGGraphUpdateManager *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_manager, a3);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_initially_inactive(v8);

    v10 = dispatch_queue_create("com.apple.photoanalysis.graph.updatemanager.livechange", v9);
    processingQueue = v7->_processingQueue;
    v7->_processingQueue = v10;

    dispatch_set_qos_class_floor(v7->_processingQueue, QOS_CLASS_UTILITY, 0);
    dispatch_activate(v7->_processingQueue);
    v12 = dispatch_queue_create("com.apple.photoanalysis.graph.updatemanager.state", v9);
    stateQueue = v7->_stateQueue;
    v7->_stateQueue = v12;

    dispatch_set_qos_class_floor(v7->_stateQueue, QOS_CLASS_UTILITY, 0);
    dispatch_activate(v7->_stateQueue);
    *&v7->_processingState = 0;
    v14 = [PGGraphUpdateJetsamIndicator alloc];
    v15 = [v5 photoLibrary];
    v16 = [(PGGraphUpdateJetsamIndicator *)v14 initWithPhotoLibrary:v15];
    jetsamIndicator = v7->_jetsamIndicator;
    v7->_jetsamIndicator = v16;
  }

  return v7;
}

@end