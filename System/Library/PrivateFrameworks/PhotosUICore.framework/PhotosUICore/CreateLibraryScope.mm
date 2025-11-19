@interface CreateLibraryScope
@end

@implementation CreateLibraryScope

void ___CreateLibraryScope_block_invoke(void *a1)
{
  v2 = PXLocalizedSharedLibraryString(@"PXSharedLibrary_InvitationTitle");
  v3 = [MEMORY[0x1E69788A8] creationRequestForOwnedLibraryScopeInPreviewStateWithTitle:v2];
  v4 = [v3 placeholderForCreatedLibraryScope];
  v5 = [v4 localIdentifier];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = a1[4];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = ___CreateLibraryScope_block_invoke_2;
  v18[3] = &unk_1E7744F28;
  v10 = v8;
  v19 = v10;
  [v9 enumerateObjectsUsingBlock:v18];
  v11 = a1[5];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = ___CreateLibraryScope_block_invoke_3;
  v16 = &unk_1E7744F28;
  v17 = v10;
  v12 = v10;
  [v11 enumerateObjectsUsingBlock:&v13];
  [v3 addParticipants:{v12, v13, v14, v15, v16}];
}

void ___CreateLibraryScope_block_invoke_4(uint64_t a1, int a2, void *a3)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = v6;
  v8 = *(a1 + 64);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, OS_SIGNPOST_INTERVAL_END, v8, "CreateLibraryScope", "", buf, 2u);
  }

  v9 = PLSharedLibraryGetLog();
  v10 = v9;
  if (a2)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138543362;
      v23 = v11;
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEFAULT, "Did create library scope with identifier: %{public}@", buf, 0xCu);
    }

    v10 = [*(a1 + 40) librarySpecificFetchOptions];
    v12 = MEMORY[0x1E69788A0];
    v26[0] = *(*(*(a1 + 56) + 8) + 40);
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    v14 = [v12 fetchLibraryScopesWithLocalIdentifiers:v13 options:v10];

    v15 = [v14 firstObject];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v16 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138543618;
      v23 = v16;
      v24 = 2112;
      v25 = v5;
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_ERROR, "Failed to create library scope with identifier: %{public}@, error: %@", buf, 0x16u);
    }

    v15 = 0;
  }

  v17 = *(a1 + 48);
  if (v17)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___CreateLibraryScope_block_invoke_627;
    block[3] = &unk_1E774A0E0;
    v21 = v17;
    v19 = v15;
    v20 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void ___CreateLibraryScope_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E6978AC8] creationRequestForShareParticipantWithEmailAddress:a2 permission:3];
  v3 = [v4 placeholderForCreatedShareParticipant];
  [*(a1 + 32) addObject:v3];
}

void ___CreateLibraryScope_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E6978AC8] creationRequestForShareParticipantWithPhoneNumber:a2 permission:3];
  v3 = [v4 placeholderForCreatedShareParticipant];
  [*(a1 + 32) addObject:v3];
}

@end