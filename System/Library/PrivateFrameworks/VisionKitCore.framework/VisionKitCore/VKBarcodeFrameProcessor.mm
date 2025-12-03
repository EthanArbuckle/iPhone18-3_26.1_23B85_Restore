@interface VKBarcodeFrameProcessor
- (VKBarcodeFrameProcessor)init;
- (VKBarcodeFrameProcessorConfiguration)configuration;
- (__n128)warpTransform;
- (id)_barcodeRequest;
- (id)_performRecognition:(uint64_t)recognition;
- (id)resultHandler;
- (void)_performAssociation:(void *)association;
- (void)_processRecognitionResults:(void *)results forFrame:;
- (void)_removeAllItems;
- (void)applyWarpTransform:(__n128)transform;
- (void)processFrame:(id)frame;
- (void)reset;
- (void)sendResult:(void *)result;
- (void)setConfiguration:(id)configuration;
- (void)setResultHandler:(id)handler;
- (void)setWarpTransform:(uint64_t)transform;
@end

@implementation VKBarcodeFrameProcessor

- (VKBarcodeFrameProcessor)init
{
  v10.receiver = self;
  v10.super_class = VKBarcodeFrameProcessor;
  v2 = [(VKFrameProcessor *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(VKBarcodeFrameProcessorConfiguration);
    config = v2->_config;
    v2->_config = v3;

    v5 = MEMORY[0x1E69E9B10];
    v6 = *(MEMORY[0x1E69E9B10] + 16);
    *v2->_anon_50 = *MEMORY[0x1E69E9B10];
    *&v2->_anon_50[16] = v6;
    *&v2->_anon_50[32] = *(v5 + 32);
    array = [MEMORY[0x1E695DF70] array];
    recognizedItems = v2->_recognizedItems;
    v2->_recognizedItems = array;
  }

  return v2;
}

- (VKBarcodeFrameProcessorConfiguration)configuration
{
  [(VKFrameProcessor *)self lock];
  v3 = [(VKBarcodeFrameProcessorConfiguration *)self->_config copy];
  [(VKFrameProcessor *)self unlock];

  return v3;
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  configuration = [(VKBarcodeFrameProcessor *)self configuration];
  v6 = [configuration isEqual:configurationCopy];

  if ((v6 & 1) == 0)
  {
    v7 = [configurationCopy copy];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __44__VKBarcodeFrameProcessor_setConfiguration___block_invoke;
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
  v6[2] = __44__VKBarcodeFrameProcessor_setResultHandler___block_invoke;
  v6[3] = &unk_1E7BE47B8;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  vk_performWhileLocked(self, v6);
}

void __44__VKBarcodeFrameProcessor_setResultHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 136);
  *(v3 + 136) = v2;
}

- (void)applyWarpTransform:(__n128)transform
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__18;
  v16 = __Block_byref_object_dispose__18;
  v17 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__VKBarcodeFrameProcessor_applyWarpTransform___block_invoke;
  v6[3] = &unk_1E7BE4808;
  v7 = a2;
  transformCopy = transform;
  v9 = a4;
  selfCopy = self;
  v11 = &v12;
  vk_performWhileLocked(self, v6);
  v5 = objc_alloc_init(VKRecognizedItemFrameProcessorResult);
  [(VKRecognizedItemFrameProcessorResult *)v5 setAllItems:v13[5]];
  [(VKRecognizedItemFrameProcessorResult *)v5 setAddedItems:MEMORY[0x1E695E0F0]];
  [(VKRecognizedItemFrameProcessorResult *)v5 setUpdatedItems:v13[5]];
  [(VKRecognizedItemFrameProcessorResult *)v5 setRemovedItems:MEMORY[0x1E695E0F0]];
  [(VKBarcodeFrameProcessor *)self sendResult:v5];

  _Block_object_dispose(&v12, 8);
}

