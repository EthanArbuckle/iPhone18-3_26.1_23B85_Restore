@interface SCMLVideoAnalyzer
- (BOOL)addFrameBuffer:(opaqueCMSampleBuffer *)buffer error:(id *)error;
- (SCMLVideoAnalyzer)initWithMLHandler:(id)handler;
- (id)analyze:(id *)analyze;
- (id)analyzeVideoURL:(id)l config:(id)config error:(id *)error;
- (id)finalizeAnalysis:(id *)analysis;
- (void)startAnalysisWithConfig:(id)config;
@end

@implementation SCMLVideoAnalyzer

- (SCMLVideoAnalyzer)initWithMLHandler:(id)handler
{
  handlerCopy = handler;
  v15.receiver = self;
  v15.super_class = SCMLVideoAnalyzer;
  v6 = [(SCMLVideoAnalyzer *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_handler, handler);
    imageAnalyzer = [handlerCopy imageAnalyzer];
    imageAnalyzer = v7->_imageAnalyzer;
    v7->_imageAnalyzer = imageAnalyzer;

    v10 = [SCMLVideoFrameProcessor alloc];
    imageAnalyzer2 = [handlerCopy imageAnalyzer];
    v12 = [(SCMLVideoFrameProcessor *)v10 initWithImageAnalyzer:imageAnalyzer2];
    frameProcessor = v7->_frameProcessor;
    v7->_frameProcessor = v12;
  }

  return v7;
}

- (id)analyzeVideoURL:(id)l config:(id)config error:(id *)error
{
  lCopy = l;
  configCopy = config;
  if (error)
  {
    *error = 0;
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__2;
  v34 = __Block_byref_object_dispose__2;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__2;
  v28 = __Block_byref_object_dispose__2;
  v29 = 0;
  v10 = objc_autoreleasePoolPush();
  handler = [(SCMLVideoAnalyzer *)self handler];
  clientQueue = [handler clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__SCMLVideoAnalyzer_analyzeVideoURL_config_error___block_invoke;
  block[3] = &unk_1E7EB3D88;
  v13 = configCopy;
  v19 = v13;
  selfCopy = self;
  v14 = lCopy;
  v21 = v14;
  v22 = &v24;
  v23 = &v30;
  dispatch_sync(clientQueue, block);

  objc_autoreleasePoolPop(v10);
  v15 = v25[5];
  if (v15)
  {
    v16 = 0;
    if (error)
    {
      *error = v15;
    }
  }

  else
  {
    v16 = v31[5];
  }

  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);

  return v16;
}

void __50__SCMLVideoAnalyzer_analyzeVideoURL_config_error___block_invoke(uint64_t a1)
{
  v2 = [[SCMLVideoDecoder alloc] initWithConfig:*(a1 + 32)];
  v3 = [*(a1 + 40) frameProcessor];
  [v3 startAnalysisWithConfig:*(a1 + 32)];

  v4 = *(a1 + 48);
  v5 = *(*(a1 + 56) + 8);
  obj = *(v5 + 40);
  v6 = [(SCMLVideoDecoder *)v2 startDecodingVideoURL:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (v6)
  {
    if (([*(*(*(a1 + 64) + 8) + 40) sensitive] & 1) == 0)
    {
      v7 = 0;
      do
      {
        v8 = *(*(a1 + 56) + 8);
        v23 = *(v8 + 40);
        v9 = [(SCMLVideoDecoder *)v2 nextFrameWithError:&v23];
        objc_storeStrong((v8 + 40), v23);

        if (!v9)
        {
          break;
        }

        v10 = [*(a1 + 40) frameProcessor];
        [v10 pushFrame:v9];

        v11 = [*(a1 + 40) frameProcessor];
        v12 = *(*(a1 + 56) + 8);
        v22 = *(v12 + 40);
        v13 = [v11 analyze:&v22];
        objc_storeStrong((v12 + 40), v22);
        v14 = *(*(a1 + 64) + 8);
        v15 = *(v14 + 40);
        *(v14 + 40) = v13;

        v7 = v9;
      }

      while (![*(*(*(a1 + 64) + 8) + 40) sensitive]);
    }

    if (!*(*(*(a1 + 56) + 8) + 40) && ([*(*(*(a1 + 64) + 8) + 40) sensitive] & 1) == 0)
    {
      v16 = [*(a1 + 40) frameProcessor];
      v17 = *(*(a1 + 56) + 8);
      v21 = *(v17 + 40);
      v18 = [v16 finalizeAnalysis:&v21];
      objc_storeStrong((v17 + 40), v21);
      v19 = *(*(a1 + 64) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;
    }
  }
}

- (void)startAnalysisWithConfig:(id)config
{
  configCopy = config;
  v5 = objc_autoreleasePoolPush();
  handler = [(SCMLVideoAnalyzer *)self handler];
  clientQueue = [handler clientQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__SCMLVideoAnalyzer_startAnalysisWithConfig___block_invoke;
  v9[3] = &unk_1E7EB3DB0;
  v9[4] = self;
  v8 = configCopy;
  v10 = v8;
  dispatch_sync(clientQueue, v9);

  objc_autoreleasePoolPop(v5);
}

void __45__SCMLVideoAnalyzer_startAnalysisWithConfig___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) frameProcessor];
  [v2 startAnalysisWithConfig:*(a1 + 40)];
}

- (BOOL)addFrameBuffer:(opaqueCMSampleBuffer *)buffer error:(id *)error
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v6 = objc_autoreleasePoolPush();
  handler = [(SCMLVideoAnalyzer *)self handler];
  clientQueue = [handler clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__SCMLVideoAnalyzer_addFrameBuffer_error___block_invoke;
  block[3] = &unk_1E7EB3DD8;
  block[4] = self;
  block[5] = &v11;
  block[6] = buffer;
  dispatch_sync(clientQueue, block);

  objc_autoreleasePoolPop(v6);
  LOBYTE(v6) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v6;
}

void __42__SCMLVideoAnalyzer_addFrameBuffer_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) frameProcessor];
  *(*(*(a1 + 40) + 8) + 24) = [v2 addFrameBuffer:*(a1 + 48)];
}

