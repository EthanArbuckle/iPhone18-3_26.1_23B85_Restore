void __PXSharedLibrarySendInvitation_block_invoke(uint64_t a1, int a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138543362;
      v24 = v8;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Invitations sent successfully", buf, 0xCu);
    }

    v9 = *(a1 + 48);
    if (v9)
    {
      v10 = *(v9 + 16);
LABEL_11:
      v10();
    }
  }

  else
  {
    IsUserCanceledError = PXSharedLibraryIsUserCanceledError(v5);
    v12 = PLSharedLibraryGetLog();
    v13 = v12;
    if (IsUserCanceledError)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        *buf = 138543362;
        v24 = v14;
        _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: User canceled sending invitations", buf, 0xCu);
      }

      v15 = *(a1 + 48);
      if (v15)
      {
        v10 = *(v15 + 16);
        goto LABEL_11;
      }
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 32);
        *buf = 138543618;
        v24 = v16;
        v25 = 2112;
        v26 = v6;
        _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_ERROR, "%{public}@: Failed to send invitations: %@", buf, 0x16u);
      }

      v17 = PXLocalizedSharedLibraryString(@"PXSharedLibrarySendInvitationFailureAlertTitle");
      v18 = PXLocalizedSharedLibraryString(@"PXSharedLibraryGenericFailureAlertMessage");
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __PXSharedLibrarySendInvitation_block_invoke_509;
      v20[3] = &unk_1E774C2F0;
      v19 = *(a1 + 40);
      v22 = *(a1 + 48);
      v21 = v6;
      PXPresentFailureWithLocalizedTitle(v17, v18, 0, v21, v19, v20);
    }
  }
}

uint64_t __PXSharedLibrarySendInvitation_block_invoke_509(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32));
  }

  return result;
}

void PXSharedLibraryHandleInvitationForLocalMode(void *a1)
{
  v1 = a1;
  v5 = v1;
  if (!v1)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void PXSharedLibraryHandleInvitationForLocalMode(__strong id<PXPresentationEnvironment> _Nonnull)"];
    [v3 handleFailureInFunction:v4 file:@"PXSharedLibraryUtilities.m" lineNumber:1175 description:{@"Invalid parameter not satisfying: %@", @"presentationEnvironment"}];

    v1 = 0;
  }

  v2 = [v1 presentAlertWithConfigurationHandler:&__block_literal_global_512];
}

void __PXSharedLibraryHandleInvitationForLocalMode_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setTitle:@"Local Mode"];
  [v2 setMessage:@"This Shared Library is “local only”. No invitations will be sent to participants."];
  v3 = PXLocalizedStringFromTable(@"PXOK", @"PhotosUICore");
  [v2 addActionWithTitle:v3 style:0 action:0];
}

void PXSharedLibraryShareInvitation(void *a1, void *a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PXSharedLibraryShareInvitation(NSURL *__strong _Nonnull, __strong id<PXPresentationEnvironment> _Nonnull, NSString *__strong _Nonnull, void (^ _Nullable __strong)(BOOL, NSError * _Nullable __strong))"}];
    [v16 handleFailureInFunction:v17 file:@"PXSharedLibraryUtilities.m" lineNumber:1185 description:{@"Invalid parameter not satisfying: %@", @"invitationURL"}];

    if (v8)
    {
      goto LABEL_3;
    }
  }

  v18 = [MEMORY[0x1E696AAA8] currentHandler];
  v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PXSharedLibraryShareInvitation(NSURL *__strong _Nonnull, __strong id<PXPresentationEnvironment> _Nonnull, NSString *__strong _Nonnull, void (^ _Nullable __strong)(BOOL, NSError * _Nullable __strong))"}];
  [v18 handleFailureInFunction:v19 file:@"PXSharedLibraryUtilities.m" lineNumber:1186 description:{@"Invalid parameter not satisfying: %@", @"presentationEnvironment"}];

LABEL_3:
  if (![v9 length])
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PXSharedLibraryShareInvitation(NSURL *__strong _Nonnull, __strong id<PXPresentationEnvironment> _Nonnull, NSString *__strong _Nonnull, void (^ _Nullable __strong)(BOOL, NSError * _Nullable __strong))"}];
    [v20 handleFailureInFunction:v21 file:@"PXSharedLibraryUtilities.m" lineNumber:1187 description:{@"Invalid parameter not satisfying: %@", @"senderIdentifier.length"}];
  }

  v11 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v27 = v9;
    v28 = 2112;
    v29 = v7;
    _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Will share invitation with URL: %@", buf, 0x16u);
  }

  v12 = [[PXSharedLibraryShareInvitationActionPerformer alloc] initWithPresentationEnvironment:v8];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __PXSharedLibraryShareInvitation_block_invoke;
  v22[3] = &unk_1E774ACE8;
  v24 = v8;
  v25 = v10;
  v23 = v9;
  v13 = v8;
  v14 = v10;
  v15 = v9;
  [(PXSharedLibraryShareInvitationActionPerformer *)v12 performActionWithInvitationURL:v7 completionHandler:v22];
}

void __PXSharedLibraryShareInvitation_block_invoke(uint64_t a1, int a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138543362;
      v24 = v8;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Invitation shared successfully", buf, 0xCu);
    }

    v9 = *(a1 + 48);
    if (v9)
    {
      v10 = *(v9 + 16);
LABEL_11:
      v10();
    }
  }

  else
  {
    IsUserCanceledError = PXSharedLibraryIsUserCanceledError(v5);
    v12 = PLSharedLibraryGetLog();
    v13 = v12;
    if (IsUserCanceledError)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        *buf = 138543362;
        v24 = v14;
        _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: User canceled sharing invitation", buf, 0xCu);
      }

      v15 = *(a1 + 48);
      if (v15)
      {
        v10 = *(v15 + 16);
        goto LABEL_11;
      }
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 32);
        *buf = 138543618;
        v24 = v16;
        v25 = 2112;
        v26 = v6;
        _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_ERROR, "%{public}@: Failed to share invitation: %@", buf, 0x16u);
      }

      v17 = PXLocalizedSharedLibraryString(@"PXSharedLibraryShareInvitationFailureAlertTitle");
      v18 = PXLocalizedSharedLibraryString(@"PXSharedLibraryGenericFailureAlertMessage");
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __PXSharedLibraryShareInvitation_block_invoke_529;
      v20[3] = &unk_1E774C2F0;
      v19 = *(a1 + 40);
      v22 = *(a1 + 48);
      v21 = v6;
      PXPresentFailureWithLocalizedTitle(v17, v18, 0, v21, v19, v20);
    }
  }
}

uint64_t __PXSharedLibraryShareInvitation_block_invoke_529(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32));
  }

  return result;
}

void _ExitSharedLibraryOrPreview(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v35 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _ExitSharedLibraryOrPreview(__strong id<PXSharedLibrary>, BOOL, PXSharedLibraryExitRetentionPolicy, __strong id<PXPresentationEnvironment>, NSString *__strong, void (^ _Nullable __strong)(BOOL, NSError * _Nullable __strong))"}];
    [v21 handleFailureInFunction:v22 file:@"PXSharedLibraryUtilities.m" lineNumber:1221 description:{@"Invalid parameter not satisfying: %@", @"sharedLibraryOrPreview"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  v23 = [MEMORY[0x1E696AAA8] currentHandler];
  v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _ExitSharedLibraryOrPreview(__strong id<PXSharedLibrary>, BOOL, PXSharedLibraryExitRetentionPolicy, __strong id<PXPresentationEnvironment>, NSString *__strong, void (^ _Nullable __strong)(BOOL, NSError * _Nullable __strong))"}];
  [v23 handleFailureInFunction:v24 file:@"PXSharedLibraryUtilities.m" lineNumber:1222 description:{@"Invalid parameter not satisfying: %@", @"presentationEnvironment"}];

LABEL_3:
  if (![v13 length])
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _ExitSharedLibraryOrPreview(__strong id<PXSharedLibrary>, BOOL, PXSharedLibraryExitRetentionPolicy, __strong id<PXPresentationEnvironment>, NSString *__strong, void (^ _Nullable __strong)(BOOL, NSError * _Nullable __strong))"}];
    [v25 handleFailureInFunction:v26 file:@"PXSharedLibraryUtilities.m" lineNumber:1223 description:{@"Invalid parameter not satisfying: %@", @"senderIdentifier.length"}];
  }

  v15 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v11 identifier];
    *buf = 138543618;
    v32 = v13;
    v33 = 2114;
    v34 = v16;
    _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Will exit Shared Library or preview: %{public}@", buf, 0x16u);
  }

  v17 = objc_alloc_init(PXExitSharedLibraryActionPerformer);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = ___ExitSharedLibraryOrPreview_block_invoke;
  v27[3] = &unk_1E774ACE8;
  v28 = v13;
  v29 = v11;
  v30 = v14;
  v18 = v14;
  v19 = v11;
  v20 = v13;
  [(PXExitSharedLibraryActionPerformer *)v17 performActionWithSharedLibraryOrPreview:v19 shouldConfirmExit:a2 exitRetentionPolicy:a3 presentationEnvironment:v12 completionHandler:v27];
}

void PXSharedLibraryExitSharedLibraryOrPreview(void *a1, void *a2, void *a3, void *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [a1 sharedLibraryOrPreview];
  v11 = v10;
  if (v10)
  {
    _ExitSharedLibraryOrPreview(v10, 1, 0, v7, v8, v9);
  }

  else
  {
    v12 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = v8;
      _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_ERROR, "%{public}@: No Shared Library or preview to exit", buf, 0xCu);
    }

    v13 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXSharedLibraryErrorDomain" code:-1000 underlyingError:0 debugDescription:{@"%@: No Shared Library or preview to exit", v8}];
    if (v9)
    {
      (*(v9 + 2))(v9, 0, v13);
    }
  }
}

uint64_t PXIsSharedLibraryURL(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL PXIsSharedLibraryURL(NSURL *__strong _Nonnull)"];
    [v7 handleFailureInFunction:v8 file:@"PXSharedLibraryUtilities.m" lineNumber:1349 description:{@"Invalid parameter not satisfying: %@", @"shareURL"}];
  }

  v2 = [v1 pathComponents];
  if ([v2 count] < 2)
  {
    v4 = &stru_1F1741150;
  }

  else
  {
    v3 = [v2 objectAtIndexedSubscript:1];
    v4 = [v3 lowercaseString];
  }

  v5 = [(__CFString *)v4 isEqualToString:@"photos_sharing"];

  return v5;
}

void PXSharedLibraryViewInvitation(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = a2;
  v16 = [v14 sourceLibraryInfo];
  v15 = [v14 shareURL];

  _HandleSharedLibraryOrInvitationURL(v15, v16, v13, v12, v11, v10);
}

void _HandleSharedLibraryOrInvitationURL(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v99 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a2;
  v71 = a3;
  v13 = a4;
  v14 = a5;
  v72 = a6;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_62:
    v65 = [MEMORY[0x1E696AAA8] currentHandler];
    v66 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _HandleSharedLibraryOrInvitationURL(NSURL *__strong, __strong id<PXSharedLibrarySourceLibraryInfo>, PXSharedLibraryLegacyDevicesFallbackMonitor * _Nullable __strong, __strong id<PXPresentationEnvironment>, NSString *__strong, void (^ _Nullable __strong)(BOOL, NSError * _Nullable __strong))"}];
    [v65 handleFailureInFunction:v66 file:@"PXSharedLibraryUtilities.m" lineNumber:1479 description:{@"Invalid parameter not satisfying: %@", @"sourceLibraryInfo"}];

    if (v13)
    {
      goto LABEL_4;
    }

    goto LABEL_63;
  }

  v63 = [MEMORY[0x1E696AAA8] currentHandler];
  v64 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _HandleSharedLibraryOrInvitationURL(NSURL *__strong, __strong id<PXSharedLibrarySourceLibraryInfo>, PXSharedLibraryLegacyDevicesFallbackMonitor * _Nullable __strong, __strong id<PXPresentationEnvironment>, NSString *__strong, void (^ _Nullable __strong)(BOOL, NSError * _Nullable __strong))"}];
  [v63 handleFailureInFunction:v64 file:@"PXSharedLibraryUtilities.m" lineNumber:1478 description:{@"Invalid parameter not satisfying: %@", @"shareURL", v71, v72}];

  if (!v12)
  {
    goto LABEL_62;
  }

LABEL_3:
  if (v13)
  {
    goto LABEL_4;
  }

LABEL_63:
  v67 = [MEMORY[0x1E696AAA8] currentHandler];
  v68 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _HandleSharedLibraryOrInvitationURL(NSURL *__strong, __strong id<PXSharedLibrarySourceLibraryInfo>, PXSharedLibraryLegacyDevicesFallbackMonitor * _Nullable __strong, __strong id<PXPresentationEnvironment>, NSString *__strong, void (^ _Nullable __strong)(BOOL, NSError * _Nullable __strong))"}];
  [v67 handleFailureInFunction:v68 file:@"PXSharedLibraryUtilities.m" lineNumber:1480 description:{@"Invalid parameter not satisfying: %@", @"presentationEnvironment"}];

LABEL_4:
  if (![v14 length])
  {
    v69 = [MEMORY[0x1E696AAA8] currentHandler];
    v70 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _HandleSharedLibraryOrInvitationURL(NSURL *__strong, __strong id<PXSharedLibrarySourceLibraryInfo>, PXSharedLibraryLegacyDevicesFallbackMonitor * _Nullable __strong, __strong id<PXPresentationEnvironment>, NSString *__strong, void (^ _Nullable __strong)(BOOL, NSError * _Nullable __strong))"}];
    [v69 handleFailureInFunction:v70 file:@"PXSharedLibraryUtilities.m" lineNumber:1481 description:{@"Invalid parameter not satisfying: %@", @"senderIdentifier.length"}];
  }

  v15 = v12;
  v16 = v14;
  v17 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v16;
    _os_log_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: Will perform preconditions check for fetching Shared Library URL", buf, 0xCu);
  }

  v18 = +[PXSharedLibrarySettings sharedInstance];
  v19 = [v15 isSystemPhotoLibrary];
  v20 = [v18 simulateErrorType];
  if (v20 == 10)
  {
    v21 = 0;
  }

  else
  {
    v21 = v19;
  }

  if ((v21 & 1) == 0)
  {
    v34 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = @"(Simulated)";
      if (v20 != 10)
      {
        v35 = &stru_1F1741150;
      }

      *buf = 138543618;
      *&buf[4] = v16;
      *&buf[12] = 2114;
      *&buf[14] = v35;
      _os_log_impl(&dword_1A3C1C000, v34, OS_LOG_TYPE_ERROR, "%{public}@: Failed preconditions check for presenting Shared Library invitation: Not System Library %{public}@", buf, 0x16u);
    }

    v30 = PXLocalizedSharedLibraryString(@"PXSharedLibrary_InvitationAlertTitle_NotSystemLibrary");
    v36 = v30;
    v32 = PXLocalizedSharedLibraryString(@"PXSharedLibrary_InvitationAlertMessage_NotSystemLibrary");
    v37 = v32;
    goto LABEL_35;
  }

  v22 = [v15 isCloudPhotoLibraryEnabled];
  v23 = [v18 simulateErrorType];
  if (v23 == 11)
  {
    v24 = 0;
  }

  else
  {
    v24 = v22;
  }

  if ((v24 & 1) == 0)
  {
    v38 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = @"(Simulated)";
      if (v23 != 11)
      {
        v39 = &stru_1F1741150;
      }

      *buf = 138543618;
      *&buf[4] = v16;
      *&buf[12] = 2114;
      *&buf[14] = v39;
      _os_log_impl(&dword_1A3C1C000, v38, OS_LOG_TYPE_ERROR, "%{public}@: Failed preconditions check for presenting Shared Library invitation: iCloud Photos Disabled %{public}@", buf, 0x16u);
    }

    v30 = PXLocalizedSharedLibraryString(@"PXSharedLibrary_InvitationAlertTitle_NoiCloudPhotosEnabled");
    v40 = v30;
    v32 = PXLocalizedSharedLibraryString(@"PXSharedLibrary_InvitationAlertMessage_NoiCloudPhotosEnabled");
    v41 = v32;
    goto LABEL_35;
  }

  v25 = [v15 isCloudPhotoLibraryExiting];
  v26 = [v18 simulateErrorType];
  if (v26 == 12)
  {
    v27 = 1;
  }

  else
  {
    v27 = v25;
  }

  if (v27 == 1)
  {
    v28 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = &stru_1F1741150;
      if (v26 == 12)
      {
        v29 = @"(Simulated)";
      }

      *buf = 138543618;
      *&buf[4] = v16;
      *&buf[12] = 2114;
      *&buf[14] = v29;
      _os_log_impl(&dword_1A3C1C000, v28, OS_LOG_TYPE_ERROR, "%{public}@: Failed preconditions check for presenting Shared Library invitation: Exiting iCloud Photos %{public}@", buf, 0x16u);
    }

    v30 = PXLocalizedSharedLibraryString(@"PXSharedLibrary_InvitationAlertTitle_ExitingiCloudPhotos");
    v31 = v30;
    v32 = PXLocalizedSharedLibraryString(@"PXSharedLibrary_InvitationAlertMessage_ExitingiCloudPhotos");
    v33 = v32;
LABEL_35:
    v42 = 0;
    goto LABEL_36;
  }

  v55 = [v15 isCloudPhotoLibraryInitialSyncCompleted];
  v56 = [v18 simulateErrorType];
  if (v56 == 13)
  {
    v57 = 0;
  }

  else
  {
    v57 = v55;
  }

  v58 = PLSharedLibraryGetLog();
  v59 = v58;
  if ((v57 & 1) == 0)
  {
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      v60 = @"(Simulated)";
      if (v56 != 13)
      {
        v60 = &stru_1F1741150;
      }

      *buf = 138543618;
      *&buf[4] = v16;
      *&buf[12] = 2114;
      *&buf[14] = v60;
      _os_log_impl(&dword_1A3C1C000, v59, OS_LOG_TYPE_ERROR, "%{public}@: Failed preconditions check for presenting Shared Library invitation: iCloud Photos Initial Sync Not Complete %{public}@", buf, 0x16u);
    }

    v30 = PXLocalizedSharedLibraryString(@"PXSharedLibrary_InvitationAlertTitle_InitialSyncNotComplete");
    v61 = v30;
    v32 = PXLocalizedSharedLibraryString(@"PXSharedLibrary_InvitationAlertMessage_InitialSyncNotComplete");
    v62 = v32;
    goto LABEL_35;
  }

  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v16;
    _os_log_impl(&dword_1A3C1C000, v59, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully passed preconditions check for fetching Shared Library URL", buf, 0xCu);
  }

  v30 = 0;
  v32 = 0;
  v42 = 1;
LABEL_36:

  v43 = v30;
  v44 = v32;
  if (v42)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v96 = __Block_byref_object_copy__7558;
    v97 = __Block_byref_object_dispose__7559;
    v98 = 0;
    v86[0] = 0;
    v86[1] = v86;
    v86[2] = 0x2020000000;
    v87 = 0;
    v45 = PXLocalizedSharedLibraryString(@"PXSharedLibraryFetchInvitationProgressTitle");
    v83[0] = MEMORY[0x1E69E9820];
    v83[1] = 3221225472;
    v83[2] = ___HandleSharedLibraryOrInvitationURL_block_invoke_644;
    v83[3] = &unk_1E77463F8;
    v85 = v86;
    v46 = v72;
    v84 = v46;
    v47 = PXSharedLibraryPresentProgressAlertWithMessagePresentationEnvironment(v45, 0, v13, v83);
    v48 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v47;

    if (*(*&buf[8] + 40))
    {
      v49 = [v15 sharedLibraryStatusProvider];
      v50 = PLSharedLibraryGetLog();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *v91 = 138543618;
        v92 = v16;
        v93 = 2112;
        v94 = v11;
        _os_log_impl(&dword_1A3C1C000, v50, OS_LOG_TYPE_DEFAULT, "%{public}@: Will fetch Shared Library for URL: %@", v91, 0x16u);
      }

      v73[0] = MEMORY[0x1E69E9820];
      v73[1] = 3221225472;
      v73[2] = ___HandleSharedLibraryOrInvitationURL_block_invoke_651;
      v73[3] = &unk_1E772E070;
      v81 = v86;
      v82 = buf;
      v74 = v13;
      v75 = v16;
      v76 = v11;
      v51 = v49;
      v77 = v51;
      v78 = v71;
      v80 = v46;
      v79 = v15;
      [v51 fetchSharedLibraryForURL:v76 completionHandler:v73];
    }

    else
    {
      v54 = PLSharedLibraryGetLog();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        *v91 = 138543362;
        v92 = v16;
        _os_log_impl(&dword_1A3C1C000, v54, OS_LOG_TYPE_ERROR, "%{public}@: Failed to present the Handle URL progress alert", v91, 0xCu);
      }

      if (!v46)
      {
        goto LABEL_47;
      }

      v51 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXSharedLibraryErrorDomain" code:-1000 underlyingError:0 debugDescription:{@"%@: Failed to present the Handle URL progress alert", v16}];
      (*(v46 + 2))(v46, 0, v51);
    }

LABEL_47:
    _Block_object_dispose(v86, 8);
    _Block_object_dispose(buf, 8);

    goto LABEL_48;
  }

  v52 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXSharedLibraryErrorDomain" code:-1000 underlyingError:0 debugDescription:{@"%@", v43}];
  v88[0] = MEMORY[0x1E69E9820];
  v88[1] = 3221225472;
  v88[2] = ___HandleSharedLibraryOrInvitationURL_block_invoke;
  v88[3] = &unk_1E774C2F0;
  v89 = v52;
  v90 = v72;
  v53 = v52;
  PXPresentFailureWithLocalizedTitle(v43, v44, 0, v53, v13, v88);

LABEL_48:
}

void sub_1A4AC93F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7558(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _ViewInvitation(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ViewInvitation_block_invoke;
  aBlock[3] = &unk_1E772E0E8;
  v17 = v15;
  v29 = v17;
  v18 = v11;
  v30 = v18;
  v19 = v12;
  v31 = v19;
  v20 = v13;
  v32 = v20;
  v21 = v14;
  v33 = v21;
  v22 = v16;
  v34 = v22;
  v23 = _Block_copy(aBlock);
  if ([v18 hasPreview])
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = ___ViewInvitation_block_invoke_717;
    v25[3] = &unk_1E772E110;
    v26 = v23;
    v27 = v22;
    v24 = [v21 presentAlertWithConfigurationHandler:v25];
  }

  else
  {
    v23[2](v23);
  }
}

void PXSharedLibraryDeclineInvitation(void *a1, void *a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PXSharedLibraryDeclineInvitation(__strong id<PXSharedLibrary> _Nonnull, __strong id<PXPresentationEnvironment> _Nonnull, NSString *__strong _Nonnull, void (^ _Nullable __strong)(BOOL, NSError * _Nullable __strong))"}];
    [v16 handleFailureInFunction:v17 file:@"PXSharedLibraryUtilities.m" lineNumber:1588 description:{@"Invalid parameter not satisfying: %@", @"invitation"}];

    if (v8)
    {
      goto LABEL_3;
    }
  }

  v18 = [MEMORY[0x1E696AAA8] currentHandler];
  v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PXSharedLibraryDeclineInvitation(__strong id<PXSharedLibrary> _Nonnull, __strong id<PXPresentationEnvironment> _Nonnull, NSString *__strong _Nonnull, void (^ _Nullable __strong)(BOOL, NSError * _Nullable __strong))"}];
  [v18 handleFailureInFunction:v19 file:@"PXSharedLibraryUtilities.m" lineNumber:1589 description:{@"Invalid parameter not satisfying: %@", @"presentationEnvironment"}];

