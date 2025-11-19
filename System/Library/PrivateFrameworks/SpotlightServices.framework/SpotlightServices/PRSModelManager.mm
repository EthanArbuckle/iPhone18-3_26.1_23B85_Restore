@interface PRSModelManager
+ (BOOL)loadModelsWithDirectory:(id)a3 intoModelDict:(id)a4;
+ (id)directivesFromFilePath:(id)a3;
+ (id)sharedModelManager;
+ (void)cannedInfoForType:(unint64_t)a3 directivesPath:(id *)a4 modelName:(id *)a5;
+ (void)loadModelWithURL:(id)a3 type:(unint64_t)a4 directivesPath:(id)a5 intoModelDict:(id)a6 error:(id *)a7;
+ (void)pathsFor:(unint64_t)a3 withParentPath:(id)a4 modelPath:(id *)a5 directivesPath:(id *)a6;
- (BOOL)loadCannedModels;
- (BOOL)loadModels;
- (PRSModelManager)init;
- (double)testL2WithData:(id)a3 experimental:(BOOL)a4;
- (float)computeL2ScoresForVectors:(id)a3 secondVector:(id)a4 withServerFeatures:(id)a5 withBundleFeatures:(id)a6 experimentalWeight1:(double)a7 experimentalWeight2:(double)a8 shouldCancel:(BOOL *)a9 clientBundle:(id)a10;
- (float)computeScoresForFeatures:(id)a3 withBundleFeatures:(id)a4 serverBundleFeatures:(id)a5 usingModelContext:(id)a6 qos:(unsigned int)a7 shouldCancel:(BOOL *)a8 filterBundle:(id)a9;
- (id)getL2ModelVersionForClientBundle:(id)a3;
- (void)activate;
- (void)deactivate;
- (void)loadCannedModelWithType:(unint64_t)a3 error:(id *)a4;
- (void)triggerUpdate;
- (void)updateModelsAccordingToHierarchy;
- (void)updateModelsAccordingToHierarchy:(id)a3 updateEnabled:(BOOL)a4 disablePendingUpdates:(BOOL)a5;
@end

@implementation PRSModelManager

+ (id)sharedModelManager
{
  if (sharedModelManager_onceToken != -1)
  {
    +[PRSModelManager sharedModelManager];
  }

  v3 = sharedModelManager_sharedManager;

  return v3;
}

uint64_t __37__PRSModelManager_sharedModelManager__block_invoke()
{
  sharedModelManager_sharedManager = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

+ (void)cannedInfoForType:(unint64_t)a3 directivesPath:(id *)a4 modelName:(id *)a5
{
  if (a3)
  {
    +[PRSModelManager cannedInfoForType:directivesPath:modelName:];
  }

  *a4 = SSDefaultsGetAssetPath(@"directives_l2.mdplist");
  *a5 = @"spotlight_l2";
}

+ (void)pathsFor:(unint64_t)a3 withParentPath:(id)a4 modelPath:(id *)a5 directivesPath:(id *)a6
{
  v12 = a4;
  v9 = [v12 stringByAppendingPathComponent:@"models"];
  v10 = [v12 stringByAppendingPathComponent:@"directives"];
  if (a3)
  {
    +[PRSModelManager pathsFor:withParentPath:modelPath:directivesPath:];
  }

  v11 = v10;
  *a5 = [v9 stringByAppendingPathComponent:@"spotlight_l2.mlmodelc"];
  *a6 = [v11 stringByAppendingPathComponent:@"directives_l2.mdplist"];
}

- (PRSModelManager)init
{
  v23.receiver = self;
  v23.super_class = PRSModelManager;
  v2 = [(PRSModelManager *)&v23 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
    v4 = *(v2 + 8);
    *(v2 + 8) = v3;

    v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    v6 = *(v2 + 10);
    *(v2 + 10) = v5;

    v7 = [MEMORY[0x1E695E000] standardUserDefaults];
    v8 = *(v2 + 11);
    *(v2 + 11) = v7;

    v9 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.searchd"];
    v10 = *(v2 + 11);
    *(v2 + 11) = v9;

    *(v2 + 33) = 0;
    v11 = [*(v2 + 11) objectForKey:@"ModelVersion"];
    v12 = *(v2 + 5);
    *(v2 + 5) = v11;

    v13 = *(v2 + 7);
    *(v2 + 7) = &stru_1F556FE60;

    v14 = *(v2 + 9);
    *(v2 + 9) = &stru_1F556FE60;

    *(v2 + 1) = 0;
    v15 = dispatch_group_create();
    v16 = *(v2 + 2);
    *(v2 + 2) = v15;

    v17 = dispatch_group_create();
    v18 = *(v2 + 3);
    *(v2 + 3) = v17;

    dispatch_group_enter(*(v2 + 3));
    v19 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __23__PRSModelManager_init__block_invoke;
    block[3] = &unk_1E8595778;
    v22 = v2;
    dispatch_async(v19, block);
  }

  return v2;
}

void __23__PRSModelManager_init__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  objc_sync_enter(v2);
  [*(a1 + 32) updateModelsAccordingToHierarchy:0 updateEnabled:1 disablePendingUpdates:1];
  objc_sync_exit(v2);

  dispatch_group_leave(*(*(a1 + 32) + 24));
  v3 = PRSLogCategoryDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1D9F69000, v3, OS_LOG_TYPE_INFO, "[Model loading] initial model update finished", v4, 2u);
  }
}

