@interface VKTextFrameProcessor
+ (NSArray)supportedRecognitionLanguages;
- (BOOL)wantsThrottling;
- (VKTextFrameProcessor)init;
- (VKTextFrameProcessorConfiguration)configuration;
- (__n128)warpTransform;
- (id)_documentRequestForInputObservation:(uint64_t)observation;
- (id)_filterDocuments:(uint64_t)documents;
- (id)_performDetection:(void *)detection;
- (id)_performGatingAndRecognition:(id *)recognition;
- (id)_performRecognition:(void *)recognition inputObservation:;
- (id)resultHandler;
- (void)_performAssociation:(void *)association;
- (void)_processRecognitionResults:(void *)results forFrame:;
- (void)_removeAllItems;
- (void)applyHomographyWarpTransform:(__n128)transform;
- (void)processFrame:(id)frame;
- (void)reset;
- (void)sendResult:(void *)result;
- (void)setConfiguration:(id)configuration;
- (void)setResultHandler:(id)handler;
- (void)setWantsThrottling:(BOOL)throttling;
- (void)setWarpTransform:(uint64_t)transform;
@end

@implementation VKTextFrameProcessor

+ (NSArray)supportedRecognitionLanguages
{
  v2 = objc_alloc_init(MEMORY[0x1E6984628]);
  v6 = 0;
  v3 = [v2 supportedRecognitionLanguagesAndReturnError:&v6];
  v4 = v6;
  if (v4)
  {
    +[VKAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](VKAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "error == ((void*)0)", "+[VKTextFrameProcessor supportedRecognitionLanguages]", 0, 0, @"Error retrieving supportedRecognitionLanguages: %@", v4);
  }

  return v3;
}

- (VKTextFrameProcessor)init
{
  v10.receiver = self;
  v10.super_class = VKTextFrameProcessor;
  v2 = [(VKFrameProcessor *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(VKTextFrameProcessorConfiguration);
    config = v2->_config;
    v2->_config = v3;

    v5 = MEMORY[0x1E69E9B10];
    v6 = *(MEMORY[0x1E69E9B10] + 16);
    *v2->_anon_60 = *MEMORY[0x1E69E9B10];
    *&v2->_anon_60[16] = v6;
    *&v2->_anon_60[32] = *(v5 + 32);
    array = [MEMORY[0x1E695DF70] array];
    recognizedItems = v2->_recognizedItems;
    v2->_recognizedItems = array;
  }

  return v2;
}

- (VKTextFrameProcessorConfiguration)configuration
{
  [(VKFrameProcessor *)self lock];
  v3 = [(VKTextFrameProcessorConfiguration *)self->_config copy];
  [(VKFrameProcessor *)self unlock];

  return v3;
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  configuration = [(VKTextFrameProcessor *)self configuration];
  v6 = [configuration isEqual:configurationCopy];

  if ((v6 & 1) == 0)
  {
    v7 = [configurationCopy copy];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __41__VKTextFrameProcessor_setConfiguration___block_invoke;
    v12 = &unk_1E7BE4768;
    selfCopy = self;
    v14 = v7;
    v8 = v7;
    vk_performWhileLocked(self, &v9);
    [(VKFrameProcessor *)self requestImmediateProcessing:v9];
  }
}

- (id)resultHandler
{
  [(VKFrameProcessor *)self lock];
  v3 = _Block_copy(self->_resultHandler);
  [(VKFrameProcessor *)self unlock];
  v4 = _Block_copy(v3);

  return v4;
}

- (void)setResultHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__VKTextFrameProcessor_setResultHandler___block_invoke;
  v6[3] = &unk_1E7BE47B8;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  vk_performWhileLocked(self, v6);
}

void __41__VKTextFrameProcessor_setResultHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 152);
  *(v3 + 152) = v2;
}

