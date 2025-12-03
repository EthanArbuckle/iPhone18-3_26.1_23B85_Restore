@interface PUPXPhotoKitCompositeVideoActionPerformer
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group;
- (void)activity:(id)activity didFinishWithSuccess:(BOOL)success error:(id)error;
- (void)performActivity:(id)activity;
- (void)performUserInteractionTask;
@end

@implementation PUPXPhotoKitCompositeVideoActionPerformer

- (void)activity:(id)activity didFinishWithSuccess:(BOOL)success error:(id)error
{
  errorCopy = error;
  activityViewController = [(PUCompositeVideoActivity *)self->_compositeVideoActivity activityViewController];
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
    _os_log_fault_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_FAULT, "PUPXPhotoKitCompositeVideoActionPerformer should not rely on a performActivity callback", v4, 2u);
  }
}

- (void)performUserInteractionTask
{
  v3 = objc_alloc_init(PUCompositeVideoActivity);
  compositeVideoActivity = self->_compositeVideoActivity;
  self->_compositeVideoActivity = v3;

  [(PXActivity *)self->_compositeVideoActivity setActionDelegate:self];
  v5 = self->_compositeVideoActivity;
  hostViewController = [(PXActionPerformer *)self hostViewController];
  assets = [(PXPhotoKitAssetActionPerformer *)self assets];
  [(PUCompositeVideoActivity *)v5 prepareWithViewController:hostViewController assets:assets];

  activityViewController = [(PUCompositeVideoActivity *)self->_compositeVideoActivity activityViewController];
  LOBYTE(hostViewController) = [(PXActionPerformer *)self presentViewController:activityViewController];

  if ((hostViewController & 1) == 0)
  {

    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:0];
  }
}

+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group
{
  collectionCopy = collection;
  v8 = [MEMORY[0x1E695DFB8] orderedSetWithObjects:{asset, 0}];
  if ([PUCompositeVideoActivity canPerformWithAssets:v8])
  {
    v9 = [collectionCopy isTrashBin] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

@end