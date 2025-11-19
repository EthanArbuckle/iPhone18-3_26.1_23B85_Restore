@interface PXSharedLibraryPreviewInvitation
@end

@implementation PXSharedLibraryPreviewInvitation

void ___PXSharedLibraryPreviewInvitation_block_invoke(uint64_t a1, int a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLSharedLibraryGetLog();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) identifier];
      *buf = 138543362;
      v18 = v8;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "Did preview Shared Library invitation: %{public}@", buf, 0xCu);
    }

    v9 = *(a1 + 48);
    if (v9)
    {
      (*(v9 + 16))(v9, 1, 0);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = [*(a1 + 32) identifier];
      *buf = 138543618;
      v18 = v10;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_ERROR, "Failed to preview Shared Library invitation: %{public}@, error: %@", buf, 0x16u);
    }

    v11 = PXLocalizedSharedLibraryString(@"PXSharedLibraryPreviewInvitationFailureAlertTitle");
    v12 = PXLocalizedSharedLibraryString(@"PXSharedLibraryGenericFailureAlertMessage");
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = ___PXSharedLibraryPreviewInvitation_block_invoke_734;
    v14[3] = &unk_1E774C2F0;
    v13 = *(a1 + 40);
    v16 = *(a1 + 48);
    v15 = v5;
    PXPresentFailureWithLocalizedTitle(v11, v12, 0, v15, v13, v14);
  }
}

uint64_t ___PXSharedLibraryPreviewInvitation_block_invoke_734(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32));
  }

  return result;
}

@end