@interface SWURLSchemeTask
- (NSURLRequest)request;
- (SWURLSchemeTask)initWithTask:(id)a3 logger:(id)a4;
- (void)didFailWithError:(id)a3;
- (void)didFinish;
- (void)didReceiveData:(id)a3;
- (void)didReceiveResponse:(id)a3;
- (void)performBlockOnMainThread:(id)a3;
@end

@implementation SWURLSchemeTask

- (SWURLSchemeTask)initWithTask:(id)a3 logger:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SWURLSchemeTask;
  v9 = [(SWURLSchemeTask *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_task, a3);
    objc_storeStrong(&v10->_logger, a4);
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

- (void)didReceiveResponse:(id)a3
{
  v4 = a3;
  logger = self->_logger;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Received response for task %@", self];
  [(SWLogger *)logger log:v6];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__SWURLSchemeTask_didReceiveResponse___block_invoke;
  v8[3] = &unk_1E84DB4D8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [(SWURLSchemeTask *)self performBlockOnMainThread:v8];
}

- (void)didReceiveData:(id)a3
{
  v4 = a3;
  logger = self->_logger;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Received data (%li) for task %@", objc_msgSend(v4, "length"), self];
  [(SWLogger *)logger log:v6];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __34__SWURLSchemeTask_didReceiveData___block_invoke;
  v8[3] = &unk_1E84DB4D8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
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

- (void)didFailWithError:(id)a3
{
  v4 = a3;
  logger = self->_logger;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed task %@ with error %@", self, v4];
  [(SWLogger *)logger logError:v6];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__SWURLSchemeTask_didFailWithError___block_invoke;
  v8[3] = &unk_1E84DB4D8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
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

- (void)performBlockOnMainThread:(id)a3
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

@end