- (id)getL2ModelVersionForClientBundle:(id)a3
{
  v4 = a3;
  v5 = self->_models;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_models objectForKeyedSubscript:&unk_1F55B4410];
  v7 = [v6 version];

  objc_sync_exit(v5);

  return v7;
}

- (void)activate
{
  dispatch_group_wait(self->_modelUpdateGroup, 0xFFFFFFFFFFFFFFFFLL);
  obj = self->_models;
  objc_sync_enter(obj);
  activeGroup = self->_activeGroup;
  ++self->_activeCount;
  dispatch_group_enter(activeGroup);
  objc_sync_exit(obj);
}

- (void)deactivate
{
  obj = self->_models;
  objc_sync_enter(obj);
  activeCount = self->_activeCount;
  if (activeCount)
  {
    self->_activeCount = activeCount - 1;
    dispatch_group_leave(self->_activeGroup);
  }

  objc_sync_exit(obj);
}

- (void)triggerUpdate
{
  v10 = *MEMORY[0x1E69E9840];
  dispatch_group_enter(self->_modelUpdateGroup);
  v3 = PRSLogCategoryDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_1D9F69000, v3, OS_LOG_TYPE_INFO, "[Model loading] triggerUpdate started", &v8, 2u);
  }

  v4 = self->_models;
  objc_sync_enter(v4);
  v5 = PRSLogCategoryDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    activeCount = self->_activeCount;
    v8 = 134217984;
    v9 = activeCount;
    _os_log_impl(&dword_1D9F69000, v5, OS_LOG_TYPE_INFO, "[Model loading] triggerUpdate with activeCount %lu", &v8, 0xCu);
  }

  if (!self->_activeCount)
  {
    [(PRSModelManager *)self updateModelsAccordingToHierarchy];
  }

  objc_sync_exit(v4);

  dispatch_group_leave(self->_modelUpdateGroup);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)loadCannedModelWithType:(unint64_t)a3 error:(id *)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = 0;
  [objc_opt_class() cannedInfoForType:a3 directivesPath:&v22 modelName:&v21];
  v7 = v22;
  v8 = v21;
  v9 = PRSLogCategoryDefault();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    *buf = 138412802;
    v24 = v10;
    v25 = 2112;
    v26 = v8;
    v27 = 2112;
    v28 = v7;
    _os_log_impl(&dword_1D9F69000, v9, OS_LOG_TYPE_DEFAULT, "[Model loading] loading canned model type %@ model name %@ directive path %@", buf, 0x20u);
  }

  v11 = [objc_opt_class() directivesFromFilePath:v7];
  v12 = objc_opt_new();
  [v12 processDirectives:v11];
  v13 = [[SSCoreMLInterface alloc] initSpecificModel:v8 error:a4];
  v14 = PRSLogCategoryDefault();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v24 = v13;
    _os_log_impl(&dword_1D9F69000, v14, OS_LOG_TYPE_INFO, "[Model loading] model is %@", buf, 0xCu);
  }

  v15 = PRSLogCategoryDefault();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = [v13 getVersionString];
    *buf = 138412546;
    v24 = v8;
    v25 = 2112;
    v26 = v16;
    _os_log_impl(&dword_1D9F69000, v15, OS_LOG_TYPE_INFO, "[Model loading] loaded model name %@ version %@", buf, 0x16u);
  }

  if (*a4 || !v13)
  {
    v17 = PRSLogCategoryDefault();
    if (os_log_type_enabled(&v17->super, OS_LOG_TYPE_ERROR))
    {
      [PRSModelManager loadCannedModelWithType:a4 error:?];
    }
  }

  else
  {
    v17 = [[PRSModelContext alloc] initWithModel:v13 directivesManager:v12 type:a3];
    models = self->_models;
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [(NSMutableDictionary *)models setObject:v17 forKeyedSubscript:v19];
  }

  v20 = *MEMORY[0x1E69E9840];
}

