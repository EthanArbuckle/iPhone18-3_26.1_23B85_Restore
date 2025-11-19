@interface PublishLibraryScope
@end

@implementation PublishLibraryScope

void ___PublishLibraryScope_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = v7;
  v9 = *(a1 + 56);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_INTERVAL_END, v9, "PublishLibraryScope", "", buf, 2u);
  }

  v10 = PLSharedLibraryGetLog();
  v11 = v10;
  if (v5)
  {
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    v12 = [*(a1 + 40) localIdentifier];
    *buf = 138543618;
    v22 = v12;
    v23 = 2112;
    v24 = v5;
    v13 = "Did publish library scope with identifier: %{public}@, URL: %@";
    v14 = v11;
    v15 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v12 = [*(a1 + 40) localIdentifier];
    *buf = 138543618;
    v22 = v12;
    v23 = 2112;
    v24 = v6;
    v13 = "Failed to publish library scope with identifier: %{public}@, error: %@";
    v14 = v11;
    v15 = OS_LOG_TYPE_ERROR;
  }

  _os_log_impl(&dword_1A3C1C000, v14, v15, v13, buf, 0x16u);

LABEL_10:
  v16 = *(a1 + 48);
  if (v16)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___PublishLibraryScope_block_invoke_646;
    block[3] = &unk_1E774A0E0;
    v20 = v16;
    v18 = v5;
    v19 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

@end