void __46__VKBarcodeFrameProcessor_applyWarpTransform___block_invoke(uint64_t a1)
{
  v2 = 0;
  v29 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 80) + 80;
  v4 = *v3;
  v5 = *(*(a1 + 80) + 96);
  v6 = *(*(a1 + 80) + 112);
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
  *(v3 + 40) = DWORD2(v11);
  *(v3 + 16) = v10;
  *(v3 + 32) = v11;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = *(*(a1 + 80) + 128);
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v20 + 1) + 8 * v16++) applyHomographyWarpTransform:{*(a1 + 32), *(a1 + 48), *(a1 + 64), v20}];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v14);
  }

  v17 = [*(*(a1 + 80) + 128) copy];
  v18 = *(*(a1 + 88) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;
}

__n128 __44__VKBarcodeFrameProcessor_setWarpTransform___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 80) + 80;
  v3 = *(a1 + 48);
  result = *(a1 + 64);
  *v1 = *(a1 + 32);
  *(v1 + 16) = v3;
  *(v1 + 32) = result;
  return result;
}

- (void)processFrame:(id)frame
{
  frameCopy = frame;
  configuration = [(VKBarcodeFrameProcessor *)self configuration];
  currentConfig = self->_currentConfig;
  self->_currentConfig = configuration;

  v7 = [(VKBarcodeFrameProcessor *)self _performRecognition:frameCopy];
  [(VKBarcodeFrameProcessor *)self _processRecognitionResults:v7 forFrame:frameCopy];
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = VKBarcodeFrameProcessor;
  [(VKFrameProcessor *)&v3 reset];
  [(VKBarcodeFrameProcessor *)&self->super.super.isa _removeAllItems];
}

- (void)_performAssociation:(void *)association
{
  v3 = a2;
  if (association)
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__18;
    v37 = __Block_byref_object_dispose__18;
    array = [MEMORY[0x1E695DF70] array];
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__18;
    v31 = __Block_byref_object_dispose__18;
    array2 = [MEMORY[0x1E695DF70] array];
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__18;
    v25 = __Block_byref_object_dispose__18;
    v26 = 0;
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__18;
    v19 = __Block_byref_object_dispose__18;
    array3 = [MEMORY[0x1E695DF70] array];
    v5 = MEMORY[0x1E69E9820];
    v6 = 3221225472;
    v7 = __47__VKBarcodeFrameProcessor__performAssociation___block_invoke;
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
    [(VKBarcodeFrameProcessor *)association sendResult:v4];

    _Block_object_dispose(&v15, 8);
    _Block_object_dispose(&v21, 8);

    _Block_object_dispose(&v27, 8);
    _Block_object_dispose(&v33, 8);
  }
}

