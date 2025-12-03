@interface PXCMMMomentsInvitation
+ (id)_invitationWithAssetCollection:(id)collection previewAssetsFetchResult:(id)result participantsFetchResult:(id)fetchResult;
+ (id)invitationWithAssetCollection:(id)collection;
+ (id)new;
+ (void)deleteInvitations:(id)invitations presentationEnvironment:(id)environment completionHandler:(id)handler;
+ (void)saveAllAssetsForInvitations:(id)invitations toDestinationPhotoLibrary:(id)library completionHandler:(id)handler;
- (NSURL)shareURL;
- (PXAssetCollectionActionManager)assetCollectionActionManager;
- (PXCMMMomentsInvitation)init;
- (PXCMMMomentsInvitation)initWithAssetCollection:(id)collection;
- (PXCMMMomentsInvitation)invitationWithUpdatedParticipantsFetchResult:(id)result;
- (PXCMMMomentsInvitation)invitationWithUpdatedPreviewAssetsFetchResult:(id)result;
- (PXPhotosViewConfiguration)assetViewConfiguration;
- (id)contextForActivityType:(unint64_t)type;
- (id)sessionForActivityType:(unint64_t)type;
- (int64_t)aggregateMediaType;
- (void)acceptWithCompletionHandler:(id)handler;
@end

@implementation PXCMMMomentsInvitation

- (void)acceptWithCompletionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 1, 0);
  }
}

- (id)sessionForActivityType:(unint64_t)type
{
  v3 = [(PXCMMMomentsInvitation *)self contextForActivityType:type];
  v4 = [[PXCMMPhotoKitSession alloc] initWithPhotoKitContext:v3];

  return v4;
}

- (id)contextForActivityType:(unint64_t)type
{
  v3 = [[PXCMMPhotoKitContext alloc] initWithAssetCollection:self->_assetCollection activityType:type sourceType:0];

  return v3;
}

- (PXPhotosViewConfiguration)assetViewConfiguration
{
  v3 = [PXPhotoKitAssetsDataSourceManager dataSourceManagerForAssetCollection:self->_assetCollection];
  photoLibrary = [(PHAssetCollection *)self->_assetCollection photoLibrary];
  v5 = [PXPhotoKitUIMediaProvider mediaProviderWithLibrary:photoLibrary];

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

- (PXCMMMomentsInvitation)invitationWithUpdatedParticipantsFetchResult:(id)result
{
  resultCopy = result;
  v5 = [objc_alloc(objc_opt_class()) initWithAssetCollection:self->_assetCollection];
  objc_storeStrong((v5 + 64), self->_previewAssetsFetchResult);
  objc_storeStrong((v5 + 40), self->_posterAsset);
  objc_storeStrong((v5 + 48), self->_posterMediaProvider);
  v6 = *(v5 + 72);
  *(v5 + 72) = resultCopy;
  v7 = resultCopy;

  v8 = _GetOwner(v7);
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  return v5;
}

- (PXCMMMomentsInvitation)invitationWithUpdatedPreviewAssetsFetchResult:(id)result
{
  resultCopy = result;
  v5 = [objc_alloc(objc_opt_class()) initWithAssetCollection:self->_assetCollection];
  objc_storeStrong((v5 + 72), self->_participantsFetchResult);
  objc_storeStrong((v5 + 32), self->_owner);
  objc_storeStrong((v5 + 48), self->_posterMediaProvider);
  v6 = *(v5 + 64);
  *(v5 + 64) = resultCopy;
  v7 = resultCopy;

  firstObject = [v7 firstObject];
  v9 = *(v5 + 40);
  *(v5 + 40) = firstObject;

  return v5;
}

- (PXCMMMomentsInvitation)initWithAssetCollection:(id)collection
{
  collectionCopy = collection;
  v17.receiver = self;
  v17.super_class = PXCMMMomentsInvitation;
  v6 = [(PXCMMMomentsInvitation *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assetCollection, collection);
    v7->_shareType = 1;
    v15 = 0;
    v16 = 0;
    PXCMMTitleAndSubtitleForAssetCollection(collectionCopy, &v16, &v15);
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMMomentsInvitation.m" lineNumber:94 description:{@"%s is not available as initializer", "-[PXCMMMomentsInvitation init]"}];

  abort();
}

+ (void)saveAllAssetsForInvitations:(id)invitations toDestinationPhotoLibrary:(id)library completionHandler:(id)handler
{
  invitationsCopy = invitations;
  libraryCopy = library;
  handlerCopy = handler;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMMomentsInvitation.m" lineNumber:274 description:@"Code which should be unreachable has been reached"];

  abort();
}

+ (void)deleteInvitations:(id)invitations presentationEnvironment:(id)environment completionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 1, 0);
  }
}

+ (id)invitationWithAssetCollection:(id)collection
{
  v14[1] = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  photoLibrary = [collectionCopy photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions setFetchLimit:5];
  v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"curationScore" ascending:0];
  v14[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [librarySpecificFetchOptions setInternalSortDescriptors:v8];

  v9 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:collectionCopy options:librarySpecificFetchOptions];
  librarySpecificFetchOptions2 = [photoLibrary librarySpecificFetchOptions];
  v11 = [MEMORY[0x1E6978980] fetchPersonsForAssetCollection:collectionCopy options:librarySpecificFetchOptions2];
  v12 = [self _invitationWithAssetCollection:collectionCopy previewAssetsFetchResult:v9 participantsFetchResult:v11];

  return v12;
}

+ (id)_invitationWithAssetCollection:(id)collection previewAssetsFetchResult:(id)result participantsFetchResult:(id)fetchResult
{
  resultCopy = result;
  fetchResultCopy = fetchResult;
  collectionCopy = collection;
  v11 = [[self alloc] initWithAssetCollection:collectionCopy];
  v12 = v11[8];
  v11[8] = resultCopy;
  v13 = resultCopy;

  v14 = _GetOwner(fetchResultCopy);
  v15 = v11[4];
  v11[4] = v14;

  v16 = v11[9];
  v11[9] = fetchResultCopy;
  v17 = fetchResultCopy;

  firstObject = [v13 firstObject];
  v19 = v11[5];
  v11[5] = firstObject;

  photoLibrary = [collectionCopy photoLibrary];

  v21 = [PXPhotoKitUIMediaProvider mediaProviderWithLibrary:photoLibrary];
  v22 = v11[6];
  v11[6] = v21;

  return v11;
}

+ (id)new
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMMomentsInvitation.m" lineNumber:98 description:{@"%s is not available as initializer", "+[PXCMMMomentsInvitation new]"}];

  abort();
}

- (int64_t)aggregateMediaType
{
  assetCollection = [(PXCMMMomentsInvitation *)self assetCollection];
  aggregateMediaType = [assetCollection aggregateMediaType];

  return aggregateMediaType;
}

@end