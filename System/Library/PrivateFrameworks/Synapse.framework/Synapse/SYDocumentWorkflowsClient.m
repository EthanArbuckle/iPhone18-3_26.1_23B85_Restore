@interface SYDocumentWorkflowsClient
+ (BOOL)_verifyFeatureFlagWithError:(id *)a3;
+ (id)_createUnableToPerformRequestErrorWithCode:(int64_t)a3;
- (BOOL)canPerformRequest:(id)a3 withError:(id *)a4;
- (SYDocumentWorkflowsClient)init;
- (void)_createConnectionIfNecessary;
- (void)_dispatchRequestWithCompletion:(id)a3;
- (void)_invalidateConnection;
- (void)canPerformRequest:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)fetchAttributesForDocumentsWithIndexKeys:(id)a3 completion:(id)a4;
- (void)fetchUserActivityForDocumentIndexKey:(id)a3 completion:(id)a4;
- (void)hasLastModifiedDocumentForFileAtURL:(id)a3 completion:(id)a4;
- (void)hasLastModifiedDocumentForFileWithDocumentAttributes:(id)a3 completion:(id)a4;
- (void)hasOriginalDocumentForFileAtURL:(id)a3 completion:(id)a4;
- (void)hasOriginalDocumentForFileWithDocumentAttributes:(id)a3 completion:(id)a4;
- (void)openLastModifiedDocumentForFileAtURL:(id)a3 completion:(id)a4;
- (void)openLastModifiedDocumentForFileWithDocumentAttributes:(id)a3 completion:(id)a4;
- (void)openOriginalDocumentForFileAtURL:(id)a3 completion:(id)a4;
- (void)openOriginalDocumentForFileWithDocumentAttributes:(id)a3 completion:(id)a4;
- (void)performRequest:(id)a3 completion:(id)a4;
- (void)performRequest:(id)a3 withCompletion:(id)a4;
- (void)performRequest:(id)a3 withErrorHandler:(id)a4 completion:(id)a5;
- (void)saveUserActivity:(id)a3 forDocumentIndexKey:(id)a4 sourceBundleIdentifier:(id)a5 completion:(id)a6;
- (void)unlinkDocumentsWithRelatedUniqueidentifiers:(id)a3 completion:(id)a4;
- (void)updateLinkedDocumentsWithCompletion:(id)a3;
@end

@implementation SYDocumentWorkflowsClient

- (SYDocumentWorkflowsClient)init
{
  v7.receiver = self;
  v7.super_class = SYDocumentWorkflowsClient;
  v2 = [(SYDocumentWorkflowsClient *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.synapse.DocumentWorkflowsClient", v3);
    processingQueue = v2->_processingQueue;
    v2->_processingQueue = v4;
  }

  return v2;
}

+ (BOOL)_verifyFeatureFlagWithError:(id *)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = SYIsReturnToSenderEnabled();
  v5 = v4;
  if (a3 && (v4 & 1) == 0)
  {
    v6 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277CCA450];
    v11[0] = @"Feature is not available.";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    *a3 = [v6 errorWithDomain:@"com.apple.synapse" code:-127 userInfo:v7];
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (id)_createUnableToPerformRequestErrorWithCode:(int64_t)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA9B8];
  v11 = *MEMORY[0x277CCA450];
  v5 = _SYBundle();
  v6 = [v5 localizedStringForKey:@"Unable to perform request." value:@"Unable to perform request." table:@"Localizable"];
  v12[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v4 errorWithDomain:@"com.apple.synapse" code:a3 userInfo:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)dealloc
{
  v3 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_225901000, v3, OS_LOG_TYPE_DEFAULT, "Document Workflows client deallocated.", buf, 2u);
  }

  [(SYDocumentWorkflowsClient *)self _invalidateConnection];
  v4.receiver = self;
  v4.super_class = SYDocumentWorkflowsClient;
  [(SYDocumentWorkflowsClient *)&v4 dealloc];
}

- (void)fetchUserActivityForDocumentIndexKey:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __77__SYDocumentWorkflowsClient_fetchUserActivityForDocumentIndexKey_completion___block_invoke;
  v16[3] = &unk_27856BEC8;
  v8 = v7;
  v17 = v8;
  v9 = MEMORY[0x22AA6A360](v16);
  v15 = 0;
  v10 = [objc_opt_class() _verifyFeatureFlagWithError:&v15];
  v11 = v15;
  if (v10)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __77__SYDocumentWorkflowsClient_fetchUserActivityForDocumentIndexKey_completion___block_invoke_2;
    v12[3] = &unk_27856BF18;
    v14 = v9;
    v13 = v6;
    [(SYDocumentWorkflowsClient *)self _dispatchRequestWithCompletion:v12];
  }

  else
  {
    (v9)[2](v9, 0, v11);
  }
}