+ (id)directivesFromFilePath:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v3 options:8 error:0];
  }

  else
  {
    v4 = 0;
  }

  if ([v4 length])
  {
    v5 = v4;
    v6 = *MEMORY[0x1E695E480];
    [v5 bytes];
    [v5 length];
    v7 = _MDPlistContainerCreateWithBytesAndDeallocator();
    v8 = _MDPlistContainerCopyRootObject();
    CFRelease(v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)loadModelsWithDirectory:(id)a3 intoModelDict:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v22 = a4;
  v6 = objc_opt_new();
  v7 = 0;
  v8 = 0;
  v9 = 1;
  do
  {
    v10 = v9;
    if ((v9 & 1) == 0)
    {
      v16 = v22;
      [v22 removeAllObjects];
      [v22 addEntriesFromDictionary:v6];
      v14 = 0;
      v11 = v8;
      v12 = v7;
      goto LABEL_7;
    }

    v24 = v7;
    v25 = v8;
    [PRSModelManager pathsFor:0 withParentPath:v5 modelPath:&v25 directivesPath:&v24];
    v11 = v25;

    v12 = v24;
    v13 = [MEMORY[0x1E695DFF8] fileURLWithPath:v11];
    v23 = 0;
    [PRSModelManager loadModelWithURL:v13 type:0 directivesPath:v12 intoModelDict:v6 error:&v23];
    v14 = v23;

    v9 = 0;
    v7 = v12;
    v8 = v11;
  }

  while (!v14);
  v15 = PRSLogCategoryDefault();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v19 = [v14 code];
    v20 = @"nil";
    if (v11)
    {
      v21 = v11;
    }

    else
    {
      v21 = @"nil";
    }

    *buf = 134218498;
    v27 = v19;
    v28 = 2112;
    if (v12)
    {
      v20 = v12;
    }

    v29 = v21;
    v30 = 2112;
    v31 = v20;
    _os_log_error_impl(&dword_1D9F69000, v15, OS_LOG_TYPE_ERROR, "[Model loading] model loading failed with err %ld for model path %@ and directives path %@", buf, 0x20u);
  }

  +[SSADEventReporter reportModelLoadingError];
  v16 = v22;
LABEL_7:

  v17 = *MEMORY[0x1E69E9840];
  return (v10 & 1) == 0;
}

+ (void)loadModelWithURL:(id)a3 type:(unint64_t)a4 directivesPath:(id)a5 intoModelDict:(id)a6 error:(id *)a7
{
  v34[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  if (v11 && [v12 length])
  {
    v14 = [objc_opt_class() directivesFromFilePath:v12];
    if ([v14 count])
    {
      v15 = objc_opt_new();
      [v15 processDirectives:v14];
      v16 = [[SSCoreMLInterface alloc] initWithURL:v11 error:a7];
      v17 = v16;
      if (!*a7)
      {
        if (v16)
        {
          v18 = [[PRSModelContext alloc] initWithModel:v16 directivesManager:v15 type:a4];
          v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
          [v13 setObject:v18 forKeyedSubscript:v19];
        }

        else
        {
          v25 = PRSModelErrorDomain;
          v28 = MEMORY[0x1E696ABC0];
          v29 = @"type";
          v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
          v30 = v26;
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
          *a7 = [v28 errorWithDomain:v25 code:-1 userInfo:v27];
        }
      }
    }

    else
    {
      v22 = MEMORY[0x1E696ABC0];
      v23 = PRSModelErrorDomain;
      v31 = @"type";
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
      v32 = v15;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      *a7 = [v22 errorWithDomain:v23 code:-1000 userInfo:v17];
    }
  }

  else
  {
    v20 = MEMORY[0x1E696ABC0];
    v21 = PRSModelErrorDomain;
    v33 = @"type";
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    v34[0] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    *a7 = [v20 errorWithDomain:v21 code:-1001 userInfo:v15];
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (BOOL)loadCannedModels
{
  v11 = 0;
  [(PRSModelManager *)self loadCannedModelWithType:0 error:&v11];
  v3 = v11;
  if (v3)
  {
    v4 = PRSLogCategoryDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [PRSModelManager loadCannedModels];
    }

    getpid();
    v5 = MEMORY[0x1E696AEC0];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0];
    v7 = [v5 stringWithFormat:@"failed load canned model type %@", v6];
    SimulateCrash();
  }

  else
  {
    modelType = self->_modelType;
    self->_modelType = @"Canned";

    [(NSUserDefaults *)self->_userDefaults setValue:self->_modelType forKey:@"ModelName"];
    v6 = PRSLogCategoryDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D9F69000, v6, OS_LOG_TYPE_DEFAULT, "[Model loading] loaded canned models", buf, 2u);
    }
  }

  return v3 == 0;
}

