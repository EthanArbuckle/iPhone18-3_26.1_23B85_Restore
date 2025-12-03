@interface VKFrameProvider
- (BOOL)isProcessing;
- (CGRect)regionOfInterest;
- (OS_dispatch_queue)delegateQueue;
- (VKFrameProvider)init;
- (VKFrameProvider)initWithConfiguration:(id)configuration;
- (VKFrameProviderConfiguration)configuration;
- (VKFrameProviderDelegate)delegate;
- (uint64_t)_delegateRespondsToLuminosityChanges;
- (uint64_t)_delegateRespondsToStabilityChanges;
- (void)_commonInit;
- (void)_sendSceneLuminosityChanged;
- (void)_sendSceneStabilityStateChanged;
- (void)registerProcessor:(id)processor;
- (void)resetAllProcessors;
- (void)sendFrame:(id)frame;
- (void)setDelegate:(id)delegate queue:(id)queue;
- (void)setRegionOfInterest:(CGRect)interest;
- (void)startProcessing;
- (void)stopProcessing;
- (void)unregisterProcessor:(id)processor;
@end

@implementation VKFrameProvider

- (VKFrameProvider)init
{
  v7.receiver = self;
  v7.super_class = VKFrameProvider;
  v2 = [(VKFrameProvider *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(VKFrameProvider *)v2 _commonInit];
    v5 = objc_alloc_init(VKFrameProviderConfiguration);
    configuration = v3->_configuration;
    v3->_configuration = v5;
  }

  return v3;
}

- (VKFrameProvider)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v8.receiver = self;
  v8.super_class = VKFrameProvider;
  v5 = [(VKFrameProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(VKFrameProvider *)v5 initWithConfiguration:configurationCopy];
  }

  return v6;
}

- (VKFrameProviderConfiguration)configuration
{
  [(VKFrameProvider *)self lock];
  v3 = [(VKFrameProviderConfiguration *)self->_configuration copy];
  [(VKFrameProvider *)self unlock];

  return v3;
}

- (VKFrameProviderDelegate)delegate
{
  [(VKFrameProvider *)self lock];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [(VKFrameProvider *)self unlock];

  return WeakRetained;
}

- (OS_dispatch_queue)delegateQueue
{
  [(VKFrameProvider *)self lock];
  v3 = self->_delegateQueue;
  [(VKFrameProvider *)self unlock];

  return v3;
}

- (void)setDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v8 = queueCopy;
  if (!delegateCopy)
  {
    [VKAssert handleFailedAssertWithCondition:"delegate != ((void*)0)" functionName:"[VKFrameProvider setDelegate:queue:]" simulateCrash:0 showAlert:0 format:@"Illegal argument. Delegate must not be nil."];
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    [VKAssert handleFailedAssertWithCondition:"queue != ((void*)0)" functionName:"[VKFrameProvider setDelegate:queue:]" simulateCrash:0 showAlert:0 format:@"Illegal argument. Queue must not be nil."];
    goto LABEL_3;
  }

  if (!queueCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __37__VKFrameProvider_setDelegate_queue___block_invoke;
  v11[3] = &unk_1E7BE4718;
  v11[4] = self;
  v12 = delegateCopy;
  v13 = v8;
  v9 = v8;
  v10 = delegateCopy;
  vk_performWhileLocked(self, v11);
}

uint64_t __37__VKFrameProvider_setDelegate_queue___block_invoke(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 16), *(a1 + 40));
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 48));
  *(*(a1 + 32) + 48) = objc_opt_respondsToSelector() & 1;
  result = objc_opt_respondsToSelector();
  *(*(a1 + 32) + 49) = result & 1;
  return result;
}

- (void)registerProcessor:(id)processor
{
  processorCopy = processor;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (processorCopy && ([(NSMutableArray *)selfCopy->_processors containsObject:processorCopy]& 1) == 0)
  {
    [(NSMutableArray *)selfCopy->_processors addObject:processorCopy];
  }

  objc_sync_exit(selfCopy);
}

- (void)unregisterProcessor:(id)processor
{
  processorCopy = processor;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (processorCopy && [(NSMutableArray *)selfCopy->_processors containsObject:processorCopy])
  {
    [(NSMutableArray *)selfCopy->_processors removeObject:processorCopy];
    [processorCopy reset];
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)isProcessing
{
  [(VKFrameProvider *)self lock];
  processing = self->_processing;
  [(VKFrameProvider *)self unlock];
  return processing;
}

- (void)startProcessing
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __34__VKFrameProvider_startProcessing__block_invoke;
  v2[3] = &unk_1E7BE4208;
  v2[4] = self;
  vk_performWhileLocked(self, v2);
}

- (void)stopProcessing
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __33__VKFrameProvider_stopProcessing__block_invoke;
  v3[3] = &unk_1E7BE4208;
  v3[4] = self;
  vk_performWhileLocked(self, v3);
  [(VKFrameProvider *)self resetAllProcessors];
}

