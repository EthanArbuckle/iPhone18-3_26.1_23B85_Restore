@interface _PASDispatch
+ (id)autoreleasingSerialQueueWithLabel:(const char *)a3;
+ (unint64_t)dispatchTimeWithSecondsFromNow:(double)a3;
+ (unsigned)waitForBlock:(id)a3 timeoutSeconds:(double)a4;
+ (unsigned)waitForGroup:(id)a3 timeoutSeconds:(double)a4;
+ (unsigned)waitForSemaphore:(id)a3 timeoutSeconds:(double)a4;
+ (void)notifyGroup:(id)a3 onQueue:(id)a4 withTimeout:(double)a5 block:(id)a6;
+ (void)runAsyncOnQueue:(id)a3 afterDelaySeconds:(double)a4 block:(id)a5;
+ (void)runSyncOnMainThreadWithBlock:(id)a3;
+ (void)waitForBlock:(id)a3;
+ (void)waitForBlock:(id)a3 timeoutSeconds:(double)a4 onBlockComplete:(id)a5 onTimeout:(id)a6;
+ (void)waitForGroup:(id)a3;
+ (void)waitForGroup:(id)a3 timeoutSeconds:(double)a4 onGroupComplete:(id)a5 onTimeout:(id)a6;
+ (void)waitForSemaphore:(id)a3;
+ (void)waitForSemaphore:(id)a3 timeoutSeconds:(double)a4 onAcquire:(id)a5 onTimeout:(id)a6;
@end

@implementation _PASDispatch

+ (void)notifyGroup:(id)a3 onQueue:(id)a4 withTimeout:(double)a5 block:(id)a6
{
  v9 = a6;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = __Block_byref_object_copy__3272;
  v36[4] = __Block_byref_object_dispose__3273;
  v10 = a4;
  v11 = a3;
  v37 = objc_opt_new();
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v35 = 0;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy__1;
  v32[4] = __Block_byref_object_dispose__2;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __54___PASDispatch_notifyGroup_onQueue_withTimeout_block___block_invoke;
  v29[3] = &unk_1E77F2400;
  v30 = v9;
  v31 = v34;
  v12 = v9;
  v33 = MEMORY[0x1AC566DD0](v29);
  v23 = 0;
  v24 = &v23;
  v25 = 0x3042000000;
  v26 = __Block_byref_object_copy__3;
  v27 = __Block_byref_object_dispose__4;
  v28 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54___PASDispatch_notifyGroup_onQueue_withTimeout_block___block_invoke_5;
  block[3] = &unk_1E77F2428;
  block[4] = v36;
  block[5] = v32;
  block[6] = &v23;
  v13 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, block);
  dispatch_group_notify(v11, v10, v13);

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __54___PASDispatch_notifyGroup_onQueue_withTimeout_block___block_invoke_2;
  v17[3] = &unk_1E77F2450;
  v20 = v34;
  v21 = v32;
  v18 = v13;
  v19 = v36;
  v14 = v13;
  v15 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, v17);
  objc_storeWeak(v24 + 5, v15);
  v16 = dispatch_time(0, (a5 * 1000000000.0));
  dispatch_after(v16, v10, v15);

  _Block_object_dispose(&v23, 8);
  objc_destroyWeak(&v28);
  _Block_object_dispose(v32, 8);

  _Block_object_dispose(v34, 8);
  _Block_object_dispose(v36, 8);
}

+ (id)autoreleasingSerialQueueWithLabel:(const char *)a3
{
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_create(a3, v4);

  return v5;
}

+ (void)runSyncOnMainThreadWithBlock:(id)a3
{
  v3 = MEMORY[0x1E696AF00];
  block = a3;
  if ([v3 isMainThread])
  {
    block[2]();
  }

  else
  {
    dispatch_sync(MEMORY[0x1E69E96A0], block);
  }
}

