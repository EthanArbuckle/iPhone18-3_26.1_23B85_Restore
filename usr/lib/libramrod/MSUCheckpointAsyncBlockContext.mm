@interface MSUCheckpointAsyncBlockContext
- (BOOL)waitUntilTime:(unint64_t)a3;
- (MSUCheckpointAsyncBlockContext)initWithQueue:(id)a3 block:(id)a4;
- (void)cancel;
- (void)runForCheckpoint:(void *)a3;
- (void)runSynchronousForCheckpoint:(void *)a3;
- (void)setAwaitDescription:(void *)a3;
- (void)setStepDescription:(void *)a3;
@end

@implementation MSUCheckpointAsyncBlockContext

- (MSUCheckpointAsyncBlockContext)initWithQueue:(id)a3 block:(id)a4
{
  v13.receiver = self;
  v13.super_class = MSUCheckpointAsyncBlockContext;
  v6 = [(MSUCheckpointAsyncContext *)&v13 init];
  v7 = v6;
  if (v6)
  {
    if (a3)
    {
      [(MSUCheckpointAsyncBlockContext *)v6 setWorkQueue:a3];
    }

    else
    {
      v8 = qos_class_self();
      v9 = dispatch_queue_attr_make_with_qos_class(0, v8, 0);
      v10 = dispatch_queue_create(0, v9);
      [(MSUCheckpointAsyncBlockContext *)v7 setWorkQueue:v10];
      dispatch_release(v10);
    }
  }

  [(MSUCheckpointAsyncBlockContext *)v7 setIsCanceled:0];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3254779904;
  v12[2] = sub_28654;
  v12[3] = &unk_1AD898;
  v12[4] = v7;
  v12[5] = a4;
  [(MSUCheckpointAsyncBlockContext *)v7 setWorkBlock:dispatch_block_create(0, v12)];
  return v7;
}

- (void)setStepDescription:(void *)a3
{
  if (a3)
  {
    v5 = calloc(1uLL, 0x60uLL);
    v7 = *(a3 + 2);
    v6 = *(a3 + 3);
    v8 = *(a3 + 4);
    v5[5] = *(a3 + 5);
    v9 = *(a3 + 1);
    *v5 = *a3;
    v5[1] = v9;
    v5[3] = v6;
    v5[4] = v8;
    v5[2] = v7;
    *(v5 + 10) = self;
  }

  else
  {
    v5 = 0;
  }

  v10.receiver = self;
  v10.super_class = MSUCheckpointAsyncBlockContext;
  [(MSUCheckpointAsyncContext *)&v10 setStepDescription:v5];
  free(v5);
}

- (void)setAwaitDescription:(void *)a3
{
  if (a3)
  {
    v5 = calloc(1uLL, 0x60uLL);
    v6 = *(a3 + 2);
    v7 = *(a3 + 3);
    v8 = *(a3 + 4);
    *(v5 + 76) = *(a3 + 76);
    v9 = *(a3 + 1);
    *v5 = *a3;
    v5[1] = v9;
    v5[3] = v7;
    v5[4] = v8;
    v5[2] = v6;
    *(v5 + 10) = self;
    *(v5 + 23) = -1;
    *(v5 + 88) = 1;
  }

  else
  {
    v5 = 0;
  }

  v10.receiver = self;
  v10.super_class = MSUCheckpointAsyncBlockContext;
  [(MSUCheckpointAsyncContext *)&v10 setAwaitDescription:v5];
  free(v5);
}

- (void)runSynchronousForCheckpoint:(void *)a3
{
  [(MSUCheckpointAsyncContext *)self setCheckpoint_closure_context:a3];
  step_desc = checkpoint_closure_context_get_step_desc([(MSUCheckpointAsyncContext *)self checkpoint_closure_context]);
  ramrod_log_msg("[AsyncCP][DispatchSync] Checkpoint %s dispatched synchronously because async is disabled.\n", v5, v6, v7, v8, v9, v10, v11, *(step_desc + 8));
  v12 = [(MSUCheckpointAsyncBlockContext *)self workQueue];
  v13 = [(MSUCheckpointAsyncBlockContext *)self workBlock];

  dispatch_sync(v12, v13);
}

- (void)runForCheckpoint:(void *)a3
{
  [(MSUCheckpointAsyncContext *)self setCheckpoint_closure_context:a3];
  step_desc = checkpoint_closure_context_get_step_desc([(MSUCheckpointAsyncContext *)self checkpoint_closure_context]);
  ramrod_log_msg("[AsyncCP][DispatchAsync] Checkpoint %s dispatched asynchronously.\n", v5, v6, v7, v8, v9, v10, v11, *(step_desc + 8));
  v12 = [(MSUCheckpointAsyncBlockContext *)self workQueue];
  v13 = [(MSUCheckpointAsyncBlockContext *)self workBlock];

  dispatch_async(v12, v13);
}

- (BOOL)waitUntilTime:(unint64_t)a3
{
  step_desc = checkpoint_closure_context_get_step_desc([(MSUCheckpointAsyncContext *)self checkpoint_closure_context]);
  ramrod_log_msg("[AsyncCP][WaitStart] Start to Wait checkpoint %s.\n", v6, v7, v8, v9, v10, v11, v12, *(step_desc + 8));
  v13 = dispatch_time(0, 1000000000);
  if (v13 >= a3)
  {
    v23 = 0;
  }

  else
  {
    v21 = v13;
    while (dispatch_block_wait([(MSUCheckpointAsyncBlockContext *)self workBlock], v21))
    {
      objc_sync_enter(self);
      v22 = [(MSUCheckpointAsyncBlockContext *)self isCanceled];
      objc_sync_exit(self);
      if (v22)
      {
        break;
      }

      v21 = dispatch_time(0, 1000000000);
      if (v21 >= a3)
      {
        v23 = 0;
        goto LABEL_9;
      }
    }

    v23 = 1;
  }

LABEL_9:
  ramrod_log_msg("[AsyncCP][WaitEnd] Wait checkpoint %s %s.\n", v14, v15, v16, v17, v18, v19, v20, *(step_desc + 8));
  return v23;
}

- (void)cancel
{
  objc_sync_enter(self);
  [(MSUCheckpointAsyncBlockContext *)self setIsCanceled:1];
  [(MSUCheckpointAsyncContext *)self setResult:0xFFFFFFFFLL];
  [(MSUCheckpointAsyncContext *)self setError:checkpoint_error_copy_canceled_error()];

  objc_sync_exit(self);
}

@end