- (id)analyze:(id *)analyze
{
  if (analyze)
  {
    *analyze = 0;
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__2;
  v22 = __Block_byref_object_dispose__2;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2;
  v16 = __Block_byref_object_dispose__2;
  v17 = 0;
  v5 = objc_autoreleasePoolPush();
  handler = [(SCMLVideoAnalyzer *)self handler];
  clientQueue = [handler clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__SCMLVideoAnalyzer_analyze___block_invoke;
  block[3] = &unk_1E7EB3E00;
  block[4] = self;
  block[5] = &v18;
  block[6] = &v12;
  dispatch_sync(clientQueue, block);

  objc_autoreleasePoolPop(v5);
  if (analyze)
  {
    v8 = v13[5];
    if (v8)
    {
      *analyze = v8;
    }
  }

  v9 = v19[5];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v9;
}

void __29__SCMLVideoAnalyzer_analyze___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) frameProcessor];
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [v2 analyze:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)finalizeAnalysis:(id *)analysis
{
  if (analysis)
  {
    *analysis = 0;
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__2;
  v22 = __Block_byref_object_dispose__2;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2;
  v16 = __Block_byref_object_dispose__2;
  v17 = 0;
  v5 = objc_autoreleasePoolPush();
  handler = [(SCMLVideoAnalyzer *)self handler];
  clientQueue = [handler clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__SCMLVideoAnalyzer_finalizeAnalysis___block_invoke;
  block[3] = &unk_1E7EB3E00;
  block[4] = self;
  block[5] = &v18;
  block[6] = &v12;
  dispatch_sync(clientQueue, block);

  objc_autoreleasePoolPop(v5);
  if (analysis)
  {
    v8 = v13[5];
    if (v8)
    {
      *analysis = v8;
    }
  }

  v9 = v19[5];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v9;
}

void __38__SCMLVideoAnalyzer_finalizeAnalysis___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) frameProcessor];
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [v2 finalizeAnalysis:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

@end