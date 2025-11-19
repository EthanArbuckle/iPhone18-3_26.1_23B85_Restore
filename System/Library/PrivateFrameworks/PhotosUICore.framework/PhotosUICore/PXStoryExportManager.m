@interface PXStoryExportManager
+ (BOOL)collectAnalyticsForFixationWithAppleMusicAsset:(id)a3 configuration:(id)a4;
+ (OS_os_log)frequentSignpostLog;
+ (id)_appleIDCountry;
+ (id)_defaultPayloadForConfiguration:(id)a3;
+ (id)collectAnalyticsForExportBeginWithConfiguration:(id)a3;
+ (void)_incrementShareCountForMemory:(id)a3;
+ (void)collectAnalyticsForExportEndWithConfiguration:(id)a3 analyticsToken:(id)a4 model:(id)a5 withSuccess:(BOOL)a6 error:(id)a7;
+ (void)collectDataContinuationAnalyticsForExportWithConfiguration:(id)a3 withSuccess:(BOOL)a4 error:(id)a5;
- (PXStoryExportManager)init;
- (id)requestExportWithDestinationURL:(id)a3 configuration:(id)a4 initialSongResource:(id)a5 progressHandler:(id)a6 completionHandler:(id)a7;
- (int64_t)maxConcurrentExportCount;
- (void)cancelAllExports;
- (void)setMaxConcurrentExportCount:(int64_t)a3;
- (void)setQualityOfService:(int64_t)a3;
@end

@implementation PXStoryExportManager

+ (void)_incrementShareCountForMemory:(id)a3
{
  v3 = a3;
  v4 = [v3 photoLibrary];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__PXStoryExportManager_Analytics___incrementShareCountForMemory___block_invoke;
  v8[3] = &unk_1E774C648;
  v9 = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__PXStoryExportManager_Analytics___incrementShareCountForMemory___block_invoke_2;
  v6[3] = &unk_1E774C5C0;
  v7 = v9;
  v5 = v9;
  [v4 performChanges:v8 completionHandler:v6];
}

void __65__PXStoryExportManager_Analytics___incrementShareCountForMemory___block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E6978900] changeRequestForMemory:*(a1 + 32)];
  [v1 incrementShareCount];
}

void __65__PXStoryExportManager_Analytics___incrementShareCountForMemory___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = PLMemoriesGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138412546;
      v9 = v7;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "Failed to bump share count of memory %@: %@", &v8, 0x16u);
    }
  }
}

+ (id)_defaultPayloadForConfiguration:(id)a3
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a3;
  v5 = [[v3 alloc] initWithCapacity:3];
  v6 = [v4 storyConfiguration];

  v7 = [v6 assetCollection];

  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  [v5 setObject:v8 forKeyedSubscript:*MEMORY[0x1E6991E08]];

  return v5;
}

