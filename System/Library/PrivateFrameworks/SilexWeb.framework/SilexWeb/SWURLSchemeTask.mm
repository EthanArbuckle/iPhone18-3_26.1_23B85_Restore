@interface SWURLSchemeTask
- (NSURLRequest)request;
- (SWURLSchemeTask)initWithTask:(id)task logger:(id)logger;
- (void)didFailWithError:(id)error;
- (void)didFinish;
- (void)didReceiveData:(id)data;
- (void)didReceiveResponse:(id)response;
- (void)performBlockOnMainThread:(id)thread;
@end

@implementation SWURLSchemeTask

- (SWURLSchemeTask)initWithTask:(id)task logger:(id)logger
{
  taskCopy = task;
  loggerCopy = logger;
  v12.receiver = self;
  v12.super_class = SWURLSchemeTask;
  v9 = [(SWURLSchemeTask *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_task, task);
    objc_storeStrong(&v10->_logger, logger);
  }

  return v10;
}

- (NSURLRequest)request
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __26__SWURLSchemeTask_request__block_invoke;
  v4[3] = &unk_1E84DB4B0;
  v4[4] = self;
  v4[5] = &v5;
  [(SWURLSchemeTask *)self performBlockOnMainThread:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __26__SWURLSchemeTask_request__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) request];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)didReceiveResponse:(id)response
{
  responseCopy = response;
  logger = self->_logger;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Received response for task %@", self];
  [(SWLogger *)logger log:v6];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__SWURLSchemeTask_didReceiveResponse___block_invoke;
  v8[3] = &unk_1E84DB4D8;
  v8[4] = self;
  v9 = responseCopy;
  v7 = responseCopy;
  [(SWURLSchemeTask *)self performBlockOnMainThread:v8];
}

- (void)didReceiveData:(id)data
{
  dataCopy = data;
  logger = self->_logger;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Received data (%li) for task %@", objc_msgSend(dataCopy, "length"), self];
  [(SWLogger *)logger log:v6];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __34__SWURLSchemeTask_didReceiveData___block_invoke;
  v8[3] = &unk_1E84DB4D8;
  v8[4] = self;
  v9 = dataCopy;
  v7 = dataCopy;
  [(SWURLSchemeTask *)self performBlockOnMainThread:v8];
}

- (void)didFinish
{
  logger = self->_logger;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Finished task %@", self];
  [(SWLogger *)logger log:v4];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__SWURLSchemeTask_didFinish__block_invoke;
  v5[3] = &unk_1E84DB500;
  v5[4] = self;
  [(SWURLSchemeTask *)self performBlockOnMainThread:v5];
}

uint64_t __28__SWURLSchemeTask_didFinish__block_invoke(uint64_t a1)
{
  v6 = *(*(a1 + 32) + 16);
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = [v6 didFinish];
  if (v6)
  {
    v4 = *(*(a1 + 32) + 8);
    if (v4)
    {
      v4 = (*(v4 + 16))(v4, v6);
    }
  }

  return MEMORY[0x1EEE66BB8](v4);
}

- (void)didFailWithError:(id)error
{
  errorCopy = error;
  logger = self->_logger;
  errorCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed task %@ with error %@", self, errorCopy];
  [(SWLogger *)logger logError:errorCopy];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__SWURLSchemeTask_didFailWithError___block_invoke;
  v8[3] = &unk_1E84DB4D8;
  v8[4] = self;
  v9 = errorCopy;
  v7 = errorCopy;
  [(SWURLSchemeTask *)self performBlockOnMainThread:v8];
}

uint64_t __36__SWURLSchemeTask_didFailWithError___block_invoke(uint64_t a1)
{
  v6 = *(*(a1 + 32) + 16);
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = [v6 didFailWithError:*(a1 + 40)];
  if (v6)
  {
    v4 = *(*(a1 + 32) + 8);
    if (v4)
    {
      v4 = (*(v4 + 16))(v4, v6);
    }
  }

  return MEMORY[0x1EEE66BB8](v4);
}

- (void)performBlockOnMainThread:(id)thread
{
  v3 = MEMORY[0x1E696AF00];
  block = thread;
  if ([v3 isMainThread])
  {
    block[2]();
  }

  else
  {
    dispatch_sync(MEMORY[0x1E69E96A0], block);
  }
}

@end