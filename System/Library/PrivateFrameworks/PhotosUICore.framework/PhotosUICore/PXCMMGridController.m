@interface PXCMMGridController
+ (BOOL)useGridZeroForCMMSession:(id)a3;
- (PXCMMGridController)init;
- (PXCMMGridController)initWithCMMSession:(id)a3 enableDismissAction:(BOOL)a4 assetActionManager:(id)a5 assetCollectionActionManager:(id)a6 performerDelegate:(id)a7 photosViewConfigurationBlock:(id)a8;
@end

@implementation PXCMMGridController

- (PXCMMGridController)initWithCMMSession:(id)a3 enableDismissAction:(BOOL)a4 assetActionManager:(id)a5 assetCollectionActionManager:(id)a6 performerDelegate:(id)a7 photosViewConfigurationBlock:(id)a8
{
  v50 = a4;
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v52.receiver = self;
  v52.super_class = PXCMMGridController;
  v18 = [(PXCMMGridController *)&v52 init];
  if (!v18)
  {
    goto LABEL_27;
  }

  v19 = [v13 viewModel];
  v51 = [v19 selectionManager];

  if (!v14)
  {
    v20 = v13;
    v21 = v51;
    v22 = [v21 dataSourceManager];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v14 = [(PXPhotoKitAssetActionManager *)[PXPhotoKitMessagesAssetActionManager alloc] initWithSelectionManager:v21];
      v24 = [v20 importStatusManager];
      [(PXPhotoKitAssetActionManager *)v14 setImportStatusManager:v24];

      v25 = [v20 importSessionID];
      [(PXPhotoKitAssetActionManager *)v14 setImportSessionID:v25];

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

      [(PXActionManager *)v14 setAllowedActionTypes:v27];
    }

    else
    {
      v26 = PLSharingGetLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3C1C000, v26, OS_LOG_TYPE_ERROR, "Unable to provide action manager because data source manager is not of type PXPhotoKitAssetsDataSourceManager.", buf, 2u);
      }

      v14 = 0;
    }

    [(PXActionManager *)v14 setPerformerDelegate:v16];
    if (v15)
    {
      goto LABEL_18;
    }

LABEL_15:
    v28 = v13;
    if (v28)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_17:
        v29 = [v28 momentShare];
        v15 = [[PXPhotoKitAssetCollectionActionManager alloc] initWithAssetCollection:v29 displayTitleInfo:0];

        [(PXActionManager *)v15 setPerformerDelegate:v16];
        goto LABEL_18;
      }

      v44 = [MEMORY[0x1E696AAA8] currentHandler];
      v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PXPhotoKitAssetCollectionActionManager *_AssetCollectionActionManager(PXCMMSession *__strong)"];
      v48 = objc_opt_class();
      v47 = NSStringFromClass(v48);
      v49 = [v28 px_descriptionForAssertionMessage];
      [v44 handleFailureInFunction:v45 file:@"PXCMMGridController.m" lineNumber:147 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"session", v47, v49}];
    }

    else
    {
      v44 = [MEMORY[0x1E696AAA8] currentHandler];
      v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PXPhotoKitAssetCollectionActionManager *_AssetCollectionActionManager(PXCMMSession *__strong)"];
      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      [v44 handleFailureInFunction:v45 file:@"PXCMMGridController.m" lineNumber:147 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"session", v47}];
    }

    goto LABEL_17;
  }

  if (!v15)
  {
    goto LABEL_15;
  }

LABEL_18:
  v30 = [off_1E7721830 alloc];
  v31 = [v13 dataSourceManager];
  v32 = [v13 mediaProvider];
  v33 = [v30 initWithDataSourceManager:v31 mediaProvider:v32 selectionManager:v51 assetActionManager:v14 assetCollectionActionManager:v15];

  [v33 setFooterVisibilityStyle:2];
  [v33 setAllowedActions:196769];
  if (v50)
  {
    [v33 setAllowedActions:{objc_msgSend(v33, "allowedActions") | 0x2000}];
  }

  if ((MEMORY[0x1A590D320]([v33 setSectionBodyStyle:2]) & 1) == 0)
  {
    [v33 setWantsModernNavBarButtons:1];
  }

  [v33 setNavBarStyle:3];
  [v33 setPrefersActionsInToolbar:1];
  v34 = [v13 importStatusManager];
  [v33 setAssetImportStatusManager:v34];

  v35 = [v13 momentShareStatusPresentationWithPresentationStyle:2];
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

  if (v17)
  {
    v17[2](v17, v33);
  }

  v41 = [[PXPhotosUIViewController alloc] initWithConfiguration:v33];
  gridViewController = v18->_gridViewController;
  v18->_gridViewController = &v41->super;

LABEL_27:
  return v18;
}

- (PXCMMGridController)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXCMMGridController.m" lineNumber:51 description:{@"%s is not available as initializer", "-[PXCMMGridController init]"}];

  abort();
}

+ (BOOL)useGridZeroForCMMSession:(id)a3
{
  v3 = a3;
  v4 = [off_1E7721810 sharedInstance];
  v5 = [v4 enableInCMM];

  v6 = [v3 activityType] == 3 || objc_msgSend(v3, "activityType") == 2;
  return v5 & v6;
}

@end