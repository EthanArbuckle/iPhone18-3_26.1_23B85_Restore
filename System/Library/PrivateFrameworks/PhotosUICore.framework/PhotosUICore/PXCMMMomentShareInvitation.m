@interface PXCMMMomentShareInvitation
+ (id)invitationWithMomentShare:(id)a3;
+ (id)new;
+ (void)deleteInvitations:(id)a3 presentationEnvironment:(id)a4 completionHandler:(id)a5;
+ (void)saveAllAssetsForInvitations:(id)a3 toDestinationPhotoLibrary:(id)a4 completionHandler:(id)a5;
- (NSString)description;
- (PXAssetCollectionActionManager)assetCollectionActionManager;
- (PXCMMMomentShareInvitation)init;
- (PXCMMMomentShareInvitation)initWithMomentShare:(id)a3;
- (PXCMMMomentShareInvitation)invitationWithUpdatedParticipantsFetchResult:(id)a3;
- (PXCMMMomentShareInvitation)invitationWithUpdatedPreviewAssetsFetchResult:(id)a3;
- (PXMomentShareStatusPresentation)statusPresentation;
- (PXPhotosViewConfiguration)assetViewConfiguration;
- (id)contextForActivityType:(unint64_t)a3;
- (id)momentShareStatus;
- (id)sessionForActivityType:(unint64_t)a3;
- (int64_t)aggregateMediaType;
@end

@implementation PXCMMMomentShareInvitation

- (int64_t)aggregateMediaType
{
  v2 = [(PXCMMMomentShareInvitation *)self momentShare];
  v3 = [v2 aggregateMediaType];

  return v3;
}

- (id)momentShareStatus
{
  v3 = [PXPhotoKitMomentShareStatus alloc];
  v4 = [(PXCMMMomentShareInvitation *)self momentShare];
  v5 = [(PXPhotoKitMomentShareStatus *)v3 initWithPhotoKitMomentShare:v4];

  return v5;
}

- (id)sessionForActivityType:(unint64_t)a3
{
  v3 = [(PXCMMMomentShareInvitation *)self contextForActivityType:a3];
  v4 = [[PXCMMPhotoKitSession alloc] initWithPhotoKitContext:v3];

  return v4;
}

- (id)contextForActivityType:(unint64_t)a3
{
  v3 = [[PXCMMPhotoKitContext alloc] initWithMomentShare:self->_momentShare activityType:a3 sourceType:0];

  return v3;
}

- (PXMomentShareStatusPresentation)statusPresentation
{
  v2 = [(PXCMMMomentShareInvitation *)self momentShareStatus];
  v3 = [[PXMomentShareStatusPresentation alloc] initWithMomentShareStatus:v2 presentationStyle:0];

  return v3;
}

- (PXPhotosViewConfiguration)assetViewConfiguration
{
  v11[1] = *MEMORY[0x1E69E9840];
  momentShare = self->_momentShare;
  v11[0] = *MEMORY[0x1E6978C38];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  LOBYTE(v10) = 1;
  v5 = [PXPhotoKitAssetsDataSourceManager dataSourceManagerForAssetCollection:momentShare existingAssetsFetchResult:0 existingKeyAssetsFetchResult:0 fetchPropertySets:v4 basePredicate:0 options:0 ignoreSharedLibraryFilters:v10];

  v6 = [(PHMomentShare *)self->_momentShare photoLibrary];
  v7 = [PXPhotoKitUIMediaProvider mediaProviderWithLibrary:v6];

  v8 = [[off_1E7721830 alloc] initWithDataSourceManager:v5 mediaProvider:v7 selectionManager:0 assetActionManager:0 assetCollectionActionManager:0];

  return v8;
}

- (PXAssetCollectionActionManager)assetCollectionActionManager
{
  v2 = [[PXPhotoKitAssetCollectionActionManager alloc] initWithAssetCollection:self->_momentShare displayTitleInfo:0];

  return v2;
}

- (PXCMMMomentShareInvitation)invitationWithUpdatedPreviewAssetsFetchResult:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithMomentShare:self->_momentShare];
  objc_storeStrong((v5 + 64), self->_participantsFetchResult);
  objc_storeStrong((v5 + 32), self->_owner);
  v6 = *(v5 + 72);
  *(v5 + 72) = v4;
  v7 = v4;

  momentShare = self->_momentShare;
  v15 = 0;
  v16 = 0;
  _GetPreviewAsset(v7, momentShare, &v16, &v15);
  v9 = v16;
  v10 = v15;
  v11 = *(v5 + 40);
  *(v5 + 40) = v9;
  v12 = v9;

  v13 = *(v5 + 48);
  *(v5 + 48) = v10;

  return v5;
}

