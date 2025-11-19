@interface TrashLibraryScope
@end

@implementation TrashLibraryScope

void ___TrashLibraryScope_block_invoke(uint64_t a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E69788A8];
  v3[0] = *(a1 + 32);
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  [v1 trashLibraryScopes:v2];
}

void ___TrashLibraryScope_block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = v6;
  v8 = *(a1 + 56);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, OS_SIGNPOST_INTERVAL_END, v8, "TrashLibraryScope", "", buf, 2u);
  }

  v9 = PLSharedLibraryGetLog();
  v10 = v9;
  if (a2)
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    v11 = [*(a1 + 40) localIdentifier];
    *buf = 138543362;
    v22 = v11;
    v12 = "Did trash library scope with identifier: %{public}@";
    v13 = v10;
    v14 = OS_LOG_TYPE_DEFAULT;
    v15 = 12;
  }

  else
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v11 = [*(a1 + 40) localIdentifier];
    *buf = 138543618;
    v22 = v11;
    v23 = 2112;
    v24 = v5;
    v12 = "Failed to trash library scope with identifier: %{public}@, error: %@";
    v13 = v10;
    v14 = OS_LOG_TYPE_ERROR;
    v15 = 22;
  }

  _os_log_impl(&dword_1A3C1C000, v13, v14, v12, buf, v15);

LABEL_10:
  v16 = *(a1 + 48);
  if (v16)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___TrashLibraryScope_block_invoke_658;
    block[3] = &unk_1E774A940;
    v19 = v16;
    v20 = a2;
    v18 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

@end