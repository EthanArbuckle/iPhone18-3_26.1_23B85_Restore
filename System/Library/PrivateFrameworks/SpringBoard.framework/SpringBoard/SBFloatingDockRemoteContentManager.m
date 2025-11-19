@interface SBFloatingDockRemoteContentManager
- (BOOL)_deleteFileStackIcon:(id)a3;
- (BOOL)_isAllowedClientBundleIdentifier:(id)a3;
- (BOOL)_saveCurrentFileStackURLSourceState:(id)a3;
- (BOOL)_setSecurityScopedURLReadFromBookmarkDataOnFileStackIcon:(id)a3;
- (BOOL)_shouldInsertDownloadsFolderAfterFirstDownload;
- (BOOL)deleteFileStackIcon:(id)a3;
- (BOOL)isRemoteContentPresenting;
- (CGRect)_anchorFrameForfileStackIconView:(id)a3;
- (CGRect)_iconImageFrameForIconView:(id)a3;
- (NSArray)fileStackIconsInDock;
- (SBFloatingDockRemoteContentManager)initWithFloatingDockRootViewController:(id)a3 windowScene:(id)a4;
- (SBFloatingDockRemoteContentManagerDelegate)delegate;
- (SBWindowScene)windowScene;
- (id)_clientBundleIdentifier;
- (id)_defaultProcessIdentity;
- (id)_fileStackIconsFromFloatingDock:(id)a3;
- (id)_floatingDockUserListFolder;
- (id)_floatingDockUserListModel;
- (id)_floatingDockUtilitiesListFolder;
- (id)_floatingDockUtilitiesListModel;
- (id)_hostComponent;
- (id)_iconViewForIcon:(id)a3;
- (id)_openedIconView;
- (id)_urlForFileStackIconDataSourceUniqueIdentifierFromURLSourceDataStore:(id)a3;
- (id)_urlForFileStackIconFromURLSourceDataStore:(id)a3;
- (id)iconImageWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 options:(unint64_t)a5 forFileStackIcon:(id)a6;
- (void)_cleanUpConnectionIfNeeded;
- (void)_cleanUpOpenIndicatorView;
- (void)_cleanUpURLSourceDataStore;
- (void)_closeFileStackForIconView:(id)a3 animated:(BOOL)a4;
- (void)_createFileStackIconURLSourceDataStore;
- (void)_deleteFileStackIconURLSourceFromDisk:(id)a3 withError:(id *)a4;
- (void)_notifyClientConfigurationDidChangeOnFileStackIcon:(id)a3;
- (void)_notifyClientToPrewarmFileStackIconAssociatedFoldersAndOpenIndicators;
- (void)_openFileStackForIconView:(id)a3;
- (void)_persistFileStackIconURLSourceToDisk:(id)a3 withError:(id *)a4;
- (void)_setupRemoteContentScene;
- (void)_setupRemoteContentSceneView;
- (void)_validateFloatingDockListModel:(id)a3;
- (void)addSceneHostingViewMatchMoveAnimationWithIcon:(id)a3;
- (void)applicationRestrictionController:(id)a3 didUpdateVisibleTags:(id)a4 hiddenTags:(id)a5;
- (void)clientIsReady;
- (void)clientRequestToAcknowledgeDidFinishAnimatingFor:(BOOL)a3 withFileStackIcon:(id)a4;
- (void)clientRequestToDeleteDragAndDropTempDirsWithSessionID:(id)a3;
- (void)clientRequestToInsertFileStackIcon:(id)a3;
- (void)clientRequestToRemoveFileStackIcon:(id)a3;
- (void)clientRequestToUpdateFileStackIcon:(id)a3 toUrl:(id)a4;
- (void)clientRequestToUpdateFileStackIcon:(id)a3 withThumbnail:(id)a4;
- (void)closeFileStackIconIfNeeded;
- (void)completeContextRequestUpdateFromHost:(id)a3 withError:(id)a4;
- (void)configureIconViewForFinishDownloadAnimationDidFinish:(id)a3;
- (void)configureIconViewForFinishDownloadAnimationWillBegin:(id)a3;
- (void)createOpenIndicatorViewForFileStackIcon:(id)a3;
- (void)deactivateSceneView;
- (void)dealloc;
- (void)handleDownloadCompleted:(id)a3;
- (void)handleDownloadCompletedForFileStackIcon:(id)a3 iconUrl:(id)a4 isDownloadsFolder:(BOOL)a5;
- (void)handleFloatingDockFrameDidChange:(id)a3;
- (void)handleIconModelDidLayout:(id)a3;
- (void)handleInstalledAppsDidChange:(id)a3;
- (void)hideAllOpenIndicatorViews;
- (void)hideRemoteContent:(BOOL)a3;
- (void)iconList:(id)a3 didAddIcon:(id)a4;
- (void)iconList:(id)a3 didRemoveIcon:(id)a4;
- (void)iconView:(id)a3 performDrop:(id)a4;
- (void)reactivateSceneView;
- (void)removeOpenIndicatorViewForFileStackIcon:(id)a3;
- (void)removeOpenIndicatorViewForIconUniqueIdentifier:(id)a3;
- (void)removeSceneHostingViewMatchMoveAnimation;
- (void)repositionRemoteContent;
- (void)setOpenedFileStackIcon:(id)a3;
- (void)showAllOpenIndicatorViews;
- (void)tapFileStackIconView:(id)a3;
@end

@implementation SBFloatingDockRemoteContentManager

- (SBFloatingDockRemoteContentManager)initWithFloatingDockRootViewController:(id)a3 windowScene:(id)a4
{
  v7 = a3;
  v8 = a4;
  v31.receiver = self;
  v31.super_class = SBFloatingDockRemoteContentManager;
  v9 = [(SBFloatingDockRemoteContentManager *)&v31 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_floatingDockRootViewController, a3);
    objc_storeWeak(&v10->_windowScene, v8);
    v10->_contentReady = 0;
    v11 = [MEMORY[0x277CBEB38] dictionary];
    fileStackIconOpenIndicators = v10->_fileStackIconOpenIndicators;
    v10->_fileStackIconOpenIndicators = v11;

    v13 = [(SBFloatingDockRemoteContentManager *)v10 _floatingDockUtilitiesListModel];
    [v13 addListObserver:v10];

    [(SBFloatingDockRemoteContentManager *)v10 _setupRemoteContentScene];
    [(SBFloatingDockRemoteContentManager *)v10 _createFileStackIconURLSourceDataStore];
    v14 = [MEMORY[0x277D65ED8] sharedInstance];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __89__SBFloatingDockRemoteContentManager_initWithFloatingDockRootViewController_windowScene___block_invoke;
    v29[3] = &unk_2783A8C18;
    v15 = v10;
    v30 = v15;
    [v14 performAfterFirstUnlockSinceBootUsingBlock:v29];

    v16 = [MEMORY[0x277CCAB98] defaultCenter];
    [v16 addObserver:v15 selector:sel_handleDownloadCompleted_ name:*MEMORY[0x277D06178] object:0];

    v17 = [MEMORY[0x277D06248] sharedManager];
    [v17 startObservingDownloadsFolder];

    v18 = [MEMORY[0x277CCAB98] defaultCenter];
    [v18 addObserver:v15 selector:sel_handleIconModelWillLayout_ name:*MEMORY[0x277D66700] object:0];

    v19 = [MEMORY[0x277CCAB98] defaultCenter];
    [v19 addObserver:v15 selector:sel_handleIconModelDidLayout_ name:*MEMORY[0x277D666F0] object:0];

    v20 = [MEMORY[0x277CCAB98] defaultCenter];
    [v20 addObserver:v15 selector:sel_handleFloatingDockFrameDidChange_ name:@"SBFloatingDockControllerFrameDidChangeNotification" object:0];

    v21 = [MEMORY[0x277CCAB98] defaultCenter];
    [v21 addObserver:v15 selector:sel_handleInstalledAppsDidChange_ name:@"SBInstalledApplicationsDidChangeNotification" object:0];

    v22 = [MEMORY[0x277CBEB38] dictionary];
    fileStackIconThumbnails = v15->_fileStackIconThumbnails;
    v15->_fileStackIconThumbnails = v22;

    v24 = [MEMORY[0x277CBEB38] dictionary];
    dragAndDropTempDirsToDelete = v15->_dragAndDropTempDirsToDelete;
    v15->_dragAndDropTempDirsToDelete = v24;

    v26 = [MEMORY[0x277CBEB18] array];
    hiddenRestorableFileStackIcons = v15->_hiddenRestorableFileStackIcons;
    v15->_hiddenRestorableFileStackIcons = v26;
  }

  return v10;
}

void __89__SBFloatingDockRemoteContentManager_initWithFloatingDockRootViewController_windowScene___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [v1[7] floatingDockViewController];
  v2 = [v3 dockUtilitiesListModel];
  [v1 _validateFloatingDockListModel:v2];
}

- (void)dealloc
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4 = [MEMORY[0x277D06248] sharedManager];
  [v4 stopObservingDownloadsFolder];

  v5 = [(SBFloatingDockRemoteContentManager *)self fileStackIconThumbnails];
  [v5 removeAllObjects];

  fileStackIconThumbnails = self->_fileStackIconThumbnails;
  self->_fileStackIconThumbnails = 0;

  v7 = [(SBFloatingDockRemoteContentManager *)self dragAndDropTempDirsToDelete];
  [v7 removeAllObjects];

  dragAndDropTempDirsToDelete = self->_dragAndDropTempDirsToDelete;
  self->_dragAndDropTempDirsToDelete = 0;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [(SBFloatingDockRemoteContentManager *)self fileStackIconsInDock];
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        [v14 removeObserver:self];
        v15 = [v14 url];
        [v15 stopAccessingSecurityScopedResource];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v16.receiver = self;
  v16.super_class = SBFloatingDockRemoteContentManager;
  [(SBFloatingDockRemoteContentManager *)&v16 dealloc];
}

- (id)_floatingDockUserListModel
{
  v2 = [(SBFloatingDockRemoteContentManager *)self _floatingDockUserListView];
  v3 = [v2 model];

  return v3;
}

- (id)_floatingDockUserListFolder
{
  v2 = [(SBFloatingDockRemoteContentManager *)self _floatingDockUserListModel];
  v3 = [v2 folder];

  return v3;
}

- (id)_floatingDockUtilitiesListModel
{
  v2 = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListView];
  v3 = [v2 model];

  return v3;
}

- (id)_floatingDockUtilitiesListFolder
{
  v2 = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListModel];
  v3 = [v2 folder];

  return v3;
}

- (id)_openedIconView
{
  v3 = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListView];
  v4 = [(SBFloatingDockRemoteContentManager *)self openedFileStackIcon];
  v5 = [v3 iconViewForIcon:v4];

  return v5;
}

- (id)_iconViewForIcon:(id)a3
{
  v4 = a3;
  v5 = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListView];
  v6 = [v5 iconViewForIcon:v4];

  return v6;
}

- (NSArray)fileStackIconsInDock
{
  v3 = [(SBFloatingDockRemoteContentManager *)self floatingDockRootViewController];
  v4 = [(SBFloatingDockRemoteContentManager *)self _fileStackIconsFromFloatingDock:v3];

  return v4;
}

- (id)_fileStackIconsFromFloatingDock:(id)a3
{
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListView];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__SBFloatingDockRemoteContentManager__fileStackIconsFromFloatingDock___block_invoke;
  v8[3] = &unk_2783BC178;
  v6 = v4;
  v9 = v6;
  [v5 enumerateVisibleIconsUsingBlock:v8];

  return v6;
}

