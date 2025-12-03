@interface PXSharedLibrarySourceLibraryInfoPhotoKit
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)assetsCountsForAssetLocalIdentifiers:(SEL)identifiers;
- (BOOL)_isCPLExitModeError:(id)error;
- (BOOL)_isRegionUnsupportedError:(id)error;
- (BOOL)_isTooManyParticipantsError:(id)error;
- (BOOL)_isU13RestrictedError:(id)error;
- (BOOL)isCloudPhotoLibraryEnabled;
- (BOOL)isCloudPhotoLibraryExiting;
- (BOOL)isCloudPhotoLibraryInitialSyncCompleted;
- (BOOL)isFailedToURLFetchOwnedSharedLibraryError:(id)error;
- (BOOL)isSharedLibraryNotFoundError:(id)error;
- (BOOL)isSystemPhotoLibrary;
- (BOOL)presentCustomInformationForError:(id)error customTitle:(id *)title customMessage:(id *)message;
- (BOOL)presentServerGeneratedMessageForError:(id)error customMessage:(id *)message learnMoreURL:(id *)l;
- (NSString)description;
- (OS_dispatch_queue)queue;
- (PXSharedLibrarySourceLibraryInfoPhotoKit)init;
- (PXSharedLibrarySourceLibraryInfoPhotoKit)initWithPhotoLibrary:(id)library;
- (PXSharedLibraryStatusProvider)sharedLibraryStatusProvider;
- (id)createDataSourceManager;
- (id)pickerConfiguration;
- (void)createPreviewWithEmailAddresses:(id)addresses phoneNumbers:(id)numbers autoSharePolicy:(int64_t)policy startDate:(id)date personUUIDs:(id)ds progress:(id)progress presentationEnvironment:(id)environment withCompletionHandler:(id)self0;
- (void)createSharedLibraryWithEmailAddresses:(id)addresses phoneNumbers:(id)numbers autoSharePolicy:(int64_t)policy startDate:(id)date personUUIDs:(id)ds progress:(id)progress presentationEnvironment:(id)environment withCompletionHandler:(id)self0;
- (void)fetchEstimatedAssetsCountsForExit:(BOOL)exit imageCount:(unint64_t *)count videoCount:(unint64_t *)videoCount audioCount:(unint64_t *)audioCount itemCount:(unint64_t *)itemCount;
- (void)fetchEstimatedAssetsCountsForStartDate:(id)date personUUIDs:(id)ds completion:(id)completion;
- (void)fetchEstimatedAssetsCountsShareEverythingPolicyWithCompletion:(id)completion;
- (void)fetchSuggestedStartDateForPersonUUIDs:(id)ds completion:(id)completion;
@end

@implementation PXSharedLibrarySourceLibraryInfoPhotoKit

