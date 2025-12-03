@interface PXStoryExportManager
+ (BOOL)collectAnalyticsForFixationWithAppleMusicAsset:(id)asset configuration:(id)configuration;
+ (OS_os_log)frequentSignpostLog;
+ (id)_appleIDCountry;
+ (id)_defaultPayloadForConfiguration:(id)configuration;
+ (id)collectAnalyticsForExportBeginWithConfiguration:(id)configuration;
+ (void)_incrementShareCountForMemory:(id)memory;
+ (void)collectAnalyticsForExportEndWithConfiguration:(id)configuration analyticsToken:(id)token model:(id)model withSuccess:(BOOL)success error:(id)error;
+ (void)collectDataContinuationAnalyticsForExportWithConfiguration:(id)configuration withSuccess:(BOOL)success error:(id)error;
- (PXStoryExportManager)init;
- (id)requestExportWithDestinationURL:(id)l configuration:(id)configuration initialSongResource:(id)resource progressHandler:(id)handler completionHandler:(id)completionHandler;
- (int64_t)maxConcurrentExportCount;
- (void)cancelAllExports;
- (void)setMaxConcurrentExportCount:(int64_t)count;
- (void)setQualityOfService:(int64_t)service;
@end

@implementation PXStoryExportManager

+ (void)_incrementShareCountForMemory:(id)memory
{
  memoryCopy = memory;
  photoLibrary = [memoryCopy photoLibrary];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__PXStoryExportManager_Analytics___incrementShareCountForMemory___block_invoke;
  v8[3] = &unk_1E774C648;
  v9 = memoryCopy;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__PXStoryExportManager_Analytics___incrementShareCountForMemory___block_invoke_2;
  v6[3] = &unk_1E774C5C0;
  v7 = v9;
  v5 = v9;
  [photoLibrary performChanges:v8 completionHandler:v6];
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

+ (id)_defaultPayloadForConfiguration:(id)configuration
{
  v3 = MEMORY[0x1E695DF90];
  configurationCopy = configuration;
  v5 = [[v3 alloc] initWithCapacity:3];
  storyConfiguration = [configurationCopy storyConfiguration];

  assetCollection = [storyConfiguration assetCollection];

  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = assetCollection;
  }

  else
  {
    v8 = 0;
  }

  [v5 setObject:v8 forKeyedSubscript:*MEMORY[0x1E6991E08]];

  return v5;
}

