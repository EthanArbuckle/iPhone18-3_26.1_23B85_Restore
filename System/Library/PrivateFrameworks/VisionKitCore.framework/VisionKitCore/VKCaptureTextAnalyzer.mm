@interface VKCaptureTextAnalyzer
- (BOOL)_isCanceledRequest:(id)request;
- (VKCaptureTextAnalyzer)init;
- (id)_documentDetectionRequest;
- (id)_documentRecognitionRequestWithInputBlock:(id)block;
- (id)_documentRecognitionRequestWithInputBlocks:(id)blocks;
- (id)_imageAnalysisForDocument:(id)document imageSize:(CGSize)size;
- (void)_didProcessRequest:(id)request withDetectionResult:(id)result analysis:(id)analysis error:(id)error;
- (void)_enqueueProcessingForRequest:(id)request;
- (void)cancelAllRequests;
- (void)dealloc;
- (void)processRequest:(id)request;
@end

@implementation VKCaptureTextAnalyzer

- (VKCaptureTextAnalyzer)init
{
  v7.receiver = self;
  v7.super_class = VKCaptureTextAnalyzer;
  v2 = [(VKCaptureTextAnalyzer *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.visionkit.cameratextanalysis", v3);
    processingQueue = v2->__processingQueue;
    v2->__processingQueue = v4;

    v2->_shouldCreateFeedbackProviders = vk_isInternalBuild();
  }

  return v2;
}

- (void)dealloc
{
  globalSession = [MEMORY[0x1E6984688] globalSession];
  [globalSession releaseCachedResources];

  v4.receiver = self;
  v4.super_class = VKCaptureTextAnalyzer;
  [(VKCaptureTextAnalyzer *)&v4 dealloc];
}

- (void)processRequest:(id)request
{
  requestCopy = request;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  _processingRequest = [(VKCaptureTextAnalyzer *)self _processingRequest];
  if (_processingRequest == requestCopy)
  {
  }

  else
  {
    _pendingRequest = [(VKCaptureTextAnalyzer *)self _pendingRequest];

    v6 = requestCopy;
    if (_pendingRequest == requestCopy)
    {
      goto LABEL_8;
    }

    [(VKCaptureTextAnalyzer *)self cancelAllRequests];
    if ([(VKCaptureTextAnalyzer *)self _isProcessing])
    {
      [(VKCaptureTextAnalyzer *)self _setPendingRequest:requestCopy];
    }

    else
    {
      [(VKCaptureTextAnalyzer *)self _enqueueProcessingForRequest:requestCopy];
    }
  }

  v6 = requestCopy;
LABEL_8:
}

- (void)cancelAllRequests
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  _pendingRequest = [(VKCaptureTextAnalyzer *)self _pendingRequest];
  _processingRequest = [(VKCaptureTextAnalyzer *)self _processingRequest];
  if (_pendingRequest)
  {
    delegate = [_pendingRequest delegate];
    [delegate requestDidCancel:_pendingRequest];

    [(VKCaptureTextAnalyzer *)self _setPendingRequest:0];
  }

  if (_processingRequest)
  {
    [(VKCaptureTextAnalyzer *)self _setProcessingRequest:0];
  }
}

- (BOOL)_isCanceledRequest:(id)request
{
  requestCopy = request;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  _pendingRequest = [(VKCaptureTextAnalyzer *)self _pendingRequest];

  _processingRequest = [(VKCaptureTextAnalyzer *)self _processingRequest];

  return _pendingRequest != requestCopy && _processingRequest != requestCopy;
}

- (void)_enqueueProcessingForRequest:(id)request
{
  requestCopy = request;
  [(VKCaptureTextAnalyzer *)self _setProcessing:1];
  [(VKCaptureTextAnalyzer *)self _setProcessingRequest:requestCopy];
  _processingQueue = [(VKCaptureTextAnalyzer *)self _processingQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__VKCaptureTextAnalyzer__enqueueProcessingForRequest___block_invoke;
  v7[3] = &unk_1E7BE4768;
  v8 = requestCopy;
  selfCopy = self;
  v6 = requestCopy;
  dispatch_async(_processingQueue, v7);
}

void __54__VKCaptureTextAnalyzer__enqueueProcessingForRequest___block_invoke(uint64_t a1)
{
  v73[1] = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) requestHandler];
  v4 = [*(a1 + 40) _documentDetectionRequest];
  v73[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:1];
  v66 = 0;
  [v3 performRequests:v5 error:&v66];
  v6 = v66;

  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = 0;
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __54__VKCaptureTextAnalyzer__enqueueProcessingForRequest___block_invoke_2;
  v59[3] = &unk_1E7BE46C8;
  v61 = &v62;
  v45 = *v2;
  v7 = *v2;
  v60 = vextq_s8(v45, v45, 8uLL);
  vk_performBlockOnMainThreadAndWait(v59);
  if (v6)
  {
    v8 = 0;
    v9 = 0;
LABEL_3:
    v10 = MEMORY[0x1E696ABC0];
    v69 = *MEMORY[0x1E696AA08];
    v70 = v6;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:{1, v43.i64[0]}];
    v12 = [v10 errorWithDomain:@"VKCaptureTextAnalysis" code:-1 userInfo:v11];