uint64_t __77__SYDocumentWorkflowsClient_fetchUserActivityForDocumentIndexKey_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __77__SYDocumentWorkflowsClient_fetchUserActivityForDocumentIndexKey_completion___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __77__SYDocumentWorkflowsClient_fetchUserActivityForDocumentIndexKey_completion___block_invoke_3;
    v6[3] = &unk_27856BEF0;
    v4 = *(a1 + 32);
    v7 = *(a1 + 40);
    [a2 fetchUserActivityForDocumentIndexKey:v4 completion:v6];
  }

  else
  {
    v5 = *(*(a1 + 40) + 16);

    v5();
  }
}

void __77__SYDocumentWorkflowsClient_fetchUserActivityForDocumentIndexKey_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 userActivity];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)saveUserActivity:(id)a3 forDocumentIndexKey:(id)a4 sourceBundleIdentifier:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __100__SYDocumentWorkflowsClient_saveUserActivity_forDocumentIndexKey_sourceBundleIdentifier_completion___block_invoke;
  v24[3] = &unk_27856B738;
  v14 = v13;
  v25 = v14;
  v15 = MEMORY[0x22AA6A360](v24);
  v23 = 0;
  v16 = [objc_opt_class() _verifyFeatureFlagWithError:&v23];
  v17 = v23;
  if (v16)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __100__SYDocumentWorkflowsClient_saveUserActivity_forDocumentIndexKey_sourceBundleIdentifier_completion___block_invoke_2;
    v18[3] = &unk_27856BF40;
    v22 = v15;
    v19 = v10;
    v20 = v11;
    v21 = v12;
    [(SYDocumentWorkflowsClient *)self _dispatchRequestWithCompletion:v18];
  }

  else
  {
    (v15)[2](v15, 0, v17);
  }
}

uint64_t __100__SYDocumentWorkflowsClient_saveUserActivity_forDocumentIndexKey_sourceBundleIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __100__SYDocumentWorkflowsClient_saveUserActivity_forDocumentIndexKey_sourceBundleIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [[SYUserActivityWrapper alloc] initWithUserActivity:*(a1 + 32)];
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __100__SYDocumentWorkflowsClient_saveUserActivity_forDocumentIndexKey_sourceBundleIdentifier_completion___block_invoke_3;
    v7[3] = &unk_27856B738;
    v8 = *(a1 + 56);
    [v3 saveUserActivity:v4 forDocumentIndexKey:v5 sourceBundleIdentifier:v6 completion:v7];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

- (void)fetchAttributesForDocumentsWithIndexKeys:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __81__SYDocumentWorkflowsClient_fetchAttributesForDocumentsWithIndexKeys_completion___block_invoke;
  v21[3] = &unk_27856BF68;
  v8 = v7;
  v22 = v8;
  v9 = MEMORY[0x22AA6A360](v21);
  if (![v6 count])
  {
    v12 = MEMORY[0x277CBEAD8];
    v13 = *MEMORY[0x277CBE658];
    v14 = @"indexKeys can't be nil or empty";
    goto LABEL_9;
  }

  if (!v8)
  {
    v12 = MEMORY[0x277CBEAD8];
    v13 = *MEMORY[0x277CBE658];
    v14 = @"completion can't be nil";
LABEL_9:
    v15 = [v12 exceptionWithName:v13 reason:v14 userInfo:0];
    objc_exception_throw(v15);
  }

  v20 = 0;
  v10 = [objc_opt_class() _verifyFeatureFlagWithError:&v20];
  v11 = v20;
  if (v10)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __81__SYDocumentWorkflowsClient_fetchAttributesForDocumentsWithIndexKeys_completion___block_invoke_2;
    v16[3] = &unk_27856BF90;
    v18 = v9;
    v17 = v6;
    v19 = v8;
    [(SYDocumentWorkflowsClient *)self _dispatchRequestWithCompletion:v16];
  }

  else
  {
    (v9)[2](v9, MEMORY[0x277CBEBF8], v11);
  }
}

uint64_t __81__SYDocumentWorkflowsClient_fetchAttributesForDocumentsWithIndexKeys_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __81__SYDocumentWorkflowsClient_fetchAttributesForDocumentsWithIndexKeys_completion___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __81__SYDocumentWorkflowsClient_fetchAttributesForDocumentsWithIndexKeys_completion___block_invoke_3;
    v6[3] = &unk_27856BF68;
    v7 = *(a1 + 48);
    [a2 fetchAttributesForDocumentsWithIndexKeys:v4 completion:v6];
  }

  else
  {
    v5 = *(*(a1 + 40) + 16);

    v5();
  }
}

