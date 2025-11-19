@interface WBSExtensionsExporter
+ (id)extensionDataWithDisplayName:(id)a3 developerName:(id)a4 composedIdentifier:(id)a5 adamIdentifier:(id)a6 alternatePlatformExtensionBundleIdentifier:(id)a7 alternatePlatformAppBundleIdentifier:(id)a8;
- (WBSExtensionsExporter)initWithURL:(id)a3 error:(id *)a4;
- (void)exportExtensionDictionaries:(id)a3 completionHandler:(id)a4;
@end

@implementation WBSExtensionsExporter

+ (id)extensionDataWithDisplayName:(id)a3 developerName:(id)a4 composedIdentifier:(id)a5 adamIdentifier:(id)a6 alternatePlatformExtensionBundleIdentifier:(id)a7 alternatePlatformAppBundleIdentifier:(id)a8
{
  v33 = *MEMORY[0x1E69E9840];
  v13 = a4;
  v28 = a6;
  v14 = a7;
  v15 = a8;
  v16 = MEMORY[0x1E695DF90];
  v17 = *MEMORY[0x1E69C8B88];
  v29 = *MEMORY[0x1E69C8BA0];
  v30 = v17;
  v31 = a3;
  v32 = a5;
  v18 = MEMORY[0x1E695DF20];
  v19 = a5;
  v20 = a3;
  v21 = [v18 dictionaryWithObjects:&v31 forKeys:&v29 count:2];
  v22 = [v16 dictionaryWithDictionary:v21];

  v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v13)
  {
    [v22 setObject:v13 forKeyedSubscript:*MEMORY[0x1E69C8B98]];
  }

  v24 = v28;
  if (v28)
  {
    [v23 setObject:v28 forKeyedSubscript:*MEMORY[0x1E69C8BC8]];
  }

  if (v14)
  {
    [v23 setObject:v14 forKeyedSubscript:*MEMORY[0x1E69C8BB0]];
  }

  if (v15)
  {
    [v23 setObject:v15 forKeyedSubscript:*MEMORY[0x1E69C8BA8]];
  }

  if ([v23 count])
  {
    v25 = [v23 copy];
    [v22 setObject:v25 forKeyedSubscript:*MEMORY[0x1E69C8BB8]];
  }

  v26 = [v22 copy];

  return v26;
}

- (WBSExtensionsExporter)initWithURL:(id)a3 error:(id *)a4
{
  v10.receiver = self;
  v10.super_class = WBSExtensionsExporter;
  v4 = [(WBSJSONExporter *)&v10 initWithURL:a3 error:a4];
  if (v4)
  {
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.SafariShared.WBSExtensionsExporter", v5);
    extensionsDataExportQueue = v4->_extensionsDataExportQueue;
    v4->_extensionsDataExportQueue = v6;

    v8 = v4;
  }

  return v4;
}

- (void)exportExtensionDictionaries:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  extensionsDataExportQueue = self->_extensionsDataExportQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__WBSExtensionsExporter_exportExtensionDictionaries_completionHandler___block_invoke;
  block[3] = &unk_1E8283058;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(extensionsDataExportQueue, block);
}

void __71__WBSExtensionsExporter_exportExtensionDictionaries_completionHandler___block_invoke(id *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [a1[4] jsonWriter];
  v3 = *MEMORY[0x1E69C8B78];
  v22 = 0;
  [v2 beginArrayForKey:v3 error:&v22];
  v4 = v22;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = a1[5];
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        v10 = v4;
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v18 + 1) + 8 * v9);
        v12 = [a1[4] jsonWriter];
        v17 = v10;
        [v12 appendEntry:v11 error:&v17];
        v4 = v17;

        if (v4)
        {
          v13 = WBS_LOG_CHANNEL_PREFIXExport();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            __71__WBSExtensionsExporter_exportExtensionDictionaries_completionHandler___block_invoke_cold_1(v23, v13, v4, &v24);
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v18 objects:v25 count:16];
    }

    while (v7);
  }

  v14 = a1[4];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __71__WBSExtensionsExporter_exportExtensionDictionaries_completionHandler___block_invoke_2;
  v15[3] = &unk_1E8285E10;
  v16 = a1[6];
  [v14 finishWithCompletionHandler:v15];
}

void __71__WBSExtensionsExporter_exportExtensionDictionaries_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXExport();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __71__WBSExtensionsExporter_exportExtensionDictionaries_completionHandler___block_invoke_2_cold_1(v4, v3);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __71__WBSExtensionsExporter_exportExtensionDictionaries_completionHandler___block_invoke_cold_1(uint8_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 safari_privacyPreservingDescription];
  *a1 = 138543362;
  *a4 = v8;
  _os_log_error_impl(&dword_1C6968000, v7, OS_LOG_TYPE_ERROR, "Failed to serialize extensions entry: %{public}@", a1, 0xCu);
}

void __71__WBSExtensionsExporter_exportExtensionDictionaries_completionHandler___block_invoke_2_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1C6968000, v3, OS_LOG_TYPE_ERROR, "Failed to finalize extensions export: %{public}@", &v5, 0xCu);
}

@end