@interface VKTextWithTrackingFrameProcessor
+ (NSArray)supportedRecognitionLanguages;
- (VKTextFrameProcessorConfiguration)configuration;
- (VKTextWithTrackingFrameProcessor)init;
- (id)_createRequest;
- (id)_filterDocuments:(uint64_t)documents;
- (id)resultHandler;
- (void)_performRecognitionAndTracking:(void *)tracking;
- (void)_processResults:(void *)results;
- (void)processFrame:(id)frame;
- (void)reset;
- (void)sendResult:(void *)result;
- (void)setConfiguration:(id)configuration;
- (void)setResultHandler:(id)handler;
@end

@implementation VKTextWithTrackingFrameProcessor

+ (NSArray)supportedRecognitionLanguages
{
  v2 = objc_alloc_init(MEMORY[0x1E6984628]);
  v6 = 0;
  v3 = [v2 supportedRecognitionLanguagesAndReturnError:&v6];
  v4 = v6;
  if (v4)
  {
    +[VKAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](VKAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "error == ((void*)0)", "+[VKTextWithTrackingFrameProcessor supportedRecognitionLanguages]", 0, 0, @"Error retrieving supportedRecognitionLanguages: %@", v4);
  }

  return v3;
}

- (VKTextWithTrackingFrameProcessor)init
{
  v8.receiver = self;
  v8.super_class = VKTextWithTrackingFrameProcessor;
  v2 = [(VKFrameProcessor *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(VKTextFrameProcessorConfiguration);
    config = v2->_config;
    v2->_config = v3;

    orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
    recognizedItems = v2->_recognizedItems;
    v2->_recognizedItems = orderedSet;
  }

  return v2;
}

- (void)reset
{
  v6.receiver = self;
  v6.super_class = VKTextWithTrackingFrameProcessor;
  [(VKFrameProcessor *)&v6 reset];
  [(VKFrameProcessor *)self lock];
  request = self->_request;
  self->_request = 0;

  v4 = [(NSMutableOrderedSet *)self->_recognizedItems copy];
  [(NSMutableOrderedSet *)self->_recognizedItems removeAllObjects];
  [(VKFrameProcessor *)self unlock];
  if ([v4 count])
  {
    v5 = objc_alloc_init(VKRecognizedItemFrameProcessorResult);
    [(VKRecognizedItemFrameProcessorResult *)v5 setRemovedItems:v4];
    [(VKTextWithTrackingFrameProcessor *)self sendResult:v5];
  }
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
  configuration = [(VKTextWithTrackingFrameProcessor *)self configuration];
  v6 = [configuration isEqual:configurationCopy];

  if ((v6 & 1) == 0)
  {
    v7 = [configurationCopy copy];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __53__VKTextWithTrackingFrameProcessor_setConfiguration___block_invoke;
    v12 = &unk_1E7BE4768;
    selfCopy = self;
    v14 = v7;
    v8 = v7;
    vk_performWhileLocked(self, &v9);
    [(VKTextWithTrackingFrameProcessor *)self reset:v9];
    [(VKFrameProcessor *)self requestImmediateProcessing];
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
  v6[2] = __53__VKTextWithTrackingFrameProcessor_setResultHandler___block_invoke;
  v6[3] = &unk_1E7BE47B8;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  vk_performWhileLocked(self, v6);
}

void __53__VKTextWithTrackingFrameProcessor_setResultHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 96);
  *(v3 + 96) = v2;
}

- (void)processFrame:(id)frame
{
  frameCopy = frame;
  configuration = [(VKTextWithTrackingFrameProcessor *)self configuration];
  currentConfig = self->_currentConfig;
  self->_currentConfig = configuration;

  self->_dataType = [(VKTextFrameProcessorConfiguration *)self->_currentConfig dataType];
  v7 = [(VKTextWithTrackingFrameProcessor *)self _performRecognitionAndTracking:frameCopy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__VKTextWithTrackingFrameProcessor_processFrame___block_invoke;
  v10[3] = &unk_1E7BE4880;
  v11 = frameCopy;
  v8 = frameCopy;
  v9 = [v7 vk_compactMap:v10];
  [(VKTextWithTrackingFrameProcessor *)self _processResults:v9];
}

VKRecognizedText *__49__VKTextWithTrackingFrameProcessor_processFrame___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [VKRecognizedText alloc];
  v5 = [*(a1 + 32) info];
  v6 = [(VKRecognizedText *)v4 initWithFrameInfo:v5 textBlockObservation:v3];

  return v6;
}

- (void)_processResults:(void *)results
{
  v3 = a2;
  if (results)
  {
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__2;
    v19 = __Block_byref_object_dispose__2;
    array3 = [MEMORY[0x1E695DF70] array];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __52__VKTextWithTrackingFrameProcessor__processResults___block_invoke;
    v10[3] = &unk_1E7BE48A8;
    v10[4] = results;
    v6 = v3;
    v11 = v6;
    v7 = array2;
    v12 = v7;
    v8 = array;
    v13 = v8;
    v14 = &v15;
    vk_performWhileLocked(results, v10);
    v9 = objc_alloc_init(VKRecognizedItemFrameProcessorResult);
    [(VKRecognizedItemFrameProcessorResult *)v9 setAllItems:v6];
    [(VKRecognizedItemFrameProcessorResult *)v9 setAddedItems:v8];
    [(VKRecognizedItemFrameProcessorResult *)v9 setUpdatedItems:v7];
    [(VKRecognizedItemFrameProcessorResult *)v9 setRemovedItems:v16[5]];
    [(VKTextWithTrackingFrameProcessor *)results sendResult:v9];

    _Block_object_dispose(&v15, 8);
  }
}

