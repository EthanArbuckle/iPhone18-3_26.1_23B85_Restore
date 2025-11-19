@interface PXSharedLibraryCreatePreview
@end

@implementation PXSharedLibraryCreatePreview

void ___PXSharedLibraryCreatePreview_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v13 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = v6;
      _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_ERROR, "Failed to create Shared Library preview: %@", buf, 0xCu);
    }

    v11 = PXLocalizedSharedLibraryString(@"PXSharedLibraryCreateSharedLibraryPreviewFailureAlertTitle");
    v14 = PXLocalizedSharedLibraryString(@"PXSharedLibraryGenericFailureAlertMessage");
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = ___PXSharedLibraryCreatePreview_block_invoke_733;
    v19[3] = &unk_1E774C2F0;
    v15 = *(a1 + 48);
    v21 = *(a1 + 56);
    v20 = v6;
    PXPresentFailureWithLocalizedTitle(v11, v14, 0, v20, v15, v19);

    goto LABEL_16;
  }

  v7 = [*(a1 + 32) isCancelled];
  v8 = PLSharedLibraryGetLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (!v7)
  {
    if (v9)
    {
      v16 = [v5 identifier];
      *buf = 138543362;
      v23 = v16;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "Did create Shared Library preview: %{public}@", buf, 0xCu);
    }

    v17 = [*(a1 + 40) sharedLibraryRule];
    v11 = [v17 assetLocalIdentifiers];

    if (![*(a1 + 40) autoSharePolicy] && objc_msgSend(v11, "count"))
    {
      [v5 moveAssetsWithLocalIdentifiersToSharedLibrary:v11 completion:*(a1 + 56)];
      goto LABEL_16;
    }

    v18 = *(a1 + 56);
    if (!v18)
    {
LABEL_16:

      goto LABEL_17;
    }

    v12 = *(v18 + 16);
LABEL_15:
    v12();
    goto LABEL_16;
  }

  if (v9)
  {
    v10 = [v5 identifier];
    *buf = 138543362;
    v23 = v10;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "User canceled creation of Shared Library preview: %{public}@", buf, 0xCu);
  }

  if (*(a1 + 56))
  {
    v11 = PXSharedLibraryUserCanceledErrorWithDebugDescription(@"Create Preview");
    v12 = *(*(a1 + 56) + 16);
    goto LABEL_15;
  }

LABEL_17:
}

uint64_t ___PXSharedLibraryCreatePreview_block_invoke_733(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32));
  }

  return result;
}

@end