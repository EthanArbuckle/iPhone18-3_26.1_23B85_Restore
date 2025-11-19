@interface VKCImageAnalyzer
+ (NSArray)supportedRecognitionLanguages;
+ (unint64_t)supportedAnalysisTypes;
+ (void)prewarmSoftLinkingIfNecessary;
+ (void)processMRCInfo:(id)a3 completionHandler:(id)a4;
- (OS_dispatch_queue)realCallbackQueue;
- (VKAnalyzerAnalyticsDelegate)_analyticsDelegate;
- (VKCImageAnalyzer)init;
- (int)_processRequest:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5;
- (int)processRequest:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5;
- (void)_forceInProcessAnalysis;
- (void)cancelAllRequests;
- (void)cancelRequestID:(int)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)set_isPublicAPI:(BOOL)a3;
- (void)updateForLiveTextSupport;
@end

@implementation VKCImageAnalyzer

+ (void)prewarmSoftLinkingIfNecessary
{
  if (prewarmSoftLinkingIfNecessary_onceToken != -1)
  {
    +[VKCImageAnalyzer prewarmSoftLinkingIfNecessary];
  }
}

void __49__VKCImageAnalyzer_prewarmSoftLinkingIfNecessary__block_invoke()
{
  v0 = dispatch_queue_create("VKImageAnalyzerPrewarm", 0);
  dispatch_async(v0, &__block_literal_global_176);
}