LABEL_4:
    goto LABEL_5;
  }

  v17 = *(v63 + 24);
  if (v17)
  {
    v18 = 0;
    v8 = 0;
    v9 = 0;
    goto LABEL_22;
  }

  v19 = [*(a1 + 32) image];
  [v19 size];
  v21 = v20;
  v23 = v22;

  v24 = [*(a1 + 32) focusQuad];
  v47 = [v24 quadMultipliedBySize:{1.0 / v21, 1.0 / v23}];

  v25 = [v47 quadByFlippingPointsWithSourceFrame:{0.0, 0.0, 1.0, 1.0}];
  v26 = [v4 results];
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __54__VKCaptureTextAnalyzer__enqueueProcessingForRequest___block_invoke_3;
  v57[3] = &unk_1E7BE46F0;
  v57[4] = *(a1 + 40);
  v44 = v25;
  v58 = v44;
  v27 = [v26 vk_flatMap:v57];

  if ([v27 count])
  {
    v28 = [VKCaptureTextDetectionResult alloc];
    v29 = [*(a1 + 32) image];
    [v29 size];
    v30 = [(VKCaptureTextDetectionResult *)v28 initWithBlocks:v27 imageSize:?];

    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __54__VKCaptureTextAnalyzer__enqueueProcessingForRequest___block_invoke_4;
    v54[3] = &unk_1E7BE4718;
    v43 = *(a1 + 32);
    v31 = v43.i64[0];
    v55 = vextq_s8(v43, v43, 8uLL);
    v9 = v30;
    v56 = v9;
    vk_performBlockOnMainThread(v54);
    v32 = [*(a1 + 40) _documentRecognitionRequestWithInputBlocks:v27];
    v72 = v32;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v72 count:1];
    v53 = 0;
    [v3 performRequests:v33 error:&v53];
    v6 = v53;

    if (v6)
    {
      v8 = 0;
      v18 = 0;
LABEL_19:

      goto LABEL_20;
    }

    v43.i64[0] = [v32 results];
    v34 = [v43.i64[0] count];
    v35 = v34;
    if (v34 < 2)
    {
      if (!v34)
      {
        v8 = 0;
        v18 = -3;
        goto LABEL_18;
      }
    }

    else
    {
      v36 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        __54__VKCaptureTextAnalyzer__enqueueProcessingForRequest___block_invoke_cold_1(v38, buf, v35, v36);
      }
    }

    v39 = *(a1 + 40);
    v40 = [v43.i64[0] firstObject];
    v41 = [*(a1 + 32) image];
    [v41 size];
    v8 = [v39 _imageAnalysisForDocument:v40 imageSize:?];

    v18 = 0;
LABEL_18:

    goto LABEL_19;
  }

  v9 = 0;
  v8 = 0;
  v6 = 0;
  v18 = -2;
LABEL_20:

  if (v6)
  {
    goto LABEL_3;
  }

  v17 = *(v63 + 24);
LABEL_22:
  v12 = 0;
  if ((v17 & 1) == 0 && !v8)
  {
    v42 = MEMORY[0x1E696ABC0];
    v67 = *MEMORY[0x1E696A578];
    v68 = @"No text was found during detection or recognition.";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
    v12 = [v42 errorWithDomain:@"VKCaptureTextAnalysis" code:v18 userInfo:v11];
    v8 = 0;
    goto LABEL_4;
  }

LABEL_5:
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __54__VKCaptureTextAnalyzer__enqueueProcessingForRequest___block_invoke_162;
  v48[3] = &unk_1E7BE4740;
  v46 = *(a1 + 32);
  v13 = v46.i64[0];
  v49 = vextq_s8(v46, v46, 8uLL);
  v14 = v9;
  v50 = v14;
  v15 = v8;
  v51 = v15;
  v16 = v12;
  v52 = v16;
  vk_performBlockOnMainThread(v48);

  _Block_object_dispose(&v62, 8);
}

