@interface ExitAndRefetchInvitation
@end

@implementation ExitAndRefetchInvitation

void ___ExitAndRefetchInvitation_block_invoke(uint64_t a1, int a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = [*(a1 + 32) shareURL];
    v7 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = v6;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_ERROR, "Will re-fetch Shared Library invitation for URL: %@", buf, 0xCu);
    }

    v8 = *(a1 + 40);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = ___ExitAndRefetchInvitation_block_invoke_582;
    v17[3] = &unk_1E772E138;
    v21 = *(a1 + 56);
    v18 = *(a1 + 32);
    v19 = v6;
    v20 = *(a1 + 48);
    v9 = v6;
    [v8 fetchSharedLibraryForURL:v9 completionHandler:v17];

    v10 = v21;
  }

  else
  {
    v11 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [*(a1 + 32) identifier];
      *buf = 138543618;
      v23 = v12;
      v24 = 2112;
      v25 = v5;
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_ERROR, "Failed to exit current Shared Library invitation preview: %{public}@, error: %@", buf, 0x16u);
    }

    v9 = PXLocalizedSharedLibraryString(@"PXSharedLibraryPreviewInvitationFailureAlertTitle");
    v10 = PXLocalizedSharedLibraryString(@"PXSharedLibraryGenericFailureAlertMessage");
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = ___ExitAndRefetchInvitation_block_invoke_590;
    v14[3] = &unk_1E774C2F0;
    v13 = *(a1 + 48);
    v16 = *(a1 + 56);
    v15 = v5;
    PXPresentFailureWithLocalizedTitle(v9, v10, 0, v15, v13, v14);
  }
}

void ___ExitAndRefetchInvitation_block_invoke_582(uint64_t a1, uint64_t a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    (*(*(a1 + 56) + 16))();
    goto LABEL_12;
  }

  v6 = [*(a1 + 32) sourceLibraryInfo];
  v7 = [v6 isSharedLibraryNotFoundError:v5];
  v8 = PLSharedLibraryGetLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (v9)
    {
      v10 = *(a1 + 40);
      *buf = 138412290;
      v27 = v10;
      v11 = "Re-fetch returned NO Shared Library invitation for URL: %@";
      v12 = v8;
      v13 = 12;
LABEL_8:
      _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
    }
  }

  else if (v9)
  {
    v14 = *(a1 + 40);
    *buf = 138412546;
    v27 = v14;
    v28 = 2112;
    v29 = v5;
    v11 = "Failed to re-fetch Shared Library invitation for URL: %@, error: %@";
    v12 = v8;
    v13 = 22;
    goto LABEL_8;
  }

  v24 = 0;
  v25 = 0;
  v15 = [v6 presentCustomInformationForError:v5 customTitle:&v25 customMessage:&v24];
  v16 = v25;
  v17 = v24;
  if ((v15 & 1) == 0)
  {
    v18 = PXLocalizedSharedLibraryString(@"PXSharedLibraryFetchInvitationFailureAlertTitle_Transient");

    v19 = PXLocalizedSharedLibraryString(@"PXSharedLibraryGenericFailureAlertMessage");

    v16 = v18;
    v17 = v19;
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = ___ExitAndRefetchInvitation_block_invoke_586;
  v21[3] = &unk_1E774C2F0;
  v20 = *(a1 + 48);
  v23 = *(a1 + 56);
  v22 = v5;
  PXPresentFailureWithLocalizedTitle(v16, v17, 0, v22, v20, v21);

LABEL_12:
}

@end