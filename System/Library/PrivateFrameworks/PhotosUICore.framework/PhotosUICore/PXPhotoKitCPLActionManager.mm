@interface PXPhotoKitCPLActionManager
- (PXPhotoKitCPLActionManager)init;
- (PXPhotoKitCPLActionManager)initWithPhotoLibrary:(id)library;
- (id)actionPerformerForActionType:(id)type;
@end

@implementation PXPhotoKitCPLActionManager

- (id)actionPerformerForActionType:(id)type
{
  typeCopy = type;
  if (!typeCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitCPLActionManager.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"actionType"}];
  }

  if ((([typeCopy isEqualToString:@"PXCPLActionTypePause"] & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"PXCPLActionTypeResume") & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"PXCPLActionTypeManageCloudStorage") & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"PXCPLActionTypeManageLocalStorage") & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"PXCPLActionTypeManageCellularDataDisabled") & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"PXCPLActionTypeManageAirplaneMode") & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"PXCPLActionTypeManageExitMode") & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"PXCPLActionTypeLearnMoreClientVersionTooOld") & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"PXCPLActionTypeManageClientAuthentication") & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"PXCPLActionTypeLearnMoreUpgradeSuggested") & 1) != 0 || objc_msgSend(typeCopy, "isEqualToString:", @"PXCPLActionTypeViewItemsFailingToUpload")) && (v6 = objc_opt_class()) != 0)
  {
    v7 = [[v6 alloc] initWithActionType:typeCopy photoLibrary:self->_photoLibrary];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (PXPhotoKitCPLActionManager)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitCPLActionManager.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v11.receiver = self;
  v11.super_class = PXPhotoKitCPLActionManager;
  v7 = [(PXPhotoKitCPLActionManager *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_photoLibrary, library);
  }

  return v8;
}

- (PXPhotoKitCPLActionManager)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitCPLActionManager.m" lineNumber:17 description:{@"%s is not available as initializer", "-[PXPhotoKitCPLActionManager init]"}];

  abort();
}

@end