void __70__SBFloatingDockRemoteContentManager__fileStackIconsFromFloatingDock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isFileStackIcon])
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (void)addSceneHostingViewMatchMoveAnimationWithIcon:(id)a3
{
  v22[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBFloatingDockRemoteContentManager *)self floatingDockRootViewController];
  v6 = [v5 view];

  v7 = [(SBFloatingDockRemoteContentManager *)self _iconViewForIcon:v4];

  v8 = [MEMORY[0x277CD9EE8] animation];
  v9 = [v7 layer];
  [v8 setSourceLayer:v9];

  [v8 setDuration:INFINITY];
  [v8 setFillMode:*MEMORY[0x277CDA230]];
  [v8 setRemovedOnCompletion:0];
  [v8 setAppliesX:1];
  [v8 setAppliesY:1];
  [v8 setAppliesScale:0];
  v10 = [(SBFloatingDockRemoteContentManager *)self sceneHostingController];
  v11 = [v10 sceneView];
  v12 = [(SBFloatingDockRemoteContentManager *)self sceneHostingController];
  v13 = [v12 sceneView];
  [v13 bounds];
  [v11 convertRect:v7 toView:?];

  v14 = MEMORY[0x277CCAE60];
  UIRectGetCenter();
  v16 = v15;
  UIRectGetCenter();
  v17 = [v14 valueWithCGPoint:v16];
  v22[0] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  [v8 setSourcePoints:v18];

  v19 = [(SBFloatingDockRemoteContentManager *)self sceneHostingController];
  v20 = [v19 sceneView];
  v21 = [v20 layer];
  [v21 addAnimation:v8 forKey:@"SceneHostingControllerMatchMoveAnimationKey"];

  [v6 setNeedsLayout];
  [v6 layoutIfNeeded];
}

- (void)removeSceneHostingViewMatchMoveAnimation
{
  v3 = [(SBFloatingDockRemoteContentManager *)self sceneHostingController];
  v4 = [v3 sceneView];
  v9 = [v4 layer];

  v5 = [v9 animationKeys];
  LODWORD(v4) = [v5 containsObject:@"SceneHostingControllerMatchMoveAnimationKey"];

  if (v4)
  {
    v6 = [(SBFloatingDockRemoteContentManager *)self sceneHostingController];
    v7 = [v6 sceneView];
    v8 = [v7 layer];
    [v8 removeAnimationForKey:@"SceneHostingControllerMatchMoveAnimationKey"];
  }
}

- (void)hideRemoteContent:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBFloatingDockRemoteContentManager *)self sceneView];
  [v4 setHidden:v3];
}

- (void)repositionRemoteContent
{
  [(SBFloatingDockRemoteContentManager *)self removeSceneHostingViewMatchMoveAnimation];
  v3 = [(SBFloatingDockRemoteContentManager *)self openedFileStackIcon];

  if (v3)
  {
    v4 = [(SBFloatingDockRemoteContentManager *)self openedFileStackIcon];
    v5 = [(SBFloatingDockRemoteContentManager *)self _iconViewForIcon:v4];

    [(SBFloatingDockRemoteContentManager *)self _closeFileStackForIconView:v5 animated:1];
  }
}

- (void)tapFileStackIconView:(id)a3
{
  v4 = a3;
  [(SBFloatingDockRemoteContentManager *)self closeFileStackIconIfNeeded];
  [(SBFloatingDockRemoteContentManager *)self _openFileStackForIconView:v4];
}

- (void)closeFileStackIconIfNeeded
{
  v3 = [(SBFloatingDockRemoteContentManager *)self openedFileStackIcon];
  if (v3)
  {
    v4 = v3;
    v5 = [(SBFloatingDockRemoteContentManager *)self openedFileStackIcon];

    if (v5)
    {
      v8 = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListView];
      v6 = [(SBFloatingDockRemoteContentManager *)self openedFileStackIcon];
      v7 = [v8 displayedIconViewForIcon:v6];
      [(SBFloatingDockRemoteContentManager *)self _closeFileStackForIconView:v7];
    }
  }
}

- (BOOL)deleteFileStackIcon:(id)a3
{
  v4 = a3;
  v5 = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListView];
  [v5 markIcon:v4 asNeedingAnimation:0];

  LOBYTE(self) = [(SBFloatingDockRemoteContentManager *)self _deleteFileStackIcon:v4];
  return self;
}

- (void)deactivateSceneView
{
  sceneView = self->_sceneView;
  if (sceneView)
  {
    v4 = [(UIView *)sceneView superview];

    if (v4)
    {
      v5 = self->_sceneView;

      [(UIView *)v5 removeFromSuperview];
    }
  }
}

- (void)reactivateSceneView
{
  sceneView = self->_sceneView;
  if (sceneView)
  {
    v4 = [(UIView *)sceneView superview];

    if (!v4)
    {

      [(SBFloatingDockRemoteContentManager *)self _setupRemoteContentSceneView];
    }
  }
}

- (void)configureIconViewForFinishDownloadAnimationWillBegin:(id)a3
{
  v86 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 icon];
  if ([v5 isFileStackIcon])
  {
    v6 = objc_opt_class();
    v7 = v5;
    v73 = v5;
    if (v6)
    {
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    [v4 setUserInteractionEnabled:0];
    v10 = [(SBFloatingDockRemoteContentManager *)self windowScene];
    v79 = [v10 _synchronizedDrawingFence];

    v11 = [v4 layer];
    RenderId = CALayerGetRenderId();

    v78 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:RenderId];
    v74 = v4;
    v13 = [v4 layer];
    v14 = CALayerGetContext();
    v15 = [v14 contextId];

    v77 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v15];
    v16 = [(SBFloatingDockRemoteContentManager *)self fileStackIconOpenIndicators];
    v17 = [v9 leafIdentifier];
    v18 = [v16 objectForKey:v17];

    if (v18)
    {
      v19 = [(SBFloatingDockRemoteContentManager *)self fileStackIconOpenIndicators];
      v20 = [v9 leafIdentifier];
      v21 = [v19 objectForKey:v20];
      v22 = [v21 layer];
      v23 = CALayerGetRenderId();
    }

    else
    {
      v23 = 0;
    }

    v76 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v23];
    v71 = v18;
    if (v18)
    {
      v24 = [(SBFloatingDockRemoteContentManager *)self fileStackIconOpenIndicators];
      v25 = [v9 leafIdentifier];
      v26 = [v24 objectForKey:v25];
      v27 = [v26 layer];
      v28 = CALayerGetContext();
      v29 = [v28 contextId];
    }

    else
    {
      v29 = 0;
    }

    v75 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v29];
    v30 = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListView];
    v31 = [v30 layout];
    [v31 iconImageInfoForGridSizeClass:*MEMORY[0x277D66508]];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;

    *&v40 = v37;
    v41 = [MEMORY[0x277CCABB0] numberWithFloat:v40];
    *&v42 = v39;
    v43 = [MEMORY[0x277CCABB0] numberWithFloat:v42];
    v69 = [(SBFloatingDockRemoteContentManager *)self _hostComponent];
    v68 = [v9 leafIdentifier];
    v44 = [v9 url];
    v45 = [v9 sortOrder];
    [v45 identifier];
    v47 = v46 = v9;
    v67 = [v46 isCurrentSortOrderAscending];
    v72 = v46;
    v48 = [v46 displayMode];
    v49 = [v48 identifier];
    v4 = v74;
    [(SBFloatingDockRemoteContentManager *)self _anchorFrameForfileStackIconView:v74];
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v58 = [(SBFloatingDockRemoteContentManager *)self floatingDockRootViewController];
    [v58 floatingDockScreenPresentationFrame];
    v70 = v41;
    [v69 configureFileStackIcon:v68 url:v44 sortingBy:v47 sortingOrderAscending:v67 displayMode:v49 anchorFrame:v78 floatingDockFrame:v51 sourceLayerRenderId:v53 sourceContextId:v55 openIndicatorLayerRenderId:v57 openIndicatorContextId:v59 iconImageInfoSize:v60 iconImageInfoScale:v61 iconImageContinuousCornerRadius:v62 requestFromHost:v77 fence:{v76, v75, v33, v35, v41, v43, 104, v79}];

    v63 = SBLogDockFileStack();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      [(SBFloatingDockRemoteContentManager *)self _anchorFrameForfileStackIconView:v74];
      v64 = NSStringFromCGRect(v87);
      v65 = [(SBFloatingDockRemoteContentManager *)self floatingDockRootViewController];
      [v65 floatingDockScreenPresentationFrame];
      v66 = NSStringFromCGRect(v88);
      *buf = 136315650;
      v81 = "[SBFloatingDockRemoteContentManager configureIconViewForFinishDownloadAnimationWillBegin:]";
      v82 = 2112;
      v83 = v64;
      v84 = 2112;
      v85 = v66;
      _os_log_impl(&dword_21ED4E000, v63, OS_LOG_TYPE_DEFAULT, "%s: anchorIconFrame %@, floatingDockFrame: %@", buf, 0x20u);
    }

    v5 = v73;
  }
}

- (void)configureIconViewForFinishDownloadAnimationDidFinish:(id)a3
{
  v86 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 icon];
  if ([v5 isFileStackIcon])
  {
    v6 = objc_opt_class();
    v7 = v5;
    v73 = v5;
    if (v6)
    {
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    [v4 setUserInteractionEnabled:1];
    v10 = [(SBFloatingDockRemoteContentManager *)self windowScene];
    v79 = [v10 _synchronizedDrawingFence];

    v11 = [v4 layer];
    RenderId = CALayerGetRenderId();

    v78 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:RenderId];
    v74 = v4;
    v13 = [v4 layer];
    v14 = CALayerGetContext();
    v15 = [v14 contextId];

    v77 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v15];
    v16 = [(SBFloatingDockRemoteContentManager *)self fileStackIconOpenIndicators];
    v17 = [v9 leafIdentifier];
    v18 = [v16 objectForKey:v17];

    if (v18)
    {
      v19 = [(SBFloatingDockRemoteContentManager *)self fileStackIconOpenIndicators];
      v20 = [v9 leafIdentifier];
      v21 = [v19 objectForKey:v20];
      v22 = [v21 layer];
      v23 = CALayerGetRenderId();
    }

    else
    {
      v23 = 0;
    }

    v76 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v23];
    v71 = v18;
    if (v18)
    {
      v24 = [(SBFloatingDockRemoteContentManager *)self fileStackIconOpenIndicators];
      v25 = [v9 leafIdentifier];
      v26 = [v24 objectForKey:v25];
      v27 = [v26 layer];
      v28 = CALayerGetContext();
      v29 = [v28 contextId];
    }

    else
    {
      v29 = 0;
    }

    v75 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v29];
    v30 = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListView];
    v31 = [v30 layout];
    [v31 iconImageInfoForGridSizeClass:*MEMORY[0x277D66508]];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;

    *&v40 = v37;
    v41 = [MEMORY[0x277CCABB0] numberWithFloat:v40];
    *&v42 = v39;
    v43 = [MEMORY[0x277CCABB0] numberWithFloat:v42];
    v69 = [(SBFloatingDockRemoteContentManager *)self _hostComponent];
    v68 = [v9 leafIdentifier];
    v44 = [v9 url];
    v45 = [v9 sortOrder];
    [v45 identifier];
    v47 = v46 = v9;
    v67 = [v46 isCurrentSortOrderAscending];
    v72 = v46;
    v48 = [v46 displayMode];
    v49 = [v48 identifier];
    v4 = v74;
    [(SBFloatingDockRemoteContentManager *)self _anchorFrameForfileStackIconView:v74];
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v58 = [(SBFloatingDockRemoteContentManager *)self floatingDockRootViewController];
    [v58 floatingDockScreenPresentationFrame];
    v70 = v41;
    [v69 configureFileStackIcon:v68 url:v44 sortingBy:v47 sortingOrderAscending:v67 displayMode:v49 anchorFrame:v78 floatingDockFrame:v51 sourceLayerRenderId:v53 sourceContextId:v55 openIndicatorLayerRenderId:v57 openIndicatorContextId:v59 iconImageInfoSize:v60 iconImageInfoScale:v61 iconImageContinuousCornerRadius:v62 requestFromHost:v77 fence:{v76, v75, v33, v35, v41, v43, 105, v79}];

    v63 = SBLogDockFileStack();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      [(SBFloatingDockRemoteContentManager *)self _anchorFrameForfileStackIconView:v74];
      v64 = NSStringFromCGRect(v87);
      v65 = [(SBFloatingDockRemoteContentManager *)self floatingDockRootViewController];
      [v65 floatingDockScreenPresentationFrame];
      v66 = NSStringFromCGRect(v88);
      *buf = 136315650;
      v81 = "[SBFloatingDockRemoteContentManager configureIconViewForFinishDownloadAnimationDidFinish:]";
      v82 = 2112;
      v83 = v64;
      v84 = 2112;
      v85 = v66;
      _os_log_impl(&dword_21ED4E000, v63, OS_LOG_TYPE_DEFAULT, "%s: anchorIconFrame %@, floatingDockFrame: %@", buf, 0x20u);
    }

    v5 = v73;
  }
}

- (BOOL)isRemoteContentPresenting
{
  v2 = [(SBFloatingDockRemoteContentManager *)self openedFileStackIcon];
  v3 = v2 != 0;

  return v3;
}

