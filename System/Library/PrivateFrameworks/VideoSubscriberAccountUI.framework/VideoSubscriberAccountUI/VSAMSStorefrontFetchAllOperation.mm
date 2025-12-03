@interface VSAMSStorefrontFetchAllOperation
- (void)executionDidBegin;
@end

@implementation VSAMSStorefrontFetchAllOperation

- (void)executionDidBegin
{
  vs_defaultBag = [MEMORY[0x277CEE3F8] vs_defaultBag];
  v4 = objc_alloc(MEMORY[0x277CEE680]);
  v5 = [v4 initWithMediaType:2 clientIdentifier:*MEMORY[0x277CE2380] bag:vs_defaultBag];
  performTask = [v5 performTask];
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__VSAMSStorefrontFetchAllOperation_executionDidBegin__block_invoke;
  v11[3] = &unk_279E194D0;
  objc_copyWeak(&v12, &location);
  [performTask addErrorBlock:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__VSAMSStorefrontFetchAllOperation_executionDidBegin__block_invoke_2;
  v9[3] = &unk_279E199E0;
  objc_copyWeak(&v10, &location);
  [performTask addSuccessBlock:v9];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__VSAMSStorefrontFetchAllOperation_executionDidBegin__block_invoke_5;
  v7[3] = &unk_279E19A08;
  objc_copyWeak(&v8, &location);
  [performTask addFinishBlock:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __53__VSAMSStorefrontFetchAllOperation_executionDidBegin__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = MEMORY[0x277CE2298];
    v5 = [MEMORY[0x277CE2250] failableWithError:v7];
    v6 = [v4 optionalWithObject:v5];
    [WeakRetained setResult:v6];
  }
}

void __53__VSAMSStorefrontFetchAllOperation_executionDidBegin__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [MEMORY[0x277CCAE68] valueTransformerForName:@"VSAMSAllStorefrontsResponseValueTransformer"];
    v6 = [v5 transformedValue:v3];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __53__VSAMSStorefrontFetchAllOperation_executionDidBegin__block_invoke_3;
    v8[3] = &unk_279E19898;
    v8[4] = WeakRetained;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __53__VSAMSStorefrontFetchAllOperation_executionDidBegin__block_invoke_4;
    v7[3] = &unk_279E19730;
    v7[4] = WeakRetained;
    [v6 unwrapObject:v8 error:v7];
  }
}

void __53__VSAMSStorefrontFetchAllOperation_executionDidBegin__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CE2298];
  v5 = [MEMORY[0x277CE2250] failableWithObject:a2];
  v4 = [v3 optionalWithObject:v5];
  [v2 setResult:v4];
}

void __53__VSAMSStorefrontFetchAllOperation_executionDidBegin__block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CE2298];
  v5 = [MEMORY[0x277CE2250] failableWithError:a2];
  v4 = [v3 optionalWithObject:v5];
  [v2 setResult:v4];
}

void __53__VSAMSStorefrontFetchAllOperation_executionDidBegin__block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_270DD4000, v5, OS_LOG_TYPE_DEFAULT, "storefronts task finished with error %@", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained finishExecutionIfPossible];

  v7 = *MEMORY[0x277D85DE8];
}

@end