- (BOOL)loadModels
{
  if (self->_trialEnabled)
  {
    v3 = 2;
    while (1)
    {
      v4 = [SSModelLoader assetDirectoryPathForType:v3 forUpdate:0];
      if ([PRSModelManager loadModelsWithDirectory:v4 intoModelDict:self->_models])
      {
        break;
      }

      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    v6 = @"Default";
    modelType = self->_modelType;
    if (v3 == 2)
    {
      v6 = @"Experimental";
    }

    self->_modelType = &v6->isa;

    return 1;
  }

  else
  {
LABEL_5:

    return [(PRSModelManager *)self loadCannedModels];
  }
}

- (void)updateModelsAccordingToHierarchy:(id)a3 updateEnabled:(BOOL)a4 disablePendingUpdates:(BOOL)a5
{
  v6 = a4;
  v8 = a3;
  v9 = +[SSModelLoader sharedInstance];
  v10 = [v9 hasPendingUpdates];

  if (!a5 && v10)
  {
    v11 = dispatch_group_create();
    v12 = +[SSModelLoader sharedInstance];
    [v12 moveNewlyPackagedAssets:v11];

    dispatch_group_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (v6 && ([(NSMutableDictionary *)self->_models count]== 0) | v10 & 1 && ![(PRSModelManager *)self loadModels])
  {
    v13 = PRSLogCategoryDefault();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [PRSModelManager updateModelsAccordingToHierarchy:v13 updateEnabled:? disablePendingUpdates:?];
    }
  }

  if (v8)
  {
    dispatch_group_leave(v8);
  }
}

- (void)updateModelsAccordingToHierarchy
{
  keyExistsAndHasValidFormat = 0;
  CFPreferencesGetAppBooleanValue(@"SearchRankingDisableModelUpdate", @"com.apple.searchd", &keyExistsAndHasValidFormat);
  [(PRSModelManager *)self updateModelsAccordingToHierarchy:0 updateEnabled:keyExistsAndHasValidFormat == 0 disablePendingUpdates:0];
}

- (float)computeL2ScoresForVectors:(id)a3 secondVector:(id)a4 withServerFeatures:(id)a5 withBundleFeatures:(id)a6 experimentalWeight1:(double)a7 experimentalWeight2:(double)a8 shouldCancel:(BOOL *)a9 clientBundle:(id)a10
{
  v61 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a10;
  if (a9 && *a9)
  {
    v23 = 0;
  }

  else
  {
    v24 = PRSLogCategoryDefault();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = [v18 count];
      _os_log_impl(&dword_1D9F69000, v24, OS_LOG_TYPE_INFO, "computing L2 scores for %lu items", &buf, 0xCu);
    }

    v47 = [(PRSModelManager *)self models];
    if (![v47 count])
    {
      v25 = PRSLogCategoryDefault();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [PRSModelManager computeL2ScoresForVectors:? secondVector:? withServerFeatures:? withBundleFeatures:? experimentalWeight1:? experimentalWeight2:? shouldCancel:? clientBundle:?];
      }

      getpid();
      v26 = MEMORY[0x1E696AEC0];
      v27 = [(PRSModelManager *)self modelVersion];
      v28 = [v26 stringWithFormat:@"expected models version %@", v27];
      SimulateCrash();

      +[SSADEventReporter reportBadL2Models];
    }

    pthread_mutex_lock(&sComputeScoreLock);
    if (a9 && *a9)
    {
      pthread_mutex_unlock(&sComputeScoreLock);
      v23 = 0;
    }

    else
    {
      v29 = dispatch_group_create();
      *&buf = 0;
      *(&buf + 1) = &buf;
      v59 = 0x2020000000;
      v60 = 0;
      v30 = dispatch_get_global_queue(33, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __162__PRSModelManager_computeL2ScoresForVectors_secondVector_withServerFeatures_withBundleFeatures_experimentalWeight1_experimentalWeight2_shouldCancel_clientBundle___block_invoke;
      block[3] = &unk_1E8596910;
      p_buf = &buf;
      block[4] = self;
      v31 = v18;
      v49 = v31;
      v50 = v21;
      v51 = v20;
      v32 = v47;
      v55 = 33;
      v52 = v32;
      v54 = a9;
      dispatch_group_async(v29, v30, block);

      dispatch_group_wait(v29, 0xFFFFFFFFFFFFFFFFLL);
      pthread_mutex_unlock(&sComputeScoreLock);
      if (*(*(&buf + 1) + 24))
      {
        if (a7 <= 0.0 && a8 <= 0.0)
        {
          v33 = [v32 objectForKeyedSubscript:&unk_1F55B4410];
          v34 = [v33 directivesManager];

          [v34 weightX];
          a7 = v35;
          [v34 weightY];
          a8 = v36;
        }

        v37 = PRSLogCategoryDefault();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          [PRSModelManager computeL2ScoresForVectors:v37 secondVector:a7 withServerFeatures:a8 withBundleFeatures:? experimentalWeight1:? experimentalWeight2:? shouldCancel:? clientBundle:?];
        }

        v38 = [v31 count];
        if (v38)
        {
          v39 = 0;
          do
          {
            v40 = *(*(*(&buf + 1) + 24) + 4 * v39);
            v41 = [v31 objectAtIndexedSubscript:v39];
            LODWORD(v42) = v40;
            [v41 setOriginalL2Score:v42];

            ++v39;
          }

          while (v38 != v39);
        }

        v43 = PRSLogCategoryDefault();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          v44 = [v31 count];
          *v56 = 134217984;
          v57 = v44;
          _os_log_impl(&dword_1D9F69000, v43, OS_LOG_TYPE_INFO, "finished computing L2 scores for %lu items", v56, 0xCu);
        }

        v23 = *(*(&buf + 1) + 24);
      }

      else
      {
        v23 = 0;
      }

      _Block_object_dispose(&buf, 8);
    }
  }

  v45 = *MEMORY[0x1E69E9840];
  return v23;
}