LABEL_3:
  if (![v9 length])
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PXSharedLibraryDeclineInvitation(__strong id<PXSharedLibrary> _Nonnull, __strong id<PXPresentationEnvironment> _Nonnull, NSString *__strong _Nonnull, void (^ _Nullable __strong)(BOOL, NSError * _Nullable __strong))"}];
    [v20 handleFailureInFunction:v21 file:@"PXSharedLibraryUtilities.m" lineNumber:1590 description:{@"Invalid parameter not satisfying: %@", @"senderIdentifier.length"}];
  }

  v11 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v27 = v9;
    _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Will decline invitation", buf, 0xCu);
  }

  v12 = objc_alloc_init(PXSharedLibraryDeclineInvitationActionPerformer);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __PXSharedLibraryDeclineInvitation_block_invoke;
  v22[3] = &unk_1E774ACE8;
  v24 = v8;
  v25 = v10;
  v23 = v9;
  v13 = v8;
  v14 = v10;
  v15 = v9;
  [(PXSharedLibraryDeclineInvitationActionPerformer *)v12 performActionWithInvitation:v7 presentationEnvironment:v13 completionHandler:v22];
}

void __PXSharedLibraryDeclineInvitation_block_invoke(uint64_t a1, int a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138543362;
      v24 = v8;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Did decline invitation", buf, 0xCu);
    }

    v9 = *(a1 + 48);
    if (v9)
    {
      v10 = *(v9 + 16);
LABEL_11:
      v10();
    }
  }

  else
  {
    IsUserCanceledError = PXSharedLibraryIsUserCanceledError(v5);
    v12 = PLSharedLibraryGetLog();
    v13 = v12;
    if (IsUserCanceledError)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        *buf = 138543362;
        v24 = v14;
        _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: User canceled decline of invitation", buf, 0xCu);
      }

      v15 = *(a1 + 48);
      if (v15)
      {
        v10 = *(v15 + 16);
        goto LABEL_11;
      }
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 32);
        *buf = 138543618;
        v24 = v16;
        v25 = 2112;
        v26 = v6;
        _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_ERROR, "%{public}@: Failed to decline invitation: %@", buf, 0x16u);
      }

      v17 = PXLocalizedSharedLibraryString(@"PXSharedLibraryDeclineInvitationFailureAlertTitle");
      v18 = PXLocalizedSharedLibraryString(@"PXSharedLibraryGenericFailureAlertMessage");
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __PXSharedLibraryDeclineInvitation_block_invoke_553;
      v20[3] = &unk_1E774C2F0;
      v19 = *(a1 + 40);
      v22 = *(a1 + 48);
      v21 = v6;
      PXPresentFailureWithLocalizedTitle(v17, v18, 0, v21, v19, v20);
    }
  }
}

uint64_t __PXSharedLibraryDeclineInvitation_block_invoke_553(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32));
  }

  return result;
}

void PXSharedLibraryCreatePreview(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (v7)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PXSharedLibraryCreatePreview(PXSharedLibraryAssistantViewModel *__strong _Nonnull, NSProgress * _Nullable __strong, __strong id<PXPresentationEnvironment> _Nonnull, void (^ _Nullable __strong)(BOOL, NSError * _Nullable __strong))"}];
    [v14 handleFailureInFunction:v15 file:@"PXSharedLibraryUtilities.m" lineNumber:1671 description:{@"Invalid parameter not satisfying: %@", @"viewModel"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PXSharedLibraryCreatePreview(PXSharedLibraryAssistantViewModel *__strong _Nonnull, NSProgress * _Nullable __strong, __strong id<PXPresentationEnvironment> _Nonnull, void (^ _Nullable __strong)(BOOL, NSError * _Nullable __strong))"}];
  [v16 handleFailureInFunction:v17 file:@"PXSharedLibraryUtilities.m" lineNumber:1672 description:{@"Invalid parameter not satisfying: %@", @"presentationEnvironment"}];

LABEL_3:
  v11 = [v7 sharedLibrary];
  v12 = [v11 isInPreview];

  if (v12)
  {
    if ([v7 previewIsOutdated])
    {
      v13 = [v7 sharedLibrary];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __PXSharedLibraryCreatePreview_block_invoke;
      v18[3] = &unk_1E774AD10;
      v19 = v8;
      v20 = v7;
      v21 = v9;
      v22 = v10;
      _ExitSharedLibraryOrPreview(v13, 0, 0, v21, @"PXSharedLibraryCreatePreview", v18);
    }

    else
    {
      (*(v10 + 2))(v10, 1, 0);
    }
  }

  else
  {
    _PXSharedLibraryCreatePreview(v7, v8, v9, v10);
  }
}

void __PXSharedLibraryCreatePreview_block_invoke(void **a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 && ([a1[4] isCancelled] & 1) == 0)
  {
    _PXSharedLibraryCreatePreview(a1[5], a1[4], a1[6], a1[7]);
  }

  else
  {
    (*(a1[7] + 2))();
  }
}

void _PXSharedLibraryCreatePreview(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v27 = a2;
  v8 = a3;
  v26 = a4;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _PXSharedLibraryCreatePreview(PXSharedLibraryAssistantViewModel *__strong, NSProgress * _Nullable __strong, __strong id<PXPresentationEnvironment>, void (^ _Nullable __strong)(BOOL, NSError * _Nullable __strong))"}];
    [v18 handleFailureInFunction:v19 file:@"PXSharedLibraryUtilities.m" lineNumber:1624 description:{@"Invalid parameter not satisfying: %@", @"viewModel"}];

    if (v8)
    {
      goto LABEL_3;
    }
  }

  v20 = [MEMORY[0x1E696AAA8] currentHandler];
  v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _PXSharedLibraryCreatePreview(PXSharedLibraryAssistantViewModel *__strong, NSProgress * _Nullable __strong, __strong id<PXPresentationEnvironment>, void (^ _Nullable __strong)(BOOL, NSError * _Nullable __strong))"}];
  [v20 handleFailureInFunction:v21 file:@"PXSharedLibraryUtilities.m" lineNumber:1625 description:{@"Invalid parameter not satisfying: %@", @"presentationEnvironment"}];

LABEL_3:
  v9 = [v7 sourceLibraryInfo];
  if (!v9)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _PXSharedLibraryCreatePreview(PXSharedLibraryAssistantViewModel *__strong, NSProgress * _Nullable __strong, __strong id<PXPresentationEnvironment>, void (^ _Nullable __strong)(BOOL, NSError * _Nullable __strong))"}];
    [v22 handleFailureInFunction:v23 file:@"PXSharedLibraryUtilities.m" lineNumber:1628 description:{@"Invalid parameter not satisfying: %@", @"sourceLibraryInfo"}];
  }

  v25 = [v7 emailAddresses];
  v10 = [v7 phoneNumbers];
  v24 = [v7 autoSharePolicy];
  v11 = [v7 startDate];
  v12 = [v7 personUUIDs];
  v13 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_DEFAULT, "Will create Shared Library preview", buf, 2u);
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = ___PXSharedLibraryCreatePreview_block_invoke;
  v28[3] = &unk_1E772E138;
  v29 = v27;
  v30 = v7;
  v31 = v8;
  v32 = v26;
  v14 = v8;
  v15 = v7;
  v16 = v26;
  v17 = v27;
  [v9 createPreviewWithEmailAddresses:v25 phoneNumbers:v10 autoSharePolicy:v24 startDate:v11 personUUIDs:v12 progress:v17 presentationEnvironment:v14 withCompletionHandler:v28];
}

void PXSharedLibraryCreateOrPublishLibraryScope(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v60 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (!v10)
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PXSharedLibraryCreateOrPublishLibraryScope(PXSharedLibraryStatusProvider *__strong _Nonnull, PXSharedLibraryAssistantViewModel *__strong _Nonnull, NSProgress * _Nullable __strong, __strong id<PXPresentationEnvironment> _Nonnull, void (^ _Nullable __strong)(__strong id<PXSharedLibrary>, NSError * _Nullable __strong))"}];
    [v32 handleFailureInFunction:v33 file:@"PXSharedLibraryUtilities.m" lineNumber:1693 description:{@"Invalid parameter not satisfying: %@", @"viewModel"}];

    if (v12)
    {
      goto LABEL_3;
    }

LABEL_20:
    v34 = [MEMORY[0x1E696AAA8] currentHandler];
    v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PXSharedLibraryCreateOrPublishLibraryScope(PXSharedLibraryStatusProvider *__strong _Nonnull, PXSharedLibraryAssistantViewModel *__strong _Nonnull, NSProgress * _Nullable __strong, __strong id<PXPresentationEnvironment> _Nonnull, void (^ _Nullable __strong)(__strong id<PXSharedLibrary>, NSError * _Nullable __strong))"}];
    [v34 handleFailureInFunction:v35 file:@"PXSharedLibraryUtilities.m" lineNumber:1694 description:{@"Invalid parameter not satisfying: %@", @"presentationEnvironment"}];

    goto LABEL_3;
  }

  if (!v12)
  {
    goto LABEL_20;
  }

LABEL_3:
  v14 = [v9 fetchPreview];
  v15 = v14;
  if (v14 && ([v14 owner], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isCurrentUser"), v16, (v17 & 1) == 0))
  {
    v27 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v27, OS_LOG_TYPE_ERROR, "Invalid input: Shared Library receiver cannot publish an invitation", buf, 2u);
    }

    v28 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXSharedLibraryErrorDomain" code:-1000 debugDescription:@"Invalid input: Shared Library receiver cannot publish an invitation"];
    v13[2](v13, 0, v28);
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __PXSharedLibraryCreateOrPublishLibraryScope_block_invoke;
    aBlock[3] = &unk_1E772DF60;
    v40 = v13;
    v18 = v13;
    v57 = v18;
    v41 = v12;
    v39 = v12;
    v56 = v39;
    v19 = _Block_copy(aBlock);
    v20 = [v10 sourceLibraryInfo];
    if (!v20)
    {
      v36 = [MEMORY[0x1E696AAA8] currentHandler];
      v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PXSharedLibraryCreateOrPublishLibraryScope(PXSharedLibraryStatusProvider *__strong _Nonnull, PXSharedLibraryAssistantViewModel *__strong _Nonnull, NSProgress * _Nullable __strong, __strong id<PXPresentationEnvironment> _Nonnull, void (^ _Nullable __strong)(__strong id<PXSharedLibrary>, NSError * _Nullable __strong))"}];
      [v36 handleFailureInFunction:v37 file:@"PXSharedLibraryUtilities.m" lineNumber:1728 description:{@"Invalid parameter not satisfying: %@", @"sourceLibraryInfo"}];
    }

    v21 = PLSharedLibraryGetLog();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    v42 = v11;
    if (v15)
    {
      if (v22)
      {
        v23 = [v15 identifier];
        *buf = 138543362;
        v59 = v23;
        _os_log_impl(&dword_1A3C1C000, v21, OS_LOG_TYPE_DEFAULT, "Will publish Shared Library preview: %{public}@", buf, 0xCu);
      }

      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __PXSharedLibraryCreateOrPublishLibraryScope_block_invoke_568;
      v48[3] = &unk_1E772DF88;
      v49 = v11;
      v53 = v18;
      v54 = v19;
      v50 = v10;
      v51 = v20;
      v52 = v15;
      v24 = v20;
      v25 = v19;
      [v52 publishPreviewWithPresentationEnvironment:v39 progress:v49 completion:v48];

      v26 = v49;
    }

    else
    {
      if (v22)
      {
        *buf = 138412290;
        v59 = v10;
        _os_log_impl(&dword_1A3C1C000, v21, OS_LOG_TYPE_DEFAULT, "Will create and publish Shared Library: %@", buf, 0xCu);
      }

      v25 = [v10 emailAddresses];
      v24 = [v10 phoneNumbers];
      v38 = [v10 autoSharePolicy];
      v26 = [v10 startDate];
      v29 = [v10 personUUIDs];
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __PXSharedLibraryCreateOrPublishLibraryScope_block_invoke_577;
      v43[3] = &unk_1E772DFB0;
      v44 = v10;
      v46 = v18;
      v47 = v19;
      v45 = v20;
      v30 = v20;
      v31 = v19;
      [v30 createSharedLibraryWithEmailAddresses:v25 phoneNumbers:v24 autoSharePolicy:v38 startDate:v26 personUUIDs:v29 progress:v42 presentationEnvironment:v39 withCompletionHandler:v43];
    }

    v28 = v57;
    v12 = v41;
    v11 = v42;
    v13 = v40;
  }
}

void __PXSharedLibraryCreateOrPublishLibraryScope_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  IsUserCanceledError = PXSharedLibraryIsUserCanceledError(v8);
  v11 = PLSharedLibraryGetLog();
  v12 = v11;
  if (IsUserCanceledError)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = v9;
      _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEFAULT, "User canceled %{public}@", buf, 0xCu);
    }

    v13 = *(a1 + 40);
    if (v13)
    {
      (*(v13 + 16))(v13, 0, v8);
    }
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v26 = v9;
      v27 = 2112;
      v28 = v8;
      _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_ERROR, "Failed to %{public}@, error: %@", buf, 0x16u);
    }

    v23 = 0;
    v24 = 0;
    v14 = [v7 presentCustomInformationForError:v8 customTitle:&v24 customMessage:&v23];
    v15 = v24;
    v16 = v23;
    if ((v14 & 1) == 0)
    {
      v17 = PXLocalizedSharedLibraryString(@"PXSharedLibraryCreateSharedLibraryFailureAlertTitle");

      v18 = PXLocalizedSharedLibraryString(@"PXSharedLibraryGenericFailureAlertMessage");

      v15 = v17;
      v16 = v18;
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __PXSharedLibraryCreateOrPublishLibraryScope_block_invoke_566;
    v20[3] = &unk_1E774C2F0;
    v19 = *(a1 + 32);
    v22 = *(a1 + 40);
    v21 = v8;
    PXPresentFailureWithLocalizedTitle(v15, v16, 0, v21, v19, v20);
  }
}

void __PXSharedLibraryCreateOrPublishLibraryScope_block_invoke_568(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v5 identifier];
      *buf = 138543362;
      v20 = v8;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "Did publish Shared Library preview: %{public}@", buf, 0xCu);
    }

    if ([*(a1 + 32) isCancelled])
    {
      v9 = PXSharedLibraryUserCanceledErrorWithDebugDescription(@"Create Preview");
      v10 = *(*(a1 + 64) + 16);
    }

    else
    {
      if ([*(a1 + 40) autoSharePolicy])
      {
        v9 = 0;
      }

      else
      {
        v15 = [*(a1 + 40) sharedLibraryRule];
        v9 = [v15 assetLocalIdentifiers];
      }

      if (([v5 isInPreview] & 1) == 0 && objc_msgSend(v9, "count") && (objc_msgSend(*(a1 + 32), "isCancelled") & 1) == 0)
      {
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __PXSharedLibraryCreateOrPublishLibraryScope_block_invoke_572;
        v16[3] = &unk_1E774BD88;
        v18 = *(a1 + 64);
        v17 = v5;
        [v17 moveAssetsWithLocalIdentifiersToSharedLibrary:v9 completion:v16];

        goto LABEL_15;
      }

      v10 = *(*(a1 + 64) + 16);
    }

    v10();
LABEL_15:

    goto LABEL_16;
  }

  v11 = *(a1 + 72);
  v12 = *(a1 + 48);
  v13 = [*(a1 + 56) identifier];
  v14 = [@"publish Shared Library preview: " stringByAppendingString:v13];
  (*(v11 + 16))(v11, v12, v6, v14);

LABEL_16:
}

void __PXSharedLibraryCreateOrPublishLibraryScope_block_invoke_577(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 identifier];
      *buf = 138543362;
      v12 = v5;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "Did create and publish Shared Library: %{public}@", buf, 0xCu);
    }

    if ([*(a1 + 32) autoSharePolicy])
    {
      v6 = 0;
    }

    else
    {
      v7 = [*(a1 + 32) sharedLibraryRule];
      v6 = [v7 assetLocalIdentifiers];
    }

    if ([v6 count])
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __PXSharedLibraryCreateOrPublishLibraryScope_block_invoke_578;
      v8[3] = &unk_1E774BD88;
      v10 = *(a1 + 48);
      v9 = v3;
      [v9 moveAssetsWithLocalIdentifiersToSharedLibrary:v6 completion:v8];
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

uint64_t __PXSharedLibraryCreateOrPublishLibraryScope_block_invoke_578(uint64_t a1, int a2)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    return (*(v3 + 16))(v3, *(a1 + 32), 0);
  }

  else
  {
    return (*(v3 + 16))(v3, 0);
  }
}

uint64_t __PXSharedLibraryCreateOrPublishLibraryScope_block_invoke_572(uint64_t a1, int a2)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    return (*(v3 + 16))(v3, *(a1 + 32), 0);
  }

  else
  {
    return (*(v3 + 16))(v3, 0);
  }
}

uint64_t __PXSharedLibraryCreateOrPublishLibraryScope_block_invoke_566(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32));
  }

  return result;
}

void _ExitAndRefetchInvitation(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v27 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a5;
  v13 = a4;
  v14 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = [v10 identifier];
    *buf = 138543362;
    v26 = v15;
    _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_ERROR, "Will exit current Shared Library invitation preview: %{public}@", buf, 0xCu);
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = ___ExitAndRefetchInvitation_block_invoke;
  v20[3] = &unk_1E774AD10;
  v21 = v10;
  v22 = v9;
  v23 = v11;
  v24 = v12;
  v16 = v11;
  v17 = v12;
  v18 = v9;
  v19 = v10;
  _ExitSharedLibraryOrPreview(v19, 0, 0, v16, v13, v20);
}

void PXSharedLibraryPreviewInvitation(void *a1, void *a2, void *a3, uint64_t a4, int a5, void *a6, void *a7, void *a8)
{
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  if (v16)
  {
    if (v17)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PXSharedLibraryPreviewInvitation(PXSharedLibraryStatusProvider *__strong _Nonnull, __strong id<PXSharedLibrary> _Nonnull, PXSharedLibraryRule *__strong _Nonnull, PXSharedLibraryAutoSharePolicy, BOOL, NSProgress * _Nullable __strong, __strong id<PXPresentationEnvironment> _Nonnull, void (^ _Nullable __strong)(BOOL, NSError * _Nullable __strong))"}];
    [v21 handleFailureInFunction:v22 file:@"PXSharedLibraryUtilities.m" lineNumber:1881 description:{@"Invalid parameter not satisfying: %@", @"invitation"}];

    if (v17)
    {
LABEL_3:
      if (v19)
      {
        goto LABEL_4;
      }

LABEL_8:
      v25 = [MEMORY[0x1E696AAA8] currentHandler];
      v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PXSharedLibraryPreviewInvitation(PXSharedLibraryStatusProvider *__strong _Nonnull, __strong id<PXSharedLibrary> _Nonnull, PXSharedLibraryRule *__strong _Nonnull, PXSharedLibraryAutoSharePolicy, BOOL, NSProgress * _Nullable __strong, __strong id<PXPresentationEnvironment> _Nonnull, void (^ _Nullable __strong)(BOOL, NSError * _Nullable __strong))"}];
      [v25 handleFailureInFunction:v26 file:@"PXSharedLibraryUtilities.m" lineNumber:1883 description:{@"Invalid parameter not satisfying: %@", @"presentationEnvironment"}];

      if (a5)
      {
        goto LABEL_5;
      }

LABEL_9:
      _PXSharedLibraryPreviewInvitation(v15, v16, v17, v18, a4, v19, v20);
      goto LABEL_10;
    }
  }

  v23 = [MEMORY[0x1E696AAA8] currentHandler];
  v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PXSharedLibraryPreviewInvitation(PXSharedLibraryStatusProvider *__strong _Nonnull, __strong id<PXSharedLibrary> _Nonnull, PXSharedLibraryRule *__strong _Nonnull, PXSharedLibraryAutoSharePolicy, BOOL, NSProgress * _Nullable __strong, __strong id<PXPresentationEnvironment> _Nonnull, void (^ _Nullable __strong)(BOOL, NSError * _Nullable __strong))"}];
  [v23 handleFailureInFunction:v24 file:@"PXSharedLibraryUtilities.m" lineNumber:1882 description:{@"Invalid parameter not satisfying: %@", @"rule"}];

  if (!v19)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (!a5)
  {
    goto LABEL_9;
  }

LABEL_5:
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __PXSharedLibraryPreviewInvitation_block_invoke;
  v27[3] = &unk_1E7733970;
  v28 = v15;
  v29 = v17;
  v30 = v18;
  v33 = a4;
  v31 = v19;
  v32 = v20;
  _ExitAndRefetchInvitation(v28, v16, v31, @"PXSharedLibraryPreviewInvitation", v27);

LABEL_10:
}

void __PXSharedLibraryPreviewInvitation_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    _PXSharedLibraryPreviewInvitation(*(a1 + 32), v7, *(a1 + 40), *(a1 + 48), *(a1 + 72), *(a1 + 56), *(a1 + 64));
  }

  else
  {
    v6 = *(a1 + 64);
    if (v6)
    {
      (*(v6 + 16))(v6, 0, v5);
    }
  }
}

void _PXSharedLibraryPreviewInvitation(void *a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7)
{
  v43 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a7;
  if (v14)
  {
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_8:
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _PXSharedLibraryPreviewInvitation(PXSharedLibraryStatusProvider *__strong, __strong id<PXSharedLibrary>, PXSharedLibraryRule *__strong, NSProgress *__strong, PXSharedLibraryAutoSharePolicy, __strong id<PXPresentationEnvironment>, void (^ _Nullable __strong)(BOOL, NSError * _Nullable __strong))"}];
    [v28 handleFailureInFunction:v29 file:@"PXSharedLibraryUtilities.m" lineNumber:1814 description:{@"Invalid parameter not satisfying: %@", @"rule"}];

    if (v17)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v26 = [MEMORY[0x1E696AAA8] currentHandler];
  v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _PXSharedLibraryPreviewInvitation(PXSharedLibraryStatusProvider *__strong, __strong id<PXSharedLibrary>, PXSharedLibraryRule *__strong, NSProgress *__strong, PXSharedLibraryAutoSharePolicy, __strong id<PXPresentationEnvironment>, void (^ _Nullable __strong)(BOOL, NSError * _Nullable __strong))"}];
  [v26 handleFailureInFunction:v27 file:@"PXSharedLibraryUtilities.m" lineNumber:1813 description:{@"Invalid parameter not satisfying: %@", @"invitation"}];

  if (!v15)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v17)
  {
    goto LABEL_4;
  }

LABEL_9:
  v30 = [MEMORY[0x1E696AAA8] currentHandler];
  v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _PXSharedLibraryPreviewInvitation(PXSharedLibraryStatusProvider *__strong, __strong id<PXSharedLibrary>, PXSharedLibraryRule *__strong, NSProgress *__strong, PXSharedLibraryAutoSharePolicy, __strong id<PXPresentationEnvironment>, void (^ _Nullable __strong)(BOOL, NSError * _Nullable __strong))"}];
  [v30 handleFailureInFunction:v31 file:@"PXSharedLibraryUtilities.m" lineNumber:1815 description:{@"Invalid parameter not satisfying: %@", @"presentationEnvironment"}];

LABEL_4:
  v19 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v14 identifier];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v20;
    _os_log_impl(&dword_1A3C1C000, v19, OS_LOG_TYPE_DEFAULT, "Will preview Shared Library invitation: %{public}@", &buf, 0xCu);
  }

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = ___PXSharedLibraryPreviewInvitation_block_invoke;
  v32[3] = &unk_1E774ACE8;
  v34 = v17;
  v35 = v18;
  v33 = v14;
  v21 = v33;
  v22 = v15;
  v23 = v32;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v37 = ___PreviewInvitation_block_invoke;
  v38 = &unk_1E7746F80;
  v39 = v21;
  v40 = v22;
  v41 = v23;
  v42 = a5;
  v24 = v17;
  v25 = v18;
  [v21 previewInvitationWithRule:v22 progress:v16 completion:&buf];
}

void _MoveAssetsIfNecessary(void *a1, uint64_t a2, void *a3, void *a4)
{
  v10 = a1;
  v7 = a3;
  v8 = a4;
  v9 = [v10 isInPreview];
  if (a2 || (v9 & 1) != 0 || ![v7 count])
  {
    v8[2](v8, 1, 0);
  }

  else
  {
    [v10 moveAssetsWithLocalIdentifiersToSharedLibrary:v7 completion:v8];
  }
}

