@interface ExitSharedLibraryOrPreview
@end

@implementation ExitSharedLibraryOrPreview

void ___ExitSharedLibraryOrPreview_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (a2)
  {
    v6 = PLSharedLibraryGetLog();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) identifier];
    v18 = 138543618;
    v19 = v7;
    v20 = 2114;
    v21 = v8;
    v9 = "%{public}@: Did exit Shared Library or preview: %{public}@";
LABEL_7:
    v13 = v6;
    v14 = OS_LOG_TYPE_DEFAULT;
    v15 = 22;
    goto LABEL_10;
  }

  IsUserCanceledError = PXSharedLibraryIsUserCanceledError(v5);
  v11 = PLSharedLibraryGetLog();
  v6 = v11;
  if (IsUserCanceledError)
  {
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v12 = *(a1 + 32);
    v8 = [*(a1 + 40) identifier];
    v18 = 138543618;
    v19 = v12;
    v20 = 2114;
    v21 = v8;
    v9 = "%{public}@: User canceled exit Shared Library or preview: %{public}@";
    goto LABEL_7;
  }

  if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_11;
  }

  v16 = *(a1 + 32);
  v8 = [*(a1 + 40) identifier];
  v18 = 138543874;
  v19 = v16;
  v20 = 2114;
  v21 = v8;
  v22 = 2112;
  v23 = v5;
  v9 = "%{public}@: Failed to exit Shared Library or preview: %{public}@, error: %@";
  v13 = v6;
  v14 = OS_LOG_TYPE_ERROR;
  v15 = 32;
LABEL_10:
  _os_log_impl(&dword_1A3C1C000, v13, v14, v9, &v18, v15);

LABEL_11:
  v17 = *(a1 + 48);
  if (v17)
  {
    (*(v17 + 16))(v17, a2, v5);
  }
}

@end