@interface ResetLocalOnlyMode
@end

@implementation ResetLocalOnlyMode

uint64_t ___ResetLocalOnlyMode_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = MEMORY[0x1E69788A0];
  v5 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___ResetLocalOnlyMode_block_invoke_2;
  v8[3] = &unk_1E774C5C0;
  v9 = v3;
  v6 = v3;
  [v4 resetLocalOnlyLibraryScopesAndAllLibraryScopeAssetStatesWithPhotoLibrary:v5 completion:v8];

  return 1;
}

void ___ResetLocalOnlyMode_block_invoke_2(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ResetLocalOnlyMode_block_invoke_3;
    block[3] = &unk_1E774A1B8;
    v11 = @"Successfully reset local-only LibraryScopes";
    v12 = @"All local-only LibraryScopes were deleted and libraryScopeShareStates were reset on all Assets";
    v13 = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);

    v4 = v11;
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Reset action failed: %@", a3];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = ___ResetLocalOnlyMode_block_invoke_4;
    v6[3] = &unk_1E774A1B8;
    v7 = @"Failed to reset local-only LibraryScopes";
    v8 = v5;
    v9 = *(a1 + 32);
    v4 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }
}

@end