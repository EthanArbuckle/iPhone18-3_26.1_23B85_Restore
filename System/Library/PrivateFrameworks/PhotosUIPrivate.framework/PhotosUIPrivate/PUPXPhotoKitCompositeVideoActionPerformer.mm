@interface PUPXPhotoKitCompositeVideoActionPerformer
+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6;
- (void)activity:(id)a3 didFinishWithSuccess:(BOOL)a4 error:(id)a5;
- (void)performActivity:(id)a3;
- (void)performUserInteractionTask;
@end

@implementation PUPXPhotoKitCompositeVideoActionPerformer

- (void)activity:(id)a3 didFinishWithSuccess:(BOOL)a4 error:(id)a5
{
  v10 = a5;
  v7 = [(PUCompositeVideoActivity *)self->_compositeVideoActivity activityViewController];
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
  v6 = [(PXActionPerformer *)self hostViewController];
  v7 = [(PXPhotoKitAssetActionPerformer *)self assets];
  [(PUCompositeVideoActivity *)v5 prepareWithViewController:v6 assets:v7];

  v8 = [(PUCompositeVideoActivity *)self->_compositeVideoActivity activityViewController];
  LOBYTE(v6) = [(PXActionPerformer *)self presentViewController:v8];

  if ((v6 & 1) == 0)
  {

    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:0];
  }
}

+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6
{
  v7 = a4;
  v8 = [MEMORY[0x1E695DFB8] orderedSetWithObjects:{a3, 0}];
  if ([PUCompositeVideoActivity canPerformWithAssets:v8])
  {
    v9 = [v7 isTrashBin] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

@end