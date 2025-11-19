@interface PXSearchSettings
@end

@implementation PXSearchSettings

void __48__PXSearchSettings_UI__settingsControllerModule__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69DC650];
  v4 = a2;
  v5 = [v3 alertControllerWithTitle:@"Search Indexing Status" message:@"Requesting progress..." preferredStyle:1];
  v6 = MEMORY[0x1E695DFF0];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __48__PXSearchSettings_UI__settingsControllerModule__block_invoke_2;
  v19[3] = &unk_1E7B7DDD8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v21 = v5;
  v22 = v8;
  v20 = v7;
  v9 = v5;
  v10 = [v6 scheduledTimerWithTimeInterval:1 repeats:v19 block:2.0];
  v11 = MEMORY[0x1E69DC648];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __48__PXSearchSettings_UI__settingsControllerModule__block_invoke_5;
  v17 = &unk_1E7B7E148;
  v18 = v10;
  v12 = v10;
  v13 = [v11 actionWithTitle:@"OK" style:0 handler:&v14];
  [v9 addAction:{v13, v14, v15, v16, v17}];

  [v4 presentViewController:v9 animated:1 completion:0];
}

uint64_t __48__PXSearchSettings_UI__settingsControllerModule__block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Rebuild Search Index" message:@"Are you sure you want to rebuild your search index?" preferredStyle:1];
  v6 = MEMORY[0x1E69DC648];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __48__PXSearchSettings_UI__settingsControllerModule__block_invoke_7;
  v12[3] = &unk_1E7B7DE00;
  v13 = *(a1 + 32);
  v7 = *(a1 + 40);
  v14 = v4;
  v15 = v7;
  v8 = v4;
  v9 = [v6 actionWithTitle:@"Rebuild" style:2 handler:v12];
  [v5 addAction:v9];

  v10 = [MEMORY[0x1E69DC648] actionWithTitle:@"Cancel" style:1 handler:0];
  [v5 addAction:v10];

  [v8 presentViewController:v5 animated:1 completion:0];
  return 1;
}

void __48__PXSearchSettings_UI__settingsControllerModule__block_invoke_7(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) debugClient];
  v5 = 0;
  [v2 rebuildSearchIndexWithError:&v5];
  v3 = v5;

  if (v3)
  {
    v4 = PLUIGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v7 = v3;
      _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_ERROR, "Unable to rebuild search index with error: %@", buf, 0xCu);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void __48__PXSearchSettings_UI__settingsControllerModule__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) libraryInternalClient];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__PXSearchSettings_UI__settingsControllerModule__block_invoke_3;
  v8[3] = &unk_1E7B7DDB0;
  v9 = v3;
  v7 = *(a1 + 40);
  v5 = v7;
  v10 = v7;
  v6 = v3;
  [v4 getSearchIndexProgress:v8];
}

void __48__PXSearchSettings_UI__settingsControllerModule__block_invoke_3(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__PXSearchSettings_UI__settingsControllerModule__block_invoke_4;
  v5[3] = &unk_1E7B7DD88;
  v8 = *(a1 + 48);
  v9 = a2;
  v11 = a3;
  v10 = a4;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __48__PXSearchSettings_UI__settingsControllerModule__block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 48) _formatIndexingStatusAlertMessageForRemainingCount:*(a1 + 56) isPaused:*(a1 + 72) elapsedTimeSincePause:*(a1 + 64)];
  v3 = v2;
  if (!*(a1 + 56))
  {
    [*(a1 + 32) invalidate];
    v2 = v3;
  }

  [*(a1 + 40) setMessage:v2];
}

@end