+ (void)collectAnalyticsForExportEndWithConfiguration:(id)a3 analyticsToken:(id)a4 model:(id)a5 withSuccess:(BOOL)a6 error:(id)a7
{
  v8 = a6;
  v47 = a3;
  v12 = a5;
  v13 = a7;
  v14 = a4;
  v15 = [v14 objectForKeyedSubscript:@"signpost"];
  v16 = [v15 CPAnalyticsSignpostIDValue];

  v17 = [v14 objectForKeyedSubscript:@"payload"];

  v18 = [MEMORY[0x1E696AD98] numberWithBool:v8];
  [v17 setObject:v18 forKeyedSubscript:@"interactiveMemoryExportSucceeded"];

  v19 = [v47 activityType];
  v20 = [v19 hasPrefix:@"com.apple"];
  v21 = [v47 activityType];

  if (v21)
  {
    [v17 setObject:v19 forKeyedSubscript:@"activityType"];
    v22 = [MEMORY[0x1E696AD98] numberWithBool:v20 ^ 1u];
    [v17 setObject:v22 forKeyedSubscript:@"isThirdPartyShareDestination"];
  }

  v23 = [v47 activityCategory];

  if (v23)
  {
    v24 = [v47 activityCategory];
    [v17 setObject:v24 forKeyedSubscript:@"activityCategory"];
  }

  v25 = [v47 videoOptions];
  [v25 resolution];
  v27 = v26;
  v29 = v28;

  if (v27 <= v29)
  {
    v30 = @"portrait";
  }

  else
  {
    v30 = @"landscape";
  }

  [v17 setObject:v30 forKeyedSubscript:@"Orientation"];
  v31 = [a1 _aspectDescriptionFromSize:{v27, v29}];
  [v17 setObject:v31 forKeyedSubscript:@"AspectRatio"];

  v32 = [v47 storyConfiguration];
  v33 = [v32 assetCollection];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  v35 = v34;
  if (!v8)
  {
    v46 = v12;
    v39 = [v13 domain];
    if ([v39 isEqualToString:*MEMORY[0x1E696A250]] && objc_msgSend(v13, "code") == 3072)
    {
      v40 = v16;

LABEL_20:
      v38 = @"com.apple.photos.memory.interactiveMemoryExportCancelled";
      v43 = @"com.apple.photos.memory.interactiveMemoryExportCancelled";
LABEL_23:
      v45 = MEMORY[0x1E6991F28];
      v37 = [v17 copy];
      [v45 sendEvent:v38 withPayload:v37];
      v16 = v40;
      v12 = v46;
      goto LABEL_24;
    }

    v40 = v16;
    v41 = [v13 domain];
    if ([v41 isEqualToString:@"PXStoryErrorDomain"])
    {
      v42 = [v13 code];

      if (v42 == 11)
      {
        goto LABEL_20;
      }
    }

    else
    {
    }

    v38 = @"com.apple.photos.memory.interactiveMemoryExportFailed";
    v44 = @"com.apple.photos.memory.interactiveMemoryExportFailed";
    [v17 setObject:v13 forKeyedSubscript:*MEMORY[0x1E6991E28]];
    goto LABEL_23;
  }

  v36 = @"com.apple.photos.memory.interactiveMemoryExportSucceeded";
  if (v35)
  {
    [a1 _incrementShareCountForMemory:v33];
  }

  v37 = [v17 copy];
  [PXStoryAnalyticsController sendMemoryEvent:@"com.apple.photos.memory.interactiveMemoryExported" model:v12 payload:v37];
  v38 = @"com.apple.photos.memory.interactiveMemoryExportSucceeded";
LABEL_24:

  [v17 setObject:v38 forKeyedSubscript:*MEMORY[0x1E6991E40]];
  [MEMORY[0x1E6991F28] endSignpost:v16 forEventName:*MEMORY[0x1E6991C98] withPayload:v17];
}

+ (void)collectDataContinuationAnalyticsForExportWithConfiguration:(id)a3 withSuccess:(BOOL)a4 error:(id)a5
{
  v6 = a4;
  v19 = a3;
  v8 = a5;
  v9 = [a1 _defaultPayloadForConfiguration:v19];
  if (v6)
  {
    v10 = MEMORY[0x1E6991CC0];
LABEL_10:
    v14 = *v10;
    goto LABEL_11;
  }

  if (!v8)
  {
LABEL_9:
    v10 = MEMORY[0x1E6991CB8];
    goto LABEL_10;
  }

  v11 = [v8 domain];
  if ([v11 isEqualToString:*MEMORY[0x1E696A250]] && objc_msgSend(v8, "code") == 3072)
  {

    goto LABEL_9;
  }

  v12 = [v8 domain];
  if ([v12 isEqualToString:@"PXStoryErrorDomain"])
  {
    v13 = [v8 code];

    if (v13 == 11)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  v14 = *MEMORY[0x1E6991CC8];
  [v9 setObject:v8 forKeyedSubscript:*MEMORY[0x1E6991E28]];
LABEL_11:
  v15 = [v19 activityType];

  if (v15)
  {
    v16 = [v19 activityType];
    [v9 setObject:v16 forKeyedSubscript:@"activityType"];
  }

  v17 = [v19 activityCategory];

  if (v17)
  {
    v18 = [v19 activityCategory];
    [v9 setObject:v18 forKeyedSubscript:@"activityCategory"];
  }

  [MEMORY[0x1E6991F28] sendEvent:v14 withPayload:v9];
}

+ (id)_appleIDCountry
{
  v21 = *MEMORY[0x1E69E9840];
  if (_appleIDCountry_onceToken != -1)
  {
    dispatch_once(&_appleIDCountry_onceToken, &__block_literal_global_166520);
  }

  if (!_appleIDCountry_bag)
  {
    PXAssertGetLog();
  }

  *buf = 0;
  v16 = buf;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__166522;
  v19 = __Block_byref_object_dispose__166523;
  v20 = 0;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy__166522;
  v13[4] = __Block_byref_object_dispose__166523;
  v14 = 0;
  v2 = dispatch_semaphore_create(0);
  v3 = [_appleIDCountry_bag stringForKey:@"countryCode"];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__PXStoryExportManager_Analytics___appleIDCountry__block_invoke_322;
  v9[3] = &unk_1E773F308;
  v11 = buf;
  v12 = v13;
  v4 = v2;
  v10 = v4;
  [v3 valueWithCompletion:v9];

  v5 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v4, v5);
  v6 = *(v16 + 5);
  if (!v6)
  {
    PXAssertGetLog();
  }

  v7 = v6;

  _Block_object_dispose(v13, 8);
  _Block_object_dispose(buf, 8);

  return v7;
}

