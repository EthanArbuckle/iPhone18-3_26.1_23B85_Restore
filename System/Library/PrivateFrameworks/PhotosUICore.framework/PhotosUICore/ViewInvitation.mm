@interface ViewInvitation
@end

@implementation ViewInvitation

void ___ViewInvitation_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v12 = v3;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Will review invitation", buf, 0xCu);
  }

  v4 = [[PXSharedLibraryViewInvitationActionPerformer alloc] initWithSharedLibraryStatusProvider:*(a1 + 40)];
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___ViewInvitation_block_invoke_716;
  v8[3] = &unk_1E774BD88;
  v9 = *(a1 + 32);
  v10 = *(a1 + 72);
  [(PXSharedLibraryViewInvitationActionPerformer *)v4 performActionWithInvitation:v5 legacyDevicesFallbackMonitor:v6 presentationEnvironment:v7 completionHandler:v8];
}

void ___ViewInvitation_block_invoke_717(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PXLocalizedSharedLibraryString(@"PXSharedLibrary_InvitationAlertTitle_HasPreview_iOS");
  [v3 setTitle:v4];

  v5 = PXLocalizedSharedLibraryString(@"PXSharedLibrary_InvitationAlertMessage_HasPreview");
  [v3 setMessage:v5];

  v6 = PXLocalizedSharedLibraryString(@"PXSharedLibrary_InvitationAlert_ExitSetup");
  [v3 addActionWithTitle:v6 style:0 action:*(a1 + 32)];

  v7 = PXLocalizedSharedLibraryString(@"PXSharedLibrary_InvitationAlert_Cancel");
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___ViewInvitation_block_invoke_2;
  v8[3] = &unk_1E774C250;
  v9 = *(a1 + 40);
  [v3 addActionWithTitle:v7 style:1 action:v8];
}

void ___ViewInvitation_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = PXSharedLibraryUserCanceledErrorWithDebugDescription(@"Delete Shared Library Preview");
    (*(v1 + 16))(v1, 0, v2);
  }
}

void ___ViewInvitation_block_invoke_716(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
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
    v17 = 138543362;
    v18 = v7;
    v8 = "%{public}@: Did review invitation";
LABEL_7:
    v12 = v6;
    v13 = OS_LOG_TYPE_DEFAULT;
    v14 = 12;
    goto LABEL_10;
  }

  IsUserCanceledError = PXAssistantIsUserCanceledError(v5);
  v10 = PLSharedLibraryGetLog();
  v6 = v10;
  if (IsUserCanceledError)
  {
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v11 = *(a1 + 32);
    v17 = 138543362;
    v18 = v11;
    v8 = "%{public}@: User canceled review of invitation";
    goto LABEL_7;
  }

  if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_11;
  }

  v15 = *(a1 + 32);
  v17 = 138543618;
  v18 = v15;
  v19 = 2112;
  v20 = v5;
  v8 = "%{public}@: Failed to review invitation: %@";
  v12 = v6;
  v13 = OS_LOG_TYPE_ERROR;
  v14 = 22;
LABEL_10:
  _os_log_impl(&dword_1A3C1C000, v12, v13, v8, &v17, v14);
LABEL_11:

  v16 = *(a1 + 40);
  if (v16)
  {
    (*(v16 + 16))(v16, a2, v5);
  }
}

@end