- (void)resetAllProcessors
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [(NSMutableArray *)self->_processors copy];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) reset];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (CGRect)regionOfInterest
{
  [(VKFrameProvider *)self lock];
  x = self->_regionOfInterest.origin.x;
  y = self->_regionOfInterest.origin.y;
  width = self->_regionOfInterest.size.width;
  height = self->_regionOfInterest.size.height;
  [(VKFrameProvider *)self unlock];
  v7 = x;
  v8 = y;
  v9 = width;
  v10 = height;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (void)setRegionOfInterest:(CGRect)interest
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __39__VKFrameProvider_setRegionOfInterest___block_invoke;
  v3[3] = &unk_1E7BE5CB0;
  v3[4] = self;
  interestCopy = interest;
  vk_performWhileLocked(self, v3);
}

__n128 __39__VKFrameProvider_setRegionOfInterest___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = *(a1 + 40);
  v3 = *(a1 + 56);
  *(v1 + 80) = result;
  *(v1 + 96) = v3;
  return result;
}

- (void)sendFrame:(id)frame
{
  v33 = *MEMORY[0x1E69E9840];
  frameCopy = frame;
  info = [frameCopy info];
  sceneStability = [info sceneStability];

  sceneStabilityState = self->_sceneStabilityState;
  if (sceneStability != sceneStabilityState)
  {
    self->_sceneStabilityState = sceneStability;
    [(VKFrameProvider *)self _sendSceneStabilityStateChanged];
  }

  info2 = [frameCopy info];
  [info2 luminosity];
  v10 = v9;

  if (vabdd_f64(v10, self->_sceneLuminosity) >= 0.01)
  {
    self->_sceneLuminosity = v10;
    [(VKFrameProvider *)self _sendSceneLuminosityChanged];
  }

  if ([(VKFrameProvider *)self isProcessing])
  {
    v11 = [(NSMutableArray *)self->_processors copy];
    v12 = v11;
    if (sceneStability == 1)
    {
      if (sceneStabilityState == 1)
      {
LABEL_24:

        goto LABEL_25;
      }

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v13 = v11;
      v14 = [v13 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v28;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v28 != v16)
            {
              objc_enumerationMutation(v13);
            }

            [*(*(&v27 + 1) + 8 * i) reset];
          }

          v15 = [v13 countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v15);
      }
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v18 = v11;
      v19 = [v18 countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v24;
        do
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v24 != v21)
            {
              objc_enumerationMutation(v18);
            }

            [*(*(&v23 + 1) + 8 * j) enqueueFrame:{frameCopy, v23}];
          }

          v20 = [v18 countByEnumeratingWithState:&v23 objects:v31 count:16];
        }

        while (v20);
      }
    }

    goto LABEL_24;
  }

LABEL_25:
}

- (void)_sendSceneStabilityStateChanged
{
  OUTLINED_FUNCTION_0_4(self, a2);
  *(v8 + 8) = 3221225472;
  *(v8 + 16) = __50__VKFrameProvider__sendSceneStabilityStateChanged__block_invoke;
  *(v8 + 24) = &unk_1E7BE4348;
  objc_copyWeak((v8 + 32), v9);
  *(a2 + 40) = a4;
  dispatch_async(self, a2);

  objc_destroyWeak((a2 + 32));
  objc_destroyWeak(a3);
}

- (void)_sendSceneLuminosityChanged
{
  OUTLINED_FUNCTION_0_4(self, a2);
  *(v8 + 8) = 3221225472;
  *(v8 + 16) = __46__VKFrameProvider__sendSceneLuminosityChanged__block_invoke;
  *(v8 + 24) = &unk_1E7BE4348;
  objc_copyWeak((v8 + 32), v9);
  *(a2 + 40) = a4;
  dispatch_async(self, a2);

  objc_destroyWeak((a2 + 32));
  objc_destroyWeak(a3);
}

void __50__VKFrameProvider__sendSceneStabilityStateChanged__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained delegate];
    [v3 frameProvider:v4 didChangeSceneStabilityState:*(a1 + 40)];

    WeakRetained = v4;
  }
}

void __46__VKFrameProvider__sendSceneLuminosityChanged__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained delegate];
    [v3 frameProvider:v4 didChangeSceneLuminosity:*(a1 + 40)];

    WeakRetained = v4;
  }
}

- (void)_commonInit
{
  if (self)
  {
    *(self + 8) = 0;
    objc_storeStrong((self + 24), MEMORY[0x1E69E96A0]);
    array = [MEMORY[0x1E695DF70] array];
    v3 = *(self + 32);
    *(self + 32) = array;
  }
}

- (uint64_t)_delegateRespondsToStabilityChanges
{
  if (self)
  {
    [self lock];
    v2 = self[48];
    [self unlock];
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (uint64_t)_delegateRespondsToLuminosityChanges
{
  if (self)
  {
    [self lock];
    v2 = self[49];
    [self unlock];
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (void)initWithConfiguration:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  [(VKFrameProvider *)a1 _commonInit];
  if (a2)
  {
    v4 = [a2 copy];
  }

  else
  {
    v4 = objc_alloc_init(VKFrameProviderConfiguration);
  }

  v5 = *(a1 + 40);
  *(a1 + 40) = v4;
}

@end