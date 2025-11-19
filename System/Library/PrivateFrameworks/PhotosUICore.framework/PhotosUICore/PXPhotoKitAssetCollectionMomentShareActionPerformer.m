@interface PXPhotoKitAssetCollectionMomentShareActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4;
- (void)completeUserInteractionTaskWithSuccess:(BOOL)a3 error:(id)a4;
- (void)performUserInteractionTask;
- (void)workflowCoordinator:(id)a3 workflowViewController:(id)a4 didFinishSession:(id)a5 withActivityState:(unint64_t)a6;
@end

@implementation PXPhotoKitAssetCollectionMomentShareActionPerformer

- (void)completeUserInteractionTaskWithSuccess:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  workflowCoordinator = self->_workflowCoordinator;
  self->_workflowCoordinator = 0;
  v7 = a4;

  v8.receiver = self;
  v8.super_class = PXPhotoKitAssetCollectionMomentShareActionPerformer;
  [(PXActionPerformer *)&v8 completeUserInteractionTaskWithSuccess:v4 error:v7];
}

- (void)workflowCoordinator:(id)a3 workflowViewController:(id)a4 didFinishSession:(id)a5 withActivityState:(unint64_t)a6
{
  v7 = [(PXActionPerformer *)self dismissViewController:a4 completionHandler:0, a5, a6];
  v8 = 0;
  if (!v7)
  {
    v8 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXCMMErrorDomain" code:-1002 debugDescription:@"Failed to dismiss the CMM view controller"];
  }

  v9 = v8;
  [(PXPhotoKitAssetCollectionMomentShareActionPerformer *)self completeUserInteractionTaskWithSuccess:v7 error:v8];
}

- (void)performUserInteractionTask
{
  v3 = [PXCMMPhotoKitContext alloc];
  v4 = [(PXAssetCollectionActionPerformer *)self assetCollection];
  v9 = [(PXCMMPhotoKitContext *)v3 initWithAssetCollection:v4 activityType:1 sourceType:0];

  [(PXCMMContext *)v9 setHideActionMenu:1];
  v5 = objc_alloc_init(PXCMMWorkflowCoordinator);
  workflowCoordinator = self->_workflowCoordinator;
  self->_workflowCoordinator = v5;

  [(PXCMMWorkflowCoordinator *)self->_workflowCoordinator setDelegate:self];
  v7 = [(PXCMMWorkflowCoordinator *)self->_workflowCoordinator workflowViewControllerWithContext:v9 embedInNavigationControllerOfClass:objc_opt_class()];
  if (![(PXActionPerformer *)self presentViewController:v7])
  {
    v8 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXCMMErrorDomain" code:-1002 debugDescription:@"Failed to present the CMM view controller"];
    [(PXPhotoKitAssetCollectionMomentShareActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:v8];
  }
}

+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4
{
  v6 = [a3 assetCollection];
  if (!v6)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [v11 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:1930 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollectionReference.assetCollection", v13}];
LABEL_10:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v13 = NSStringFromClass(v14);
    v15 = [v6 px_descriptionForAssertionMessage];
    [v11 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:1930 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollectionReference.assetCollection", v13, v15}];

    goto LABEL_10;
  }

LABEL_3:
  v7 = [v6 photoLibrary];
  v8 = PXCMMHasSendAndReceiveCapabilities(v7);

  v9 = v8 && [v6 assetCollectionType] != 8 && objc_msgSend(v6, "assetCollectionType") != 7;
  return v9;
}

@end