+ (void)runAsyncOnQueue:(id)a3 afterDelaySeconds:(double)a4 block:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = v7;
  v10 = MEMORY[0x1AC566DD0](v8);
  v11 = v9;
  v12 = MEMORY[0x1AC566DD0](v10);
  v13 = v12;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _PASRunAsyncOnQueueWithArgs(struct _PASRunAsyncOnQueueArgs)"];
    [v15 handleFailureInFunction:v16 file:@"_PASDispatchInline.h" lineNumber:152 description:{@"Invalid parameter not satisfying: %@", @"args.queue"}];

    if (v13)
    {
      goto LABEL_3;
    }
  }

  v17 = [MEMORY[0x1E696AAA8] currentHandler];
  v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _PASRunAsyncOnQueueWithArgs(struct _PASRunAsyncOnQueueArgs)"];
  [v17 handleFailureInFunction:v18 file:@"_PASDispatchInline.h" lineNumber:153 description:{@"Invalid parameter not satisfying: %@", @"args.block"}];

LABEL_3:
  if (a4 <= 0.0)
  {
    v14 = 0;
LABEL_9:
    dispatch_after(v14, v11, v13);
    goto LABEL_10;
  }

  if (a4 <= 9223372040.0)
  {
    v14 = dispatch_time(0, (a4 * 1000000000.0));
    if (v14 != -1)
    {
      goto LABEL_9;
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Warning: _PASDispatch:runAsyncOnQueue:afterDelaySeconds:block: suppressing call-after-DISPATCH_TIME_FOREVER.", buf, 2u);
  }

LABEL_10:
}

+ (void)waitForBlock:(id)a3 timeoutSeconds:(double)a4 onBlockComplete:(id)a5 onTimeout:(id)a6
{
  v23 = a3;
  v9 = a5;
  v10 = a6;
  v11 = MEMORY[0x1AC566DD0](v23);
  v12 = MEMORY[0x1AC566DD0](v9);
  v13 = MEMORY[0x1AC566DD0](v10);
  v14 = MEMORY[0x1AC566DD0](v11);
  v15 = MEMORY[0x1AC566DD0](v12);
  v16 = MEMORY[0x1AC566DD0](v13);
  if (!v14)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _PASWaitForBlockWithArgs(struct _PASWaitForBlockArgs)"];
    [v21 handleFailureInFunction:v22 file:@"_PASDispatchInline.h" lineNumber:132 description:{@"Invalid parameter not satisfying: %@", @"args.block"}];
  }

  v17 = v14;
  if (a4 <= 0.0)
  {
    v18 = 0;
  }

  else if (a4 <= 9223372040.0)
  {
    v18 = dispatch_time(0, (a4 * 1000000000.0));
  }

  else
  {
    v18 = -1;
  }

  v19 = dispatch_block_wait(v17, v18);

  if (!v19)
  {
    v20 = v15;
    if (!v15)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v20 = v16;
  if (v16)
  {
LABEL_12:
    v20[2]();
  }

LABEL_13:
}

+ (unsigned)waitForBlock:(id)a3 timeoutSeconds:(double)a4
{
  v5 = a3;
  if (a4 <= 0.0)
  {
    v6 = 0;
  }

  else if (a4 <= 9223372040.0)
  {
    v6 = dispatch_time(0, (a4 * 1000000000.0));
  }

  else
  {
    v6 = -1;
  }

  v7 = dispatch_block_wait(v5, v6) != 0;

  return v7;
}

+ (void)waitForBlock:(id)a3
{
  if (dispatch_block_wait(a3, 0xFFFFFFFFFFFFFFFFLL))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _PASWaitForeverForBlock(dispatch_block_t  _Nonnull __strong)"];
    [v4 handleFailureInFunction:v3 file:@"_PASDispatchInline.h" lineNumber:112 description:@"Unexpected failure on unlimited dispatch_block_wait()"];
  }
}