- (void)canPerformRequest:(id)a3 completion:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __58__SYDocumentWorkflowsClient_canPerformRequest_completion___block_invoke;
  v19[3] = &unk_27856B738;
  v7 = v6;
  v20 = v7;
  v8 = MEMORY[0x22AA6A360](v19);
  v18 = 0;
  v9 = [objc_opt_class() _verifyFeatureFlagWithError:&v18];
  v10 = v18;
  if (v9)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v17 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Unsupported request type" userInfo:0];
      objc_exception_throw(v17);
    }

    if ((objc_opt_respondsToSelector() & 1) != 0 && ([v5 verifyParameters] & 1) == 0)
    {
      v14 = os_log_create("com.apple.synapse", "DocumentWorkflows");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v22 = v5;
        _os_log_impl(&dword_225901000, v14, OS_LOG_TYPE_DEFAULT, "%@ request has invalid parameters.", buf, 0xCu);
      }

      v15 = [objc_opt_class() _createUnableToPerformRequestErrorWithCode:-129];
      (v8)[2](v8, 0, v15);
    }

    else
    {
      v11 = [v5 documentIndexKey];
      if (v11)
      {
        v8[2](v8, 1, 0);
      }

      else
      {
        v12 = os_log_create("com.apple.synapse", "DocumentWorkflows");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v22 = v5;
          _os_log_impl(&dword_225901000, v12, OS_LOG_TYPE_DEFAULT, "%@ request doesn't have a valid document index key.", buf, 0xCu);
        }

        v13 = [objc_opt_class() _createUnableToPerformRequestErrorWithCode:-129];
        (v8)[2](v8, 0, v13);
      }
    }
  }

  else
  {
    (v8)[2](v8, 0, v10);
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __58__SYDocumentWorkflowsClient_canPerformRequest_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)canPerformRequest:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v7 = dispatch_semaphore_create(0);
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__SYDocumentWorkflowsClient_canPerformRequest_withError___block_invoke;
  v12[3] = &unk_27856B710;
  v14 = &v22;
  v15 = &v16;
  v8 = v7;
  v13 = v8;
  [(SYDocumentWorkflowsClient *)self canPerformRequest:v6 completion:v12];
  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  if (a4)
  {
    v9 = v17[5];
    if (v9)
    {
      *a4 = v9;
    }
  }

  v10 = *(v23 + 24);

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v10;
}

void __57__SYDocumentWorkflowsClient_canPerformRequest_withError___block_invoke(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)performRequest:(id)a3 withErrorHandler:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72__SYDocumentWorkflowsClient_performRequest_withErrorHandler_completion___block_invoke;
  v12[3] = &unk_27856BFB8;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [(SYDocumentWorkflowsClient *)self performRequest:a3 completion:v12];
}

uint64_t __72__SYDocumentWorkflowsClient_performRequest_withErrorHandler_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  if (v8)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))(v5, v8);
    }
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, a2);
  }

  return MEMORY[0x2821F96F8]();
}

- (void)performRequest:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__SYDocumentWorkflowsClient_performRequest_withCompletion___block_invoke;
  v8[3] = &unk_27856B738;
  v9 = v6;
  v7 = v6;
  [(SYDocumentWorkflowsClient *)self performRequest:a3 completion:v8];
}

uint64_t __59__SYDocumentWorkflowsClient_performRequest_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)performRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __55__SYDocumentWorkflowsClient_performRequest_completion___block_invoke;
  v16[3] = &unk_27856B738;
  v17 = v7;
  v8 = v7;
  v9 = MEMORY[0x22AA6A360](v16);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__SYDocumentWorkflowsClient_performRequest_completion___block_invoke_2;
  v12[3] = &unk_27856C008;
  v14 = self;
  v15 = v9;
  v13 = v6;
  v10 = v9;
  v11 = v6;
  [(SYDocumentWorkflowsClient *)self canPerformRequest:v11 completion:v12];
}

uint64_t __55__SYDocumentWorkflowsClient_performRequest_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __55__SYDocumentWorkflowsClient_performRequest_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__SYDocumentWorkflowsClient_performRequest_completion___block_invoke_33;
    v8[3] = &unk_27856BF18;
    v6 = *(a1 + 40);
    v10 = *(a1 + 48);
    v9 = *(a1 + 32);
    [v6 _dispatchRequestWithCompletion:v8];
  }

  else
  {
    v7 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __55__SYDocumentWorkflowsClient_performRequest_completion___block_invoke_2_cold_1(a1);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __55__SYDocumentWorkflowsClient_performRequest_completion___block_invoke_33(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __55__SYDocumentWorkflowsClient_performRequest_completion___block_invoke_2_34;
    v7[3] = &unk_27856BFE0;
    v8 = v4;
    v9 = *(a1 + 40);
    [v8 performWithServiceProxy:a2 completion:v7];
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 40) + 16);

    v6();
  }
}