+ (void)collectAnalyticsForExportEndWithConfiguration:(id)configuration analyticsToken:(id)token model:(id)model withSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  configurationCopy = configuration;
  modelCopy = model;
  errorCopy = error;
  tokenCopy = token;
  v15 = [tokenCopy objectForKeyedSubscript:@"signpost"];
  cPAnalyticsSignpostIDValue = [v15 CPAnalyticsSignpostIDValue];

  v17 = [tokenCopy objectForKeyedSubscript:@"payload"];

  v18 = [MEMORY[0x1E696AD98] numberWithBool:successCopy];
  [v17 setObject:v18 forKeyedSubscript:@"interactiveMemoryExportSucceeded"];

  activityType = [configurationCopy activityType];
  v20 = [activityType hasPrefix:@"com.apple"];
  activityType2 = [configurationCopy activityType];

  if (activityType2)
  {
    [v17 setObject:activityType forKeyedSubscript:@"activityType"];
    v22 = [MEMORY[0x1E696AD98] numberWithBool:v20 ^ 1u];
    [v17 setObject:v22 forKeyedSubscript:@"isThirdPartyShareDestination"];
  }

  activityCategory = [configurationCopy activityCategory];

  if (activityCategory)
  {
    activityCategory2 = [configurationCopy activityCategory];
    [v17 setObject:activityCategory2 forKeyedSubscript:@"activityCategory"];
  }

  videoOptions = [configurationCopy videoOptions];
  [videoOptions resolution];
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
  v31 = [self _aspectDescriptionFromSize:{v27, v29}];
  [v17 setObject:v31 forKeyedSubscript:@"AspectRatio"];

  storyConfiguration = [configurationCopy storyConfiguration];
  assetCollection = [storyConfiguration assetCollection];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = assetCollection;
  }

  else
  {
    v34 = 0;
  }

  v35 = v34;
  if (!successCopy)
  {
    v46 = modelCopy;
    domain = [errorCopy domain];
    if ([domain isEqualToString:*MEMORY[0x1E696A250]] && objc_msgSend(errorCopy, "code") == 3072)
    {
      v40 = cPAnalyticsSignpostIDValue;

LABEL_20:
      v38 = @"com.apple.photos.memory.interactiveMemoryExportCancelled";
      v43 = @"com.apple.photos.memory.interactiveMemoryExportCancelled";
LABEL_23:
      v45 = MEMORY[0x1E6991F28];
      v37 = [v17 copy];
      [v45 sendEvent:v38 withPayload:v37];
      cPAnalyticsSignpostIDValue = v40;
      modelCopy = v46;
      goto LABEL_24;
    }

    v40 = cPAnalyticsSignpostIDValue;
    domain2 = [errorCopy domain];
    if ([domain2 isEqualToString:@"PXStoryErrorDomain"])
    {
      code = [errorCopy code];

      if (code == 11)
      {
        goto LABEL_20;
      }
    }

    else
    {
    }

    v38 = @"com.apple.photos.memory.interactiveMemoryExportFailed";
    v44 = @"com.apple.photos.memory.interactiveMemoryExportFailed";
    [v17 setObject:errorCopy forKeyedSubscript:*MEMORY[0x1E6991E28]];
    goto LABEL_23;
  }

  v36 = @"com.apple.photos.memory.interactiveMemoryExportSucceeded";
  if (v35)
  {
    [self _incrementShareCountForMemory:assetCollection];
  }

  v37 = [v17 copy];
  [PXStoryAnalyticsController sendMemoryEvent:@"com.apple.photos.memory.interactiveMemoryExported" model:modelCopy payload:v37];
  v38 = @"com.apple.photos.memory.interactiveMemoryExportSucceeded";
LABEL_24:

  [v17 setObject:v38 forKeyedSubscript:*MEMORY[0x1E6991E40]];
  [MEMORY[0x1E6991F28] endSignpost:cPAnalyticsSignpostIDValue forEventName:*MEMORY[0x1E6991C98] withPayload:v17];
}