- (void)showAllOpenIndicatorViews
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(SBFloatingDockRemoteContentManager *)self fileStackIconOpenIndicators];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) setAlpha:1.0];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)hideAllOpenIndicatorViews
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(SBFloatingDockRemoteContentManager *)self fileStackIconOpenIndicators];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) setAlpha:0.0];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)setOpenedFileStackIcon:(id)a3
{
  v5 = a3;
  p_openedFileStackIcon = &self->_openedFileStackIcon;
  if (self->_openedFileStackIcon != v5)
  {
    v7 = v5;
    objc_storeStrong(p_openedFileStackIcon, a3);
    if (v7)
    {
      p_openedFileStackIcon = [(SBFloatingDockRemoteContentManager *)self addSceneHostingViewMatchMoveAnimationWithIcon:v7];
    }
  }

  MEMORY[0x2821F9730](p_openedFileStackIcon);
}

- (void)handleIconModelDidLayout:(id)a3
{
  v4 = [MEMORY[0x277D65ED8] sharedInstance];
  v5 = [v4 hasBeenUnlockedSinceBoot];

  if (v5)
  {
    v6 = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListModel];
    [v6 addListObserver:self];

    [(SBFloatingDockRemoteContentManager *)self _cleanUpURLSourceDataStore];
    [(SBFloatingDockRemoteContentManager *)self _cleanUpOpenIndicatorView];
    v7 = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListModel];
    [(SBFloatingDockRemoteContentManager *)self _validateFloatingDockListModel:v7];

    [(SBFloatingDockRemoteContentManager *)self _notifyClientToPrewarmFileStackIconAssociatedFoldersAndOpenIndicators];
  }
}

- (void)createOpenIndicatorViewForFileStackIcon:(id)a3
{
  v4 = a3;
  v5 = [(SBFloatingDockRemoteContentManager *)self fileStackIconOpenIndicators];
  v6 = [v4 leafIdentifier];
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    [(SBFloatingDockRemoteContentManager *)self removeOpenIndicatorViewForFileStackIcon:v4];
  }

  v8 = [(SBFloatingDockRemoteContentManager *)self _iconViewForIcon:v4];
  [v8 iconImageInfo];
  v10 = v9;
  v12 = v11;
  v15 = [[SBFileStackOpenIndicatorView alloc] initWithIconImageInfo:v9, v11, v13, v14];

  v16 = [(SBFloatingDockRemoteContentManager *)self fileStackIconOpenIndicators];
  v17 = [v4 leafIdentifier];
  [v16 setObject:v15 forKey:v17];

  v18 = [(SBFloatingDockRemoteContentManager *)self floatingDockRootViewController];
  v19 = [v18 view];
  [v19 insertSubview:v15 atIndex:0];

  [v8 iconContentScale];
  CGAffineTransformMakeScale(&v25, v20, v20);
  v21 = v12 * v25.c + v25.a * v10;
  v22 = v12 * v25.d + v25.b * v10;
  v23 = [(SBFloatingDockRemoteContentManager *)self fileStackIconOpenIndicators];
  v24 = (100 * [v23 count]);

  [(SBFileStackOpenIndicatorView *)v15 setFrame:-(v21 + 10000.0), v24, v21, v22];
}

- (void)removeOpenIndicatorViewForFileStackIcon:(id)a3
{
  v4 = [a3 leafIdentifier];
  [(SBFloatingDockRemoteContentManager *)self removeOpenIndicatorViewForIconUniqueIdentifier:v4];
}

- (void)removeOpenIndicatorViewForIconUniqueIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SBFloatingDockRemoteContentManager *)self fileStackIconOpenIndicators];
  v7 = [v5 objectForKey:v4];

  [v7 removeFromSuperview];
  v6 = [(SBFloatingDockRemoteContentManager *)self fileStackIconOpenIndicators];
  [v6 removeObjectForKey:v4];
}

- (void)_cleanUpOpenIndicatorView
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListModel];
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __63__SBFloatingDockRemoteContentManager__cleanUpOpenIndicatorView__block_invoke;
  v27[3] = &unk_2783B6A48;
  v5 = v4;
  v28 = v5;
  [v3 enumerateIconsUsingBlock:v27];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [(SBFloatingDockRemoteContentManager *)self fileStackIconOpenIndicators];
  v8 = [v7 allKeys];

  v9 = [v8 countByEnumeratingWithState:&v23 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        if (([v5 containsObject:v13] & 1) == 0)
        {
          [v6 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v23 objects:v30 count:16];
    }

    while (v10);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v14 = v6;
  v15 = [v14 countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v20;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(SBFloatingDockRemoteContentManager *)self removeOpenIndicatorViewForIconUniqueIdentifier:*(*(&v19 + 1) + 8 * j), v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v19 objects:v29 count:16];
    }

    while (v16);
  }
}

void __63__SBFloatingDockRemoteContentManager__cleanUpOpenIndicatorView__block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  if ([v10 isFileStackIcon])
  {
    v3 = objc_opt_class();
    v4 = v10;
    if (v3)
    {
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    v7 = *(a1 + 32);
    v8 = [v6 dataSourceUniqueIdentifier];

    v9 = [v8 UUIDString];
    [v7 addObject:v9];
  }
}

- (void)handleFloatingDockFrameDidChange:(id)a3
{
  v4 = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListView];
  v5 = [v4 layout];
  [v5 iconImageInfoForGridSizeClass:*MEMORY[0x277D66508]];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListView];
  [v14 iconContentScale];
  v16 = v15;

  v17 = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListModel];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __71__SBFloatingDockRemoteContentManager_handleFloatingDockFrameDidChange___block_invoke;
  v18[3] = &unk_2783BC1A0;
  v18[4] = self;
  v18[5] = v7;
  v18[6] = v9;
  v18[7] = v11;
  v18[8] = v13;
  v18[9] = v16;
  [v17 enumerateIconsUsingBlock:v18];
}

void __71__SBFloatingDockRemoteContentManager_handleFloatingDockFrameDidChange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isFileStackIcon])
  {
    v4 = objc_opt_class();
    v5 = v3;
    if (v4)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v8 = *(*(a1 + 32) + 80);
    v9 = [v7 leafIdentifier];

    v10 = [v8 objectForKey:v9];

    CGAffineTransformMakeScale(&v11, *(a1 + 72), *(a1 + 72));
    [v10 frame];
    [v10 setFrame:?];
  }
}

- (void)handleInstalledAppsDidChange:(id)a3
{
  v4 = [a3 userInfo];
  v7 = [v4 objectForKey:@"SBInstalledApplicationsRemovedBundleIDs"];

  if ([v7 containsObject:@"com.apple.DocumentsApp"])
  {
    v5 = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListView];
    [v5 removeAllIconViews];

    v6 = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListModel];
    [v6 removeAllIcons];
  }
}

- (void)_createFileStackIconURLSourceDataStore
{
  v3 = [[SBUniqueDefaultIconModelStore alloc] initWithUniqueIdentifier:@"FileStackURLSource"];
  fileStackURLSourceDataStore = self->_fileStackURLSourceDataStore;
  self->_fileStackURLSourceDataStore = v3;
}

- (void)_persistFileStackIconURLSourceToDisk:(id)a3 withError:(id *)a4
{
  v6 = a3;
  fileStackURLSourceDataStore = self->_fileStackURLSourceDataStore;
  if (!fileStackURLSourceDataStore)
  {
    [(SBFloatingDockRemoteContentManager *)self _createFileStackIconURLSourceDataStore];
    fileStackURLSourceDataStore = self->_fileStackURLSourceDataStore;
  }

  v8 = [(SBIconModelPropertyListFileStore *)fileStackURLSourceDataStore currentIconStateURL];
  v27 = 0;
  v9 = [v8 checkResourceIsReachableAndReturnError:&v27];
  v10 = v27;
  if ((v9 & 1) == 0)
  {
    v15 = SBLogDockFileStack();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SBFloatingDockRemoteContentManager _persistFileStackIconURLSourceToDisk:v10 withError:?];
    }

    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    goto LABEL_9;
  }

  v11 = self->_fileStackURLSourceDataStore;
  v26 = v10;
  v12 = [(SBIconModelPropertyListFileStore *)v11 loadCurrentIconState:&v26];
  v13 = v26;

  v14 = [v12 mutableCopy];
  if (v14)
  {
    v10 = v13;
LABEL_9:
    v16 = [v6 url];
    v25 = v10;
    v17 = [v16 bookmarkDataWithOptions:0 includingResourceValuesForKeys:0 relativeToURL:0 error:&v25];
    v13 = v25;

    if (v17)
    {
      v18 = [v6 dataSourceUniqueIdentifier];
      v19 = [v18 UUIDString];
      [v14 setObject:v17 forKey:v19];

      [(SBFloatingDockRemoteContentManager *)self _saveCurrentFileStackURLSourceState:v14];
      if (![(SBFloatingDockRemoteContentManager *)self _setSecurityScopedURLReadFromBookmarkDataOnFileStackIcon:v6])
      {
        v20 = SBLogDockFileStack();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [SBFloatingDockRemoteContentManager _persistFileStackIconURLSourceToDisk:withError:];
        }
      }
    }

    else
    {
      v21 = SBLogDockFileStack();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [SBFloatingDockRemoteContentManager _persistFileStackIconURLSourceToDisk:v13 withError:?];
      }

      if (a4)
      {
        v22 = v13;
        *a4 = v13;
      }
    }

    goto LABEL_19;
  }

  v23 = SBLogDockFileStack();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    [SBFloatingDockRemoteContentManager _persistFileStackIconURLSourceToDisk:v13 withError:?];
  }

  if (a4)
  {
    v24 = v13;
    *a4 = v13;
  }

LABEL_19:
}

- (void)_deleteFileStackIconURLSourceFromDisk:(id)a3 withError:(id *)a4
{
  v6 = a3;
  fileStackURLSourceDataStore = self->_fileStackURLSourceDataStore;
  if (!fileStackURLSourceDataStore)
  {
    [(SBFloatingDockRemoteContentManager *)self _createFileStackIconURLSourceDataStore];
    fileStackURLSourceDataStore = self->_fileStackURLSourceDataStore;
  }

  v8 = [(SBIconModelPropertyListFileStore *)fileStackURLSourceDataStore currentIconStateURL];
  v23 = 0;
  v9 = [v8 checkResourceIsReachableAndReturnError:&v23];
  v10 = v23;
  if ((v9 & 1) == 0)
  {
    v15 = SBLogDockFileStack();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SBFloatingDockRemoteContentManager _persistFileStackIconURLSourceToDisk:v10 withError:?];
    }

    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    goto LABEL_9;
  }

  v11 = self->_fileStackURLSourceDataStore;
  v22 = v10;
  v12 = [(SBIconModelPropertyListFileStore *)v11 loadCurrentIconState:&v22];
  v13 = v22;

  v14 = [v12 mutableCopy];
  if (v14)
  {
    v10 = v13;
LABEL_9:
    v16 = [v6 dataSourceUniqueIdentifier];
    v17 = [v16 UUIDString];

    v18 = [v14 objectForKey:v17];
    if (v18)
    {
      [v14 removeObjectForKey:v17];
      v19 = [(SBFloatingDockRemoteContentManager *)self _urlForFileStackIconDataSourceUniqueIdentifierFromURLSourceDataStore:v17];
      [v19 stopAccessingSecurityScopedResource];
      [(SBFloatingDockRemoteContentManager *)self _saveCurrentFileStackURLSourceState:v14];
    }

    else
    {
      v19 = SBLogDockFileStack();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [SBFloatingDockRemoteContentManager _deleteFileStackIconURLSourceFromDisk:withError:];
      }
    }

    goto LABEL_14;
  }

  v20 = SBLogDockFileStack();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [SBFloatingDockRemoteContentManager _persistFileStackIconURLSourceToDisk:v13 withError:?];
  }

  if (a4)
  {
    v10 = v13;
LABEL_14:

    return;
  }

  v21 = v13;
  __break(1u);
}

- (BOOL)_setSecurityScopedURLReadFromBookmarkDataOnFileStackIcon:(id)a3
{
  v4 = a3;
  v5 = [(SBFloatingDockRemoteContentManager *)self _urlForFileStackIconFromURLSourceDataStore:v4];
  v6 = v5;
  if (!v5)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  if (![v5 startAccessingSecurityScopedResource])
  {
    v8 = SBLogDockFileStack();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SBFloatingDockRemoteContentManager _setSecurityScopedURLReadFromBookmarkDataOnFileStackIcon:];
    }

    goto LABEL_7;
  }

  [v4 setUrl:v6];
  v7 = 1;