- (void)applyHomographyWarpTransform:(__n128)transform
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__2;
  v17 = __Block_byref_object_dispose__2;
  v18 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__VKTextFrameProcessor_applyHomographyWarpTransform___block_invoke;
  v7[3] = &unk_1E7BE4808;
  v8 = a2;
  transformCopy = transform;
  v10 = a4;
  selfCopy = self;
  v12 = &v13;
  vk_performWhileLocked(self, v7);
  v5 = v14[5];
  v6 = objc_alloc_init(VKRecognizedItemFrameProcessorResult);
  [(VKRecognizedItemFrameProcessorResult *)v6 setAllItems:v5];
  [(VKRecognizedItemFrameProcessorResult *)v6 setUpdatedItems:v5];
  [(VKTextFrameProcessor *)self sendResult:v6];

  _Block_object_dispose(&v13, 8);
}

void __53__VKTextFrameProcessor_applyHomographyWarpTransform___block_invoke(uint64_t a1)
{
  v2 = 0;
  v29 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 80) + 96;
  v4 = *v3;
  v5 = *(*(a1 + 80) + 112);
  v6 = *(*(a1 + 80) + 128);
  v7 = *(a1 + 48);
  v8 = *(a1 + 64);
  v24[0] = *(a1 + 32);
  v24[1] = v7;
  v24[2] = v8;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  do
  {
    *(&v25 + v2 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, COERCE_FLOAT(v24[v2])), v5, *&v24[v2], 1), v6, v24[v2], 2);
    ++v2;
  }

  while (v2 != 3);
  v9 = v25;
  v10 = v26;
  v11 = v27;
  *(v3 + 8) = DWORD2(v25);
  *v3 = v9;
  *(v3 + 24) = DWORD2(v10);
  *(v3 + 16) = v10;
  *(v3 + 40) = DWORD2(v11);
  *(v3 + 32) = v11;
  v12 = [*(*(a1 + 80) + 144) copy];
  v13 = *(*(a1 + 88) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = *(*(*(a1 + 88) + 8) + 40);
  v16 = [v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v20 + 1) + 8 * v19++) applyHomographyWarpTransform:{*(a1 + 32), *(a1 + 48), *(a1 + 64), v20}];
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v17);
  }
}

__n128 __41__VKTextFrameProcessor_setWarpTransform___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 80) + 96;
  v3 = *(a1 + 48);
  result = *(a1 + 64);
  *v1 = *(a1 + 32);
  *(v1 + 16) = v3;
  *(v1 + 32) = result;
  return result;
}

- (BOOL)wantsThrottling
{
  [(VKFrameProcessor *)self lock];
  wantsThrottling = self->_wantsThrottling;
  [(VKFrameProcessor *)self unlock];
  return wantsThrottling;
}

- (void)setWantsThrottling:(BOOL)throttling
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__VKTextFrameProcessor_setWantsThrottling___block_invoke;
  v3[3] = &unk_1E7BE41B8;
  v3[4] = self;
  throttlingCopy = throttling;
  vk_performWhileLocked(self, v3);
}

- (void)processFrame:(id)frame
{
  frameCopy = frame;
  configuration = [(VKTextFrameProcessor *)self configuration];
  currentConfig = self->_currentConfig;
  self->_currentConfig = configuration;

  self->_dataType = [(VKTextFrameProcessorConfiguration *)self->_currentConfig dataType];
  v7 = [(VKTextFrameProcessor *)&self->super.super.isa _performGatingAndRecognition:frameCopy];
  [(VKTextFrameProcessor *)self _processRecognitionResults:v7 forFrame:frameCopy];
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = VKTextFrameProcessor;
  [(VKFrameProcessor *)&v3 reset];
  [(VKTextFrameProcessor *)&self->super.super.isa _removeAllItems];
}

