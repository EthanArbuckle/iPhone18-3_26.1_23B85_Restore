@interface SBPPTRecapPerformanceTestingOperation
+ (id)scrollViewRecapPerformanceTestOperationWithBlock:(id)a3;
@end

@implementation SBPPTRecapPerformanceTestingOperation

+ (id)scrollViewRecapPerformanceTestOperationWithBlock:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __90__SBPPTRecapPerformanceTestingOperation_scrollViewRecapPerformanceTestOperationWithBlock___block_invoke;
  v7[3] = &unk_2783B2FF8;
  v8 = v3;
  v4 = v3;
  v5 = [(SBPPTBlockOperation *)SBPPTRecapPerformanceTestingOperation operationWithBlock:v7];
  [v5 setTimeoutInterval:60.0];

  return v5;
}

void __90__SBPPTRecapPerformanceTestingOperation_scrollViewRecapPerformanceTestOperationWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (*(*(a1 + 32) + 16))();
  v5 = [v4 completionHandler];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __90__SBPPTRecapPerformanceTestingOperation_scrollViewRecapPerformanceTestOperationWithBlock___block_invoke_2;
  v11 = &unk_2783A98A0;
  v12 = v3;
  v13 = v5;
  v6 = v5;
  v7 = v3;
  [v4 setCompletionHandler:&v8];
  [MEMORY[0x277D44368] runTestWithParameters:{v4, v8, v9, v10, v11}];
}

uint64_t __90__SBPPTRecapPerformanceTestingOperation_scrollViewRecapPerformanceTestOperationWithBlock___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) finish];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

@end