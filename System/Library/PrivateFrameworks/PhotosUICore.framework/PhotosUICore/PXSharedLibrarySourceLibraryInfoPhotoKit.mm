@interface PXSharedLibrarySourceLibraryInfoPhotoKit
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)assetsCountsForAssetLocalIdentifiers:(SEL)a3;
- (BOOL)_isCPLExitModeError:(id)a3;
- (BOOL)_isRegionUnsupportedError:(id)a3;
- (BOOL)_isTooManyParticipantsError:(id)a3;
- (BOOL)_isU13RestrictedError:(id)a3;
- (BOOL)isCloudPhotoLibraryEnabled;
- (BOOL)isCloudPhotoLibraryExiting;
- (BOOL)isCloudPhotoLibraryInitialSyncCompleted;
- (BOOL)isFailedToURLFetchOwnedSharedLibraryError:(id)a3;
- (BOOL)isSharedLibraryNotFoundError:(id)a3;
- (BOOL)isSystemPhotoLibrary;
- (BOOL)presentCustomInformationForError:(id)a3 customTitle:(id *)a4 customMessage:(id *)a5;
- (BOOL)presentServerGeneratedMessageForError:(id)a3 customMessage:(id *)a4 learnMoreURL:(id *)a5;
- (NSString)description;
- (OS_dispatch_queue)queue;
- (PXSharedLibrarySourceLibraryInfoPhotoKit)init;
- (PXSharedLibrarySourceLibraryInfoPhotoKit)initWithPhotoLibrary:(id)a3;
- (PXSharedLibraryStatusProvider)sharedLibraryStatusProvider;
- (id)createDataSourceManager;
- (id)pickerConfiguration;
- (void)createPreviewWithEmailAddresses:(id)a3 phoneNumbers:(id)a4 autoSharePolicy:(int64_t)a5 startDate:(id)a6 personUUIDs:(id)a7 progress:(id)a8 presentationEnvironment:(id)a9 withCompletionHandler:(id)a10;
- (void)createSharedLibraryWithEmailAddresses:(id)a3 phoneNumbers:(id)a4 autoSharePolicy:(int64_t)a5 startDate:(id)a6 personUUIDs:(id)a7 progress:(id)a8 presentationEnvironment:(id)a9 withCompletionHandler:(id)a10;
- (void)fetchEstimatedAssetsCountsForExit:(BOOL)a3 imageCount:(unint64_t *)a4 videoCount:(unint64_t *)a5 audioCount:(unint64_t *)a6 itemCount:(unint64_t *)a7;
- (void)fetchEstimatedAssetsCountsForStartDate:(id)a3 personUUIDs:(id)a4 completion:(id)a5;
- (void)fetchEstimatedAssetsCountsShareEverythingPolicyWithCompletion:(id)a3;
- (void)fetchSuggestedStartDateForPersonUUIDs:(id)a3 completion:(id)a4;
@end

@implementation PXSharedLibrarySourceLibraryInfoPhotoKit

- (BOOL)_isCPLExitModeError:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    if ([v5 isEqualToString:*MEMORY[0x1E6978F50]])
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

- (BOOL)_isTooManyParticipantsError:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    if ([v5 isEqualToString:*MEMORY[0x1E6978F50]])
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

- (BOOL)_isRegionUnsupportedError:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    if ([v5 isEqualToString:*MEMORY[0x1E6978F50]])
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

- (BOOL)_isU13RestrictedError:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    if ([v5 isEqualToString:*MEMORY[0x1E6978F50]])
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

- (BOOL)isFailedToURLFetchOwnedSharedLibraryError:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    if ([v5 isEqualToString:*MEMORY[0x1E6978F50]])
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