void __55__SYDocumentWorkflowsClient_performRequest_completion___block_invoke_2_34(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __55__SYDocumentWorkflowsClient_performRequest_completion___block_invoke_2_34_cold_1(a1);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)hasOriginalDocumentForFileAtURL:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __72__SYDocumentWorkflowsClient_hasOriginalDocumentForFileAtURL_completion___block_invoke;
  v17[3] = &unk_27856C030;
  v8 = v7;
  v19 = v8;
  v9 = v6;
  v18 = v9;
  v10 = MEMORY[0x22AA6A360](v17);
  v16 = 0;
  v11 = [objc_opt_class() _verifyFeatureFlagWithError:&v16];
  v12 = v16;
  if (v11)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __72__SYDocumentWorkflowsClient_hasOriginalDocumentForFileAtURL_completion___block_invoke_37;
    v13[3] = &unk_27856C080;
    v15 = v10;
    v13[4] = self;
    v14 = v9;
    [SYDocumentAttributes fetchDocumentAttributesForFileAtURL:v14 completion:v13];
  }

  else
  {
    (v10)[2](v10, 0, v12);
  }
}

void __72__SYDocumentWorkflowsClient_hasOriginalDocumentForFileAtURL_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (*(a1 + 40))
  {
    v6 = a3;
    v7 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) path];
      v9 = [v5 originalFileURL];
      v10 = [v9 path];
      v12 = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_225901000, v7, OS_LOG_TYPE_DEFAULT, "Original document of: %@, is: %@", &v12, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __72__SYDocumentWorkflowsClient_hasOriginalDocumentForFileAtURL_completion___block_invoke_37(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __72__SYDocumentWorkflowsClient_hasOriginalDocumentForFileAtURL_completion___block_invoke_2;
    v5[3] = &unk_27856C058;
    v8 = *(a1 + 48);
    v6 = *(a1 + 40);
    v7 = v3;
    [v4 _dispatchRequestWithCompletion:v5];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __72__SYDocumentWorkflowsClient_hasOriginalDocumentForFileAtURL_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) path];
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&dword_225901000, v4, OS_LOG_TYPE_DEFAULT, "Asking for original document of: %@", buf, 0xCu);
    }

    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __72__SYDocumentWorkflowsClient_hasOriginalDocumentForFileAtURL_completion___block_invoke_38;
    v9[3] = &unk_27856B8D8;
    v10 = *(a1 + 48);
    [v3 hasOriginalDocumentForFileAtURL:v6 withAttributes:v7 completion:v9];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)hasOriginalDocumentForFileWithDocumentAttributes:(id)a3 completion:(id)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __89__SYDocumentWorkflowsClient_hasOriginalDocumentForFileWithDocumentAttributes_completion___block_invoke;
  v16[3] = &unk_27856B8D8;
  v17 = v6;
  v7 = v6;
  v8 = a3;
  v9 = MEMORY[0x22AA6A360](v16);
  v10 = [v8 indexKey];

  v18[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __89__SYDocumentWorkflowsClient_hasOriginalDocumentForFileWithDocumentAttributes_completion___block_invoke_2;
  v14[3] = &unk_27856BF68;
  v15 = v9;
  v12 = v9;
  [(SYDocumentWorkflowsClient *)self fetchAttributesForDocumentsWithIndexKeys:v11 completion:v14];

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __89__SYDocumentWorkflowsClient_hasOriginalDocumentForFileWithDocumentAttributes_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __89__SYDocumentWorkflowsClient_hasOriginalDocumentForFileWithDocumentAttributes_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 firstObject];
  (*(*(a1 + 32) + 16))();
}