void __162__PRSModelManager_computeL2ScoresForVectors_secondVector_withServerFeatures_withBundleFeatures_experimentalWeight1_experimentalWeight2_shouldCancel_clientBundle___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = [*(a1 + 64) objectForKeyedSubscript:&unk_1F55B4410];
  *(*(*(a1 + 72) + 8) + 24) = [v2 computeScoresForFeatures:v3 withBundleFeatures:v4 serverBundleFeatures:v5 usingModelContext:v6 qos:*(a1 + 88) shouldCancel:*(a1 + 80) filterBundle:0];
}

- (float)computeScoresForFeatures:(id)a3 withBundleFeatures:(id)a4 serverBundleFeatures:(id)a5 usingModelContext:(id)a6 qos:(unsigned int)a7 shouldCancel:(BOOL *)a8 filterBundle:(id)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a9;
  v19 = [v14 count];
  v20 = 0;
  if (v17 && v19)
  {
    if (a8 && *a8)
    {
      v20 = 0;
    }

    else
    {
      v20 = malloc_type_calloc([v14 count], 4uLL, 0x100004052888210uLL);
      v21 = [v17 directivesManager];
      v22 = [v14 count];
      v23 = v22 / 0x1E;
      if (v22 % 0x1E)
      {
        ++v23;
      }

      iterations = v23;
      v33 = v16;
      v34 = v15;
      [v21 processResultSetValuesWithMap:v15 serverFeatures:v16];
      v24 = [v21 processingContext];
      v25 = [v24 expandedFeatureCount];

      v26 = [v17 model];
      v31 = (PRSRankingSDEnabledFlagState() >> 1) & 1;
      v27 = dispatch_get_global_queue(a7, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __132__PRSModelManager_computeScoresForFeatures_withBundleFeatures_serverBundleFeatures_usingModelContext_qos_shouldCancel_filterBundle___block_invoke;
      block[3] = &unk_1E8596938;
      v41 = v25;
      v42 = a8;
      v36 = v14;
      v37 = v18;
      v28 = v21;
      v38 = v28;
      v39 = v26;
      v43 = v20;
      v44 = v31;
      v40 = v17;
      v29 = v26;
      dispatch_apply(iterations, v27, block);

      [v28 cleanup];
      if (a8 && *a8)
      {
        free(v20);
        v20 = 0;
      }

      v16 = v33;
      v15 = v34;
    }
  }

  return v20;
}