- (void)_performAssociation:(void *)association
{
  v3 = a2;
  if (association)
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__2;
    v37 = __Block_byref_object_dispose__2;
    array = [MEMORY[0x1E695DF70] array];
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__2;
    v31 = __Block_byref_object_dispose__2;
    array2 = [MEMORY[0x1E695DF70] array];
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__2;
    v25 = __Block_byref_object_dispose__2;
    v26 = 0;
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__2;
    v19 = __Block_byref_object_dispose__2;
    array3 = [MEMORY[0x1E695DF70] array];
    v5 = MEMORY[0x1E69E9820];
    v6 = 3221225472;
    v7 = __44__VKTextFrameProcessor__performAssociation___block_invoke;
    v8 = &unk_1E7BE4858;
    v9 = v3;
    associationCopy = association;
    v11 = &v27;
    v12 = &v15;
    v13 = &v33;
    v14 = &v21;
    vk_performWhileLocked(association, &v5);
    v4 = objc_alloc_init(VKRecognizedItemFrameProcessorResult);
    [(VKRecognizedItemFrameProcessorResult *)v4 setAllItems:v16[5], v5, v6, v7, v8];
    [(VKRecognizedItemFrameProcessorResult *)v4 setAddedItems:v34[5]];
    [(VKRecognizedItemFrameProcessorResult *)v4 setUpdatedItems:v28[5]];
    [(VKRecognizedItemFrameProcessorResult *)v4 setRemovedItems:v22[5]];
    [(VKTextFrameProcessor *)association sendResult:v4];

    _Block_object_dispose(&v15, 8);
    _Block_object_dispose(&v21, 8);

    _Block_object_dispose(&v27, 8);
    _Block_object_dispose(&v33, 8);
  }
}

uint64_t __44__VKTextFrameProcessor__performAssociation___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        if (![*(*(a1 + 40) + 144) count])
        {
          goto LABEL_13;
        }

        v8 = 0;
        while (1)
        {
          v9 = [*(*(a1 + 40) + 144) objectAtIndexedSubscript:v8];
          if ([v9 shouldAssociateWithItem:v7])
          {
            break;
          }

          if (++v8 >= [*(*(a1 + 40) + 144) count])
          {
            goto LABEL_13;
          }
        }

        if (v9)
        {
          [v9 associateWithItem:v7];
          [*(*(*(a1 + 48) + 8) + 40) addObject:v9];
          [*(*(*(a1 + 56) + 8) + 40) addObject:v9];
          [*(*(a1 + 40) + 144) removeObjectAtIndex:v8];
        }

        else
        {
LABEL_13:
          [*(*(*(a1 + 64) + 8) + 40) addObject:v7];
          [*(*(*(a1 + 56) + 8) + 40) addObject:v7];
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v10 = [*(*(a1 + 40) + 144) copy];
  v11 = *(*(a1 + 72) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  [*(*(a1 + 40) + 144) removeAllObjects];
  return [*(*(a1 + 40) + 144) addObjectsFromArray:*(*(*(a1 + 56) + 8) + 40)];
}

- (void)sendResult:(void *)result
{
  v3 = a2;
  v4 = v3;
  if (result)
  {
    allItems = [v3 allItems];
    [result setWantsThrottling:{objc_msgSend(allItems, "count") != 0}];

    if (!v4)
    {
      [VKAssert handleFailedAssertWithCondition:"result" functionName:"[VKTextFrameProcessor sendResult:]" simulateCrash:0 showAlert:0 format:@"Expecting a non-nil result object."];
    }

    resultHandler = [result resultHandler];
    if (resultHandler)
    {
      resultHandlerQueue = [result resultHandlerQueue];
      if (resultHandlerQueue)
      {
        OUTLINED_FUNCTION_0_1();
        v10[1] = 3221225472;
        v10[2] = __35__VKTextFrameProcessor_sendResult___block_invoke;
        v10[3] = &unk_1E7BE47E0;
        v12 = resultHandler;
        v11 = v4;
        dispatch_async(resultHandlerQueue, v10);
      }

      else
      {
        v8 = OUTLINED_FUNCTION_4();
        v9(v8);
      }
    }
  }
}

- (__n128)warpTransform
{
  if (!self)
  {
    return 0;
  }

  [self lock];
  v3 = self[6];
  [self unlock];
  return v3;
}

- (void)setWarpTransform:(uint64_t)transform
{
  if (transform)
  {
    OUTLINED_FUNCTION_0_1();
    v5[1] = 3221225472;
    v5[2] = __41__VKTextFrameProcessor_setWarpTransform___block_invoke;
    v5[3] = &unk_1E7BE4830;
    v9 = v1;
    v6 = v2;
    v7 = v3;
    v8 = v4;
    vk_performWhileLocked(v1, v5);
  }
}

- (id)_performGatingAndRecognition:(id *)recognition
{
  v3 = a2;
  if (recognition)
  {
    if ([recognition[20] shouldPerformTextDetectionGating])
    {
      v4 = OUTLINED_FUNCTION_4();
      v6 = [(VKTextFrameProcessor *)v4 _performDetection:v5];
      if (!v6)
      {
        recognition = MEMORY[0x1E695E0F0];
        goto LABEL_7;
      }

      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = OUTLINED_FUNCTION_4();
    recognition = [(VKTextFrameProcessor *)v8 _performRecognition:v9 inputObservation:v7];
  }

LABEL_7:

  return recognition;
}

- (void)_processRecognitionResults:(void *)results forFrame:
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  resultsCopy = results;
  if (self && ([self isCancelled] & 1) == 0)
  {
    v7 = MEMORY[0x1E695DF70];
    [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_3_0() lock];
    v19 = self[7];
    v20 = self[6];
    v18 = self[8];
    selfCopy = self;
    [self unlock];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          v14 = [VKRecognizedText alloc];
          info = [resultsCopy info];
          v16 = [(VKRecognizedText *)v14 initWithFrameInfo:info textBlockObservation:v13];

          [(VKRecognizedItem *)v16 applyHomographyWarpTransform:*&v20, *&v19, *&v18];
          [v7 addObject:v16];
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }

    [(VKTextFrameProcessor *)selfCopy _performAssociation:v7];
  }
}