void __50__PXStoryExportManager_Analytics___appleIDCountry__block_invoke_322(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v13 = a2;
  v7 = a4;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v8 = 40;
  if (v13)
  {
    v9 = v13;
  }

  else
  {
    v8 = 48;
    v9 = v7;
  }

  v10 = *(*(a1 + v8) + 8);
  v11 = v9;
  v12 = *(v10 + 40);
  *(v10 + 40) = v11;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __50__PXStoryExportManager_Analytics___appleIDCountry__block_invoke()
{
  v0 = [MEMORY[0x1E698C7D8] bagForProfile:@"Photos" profileVersion:@"1"];
  v1 = _appleIDCountry_bag;
  _appleIDCountry_bag = v0;
}

+ (BOOL)collectAnalyticsForFixationWithAppleMusicAsset:(id)a3 configuration:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:a1 file:@"PXStoryExportManager+Analytics.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"appleMusicAsset != nil"}];
  }

  v9 = [v8 activityType];
  if (!v9)
  {
    PXAssertGetLog();
  }

  v10 = [v7 contentProvider];
  if (!v10)
  {
    v11 = PLStoryGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v7 identifier];
      *buf = 138543362;
      v28 = v12;
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_ERROR, "Music asset with identifier %{public}@ missing contentProvider", buf, 0xCu);
    }

    v10 = @"unknown";
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__PXStoryExportManager_Analytics__collectAnalyticsForFixationWithAppleMusicAsset_configuration___block_invoke;
  block[3] = &__block_descriptor_48_e5_v8__0l;
  block[4] = a2;
  block[5] = a1;
  if (collectAnalyticsForFixationWithAppleMusicAsset_configuration__onceToken != -1)
  {
    dispatch_once(&collectAnalyticsForFixationWithAppleMusicAsset_configuration__onceToken, block);
  }

  v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  [v13 setObject:v9 forKeyedSubscript:@"ActivityType"];
  v14 = [v7 identifier];
  [v13 setObject:v14 forKeyedSubscript:@"AdamID"];

  if (([collectAnalyticsForFixationWithAppleMusicAsset_configuration__topCPIDSet containsObject:v10] & 1) == 0)
  {

    v10 = @"other";
  }

  [v13 setObject:v10 forKeyedSubscript:@"CPID"];
  v15 = [a1 _appleIDCountry];
  v16 = v15;
  v17 = v15 != 0;
  if (v15)
  {
    v18 = [v15 uppercaseString];
    [v13 setObject:v18 forKeyedSubscript:@"AppleIDCountry"];

    v19 = collectAnalyticsForFixationWithAppleMusicAsset_configuration__dateFormatter;
    v20 = [MEMORY[0x1E695DF00] now];
    v21 = [v19 stringFromDate:v20];
    [v13 setObject:v21 forKeyedSubscript:@"DayOfEvent"];

    v22 = MEMORY[0x1E6991F28];
    v23 = [v13 copy];
    [v22 sendEvent:@"com.apple.photos.memory.appleMusicFixation" withPayload:v23];
  }

  return v17;
}