LABEL_8:

  return v7;
}

- (void)_validateFloatingDockListModel:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__89;
  v18 = __Block_byref_object_dispose__89;
  v19 = [MEMORY[0x277CBEB18] array];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __69__SBFloatingDockRemoteContentManager__validateFloatingDockListModel___block_invoke;
  v13[3] = &unk_2783B6A98;
  v13[4] = self;
  v13[5] = &v14;
  [v4 enumerateIconsUsingBlock:v13];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = v15[5];
  v6 = [v5 countByEnumeratingWithState:&v9 objects:v20 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [v4 removeIcon:{*(*(&v9 + 1) + 8 * v8++), v9}];
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v9 objects:v20 count:16];
    }

    while (v6);
  }

  _Block_object_dispose(&v14, 8);
}

void __69__SBFloatingDockRemoteContentManager__validateFloatingDockListModel___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isFileStackIcon])
  {
    v4 = objc_opt_class();
    v5 = v3;
    if (v4)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v8 = [v7 url];

    if (!v8)
    {
      v9 = [*(a1 + 32) _urlForFileStackIconFromURLSourceDataStore:v7];
      v10 = v9;
      if (v9)
      {
        [v9 startAccessingSecurityScopedResource];
        [v7 setUrl:v10];
      }

      else
      {
        [*(*(*(a1 + 40) + 8) + 40) addObject:v7];
      }

      v11 = [v7 leafIdentifier];
      v12 = [v7 url];
      v13 = v12;
      if (v11 && v12)
      {
        v14 = [MEMORY[0x277D06248] sharedManager];
        [v14 startObservingFolderWithIdentifier:v11 url:v13];
      }
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __69__SBFloatingDockRemoteContentManager__validateFloatingDockListModel___block_invoke_2;
    v16[3] = &unk_2783A92D8;
    v16[4] = *(a1 + 32);
    v17 = v7;
    v15 = v7;
    dispatch_async(MEMORY[0x277D85CD0], v16);
  }
}

uint64_t __69__SBFloatingDockRemoteContentManager__validateFloatingDockListModel___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) createOpenIndicatorViewForFileStackIcon:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _notifyClientToPrewarmFileStackIconAssociatedFoldersAndOpenIndicators];
}

- (id)_urlForFileStackIconFromURLSourceDataStore:(id)a3
{
  v4 = [a3 dataSourceUniqueIdentifier];
  v5 = [v4 UUIDString];
  v6 = [(SBFloatingDockRemoteContentManager *)self _urlForFileStackIconDataSourceUniqueIdentifierFromURLSourceDataStore:v5];

  return v6;
}

- (id)_urlForFileStackIconDataSourceUniqueIdentifierFromURLSourceDataStore:(id)a3
{
  v4 = a3;
  v5 = [(SBIconModelPropertyListFileStore *)self->_fileStackURLSourceDataStore currentIconStateURL];
  v23 = 0;
  v6 = [v5 checkResourceIsReachableAndReturnError:&v23];
  v7 = v23;
  if (v6)
  {
    fileStackURLSourceDataStore = self->_fileStackURLSourceDataStore;
    v22 = v7;
    v9 = [(SBIconModelPropertyListFileStore *)fileStackURLSourceDataStore loadCurrentIconState:&v22];
    v10 = v22;

    if (v9)
    {
      v11 = [v9 objectForKey:v4];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = 0;
        v20 = v10;
        v12 = [MEMORY[0x277CBEBC0] URLByResolvingBookmarkData:v11 options:256 relativeToURL:0 bookmarkDataIsStale:&v21 error:&v20];
        v13 = v20;

        if (v12)
        {
          if (v21 == 1)
          {
            v14 = SBLogDockFileStack();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *v19 = 0;
              _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "[FileStackURLSourcePersist] Warning bookmark data is stale, might need to create a new URL.", v19, 2u);
            }
          }

          v15 = v12;
        }

        else
        {
          v17 = SBLogDockFileStack();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            [SBFloatingDockRemoteContentManager _urlForFileStackIconDataSourceUniqueIdentifierFromURLSourceDataStore:v13];
          }
        }

        v10 = v13;
      }

      else
      {
        v16 = SBLogDockFileStack();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [SBFloatingDockRemoteContentManager _urlForFileStackIconDataSourceUniqueIdentifierFromURLSourceDataStore:v16];
        }

        v12 = 0;
      }
    }

    else
    {
      v9 = SBLogDockFileStack();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [SBFloatingDockRemoteContentManager _persistFileStackIconURLSourceToDisk:v10 withError:?];
      }

      v12 = 0;
    }

    v7 = v10;
  }

  else
  {
    v9 = SBLogDockFileStack();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SBFloatingDockRemoteContentManager _urlForFileStackIconDataSourceUniqueIdentifierFromURLSourceDataStore:v7];
    }

    v12 = 0;
  }

  return v12;
}

- (void)_cleanUpURLSourceDataStore
{
  v33 = *MEMORY[0x277D85DE8];
  fileStackURLSourceDataStore = self->_fileStackURLSourceDataStore;
  if (fileStackURLSourceDataStore)
  {
    v4 = [(SBIconModelPropertyListFileStore *)fileStackURLSourceDataStore currentIconStateURL];
    v31 = 0;
    v5 = [v4 checkResourceIsReachableAndReturnError:&v31];
    v6 = v31;
    if (v5)
    {
      v7 = self->_fileStackURLSourceDataStore;
      v30 = v6;
      v8 = [(SBIconModelPropertyListFileStore *)v7 loadCurrentIconState:&v30];
      v9 = v30;

      v10 = [v8 mutableCopy];
      if (v10)
      {
        v23 = v9;
        v11 = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListModel];
        v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __64__SBFloatingDockRemoteContentManager__cleanUpURLSourceDataStore__block_invoke;
        v28[3] = &unk_2783B6A48;
        v13 = v12;
        v29 = v13;
        v22 = v11;
        [v11 enumerateIconsUsingBlock:v28];
        v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v15 = [v10 allKeys];
        v16 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v25;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v25 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v24 + 1) + 8 * i);
              if (([v13 containsObject:v20] & 1) == 0)
              {
                [v14 addObject:v20];
                v21 = [(SBFloatingDockRemoteContentManager *)self _urlForFileStackIconDataSourceUniqueIdentifierFromURLSourceDataStore:v20];
                [v21 stopAccessingSecurityScopedResource];
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v17);
        }

        [v10 removeObjectsForKeys:v14];
        [(SBFloatingDockRemoteContentManager *)self _saveCurrentFileStackURLSourceState:v10];

        v9 = v23;
      }

      else
      {
        v10 = SBLogDockFileStack();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [SBFloatingDockRemoteContentManager _persistFileStackIconURLSourceToDisk:v9 withError:?];
        }
      }
    }

    else
    {
      v10 = SBLogDockFileStack();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [SBFloatingDockRemoteContentManager _persistFileStackIconURLSourceToDisk:v6 withError:?];
      }

      v9 = v6;
    }
  }
}

void __64__SBFloatingDockRemoteContentManager__cleanUpURLSourceDataStore__block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  if ([v10 isFileStackIcon])
  {
    v3 = objc_opt_class();
    v4 = v10;
    if (v3)
    {
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    v7 = *(a1 + 32);
    v8 = [v6 dataSourceUniqueIdentifier];

    v9 = [v8 UUIDString];
    [v7 addObject:v9];
  }
}

- (BOOL)_saveCurrentFileStackURLSourceState:(id)a3
{
  v4 = a3;
  fileStackURLSourceDataStore = self->_fileStackURLSourceDataStore;
  if (!fileStackURLSourceDataStore)
  {
    [(SBFloatingDockRemoteContentManager *)self _createFileStackIconURLSourceDataStore];
    fileStackURLSourceDataStore = self->_fileStackURLSourceDataStore;
  }

  v10 = 0;
  v6 = [(SBIconModelPropertyListFileStore *)fileStackURLSourceDataStore saveCurrentIconState:v4 error:&v10];
  v7 = v10;
  if (!v6)
  {
    v8 = SBLogDockFileStack();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SBFloatingDockRemoteContentManager _saveCurrentFileStackURLSourceState:v7];
    }
  }

  return v6;
}

- (id)_hostComponent
{
  v2 = [(SBFloatingDockRemoteContentManager *)self sceneHostingController];
  v3 = [v2 floatingDockRemoteContentHostComponent];

  return v3;
}

- (CGRect)_iconImageFrameForIconView:(id)a3
{
  if (a3)
  {
    v3 = a3;
    [v3 frame];
    v5 = v4;
    v7 = v6;
    [v3 iconContentScale];
    v9 = v8;

    UIRectGetCenter();
    v11 = v10;
    v13 = v12;
    CGAffineTransformMakeScale(&v18, v9, v9);
    v14 = v7 * v18.c + v18.a * v5;
    v15 = v7 * v18.d + v18.b * v5;
    v16 = v11 - v14 * 0.5;
    v17 = v13 - v15 * 0.5;
  }

  else
  {
    v16 = *MEMORY[0x277CBF398];
    v17 = *(MEMORY[0x277CBF398] + 8);
    v14 = *(MEMORY[0x277CBF398] + 16);
    v15 = *(MEMORY[0x277CBF398] + 24);
  }

  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)_anchorFrameForfileStackIconView:(id)a3
{
  v4 = a3;
  [(SBFloatingDockRemoteContentManager *)self _iconImageFrameForIconView:v4];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [v4 superview];

  v14 = [(SBFloatingDockRemoteContentManager *)self sceneHostingController];
  v15 = [v14 sceneView];
  [v13 convertRect:v15 toView:{v6, v8, v10, v12}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = v17;
  v25 = v19;
  v26 = v21;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (void)_openFileStackForIconView:(id)a3
{
  v88 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 icon];
  v6 = objc_opt_class();
  v7 = v5;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    v10 = [(SBFloatingDockRemoteContentManager *)self windowScene];
    v81 = [v10 _synchronizedDrawingFence];

    v11 = [v4 layer];
    RenderId = CALayerGetRenderId();

    v80 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:RenderId];
    v76 = v4;
    v13 = [v4 layer];
    v14 = CALayerGetContext();
    v15 = [v14 contextId];

    v79 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v15];
    v16 = [(SBFloatingDockRemoteContentManager *)self fileStackIconOpenIndicators];
    v17 = [v9 leafIdentifier];
    v18 = [v16 objectForKey:v17];

    if (v18)
    {
      v19 = [(SBFloatingDockRemoteContentManager *)self fileStackIconOpenIndicators];
      v20 = [v9 leafIdentifier];
      v21 = [v19 objectForKey:v20];
      v22 = [v21 layer];
      v23 = CALayerGetRenderId();
    }

    else
    {
      v23 = 0;
    }

    v78 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v23];
    v74 = v18;
    if (v18)
    {
      v25 = [(SBFloatingDockRemoteContentManager *)self fileStackIconOpenIndicators];
      v26 = [v9 leafIdentifier];
      v27 = [v25 objectForKey:v26];
      v28 = [v27 layer];
      v29 = CALayerGetContext();
      v30 = [v29 contextId];
    }

    else
    {
      v30 = 0;
    }

    v77 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v30];
    v31 = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListView];
    v32 = [v31 layout];
    [v32 iconImageInfoForGridSizeClass:*MEMORY[0x277D66508]];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;

    *&v41 = v38;
    v42 = [MEMORY[0x277CCABB0] numberWithFloat:v41];
    *&v43 = v40;
    v44 = [MEMORY[0x277CCABB0] numberWithFloat:v43];
    v72 = [(SBFloatingDockRemoteContentManager *)self _hostComponent];
    v71 = [v9 leafIdentifier];
    v45 = [v9 url];
    v46 = [v9 sortOrder];
    v47 = [v46 identifier];
    v70 = [v9 isCurrentSortOrderAscending];
    v75 = v9;
    v48 = [v9 displayMode];
    v49 = [v48 identifier];
    v4 = v76;
    [(SBFloatingDockRemoteContentManager *)self _anchorFrameForfileStackIconView:v76];
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v58 = [(SBFloatingDockRemoteContentManager *)self floatingDockRootViewController];
    [v58 floatingDockScreenPresentationFrame];
    v73 = v44;
    [v72 configureFileStackIcon:v71 url:v45 sortingBy:v47 sortingOrderAscending:v70 displayMode:v49 anchorFrame:v80 floatingDockFrame:v51 sourceLayerRenderId:v53 sourceContextId:v55 openIndicatorLayerRenderId:v57 openIndicatorContextId:v59 iconImageInfoSize:v60 iconImageInfoScale:v61 iconImageContinuousCornerRadius:v62 requestFromHost:v79 fence:{v78, v77, v34, v36, v42, v44, 100, v81}];

    v63 = SBLogDockFileStack();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      [(SBFloatingDockRemoteContentManager *)self _anchorFrameForfileStackIconView:v76];
      v64 = NSStringFromCGRect(v89);
      v65 = [(SBFloatingDockRemoteContentManager *)self floatingDockRootViewController];
      [v65 floatingDockScreenPresentationFrame];
      v66 = NSStringFromCGRect(v90);
      *buf = 136315650;
      v83 = "[SBFloatingDockRemoteContentManager _openFileStackForIconView:]";
      v84 = 2112;
      v85 = v64;
      v86 = 2112;
      v87 = v66;
      _os_log_impl(&dword_21ED4E000, v63, OS_LOG_TYPE_DEFAULT, "%s: anchorIconFrame %@, floatingDockFrame: %@", buf, 0x20u);
    }

    if (![(SBFloatingDockRemoteContentManager *)self isRemoteViewVisible])
    {
      [(SBFloatingDockRemoteContentManager *)self setRemoteViewVisible:1];
    }

    v67 = [(SBFloatingDockRemoteContentManager *)self openedFileStackIcon];
    v68 = [v76 icon];

    v9 = v75;
    if (v67 != v68)
    {
      v69 = [v76 icon];
      [(SBFloatingDockRemoteContentManager *)self setOpenedFileStackIcon:v69];
    }

    v24 = v81;
  }

  else
  {
    v24 = SBLogDockFileStack();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [(SBFloatingDockRemoteContentManager *)v4 _openFileStackForIconView:v24];
    }
  }
}

