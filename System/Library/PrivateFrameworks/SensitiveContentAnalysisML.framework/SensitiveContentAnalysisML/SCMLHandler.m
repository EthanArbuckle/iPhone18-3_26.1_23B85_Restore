@interface SCMLHandler
+ (BOOL)isImageSensitiveForLabel:(id)a3 confidenceScore:(double)a4 classificationMode:(unint64_t)a5;
+ (BOOL)isImageSensitiveForLabel:(id)a3 confidenceScore:(double)a4 classificationMode:(unint64_t)a5 modelVersion:(id)a6 error:(id *)a7;
+ (BOOL)supportsANE;
- (SCMLHandler)initWithOptions:(id)a3 error:(id *)a4;
- (SCMLHandler)initWithOptionsInternal:(id)a3 error:(id *)a4;
- (id)analyzeImage:(CGImage *)a3 error:(id *)a4;
- (id)analyzePixelBuffer:(__CVBuffer *)a3 error:(id *)a4;
- (id)classifyPixelBuffer:(__CVBuffer *)a3 stagedText:(id)a4 inConversationWithIdentifier:(id)a5 error:(id *)a6;
- (id)classifyPixelBuffer:(__CVBuffer *)a3 startDate:(id)a4 endDate:(id)a5 stagedText:(id)a6 inConversationWithIdentifier:(id)a7 error:(id *)a8;
- (id)getOperatingPointDataForClassName:(id)a3 error:(id *)a4;
- (id)performanceStatistics;
- (int64_t)classifyImage:(CGImage *)a3 error:(id *)a4;
- (int64_t)classifyPixelBuffer:(__CVBuffer *)a3 error:(id *)a4;
- (uint64_t)analyzeImage:error:;
- (uint64_t)analyzePixelBuffer:error:;
- (uint64_t)classifyImage:error:;
- (uint64_t)classifyPixelBuffer:error:;
- (uint64_t)initWithOptions:error:;
- (void)analyzeImage:error:;
- (void)analyzePixelBuffer:error:;
- (void)classifyImage:error:;
- (void)classifyPixelBuffer:error:;
- (void)initWithOptions:error:;
@end

@implementation SCMLHandler

- (SCMLHandler)initWithOptions:(id)a3 error:(id *)a4
{
  v29[4] = *MEMORY[0x1E69E9840];
  v6 = a3;
  scml::SignpostInterval::SignpostInterval(&v27);
  v7 = v27;
  v8 = v7;
  v9 = v28;
  if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v9, "SCMLHandler.init", "", buf, 2u);
  }

  v26[0] = &unk_1F3746908;
  v26[1] = &v27;
  v26[3] = v26;
  std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](v29, v26);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v26);
  v10 = +[SCMLLog imageAnalyzer];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B8A3C000, v10, OS_LOG_TYPE_DEFAULT, "Begin SCMLHandler.init", buf, 2u);
  }

  v24 = 0;
  v11 = [(SCMLHandler *)self initWithOptionsInternal:v6 error:&v24];
  v12 = v24;
  if (v11)
  {
    v13 = +[SCMLLog imageAnalyzer];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B8A3C000, v13, OS_LOG_TYPE_DEFAULT, "End SCMLHandler.init", buf, 2u);
    }
  }

  else
  {
    v14 = +[SCMLLog imageAnalyzer];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(SCMLHandler *)v12 initWithOptions:v14 error:v15, v16, v17, v18, v19, v20];
    }

    if (a4)
    {
      v21 = v12;
      *a4 = v12;
    }
  }

  scml::SignpostInterval::~SignpostInterval(&v27);
  v22 = *MEMORY[0x1E69E9840];
  return v11;
}