void __49__VKCImageAnalyzer_prewarmSoftLinkingIfNecessary__block_invoke_2()
{
  v40 = *MEMORY[0x1E69E9840];
  v0 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_1B4335000, v0, OS_LOG_TYPE_DEFAULT, "Prewarming softlinking", &buf, 2u);
  }

  v1 = [MEMORY[0x1E695DF00] date];
  if (+[VKCGMAvailability supportsVI])
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x2050000000;
    v2 = getVICVisualIntelligenceAnalyzerClass_softClass;
    v35 = getVICVisualIntelligenceAnalyzerClass_softClass;
    if (!getVICVisualIntelligenceAnalyzerClass_softClass)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v37 = __getVICVisualIntelligenceAnalyzerClass_block_invoke;
      v38 = &unk_1E7BE3F48;
      v39 = &v32;
      VisualIntelligenceCoreLibraryCore();
      Class = objc_getClass("VICVisualIntelligenceAnalyzer");
      *(v39[1] + 24) = Class;
      getVICVisualIntelligenceAnalyzerClass_softClass = *(v39[1] + 24);
      v2 = v33[3];
    }

    v4 = v2;
    _Block_object_dispose(&v32, 8);
    [v2 preheat];
    v32 = 0;
    v33 = &v32;
    v34 = 0x2050000000;
    v5 = getVICVisualIntelligenceAnalysisRequestConfigClass_softClass;
    v35 = getVICVisualIntelligenceAnalysisRequestConfigClass_softClass;
    if (!getVICVisualIntelligenceAnalysisRequestConfigClass_softClass)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v37 = __getVICVisualIntelligenceAnalysisRequestConfigClass_block_invoke;
      v38 = &unk_1E7BE3F48;
      v39 = &v32;
      VisualIntelligenceCoreLibraryCore();
      v6 = objc_getClass("VICVisualIntelligenceAnalysisRequestConfig");
      *(v39[1] + 24) = v6;
      getVICVisualIntelligenceAnalysisRequestConfigClass_softClass = *(v39[1] + 24);
      v5 = v33[3];
    }

    v7 = v5;
    _Block_object_dispose(&v32, 8);
    v32 = 0;
    v33 = &v32;
    v34 = 0x2050000000;
    v8 = getVIUIVisualIntelligenceViewCoordinatorClass_softClass;
    v35 = getVIUIVisualIntelligenceViewCoordinatorClass_softClass;
    if (!getVIUIVisualIntelligenceViewCoordinatorClass_softClass)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v37 = __getVIUIVisualIntelligenceViewCoordinatorClass_block_invoke;
      v38 = &unk_1E7BE3F48;
      v39 = &v32;
      __getVIUIVisualIntelligenceViewCoordinatorClass_block_invoke(&buf);
      v8 = v33[3];
    }

    v9 = v8;
    _Block_object_dispose(&v32, 8);
    v10 = [MEMORY[0x1E695DF00] date];
    [v10 timeIntervalSinceDate:v1];
    v12 = v11;

    v13 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v12;
      _os_log_impl(&dword_1B4335000, v13, OS_LOG_TYPE_DEFAULT, "Prewarmed softlink for VI: duration: %f", &buf, 0xCu);
    }
  }

  v14 = [MEMORY[0x1E695DF00] date];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2050000000;
  v15 = getDDContextMenuActionClass_softClass;
  v35 = getDDContextMenuActionClass_softClass;
  if (!getDDContextMenuActionClass_softClass)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v37 = __getDDContextMenuActionClass_block_invoke;
    v38 = &unk_1E7BE3F48;
    v39 = &v32;
    __getDDContextMenuActionClass_block_invoke(&buf);
    v15 = v33[3];
  }

  v16 = v15;
  _Block_object_dispose(&v32, 8);
  v17 = [MEMORY[0x1E695DF00] date];
  [v17 timeIntervalSinceDate:v14];
  v19 = v18;

  v20 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v19;
    _os_log_impl(&dword_1B4335000, v20, OS_LOG_TYPE_DEFAULT, "Prewarmed softlink for DDUI: duration: %f", &buf, 0xCu);
  }

  v21 = [MEMORY[0x1E695DF00] date];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2050000000;
  v22 = getLTUIVisualTranslationViewClass_softClass;
  v35 = getLTUIVisualTranslationViewClass_softClass;
  if (!getLTUIVisualTranslationViewClass_softClass)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v37 = __getLTUIVisualTranslationViewClass_block_invoke;
    v38 = &unk_1E7BE3F48;
    v39 = &v32;
    __getLTUIVisualTranslationViewClass_block_invoke(&buf);
    v22 = v33[3];
  }

  v23 = v22;
  _Block_object_dispose(&v32, 8);
  v24 = [MEMORY[0x1E695DF00] date];
  [v24 timeIntervalSinceDate:v21];
  v26 = v25;

  v27 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v26;
    _os_log_impl(&dword_1B4335000, v27, OS_LOG_TYPE_DEFAULT, "Prewarmed softlink for LTUI: duration: %f", &buf, 0xCu);
  }

  v28 = [MEMORY[0x1E695DF00] date];
  [v28 timeIntervalSinceDate:v1];
  v30 = v29;

  v31 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v30;
    _os_log_impl(&dword_1B4335000, v31, OS_LOG_TYPE_DEFAULT, "Prewarming softlinking complete with duration: %f", &buf, 0xCu);
  }
}

+ (NSArray)supportedRecognitionLanguages
{
  v2 = objc_alloc_init(MEMORY[0x1E6984628]);
  v6 = 0;
  v3 = [v2 supportedRecognitionLanguagesAndReturnError:&v6];
  v4 = v6;
  if (v4)
  {
    +[VKAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](VKAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "error == ((void*)0)", "+[VKCImageAnalyzer supportedRecognitionLanguages]", 0, 0, @"Error retrieving supportedRecognitionLanguages: %@", v4);
  }

  return v3;
}

+ (unint64_t)supportedAnalysisTypes
{
  if (supportedAnalysisTypes_onceToken != -1)
  {
    +[VKCImageAnalyzer supportedAnalysisTypes];
  }

  v2 = supportedAnalysisTypes_staticTypes;
  if (+[VKCGMAvailability supportsVI])
  {
    if (+[VKCInternalSettings disableVisualIntelligence])
    {
      v3 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        [(VKCImageAnalyzer *)v3 supportedAnalysisTypes:v4];
      }
    }

    else
    {
      v2 |= 0x40uLL;
    }
  }

  return v2;
}