- (void)_removeAllItems
{
  if (self)
  {
    [self lock];
    v3 = [self[18] copy];
    [self[18] removeAllObjects];
    [self unlock];
    if ([v3 count])
    {
      v2 = objc_alloc_init(VKRecognizedItemFrameProcessorResult);
      [(VKRecognizedItemFrameProcessorResult *)v2 setRemovedItems:v3];
      [(VKTextFrameProcessor *)self sendResult:v2];
    }
  }
}

- (id)_performDetection:(void *)detection
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v28 = v3;
  if (detection)
  {
    v4 = v3;
    configuration = [detection configuration];
    if (([configuration shouldPerformTextDetectionGating] & 1) == 0)
    {
      [VKAssert handleFailedAssertWithCondition:"configuration.shouldPerformTextDetectionGating" functionName:"[VKTextFrameProcessor _performDetection:]" simulateCrash:0 showAlert:0 format:@"Running detection when the configuration does not support it."];
    }

    v6 = objc_alloc_init(MEMORY[0x1E6984628]);
    [v6 setUsesAlternateLineGrouping:{objc_msgSend(configuration, "usesAlternateLineGrouping")}];
    [v6 setMaximumCandidateCount:1];
    [v6 setDetectionOnly:1];
    info = [v4 info];
    [info regionOfInterest];
    [v6 setRegionOfInterest:?];

    imageRequestHandler = [v4 imageRequestHandler];
    v34 = v6;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
    v29 = 0;
    v27 = imageRequestHandler;
    [imageRequestHandler performRequests:v9 error:&v29];
    v10 = v29;

    if (v10)
    {
      v11 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.UtilityCamera");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v36 = v10;
        _os_log_error_impl(&dword_1B4335000, v11, OS_LOG_TYPE_ERROR, "Error performing detection request. %@", buf, 0xCu);
      }
    }

    [configuration comparisonPoint];
    v13 = v12;
    v15 = v14;
    documentBlockType = [configuration documentBlockType];
    results = [v6 results];
    v18 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(results, "count")}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v19 = results;
    v20 = [v19 countByEnumeratingWithState:&v30 objects:buf count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v31;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v31 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [*(*(&v30 + 1) + 8 * i) closestTextBlockOfTypes:documentBlockType toPoint:10000 maximumPixelDistance:{v13, v15}];
          if (v24)
          {
            [v18 addObject:v24];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v30 objects:buf count:16];
      }

      while (v21);
    }

    v25 = VKVNRectClosestToPoint(v18, v13, v15);
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (id)_performRecognition:(void *)recognition inputObservation:
{
  selfCopy = self;
  v17[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    recognitionCopy = recognition;
    v6 = a2;
    [VKTextFrameProcessor setWarpTransform:selfCopy];
    v7 = [(VKTextFrameProcessor *)selfCopy _documentRequestForInputObservation:recognitionCopy];

    info = [v6 info];
    [info regionOfInterest];
    [v7 setRegionOfInterest:?];

    imageRequestHandler = [v6 imageRequestHandler];

    v17[0] = v7;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    v14 = 0;
    [imageRequestHandler performRequests:v10 error:&v14];
    v11 = v14;

    if (v11)
    {
      results = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.UtilityCamera");
      if (os_log_type_enabled(results, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v16 = v11;
        _os_log_error_impl(&dword_1B4335000, results, OS_LOG_TYPE_ERROR, "Error performing recognition request. %@", buf, 0xCu);
      }

      selfCopy = MEMORY[0x1E695E0F0];
    }

    else
    {
      results = [v7 results];
      selfCopy = [(VKTextFrameProcessor *)selfCopy _filterDocuments:results];
    }
  }

  return selfCopy;
}

- (id)_documentRequestForInputObservation:(uint64_t)observation
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (observation)
  {
    v4 = objc_alloc_init(MEMORY[0x1E6984628]);
    [v4 setUsesAlternateLineGrouping:{objc_msgSend(OUTLINED_FUNCTION_2_0(), "usesAlternateLineGrouping")}];
    [v4 setMaximumCandidateCount:1];
    [v4 setDetectionOnly:0];
    [v4 setUsesLanguageDetection:{objc_msgSend(OUTLINED_FUNCTION_2_0(), "usesLanguageDetection")}];
    [v4 setUsesLanguageCorrection:1];
    [v4 setRecognitionLevel:0];
    customWords = [OUTLINED_FUNCTION_2_0() customWords];
    v6 = [customWords count];

    if (v6)
    {
      [OUTLINED_FUNCTION_2_0() customWords];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_3_0() setCustomWords:customWords];
    }

    recognitionLanguages = [OUTLINED_FUNCTION_2_0() recognitionLanguages];
    v8 = recognitionLanguages;
    if (!recognitionLanguages || ![recognitionLanguages count])
    {
      customWords = [MEMORY[0x1E695DF58] preferredLanguages];

      v8 = customWords;
    }

    [v4 setRecognitionLanguages:v8];
    if (v3)
    {
      v10[0] = v3;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_3_0() setInputTextBlocks:customWords];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_filterDocuments:(uint64_t)documents
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (documents)
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    if (v4)
    {
      v6 = *(documents + 168);
      if (v6)
      {
        _FilterByDataType(v4, v6);
      }

      else
      {
        _FilterByBlockType(v4, [*(documents + 160) documentBlockType]);
      }
      v7 = ;

      v5 = v7;
    }

    if ([*(documents + 160) isForSingleItem] && objc_msgSend(v5, "count"))
    {
      [*(documents + 160) comparisonPoint];
      v10 = VKVNRectClosestToPoint(v5, v8, v9);
      v13[0] = v10;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];

      v5 = v11;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end