- (void)openOriginalDocumentForFileAtURL:(id)a3 completion:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __73__SYDocumentWorkflowsClient_openOriginalDocumentForFileAtURL_completion___block_invoke;
  v19[3] = &unk_27856C0A8;
  v8 = v7;
  v21 = v8;
  v9 = v6;
  v20 = v9;
  v10 = MEMORY[0x22AA6A360](v19);
  v18 = 0;
  v11 = [SYDocumentAttributes documentAttributesForFileAtURL:v9 error:&v18];
  v12 = v18;
  if (v11)
  {
    v13 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v9 path];
      *buf = 138412290;
      v23 = v14;
      _os_log_impl(&dword_225901000, v13, OS_LOG_TYPE_DEFAULT, "Opening original document of: %@", buf, 0xCu);
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __73__SYDocumentWorkflowsClient_openOriginalDocumentForFileAtURL_completion___block_invoke_40;
    v16[3] = &unk_27856B738;
    v17 = v10;
    [(SYDocumentWorkflowsClient *)self openOriginalDocumentForFileWithDocumentAttributes:v11 completion:v16];
  }

  else
  {
    (v10)[2](v10, 0, v12);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __73__SYDocumentWorkflowsClient_openOriginalDocumentForFileAtURL_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (*(a1 + 40))
  {
    v6 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) path];
      v9 = 138412802;
      v10 = v7;
      v11 = 1024;
      v12 = a2;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_225901000, v6, OS_LOG_TYPE_DEFAULT, "Original document for: %@, was opened successfully: %d, error: %@", &v9, 0x1Cu);
    }

    (*(*(a1 + 40) + 16))();
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)openOriginalDocumentForFileWithDocumentAttributes:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(SYReturnToDocumentRequest);
  [(SYReturnToDocumentRequest *)v8 setDocumentAttributes:v7];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __90__SYDocumentWorkflowsClient_openOriginalDocumentForFileWithDocumentAttributes_completion___block_invoke;
  v10[3] = &unk_27856B738;
  v11 = v6;
  v9 = v6;
  [(SYDocumentWorkflowsClient *)self performRequest:v8 completion:v10];
}

uint64_t __90__SYDocumentWorkflowsClient_openOriginalDocumentForFileWithDocumentAttributes_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)hasLastModifiedDocumentForFileAtURL:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __76__SYDocumentWorkflowsClient_hasLastModifiedDocumentForFileAtURL_completion___block_invoke;
  v21[3] = &unk_27856C0D0;
  v8 = v7;
  v23 = v8;
  v9 = v6;
  v22 = v9;
  v10 = MEMORY[0x22AA6A360](v21);
  v20 = 0;
  v11 = [SYDocumentAttributes documentAttributesForFileAtURL:v9 error:&v20];
  v12 = v20;
  if (v11)
  {
    v19 = 0;
    v13 = [objc_opt_class() _verifyFeatureFlagWithError:&v19];
    v14 = v19;
    if (v13)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __76__SYDocumentWorkflowsClient_hasLastModifiedDocumentForFileAtURL_completion___block_invoke_43;
      v15[3] = &unk_27856C058;
      v18 = v10;
      v16 = v9;
      v17 = v11;
      [(SYDocumentWorkflowsClient *)self _dispatchRequestWithCompletion:v15];
    }

    else
    {
      (v10)[2](v10, 0, v14);
    }
  }

  else
  {
    (v10)[2](v10, 0, v12);
  }
}

void __76__SYDocumentWorkflowsClient_hasLastModifiedDocumentForFileAtURL_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (*(a1 + 40))
  {
    v6 = a3;
    v7 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) path];
      v9 = [v5 fileURL];
      v10 = [v9 path];
      v12 = 138478083;
      v13 = v8;
      v14 = 2113;
      v15 = v10;
      _os_log_impl(&dword_225901000, v7, OS_LOG_TYPE_DEFAULT, "Last modified document of: %{private}@, is: %{private}@", &v12, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __76__SYDocumentWorkflowsClient_hasLastModifiedDocumentForFileAtURL_completion___block_invoke_43(id *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [a1[4] path];
      *buf = 138477827;
      v12 = v5;
      _os_log_impl(&dword_225901000, v4, OS_LOG_TYPE_DEFAULT, "Asking for last modified document of: %{private}@", buf, 0xCu);
    }

    v6 = [a1[5] indexKey];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __76__SYDocumentWorkflowsClient_hasLastModifiedDocumentForFileAtURL_completion___block_invoke_44;
    v8[3] = &unk_27856C0F8;
    v9 = a1[4];
    v10 = a1[6];
    [v3 hasLastModifiedDocument:v6 completion:v8];
  }

  else
  {
    (*(a1[6] + 2))();
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __76__SYDocumentWorkflowsClient_hasLastModifiedDocumentForFileAtURL_completion___block_invoke_44(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 fileURL];
  v8 = [v7 path];
  v9 = [*(a1 + 32) path];
  v10 = [v8 isEqualToString:v9];

  if (v10)
  {
    v11 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(a1 + 32) path];
      v15 = 138477827;
      v16 = v12;
      _os_log_impl(&dword_225901000, v11, OS_LOG_TYPE_DEFAULT, "Last modified document is the requested fileURL: %{private}@", &v15, 0xCu);
    }

    v13 = *(*(a1 + 40) + 16);
  }

  else
  {
    v13 = *(*(a1 + 40) + 16);
  }

  v13();

  v14 = *MEMORY[0x277D85DE8];
}