void __42__VKCImageAnalyzer_supportedAnalysisTypes__block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  if (vk_deviceSupportsVisualSearch())
  {
    supportedAnalysisTypes_staticTypes |= 0x10uLL;
  }

  v0 = vk_imageAnalysisSupportedAndSettingsSwitchEnabled();
  v1 = v0;
  if (v0)
  {
    supportedAnalysisTypes_staticTypes |= 1uLL;
  }

  if ((vk_deviceHasNeuralEngine() & 1) != 0 || vk_isSeedBuild())
  {
    supportedAnalysisTypes_staticTypes |= 0x20uLL;
    if (vk_isiOS())
    {
      if ((v1 & 1) != 0 || +[VKCInternalSettings localeFreeQRSupport])
      {
        supportedAnalysisTypes_staticTypes |= 0xCuLL;
      }
    }
  }

  v2 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = VKMUIStringForAnalysisTypes(supportedAnalysisTypes_staticTypes);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1B4335000, v2, OS_LOG_TYPE_DEFAULT, "Supported Analysis types: %@", &v4, 0xCu);
  }
}

- (VKCImageAnalyzer)init
{
  v5.receiver = self;
  v5.super_class = VKCImageAnalyzer;
  v2 = [(VKCImageAnalyzer *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v3 addObserver:v2 forKeyPath:@"AppleLiveTextEnabled" options:1 context:VKImageAnalyzerContext];

    [(VKCImageAnalyzer *)v2 updateForLiveTextSupport];
  }

  return v2;
}

- (void)updateForLiveTextSupport
{
  if (([objc_opt_class() deviceSupportsImageAnalysis] & 1) != 0 || vk_deviceSupportsVisualSearch())
  {
    v3 = dispatch_queue_create("VKImageAnalyzer", 0);
    processingQueue = self->_processingQueue;
    self->_processingQueue = v3;

    v5 = objc_alloc_init(VKAnalyticsProcessor);
    analyticsProcessor = self->_analyticsProcessor;
    self->_analyticsProcessor = v5;

    [(VKAnalyticsProcessor *)self->_analyticsProcessor setIsPublicAPI:[(VKCImageAnalyzer *)self _isPublicAPI]];
    v7 = +[VKImageAnalyzerMadInterface sharedInterface];
    mad = self->_mad;
    self->_mad = v7;

    if (vk_isInternalBuild())
    {
      self->_createFeedbackProviders = 1;
    }
  }

  else
  {
    [(VKCImageAnalyzer *)self cancelAllRequests];
    v9 = self->_processingQueue;
    self->_processingQueue = 0;

    v10 = self->_analyticsProcessor;
    self->_analyticsProcessor = 0;

    v11 = self->_mad;
    self->_mad = 0;
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v3 removeObserver:self forKeyPath:@"AppleLiveTextEnabled" context:VKImageAnalyzerContext];

  v4.receiver = self;
  v4.super_class = VKCImageAnalyzer;
  [(VKCImageAnalyzer *)&v4 dealloc];
}