- (BOOL)isSharedLibraryNotFoundError:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    if ([v5 isEqualToString:*MEMORY[0x1E6978F50]] && objc_msgSend(v4, "code") == 6003)
    {
      v6 = 1;
    }

    else
    {
      v7 = [v4 domain];
      if ([v7 isEqualToString:@"PXSharedLibraryErrorDomain"])
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

- (BOOL)presentServerGeneratedMessageForError:(id)a3 customMessage:(id *)a4 learnMoreURL:(id *)a5
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
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"PXSharedLibrarySourceLibraryInfoPhotoKit.m" lineNumber:278 description:{@"Invalid parameter not satisfying: %@", @"customMessage"}];

    if (a5)
    {
      goto LABEL_3;
    }
  }

  v19 = [MEMORY[0x1E696AAA8] currentHandler];
  [v19 handleFailureInMethod:a2 object:self file:@"PXSharedLibrarySourceLibraryInfoPhotoKit.m" lineNumber:279 description:{@"Invalid parameter not satisfying: %@", @"learnMoreURL"}];

LABEL_3:
  v10 = [v9 userInfo];
  v11 = [v10 objectForKeyedSubscript:*MEMORY[0x1E6978FC0]];

  v12 = [v9 userInfo];
  v13 = [v12 objectForKeyedSubscript:*MEMORY[0x1E6978E80]];

  v14 = [v11 length];
  if (v14)
  {
    v15 = v11;
    *a4 = v11;
    v16 = v13;
    *a5 = v13;
  }

  return v14 != 0;
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
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXSharedLibrarySourceLibraryInfoPhotoKit.m" lineNumber:245 description:{@"Invalid parameter not satisfying: %@", @"customTitle"}];

    if (a5)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"PXSharedLibrarySourceLibraryInfoPhotoKit.m" lineNumber:246 description:{@"Invalid parameter not satisfying: %@", @"customMessage"}];

LABEL_3:
  if ([(PXSharedLibrarySourceLibraryInfoPhotoKit *)self isSharedLibraryNotFoundError:v9])
  {
    *a4 = PXLocalizedSharedLibraryString(@"PXSharedLibraryFetchInvitationFailureAlertTitle_Permanent");
    v10 = @"PXSharedLibraryFetchInvitationFailureAlertMessage_ShareNotFound";
  }

  else if ([(PXSharedLibrarySourceLibraryInfoPhotoKit *)self _isU13RestrictedError:v9])
  {
    *a4 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAcceptInvitationFailureAlertTitle_Permanent");
    v10 = @"PXSharedLibraryAcceptInvitationFailureAlertMessage_U13Restricted";
  }

  else if ([(PXSharedLibrarySourceLibraryInfoPhotoKit *)self _isRegionUnsupportedError:v9])
  {
    *a4 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAcceptInvitationFailureAlertTitle_Permanent");
    v10 = @"PXSharedLibraryAcceptInvitationFailureAlertMessage_RegionUnsupported";
  }

  else
  {
    if ([(PXSharedLibrarySourceLibraryInfoPhotoKit *)self _isTooManyParticipantsError:v9])
    {
      *a4 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAddParticipantsFailureAlertTitle_TooManyParticipants");
      v13 = MEMORY[0x1E696AEC0];
      v14 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAddParticipantsFailureAlertMessageFormat_%lu_TooManyParticipants");
      *a5 = [v13 localizedStringWithFormat:v14, 5];

      goto LABEL_10;
    }

    if (![(PXSharedLibrarySourceLibraryInfoPhotoKit *)self _isCPLExitModeError:v9])
    {
      v11 = 0;
      goto LABEL_11;
    }

    *a4 = PXLocalizedSharedLibraryString(@"PXSharedLibraryPublishFailureAlertTitle_CPLExitMode");
    v10 = @"PXSharedLibraryPublishFailureAlertMessage_CPLExitMode";
  }

  *a5 = PXLocalizedSharedLibraryString(v10);
LABEL_10:
  v11 = 1;
LABEL_11:

  return v11;
}