- (void)hasLastModifiedDocumentForFileWithDocumentAttributes:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __93__SYDocumentWorkflowsClient_hasLastModifiedDocumentForFileWithDocumentAttributes_completion___block_invoke;
  v16[3] = &unk_27856C120;
  v8 = v7;
  v17 = v8;
  v9 = MEMORY[0x22AA6A360](v16);
  v15 = 0;
  v10 = [objc_opt_class() _verifyFeatureFlagWithError:&v15];
  v11 = v15;
  if (v10)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __93__SYDocumentWorkflowsClient_hasLastModifiedDocumentForFileWithDocumentAttributes_completion___block_invoke_2;
    v12[3] = &unk_27856BF18;
    v14 = v9;
    v13 = v6;
    [(SYDocumentWorkflowsClient *)self _dispatchRequestWithCompletion:v12];
  }

  else
  {
    (v9)[2](v9, 0, v11);
  }
}

uint64_t __93__SYDocumentWorkflowsClient_hasLastModifiedDocumentForFileWithDocumentAttributes_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __93__SYDocumentWorkflowsClient_hasLastModifiedDocumentForFileWithDocumentAttributes_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) indexKey];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __93__SYDocumentWorkflowsClient_hasLastModifiedDocumentForFileWithDocumentAttributes_completion___block_invoke_3;
    v5[3] = &unk_27856C120;
    v6 = *(a1 + 40);
    [v3 hasLastModifiedDocument:v4 completion:v5];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)openLastModifiedDocumentForFileAtURL:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __77__SYDocumentWorkflowsClient_openLastModifiedDocumentForFileAtURL_completion___block_invoke;
  v17[3] = &unk_27856C0A8;
  v19 = v7;
  v8 = v6;
  v18 = v8;
  v9 = v7;
  v10 = MEMORY[0x22AA6A360](v17);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__SYDocumentWorkflowsClient_openLastModifiedDocumentForFileAtURL_completion___block_invoke_45;
  v13[3] = &unk_27856C080;
  v15 = self;
  v16 = v10;
  v14 = v8;
  v11 = v8;
  v12 = v10;
  [SYDocumentAttributes fetchDocumentAttributesForFileAtURL:v11 completion:v13];
}

void __77__SYDocumentWorkflowsClient_openLastModifiedDocumentForFileAtURL_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (*(a1 + 40))
  {
    v6 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) path];
      v9 = 138412802;
      v10 = v7;
      v11 = 1024;
      v12 = a2;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_225901000, v6, OS_LOG_TYPE_DEFAULT, "Last modified document for: %@, was opened successfully: %d, error: %@", &v9, 0x1Cu);
    }

    (*(*(a1 + 40) + 16))();
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __77__SYDocumentWorkflowsClient_openLastModifiedDocumentForFileAtURL_completion___block_invoke_45(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) path];
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&dword_225901000, v4, OS_LOG_TYPE_DEFAULT, "Opening last modified document of: %@", buf, 0xCu);
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __77__SYDocumentWorkflowsClient_openLastModifiedDocumentForFileAtURL_completion___block_invoke_46;
    v8[3] = &unk_27856B738;
    v6 = *(a1 + 40);
    v9 = *(a1 + 48);
    [v6 openLastModifiedDocumentForFileWithDocumentAttributes:v3 completion:v8];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)openLastModifiedDocumentForFileWithDocumentAttributes:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __94__SYDocumentWorkflowsClient_openLastModifiedDocumentForFileWithDocumentAttributes_completion___block_invoke;
  v16[3] = &unk_27856B738;
  v8 = v7;
  v17 = v8;
  v9 = MEMORY[0x22AA6A360](v16);
  v15 = 0;
  v10 = [objc_opt_class() _verifyFeatureFlagWithError:&v15];
  v11 = v15;
  if (v10)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __94__SYDocumentWorkflowsClient_openLastModifiedDocumentForFileWithDocumentAttributes_completion___block_invoke_2;
    v12[3] = &unk_27856BF18;
    v14 = v9;
    v13 = v6;
    [(SYDocumentWorkflowsClient *)self _dispatchRequestWithCompletion:v12];
  }

  else
  {
    (v9)[2](v9, 0, v11);
  }
}

