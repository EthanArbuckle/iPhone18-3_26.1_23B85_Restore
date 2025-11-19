@interface PXSharedLibrarySourceLibraryInfoMock
- (BOOL)isSharedLibraryNotFoundError:(id)a3;
- (BOOL)presentCustomInformationForError:(id)a3 customTitle:(id *)a4 customMessage:(id *)a5;
- (PXSharedLibraryStatusProvider)sharedLibraryStatusProvider;
- (id)pickerConfiguration;
- (void)fetchEstimatedAssetsCountsForStartDate:(id)a3 personUUIDs:(id)a4 completion:(id)a5;
- (void)fetchEstimatedAssetsCountsShareEverythingPolicyWithCompletion:(id)a3;
- (void)fetchSuggestedStartDateForPersonUUIDs:(id)a3 completion:(id)a4;
@end

@implementation PXSharedLibrarySourceLibraryInfoMock

- (BOOL)isSharedLibraryNotFoundError:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    if ([v5 isEqualToString:@"PXSharedLibraryErrorDomain"])
    {
      v6 = [v4 code] == -1002;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)presentCustomInformationForError:(id)a3 customTitle:(id *)a4 customMessage:(id *)a5
{
  v9 = a3;
  if (a4)
  {
    if (a5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXSharedLibrarySourceLibraryInfoMock.m" lineNumber:95 description:{@"Invalid parameter not satisfying: %@", @"customTitle"}];

    if (a5)
    {
      goto LABEL_3;
    }
  }

  v13 = [MEMORY[0x1E696AAA8] currentHandler];
  [v13 handleFailureInMethod:a2 object:self file:@"PXSharedLibrarySourceLibraryInfoMock.m" lineNumber:96 description:{@"Invalid parameter not satisfying: %@", @"customMessage"}];

LABEL_3:
  v10 = [(PXSharedLibrarySourceLibraryInfoMock *)self isSharedLibraryNotFoundError:v9];
  if (v10)
  {
    *a4 = PXLocalizedSharedLibraryString(@"PXSharedLibraryFetchInvitationFailureAlertTitle_Permanent");
    *a5 = 0;
  }

  return v10;
}

- (PXSharedLibraryStatusProvider)sharedLibraryStatusProvider
{
  v2 = [(PXSharedLibrarySourceLibraryInfoMock *)self pickerConfiguration];
  v3 = [v2 photoLibrary];
  v4 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:v3];

  return v4;
}

- (id)pickerConfiguration
{
  v2 = objc_alloc_init(MEMORY[0x1E69790E0]);

  return v2;
}

- (void)fetchEstimatedAssetsCountsShareEverythingPolicyWithCompletion:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PXSharedLibrarySourceLibraryInfoMock.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __102__PXSharedLibrarySourceLibraryInfoMock_fetchEstimatedAssetsCountsShareEverythingPolicyWithCompletion___block_invoke;
  block[3] = &unk_1E774C250;
  v9 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __102__PXSharedLibrarySourceLibraryInfoMock_fetchEstimatedAssetsCountsShareEverythingPolicyWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v5 = xmmword_1A5380E90;
  v6 = 0;
  return (*(v3 + 16))(v3, &v5, a3);
}

- (void)fetchEstimatedAssetsCountsForStartDate:(id)a3 personUUIDs:(id)a4 completion:(id)a5
{
  v7 = a5;
  if (!v7)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXSharedLibrarySourceLibraryInfoMock.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __102__PXSharedLibrarySourceLibraryInfoMock_fetchEstimatedAssetsCountsForStartDate_personUUIDs_completion___block_invoke;
  block[3] = &unk_1E774C250;
  v11 = v7;
  v8 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __102__PXSharedLibrarySourceLibraryInfoMock_fetchEstimatedAssetsCountsForStartDate_personUUIDs_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v5 = xmmword_1A5380EA0;
  v6 = 0;
  return (*(v3 + 16))(v3, &v5, a3);
}

- (void)fetchSuggestedStartDateForPersonUUIDs:(id)a3 completion:(id)a4
{
  v4 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__PXSharedLibrarySourceLibraryInfoMock_fetchSuggestedStartDateForPersonUUIDs_completion___block_invoke;
  block[3] = &unk_1E774C250;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __89__PXSharedLibrarySourceLibraryInfoMock_fetchSuggestedStartDateForPersonUUIDs_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E695DF00] now];
  (*(v1 + 16))(v1, v2);
}

@end