- (void)createPreviewWithEmailAddresses:(id)a3 phoneNumbers:(id)a4 autoSharePolicy:(int64_t)a5 startDate:(id)a6 personUUIDs:(id)a7 progress:(id)a8 presentationEnvironment:(id)a9 withCompletionHandler:(id)a10
{
  v17 = a10;
  v18 = a9;
  v19 = a8;
  v20 = a7;
  v21 = a6;
  v22 = a4;
  v23 = a3;
  if (a5 == 2)
  {
    v24 = 2;
  }

  else
  {
    v24 = a5 == 1;
  }

  v25 = [(PXSharedLibrarySourceLibraryInfoPhotoKit *)self photoLibrary];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __182__PXSharedLibrarySourceLibraryInfoPhotoKit_createPreviewWithEmailAddresses_phoneNumbers_autoSharePolicy_startDate_personUUIDs_progress_presentationEnvironment_withCompletionHandler___block_invoke;
  v27[3] = &unk_1E7747790;
  v28 = v17;
  v26 = v17;
  PXSharedLibraryCreatePreviewLibraryScope(v25, v23, v22, v24, v21, v20, v19, v18, v27);
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

- (void)createSharedLibraryWithEmailAddresses:(id)a3 phoneNumbers:(id)a4 autoSharePolicy:(int64_t)a5 startDate:(id)a6 personUUIDs:(id)a7 progress:(id)a8 presentationEnvironment:(id)a9 withCompletionHandler:(id)a10
{
  v17 = a10;
  v18 = a9;
  v19 = a8;
  v20 = a7;
  v21 = a6;
  v22 = a4;
  v23 = a3;
  if (a5 == 2)
  {
    v24 = 2;
  }

  else
  {
    v24 = a5 == 1;
  }

  v25 = [(PXSharedLibrarySourceLibraryInfoPhotoKit *)self photoLibrary];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __188__PXSharedLibrarySourceLibraryInfoPhotoKit_createSharedLibraryWithEmailAddresses_phoneNumbers_autoSharePolicy_startDate_personUUIDs_progress_presentationEnvironment_withCompletionHandler___block_invoke;
  v27[3] = &unk_1E7747790;
  v28 = v17;
  v26 = v17;
  PXSharedLibrarySetupLibraryScope(v25, v23, v22, v24, v21, v20, v19, v18, v27);
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
  v2 = [(PXSharedLibrarySourceLibraryInfoPhotoKit *)self photoLibrary];
  v3 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:v2];

  return v3;
}

- (BOOL)isCloudPhotoLibraryInitialSyncCompleted
{
  v2 = [(PXSharedLibrarySourceLibraryInfoPhotoKit *)self photoLibrary];
  v3 = [v2 cplStatus];

  v4 = [v3 initialSyncDate];
  LOBYTE(v2) = v4 != 0;

  return v2;
}

- (BOOL)isCloudPhotoLibraryExiting
{
  v2 = [(PXSharedLibrarySourceLibraryInfoPhotoKit *)self photoLibrary];
  v3 = [v2 cplStatus];
  v4 = [v3 exitDeleteTime];
  v5 = v4 != 0;

  return v5;
}

- (BOOL)isCloudPhotoLibraryEnabled
{
  v2 = [(PXSharedLibrarySourceLibraryInfoPhotoKit *)self photoLibrary];
  v3 = [v2 isCloudPhotoLibraryEnabled];

  return v3;
}

- (BOOL)isSystemPhotoLibrary
{
  v2 = [(PXSharedLibrarySourceLibraryInfoPhotoKit *)self photoLibrary];
  v3 = [v2 isSystemPhotoLibrary];

  return v3;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)assetsCountsForAssetLocalIdentifiers:(SEL)a3
{
  v6 = MEMORY[0x1E6978630];
  v7 = a4;
  v8 = [(PXSharedLibrarySourceLibraryInfoPhotoKit *)self photoLibrary];
  v9 = [v8 librarySpecificFetchOptions];
  v14 = [v6 fetchAssetsWithLocalIdentifiers:v7 options:v9];

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
  v4 = [(PXSharedLibrarySourceLibraryInfoPhotoKit *)self photoLibrary];
  v5 = [v3 initWithPhotoLibraryAndOnlyReturnsIdentifiers:v4];

  [v5 setDisabledCapabilities:16];
  [v5 _setDisabledPrivateCapabilities:4];

  return v5;
}

- (id)createDataSourceManager
{
  v2 = [(PXSharedLibrarySourceLibraryInfoPhotoKit *)self photoLibrary];
  v3 = [v2 librarySpecificFetchOptions];
  v4 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:2 subtype:209 options:v3];
  v5 = [[PXPhotosDataSourceConfiguration alloc] initWithCollectionListFetchResult:v4 options:0];
  v6 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v5];
  v7 = [[PXPhotoKitAssetsDataSourceManager alloc] initWithPhotosDataSource:v6];

  return v7;
}