void __132__PRSModelManager_computeScoresForFeatures_withBundleFeatures_serverBundleFeatures_usingModelContext_qos_shouldCancel_filterBundle___block_invoke(uint64_t a1, uint64_t a2)
{
  v42[2] = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v4 = objc_alloc(MEMORY[0x1E695FED0]);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 72)];
  v42[0] = v5;
  v42[1] = &unk_1F55B4428;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
  v7 = [v4 initForFloat32TypeWithShape:v6];

  v8 = 0;
  v9 = 30 * a2;
  memset(v41, 0, sizeof(v41));
  do
  {
    v10 = *(a1 + 80);
    if (v10)
    {
      if (*v10)
      {
        break;
      }
    }

    if (v9 + v8 >= [*(a1 + 32) count])
    {
      break;
    }

    v11 = [*(a1 + 32) objectAtIndexedSubscript:v9 + v8];
    v12 = v11;
    if (!*(a1 + 40) || ([v11 bundleID], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", *(a1 + 40)), v13, v14))
    {
      v15 = [v12 indexScore];
      for (i = 0; i != 128; ++i)
      {
        v18 = ((2 * v16) << ~i) | (v15 >> i);
        if ((i & 0x40) != 0)
        {
          v18 = v16 >> i;
        }

        *(v41 + i) = v18 & 1;
      }

      [*(a1 + 48) processL2FeatureVector:v12 populatingValues:objc_msgSend(v7 scoreValue:"floatPointer") count:{v41, 95}];
      v19 = *(a1 + 56);
      v40 = 0;
      [v19 predict:v7 error:&v40];
      v21 = v20;
      v22 = v40;
      if (v22)
      {
        v33 = v22;
        v34 = PRSLogCategoryDefault();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          __132__PRSModelManager_computeScoresForFeatures_withBundleFeatures_serverBundleFeatures_usingModelContext_qos_shouldCancel_filterBundle___block_invoke_cold_1(v33);
        }

        break;
      }

      *(*(a1 + 88) + 4 * (v9 + v8)) = v21;
      if (*(a1 + 96) == 1)
      {
        v23 = objc_getAssociatedObject(v12, "_rankingItemObjectKey");
        v24 = v23;
        if (v23)
        {
          object = v23;
          v38 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(a1 + 72)];
          if (*(a1 + 72))
          {
            v25 = 0;
            do
            {
              v26 = MEMORY[0x1E696AD98];
              LODWORD(v27) = *([v7 floatPointer] + 4 * v25);
              v28 = [v26 numberWithFloat:v27];
              [v38 addObject:v28];

              ++v25;
            }

            while (*(a1 + 72) > v25);
          }

          v29 = [*(a1 + 64) type];
          v24 = objecta;
          if (!v29)
          {
            objc_setAssociatedObject(objecta, "_l2FeaturesObjectKey", v38, 1);
            v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 72)];
            objc_setAssociatedObject(objecta, "_l2FeatureCountObjectKey", v30, 1);

            v24 = objecta;
            LODWORD(v31) = v21;
            v32 = [MEMORY[0x1E696AD98] numberWithFloat:v31];
            objc_setAssociatedObject(objecta, "_l2ScoreObjectKey", v32, 1);
          }
        }
      }
    }

    ++v8;
  }

  while (v8 != 30);

  objc_autoreleasePoolPop(context);
  v35 = *MEMORY[0x1E69E9840];
}

- (double)testL2WithData:(id)a3 experimental:(BOOL)a4
{
  v5 = a3;
  v6 = [(PRSModelManager *)self models];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0];
  v8 = [v6 objectForKeyedSubscript:v7];
  v9 = [v8 model];

  v13 = 0;
  [v9 predict:v5 error:&v13];
  v11 = v10;
  if (v13)
  {
    [PRSModelManager testL2WithData:experimental:];
  }

  return v11;
}

@end