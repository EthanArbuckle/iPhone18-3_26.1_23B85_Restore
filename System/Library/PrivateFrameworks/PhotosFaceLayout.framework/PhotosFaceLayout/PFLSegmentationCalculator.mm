@interface PFLSegmentationCalculator
+ (id)sharedInstance;
- (PFLSegmentationCalculator)init;
- (id)queue_bestSegmentationForAsset:(id)a3 timePositions:(id)a4 error:(id *)a5;
- (void)_queue_segmentationForAsset:(id)a3 timePosition:(unint64_t)a4 completion:(id)a5;
- (void)bestSegmentationForAsset:(id)a3 completion:(id)a4;
- (void)bestSegmentationForAsset:(id)a3 timePosition:(unint64_t)a4 completion:(id)a5;
@end

@implementation PFLSegmentationCalculator

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__PFLSegmentationCalculator_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_instance;

  return v2;
}

uint64_t __43__PFLSegmentationCalculator_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_instance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (PFLSegmentationCalculator)init
{
  v13.receiver = self;
  v13.super_class = PFLSegmentationCalculator;
  v2 = [(PFLSegmentationCalculator *)&v13 init];
  v3 = v2;
  if (v2)
  {
    segmentationData = v2->_segmentationData;
    v2->_segmentationData = 0;

    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v6 = dispatch_queue_create("com.apple.photosface.segmentationcalculator.work", v5);
    workQueue = v3->_workQueue;
    v3->_workQueue = v6;

    v8 = dispatch_queue_create("com.apple.photosface.segmentationcalculator.segmentation", v5);
    segmentationQueue = v3->_segmentationQueue;
    v3->_segmentationQueue = v8;

    v10 = dispatch_semaphore_create(0);
    segmentationQueueSema = v3->_segmentationQueueSema;
    v3->_segmentationQueueSema = v10;
  }

  return v3;
}

- (void)bestSegmentationForAsset:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__PFLSegmentationCalculator_bestSegmentationForAsset_completion___block_invoke;
  block[3] = &unk_27875BAA0;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(workQueue, block);
}

void __65__PFLSegmentationCalculator_bestSegmentationForAsset_completion___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __65__PFLSegmentationCalculator_bestSegmentationForAsset_completion___block_invoke_2;
  v33[3] = &unk_27875BA78;
  v2 = *(a1 + 48);
  v33[4] = *(a1 + 32);
  v34 = v2;
  v3 = MEMORY[0x2318CC2A0](v33);
  [MEMORY[0x277D3A950] ensureResources];
  v4 = pfl_layout_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 8);
    *buf = 138412290;
    v36 = v5;
    _os_log_impl(&dword_22D2ED000, v4, OS_LOG_TYPE_DEFAULT, "PFL: bestSegmentationForAsset DISPATCHED, seg data == %@", buf, 0xCu);
  }

  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v32 = 0;
  v9 = [v7 queue_bestSegmentationForAsset:v8 timePositions:&unk_284076F08 error:&v32];
  v10 = v32;
  if ((v3)[2](v3, v10))
  {
    goto LABEL_34;
  }

  if (v9)
  {
    [v9 visibleRect];
    if (CGRectIsEmpty(v38))
    {
      v11 = pfl_layout_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __65__PFLSegmentationCalculator_bestSegmentationForAsset_completion___block_invoke_cold_1(v11);
      }

      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v31 = v10;
      v14 = [v12 queue_bestSegmentationForAsset:v13 timePositions:&unk_284076F20 error:&v31];
      v15 = v31;

      if ((v3)[2](v3, v15))
      {
        v10 = v15;
LABEL_19:
        v9 = v14;
        goto LABEL_34;
      }

      if (!v14)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v14 = v9;
      v15 = v10;
    }

    [v6 addObject:v14];
  }

  else
  {
    v15 = v10;
  }

