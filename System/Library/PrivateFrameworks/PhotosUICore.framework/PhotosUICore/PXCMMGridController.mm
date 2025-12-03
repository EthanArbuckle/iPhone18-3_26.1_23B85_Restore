@interface PXCMMGridController
+ (BOOL)useGridZeroForCMMSession:(id)session;
- (PXCMMGridController)init;
- (PXCMMGridController)initWithCMMSession:(id)session enableDismissAction:(BOOL)action assetActionManager:(id)manager assetCollectionActionManager:(id)actionManager performerDelegate:(id)delegate photosViewConfigurationBlock:(id)block;
@end

@implementation PXCMMGridController

- (PXCMMGridController)initWithCMMSession:(id)session enableDismissAction:(BOOL)action assetActionManager:(id)manager assetCollectionActionManager:(id)actionManager performerDelegate:(id)delegate photosViewConfigurationBlock:(id)block
{
  actionCopy = action;
  sessionCopy = session;
  managerCopy = manager;
  actionManagerCopy = actionManager;
  delegateCopy = delegate;
  blockCopy = block;
  v52.receiver = self;
  v52.super_class = PXCMMGridController;
  v18 = [(PXCMMGridController *)&v52 init];
  if (!v18)
  {
    goto LABEL_27;
  }

  viewModel = [sessionCopy viewModel];
  selectionManager = [viewModel selectionManager];

  if (!managerCopy)
  {
    v20 = sessionCopy;
    v21 = selectionManager;
    dataSourceManager = [v21 dataSourceManager];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      managerCopy = [(PXPhotoKitAssetActionManager *)[PXPhotoKitMessagesAssetActionManager alloc] initWithSelectionManager:v21];
      importStatusManager = [v20 importStatusManager];
      [(PXPhotoKitAssetActionManager *)managerCopy setImportStatusManager:importStatusManager];

      importSessionID = [v20 importSessionID];
      [(PXPhotoKitAssetActionManager *)managerCopy setImportSessionID:importSessionID];

      v26 = +[PXCompleteMyMomentSettings sharedInstance];
      v27 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      [v27 addObject:*off_1E7721A28];
      if (([v26 disableShareAction]& 1) == 0)
      {
        [v27 addObject:*off_1E7721B88];
      }

      if (([v26 disableCopyAction]& 1) == 0)
      {
        [v27 addObject:*off_1E7721A58];
      }

      [(PXActionManager *)managerCopy setAllowedActionTypes:v27];
    }

    else
    {
      v26 = PLSharingGetLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3C1C000, v26, OS_LOG_TYPE_ERROR, "Unable to provide action manager because data source manager is not of type PXPhotoKitAssetsDataSourceManager.", buf, 2u);
      }

      managerCopy = 0;
    }

    [(PXActionManager *)managerCopy setPerformerDelegate:delegateCopy];
    if (actionManagerCopy)
    {
      goto LABEL_18;
    }

LABEL_15:
    v28 = sessionCopy;
    if (v28)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_17:
        momentShare = [v28 momentShare];
        actionManagerCopy = [[PXPhotoKitAssetCollectionActionManager alloc] initWithAssetCollection:momentShare displayTitleInfo:0];

        [(PXActionManager *)actionManagerCopy setPerformerDelegate:delegateCopy];
        goto LABEL_18;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PXPhotoKitAssetCollectionActionManager *_AssetCollectionActionManager(PXCMMSession *__strong)"];
      v48 = objc_opt_class();
      v47 = NSStringFromClass(v48);
      px_descriptionForAssertionMessage = [v28 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInFunction:v45 file:@"PXCMMGridController.m" lineNumber:147 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"session", v47, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PXPhotoKitAssetCollectionActionManager *_AssetCollectionActionManager(PXCMMSession *__strong)"];
      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      [currentHandler handleFailureInFunction:v45 file:@"PXCMMGridController.m" lineNumber:147 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"session", v47}];
    }

    goto LABEL_17;
  }

  if (!actionManagerCopy)
  {
    goto LABEL_15;
  }

LABEL_18:
  v30 = [off_1E7721830 alloc];
  dataSourceManager2 = [sessionCopy dataSourceManager];
  mediaProvider = [sessionCopy mediaProvider];
  v33 = [v30 initWithDataSourceManager:dataSourceManager2 mediaProvider:mediaProvider selectionManager:selectionManager assetActionManager:managerCopy assetCollectionActionManager:actionManagerCopy];

  [v33 setFooterVisibilityStyle:2];
  [v33 setAllowedActions:196769];
  if (actionCopy)
  {
    [v33 setAllowedActions:{objc_msgSend(v33, "allowedActions") | 0x2000}];
  }

  if ((MEMORY[0x1A590D320]([v33 setSectionBodyStyle:2]) & 1) == 0)
  {
    [v33 setWantsModernNavBarButtons:1];
  }

  [v33 setNavBarStyle:3];
  [v33 setPrefersActionsInToolbar:1];
  importStatusManager2 = [sessionCopy importStatusManager];
  [v33 setAssetImportStatusManager:importStatusManager2];

  v35 = [sessionCopy momentShareStatusPresentationWithPresentationStyle:2];
  statusPresentation = v18->_statusPresentation;
  v18->_statusPresentation = v35;

  if (v18->_statusPresentation)
  {
    v37 = [[PXCMMFooterViewModel alloc] initWithMomentShareStatusPresentation:v18->_statusPresentation mode:1];
    [v33 setFooterViewModel:v37];
    v38 = objc_alloc_init(off_1E77218E8);
    v39 = [[PXCMMStatusController alloc] initWithStatusPresentation:v18->_statusPresentation viewModel:v38];
    statusController = v18->_statusController;
    v18->_statusController = v39;

    [v33 setEmptyPlaceholderStatusViewModel:v38];
  }

  if (blockCopy)
  {
    blockCopy[2](blockCopy, v33);
  }

  v41 = [[PXPhotosUIViewController alloc] initWithConfiguration:v33];
  gridViewController = v18->_gridViewController;
  v18->_gridViewController = &v41->super;

LABEL_27:
  return v18;
}

- (PXCMMGridController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMGridController.m" lineNumber:51 description:{@"%s is not available as initializer", "-[PXCMMGridController init]"}];

  abort();
}

+ (BOOL)useGridZeroForCMMSession:(id)session
{
  sessionCopy = session;
  sharedInstance = [off_1E7721810 sharedInstance];
  enableInCMM = [sharedInstance enableInCMM];

  v6 = [sessionCopy activityType] == 3 || objc_msgSend(sessionCopy, "activityType") == 2;
  return enableInCMM & v6;
}

@end