@interface SCWOperationThrottler
- (BOOL)suspended;
- (SCWOperationThrottler)initWithDelegate:(id)a3;
- (SCWOperationThrottler)initWithDelegate:(id)a3 updateQueue:(id)a4;
- (void)dealloc;
- (void)setSuspended:(BOOL)a3;
- (void)tickleWithCompletion:(id)a3;
@end

@implementation SCWOperationThrottler

- (SCWOperationThrottler)initWithDelegate:(id)a3
{
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_BACKGROUND, 0);
  v7 = a3;
  v8 = dispatch_queue_create(0, v6);
  v9 = [(SCWOperationThrottler *)self initWithDelegate:v7 updateQueue:v8];

  return v9;
}

- (SCWOperationThrottler)initWithDelegate:(id)a3 updateQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v30.receiver = self;
  v30.super_class = SCWOperationThrottler;
  v8 = [(SCWOperationThrottler *)&v30 init];
  v9 = v8;
  if (v8)
  {
    if (v6)
    {
      objc_initWeak(&location, v8);
      objc_initWeak(&from, v6);
      v10 = dispatch_group_create();
      objc_storeStrong(&v9->_handlerSynchronizationGroup, v10);
      objc_storeStrong(&v9->_serialQueue, a4);
      v11 = dispatch_source_create(MEMORY[0x1E69E96B8], 0, 0, v7);
      dispatchSource = v9->_dispatchSource;
      v9->_dispatchSource = v11;
      v13 = v11;

      objc_initWeak(&v27, v13);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __54__SCWOperationThrottler_initWithDelegate_updateQueue___block_invoke;
      handler[3] = &unk_1E85E4188;
      v14 = v10;
      v22 = v14;
      objc_copyWeak(&v24, &from);
      objc_copyWeak(&v25, &location);
      objc_copyWeak(&v26, &v27);
      v15 = v7;
      v23 = v15;
      dispatch_source_set_event_handler(v13, handler);
      dispatch_group_enter(v14);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __54__SCWOperationThrottler_initWithDelegate_updateQueue___block_invoke_5;
      v18[3] = &unk_1E85E3448;
      v19 = v15;
      v20 = v14;
      v16 = v14;
      dispatch_source_set_cancel_handler(v13, v18);
      dispatch_resume(v13);

      objc_destroyWeak(&v26);
      objc_destroyWeak(&v25);
      objc_destroyWeak(&v24);

      objc_destroyWeak(&v27);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }

    else
    {

      v9 = 0;
    }
  }

  return v9;
}

void __54__SCWOperationThrottler_initWithDelegate_updateQueue___block_invoke(uint64_t a1)
{
  dispatch_group_leave(*(a1 + 32));
  dispatch_group_enter(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 48));

  if (WeakRetained)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __54__SCWOperationThrottler_initWithDelegate_updateQueue___block_invoke_2;
    v4[3] = &unk_1E85E4160;
    objc_copyWeak(&v6, (a1 + 56));
    objc_copyWeak(&v7, (a1 + 64));
    v5 = *(a1 + 40);
    v3 = objc_loadWeakRetained((a1 + 48));
    __54__SCWOperationThrottler_initWithDelegate_updateQueue___block_invoke_2(v4, v3);

    objc_destroyWeak(&v7);
    objc_destroyWeak(&v6);
  }
}

void __54__SCWOperationThrottler_initWithDelegate_updateQueue___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 5);

  if (WeakRetained)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __54__SCWOperationThrottler_initWithDelegate_updateQueue___block_invoke_3;
    v6[3] = &unk_1E85E4138;
    v7 = v3;
    objc_copyWeak(&v9, a1 + 6);
    v8 = a1[4];
    v5 = objc_loadWeakRetained(a1 + 5);
    __54__SCWOperationThrottler_initWithDelegate_updateQueue___block_invoke_3(v6, v5);

    objc_destroyWeak(&v9);
  }
}

void __54__SCWOperationThrottler_initWithDelegate_updateQueue___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) operationThrottlerPerformOperation:v3];
  }

  else if (objc_opt_respondsToSelector())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    dispatch_suspend(WeakRetained);
    dispatch_suspend(*(a1 + 40));
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__SCWOperationThrottler_initWithDelegate_updateQueue___block_invoke_4;
    v8[3] = &unk_1E85E3448;
    v9 = WeakRetained;
    v6 = *(a1 + 32);
    v10 = *(a1 + 40);
    v7 = WeakRetained;
    [v6 operationThrottler:v3 performAsyncOperationWithCompletion:v8];
  }
}

void __54__SCWOperationThrottler_initWithDelegate_updateQueue___block_invoke_4(uint64_t a1)
{
  dispatch_resume(*(a1 + 32));
  v2 = *(a1 + 40);

  dispatch_resume(v2);
}

void __54__SCWOperationThrottler_initWithDelegate_updateQueue___block_invoke_5(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__SCWOperationThrottler_initWithDelegate_updateQueue___block_invoke_6;
  block[3] = &unk_1E85E3640;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

- (void)dealloc
{
  dispatch_source_cancel(self->_dispatchSource);
  v3.receiver = self;
  v3.super_class = SCWOperationThrottler;
  [(SCWOperationThrottler *)&v3 dealloc];
}

- (void)tickleWithCompletion:(id)a3
{
  if (a3)
  {
    dispatch_group_notify(self->_handlerSynchronizationGroup, self->_serialQueue, a3);
  }

  dispatchSource = self->_dispatchSource;

  dispatch_source_merge_data(dispatchSource, 1uLL);
}

- (BOOL)suspended
{
  v2 = self;
  objc_sync_enter(v2);
  suspended = v2->_suspended;
  objc_sync_exit(v2);

  return suspended;
}

- (void)setSuspended:(BOOL)a3
{
  v3 = a3;
  obj = self;
  objc_sync_enter(obj);
  v4 = obj;
  if (obj->_suspended != v3)
  {
    obj->_suspended = v3;
    dispatchSource = obj->_dispatchSource;
    if (v3)
    {
      dispatch_suspend(dispatchSource);
    }

    else
    {
      dispatch_resume(dispatchSource);
    }

    v4 = obj;
  }

  objc_sync_exit(v4);
}

@end