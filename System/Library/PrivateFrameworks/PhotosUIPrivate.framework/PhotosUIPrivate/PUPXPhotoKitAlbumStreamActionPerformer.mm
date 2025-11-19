@interface PUPXPhotoKitAlbumStreamActionPerformer
+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6;
- (void)activity:(id)a3 didFinishWithSuccess:(BOOL)a4 error:(id)a5;
- (void)performActivity:(id)a3;
- (void)performUserInteractionTask;
@end

@implementation PUPXPhotoKitAlbumStreamActionPerformer

- (void)activity:(id)a3 didFinishWithSuccess:(BOOL)a4 error:(id)a5
{
  v10 = a5;
  v7 = [(PUAlbumStreamActivity *)self->_albumStreamActivity activityViewController];
  [(PXActionPerformer *)self dismissViewController:v7 completionHandler:0];

  v8 = [v10 domain];
  if ([v8 isEqualToString:*MEMORY[0x1E696A250]])
  {
    v9 = [v10 code] == 3072;
  }

  else
  {
    v9 = 0;
  }

  [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:a4 || v9 error:v10];
}

- (void)performActivity:(id)a3
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
  v7 = [(PXPhotoKitAssetActionPerformer *)self assets];
  v8 = [v6 orderedSetWithArray:v7];
  [(PUAlbumStreamActivity *)v5 prepareWithAssets:v8];

  v9 = [(PUAlbumStreamActivity *)self->_albumStreamActivity activityViewController];
  LOBYTE(v8) = [(PXActionPerformer *)self presentViewController:v9];

  if ((v8 & 1) == 0)
  {

    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:0];
  }
}

+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6
{
  v7 = a3;
  v8 = a4;
  if ((PFIsPhotosAppAnyPlatform() & 1) != 0 || PFIsCameraAppAnyPlatform()) && ([MEMORY[0x1E69C3490] sharedInstance], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "showAddToSharedAlbumActionInPhotos"), v9, !v10) || PFIsSpotlight() && (objc_msgSend(MEMORY[0x1E69C3490], "sharedInstance"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "showAddToSharedAlbumActionInSpotlight"), v11, !v12) || (objc_msgSend(v8, "px_isPrivacySensitiveAlbum"))
  {
    v13 = 0;
  }

  else
  {
    v14 = [MEMORY[0x1E695DFB8] orderedSetWithObjects:{v7, 0}];
    v13 = [PUAlbumStreamActivity canPerformWithAssets:v14];
  }

  return v13;
}

@end