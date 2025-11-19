@interface PEAdjustmentDataCacheEntry
+ (id)_resultHandlingQueue;
- (CGSize)inputSize;
- (PEAdjustmentDataCacheEntry)initWithAsset:(id)a3 networkAccessAllowed:(BOOL)a4 originalAdjustmentData:(BOOL)a5;
- (void)_load:(id)a3 networkAccessAllowed:(BOOL)a4 originalAdjustmentData:(BOOL)a5;
- (void)deliverOn:(id)a3 completion:(id)a4;
- (void)waitForResultsWithTimeout;
@end

@implementation PEAdjustmentDataCacheEntry

- (CGSize)inputSize
{
  objc_copyStruct(v4, &self->_inputSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)waitForResultsWithTimeout
{
  timeoutGroup = self->_timeoutGroup;
  v3 = dispatch_time(0, 1500000000);

  dispatch_group_wait(timeoutGroup, v3);
}

- (void)deliverOn:(id)a3 completion:(id)a4
{
  v6 = a4;
  group = self->_group;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__PEAdjustmentDataCacheEntry_deliverOn_completion___block_invoke;
  v9[3] = &unk_279A30B18;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_group_notify(group, a3, v9);
}

- (void)_load:(id)a3 networkAccessAllowed:(BOOL)a4 originalAdjustmentData:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  if ([v8 hasAdjustments])
  {
    [(PEAdjustmentDataCacheEntry *)self setDisposition:0];
    dispatch_group_enter(self->_group);
    dispatch_group_enter(self->_timeoutGroup);
    v31[0] = 0;
    v31[1] = v31;
    v31[2] = 0x2020000000;
    v32 = 0;
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x2020000000;
    v30 = 0;
    v9 = objc_alloc_init(MEMORY[0x277CD98A0]);
    v10 = v9;
    if (v5)
    {
      v11 = 17;
    }

    else
    {
      v11 = 16;
    }

    [v9 setVersion:v11];
    [v10 setNetworkAccessAllowed:v6];
    v12 = [objc_opt_class() _resultHandlingQueue];
    [v10 setResultHandlerQueue:v12];

    v13 = [MEMORY[0x277CD9898] defaultManager];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __80__PEAdjustmentDataCacheEntry__load_networkAccessAllowed_originalAdjustmentData___block_invoke;
    v24[3] = &unk_279A30AC8;
    v26 = v31;
    v24[4] = self;
    v14 = v8;
    v28 = v5;
    v25 = v14;
    v27 = v29;
    [v13 requestImageForAsset:v14 targetSize:0 contentMode:v10 options:v24 resultHandler:{0.0, 0.0}];

    v15 = dispatch_time(0, 1500000000);
    v16 = +[PEAdjustmentDataCacheEntry _resultHandlingQueue];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __80__PEAdjustmentDataCacheEntry__load_networkAccessAllowed_originalAdjustmentData___block_invoke_82;
    v18[3] = &unk_279A30AF0;
    v21 = v31;
    v23 = v5;
    v22 = v29;
    v19 = v14;
    v20 = self;
    dispatch_after(v15, v16, v18);

    _Block_object_dispose(v29, 8);
    _Block_object_dispose(v31, 8);
  }

  else
  {
    [(PEAdjustmentDataCacheEntry *)self setDisposition:1];
    [v8 fetchPropertySetsIfNeeded];
    v17 = [v8 originalMetadataProperties];
    -[PEAdjustmentDataCacheEntry setInputSize:](self, "setInputSize:", [v17 originalWidth], objc_msgSend(v17, "originalHeight"));
  }
}