uint64_t __94__SYDocumentWorkflowsClient_openLastModifiedDocumentForFileWithDocumentAttributes_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __94__SYDocumentWorkflowsClient_openLastModifiedDocumentForFileWithDocumentAttributes_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) indexKey];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __94__SYDocumentWorkflowsClient_openLastModifiedDocumentForFileWithDocumentAttributes_completion___block_invoke_3;
    v5[3] = &unk_27856B738;
    v6 = *(a1 + 40);
    [v3 openLastModifiedDocument:v4 completion:v5];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)updateLinkedDocumentsWithCompletion:(id)a3
{
  v4 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__SYDocumentWorkflowsClient_updateLinkedDocumentsWithCompletion___block_invoke;
  v12[3] = &unk_27856B738;
  v5 = v4;
  v13 = v5;
  v6 = MEMORY[0x22AA6A360](v12);
  v11 = 0;
  v7 = [objc_opt_class() _verifyFeatureFlagWithError:&v11];
  v8 = v11;
  if (v7)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __65__SYDocumentWorkflowsClient_updateLinkedDocumentsWithCompletion___block_invoke_2;
    v9[3] = &unk_27856C148;
    v10 = v6;
    [(SYDocumentWorkflowsClient *)self _dispatchRequestWithCompletion:v9];
  }

  else
  {
    (v6)[2](v6, 0, v8);
  }
}

uint64_t __65__SYDocumentWorkflowsClient_updateLinkedDocumentsWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __65__SYDocumentWorkflowsClient_updateLinkedDocumentsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __65__SYDocumentWorkflowsClient_updateLinkedDocumentsWithCompletion___block_invoke_3;
    v5[3] = &unk_27856B738;
    v6 = *(a1 + 32);
    [a2 updateLinkedDocumentsWithCompletion:v5];
  }

  else
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }
}

- (void)unlinkDocumentsWithRelatedUniqueidentifiers:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __84__SYDocumentWorkflowsClient_unlinkDocumentsWithRelatedUniqueidentifiers_completion___block_invoke;
  v18[3] = &unk_27856B738;
  v8 = v7;
  v19 = v8;
  v9 = MEMORY[0x22AA6A360](v18);
  v17 = 0;
  v10 = [objc_opt_class() _verifyFeatureFlagWithError:&v17];
  v11 = v17;
  if (v10)
  {
    if ([v6 count])
    {
      v12 = [MEMORY[0x277CBEB98] setWithArray:v6];
      v13 = [v12 allObjects];

      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __84__SYDocumentWorkflowsClient_unlinkDocumentsWithRelatedUniqueidentifiers_completion___block_invoke_2;
      v14[3] = &unk_27856BF18;
      v16 = v9;
      v6 = v13;
      v15 = v6;
      [(SYDocumentWorkflowsClient *)self _dispatchRequestWithCompletion:v14];
    }

    else
    {
      v9[2](v9, 1, 0);
    }
  }

  else
  {
    (v9)[2](v9, 0, v11);
  }
}

uint64_t __84__SYDocumentWorkflowsClient_unlinkDocumentsWithRelatedUniqueidentifiers_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __84__SYDocumentWorkflowsClient_unlinkDocumentsWithRelatedUniqueidentifiers_completion___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __84__SYDocumentWorkflowsClient_unlinkDocumentsWithRelatedUniqueidentifiers_completion___block_invoke_3;
    v6[3] = &unk_27856B738;
    v4 = *(a1 + 32);
    v7 = *(a1 + 40);
    [a2 unlinkDocumentsWithRelatedUniqueIdentifiers:v4 completion:v6];
  }

  else
  {
    v5 = *(*(a1 + 40) + 16);

    v5();
  }
}

- (void)_dispatchRequestWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SYDocumentWorkflowsClient *)self processingQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__SYDocumentWorkflowsClient__dispatchRequestWithCompletion___block_invoke;
  v7[3] = &unk_27856B978;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __60__SYDocumentWorkflowsClient__dispatchRequestWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _createConnectionIfNecessary];
  v2 = [*(a1 + 32) connection];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__SYDocumentWorkflowsClient__dispatchRequestWithCompletion___block_invoke_2;
  v10[3] = &unk_27856BCB0;
  v3 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v3;
  v4 = [v2 remoteObjectProxyWithErrorHandler:v10];

  if (v4)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_225901000, v5, OS_LOG_TYPE_DEFAULT, "Service is not available.", v9, 2u);
    }

    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = [objc_opt_class() _createUnableToPerformRequestErrorWithCode:-124];
    (*(v7 + 16))(v7, 0, v8);
  }
}

