@interface WBSBrowsingDataImportService
- (void)parseChromeExtensionsFromFileHandle:(id)handle delegate:(id)delegate completionHandler:(id)handler;
- (void)parseChromeHistoryJSONFromFileHandle:(id)handle ageLimit:(double)limit delegate:(id)delegate completionHandler:(id)handler;
- (void)parseCreditCardJSONFromFileHandle:(id)handle delegate:(id)delegate completionHandler:(id)handler;
- (void)parseExtensionsFromFileHandle:(id)handle delegate:(id)delegate completionHandler:(id)handler;
- (void)parseHistoryJSONFromFileHandle:(id)handle ageLimit:(double)limit delegate:(id)delegate completionHandler:(id)handler;
- (void)parseNetscapeBookmarkFromFileHandle:(id)handle delegate:(id)delegate completionHandler:(id)handler;
- (void)scanImportURLs:(id)ls sandboxExtensions:(id)extensions completionHandler:(id)handler;
@end

@implementation WBSBrowsingDataImportService

- (void)parseChromeExtensionsFromFileHandle:(id)handle delegate:(id)delegate completionHandler:(id)handler
{
  delegateCopy = delegate;
  handlerCopy = handler;
  handleCopy = handle;
  v10 = objc_alloc_init(WBSChromeExtensionsImporter);
  [(WBSChromeExtensionsImporter *)v10 setDelegate:delegateCopy];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __95__WBSBrowsingDataImportService_parseChromeExtensionsFromFileHandle_delegate_completionHandler___block_invoke;
  v13[3] = &unk_1E7CF2D48;
  v14 = delegateCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = delegateCopy;
  [(WBSChromeExtensionsImporter *)v10 parseFileHandle:handleCopy completionHandler:v13];
}

void __95__WBSBrowsingDataImportService_parseChromeExtensionsFromFileHandle_delegate_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXImport();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __95__WBSBrowsingDataImportService_parseChromeExtensionsFromFileHandle_delegate_completionHandler___block_invoke_cold_1(v4);
    }
  }

  [*(a1 + 32) finishWithCompletionHandler:*(a1 + 40)];
}

- (void)parseHistoryJSONFromFileHandle:(id)handle ageLimit:(double)limit delegate:(id)delegate completionHandler:(id)handler
{
  handlerCopy = handler;
  delegateCopy = delegate;
  handleCopy = handle;
  v12 = objc_alloc_init(WBSHistoryImporter);
  [(WBSHistoryImporter *)v12 setDelegate:delegateCopy];
  [(WBSHistoryImporter *)v12 setAgeLimit:limit];
  v13 = 0;
  [(WBSHistoryImporter *)v12 parseFileHandle:handleCopy error:&v13];

  [delegateCopy finishWithCompletionHandler:handlerCopy];
}

- (void)parseCreditCardJSONFromFileHandle:(id)handle delegate:(id)delegate completionHandler:(id)handler
{
  handlerCopy = handler;
  delegateCopy = delegate;
  handleCopy = handle;
  v10 = objc_alloc_init(WBSCreditCardImporter);
  [(WBSCreditCardImporter *)v10 setDelegate:delegateCopy];
  v11 = 0;
  [(WBSCreditCardImporter *)v10 parseFileHandle:handleCopy error:&v11];

  [delegateCopy finishWithCompletionHandler:handlerCopy];
}

- (void)parseNetscapeBookmarkFromFileHandle:(id)handle delegate:(id)delegate completionHandler:(id)handler
{
  handlerCopy = handler;
  delegateCopy = delegate;
  handleCopy = handle;
  v10 = objc_alloc_init(WBSNetscapeBookmarkFileReader);
  [(WBSNetscapeBookmarkFileReader *)v10 setDelegate:delegateCopy];
  v17 = 0;
  [(WBSNetscapeBookmarkFileReader *)v10 readFromFileHandle:handleCopy error:&v17];

  v11 = v17;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __95__WBSBrowsingDataImportService_parseNetscapeBookmarkFromFileHandle_delegate_completionHandler___block_invoke;
  v14[3] = &unk_1E7CF2988;
  v15 = v11;
  v16 = handlerCopy;
  v12 = v11;
  v13 = handlerCopy;
  [delegateCopy finishWithCompletionHandler:v14];
}