- (void)_closeFileStackForIconView:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(SBFloatingDockRemoteContentManager *)self openedFileStackIcon];
  v8 = v6 | v7;

  if (v8)
  {
    v9 = [(SBFloatingDockRemoteContentManager *)self openedFileStackIcon];

    if (!v6 || v9)
    {
      v12 = [(SBFloatingDockRemoteContentManager *)self openedFileStackIcon];

      if (v6 || !v12)
      {
        v13 = [(SBFloatingDockRemoteContentManager *)self openedFileStackIcon];
        v14 = [v6 icon];

        if (v13 != v14)
        {
          v15 = SBLogDockFileStack();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            [SBFloatingDockRemoteContentManager _closeFileStackForIconView:? animated:?];
          }
        }
      }

      v11 = [(SBFloatingDockRemoteContentManager *)self _openedIconView];
    }

    else
    {
      v10 = SBLogDockFileStack();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [SBFloatingDockRemoteContentManager _closeFileStackForIconView:animated:];
      }

      v11 = v6;
    }

    v16 = v11;
    v17 = [(SBFloatingDockRemoteContentManager *)self windowScene];
    v60 = [v17 _synchronizedDrawingFence];

    v18 = [v16 icon];
    v19 = objc_opt_class();
    v20 = v18;
    v61 = v6;
    v21 = v16;
    if (v19)
    {
      if (objc_opt_isKindOfClass())
      {
        v22 = v20;
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;

    if (v4)
    {
      v24 = 101;
    }

    else
    {
      v24 = 107;
    }

    v25 = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListView];
    v26 = [v25 layout];
    [v26 iconImageInfoForGridSizeClass:*MEMORY[0x277D66508]];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;

    *&v35 = v32;
    v57 = [MEMORY[0x277CCABB0] numberWithFloat:v35];
    *&v36 = v34;
    v37 = [MEMORY[0x277CCABB0] numberWithFloat:v36];
    v38 = [(SBFloatingDockRemoteContentManager *)self _hostComponent];
    v56 = [v23 leafIdentifier];
    v58 = [v23 url];
    v59 = [v23 sortOrder];
    v55 = [v59 identifier];
    v54 = [v23 isCurrentSortOrderAscending];
    v39 = [v23 displayMode];

    v40 = [v39 identifier];
    [(SBFloatingDockRemoteContentManager *)self _anchorFrameForfileStackIconView:v16];
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v49 = [(SBFloatingDockRemoteContentManager *)self floatingDockRootViewController];
    [v49 floatingDockScreenPresentationFrame];
    [v38 configureFileStackIcon:v56 url:v58 sortingBy:v55 sortingOrderAscending:v54 displayMode:v40 anchorFrame:0 floatingDockFrame:v42 sourceLayerRenderId:v44 sourceContextId:v46 openIndicatorLayerRenderId:v48 openIndicatorContextId:v50 iconImageInfoSize:v51 iconImageInfoScale:v52 iconImageContinuousCornerRadius:v53 requestFromHost:0 fence:{0, 0, v28, v30, v57, v37, v24, v60}];

    [(SBFloatingDockRemoteContentManager *)self setRemoteViewVisible:0];
    [(SBFloatingDockRemoteContentManager *)self setOpenedFileStackIcon:0];

    v6 = v61;
  }
}

- (BOOL)_deleteFileStackIcon:(id)a3
{
  v4 = a3;
  v5 = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListModel];
  v6 = [v5 containsIcon:v4];
  if (v6)
  {
    [v5 removeIcon:v4];
  }

  return v6;
}

- (BOOL)_isAllowedClientBundleIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x277D06158]] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"com.apple.internal.suiuntool"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"com.apple.AnhsApp"];
  }

  return v4;
}

- (id)_clientBundleIdentifier
{
  v3 = [(SBFloatingDockRemoteContentManager *)self floatingDockRootViewController];
  v4 = [v3 connectedRemoteContentBundleIdentifier];

  if ([(SBFloatingDockRemoteContentManager *)self _isAllowedClientBundleIdentifier:v4])
  {
    v5 = v4;
  }

  else
  {
    v5 = &stru_283094718;
  }

  v6 = v5;

  return v5;
}

- (id)_defaultProcessIdentity
{
  v3 = objc_alloc(MEMORY[0x277CC1E70]);
  v4 = [(SBFloatingDockRemoteContentManager *)self _clientBundleIdentifier];
  v10 = 0;
  v5 = [v3 initWithBundleIdentifier:v4 allowPlaceholder:0 error:&v10];

  if (v5)
  {
    v6 = [v5 identities];
    v7 = [v6 firstObject];

    v8 = [MEMORY[0x277D46F60] identityForLSApplicationIdentity:v7 LSApplicationRecord:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_cleanUpConnectionIfNeeded
{
  if (self->_sceneHostingController)
  {
    [(UIView *)self->_sceneView removeFromSuperview];
    sceneHostingController = self->_sceneHostingController;
    self->_sceneHostingController = 0;

    reconnectingController = self->_reconnectingController;
    self->_reconnectingController = 0;
  }

  *&self->_remoteViewVisible = 0;
  openedFileStackIcon = self->_openedFileStackIcon;
  self->_openedFileStackIcon = 0;
}

- (void)_setupRemoteContentScene
{
  [(SBFloatingDockRemoteContentManager *)self _cleanUpConnectionIfNeeded];
  v3 = [(SBFloatingDockRemoteContentManager *)self _defaultProcessIdentity];
  if (v3)
  {
    v13 = v3;
    v4 = objc_alloc(MEMORY[0x277D761E0]);
    v5 = [MEMORY[0x277D67D98] specification];
    v6 = [v4 initWithProcessIdentity:v13 sceneSpecification:v5];
    sceneHostingController = self->_sceneHostingController;
    self->_sceneHostingController = v6;

    [(_UISceneHostingController *)self->_sceneHostingController setDelegate:self];
    v8 = objc_alloc_init(MEMORY[0x277D761F0]);
    reconnectingController = self->_reconnectingController;
    self->_reconnectingController = v8;

    [(_UISceneHostingReconnectingActivationController *)self->_reconnectingController setDelegate:self];
    [(_UISceneHostingController *)self->_sceneHostingController setActivationController:self->_reconnectingController];
    v10 = [(SBFloatingDockRemoteContentManager *)self _hostComponent];
    v11 = [v10 delegate];

    if (!v11)
    {
      v12 = [(SBFloatingDockRemoteContentManager *)self _hostComponent];
      [v12 setDelegate:self];
    }

    [(SBFloatingDockRemoteContentManager *)self _setupRemoteContentSceneView];
    v3 = v13;
  }
}

- (void)_setupRemoteContentSceneView
{
  v31[4] = *MEMORY[0x277D85DE8];
  p_sceneHostingController = &self->_sceneHostingController;
  if (self->_sceneHostingController)
  {
    v4 = [(SBFloatingDockRemoteContentManager *)self floatingDockRootViewController];
    v5 = [v4 view];
    parentOfSceneView = self->_parentOfSceneView;
    self->_parentOfSceneView = v5;

    v7 = [(_UISceneHostingController *)self->_sceneHostingController sceneView];
    sceneView = self->_sceneView;
    self->_sceneView = v7;

    [(UIView *)self->_sceneView setClipsToBounds:0];
    v9 = self->_sceneView;
    if (!v9)
    {
      v10 = SBLogDockFileStack();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(SBFloatingDockRemoteContentManager *)p_sceneHostingController _setupRemoteContentSceneView:v10];
      }

      v9 = self->_sceneView;
    }

    [(UIView *)self->_parentOfSceneView addSubview:v9];
    [(UIView *)self->_sceneView setTranslatesAutoresizingMaskIntoConstraints:0];
    v27 = MEMORY[0x277CCAAD0];
    v30 = [(UIView *)self->_sceneView leadingAnchor];
    v29 = [(UIView *)self->_parentOfSceneView leadingAnchor];
    v28 = [v30 constraintEqualToAnchor:v29];
    v31[0] = v28;
    v17 = [(UIView *)self->_sceneView trailingAnchor];
    v18 = [(UIView *)self->_parentOfSceneView trailingAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    v31[1] = v19;
    v20 = [(UIView *)self->_sceneView topAnchor];
    v21 = [(UIView *)self->_parentOfSceneView topAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];
    v31[2] = v22;
    v23 = [(UIView *)self->_sceneView bottomAnchor];
    v24 = [(UIView *)self->_parentOfSceneView bottomAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];
    v31[3] = v25;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];
    [v27 activateConstraints:v26];
  }
}

- (void)_notifyClientToPrewarmFileStackIconAssociatedFoldersAndOpenIndicators
{
  v91 = *MEMORY[0x277D85DE8];
  v3 = SBLogDockFileStack();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Notify client to prewam file stack icon folders and open indicators", buf, 2u);
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  obj = [(SBFloatingDockRemoteContentManager *)self fileStackIconsInDock];
  v66 = [obj countByEnumeratingWithState:&v82 objects:v90 count:16];
  if (v66)
  {
    v65 = *v83;
    v64 = *MEMORY[0x277D66508];
    v4 = 0x277CCA000uLL;
    do
    {
      for (i = 0; i != v66; ++i)
      {
        if (*v83 != v65)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v82 + 1) + 8 * i);
        v7 = [v6 url];

        if (v7)
        {
          v76 = i;
          v8 = [v6 imageProvider];
          [v8 setOverrideDataSourceDelegate:self];

          [v6 addObserver:self];
          v9 = [(SBFloatingDockRemoteContentManager *)self _iconViewForIcon:v6];
          v10 = v9;
          if (v9)
          {
            [v9 setOverrideDroppingDelegate:self];
          }

          v11 = [v10 layer];
          RenderId = CALayerGetRenderId();

          v80 = [*(v4 + 2992) numberWithUnsignedLongLong:RenderId];
          v75 = v10;
          v13 = [v10 layer];
          v14 = CALayerGetContext();
          v15 = [v14 contextId];

          v79 = [*(v4 + 2992) numberWithUnsignedInt:v15];
          v16 = [(SBFloatingDockRemoteContentManager *)self fileStackIconOpenIndicators];
          v17 = [v6 leafIdentifier];
          v18 = [v16 objectForKey:v17];

          v74 = v18;
          if (v18)
          {
            v19 = [v18 layer];
            v20 = CALayerGetRenderId();

            if (v20)
            {
              v21 = [*(v4 + 2992) numberWithUnsignedLongLong:v20];
            }

            else
            {
              v21 = 0;
            }

            v24 = [v18 layer];
            v25 = CALayerGetContext();
            v26 = [v25 contextId];

            v77 = v21;
            if (v26)
            {
              v78 = [*(v4 + 2992) numberWithUnsignedInt:v26];
            }

            else
            {
              v78 = 0;
            }
          }

          else
          {
            v23 = SBLogDockFileStack();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_21ED4E000, v23, OS_LOG_TYPE_DEFAULT, "File stack icon open indicators are not created.", buf, 2u);
            }

            v77 = 0;
            v78 = 0;
          }

          v27 = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListView];
          v28 = [v27 layout];
          [v28 iconImageInfoForGridSizeClass:v64];
          v30 = v29;
          v32 = v31;
          v34 = v33;
          v36 = v35;

          *&v37 = v34;
          v73 = [*(v4 + 2992) numberWithFloat:v37];
          *&v38 = v36;
          v72 = [*(v4 + 2992) numberWithFloat:v38];
          v39 = [(SBFloatingDockRemoteContentManager *)self _hostComponent];
          v69 = [v6 leafIdentifier];
          v40 = [v6 url];
          v71 = [v6 sortOrder];
          v68 = [v71 identifier];
          v67 = [v6 isCurrentSortOrderAscending];
          v70 = [v6 displayMode];
          v41 = [v70 identifier];
          v42 = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListView];
          v43 = [v42 displayedIconViewForIcon:v6];
          [v43 frame];
          v45 = v44;
          v47 = v46;
          v49 = v48;
          v51 = v50;
          [(SBFloatingDockRemoteContentManager *)self floatingDockRootViewController];
          v53 = v52 = self;
          [v53 floatingDockScreenPresentationFrame];
          [v39 configureFileStackIcon:v69 url:v40 sortingBy:v68 sortingOrderAscending:v67 displayMode:v41 anchorFrame:v80 floatingDockFrame:v45 sourceLayerRenderId:v47 sourceContextId:v49 openIndicatorLayerRenderId:v51 openIndicatorContextId:v54 iconImageInfoSize:v55 iconImageInfoScale:v56 iconImageContinuousCornerRadius:v57 requestFromHost:v79 fence:{v77, v78, v30, v32, v73, v72, 102, 0}];

          self = v52;
          v58 = [(SBFloatingDockRemoteContentManager *)v52 _hostComponent];
          v59 = [MEMORY[0x277CCAD78] UUID];
          v60 = [v59 UUIDString];
          v61 = [v6 leafIdentifier];
          v62 = [v6 url];
          v81[0] = MEMORY[0x277D85DD0];
          v81[1] = 3221225472;
          v81[2] = __107__SBFloatingDockRemoteContentManager__notifyClientToPrewarmFileStackIconAssociatedFoldersAndOpenIndicators__block_invoke;
          v81[3] = &unk_2783A9398;
          v81[4] = v6;
          [v58 fetchIconThumbnailWithSessionID:v60 forIcon:v61 url:v62 completion:v81];

          v4 = 0x277CCA000;
          v22 = v75;
          i = v76;
        }

        else
        {
          v22 = SBLogDockFileStack();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v87 = "[SBFloatingDockRemoteContentManager _notifyClientToPrewarmFileStackIconAssociatedFoldersAndOpenIndicators]";
            v88 = 2112;
            v89 = v6;
            _os_log_error_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_ERROR, "%s URL is missing for file stack icon: %@", buf, 0x16u);
          }
        }
      }

      v66 = [obj countByEnumeratingWithState:&v82 objects:v90 count:16];
    }

    while (v66);
  }
}