+ (void)waitForGroup:(id)a3 timeoutSeconds:(double)a4 onGroupComplete:(id)a5 onTimeout:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v23 = v9;
  v12 = MEMORY[0x1AC566DD0](v10);
  v13 = MEMORY[0x1AC566DD0](v11);
  v14 = v23;
  v15 = MEMORY[0x1AC566DD0](v12);
  v16 = MEMORY[0x1AC566DD0](v13);
  if (!v14)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _PASWaitForGroupWithArgs(struct _PASWaitForGroupArgs)"];
    [v20 handleFailureInFunction:v21 file:@"_PASDispatchInline.h" lineNumber:96 description:{@"Invalid parameter not satisfying: %@", @"args.group"}];
  }

  group = v14;
  if (a4 <= 0.0)
  {
    v17 = 0;
  }

  else if (a4 <= 9223372040.0)
  {
    v17 = dispatch_time(0, (a4 * 1000000000.0));
  }

  else
  {
    v17 = -1;
  }

  v18 = dispatch_group_wait(group, v17);

  if (!v18)
  {
    v19 = v15;
    if (!v15)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v19 = v16;
  if (v16)
  {
LABEL_12:
    v19[2]();
  }

LABEL_13:
}

+ (unsigned)waitForGroup:(id)a3 timeoutSeconds:(double)a4
{
  v5 = a3;
  if (a4 <= 0.0)
  {
    v6 = 0;
  }

  else if (a4 <= 9223372040.0)
  {
    v6 = dispatch_time(0, (a4 * 1000000000.0));
  }

  else
  {
    v6 = -1;
  }

  v7 = dispatch_group_wait(v5, v6) != 0;

  return v7;
}

+ (void)waitForGroup:(id)a3
{
  if (dispatch_group_wait(a3, 0xFFFFFFFFFFFFFFFFLL))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _PASWaitForeverForGroup(dispatch_group_t  _Nonnull __strong)"];
    [v4 handleFailureInFunction:v3 file:@"_PASDispatchInline.h" lineNumber:76 description:@"Unexpected failure on unlimited dispatch_group_wait()"];
  }
}

+ (void)waitForSemaphore:(id)a3 timeoutSeconds:(double)a4 onAcquire:(id)a5 onTimeout:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v23 = v9;
  v12 = MEMORY[0x1AC566DD0](v10);
  v13 = MEMORY[0x1AC566DD0](v11);
  v14 = v23;
  v15 = MEMORY[0x1AC566DD0](v12);
  v16 = MEMORY[0x1AC566DD0](v13);
  if (!v14)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _PASWaitForSemaphoreWithArgs(struct _PASWaitForSemaphoreArgs)"];
    [v20 handleFailureInFunction:v21 file:@"_PASDispatchInline.h" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"args.semaphore"}];
  }

  dsema = v14;
  if (a4 <= 0.0)
  {
    v17 = 0;
  }

  else if (a4 <= 9223372040.0)
  {
    v17 = dispatch_time(0, (a4 * 1000000000.0));
  }

  else
  {
    v17 = -1;
  }

  v18 = dispatch_semaphore_wait(dsema, v17);

  if (!v18)
  {
    v19 = v15;
    if (!v15)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v19 = v16;
  if (v16)
  {
LABEL_12:
    v19[2]();
  }

LABEL_13:
}

+ (unsigned)waitForSemaphore:(id)a3 timeoutSeconds:(double)a4
{
  v5 = a3;
  if (a4 <= 0.0)
  {
    v6 = 0;
  }

  else if (a4 <= 9223372040.0)
  {
    v6 = dispatch_time(0, (a4 * 1000000000.0));
  }

  else
  {
    v6 = -1;
  }

  v7 = dispatch_semaphore_wait(v5, v6) != 0;

  return v7;
}

+ (void)waitForSemaphore:(id)a3
{
  if (dispatch_semaphore_wait(a3, 0xFFFFFFFFFFFFFFFFLL))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _PASWaitForeverForSemaphore(dispatch_semaphore_t  _Nonnull __strong)"];
    [v4 handleFailureInFunction:v3 file:@"_PASDispatchInline.h" lineNumber:39 description:@"Unexpected failure on unlimited dispatch_semaphore_wait()"];
  }
}

+ (unint64_t)dispatchTimeWithSecondsFromNow:(double)a3
{
  if (a3 <= 0.0)
  {
    return 0;
  }

  if (a3 <= 9223372040.0)
  {
    return dispatch_time(0, (a3 * 1000000000.0));
  }

  return -1;
}

@end