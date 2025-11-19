@interface VSFetchAllSupportedAppsOperation
- (VSFetchAllSupportedAppsOperation)init;
- (void)executionDidBegin;
@end

@implementation VSFetchAllSupportedAppsOperation

- (VSFetchAllSupportedAppsOperation)init
{
  v11.receiver = self;
  v11.super_class = VSFetchAllSupportedAppsOperation;
  v2 = [(VSFetchAllSupportedAppsOperation *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CE2298]);
    v4 = v2->_result;
    v2->_result = v3;

    v5 = MEMORY[0x277CCABD8];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v5 queueWithName:v7];
    privateQueue = v2->_privateQueue;
    v2->_privateQueue = v8;

    [(NSOperationQueue *)v2->_privateQueue setMaxConcurrentOperationCount:1];
  }

  return v2;
}

- (void)executionDidBegin
{
  v3 = [(VSFetchAllSupportedAppsOperation *)self privateQueue];
  v4 = objc_alloc_init(MEMORY[0x277CE21A8]);
  [v4 setMethodName:*MEMORY[0x277CE2378]];
  [v4 setRequestType:1];
  v5 = [objc_alloc(MEMORY[0x277CE21B0]) initWithRequest:v4];
  [v3 addOperation:v5];
  v6 = MEMORY[0x277CCA8C8];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __53__VSFetchAllSupportedAppsOperation_executionDidBegin__block_invoke;
  v12 = &unk_279E19848;
  v13 = v5;
  v14 = self;
  v7 = v5;
  v8 = [v6 blockOperationWithBlock:&v9];
  [v8 addDependency:{v7, v9, v10, v11, v12}];
  [v3 addOperation:v8];
}

void __53__VSFetchAllSupportedAppsOperation_executionDidBegin__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAE68] valueTransformerForName:@"VSAMSChannelAppsResponseValueTransformer"];
  v3 = [*(a1 + 32) result];
  v4 = [v3 forceUnwrapObject];
  v5 = [v2 transformedValue:v4];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__VSFetchAllSupportedAppsOperation_executionDidBegin__block_invoke_2;
  v7[3] = &unk_279E1A4F8;
  v8 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__VSFetchAllSupportedAppsOperation_executionDidBegin__block_invoke_3;
  v6[3] = &unk_279E19730;
  v6[4] = v8;
  [v5 unwrapObject:v7 error:v6];
  [*(a1 + 40) finishExecutionIfPossible];
}

void __53__VSFetchAllSupportedAppsOperation_executionDidBegin__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CE2298];
  v4 = MEMORY[0x277CE2250];
  v7 = [a2 allApps];
  v5 = [v4 failableWithObject:v7];
  v6 = [v3 optionalWithObject:v5];
  [v2 setResult:v6];
}

void __53__VSFetchAllSupportedAppsOperation_executionDidBegin__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CE2298];
  v5 = [MEMORY[0x277CE2250] failableWithError:a2];
  v4 = [v3 optionalWithObject:v5];
  [v2 setResult:v4];
}

@end