void __107__SBFloatingDockRemoteContentManager__notifyClientToPrewarmFileStackIconAssociatedFoldersAndOpenIndicators__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = SBLogDockFileStack();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "Prewarm icon thumbnail fetch completed for icon %@", &v4, 0xCu);
  }
}

- (void)_notifyClientConfigurationDidChangeOnFileStackIcon:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v45 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v45;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListView];
    v9 = [v8 layout];
    [v9 iconImageInfoForGridSizeClass:*MEMORY[0x277D66508]];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    *&v18 = v15;
    v19 = [MEMORY[0x277CCABB0] numberWithFloat:v18];
    *&v20 = v17;
    v40 = [MEMORY[0x277CCABB0] numberWithFloat:v20];
    v21 = [(SBFloatingDockRemoteContentManager *)self _hostComponent];
    v22 = [v7 leafIdentifier];
    v23 = [v7 url];
    v44 = [v7 sortOrder];
    v42 = [v44 identifier];
    v41 = [v7 isCurrentSortOrderAscending];
    v43 = [v7 displayMode];
    v24 = [v43 identifier];
    v25 = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListView];
    v26 = [v25 displayedIconViewForIcon:v7];
    [v26 frame];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v35 = [(SBFloatingDockRemoteContentManager *)self floatingDockRootViewController];
    [v35 floatingDockScreenPresentationFrame];
    [v21 configureFileStackIcon:v22 url:v23 sortingBy:v42 sortingOrderAscending:v41 displayMode:v24 anchorFrame:0 floatingDockFrame:v28 sourceLayerRenderId:v30 sourceContextId:v32 openIndicatorLayerRenderId:v34 openIndicatorContextId:v36 iconImageInfoSize:v37 iconImageInfoScale:v38 iconImageContinuousCornerRadius:v39 requestFromHost:0 fence:{0, 0, v11, v13, v19, v40, 102, 0}];
  }
}

- (void)clientIsReady
{
  if (![(SBFloatingDockRemoteContentManager *)self isContentReady])
  {
    [(SBFloatingDockRemoteContentManager *)self setContentReady:1];
  }

  v3 = [(SBFloatingDockRemoteContentManager *)self _hostComponent];
  [v3 setDelegate:self];
}

- (void)clientRequestToInsertFileStackIcon:(id)a3
{
  v4 = MEMORY[0x277D66178];
  v5 = a3;
  v16 = [[v4 alloc] initWithUniqueLeafIdentifier];
  v6 = [v5 url];
  [v16 setUrl:v6];

  v7 = objc_alloc(MEMORY[0x277D06250]);
  v8 = [v5 sortingBy];
  v9 = [v7 initWithSortOrderIdentifier:v8];
  [v16 setSortOrder:v9];

  [v16 setCurrentSortOrderAscending:{objc_msgSend(v5, "sortingOrderAscending")}];
  v10 = objc_alloc(MEMORY[0x277D06240]);
  v11 = [v5 displayMode];

  v12 = [v10 initWithDisplayModeIdentifier:v11];
  [v16 setDisplayMode:v12];

  v13 = [(SBFloatingDockRemoteContentManager *)self delegate];
  v14 = [v13 floatingDockListModel:self];

  v15 = [v14 addIcon:v16];
}

- (void)clientRequestToRemoveFileStackIcon:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__89;
    v17 = __Block_byref_object_dispose__89;
    v18 = 0;
    v5 = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListView];
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __73__SBFloatingDockRemoteContentManager_clientRequestToRemoveFileStackIcon___block_invoke;
    v10 = &unk_2783BC1C8;
    v11 = v4;
    v12 = &v13;
    [v5 enumerateVisibleIconsUsingBlock:&v7];

    v6 = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListFolder:v7];
    [v6 removeIcon:v14[5] options:0];

    _Block_object_dispose(&v13, 8);
  }
}

void __73__SBFloatingDockRemoteContentManager_clientRequestToRemoveFileStackIcon___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  if ([v10 isFileStackIcon])
  {
    v4 = objc_opt_class();
    v5 = v10;
    if (v4)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v8 = [v7 leafIdentifier];
    v9 = [v8 isEqualToString:*(a1 + 32)];

    if (v9)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    }
  }
}

- (void)clientRequestToDeleteDragAndDropTempDirsWithSessionID:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [(SBFloatingDockRemoteContentManager *)self dragAndDropTempDirsToDelete];
  v7 = [v6 objectForKey:v4];

  if (v7)
  {
    v20 = self;
    v21 = v4;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v19 = v7;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v26;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v25 + 1) + 8 * i);
          v14 = [v13 path];
          v15 = [v5 fileExistsAtPath:v14];

          if (v15)
          {
            v16 = dispatch_get_global_queue(0, 0);
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __92__SBFloatingDockRemoteContentManager_clientRequestToDeleteDragAndDropTempDirsWithSessionID___block_invoke;
            block[3] = &unk_2783A92D8;
            v23 = v5;
            v24 = v13;
            dispatch_async(v16, block);

            v17 = v23;
          }

          else
          {
            v17 = SBLogDockFileStack();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v30 = v13;
              _os_log_error_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_ERROR, "Dir to delete %{public}@ doesn't exist", buf, 0xCu);
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v25 objects:v31 count:16];
      }

      while (v10);
    }

    v18 = [(SBFloatingDockRemoteContentManager *)v20 dragAndDropTempDirsToDelete];
    v4 = v21;
    [v18 removeObjectForKey:v21];

    v7 = v19;
  }
}

void __92__SBFloatingDockRemoteContentManager_clientRequestToDeleteDragAndDropTempDirsWithSessionID___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v10 = 0;
  v4 = [v2 removeItemAtURL:v3 error:&v10];
  v5 = v10;
  v6 = @"failed";
  if (v4)
  {
    v6 = @"succeeded";
  }

  v7 = v6;
  v8 = SBLogDockFileStack();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 40);
    *buf = 138543618;
    v12 = v9;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Delete dir %{public}@ %@", buf, 0x16u);
  }
}

- (void)clientRequestToUpdateFileStackIcon:(id)a3 toUrl:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = SBLogDockFileStack();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "File stack icon host handler for client url request", buf, 2u);
  }

  v9 = [(SBFloatingDockRemoteContentManager *)self fileStackIconsInDock];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __79__SBFloatingDockRemoteContentManager_clientRequestToUpdateFileStackIcon_toUrl___block_invoke;
  v12[3] = &unk_2783BC1F0;
  v13 = v6;
  v14 = v7;
  v15 = self;
  v10 = v7;
  v11 = v6;
  [v9 enumerateObjectsUsingBlock:v12];
}

void __79__SBFloatingDockRemoteContentManager_clientRequestToUpdateFileStackIcon_toUrl___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = SBLogDockFileStack();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543362;
    v17 = v6;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "File stack icon host handler for client url request for icon %{public}@", &v16, 0xCu);
  }

  v8 = [v6 leafIdentifier];
  v9 = [v8 isEqualToString:*(a1 + 32)];

  if (v9)
  {
    v10 = [v6 url];
    [v6 setUrl:*(a1 + 40)];
    [*(a1 + 48) _persistFileStackIconURLSourceToDisk:v6];
    v11 = *(a1 + 32);
    if (v11 && v10)
    {
      v12 = [MEMORY[0x277D06248] sharedManager];
      [v12 stopObservingFolderWithIdentifier:*(a1 + 32) url:v10];

      v11 = *(a1 + 32);
    }

    if (v11 && *(a1 + 40))
    {
      v13 = [MEMORY[0x277D06248] sharedManager];
      [v13 startObservingFolderWithIdentifier:*(a1 + 32) url:*(a1 + 40)];
    }

    [v10 stopAccessingSecurityScopedResource];
    v14 = SBLogDockFileStack();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 40);
      v16 = 138543874;
      v17 = v10;
      v18 = 2114;
      v19 = v15;
      v20 = 2114;
      v21 = v6;
      _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "Update from old url %{public}@ to new url %{public}@ for icon %{public}@.", &v16, 0x20u);
    }

    *a4 = 1;
  }
}

- (void)clientRequestToUpdateFileStackIcon:(id)a3 withThumbnail:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(SBFloatingDockRemoteContentManager *)self fileStackIconThumbnails];
    [v8 setObject:v7 forKey:v6];

    v9 = [(SBFloatingDockRemoteContentManager *)self fileStackIconsInDock];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __87__SBFloatingDockRemoteContentManager_clientRequestToUpdateFileStackIcon_withThumbnail___block_invoke;
    v10[3] = &unk_2783BC218;
    v11 = v6;
    v12 = v7;
    [v9 enumerateObjectsUsingBlock:v10];
  }
}

