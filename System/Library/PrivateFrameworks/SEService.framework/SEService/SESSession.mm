@interface SESSession
- (SESSession)init;
- (id)endRemoteSession;
- (id)proxy;
- (id)remoteObjectProxyWithErrorHandler:(id)a3;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3;
- (void)dealloc;
- (void)didEndUnexpectedly:(id)a3;
- (void)didStartSession:(id)a3;
- (void)endSessionWithError:(id)a3;
- (void)resume;
- (void)setDidEndCallback:(id)a3;
- (void)setDidStartCallback:(id)a3;
- (void)setProxy:(id)a3;
@end

@implementation SESSession

- (SESSession)init
{
  v8.receiver = self;
  v8.super_class = SESSession;
  v2 = [(SESSession *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->state = 0;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.seserviced.session.queue", v4);
    queue = v3->_queue;
    v3->_queue = v5;

    dispatch_suspend(v3->_queue);
    v3->_isQueueSuspended = 1;
  }

  return v3;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->state != 2)
  {
    v3 = SESDefaultLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      state = self->state;
      *buf = 134217984;
      v8 = state;
      _os_log_impl(&dword_1C7B9A000, v3, OS_LOG_TYPE_INFO, "Deallocating session in state %lu", buf, 0xCu);
    }
  }

  if (self->_isQueueSuspended)
  {
    dispatch_resume(self->_queue);
  }

  v6.receiver = self;
  v6.super_class = SESSession;
  [(SESSession *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)resume
{
  if (self->_isQueueSuspended)
  {
    dispatch_resume(self->_queue);
    self->_isQueueSuspended = 0;
  }
}

- (void)setDidStartCallback:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__SESSession_setDidStartCallback___block_invoke;
  v7[3] = &unk_1E82D13F8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

uint64_t __34__SESSession_setDidStartCallback___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)setDidEndCallback:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__SESSession_setDidEndCallback___block_invoke;
  v7[3] = &unk_1E82D13F8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

uint64_t __32__SESSession_setDidEndCallback___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)didStartSession:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __30__SESSession_didStartSession___block_invoke;
  v7[3] = &unk_1E82D11C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __30__SESSession_didStartSession___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v15 = 138412290;
    v16 = v3;
    _os_log_impl(&dword_1C7B9A000, v2, OS_LOG_TYPE_INFO, "didStartSession %@", &v15, 0xCu);
  }

  v4 = *(a1 + 32);
  if (!*(v4 + 48))
  {
    if (*(a1 + 40))
    {
      *(v4 + 48) = 2;
      v5 = *(a1 + 32);
      v6 = *(v5 + 24);
      if (v6)
      {
        (*(v6 + 16))(v6, 0, *(a1 + 40));
        v7 = *(a1 + 32);
        v8 = *(v7 + 24);
        *(v7 + 24) = 0;

        v5 = *(a1 + 32);
      }

      v9 = *(v5 + 32);
      if (v9)
      {
        (*(v9 + 16))();
        v10 = 32;
LABEL_11:
        v12 = *(a1 + 32);
        v13 = *(v12 + v10);
        *(v12 + v10) = 0;
      }
    }

    else
    {
      *(v4 + 48) = 1;
      v11 = *(*(a1 + 32) + 24);
      if (v11)
      {
        (*(v11 + 16))();
        v10 = 24;
        goto LABEL_11;
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)endSessionWithError:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__SESSession_endSessionWithError___block_invoke;
  v7[3] = &unk_1E82D11C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __34__SESSession_endSessionWithError___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138412546;
    v22 = v3;
    v23 = 2112;
    v24 = v4;
    _os_log_impl(&dword_1C7B9A000, v2, OS_LOG_TYPE_INFO, "endSession %@ with error %@", buf, 0x16u);
  }

  v5 = *(a1 + 32);
  v6 = v5[6];
  if (v6 != 2)
  {
    if (!v6)
    {
      v7 = v5[3];
      if (v7)
      {
        if (*(a1 + 40))
        {
          (*(v7 + 16))(v5[3], 0);
        }

        else
        {
          v8 = SESDefaultLogObject();
          v9 = *MEMORY[0x1E69E5148];
          v20 = *(a1 + 32);
          v10 = SESCreateAndLogError();
          (*(v7 + 16))(v7, 0, v10);
        }

        v11 = *(a1 + 32);
        v12 = *(v11 + 24);
        *(v11 + 24) = 0;

        v5 = *(a1 + 32);
      }
    }

    v13 = [v5 endRemoteSession];
    if (v13)
    {
      v14 = SESDefaultLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v22 = v13;
        _os_log_impl(&dword_1C7B9A000, v14, OS_LOG_TYPE_ERROR, "Failed to end remote session %@", buf, 0xCu);
      }
    }

    v15 = *(a1 + 32);
    v16 = *(v15 + 32);
    if (v16)
    {
      (*(v16 + 16))();
      v17 = *(a1 + 32);
      v18 = *(v17 + 32);
      *(v17 + 32) = 0;

      v15 = *(a1 + 32);
    }

    *(v15 + 48) = 2;
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (id)endRemoteSession
{
  v3 = [(SESSession *)self proxy];

  if (v3)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__5;
    v13 = __Block_byref_object_dispose__5;
    v14 = 0;
    v4 = [(SESSession *)self proxy];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __30__SESSession_endRemoteSession__block_invoke;
    v8[3] = &unk_1E82D1170;
    v8[4] = &v9;
    v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v8];
    [v5 endSession:&__block_literal_global_5];

    [(SESSession *)self setProxy:0];
    v6 = v10[5];
    _Block_object_dispose(&v9, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)didEndUnexpectedly:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SESDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412546;
    v8 = self;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_1C7B9A000, v5, OS_LOG_TYPE_ERROR, "Session %@ ended unexpectedly with error %@", &v7, 0x16u);
  }

  [(SESSession *)self endSession];
  v6 = *MEMORY[0x1E69E9840];
}

- (id)proxy
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_proxy;
  objc_sync_exit(v2);

  return v3;
}

- (void)setProxy:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  proxy = obj->_proxy;
  obj->_proxy = v4;

  objc_sync_exit(obj);
}

- (id)remoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(SESSession *)self proxy];
  v6 = [v5 remoteObjectProxyWithErrorHandler:v4];

  if (!v6)
  {
    v7 = SESDefaultLogObject();
    v8 = *MEMORY[0x1E69E5148];
    v9 = SESCreateAndLogError();
    v4[2](v4, v9);
  }

  return v6;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(SESSession *)self proxy];
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v4];

  if (!v6)
  {
    v7 = SESDefaultLogObject();
    v8 = *MEMORY[0x1E69E5148];
    v9 = SESCreateAndLogError();
    v4[2](v4, v9);
  }

  return v6;
}

@end