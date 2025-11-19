@interface PXSharedLibraryAcceptInvitation
@end

@implementation PXSharedLibraryAcceptInvitation

void ___PXSharedLibraryAcceptInvitation_block_invoke(uint64_t a1, int a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLSharedLibraryGetLog();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) identifier];
      *buf = 138543362;
      v24 = v8;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "Did accept Shared Library invitation: %{public}@", buf, 0xCu);
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
      v24 = v10;
      v25 = 2112;
      v26 = v5;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_ERROR, "Failed to accept Shared Library invitation: %{public}@, error: %@", buf, 0x16u);
    }

    v11 = [*(a1 + 32) sourceLibraryInfo];
    v21 = 0;
    v22 = 0;
    v12 = [v11 presentCustomInformationForError:v5 customTitle:&v22 customMessage:&v21];
    v13 = v22;
    v14 = v21;
    if ((v12 & 1) == 0)
    {
      v15 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAcceptInvitationFailureAlertTitle_Transient");

      v16 = PXLocalizedSharedLibraryString(@"PXSharedLibraryGenericFailureAlertMessage");

      v14 = v16;
      v13 = v15;
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = ___PXSharedLibraryAcceptInvitation_block_invoke_738;
    v18[3] = &unk_1E774C2F0;
    v17 = *(a1 + 40);
    v20 = *(a1 + 48);
    v19 = v5;
    PXPresentFailureWithLocalizedTitle(v13, v14, 0, v19, v17, v18);
  }
}

uint64_t ___PXSharedLibraryAcceptInvitation_block_invoke_738(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32));
  }

  return result;
}

@end