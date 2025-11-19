@interface SYDocumentWorkflowsActivityChangeHandler
- (BOOL)canHandleUserActivityChange:(id)a3 appStateObserver:(id)a4;
- (SYDocumentWorkflowsActivityChangeHandler)init;
- (void)_fetchAttributesForItemsWithIndexKeys:(id)a3 maxRetryCount:(int64_t)a4 completion:(id)a5;
- (void)handleActiveUserActivityChange:(id)a3 withCompletion:(id)a4;
@end

@implementation SYDocumentWorkflowsActivityChangeHandler

- (SYDocumentWorkflowsActivityChangeHandler)init
{
  v8.receiver = self;
  v8.super_class = SYDocumentWorkflowsActivityChangeHandler;
  v2 = [(SYDocumentWorkflowsActivityChangeHandler *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(SYDocumentWorkflowsClient);
    client = v2->_client;
    v2->_client = v3;

    v5 = dispatch_queue_create("com.apple.synapse.DocumentWorkflowsActivityChangeHandler.retryQueue", 0);
    retryQueue = v2->_retryQueue;
    v2->_retryQueue = v5;
  }

  return v2;
}

- (BOOL)canHandleUserActivityChange:(id)a3 appStateObserver:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ((SYIsMailApp() & 1) == 0)
  {
    v9 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v16 = 0;
    v10 = "User activity isn't from Mail";
    v11 = &v16;
LABEL_14:
    _os_log_impl(&dword_225901000, v9, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
    goto LABEL_15;
  }

  if (([v6 appIsActive] & 1) == 0)
  {
    v9 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v15 = 0;
    v10 = "App changed user activity while it is inactive";
    v11 = &v15;
    goto LABEL_14;
  }

  if ((SYIsCurrentLocalUserActivity(v5) & 1) == 0)
  {
    v9 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v14 = 0;
    v10 = "User activity isn't the current user activity";
    v11 = &v14;
    goto LABEL_14;
  }

  v7 = [SYDocumentWorkflowsActivityChangeHandler _indexKeyFromUserActivity:v5];

  if (!v7)
  {
    v9 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 0;
      v10 = "User activity doesn't have an index key";
      v11 = &v13;
      goto LABEL_14;
    }

LABEL_15:

    v8 = 0;
    goto LABEL_16;
  }

  v8 = 1;
LABEL_16:

  return v8;
}

- (void)handleActiveUserActivityChange:(id)a3 withCompletion:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __90__SYDocumentWorkflowsActivityChangeHandler_handleActiveUserActivityChange_withCompletion___block_invoke;
  v27[3] = &unk_27856B738;
  v8 = v7;
  v28 = v8;
  v9 = MEMORY[0x22AA6A360](v27);
  v10 = [SYDocumentWorkflowsActivityChangeHandler _indexKeyFromUserActivity:v6];
  v11 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v10;
    _os_log_impl(&dword_225901000, v11, OS_LOG_TYPE_DEFAULT, "Handle user activity with index key: %@", buf, 0xCu);
  }

  v12 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [SYDocumentWorkflowsActivityChangeHandler handleActiveUserActivityChange:v6 withCompletion:v12];
  }

  v13 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v10;
    _os_log_impl(&dword_225901000, v13, OS_LOG_TYPE_DEFAULT, "Saving current user activity for message with index key: %@", buf, 0xCu);
  }

  v14 = [MEMORY[0x277CCA8D8] mainBundle];
  v15 = [v14 bundleIdentifier];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = &stru_2838DFF18;
  }

  v18 = v17;

  [v6 setTitle:&stru_2838DFF18];
  client = self->_client;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __90__SYDocumentWorkflowsActivityChangeHandler_handleActiveUserActivityChange_withCompletion___block_invoke_7;
  v23[3] = &unk_27856C008;
  v25 = self;
  v26 = v9;
  v24 = v10;
  v20 = v10;
  v21 = v9;
  [(SYDocumentWorkflowsClient *)client saveUserActivity:v6 forDocumentIndexKey:v20 sourceBundleIdentifier:v18 completion:v23];

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __90__SYDocumentWorkflowsActivityChangeHandler_handleActiveUserActivityChange_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __90__SYDocumentWorkflowsActivityChangeHandler_handleActiveUserActivityChange_withCompletion___block_invoke_7(uint64_t a1, char a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  v7 = v6;
  if (!v5 || (a2 & 1) != 0)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138412290;
      v17 = v8;
      _os_log_impl(&dword_225901000, v7, OS_LOG_TYPE_DEFAULT, "Fetching attachments for message with index key: %@", buf, 0xCu);
    }

    v9 = *(a1 + 40);
    v15 = *(a1 + 32);
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __90__SYDocumentWorkflowsActivityChangeHandler_handleActiveUserActivityChange_withCompletion___block_invoke_9;
    v12[3] = &unk_27856C270;
    v13 = *(a1 + 32);
    v14 = *(a1 + 48);
    [v9 _fetchAttributesForItemsWithIndexKeys:v10 maxRetryCount:3 completion:v12];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __90__SYDocumentWorkflowsActivityChangeHandler_handleActiveUserActivityChange_withCompletion___block_invoke_7_cold_1(a1);
    }

    (*(*(a1 + 48) + 16))();
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __90__SYDocumentWorkflowsActivityChangeHandler_handleActiveUserActivityChange_withCompletion___block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  v8 = v7;
  if (v5 || !v6)
  {
    v30 = v6;
    v9 = v7;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v5 count];
      v11 = *(a1 + 32);
      *buf = 134218242;
      v39 = v10;
      v40 = 2112;
      v41 = v11;
      _os_log_impl(&dword_225901000, v9, OS_LOG_TYPE_DEFAULT, "Found %ld attachments for message with index key: %@", buf, 0x16u);
    }

    v29 = a1;

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = v5;
    v12 = v5;
    v13 = [v12 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (!v13)
    {
LABEL_27:

      (*(*(v29 + 40) + 16))();
      v6 = v30;
      v5 = v31;
      goto LABEL_28;
    }

    v14 = v13;
    v15 = *v34;
LABEL_10:
    v16 = 0;
    while (1)
    {
      if (*v34 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v33 + 1) + 8 * v16);
      v18 = [v17 originalFileURL];
      v19 = [SYDocumentAttributes documentAttributesForFileAtURL:v18];

      if (v19)
      {
        v20 = os_log_create("com.apple.synapse", "DocumentWorkflows");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [v17 originalFileURL];
          *buf = 138412290;
          v39 = v21;
          _os_log_impl(&dword_225901000, v20, OS_LOG_TYPE_DEFAULT, "Skip attachment with existing document attributes, URL: %@", buf, 0xCu);
        }

        v22 = v20;
        goto LABEL_23;
      }

      v23 = [v17 originalFileURL];
      v32 = 0;
      v24 = [v17 saveToFileURL:v23 error:&v32];
      v22 = v32;

      v25 = os_log_create("com.apple.synapse", "DocumentWorkflows");
      v20 = v25;
      if ((v24 & 1) == 0)
      {
        break;
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v17 originalFileURL];
        *buf = 138412290;
        v39 = v26;
        _os_log_impl(&dword_225901000, v20, OS_LOG_TYPE_DEFAULT, "Extended attributes added to URL: %@", buf, 0xCu);
