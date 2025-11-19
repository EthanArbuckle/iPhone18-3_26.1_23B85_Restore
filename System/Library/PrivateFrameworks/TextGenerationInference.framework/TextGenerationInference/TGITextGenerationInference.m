@interface TGITextGenerationInference
- (TGITextGenerationInference)initWithWorkQueue:(id)a3;
- (id)createSessionWithUUID:(id)a3 configuration:(id)a4;
- (void)start;
@end

@implementation TGITextGenerationInference

- (TGITextGenerationInference)initWithWorkQueue:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = TGITextGenerationInference;
  v6 = [(TGITextGenerationInference *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workQueue, a3);
    v8 = [[TGITextGenerationInferenceRunnerManager alloc] initWithWorkQueue:v5];
    inferenceRunnerManager = v7->_inferenceRunnerManager;
    v7->_inferenceRunnerManager = v8;
  }

  return v7;
}

- (void)start
{
  v3 = [(TGITextGenerationInference *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__TGITextGenerationInference_start__block_invoke;
  block[3] = &unk_279D9C638;
  block[4] = self;
  dispatch_async(v3, block);
}

void __35__TGITextGenerationInference_start__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) inferenceRunnerManager];
  [v1 start];
}

- (id)createSessionWithUUID:(id)a3 configuration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [TGITextGenerationInferenceSession alloc];
  v9 = [(TGITextGenerationInference *)self inferenceRunnerManager];
  v10 = [(TGITextGenerationInferenceSession *)v8 initWithUUID:v6 configuration:v7 inferenceRunnerManager:v9];

  return v10;
}

@end