- (SCMLHandler)initWithOptionsInternal:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (a4)
  {
    *a4 = 0;
  }

  v48.receiver = self;
  v48.super_class = SCMLHandler;
  v8 = [(SCMLHandler *)&v48 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_21;
  }

  objc_storeStrong(&v8->_options, a3);
  v10 = dispatch_queue_create("comm_safety_handler", 0);
  clientQueue = v9->_clientQueue;
  v9->_clientQueue = v10;

  v12 = [[SCMLPerformance alloc] initWithOptions:v7];
  perfResults = v9->_perfResults;
  v9->_perfResults = v12;

  v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 1;
  v15 = [v7 objectForKey:SCMLUseImageAnalyzer[0]];

  if (v15)
  {
    v16 = [v7 objectForKeyedSubscript:SCMLUseImageAnalyzer[0]];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v18 = [v7 objectForKeyedSubscript:SCMLUseImageAnalyzer[0]];
    }

    else
    {
      v18 = 0;
    }

    v19 = [v18 BOOLValue];
    *(v45 + 24) = v19;
    if (isKindOfClass)
    {
    }
  }

  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x2020000000;
  v20 = [v7 objectForKeyedSubscript:SCMLUseTextAnalyzer[0]];
  objc_opt_class();
  v21 = objc_opt_isKindOfClass();
  if (v21)
  {
    v22 = [v7 objectForKeyedSubscript:SCMLUseTextAnalyzer[0]];
  }

  else
  {
    v22 = 0;
  }

  v23 = [v22 BOOLValue];
  if (v21)
  {
  }

  v43 = v23;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__3;
  v40 = __Block_byref_object_dispose__3;
  v41 = 0;
  v24 = [(SCMLHandler *)v9 perfResults];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __45__SCMLHandler_initWithOptionsInternal_error___block_invoke;
  v30[3] = &unk_1E7EB3EC0;
  v33 = &v44;
  v25 = v14;
  v31 = v25;
  v32 = v9;
  v34 = &v36;
  v35 = v42;
  [v24 run:@"Create" block:v30];

  v26 = v37[5];
  if (a4 && v26)
  {
    v27 = v26;
    *a4 = v26;
  }

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(v42, 8);
  _Block_object_dispose(&v44, 8);

  if (v26)
  {
    v28 = 0;
  }

  else
  {
LABEL_21:
    v28 = v9;
  }

  return v28;
}

void __45__SCMLHandler_initWithOptionsInternal_error___block_invoke(uint64_t a1)
{
  v17[2] = *MEMORY[0x1E69E9840];
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v2 = MEMORY[0x1E695DFF8];
    v3 = [*(a1 + 32) resourcePath];
    v17[0] = v3;
    v17[1] = @"Models/ImageModel";
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    v5 = [v2 fileURLWithPathComponents:v4];

    v6 = [SCMLImageAnalyzer alloc];
    v7 = [*(a1 + 40) options];
    v8 = *(*(a1 + 56) + 8);
    obj = *(v8 + 40);
    v9 = [(SCMLImageAnalyzer *)v6 initWithModelURL:v5 options:v7 error:&obj];
    objc_storeStrong((v8 + 40), obj);
    v10 = *(a1 + 40);
    v11 = *(v10 + 16);
    *(v10 + 16) = v9;
  }

  if (!*(*(*(a1 + 56) + 8) + 40) && *(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:SCMLErrorDomain code:1 userInfo:0];
    v13 = *(*(a1 + 56) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)analyzeImage:(CGImage *)a3 error:(id *)a4
{
  v33[4] = *MEMORY[0x1E69E9840];
  scml::SignpostInterval::SignpostInterval(&v31);
  v7 = v31;
  v8 = v7;
  v9 = v32;
  if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v9, "SCMLHandler.analyzeImage", "", buf, 2u);
  }

  v30[0] = &unk_1F3746988;
  v30[1] = &v31;
  v30[3] = v30;
  std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](v33, v30);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v30);
  v10 = +[SCMLLog imageAnalyzer];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B8A3C000, v10, OS_LOG_TYPE_DEFAULT, "Begin SCMLHandler analyzeImage", buf, 2u);
  }

  *buf = 0;
  v25 = buf;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__3;
  v28 = __Block_byref_object_dispose__3;
  v29 = 0;
  v21 = 0;
  v22[0] = &v21;
  v22[1] = 0x3032000000;
  v22[2] = __Block_byref_object_copy__3;
  v22[3] = __Block_byref_object_dispose__3;
  v23 = 0;
  v11 = objc_autoreleasePoolPush();
  v12 = [(SCMLHandler *)self clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__SCMLHandler_analyzeImage_error___block_invoke;
  block[3] = &unk_1E7EB3EE8;
  block[4] = self;
  block[5] = buf;
  block[6] = &v21;
  block[7] = a3;
  dispatch_sync(v12, block);

  objc_autoreleasePoolPop(v11);
  if (*(v25 + 5))
  {
    v13 = +[SCMLLog imageAnalyzer];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_1B8A3C000, v13, OS_LOG_TYPE_DEFAULT, "End SCMLHandler analyzeImage", v19, 2u);
    }
  }

  else
  {
    v14 = +[SCMLLog imageAnalyzer];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SCMLHandler analyzeImage:v22 error:?];
    }

    if (a4)
    {
      v15 = *(v22[0] + 40);
      if (v15)
      {
        *a4 = v15;
      }
    }
  }

  v16 = *(v25 + 5);
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(buf, 8);
  scml::SignpostInterval::~SignpostInterval(&v31);
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