- (BOOL)_isCPLExitModeError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (errorCopy)
  {
    domain = [errorCopy domain];
    if ([domain isEqualToString:*MEMORY[0x1E6978F50]])
    {
      v6 = [v4 code] == 6007;
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

- (BOOL)_isTooManyParticipantsError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (errorCopy)
  {
    domain = [errorCopy domain];
    if ([domain isEqualToString:*MEMORY[0x1E6978F50]])
    {
      v6 = [v4 code] == 6011;
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

- (BOOL)_isRegionUnsupportedError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (errorCopy)
  {
    domain = [errorCopy domain];
    if ([domain isEqualToString:*MEMORY[0x1E6978F50]])
    {
      v6 = [v4 code] == 8504;
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

- (BOOL)_isU13RestrictedError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (errorCopy)
  {
    domain = [errorCopy domain];
    if ([domain isEqualToString:*MEMORY[0x1E6978F50]])
    {
      v6 = [v4 code] == 8503;
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

- (BOOL)isFailedToURLFetchOwnedSharedLibraryError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (errorCopy)
  {
    domain = [errorCopy domain];
    if ([domain isEqualToString:*MEMORY[0x1E6978F50]])
    {
      v6 = [v4 code] == 8505;
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

- (BOOL)isSharedLibraryNotFoundError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (errorCopy)
  {
    domain = [errorCopy domain];
    if ([domain isEqualToString:*MEMORY[0x1E6978F50]] && objc_msgSend(v4, "code") == 6003)
    {
      v6 = 1;
    }

    else
    {
      domain2 = [v4 domain];
      if ([domain2 isEqualToString:@"PXSharedLibraryErrorDomain"])
      {
        v6 = [v4 code] == -1002;
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)presentServerGeneratedMessageForError:(id)error customMessage:(id *)message learnMoreURL:(id *)l
{
  errorCopy = error;
  if (message)
  {
    if (l)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibrarySourceLibraryInfoPhotoKit.m" lineNumber:278 description:{@"Invalid parameter not satisfying: %@", @"customMessage"}];

    if (l)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSharedLibrarySourceLibraryInfoPhotoKit.m" lineNumber:279 description:{@"Invalid parameter not satisfying: %@", @"learnMoreURL"}];

LABEL_3:
  userInfo = [errorCopy userInfo];
  v11 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E6978FC0]];

  userInfo2 = [errorCopy userInfo];
  v13 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x1E6978E80]];

  v14 = [v11 length];
  if (v14)
  {
    v15 = v11;
    *message = v11;
    v16 = v13;
    *l = v13;
  }

  return v14 != 0;
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibrarySourceLibraryInfoPhotoKit.m" lineNumber:245 description:{@"Invalid parameter not satisfying: %@", @"customTitle"}];

    if (message)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSharedLibrarySourceLibraryInfoPhotoKit.m" lineNumber:246 description:{@"Invalid parameter not satisfying: %@", @"customMessage"}];

LABEL_3:
  if ([(PXSharedLibrarySourceLibraryInfoPhotoKit *)self isSharedLibraryNotFoundError:errorCopy])
  {
    *title = PXLocalizedSharedLibraryString(@"PXSharedLibraryFetchInvitationFailureAlertTitle_Permanent");
    v10 = @"PXSharedLibraryFetchInvitationFailureAlertMessage_ShareNotFound";
  }

  else if ([(PXSharedLibrarySourceLibraryInfoPhotoKit *)self _isU13RestrictedError:errorCopy])
  {
    *title = PXLocalizedSharedLibraryString(@"PXSharedLibraryAcceptInvitationFailureAlertTitle_Permanent");
    v10 = @"PXSharedLibraryAcceptInvitationFailureAlertMessage_U13Restricted";
  }

  else if ([(PXSharedLibrarySourceLibraryInfoPhotoKit *)self _isRegionUnsupportedError:errorCopy])
  {
    *title = PXLocalizedSharedLibraryString(@"PXSharedLibraryAcceptInvitationFailureAlertTitle_Permanent");
    v10 = @"PXSharedLibraryAcceptInvitationFailureAlertMessage_RegionUnsupported";
  }

  else
  {
    if ([(PXSharedLibrarySourceLibraryInfoPhotoKit *)self _isTooManyParticipantsError:errorCopy])
    {
      *title = PXLocalizedSharedLibraryString(@"PXSharedLibraryAddParticipantsFailureAlertTitle_TooManyParticipants");
      v13 = MEMORY[0x1E696AEC0];
      v14 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAddParticipantsFailureAlertMessageFormat_%lu_TooManyParticipants");
      *message = [v13 localizedStringWithFormat:v14, 5];

      goto LABEL_10;
    }

    if (![(PXSharedLibrarySourceLibraryInfoPhotoKit *)self _isCPLExitModeError:errorCopy])
    {
      v11 = 0;
      goto LABEL_11;
    }

    *title = PXLocalizedSharedLibraryString(@"PXSharedLibraryPublishFailureAlertTitle_CPLExitMode");
    v10 = @"PXSharedLibraryPublishFailureAlertMessage_CPLExitMode";
  }

  *message = PXLocalizedSharedLibraryString(v10);
LABEL_10:
  v11 = 1;
LABEL_11:

  return v11;
}

- (void)createPreviewWithEmailAddresses:(id)addresses phoneNumbers:(id)numbers autoSharePolicy:(int64_t)policy startDate:(id)date personUUIDs:(id)ds progress:(id)progress presentationEnvironment:(id)environment withCompletionHandler:(id)self0
{
  handlerCopy = handler;
  environmentCopy = environment;
  progressCopy = progress;
  dsCopy = ds;
  dateCopy = date;
  numbersCopy = numbers;
  addressesCopy = addresses;
  if (policy == 2)
  {
    v24 = 2;
  }

  else
  {
    v24 = policy == 1;
  }

  photoLibrary = [(PXSharedLibrarySourceLibraryInfoPhotoKit *)self photoLibrary];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __182__PXSharedLibrarySourceLibraryInfoPhotoKit_createPreviewWithEmailAddresses_phoneNumbers_autoSharePolicy_startDate_personUUIDs_progress_presentationEnvironment_withCompletionHandler___block_invoke;
  v27[3] = &unk_1E7747790;
  v28 = handlerCopy;
  v26 = handlerCopy;
  PXSharedLibraryCreatePreviewLibraryScope(photoLibrary, addressesCopy, numbersCopy, v24, dateCopy, dsCopy, progressCopy, environmentCopy, v27);
}

void __182__PXSharedLibrarySourceLibraryInfoPhotoKit_createPreviewWithEmailAddresses_phoneNumbers_autoSharePolicy_startDate_personUUIDs_progress_presentationEnvironment_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[PXSharedLibraryPhotoKit alloc] initWithLibraryScope:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)createSharedLibraryWithEmailAddresses:(id)addresses phoneNumbers:(id)numbers autoSharePolicy:(int64_t)policy startDate:(id)date personUUIDs:(id)ds progress:(id)progress presentationEnvironment:(id)environment withCompletionHandler:(id)self0
{
  handlerCopy = handler;
  environmentCopy = environment;
  progressCopy = progress;
  dsCopy = ds;
  dateCopy = date;
  numbersCopy = numbers;
  addressesCopy = addresses;
  if (policy == 2)
  {
    v24 = 2;
  }

  else
  {
    v24 = policy == 1;
  }

  photoLibrary = [(PXSharedLibrarySourceLibraryInfoPhotoKit *)self photoLibrary];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __188__PXSharedLibrarySourceLibraryInfoPhotoKit_createSharedLibraryWithEmailAddresses_phoneNumbers_autoSharePolicy_startDate_personUUIDs_progress_presentationEnvironment_withCompletionHandler___block_invoke;
  v27[3] = &unk_1E7747790;
  v28 = handlerCopy;
  v26 = handlerCopy;
  PXSharedLibrarySetupLibraryScope(photoLibrary, addressesCopy, numbersCopy, v24, dateCopy, dsCopy, progressCopy, environmentCopy, v27);
}

void __188__PXSharedLibrarySourceLibraryInfoPhotoKit_createSharedLibraryWithEmailAddresses_phoneNumbers_autoSharePolicy_startDate_personUUIDs_progress_presentationEnvironment_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[PXSharedLibraryPhotoKit alloc] initWithLibraryScope:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (PXSharedLibraryStatusProvider)sharedLibraryStatusProvider
{
  photoLibrary = [(PXSharedLibrarySourceLibraryInfoPhotoKit *)self photoLibrary];
  v3 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:photoLibrary];

  return v3;
}

- (BOOL)isCloudPhotoLibraryInitialSyncCompleted
{
  photoLibrary = [(PXSharedLibrarySourceLibraryInfoPhotoKit *)self photoLibrary];
  cplStatus = [photoLibrary cplStatus];

  initialSyncDate = [cplStatus initialSyncDate];
  LOBYTE(photoLibrary) = initialSyncDate != 0;

  return photoLibrary;
}

- (BOOL)isCloudPhotoLibraryExiting
{
  photoLibrary = [(PXSharedLibrarySourceLibraryInfoPhotoKit *)self photoLibrary];
  cplStatus = [photoLibrary cplStatus];
  exitDeleteTime = [cplStatus exitDeleteTime];
  v5 = exitDeleteTime != 0;

  return v5;
}

- (BOOL)isCloudPhotoLibraryEnabled
{
  photoLibrary = [(PXSharedLibrarySourceLibraryInfoPhotoKit *)self photoLibrary];
  isCloudPhotoLibraryEnabled = [photoLibrary isCloudPhotoLibraryEnabled];

  return isCloudPhotoLibraryEnabled;
}

- (BOOL)isSystemPhotoLibrary
{
  photoLibrary = [(PXSharedLibrarySourceLibraryInfoPhotoKit *)self photoLibrary];
  isSystemPhotoLibrary = [photoLibrary isSystemPhotoLibrary];

  return isSystemPhotoLibrary;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)assetsCountsForAssetLocalIdentifiers:(SEL)identifiers
{
  v6 = MEMORY[0x1E6978630];
  v7 = a4;
  photoLibrary = [(PXSharedLibrarySourceLibraryInfoPhotoKit *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  v14 = [v6 fetchAssetsWithLocalIdentifiers:v7 options:librarySpecificFetchOptions];

  v10 = [v14 countOfAssetsWithMediaType:1];
  v11 = [v14 countOfAssetsWithMediaType:2];
  v12 = [v14 countOfAssetsWithMediaType:3];
  retstr->var0 = v10;
  retstr->var1 = v11;
  retstr->var2 = v12;

  return result;
}

- (id)pickerConfiguration
{
  v3 = objc_alloc(MEMORY[0x1E69790E0]);
  photoLibrary = [(PXSharedLibrarySourceLibraryInfoPhotoKit *)self photoLibrary];
  v5 = [v3 initWithPhotoLibraryAndOnlyReturnsIdentifiers:photoLibrary];

  [v5 setDisabledCapabilities:16];
  [v5 _setDisabledPrivateCapabilities:4];

  return v5;
}

- (id)createDataSourceManager
{
  photoLibrary = [(PXSharedLibrarySourceLibraryInfoPhotoKit *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  v4 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:2 subtype:209 options:librarySpecificFetchOptions];
  v5 = [[PXPhotosDataSourceConfiguration alloc] initWithCollectionListFetchResult:v4 options:0];
  v6 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v5];
  v7 = [[PXPhotoKitAssetsDataSourceManager alloc] initWithPhotosDataSource:v6];

  return v7;
}

- (void)fetchEstimatedAssetsCountsForExit:(BOOL)exit imageCount:(unint64_t *)count videoCount:(unint64_t *)videoCount audioCount:(unint64_t *)audioCount itemCount:(unint64_t *)itemCount
{
  exitCopy = exit;
  photoLibrary = [(PXSharedLibrarySourceLibraryInfoPhotoKit *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setIncludeHiddenAssets:1];
  [librarySpecificFetchOptions setIncludeTrashedAssets:1];
  [MEMORY[0x1E69788A0] estimatedAssetCountToMoveForExitRetentionPolicyContributedOnly:exitCopy imageCount:count videoCount:videoCount audioCount:audioCount itemCount:itemCount options:librarySpecificFetchOptions error:0];
}

- (void)fetchEstimatedAssetsCountsShareEverythingPolicyWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibrarySourceLibraryInfoPhotoKit.m" lineNumber:126 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  photoLibrary = [(PXSharedLibrarySourceLibraryInfoPhotoKit *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  queue = [(PXSharedLibrarySourceLibraryInfoPhotoKit *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __106__PXSharedLibrarySourceLibraryInfoPhotoKit_fetchEstimatedAssetsCountsShareEverythingPolicyWithCompletion___block_invoke;
  block[3] = &unk_1E774C2F0;
  v13 = librarySpecificFetchOptions;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = librarySpecificFetchOptions;
  dispatch_async(queue, block);
}

void __106__PXSharedLibrarySourceLibraryInfoPhotoKit_fetchEstimatedAssetsCountsShareEverythingPolicyWithCompletion___block_invoke(uint64_t a1)
{
  v6 = 0uLL;
  v7 = 0;
  _FetchCountsForRulesAndPolicy(&v6, MEMORY[0x1E695E0F0], 1, *(a1 + 32));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __106__PXSharedLibrarySourceLibraryInfoPhotoKit_fetchEstimatedAssetsCountsShareEverythingPolicyWithCompletion___block_invoke_2;
  block[3] = &unk_1E7747768;
  v3 = *(a1 + 40);
  v4 = v6;
  v5 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __106__PXSharedLibrarySourceLibraryInfoPhotoKit_fetchEstimatedAssetsCountsShareEverythingPolicyWithCompletion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  return v2(v1, &v4);
}

- (void)fetchEstimatedAssetsCountsForStartDate:(id)date personUUIDs:(id)ds completion:(id)completion
{
  dateCopy = date;
  dsCopy = ds;
  completionCopy = completion;
  if (!completionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibrarySourceLibraryInfoPhotoKit.m" lineNumber:92 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  photoLibrary = [(PXSharedLibrarySourceLibraryInfoPhotoKit *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  queue = [(PXSharedLibrarySourceLibraryInfoPhotoKit *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __106__PXSharedLibrarySourceLibraryInfoPhotoKit_fetchEstimatedAssetsCountsForStartDate_personUUIDs_completion___block_invoke;
  block[3] = &unk_1E774BDB0;
  v21 = dateCopy;
  v22 = dsCopy;
  v23 = librarySpecificFetchOptions;
  v24 = completionCopy;
  v15 = completionCopy;
  v16 = librarySpecificFetchOptions;
  v17 = dsCopy;
  v18 = dateCopy;
  dispatch_async(queue, block);
}

void __106__PXSharedLibrarySourceLibraryInfoPhotoKit_fetchEstimatedAssetsCountsForStartDate_personUUIDs_completion___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (*(a1 + 32))
  {
    v3 = objc_alloc_init(MEMORY[0x1E69788C0]);
    v4 = PXSharedLibraryDateConditionForSelectedStartDate(*(a1 + 32));
    [v3 addCondition:v4];
    [v2 addObject:v3];
  }

  if ([*(a1 + 40) count])
  {
    v5 = objc_alloc_init(MEMORY[0x1E69788C0]);
    v6 = PXSharedLibraryPersonConditionForSelectedPeople(*(a1 + 40));
    [v5 addCondition:v6];
    [v2 addObject:v5];
  }

  v11 = *off_1E7721F78;
  v12 = *(off_1E7721F78 + 2);
  if ([v2 count])
  {
    _FetchCountsForRulesAndPolicy(&v11, v2, 2, *(a1 + 48));
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __106__PXSharedLibrarySourceLibraryInfoPhotoKit_fetchEstimatedAssetsCountsForStartDate_personUUIDs_completion___block_invoke_2;
  v7[3] = &unk_1E7747768;
  v8 = *(a1 + 56);
  v9 = v11;
  v10 = v12;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

uint64_t __106__PXSharedLibrarySourceLibraryInfoPhotoKit_fetchEstimatedAssetsCountsForStartDate_personUUIDs_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  return v2(v1, &v4);
}

- (void)fetchSuggestedStartDateForPersonUUIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  photoLibrary = [(PXSharedLibrarySourceLibraryInfoPhotoKit *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  queue = [(PXSharedLibrarySourceLibraryInfoPhotoKit *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__PXSharedLibrarySourceLibraryInfoPhotoKit_fetchSuggestedStartDateForPersonUUIDs_completion___block_invoke;
  block[3] = &unk_1E774A0E0;
  v15 = dsCopy;
  v16 = librarySpecificFetchOptions;
  v17 = completionCopy;
  v11 = completionCopy;
  v12 = librarySpecificFetchOptions;
  v13 = dsCopy;
  dispatch_async(queue, block);
}

void __93__PXSharedLibrarySourceLibraryInfoPhotoKit_fetchSuggestedStartDateForPersonUUIDs_completion___block_invoke(id *a1)
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (![a1[4] count] || (v2 = objc_alloc_init(MEMORY[0x1E69788C0]), PXSharedLibraryPersonConditionForSelectedPeople(a1[4]), v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "addCondition:", v3), v4 = MEMORY[0x1E69788C0], v17[0] = v2, objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v17, 1), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "suggestedStartDateForRules:autoSharePolicy:options:error:", v5, 2, a1[5], 0), v6 = objc_claimAutoreleasedReturnValue(), v5, v3, v2, !v6))
  {
    [a1[5] setFetchLimit:1];
    v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
    v16 = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
    [a1[5] setSortDescriptors:v8];

    v9 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:a1[5]];
    v10 = [v9 firstObject];

    v6 = [v10 creationDate];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__PXSharedLibrarySourceLibraryInfoPhotoKit_fetchSuggestedStartDateForPersonUUIDs_completion___block_invoke_2;
  block[3] = &unk_1E774C2F0;
  v11 = a1[6];
  v14 = v6;
  v15 = v11;
  v12 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (OS_dispatch_queue)queue
{
  queue = self->_queue;
  if (!queue)
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_USER_INITIATED, 0);

    v6 = dispatch_queue_create("com.apple.photos.sourcelibraryinfo.fetch", v5);
    v7 = self->_queue;
    self->_queue = v6;

    queue = self->_queue;
  }

  return queue;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  photoLibrary = [(PXSharedLibrarySourceLibraryInfoPhotoKit *)self photoLibrary];
  v6 = [v3 stringWithFormat:@"<%@:%p, photoLibrary:%@>", v4, self, photoLibrary];

  return v6;
}

- (PXSharedLibrarySourceLibraryInfoPhotoKit)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibrarySourceLibraryInfoPhotoKit.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v11.receiver = self;
  v11.super_class = PXSharedLibrarySourceLibraryInfoPhotoKit;
  v7 = [(PXSharedLibrarySourceLibraryInfoPhotoKit *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_photoLibrary, library);
  }

  return v8;
}

- (PXSharedLibrarySourceLibraryInfoPhotoKit)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibrarySourceLibraryInfoPhotoKit.m" lineNumber:34 description:{@"%s is not available as initializer", "-[PXSharedLibrarySourceLibraryInfoPhotoKit init]"}];

  abort();
}

@end