- (void)fetchEstimatedAssetsCountsForExit:(BOOL)a3 imageCount:(unint64_t *)a4 videoCount:(unint64_t *)a5 audioCount:(unint64_t *)a6 itemCount:(unint64_t *)a7
{
  v11 = a3;
  v12 = [(PXSharedLibrarySourceLibraryInfoPhotoKit *)self photoLibrary];
  v13 = [v12 librarySpecificFetchOptions];

  [v13 setIncludeHiddenAssets:1];
  [v13 setIncludeTrashedAssets:1];
  [MEMORY[0x1E69788A0] estimatedAssetCountToMoveForExitRetentionPolicyContributedOnly:v11 imageCount:a4 videoCount:a5 audioCount:a6 itemCount:a7 options:v13 error:0];
}

- (void)fetchEstimatedAssetsCountsShareEverythingPolicyWithCompletion:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXSharedLibrarySourceLibraryInfoPhotoKit.m" lineNumber:126 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  v6 = [(PXSharedLibrarySourceLibraryInfoPhotoKit *)self photoLibrary];
  v7 = [v6 librarySpecificFetchOptions];

  v8 = [(PXSharedLibrarySourceLibraryInfoPhotoKit *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __106__PXSharedLibrarySourceLibraryInfoPhotoKit_fetchEstimatedAssetsCountsShareEverythingPolicyWithCompletion___block_invoke;
  block[3] = &unk_1E774C2F0;
  v13 = v7;
  v14 = v5;
  v9 = v5;
  v10 = v7;
  dispatch_async(v8, block);
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

- (void)fetchEstimatedAssetsCountsForStartDate:(id)a3 personUUIDs:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PXSharedLibrarySourceLibraryInfoPhotoKit.m" lineNumber:92 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  v12 = [(PXSharedLibrarySourceLibraryInfoPhotoKit *)self photoLibrary];
  v13 = [v12 librarySpecificFetchOptions];

  v14 = [(PXSharedLibrarySourceLibraryInfoPhotoKit *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __106__PXSharedLibrarySourceLibraryInfoPhotoKit_fetchEstimatedAssetsCountsForStartDate_personUUIDs_completion___block_invoke;
  block[3] = &unk_1E774BDB0;
  v21 = v9;
  v22 = v10;
  v23 = v13;
  v24 = v11;
  v15 = v11;
  v16 = v13;
  v17 = v10;
  v18 = v9;
  dispatch_async(v14, block);
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

- (void)fetchSuggestedStartDateForPersonUUIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PXSharedLibrarySourceLibraryInfoPhotoKit *)self photoLibrary];
  v9 = [v8 librarySpecificFetchOptions];

  v10 = [(PXSharedLibrarySourceLibraryInfoPhotoKit *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__PXSharedLibrarySourceLibraryInfoPhotoKit_fetchSuggestedStartDateForPersonUUIDs_completion___block_invoke;
  block[3] = &unk_1E774A0E0;
  v15 = v6;
  v16 = v9;
  v17 = v7;
  v11 = v7;
  v12 = v9;
  v13 = v6;
  dispatch_async(v10, block);
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
  v5 = [(PXSharedLibrarySourceLibraryInfoPhotoKit *)self photoLibrary];
  v6 = [v3 stringWithFormat:@"<%@:%p, photoLibrary:%@>", v4, self, v5];

  return v6;
}

- (PXSharedLibrarySourceLibraryInfoPhotoKit)initWithPhotoLibrary:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXSharedLibrarySourceLibraryInfoPhotoKit.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v11.receiver = self;
  v11.super_class = PXSharedLibrarySourceLibraryInfoPhotoKit;
  v7 = [(PXSharedLibrarySourceLibraryInfoPhotoKit *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_photoLibrary, a3);
  }

  return v8;
}

- (PXSharedLibrarySourceLibraryInfoPhotoKit)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXSharedLibrarySourceLibraryInfoPhotoKit.m" lineNumber:34 description:{@"%s is not available as initializer", "-[PXSharedLibrarySourceLibraryInfoPhotoKit init]"}];

  abort();
}

@end