void __34__SCMLHandler_analyzeImage_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) imageAnalyzer];
  v3 = *(a1 + 56);
  v4 = *(*(a1 + 48) + 8);
  obj = *(v4 + 40);
  v5 = [v2 analyzeImage:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (int64_t)classifyImage:(CGImage *)a3 error:(id *)a4
{
  v30[4] = *MEMORY[0x1E69E9840];
  scml::SignpostInterval::SignpostInterval(&v28);
  v7 = v28;
  v8 = v7;
  v9 = v29;
  if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v9, "SCMLHandler.classifyImage", "", buf, 2u);
  }

  v27[0] = &unk_1F3746A08;
  v27[1] = &v28;
  v27[3] = v27;
  std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](v30, v27);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v27);
  v10 = +[SCMLLog imageAnalyzer];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B8A3C000, v10, OS_LOG_TYPE_DEFAULT, "Begin SCMLHandler classifyImage", buf, 2u);
  }

  if (a4)
  {
    *a4 = 0;
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  *buf = 0;
  v21[0] = buf;
  v21[1] = 0x3032000000;
  v21[2] = __Block_byref_object_copy__3;
  v21[3] = __Block_byref_object_dispose__3;
  v22 = 0;
  v11 = objc_autoreleasePoolPush();
  v12 = [(SCMLHandler *)self clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__SCMLHandler_classifyImage_error___block_invoke;
  block[3] = &unk_1E7EB3F10;
  block[4] = self;
  block[5] = buf;
  block[6] = &v23;
  block[7] = a3;
  dispatch_sync(v12, block);

  objc_autoreleasePoolPop(v11);
  if (*(v21[0] + 40))
  {
    v13 = +[SCMLLog imageAnalyzer];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SCMLHandler classifyImage:v21 error:?];
    }

    if (a4)
    {
      *a4 = *(v21[0] + 40);
    }
  }

  else
  {
    v14 = +[SCMLLog imageAnalyzer];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_1B8A3C000, v14, OS_LOG_TYPE_DEFAULT, "End SCMLHandler classifyImage", v18, 2u);
    }
  }

  v15 = v24[3];
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v23, 8);
  scml::SignpostInterval::~SignpostInterval(&v28);
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

void __35__SCMLHandler_classifyImage_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) imageAnalyzer];
  v3 = *(a1 + 56);
  v4 = *(*(a1 + 40) + 8);
  obj = *(v4 + 40);
  v5 = [v2 classifyImage:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v6 = [v5 objectForKeyedSubscript:SCMLImageExplicitSensitivity[0]];
    *(*(*(a1 + 48) + 8) + 24) = [v6 unsignedIntegerValue];
  }
}

