@interface PXCMMMomentShareInvitation
+ (id)invitationWithMomentShare:(id)share;
+ (id)new;
+ (void)deleteInvitations:(id)invitations presentationEnvironment:(id)environment completionHandler:(id)handler;
+ (void)saveAllAssetsForInvitations:(id)invitations toDestinationPhotoLibrary:(id)library completionHandler:(id)handler;
- (NSString)description;
- (PXAssetCollectionActionManager)assetCollectionActionManager;
- (PXCMMMomentShareInvitation)init;
- (PXCMMMomentShareInvitation)initWithMomentShare:(id)share;
- (PXCMMMomentShareInvitation)invitationWithUpdatedParticipantsFetchResult:(id)result;
- (PXCMMMomentShareInvitation)invitationWithUpdatedPreviewAssetsFetchResult:(id)result;
- (PXMomentShareStatusPresentation)statusPresentation;
- (PXPhotosViewConfiguration)assetViewConfiguration;
- (id)contextForActivityType:(unint64_t)type;
- (id)momentShareStatus;
- (id)sessionForActivityType:(unint64_t)type;
- (int64_t)aggregateMediaType;
@end

@implementation PXCMMMomentShareInvitation

- (int64_t)aggregateMediaType
{
  momentShare = [(PXCMMMomentShareInvitation *)self momentShare];
  aggregateMediaType = [momentShare aggregateMediaType];

  return aggregateMediaType;
}

- (id)momentShareStatus
{
  v3 = [PXPhotoKitMomentShareStatus alloc];
  momentShare = [(PXCMMMomentShareInvitation *)self momentShare];
  v5 = [(PXPhotoKitMomentShareStatus *)v3 initWithPhotoKitMomentShare:momentShare];

  return v5;
}

- (id)sessionForActivityType:(unint64_t)type
{
  v3 = [(PXCMMMomentShareInvitation *)self contextForActivityType:type];
  v4 = [[PXCMMPhotoKitSession alloc] initWithPhotoKitContext:v3];

  return v4;
}

- (id)contextForActivityType:(unint64_t)type
{
  v3 = [[PXCMMPhotoKitContext alloc] initWithMomentShare:self->_momentShare activityType:type sourceType:0];

  return v3;
}

- (PXMomentShareStatusPresentation)statusPresentation
{
  momentShareStatus = [(PXCMMMomentShareInvitation *)self momentShareStatus];
  v3 = [[PXMomentShareStatusPresentation alloc] initWithMomentShareStatus:momentShareStatus presentationStyle:0];

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

  photoLibrary = [(PHMomentShare *)self->_momentShare photoLibrary];
  v7 = [PXPhotoKitUIMediaProvider mediaProviderWithLibrary:photoLibrary];

  v8 = [[off_1E7721830 alloc] initWithDataSourceManager:v5 mediaProvider:v7 selectionManager:0 assetActionManager:0 assetCollectionActionManager:0];

  return v8;
}

- (PXAssetCollectionActionManager)assetCollectionActionManager
{
  v2 = [[PXPhotoKitAssetCollectionActionManager alloc] initWithAssetCollection:self->_momentShare displayTitleInfo:0];

  return v2;
}

- (PXCMMMomentShareInvitation)invitationWithUpdatedPreviewAssetsFetchResult:(id)result
{
  resultCopy = result;
  v5 = [objc_alloc(objc_opt_class()) initWithMomentShare:self->_momentShare];
  objc_storeStrong((v5 + 64), self->_participantsFetchResult);
  objc_storeStrong((v5 + 32), self->_owner);
  v6 = *(v5 + 72);
  *(v5 + 72) = resultCopy;
  v7 = resultCopy;

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

- (PXCMMMomentShareInvitation)invitationWithUpdatedParticipantsFetchResult:(id)result
{
  resultCopy = result;
  if (self->_shareType != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMMomentShareInvitation.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"_shareType == PXDisplayMomentShareTypeReceiver"}];
  }

  v6 = [objc_alloc(objc_opt_class()) initWithMomentShare:self->_momentShare];
  objc_storeStrong((v6 + 72), self->_previewAssetsFetchResult);
  objc_storeStrong((v6 + 40), self->_posterAsset);
  objc_storeStrong((v6 + 48), self->_posterMediaProvider);
  v7 = *(v6 + 64);
  *(v6 + 64) = resultCopy;
  v8 = resultCopy;

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
  uuid = [(PHMomentShare *)momentShare uuid];
  v8 = [v3 stringWithFormat:@"<%@: %p, <%@: %p, %@>>", v4, self, v5, momentShare, uuid];

  return v8;
}

- (PXCMMMomentShareInvitation)initWithMomentShare:(id)share
{
  shareCopy = share;
  if (!shareCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMMomentShareInvitation.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"momentShare"}];
  }

  v19.receiver = self;
  v19.super_class = PXCMMMomentShareInvitation;
  v7 = [(PXCMMMomentShareInvitation *)&v19 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_momentShare, share);
    v8->_shareType = [(PHMomentShare *)v8->_momentShare px_momentShareType];
    v17 = 0;
    v18 = 0;
    PXCMMTitleAndSubtitleForAssetCollection(shareCopy, &v18, &v17);
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMMomentShareInvitation.m" lineNumber:48 description:{@"%s is not available as initializer", "-[PXCMMMomentShareInvitation init]"}];

  abort();
}

+ (void)saveAllAssetsForInvitations:(id)invitations toDestinationPhotoLibrary:(id)library completionHandler:(id)handler
{
  handlerCopy = handler;
  libraryCopy = library;
  PXMap();
}

+ (void)deleteInvitations:(id)invitations presentationEnvironment:(id)environment completionHandler:(id)handler
{
  handlerCopy = handler;
  environmentCopy = environment;
  PXMap();
}

+ (id)invitationWithMomentShare:(id)share
{
  shareCopy = share;
  if (!shareCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMMomentShareInvitation.m" lineNumber:80 description:{@"Invalid parameter not satisfying: %@", @"momentShare"}];
  }

  v6 = [[self alloc] initWithMomentShare:shareCopy];
  mEMORY[0x1E69789A8] = [MEMORY[0x1E69789A8] sharedMomentSharePhotoLibrary];
  v8 = PXParticipantFetchResultForMomentShare(shareCopy);
  v9 = v8;
  if (v8)
  {
    v10 = PXOwnerForMomentShareParticipantFetchResult(v8, shareCopy);
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

  librarySpecificFetchOptions = [mEMORY[0x1E69789A8] librarySpecificFetchOptions];
  [librarySpecificFetchOptions setFetchLimit:1];
  [librarySpecificFetchOptions setIncludeAssetSourceTypes:8];
  v16 = [MEMORY[0x1E6978630] fetchKeyAssetsInAssetCollection:shareCopy options:librarySpecificFetchOptions];
  v17 = v6[9];
  v6[9] = v16;
  v18 = v16;

  v26 = 0;
  v27 = 0;
  _GetPreviewAsset(v18, shareCopy, &v27, &v26);
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMMomentShareInvitation.m" lineNumber:52 description:{@"%s is not available as initializer", "+[PXCMMMomentShareInvitation new]"}];

  abort();
}

@end