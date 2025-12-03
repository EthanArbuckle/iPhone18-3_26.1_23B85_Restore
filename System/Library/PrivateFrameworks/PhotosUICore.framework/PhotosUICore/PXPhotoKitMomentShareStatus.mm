@interface PXPhotoKitMomentShareStatus
- (PXPhotoKitMomentShareStatus)initWithPhotoKitMomentShare:(id)share;
- (id)_createStatusProvider;
- (id)invitation;
- (void)_prepareFetchResultsForPhotoLibrary:(id)library;
- (void)photoLibraryDidChangeOnMainQueue:(id)queue;
@end

@implementation PXPhotoKitMomentShareStatus

- (void)photoLibraryDidChangeOnMainQueue:(id)queue
{
  queueCopy = queue;
  copyingAssetsFetchResult = [(PXMomentShareStatus *)self copyingAssetsFetchResult];
  v6 = [queueCopy changeDetailsForFetchResult:copyingAssetsFetchResult];

  if (v6)
  {
    fetchResultAfterChanges = [v6 fetchResultAfterChanges];
  }

  else
  {
    fetchResultAfterChanges = 0;
  }

  copiedAssetsFetchResult = [(PXMomentShareStatus *)self copiedAssetsFetchResult];
  v9 = [queueCopy changeDetailsForFetchResult:copiedAssetsFetchResult];

  if (v9)
  {
    fetchResultAfterChanges2 = [v9 fetchResultAfterChanges];
  }

  else
  {
    fetchResultAfterChanges2 = 0;
  }

  allAssetsFetchResult = [(PXMomentShareStatus *)self allAssetsFetchResult];
  v12 = [queueCopy changeDetailsForFetchResult:allAssetsFetchResult];

  if (v12)
  {
    fetchResultAfterChanges3 = [v12 fetchResultAfterChanges];
  }

  else
  {
    fetchResultAfterChanges3 = 0;
  }

  momentShare = [(PXMomentShareStatus *)self momentShare];
  v15 = [queueCopy changeDetailsForObject:momentShare];

  if (v15)
  {
    objectAfterChanges = [v15 objectAfterChanges];
LABEL_12:
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __64__PXPhotoKitMomentShareStatus_photoLibraryDidChangeOnMainQueue___block_invoke;
    v18[3] = &unk_1E7748B40;
    v19 = fetchResultAfterChanges;
    v20 = fetchResultAfterChanges2;
    v23 = v15 != 0;
    v21 = fetchResultAfterChanges3;
    v22 = objectAfterChanges;
    v17 = objectAfterChanges;
    [(PXMomentShareStatus *)self performChanges:v18];

    goto LABEL_13;
  }

  objectAfterChanges = 0;
  if (fetchResultAfterChanges || fetchResultAfterChanges2 || fetchResultAfterChanges3)
  {
    goto LABEL_12;
  }

LABEL_13:
}

void __64__PXPhotoKitMomentShareStatus_photoLibraryDidChangeOnMainQueue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    [v3 setCopyingAssetsFetchResult:?];
    v3 = v4;
  }

  if (*(a1 + 40))
  {
    [v4 setCopiedAssetsFetchResult:?];
    v3 = v4;
  }

  if (*(a1 + 48))
  {
    [v4 setAllAssetsFetchResult:?];
    v3 = v4;
  }

  if (*(a1 + 64) == 1)
  {
    [v4 setMomentShare:*(a1 + 56)];
    v3 = v4;
  }
}

- (void)_prepareFetchResultsForPhotoLibrary:(id)library
{
  librarySpecificFetchOptions = [library librarySpecificFetchOptions];
  momentShare = [(PXMomentShareStatus *)self momentShare];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"additionalAttributes.destinationAssetCopyState == %d", 1];
  [librarySpecificFetchOptions setInternalPredicate:v6];

  v7 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:momentShare options:librarySpecificFetchOptions];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"additionalAttributes.destinationAssetCopyState == %d", 2];
  [librarySpecificFetchOptions setInternalPredicate:v8];

  v9 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:momentShare options:librarySpecificFetchOptions];
  v10 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForMomentSharedAsset"), 0}];
  [librarySpecificFetchOptions setInternalPredicate:v10];

  v11 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:momentShare options:librarySpecificFetchOptions];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __67__PXPhotoKitMomentShareStatus__prepareFetchResultsForPhotoLibrary___block_invoke;
  v15[3] = &unk_1E7748B18;
  v16 = v7;
  v17 = v9;
  v18 = v11;
  v12 = v11;
  v13 = v9;
  v14 = v7;
  [(PXMomentShareStatus *)self performChanges:v15];
}

void __67__PXPhotoKitMomentShareStatus__prepareFetchResultsForPhotoLibrary___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setCopyingAssetsFetchResult:v3];
  [v4 setCopiedAssetsFetchResult:a1[5]];
  [v4 setAllAssetsFetchResult:a1[6]];
}

- (id)_createStatusProvider
{
  momentShare = [(PXMomentShareStatus *)self momentShare];
  photoLibrary = [momentShare photoLibrary];

  v4 = [[PXPhotoKitCPLActionManager alloc] initWithPhotoLibrary:photoLibrary];
  v5 = [[PXCPLUIStatusProvider alloc] initWithPhotoLibrary:photoLibrary actionManager:v4];

  return v5;
}

- (id)invitation
{
  invitation = self->_invitation;
  if (!invitation)
  {
    momentShare = [(PXMomentShareStatus *)self momentShare];
    v5 = [PXCMMMomentShareInvitation invitationWithMomentShare:momentShare];
    v6 = self->_invitation;
    self->_invitation = v5;

    invitation = self->_invitation;
  }

  return invitation;
}

- (PXPhotoKitMomentShareStatus)initWithPhotoKitMomentShare:(id)share
{
  shareCopy = share;
  if (shareCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v11 = NSStringFromClass(v12);
    px_descriptionForAssertionMessage = [shareCopy px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXMomentShareStatus.m" lineNumber:131 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"momentShare", v11, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXMomentShareStatus.m" lineNumber:131 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"momentShare", v11}];
  }

LABEL_3:
  v14.receiver = self;
  v14.super_class = PXPhotoKitMomentShareStatus;
  v6 = [(PXMomentShareStatus *)&v14 initWithMomentShare:shareCopy];
  if (v6)
  {
    photoLibrary = [shareCopy photoLibrary];
    [photoLibrary px_registerChangeObserver:v6];
    [(PXPhotoKitMomentShareStatus *)v6 _prepareFetchResultsForPhotoLibrary:photoLibrary];
  }

  return v6;
}

@end