LABEL_14:
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v30 = v15;
  v9 = [v16 queue_bestSegmentationForAsset:v17 timePositions:&unk_284076F38 error:&v30];
  v10 = v30;

  if ((v3)[2](v3, v10))
  {
    goto LABEL_34;
  }

  if (v9)
  {
    [v6 addObject:v9];
  }

  v18 = *(a1 + 32);
  v19 = *(a1 + 40);
  v29 = v10;
  v14 = [v18 queue_bestSegmentationForAsset:v19 timePositions:&unk_284076F50 error:&v29];
  v20 = v29;

  if ((v3)[2](v3, v20))
  {
    v10 = v20;
    goto LABEL_19;
  }

  if (v14)
  {
    [v6 addObject:v14];
  }

  v21 = *(a1 + 32);
  v22 = *(a1 + 40);
  v28 = v20;
  v9 = [v21 queue_bestSegmentationForAsset:v22 timePositions:&unk_284076F68 error:&v28];
  v23 = v28;

  if ((v3)[2](v3, v23))
  {
    v10 = v23;
    goto LABEL_34;
  }

  if (v9)
  {
    [v6 addObject:v9];
  }

  if ([v6 count])
  {
    v10 = v23;
LABEL_31:
    (*(*(a1 + 48) + 16))();
    v25 = pfl_layout_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2ED000, v25, OS_LOG_TYPE_DEFAULT, "PFL: bestSegmentationForAsset DONE", buf, 2u);
    }

    v26 = *(a1 + 32);
    v27 = *(v26 + 8);
    *(v26 + 8) = 0;

    [MEMORY[0x277D3A950] freeResources];
    goto LABEL_34;
  }

  v24 = pfl_layout_log();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    __65__PFLSegmentationCalculator_bestSegmentationForAsset_completion___block_invoke_cold_2(v24);
  }

  v10 = [MEMORY[0x277CCA9B8] errorWithDomain:0x284075FD0 code:2 userInfo:0];

  if (((v3)[2](v3, v10) & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_34:
}

BOOL __65__PFLSegmentationCalculator_bestSegmentationForAsset_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    (*(*(a1 + 40) + 16))();
    v4 = pfl_layout_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_22D2ED000, v4, OS_LOG_TYPE_DEFAULT, "PFL: bestSegmentationForAsset DONE with error %@", &v8, 0xCu);
    }

    v5 = *(a1 + 32);
    v6 = *(v5 + 8);
    *(v5 + 8) = 0;

    [MEMORY[0x277D3A950] freeResources];
  }

  return v3 != 0;
}

- (void)bestSegmentationForAsset:(id)a3 timePosition:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  workQueue = self->_workQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__PFLSegmentationCalculator_bestSegmentationForAsset_timePosition_completion___block_invoke;
  v13[3] = &unk_27875BAC8;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(workQueue, v13);
}

void __78__PFLSegmentationCalculator_bestSegmentationForAsset_timePosition_completion___block_invoke(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277D3A950] ensureResources];
  v2 = pfl_layout_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1[4] + 8);
    *buf = 138412290;
    v16 = v3;
    _os_log_impl(&dword_22D2ED000, v2, OS_LOG_TYPE_DEFAULT, "PFL: bestSegmentationForAsset DISPATCHED, seg data == %@", buf, 0xCu);
  }

  v4 = a1[4];
  v5 = a1[5];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[7]];
  v14 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  v13 = 0;
  v8 = [v4 queue_bestSegmentationForAsset:v5 timePositions:v7 error:&v13];
  v9 = v13;

  (*(a1[6] + 16))();
  v10 = pfl_layout_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D2ED000, v10, OS_LOG_TYPE_DEFAULT, "PFL: bestSegmentationForAsset DONE", buf, 2u);
  }

  v11 = a1[4];
  v12 = *(v11 + 8);
  *(v11 + 8) = 0;

  [MEMORY[0x277D3A950] freeResources];
}