void __80__PEAdjustmentDataCacheEntry__load_networkAccessAllowed_originalAdjustmentData___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = *(*(a1 + 48) + 8);
  if (*(v3 + 24) == 1)
  {
    v4 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25E6E9000, v4, OS_LOG_TYPE_DEFAULT, "Extra call to requestImageForAsset callback (_load)", buf, 2u);
    }
  }

  else
  {
    *(v3 + 24) = 1;
    v4 = [a3 objectForKeyedSubscript:*MEMORY[0x277CD9A10]];
    v6 = [v4 editorBundleID];
    [*(a1 + 32) setEditorBundleID:v6];

    v27 = 0;
    v28 = 0;
    v7 = [PESerializationUtility adjustmentDataIsSupported:v4];
    v8 = v7;
    if (!v7)
    {
      goto LABEL_21;
    }

    v9 = [*(a1 + 40) originalAVAssetOrProxy];
    if (v9)
    {
      v26 = 0;
      v10 = [MEMORY[0x277D2D048] firstEnabledVideoTrackInAsset:v9 error:&v26];
      v11 = v26;
      if (v10)
      {
        v12 = MEMORY[0x277D2D048];
        [v10 preferredTransform];
        v13 = [v12 videoOrientationForAssetPreferredTransform:buf];
      }

      else
      {
        v16 = PLPhotoEditGetLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v30 = v11;
          _os_log_impl(&dword_25E6E9000, v16, OS_LOG_TYPE_DEFAULT, "[PEAdjustmentDataCache] failed to extract orientation from video track %@", buf, 0xCu);
        }

        v13 = 1;
      }
    }

    else
    {
      [*(a1 + 40) fetchPropertySetsIfNeeded];
      v14 = *(a1 + 40);
      if (v14)
      {
        v15 = [v14 originalMetadataProperties];
        v13 = [v15 originalExifOrientation];
      }

      else
      {
        v13 = 1;
      }
    }

    if (NUOrientationIsValid())
    {
      v17 = v13;
    }

    else
    {
      v17 = 1;
    }

    v18 = [MEMORY[0x277D3AD18] compositionControllerWithAdjustmentData:v4 asset:*(a1 + 40) imageOrientation:v17 outMasterWidth:&v28 outMasterHeight:&v27];
    v19 = [v18 orientationAdjustmentController];

    if (!v19)
    {
      v20 = *MEMORY[0x277D3AA88];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __80__PEAdjustmentDataCacheEntry__load_networkAccessAllowed_originalAdjustmentData___block_invoke_72;
      v25[3] = &__block_descriptor_40_e43_v16__0__PIOrientationAdjustmentController_8l;
      v25[4] = v17;
      [v18 modifyAdjustmentWithKey:v20 modificationBlock:v25];
    }

    [*(a1 + 32) setCompositionController:v18];
    [*(a1 + 32) setDisposition:2];

    v21 = v28;
    if (!v28 || (v22 = v27) == 0)
    {
LABEL_21:
      v21 = 1024;
      v22 = 769;
      v27 = 769;
      v28 = 1024;
    }

    [*(a1 + 32) setInputSize:{v21, v22}];
    if (!v8)
    {
      v23 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 64))
        {
          v24 = @"YES";
        }

        else
        {
          v24 = @"NO";
        }

        *buf = 138412290;
        v30 = v24;
        _os_log_impl(&dword_25E6E9000, v23, OS_LOG_TYPE_DEFAULT, "[PEAdjustmentDataCache] editing as opaque. parsedEnvelope does not contain supported photo adjustments. Is loading original adjustment data: %@", buf, 0xCu);
      }

      [*(a1 + 32) setDisposition:3];
    }

    dispatch_group_leave(*(*(a1 + 32) + 8));
    if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
    {
      dispatch_group_leave(*(*(a1 + 32) + 16));
    }
  }
}

void __80__PEAdjustmentDataCacheEntry__load_networkAccessAllowed_originalAdjustmentData___block_invoke_82(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v2 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      v4 = @"NO";
      if (*(a1 + 64))
      {
        v4 = @"YES";
      }

      v5 = 138412546;
      v6 = v3;
      v7 = 2112;
      v8 = v4;
      _os_log_impl(&dword_25E6E9000, v2, OS_LOG_TYPE_ERROR, "PEAdjustmentDataCache timed out for asset: %@ original adjustment data: %@", &v5, 0x16u);
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
    dispatch_group_leave(*(*(a1 + 40) + 16));
  }
}

- (PEAdjustmentDataCacheEntry)initWithAsset:(id)a3 networkAccessAllowed:(BOOL)a4 originalAdjustmentData:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v14.receiver = self;
  v14.super_class = PEAdjustmentDataCacheEntry;
  v7 = a3;
  v8 = [(PEAdjustmentDataCacheEntry *)&v14 init];
  v9 = dispatch_group_create();
  group = v8->_group;
  v8->_group = v9;

  v11 = dispatch_group_create();
  timeoutGroup = v8->_timeoutGroup;
  v8->_timeoutGroup = v11;

  v8->_disposition = 0;
  [(PEAdjustmentDataCacheEntry *)v8 _load:v7 networkAccessAllowed:v6 originalAdjustmentData:v5, v14.receiver, v14.super_class];

  return v8;
}

+ (id)_resultHandlingQueue
{
  if (_resultHandlingQueue_onceToken != -1)
  {
    dispatch_once(&_resultHandlingQueue_onceToken, &__block_literal_global_1569);
  }

  v3 = _resultHandlingQueue_resultHandlingQueue;

  return v3;
}

void __50__PEAdjustmentDataCacheEntry__resultHandlingQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INITIATED, 0);

  v1 = dispatch_queue_create("PEAdjustmentDataCache.resultHandlingQueue", attr);
  v2 = _resultHandlingQueue_resultHandlingQueue;
  _resultHandlingQueue_resultHandlingQueue = v1;
}

@end