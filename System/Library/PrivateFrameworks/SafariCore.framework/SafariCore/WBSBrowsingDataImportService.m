@interface WBSBrowsingDataImportService
- (void)parseChromeExtensionsFromFileHandle:(id)a3 delegate:(id)a4 completionHandler:(id)a5;
- (void)parseChromeHistoryJSONFromFileHandle:(id)a3 ageLimit:(double)a4 delegate:(id)a5 completionHandler:(id)a6;
- (void)parseCreditCardJSONFromFileHandle:(id)a3 delegate:(id)a4 completionHandler:(id)a5;
- (void)parseExtensionsFromFileHandle:(id)a3 delegate:(id)a4 completionHandler:(id)a5;
- (void)parseHistoryJSONFromFileHandle:(id)a3 ageLimit:(double)a4 delegate:(id)a5 completionHandler:(id)a6;
- (void)parseNetscapeBookmarkFromFileHandle:(id)a3 delegate:(id)a4 completionHandler:(id)a5;
- (void)scanImportURLs:(id)a3 sandboxExtensions:(id)a4 completionHandler:(id)a5;
@end

@implementation WBSBrowsingDataImportService

- (void)parseChromeExtensionsFromFileHandle:(id)a3 delegate:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = objc_alloc_init(WBSChromeExtensionsImporter);
  [(WBSChromeExtensionsImporter *)v10 setDelegate:v7];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __95__WBSBrowsingDataImportService_parseChromeExtensionsFromFileHandle_delegate_completionHandler___block_invoke;
  v13[3] = &unk_1E7CF2D48;
  v14 = v7;
  v15 = v8;
  v11 = v8;
  v12 = v7;
  [(WBSChromeExtensionsImporter *)v10 parseFileHandle:v9 completionHandler:v13];
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

- (void)parseHistoryJSONFromFileHandle:(id)a3 ageLimit:(double)a4 delegate:(id)a5 completionHandler:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a3;
  v12 = objc_alloc_init(WBSHistoryImporter);
  [(WBSHistoryImporter *)v12 setDelegate:v10];
  [(WBSHistoryImporter *)v12 setAgeLimit:a4];
  v13 = 0;
  [(WBSHistoryImporter *)v12 parseFileHandle:v11 error:&v13];

  [v10 finishWithCompletionHandler:v9];
}

- (void)parseCreditCardJSONFromFileHandle:(id)a3 delegate:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(WBSCreditCardImporter);
  [(WBSCreditCardImporter *)v10 setDelegate:v8];
  v11 = 0;
  [(WBSCreditCardImporter *)v10 parseFileHandle:v9 error:&v11];

  [v8 finishWithCompletionHandler:v7];
}

- (void)parseNetscapeBookmarkFromFileHandle:(id)a3 delegate:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(WBSNetscapeBookmarkFileReader);
  [(WBSNetscapeBookmarkFileReader *)v10 setDelegate:v8];
  v17 = 0;
  [(WBSNetscapeBookmarkFileReader *)v10 readFromFileHandle:v9 error:&v17];

  v11 = v17;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __95__WBSBrowsingDataImportService_parseNetscapeBookmarkFromFileHandle_delegate_completionHandler___block_invoke;
  v14[3] = &unk_1E7CF2988;
  v15 = v11;
  v16 = v7;
  v12 = v11;
  v13 = v7;
  [v8 finishWithCompletionHandler:v14];
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

- (void)parseExtensionsFromFileHandle:(id)a3 delegate:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = objc_alloc_init(WBSExtensionsImporter);
  [(WBSExtensionsImporter *)v10 setDelegate:v7];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __89__WBSBrowsingDataImportService_parseExtensionsFromFileHandle_delegate_completionHandler___block_invoke;
  v13[3] = &unk_1E7CF2D48;
  v14 = v7;
  v15 = v8;
  v11 = v8;
  v12 = v7;
  [(WBSExtensionsImporter *)v10 parseFileHandle:v9 completionHandler:v13];
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

- (void)parseChromeHistoryJSONFromFileHandle:(id)a3 ageLimit:(double)a4 delegate:(id)a5 completionHandler:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a3;
  v12 = objc_alloc_init(WBSChromeHistoryImporter);
  [(WBSChromeHistoryImporter *)v12 setDelegate:v10];
  [(WBSChromeHistoryImporter *)v12 setAgeLimit:a4];
  v13 = 0;
  [(WBSChromeHistoryImporter *)v12 parseFileHandle:v11 error:&v13];

  [v10 finishWithCompletionHandler:v9];
}

- (void)scanImportURLs:(id)a3 sandboxExtensions:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [v8 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_68];
  v11 = objc_alloc_init(_WBSBrowsingDataImportScanner);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __83__WBSBrowsingDataImportService_scanImportURLs_sandboxExtensions_completionHandler___block_invoke_9;
  v14[3] = &unk_1E7CF50E0;
  v15 = v10;
  v16 = v7;
  v12 = v7;
  v13 = v10;
  [(_WBSBrowsingDataImportScanner *)v11 scanImportURLs:v9 sandboxExtensions:v8 completionHandler:v14];
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