void PXSharedLibraryAcceptInvitation(void *a1, void *a2, void *a3, uint64_t a4, int a5, void *a6, void *a7, void *a8)
{
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  if (v16)
  {
    if (v17)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PXSharedLibraryAcceptInvitation(PXSharedLibraryStatusProvider *__strong _Nonnull, __strong id<PXSharedLibrary> _Nonnull, PXSharedLibraryRule *__strong _Nonnull, PXSharedLibraryAutoSharePolicy, BOOL, NSProgress * _Nullable __strong, __strong id<PXPresentationEnvironment> _Nonnull, void (^ _Nullable __strong)(BOOL, NSError * _Nullable __strong))"}];
    [v21 handleFailureInFunction:v22 file:@"PXSharedLibraryUtilities.m" lineNumber:1943 description:{@"Invalid parameter not satisfying: %@", @"invitation"}];

    if (v17)
    {
LABEL_3:
      if (v19)
      {
        goto LABEL_4;
      }

LABEL_8:
      v25 = [MEMORY[0x1E696AAA8] currentHandler];
      v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PXSharedLibraryAcceptInvitation(PXSharedLibraryStatusProvider *__strong _Nonnull, __strong id<PXSharedLibrary> _Nonnull, PXSharedLibraryRule *__strong _Nonnull, PXSharedLibraryAutoSharePolicy, BOOL, NSProgress * _Nullable __strong, __strong id<PXPresentationEnvironment> _Nonnull, void (^ _Nullable __strong)(BOOL, NSError * _Nullable __strong))"}];
      [v25 handleFailureInFunction:v26 file:@"PXSharedLibraryUtilities.m" lineNumber:1945 description:{@"Invalid parameter not satisfying: %@", @"presentationEnvironment"}];

      if (a5)
      {
        goto LABEL_5;
      }

LABEL_9:
      _PXSharedLibraryAcceptInvitation(v16, v17, a4, v18, v19, v20);
      goto LABEL_10;
    }
  }

  v23 = [MEMORY[0x1E696AAA8] currentHandler];
  v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PXSharedLibraryAcceptInvitation(PXSharedLibraryStatusProvider *__strong _Nonnull, __strong id<PXSharedLibrary> _Nonnull, PXSharedLibraryRule *__strong _Nonnull, PXSharedLibraryAutoSharePolicy, BOOL, NSProgress * _Nullable __strong, __strong id<PXPresentationEnvironment> _Nonnull, void (^ _Nullable __strong)(BOOL, NSError * _Nullable __strong))"}];
  [v23 handleFailureInFunction:v24 file:@"PXSharedLibraryUtilities.m" lineNumber:1944 description:{@"Invalid parameter not satisfying: %@", @"rule"}];

  if (!v19)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (!a5)
  {
    goto LABEL_9;
  }

LABEL_5:
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __PXSharedLibraryAcceptInvitation_block_invoke;
  v27[3] = &unk_1E772DFD8;
  v28 = v17;
  v32 = a4;
  v29 = v18;
  v30 = v19;
  v31 = v20;
  _ExitAndRefetchInvitation(v15, v16, v30, @"PXSharedLibraryAcceptInvitation", v27);

LABEL_10:
}

void __PXSharedLibraryAcceptInvitation_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    _PXSharedLibraryAcceptInvitation(v7, *(a1 + 32), *(a1 + 64), *(a1 + 40), *(a1 + 48), *(a1 + 56));
  }

  else
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      (*(v6 + 16))(v6, 0, v5);
    }
  }
}

void _PXSharedLibraryAcceptInvitation(void *a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v40 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a2;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_8:
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _PXSharedLibraryAcceptInvitation(__strong id<PXSharedLibrary>, PXSharedLibraryRule *__strong, PXSharedLibraryAutoSharePolicy, NSProgress * _Nullable __strong, __strong id<PXPresentationEnvironment>, void (^ _Nullable __strong)(BOOL, NSError * _Nullable __strong))"}];
    [v25 handleFailureInFunction:v26 file:@"PXSharedLibraryUtilities.m" lineNumber:1913 description:{@"Invalid parameter not satisfying: %@", @"rule"}];

    if (v14)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v23 = [MEMORY[0x1E696AAA8] currentHandler];
  v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _PXSharedLibraryAcceptInvitation(__strong id<PXSharedLibrary>, PXSharedLibraryRule *__strong, PXSharedLibraryAutoSharePolicy, NSProgress * _Nullable __strong, __strong id<PXPresentationEnvironment>, void (^ _Nullable __strong)(BOOL, NSError * _Nullable __strong))"}];
  [v23 handleFailureInFunction:v24 file:@"PXSharedLibraryUtilities.m" lineNumber:1912 description:{@"Invalid parameter not satisfying: %@", @"invitation"}];

  if (!v12)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v14)
  {
    goto LABEL_4;
  }

LABEL_9:
  v27 = [MEMORY[0x1E696AAA8] currentHandler];
  v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _PXSharedLibraryAcceptInvitation(__strong id<PXSharedLibrary>, PXSharedLibraryRule *__strong, PXSharedLibraryAutoSharePolicy, NSProgress * _Nullable __strong, __strong id<PXPresentationEnvironment>, void (^ _Nullable __strong)(BOOL, NSError * _Nullable __strong))"}];
  [v27 handleFailureInFunction:v28 file:@"PXSharedLibraryUtilities.m" lineNumber:1914 description:{@"Invalid parameter not satisfying: %@", @"presentationEnvironment"}];

LABEL_4:
  v16 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v11 identifier];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v17;
    _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_DEFAULT, "Will accept Shared Library invitation: %{public}@", &buf, 0xCu);
  }

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = ___PXSharedLibraryAcceptInvitation_block_invoke;
  v29[3] = &unk_1E774ACE8;
  v31 = v14;
  v32 = v15;
  v30 = v11;
  v18 = v30;
  v19 = v12;
  v20 = v29;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v34 = ___AcceptInvitation_block_invoke;
  v35 = &unk_1E7746F80;
  v36 = v18;
  v37 = v19;
  v38 = v20;
  v39 = a3;
  v21 = v14;
  v22 = v15;
  [v18 acceptInvitationWithRule:v19 progress:v13 completion:&buf];
}

id PXSharedLibraryPlaceholderParticipantImageWithPointSize()
{
  v0 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:?];
  v1 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.crop.circle.fill" withConfiguration:v0];

  return v1;
}

void sub_1A4ACFD94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4AD1484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4AD1AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8016(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A4AD4E28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4AD5E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4AD6040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4AD61E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4AD63DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8683(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *PXSharedLibraryLegacyDeviceOperatingSystemDescription(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid PXSharedLibraryLegacyDeviceOperatingSystem: %ld", a1];
  }

  else
  {
    v2 = off_1E772E370[a1];
  }

  return v2;
}

double PXExploreLayoutCellPreferredAspectRatio(unint64_t a1, unint64_t a2)
{
  result = 0.0;
  if (a1 > 6)
  {
LABEL_8:
    if (!a1)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"double PXExploreLayoutCellPreferredAspectRatio(NSInteger, PXExploreLayoutType, PXExploreLayoutSubtype)"}];
      [v7 handleFailureInFunction:v8 file:@"PXExploreLayoutGenerator+Layouts.m" lineNumber:49 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    return result;
  }

  if (((1 << a1) & 6) != 0)
  {
    return 1.0;
  }

  if (((1 << a1) & 0x18) == 0)
  {
    if (((1 << a1) & 0x60) != 0)
    {
      return 1.0;
    }

    goto LABEL_8;
  }

  if (a2 < 4)
  {
    return dbl_1A5381520[a2];
  }

  return result;
}

id PXUIOverlayBadgesViewCreateDefaultSystemImageBadgeView(void *a1)
{
  v1 = MEMORY[0x1E69DCAE0];
  v2 = a1;
  v3 = [v1 alloc];
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:v2];

  v5 = [v3 initWithImage:v4];
  v6 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:12.0];
  [v5 setPreferredSymbolConfiguration:v6];

  v7 = [MEMORY[0x1E69DC888] whiteColor];
  [v5 setTintColor:v7];

  return v5;
}

uint64_t __Block_byref_object_copy__10213(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A4AE33C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, id location)
{
  objc_destroyWeak((v49 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4AE375C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t PXCloudQuotaOfferLevel(void *a1)
{
  v1 = [a1 level];
  if ((v1 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_1A5381548[v1 - 1];
  }
}

__CFString *PXCloudQuotaOfferDebugDescription(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = MEMORY[0x1E696AEC0];
    v3 = objc_opt_class();
    v4 = [v1 offerType];
    if (v4 > 8)
    {
      v5 = 0;
    }

    else
    {
      v5 = off_1E772E630[v4];
    }

    v7 = [v1 level];
    if (v7 > 6)
    {
      v8 = 0;
    }

    else
    {
      v8 = off_1E772E678[v7];
    }

    v6 = [v2 stringWithFormat:@"<%@:%p, type:%@, level:%@>", v3, v1, v5, v8];
  }

  else
  {
    v6 = @"-";
  }

  return v6;
}

id PXCloudQuotaOfferSerialQueue()
{
  if (PXCloudQuotaOfferSerialQueue_predicate != -1)
  {
    dispatch_once(&PXCloudQuotaOfferSerialQueue_predicate, &__block_literal_global_11186);
  }

  v1 = PXCloudQuotaOfferSerialQueue__serial_queue;

  return v1;
}

void __PXCloudQuotaOfferSerialQueue_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_UTILITY, 0);

  v1 = dispatch_queue_create("com.apple.photos.cloud-quota-offer-provider", attr);
  v2 = PXCloudQuotaOfferSerialQueue__serial_queue;
  PXCloudQuotaOfferSerialQueue__serial_queue = v1;
}

void PXCloudQuotaSendAnalyticsForOfferChange(int a1, int a2, void *a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    if (a1)
    {
      v7 = @"com.apple.photos.CPAnalytics.photosCloudQuotaOfferReplaced";
    }

    else
    {
      v7 = @"com.apple.photos.CPAnalytics.photosCloudQuotaOfferRemoved";
    }

    goto LABEL_7;
  }

  if (a1)
  {
    v7 = @"com.apple.photos.CPAnalytics.photosCloudQuotaOfferAdded";
LABEL_7:
    v8 = MEMORY[0x1E6991F28];
    v10 = *MEMORY[0x1E6991E20];
    v11[0] = v5;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [v8 sendEvent:v7 withPayload:v9];
  }
}

void PXPresentAssistantForContext(void *a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PXPresentAssistantForContext(__strong id<PXAssistantContext> _Nonnull, UIViewController *__strong _Nonnull, void (^ _Nullable __strong)(NSError * _Nullable __strong))"}];
    [v21 handleFailureInFunction:v22 file:@"PXAssistantUtilities.m" lineNumber:135 description:{@"Invalid parameter not satisfying: %@", @"context"}];

    if (v6)
    {
      goto LABEL_3;
    }
  }

  v23 = [MEMORY[0x1E696AAA8] currentHandler];
  v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PXPresentAssistantForContext(__strong id<PXAssistantContext> _Nonnull, UIViewController *__strong _Nonnull, void (^ _Nullable __strong)(NSError * _Nullable __strong))"}];
  [v23 handleFailureInFunction:v24 file:@"PXAssistantUtilities.m" lineNumber:136 description:{@"Invalid parameter not satisfying: %@", @"presentingViewController"}];

LABEL_3:
  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = __PXPresentAssistantForContext_block_invoke;
  v30 = &unk_1E772E6B8;
  v8 = v6;
  v31 = v8;
  v9 = v5;
  v10 = &v27;
  v11 = v7;
  if (!v5)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _PXPresentAssistantForContext(__strong id<PXAssistantContext>, void (^ _Nullable __strong)(PXAssistantController *__strong, BOOL), void (^ _Nullable __strong)(NSError * _Nullable __strong))"}];
    [v25 handleFailureInFunction:v26 file:@"PXAssistantUtilities.m" lineNumber:92 description:{@"Invalid parameter not satisfying: %@", @"context", v27, v28}];
  }

  v12 = PLUIGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v9;
    _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEFAULT, "Assistant will start for context: %@", &buf, 0xCu);
  }

  v13 = [[PXAssistantController alloc] initWithContext:v9];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__11431;
  v36 = __Block_byref_object_dispose__11432;
  v37 = 0;
  v14 = [_PXAssistantControllerDelegate alloc];
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v39 = ___PXPresentAssistantForContext_block_invoke;
  v40 = &unk_1E772E6E0;
  v15 = v9;
  v41 = v15;
  v45 = &v32;
  v16 = v10;
  v43 = v16;
  v17 = v13;
  v42 = v17;
  v18 = v11;
  v44 = v18;
  v19 = [(_PXAssistantControllerDelegate *)v14 initWithAssistantController:v17 completionHandler:&buf];
  v20 = v33[5];
  v33[5] = v19;

  v29(v16, v17, 1);
  _Block_object_dispose(&v32, 8);
}

void sub_1A4AE7100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __PXPresentAssistantForContext_block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    return [v3 presentViewController:a2 animated:1 completion:0];
  }

  else
  {
    return [v3 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t __Block_byref_object_copy__11431(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void PXCopyURL(void *a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void PXCopyURL(NSURL *__strong _Nonnull)"];
    [v5 handleFailureInFunction:v6 file:@"NSURL+PhotosUICore.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"URL"}];
  }

  v2 = [MEMORY[0x1E69DCD50] generalPasteboard];
  v3 = [v1 absoluteString];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [v2 setObjects:v4];
}

void PXOpenURL(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PXOpenURL(NSURL *__strong _Nonnull, void (^ _Nullable __strong)(BOOL))"}];
    [v10 handleFailureInFunction:v11 file:@"NSURL+PhotosUICore.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"URL"}];
  }

  v5 = PLUserStatusUIGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v3;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "Will open URL: %@", buf, 0xCu);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __PXOpenURL_block_invoke;
  aBlock[3] = &unk_1E7740890;
  v13 = v3;
  v14 = v4;
  v6 = v4;
  v7 = v3;
  v8 = _Block_copy(aBlock);
  v9 = [MEMORY[0x1E69DC668] sharedApplication];
  [v9 openURL:v7 withCompletionHandler:v8];
}

uint64_t __PXOpenURL_block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = PLUserStatusUIGetLog();
  v5 = v4;
  if (a2)
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v6 = *(a1 + 32);
    v12 = 138412290;
    v13 = v6;
    v7 = "Did open URL: %@";
    v8 = v5;
    v9 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v10 = *(a1 + 32);
    v12 = 138412290;
    v13 = v10;
    v7 = "Failed to open URL: %@";
    v8 = v5;
    v9 = OS_LOG_TYPE_ERROR;
  }

  _os_log_impl(&dword_1A3C1C000, v8, v9, v7, &v12, 0xCu);
LABEL_7:

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

void PXOpenSensitiveURL(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PXOpenSensitiveURL(NSURL *__strong _Nonnull, void (^ _Nullable __strong)(BOOL))"}];
    [v15 handleFailureInFunction:v16 file:@"NSURL+PhotosUICore.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"URL"}];
  }

  v5 = PLUserStatusUIGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v3;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "Will open URL: %@", buf, 0xCu);
  }

  v6 = [MEMORY[0x1E6963608] defaultWorkspace];
  v17 = 0;
  v7 = [v6 openSensitiveURL:v3 withOptions:0 error:&v17];
  v8 = v17;

  v9 = PLUserStatusUIGetLog();
  v10 = v9;
  if (v7)
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 138412290;
    v19 = v3;
    v11 = "Did open URL: %@";
    v12 = v10;
    v13 = OS_LOG_TYPE_DEFAULT;
    v14 = 12;
  }

  else
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 138412546;
    v19 = v3;
    v20 = 2112;
    v21 = v8;
    v11 = "Failed to open URL: %@, Error: %@";
    v12 = v10;
    v13 = OS_LOG_TYPE_ERROR;
    v14 = 22;
  }

  _os_log_impl(&dword_1A3C1C000, v12, v13, v11, buf, v14);
LABEL_11:

  if (v4)
  {
    v4[2](v4, v7);
  }
}

void sub_1A4AEAF00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1A4AEB958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1A4AECC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12148(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

PXCMMMomentShareInvitationsDataSourceState *_DataSourceState(void *a1, uint64_t a2, uint64_t a3)
{
  v19[3] = *MEMORY[0x1E69E9840];
  v5 = [a1 librarySpecificFetchOptions];
  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
  v19[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  [v5 setSortDescriptors:v7];

  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(status != %d && shareURL != nil)", 0];
  if (a2 == 2)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d OR %K == %d", @"status", 2, @"status", 3];
  }

  else
  {
    if (a2 != 1)
    {
      goto LABEL_6;
    }

    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"status", 1, v17, v18];
  }
  v9 = ;
  v10 = MEMORY[0x1E696AB28];
  v19[1] = v8;
  v19[2] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
  v12 = [v10 andPredicateWithSubpredicates:v11];

  v8 = v12;
LABEL_6:
  [v5 setPredicate:v8];

  if (a3 >= 1)
  {
    [v5 setFetchLimit:a3];
  }

  v13 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:7 subtype:0x7FFFFFFFFFFFFFFFLL options:v5];
  v14 = [PXCMMMomentShareInvitationsDataSourceState alloc];
  v15 = [(PXCMMMomentShareInvitationsDataSourceState *)v14 initWithMomentShares:v13 invitationsByMomentShareObjectID:MEMORY[0x1E695E0F8]];

  return v15;
}

void sub_1A4AF1764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4AF1A30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

PXSharedAlbumSubscriberInfo *_subscriberInfoForAdjustedIndex(void *a1, uint64_t a2)
{
  v2 = [a1 objectAtIndex:a2];
  v3 = [v2 inviteeEmails];
  v4 = [v3 firstObject];

  v5 = [v2 inviteePhones];
  v6 = [v5 firstObject];

  v7 = [v2 inviteeFirstName];
  v8 = [v2 inviteeLastName];
  v9 = [v2 inviteeDisplayNameIncludingEmail:0];
  v10 = [v2 inviteeHashedPersonID];
  LOBYTE(v13) = 0;
  v11 = [[PXSharedAlbumSubscriberInfo alloc] initWithInvitationRecord:v2 identifier:v10 email:v4 phone:v6 firstName:v7 lastName:v8 displayName:v9 isOwner:v13];

  return v11;
}

void sub_1A4AF3A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13111(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__13537(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A4AF7174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL clipIsModuleType(void *a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [v3 displayAssets];
  v5 = [v4 count];

  if (v5 == 1 && ([v3 playbackStyle] - 2) >= 4)
  {
    switch(a2)
    {
      case 3uLL:
        v12 = [v3 displayAssets];
        v9 = [v12 objectAtIndexedSubscript:0];

        v10 = [PXStoryRecipeClipUtilities assetHasHighCurationScore:v9];
        break;
      case 2uLL:
        v11 = [v3 displayAssets];
        v9 = [v11 objectAtIndexedSubscript:0];

        v10 = [PXStoryRecipeClipUtilities assetIsPet:v9];
        break;
      case 1uLL:
        v8 = [v3 displayAssets];
        v9 = [v8 objectAtIndexedSubscript:0];

        v10 = [PXStoryRecipeClipUtilities assetIsPortrait:v9];
        break;
      default:
        v13 = PLStoryGetLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          if (a2 > 3)
          {
            v14 = @"??";
          }

          else
          {
            v14 = off_1E7731FC0[a2];
          }

          v15 = v14;
          v16 = 138412290;
          v17 = v15;
          _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_ERROR, "Unhandled case %@", &v16, 0xCu);
        }

        goto LABEL_3;
    }

    v6 = v10;

    goto LABEL_4;
  }

LABEL_3:
  v6 = 0;
LABEL_4:

  return v6;
}

void sub_1A4AFE220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSCNetworkReachabilityCreateWithAddressSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SystemConfigurationLibrary();
  result = dlsym(v2, "SCNetworkReachabilityCreateWithAddress");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSCNetworkReachabilityCreateWithAddressSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *SystemConfigurationLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SystemConfigurationLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SystemConfigurationLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E772EB48;
    v6 = 0;
    SystemConfigurationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = SystemConfigurationLibraryCore_frameworkLibrary;
  if (!SystemConfigurationLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SystemConfigurationLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"PXCloudPhotoWelcomeNavigationController.m" lineNumber:27 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void *__getSCNetworkReachabilityGetFlagsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SystemConfigurationLibrary();
  result = dlsym(v2, "SCNetworkReachabilityGetFlags");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSCNetworkReachabilityGetFlagsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getMCProfileConnectionClass_block_invoke(uint64_t a1)
{
  ManagedConfigurationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MCProfileConnection");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMCProfileConnectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMCProfileConnectionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PXCloudPhotoWelcomeNavigationController.m" lineNumber:32 description:{@"Unable to find class %s", "MCProfileConnection"}];

    __break(1u);
  }
}

void *__getMCFeatureCloudPhotoLibraryAllowedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ManagedConfigurationLibrary();
  result = dlsym(v2, "MCFeatureCloudPhotoLibraryAllowed");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMCFeatureCloudPhotoLibraryAllowedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *ManagedConfigurationLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!ManagedConfigurationLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __ManagedConfigurationLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E772EB60;
    v6 = 0;
    ManagedConfigurationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = ManagedConfigurationLibraryCore_frameworkLibrary;
  if (!ManagedConfigurationLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ManagedConfigurationLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"PXCloudPhotoWelcomeNavigationController.m" lineNumber:31 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __ManagedConfigurationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ManagedConfigurationLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __SystemConfigurationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SystemConfigurationLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1A4B009C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 192), 8);
  _Block_object_dispose((v33 - 144), 8);
  _Block_object_dispose((v33 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14955(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A4B07004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4B073C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1A4B09FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16543(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _getSpriteGeometryTransformedTopTrailingCorner(float a1, float a2)
{
  memset(&v5, 0, sizeof(v5));
  CGAffineTransformMakeScale(&t1, a2, a2);
  CGAffineTransformMakeRotation(&t2, a1);
  CGAffineTransformConcat(&v5, &t1, &t2);
  PXPointAdd();
}

void sub_1A4B0F5C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PXDeduplicationAssetsThatCanBeMergedInSelection(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(off_1E77217C8);
  v3 = [v1 selectedIndexPaths];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __PXDeduplicationAssetsThatCanBeMergedInSelection_block_invoke;
  v9[3] = &unk_1E772EE18;
  v10 = v2;
  v4 = v2;
  [v3 enumerateItemIndexSetsUsingBlock:v9];

  v5 = [off_1E77218D8 alloc];
  v6 = [v1 dataSource];

  v7 = [v5 initWithDataSource:v6 selectedIndexPaths:v4];

  return v7;
}

void __PXDeduplicationAssetsThatCanBeMergedInSelection_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4;
  if ([v8 count] >= 2)
  {
    v7 = [off_1E7721768 indexPathSetWithItemIndexes:v8 dataSourceIdentifier:a2 section:a3];
    [*(a1 + 32) unionIndexPathSet:v7];
  }
}

id PXDeduplicationIdenticalSelectionFromSelection(void *a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(off_1E77217C8);
  if (!v1 || ![v1 isAnyItemSelected])
  {
    goto LABEL_15;
  }

  v3 = [v1 dataSource];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_5;
    }

    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PXSelectionSnapshot * _Nonnull PXDeduplicationIdenticalSelectionFromSelection(PXSelectionSnapshot *__strong _Nonnull)"];
    v31 = objc_opt_class();
    v26 = NSStringFromClass(v31);
    v32 = [v3 px_descriptionForAssertionMessage];
    [v23 handleFailureInFunction:v24 file:@"PXDeduplicationUtilities.m" lineNumber:56 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"selectionSnapshot.dataSource", v26, v32}];
  }

  else
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PXSelectionSnapshot * _Nonnull PXDeduplicationIdenticalSelectionFromSelection(PXSelectionSnapshot *__strong _Nonnull)"];
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    [v23 handleFailureInFunction:v24 file:@"PXDeduplicationUtilities.m" lineNumber:56 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"selectionSnapshot.dataSource", v26}];
  }