void __60__SYDocumentWorkflowsClient__dispatchRequestWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __60__SYDocumentWorkflowsClient__dispatchRequestWithCompletion___block_invoke_2_cold_1(v3, v4);
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = [objc_opt_class() _createUnableToPerformRequestErrorWithCode:-124];
  (*(v6 + 16))(v6, 0, v7);
}

- (void)_createConnectionIfNecessary
{
  v40[5] = *MEMORY[0x277D85DE8];
  v3 = [(SYDocumentWorkflowsClient *)self connection];

  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x277CCAE80]);
    v5 = +[SYDocumentWorkflowsService serviceName];
    v6 = [v4 initWithMachServiceName:v5 options:0];
    [(SYDocumentWorkflowsClient *)self setConnection:v6];

    v7 = [(SYDocumentWorkflowsClient *)self connection];
    v8 = [(SYDocumentWorkflowsClient *)self processingQueue];
    [v7 _setQueue:v8];

    v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2838F6570];
    v10 = [(SYDocumentWorkflowsClient *)self connection];
    [v10 setRemoteObjectInterface:v9];

    v11 = [(SYDocumentWorkflowsClient *)self connection];
    v12 = [v11 remoteObjectInterface];
    v13 = MEMORY[0x277CBEB98];
    v40[0] = objc_opt_class();
    v40[1] = objc_opt_class();
    v40[2] = objc_opt_class();
    v40[3] = objc_opt_class();
    v40[4] = objc_opt_class();
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:5];
    v15 = [v13 setWithArray:v14];
    [v12 setClasses:v15 forSelector:sel_fetchAttributesForDocumentsWithIndexKeys_completion_ argumentIndex:0 ofReply:1];

    v16 = [(SYDocumentWorkflowsClient *)self connection];
    v17 = [v16 remoteObjectInterface];
    v18 = MEMORY[0x277CBEB98];
    v39[0] = objc_opt_class();
    v39[1] = objc_opt_class();
    v39[2] = objc_opt_class();
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:3];
    v20 = [v18 setWithArray:v19];
    [v17 setClasses:v20 forSelector:sel_hasLastModifiedDocument_completion_ argumentIndex:0 ofReply:1];

    v21 = [(SYDocumentWorkflowsClient *)self connection];
    v22 = [v21 remoteObjectInterface];
    v23 = MEMORY[0x277CBEB98];
    v38[0] = objc_opt_class();
    v38[1] = objc_opt_class();
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
    v25 = [v23 setWithArray:v24];
    [v22 setClasses:v25 forSelector:sel_fetchUserActivityForDocumentIndexKey_completion_ argumentIndex:0 ofReply:1];

    objc_initWeak(&location, self);
    v26 = [(SYDocumentWorkflowsClient *)self connection];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __57__SYDocumentWorkflowsClient__createConnectionIfNecessary__block_invoke;
    v35[3] = &unk_27856B5A0;
    objc_copyWeak(&v36, &location);
    [v26 setInvalidationHandler:v35];

    v27 = [(SYDocumentWorkflowsClient *)self connection];
    v30 = MEMORY[0x277D85DD0];
    v31 = 3221225472;
    v32 = __57__SYDocumentWorkflowsClient__createConnectionIfNecessary__block_invoke_126;
    v33 = &unk_27856B5A0;
    objc_copyWeak(&v34, &location);
    [v27 setInterruptionHandler:&v30];

    v28 = [(SYDocumentWorkflowsClient *)self connection:v30];
    [v28 resume];

    objc_destroyWeak(&v34);
    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __57__SYDocumentWorkflowsClient__createConnectionIfNecessary__block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_225901000, v2, OS_LOG_TYPE_DEFAULT, "Connection to service was invalidated.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateConnection];
}

void __57__SYDocumentWorkflowsClient__createConnectionIfNecessary__block_invoke_126(uint64_t a1)
{
  v2 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_225901000, v2, OS_LOG_TYPE_DEFAULT, "Connection to service was interrupted.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateConnection];
}

- (void)_invalidateConnection
{
  [(NSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;
}

void __55__SYDocumentWorkflowsClient_performRequest_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_3(&dword_225901000, v2, v3, "Unable to perform request: %@, error: %@");
  v4 = *MEMORY[0x277D85DE8];
}

void __55__SYDocumentWorkflowsClient_performRequest_completion___block_invoke_2_34_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_3(&dword_225901000, v2, v3, "Invoking request: %@, failed with error: %@");
  v4 = *MEMORY[0x277D85DE8];
}

void __60__SYDocumentWorkflowsClient__dispatchRequestWithCompletion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_225901000, a2, OS_LOG_TYPE_ERROR, "Unable to connect to service, error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end