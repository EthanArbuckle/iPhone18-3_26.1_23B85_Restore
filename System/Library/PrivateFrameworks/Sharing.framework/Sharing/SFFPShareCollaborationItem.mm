@interface SFFPShareCollaborationItem
@end

@implementation SFFPShareCollaborationItem

uint64_t __52___SFFPShareCollaborationItem__loadMetadataIfNeeded__block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52___SFFPShareCollaborationItem__loadMetadataIfNeeded__block_invoke_2;
  v3[3] = &unk_1E788CE30;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [SFCollaborationUtilities loadMetadataForFileURL:v1 completionHandler:v3];
}

void __52___SFFPShareCollaborationItem__loadMetadataIfNeeded__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [*(a1 + 32) setMetadataLoadError:a3];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52___SFFPShareCollaborationItem__loadMetadataIfNeeded__block_invoke_3;
  v7[3] = &unk_1E788A658;
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __78___SFFPShareCollaborationItem_loadCopyRepresentationURLWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!v5)
  {
    v8 = share_sheet_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __78___SFFPShareCollaborationItem_loadCopyRepresentationURLWithCompletionHandler___block_invoke_cold_1(WeakRetained, v6, v8);
    }

    v5 = [WeakRetained fileURL];
  }

  [WeakRetained setSendCopyRepresentationURL:v5];
  v11[0] = v5;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [WeakRetained setSendCopyActivityItems:v9];

  (*(*(a1 + 32) + 16))();
  v10 = *MEMORY[0x1E69E9840];
}

void __78___SFFPShareCollaborationItem_loadCopyRepresentationURLWithCompletionHandler___block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a1 fileURL];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_1A9662000, a3, OS_LOG_TYPE_ERROR, "Could not load copy representation URL, falling back to the original URL %@. Error: %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end