LABEL_20:
      }

LABEL_22:

LABEL_23:
      if (v14 == ++v16)
      {
        v27 = [v12 countByEnumeratingWithState:&v33 objects:v37 count:16];
        v14 = v27;
        if (!v27)
        {
          goto LABEL_27;
        }

        goto LABEL_10;
      }
    }

    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v26 = [v17 originalFileURL];
    *buf = 138412546;
    v39 = v26;
    v40 = 2112;
    v41 = v22;
    _os_log_error_impl(&dword_225901000, v20, OS_LOG_TYPE_ERROR, "Unable to save extended attributes to URL: %@, error: %@", buf, 0x16u);
    goto LABEL_20;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __90__SYDocumentWorkflowsActivityChangeHandler_handleActiveUserActivityChange_withCompletion___block_invoke_9_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
LABEL_28:

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_fetchAttributesForItemsWithIndexKeys:(id)a3 maxRetryCount:(int64_t)a4 completion:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v19 = v8;
    v20 = 2048;
    v21 = a4;
    _os_log_impl(&dword_225901000, v10, OS_LOG_TYPE_DEFAULT, "Fetching attributes for items with index keys: %@, retryCount: %ld", buf, 0x16u);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __107__SYDocumentWorkflowsActivityChangeHandler__fetchAttributesForItemsWithIndexKeys_maxRetryCount_completion___block_invoke;
  v14[3] = &unk_27856C2C0;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = a4;
  v11 = v9;
  v12 = v8;
  [SYDocumentAttributesFetchRequest fetchAttributesForDocumentsWithIndexKeys:v12 completion:v14];

  v13 = *MEMORY[0x277D85DE8];
}

void __107__SYDocumentWorkflowsActivityChangeHandler__fetchAttributesForItemsWithIndexKeys_maxRetryCount_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || [v5 count] || *(a1 + 56) < 1)
  {
    v7 = *(a1 + 48);
    if (v7)
    {
      (*(v7 + 16))(v7, v5, v6);
    }
  }

  else
  {
    objc_initWeak(&location, *(a1 + 32));
    v8 = dispatch_time(0, 1500000000);
    v9 = *(*(a1 + 32) + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __107__SYDocumentWorkflowsActivityChangeHandler__fetchAttributesForItemsWithIndexKeys_maxRetryCount_completion___block_invoke_2;
    block[3] = &unk_27856C298;
    objc_copyWeak(v16, &location);
    v10 = *(a1 + 40);
    v12 = *(a1 + 48);
    v11 = *(a1 + 56);
    v14 = v10;
    v16[1] = v11;
    v15 = v12;
    dispatch_after(v8, v9, block);

    objc_destroyWeak(v16);
    objc_destroyWeak(&location);
  }
}

void __107__SYDocumentWorkflowsActivityChangeHandler__fetchAttributesForItemsWithIndexKeys_maxRetryCount_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _fetchAttributesForItemsWithIndexKeys:*(a1 + 32) maxRetryCount:*(a1 + 56) - 1 completion:*(a1 + 40)];
}

- (void)handleActiveUserActivityChange:(void *)a1 withCompletion:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 _syLoggableDescription];
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_225901000, a2, OS_LOG_TYPE_DEBUG, "%@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void __90__SYDocumentWorkflowsActivityChangeHandler_handleActiveUserActivityChange_withCompletion___block_invoke_7_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_3(&dword_225901000, v2, v3, "Unable to save user activity for index key: %@, error: %@");
  v4 = *MEMORY[0x277D85DE8];
}

void __90__SYDocumentWorkflowsActivityChangeHandler_handleActiveUserActivityChange_withCompletion___block_invoke_9_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_3(&dword_225901000, v2, v3, "Unable to fetch attachments for message with index key: %@, error: %@");
  v4 = *MEMORY[0x277D85DE8];
}

@end