- (id)analyzePixelBuffer:(__CVBuffer *)a3 error:(id *)a4
{
  v33[4] = *MEMORY[0x1E69E9840];
  scml::SignpostInterval::SignpostInterval(&v31);
  v7 = v31;
  v8 = v7;
  v9 = v32;
  if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v9, "SCMLHandler.analyzePixelBuffer", "", buf, 2u);
  }

  v30[0] = &unk_1F3746A88;
  v30[1] = &v31;
  v30[3] = v30;
  std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](v33, v30);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v30);
  v10 = +[SCMLLog imageAnalyzer];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B8A3C000, v10, OS_LOG_TYPE_DEFAULT, "Begin SCMLHandler analyzePixelBuffer", buf, 2u);
  }

  *buf = 0;
  v25 = buf;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__3;
  v28 = __Block_byref_object_dispose__3;
  v29 = 0;
  v21 = 0;
  v22[0] = &v21;
  v22[1] = 0x3032000000;
  v22[2] = __Block_byref_object_copy__3;
  v22[3] = __Block_byref_object_dispose__3;
  v23 = 0;
  v11 = objc_autoreleasePoolPush();
  v12 = [(SCMLHandler *)self clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__SCMLHandler_analyzePixelBuffer_error___block_invoke;
  block[3] = &unk_1E7EB3EE8;
  block[4] = self;
  block[5] = buf;
  block[6] = &v21;
  block[7] = a3;
  dispatch_sync(v12, block);

  objc_autoreleasePoolPop(v11);
  if (*(v25 + 5))
  {
    v13 = +[SCMLLog imageAnalyzer];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_1B8A3C000, v13, OS_LOG_TYPE_DEFAULT, "End SCMLHandler analyzePixelBuffer", v19, 2u);
    }
  }

  else
  {
    v14 = +[SCMLLog imageAnalyzer];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SCMLHandler analyzePixelBuffer:v22 error:?];
    }

    if (a4)
    {
      v15 = *(v22[0] + 40);
      if (v15)
      {
        *a4 = v15;
      }
    }
  }

  v16 = *(v25 + 5);
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(buf, 8);
  scml::SignpostInterval::~SignpostInterval(&v31);
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

void __40__SCMLHandler_analyzePixelBuffer_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) imageAnalyzer];
  v3 = *(a1 + 56);
  v4 = *(*(a1 + 48) + 8);
  obj = *(v4 + 40);
  v5 = [v2 analyzePixelBuffer:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (int64_t)classifyPixelBuffer:(__CVBuffer *)a3 error:(id *)a4
{
  v30[4] = *MEMORY[0x1E69E9840];
  scml::SignpostInterval::SignpostInterval(&v28);
  v7 = v28;
  v8 = v7;
  v9 = v29;
  if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v9, "SCMLHandler.classifyPixelBuffer", "", buf, 2u);
  }

  v27[0] = &unk_1F3746B08;
  v27[1] = &v28;
  v27[3] = v27;
  std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](v30, v27);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v27);
  v10 = +[SCMLLog imageAnalyzer];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B8A3C000, v10, OS_LOG_TYPE_DEFAULT, "Begin SCMLHandler classifyPixelBuffer", buf, 2u);
  }

  if (a4)
  {
    *a4 = 0;
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  *buf = 0;
  v21[0] = buf;
  v21[1] = 0x3032000000;
  v21[2] = __Block_byref_object_copy__3;
  v21[3] = __Block_byref_object_dispose__3;
  v22 = 0;
  v11 = objc_autoreleasePoolPush();
  v12 = [(SCMLHandler *)self clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SCMLHandler_classifyPixelBuffer_error___block_invoke;
  block[3] = &unk_1E7EB3F10;
  block[4] = self;
  block[5] = buf;
  block[6] = &v23;
  block[7] = a3;
  dispatch_sync(v12, block);

  objc_autoreleasePoolPop(v11);
  if (*(v21[0] + 40))
  {
    v13 = +[SCMLLog imageAnalyzer];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SCMLHandler classifyPixelBuffer:v21 error:?];
    }

    if (a4)
    {
      *a4 = *(v21[0] + 40);
    }
  }

  else
  {
    v14 = +[SCMLLog imageAnalyzer];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_1B8A3C000, v14, OS_LOG_TYPE_DEFAULT, "End SCMLHandler classifyPixelBuffer", v18, 2u);
    }
  }

  v15 = v24[3];
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v23, 8);
  scml::SignpostInterval::~SignpostInterval(&v28);
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