- (id)queue_bestSegmentationForAsset:(id)a3 timePositions:(id)a4 error:(id *)a5
{
  v74 = *MEMORY[0x277D85DE8];
  v47 = a3;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = a4;
  v48 = [obj countByEnumeratingWithState:&v59 objects:v73 count:16];
  if (v48)
  {
    v7 = 0;
    v45 = *v60;
    v43 = *MEMORY[0x277D3B598];
    v8 = -1.0;
LABEL_3:
    v9 = 0;
    while (1)
    {
      v10 = v7;
      if (*v60 != v45)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v59 + 1) + 8 * v9);
      *v69 = 0;
      *&v69[8] = v69;
      *&v69[16] = 0x3032000000;
      v70 = __Block_byref_object_copy__0;
      v71 = __Block_byref_object_dispose__0;
      v72 = 0;
      v53 = 0;
      v54 = &v53;
      v55 = 0x3032000000;
      v56 = __Block_byref_object_copy__0;
      v57 = __Block_byref_object_dispose__0;
      v58 = 0;
      segmentationQueue = self->_segmentationQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __80__PFLSegmentationCalculator_queue_bestSegmentationForAsset_timePositions_error___block_invoke;
      block[3] = &unk_27875BB18;
      block[4] = v11;
      block[5] = self;
      v13 = v47;
      v50 = v13;
      v51 = v69;
      v52 = &v53;
      dispatch_async(segmentationQueue, block);
      dispatch_semaphore_wait(self->_segmentationQueueSema, 0xFFFFFFFFFFFFFFFFLL);
      v14 = pfl_layout_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v64 = *&v11;
        _os_log_impl(&dword_22D2ED000, v14, OS_LOG_TYPE_DEFAULT, "PFL: queue_bestSegmentationForAsset DONE SEGMENTING for %@", buf, 0xCu);
      }

      v15 = v54[5];
      if (v15)
      {
        if (a5)
        {
          v16 = v15;
          *a5 = v15;
        }

        v17 = pfl_layout_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_22D2ED000, v17, OS_LOG_TYPE_DEFAULT, "PFL: queue_bestSegmentationForAsset ALL DONE with an error; returning nil layout", buf, 2u);
        }
      }

      else
      {
        v18 = pfl_layout_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [(PISegmentationData *)self->_segmentationData scores];
          v20 = [v19 objectForKeyedSubscript:v43];
          [v20 floatValue];
          v22 = v21;
          [*(*&v69[8] + 40) visibleRect];
          v27 = _rectAsString(v23, v24, v25, v26);
          *buf = 138412802;
          v64 = *&v11;
          v65 = 2048;
          v66 = v22;
          v67 = 2112;
          v68 = v27;
          _os_log_impl(&dword_22D2ED000, v18, OS_LOG_TYPE_DEFAULT, "PFL: queue_bestSegmentationForAsset: score for %@ == %.2f, crop == %@", buf, 0x20u);
        }

        if (!self->_segmentationData)
        {
          goto LABEL_21;
        }

        v28 = [PFLLayoutConfiguration alloc];
        v29 = [v11 intValue];
        v17 = [(PFLLayoutConfiguration *)v28 initWithAsset:v13 timePosition:v29 segmentationData:self->_segmentationData coreLayout:*(*&v69[8] + 40)];
        [v17 cropScore];
        if (v30 > v8)
        {
          v17 = v17;

          [v17 cropScore];
          v8 = v31;
          v32 = pfl_layout_log();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            v64 = v8;
            v65 = 2112;
            v66 = *&v11;
            _os_log_impl(&dword_22D2ED000, v32, OS_LOG_TYPE_DEFAULT, "PFL: queue_bestSegmentationForAsset: top score is now %.2f (%@)", buf, 0x16u);
          }

          v10 = v17;
        }
      }

LABEL_21:
      _Block_object_dispose(&v53, 8);

      _Block_object_dispose(v69, 8);
      if (v15)
      {

        v33 = 0;
        goto LABEL_30;
      }

      ++v9;
      v7 = v10;
      if (v48 == v9)
      {
        v48 = [obj countByEnumeratingWithState:&v59 objects:v73 count:16];
        v7 = v10;
        if (v48)
        {
          goto LABEL_3;
        }

        goto LABEL_27;
      }
    }
  }

  v7 = 0;
LABEL_27:
  v34 = v7;

  v35 = pfl_layout_log();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = [v34 timePosition];
    [v34 visibleRect];
    v41 = _rectAsString(v37, v38, v39, v40);
    *v69 = 134218242;
    *&v69[4] = v36;
    *&v69[12] = 2112;
    *&v69[14] = v41;
    _os_log_impl(&dword_22D2ED000, v35, OS_LOG_TYPE_DEFAULT, "PFL: queue_bestSegmentationForAsset ALL DONE; winner == %ld (%@)", v69, 0x16u);
  }

  v10 = v34;
  v33 = v10;
LABEL_30:

  return v33;
}

void __80__PFLSegmentationCalculator_queue_bestSegmentationForAsset_timePositions_error___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = pfl_layout_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(*(a1 + 40) + 8);
    *buf = 138412546;
    v16 = v3;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&dword_22D2ED000, v2, OS_LOG_TYPE_DEFAULT, "PFL: queue_bestSegmentationForAsset START SEGMENTING for %@, seg data == %@", buf, 0x16u);
  }

  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = [*(a1 + 32) intValue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__PFLSegmentationCalculator_queue_bestSegmentationForAsset_timePositions_error___block_invoke_320;
  v11[3] = &unk_27875BAF0;
  v8 = *(a1 + 48);
  v11[4] = *(a1 + 40);
  v14 = *(a1 + 56);
  v9 = v8;
  v10 = *(a1 + 32);
  v12 = v9;
  v13 = v10;
  [v6 _queue_segmentationForAsset:v5 timePosition:v7 completion:v11];
}