uint64_t __47__VKBarcodeFrameProcessor__performAssociation___block_invoke(uint64_t a1)
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
        if (![*(*(a1 + 40) + 128) count])
        {
          goto LABEL_13;
        }

        v8 = 0;
        while (1)
        {
          v9 = [*(*(a1 + 40) + 128) objectAtIndexedSubscript:v8];
          if ([v9 shouldAssociateWithItem:v7])
          {
            break;
          }

          if (++v8 >= [*(*(a1 + 40) + 128) count])
          {
            goto LABEL_13;
          }
        }

        if (v9)
        {
          [v9 associateWithItem:v7];
          [*(*(*(a1 + 48) + 8) + 40) addObject:v9];
          [*(*(*(a1 + 56) + 8) + 40) addObject:v9];
          [*(*(a1 + 40) + 128) removeObjectAtIndex:v8];
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

  v10 = [*(*(a1 + 40) + 128) copy];
  v11 = *(*(a1 + 72) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  [*(*(a1 + 40) + 128) removeAllObjects];
  return [*(*(a1 + 40) + 128) addObjectsFromArray:*(*(*(a1 + 56) + 8) + 40)];
}

- (void)sendResult:(void *)result
{
  v3 = a2;
  v4 = v3;
  if (result)
  {
    if (!v3)
    {
      [VKAssert handleFailedAssertWithCondition:"result" functionName:"[VKBarcodeFrameProcessor sendResult:]" simulateCrash:0 showAlert:0 format:@"Expecting a non-nil result object."];
    }

    resultHandler = [result resultHandler];
    if (resultHandler)
    {
      resultHandlerQueue = [result resultHandlerQueue];
      if (resultHandlerQueue)
      {
        OUTLINED_FUNCTION_0_1();
        v7[1] = 3221225472;
        v7[2] = __38__VKBarcodeFrameProcessor_sendResult___block_invoke;
        v7[3] = &unk_1E7BE47E0;
        v9 = resultHandler;
        v8 = v4;
        dispatch_async(resultHandlerQueue, v7);
      }

      else
      {
        (resultHandler)[2](resultHandler, v4);
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
  v3 = self[5];
  [self unlock];
  return v3;
}

- (void)setWarpTransform:(uint64_t)transform
{
  if (transform)
  {
    OUTLINED_FUNCTION_0_1();
    v5[1] = 3221225472;
    v5[2] = __44__VKBarcodeFrameProcessor_setWarpTransform___block_invoke;
    v5[3] = &unk_1E7BE4830;
    v9 = v1;
    v6 = v2;
    v7 = v3;
    v8 = v4;
    vk_performWhileLocked(v1, v5);
  }
}

- (id)_performRecognition:(uint64_t)recognition
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (recognition)
  {
    v3 = a2;
    [VKBarcodeFrameProcessor setWarpTransform:recognition];
    _barcodeRequest = [(VKBarcodeFrameProcessor *)recognition _barcodeRequest];
    info = [v3 info];
    [info regionOfInterest];
    [_barcodeRequest setRegionOfInterest:?];

    imageRequestHandler = [v3 imageRequestHandler];

    v19[0] = _barcodeRequest;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v15 = 0;
    [imageRequestHandler performRequests:v7 error:&v15];
    v8 = v15;

    if (v8)
    {
      v9 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.UtilityCamera");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v8;
        _os_log_error_impl(&dword_1B4335000, v9, OS_LOG_TYPE_ERROR, "Error performing recognition request. %@", buf, 0xCu);
      }

      results = MEMORY[0x1E695E0F0];
    }

    else
    {
      results = [_barcodeRequest results];
      if (![*(recognition + 144) isForSingleItem] || !objc_msgSend(results, "count"))
      {
        goto LABEL_10;
      }

      [*(recognition + 144) comparisonPoint];
      v9 = VKVNRectClosestToPoint(results, v11, v12);
      v16 = v9;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];

      results = v13;
    }

LABEL_10:
    goto LABEL_11;
  }

  results = 0;
LABEL_11:

  return results;
}

- (void)_processRecognitionResults:(void *)results forFrame:
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  resultsCopy = results;
  if (self && ([self isCancelled] & 1) == 0)
  {
    v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    [self lock];
    v19 = self[6];
    v20 = self[5];
    v18 = self[7];
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
          v14 = [VKRecognizedBarcode alloc];
          info = [resultsCopy info];
          v16 = [(VKRecognizedBarcode *)v14 initWithFrameInfo:info barcodeObservation:v13];

          [(VKRecognizedItem *)v16 applyHomographyWarpTransform:*&v20, *&v19, *&v18];
          [v7 addObject:v16];
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }

    [(VKBarcodeFrameProcessor *)selfCopy _performAssociation:v7];
  }
}

- (void)_removeAllItems
{
  if (self)
  {
    [self lock];
    v3 = [self[16] copy];
    [self[16] removeAllObjects];
    [self unlock];
    if ([v3 count])
    {
      v2 = objc_alloc_init(VKRecognizedItemFrameProcessorResult);
      [(VKRecognizedItemFrameProcessorResult *)v2 setRemovedItems:v3];
      [(VKBarcodeFrameProcessor *)self sendResult:v2];
    }
  }
}

- (id)_barcodeRequest
{
  if (self)
  {
    v2 = objc_alloc_init(MEMORY[0x1E69844A0]);
    symbologies = [*(self + 144) symbologies];
    [v2 setSymbologies:symbologies];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end