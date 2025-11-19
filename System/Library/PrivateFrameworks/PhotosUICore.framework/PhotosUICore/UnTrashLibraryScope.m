@interface UnTrashLibraryScope
@end

@implementation UnTrashLibraryScope

void ___UnTrashLibraryScope_block_invoke(uint64_t a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E69788A8];
  v3[0] = *(a1 + 32);
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  [v1 untrashLibraryScopes:v2];
}

void ___UnTrashLibraryScope_block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = v6;
  v8 = *(a1 + 64);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, OS_SIGNPOST_INTERVAL_END, v8, "UnTrashLibraryScope", "", buf, 2u);
  }

  v9 = PLSharedLibraryGetLog();
  v10 = v9;
  if (a2)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 40) localIdentifier];
      *buf = 138543362;
      v24 = v11;
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEFAULT, "Did un-trash library scope with identifier: %{public}@", buf, 0xCu);
    }

    v10 = [*(a1 + 48) librarySpecificFetchOptions];
    v12 = MEMORY[0x1E69788A0];
    v13 = [*(a1 + 40) localIdentifier];
    v27[0] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
    v15 = [v12 fetchLibraryScopesWithLocalIdentifiers:v14 options:v10];

    v16 = [v15 firstObject];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v17 = [*(a1 + 40) localIdentifier];
      *buf = 138543618;
      v24 = v17;
      v25 = 2112;
      v26 = v5;
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_ERROR, "Failed to un-trash library scope with identifier: %{public}@, error: %@", buf, 0x16u);
    }

    v16 = 0;
  }

  v18 = *(a1 + 56);
  if (v18)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___UnTrashLibraryScope_block_invoke_659;
    block[3] = &unk_1E774A0E0;
    v22 = v18;
    v20 = v16;
    v21 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

@end