void __96__PXStoryExportManager_Analytics__collectAnalyticsForFixationWithAppleMusicAsset_configuration___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = collectAnalyticsForFixationWithAppleMusicAsset_configuration__dateFormatter;
  collectAnalyticsForFixationWithAppleMusicAsset_configuration__dateFormatter = v0;

  [collectAnalyticsForFixationWithAppleMusicAsset_configuration__dateFormatter setDateFormat:@"yyyy-MM-dd"];
  v2 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:&unk_1F1911110];
  v3 = collectAnalyticsForFixationWithAppleMusicAsset_configuration__topCPIDSet;
  collectAnalyticsForFixationWithAppleMusicAsset_configuration__topCPIDSet = v2;
}

+ (id)collectAnalyticsForExportBeginWithConfiguration:(id)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E6991F28];
  v5 = a3;
  v6 = [v4 startSignpost];
  v11[0] = @"signpost";
  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:v6];
  v11[1] = @"payload";
  v12[0] = v7;
  v8 = [a1 _defaultPayloadForConfiguration:v5];

  v12[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

  return v9;
}

- (void)cancelAllExports
{
  v2 = [(PXStoryExportManager *)self operationQueue];
  [v2 cancelAllOperations];
}

- (void)setMaxConcurrentExportCount:(int64_t)a3
{
  if (a3 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a3;
  }

  v4 = [(PXStoryExportManager *)self operationQueue];
  [v4 setMaxConcurrentOperationCount:v3];
}

- (void)setQualityOfService:(int64_t)a3
{
  if (self->_qualityOfService != a3)
  {
    self->_qualityOfService = a3;
    v5 = [(PXStoryExportManager *)self operationQueue];
    [v5 setQualityOfService:a3];
  }
}

- (int64_t)maxConcurrentExportCount
{
  v2 = [(PXStoryExportManager *)self operationQueue];
  v3 = [v2 maxConcurrentOperationCount];

  return v3;
}

- (id)requestExportWithDestinationURL:(id)a3 configuration:(id)a4 initialSongResource:(id)a5 progressHandler:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [[_PXStoryExportOperation alloc] initWithURL:v12 configuration:v13 qualityOfService:[(PXStoryExportManager *)self qualityOfService] initialSongResource:v14 progressHandler:v15];
  objc_initWeak(&location, v17);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __124__PXStoryExportManager_requestExportWithDestinationURL_configuration_initialSongResource_progressHandler_completionHandler___block_invoke;
  v21[3] = &unk_1E774AA30;
  objc_copyWeak(&v23, &location);
  v18 = v16;
  v22 = v18;
  [(_PXStoryExportOperation *)v17 setCompletionBlock:v21];
  v19 = [(PXStoryExportManager *)self operationQueue];
  [v19 addOperation:v17];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);

  return v17;
}

void __124__PXStoryExportManager_requestExportWithDestinationURL_configuration_initialSongResource_progressHandler_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained error];
    [v4 status];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (PXStoryExportManager)init
{
  v6.receiver = self;
  v6.super_class = PXStoryExportManager;
  v2 = [(PXStoryExportManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    operationQueue = v2->_operationQueue;
    v2->_operationQueue = v3;

    v2->_qualityOfService = -1;
    [(NSOperationQueue *)v2->_operationQueue setQualityOfService:-1];
    [(NSOperationQueue *)v2->_operationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v2->_operationQueue setName:@"com.apple.PXStoryExportManager.operationQueue"];
  }

  return v2;
}

+ (OS_os_log)frequentSignpostLog
{
  if (frequentSignpostLog_onceToken != -1)
  {
    dispatch_once(&frequentSignpostLog_onceToken, &__block_literal_global_194510);
  }

  v3 = frequentSignpostLog_log;

  return v3;
}

void __43__PXStoryExportManager_frequentSignpostLog__block_invoke()
{
  v0 = [MEMORY[0x1E69DC668] sharedApplication];
  v1 = [v0 launchedToTest];

  if (v1)
  {
    v2 = os_log_create(*MEMORY[0x1E69BFF60], "FrequentStoryExportSignPost");
  }

  else
  {
    v2 = MEMORY[0x1E69E9C18];
    v3 = MEMORY[0x1E69E9C18];
  }

  v4 = frequentSignpostLog_log;
  frequentSignpostLog_log = v2;
}

@end