- (PXCMMMomentShareInvitation)invitationWithUpdatedParticipantsFetchResult:(id)a3
{
  v5 = a3;
  if (self->_shareType != 1)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXCMMMomentShareInvitation.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"_shareType == PXDisplayMomentShareTypeReceiver"}];
  }

  v6 = [objc_alloc(objc_opt_class()) initWithMomentShare:self->_momentShare];
  objc_storeStrong((v6 + 72), self->_previewAssetsFetchResult);
  objc_storeStrong((v6 + 40), self->_posterAsset);
  objc_storeStrong((v6 + 48), self->_posterMediaProvider);
  v7 = *(v6 + 64);
  *(v6 + 64) = v5;
  v8 = v5;

  v9 = PXOwnerForMomentShareParticipantFetchResult(v8, self->_momentShare);
  v10 = *(v6 + 32);
  *(v6 + 32) = v9;

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  momentShare = self->_momentShare;
  v7 = [(PHMomentShare *)momentShare uuid];
  v8 = [v3 stringWithFormat:@"<%@: %p, <%@: %p, %@>>", v4, self, v5, momentShare, v7];

  return v8;
}

- (PXCMMMomentShareInvitation)initWithMomentShare:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PXCMMMomentShareInvitation.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"momentShare"}];
  }

  v19.receiver = self;
  v19.super_class = PXCMMMomentShareInvitation;
  v7 = [(PXCMMMomentShareInvitation *)&v19 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_momentShare, a3);
    v8->_shareType = [(PHMomentShare *)v8->_momentShare px_momentShareType];
    v17 = 0;
    v18 = 0;
    PXCMMTitleAndSubtitleForAssetCollection(v6, &v18, &v17);
    v9 = v18;
    v10 = v17;
    v11 = [v9 copy];
    title = v8->_title;
    v8->_title = v11;

    v13 = [v10 copy];
    subtitle = v8->_subtitle;
    v8->_subtitle = v13;
  }

  return v8;
}

- (PXCMMMomentShareInvitation)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXCMMMomentShareInvitation.m" lineNumber:48 description:{@"%s is not available as initializer", "-[PXCMMMomentShareInvitation init]"}];

  abort();
}

+ (void)saveAllAssetsForInvitations:(id)a3 toDestinationPhotoLibrary:(id)a4 completionHandler:(id)a5
{
  v6 = a5;
  v7 = a4;
  PXMap();
}

+ (void)deleteInvitations:(id)a3 presentationEnvironment:(id)a4 completionHandler:(id)a5
{
  v6 = a5;
  v7 = a4;
  PXMap();
}

+ (id)invitationWithMomentShare:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:a1 file:@"PXCMMMomentShareInvitation.m" lineNumber:80 description:{@"Invalid parameter not satisfying: %@", @"momentShare"}];
  }

  v6 = [[a1 alloc] initWithMomentShare:v5];
  v7 = [MEMORY[0x1E69789A8] sharedMomentSharePhotoLibrary];
  v8 = PXParticipantFetchResultForMomentShare(v5);
  v9 = v8;
  if (v8)
  {
    v10 = PXOwnerForMomentShareParticipantFetchResult(v8, v5);
  }

  else
  {
    v10 = 0;
  }

  v11 = v6[8];
  v6[8] = v9;
  v12 = v9;

  v13 = v6[4];
  v6[4] = v10;
  v14 = v10;

  v15 = [v7 librarySpecificFetchOptions];
  [v15 setFetchLimit:1];
  [v15 setIncludeAssetSourceTypes:8];
  v16 = [MEMORY[0x1E6978630] fetchKeyAssetsInAssetCollection:v5 options:v15];
  v17 = v6[9];
  v6[9] = v16;
  v18 = v16;

  v26 = 0;
  v27 = 0;
  _GetPreviewAsset(v18, v5, &v27, &v26);
  v19 = v27;
  v20 = v26;
  v21 = v6[5];
  v6[5] = v19;
  v22 = v19;

  v23 = v6[6];
  v6[6] = v20;

  return v6;
}

+ (id)new
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"PXCMMMomentShareInvitation.m" lineNumber:52 description:{@"%s is not available as initializer", "+[PXCMMMomentShareInvitation new]"}];

  abort();
}

@end