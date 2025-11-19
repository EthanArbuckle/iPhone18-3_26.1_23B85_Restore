@interface WBSCyclerTestRunner
- (WBSCyclerTestRunner)initWithTestSuite:(id)a3 target:(id)a4;
- (id)_errorWithCode:(int64_t)a3;
- (void)_handleNextPendingRequestWithCompletionHandler:(id)a3;
- (void)_performNextIterationWithCompletionHandler:(id)a3;
- (void)_stop;
- (void)dealloc;
- (void)handleRequest:(id)a3 completionHandler:(id)a4;
- (void)requestStop;
- (void)runWithCompletionHandler:(id)a3;
@end

@implementation WBSCyclerTestRunner

- (WBSCyclerTestRunner)initWithTestSuite:(id)a3 target:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = WBSCyclerTestRunner;
  v9 = [(WBSCyclerTestRunner *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_testSuite, a3);
    objc_storeStrong(&v10->_target, a4);
    v11 = [MEMORY[0x1E695DF70] array];
    pendingRequestQueue = v10->_pendingRequestQueue;
    v10->_pendingRequestQueue = v11;

    v13 = [MEMORY[0x1E695DF70] array];
    pendingRequestCompletionHandlerQueue = v10->_pendingRequestCompletionHandlerQueue;
    v10->_pendingRequestCompletionHandlerQueue = v13;

    v15 = v10;
  }

  return v10;
}

- (void)dealloc
{
  if (self->_running)
  {
    [(WBSCyclerTestRunner *)self _stop];
  }

  v3.receiver = self;
  v3.super_class = WBSCyclerTestRunner;
  [(WBSCyclerTestRunner *)&v3 dealloc];
}

- (void)runWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__WBSCyclerTestRunner_runWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E7FB81B8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __48__WBSCyclerTestRunner_runWithCompletionHandler___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 32) = 1;
  *(*(a1 + 32) + 8) = 0;
  if (objc_opt_respondsToSelector())
  {
    [*(*(a1 + 32) + 40) setUp];
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _performNextIterationWithCompletionHandler:v3];
}

- (void)requestStop
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__WBSCyclerTestRunner_requestStop__block_invoke;
  block[3] = &unk_1E7FB6D90;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __34__WBSCyclerTestRunner_requestStop__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 32) == 1)
  {
    *(v1 + 8) = 1;
  }

  return result;
}

- (void)handleRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__WBSCyclerTestRunner_handleRequest_completionHandler___block_invoke;
  block[3] = &unk_1E7FB6E08;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __55__WBSCyclerTestRunner_handleRequest_completionHandler___block_invoke(void *a1)
{
  [*(a1[4] + 16) addObject:a1[5]];
  v2 = *(a1[4] + 24);
  v3 = MEMORY[0x1BFB13CE0](a1[6]);
  [v2 addObject:v3];
}

- (void)_stop
{
  self->_running = 0;
  if (objc_opt_respondsToSelector())
  {
    testSuite = self->_testSuite;

    [(WBSCyclerTestSuite *)testSuite tearDown];
  }
}

- (void)_performNextIterationWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ((objc_opt_respondsToSelector() & 1) != 0 && (-[WBSCyclerTestSuite isFinished](self->_testSuite, "isFinished") & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 && (-[WBSCyclerTestSuite iterationCounter](self->_testSuite, "iterationCounter"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 hasReachedMaximumIterationCount], v5, v6))
  {
    [(WBSCyclerTestRunner *)self _stop];
    (*(v4 + 2))(v4, 0, 0);
  }

  else if (self->_stopRequested)
  {
    [(WBSCyclerTestRunner *)self _stop];
    (*(v4 + 2))(v4, 2, 0);
  }

  else
  {
    if ([(NSMutableArray *)self->_pendingRequestQueue count])
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __66__WBSCyclerTestRunner__performNextIterationWithCompletionHandler___block_invoke;
      v12[3] = &unk_1E7FB8208;
      v12[4] = self;
      v13 = v4;
      [(WBSCyclerTestRunner *)self _handleNextPendingRequestWithCompletionHandler:v12];
      v7 = v13;
    }

    else
    {
      testSuite = self->_testSuite;
      target = self->_target;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __66__WBSCyclerTestRunner__performNextIterationWithCompletionHandler___block_invoke_2;
      v10[3] = &unk_1E7FB8208;
      v10[4] = self;
      v11 = v4;
      [(WBSCyclerTestSuite *)testSuite runWithTarget:target completionHandler:v10];
      v7 = v11;
    }
  }
}

void __66__WBSCyclerTestRunner__performNextIterationWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  if (v3)
  {
    [v4 _stop];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [v4 _performNextIterationWithCompletionHandler:*(a1 + 40)];
  }
}

void __66__WBSCyclerTestRunner__performNextIterationWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__WBSCyclerTestRunner__performNextIterationWithCompletionHandler___block_invoke_3;
  block[3] = &unk_1E7FB6E08;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __66__WBSCyclerTestRunner__performNextIterationWithCompletionHandler___block_invoke_3(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v3)
  {
    [v2 _stop];
    v4 = *(a1[6] + 16);

    return v4();
  }

  else
  {
    v6 = a1[6];

    return [v2 _performNextIterationWithCompletionHandler:v6];
  }
}

- (void)_handleNextPendingRequestWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableArray *)self->_pendingRequestQueue firstObject];
  v6 = [(NSMutableArray *)self->_pendingRequestCompletionHandlerQueue firstObject];
  [(NSMutableArray *)self->_pendingRequestQueue removeObjectAtIndex:0];
  [(NSMutableArray *)self->_pendingRequestCompletionHandlerQueue removeObjectAtIndex:0];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([(WBSCyclerTestSuite *)self->_testSuite canHandleRequest:v5]& 1) != 0)
  {
    testSuite = self->_testSuite;
    target = self->_target;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __70__WBSCyclerTestRunner__handleNextPendingRequestWithCompletionHandler___block_invoke;
    v10[3] = &unk_1E7FC5388;
    v11 = v6;
    v12 = v4;
    [(WBSCyclerTestSuite *)testSuite handleRequest:v5 withTarget:target completionHandler:v10];
  }

  else
  {
    v9 = [(WBSCyclerTestRunner *)self _errorWithCode:0];
    (v6)[2](v6, v9);

    (*(v4 + 2))(v4, 0);
  }
}

void __70__WBSCyclerTestRunner__handleNextPendingRequestWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3, v5);
  (*(*(a1 + 40) + 16))();
}

- (id)_errorWithCode:(int64_t)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A578];
  v5 = [(WBSCyclerTestRunner *)self _descriptionForErrorCode:?];
  v10[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v4 errorWithDomain:@"WBSCyclerTestRunnerErrorDomain" code:a3 userInfo:v6];

  return v7;
}

@end