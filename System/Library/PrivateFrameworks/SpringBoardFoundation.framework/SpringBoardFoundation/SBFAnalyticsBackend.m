@interface SBFAnalyticsBackend
+ (id)sharedInstance;
- (BOOL)handleEvent:(unint64_t)a3 withContext:(id)a4;
- (SBFAnalyticsBackend)init;
- (void)registerEventHandler:(id)a3;
- (void)registerForQueryName:(unint64_t)a3 handler:(id)a4;
- (void)registerSynchronousEventHandler:(id)a3;
- (void)stateForQueryName:(unint64_t)a3 completion:(id)a4;
@end

@implementation SBFAnalyticsBackend

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[SBFAnalyticsBackend sharedInstance];
  }

  v3 = sharedInstance___backend;

  return v3;
}

uint64_t __37__SBFAnalyticsBackend_sharedInstance__block_invoke()
{
  sharedInstance___backend = objc_alloc_init(SBFAnalyticsBackend);

  return MEMORY[0x1EEE66BB8]();
}

- (SBFAnalyticsBackend)init
{
  v14.receiver = self;
  v14.super_class = SBFAnalyticsBackend;
  v2 = [(SBFAnalyticsBackend *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    asyncEventHandlers = v2->_asyncEventHandlers;
    v2->_asyncEventHandlers = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    syncEventHandlers = v2->_syncEventHandlers;
    v2->_syncEventHandlers = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    stateQueryHandlers = v2->_stateQueryHandlers;
    v2->_stateQueryHandlers = v7;

    v9 = dispatch_queue_create("com.apple.springboard.analytics.statequery", 0);
    queryHandlerQueue = v2->_queryHandlerQueue;
    v2->_queryHandlerQueue = v9;

    v11 = dispatch_queue_create("com.apple.springboard.analytics.eventhandling", 0);
    asyncHandlerQueue = v2->_asyncHandlerQueue;
    v2->_asyncHandlerQueue = v11;
  }

  return v2;
}

- (void)registerEventHandler:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"don't be a jerk" userInfo:0];
    objc_exception_throw(v7);
  }

  asyncHandlerQueue = self->_asyncHandlerQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__SBFAnalyticsBackend_registerEventHandler___block_invoke;
  v8[3] = &unk_1E807F290;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  dispatch_async(asyncHandlerQueue, v8);
}

- (void)registerSynchronousEventHandler:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"don't be a jerk" userInfo:0];
    objc_exception_throw(v5);
  }

  v6 = v4;
  [(NSMutableArray *)self->_syncEventHandlers addObject:v4];
}

- (BOOL)handleEvent:(unint64_t)a3 withContext:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = self->_syncEventHandlers;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v18 + 1) + 8 * v11++) handleEvent:a3 withContext:v6];
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  asyncHandlerQueue = self->_asyncHandlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__SBFAnalyticsBackend_handleEvent_withContext___block_invoke;
  block[3] = &unk_1E807F510;
  v16 = v6;
  v17 = a3;
  block[4] = self;
  v13 = v6;
  dispatch_async(asyncHandlerQueue, block);

  return 1;
}

void __47__SBFAnalyticsBackend_handleEvent_withContext___block_invoke(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1[4] + 8);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) handleEvent:a1[6] withContext:{a1[5], v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)registerForQueryName:(unint64_t)a3 handler:(id)a4
{
  v6 = a4;
  queryHandlerQueue = self->_queryHandlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__SBFAnalyticsBackend_registerForQueryName_handler___block_invoke;
  block[3] = &unk_1E807F538;
  v11 = v6;
  v12 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(queryHandlerQueue, block);
  v9 = NSStringFromAnalyticsQueryName();
  AnalyticsSetCallbackForQueriedEventWithQueue();
}

void __52__SBFAnalyticsBackend_registerForQueryName_handler___block_invoke(void *a1)
{
  v2 = *(a1[4] + 24);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1[6]];
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"state query handler already registered for name" userInfo:0];
    objc_exception_throw(v7);
  }

  v5 = *(a1[4] + 24);
  v8 = MEMORY[0x1BFB4D9B0](a1[5]);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1[6]];
  [v5 setObject:v8 forKey:v6];
}

- (void)stateForQueryName:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  queryHandlerQueue = self->_queryHandlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__SBFAnalyticsBackend_stateForQueryName_completion___block_invoke;
  block[3] = &unk_1E807F538;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(queryHandlerQueue, block);
}

void __52__SBFAnalyticsBackend_stateForQueryName_completion___block_invoke(void *a1)
{
  v2 = *(a1[4] + 24);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1[6]];
  v5 = [v2 objectForKey:v3];

  if (v5)
  {
    v4 = v5[2]();
    (*(a1[5] + 16))();
  }

  else
  {
    (*(a1[5] + 16))();
  }
}

@end