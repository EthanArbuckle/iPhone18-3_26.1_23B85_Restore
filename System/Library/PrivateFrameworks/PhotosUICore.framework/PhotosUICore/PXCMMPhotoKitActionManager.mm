@interface PXCMMPhotoKitActionManager
- (PXCMMPhotoKitActionManager)init;
- (id)messageComposeActionPerformer;
- (id)photosPickerActionPerformer;
- (id)publishActionPerformer;
@end

@implementation PXCMMPhotoKitActionManager

- (id)photosPickerActionPerformer
{
  v3 = [(PXActionPerformer *)[PXCMMPhotoKitPhotosPickerActionPerformer alloc] initWithActionType:@"PXCMMActionTypeShowPhotosPicker"];
  performerDelegate = [(PXCMMActionManager *)self performerDelegate];
  [(PXActionPerformer *)v3 setDelegate:performerDelegate];

  return v3;
}

- (id)messageComposeActionPerformer
{
  v3 = [(PXActionPerformer *)[PXCMMPhotoKitMessageComposeActionPerformer alloc] initWithActionType:@"PXCMMActionTypeMessageCompose"];
  performerDelegate = [(PXCMMActionManager *)self performerDelegate];
  [(PXActionPerformer *)v3 setDelegate:performerDelegate];

  return v3;
}

- (id)publishActionPerformer
{
  v3 = +[PXCompleteMyMomentSettings sharedInstance];
  publishTransport = [v3 publishTransport];

  if (!publishTransport)
  {
    v5 = off_1E771D378;
    goto LABEL_5;
  }

  if (publishTransport == 1)
  {
    v5 = off_1E771D3D0;
LABEL_5:
    v6 = [objc_alloc(*v5) initWithActionType:@"PXCMMActionTypePublish"];
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:
  performerDelegate = [(PXCMMActionManager *)self performerDelegate];
  [v6 setDelegate:performerDelegate];

  return v6;
}

- (PXCMMPhotoKitActionManager)init
{
  v6.receiver = self;
  v6.super_class = PXCMMPhotoKitActionManager;
  v2 = [(PXCMMActionManager *)&v6 init];
  v3 = v2;
  if (v2)
  {
    performerClassByType = [(PXCMMActionManager *)v2 performerClassByType];
    [performerClassByType setObject:objc_opt_class() forKeyedSubscript:@"PXCMMActionTypeAccept"];
    [performerClassByType setObject:objc_opt_class() forKeyedSubscript:@"PXCMMActionTypeCleanup"];
    [performerClassByType setObject:objc_opt_class() forKeyedSubscript:@"PXCMMActionTypeForceSync"];
    [performerClassByType setObject:objc_opt_class() forKeyedSubscript:@"PXCMMActionTypeSaveToLibrary"];
    [performerClassByType setObject:objc_opt_class() forKeyedSubscript:@"PXCMMActionTypeNotifyWhenReadyIfNeeded"];
    [performerClassByType setObject:objc_opt_class() forKeyedSubscript:@"PXCMMActionTypeDelete"];
    [performerClassByType setObject:objc_opt_class() forKeyedSubscript:@"PXCMMActionTypePublish"];
  }

  return v3;
}

@end