LABEL_5:
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [v1 selectedIndexPaths];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __PXDeduplicationIdenticalSelectionFromSelection_block_invoke;
  v43[3] = &unk_1E773DC70;
  v37 = v3;
  v44 = v37;
  v6 = v4;
  v45 = v6;
  [v5 enumerateItemIndexSetsUsingBlock:v43];

  v7 = MEMORY[0x1E695DFD8];
  v8 = [v6 allKeys];
  v9 = [v7 setWithArray:v8];

  v10 = [v1 firstObject];
  if (!v10)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PXSelectionSnapshot * _Nonnull PXDeduplicationIdenticalSelectionFromSelection(PXSelectionSnapshot *__strong _Nonnull)"];
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    [v27 handleFailureInFunction:v28 file:@"PXDeduplicationUtilities.m" lineNumber:68 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"selectionSnapshot.firstObject", v30}];
LABEL_23:

    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PXSelectionSnapshot * _Nonnull PXDeduplicationIdenticalSelectionFromSelection(PXSelectionSnapshot *__strong _Nonnull)"];
    v33 = objc_opt_class();
    v30 = NSStringFromClass(v33);
    v34 = [v10 px_descriptionForAssertionMessage];
    [v27 handleFailureInFunction:v28 file:@"PXDeduplicationUtilities.m" lineNumber:68 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"selectionSnapshot.firstObject", v30, v34}];

    goto LABEL_23;
  }

LABEL_7:
  v11 = [v10 photoLibrary];

  v42 = 0;
  v36 = v9;
  v12 = [MEMORY[0x1E6978650] assetCollectionDuplicateTypeMappingForAssetCollectionUUIDs:v9 photoLibrary:v11 error:&v42];
  v35 = v42;
  v13 = [v12 objectForKeyedSubscript:&unk_1F1909D00];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v39;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v39 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [v6 objectForKeyedSubscript:*(*(&v38 + 1) + 8 * i)];
        [v2 unionIndexPathSet:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v15);
  }

LABEL_15:
  v19 = [off_1E77218D8 alloc];
  v20 = [v1 dataSource];
  v21 = [v19 initWithDataSource:v20 selectedIndexPaths:v2];

  return v21;
}

void __PXDeduplicationIdenticalSelectionFromSelection_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  v17 = a2;
  v18 = a3;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v19 = vnegq_f64(v8);
  v9 = a4;
  v10 = [v7 assetCollectionAtSectionIndexPath:&v17];
  v11 = [off_1E7721768 indexPathSetWithItemIndexes:v9 dataSourceIdentifier:a2 section:{a3, v17, v18}];

  v12 = *(a1 + 40);
  v13 = [v10 uuid];
  v14 = [v12 objectForKeyedSubscript:v13];

  if (v14)
  {
    PXAssertGetLog();
  }

  v15 = *(a1 + 40);
  v16 = [v10 uuid];
  [v15 setObject:v11 forKeyedSubscript:v16];
}

id PXDeduplicationLocalizedMergeConfirmationMessageWithSharedLibraryWarning(void *a1, int a2, int a3, int a4)
{
  v7 = [a1 sectionIndexPathsContainingSelection];
  v8 = [v7 count];

  if (a2)
  {
    v9 = @"MERGE_DUPLICATES_ACTION_CONFIRMATION_MESSAGE_PERCEPTUAL_WARNING_MULTIPLE";
    if (v8 == 1)
    {
      v9 = @"MERGE_DUPLICATES_ACTION_CONFIRMATION_MESSAGE_PERCEPTUAL_WARNING_SINGLE";
    }

    v10 = @"MERGE_DUPLICATES_ACTION_CONFIRMATION_MESSAGE_PERCEPTUAL_WARNING_MULTIPLE_BOTH_LIBRARIES";
    if (v8 == 1)
    {
      v10 = @"MERGE_DUPLICATES_ACTION_CONFIRMATION_MESSAGE_PERCEPTUAL_WARNING_SINGLE_BOTH_LIBRARIES";
    }

    v11 = @"MERGE_DUPLICATES_ACTION_CONFIRMATION_MESSAGE_IDENTICAL_WARNING_MULTIPLE";
    v12 = @"MERGE_DUPLICATES_ACTION_CONFIRMATION_MESSAGE_IDENTICAL_WARNING_SINGLE";
    if (a4)
    {
      v9 = v10;
    }

    v13 = v8 == 1;
    v14 = @"MERGE_DUPLICATES_ACTION_CONFIRMATION_MESSAGE_IDENTICAL_WARNING_MULTIPLE_BOTH_LIBRARIES";
    v15 = @"MERGE_DUPLICATES_ACTION_CONFIRMATION_MESSAGE_IDENTICAL_WARNING_SINGLE_BOTH_LIBRARIES";
  }

  else
  {
    v9 = @"MERGE_DUPLICATES_ACTION_CONFIRMATION_MESSAGE_PERCEPTUAL_MULTIPLE";
    if (v8 == 1)
    {
      v9 = @"MERGE_DUPLICATES_ACTION_CONFIRMATION_MESSAGE_PERCEPTUAL_SINGLE";
    }

    v16 = @"MERGE_DUPLICATES_ACTION_CONFIRMATION_MESSAGE_PERCEPTUAL_MULTIPLE_BOTH_LIBRARIES";
    if (v8 == 1)
    {
      v16 = @"MERGE_DUPLICATES_ACTION_CONFIRMATION_MESSAGE_PERCEPTUAL_SINGLE_BOTH_LIBRARIES";
    }

    v11 = @"MERGE_DUPLICATES_ACTION_CONFIRMATION_MESSAGE_IDENTICAL_MULTIPLE";
    v12 = @"MERGE_DUPLICATES_ACTION_CONFIRMATION_MESSAGE_IDENTICAL_SINGLE";
    if (a4)
    {
      v9 = v16;
    }

    v13 = v8 == 1;
    v14 = @"MERGE_DUPLICATES_ACTION_CONFIRMATION_MESSAGE_IDENTICAL_MULTIPLE_BOTH_LIBRARIES";
    v15 = @"MERGE_DUPLICATES_ACTION_CONFIRMATION_MESSAGE_IDENTICAL_SINGLE_BOTH_LIBRARIES";
  }

  if (v13)
  {
    v11 = v12;
    v14 = v15;
  }

  if (!a4)
  {
    v14 = v11;
  }

  if (a3)
  {
    v17 = v14;
  }

  else
  {
    v17 = v9;
  }

  v18 = PXLocalizedStringFromTable(v17, @"PhotosUICore");

  return v18;
}

id PXDeduplicationLocalizedMergeConfirmationMessage(void *a1, int a2, int a3)
{
  v5 = a1;
  v6 = [v5 firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 firstObject];

    if (!v7)
    {
      v13 = 0;
      goto LABEL_13;
    }

    v8 = [v7 photoLibrary];
    v9 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:v8];

    if ([v9 hasSharedLibraryOrPreview])
    {
      v10 = [v5 allObjectsEnumerator];
      v11 = _PXSharedLibraryFetchAssetsFromAssets(v10, 0, 1, 0);
      if ([v11 count])
      {
        v12 = [v11 count];
        v13 = v12 != [v10 count];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
    v7 = v6;
  }

LABEL_13:
  v14 = PXDeduplicationLocalizedMergeConfirmationMessageWithSharedLibraryWarning(v5, a2, a3, v13);

  return v14;
}

id PXDeduplicationLocalizedMergeActionTitleForSelection(void *a1, int a2)
{
  v3 = PXDeduplicationAssetsThatCanBeMergedInSelection(a1);
  v4 = [v3 selectedIndexPaths];
  v5 = [v4 count];

  if (v5 > 1)
  {
    if (a2)
    {
      v6 = @"MERGE_%ld_DUPLICATES_ACTION_FORMAT_SHORT";
    }

    else
    {
      v6 = @"MERGE_%ld_DUPLICATES_ACTION_FORMAT";
    }

    PXLocalizedStringFromTable(v6, @"PhotosUICore");
    objc_claimAutoreleasedReturnValue();
    PXLocalizedStringWithValidatedFormat();
  }

  v7 = PXLocalizedStringFromTable(@"MERGE_DUPLICATES_SELECT_ACTION", @"PhotosUICore");

  return v7;
}

uint64_t PXDeduplicationEntireDuplicatesGroupsAreSelected(void *a1)
{
  v1 = a1;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  v2 = [v1 selectedIndexPaths];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __PXDeduplicationEntireDuplicatesGroupsAreSelected_block_invoke;
  v6[3] = &unk_1E772EE40;
  v3 = v1;
  v7 = v3;
  v8 = &v9;
  [v2 enumerateItemIndexSetsUsingBlock:v6];

  v4 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v4;
}

void sub_1A4B13D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __PXDeduplicationEntireDuplicatesGroupsAreSelected_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _BYTE *a5)
{
  v8 = *(a1 + 32);
  v9 = a4;
  v10 = [v8 dataSource];
  v11 = [v10 numberOfItemsInSection:a3];

  v12 = [v9 count];
  if (v11 != v12)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a5 = 1;
  }
}

BOOL PXDeduplicationCanEnableMergeActionForSelection(void *a1)
{
  v1 = PXDeduplicationAssetsThatCanBeMergedInSelection(a1);
  v2 = [v1 selectedIndexPaths];
  v3 = [v2 count] > 1;

  return v3;
}

id PXDeduplicationPhotosViewConfiguration(void *a1, void *a2, int a3)
{
  v38[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v36 = a2;
  v6 = v5;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"PXPhotosViewConfiguration * _Nonnull PXDeduplicationPhotosViewConfiguration(PHAssetCollection *__strong _Nonnull, PXSelectionCoordinator *__strong _Nullable, BOOL)"}];
    v30 = objc_opt_class();
    v25 = NSStringFromClass(v30);
    v31 = [v6 px_descriptionForAssertionMessage];
    [v22 handleFailureInFunction:v23 file:@"PXDeduplicationUtilities.m" lineNumber:185 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"containerCollection", v25, v31}];
  }

  else
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"PXPhotosViewConfiguration * _Nonnull PXDeduplicationPhotosViewConfiguration(PHAssetCollection *__strong _Nonnull, PXSelectionCoordinator *__strong _Nullable, BOOL)"}];
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    [v22 handleFailureInFunction:v23 file:@"PXDeduplicationUtilities.m" lineNumber:185 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"containerCollection", v25}];
  }

LABEL_3:
  v35 = [v6 photoLibrary];
  v7 = [v35 librarySpecificFetchOptions];
  [v7 setIncludeDuplicatesAlbums:1];
  v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:a3 ^ 1u];
  v38[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
  [v7 setSortDescriptors:v9];

  v10 = +[PXDuplicatesSettings sharedInstance];
  LOBYTE(v9) = [v10 showDuplicateGroupsWithASingleAsset];

  if ((v9 & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K > 1", @"cachedCount"];
    [v7 setInternalPredicate:v11];
  }

  v12 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:1 subtype:1000000601 options:v7];
  v13 = *MEMORY[0x1E6978D08];
  v37[0] = *MEMORY[0x1E6978CA8];
  v37[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
  v15 = _PXPhotosViewConfigurationForAssetCollectionFetchResultIgnoreSharedLibrary(v12, v6, 0, v14, 0, v36, 0, 0, 0, a3, 3, 0);
  [v15 setAllowedActions:{objc_msgSend(v15, "allowedActions") | 0x804031}];
  [v15 setAllowedActions:{objc_msgSend(v15, "allowedActions") & 0xFFFFFFFFFFFFFFFBLL}];
  [v15 setAllowedBehaviors:{objc_msgSend(v15, "allowedBehaviors") | 0x20}];
  [v15 setOneUpPresentationOrigin:44];
  [v15 setWantsContentFilterVisible:1];
  [v15 setWantsFileSizeBadge:1];
  [v15 setWantsFooterVisibleImmediately:1];
  [v15 setFooterVisibilityStyle:2];
  [v15 setOneUpAssetsViewMode:1];
  v16 = [v35 isInitialDuplicateDetectorProcessingCompleted];
  v17 = PXLocalizedStringFromTable(@"MERGE_DUPLICATES_FOOTER_DESCRIPTION", @"PhotosUICore");
  if ((v16 & 1) == 0)
  {
    v18 = PXLocalizationKeyByAddingDeviceModelSuffix(@"MERGE_DUPLICATES_FOOTER_PROCESSING_");
    PXLocalizedStringFromTable(@"MERGE_DUPLICATES_FOOTER_DESCRIPTION_NEWPARAGRAPH_FORMAT", @"PhotosUICore");
    objc_claimAutoreleasedReturnValue();
    PXLocalizedStringFromTable(v18, @"PhotosUICore");
    objc_claimAutoreleasedReturnValue();
    PXStringWithValidatedFormat();
  }

  [v15 setFooterSubtitle:v17];

  v19 = [v15 assetActionManager];
  if (v19)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_9;
    }

    v34 = v14;
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"PXPhotosViewConfiguration * _Nonnull PXDeduplicationPhotosViewConfiguration(PHAssetCollection *__strong _Nonnull, PXSelectionCoordinator *__strong _Nullable, BOOL)"}];
    v32 = objc_opt_class();
    v29 = NSStringFromClass(v32);
    v33 = [v19 px_descriptionForAssertionMessage];
    [v26 handleFailureInFunction:v27 file:@"PXDeduplicationUtilities.m" lineNumber:220 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"config.assetActionManager", v29, v33}];
  }

  else
  {
    v34 = v14;
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"PXPhotosViewConfiguration * _Nonnull PXDeduplicationPhotosViewConfiguration(PHAssetCollection *__strong _Nonnull, PXSelectionCoordinator *__strong _Nullable, BOOL)"}];
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    [v26 handleFailureInFunction:v27 file:@"PXDeduplicationUtilities.m" lineNumber:220 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"config.assetActionManager", v29}];
  }

  v14 = v34;
LABEL_9:
  v20 = objc_alloc_init(PXDuplicatesRadarConfigurationProvider);
  [v19 setRadarConfigurationProvider:v20];

  return v15;
}

void PXDeduplicationSendMergeAnalytics(uint64_t a1, uint64_t a2)
{
  v5 = [MEMORY[0x1E6991F28] bucketNameForInteger:a1 bucketLimits:{1, 2, 5, 10, 0}];
  if (a1 >= 11 && a1 == a2)
  {
    v4 = @"com.apple.photos.CPAnalytics.deduplicationMergeAll";
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.photos.CPAnalytics.deduplicationMerge%@", v5];
  }

  [MEMORY[0x1E6991F28] sendEvent:v4 withPayload:MEMORY[0x1E695E0F8]];
}

uint64_t PXDeduplicationSendEventAnalytics(unint64_t a1)
{
  if (a1 > 3)
  {
    v1 = 0;
  }

  else
  {
    v1 = off_1E772EE88[a1];
  }

  return [MEMORY[0x1E6991F28] sendEvent:v1 withPayload:MEMORY[0x1E695E0F8]];
}

uint64_t PXDeduplicationSendMergeUISourceAnalytics(unint64_t a1)
{
  if (a1 > 4)
  {
    v1 = 0;
  }

  else
  {
    v1 = off_1E772EEA8[a1];
  }

  return [MEMORY[0x1E6991F28] sendEvent:v1 withPayload:MEMORY[0x1E695E0F8]];
}

id PXDeduplicationLocalizedGroupTitle(void *a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [v3 startDate];
  v5 = [v3 endDate];
  v6 = _FormatedDateString(v4);
  if (v6)
  {
    if (!v5 || ([v4 isEqualToDate:v5] & 1) != 0 || (objc_msgSend(MEMORY[0x1E695DEE8], "currentCalendar"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isDate:inSameDayAsDate:", v4, v5), v7, v8))
    {
      v9 = v6;
    }

    else
    {
      v11 = [v3 endDate];
      v12 = _FormatedDateString(v11);

      if (v12)
      {
        if (a2 < 3)
        {
          PXLocalizedStringFromTable(@"PXDuplicateGroupTitleFormat_Dates_%@_And_%@", @"PhotosUICore");
        }

        else
        {
          PXLocalizedStringFromTable(@"PXDuplicateGroupTitleFormat_Date_%@_And_More", @"PhotosUICore");
        }

        objc_claimAutoreleasedReturnValue();
        PXStringWithValidatedFormat();
      }

      v9 = v6;
    }
  }

  else
  {
    v10 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v15 = v3;
      v16 = 2048;
      v17 = a2;
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_ERROR, "PXDeduplicationLocalizedGroupTitle: Duplicates group %@ with count %td lacks a start date", buf, 0x16u);
    }

    v9 = 0;
  }

  return v9;
}

id _FormatedDateString(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_FormatedDateString_onceToken != -1)
    {
      dispatch_once(&_FormatedDateString_onceToken, &__block_literal_global_18096);
    }

    v2 = [_FormatedDateString_dateFormatter stringFromDate:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id PXDuplicateGroupingAssetIdentifiersFromSelection(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [v1 dataSource];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSArray<NSArray<NSString *> *> * _Nonnull PXDuplicateGroupingAssetIdentifiersFromSelection(PXSelectionSnapshot *__strong _Nonnull)"];
    v13 = objc_opt_class();
    v12 = NSStringFromClass(v13);
    v14 = [v3 px_descriptionForAssertionMessage];
    [v9 handleFailureInFunction:v10 file:@"PXDeduplicationUtilities.m" lineNumber:329 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"selectionSnapshot.dataSource", v12, v14}];
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSArray<NSArray<NSString *> *> * _Nonnull PXDuplicateGroupingAssetIdentifiersFromSelection(PXSelectionSnapshot *__strong _Nonnull)"];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [v9 handleFailureInFunction:v10 file:@"PXDeduplicationUtilities.m" lineNumber:329 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"selectionSnapshot.dataSource", v12}];
  }

LABEL_3:
  v4 = [v1 selectedIndexPaths];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __PXDuplicateGroupingAssetIdentifiersFromSelection_block_invoke;
  v15[3] = &unk_1E773DC70;
  v16 = v3;
  v17 = v2;
  v5 = v2;
  v6 = v3;
  [v4 enumerateItemIndexSetsUsingBlock:v15];

  v7 = [v5 copy];

  return v7;
}

void __PXDuplicateGroupingAssetIdentifiersFromSelection_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = MEMORY[0x1E695DF70];
  v8 = a4;
  v9 = objc_alloc_init(v7);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __PXDuplicateGroupingAssetIdentifiersFromSelection_block_invoke_2;
  v14 = &unk_1E772EE68;
  v17 = a2;
  v18 = a3;
  v15 = *(a1 + 32);
  v10 = v9;
  v16 = v10;
  [v8 enumerateIndexesUsingBlock:&v11];

  if ([v10 count] >= 2)
  {
    [*(a1 + 40) addObject:v10];
  }
}

void __PXDuplicateGroupingAssetIdentifiersFromSelection_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v7 = *(a1 + 48);
  v8 = a2;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  v4 = [v3 objectAtIndexPath:&v7];
  v5 = *(a1 + 40);
  v6 = [v4 localIdentifier];
  [v5 addObject:v6];
}

void sub_1A4B16D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a16, 8);
  _Block_object_dispose(&a28, 8);
  _Unwind_Resume(a1);
}

void sub_1A4B17288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PXAddEdgeOverlaySubviewsToWorkAround53118165(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  v10 = +[PXWorkaroundSettings sharedInstance];
  v11 = [v10 shouldWorkAround53118165];

  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __PXAddEdgeOverlaySubviewsToWorkAround53118165_block_invoke;
    v20 = &unk_1E772F040;
    v23 = a2;
    v24 = a3;
    v25 = a4;
    v26 = a5;
    v21 = v9;
    v22 = v12;
    v13 = v12;
    v14 = _Block_copy(&v17);
    v14[2](v14, 1);
    v14[2](v14, 3);
    v15 = [v13 copy];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __PXAddEdgeOverlaySubviewsToWorkAround53118165_block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(PXGradientView);
  v1 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v2 = [v1 colorWithAlphaComponent:0.0];
  v4[0] = v2;
  v4[1] = v1;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];
  [(PXGradientView *)v0 setColors:v3];

  PXRectEdgeValue();
}

__CFString *PXDisplayAssetCollectionCurationKindDescription(unint64_t a1)
{
  if (a1 >= 6)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull PXDisplayAssetCollectionCurationKindDescription(PXDisplayAssetCollectionCurationKind)"];
    [v6 handleFailureInFunction:v7 file:@"PXDisplayAssetCollectionCurationKind.m" lineNumber:39 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return off_1E772F060[a1];
}

void sub_1A4B18D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__18739(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getMFMailComposeViewControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMFMailComposeViewControllerClass_softClass;
  v7 = getMFMailComposeViewControllerClass_softClass;
  if (!getMFMailComposeViewControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMFMailComposeViewControllerClass_block_invoke;
    v3[3] = &unk_1E774BD00;
    v3[4] = &v4;
    __getMFMailComposeViewControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A4B1A284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMFMailComposeViewControllerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!MessageUILibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __MessageUILibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E772F0B8;
    v8 = 0;
    MessageUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!MessageUILibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MessageUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PXSettingsGraphExportViewController.m" lineNumber:19 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("MFMailComposeViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMFMailComposeViewControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PXSettingsGraphExportViewController.m" lineNumber:20 description:{@"Unable to find class %s", "MFMailComposeViewController"}];

LABEL_10:
    __break(1u);
  }

  getMFMailComposeViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MessageUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MessageUILibraryCore_frameworkLibrary = result;
  return result;
}

id _PXItemProviderTemporaryURL(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696AFB0];
  v4 = a2;
  v5 = a1;
  v6 = [v3 UUID];
  v7 = [v6 UUIDString];

  v8 = [v5 pathExtension];

  v9 = [v7 stringByAppendingPathExtension:v8];

  v10 = MEMORY[0x1E695DFF8];
  v11 = [v4 temporaryDragAndDropDirectoryCreateIfNeeded:1 error:0];

  v12 = [v10 fileURLWithPath:v11 isDirectory:1];

  v13 = [v12 URLByAppendingPathComponent:v9];

  return v13;
}

uint64_t __Block_byref_object_copy__19703(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id PXItemProviderFromAsset(void *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  v23 = 0;
  v3 = [MEMORY[0x1E69786A8] exportRequestForAsset:v1 error:&v23];
  v4 = v23;
  v5 = [v3 variants];
  v6 = v5;
  if (v3 && [v5 count])
  {
    v7 = [v1 playbackStyle];
    if (v7 == 3)
    {
      v8 = PFCurrentPlatformLivePhotoBundleType();
      v9 = [v8 identifier];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __PXItemProviderFromAsset_block_invoke;
      v19[3] = &unk_1E772F2B8;
      v20 = v6;
      v21 = v3;
      v22 = v1;
      [v2 registerFileRepresentationForTypeIdentifier:v9 fileOptions:0 visibility:1 loadHandler:v19];
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __PXItemProviderFromAsset_block_invoke_256;
    v14[3] = &unk_1E772F308;
    v15 = v6;
    v16 = v1;
    v18 = v7;
    v17 = v3;
    v10 = _Block_copy(v14);
    v10[2](v10, v2, &unk_1F1909DA8);
    v10[2](v10, v2, &unk_1F1909DC0);
    v10[2](v10, v2, &unk_1F1909DD8);
    v11 = v2;

    v12 = v15;
  }

  else
  {
    v12 = PLUIGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v25 = v1;
      v26 = 2112;
      v27 = v4;
      _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_ERROR, "No export request for asset %@ with error %@.", buf, 0x16u);
    }

    v11 = 0;
  }

  return v11;
}