uint64_t __54__VKCaptureTextAnalyzer__enqueueProcessingForRequest___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) _isCanceledRequest:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void __54__VKCaptureTextAnalyzer__enqueueProcessingForRequest___block_invoke_4(uint64_t a1)
{
  if (([*(a1 + 32) _isCanceledRequest:*(a1 + 40)] & 1) == 0)
  {
    v2 = [*(a1 + 40) delegate];
    [v2 request:*(a1 + 40) didDetectTextWithResult:*(a1 + 48)];
  }
}

uint64_t __54__VKCaptureTextAnalyzer__enqueueProcessingForRequest___block_invoke_162(uint64_t a1)
{
  [*(a1 + 32) _setProcessing:0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);

  return [v2 _didProcessRequest:v3 withDetectionResult:v4 analysis:v5 error:v6];
}

- (void)_didProcessRequest:(id)request withDetectionResult:(id)result analysis:(id)analysis error:(id)error
{
  requestCopy = request;
  resultCopy = result;
  analysisCopy = analysis;
  errorCopy = error;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if ([(VKCaptureTextAnalyzer *)self _isCanceledRequest:requestCopy])
  {
    delegate = [requestCopy delegate];
    [delegate requestDidCancel:requestCopy];
  }

  else
  {
    [(VKCaptureTextAnalyzer *)self _setProcessingRequest:0];
    if ([(VKCaptureTextAnalyzer *)self shouldCreateFeedbackProviders])
    {
      v14 = objc_alloc_init(VKFeedbackProvider);
      v15 = [[VKCaptureTextFeedbackAssetProvider alloc] initWithRequest:requestCopy detectionResult:resultCopy];
      [(VKFeedbackProvider *)v14 setAssetsProvider:v15];

      [(VKFeedbackProvider *)v14 setError:errorCopy];
      [analysisCopy setFeedbackProvider:v14];
    }

    delegate2 = [requestCopy delegate];
    delegate = delegate2;
    if (errorCopy)
    {
      [delegate2 request:requestCopy didFailWithError:errorCopy];
    }

    else
    {
      [delegate2 request:requestCopy didRecgonizeTextWithAnalysis:analysisCopy];
    }
  }

  _pendingRequest = [(VKCaptureTextAnalyzer *)self _pendingRequest];
  if (_pendingRequest)
  {
    [(VKCaptureTextAnalyzer *)self _setPendingRequest:0];
    [(VKCaptureTextAnalyzer *)self _enqueueProcessingForRequest:_pendingRequest];
  }
}

- (id)_imageAnalysisForDocument:(id)document imageSize:(CGSize)size
{
  if (document)
  {
    height = size.height;
    width = size.width;
    documentCopy = document;
    height = [[VKCImageAnalysisResult alloc] initWithDocumentObservation:documentCopy mrcDataDetectors:0 imageSize:width, height];

    v8 = [(VKImageAnalysis *)[VKCImageAnalysis alloc] initWithAnalysisResult:height];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_documentDetectionRequest
{
  v2 = objc_alloc_init(MEMORY[0x1E6984628]);
  [v2 setDetectionOnly:1];
  [v2 setUsesLanguageCorrection:0];
  [v2 setRecognitionLevel:0];

  return v2;
}

- (id)_documentRecognitionRequestWithInputBlock:(id)block
{
  v10 = *MEMORY[0x1E69E9840];
  if (block)
  {
    blockCopy = block;
    v4 = MEMORY[0x1E695DEC8];
    blockCopy2 = block;
    v6 = [v4 arrayWithObjects:&blockCopy count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(VKCaptureTextAnalyzer *)self _documentRecognitionRequestWithInputBlocks:v6, blockCopy, v10];

  return v7;
}

- (id)_documentRecognitionRequestWithInputBlocks:(id)blocks
{
  v3 = MEMORY[0x1E6984628];
  blocksCopy = blocks;
  v5 = objc_alloc_init(v3);
  [v5 setDetectionOnly:0];
  [v5 setUsesLanguageCorrection:1];
  [v5 setRecognitionLevel:0];
  [v5 setInputTextBlocks:blocksCopy];

  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  [v5 setRecognitionLanguages:preferredLanguages];

  return v5;
}

void __54__VKCaptureTextAnalyzer__enqueueProcessingForRequest___block_invoke_cold_1(void *a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_error_impl(&dword_1B4335000, log, OS_LOG_TYPE_ERROR, "%@: unexpectedly recognized %lu documents; will use arbitrary document.", buf, 0x16u);
}

@end