- (void)set_isPublicAPI:(BOOL)a3
{
  v3 = a3;
  self->__isPublicAPI = a3;
  v4 = [(VKCImageAnalyzer *)self analyticsProcessor];
  [v4 setIsPublicAPI:v3];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (VKImageAnalyzerContext == a6)
  {

    [(VKCImageAnalyzer *)self updateForLiveTextSupport:a3];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = VKCImageAnalyzer;
    [(VKCImageAnalyzer *)&v8 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (OS_dispatch_queue)realCallbackQueue
{
  v2 = [(VKCImageAnalyzer *)self callbackQueue];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x1E69E96A0];
    v5 = MEMORY[0x1E69E96A0];
  }

  return v4;
}

- (void)cancelRequestID:(int)a3
{
  v3 = *&a3;
  v4 = [(VKCImageAnalyzer *)self mad];
  [v4 cancelRequestID:v3];
}

- (void)cancelAllRequests
{
  v2 = [(VKCImageAnalyzer *)self mad];
  [v2 cancelAllRequests];
}

- (int)processRequest:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![v8 analysisTypes])
  {
    v11 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B4335000, v11, OS_LOG_TYPE_INFO, "Attempting to analyze an image with no analysis types set.", buf, 2u);
    }
  }

  [v8 imageSize];
  v14 = v12;
  v15 = v13;
  if (v12 >= v13)
  {
    v16 = v12;
  }

  else
  {
    v16 = v13;
  }

  v17 = [v8 isPhotosAssetRequest];
  if (v16 < 8192.0)
  {
    v18 = 1;
  }

  else
  {
    v18 = v17;
  }

  v19 = [objc_opt_class() deviceSupportsImageAnalysis];
  v20 = vk_deviceSupportsVisualSearch();
  v21 = v20 | +[VKCGMAvailability supportsVI];
  if (v19 & 1 | ((v18 & 1) == 0))
  {
    v22 = v18;
  }

  else
  {
    v22 = v21;
  }

  v23 = (v8 == 0) | v22 ^ 1;
  if (!((v8 == 0) | (v22 ^ 1) & 1) && (v19 & 1) != 0)
  {
    [v8 setProcessedAnalysisTypes:{objc_msgSend(objc_opt_class(), "supportedAnalysisTypes") & objc_msgSend(v8, "analysisTypes")}];
  }

  if (v23)
  {
    v24 = [(VKCImageAnalyzer *)self realCallbackQueue];
    if (v8)
    {
      if (v18)
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __69__VKCImageAnalyzer_processRequest_progressHandler_completionHandler___block_invoke_207;
        block[3] = &unk_1E7BE3FC8;
        v29 = v10;
        dispatch_async(v24, block);

        v25 = v29;
      }

      else
      {
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __69__VKCImageAnalyzer_processRequest_progressHandler_completionHandler___block_invoke_202;
        v30[3] = &unk_1E7BE3FF0;
        v32 = v14;
        v33 = v15;
        v31 = v10;
        dispatch_async(v24, v30);

        v25 = v31;
      }
    }

    else
    {
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __69__VKCImageAnalyzer_processRequest_progressHandler_completionHandler___block_invoke;
      v34[3] = &unk_1E7BE3FC8;
      v35 = v10;
      dispatch_async(v24, v34);

      v25 = v35;
    }

    v26 = 0;
  }

  else
  {
    v26 = [(VKCImageAnalyzer *)self _processRequest:v8 progressHandler:v9 completionHandler:v10];
  }

  return v26;
}

void __69__VKCImageAnalyzer_processRequest_progressHandler_completionHandler___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E696ABC0];
  v13 = *MEMORY[0x1E696A578];
  v14[0] = @"Analyzer request must not be nil";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v4 = [v2 errorWithDomain:@"com.apple.VisionKit.ImageAnalyzer" code:-7 userInfo:v3];
  (*(v1 + 16))(v1, 0, v4);

  v5 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __69__VKCImageAnalyzer_processRequest_progressHandler_completionHandler___block_invoke_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
  }
}

void __69__VKCImageAnalyzer_processRequest_progressHandler_completionHandler___block_invoke_202(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = VKMUIStringForSize(*(a1 + 40), *(a1 + 48));
  v4 = [v2 stringWithFormat:@"ImageSize %@ is invalid for analysis. Max supported dimension is %ld", v3, 0x2000];

  v5 = *(a1 + 32);
  v6 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696A578];
  v11[0] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [v6 errorWithDomain:@"com.apple.VisionKit.ImageAnalyzer" code:-10 userInfo:v7];
  (*(v5 + 16))(v5, 0, v8);

  v9 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __69__VKCImageAnalyzer_processRequest_progressHandler_completionHandler___block_invoke_202_cold_1(v4, v9);
  }
}

