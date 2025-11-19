@interface HandleFetchedSharedLibraryInvitation
@end

@implementation HandleFetchedSharedLibraryInvitation

uint64_t ___HandleFetchedSharedLibraryInvitation_block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32));
  }

  return result;
}

void ___HandleFetchedSharedLibraryInvitation_block_invoke_682(id *a1, int a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLSharedLibraryGetLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      v8 = a1[4];
      v9 = a1[5];
      *buf = 138543618;
      v22 = v8;
      v23 = 2112;
      v24 = v9;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Will restore declined Shared Library invitation: %@", buf, 0x16u);
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = ___HandleFetchedSharedLibraryInvitation_block_invoke_683;
    v14[3] = &unk_1E772E098;
    v10 = a1[5];
    v15 = a1[4];
    v16 = a1[6];
    v17 = a1[7];
    v18 = a1[8];
    v20 = a1[9];
    v19 = a1[5];
    [v10 restoreDeclinedInvitationWithCompletion:v14];
  }

  else
  {
    if (v7)
    {
      v11 = a1[4];
      v12 = a1[5];
      *buf = 138543618;
      v22 = v11;
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: User canceled restore of declined Shared Library invitation: %@", buf, 0x16u);
    }

    v13 = a1[9];
    if (v13)
    {
      v13[2](v13, 1, 0);
    }
  }
}

void ___HandleFetchedSharedLibraryInvitation_block_invoke_683(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v7 = PLSharedLibraryGetLog();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 138543618;
      v19 = v9;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Did restore declined Shared Library invitation: %@", buf, 0x16u);
    }

    _ViewInvitation(*(a1 + 40), v5, *(a1 + 48), *(a1 + 56), *(a1 + 32), *(a1 + 72));
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 64);
      *buf = 138543874;
      v19 = v10;
      v20 = 2112;
      v21 = v11;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Failed to restore declined Shared Library invitation: %@, error: %@", buf, 0x20u);
    }

    v12 = PXLocalizedSharedLibraryString(@"PXSharedLibraryFetchInvitationFailureAlertTitle_Transient");
    v13 = PXLocalizedSharedLibraryString(@"PXSharedLibraryGenericFailureAlertMessage");
    v14 = *(a1 + 56);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = ___HandleFetchedSharedLibraryInvitation_block_invoke_684;
    v15[3] = &unk_1E774C2F0;
    v17 = *(a1 + 72);
    v16 = v6;
    PXPresentFailureWithLocalizedTitle(v12, v13, 0, v16, v14, v15);
  }
}

uint64_t ___HandleFetchedSharedLibraryInvitation_block_invoke_684(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32));
  }

  return result;
}

@end