void __52__VKTextWithTrackingFrameProcessor__processResults___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithOrderedSet:*(*(a1 + 32) + 88)];
  v3 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithArray:*(a1 + 40)];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if ([v2 containsObject:{v9, v15}])
        {
          [*(a1 + 48) addObject:v9];
          [v2 removeObject:v9];
        }

        else
        {
          [*(a1 + 56) addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v10 = [v2 array];
  v11 = *(*(a1 + 64) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = *(a1 + 32);
  v14 = *(v13 + 88);
  *(v13 + 88) = v4;
}

- (void)sendResult:(void *)result
{
  v3 = a2;
  v4 = v3;
  if (result)
  {
    if (!v3)
    {
      [VKAssert handleFailedAssertWithCondition:"result" functionName:"[VKTextWithTrackingFrameProcessor sendResult:]" simulateCrash:0 showAlert:0 format:@"Expecting a non-nil result object."];
    }

    resultHandler = [result resultHandler];
    if (resultHandler)
    {
      resultHandlerQueue = [result resultHandlerQueue];
      if (resultHandlerQueue)
      {
        OUTLINED_FUNCTION_0_1();
        v9[1] = 3221225472;
        v9[2] = __47__VKTextWithTrackingFrameProcessor_sendResult___block_invoke;
        v9[3] = &unk_1E7BE47E0;
        v11 = resultHandler;
        v10 = v4;
        dispatch_async(resultHandlerQueue, v9);
      }

      else
      {
        v7 = OUTLINED_FUNCTION_4();
        v8(v7);
      }
    }
  }
}

- (id)_createRequest
{
  if (self)
  {
    v1 = objc_alloc(MEMORY[0x1E6984628]);
    documentBlockType = [OUTLINED_FUNCTION_1_1() documentBlockType];
    v11 = *MEMORY[0x1E6960CC0];
    v12 = *(MEMORY[0x1E6960CC0] + 16);
    v3 = [v1 initWithFrameAnalysisSpacing:&v11 trackingLevelBlockType:documentBlockType completionHandler:0];
    [v3 setUsesAlternateLineGrouping:{objc_msgSend(OUTLINED_FUNCTION_1_1(), "usesAlternateLineGrouping")}];
    [v3 setUsesLanguageDetection:{objc_msgSend(OUTLINED_FUNCTION_1_1(), "usesLanguageDetection")}];
    [v3 setUsesLanguageCorrection:1];
    [v3 setRecognitionLevel:0];
    customWords = [OUTLINED_FUNCTION_1_1() customWords];
    v5 = [customWords count];

    if (v5)
    {
      customWords2 = [OUTLINED_FUNCTION_1_1() customWords];
      [v3 setCustomWords:customWords2];
    }

    recognitionLanguages = [OUTLINED_FUNCTION_1_1() recognitionLanguages];
    v8 = recognitionLanguages;
    if (!recognitionLanguages || ![recognitionLanguages count])
    {
      preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];

      v8 = preferredLanguages;
    }

    [v3 setRecognitionLanguages:v8];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_performRecognitionAndTracking:(void *)tracking
{
  trackingCopy = tracking;
  v15[1] = *MEMORY[0x1E69E9840];
  if (tracking)
  {
    v3 = a2;
    imageRequestHandler = [v3 imageRequestHandler];
    [trackingCopy lock];
    v5 = trackingCopy[13];
    if (!v5)
    {
      _createRequest = [(VKTextWithTrackingFrameProcessor *)trackingCopy _createRequest];
      v7 = trackingCopy[13];
      trackingCopy[13] = _createRequest;

      v5 = trackingCopy[13];
    }

    v8 = v5;
    [trackingCopy unlock];
    info = [v3 info];

    [info regionOfInterest];
    [v8 setRegionOfInterest:?];

    v15[0] = v8;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v14 = 0;
    [imageRequestHandler performRequests:v10 error:&v14];
    v11 = v14;

    [v8 results];
    objc_claimAutoreleasedReturnValue();
    v12 = OUTLINED_FUNCTION_3_0();
    trackingCopy = [(VKTextWithTrackingFrameProcessor *)v12 _filterDocuments:v10];
  }

  return trackingCopy;
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
      v6 = *(documents + 120);
      if (v6)
      {
        _FilterByDataType(v4, v6);
      }

      else
      {
        _FilterByBlockType(v4, [*(documents + 112) documentBlockType]);
      }
      v7 = ;

      v5 = v7;
    }

    if ([*(documents + 112) isForSingleItem] && objc_msgSend(v5, "count"))
    {
      [*(documents + 112) comparisonPoint];
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