void __95__WBSBrowsingDataImportService_parseNetscapeBookmarkFromFileHandle_delegate_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXImport();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __95__WBSBrowsingDataImportService_parseNetscapeBookmarkFromFileHandle_delegate_completionHandler___block_invoke_cold_1(v4);
    }
  }

  v5 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

- (void)parseExtensionsFromFileHandle:(id)handle delegate:(id)delegate completionHandler:(id)handler
{
  delegateCopy = delegate;
  handlerCopy = handler;
  handleCopy = handle;
  v10 = objc_alloc_init(WBSExtensionsImporter);
  [(WBSExtensionsImporter *)v10 setDelegate:delegateCopy];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __89__WBSBrowsingDataImportService_parseExtensionsFromFileHandle_delegate_completionHandler___block_invoke;
  v13[3] = &unk_1E7CF2D48;
  v14 = delegateCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = delegateCopy;
  [(WBSExtensionsImporter *)v10 parseFileHandle:handleCopy completionHandler:v13];
}

void __89__WBSBrowsingDataImportService_parseExtensionsFromFileHandle_delegate_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXImport();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __89__WBSBrowsingDataImportService_parseExtensionsFromFileHandle_delegate_completionHandler___block_invoke_cold_1(v4);
    }
  }

  [*(a1 + 32) finishWithCompletionHandler:*(a1 + 40)];
}

- (void)parseChromeHistoryJSONFromFileHandle:(id)handle ageLimit:(double)limit delegate:(id)delegate completionHandler:(id)handler
{
  handlerCopy = handler;
  delegateCopy = delegate;
  handleCopy = handle;
  v12 = objc_alloc_init(WBSChromeHistoryImporter);
  [(WBSChromeHistoryImporter *)v12 setDelegate:delegateCopy];
  [(WBSChromeHistoryImporter *)v12 setAgeLimit:limit];
  v13 = 0;
  [(WBSChromeHistoryImporter *)v12 parseFileHandle:handleCopy error:&v13];

  [delegateCopy finishWithCompletionHandler:handlerCopy];
}

- (void)scanImportURLs:(id)ls sandboxExtensions:(id)extensions completionHandler:(id)handler
{
  handlerCopy = handler;
  extensionsCopy = extensions;
  lsCopy = ls;
  v10 = [extensionsCopy safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_68];
  v11 = objc_alloc_init(_WBSBrowsingDataImportScanner);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __83__WBSBrowsingDataImportService_scanImportURLs_sandboxExtensions_completionHandler___block_invoke_9;
  v14[3] = &unk_1E7CF50E0;
  v15 = v10;
  v16 = handlerCopy;
  v12 = handlerCopy;
  v13 = v10;
  [(_WBSBrowsingDataImportScanner *)v11 scanImportURLs:lsCopy sandboxExtensions:extensionsCopy completionHandler:v14];
}

id __83__WBSBrowsingDataImportService_scanImportURLs_sandboxExtensions_completionHandler___block_invoke(int a1, id a2)
{
  [a2 UTF8String];
  v2 = sandbox_extension_consume();
  if (v2 == -1)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXImport();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __83__WBSBrowsingDataImportService_scanImportURLs_sandboxExtensions_completionHandler___block_invoke_cold_1(v4);
    }

    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x1E696AD98] numberWithLongLong:v2];
  }

  return v3;
}

void __83__WBSBrowsingDataImportService_scanImportURLs_sandboxExtensions_completionHandler___block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v13 + 1) + 8 * v11) unsignedLongLongValue];
        sandbox_extension_release();
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  (*(*(a1 + 40) + 16))();
  v12 = *MEMORY[0x1E69E9840];
}

void __95__WBSBrowsingDataImportService_parseChromeExtensionsFromFileHandle_delegate_completionHandler___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2_0() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void __95__WBSBrowsingDataImportService_parseNetscapeBookmarkFromFileHandle_delegate_completionHandler___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2_0() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void __89__WBSBrowsingDataImportService_parseExtensionsFromFileHandle_delegate_completionHandler___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2_0() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void __83__WBSBrowsingDataImportService_scanImportURLs_sandboxExtensions_completionHandler___block_invoke_cold_1(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = *__error();
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_error_impl(&dword_1B8447000, v1, OS_LOG_TYPE_ERROR, "Failed to consume extension: %{errno}i", v4, 8u);

  v3 = *MEMORY[0x1E69E9840];
}

@end