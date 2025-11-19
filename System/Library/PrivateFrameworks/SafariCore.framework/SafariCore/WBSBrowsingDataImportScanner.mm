@interface WBSBrowsingDataImportScanner
@end

@implementation WBSBrowsingDataImportScanner

void __84___WBSBrowsingDataImportScanner_scanImportURLs_sandboxExtensions_completionHandler___block_invoke(uint64_t a1)
{
  if (![*(*(a1 + 32) + 24) count])
  {
    v2 = [MEMORY[0x1E696AC08] defaultManager];
    [v2 removeItemAtURL:*(*(a1 + 32) + 40) error:0];
  }

  v3 = *(a1 + 40);
  v4 = [*(*(a1 + 32) + 24) copy];
  (*(v3 + 16))(v3, v4, 0);
}

void __71___WBSBrowsingDataImportScanner__scanImportedURL_isInUnarchivedFolder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71___WBSBrowsingDataImportScanner__scanImportedURL_isInUnarchivedFolder___block_invoke_2;
  block[3] = &unk_1E7CF2308;
  v7 = *(a1 + 32);
  v11 = v5;
  v12 = v7;
  v13 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __71___WBSBrowsingDataImportScanner__scanImportedURL_isInUnarchivedFolder___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [*(a1 + 40) _scanImportedURL:v2 isInUnarchivedFolder:1];
  }

  else
  {
    v3 = WBS_LOG_CHANNEL_PREFIXImport();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __71___WBSBrowsingDataImportScanner__scanImportedURL_isInUnarchivedFolder___block_invoke_2_cold_1(a1, v3);
    }
  }

  dispatch_group_leave(*(*(a1 + 40) + 8));
}

void __71___WBSBrowsingDataImportScanner__scanImportedURL_isInUnarchivedFolder___block_invoke_73(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71___WBSBrowsingDataImportScanner__scanImportedURL_isInUnarchivedFolder___block_invoke_2_74;
  block[3] = &unk_1E7CF2308;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __71___WBSBrowsingDataImportScanner__scanImportedURL_isInUnarchivedFolder___block_invoke_2_74(void *a1)
{
  if (a1[4])
  {
    os_unfair_lock_lock((a1[5] + 32));
    [*(a1[5] + 24) setObject:a1[4] forKeyedSubscript:a1[6]];
    os_unfair_lock_unlock((a1[5] + 32));
  }

  v2 = *(a1[5] + 8);

  dispatch_group_leave(v2);
}

void __51___WBSBrowsingDataImportScanner__isArchiveFileURL___block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F308EC10];
  v1 = _isArchiveFileURL__archiveExtensions;
  _isArchiveFileURL__archiveExtensions = v0;
}

void __91___WBSBrowsingDataImportScanner__processFileForURL_isInUnarchivedFolder_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (*(a1 + 48) == 1)
  {
    [v5 setObject:*(*(a1 + 32) + 40) forKeyedSubscript:@"temporary_unzipped_directory_url"];
    [v5 setObject:*(*(a1 + 32) + 56) forKeyedSubscript:@"temporary_unzipped_directory_sandbox_extension"];
  }

  v3 = *(a1 + 40);
  v4 = [v5 copy];
  (*(v3 + 16))(v3, v4);
}

void __91___WBSBrowsingDataImportScanner__processFileForURL_isInUnarchivedFolder_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __91___WBSBrowsingDataImportScanner__processFileForURL_isInUnarchivedFolder_completionHandler___block_invoke_3;
  v4[3] = &unk_1E7CF5180;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 fetchLooksLikePasswordsCSVFile:v3 completionHandler:v4];
}

uint64_t __91___WBSBrowsingDataImportScanner__processFileForURL_isInUnarchivedFolder_completionHandler___block_invoke_3(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) setObject:@"passwords" forKeyedSubscript:@"data_type"];
  }

  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 16);

  return v4();
}

void __71___WBSBrowsingDataImportScanner__scanImportedURL_isInUnarchivedFolder___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  v4 = a2;
  v5 = [OUTLINED_FUNCTION_2_0() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0xCu);

  v11 = *MEMORY[0x1E69E9840];
}

@end