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
  v4 = [(PXCMMActionManager *)self performerDelegate];
  [(PXActionPerformer *)v3 setDelegate:v4];

  return v3;
}

- (id)messageComposeActionPerformer
{
  v3 = [(PXActionPerformer *)[PXCMMPhotoKitMessageComposeActionPerformer alloc] initWithActionType:@"PXCMMActionTypeMessageCompose"];
  v4 = [(PXCMMActionManager *)self performerDelegate];
  [(PXActionPerformer *)v3 setDelegate:v4];

  return v3;
}

- (id)publishActionPerformer
{
  v3 = +[PXCompleteMyMomentSettings sharedInstance];
  v4 = [v3 publishTransport];

  if (!v4)
  {
    v5 = off_1E771D378;
    goto LABEL_5;
  }

  if (v4 == 1)
  {
    v5 = off_1E771D3D0;
LABEL_5:
    v6 = [objc_alloc(*v5) initWithActionType:@"PXCMMActionTypePublish"];
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:
  v7 = [(PXCMMActionManager *)self performerDelegate];
  [v6 setDelegate:v7];

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
    v4 = [(PXCMMActionManager *)v2 performerClassByType];
    [v4 setObject:objc_opt_class() forKeyedSubscript:@"PXCMMActionTypeAccept"];
    [v4 setObject:objc_opt_class() forKeyedSubscript:@"PXCMMActionTypeCleanup"];
    [v4 setObject:objc_opt_class() forKeyedSubscript:@"PXCMMActionTypeForceSync"];
    [v4 setObject:objc_opt_class() forKeyedSubscript:@"PXCMMActionTypeSaveToLibrary"];
    [v4 setObject:objc_opt_class() forKeyedSubscript:@"PXCMMActionTypeNotifyWhenReadyIfNeeded"];
    [v4 setObject:objc_opt_class() forKeyedSubscript:@"PXCMMActionTypeDelete"];
    [v4 setObject:objc_opt_class() forKeyedSubscript:@"PXCMMActionTypePublish"];
  }

  return v3;
}

@end