void __80__PFLSegmentationCalculator_queue_bestSegmentationForAsset_timePositions_error___block_invoke_320(void *a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  objc_storeStrong((a1[4] + 8), a2);
  objc_storeStrong((*(a1[7] + 8) + 40), a3);
  objc_storeStrong((*(a1[8] + 8) + 40), a4);
  if (*(*(a1[8] + 8) + 40))
  {
    v11 = pfl_layout_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __80__PFLSegmentationCalculator_queue_bestSegmentationForAsset_timePositions_error___block_invoke_320_cold_1(a1, (a1 + 8), v11);
    }
  }

  dispatch_semaphore_signal(*(a1[4] + 32));
}

- (void)_queue_segmentationForAsset:(id)a3 timePosition:(unint64_t)a4 completion:(id)a5
{
  v44[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [objc_alloc(MEMORY[0x277CD9A08]) initWithPhotoAsset:v8];
  PFCRectForTimePosition();
  v15 = flipYNormalizedRect(v11, v12, v13, v14);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = objc_alloc(MEMORY[0x277D3B488]);
  v23 = [v22 initWithScreenSize:*MEMORY[0x277D3B3C0] timeRect:*(MEMORY[0x277D3B3C0] + 8) inactiveTimeRect:v15 parallaxPadding:{v17, v19, v21, *&v15, *&v17, *&v19, *&v21, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  v24 = [objc_alloc(MEMORY[0x277D3B530]) initWithPortraitConfiguration:v23 landscapeConfiguration:0];
  v25 = [[PFLLayoutProvider alloc] initWithTimePosition:a4];
  v26 = MEMORY[0x277CBEB38];
  v27 = *MEMORY[0x277D3AAD8];
  v43[0] = *MEMORY[0x277D3AAE0];
  v43[1] = v27;
  v44[0] = v25;
  v44[1] = v24;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];
  v29 = [v26 dictionaryWithDictionary:v28];

  segmentationData = self->_segmentationData;
  if (segmentationData)
  {
    [v29 setObject:segmentationData forKeyedSubscript:*MEMORY[0x277D3AAF8]];
  }

  v31 = [[PFLJetsamInfoInterval alloc] initWithLabel:@"loadSegmentationForAsset"];
  v32 = MEMORY[0x277D3A950];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __81__PFLSegmentationCalculator__queue_segmentationForAsset_timePosition_completion___block_invoke;
  v37[3] = &unk_27875BB40;
  v38 = v31;
  v39 = v25;
  v41 = v9;
  v42 = a4;
  v40 = v8;
  v33 = v9;
  v34 = v8;
  v35 = v25;
  v36 = v31;
  [v32 loadSegmentationDataForAsset:v10 options:v29 completion:v37];
}

void __81__PFLSegmentationCalculator__queue_segmentationForAsset_timePosition_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  [v6 logCurrentInterval];
  v8 = [*(a1 + 40) resultsAreValid];
  if (v7 && v8)
  {
    v9 = [*(a1 + 40) watchLayout];
  }

  else
  {
    v10 = pfl_layout_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __81__PFLSegmentationCalculator__queue_segmentationForAsset_timePosition_completion___block_invoke_cold_1(a1, v5, v10);
    }

    v9 = 0;
  }

  (*(*(a1 + 56) + 16))();
}

void __80__PFLSegmentationCalculator_queue_bestSegmentationForAsset_timePositions_error___block_invoke_320_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412802;
  *&v3[4] = *(a1 + 40);
  *&v3[12] = 2112;
  *&v3[14] = *(a1 + 48);
  *&v3[22] = 2112;
  OUTLINED_FUNCTION_0_0(&dword_22D2ED000, a2, a3, "segmentation error for asset %@, time position %@, error %@", *v3, *&v3[8], *&v3[16], *(*(*a2 + 8) + 40));
}

void __81__PFLSegmentationCalculator__queue_segmentationForAsset_timePosition_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412802;
  *&v3[4] = *(a1 + 48);
  *&v3[12] = 2048;
  *&v3[14] = *(a1 + 64);
  *&v3[22] = 2112;
  OUTLINED_FUNCTION_0_0(&dword_22D2ED000, a2, a3, "loadSegmentationDataForAsset did not compute any layout for asset %@, time position %ld, error %@", *v3, *&v3[8], *&v3[16], a2);
}

@end