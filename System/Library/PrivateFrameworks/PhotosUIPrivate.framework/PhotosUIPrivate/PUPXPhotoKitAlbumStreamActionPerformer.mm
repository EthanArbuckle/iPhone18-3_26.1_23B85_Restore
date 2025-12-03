@interface PUPXPhotoKitAlbumStreamActionPerformer
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group;
- (void)activity:(id)activity didFinishWithSuccess:(BOOL)success error:(id)error;
- (void)performActivity:(id)activity;
- (void)performUserInteractionTask;
@end

@implementation PUPXPhotoKitAlbumStreamActionPerformer

- (void)activity:(id)activity didFinishWithSuccess:(BOOL)success error:(id)error
{
  errorCopy = error;
  activityViewController = [(PUAlbumStreamActivity *)self->_albumStreamActivity activityViewController];
  [(PXActionPerformer *)self dismissViewController:activityViewController completionHandler:0];

  domain = [errorCopy domain];
  if ([domain isEqualToString:*MEMORY[0x1E696A250]])
  {
    v9 = [errorCopy code] == 3072;
  }

  else
  {
    v9 = 0;
  }

  [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:success || v9 error:errorCopy];
}

- (void)performActivity:(id)activity
{
  v3 = PXAssertGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    *v4 = 0;
    _os_log_fault_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_FAULT, "PUPXPhotoKitAlbumStreamActionPerformer should not rely on a performActivity callback", v4, 2u);
  }
}

- (void)performUserInteractionTask
{
  v3 = objc_alloc_init(PUAlbumStreamActivity);
  albumStreamActivity = self->_albumStreamActivity;
  self->_albumStreamActivity = v3;

  [(PUAlbumStreamActivity *)self->_albumStreamActivity setPresentedFromActivityViewController:0];
  [(PXActivity *)self->_albumStreamActivity setActionDelegate:self];
  v5 = self->_albumStreamActivity;
  v6 = MEMORY[0x1E695DFB8];
  assets = [(PXPhotoKitAssetActionPerformer *)self assets];
  v8 = [v6 orderedSetWithArray:assets];
  [(PUAlbumStreamActivity *)v5 prepareWithAssets:v8];

  activityViewController = [(PUAlbumStreamActivity *)self->_albumStreamActivity activityViewController];
  LOBYTE(v8) = [(PXActionPerformer *)self presentViewController:activityViewController];

  if ((v8 & 1) == 0)
  {

    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:0];
  }
}

+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group
{
  assetCopy = asset;
  collectionCopy = collection;
  if ((PFIsPhotosAppAnyPlatform() & 1) != 0 || PFIsCameraAppAnyPlatform()) && ([MEMORY[0x1E69C3490] sharedInstance], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "showAddToSharedAlbumActionInPhotos"), v9, !v10) || PFIsSpotlight() && (objc_msgSend(MEMORY[0x1E69C3490], "sharedInstance"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "showAddToSharedAlbumActionInSpotlight"), v11, !v12) || (objc_msgSend(collectionCopy, "px_isPrivacySensitiveAlbum"))
  {
    v13 = 0;
  }

  else
  {
    v14 = [MEMORY[0x1E695DFB8] orderedSetWithObjects:{assetCopy, 0}];
    v13 = [PUAlbumStreamActivity canPerformWithAssets:v14];
  }

  return v13;
}

@end