@interface PXPhotoKitAssetCollectionMomentShareActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs;
- (void)completeUserInteractionTaskWithSuccess:(BOOL)success error:(id)error;
- (void)performUserInteractionTask;
- (void)workflowCoordinator:(id)coordinator workflowViewController:(id)controller didFinishSession:(id)session withActivityState:(unint64_t)state;
@end

@implementation PXPhotoKitAssetCollectionMomentShareActionPerformer

- (void)completeUserInteractionTaskWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  workflowCoordinator = self->_workflowCoordinator;
  self->_workflowCoordinator = 0;
  errorCopy = error;

  v8.receiver = self;
  v8.super_class = PXPhotoKitAssetCollectionMomentShareActionPerformer;
  [(PXActionPerformer *)&v8 completeUserInteractionTaskWithSuccess:successCopy error:errorCopy];
}

- (void)workflowCoordinator:(id)coordinator workflowViewController:(id)controller didFinishSession:(id)session withActivityState:(unint64_t)state
{
  state = [(PXActionPerformer *)self dismissViewController:controller completionHandler:0, session, state];
  v8 = 0;
  if (!state)
  {
    v8 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXCMMErrorDomain" code:-1002 debugDescription:@"Failed to dismiss the CMM view controller"];
  }

  v9 = v8;
  [(PXPhotoKitAssetCollectionMomentShareActionPerformer *)self completeUserInteractionTaskWithSuccess:state error:v8];
}

- (void)performUserInteractionTask
{
  v3 = [PXCMMPhotoKitContext alloc];
  assetCollection = [(PXAssetCollectionActionPerformer *)self assetCollection];
  v9 = [(PXCMMPhotoKitContext *)v3 initWithAssetCollection:assetCollection activityType:1 sourceType:0];

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

+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs
{
  assetCollection = [reference assetCollection];
  if (!assetCollection)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:1930 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollectionReference.assetCollection", v13}];
LABEL_10:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v13 = NSStringFromClass(v14);
    px_descriptionForAssertionMessage = [assetCollection px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:1930 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollectionReference.assetCollection", v13, px_descriptionForAssertionMessage}];

    goto LABEL_10;
  }

LABEL_3:
  photoLibrary = [assetCollection photoLibrary];
  v8 = PXCMMHasSendAndReceiveCapabilities(photoLibrary);

  v9 = v8 && [assetCollection assetCollectionType] != 8 && objc_msgSend(assetCollection, "assetCollectionType") != 7;
  return v9;
}

@end