void __41__SCMLHandler_classifyPixelBuffer_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) imageAnalyzer];
  v3 = *(a1 + 56);
  v4 = *(*(a1 + 40) + 8);
  obj = *(v4 + 40);
  v5 = [v2 classifyPixelBuffer:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v6 = [v5 objectForKeyedSubscript:SCMLImageExplicitSensitivity[0]];
    *(*(*(a1 + 48) + 8) + 24) = [v6 unsignedIntegerValue];
  }
}

- (id)getOperatingPointDataForClassName:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (a4)
  {
    *a4 = 0;
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__3;
  v27 = __Block_byref_object_dispose__3;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3;
  v21 = __Block_byref_object_dispose__3;
  v22 = 0;
  v7 = objc_autoreleasePoolPush();
  v8 = [(SCMLHandler *)self clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__SCMLHandler_getOperatingPointDataForClassName_error___block_invoke;
  block[3] = &unk_1E7EB3F38;
  v15 = &v23;
  v9 = v6;
  v14 = v9;
  v16 = &v17;
  dispatch_sync(v8, block);

  objc_autoreleasePoolPop(v7);
  if (a4)
  {
    v10 = v18[5];
    if (v10)
    {
      *a4 = v10;
    }
  }

  v11 = v24[5];
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);

  return v11;
}

void __55__SCMLHandler_getOperatingPointDataForClassName_error___block_invoke(void *a1)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = MEMORY[0x1E695DFF8];
  v4 = [v2 resourcePath];
  v14[0] = v4;
  v14[1] = @"Models/ImageModel";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v6 = [v3 fileURLWithPathComponents:v5];

  v7 = a1[4];
  v8 = *(a1[6] + 8);
  obj = *(v8 + 40);
  v9 = [SCMLImageAnalyzer getOperatingPointDataForClassName:v7 modelURL:v6 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  v10 = *(a1[5] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = *MEMORY[0x1E69E9840];
}

- (id)classifyPixelBuffer:(__CVBuffer *)a3 stagedText:(id)a4 inConversationWithIdentifier:(id)a5 error:(id *)a6
{
  v6 = [(SCMLHandler *)self classifyPixelBuffer:a3 startDate:0 endDate:0 stagedText:a4 inConversationWithIdentifier:a5 error:a6];

  return v6;
}

- (id)classifyPixelBuffer:(__CVBuffer *)a3 startDate:(id)a4 endDate:(id)a5 stagedText:(id)a6 inConversationWithIdentifier:(id)a7 error:(id *)a8
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__3;
  v26 = __Block_byref_object_dispose__3;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__3;
  v20 = __Block_byref_object_dispose__3;
  v21 = 0;
  v11 = [(SCMLHandler *)self clientQueue:a3];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __99__SCMLHandler_classifyPixelBuffer_startDate_endDate_stagedText_inConversationWithIdentifier_error___block_invoke;
  v15[3] = &unk_1E7EB3EE8;
  v15[4] = self;
  v15[5] = &v22;
  v15[6] = &v16;
  v15[7] = a3;
  dispatch_sync(v11, v15);

  if (a8)
  {
    v12 = v17[5];
    if (v12)
    {
      *a8 = v12;
    }
  }

  v13 = v23[5];
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);

  return v13;
}

void __99__SCMLHandler_classifyPixelBuffer_startDate_endDate_stagedText_inConversationWithIdentifier_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) imageAnalyzer];
  v3 = *(a1 + 56);
  v4 = *(*(a1 + 48) + 8);
  obj = *(v4 + 40);
  v5 = [v2 classifyPixelBuffer:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)performanceStatistics
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(SCMLHandler *)self perfResults];
  v5 = [v4 results];
  [v3 addEntriesFromDictionary:v5];

  v6 = [(SCMLHandler *)self imageAnalyzer];
  v7 = [v6 performanceResults];
  [v3 addEntriesFromDictionary:v7];

  v8 = [v3 copy];

  return v8;
}

