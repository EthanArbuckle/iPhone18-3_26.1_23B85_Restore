@interface VSIdentityProviderFetchAppsOperation
- (VSIdentityProviderFetchAppsOperation)initWithProviderIdentifier:(id)identifier andType:(unint64_t)type;
- (void)executionDidBegin;
@end

@implementation VSIdentityProviderFetchAppsOperation

- (VSIdentityProviderFetchAppsOperation)initWithProviderIdentifier:(id)identifier andType:(unint64_t)type
{
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = VSIdentityProviderFetchAppsOperation;
  v8 = [(VSIdentityProviderFetchAppsOperation *)&v17 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CE2298]);
    v10 = v8->_result;
    v8->_result = v9;

    objc_storeStrong(&v8->_providerIdentifier, identifier);
    v8->_requestType = type;
    v11 = MEMORY[0x277CCABD8];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v11 queueWithName:v13];
    privateQueue = v8->_privateQueue;
    v8->_privateQueue = v14;
  }

  return v8;
}

- (void)executionDidBegin
{
  privateQueue = [(VSIdentityProviderFetchAppsOperation *)self privateQueue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __57__VSIdentityProviderFetchAppsOperation_executionDidBegin__block_invoke;
  v18[3] = &unk_279E19290;
  v18[4] = self;
  v4 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v18];
  v5 = objc_alloc_init(MEMORY[0x277CE21A8]);
  [v5 setMethodName:*MEMORY[0x277CE2378]];
  [v5 setRequestType:{-[VSIdentityProviderFetchAppsOperation requestType](self, "requestType")}];
  providerIdentifier = [(VSIdentityProviderFetchAppsOperation *)self providerIdentifier];
  [v5 setProviderIdentifier:providerIdentifier];

  v7 = [objc_alloc(MEMORY[0x277CE21B0]) initWithRequest:v5];
  [privateQueue addOperation:v7];
  v8 = MEMORY[0x277CCA8C8];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__VSIdentityProviderFetchAppsOperation_executionDidBegin__block_invoke_2;
  v13[3] = &unk_279E19A90;
  v14 = v7;
  selfCopy = self;
  v16 = v4;
  v17 = privateQueue;
  v9 = privateQueue;
  v10 = v4;
  v11 = v7;
  v12 = [v8 blockOperationWithBlock:v13];
  [v12 addDependency:v11];
  [v9 addOperation:v12];
}

void __57__VSIdentityProviderFetchAppsOperation_executionDidBegin__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAE68] valueTransformerForName:@"VSAMSChannelAppsResponseValueTransformer"];
  v3 = [*(a1 + 32) result];
  v4 = [v3 forceUnwrapObject];
  v5 = [v2 transformedValue:v4];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__VSIdentityProviderFetchAppsOperation_executionDidBegin__block_invoke_3;
  v9[3] = &unk_279E19A68;
  v6 = *(a1 + 48);
  v9[4] = *(a1 + 40);
  v10 = v6;
  v11 = *(a1 + 56);
  [v5 unwrapObject:v9 error:&__block_literal_global_6];
  v7 = *(a1 + 40);
  v8 = [MEMORY[0x277CE2298] optionalWithObject:v5];
  [v7 setResult:v8];

  [*(a1 + 56) addOperation:*(a1 + 48)];
}

void __57__VSIdentityProviderFetchAppsOperation_executionDidBegin__block_invoke_3(id *a1, void *a2)
{
  v4 = [a2 allApps];
  if ([a1[4] shouldFetchImages])
  {
    v3 = -[VSLoadAllAppIconsOperation initWithApps:shouldPrecomposeIcon:]([VSLoadAllAppIconsOperation alloc], "initWithApps:shouldPrecomposeIcon:", v4, [a1[4] shouldPrecomposeIcon]);
    [a1[5] addDependency:v3];
    [a1[6] addOperation:v3];
  }
}

void __57__VSIdentityProviderFetchAppsOperation_executionDidBegin__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = VSErrorLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __57__VSIdentityProviderFetchAppsOperation_executionDidBegin__block_invoke_4_cold_1(v2, v3);
  }
}

void __57__VSIdentityProviderFetchAppsOperation_executionDidBegin__block_invoke_4_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_270DD4000, a2, OS_LOG_TYPE_ERROR, "Error Transforming AppChannelMappings: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end