void __87__SBFloatingDockRemoteContentManager_clientRequestToUpdateFileStackIcon_withThumbnail___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 leafIdentifier];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    [v6 reloadIconImage];
    v9 = SBLogDockFileStack();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 40) description];
      v11 = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Files stack icon %@ reload to image %@", &v11, 0x16u);
    }

    *a4 = 1;
  }
}

- (void)completeContextRequestUpdateFromHost:(id)a3 withError:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = SBLogDockFileStack();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SBFloatingDockRemoteContentManager completeContextRequestUpdateFromHost:withError:];
    }
  }
}

- (void)handleDownloadCompleted:(id)a3
{
  v8 = [a3 userInfo];
  v4 = [v8 objectForKey:*MEMORY[0x277D06170]];
  v5 = [v8 objectForKey:*MEMORY[0x277D06160]];
  v6 = [v8 objectForKey:*MEMORY[0x277D06168]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  [(SBFloatingDockRemoteContentManager *)self handleDownloadCompletedForFileStackIcon:v5 iconUrl:v4 isDownloadsFolder:v7];
}

- (void)handleDownloadCompletedForFileStackIcon:(id)a3 iconUrl:(id)a4 isDownloadsFolder:(BOOL)a5
{
  v5 = a5;
  v45 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (v5)
  {
    v30 = self;
    v29 = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListModel];
    v10 = self;
    if (![(SBFloatingDockRemoteContentManager *)self _shouldInsertDownloadsFolderAfterFirstDownload])
    {
      goto LABEL_14;
    }

    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 0;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __104__SBFloatingDockRemoteContentManager_handleDownloadCompletedForFileStackIcon_iconUrl_isDownloadsFolder___block_invoke;
    v35[3] = &unk_2783B6A98;
    v11 = v9;
    v36 = v11;
    v37 = &v38;
    [v29 enumerateIconsUsingBlock:v35];
    v12 = *(v39 + 24);
    if (v12)
    {
      v13 = SBLogDock();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v44 = v11;
        _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "Icon URL already exists in floating dock, will not insert download folder again, url %@", buf, 0xCu);
      }
    }

    else
    {
      v13 = objc_alloc_init(MEMORY[0x277D66178]);
      [v13 setUrl:v11];
      v14 = [v29 addIcon:v13];
      if ([v14 count])
      {
        v15 = SBLogDock();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v44 = v11;
          _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "Failed to insert downloads folder into the floating dock after first download even though we should, url %@", buf, 0xCu);
        }
      }

      else
      {
        v16 = +[SBDefaults localDefaults];
        v15 = [v16 homeScreenDefaults];

        [v15 setShouldInsertDownloadFileStackIconToFloatingDock:0];
        v17 = SBLogDock();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v44 = v11;
          _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "Successfully inserted downloads folder into the floating dock after first download, url %@", buf, 0xCu);
        }
      }
    }

    _Block_object_dispose(&v38, 8);
    v10 = self;
    if (v12)
    {
LABEL_14:
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v18 = [(SBFloatingDockRemoteContentManager *)v10 fileStackIconsInDock];
      v19 = [v18 countByEnumeratingWithState:&v31 objects:v42 count:16];
      if (v19)
      {
        v20 = *v32;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v32 != v20)
            {
              objc_enumerationMutation(v18);
            }

            v22 = *(*(&v31 + 1) + 8 * i);
            v23 = [v22 leafIdentifier];
            if ([v23 isEqualToString:v8])
            {
              v24 = [v22 url];
              v25 = [v24 isEqual:v9];

              if (v25)
              {
                v26 = [(SBFloatingDockRemoteContentManager *)v30 _floatingDockUtilitiesListView];
                v27 = [v26 iconViewForIcon:v22];

                v28 = [(SBFloatingDockRemoteContentManager *)v30 floatingDockRootViewController];
                [v28 handleDownloadCompletedRequestIfNeededForIconView:v27];

                goto LABEL_25;
              }
            }

            else
            {
            }
          }

          v19 = [v18 countByEnumeratingWithState:&v31 objects:v42 count:16];
        }

        while (v19);
      }

LABEL_25:
    }
  }
}

void __104__SBFloatingDockRemoteContentManager_handleDownloadCompletedForFileStackIcon_iconUrl_isDownloadsFolder___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if ([v8 isFileStackIcon])
  {
    v3 = objc_opt_class();
    v4 = v8;
    if (v3)
    {
      v5 = (objc_opt_isKindOfClass() & 1) != 0 ? v4 : 0;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    v7 = [v6 url];

    LODWORD(v6) = [v7 isEqual:*(a1 + 32)];
    if (v6)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }
}

- (BOOL)_shouldInsertDownloadsFolderAfterFirstDownload
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = +[SBDefaults localDefaults];
  v2 = [v3 homeScreenDefaults];

  LODWORD(v3) = [v2 shouldInsertDownloadFileStackIconToFloatingDock];
  v4 = SBLogDock();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v3;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "User defaults shouldInsertDownloads is %d", v7, 8u);
  }

  if (v3)
  {
    v3 = [MEMORY[0x277D75418] currentDevice];
    v5 = [v3 userInterfaceIdiom];

    LOBYTE(v3) = (v5 & 0xFFFFFFFFFFFFFFFBLL) == 1;
  }

  return v3;
}

- (void)clientRequestToAcknowledgeDidFinishAnimatingFor:(BOOL)a3 withFileStackIcon:(id)a4
{
  if (a3)
  {
    [(SBFloatingDockRemoteContentManager *)self removeSceneHostingViewMatchMoveAnimation:a3];
    v4 = SBLogDockFileStack();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 0;
      v5 = "Client finishes closing animation.";
      v6 = &v8;
LABEL_6:
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
    }
  }

  else
  {
    v4 = SBLogDockFileStack();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 0;
      v5 = "Client finishes opening animation.";
      v6 = &v7;
      goto LABEL_6;
    }
  }
}

- (void)iconList:(id)a3 didAddIcon:(id)a4
{
  v5 = a4;
  if ([v5 isFileStackIcon])
  {
    v6 = v5;
    v7 = [v6 url];

    if (v7)
    {
      v59 = v5;
      [v6 addObserver:self];
      [(SBFloatingDockRemoteContentManager *)self createOpenIndicatorViewForFileStackIcon:v6];
      v8 = [v6 imageProvider];
      [v8 setOverrideDataSourceDelegate:self];

      v9 = [(SBFloatingDockRemoteContentManager *)self _iconViewForIcon:v6];
      v10 = v9;
      if (v9)
      {
        [v9 setOverrideDroppingDelegate:self];
      }

      v62 = v10;
      v11 = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListView];
      v12 = [v11 layout];
      [v12 iconImageInfoForGridSizeClass:*MEMORY[0x277D66508]];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;

      *&v21 = v18;
      v22 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
      *&v23 = v20;
      v24 = [MEMORY[0x277CCABB0] numberWithFloat:v23];
      v25 = [(SBFloatingDockRemoteContentManager *)self _hostComponent];
      v56 = [v6 leafIdentifier];
      v26 = [v6 url];
      v58 = [v6 sortOrder];
      v55 = [v58 identifier];
      v54 = [v6 isCurrentSortOrderAscending];
      v57 = [v6 displayMode];
      v27 = [v57 identifier];
      v28 = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListView];
      v29 = [v28 displayedIconViewForIcon:v6];
      [v29 frame];
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v38 = [(SBFloatingDockRemoteContentManager *)self floatingDockRootViewController];
      [v38 floatingDockScreenPresentationFrame];
      v60 = v24;
      v61 = v22;
      [v25 configureFileStackIcon:v56 url:v26 sortingBy:v55 sortingOrderAscending:v54 displayMode:v27 anchorFrame:0 floatingDockFrame:v31 sourceLayerRenderId:v33 sourceContextId:v35 openIndicatorLayerRenderId:v37 openIndicatorContextId:v39 iconImageInfoSize:v40 iconImageInfoScale:v41 iconImageContinuousCornerRadius:v42 requestFromHost:0 fence:{0, 0, v14, v16, v22, v24, 102, 0}];

      v43 = [v6 leafIdentifier];
      v44 = [v6 url];
      v45 = v44;
      if (v43 && v44)
      {
        v46 = [MEMORY[0x277D06248] sharedManager];
        [v46 startObservingFolderWithIdentifier:v43 url:v45];
      }

      v47 = [(SBFloatingDockRemoteContentManager *)self _hostComponent];
      v48 = [MEMORY[0x277CCAD78] UUID];
      v49 = [v48 UUIDString];
      v50 = [v6 leafIdentifier];
      v51 = [v6 url];
      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = 3221225472;
      v63[2] = __58__SBFloatingDockRemoteContentManager_iconList_didAddIcon___block_invoke;
      v63[3] = &unk_2783A9398;
      v52 = v6;
      v64 = v52;
      [v47 fetchIconThumbnailWithSessionID:v49 forIcon:v50 url:v51 completion:v63];

      [(SBFloatingDockRemoteContentManager *)self _persistFileStackIconURLSourceToDisk:v52];
      v53 = v62;
      v5 = v59;
    }

    else
    {
      v53 = SBLogDockFileStack();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        [SBFloatingDockRemoteContentManager iconList:v6 didAddIcon:v53];
      }
    }
  }

  else
  {
    v6 = SBLogDockFileStack();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SBFloatingDockRemoteContentManager iconList:didAddIcon:];
    }
  }
}

void __58__SBFloatingDockRemoteContentManager_iconList_didAddIcon___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = SBLogDockFileStack();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "Initial icon thumbnail fetch completed for icon %@", &v4, 0xCu);
  }
}

- (void)iconList:(id)a3 didRemoveIcon:(id)a4
{
  v55 = a4;
  v5 = [v55 isFileStackIcon];
  v6 = v55;
  if (v5)
  {
    v7 = v55;
    v8 = objc_opt_class();
    v9 = v7;
    if (v8)
    {
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    [(SBFloatingDockRemoteContentManager *)self removeOpenIndicatorViewForFileStackIcon:v11];
    v12 = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListView];
    v13 = [v12 layout];
    [v13 iconImageInfoForGridSizeClass:*MEMORY[0x277D66508]];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    *&v22 = v19;
    v23 = [MEMORY[0x277CCABB0] numberWithFloat:v22];
    *&v24 = v21;
    v25 = [MEMORY[0x277CCABB0] numberWithFloat:v24];
    v52 = [(SBFloatingDockRemoteContentManager *)self _hostComponent];
    v51 = [v11 leafIdentifier];
    v26 = [v11 url];
    v54 = [v11 sortOrder];
    v50 = [v54 identifier];
    v49 = [v11 isCurrentSortOrderAscending];
    v53 = [v11 displayMode];
    v27 = [v53 identifier];
    v28 = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListView];
    v29 = [v28 displayedIconViewForIcon:v9];
    [v29 frame];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v38 = [(SBFloatingDockRemoteContentManager *)self floatingDockRootViewController];
    [v38 floatingDockScreenPresentationFrame];
    [v52 configureFileStackIcon:v51 url:v26 sortingBy:v50 sortingOrderAscending:v49 displayMode:v27 anchorFrame:0 floatingDockFrame:v31 sourceLayerRenderId:v33 sourceContextId:v35 openIndicatorLayerRenderId:v37 openIndicatorContextId:v39 iconImageInfoSize:v40 iconImageInfoScale:v41 iconImageContinuousCornerRadius:v42 requestFromHost:0 fence:{0, 0, v15, v17, v23, v25, 103, 0}];

    v43 = [v11 leafIdentifier];
    v44 = [v11 url];
    v45 = v44;
    if (v43 && v44)
    {
      v46 = [MEMORY[0x277D06248] sharedManager];
      [v46 stopObservingFolderWithIdentifier:v43 url:v45];
    }

    [(SBFloatingDockRemoteContentManager *)self _deleteFileStackIconURLSourceFromDisk:v9];
    v47 = [(SBFloatingDockRemoteContentManager *)self fileStackIconThumbnails];
    v48 = [v9 leafIdentifier];
    [v47 removeObjectForKey:v48];

    [v9 removeObserver:self];
    v6 = v55;
  }
}

