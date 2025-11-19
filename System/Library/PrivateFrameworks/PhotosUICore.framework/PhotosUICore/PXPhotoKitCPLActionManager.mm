@interface PXPhotoKitCPLActionManager
- (PXPhotoKitCPLActionManager)init;
- (PXPhotoKitCPLActionManager)initWithPhotoLibrary:(id)a3;
- (id)actionPerformerForActionType:(id)a3;
@end

@implementation PXPhotoKitCPLActionManager

- (id)actionPerformerForActionType:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXPhotoKitCPLActionManager.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"actionType"}];
  }

  if ((([v5 isEqualToString:@"PXCPLActionTypePause"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"PXCPLActionTypeResume") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"PXCPLActionTypeManageCloudStorage") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"PXCPLActionTypeManageLocalStorage") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"PXCPLActionTypeManageCellularDataDisabled") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"PXCPLActionTypeManageAirplaneMode") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"PXCPLActionTypeManageExitMode") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"PXCPLActionTypeLearnMoreClientVersionTooOld") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"PXCPLActionTypeManageClientAuthentication") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"PXCPLActionTypeLearnMoreUpgradeSuggested") & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"PXCPLActionTypeViewItemsFailingToUpload")) && (v6 = objc_opt_class()) != 0)
  {
    v7 = [[v6 alloc] initWithActionType:v5 photoLibrary:self->_photoLibrary];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (PXPhotoKitCPLActionManager)initWithPhotoLibrary:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXPhotoKitCPLActionManager.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v11.receiver = self;
  v11.super_class = PXPhotoKitCPLActionManager;
  v7 = [(PXPhotoKitCPLActionManager *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_photoLibrary, a3);
  }

  return v8;
}

- (PXPhotoKitCPLActionManager)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXPhotoKitCPLActionManager.m" lineNumber:17 description:{@"%s is not available as initializer", "-[PXPhotoKitCPLActionManager init]"}];

  abort();
}

@end