@interface WBSWellKnownURLResponseCodeReliabilityChecker
- (WBSWellKnownURLResponseCodeReliabilityChecker)initWithURL:(id)a3;
- (void)cancel;
- (void)checkReliabilityWithCompletion:(id)a3;
@end

@implementation WBSWellKnownURLResponseCodeReliabilityChecker

- (WBSWellKnownURLResponseCodeReliabilityChecker)initWithURL:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = WBSWellKnownURLResponseCodeReliabilityChecker;
  v5 = [(WBSWellKnownURLResponseCodeReliabilityChecker *)&v17 init];
  if (v5)
  {
    v6 = [v4 safari_wellKnownResponseCodeReliabilityURL];
    url = v5->_url;
    v5->_url = v6;

    v8 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    fetchOperationQueue = v5->_fetchOperationQueue;
    v5->_fetchOperationQueue = v8;

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.SafariShared.%@.%p.operationQueue", objc_opt_class(), v5];
    [(NSOperationQueue *)v5->_fetchOperationQueue setName:v10];

    v11 = MEMORY[0x1E695AC78];
    v12 = [MEMORY[0x1E695AC80] safari_ephemeralSessionConfiguration];
    v13 = [v11 sessionWithConfiguration:v12 delegate:0 delegateQueue:v5->_fetchOperationQueue];
    session = v5->_session;
    v5->_session = v13;

    v15 = v5;
  }

  return v5;
}

- (void)checkReliabilityWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695AC18]) initWithURL:self->_url cachePolicy:1 timeoutInterval:10.0];
  [v5 setAttribution:1];
  v6 = MEMORY[0x1BFB13CE0](v4);
  completion = self->_completion;
  self->_completion = v6;

  session = self->_session;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __80__WBSWellKnownURLResponseCodeReliabilityChecker_checkReliabilityWithCompletion___block_invoke;
  v14 = &unk_1E7FCB548;
  v15 = self;
  v16 = v4;
  v9 = v4;
  v10 = [(NSURLSession *)session dataTaskWithRequest:v5 completionHandler:&v11];
  [v10 resume];
}

void __80__WBSWellKnownURLResponseCodeReliabilityChecker_checkReliabilityWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = a3;
  if (a4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v6 = *(*(a1 + 40) + 16);
  }

  else
  {
    [v9 safari_statusCodeGroup];
    v6 = *(*(a1 + 40) + 16);
  }

  v6();
  v7 = *(a1 + 32);
  v8 = *(v7 + 32);
  *(v7 + 32) = 0;
}

- (void)cancel
{
  [(NSURLSession *)self->_session finishTasksAndInvalidate];
  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, 2);
    v4 = self->_completion;
    self->_completion = 0;
  }
}

@end