- (void)iconView:(id)a3 performDrop:(id)a4
{
  v73[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a3 icon];
  if ([v7 isFileStackIcon])
  {
    v8 = v7;
    v73[0] = *MEMORY[0x277D06180];
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:1];
    v10 = [v6 hasItemsConformingToTypeIdentifiers:v9];

    if (v10)
    {
      v44 = SBLogDockFileStack();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        [(SBFloatingDockRemoteContentManager *)v44 iconView:v11 performDrop:v12, v13, v14, v15, v16, v17];
      }
    }

    else
    {
      v37 = self;
      v38 = v8;
      v39 = v7;
      v42 = [MEMORY[0x277CBEB18] array];
      v44 = [MEMORY[0x277CBEB18] array];
      v41 = [MEMORY[0x277CBEB18] array];
      v40 = v6;
      v18 = [v6 items];
      group = dispatch_group_create();
      v43 = dispatch_get_global_queue(0, 0);
      v19 = SBLogDockFileStack();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "urlsFetchingGroup create", buf, 2u);
      }

      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      obj = v18;
      v48 = [obj countByEnumeratingWithState:&v65 objects:v72 count:16];
      if (v48)
      {
        v47 = *v66;
        v20 = *MEMORY[0x277CE1DB8];
        do
        {
          for (i = 0; i != v48; ++i)
          {
            if (*v66 != v47)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v65 + 1) + 8 * i);
            v23 = [v22 itemProvider];
            v61 = 0u;
            v62 = 0u;
            v63 = 0u;
            v64 = 0u;
            v24 = [v23 registeredTypeIdentifiers];
            v25 = [v24 countByEnumeratingWithState:&v61 objects:v71 count:16];
            if (v25)
            {
              v26 = v25;
              v27 = *v62;
LABEL_14:
              v28 = 0;
              while (1)
              {
                if (*v62 != v27)
                {
                  objc_enumerationMutation(v24);
                }

                v29 = [MEMORY[0x277CE1CB8] typeWithIdentifier:*(*(&v61 + 1) + 8 * v28)];
                if ([v29 conformsToType:v20])
                {
                  break;
                }

                if (v26 == ++v28)
                {
                  v26 = [v24 countByEnumeratingWithState:&v61 objects:v71 count:16];
                  if (v26)
                  {
                    goto LABEL_14;
                  }

                  goto LABEL_20;
                }
              }

              if (!v29)
              {
                goto LABEL_25;
              }

              dispatch_group_enter(group);
              v30 = SBLogDockFileStack();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                *v60 = 0;
                _os_log_impl(&dword_21ED4E000, v30, OS_LOG_TYPE_DEFAULT, "urlsFetchingGroup enter.", v60, 2u);
              }

              v31 = [v22 itemProvider];
              v32 = [v29 identifier];
              v53[0] = MEMORY[0x277D85DD0];
              v53[1] = 3221225472;
              v53[2] = __59__SBFloatingDockRemoteContentManager_iconView_performDrop___block_invoke;
              v53[3] = &unk_2783BC268;
              v54 = v43;
              v55 = v44;
              v56 = v29;
              v57 = v42;
              v58 = v41;
              v59 = group;
              v33 = v29;
              v34 = [v31 loadInPlaceFileRepresentationForTypeIdentifier:v32 completionHandler:v53];
            }

            else
            {
LABEL_20:

LABEL_25:
              v33 = SBLogDockFileStack();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                [(SBFloatingDockRemoteContentManager *)buf iconView:v33 performDrop:?];
              }
            }
          }

          v48 = [obj countByEnumeratingWithState:&v65 objects:v72 count:16];
        }

        while (v48);
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __59__SBFloatingDockRemoteContentManager_iconView_performDrop___block_invoke_73;
      block[3] = &unk_2783A9BD8;
      v8 = v38;
      block[4] = v37;
      v50 = v42;
      v51 = v38;
      v52 = v41;
      v35 = v41;
      v36 = v42;
      dispatch_group_notify(group, MEMORY[0x277D85CD0], block);

      v7 = v39;
      v6 = v40;
    }
  }
}

void __59__SBFloatingDockRemoteContentManager_iconView_performDrop___block_invoke(uint64_t a1, void *a2, char a3, void *a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  if (v7)
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy__89;
    v40 = __Block_byref_object_dispose__89;
    v9 = v7;
    v41 = v9;
    v10 = [v9 lastPathComponent];
    v11 = v10 == 0;

    if (!v11)
    {
      v12 = [v9 startAccessingSecurityScopedResource];
      if (a3)
      {
        v13 = SBLogDockFileStack();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = v37[5];
          *buf = 138412290;
          v43 = v14;
          _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "urlsFetchingGroup leave normal with in place url %@", buf, 0xCu);
        }

        [*(a1 + 56) addObject:v37[5]];
        dispatch_group_leave(*(a1 + 72));
      }

      else
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __59__SBFloatingDockRemoteContentManager_iconView_performDrop___block_invoke_2;
        block[3] = &unk_2783BC240;
        v23 = *(a1 + 32);
        v31 = *(a1 + 40);
        v32 = v9;
        v24 = *(a1 + 48);
        v35 = &v36;
        v25 = *(a1 + 56);
        v26 = *(a1 + 64);
        v27 = *(a1 + 72);
        *&v28 = v26;
        *(&v28 + 1) = v27;
        *&v29 = v24;
        *(&v29 + 1) = v25;
        v33 = v29;
        v34 = v28;
        dispatch_async(v23, block);
      }

      if (v12)
      {
        [*(a1 + 64) addObject:v9];
      }
    }

    _Block_object_dispose(&v36, 8);
  }

  else
  {
    v15 = SBLogDockFileStack();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __59__SBFloatingDockRemoteContentManager_iconView_performDrop___block_invoke_cold_1(v15, v16, v17, v18, v19, v20, v21, v22);
    }

    dispatch_group_leave(*(a1 + 72));
  }
}

void __59__SBFloatingDockRemoteContentManager_iconView_performDrop___block_invoke_2(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = [v3 UUIDString];
  v5 = [v2 stringWithFormat:@"/%@/%@", @"com.apple.SpringBoard.FilesInDock", v4];

  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v6 temporaryDirectory];
  v8 = [v7 URLByAppendingPathComponent:v5];

  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v22 = 0;
  [v9 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:&v22];
  v10 = v22;

  if (v10)
  {
    [*(a1 + 32) addObject:v8];
    v11 = SBLogDockFileStack();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v24 = v8;
      v25 = 2112;
      v26 = v10;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "urlsFetchingGroup leave with tmp dir creation error to create temporary directory at URL: %@ to temporary location: %@", buf, 0x16u);
    }

LABEL_8:

    goto LABEL_9;
  }

  v12 = [*(a1 + 40) lastPathComponent];
  v13 = [v8 URLByAppendingPathComponent:v12];
  v11 = [v13 URLByAppendingPathExtensionForType:*(a1 + 48)];

  [*(a1 + 32) addObject:v11];
  v14 = [MEMORY[0x277CCAA00] defaultManager];
  v15 = *(a1 + 40);
  v21 = 0;
  [v14 copyItemAtURL:v15 toURL:v11 error:&v21];
  v16 = v21;

  if (v16)
  {
    v17 = SBLogDockFileStack();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v11;
      _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "urlsFetchingGroup leave with tmp dir copy error with tmpFilenameWithExtension %@", buf, 0xCu);
    }

    goto LABEL_8;
  }

  objc_storeStrong((*(*(a1 + 80) + 8) + 40), v11);
  v18 = SBLogDockFileStack();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 40);
    *buf = 138412290;
    v24 = v19;
    _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "urlsFetchingGroup leave normal with url %@", buf, 0xCu);
  }

  v20 = [*(*(*(a1 + 80) + 8) + 40) startAccessingSecurityScopedResource];
  [*(a1 + 56) addObject:*(*(*(a1 + 80) + 8) + 40)];
  if (v20)
  {
    [*(a1 + 64) addObject:*(*(*(a1 + 80) + 8) + 40)];
  }

LABEL_9:
  dispatch_group_leave(*(a1 + 72));
}

void __59__SBFloatingDockRemoteContentManager_iconView_performDrop___block_invoke_73(id *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = SBLogDockFileStack();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "urlsFetchingGroup notify", buf, 2u);
  }

  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = [v3 UUIDString];

  v5 = [a1[4] dragAndDropTempDirsToDelete];
  [v5 setObject:a1[5] forKey:v4];

  v6 = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = a1[5];
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [objc_alloc(MEMORY[0x277CCAC90]) initWithURL:*(*(&v20 + 1) + 8 * v11)];
        [v6 addObject:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v9);
  }

  v13 = [a1[4] _hostComponent];
  v14 = [a1[6] leafIdentifier];
  v15 = [a1[6] url];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __59__SBFloatingDockRemoteContentManager_iconView_performDrop___block_invoke_75;
  v16[3] = &unk_2783A9940;
  v17 = a1[7];
  v18 = a1[5];
  v19 = a1[6];
  [v13 moveDocumentWithSessionID:v4 securityURLWrappers:v6 toFileStackIcon:v14 url:v15 completion:v16];
}

void __59__SBFloatingDockRemoteContentManager_iconView_performDrop___block_invoke_75(uint64_t a1, int a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v14 + 1) + 8 * v8++) stopAccessingSecurityScopedResource];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v24 count:16];
    }

    while (v6);
  }

  v9 = @"failed";
  if (a2)
  {
    v9 = @"succeeded";
  }

  v10 = v9;
  v11 = SBLogDockFileStack();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 40);
    v13 = [*(a1 + 48) url];
    *buf = 138543874;
    v19 = v12;
    v20 = 2112;
    v21 = v13;
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Drag document %{public}@ to file stack icon %{[public}@ %@", buf, 0x20u);
  }
}

- (id)iconImageWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 options:(unint64_t)a5 forFileStackIcon:(id)a6
{
  v7 = a5;
  v8 = [(SBFloatingDockRemoteContentManager *)self fileStackIconThumbnails];
  v9 = [v7 leafIdentifier];

  v10 = [v8 objectForKey:v9];

  if (v10)
  {
    v11 = [MEMORY[0x277D755B8] imageWithData:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)applicationRestrictionController:(id)a3 didUpdateVisibleTags:(id)a4 hiddenTags:(id)a5
{
  v6 = [a5 containsObject:{@"com.apple.DocumentsApp", a4}];
  v7 = [(SBFloatingDockRemoteContentManager *)self hiddenRestorableFileStackIcons];
  v8 = v7;
  if (v6)
  {
    v9 = [(SBFloatingDockRemoteContentManager *)self fileStackIconsInDock];
    [v8 addObjectsFromArray:v9];

    v14 = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListModel];
    [v14 removeAllIcons];
  }

  else
  {
    v10 = [v7 count];

    if (!v10)
    {
      return;
    }

    v11 = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListModel];
    v12 = [(SBFloatingDockRemoteContentManager *)self hiddenRestorableFileStackIcons];
    v13 = [v11 addIcons:v12];

    v14 = [(SBFloatingDockRemoteContentManager *)self hiddenRestorableFileStackIcons];
    [v14 removeAllObjects];
  }
}

- (SBFloatingDockRemoteContentManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

- (void)_persistFileStackIconURLSourceToDisk:(void *)a1 withError:.cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_persistFileStackIconURLSourceToDisk:(void *)a1 withError:.cold.3(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_persistFileStackIconURLSourceToDisk:(void *)a1 withError:.cold.4(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_urlForFileStackIconDataSourceUniqueIdentifierFromURLSourceDataStore:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_urlForFileStackIconDataSourceUniqueIdentifierFromURLSourceDataStore:(void *)a1 .cold.3(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_saveCurrentFileStackURLSourceState:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_openFileStackForIconView:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 138543618;
  v3 = 0;
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Tried to open a non-existent file stack icon: %{public}@, icon view: %{public}@.", &v2, 0x16u);
}

- (void)_closeFileStackForIconView:(void *)a1 animated:.cold.1(void *a1)
{
  v1 = [a1 _openedIconView];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)completeContextRequestUpdateFromHost:withError:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_21ED4E000, v1, OS_LOG_TYPE_ERROR, "Complete host request error %@ with context %@", v2, 0x16u);
}

- (void)iconList:(uint64_t)a1 didAddIcon:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[SBFloatingDockRemoteContentManager iconList:didAddIcon:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "%s URL is missing for file stack icon: %@", &v2, 0x16u);
}

- (void)iconView:(os_log_t)log performDrop:.cold.1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "[SBFloatingDockRemoteContentManager iconView:performDrop:]";
  _os_log_error_impl(&dword_21ED4E000, log, OS_LOG_TYPE_ERROR, "%s Error in retrieving document drag URL with conforming type, will not move document to file stack icon represented folder", buf, 0xCu);
}

@end