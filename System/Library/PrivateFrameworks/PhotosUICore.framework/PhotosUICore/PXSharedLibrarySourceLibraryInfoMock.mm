@interface PXSharedLibrarySourceLibraryInfoMock
- (BOOL)isSharedLibraryNotFoundError:(id)error;
- (BOOL)presentCustomInformationForError:(id)error customTitle:(id *)title customMessage:(id *)message;
- (PXSharedLibraryStatusProvider)sharedLibraryStatusProvider;
- (id)pickerConfiguration;
- (void)fetchEstimatedAssetsCountsForStartDate:(id)date personUUIDs:(id)ds completion:(id)completion;
- (void)fetchEstimatedAssetsCountsShareEverythingPolicyWithCompletion:(id)completion;
- (void)fetchSuggestedStartDateForPersonUUIDs:(id)ds completion:(id)completion;
@end

@implementation PXSharedLibrarySourceLibraryInfoMock

- (BOOL)isSharedLibraryNotFoundError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (errorCopy)
  {
    domain = [errorCopy domain];
    if ([domain isEqualToString:@"PXSharedLibraryErrorDomain"])
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

- (BOOL)presentCustomInformationForError:(id)error customTitle:(id *)title customMessage:(id *)message
{
  errorCopy = error;
  if (title)
  {
    if (message)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibrarySourceLibraryInfoMock.m" lineNumber:95 description:{@"Invalid parameter not satisfying: %@", @"customTitle"}];

    if (message)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSharedLibrarySourceLibraryInfoMock.m" lineNumber:96 description:{@"Invalid parameter not satisfying: %@", @"customMessage"}];

LABEL_3:
  v10 = [(PXSharedLibrarySourceLibraryInfoMock *)self isSharedLibraryNotFoundError:errorCopy];
  if (v10)
  {
    *title = PXLocalizedSharedLibraryString(@"PXSharedLibraryFetchInvitationFailureAlertTitle_Permanent");
    *message = 0;
  }

  return v10;
}

- (PXSharedLibraryStatusProvider)sharedLibraryStatusProvider
{
  pickerConfiguration = [(PXSharedLibrarySourceLibraryInfoMock *)self pickerConfiguration];
  photoLibrary = [pickerConfiguration photoLibrary];
  v4 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:photoLibrary];

  return v4;
}

- (id)pickerConfiguration
{
  v2 = objc_alloc_init(MEMORY[0x1E69790E0]);

  return v2;
}

- (void)fetchEstimatedAssetsCountsShareEverythingPolicyWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibrarySourceLibraryInfoMock.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __102__PXSharedLibrarySourceLibraryInfoMock_fetchEstimatedAssetsCountsShareEverythingPolicyWithCompletion___block_invoke;
  block[3] = &unk_1E774C250;
  v9 = completionCopy;
  v6 = completionCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __102__PXSharedLibrarySourceLibraryInfoMock_fetchEstimatedAssetsCountsShareEverythingPolicyWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v5 = xmmword_1A5380E90;
  v6 = 0;
  return (*(v3 + 16))(v3, &v5, a3);
}

- (void)fetchEstimatedAssetsCountsForStartDate:(id)date personUUIDs:(id)ds completion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibrarySourceLibraryInfoMock.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __102__PXSharedLibrarySourceLibraryInfoMock_fetchEstimatedAssetsCountsForStartDate_personUUIDs_completion___block_invoke;
  block[3] = &unk_1E774C250;
  v11 = completionCopy;
  v8 = completionCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __102__PXSharedLibrarySourceLibraryInfoMock_fetchEstimatedAssetsCountsForStartDate_personUUIDs_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v5 = xmmword_1A5380EA0;
  v6 = 0;
  return (*(v3 + 16))(v3, &v5, a3);
}

- (void)fetchSuggestedStartDateForPersonUUIDs:(id)ds completion:(id)completion
{
  completionCopy = completion;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__PXSharedLibrarySourceLibraryInfoMock_fetchSuggestedStartDateForPersonUUIDs_completion___block_invoke;
  block[3] = &unk_1E774C250;
  v7 = completionCopy;
  v5 = completionCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __89__PXSharedLibrarySourceLibraryInfoMock_fetchSuggestedStartDateForPersonUUIDs_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E695DF00] now];
  (*(v1 + 16))(v1, v2);
}

@end