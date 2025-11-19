@interface PXCMMMomentsInvitation
+ (id)_invitationWithAssetCollection:(id)a3 previewAssetsFetchResult:(id)a4 participantsFetchResult:(id)a5;
+ (id)invitationWithAssetCollection:(id)a3;
+ (id)new;
+ (void)deleteInvitations:(id)a3 presentationEnvironment:(id)a4 completionHandler:(id)a5;
+ (void)saveAllAssetsForInvitations:(id)a3 toDestinationPhotoLibrary:(id)a4 completionHandler:(id)a5;
- (NSURL)shareURL;
- (PXAssetCollectionActionManager)assetCollectionActionManager;
- (PXCMMMomentsInvitation)init;
- (PXCMMMomentsInvitation)initWithAssetCollection:(id)a3;
- (PXCMMMomentsInvitation)invitationWithUpdatedParticipantsFetchResult:(id)a3;
- (PXCMMMomentsInvitation)invitationWithUpdatedPreviewAssetsFetchResult:(id)a3;
- (PXPhotosViewConfiguration)assetViewConfiguration;
- (id)contextForActivityType:(unint64_t)a3;
- (id)sessionForActivityType:(unint64_t)a3;
- (int64_t)aggregateMediaType;
- (void)acceptWithCompletionHandler:(id)a3;
@end

@implementation PXCMMMomentsInvitation

- (void)acceptWithCompletionHandler:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 1, 0);
  }
}

- (id)sessionForActivityType:(unint64_t)a3
{
  v3 = [(PXCMMMomentsInvitation *)self contextForActivityType:a3];
  v4 = [[PXCMMPhotoKitSession alloc] initWithPhotoKitContext:v3];

  return v4;
}

- (id)contextForActivityType:(unint64_t)a3
{
  v3 = [[PXCMMPhotoKitContext alloc] initWithAssetCollection:self->_assetCollection activityType:a3 sourceType:0];

  return v3;
}

- (PXPhotosViewConfiguration)assetViewConfiguration
{
  v3 = [PXPhotoKitAssetsDataSourceManager dataSourceManagerForAssetCollection:self->_assetCollection];
  v4 = [(PHAssetCollection *)self->_assetCollection photoLibrary];
  v5 = [PXPhotoKitUIMediaProvider mediaProviderWithLibrary:v4];

  v6 = [[off_1E7721830 alloc] initWithDataSourceManager:v3 mediaProvider:v5 selectionManager:0 assetActionManager:0 assetCollectionActionManager:0];

  return v6;
}

- (PXAssetCollectionActionManager)assetCollectionActionManager
{
  v2 = [[PXPhotoKitAssetCollectionActionManager alloc] initWithAssetCollection:self->_assetCollection displayTitleInfo:0];

  return v2;
}

- (NSURL)shareURL
{
  v2 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:@"https://share.icloud.com/photos/123"];

  return v2;
}

- (PXCMMMomentsInvitation)invitationWithUpdatedParticipantsFetchResult:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithAssetCollection:self->_assetCollection];
  objc_storeStrong((v5 + 64), self->_previewAssetsFetchResult);
  objc_storeStrong((v5 + 40), self->_posterAsset);
  objc_storeStrong((v5 + 48), self->_posterMediaProvider);
  v6 = *(v5 + 72);
  *(v5 + 72) = v4;
  v7 = v4;

  v8 = _GetOwner(v7);
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  return v5;
}

- (PXCMMMomentsInvitation)invitationWithUpdatedPreviewAssetsFetchResult:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithAssetCollection:self->_assetCollection];
  objc_storeStrong((v5 + 72), self->_participantsFetchResult);
  objc_storeStrong((v5 + 32), self->_owner);
  objc_storeStrong((v5 + 48), self->_posterMediaProvider);
  v6 = *(v5 + 64);
  *(v5 + 64) = v4;
  v7 = v4;

  v8 = [v7 firstObject];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  return v5;
}

- (PXCMMMomentsInvitation)initWithAssetCollection:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = PXCMMMomentsInvitation;
  v6 = [(PXCMMMomentsInvitation *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assetCollection, a3);
    v7->_shareType = 1;
    v15 = 0;
    v16 = 0;
    PXCMMTitleAndSubtitleForAssetCollection(v5, &v16, &v15);
    v8 = v16;
    v9 = v15;
    v10 = [v8 copy];
    title = v7->_title;
    v7->_title = v10;

    v12 = [v9 copy];
    subtitle = v7->_subtitle;
    v7->_subtitle = v12;
  }

  return v7;
}

- (PXCMMMomentsInvitation)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXCMMMomentsInvitation.m" lineNumber:94 description:{@"%s is not available as initializer", "-[PXCMMMomentsInvitation init]"}];

  abort();
}

+ (void)saveAllAssetsForInvitations:(id)a3 toDestinationPhotoLibrary:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [MEMORY[0x1E696AAA8] currentHandler];
  [v12 handleFailureInMethod:a2 object:a1 file:@"PXCMMMomentsInvitation.m" lineNumber:274 description:@"Code which should be unreachable has been reached"];

  abort();
}

+ (void)deleteInvitations:(id)a3 presentationEnvironment:(id)a4 completionHandler:(id)a5
{
  if (a5)
  {
    (*(a5 + 2))(a5, 1, 0);
  }
}

+ (id)invitationWithAssetCollection:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 photoLibrary];
  v6 = [v5 librarySpecificFetchOptions];
  [v6 setFetchLimit:5];
  v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"curationScore" ascending:0];
  v14[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [v6 setInternalSortDescriptors:v8];

  v9 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:v4 options:v6];
  v10 = [v5 librarySpecificFetchOptions];
  v11 = [MEMORY[0x1E6978980] fetchPersonsForAssetCollection:v4 options:v10];
  v12 = [a1 _invitationWithAssetCollection:v4 previewAssetsFetchResult:v9 participantsFetchResult:v11];

  return v12;
}

+ (id)_invitationWithAssetCollection:(id)a3 previewAssetsFetchResult:(id)a4 participantsFetchResult:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [[a1 alloc] initWithAssetCollection:v10];
  v12 = v11[8];
  v11[8] = v8;
  v13 = v8;

  v14 = _GetOwner(v9);
  v15 = v11[4];
  v11[4] = v14;

  v16 = v11[9];
  v11[9] = v9;
  v17 = v9;

  v18 = [v13 firstObject];
  v19 = v11[5];
  v11[5] = v18;

  v20 = [v10 photoLibrary];

  v21 = [PXPhotoKitUIMediaProvider mediaProviderWithLibrary:v20];
  v22 = v11[6];
  v11[6] = v21;

  return v11;
}

+ (id)new
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"PXCMMMomentsInvitation.m" lineNumber:98 description:{@"%s is not available as initializer", "+[PXCMMMomentsInvitation new]"}];

  abort();
}

- (int64_t)aggregateMediaType
{
  v2 = [(PXCMMMomentsInvitation *)self assetCollection];
  v3 = [v2 aggregateMediaType];

  return v3;
}

@end