id __PXItemProviderFromAsset_block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E69786B0]);
  [v4 setTreatLivePhotoAsStill:0];
  v5 = [a1[4] objectForKeyedSubscript:&unk_1F1909DA8];
  if (v5)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  [v4 setVariant:v6];

  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __PXItemProviderFromAsset_block_invoke_250;
  v14 = &unk_1E772F290;
  v7 = a1[5];
  v15 = a1[6];
  v16 = v3;
  v8 = v3;
  [v7 exportWithOptions:v4 completionHandler:&v11];
  v9 = [a1[5] progress];

  return v9;
}

void __PXItemProviderFromAsset_block_invoke_256(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v6];
  if (v7)
  {
    v8 = [v5 registeredTypeIdentifiers];
    v9 = [v8 containsObject:v7];

    if ((v9 & 1) == 0)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __PXItemProviderFromAsset_block_invoke_2_257;
      v13[3] = &unk_1E772F2E0;
      v14 = *(a1 + 40);
      v10 = v6;
      v12 = *(a1 + 48);
      v11 = *(a1 + 56);
      v15 = v10;
      v17 = v11;
      v16 = v12;
      [v5 registerFileRepresentationForTypeIdentifier:v7 fileOptions:0 visibility:0 loadHandler:v13];
    }
  }
}

id __PXItemProviderFromAsset_block_invoke_2_257(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69786A8] exportRequestForAsset:*(a1 + 32) error:0];
  v5 = objc_alloc_init(MEMORY[0x1E69786B0]);
  [v5 setTreatLivePhotoAsStill:1];
  [v5 setFlattenSlomoVideos:1];
  [v5 setVariant:{objc_msgSend(*(a1 + 40), "PHAssetExportRequestVariantValue")}];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __PXItemProviderFromAsset_block_invoke_3;
  v13 = &unk_1E774A968;
  v6 = *(a1 + 56);
  v14 = v3;
  v15 = v6;
  v7 = v3;
  [v4 exportWithOptions:v5 completionHandler:&v10];
  v8 = [*(a1 + 48) progress];

  return v8;
}

void __PXItemProviderFromAsset_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if ((v7 - 1) < 3)
  {
    v8 = MEMORY[0x1E6978B98];
LABEL_5:
    v9 = [v5 objectForKeyedSubscript:*v8];
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if ((v7 - 4) < 2)
  {
    v8 = MEMORY[0x1E6978BA0];
    goto LABEL_5;
  }

  if (!v7)
  {
    v10 = PLUIGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_ERROR, "Trying to drag unsupported playback style", &v12, 2u);
    }
  }

  v9 = 0;
  if (v6)
  {
LABEL_12:
    v11 = PLUIGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_ERROR, "Export request failed with error %@", &v12, 0xCu);
    }
  }

LABEL_15:
  (*(*(a1 + 32) + 16))();
}

void __PXItemProviderFromAsset_block_invoke_250(uint64_t a1, void *a2, void *a3)
{
  v46[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *MEMORY[0x1E6978B98];
  v7 = a2;
  v8 = [v7 objectForKeyedSubscript:v6];
  v9 = [v7 objectForKeyedSubscript:*MEMORY[0x1E6978BA0]];

  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = *(a1 + 32);
    v12 = v8;
    v13 = [v11 photoLibrary];
    v14 = [v13 pathManager];

    v8 = _PXItemProviderTemporaryURL(v12, v14);

    v15 = v14;
    v16 = _PXItemProviderTemporaryURL(v9, v14);
    v17 = [MEMORY[0x1E696AC08] defaultManager];
    v43 = v5;
    v36 = v12;
    v18 = [v17 copyItemAtURL:v12 toURL:v8 error:&v43];
    v19 = v43;

    if (v18)
    {
      v20 = [MEMORY[0x1E696AC08] defaultManager];
      v42 = v19;
      v21 = [v20 copyItemAtURL:v9 toURL:v16 error:&v42];
      v5 = v42;

      if (v21)
      {
        v22 = [MEMORY[0x1E696AFB0] UUID];
        v23 = [v22 UUIDString];
        v34 = [v23 stringByAppendingPathExtension:*MEMORY[0x1E69C09D0]];

        v24 = MEMORY[0x1E695DFF8];
        v25 = v15;
        v26 = [v15 temporaryDragAndDropDirectoryCreateIfNeeded:1 error:0];
        v35 = [v24 fileURLWithPath:v26 isDirectory:1];

        v27 = [v35 URLByAppendingPathComponent:v34];
        v28 = objc_alloc(MEMORY[0x1E69788D0]);
        v46[0] = v8;
        v46[1] = v16;
        v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
        v30 = [v28 initWithResourceFileURLs:v29];

        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __PXItemProviderFromAsset_block_invoke_2;
        v37[3] = &unk_1E772F268;
        v41 = *(a1 + 40);
        v38 = v8;
        v39 = v16;
        v40 = v27;
        v31 = v27;
        v32 = [v30 writeToFileURL:v31 options:0 completionHandler:v37];

LABEL_14:
        goto LABEL_15;
      }
    }

    else
    {
      v5 = v19;
    }

    v25 = v15;
    v33 = PLUIGetLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v45 = v5;
      _os_log_impl(&dword_1A3C1C000, v33, OS_LOG_TYPE_ERROR, "Resource cloning failed with error: %@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
    goto LABEL_14;
  }

  (*(*(a1 + 40) + 16))();
  v16 = v9;
LABEL_15:
}

void __PXItemProviderFromAsset_block_invoke_2(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E6978EA0]];
  if (v4)
  {
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v4;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_ERROR, "Live Photo export session failed with error: %@", buf, 0xCu);
    }
  }

  v6 = a1[7];
  v7 = [v3 objectForKeyedSubscript:*MEMORY[0x1E6978E98]];
  (*(v6 + 16))(v6, v7, 0, v4);

  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v9 = a1[4];
  v20 = 0;
  [v8 removeItemAtURL:v9 error:&v20];
  v10 = v20;

  v11 = [MEMORY[0x1E696AC08] defaultManager];
  v12 = a1[5];
  v19 = v10;
  [v11 removeItemAtURL:v12 error:&v19];
  v13 = v19;

  v14 = [MEMORY[0x1E696AC08] defaultManager];
  v15 = a1[6];
  v18 = v13;
  [v14 removeItemAtURL:v15 error:&v18];
  v16 = v18;

  if (v16)
  {
    v17 = PLUIGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v16;
      _os_log_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_ERROR, "Error cleaning up resources: %@", buf, 0xCu);
    }
  }
}

id _DateForAsset(void *a1, char a2)
{
  if (a2)
  {
    [a1 localCreationDate];
  }

  else
  {
    [a1 creationDate];
  }
  v2 = ;

  return v2;
}

void sub_1A4B22D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__19956(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__20249(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A4B28890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PXContentSyndicationCountsControllerGetLog()
{
  if (PXContentSyndicationCountsControllerGetLog_predicate != -1)
  {
    dispatch_once(&PXContentSyndicationCountsControllerGetLog_predicate, &__block_literal_global_20469);
  }

  v1 = PXContentSyndicationCountsControllerGetLog_log;

  return v1;
}

void __PXContentSyndicationCountsControllerGetLog_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69BDDA0], "ContentSyndicationCountsController");
  v1 = PXContentSyndicationCountsControllerGetLog_log;
  PXContentSyndicationCountsControllerGetLog_log = v0;
}

void sub_1A4B2B688(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1A4B2C358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4B2D5D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__21025(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A4B2D9C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4B30788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4B30A7C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1A4B30CF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL PXDisplayCollectionIsMomentShare(void *a1, BOOL *a2)
{
  v3 = a1;
  if (!v3)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL PXDisplayCollectionIsMomentShare(__strong id<PXDisplayCollection> _Nonnull, BOOL * _Nonnull)"}];
    [v9 handleFailureInFunction:v10 file:@"PXPHDisplayCollectionUtilities.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"collection"}];
  }

  v4 = v3;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = v4;

    v6 = v5 != 0;
    if (a2 && v5)
    {
      v5 = v5;
      v7 = [v5 status] == 3;

      *a2 = v7;
      v6 = 1;
    }
  }

  else
  {

    v6 = 0;
    v5 = 0;
  }

  return v6;
}

uint64_t PXDisplayCollectionSupportsSavingMomentShareAssetsToLibrary(void *a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v9 = v8;
  if (!v7)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL PXDisplayCollectionSupportsSavingMomentShareAssetsToLibrary(__strong id<PXDisplayCollection> _Nonnull, __strong id<PXFastEnumeration> _Nonnull, NSUInteger * _Nullable, PXDisplayAssetMediaType * _Nullable)"}];
    [v14 handleFailureInFunction:v15 file:@"PXPHDisplayCollectionUtilities.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"collection"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_11:
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL PXDisplayCollectionSupportsSavingMomentShareAssetsToLibrary(__strong id<PXDisplayCollection> _Nonnull, __strong id<PXFastEnumeration> _Nonnull, NSUInteger * _Nullable, PXDisplayAssetMediaType * _Nullable)"}];
    [v16 handleFailureInFunction:v17 file:@"PXPHDisplayCollectionUtilities.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"assets"}];

    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_3:
  v10 = v7;
  if (!objc_opt_class() || (objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_8;
  }

  v11 = v10;

  if (!v7)
  {
LABEL_8:
    v11 = 0;
    v12 = 0;
    goto LABEL_9;
  }

  v12 = PXMomentShareSupportsSavingAssetsToLibrary(v11, v9, a3, a4);
LABEL_9:

  return v12;
}

id PXDisplayCollectionGetLocalizedSubtitleWithoutDelimiters(void *a1)
{
  v1 = [a1 localizedSubtitle];
  v2 = [v1 stringByReplacingOccurrencesOfString:*MEMORY[0x1E69BE980] withString:&stru_1F1741150];

  return v2;
}

void sub_1A4B331EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location, id a22)
{
  objc_destroyWeak((v22 + 56));
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a22);
  _Unwind_Resume(a1);
}

void sub_1A4B395F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCKFullScreenEffectManagerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!ChatKitLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __ChatKitLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E772F8C8;
    v8 = 0;
    ChatKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ChatKitLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ChatKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PXSurveyQuestionsCongratulationsGadgetContentView.m" lineNumber:33 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("CKFullScreenEffectManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCKFullScreenEffectManagerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PXSurveyQuestionsCongratulationsGadgetContentView.m" lineNumber:34 description:{@"Unable to find class %s", "CKFullScreenEffectManager"}];

LABEL_10:
    __break(1u);
  }

  getCKFullScreenEffectManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ChatKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ChatKitLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t PXIsOLEDDevice()
{
  if (PXIsOLEDDevice_onceToken != -1)
  {
    dispatch_once(&PXIsOLEDDevice_onceToken, &__block_literal_global_23095);
  }

  return PXIsOLEDDevice_isOLEDDevice;
}

void sub_1A4B3BC14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _SynchronousThumbnailImagesForAssets(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E69BF248] defaultFormatChooser];
  v15 = [v2 masterThumbnailFormat];

  [v15 sizeWithFallBackSize:{256.0, 256.0}];
  v4 = v3;
  v6 = v5;
  v7 = objc_alloc_init(MEMORY[0x1E6978868]);
  [v7 setSynchronous:1];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__23582;
  v26 = __Block_byref_object_dispose__23583;
  v27 = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v1;
  v8 = [obj countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v8)
  {
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [MEMORY[0x1E6978860] defaultManager];
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = ___SynchronousThumbnailImagesForAssets_block_invoke;
        v17[3] = &unk_1E77496A8;
        v17[4] = &v22;
        [v12 requestImageForAsset:v11 targetSize:1 contentMode:v7 options:v17 resultHandler:{v4, v6}];
      }

      v8 = [obj countByEnumeratingWithState:&v18 objects:v28 count:16];
    }

    while (v8);
  }

  v13 = [v23[5] copy];
  _Block_object_dispose(&v22, 8);

  return v13;
}

void sub_1A4B3ECFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__23582(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id PKPlacesKitGetLog()
{
  if (PKPlacesKitGetLog_predicate != -1)
  {
    dispatch_once(&PKPlacesKitGetLog_predicate, &__block_literal_global_24140);
  }

  v1 = PKPlacesKitGetLog_log;

  return v1;
}

void __PKPlacesKitGetLog_block_invoke()
{
  v0 = os_log_create("com.apple.PlacesKit", "PlacesKit");
  v1 = PKPlacesKitGetLog_log;
  PKPlacesKitGetLog_log = v0;
}

void sub_1A4B40FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAIDAServiceTypeCloudSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleIDSSOAuthenticationLibrary();
  result = dlsym(v2, "AIDAServiceTypeCloud");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAIDAServiceTypeCloudSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *AppleIDSSOAuthenticationLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AppleIDSSOAuthenticationLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AppleIDSSOAuthenticationLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E772F990;
    v6 = 0;
    AppleIDSSOAuthenticationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AppleIDSSOAuthenticationLibraryCore_frameworkLibrary;
  if (!AppleIDSSOAuthenticationLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AppleIDSSOAuthenticationLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"PXSharedLibraryLegacyDevicesRemoteController+iOS.m" lineNumber:24 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __AppleIDSSOAuthenticationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AppleIDSSOAuthenticationLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1A4B41498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4B417D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getAAUIGrandSlamRemoteUIPresenterClass_block_invoke(uint64_t a1)
{
  AppleIDSSOAuthenticationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AAUIGrandSlamRemoteUIPresenter");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAAUIGrandSlamRemoteUIPresenterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAAUIGrandSlamRemoteUIPresenterClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PXSharedLibraryLegacyDevicesRemoteController+iOS.m" lineNumber:26 description:{@"Unable to find class %s", "AAUIGrandSlamRemoteUIPresenter"}];

    __break(1u);
  }
}

void sub_1A4B419FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getAIDAAccountManagerClass_block_invoke(uint64_t a1)
{
  AppleIDSSOAuthenticationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AIDAAccountManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAIDAAccountManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAIDAAccountManagerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PXSharedLibraryLegacyDevicesRemoteController+iOS.m" lineNumber:25 description:{@"Unable to find class %s", "AIDAAccountManager"}];

    __break(1u);
  }
}

__CFString *PXStoryAnimationCurveDescription(unint64_t a1)
{
  if (a1 > 6)
  {
    return @"??";
  }

  else
  {
    return off_1E772F9D8[a1];
  }
}

double PXStoryAnimationCurveGetProgress(uint64_t a1, uint64_t a2, CMTime *a3, CMTime *a4)
{
  v10 = *a4;
  Seconds = CMTimeGetSeconds(&v10);
  v8 = 0.0;
  if (Seconds > 0.0)
  {
    v10 = *a3;
    v8 = CMTimeGetSeconds(&v10) / Seconds;
  }

  if (a1 > 3)
  {
    switch(a1)
    {
      case 4:
        return tanh(v8);
      case 5:
        if (v8 <= 1.0)
        {
          return v8 * *&a2;
        }

        else
        {
          return *&a2 + tanh((v8 + -1.0) * *&a2 / (1.0 - *&a2)) * (1.0 - *&a2);
        }

      case 6:
        return v8 * (2.0 - v8);
    }
  }

  else
  {
    if (!a1)
    {
      PXAssertGetLog();
    }

    if (a1 == 2)
    {
      return fmin(v8, 1.0);
    }

    else if (a1 == 3 && v8 > 1.0)
    {
      do
      {
        v8 = v8 + -1.0;
      }

      while (v8 > 1.0);
    }
  }

  return v8;
}

id PXMessageForMomentShareURL(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (PFIsiOSPhotosApp() & 1) != 0 || (PFIsVisionPhotosApp())
  {
    v2 = PXFetchAssetCollectionForCMMShareURL(v1, 0, 0);
    v3 = [v2 firstObject];

    if (v3 && [v3 assetCollectionType]== 7)
    {
      if (![v3 containsEPPAssets])
      {
        v18 = 0;
        v19 = &v18;
        v20 = 0x2050000000;
        v8 = getMSMessageTemplateLayoutClass_softClass;
        v21 = getMSMessageTemplateLayoutClass_softClass;
        if (!getMSMessageTemplateLayoutClass_softClass)
        {
          *&buf = MEMORY[0x1E69E9820];
          *(&buf + 1) = 3221225472;
          v23 = __getMSMessageTemplateLayoutClass_block_invoke;
          v24 = &unk_1E774BD00;
          v25 = &v18;
          __getMSMessageTemplateLayoutClass_block_invoke(&buf);
          v8 = v19[3];
        }

        v9 = v8;
        _Block_object_dispose(&v18, 8);
        v10 = objc_alloc_init(v9);
        v16 = 0;
        v17 = 0;
        PXCMMTitleAndSubtitleForAssetCollection(v3, &v17, &v16);
        v11 = v17;
        v12 = v16;
        v13 = [v3 assetCount];
        v14 = [v3 preview];
        v15 = [v14 previewImageData];
        [v15 firstObject];
        objc_claimAutoreleasedReturnValue();

        [v10 setCaption:v11];
        PXLocalizedAssetCountForUsage(v13, [v3 aggregateMediaType], 0, 0);
      }

      v4 = PLSharingGetLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = [v1 pl_redactedShareURL];
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v5;
        _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_ERROR, "Unable to support live bubble presentation with a moment share that contains EPP assets for URL: %{public}@", &buf, 0xCu);
      }
    }

    else
    {
      v4 = PLSharingGetLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v6 = [v1 pl_redactedShareURL];
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v6;
        _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_ERROR, "Unable to find local moment share for URL: %{public}@", &buf, 0xCu);
      }
    }
  }

  else
  {
    v3 = PLSharingGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_ERROR, "Live bubbles not supported: Cannot create an MSMessage", &buf, 2u);
    }
  }

  return 0;
}

void sub_1A4B42A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PXCMMSupportsLiveBubbles()
{
  if (PFIsiOSPhotosApp())
  {
    return 1;
  }

  return PFIsVisionPhotosApp();
}

void sub_1A4B44DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 112), 8);
  _Unwind_Resume(a1);
}

void *PXPhotosBarsItemIdentifierProviderForModel(void *a1)
{
  v1 = a1;
  v2 = [v1 appViewModel];
  v3 = [v2 barItemProviderClass];

  if (!v3)
  {
    v4 = [v1 currentDataSource];
    v5 = [v4 containerCollection];

    if (([v5 px_isRecentlyDeletedSmartAlbum] & 1) == 0)
    {
      [v5 px_isRecoveredSmartAlbum];
    }

    v3 = objc_opt_class();
  }

  v6 = v3;

  return v3;
}

void sub_1A4B4D2FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v27 + 48));
  objc_destroyWeak((v26 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose((v28 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1A4B50DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4B524DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4B52C14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t PXStoryTransitionGetLayoutOrder(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 0;
  v7 = *a1;
  if (v7 <= 5)
  {
    if (v7 - 1 >= 5)
    {
      return result;
    }

    goto LABEL_3;
  }

  if (*a1 > 7u)
  {
    if (v7 == 8)
    {
      v13 = +[PXStoryTransitionsSettings sharedInstance];
      v14 = [v13 useSplitWipeTransitionsFromOneUp];

      if (a4 == 2)
      {
        if (((*(a2 + 32) == 1) & v14) != 0)
        {
          return 2;
        }

        else
        {
          return 1;
        }
      }

      else if (a4 == 1)
      {
        if (((*(a2 + 32) == 1) & v14) != 0)
        {
          return 1;
        }

        else
        {
          return 2;
        }
      }

      else
      {
        return 0;
      }
    }

    if (v7 != 9)
    {
      return result;
    }

    v8 = a1[29] == 1;
    v9 = 1;
    if (v8)
    {
      v9 = 2;
    }

    v10 = 1;
    if (!v8)
    {
      v10 = 2;
    }
  }

  else
  {
    if (v7 != 6)
    {
      if (v7 != 7)
      {
        return result;
      }

LABEL_3:
      if (a4 == 2)
      {
        return 1;
      }

      else
      {
        return 2 * (a4 == 1);
      }
    }

    v11 = a1[29] == 1;
    v9 = 1;
    if (!v11)
    {
      v9 = 2;
    }

    v10 = 1;
    if (v11)
    {
      v10 = 2;
    }
  }

  if (a4 != 1)
  {
    v10 = 0;
  }

  if (a4 == 2)
  {
    return v9;
  }

  else
  {
    return v10;
  }
}

void sub_1A4B5EBDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void PXCMMStringForExpiryDate(void *a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!v3)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString * _Nonnull PXCMMStringForExpiryDate(NSDate *__strong _Nonnull, PXCMMExpirationMessageVariant)"}];
    [v7 handleFailureInFunction:v8 file:@"PXCMMUtilities.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"expiryDate"}];
  }

  v4 = [MEMORY[0x1E695DF00] date];
  if ([v4 compare:v3] == 1)
  {
    v5 = PLSharingGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v10 = v3;
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_ERROR, "Moment Share expiry date (%@) is before current date (%@)", buf, 0x16u);
    }
  }

  if (a2)
  {
    v6 = @"PXCMMExpirationMessageVariantExpirationDateOnly";
  }

  else
  {
    v6 = @"PXCMMExpirationMessageVariantFull";
  }

  PXLocalizedStringFromTable(v6, @"PhotosUICore");
  objc_claimAutoreleasedReturnValue();
  [MEMORY[0x1E69BE3B0] stringFromStartDate:v3 endDate:v3 type:4];
  objc_claimAutoreleasedReturnValue();
  PXStringWithValidatedFormat();
}

void PXCMMTitleAndSubtitleForAssetCollection(void *a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (!v5)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PXCMMTitleAndSubtitleForAssetCollection(__strong id<PXDisplayAssetCollection> _Nonnull, NSString * _Nonnull __autoreleasing * _Nonnull, NSString * _Nonnull __autoreleasing * _Nonnull)"}];
    [v13 handleFailureInFunction:v14 file:@"PXCMMUtilities.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"assetCollection"}];
  }

  if ([v5 px_isSuggestion] && objc_msgSend(v5, "subtype") == 102)
  {
    *a2 = [v5 localizedTitle];
    *a3 = [v5 localizedSubtitle];
  }

  else
  {
    v6 = [v5 startDate];
    if (v6)
    {
      v7 = [v5 localizedTitle];
      v8 = [v5 endDate];
      PLCMMTitleAndSubtitleForTitleAndFallbackDates();
    }

    else
    {
      v9 = PLSharingGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [v5 uuid];
        *buf = 138412546;
        v16 = v5;
        v17 = 2114;
        v18 = v10;
        _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_ERROR, "No start date for asset collection: %@, with uuid: %{public}@", buf, 0x16u);
      }

      v11 = [v5 localizedTitle];
      v12 = v11;
      if (!v11)
      {
        v11 = &stru_1F1741150;
      }

      *a2 = v11;

      *a3 = &stru_1F1741150;
    }
  }
}

