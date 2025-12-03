@interface TGITextGenerationInference
- (TGITextGenerationInference)initWithWorkQueue:(id)queue;
- (id)createSessionWithUUID:(id)d configuration:(id)configuration;
- (void)start;
@end

@implementation TGITextGenerationInference

- (TGITextGenerationInference)initWithWorkQueue:(id)queue
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = TGITextGenerationInference;
  v6 = [(TGITextGenerationInference *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workQueue, queue);
    v8 = [[TGITextGenerationInferenceRunnerManager alloc] initWithWorkQueue:queueCopy];
    inferenceRunnerManager = v7->_inferenceRunnerManager;
    v7->_inferenceRunnerManager = v8;
  }

  return v7;
}

- (void)start
{
  workQueue = [(TGITextGenerationInference *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__TGITextGenerationInference_start__block_invoke;
  block[3] = &unk_279D9C638;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __35__TGITextGenerationInference_start__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) inferenceRunnerManager];
  [v1 start];
}

- (id)createSessionWithUUID:(id)d configuration:(id)configuration
{
  dCopy = d;
  configurationCopy = configuration;
  v8 = [TGITextGenerationInferenceSession alloc];
  inferenceRunnerManager = [(TGITextGenerationInference *)self inferenceRunnerManager];
  v10 = [(TGITextGenerationInferenceSession *)v8 initWithUUID:dCopy configuration:configurationCopy inferenceRunnerManager:inferenceRunnerManager];

  return v10;
}

@end