+ (void)collectDataContinuationAnalyticsForExportWithConfiguration:(id)configuration withSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  configurationCopy = configuration;
  errorCopy = error;
  v9 = [self _defaultPayloadForConfiguration:configurationCopy];
  if (successCopy)
  {
    v10 = MEMORY[0x1E6991CC0];
LABEL_10:
    v14 = *v10;
    goto LABEL_11;
  }

  if (!errorCopy)
  {
LABEL_9:
    v10 = MEMORY[0x1E6991CB8];
    goto LABEL_10;
  }

  domain = [errorCopy domain];
  if ([domain isEqualToString:*MEMORY[0x1E696A250]] && objc_msgSend(errorCopy, "code") == 3072)
  {

    goto LABEL_9;
  }

  domain2 = [errorCopy domain];
  if ([domain2 isEqualToString:@"PXStoryErrorDomain"])
  {
    code = [errorCopy code];

    if (code == 11)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  v14 = *MEMORY[0x1E6991CC8];
  [v9 setObject:errorCopy forKeyedSubscript:*MEMORY[0x1E6991E28]];
LABEL_11:
  activityType = [configurationCopy activityType];

  if (activityType)
  {
    activityType2 = [configurationCopy activityType];
    [v9 setObject:activityType2 forKeyedSubscript:@"activityType"];
  }

  activityCategory = [configurationCopy activityCategory];

  if (activityCategory)
  {
    activityCategory2 = [configurationCopy activityCategory];
    [v9 setObject:activityCategory2 forKeyedSubscript:@"activityCategory"];
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

+ (BOOL)collectAnalyticsForFixationWithAppleMusicAsset:(id)asset configuration:(id)configuration
{
  v29 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  configurationCopy = configuration;
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryExportManager+Analytics.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"appleMusicAsset != nil"}];
  }

  activityType = [configurationCopy activityType];
  if (!activityType)
  {
    PXAssertGetLog();
  }

  contentProvider = [assetCopy contentProvider];
  if (!contentProvider)
  {
    v11 = PLStoryGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      identifier = [assetCopy identifier];
      *buf = 138543362;
      v28 = identifier;
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_ERROR, "Music asset with identifier %{public}@ missing contentProvider", buf, 0xCu);
    }

    contentProvider = @"unknown";
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__PXStoryExportManager_Analytics__collectAnalyticsForFixationWithAppleMusicAsset_configuration___block_invoke;
  block[3] = &__block_descriptor_48_e5_v8__0l;
  block[4] = a2;
  block[5] = self;
  if (collectAnalyticsForFixationWithAppleMusicAsset_configuration__onceToken != -1)
  {
    dispatch_once(&collectAnalyticsForFixationWithAppleMusicAsset_configuration__onceToken, block);
  }

  v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  [v13 setObject:activityType forKeyedSubscript:@"ActivityType"];
  identifier2 = [assetCopy identifier];
  [v13 setObject:identifier2 forKeyedSubscript:@"AdamID"];

  if (([collectAnalyticsForFixationWithAppleMusicAsset_configuration__topCPIDSet containsObject:contentProvider] & 1) == 0)
  {

    contentProvider = @"other";
  }

  [v13 setObject:contentProvider forKeyedSubscript:@"CPID"];
  _appleIDCountry = [self _appleIDCountry];
  v16 = _appleIDCountry;
  v17 = _appleIDCountry != 0;
  if (_appleIDCountry)
  {
    uppercaseString = [_appleIDCountry uppercaseString];
    [v13 setObject:uppercaseString forKeyedSubscript:@"AppleIDCountry"];

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

+ (id)collectAnalyticsForExportBeginWithConfiguration:(id)configuration
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E6991F28];
  configurationCopy = configuration;
  startSignpost = [v4 startSignpost];
  v11[0] = @"signpost";
  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:startSignpost];
  v11[1] = @"payload";
  v12[0] = v7;
  v8 = [self _defaultPayloadForConfiguration:configurationCopy];

  v12[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

  return v9;
}

- (void)cancelAllExports
{
  operationQueue = [(PXStoryExportManager *)self operationQueue];
  [operationQueue cancelAllOperations];
}

- (void)setMaxConcurrentExportCount:(int64_t)count
{
  if (count <= 1)
  {
    countCopy = 1;
  }

  else
  {
    countCopy = count;
  }

  operationQueue = [(PXStoryExportManager *)self operationQueue];
  [operationQueue setMaxConcurrentOperationCount:countCopy];
}

- (void)setQualityOfService:(int64_t)service
{
  if (self->_qualityOfService != service)
  {
    self->_qualityOfService = service;
    operationQueue = [(PXStoryExportManager *)self operationQueue];
    [operationQueue setQualityOfService:service];
  }
}

- (int64_t)maxConcurrentExportCount
{
  operationQueue = [(PXStoryExportManager *)self operationQueue];
  maxConcurrentOperationCount = [operationQueue maxConcurrentOperationCount];

  return maxConcurrentOperationCount;
}

- (id)requestExportWithDestinationURL:(id)l configuration:(id)configuration initialSongResource:(id)resource progressHandler:(id)handler completionHandler:(id)completionHandler
{
  lCopy = l;
  configurationCopy = configuration;
  resourceCopy = resource;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v17 = [[_PXStoryExportOperation alloc] initWithURL:lCopy configuration:configurationCopy qualityOfService:[(PXStoryExportManager *)self qualityOfService] initialSongResource:resourceCopy progressHandler:handlerCopy];
  objc_initWeak(&location, v17);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __124__PXStoryExportManager_requestExportWithDestinationURL_configuration_initialSongResource_progressHandler_completionHandler___block_invoke;
  v21[3] = &unk_1E774AA30;
  objc_copyWeak(&v23, &location);
  v18 = completionHandlerCopy;
  v22 = v18;
  [(_PXStoryExportOperation *)v17 setCompletionBlock:v21];
  operationQueue = [(PXStoryExportManager *)self operationQueue];
  [operationQueue addOperation:v17];

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