+ (BOOL)supportsANE
{
  if (+[SCMLHandler supportsANE]::once_token != -1)
  {
    +[SCMLHandler supportsANE];
  }

  return +[SCMLHandler supportsANE]::supportsANE;
}

uint64_t __26__SCMLHandler_supportsANE__block_invoke()
{
  result = MGIsQuestionValid();
  if (result)
  {
    result = MGGetBoolAnswer();
    +[SCMLHandler supportsANE]::supportsANE = result;
  }

  return result;
}

+ (BOOL)isImageSensitiveForLabel:(id)a3 confidenceScore:(double)a4 classificationMode:(unint64_t)a5
{
  v8 = a3;
  v9 = +[SCMLHandler currentModelVersion];
  v11 = 0;
  LOBYTE(a5) = [a1 isImageSensitiveForLabel:v8 confidenceScore:a5 classificationMode:v9 modelVersion:&v11 error:a4];

  return a5;
}

+ (BOOL)isImageSensitiveForLabel:(id)a3 confidenceScore:(double)a4 classificationMode:(unint64_t)a5 modelVersion:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a6;
  v13 = +[SCMLImageModelThresholds instance];
  [v13 thresholdForLabel:v11 classificationMode:a5 modelVersion:v12 error:a7];
  LOBYTE(a7) = v14 <= a4;

  return a7;
}

- (uint64_t)initWithOptions:error:
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

- (void)initWithOptions:error:
{
  v2 = **(a1 + 8);
  v3 = v2;
  v4 = *(*(a1 + 8) + 8);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v3, OS_SIGNPOST_INTERVAL_END, v4, "SCMLHandler.init", "", v5, 2u);
  }
}

- (uint64_t)analyzeImage:error:
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

- (void)analyzeImage:error:
{
  v2 = **(a1 + 8);
  v3 = v2;
  v4 = *(*(a1 + 8) + 8);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v3, OS_SIGNPOST_INTERVAL_END, v4, "SCMLHandler.analyzeImage", "", v5, 2u);
  }
}

- (uint64_t)classifyImage:error:
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

- (void)classifyImage:error:
{
  v2 = **(a1 + 8);
  v3 = v2;
  v4 = *(*(a1 + 8) + 8);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v3, OS_SIGNPOST_INTERVAL_END, v4, "SCMLHandler.classifyImage", "", v5, 2u);
  }
}

- (uint64_t)analyzePixelBuffer:error:
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

- (void)analyzePixelBuffer:error:
{
  v2 = **(a1 + 8);
  v3 = v2;
  v4 = *(*(a1 + 8) + 8);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v3, OS_SIGNPOST_INTERVAL_END, v4, "SCMLHandler.analyzePixelBuffer", "", v5, 2u);
  }
}

- (uint64_t)classifyPixelBuffer:error:
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

- (void)classifyPixelBuffer:error:
{
  v2 = **(a1 + 8);
  v3 = v2;
  v4 = *(*(a1 + 8) + 8);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v3, OS_SIGNPOST_INTERVAL_END, v4, "SCMLHandler.classifyPixelBuffer", "", v5, 2u);
  }
}

- (void)initWithOptions:(uint64_t)a3 error:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0(&dword_1B8A3C000, a2, a3, "End SCMLHandler.init with error: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)analyzeImage:(uint64_t)a1 error:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_1B8A3C000, v1, v2, "End SCMLHandler analyzeImage with error: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)classifyImage:(uint64_t)a1 error:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_1B8A3C000, v1, v2, "End SCMLHandler classifyImage with error: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)analyzePixelBuffer:(uint64_t)a1 error:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_1B8A3C000, v1, v2, "End SCMLHandler analyzePixelBuffer with error: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)classifyPixelBuffer:(uint64_t)a1 error:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_1B8A3C000, v1, v2, "End SCMLHandler classifyPixelBuffer with error: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

@end