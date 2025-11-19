@interface HandleSharedLibraryOrInvitationURL
@end

@implementation HandleSharedLibraryOrInvitationURL

uint64_t ___HandleSharedLibraryOrInvitationURL_block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32));
  }

  return result;
}

void ___HandleSharedLibraryOrInvitationURL_block_invoke_644(uint64_t a1)
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v2 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEFAULT, "Canceled by the user: Handle URL", v5, 2u);
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = PXSharedLibraryUserCanceledErrorWithDebugDescription(@"Handle URL");
    (*(v3 + 16))(v3, 0, v4);
  }
}

void ___HandleSharedLibraryOrInvitationURL_block_invoke_651(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if ((*(*(*(a1 + 88) + 8) + 24) & 1) == 0)
  {
    v7 = *(*(*(a1 + 96) + 8) + 40);
    v8 = *(a1 + 32);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = ___HandleSharedLibraryOrInvitationURL_block_invoke_2;
    v15[3] = &unk_1E772E048;
    v16 = v5;
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v12 = *(a1 + 64);
    *&v13 = v11;
    *(&v13 + 1) = v12;
    *&v14 = v9;
    *(&v14 + 1) = v10;
    v17 = v14;
    v18 = v13;
    v19 = *(a1 + 32);
    v22 = *(a1 + 80);
    v20 = *(a1 + 72);
    v21 = v6;
    PXSharedLibraryDismissProgressAlertWithPresentationEnvironment(v7, v8, v15);
  }
}