void PXCMMActionButton(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, BOOL *a6, void *a7)
{
  v23 = a4;
  v13 = a5;
  if (!v23)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PXCMMActionButton(PXCMMActivityType, PXCMMSourceType, PXMomentShareState, PXSelectionSnapshot *__strong _Nonnull, __strong id<PXAssetImportStatusManager> _Nonnull, BOOL * _Nullable, NSString * _Nullable __autoreleasing * _Nullable)"}];
    [v21 handleFailureInFunction:v22 file:@"PXCMMUtilities.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"selectionSnapshot"}];
  }

  v14 = 0;
  if (a1 <= 1)
  {
    if (a1 == 1)
    {
      if (a2)
      {
        if ([v23 areAllItemsSelected])
        {
          v15 = @"PXCMMShareAllButtonTitle";
        }

        else
        {
          v15 = @"PXCMMShareButtonTitle";
        }
      }

      else
      {
        v15 = @"PXCMMNextButtonTitle";
      }

LABEL_21:
      v14 = PXLocalizedStringFromTable(v15, @"PhotosUICore");
      goto LABEL_22;
    }

    if (a1)
    {
      goto LABEL_22;
    }

LABEL_19:
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PXCMMActionButton(PXCMMActivityType, PXCMMSourceType, PXMomentShareState, PXSelectionSnapshot *__strong _Nonnull, __strong id<PXAssetImportStatusManager> _Nonnull, BOOL * _Nullable, NSString * _Nullable __autoreleasing * _Nullable)"}];
    [v16 handleFailureInFunction:v17 file:@"PXCMMUtilities.m" lineNumber:98 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (a1 != 2)
  {
    if (a1 != 4)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  v15 = @"PXCMMSaveButtonTitle";
  if ((a3 - 1) < 3 || a3 == 5)
  {
    goto LABEL_21;
  }

  if (!a3)
  {
    if ([v23 areAllUnsavedAssetsSelectedWithImportStatusManager:v13])
    {
      v15 = @"PXCMMSaveAllButtonTitle";
    }

    goto LABEL_21;
  }

  v14 = 0;
LABEL_22:
  v18 = [v14 px_stringByApplyingCapitalization:0];

  if (a6)
  {
    if (v18)
    {
      v19 = [v18 length] != 0;
    }

    else
    {
      v19 = 0;
    }

    *a6 = v19;
  }

  if (a7)
  {
    v20 = v18;
    *a7 = v18;
  }
}

void PXCMMPresentSystemPhotoLibraryAlert(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void PXCMMPresentSystemPhotoLibraryAlert(__strong id<PXPresentationEnvironment> _Nonnull)"];
    [v9 handleFailureInFunction:v10 file:@"PXCMMUtilities.m" lineNumber:114 description:{@"Invalid parameter not satisfying: %@", @"presentationEnvironment"}];
  }

  v2 = [v1 presentAlertWithConfigurationHandler:&__block_literal_global_29132];
  v3 = PLSharingGetLog();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 0;
      v5 = "Presented system photo library alert";
      v6 = &v12;
      v7 = v4;
      v8 = OS_LOG_TYPE_DEFAULT;
LABEL_8:
      _os_log_impl(&dword_1A3C1C000, v7, v8, v5, v6, 2u);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v5 = "Failed to present system photo library alert";
    v6 = buf;
    v7 = v4;
    v8 = OS_LOG_TYPE_ERROR;
    goto LABEL_8;
  }
}

void __PXCMMPresentSystemPhotoLibraryAlert_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = PXLocalizedStringFromTable(@"PXCMMSystemPhotoLibraryAlertTitle", @"PhotosUICore");
  [v2 setTitle:v3];

  v4 = PXLocalizedStringFromTable(@"PXCMMSystemPhotoLibraryAlertMessage", @"PhotosUICore");
  [v2 setMessage:v4];

  v5 = PXLocalizedStringFromTable(@"PXOK", @"PhotosUICore");
  [v2 addActionWithTitle:v5 style:0 action:0];
}

void sub_1A4B69574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4B69A14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak((v28 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4B69D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _ConditionallyFormattedString(int a1, int a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, unint64_t a9)
{
  v15 = a1 ^ 1 | a2;
  v16 = a2 ^ 1 | a1;
  v17 = v16 == 0;
  if (v16)
  {
    v18 = a7;
  }

  else
  {
    v18 = a5;
  }

  if (v17)
  {
    v19 = a6;
  }

  else
  {
    v19 = a8;
  }

  v20 = v15 == 0;
  if (v15)
  {
    v21 = v18;
  }

  else
  {
    v21 = a3;
  }

  if (v20)
  {
    v22 = a4;
  }

  else
  {
    v22 = v19;
  }

  if (a9 <= 1)
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  v24 = v23;
  v25 = a8;
  v26 = a7;
  v27 = a6;
  v28 = a5;
  v29 = a4;
  v30 = a3;
  v31 = PXLocalizedStringFromTable(v24, @"PhotosUICore");

  return v31;
}

void sub_1A4B6CADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__30072(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A4B6E72C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1A4B6F460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

void sub_1A4B7159C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, char a21)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(a1);
}

void sub_1A4B77C04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

float PXStoryVolumeForFadeOutFractionCompleted(float a1)
{
  v1 = fmaxf(a1, 0.0);
  if (v1 > 1.0)
  {
    v1 = 1.0;
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __PXStoryVolumeForFadeOutFractionCompleted_block_invoke;
  v4[3] = &unk_1E77302E0;
  v5 = v1;
  v4[4] = &v6;
  [&unk_1F190FBE0 enumerateObjectsUsingBlock:v4];
  v2 = v7[6];
  _Block_object_dispose(&v6, 8);
  return v2;
}

void sub_1A4B78280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __PXStoryVolumeForFadeOutFractionCompleted_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 40);
  [a2 floatValue];
  v9 = v8;
  v16 = [&unk_1F190FBF8 objectAtIndexedSubscript:a3];
  [v16 floatValue];
  v11 = *(*(a1 + 32) + 8);
  if (v7 >= v9)
  {
    *(v11 + 24) = v10;
  }

  else
  {
    v12 = v10 - *(v11 + 24);
    v13 = *(a1 + 40);
    v14 = [&unk_1F190FBE0 objectAtIndexedSubscript:a3 - 1];
    [v14 floatValue];
    *(*(*(a1 + 32) + 8) + 24) = *(*(*(a1 + 32) + 8) + 24) + (v12 * (v13 - v15));

    *a4 = 1;
  }
}

void sub_1A4B7A97C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _LimitedFetchOptionsForPhotoLibrary(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PHFetchOptions *_LimitedFetchOptionsForPhotoLibrary(PHPhotoLibrary *__strong)"];
    [v5 handleFailureInFunction:v6 file:@"PHQuestion+PhotosUICore.m" lineNumber:149 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v2 = [v1 librarySpecificFetchOptions];
  [v2 setFetchLimit:1];
  v3 = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
  [v2 setIncludedDetectionTypes:v3];

  return v2;
}

void sub_1A4B7FB84(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose(&STACK[0x300], 8);
  _Block_object_dispose(&STACK[0x380], 8);
  _Block_object_dispose(&STACK[0x3B0], 8);
  _Block_object_dispose(&STACK[0x3E0], 8);
  _Block_object_dispose(&STACK[0x400], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__32459(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *PXCloudQuotaCanShowInformationView(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = ([v1 pauseReason] - 13) < 0xFFFFFFFFFFFFFFFBLL;
    v3 = [v1 isExiting];

    return (v2 & (v3 ^ 1u));
  }

  return result;
}

Class __getICQTileViewClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!iCloudQuotaUILibraryCore_frameworkLibrary_33068)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __iCloudQuotaUILibraryCore_block_invoke_33069;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E77306D0;
    v8 = 0;
    iCloudQuotaUILibraryCore_frameworkLibrary_33068 = _sl_dlopen();
  }

  if (!iCloudQuotaUILibraryCore_frameworkLibrary_33068)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *iCloudQuotaUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PXCloudQuotaPremiumOfferController.m" lineNumber:38 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("ICQTileView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getICQTileViewClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PXCloudQuotaPremiumOfferController.m" lineNumber:39 description:{@"Unable to find class %s", "ICQTileView"}];

LABEL_10:
    __break(1u);
  }

  getICQTileViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __iCloudQuotaUILibraryCore_block_invoke_33069()
{
  result = _sl_dlopen();
  iCloudQuotaUILibraryCore_frameworkLibrary_33068 = result;
  return result;
}

void PXCPLCloudQuotaStateForReason(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    goto LABEL_12;
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v2 = getICQUIInAppMessageReasoniCloudAlmostFullSymbolLoc_ptr;
  v15 = getICQUIInAppMessageReasoniCloudAlmostFullSymbolLoc_ptr;
  if (!getICQUIInAppMessageReasoniCloudAlmostFullSymbolLoc_ptr)
  {
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __getICQUIInAppMessageReasoniCloudAlmostFullSymbolLoc_block_invoke;
    v11 = &unk_1E774BD00;
    v3 = iCloudQuotaUILibrary_33490();
    v13[3] = dlsym(v3, "ICQUIInAppMessageReasoniCloudAlmostFull");
    getICQUIInAppMessageReasoniCloudAlmostFullSymbolLoc_ptr = v13[3];
    v2 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (v2)
  {
    if ([v1 isEqualToString:*v2])
    {
      goto LABEL_12;
    }

    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v4 = getICQUIInAppMessageReasoniCloudFullSymbolLoc_ptr;
    v15 = getICQUIInAppMessageReasoniCloudFullSymbolLoc_ptr;
    if (!getICQUIInAppMessageReasoniCloudFullSymbolLoc_ptr)
    {
      v8 = MEMORY[0x1E69E9820];
      v9 = 3221225472;
      v10 = __getICQUIInAppMessageReasoniCloudFullSymbolLoc_block_invoke;
      v11 = &unk_1E774BD00;
      v5 = iCloudQuotaUILibrary_33490();
      v13[3] = dlsym(v5, "ICQUIInAppMessageReasoniCloudFull");
      getICQUIInAppMessageReasoniCloudFullSymbolLoc_ptr = v13[3];
      v4 = v13[3];
    }

    _Block_object_dispose(&v12, 8);
    if (v4)
    {
      [v1 isEqualToString:*v4];
LABEL_12:

      return;
    }

    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getICQUIInAppMessageReasoniCloudFull(void)"];
    [v6 handleFailureInFunction:v7 file:@"PXCPLCloudQuotaSourceUtilities.m" lineNumber:14 description:{@"%s", dlerror(), v8, v9, v10, v11}];
  }

  else
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getICQUIInAppMessageReasoniCloudAlmostFull(void)"];
    [v6 handleFailureInFunction:v7 file:@"PXCPLCloudQuotaSourceUtilities.m" lineNumber:12 description:{@"%s", dlerror(), v8, v9, v10, v11}];
  }

  __break(1u);
}

void sub_1A4B88B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getICQUIInAppMessageReasoniCloudAlmostFullSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = iCloudQuotaUILibrary_33490();
  result = dlsym(v2, "ICQUIInAppMessageReasoniCloudAlmostFull");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getICQUIInAppMessageReasoniCloudAlmostFullSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *iCloudQuotaUILibrary_33490()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!iCloudQuotaUILibraryCore_frameworkLibrary_33499)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __iCloudQuotaUILibraryCore_block_invoke_33500;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7730728;
    v6 = 0;
    iCloudQuotaUILibraryCore_frameworkLibrary_33499 = _sl_dlopen();
  }

  v0 = iCloudQuotaUILibraryCore_frameworkLibrary_33499;
  if (!iCloudQuotaUILibraryCore_frameworkLibrary_33499)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *iCloudQuotaUILibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"PXCPLCloudQuotaSourceUtilities.h" lineNumber:23 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void *__getICQUIInAppMessageReasoniCloudFullSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = iCloudQuotaUILibrary_33490();
  result = dlsym(v2, "ICQUIInAppMessageReasoniCloudFull");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getICQUIInAppMessageReasoniCloudFullSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __iCloudQuotaUILibraryCore_block_invoke_33500()
{
  result = _sl_dlopen();
  iCloudQuotaUILibraryCore_frameworkLibrary_33499 = result;
  return result;
}

void sub_1A4B8937C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__33646(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A4B89B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4B8A680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a48, 8);
  _Unwind_Resume(a1);
}

void sub_1A4B8C084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1A4B8DCB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__33947(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A4B8E7B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4B8EC10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _TrashMomentShareActionTitle(void *a1)
{
  v1 = [a1 px_momentShareType];
  if (!v1)
  {
    v2 = @"PXCMMStopSharingConfirmationButtonTitle";
    goto LABEL_5;
  }

  if (v1 == 1)
  {
    v2 = @"PXCMMDeclineSharingConfirmationButtonTitle";
LABEL_5:
    v3 = PXLocalizedStringFromTable(v2, @"PhotosUICore");
    goto LABEL_7;
  }

  v3 = 0;
LABEL_7:

  return v3;
}

void sub_1A4B982A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *PXMemoryDeleteBehaviorString(uint64_t a1)
{
  v1 = @"delete";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"reject";
  }
}

id PXFirstPersonFromAssetCollectionActionPerformerInput(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 people];
  }

  else
  {
    v2 = 0;
  }

  v3 = [v2 firstObject];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_6;
    }

    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PHPerson * _Nonnull PXFirstPersonFromAssetCollectionActionPerformerInput(__strong id<PXPhotoKitAssetCollectionActionPerformerInput> _Nonnull)"];
    v9 = objc_opt_class();
    v8 = NSStringFromClass(v9);
    v10 = [v3 px_descriptionForAssertionMessage];
    [v5 handleFailureInFunction:v6 file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:174 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"people.firstObject", v8, v10}];
  }

  else
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PHPerson * _Nonnull PXFirstPersonFromAssetCollectionActionPerformerInput(__strong id<PXPhotoKitAssetCollectionActionPerformerInput> _Nonnull)"];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v5 handleFailureInFunction:v6 file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:174 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"people.firstObject", v8}];
  }

LABEL_6:

  return v3;
}

void sub_1A4B9C0E8(void *a1, int a2)
{
  objc_begin_catch(a1);
  if (a2 == 2)
  {

    objc_end_catch();
    JUMPOUT(0x1A4B9C0B4);
  }

  v4 = v2;
  objc_end_catch();
  JUMPOUT(0x1A4B9C0BCLL);
}

void sub_1A4B9CC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getATXProactiveCardSuggestionClientClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!ProactiveSuggestionClientModelLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __ProactiveSuggestionClientModelLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7730960;
    v8 = 0;
    ProactiveSuggestionClientModelLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ProactiveSuggestionClientModelLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ProactiveSuggestionClientModelLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PXProactiveSuggester.m" lineNumber:25 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("ATXProactiveCardSuggestionClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getATXProactiveCardSuggestionClientClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PXProactiveSuggester.m" lineNumber:26 description:{@"Unable to find class %s", "ATXProactiveCardSuggestionClient"}];

LABEL_10:
    __break(1u);
  }

  getATXProactiveCardSuggestionClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ProactiveSuggestionClientModelLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ProactiveSuggestionClientModelLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1A4B9E324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__35197(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A4B9E460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PXCanAccessDocumentStorageURL(void *a1)
{
  v1 = a1;
  if (PFOSVariantHasInternalDiagnostics())
  {
    [v1 documentStorageURL];
  }

  return 1;
}

void sub_1A4B9F1D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, uint64_t a10, __int16 a11, uint64_t a12)
{
  if (a2 == 1)
  {
    v12 = objc_begin_catch(exception_object);
    PXAssertGetLog();
  }

  _Unwind_Resume(exception_object);
}

id getMFMailComposeViewControllerClass_35356()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMFMailComposeViewControllerClass_softClass_35379;
  v7 = getMFMailComposeViewControllerClass_softClass_35379;
  if (!getMFMailComposeViewControllerClass_softClass_35379)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMFMailComposeViewControllerClass_block_invoke_35380;
    v3[3] = &unk_1E774BD00;
    v3[4] = &v4;
    __getMFMailComposeViewControllerClass_block_invoke_35380(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A4B9F9AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMFMailComposeViewControllerClass_block_invoke_35380(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!MessageUILibraryCore_frameworkLibrary_35381)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __MessageUILibraryCore_block_invoke_35382;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7730A38;
    v8 = 0;
    MessageUILibraryCore_frameworkLibrary_35381 = _sl_dlopen();
  }

  if (!MessageUILibraryCore_frameworkLibrary_35381)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MessageUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PXSuggestionDebugViewController.m" lineNumber:28 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("MFMailComposeViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMFMailComposeViewControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PXSuggestionDebugViewController.m" lineNumber:29 description:{@"Unable to find class %s", "MFMailComposeViewController"}];

LABEL_10:
    __break(1u);
  }

  getMFMailComposeViewControllerClass_softClass_35379 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MessageUILibraryCore_block_invoke_35382()
{
  result = _sl_dlopen();
  MessageUILibraryCore_frameworkLibrary_35381 = result;
  return result;
}

void sub_1A4BA2A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__35798(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A4BA4F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__35983(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A4BA564C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void addToPapertrail(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v11 = a1;
  v7 = a3;
  if (isAppleInternal_onceToken != -1)
  {
    dispatch_once(&isAppleInternal_onceToken, &__block_literal_global_193);
  }

  if (isAppleInternal_hasInternalDiagnostics == 1)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:a2 encoding:4];
    v9 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"@()"];
    v10 = [v8 stringByTrimmingCharactersInSet:v9];

    [v11 appendFormat:@"%d: %@ = %@\n", a4, v10, v7];
  }
}

uint64_t __isAppleInternal_block_invoke()
{
  result = os_variant_has_internal_diagnostics();
  isAppleInternal_hasInternalDiagnostics = result;
  return result;
}

id _ThumbnailImageDataFromAttributionContact(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 isKeyAvailable:*MEMORY[0x1E695C400]])
  {
    v2 = [v1 thumbnailImageData];
  }

  else
  {
    v3 = PLUIGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v1;
      _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_ERROR, "Info Panel attribution: Image data not available for contact %@", &v5, 0xCu);
    }

    v2 = 0;
  }

  return v2;
}

void sub_1A4BA9E9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4BAB2E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__36874(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *PXRadarClassificationDescription(uint64_t a1)
{
  if ((a1 - 1) > 9)
  {
    return &stru_1F1741150;
  }

  else
  {
    return off_1E7730D40[a1 - 1];
  }
}

unint64_t PXRadarComponentGetIDNameVersion(unint64_t result, __CFString **a2, __CFString **a3, __CFString **a4)
{
  if (result > 0x29)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    if (!a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v4 = off_1E7730D90[result];
  v5 = off_1E7730EE0[result];
  v6 = off_1E7731030[result];
  if (a2)
  {
LABEL_5:
    *a2 = v4;
  }

LABEL_6:
  if (a3)
  {
    *a3 = v5;
  }

  if (a4)
  {
    *a4 = v6;
  }

  return result;
}

void _CollectAttachmentsForConfiguration(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 copy];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___CollectAttachmentsForConfiguration_block_invoke;
  v9[3] = &unk_1E774ACE8;
  v11 = v3;
  v12 = v4;
  v10 = v5;
  v6 = v3;
  v7 = v5;
  v8 = v4;
  [v7 collectDiagnosticsWithCompletionHandler:v9];
}

void PXFileRadarWithConfiguration(void *a1)
{
  v1 = [a1 copy];
  if ([v1 isProgressUIAllowed])
  {
    v2 = [PXProgressIndicatorAlertController beginShowingModalProgressWithConfiguration:&__block_literal_global_656];
  }

  else
  {
    v2 = 0;
  }

  v3 = [v1 completionHandler];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __PXFileRadarWithConfiguration_block_invoke_2;
  aBlock[3] = &unk_1E774BD88;
  v12 = v2;
  v13 = v3;
  v4 = v2;
  v5 = _Block_copy(aBlock);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __PXFileRadarWithConfiguration_block_invoke_3;
  v8[3] = &unk_1E7730C80;
  v9 = v1;
  v10 = v5;
  v6 = v1;
  v7 = v5;
  _CollectAttachmentsForConfiguration(v6, v8);
}

void __PXFileRadarWithConfiguration_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  NSLog(&cfstr_FilingRadarSuc.isa, a2, v6);
  [*(a1 + 32) stopShowing];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, a2, v6);
  }
}

void __PXFileRadarWithConfiguration_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) component];
    if (v4 > 0x29)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
    }

    else
    {
      v5 = off_1E7730D90[v4];
      v6 = off_1E7730EE0[v4];
      v7 = off_1E7731030[v4];
    }

    v29 = v5;
    v28 = v6;
    v27 = v7;
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9 = [*(a1 + 32) additionalExtensionIdentifiers];
    v10 = [v9 count];

    if (v10)
    {
      v11 = [*(a1 + 32) additionalExtensionIdentifiers];
      [v8 addObjectsFromArray:v11];
    }

    if ([*(a1 + 32) wantsPhotosDiagnostics])
    {
      [v8 addObject:@"com.apple.PhotoLibraryServices.PhotosDiagnostics"];
    }

    v26 = v8;
    v25 = [*(a1 + 32) title];
    v12 = [*(a1 + 32) description];
    v13 = &stru_1F1741150;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = &stru_1F1741150;
    }

    v23 = v12;
    v24 = v14;
    v15 = [*(a1 + 32) classification];
    if ((v15 - 1) <= 9)
    {
      v13 = off_1E7730D40[v15 - 1];
    }

    v16 = v13;
    v17 = [*(a1 + 32) keywordIDs];
    v18 = [v17 componentsJoinedByString:{@", "}];
    v19 = [*(a1 + 32) screenshots];
    v20 = [*(a1 + 32) wantsSystemDiagnostics];
    v21 = [*(a1 + 32) attachmentsIncludeAnyUserAsset];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __PXFileRadarWithConfiguration_block_invoke_4;
    v30[3] = &unk_1E77464C0;
    v31 = *(a1 + 40);
    BYTE1(v22) = v21;
    LOBYTE(v22) = v20;
    [PXFeedbackTapToRadarUtilities fileRadarWithTitle:v25 description:v24 classification:v16 componentID:v29 componentName:v28 componentVersion:v27 keyword:v18 screenshotURLs:v19 attachmentURLs:v3 includeSysDiagnose:v22 includeInternalRelease:v26 additionalExtensionIdentifiers:v30 completionHandler:?];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __PXFileRadarWithConfiguration_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setDelay:0.0];
  [v2 setIsInternalUIAllowed:1];
  [v2 setLabel:@"Filing Radar…"];
}

void PXDumpRadarAttachmentsWithConfigurationToFolderURL(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __PXDumpRadarAttachmentsWithConfigurationToFolderURL_block_invoke;
  v9[3] = &unk_1E7730C80;
  v10 = v5;
  v11 = v6;
  v7 = v5;
  v8 = v6;
  _CollectAttachmentsForConfiguration(a1, v9);
}

void __PXDumpRadarAttachmentsWithConfigurationToFolderURL_block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v6 = 0;
    PXFeedbackTapToRadarUtilitiesCopyFilesToFolder(a2, v3, &v6);
    v4 = v6;
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = *(*(a1 + 40) + 16);

    v5();
  }
}

void sub_1A4BAF348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location, char a27)
{
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak(&a25);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4BAF8E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double PXAssetsSectionGetLayoutPropertiesForMetrics(uint64_t a1, uint64_t a2, double *a3, double *a4)
{
  v9 = 0.0;
  v10 = 0.0;
  [off_1E7721798 bestItemSizeForAvailableWidth:a1 screenScale:&v10 columns:&v9 bestSpacing:? bestInset:?];
  if (a2)
  {
    *a2 = result;
    *(a2 + 8) = v8;
  }

  if (a3)
  {
    result = v10;
    *a3 = v10;
  }

  if (a4)
  {
    result = v9;
    *a4 = v9;
  }

  return result;
}

void sub_1A4BB1C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4BB1F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4BB3D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1A4BB4254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__38136(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A4BB4694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4BB5BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_1A4BBAD28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 120));
  _Unwind_Resume(a1);
}

void sub_1A4BBB080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4BBB15C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4BBB2BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4BBB3A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4BBB580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__39298(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A4BBB844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getPIColorNormalizationFilterClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPIColorNormalizationFilterClass_softClass;
  v7 = getPIColorNormalizationFilterClass_softClass;
  if (!getPIColorNormalizationFilterClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPIColorNormalizationFilterClass_block_invoke;
    v3[3] = &unk_1E774BD00;
    v3[4] = &v4;
    __getPIColorNormalizationFilterClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A4BBC400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPIColorNormalizationFilterClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!PhotoImagingLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __PhotoImagingLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E77313D8;
    v8 = 0;
    PhotoImagingLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PhotoImagingLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PhotoImagingLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PXStoryColorNormalizationAdjustment.m" lineNumber:20 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("PIColorNormalizationFilter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPIColorNormalizationFilterClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PXStoryColorNormalizationAdjustment.m" lineNumber:21 description:{@"Unable to find class %s", "PIColorNormalizationFilter"}];

LABEL_10:
    __break(1u);
  }

  getPIColorNormalizationFilterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PhotoImagingLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PhotoImagingLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1A4BBD3A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPDFViewClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!PDFKitLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __PDFKitLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E77313F0;
    v8 = 0;
    PDFKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PDFKitLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PDFKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PXVisualDiagnosticsViewController.m" lineNumber:18 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("PDFView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPDFViewClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PXVisualDiagnosticsViewController.m" lineNumber:20 description:{@"Unable to find class %s", "PDFView"}];

LABEL_10:
    __break(1u);
  }

  getPDFViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PDFKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PDFKitLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1A4BBD94C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4BBDC9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__39757(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A4BBF018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *PXStoryErrorDescription(uint64_t a1)
{
  if ((a1 - 1) >= 0x1B)
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ error %li", @"PXStoryErrorDomain", a1];
  }

  else
  {
    v2 = off_1E7731478[a1 - 1];
  }

  return v2;
}