void __69__VKCImageAnalyzer_processRequest_progressHandler_completionHandler___block_invoke_207(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E696ABC0];
  v5 = *MEMORY[0x1E696A578];
  v6[0] = @"Device Not Supported";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v4 = [v2 errorWithDomain:@"com.apple.VisionKit.ImageAnalyzer" code:-4 userInfo:v3];
  (*(v1 + 16))(v1, 0, v4);

  if (VKCMaxPixelDimension_block_invoke_onceToken != -1)
  {
    __69__VKCImageAnalyzer_processRequest_progressHandler_completionHandler___block_invoke_207_cold_1();
  }
}

void __69__VKCImageAnalyzer_processRequest_progressHandler_completionHandler___block_invoke_2()
{
  v0 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __69__VKCImageAnalyzer_processRequest_progressHandler_completionHandler___block_invoke_2_cold_1(v0, v1, v2, v3, v4, v5, v6, v7);
  }
}

- (int)_processRequest:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E695DF00] now];
  objc_initWeak(&location, self);
  objc_initWeak(&from, v8);
  v12 = _VKSignpostLog();
  if (os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B4335000, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "VKImageAnalyzerProcessRequestEvent", &unk_1B4435C0E, buf, 2u);
  }

  v13 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B4335000, v13, OS_LOG_TYPE_INFO, "Signpost Begin: VKImageAnalyzerProcessRequestEvent", buf, 2u);
  }

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __70__VKCImageAnalyzer__processRequest_progressHandler_completionHandler___block_invoke;
  v29[3] = &unk_1E7BE4040;
  objc_copyWeak(&v32, &location);
  objc_copyWeak(&v33, &from);
  v14 = v11;
  v30 = v14;
  v15 = v10;
  v31 = v15;
  [v8 setCompletionHandler:v29];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __70__VKCImageAnalyzer__processRequest_progressHandler_completionHandler___block_invoke_215;
  v25[3] = &unk_1E7BE4090;
  objc_copyWeak(&v27, &location);
  objc_copyWeak(&v28, &from);
  v16 = v9;
  v26 = v16;
  [v8 setProgressHandler:v25];
  v17 = [(VKCImageAnalyzer *)self mad];
  v18 = [(VKCImageAnalyzer *)self realCallbackQueue];
  v19 = [v17 processRequest:v8 callbackQueue:v18];

  v20 = [MEMORY[0x1E695DF00] now];
  [v20 timeIntervalSinceDate:v14];
  v22 = v21;

  v23 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    v37 = v22;
    v38 = 2112;
    v39 = v8;
    _os_log_impl(&dword_1B4335000, v23, OS_LOG_TYPE_INFO, "Added request to Mad Interface with total method return time: %f request: %@", buf, 0x16u);
  }

  objc_destroyWeak(&v28);
  objc_destroyWeak(&v27);

  objc_destroyWeak(&v33);
  objc_destroyWeak(&v32);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v19;
}

void __70__VKCImageAnalyzer__processRequest_progressHandler_completionHandler___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v11 = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    if ([WeakRetained createFeedbackProviders])
    {
      v12 = objc_alloc_init(VKFeedbackProvider);
      [(VKFeedbackProvider *)v12 setAssetsProvider:v11];
      [(VKFeedbackProvider *)v12 setError:v9];
      [v7 setFeedbackProvider:v12];
    }

    v13 = [WeakRetained _analyticsDelegate];
    v14 = [WeakRetained realCallbackQueue];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __70__VKCImageAnalyzer__processRequest_progressHandler_completionHandler___block_invoke_2;
    v16[3] = &unk_1E7BE4018;
    v17 = v7;
    v18 = a1[4];
    objc_copyWeak(&v24, a1 + 7);
    v19 = v9;
    v23 = a1[5];
    v20 = v13;
    v21 = v8;
    v22 = WeakRetained;
    v15 = v13;
    dispatch_async(v14, v16);

    objc_destroyWeak(&v24);
  }
}