void ___HandleSharedLibraryOrInvitationURL_block_invoke_2(uint64_t a1)
{
  v105 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v3 = *(a1 + 40);
      v5 = *(a1 + 48);
      *buf = 138543874;
      *&buf[4] = v3;
      *&buf[12] = 2112;
      *&buf[14] = v4;
      *&buf[22] = 2112;
      v98 = v5;
      _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Did fetch Shared Library: %@ for URL: %@", buf, 0x20u);
    }

    v6 = *(a1 + 64);
    v7 = *(a1 + 72);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 96);
    v11 = *(a1 + 56);
    v12 = v8;
    v13 = v6;
    v14 = v7;
    v15 = v9;
    v86 = v10;
    dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
    if (v12)
    {
      if (v14)
      {
LABEL_6:
        if (![v15 length])
        {
          v83 = [MEMORY[0x1E696AAA8] currentHandler];
          v84 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _HandleFetchedSharedLibraryInvitation(PXSharedLibraryStatusProvider *__strong, __strong id<PXSharedLibrary>, PXSharedLibraryLegacyDevicesFallbackMonitor * _Nullable __strong, __strong id<PXPresentationEnvironment>, NSString *__strong, void (^ _Nullable __strong)(BOOL, NSError * _Nullable __strong))"}];
          [v83 handleFailureInFunction:v84 file:@"PXSharedLibraryUtilities.m" lineNumber:1426 description:{@"Invalid parameter not satisfying: %@", @"senderIdentifier.length"}];
        }

        v16 = v11;
        v17 = v15;
        v18 = PLSharedLibraryGetLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v17;
          _os_log_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: Will perform preconditions check for presenting Shared Library invitation", buf, 0xCu);
        }

        v19 = +[PXSharedLibrarySettings sharedInstance];
        v20 = [v16 fetchExiting];

        v21 = [v19 simulateErrorType];
        v22 = v21;
        if (v20 || v21 == 14)
        {
          v40 = PLSharedLibraryGetLog();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            v41 = &stru_1F1741150;
            if (v22 == 14)
            {
              v41 = @"(Simulated)";
            }

            *buf = 138543618;
            *&buf[4] = v17;
            *&buf[12] = 2114;
            *&buf[14] = v41;
            _os_log_impl(&dword_1A3C1C000, v40, OS_LOG_TYPE_ERROR, "%{public}@: Failed preconditions check for presenting Shared Library invitation: Shared Library Exiting %{public}@", buf, 0x16u);
          }

          v32 = PXLocalizedSharedLibraryString(@"PXSharedLibrary_InvitationAlertTitle_IsExiting");
          v42 = v32;
          v33 = PXLocalizedSharedLibraryString(@"PXSharedLibrary_InvitationAlertMessage_IsExiting");
          v43 = v33;
          v29 = 0;
        }

        else
        {
          v85 = v12;
          v23 = v14;
          v24 = v13;
          v25 = [v16 fetchSharedLibrary];
          v26 = [v19 simulateErrorType];
          v27 = v26;
          if (v25)
          {
            v28 = 1;
          }

          else
          {
            v28 = v26 == 15;
          }

          v29 = !v28;
          v30 = PLSharedLibraryGetLog();
          v31 = v30;
          if (v29)
          {
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              *&buf[4] = v17;
              _os_log_impl(&dword_1A3C1C000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully passed preconditions check for presenting Shared Library invitation", buf, 0xCu);
            }

            v32 = 0;
            v33 = 0;
          }

          else
          {
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              v53 = @"(Simulated)";
              if (v27 != 15)
              {
                v53 = &stru_1F1741150;
              }

              *buf = 138543618;
              *&buf[4] = v17;
              *&buf[12] = 2114;
              *&buf[14] = v53;
              _os_log_impl(&dword_1A3C1C000, v31, OS_LOG_TYPE_ERROR, "%{public}@: Failed preconditions check for presenting Shared Library invitation: Participates in Shared Library %{public}@", buf, 0x16u);
            }

            v32 = PXLocalizedSharedLibraryString(@"PXSharedLibrary_InvitationAlertTitle_HasSharedLibrary_iOS");
            v54 = v32;
            v31 = [v25 owner];
            if ([v31 isCurrentUser])
            {
              v55 = @"PXSharedLibrary_Owner_InvitationAlertMessage_HasSharedLibrary";
            }

            else
            {
              v55 = @"PXSharedLibrary_Participant_InvitationAlertMessage_HasSharedLibrary";
            }

            v33 = PXLocalizedSharedLibraryString(v55);
            v56 = v33;
          }

          v13 = v24;
          v14 = v23;
          v12 = v85;
        }

        v57 = v32;
        v58 = v33;
        if (v29)
        {
          v59 = v86;
          if ([v12 isDeclined])
          {
            v60 = PLSharedLibraryGetLog();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              *&buf[4] = v17;
              *&buf[12] = 2112;
              *&buf[14] = v12;
              _os_log_impl(&dword_1A3C1C000, v60, OS_LOG_TYPE_DEFAULT, "%{public}@: Will confirm restore of declined Shared Library invitation: %@", buf, 0x16u);
            }

            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = ___HandleFetchedSharedLibraryInvitation_block_invoke_682;
            v98 = &unk_1E772E0C0;
            v99 = v17;
            v100 = v12;
            v101 = v16;
            v102 = v13;
            v61 = v14;
            v103 = v61;
            v104 = v86;
            v62 = buf;
            v95[0] = MEMORY[0x1E69E9820];
            v95[1] = 3221225472;
            v95[2] = ___ConfirmRestoringInvitation_block_invoke;
            v95[3] = &unk_1E7733998;
            v96 = v62;
            v63 = [v61 presentAlertWithConfigurationHandler:v95];
          }

          else
          {
            _ViewInvitation(v16, v12, v13, v14, v17, v86);
          }
        }

        else
        {
          v64 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXSharedLibraryErrorDomain" code:-1000 underlyingError:0 debugDescription:{@"%@", v57}];
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = ___HandleFetchedSharedLibraryInvitation_block_invoke;
          v98 = &unk_1E774C2F0;
          v59 = v86;
          v65 = v86;
          v99 = v64;
          v100 = v65;
          v66 = v64;
          PXPresentFailureWithLocalizedTitle(v57, v58, 0, v66, v14, buf);
        }

        return;
      }
    }

    else
    {
      v79 = [MEMORY[0x1E696AAA8] currentHandler];
      v80 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _HandleFetchedSharedLibraryInvitation(PXSharedLibraryStatusProvider *__strong, __strong id<PXSharedLibrary>, PXSharedLibraryLegacyDevicesFallbackMonitor * _Nullable __strong, __strong id<PXPresentationEnvironment>, NSString *__strong, void (^ _Nullable __strong)(BOOL, NSError * _Nullable __strong))"}];
      [v79 handleFailureInFunction:v80 file:@"PXSharedLibraryUtilities.m" lineNumber:1424 description:{@"Invalid parameter not satisfying: %@", @"invitation"}];

      if (v14)
      {
        goto LABEL_6;
      }
    }

    v81 = [MEMORY[0x1E696AAA8] currentHandler];
    v82 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _HandleFetchedSharedLibraryInvitation(PXSharedLibraryStatusProvider *__strong, __strong id<PXSharedLibrary>, PXSharedLibraryLegacyDevicesFallbackMonitor * _Nullable __strong, __strong id<PXPresentationEnvironment>, NSString *__strong, void (^ _Nullable __strong)(BOOL, NSError * _Nullable __strong))"}];
    [v81 handleFailureInFunction:v82 file:@"PXSharedLibraryUtilities.m" lineNumber:1425 description:{@"Invalid parameter not satisfying: %@", @"presentationEnvironment"}];

    goto LABEL_6;
  }

  if ([*(a1 + 80) isFailedToURLFetchOwnedSharedLibraryError:*(a1 + 88)])
  {
    v34 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v36 = *(a1 + 32);
      v35 = *(a1 + 40);
      v37 = *(a1 + 48);
      *buf = 138543874;
      *&buf[4] = v35;
      *&buf[12] = 2112;
      *&buf[14] = v36;
      *&buf[22] = 2112;
      v98 = v37;
      _os_log_impl(&dword_1A3C1C000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@: Failed to URL fetch owned Shared Library: %@ for URL: %@", buf, 0x20u);
    }

    v38 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = *(a1 + 40);
      *buf = 138543362;
      *&buf[4] = v39;
      _os_log_impl(&dword_1A3C1C000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@: Will navigate to Shared Library preferences", buf, 0xCu);
    }

    v92[0] = MEMORY[0x1E69E9820];
    v92[1] = 3221225472;
    v92[2] = ___HandleSharedLibraryOrInvitationURL_block_invoke_653;
    v92[3] = &unk_1E774BD88;
    v93 = *(a1 + 40);
    v94 = *(a1 + 96);
    [PXSystemNavigation navigateToDestination:6 completion:v92];

    return;
  }

  v44 = [*(a1 + 80) isSharedLibraryNotFoundError:*(a1 + 88)];
  v45 = PLSharedLibraryGetLog();
  v46 = v45;
  if (v44)
  {
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v47 = *(a1 + 40);
      v48 = *(a1 + 48);
      *buf = 138543618;
      *&buf[4] = v47;
      *&buf[12] = 2112;
      *&buf[14] = v48;
      v49 = "%{public}@: No Shared Library for URL: %@";
      v50 = v46;
      v51 = OS_LOG_TYPE_DEFAULT;
      v52 = 22;
LABEL_55:
      _os_log_impl(&dword_1A3C1C000, v50, v51, v49, buf, v52);
    }
  }

  else if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
  {
    v67 = *(a1 + 40);
    v68 = *(a1 + 48);
    v69 = *(a1 + 88);
    *buf = 138543874;
    *&buf[4] = v67;
    *&buf[12] = 2112;
    *&buf[14] = v68;
    *&buf[22] = 2112;
    v98 = v69;
    v49 = "%{public}@: Failed to fetch Shared Library for URL: %@, error: %@";
    v50 = v46;
    v51 = OS_LOG_TYPE_ERROR;
    v52 = 32;
    goto LABEL_55;
  }

  v70 = *(a1 + 80);
  v71 = *(a1 + 88);
  v90 = 0;
  v91 = 0;
  v72 = [v70 presentCustomInformationForError:v71 customTitle:&v91 customMessage:&v90];
  v73 = v91;
  v74 = v90;
  if ((v72 & 1) == 0)
  {
    v75 = PXLocalizedSharedLibraryString(@"PXSharedLibraryFetchInvitationFailureAlertTitle_Transient");

    v76 = PXLocalizedSharedLibraryString(@"PXSharedLibraryGenericFailureAlertMessage");

    v73 = v75;
    v74 = v76;
  }

  v77 = *(a1 + 72);
  v87[0] = MEMORY[0x1E69E9820];
  v87[1] = 3221225472;
  v87[2] = ___HandleSharedLibraryOrInvitationURL_block_invoke_654;
  v87[3] = &unk_1E774C2F0;
  v78 = *(a1 + 88);
  v89 = *(a1 + 96);
  v88 = *(a1 + 88);
  PXPresentFailureWithLocalizedTitle(v73, v74, 0, v78, v77, v87);
}

void ___HandleSharedLibraryOrInvitationURL_block_invoke_653(uint64_t a1, int a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLSharedLibraryGetLog();
  v7 = v6;
  if (a2)
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v8 = *(a1 + 32);
    v15 = 138543362;
    v16 = v8;
    v9 = "%{public}@: Did navigate to Shared Library preferences";
    v10 = v7;
    v11 = OS_LOG_TYPE_DEFAULT;
    v12 = 12;
  }

  else
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v13 = *(a1 + 32);
    v15 = 138543618;
    v16 = v13;
    v17 = 2112;
    v18 = v5;
    v9 = "%{public}@: Failed to navigate to Shared Library preferences: %@";
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 22;
  }

  _os_log_impl(&dword_1A3C1C000, v10, v11, v9, &v15, v12);
LABEL_7:

  v14 = *(a1 + 40);
  if (v14)
  {
    (*(v14 + 16))(v14, 1, 0);
  }
}

uint64_t ___HandleSharedLibraryOrInvitationURL_block_invoke_654(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32));
  }

  return result;
}

@end