id PXStoryErrorCreateWithCodeUnderlyingErrorDebugDescription(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = a2;
  v8 = objc_alloc_init(v5);
  v9 = PXStoryErrorDescription(a1);
  [v8 setObject:v9 forKeyedSubscript:*MEMORY[0x1E696A578]];

  [v8 setObject:v6 forKeyedSubscript:*MEMORY[0x1E696A278]];
  [v8 setObject:v7 forKeyedSubscript:*MEMORY[0x1E696AA08]];

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PXStoryErrorDomain" code:a1 userInfo:v8];

  return v10;
}

id PXStoryErrorCreateWithCodeDebugFormat(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = a2;
    v12 = [[v10 alloc] initWithFormat:v11 arguments:&a9];
  }

  else
  {
    v12 = 0;
  }

  v13 = PXStoryErrorCreateWithCodeUnderlyingErrorDebugDescription(a1, 0, v12);

  return v13;
}

id PXStoryErrorCreateWithCodeUnderlyingErrorDebugFormat(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a2;
  if (a3)
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = a3;
    a3 = [[v12 alloc] initWithFormat:v13 arguments:&a9];
  }

  v14 = PXStoryErrorCreateWithCodeUnderlyingErrorDebugDescription(a1, v11, a3);

  return v14;
}

id PXStoryErrorDetailsDescription(void *a1)
{
  v1 = a1;
  v2 = [v1 userInfo];
  v3 = [v1 localizedFailureReason];
  v4 = MEMORY[0x1E696AA08];
  if (v3 || ([v1 localizedRecoverySuggestion], (v3 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v2, "objectForKeyedSubscript:", *MEMORY[0x1E696A278]), (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v3;
  }

  else
  {
    v12 = [v2 mutableCopy];
    [v12 removeObjectForKey:*MEMORY[0x1E696A578]];
    [v12 removeObjectForKey:*v4];
    v13 = [v12 description];
    v14 = [v13 mutableCopy];

    [v14 replaceOccurrencesOfString:@"\n" withString:@" " options:0 range:{0, objc_msgSend(v14, "length")}];
    [v14 replaceOccurrencesOfString:@"\t" withString:@" " options:0 range:{0, objc_msgSend(v14, "length")}];
      ;
    }

    v5 = [v14 copy];
  }

  v6 = [v2 objectForKeyedSubscript:*v4];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 localizedDescription];
    v9 = PXStoryErrorDetailsDescription(v7);
    v10 = [v5 stringByAppendingFormat:@" (Underlying Error: %@ / %@)", v8, v9];

    v5 = v10;
  }

  return v5;
}

id PXStoryErrorByInsertingTitlePrefix(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 userInfo];
  v6 = [v5 mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v9 = v8;

  v10 = [v3 localizedFailureReason];
  v11 = v10;
  if (!v10)
  {
    v11 = [v3 localizedDescription];
  }

  v12 = [v4 stringByAppendingString:v11];
  [v9 setObject:v12 forKeyedSubscript:*MEMORY[0x1E696A588]];

  if (!v10)
  {
  }

  v13 = MEMORY[0x1E696ABC0];
  v14 = [v3 domain];
  v15 = [v13 errorWithDomain:v14 code:objc_msgSend(v3 userInfo:{"code"), v9}];

  return v15;
}

void sub_1A4BC0448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4BC0704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  objc_destroyWeak((v16 + 48));
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 136), 8);
  objc_destroyWeak((v17 - 88));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__40070(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void PXCMMUpdateCountsWithSelectionSnapshot(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 selectedIndexPaths];
  [v3 setSelectedCount:{objc_msgSend(v5, "count")}];
  v6 = [v4 dataSource];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __PXCMMUpdateCountsWithSelectionSnapshot_block_invoke;
  v8[3] = &unk_1E77315D0;
  v7 = v6;
  v9 = v7;
  v10 = &v16;
  v11 = &v12;
  [v5 enumerateItemIndexPathsUsingBlock:v8];
  [v3 setSelectedPhotosCount:v17[3]];
  [v3 setSelectedVideosCount:v13[3]];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
}

void sub_1A4BC1E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void __PXCMMUpdateCountsWithSelectionSnapshot_block_invoke(uint64_t a1, _OWORD *a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 32);
    v5 = a2[1];
    v9[0] = *a2;
    v9[1] = v5;
    v6 = [v4 assetAtItemIndexPath:v9];
    v7 = [v6 mediaType];
    if (v7 == 1)
    {
      v8 = 40;
    }

    else
    {
      if (v7 != 2)
      {
LABEL_7:

        return;
      }

      v8 = 48;
    }

    ++*(*(*(a1 + v8) + 8) + 24);
    goto LABEL_7;
  }
}

__CFString *PXCMMViewModelChangeDebugDescription(uint64_t a1)
{
  if (a1 > 511)
  {
    if (a1 < 0x2000)
    {
      if (a1 > 2047)
      {
        if (a1 == 2048)
        {
          v2 = @"peopleSuggestions";

          return v2;
        }

        if (a1 == 4096)
        {
          v2 = @"showPlaceholder";

          return v2;
        }
      }

      else
      {
        if (a1 == 512)
        {
          v2 = @"totalCounts";

          return v2;
        }

        if (a1 == 1024)
        {
          v2 = @"selecting";

          return v2;
        }
      }
    }

    else if (a1 < 0x8000)
    {
      if (a1 == 0x2000)
      {
        v2 = @"disabledActionTypes";

        return v2;
      }

      if (a1 == 0x4000)
      {
        v2 = @"selectionEnabled";

        return v2;
      }
    }

    else
    {
      switch(a1)
      {
        case 0x8000:
          v2 = @"unverifiedPersons";

          return v2;
        case 0x10000:
          v2 = @"selectionCounts";

          return v2;
        case 0x20000:
          v2 = @"disableOneUp";

          return v2;
      }
    }

LABEL_80:
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown(%llu)", a1];

    return v2;
  }

  if (a1 <= 15)
  {
    if (a1 > 3)
    {
      if (a1 == 4)
      {
        v2 = @"recipients";

        return v2;
      }

      if (a1 == 8)
      {
        v2 = @"originatorRecipient";

        return v2;
      }
    }

    else
    {
      if (a1 == 1)
      {
        v2 = @"titles";

        return v2;
      }

      if (a1 == 2)
      {
        v2 = @"selectionManager";

        return v2;
      }
    }

    goto LABEL_80;
  }

  if (a1 <= 63)
  {
    if (a1 == 16)
    {
      v2 = @"numReceivedAssets";

      return v2;
    }

    if (a1 == 32)
    {
      v2 = @"shareURL";

      return v2;
    }

    goto LABEL_80;
  }

  switch(a1)
  {
    case 64:
      v2 = @"shareUUID";

      break;
    case 128:
      v2 = @"posterAsset";

      break;
    case 256:
      v2 = @"date";

      return v2;
    default:
      goto LABEL_80;
  }

  return v2;
}

id PXCMMViewModelChangeDescriptorDebugDescription(unsigned int a1)
{
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:17];
  for (i = 0; i != 18; ++i)
  {
    if (((1 << i) & a1) != 0)
    {
      v4 = PXCMMViewModelChangeDebugDescription((1 << i) & a1);
      [v2 addObject:v4];
    }
  }

  v5 = [v2 componentsJoinedByString:{@", "}];

  return v5;
}

void _LabelContextMakeGadgetSpec(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v12 = a2;
  *(a4 + 64) = 0;
  *a4 = a1;
  *(a4 + 8) = a2;
  v14 = a3;
  v15 = PXMemorySpecSetForTileKindGadgetSpec(v12, v14);
  *(a4 + 16) = v15;
  *(a4 + 24) = PXMemorySpecVariantForTileKindGadgetSpec(v12, v14);
  *(a4 + 32) = a5;
  *(a4 + 40) = a6;
  *(a4 + 48) = a7;
  *(a4 + 56) = a8;
  LOBYTE(v12) = PXMemoryShouldScaleForSpecSetGadgetSpec(v15, v14);

  *(a4 + 64) = v12;
}

void _LabelContextMakeFeatureSpec(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v12 = a2;
  *(a4 + 64) = 0;
  *a4 = a1;
  *(a4 + 8) = a2;
  v14 = a3;
  v15 = PXMemorySpecSetForTileKindFeatureSpec(v12, v14);
  *(a4 + 16) = v15;
  *(a4 + 24) = PXMemorySpecVariantForTileKindFeatureSpec(v12, v14);
  *(a4 + 32) = a5;
  *(a4 + 40) = a6;
  *(a4 + 48) = a7;
  *(a4 + 56) = a8;
  LOBYTE(v12) = PXMemoryShouldScaleForSpecSetFeatureSpec(v15, v14);

  *(a4 + 64) = v12;
}

void _LabelContextMakeDescriptor(uint64_t a1@<X0>, void *a2@<X2>, void *a3@<X8>)
{
  a3[8] = 0;
  *a3 = a1;
  v3 = a2;
  PXMemoryTileKindForViewSpecContext();
}

uint64_t _LabelContextMake@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>)
{
  *(a6 + 64) = 0;
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a7;
  *(a6 + 40) = a8;
  *(a6 + 48) = a9;
  *(a6 + 56) = a10;
  *(a6 + 64) = a5;
  return result;
}

id _AllHubbleQuestionsForPhotoLibrary(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PHFetchResult<PHQuestion *> *_AllHubbleQuestionsForPhotoLibrary(PHPhotoLibrary *__strong)"];
    [v6 handleFailureInFunction:v7 file:@"PXContentSyndicationSettings+UI.m" lineNumber:366 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v2 = [v1 librarySpecificFetchOptions];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"type == %u", 18];
  [v2 setPredicate:v3];

  v4 = [MEMORY[0x1E6978A10] fetchQuestionsWithOptions:v2 validQuestionsOnly:0];

  return v4;
}

void _PresentAlertForNavigationController(void *a1, void *a2, void *a3)
{
  v13 = a1;
  v5 = a2;
  v6 = a3;
  if (v13)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _PresentAlertForNavigationController(NSString *__strong, NSString * _Nullable __strong, UINavigationController *__strong)"}];
    [v9 handleFailureInFunction:v10 file:@"PXContentSyndicationSettings+UI.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"title"}];

    if (v6)
    {
      goto LABEL_3;
    }
  }

  v11 = [MEMORY[0x1E696AAA8] currentHandler];
  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _PresentAlertForNavigationController(NSString *__strong, NSString * _Nullable __strong, UINavigationController *__strong)"}];
  [v11 handleFailureInFunction:v12 file:@"PXContentSyndicationSettings+UI.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"navigationController"}];

LABEL_3:
  v7 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v13 message:v5 preferredStyle:1];
  v8 = [MEMORY[0x1E69DC648] actionWithTitle:@"OK" style:0 handler:0];
  [v7 addAction:v8];

  [v6 presentViewController:v7 animated:1 completion:0];
}

void sub_1A4BCA300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__41779(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A4BCACA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4BCB068(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4BCDF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPIColorNormalizationFilterClass_block_invoke_43182(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!PhotoImagingLibraryCore_frameworkLibrary_43183)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __PhotoImagingLibraryCore_block_invoke_43184;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E77316D8;
    v8 = 0;
    PhotoImagingLibraryCore_frameworkLibrary_43183 = _sl_dlopen();
  }

  if (!PhotoImagingLibraryCore_frameworkLibrary_43183)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PhotoImagingLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PXStorySettings.m" lineNumber:32 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("PIColorNormalizationFilter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPIColorNormalizationFilterClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PXStorySettings.m" lineNumber:33 description:{@"Unable to find class %s", "PIColorNormalizationFilter"}];

LABEL_10:
    __break(1u);
  }

  getPIColorNormalizationFilterClass_softClass_43181 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PhotoImagingLibraryCore_block_invoke_43184()
{
  result = _sl_dlopen();
  PhotoImagingLibraryCore_frameworkLibrary_43183 = result;
  return result;
}

uint64_t PXStoryIsSlowDevice()
{
  if (PXStoryIsSlowDevice_onceToken != -1)
  {
    dispatch_once(&PXStoryIsSlowDevice_onceToken, &__block_literal_global_1674);
  }

  return 0;
}

__CFString *PXStoryShowcaseModeDescription(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"??";
  }

  else
  {
    return off_1E77316F0[a1];
  }
}

__CFString *PXStorySimulatedErrorDescription(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"??";
  }

  else
  {
    return off_1E7731708[a1];
  }
}

__CFString *PXStoryNormalizationModeToString(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"??";
  }

  else
  {
    return off_1E7731728[a1];
  }
}

__CFString *PXStoryNormalizationTechniqueDescription(uint64_t a1)
{
  v1 = @"??";
  if (a1 == 1)
  {
    v1 = @"CoreImage Adjustment";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Shader LUT";
  }
}

__CFString *PXStoryAudioPlaybackStrategyToString(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"??";
  }

  else
  {
    return off_1E7731750[a1];
  }
}

__CFString *PXStoryAudioOverlapStrategyToString(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"??";
  }

  else
  {
    return off_1E7731780[a1];
  }
}

__CFString *PXStoryAspectRatioDescription(unint64_t a1)
{
  if (a1 > 9)
  {
    return @"??";
  }

  else
  {
    return off_1E77317A0[a1];
  }
}

__CFString *PXStoryVideoQualityDescription(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"??";
  }

  else
  {
    return off_1E77317F0[a1];
  }
}

void sub_1A4BD0714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4BD07F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1A4BD09D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1A4BD0B34(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1A4BD0E44(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1A4BD1310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4BD2AF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4BD68FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _powerControllerLog()
{
  if (_powerControllerLog_onceToken != -1)
  {
    dispatch_once(&_powerControllerLog_onceToken, &__block_literal_global_44848);
  }

  v1 = _powerControllerLog_sPowerLog;

  return v1;
}

id NSStringFromPXPowerAssertionReasonBitfield(unsigned int a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (a1)
  {
    v3 = 1;
    do
    {
      if (a1)
      {
        v4 = @"PXPowerAssertionReasonImportAssets";
        if ((v3 - 2) <= 6)
        {
          v4 = off_1E77318D0[v3 - 2];
        }

        [v2 addObject:v4];
      }

      v3 *= 2;
      v5 = a1 > 1;
      a1 >>= 1;
    }

    while (v5);
  }

  v6 = [v2 componentsJoinedByString:{@", "}];

  return v6;
}

void ___powerControllerLog_block_invoke()
{
  v0 = os_log_create("com.apple.Photos.Power", "PowerController");
  v1 = _powerControllerLog_sPowerLog;
  _powerControllerLog_sPowerLog = v0;
}

id PXRecipientWithPersonSuggestion(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"PXRecipient * _Nullable PXRecipientWithPersonSuggestion(__strong id<PXPersonSuggestion> _Nonnull, CNContact *__strong _Nullable)"}];
    [v9 handleFailureInFunction:v10 file:@"PXRecipientUtilities.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"personSuggestion"}];
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__44926;
  v18 = __Block_byref_object_dispose__44927;
  v19 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v3;
    [v5 setPrefetchedContact:v4];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __PXRecipientWithPersonSuggestion_block_invoke;
    v11[3] = &unk_1E7731910;
    v6 = v5;
    v12 = v6;
    v13 = &v14;
    [v6 fetchContactAndBestTransport:v11];
  }

  v7 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v7;
}

void sub_1A4BD86A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__44926(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __PXRecipientWithPersonSuggestion_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      v8 = [v6 address];
      v9 = [v7 addressKind];
    }

    else
    {
      v10 = PLSharingGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        v18 = 138412290;
        v19 = v11;
        _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEFAULT, "No best transport available for person suggestion:%@", &v18, 0xCu);
      }

      v9 = 0;
      v8 = 0;
    }

    v12 = [[PXRecipient alloc] initWithContact:v5 address:v8 nameComponents:0 recipientKind:v9];
    v13 = *(*(a1 + 40) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    v15 = [*(*(*(a1 + 40) + 8) + 40) invalidAddressString];

    if (v15)
    {
      v16 = *(*(a1 + 40) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = 0;
    }
  }
}

PXRecipient *PXRecipientFromShareParticipant(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PXRecipient * _Nonnull PXRecipientFromShareParticipant(PHShareParticipant *__strong _Nonnull)"];
    [v8 handleFailureInFunction:v9 file:@"PXRecipientUtilities.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"participant"}];
  }

  v2 = [PXRecipient alloc];
  v3 = [v1 emailAddress];
  v4 = [v1 phoneNumber];
  v5 = [v1 nameComponents];
  v6 = [(PXRecipient *)v2 initWithEmailAddress:v3 phoneNumber:v4 nameComponents:v5];

  return v6;
}

uint64_t PXBootstrapPersonSuggestionWithContact(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL PXBootstrapPersonSuggestionWithContact(__strong id<PXPersonSuggestion> _Nonnull, CNContact *__strong _Nonnull, NSError *__autoreleasing * _Nullable)"}];
    [v17 handleFailureInFunction:v18 file:@"PXRecipientUtilities.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"[personSuggestion isKindOfClass:[PXPhotoKitPersonSuggestion class]]"}];
  }

  v7 = [v5 person];
  if (!v7)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL PXBootstrapPersonSuggestionWithContact(__strong id<PXPersonSuggestion> _Nonnull, CNContact *__strong _Nonnull, NSError *__autoreleasing * _Nullable)"}];
    [v19 handleFailureInFunction:v20 file:@"PXRecipientUtilities.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"person"}];
  }

  v8 = [MEMORY[0x1E6978980] fullNameFromContact:v6];
  v9 = [MEMORY[0x1E6978980] displayNameFromContact:v6];
  v10 = [v7 photoLibrary];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __PXBootstrapPersonSuggestionWithContact_block_invoke;
  v21[3] = &unk_1E7744F50;
  v22 = v7;
  v23 = v6;
  v24 = v8;
  v25 = v9;
  v11 = v9;
  v12 = v8;
  v13 = v6;
  v14 = v7;
  v15 = [v10 performChangesAndWait:v21 error:a3];

  return v15;
}

void __PXBootstrapPersonSuggestionWithContact_block_invoke(uint64_t a1)
{
  v5 = [MEMORY[0x1E6978990] changeRequestForPerson:*(a1 + 32)];
  v2 = +[PXPeopleUtilities sharedContactStore];
  v3 = [MEMORY[0x1E69BE380] matchingDictionaryForContact:*(a1 + 40) contactStore:v2];
  [v5 setContactMatchingDictionary:v3];
  v4 = [*(a1 + 40) identifier];
  [v5 setPersonUri:v4];

  [v5 setName:*(a1 + 48)];
  [v5 setDisplayName:*(a1 + 56)];
}

uint64_t __Block_byref_object_copy__45122(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A4BDB8E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL PXClipCompositionContainsSplitAsset(void *a1)
{
  v1 = a1;
  v2 = [v1 numberOfClips];
  v3 = [v1 numberOfAssets];

  return v2 > v3;
}

void PXStorySegmentClipCompositionInfoFromComposition(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = [v3 numberOfClips];
  v5 = [v3 clipFramesExtendToBounds];
  v6 = [v3 mainDividerAxis];
  [v3 mainDividerSplitRatio];
  v8 = v7;
  v9 = [v3 numberOfAssets];

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
}

id PXLinkPresentationImageForAsset(void *a1, char a2, double a3, double a4)
{
  v7 = a1;
  v8 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  v9 = objc_opt_class();
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __PXLinkPresentationImageForAsset_block_invoke;
  v17 = &unk_1E7731AA8;
  v19 = a3;
  v20 = a4;
  v21 = a2;
  v18 = v7;
  v10 = v7;
  [v8 registerObjectOfClass:v9 visibility:0 loadHandler:&v14];
  v11 = objc_alloc(MEMORY[0x1E696EC68]);
  v12 = [v11 initWithItemProvider:v8 properties:0 placeholderImage:{0, v14, v15, v16, v17}];

  return v12;
}

void __PXLinkPresentationImageForAsset_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  PLPhysicalScreenScale();
  PXSizeScale();
}

void __PXLinkPresentationImageForAsset_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }

  else
  {
    v5 = [a3 objectForKeyedSubscript:*MEMORY[0x1E6978DF0]];
    v6 = PLUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "LPImage * _Nonnull PXLinkPresentationImageForAsset(__strong id<PXDisplayAsset> _Nonnull, CGSize, BOOL)_block_invoke_2";
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "%s: Error fetching thumbnail image data: %@", &v7, 0x16u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void PXStoryStyleDefaultContentInfoForDisplayAsset(void *a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a1;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  v3 = [v13 playbackStyle];
  v4 = v13;
  if ((v3 & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v5 = [v13 resourcesDataSource];
    v6 = [v5 movieHighlightsForDisplayAssetAtIndex:{objc_msgSend(v13, "resourceIndex")}];

    v7 = PXStoryMovieHighlightForPlaybackStyle(v6, v3);
    v8 = v7;
    if (v7)
    {
      [v7 bestPlaybackRect];
      *(a2 + 112) = v9;
      *(a2 + 120) = v10;
      *(a2 + 128) = v11;
      *(a2 + 136) = v12;
    }

    v4 = v13;
  }
}

BOOL PXStoryStyleEqualToStyle(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 originalColorGradeCategory];
  v6 = [v4 originalColorGradeCategory];
  if (v5 == v6 || [v5 isEqualToString:v6])
  {
    v7 = [v3 customColorGradeKind];
    if (v7 == [v4 customColorGradeKind])
    {
      v8 = [v3 songResource];
      v9 = [v4 songResource];
      if (!PXStorySongResourceEqualToSongResource(v8, v9))
      {
        v13 = 0;
LABEL_18:

        goto LABEL_19;
      }

      v10 = [v3 cueSource];
      v11 = [v4 cueSource];
      if (v10 != v11 && ![v10 isEqual:v11] || (v12 = objc_msgSend(v3, "isCustomized"), v12 != objc_msgSend(v4, "isCustomized")))
      {
        v13 = 0;
LABEL_17:

        goto LABEL_18;
      }

      if (v3)
      {
        [v3 outroDuration];
        if (v4)
        {
LABEL_13:
          [v4 outroDuration];
LABEL_16:
          time1 = v15[1];
          time2 = v15[0];
          v13 = CMTimeCompare(&time1, &time2) == 0;
          goto LABEL_17;
        }
      }

      else
      {
        memset(&v15[1], 0, sizeof(CMTime));
        if (v4)
        {
          goto LABEL_13;
        }
      }

      memset(v15, 0, 24);
      goto LABEL_16;
    }
  }

  v13 = 0;
LABEL_19:

  return v13;
}

id PXDebugImageWithFaceRect(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 normalizedFaceAreaRect];
    [v4 size];
    [v4 size];
    PXRectDenormalize();
  }

  return v4;
}

id PXStoryRelatedAnimationCreate(void *a1)
{
  v1 = a1;
  v2 = +[PXStorySettings sharedInstance];
  [v2 relatedAnimationDuration];
  v4 = v3;

  if (v4 <= 0.0)
  {
    v6 = 0;
  }

  else
  {
    v5 = [v1 rootLayout];
    v6 = [v5 createAnimation];

    [v6 setDuration:v4];
    [v6 setDoubleSided:1];
    v7 = [[PXStoryRelatedAnimationDelegate alloc] initWithSelectedRelatedLayout:v1];
    [v6 setDelegate:v7];
  }

  return v6;
}