void __70__VKCImageAnalyzer__processRequest_progressHandler_completionHandler___block_invoke_2(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) imageAnalysisResult];
  v3 = [MEMORY[0x1E695DF00] now];
  [v3 timeIntervalSinceDate:*(a1 + 40)];
  v5 = v4;

  v6 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 88));
    v22 = [WeakRetained requestID];
    v26 = [*(a1 + 32) imageAnalysisResult];
    v7 = VKMUIStringForBool(v26 != 0);
    v25 = [v2 text];
    v21 = [v25 length];
    v24 = [v2 textDataDetectorElements];
    v20 = [v24 count];
    v23 = [v2 mrcDataDetectorElements];
    v8 = [v23 count];
    v9 = [v2 visualSearchResult];
    [v9 searchResult];
    v10 = v27 = v2;
    v11 = [v10 resultItems];
    v12 = [v11 count];
    v13 = objc_loadWeakRetained((a1 + 88));
    v14 = [v13 shortLoggingDescription];
    v15 = *(a1 + 48);
    *buf = 67111170;
    v30 = v22;
    v31 = 2048;
    v32 = v5 * 1000.0;
    v33 = 2112;
    v34 = v7;
    v35 = 1024;
    v36 = v21;
    v37 = 1024;
    v38 = v20;
    v39 = 1024;
    v40 = v8;
    v41 = 1024;
    v42 = v12;
    v43 = 2112;
    v44 = v14;
    v45 = 2112;
    v46 = v15;
    _os_log_impl(&dword_1B4335000, v6, OS_LOG_TYPE_DEFAULT, "Calling completion handler id: %d\nTotal Processing Time %.02fms\nHas Analysis: %@\nTextLength: %d DD: %d, MRC: %d, VS:%d \nrequest: %@\nError: %@", buf, 0x48u);

    v2 = v27;
  }

  v16 = *(a1 + 80);
  if (v16)
  {
    (*(v16 + 16))(v16, *(a1 + 32), *(a1 + 48));
  }

  v17 = *(a1 + 56);
  if (v17)
  {
    v18 = *(a1 + 64);
    if (v18)
    {
      [v17 _visionKitAnalyticsEventDidOccur:v18 imageAnalyzer:*(a1 + 72)];
    }
  }

  if (*(a1 + 64))
  {
    v19 = [*(a1 + 72) analyticsProcessor];
    [v19 processAndSendEvent:*(a1 + 64)];
  }
}

void __70__VKCImageAnalyzer__processRequest_progressHandler_completionHandler___block_invoke_215(id *a1, double a2)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained realCallbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__VKCImageAnalyzer__processRequest_progressHandler_completionHandler___block_invoke_2_216;
    block[3] = &unk_1E7BE4068;
    v9[1] = *&a2;
    objc_copyWeak(v9, a1 + 6);
    v8 = a1[4];
    dispatch_async(v6, block);

    objc_destroyWeak(v9);
  }
}

uint64_t __70__VKCImageAnalyzer__processRequest_progressHandler_completionHandler___block_invoke_2_216(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 48);
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = 134218240;
    v7 = v3;
    v8 = 1024;
    v9 = [WeakRetained requestID];
    _os_log_impl(&dword_1B4335000, v2, OS_LOG_TYPE_INFO, "Reporting progress: %f for Request id: %d", &v6, 0x12u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(*(a1 + 48));
  }

  return result;
}

- (void)_forceInProcessAnalysis
{
  [(VKCImageAnalyzer *)self cancelAllRequests];
  v3 = +[VKImageAnalyzerInProcessMadInterface sharedInterface];
  mad = self->_mad;
  self->_mad = v3;
}

+ (void)processMRCInfo:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[VKImageAnalyzerMadInterface sharedInterface];
  [v7 processMRCInfo:v6 completionHandler:v5];
}

- (VKAnalyzerAnalyticsDelegate)_analyticsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->__analyticsDelegate);

  return WeakRetained;
}

void __69__VKCImageAnalyzer_processRequest_progressHandler_completionHandler___block_invoke_202_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B4335000, a2, OS_LOG_TYPE_ERROR, "%@", &v2, 0xCu);
}

@end