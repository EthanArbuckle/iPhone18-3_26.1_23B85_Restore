@interface IMURLSession
- (IMURLSession)initWithConfiguration:(id)a3 delegate:(id)a4 delegateQueue:(id)a5;
- (int64_t)state;
- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4;
- (void)_configureProtocolHandler;
- (void)finishTasksAndInvalidate;
- (void)invalidateAndCancel;
- (void)setFollowsRedirects:(BOOL)a3;
@end

@implementation IMURLSession

- (IMURLSession)initWithConfiguration:(id)a3 delegate:(id)a4 delegateQueue:(id)a5
{
  v10.receiver = self;
  v10.super_class = IMURLSession;
  v5 = [(AMSURLSession *)&v10 initWithConfiguration:a3 delegate:a4 delegateQueue:a5];
  v6 = v5;
  if (v5)
  {
    v5->_followsRedirects = 1;
    v7 = dispatch_queue_create(0, 0);
    syncQueue = v6->_syncQueue;
    v6->_syncQueue = v7;
  }

  return v6;
}

- (void)setFollowsRedirects:(BOOL)a3
{
  if ([(IMURLSession *)self followsRedirects]!= a3)
  {
    self->_followsRedirects = a3;

    [(IMURLSession *)self _configureProtocolHandler];
  }
}

- (int64_t)state
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  syncQueue = self->_syncQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __21__IMURLSession_state__block_invoke;
  v5[3] = &unk_1E856A4F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(syncQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)finishTasksAndInvalidate
{
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__IMURLSession_finishTasksAndInvalidate__block_invoke;
  block[3] = &unk_1E8568E28;
  block[4] = self;
  dispatch_sync(syncQueue, block);
  v4.receiver = self;
  v4.super_class = IMURLSession;
  [(AMSURLSession *)&v4 finishTasksAndInvalidate];
}

- (void)invalidateAndCancel
{
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__IMURLSession_invalidateAndCancel__block_invoke;
  block[3] = &unk_1E8568E28;
  block[4] = self;
  dispatch_sync(syncQueue, block);
  v4.receiver = self;
  v4.super_class = IMURLSession;
  [(AMSURLSession *)&v4 invalidateAndCancel];
}

- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__IMURLSession_URLSession_didBecomeInvalidWithError___block_invoke;
  block[3] = &unk_1E8568E28;
  block[4] = self;
  dispatch_sync(syncQueue, block);
  if ([-[IMURLSession superclass](self "superclass")])
  {
    v9.receiver = self;
    v9.super_class = IMURLSession;
    [(IMURLSession *)&v9 URLSession:v6 didBecomeInvalidWithError:v7];
  }
}

- (void)_configureProtocolHandler
{
  v4 = [(AMSURLSession *)self protocolHandler];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = objc_alloc_init(IMURLProtocolHandler);

    [(AMSURLSession *)self setProtocolHandler:v3];
    v4 = v3;
  }

  [v4 setFollowsRedirects:{-[IMURLSession followsRedirects](self, "followsRedirects")}];
}

@end