float _AdjustAlphaWithRelativeFadeDuration(float *a1, float a2)
{
  result = (1.0 - 1.0 / a2) * *a1;
  *a1 = result;
  return result;
}

void sub_1A4BE5E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a38, 8);
  _Unwind_Resume(a1);
}

void sub_1A4BE687C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 208), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__47172(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id PXGetBootSessionUUID()
{
  if (PXGetBootSessionUUID_onceToken != -1)
  {
    dispatch_once(&PXGetBootSessionUUID_onceToken, &__block_literal_global_47206);
  }

  v1 = PXGetBootSessionUUID_bootUUID;

  return v1;
}

void __PXGetBootSessionUUID_block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  memset(v3, 0, sizeof(v3));
  v2 = 37;
  if (!sysctlbyname("kern.bootsessionuuid", v3, &v2, 0, 0))
  {
    v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v3];
    v1 = PXGetBootSessionUUID_bootUUID;
    PXGetBootSessionUUID_bootUUID = v0;
  }
}

uint64_t PXCheckAndNoteUseOfSystemSinceBoot(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"lastEditBootUUID_%@", a1];
  v2 = PXGetBootSessionUUID();
  if (v2)
  {
    v3 = [MEMORY[0x1E695E000] standardUserDefaults];
    v4 = [v3 stringForKey:v1];

    if (v4 && ([v4 isEqual:v2] & 1) != 0)
    {
      v5 = 0;
    }

    else
    {
      v6 = [MEMORY[0x1E695E000] standardUserDefaults];
      [v6 setObject:v2 forKey:v1];

      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t PXDisplayAssetSupportsSyndication(void *a1)
{
  v1 = a1;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t PXDisplayAssetIsInCloud(void *a1)
{
  v1 = a1;
  if (!objc_opt_class() || (objc_opt_isKindOfClass() & 1) == 0)
  {

    v2 = 0;
LABEL_7:
    v3 = 0;
    goto LABEL_8;
  }

  v2 = v1;

  if (!v2 || ([v2 px_isStreamSharedAlbumAsset] & 1) != 0)
  {
    goto LABEL_7;
  }

  v3 = [v2 hasAllThumbs] ^ 1;
LABEL_8:

  return v3;
}

uint64_t PXDisplayAssetIsInSharedAlbum(void *a1)
{
  v1 = a1;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = [v2 px_isSharedAlbumAsset];
  return v3;
}

uint64_t PXDisplayAssetIsInSharedCollection(void *a1)
{
  v1 = a1;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = [v2 isCollectionShareAsset];
  return v3;
}

uint64_t PXDisplayAssetIsInSharedAlbumOrSharedCollection(void *a1)
{
  v1 = a1;
  if (PXDisplayAssetIsInSharedAlbum(v1))
  {
    v2 = 1;
  }

  else
  {
    v2 = PXDisplayAssetIsInSharedCollection(v1);
  }

  return v2;
}

uint64_t PXDisplayAssetIsAnimatedImage(void *a1)
{
  v1 = a1;
  if (!objc_opt_class() || (objc_opt_isKindOfClass() & 1) == 0)
  {

    v2 = 0;
LABEL_7:
    v3 = 0;
    goto LABEL_8;
  }

  v2 = v1;

  if (!v2 || ([v2 hasAdjustments] & 1) != 0)
  {
    goto LABEL_7;
  }

  v3 = [v2 isAnimatedGIF];
LABEL_8:

  return v3;
}

uint64_t PXDisplayAssetWasSavedThroughSyndication(void *a1)
{
  v1 = a1;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = [v2 px_wasSavedThroughSyndication];
  return v3;
}

uint64_t PXDisplayAssetIsSyndicatedAsset(void *a1)
{
  v1 = a1;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = [v2 px_isSyndicatedAsset];
  return v3;
}

BOOL PXDisplayAssetHasSyndicationInformation(void *a1)
{
  v1 = a1;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v2 = v1;

    if (!v2)
    {
      v5 = 0;
      goto LABEL_7;
    }

    [v2 fetchPropertySetsIfNeeded];
    v3 = [v2 curationProperties];
    v4 = [v3 syndicationIdentifier];
    v5 = [v4 length] != 0;
  }

  else
  {
    v2 = 0;
    v5 = 0;
    v3 = v1;
  }

LABEL_7:
  return v5;
}

uint64_t PXDisplayAssetContentIsPreviewable(void *a1)
{
  v1 = a1;
  if (!objc_opt_class() || (objc_opt_isKindOfClass() & 1) == 0)
  {

    v2 = 0;
    goto LABEL_6;
  }

  v2 = v1;

  if (!v2)
  {
LABEL_6:
    v3 = 1;
    goto LABEL_7;
  }

  v3 = [v2 px_isContentPreviewable];
LABEL_7:

  return v3;
}

id PXDisplayAssetLocation(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CLLocation * _Nullable PXDisplayAssetLocation(__strong id<PXDisplayAsset> _Nonnull)"];
    [v6 handleFailureInFunction:v7 file:@"PXPHDisplayAssetUtilities.m" lineNumber:89 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v2 = v1;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 location];

  return v4;
}

void image_queue_release(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  CAImageQueueUnregisterBuffer();
  v5 = PLUIGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134218240;
    v7 = v4;
    v8 = 2048;
    v9 = a2;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEBUG, "PXImageQueueLayer(%p) released buffer %llu", &v6, 0x16u);
  }
}

void sub_1A4BEDFE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__47617(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void std::__hash_table<std::__hash_value_type<PXTileIdentifier,unsigned long>,std::__unordered_map_hasher<PXTileIdentifier,std::__hash_value_type<PXTileIdentifier,unsigned long>,std::hash<PXTileIdentifier>,std::equal_to<PXTileIdentifier>,true>,std::__unordered_map_equal<PXTileIdentifier,std::__hash_value_type<PXTileIdentifier,unsigned long>,std::equal_to<PXTileIdentifier>,std::hash<PXTileIdentifier>,true>,std::allocator<std::__hash_value_type<PXTileIdentifier,unsigned long>>>::__erase_unique<PXTileIdentifier>(void *a1, unint64_t *a2)
{
  v3 = std::__hash_table<std::__hash_value_type<PXTileIdentifier,unsigned long>,std::__unordered_map_hasher<PXTileIdentifier,std::__hash_value_type<PXTileIdentifier,unsigned long>,std::hash<PXTileIdentifier>,std::equal_to<PXTileIdentifier>,true>,std::__unordered_map_equal<PXTileIdentifier,std::__hash_value_type<PXTileIdentifier,unsigned long>,std::equal_to<PXTileIdentifier>,std::hash<PXTileIdentifier>,true>,std::allocator<std::__hash_value_type<PXTileIdentifier,unsigned long>>>::find<PXTileIdentifier>(a1, a2);
  if (v3)
  {
    v4 = a1[1];
    v5 = v3[1];
    v6 = vcnt_s8(v4);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] > 1uLL)
    {
      if (v5 >= *&v4)
      {
        v5 %= *&v4;
      }
    }

    else
    {
      v5 &= *&v4 - 1;
    }

    v7 = *(*a1 + 8 * v5);
    do
    {
      v8 = v7;
      v7 = *v7;
    }

    while (v7 != v3);
    if (v8 == a1 + 2)
    {
      goto LABEL_20;
    }

    v9 = v8[1];
    if (v6.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v5)
    {
LABEL_20:
      if (!*v3)
      {
        goto LABEL_21;
      }

      v10 = *(*v3 + 8);
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v4)
        {
          v10 %= *&v4;
        }
      }

      else
      {
        v10 &= *&v4 - 1;
      }

      if (v10 != v5)
      {
LABEL_21:
        *(*a1 + 8 * v5) = 0;
      }
    }

    v11 = *v3;
    if (*v3)
    {
      v12 = *(v11 + 8);
      if (v6.u32[0] > 1uLL)
      {
        if (v12 >= *&v4)
        {
          v12 %= *&v4;
        }
      }

      else
      {
        v12 &= *&v4 - 1;
      }

      if (v12 != v5)
      {
        *(*a1 + 8 * v12) = v8;
        v11 = *v3;
      }
    }

    *v8 = v11;
    *v3 = 0;
    --a1[3];

    operator delete(v3);
  }
}

void *std::__hash_table<std::__hash_value_type<PXTileIdentifier,unsigned long>,std::__unordered_map_hasher<PXTileIdentifier,std::__hash_value_type<PXTileIdentifier,unsigned long>,std::hash<PXTileIdentifier>,std::equal_to<PXTileIdentifier>,true>,std::__unordered_map_equal<PXTileIdentifier,std::__hash_value_type<PXTileIdentifier,unsigned long>,std::equal_to<PXTileIdentifier>,std::hash<PXTileIdentifier>,true>,std::allocator<std::__hash_value_type<PXTileIdentifier,unsigned long>>>::find<PXTileIdentifier>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = 0;
    v4 = *a2;
    do
    {
      v4 ^= a2[v3 + 1] << v3;
      ++v3;
    }

    while (v2 != v3);
  }

  else
  {
    v4 = 0;
  }

  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v4;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v4)
      {
        v11 = result[2];
        v12 = v11 == v2;
        if (v11)
        {
          v13 = v11 == v2;
        }

        else
        {
          v13 = 0;
        }

        if (v13)
        {
          v14 = result + 3;
          v15 = 1;
          do
          {
            v17 = *v14++;
            v16 = v17;
            v18 = a2[v15];
            v12 = v17 == v18;
            if (v15 >= v2)
            {
              break;
            }

            ++v15;
          }

          while (v16 == v18);
        }

        if (v12)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v5)
          {
            v10 %= *&v5;
          }
        }

        else
        {
          v10 &= *&v5 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void sub_1A4BEFA60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10)
{
  a10.super_class = PXTileStatePool;
  [(_Unwind_Exception *)&a10 dealloc];
  _Unwind_Resume(a1);
}

void sub_1A4BF1D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__48003(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A4BF1ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4BF2CB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4BF4900(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4BF6254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__48838(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id PXLocalizedStringFromInteger(uint64_t a1)
{
  if (PXLocalizedStringFromInteger_onceToken != -1)
  {
    dispatch_once(&PXLocalizedStringFromInteger_onceToken, &__block_literal_global_408);
  }

  v2 = PXLocalizedStringFromInteger_decimalCountFormatter;
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
  v4 = [v2 stringFromNumber:v3];

  return v4;
}

uint64_t __PXLocalizedStringFromInteger_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = PXLocalizedStringFromInteger_decimalCountFormatter;
  PXLocalizedStringFromInteger_decimalCountFormatter = v0;

  v2 = PXLocalizedStringFromInteger_decimalCountFormatter;
  v3 = [MEMORY[0x1E695DF58] currentLocale];
  [v2 setLocale:v3];

  [PXLocalizedStringFromInteger_decimalCountFormatter setGeneratesDecimalNumbers:1];
  v4 = PXLocalizedStringFromInteger_decimalCountFormatter;

  return [v4 setNumberStyle:1];
}

id PXLocalizedSharedAlbumsString(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull PXLocalizedSharedAlbumsString(NSString *__strong _Nonnull)"];
    [v6 handleFailureInFunction:v7 file:@"PXLocalization.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  v2 = [MEMORY[0x1E696AAE8] px_bundle];
  v3 = [v2 localizedStringForKey:v1 value:&stru_1F1741150 table:@"PhotosUICoreSharedAlbums"];
  v4 = _Workaround_57367996_IfNecessary(v3);

  return v4;
}

id PXLocalizedSharedCollectionsString(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull PXLocalizedSharedCollectionsString(NSString *__strong _Nonnull)"];
    [v6 handleFailureInFunction:v7 file:@"PXLocalization.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  v2 = [MEMORY[0x1E696AAE8] px_bundle];
  v3 = [v2 localizedStringForKey:v1 value:&stru_1F1741150 table:@"PhotosUICoreSharedCollections"];
  v4 = _Workaround_57367996_IfNecessary(v3);

  return v4;
}

id PXLocalizedSharedLibraryString(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull PXLocalizedSharedLibraryString(NSString *__strong _Nonnull)"];
    [v6 handleFailureInFunction:v7 file:@"PXLocalization.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  v2 = [MEMORY[0x1E696AAE8] px_bundle];
  v3 = [v2 localizedStringForKey:v1 value:&stru_1F1741150 table:@"PhotosUICoreSharedLibrary"];
  v4 = _Workaround_57367996_IfNecessary(v3);

  return v4;
}

id PXLocalizedStoryPromptSuggestionsString(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull PXLocalizedStoryPromptSuggestionsString(NSString *__strong _Nonnull)"];
    [v6 handleFailureInFunction:v7 file:@"PXLocalization.m" lineNumber:96 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  v2 = [MEMORY[0x1E696AAE8] px_bundle];
  v3 = [v2 localizedStringForKey:v1 value:&stru_1F1741150 table:@"PhotosUICoreStoryPromptSuggestions"];
  v4 = _Workaround_57367996_IfNecessary(v3);

  return v4;
}

id PXLocalizedAttributedStringFromTable(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSAttributedString * _Nonnull PXLocalizedAttributedStringFromTable(NSString *__strong _Nonnull, NSString *__strong _Nonnull)"}];
    [v9 handleFailureInFunction:v10 file:@"PXLocalization.m" lineNumber:163 description:{@"Invalid parameter not satisfying: %@", @"key"}];

    if (v5)
    {
      goto LABEL_3;
    }
  }

  v11 = [MEMORY[0x1E696AAA8] currentHandler];
  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSAttributedString * _Nonnull PXLocalizedAttributedStringFromTable(NSString *__strong _Nonnull, NSString *__strong _Nonnull)"}];
  [v11 handleFailureInFunction:v12 file:@"PXLocalization.m" lineNumber:164 description:{@"Invalid parameter not satisfying: %@", @"table"}];

LABEL_3:
  v6 = [MEMORY[0x1E696AAE8] px_bundle];
  v7 = [v6 localizedAttributedStringForKey:v3 value:&stru_1F1741150 table:v5];

  return v7;
}

id PXLocalizedDetailedCountsDescription(void *a1)
{
  if (*a1 == 0x7FFFFFFFFFFFFFFFLL || a1[1] == 0x7FFFFFFFFFFFFFFFLL || a1[2] == 0x7FFFFFFFFFFFFFFFLL)
  {
    PXAssertGetLog();
  }

  v3 = PLLocalizedCountDescription();

  return v3;
}

id PXLocalizedStringForDetailedCounts(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (*a1 == 0x7FFFFFFFFFFFFFFFLL || a1[1] == 0x7FFFFFFFFFFFFFFFLL || a1[2] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString * _Nonnull PXLocalizedStringForDetailedCounts(PXDisplayAssetDetailedCounts, NSString *__strong _Nonnull, NSString *__strong _Nonnull, NSString *__strong _Nonnull)"}];
    [v20 handleFailureInFunction:v21 file:@"PXLocalization.m" lineNumber:194 description:{@"Invalid parameter not satisfying: %@", @"PXDisplayAssetDetailedCountsIsValid(detailedCounts)"}];

    if (v7)
    {
LABEL_9:
      if (v8)
      {
        goto LABEL_10;
      }

LABEL_27:
      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString * _Nonnull PXLocalizedStringForDetailedCounts(PXDisplayAssetDetailedCounts, NSString *__strong _Nonnull, NSString *__strong _Nonnull, NSString *__strong _Nonnull)"}];
      [v24 handleFailureInFunction:v25 file:@"PXLocalization.m" lineNumber:196 description:{@"Invalid parameter not satisfying: %@", @"videosKey"}];

      if (v9)
      {
        goto LABEL_11;
      }

      goto LABEL_28;
    }
  }

  else if (v7)
  {
    goto LABEL_9;
  }

  v22 = [MEMORY[0x1E696AAA8] currentHandler];
  v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString * _Nonnull PXLocalizedStringForDetailedCounts(PXDisplayAssetDetailedCounts, NSString *__strong _Nonnull, NSString *__strong _Nonnull, NSString *__strong _Nonnull)"}];
  [v22 handleFailureInFunction:v23 file:@"PXLocalization.m" lineNumber:195 description:{@"Invalid parameter not satisfying: %@", @"photosKey"}];

  if (!v8)
  {
    goto LABEL_27;
  }

LABEL_10:
  if (v9)
  {
    goto LABEL_11;
  }

LABEL_28:
  v26 = [MEMORY[0x1E696AAA8] currentHandler];
  v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString * _Nonnull PXLocalizedStringForDetailedCounts(PXDisplayAssetDetailedCounts, NSString *__strong _Nonnull, NSString *__strong _Nonnull, NSString *__strong _Nonnull)"}];
  [v26 handleFailureInFunction:v27 file:@"PXLocalization.m" lineNumber:197 description:{@"Invalid parameter not satisfying: %@", @"othersKey"}];

LABEL_11:
  v12 = *a1 != 0;
  v13 = a1[2];
  if (!a1[1])
  {
    v12 = 1;
  }

  if (v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    v15 = v9;
  }

  else
  {
    v15 = v8;
  }

  if (*a1 == 0 || a1[1] != 0 || v13 != 0)
  {
    v16 = v15;
  }

  else
  {
    v16 = v7;
  }

  v17 = v16;
  v18 = PXLocalizedStringFromTable(v17, @"PhotosUICore");

  return v18;
}

id PXLocalizedStringForDetailedCountsWithUsage(void *a1, uint64_t a2)
{
  if ((a2 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v2 = a1[1];
    if (v2)
    {
      v3 = (*a1 != 0) + 1;
    }

    else
    {
      v3 = *a1 != 0;
    }

    v4 = a1[2];
    if (v4)
    {
      ++v3;
    }

    if (v3 >= 2)
    {
      v5 = v2 + *a1 + v4;
      a1[1] = 0;
      a1[2] = v5;
      *a1 = 0;
    }
  }

  else if (a2 == 4)
  {
    v6 = MEMORY[0x1E696ADA0];
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1[1] + *a1 + a1[2]];
    v8 = [v6 localizedStringFromNumber:v7 numberStyle:1];

    goto LABEL_12;
  }

  v10 = *a1;
  v11 = a1[2];
  v8 = PXLocalizedDetailedCountsDescription(&v10);
LABEL_12:

  return v8;
}

void PXLocalizedCountsDescription(void *a1)
{
  PXLocalizedStringFromTable(a1, @"PhotosUICore");
  objc_claimAutoreleasedReturnValue();
  PXLocalizedStringWithValidatedFormat();
}

void PXLocalizedCollectionDetailedCountsDescription(uint64_t a1, uint64_t a2)
{
  if (a1 != 0x7FFFFFFFFFFFFFFFLL && a2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a1 && a2)
    {
      PXLocalizedStringFromTable(@"PXCollectionDetailedCountDescriptionAlbumsFolders", @"PhotosUICore");
      objc_claimAutoreleasedReturnValue();
    }

    else
    {
      if (!a2)
      {
        PXLocalizedStringFromTable(@"PXCollectionDetailedCountDescriptionAlbums", @"PhotosUICore");
        objc_claimAutoreleasedReturnValue();
        PXLocalizedStringWithValidatedFormat();
      }

      PXLocalizedStringFromTable(@"PXCollectionDetailedCountDescriptionFolders", @"PhotosUICore");
      objc_claimAutoreleasedReturnValue();
    }

    PXLocalizedStringWithValidatedFormat();
  }

  PXAssertGetLog();
}

id PXLocalizedStringForPersonOrPetAndVisibility(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if (!v6)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString * _Nonnull PXLocalizedStringForPersonOrPetAndVisibility(id<PXPerson>  _Nullable __strong, PXPeoplePetsHomeVisibility, NSString *__strong _Nonnull)"}];
    [v12 handleFailureInFunction:v13 file:@"PXLocalization.m" lineNumber:255 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  v7 = v5;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [PXPeopleUtilities locKeyForPersonOrPet:v8 withVisibility:a2 key:v6];
  v10 = PXLocalizedStringFromTable(v9, @"PhotosUICore");

  return v10;
}

id PXLocalizedStringForPeoplePetsHomeTitle(uint64_t a1)
{
  v1 = [PXPeopleUtilities locKeyForPersonOrPet:0 withVisibility:a1 key:@"PXPeopleTitle"];
  v2 = PXLocalizedStringFromTable(v1, @"PhotosUICore");

  return v2;
}

id PXLocalizedStringForPeople(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v4)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString * _Nonnull PXLocalizedStringForPeople(id<PXFastEnumeration>  _Nullable __strong, NSString *__strong _Nonnull)"}];
    [v8 handleFailureInFunction:v9 file:@"PXLocalization.m" lineNumber:266 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  v5 = [PXPeopleUtilities locKeyForPeople:v3 key:v4];
  v6 = PXLocalizedStringFromTable(v5, @"PhotosUICore");

  return v6;
}

id PXLocalizedAttributedStringForPersonOrPet(void *a1, uint64_t a2, void *a3, void *a4)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSAttributedString * _Nonnull PXLocalizedAttributedStringForPersonOrPet(id<PXPerson>  _Nullable __strong, PXPeoplePetsHomeVisibility, NSArray<NSTermOfAddress *> * _Nullable __strong, NSString *__strong _Nonnull)"}];
    [v20 handleFailureInFunction:v21 file:@"PXLocalization.m" lineNumber:272 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  v10 = v7;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = [MEMORY[0x1E696AAE8] px_bundle];
  v13 = [PXPeopleUtilities locKeyForPersonOrPet:v11 withVisibility:a2 key:v9];
  v14 = [v12 localizedAttributedStringForKey:v13 value:&stru_1F1741150 table:@"PhotosUICore"];

  v15 = MEMORY[0x1E696AAB0];
  v23 = *MEMORY[0x1E696A498];
  if (v8)
  {
    v22 = v8;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  }

  else
  {
    v16 = MEMORY[0x1E695E0F0];
  }

  v24[0] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  v18 = [v15 localizedAttributedStringWithFormat:v14 context:v17];

  if (v8)
  {
  }

  return v18;
}

id PXLocalizedSharedLibraryAttributedString(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v10 = a1;
  v11 = a2;
  if (!v11)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSAttributedString * _Nonnull PXLocalizedSharedLibraryAttributedString(NSArray<NSTermOfAddress *> * _Nullable __strong, NSString *__strong _Nonnull, ...)"}];
    [v19 handleFailureInFunction:v20 file:@"PXLocalization.m" lineNumber:283 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  v12 = [MEMORY[0x1E696AAE8] px_bundle];
  v13 = [v12 localizedAttributedStringForKey:v11 value:&stru_1F1741150 table:@"PhotosUICoreSharedLibrary"];

  v14 = objc_alloc(MEMORY[0x1E696AAB0]);
  v22 = *MEMORY[0x1E696A498];
  if (v10)
  {
    v21 = v10;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
  }

  else
  {
    v15 = MEMORY[0x1E695E0F0];
  }

  v23[0] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  v17 = [v14 initWithFormat:v13 options:0 locale:0 context:v16 arguments:&a9];

  if (v10)
  {
  }

  return v17;
}

id PXLocalizationKeyForMediaType(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  v11 = v7;
  if (a1 != 1)
  {
    v12 = v9;
    if (a1 != 2)
    {
      goto LABEL_5;
    }

    v11 = v8;
  }

  v12 = v11;

LABEL_5:

  return v12;
}

void PXLocalizationKeyByAddingMediaSpecificSuffixForAssets(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v3 count];
  PXMediaTypeForAssets();
}

id PXLocalizationKeyByAddingMediaSpecificSuffix(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = v5;
  if (a2 >= 2)
  {
    v7 = [v5 stringByAppendingString:@"MULTIPLE_"];

    v6 = v7;
  }

  v8 = @"ITEM";
  if (a3 == 2)
  {
    v8 = @"VIDEO";
  }

  if (a3 == 1)
  {
    v9 = @"PHOTO";
  }

  else
  {
    v9 = v8;
  }

  v10 = [v6 stringByAppendingString:v9];

  return v10;
}