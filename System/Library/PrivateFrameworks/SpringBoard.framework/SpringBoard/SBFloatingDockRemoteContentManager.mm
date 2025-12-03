@interface SBFloatingDockRemoteContentManager
- (BOOL)_deleteFileStackIcon:(id)icon;
- (BOOL)_isAllowedClientBundleIdentifier:(id)identifier;
- (BOOL)_saveCurrentFileStackURLSourceState:(id)state;
- (BOOL)_setSecurityScopedURLReadFromBookmarkDataOnFileStackIcon:(id)icon;
- (BOOL)_shouldInsertDownloadsFolderAfterFirstDownload;
- (BOOL)deleteFileStackIcon:(id)icon;
- (BOOL)isRemoteContentPresenting;
- (CGRect)_anchorFrameForfileStackIconView:(id)view;
- (CGRect)_iconImageFrameForIconView:(id)view;
- (NSArray)fileStackIconsInDock;
- (SBFloatingDockRemoteContentManager)initWithFloatingDockRootViewController:(id)controller windowScene:(id)scene;
- (SBFloatingDockRemoteContentManagerDelegate)delegate;
- (SBWindowScene)windowScene;
- (id)_clientBundleIdentifier;
- (id)_defaultProcessIdentity;
- (id)_fileStackIconsFromFloatingDock:(id)dock;
- (id)_floatingDockUserListFolder;
- (id)_floatingDockUserListModel;
- (id)_floatingDockUtilitiesListFolder;
- (id)_floatingDockUtilitiesListModel;
- (id)_hostComponent;
- (id)_iconViewForIcon:(id)icon;
- (id)_openedIconView;
- (id)_urlForFileStackIconDataSourceUniqueIdentifierFromURLSourceDataStore:(id)store;
- (id)_urlForFileStackIconFromURLSourceDataStore:(id)store;
- (id)iconImageWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options forFileStackIcon:(id)icon;
- (void)_cleanUpConnectionIfNeeded;
- (void)_cleanUpOpenIndicatorView;
- (void)_cleanUpURLSourceDataStore;
- (void)_closeFileStackForIconView:(id)view animated:(BOOL)animated;
- (void)_createFileStackIconURLSourceDataStore;
- (void)_deleteFileStackIconURLSourceFromDisk:(id)disk withError:(id *)error;
- (void)_notifyClientConfigurationDidChangeOnFileStackIcon:(id)icon;
- (void)_notifyClientToPrewarmFileStackIconAssociatedFoldersAndOpenIndicators;
- (void)_openFileStackForIconView:(id)view;
- (void)_persistFileStackIconURLSourceToDisk:(id)disk withError:(id *)error;
- (void)_setupRemoteContentScene;
- (void)_setupRemoteContentSceneView;
- (void)_validateFloatingDockListModel:(id)model;
- (void)addSceneHostingViewMatchMoveAnimationWithIcon:(id)icon;
- (void)applicationRestrictionController:(id)controller didUpdateVisibleTags:(id)tags hiddenTags:(id)hiddenTags;
- (void)clientIsReady;
- (void)clientRequestToAcknowledgeDidFinishAnimatingFor:(BOOL)for withFileStackIcon:(id)icon;
- (void)clientRequestToDeleteDragAndDropTempDirsWithSessionID:(id)d;
- (void)clientRequestToInsertFileStackIcon:(id)icon;
- (void)clientRequestToRemoveFileStackIcon:(id)icon;
- (void)clientRequestToUpdateFileStackIcon:(id)icon toUrl:(id)url;
- (void)clientRequestToUpdateFileStackIcon:(id)icon withThumbnail:(id)thumbnail;
- (void)closeFileStackIconIfNeeded;
- (void)completeContextRequestUpdateFromHost:(id)host withError:(id)error;
- (void)configureIconViewForFinishDownloadAnimationDidFinish:(id)finish;
- (void)configureIconViewForFinishDownloadAnimationWillBegin:(id)begin;
- (void)createOpenIndicatorViewForFileStackIcon:(id)icon;
- (void)deactivateSceneView;
- (void)dealloc;
- (void)handleDownloadCompleted:(id)completed;
- (void)handleDownloadCompletedForFileStackIcon:(id)icon iconUrl:(id)url isDownloadsFolder:(BOOL)folder;
- (void)handleFloatingDockFrameDidChange:(id)change;
- (void)handleIconModelDidLayout:(id)layout;
- (void)handleInstalledAppsDidChange:(id)change;
- (void)hideAllOpenIndicatorViews;
- (void)hideRemoteContent:(BOOL)content;
- (void)iconList:(id)list didAddIcon:(id)icon;
- (void)iconList:(id)list didRemoveIcon:(id)icon;
- (void)iconView:(id)view performDrop:(id)drop;
- (void)reactivateSceneView;
- (void)removeOpenIndicatorViewForFileStackIcon:(id)icon;
- (void)removeOpenIndicatorViewForIconUniqueIdentifier:(id)identifier;
- (void)removeSceneHostingViewMatchMoveAnimation;
- (void)repositionRemoteContent;
- (void)setOpenedFileStackIcon:(id)icon;
- (void)showAllOpenIndicatorViews;
- (void)tapFileStackIconView:(id)view;
@end

@implementation SBFloatingDockRemoteContentManager

- (SBFloatingDockRemoteContentManager)initWithFloatingDockRootViewController:(id)controller windowScene:(id)scene
{
  controllerCopy = controller;
  sceneCopy = scene;
  v31.receiver = self;
  v31.super_class = SBFloatingDockRemoteContentManager;
  v9 = [(SBFloatingDockRemoteContentManager *)&v31 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_floatingDockRootViewController, controller);
    objc_storeWeak(&v10->_windowScene, sceneCopy);
    v10->_contentReady = 0;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    fileStackIconOpenIndicators = v10->_fileStackIconOpenIndicators;
    v10->_fileStackIconOpenIndicators = dictionary;

    _floatingDockUtilitiesListModel = [(SBFloatingDockRemoteContentManager *)v10 _floatingDockUtilitiesListModel];
    [_floatingDockUtilitiesListModel addListObserver:v10];

    [(SBFloatingDockRemoteContentManager *)v10 _setupRemoteContentScene];
    [(SBFloatingDockRemoteContentManager *)v10 _createFileStackIconURLSourceDataStore];
    mEMORY[0x277D65ED8] = [MEMORY[0x277D65ED8] sharedInstance];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __89__SBFloatingDockRemoteContentManager_initWithFloatingDockRootViewController_windowScene___block_invoke;
    v29[3] = &unk_2783A8C18;
    v15 = v10;
    v30 = v15;
    [mEMORY[0x277D65ED8] performAfterFirstUnlockSinceBootUsingBlock:v29];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v15 selector:sel_handleDownloadCompleted_ name:*MEMORY[0x277D06178] object:0];

    mEMORY[0x277D06248] = [MEMORY[0x277D06248] sharedManager];
    [mEMORY[0x277D06248] startObservingDownloadsFolder];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v15 selector:sel_handleIconModelWillLayout_ name:*MEMORY[0x277D66700] object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v15 selector:sel_handleIconModelDidLayout_ name:*MEMORY[0x277D666F0] object:0];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 addObserver:v15 selector:sel_handleFloatingDockFrameDidChange_ name:@"SBFloatingDockControllerFrameDidChangeNotification" object:0];

    defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter5 addObserver:v15 selector:sel_handleInstalledAppsDidChange_ name:@"SBInstalledApplicationsDidChangeNotification" object:0];

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    fileStackIconThumbnails = v15->_fileStackIconThumbnails;
    v15->_fileStackIconThumbnails = dictionary2;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    dragAndDropTempDirsToDelete = v15->_dragAndDropTempDirsToDelete;
    v15->_dragAndDropTempDirsToDelete = dictionary3;

    array = [MEMORY[0x277CBEB18] array];
    hiddenRestorableFileStackIcons = v15->_hiddenRestorableFileStackIcons;
    v15->_hiddenRestorableFileStackIcons = array;
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  mEMORY[0x277D06248] = [MEMORY[0x277D06248] sharedManager];
  [mEMORY[0x277D06248] stopObservingDownloadsFolder];

  fileStackIconThumbnails = [(SBFloatingDockRemoteContentManager *)self fileStackIconThumbnails];
  [fileStackIconThumbnails removeAllObjects];

  fileStackIconThumbnails = self->_fileStackIconThumbnails;
  self->_fileStackIconThumbnails = 0;

  dragAndDropTempDirsToDelete = [(SBFloatingDockRemoteContentManager *)self dragAndDropTempDirsToDelete];
  [dragAndDropTempDirsToDelete removeAllObjects];

  dragAndDropTempDirsToDelete = self->_dragAndDropTempDirsToDelete;
  self->_dragAndDropTempDirsToDelete = 0;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  fileStackIconsInDock = [(SBFloatingDockRemoteContentManager *)self fileStackIconsInDock];
  v10 = [fileStackIconsInDock countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(fileStackIconsInDock);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        [v14 removeObserver:self];
        v15 = [v14 url];
        [v15 stopAccessingSecurityScopedResource];
      }

      v11 = [fileStackIconsInDock countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v16.receiver = self;
  v16.super_class = SBFloatingDockRemoteContentManager;
  [(SBFloatingDockRemoteContentManager *)&v16 dealloc];
}

- (id)_floatingDockUserListModel
{
  _floatingDockUserListView = [(SBFloatingDockRemoteContentManager *)self _floatingDockUserListView];
  model = [_floatingDockUserListView model];

  return model;
}

- (id)_floatingDockUserListFolder
{
  _floatingDockUserListModel = [(SBFloatingDockRemoteContentManager *)self _floatingDockUserListModel];
  folder = [_floatingDockUserListModel folder];

  return folder;
}

- (id)_floatingDockUtilitiesListModel
{
  _floatingDockUtilitiesListView = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListView];
  model = [_floatingDockUtilitiesListView model];

  return model;
}

- (id)_floatingDockUtilitiesListFolder
{
  _floatingDockUtilitiesListModel = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListModel];
  folder = [_floatingDockUtilitiesListModel folder];

  return folder;
}

- (id)_openedIconView
{
  _floatingDockUtilitiesListView = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListView];
  openedFileStackIcon = [(SBFloatingDockRemoteContentManager *)self openedFileStackIcon];
  v5 = [_floatingDockUtilitiesListView iconViewForIcon:openedFileStackIcon];

  return v5;
}

- (id)_iconViewForIcon:(id)icon
{
  iconCopy = icon;
  _floatingDockUtilitiesListView = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListView];
  v6 = [_floatingDockUtilitiesListView iconViewForIcon:iconCopy];

  return v6;
}

- (NSArray)fileStackIconsInDock
{
  floatingDockRootViewController = [(SBFloatingDockRemoteContentManager *)self floatingDockRootViewController];
  v4 = [(SBFloatingDockRemoteContentManager *)self _fileStackIconsFromFloatingDock:floatingDockRootViewController];

  return v4;
}

- (id)_fileStackIconsFromFloatingDock:(id)dock
{
  array = [MEMORY[0x277CBEB18] array];
  _floatingDockUtilitiesListView = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListView];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__SBFloatingDockRemoteContentManager__fileStackIconsFromFloatingDock___block_invoke;
  v8[3] = &unk_2783BC178;
  v6 = array;
  v9 = v6;
  [_floatingDockUtilitiesListView enumerateVisibleIconsUsingBlock:v8];

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

- (void)addSceneHostingViewMatchMoveAnimationWithIcon:(id)icon
{
  v22[1] = *MEMORY[0x277D85DE8];
  iconCopy = icon;
  floatingDockRootViewController = [(SBFloatingDockRemoteContentManager *)self floatingDockRootViewController];
  view = [floatingDockRootViewController view];

  v7 = [(SBFloatingDockRemoteContentManager *)self _iconViewForIcon:iconCopy];

  animation = [MEMORY[0x277CD9EE8] animation];
  layer = [v7 layer];
  [animation setSourceLayer:layer];

  [animation setDuration:INFINITY];
  [animation setFillMode:*MEMORY[0x277CDA230]];
  [animation setRemovedOnCompletion:0];
  [animation setAppliesX:1];
  [animation setAppliesY:1];
  [animation setAppliesScale:0];
  sceneHostingController = [(SBFloatingDockRemoteContentManager *)self sceneHostingController];
  sceneView = [sceneHostingController sceneView];
  sceneHostingController2 = [(SBFloatingDockRemoteContentManager *)self sceneHostingController];
  sceneView2 = [sceneHostingController2 sceneView];
  [sceneView2 bounds];
  [sceneView convertRect:v7 toView:?];

  v14 = MEMORY[0x277CCAE60];
  UIRectGetCenter();
  v16 = v15;
  UIRectGetCenter();
  v17 = [v14 valueWithCGPoint:v16];
  v22[0] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  [animation setSourcePoints:v18];

  sceneHostingController3 = [(SBFloatingDockRemoteContentManager *)self sceneHostingController];
  sceneView3 = [sceneHostingController3 sceneView];
  layer2 = [sceneView3 layer];
  [layer2 addAnimation:animation forKey:@"SceneHostingControllerMatchMoveAnimationKey"];

  [view setNeedsLayout];
  [view layoutIfNeeded];
}

- (void)removeSceneHostingViewMatchMoveAnimation
{
  sceneHostingController = [(SBFloatingDockRemoteContentManager *)self sceneHostingController];
  sceneView = [sceneHostingController sceneView];
  layer = [sceneView layer];

  animationKeys = [layer animationKeys];
  LODWORD(sceneView) = [animationKeys containsObject:@"SceneHostingControllerMatchMoveAnimationKey"];

  if (sceneView)
  {
    sceneHostingController2 = [(SBFloatingDockRemoteContentManager *)self sceneHostingController];
    sceneView2 = [sceneHostingController2 sceneView];
    layer2 = [sceneView2 layer];
    [layer2 removeAnimationForKey:@"SceneHostingControllerMatchMoveAnimationKey"];
  }
}

- (void)hideRemoteContent:(BOOL)content
{
  contentCopy = content;
  sceneView = [(SBFloatingDockRemoteContentManager *)self sceneView];
  [sceneView setHidden:contentCopy];
}

- (void)repositionRemoteContent
{
  [(SBFloatingDockRemoteContentManager *)self removeSceneHostingViewMatchMoveAnimation];
  openedFileStackIcon = [(SBFloatingDockRemoteContentManager *)self openedFileStackIcon];

  if (openedFileStackIcon)
  {
    openedFileStackIcon2 = [(SBFloatingDockRemoteContentManager *)self openedFileStackIcon];
    v5 = [(SBFloatingDockRemoteContentManager *)self _iconViewForIcon:openedFileStackIcon2];

    [(SBFloatingDockRemoteContentManager *)self _closeFileStackForIconView:v5 animated:1];
  }
}

- (void)tapFileStackIconView:(id)view
{
  viewCopy = view;
  [(SBFloatingDockRemoteContentManager *)self closeFileStackIconIfNeeded];
  [(SBFloatingDockRemoteContentManager *)self _openFileStackForIconView:viewCopy];
}

- (void)closeFileStackIconIfNeeded
{
  openedFileStackIcon = [(SBFloatingDockRemoteContentManager *)self openedFileStackIcon];
  if (openedFileStackIcon)
  {
    v4 = openedFileStackIcon;
    openedFileStackIcon2 = [(SBFloatingDockRemoteContentManager *)self openedFileStackIcon];

    if (openedFileStackIcon2)
    {
      _floatingDockUtilitiesListView = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListView];
      openedFileStackIcon3 = [(SBFloatingDockRemoteContentManager *)self openedFileStackIcon];
      v7 = [_floatingDockUtilitiesListView displayedIconViewForIcon:openedFileStackIcon3];
      [(SBFloatingDockRemoteContentManager *)self _closeFileStackForIconView:v7];
    }
  }
}

- (BOOL)deleteFileStackIcon:(id)icon
{
  iconCopy = icon;
  _floatingDockUtilitiesListView = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListView];
  [_floatingDockUtilitiesListView markIcon:iconCopy asNeedingAnimation:0];

  LOBYTE(self) = [(SBFloatingDockRemoteContentManager *)self _deleteFileStackIcon:iconCopy];
  return self;
}

- (void)deactivateSceneView
{
  sceneView = self->_sceneView;
  if (sceneView)
  {
    superview = [(UIView *)sceneView superview];

    if (superview)
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
    superview = [(UIView *)sceneView superview];

    if (!superview)
    {

      [(SBFloatingDockRemoteContentManager *)self _setupRemoteContentSceneView];
    }
  }
}

- (void)configureIconViewForFinishDownloadAnimationWillBegin:(id)begin
{
  v86 = *MEMORY[0x277D85DE8];
  beginCopy = begin;
  icon = [beginCopy icon];
  if ([icon isFileStackIcon])
  {
    v6 = objc_opt_class();
    v7 = icon;
    v73 = icon;
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

    [beginCopy setUserInteractionEnabled:0];
    windowScene = [(SBFloatingDockRemoteContentManager *)self windowScene];
    _synchronizedDrawingFence = [windowScene _synchronizedDrawingFence];

    layer = [beginCopy layer];
    RenderId = CALayerGetRenderId();

    v78 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:RenderId];
    v74 = beginCopy;
    layer2 = [beginCopy layer];
    v14 = CALayerGetContext();
    contextId = [v14 contextId];

    v77 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:contextId];
    fileStackIconOpenIndicators = [(SBFloatingDockRemoteContentManager *)self fileStackIconOpenIndicators];
    leafIdentifier = [v9 leafIdentifier];
    v18 = [fileStackIconOpenIndicators objectForKey:leafIdentifier];

    if (v18)
    {
      fileStackIconOpenIndicators2 = [(SBFloatingDockRemoteContentManager *)self fileStackIconOpenIndicators];
      leafIdentifier2 = [v9 leafIdentifier];
      v21 = [fileStackIconOpenIndicators2 objectForKey:leafIdentifier2];
      layer3 = [v21 layer];
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
      fileStackIconOpenIndicators3 = [(SBFloatingDockRemoteContentManager *)self fileStackIconOpenIndicators];
      leafIdentifier3 = [v9 leafIdentifier];
      v26 = [fileStackIconOpenIndicators3 objectForKey:leafIdentifier3];
      layer4 = [v26 layer];
      v28 = CALayerGetContext();
      contextId2 = [v28 contextId];
    }

    else
    {
      contextId2 = 0;
    }

    v75 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:contextId2];
    _floatingDockUtilitiesListView = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListView];
    layout = [_floatingDockUtilitiesListView layout];
    [layout iconImageInfoForGridSizeClass:*MEMORY[0x277D66508]];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;

    *&v40 = v37;
    v41 = [MEMORY[0x277CCABB0] numberWithFloat:v40];
    *&v42 = v39;
    v43 = [MEMORY[0x277CCABB0] numberWithFloat:v42];
    _hostComponent = [(SBFloatingDockRemoteContentManager *)self _hostComponent];
    leafIdentifier4 = [v9 leafIdentifier];
    v44 = [v9 url];
    sortOrder = [v9 sortOrder];
    [sortOrder identifier];
    v47 = v46 = v9;
    isCurrentSortOrderAscending = [v46 isCurrentSortOrderAscending];
    v72 = v46;
    displayMode = [v46 displayMode];
    identifier = [displayMode identifier];
    beginCopy = v74;
    [(SBFloatingDockRemoteContentManager *)self _anchorFrameForfileStackIconView:v74];
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    floatingDockRootViewController = [(SBFloatingDockRemoteContentManager *)self floatingDockRootViewController];
    [floatingDockRootViewController floatingDockScreenPresentationFrame];
    v70 = v41;
    [_hostComponent configureFileStackIcon:leafIdentifier4 url:v44 sortingBy:v47 sortingOrderAscending:isCurrentSortOrderAscending displayMode:identifier anchorFrame:v78 floatingDockFrame:v51 sourceLayerRenderId:v53 sourceContextId:v55 openIndicatorLayerRenderId:v57 openIndicatorContextId:v59 iconImageInfoSize:v60 iconImageInfoScale:v61 iconImageContinuousCornerRadius:v62 requestFromHost:v77 fence:{v76, v75, v33, v35, v41, v43, 104, _synchronizedDrawingFence}];

    v63 = SBLogDockFileStack();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      [(SBFloatingDockRemoteContentManager *)self _anchorFrameForfileStackIconView:v74];
      v64 = NSStringFromCGRect(v87);
      floatingDockRootViewController2 = [(SBFloatingDockRemoteContentManager *)self floatingDockRootViewController];
      [floatingDockRootViewController2 floatingDockScreenPresentationFrame];
      v66 = NSStringFromCGRect(v88);
      *buf = 136315650;
      v81 = "[SBFloatingDockRemoteContentManager configureIconViewForFinishDownloadAnimationWillBegin:]";
      v82 = 2112;
      v83 = v64;
      v84 = 2112;
      v85 = v66;
      _os_log_impl(&dword_21ED4E000, v63, OS_LOG_TYPE_DEFAULT, "%s: anchorIconFrame %@, floatingDockFrame: %@", buf, 0x20u);
    }

    icon = v73;
  }
}

- (void)configureIconViewForFinishDownloadAnimationDidFinish:(id)finish
{
  v86 = *MEMORY[0x277D85DE8];
  finishCopy = finish;
  icon = [finishCopy icon];
  if ([icon isFileStackIcon])
  {
    v6 = objc_opt_class();
    v7 = icon;
    v73 = icon;
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

    [finishCopy setUserInteractionEnabled:1];
    windowScene = [(SBFloatingDockRemoteContentManager *)self windowScene];
    _synchronizedDrawingFence = [windowScene _synchronizedDrawingFence];

    layer = [finishCopy layer];
    RenderId = CALayerGetRenderId();

    v78 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:RenderId];
    v74 = finishCopy;
    layer2 = [finishCopy layer];
    v14 = CALayerGetContext();
    contextId = [v14 contextId];

    v77 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:contextId];
    fileStackIconOpenIndicators = [(SBFloatingDockRemoteContentManager *)self fileStackIconOpenIndicators];
    leafIdentifier = [v9 leafIdentifier];
    v18 = [fileStackIconOpenIndicators objectForKey:leafIdentifier];

    if (v18)
    {
      fileStackIconOpenIndicators2 = [(SBFloatingDockRemoteContentManager *)self fileStackIconOpenIndicators];
      leafIdentifier2 = [v9 leafIdentifier];
      v21 = [fileStackIconOpenIndicators2 objectForKey:leafIdentifier2];
      layer3 = [v21 layer];
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
      fileStackIconOpenIndicators3 = [(SBFloatingDockRemoteContentManager *)self fileStackIconOpenIndicators];
      leafIdentifier3 = [v9 leafIdentifier];
      v26 = [fileStackIconOpenIndicators3 objectForKey:leafIdentifier3];
      layer4 = [v26 layer];
      v28 = CALayerGetContext();
      contextId2 = [v28 contextId];
    }

    else
    {
      contextId2 = 0;
    }

    v75 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:contextId2];
    _floatingDockUtilitiesListView = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListView];
    layout = [_floatingDockUtilitiesListView layout];
    [layout iconImageInfoForGridSizeClass:*MEMORY[0x277D66508]];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;

    *&v40 = v37;
    v41 = [MEMORY[0x277CCABB0] numberWithFloat:v40];
    *&v42 = v39;
    v43 = [MEMORY[0x277CCABB0] numberWithFloat:v42];
    _hostComponent = [(SBFloatingDockRemoteContentManager *)self _hostComponent];
    leafIdentifier4 = [v9 leafIdentifier];
    v44 = [v9 url];
    sortOrder = [v9 sortOrder];
    [sortOrder identifier];
    v47 = v46 = v9;
    isCurrentSortOrderAscending = [v46 isCurrentSortOrderAscending];
    v72 = v46;
    displayMode = [v46 displayMode];
    identifier = [displayMode identifier];
    finishCopy = v74;
    [(SBFloatingDockRemoteContentManager *)self _anchorFrameForfileStackIconView:v74];
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    floatingDockRootViewController = [(SBFloatingDockRemoteContentManager *)self floatingDockRootViewController];
    [floatingDockRootViewController floatingDockScreenPresentationFrame];
    v70 = v41;
    [_hostComponent configureFileStackIcon:leafIdentifier4 url:v44 sortingBy:v47 sortingOrderAscending:isCurrentSortOrderAscending displayMode:identifier anchorFrame:v78 floatingDockFrame:v51 sourceLayerRenderId:v53 sourceContextId:v55 openIndicatorLayerRenderId:v57 openIndicatorContextId:v59 iconImageInfoSize:v60 iconImageInfoScale:v61 iconImageContinuousCornerRadius:v62 requestFromHost:v77 fence:{v76, v75, v33, v35, v41, v43, 105, _synchronizedDrawingFence}];

    v63 = SBLogDockFileStack();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      [(SBFloatingDockRemoteContentManager *)self _anchorFrameForfileStackIconView:v74];
      v64 = NSStringFromCGRect(v87);
      floatingDockRootViewController2 = [(SBFloatingDockRemoteContentManager *)self floatingDockRootViewController];
      [floatingDockRootViewController2 floatingDockScreenPresentationFrame];
      v66 = NSStringFromCGRect(v88);
      *buf = 136315650;
      v81 = "[SBFloatingDockRemoteContentManager configureIconViewForFinishDownloadAnimationDidFinish:]";
      v82 = 2112;
      v83 = v64;
      v84 = 2112;
      v85 = v66;
      _os_log_impl(&dword_21ED4E000, v63, OS_LOG_TYPE_DEFAULT, "%s: anchorIconFrame %@, floatingDockFrame: %@", buf, 0x20u);
    }

    icon = v73;
  }
}

- (BOOL)isRemoteContentPresenting
{
  openedFileStackIcon = [(SBFloatingDockRemoteContentManager *)self openedFileStackIcon];
  v3 = openedFileStackIcon != 0;

  return v3;
}

- (void)showAllOpenIndicatorViews
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  fileStackIconOpenIndicators = [(SBFloatingDockRemoteContentManager *)self fileStackIconOpenIndicators];
  allValues = [fileStackIconOpenIndicators allValues];

  v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [*(*(&v8 + 1) + 8 * v7++) setAlpha:1.0];
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  fileStackIconOpenIndicators = [(SBFloatingDockRemoteContentManager *)self fileStackIconOpenIndicators];
  allValues = [fileStackIconOpenIndicators allValues];

  v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [*(*(&v8 + 1) + 8 * v7++) setAlpha:0.0];
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)setOpenedFileStackIcon:(id)icon
{
  iconCopy = icon;
  p_openedFileStackIcon = &self->_openedFileStackIcon;
  if (self->_openedFileStackIcon != iconCopy)
  {
    v7 = iconCopy;
    objc_storeStrong(p_openedFileStackIcon, icon);
    if (v7)
    {
      p_openedFileStackIcon = [(SBFloatingDockRemoteContentManager *)self addSceneHostingViewMatchMoveAnimationWithIcon:v7];
    }
  }

  MEMORY[0x2821F9730](p_openedFileStackIcon);
}

- (void)handleIconModelDidLayout:(id)layout
{
  mEMORY[0x277D65ED8] = [MEMORY[0x277D65ED8] sharedInstance];
  hasBeenUnlockedSinceBoot = [mEMORY[0x277D65ED8] hasBeenUnlockedSinceBoot];

  if (hasBeenUnlockedSinceBoot)
  {
    _floatingDockUtilitiesListModel = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListModel];
    [_floatingDockUtilitiesListModel addListObserver:self];

    [(SBFloatingDockRemoteContentManager *)self _cleanUpURLSourceDataStore];
    [(SBFloatingDockRemoteContentManager *)self _cleanUpOpenIndicatorView];
    _floatingDockUtilitiesListModel2 = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListModel];
    [(SBFloatingDockRemoteContentManager *)self _validateFloatingDockListModel:_floatingDockUtilitiesListModel2];

    [(SBFloatingDockRemoteContentManager *)self _notifyClientToPrewarmFileStackIconAssociatedFoldersAndOpenIndicators];
  }
}

- (void)createOpenIndicatorViewForFileStackIcon:(id)icon
{
  iconCopy = icon;
  fileStackIconOpenIndicators = [(SBFloatingDockRemoteContentManager *)self fileStackIconOpenIndicators];
  leafIdentifier = [iconCopy leafIdentifier];
  v7 = [fileStackIconOpenIndicators objectForKey:leafIdentifier];

  if (v7)
  {
    [(SBFloatingDockRemoteContentManager *)self removeOpenIndicatorViewForFileStackIcon:iconCopy];
  }

  v8 = [(SBFloatingDockRemoteContentManager *)self _iconViewForIcon:iconCopy];
  [v8 iconImageInfo];
  v10 = v9;
  v12 = v11;
  v15 = [[SBFileStackOpenIndicatorView alloc] initWithIconImageInfo:v9, v11, v13, v14];

  fileStackIconOpenIndicators2 = [(SBFloatingDockRemoteContentManager *)self fileStackIconOpenIndicators];
  leafIdentifier2 = [iconCopy leafIdentifier];
  [fileStackIconOpenIndicators2 setObject:v15 forKey:leafIdentifier2];

  floatingDockRootViewController = [(SBFloatingDockRemoteContentManager *)self floatingDockRootViewController];
  view = [floatingDockRootViewController view];
  [view insertSubview:v15 atIndex:0];

  [v8 iconContentScale];
  CGAffineTransformMakeScale(&v25, v20, v20);
  v21 = v12 * v25.c + v25.a * v10;
  v22 = v12 * v25.d + v25.b * v10;
  fileStackIconOpenIndicators3 = [(SBFloatingDockRemoteContentManager *)self fileStackIconOpenIndicators];
  v24 = (100 * [fileStackIconOpenIndicators3 count]);

  [(SBFileStackOpenIndicatorView *)v15 setFrame:-(v21 + 10000.0), v24, v21, v22];
}

- (void)removeOpenIndicatorViewForFileStackIcon:(id)icon
{
  leafIdentifier = [icon leafIdentifier];
  [(SBFloatingDockRemoteContentManager *)self removeOpenIndicatorViewForIconUniqueIdentifier:leafIdentifier];
}

- (void)removeOpenIndicatorViewForIconUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  fileStackIconOpenIndicators = [(SBFloatingDockRemoteContentManager *)self fileStackIconOpenIndicators];
  v7 = [fileStackIconOpenIndicators objectForKey:identifierCopy];

  [v7 removeFromSuperview];
  fileStackIconOpenIndicators2 = [(SBFloatingDockRemoteContentManager *)self fileStackIconOpenIndicators];
  [fileStackIconOpenIndicators2 removeObjectForKey:identifierCopy];
}

- (void)_cleanUpOpenIndicatorView
{
  v31 = *MEMORY[0x277D85DE8];
  _floatingDockUtilitiesListModel = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListModel];
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __63__SBFloatingDockRemoteContentManager__cleanUpOpenIndicatorView__block_invoke;
  v27[3] = &unk_2783B6A48;
  v5 = v4;
  v28 = v5;
  [_floatingDockUtilitiesListModel enumerateIconsUsingBlock:v27];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  fileStackIconOpenIndicators = [(SBFloatingDockRemoteContentManager *)self fileStackIconOpenIndicators];
  allKeys = [fileStackIconOpenIndicators allKeys];

  v9 = [allKeys countByEnumeratingWithState:&v23 objects:v30 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        if (([v5 containsObject:v13] & 1) == 0)
        {
          [v6 addObject:v13];
        }
      }

      v10 = [allKeys countByEnumeratingWithState:&v23 objects:v30 count:16];
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

- (void)handleFloatingDockFrameDidChange:(id)change
{
  _floatingDockUtilitiesListView = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListView];
  layout = [_floatingDockUtilitiesListView layout];
  [layout iconImageInfoForGridSizeClass:*MEMORY[0x277D66508]];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  _floatingDockUtilitiesListView2 = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListView];
  [_floatingDockUtilitiesListView2 iconContentScale];
  v16 = v15;

  _floatingDockUtilitiesListModel = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListModel];
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
  [_floatingDockUtilitiesListModel enumerateIconsUsingBlock:v18];
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

- (void)handleInstalledAppsDidChange:(id)change
{
  userInfo = [change userInfo];
  v7 = [userInfo objectForKey:@"SBInstalledApplicationsRemovedBundleIDs"];

  if ([v7 containsObject:@"com.apple.DocumentsApp"])
  {
    _floatingDockUtilitiesListView = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListView];
    [_floatingDockUtilitiesListView removeAllIconViews];

    _floatingDockUtilitiesListModel = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListModel];
    [_floatingDockUtilitiesListModel removeAllIcons];
  }
}

- (void)_createFileStackIconURLSourceDataStore
{
  v3 = [[SBUniqueDefaultIconModelStore alloc] initWithUniqueIdentifier:@"FileStackURLSource"];
  fileStackURLSourceDataStore = self->_fileStackURLSourceDataStore;
  self->_fileStackURLSourceDataStore = v3;
}

- (void)_persistFileStackIconURLSourceToDisk:(id)disk withError:(id *)error
{
  diskCopy = disk;
  fileStackURLSourceDataStore = self->_fileStackURLSourceDataStore;
  if (!fileStackURLSourceDataStore)
  {
    [(SBFloatingDockRemoteContentManager *)self _createFileStackIconURLSourceDataStore];
    fileStackURLSourceDataStore = self->_fileStackURLSourceDataStore;
  }

  currentIconStateURL = [(SBIconModelPropertyListFileStore *)fileStackURLSourceDataStore currentIconStateURL];
  v27 = 0;
  v9 = [currentIconStateURL checkResourceIsReachableAndReturnError:&v27];
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
    v16 = [diskCopy url];
    v25 = v10;
    v17 = [v16 bookmarkDataWithOptions:0 includingResourceValuesForKeys:0 relativeToURL:0 error:&v25];
    v13 = v25;

    if (v17)
    {
      dataSourceUniqueIdentifier = [diskCopy dataSourceUniqueIdentifier];
      uUIDString = [dataSourceUniqueIdentifier UUIDString];
      [v14 setObject:v17 forKey:uUIDString];

      [(SBFloatingDockRemoteContentManager *)self _saveCurrentFileStackURLSourceState:v14];
      if (![(SBFloatingDockRemoteContentManager *)self _setSecurityScopedURLReadFromBookmarkDataOnFileStackIcon:diskCopy])
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

      if (error)
      {
        v22 = v13;
        *error = v13;
      }
    }

    goto LABEL_19;
  }

  v23 = SBLogDockFileStack();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    [SBFloatingDockRemoteContentManager _persistFileStackIconURLSourceToDisk:v13 withError:?];
  }

  if (error)
  {
    v24 = v13;
    *error = v13;
  }

LABEL_19:
}

- (void)_deleteFileStackIconURLSourceFromDisk:(id)disk withError:(id *)error
{
  diskCopy = disk;
  fileStackURLSourceDataStore = self->_fileStackURLSourceDataStore;
  if (!fileStackURLSourceDataStore)
  {
    [(SBFloatingDockRemoteContentManager *)self _createFileStackIconURLSourceDataStore];
    fileStackURLSourceDataStore = self->_fileStackURLSourceDataStore;
  }

  currentIconStateURL = [(SBIconModelPropertyListFileStore *)fileStackURLSourceDataStore currentIconStateURL];
  v23 = 0;
  v9 = [currentIconStateURL checkResourceIsReachableAndReturnError:&v23];
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
    dataSourceUniqueIdentifier = [diskCopy dataSourceUniqueIdentifier];
    uUIDString = [dataSourceUniqueIdentifier UUIDString];

    v18 = [v14 objectForKey:uUIDString];
    if (v18)
    {
      [v14 removeObjectForKey:uUIDString];
      v19 = [(SBFloatingDockRemoteContentManager *)self _urlForFileStackIconDataSourceUniqueIdentifierFromURLSourceDataStore:uUIDString];
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

  if (error)
  {
    v10 = v13;
LABEL_14:

    return;
  }

  v21 = v13;
  __break(1u);
}

- (BOOL)_setSecurityScopedURLReadFromBookmarkDataOnFileStackIcon:(id)icon
{
  iconCopy = icon;
  v5 = [(SBFloatingDockRemoteContentManager *)self _urlForFileStackIconFromURLSourceDataStore:iconCopy];
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

  [iconCopy setUrl:v6];
  v7 = 1;
LABEL_8:

  return v7;
}

- (void)_validateFloatingDockListModel:(id)model
{
  v21 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__89;
  v18 = __Block_byref_object_dispose__89;
  array = [MEMORY[0x277CBEB18] array];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __69__SBFloatingDockRemoteContentManager__validateFloatingDockListModel___block_invoke;
  v13[3] = &unk_2783B6A98;
  v13[4] = self;
  v13[5] = &v14;
  [modelCopy enumerateIconsUsingBlock:v13];
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

        [modelCopy removeIcon:{*(*(&v9 + 1) + 8 * v8++), v9}];
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

- (id)_urlForFileStackIconFromURLSourceDataStore:(id)store
{
  dataSourceUniqueIdentifier = [store dataSourceUniqueIdentifier];
  uUIDString = [dataSourceUniqueIdentifier UUIDString];
  v6 = [(SBFloatingDockRemoteContentManager *)self _urlForFileStackIconDataSourceUniqueIdentifierFromURLSourceDataStore:uUIDString];

  return v6;
}

- (id)_urlForFileStackIconDataSourceUniqueIdentifierFromURLSourceDataStore:(id)store
{
  storeCopy = store;
  currentIconStateURL = [(SBIconModelPropertyListFileStore *)self->_fileStackURLSourceDataStore currentIconStateURL];
  v23 = 0;
  v6 = [currentIconStateURL checkResourceIsReachableAndReturnError:&v23];
  v7 = v23;
  if (v6)
  {
    fileStackURLSourceDataStore = self->_fileStackURLSourceDataStore;
    v22 = v7;
    v9 = [(SBIconModelPropertyListFileStore *)fileStackURLSourceDataStore loadCurrentIconState:&v22];
    v10 = v22;

    if (v9)
    {
      v11 = [v9 objectForKey:storeCopy];
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
    currentIconStateURL = [(SBIconModelPropertyListFileStore *)fileStackURLSourceDataStore currentIconStateURL];
    v31 = 0;
    v5 = [currentIconStateURL checkResourceIsReachableAndReturnError:&v31];
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
        _floatingDockUtilitiesListModel = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListModel];
        v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __64__SBFloatingDockRemoteContentManager__cleanUpURLSourceDataStore__block_invoke;
        v28[3] = &unk_2783B6A48;
        v13 = v12;
        v29 = v13;
        v22 = _floatingDockUtilitiesListModel;
        [_floatingDockUtilitiesListModel enumerateIconsUsingBlock:v28];
        v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        allKeys = [v10 allKeys];
        v16 = [allKeys countByEnumeratingWithState:&v24 objects:v32 count:16];
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
                objc_enumerationMutation(allKeys);
              }

              v20 = *(*(&v24 + 1) + 8 * i);
              if (([v13 containsObject:v20] & 1) == 0)
              {
                [v14 addObject:v20];
                v21 = [(SBFloatingDockRemoteContentManager *)self _urlForFileStackIconDataSourceUniqueIdentifierFromURLSourceDataStore:v20];
                [v21 stopAccessingSecurityScopedResource];
              }
            }

            v17 = [allKeys countByEnumeratingWithState:&v24 objects:v32 count:16];
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

- (BOOL)_saveCurrentFileStackURLSourceState:(id)state
{
  stateCopy = state;
  fileStackURLSourceDataStore = self->_fileStackURLSourceDataStore;
  if (!fileStackURLSourceDataStore)
  {
    [(SBFloatingDockRemoteContentManager *)self _createFileStackIconURLSourceDataStore];
    fileStackURLSourceDataStore = self->_fileStackURLSourceDataStore;
  }

  v10 = 0;
  v6 = [(SBIconModelPropertyListFileStore *)fileStackURLSourceDataStore saveCurrentIconState:stateCopy error:&v10];
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
  sceneHostingController = [(SBFloatingDockRemoteContentManager *)self sceneHostingController];
  floatingDockRemoteContentHostComponent = [sceneHostingController floatingDockRemoteContentHostComponent];

  return floatingDockRemoteContentHostComponent;
}

- (CGRect)_iconImageFrameForIconView:(id)view
{
  if (view)
  {
    viewCopy = view;
    [viewCopy frame];
    v5 = v4;
    v7 = v6;
    [viewCopy iconContentScale];
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

- (CGRect)_anchorFrameForfileStackIconView:(id)view
{
  viewCopy = view;
  [(SBFloatingDockRemoteContentManager *)self _iconImageFrameForIconView:viewCopy];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  superview = [viewCopy superview];

  sceneHostingController = [(SBFloatingDockRemoteContentManager *)self sceneHostingController];
  sceneView = [sceneHostingController sceneView];
  [superview convertRect:sceneView toView:{v6, v8, v10, v12}];
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

- (void)_openFileStackForIconView:(id)view
{
  v88 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  icon = [viewCopy icon];
  v6 = objc_opt_class();
  v7 = icon;
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
    windowScene = [(SBFloatingDockRemoteContentManager *)self windowScene];
    _synchronizedDrawingFence = [windowScene _synchronizedDrawingFence];

    layer = [viewCopy layer];
    RenderId = CALayerGetRenderId();

    v80 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:RenderId];
    v76 = viewCopy;
    layer2 = [viewCopy layer];
    v14 = CALayerGetContext();
    contextId = [v14 contextId];

    v79 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:contextId];
    fileStackIconOpenIndicators = [(SBFloatingDockRemoteContentManager *)self fileStackIconOpenIndicators];
    leafIdentifier = [v9 leafIdentifier];
    v18 = [fileStackIconOpenIndicators objectForKey:leafIdentifier];

    if (v18)
    {
      fileStackIconOpenIndicators2 = [(SBFloatingDockRemoteContentManager *)self fileStackIconOpenIndicators];
      leafIdentifier2 = [v9 leafIdentifier];
      v21 = [fileStackIconOpenIndicators2 objectForKey:leafIdentifier2];
      layer3 = [v21 layer];
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
      fileStackIconOpenIndicators3 = [(SBFloatingDockRemoteContentManager *)self fileStackIconOpenIndicators];
      leafIdentifier3 = [v9 leafIdentifier];
      v27 = [fileStackIconOpenIndicators3 objectForKey:leafIdentifier3];
      layer4 = [v27 layer];
      v29 = CALayerGetContext();
      contextId2 = [v29 contextId];
    }

    else
    {
      contextId2 = 0;
    }

    v77 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:contextId2];
    _floatingDockUtilitiesListView = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListView];
    layout = [_floatingDockUtilitiesListView layout];
    [layout iconImageInfoForGridSizeClass:*MEMORY[0x277D66508]];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;

    *&v41 = v38;
    v42 = [MEMORY[0x277CCABB0] numberWithFloat:v41];
    *&v43 = v40;
    v44 = [MEMORY[0x277CCABB0] numberWithFloat:v43];
    _hostComponent = [(SBFloatingDockRemoteContentManager *)self _hostComponent];
    leafIdentifier4 = [v9 leafIdentifier];
    v45 = [v9 url];
    sortOrder = [v9 sortOrder];
    identifier = [sortOrder identifier];
    isCurrentSortOrderAscending = [v9 isCurrentSortOrderAscending];
    v75 = v9;
    displayMode = [v9 displayMode];
    identifier2 = [displayMode identifier];
    viewCopy = v76;
    [(SBFloatingDockRemoteContentManager *)self _anchorFrameForfileStackIconView:v76];
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    floatingDockRootViewController = [(SBFloatingDockRemoteContentManager *)self floatingDockRootViewController];
    [floatingDockRootViewController floatingDockScreenPresentationFrame];
    v73 = v44;
    [_hostComponent configureFileStackIcon:leafIdentifier4 url:v45 sortingBy:identifier sortingOrderAscending:isCurrentSortOrderAscending displayMode:identifier2 anchorFrame:v80 floatingDockFrame:v51 sourceLayerRenderId:v53 sourceContextId:v55 openIndicatorLayerRenderId:v57 openIndicatorContextId:v59 iconImageInfoSize:v60 iconImageInfoScale:v61 iconImageContinuousCornerRadius:v62 requestFromHost:v79 fence:{v78, v77, v34, v36, v42, v44, 100, _synchronizedDrawingFence}];

    v63 = SBLogDockFileStack();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      [(SBFloatingDockRemoteContentManager *)self _anchorFrameForfileStackIconView:v76];
      v64 = NSStringFromCGRect(v89);
      floatingDockRootViewController2 = [(SBFloatingDockRemoteContentManager *)self floatingDockRootViewController];
      [floatingDockRootViewController2 floatingDockScreenPresentationFrame];
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

    openedFileStackIcon = [(SBFloatingDockRemoteContentManager *)self openedFileStackIcon];
    icon2 = [v76 icon];

    v9 = v75;
    if (openedFileStackIcon != icon2)
    {
      icon3 = [v76 icon];
      [(SBFloatingDockRemoteContentManager *)self setOpenedFileStackIcon:icon3];
    }

    v24 = _synchronizedDrawingFence;
  }

  else
  {
    v24 = SBLogDockFileStack();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [(SBFloatingDockRemoteContentManager *)viewCopy _openFileStackForIconView:v24];
    }
  }
}

- (void)_closeFileStackForIconView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  openedFileStackIcon = [(SBFloatingDockRemoteContentManager *)self openedFileStackIcon];
  v8 = viewCopy | openedFileStackIcon;

  if (v8)
  {
    openedFileStackIcon2 = [(SBFloatingDockRemoteContentManager *)self openedFileStackIcon];

    if (!viewCopy || openedFileStackIcon2)
    {
      openedFileStackIcon3 = [(SBFloatingDockRemoteContentManager *)self openedFileStackIcon];

      if (viewCopy || !openedFileStackIcon3)
      {
        openedFileStackIcon4 = [(SBFloatingDockRemoteContentManager *)self openedFileStackIcon];
        icon = [viewCopy icon];

        if (openedFileStackIcon4 != icon)
        {
          v15 = SBLogDockFileStack();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            [SBFloatingDockRemoteContentManager _closeFileStackForIconView:? animated:?];
          }
        }
      }

      _openedIconView = [(SBFloatingDockRemoteContentManager *)self _openedIconView];
    }

    else
    {
      v10 = SBLogDockFileStack();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [SBFloatingDockRemoteContentManager _closeFileStackForIconView:animated:];
      }

      _openedIconView = viewCopy;
    }

    v16 = _openedIconView;
    windowScene = [(SBFloatingDockRemoteContentManager *)self windowScene];
    _synchronizedDrawingFence = [windowScene _synchronizedDrawingFence];

    icon2 = [v16 icon];
    v19 = objc_opt_class();
    v20 = icon2;
    v61 = viewCopy;
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

    if (animatedCopy)
    {
      v24 = 101;
    }

    else
    {
      v24 = 107;
    }

    _floatingDockUtilitiesListView = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListView];
    layout = [_floatingDockUtilitiesListView layout];
    [layout iconImageInfoForGridSizeClass:*MEMORY[0x277D66508]];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;

    *&v35 = v32;
    v57 = [MEMORY[0x277CCABB0] numberWithFloat:v35];
    *&v36 = v34;
    v37 = [MEMORY[0x277CCABB0] numberWithFloat:v36];
    _hostComponent = [(SBFloatingDockRemoteContentManager *)self _hostComponent];
    leafIdentifier = [v23 leafIdentifier];
    v58 = [v23 url];
    sortOrder = [v23 sortOrder];
    identifier = [sortOrder identifier];
    isCurrentSortOrderAscending = [v23 isCurrentSortOrderAscending];
    displayMode = [v23 displayMode];

    identifier2 = [displayMode identifier];
    [(SBFloatingDockRemoteContentManager *)self _anchorFrameForfileStackIconView:v16];
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    floatingDockRootViewController = [(SBFloatingDockRemoteContentManager *)self floatingDockRootViewController];
    [floatingDockRootViewController floatingDockScreenPresentationFrame];
    [_hostComponent configureFileStackIcon:leafIdentifier url:v58 sortingBy:identifier sortingOrderAscending:isCurrentSortOrderAscending displayMode:identifier2 anchorFrame:0 floatingDockFrame:v42 sourceLayerRenderId:v44 sourceContextId:v46 openIndicatorLayerRenderId:v48 openIndicatorContextId:v50 iconImageInfoSize:v51 iconImageInfoScale:v52 iconImageContinuousCornerRadius:v53 requestFromHost:0 fence:{0, 0, v28, v30, v57, v37, v24, _synchronizedDrawingFence}];

    [(SBFloatingDockRemoteContentManager *)self setRemoteViewVisible:0];
    [(SBFloatingDockRemoteContentManager *)self setOpenedFileStackIcon:0];

    viewCopy = v61;
  }
}

- (BOOL)_deleteFileStackIcon:(id)icon
{
  iconCopy = icon;
  _floatingDockUtilitiesListModel = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListModel];
  v6 = [_floatingDockUtilitiesListModel containsIcon:iconCopy];
  if (v6)
  {
    [_floatingDockUtilitiesListModel removeIcon:iconCopy];
  }

  return v6;
}

- (BOOL)_isAllowedClientBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:*MEMORY[0x277D06158]] & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"com.apple.internal.suiuntool"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [identifierCopy isEqualToString:@"com.apple.AnhsApp"];
  }

  return v4;
}

- (id)_clientBundleIdentifier
{
  floatingDockRootViewController = [(SBFloatingDockRemoteContentManager *)self floatingDockRootViewController];
  connectedRemoteContentBundleIdentifier = [floatingDockRootViewController connectedRemoteContentBundleIdentifier];

  if ([(SBFloatingDockRemoteContentManager *)self _isAllowedClientBundleIdentifier:connectedRemoteContentBundleIdentifier])
  {
    v5 = connectedRemoteContentBundleIdentifier;
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
  _clientBundleIdentifier = [(SBFloatingDockRemoteContentManager *)self _clientBundleIdentifier];
  v10 = 0;
  v5 = [v3 initWithBundleIdentifier:_clientBundleIdentifier allowPlaceholder:0 error:&v10];

  if (v5)
  {
    identities = [v5 identities];
    firstObject = [identities firstObject];

    v8 = [MEMORY[0x277D46F60] identityForLSApplicationIdentity:firstObject LSApplicationRecord:v5];
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
  _defaultProcessIdentity = [(SBFloatingDockRemoteContentManager *)self _defaultProcessIdentity];
  if (_defaultProcessIdentity)
  {
    v13 = _defaultProcessIdentity;
    v4 = objc_alloc(MEMORY[0x277D761E0]);
    specification = [MEMORY[0x277D67D98] specification];
    v6 = [v4 initWithProcessIdentity:v13 sceneSpecification:specification];
    sceneHostingController = self->_sceneHostingController;
    self->_sceneHostingController = v6;

    [(_UISceneHostingController *)self->_sceneHostingController setDelegate:self];
    v8 = objc_alloc_init(MEMORY[0x277D761F0]);
    reconnectingController = self->_reconnectingController;
    self->_reconnectingController = v8;

    [(_UISceneHostingReconnectingActivationController *)self->_reconnectingController setDelegate:self];
    [(_UISceneHostingController *)self->_sceneHostingController setActivationController:self->_reconnectingController];
    _hostComponent = [(SBFloatingDockRemoteContentManager *)self _hostComponent];
    delegate = [_hostComponent delegate];

    if (!delegate)
    {
      _hostComponent2 = [(SBFloatingDockRemoteContentManager *)self _hostComponent];
      [_hostComponent2 setDelegate:self];
    }

    [(SBFloatingDockRemoteContentManager *)self _setupRemoteContentSceneView];
    _defaultProcessIdentity = v13;
  }
}

- (void)_setupRemoteContentSceneView
{
  v31[4] = *MEMORY[0x277D85DE8];
  p_sceneHostingController = &self->_sceneHostingController;
  if (self->_sceneHostingController)
  {
    floatingDockRootViewController = [(SBFloatingDockRemoteContentManager *)self floatingDockRootViewController];
    view = [floatingDockRootViewController view];
    parentOfSceneView = self->_parentOfSceneView;
    self->_parentOfSceneView = view;

    sceneView = [(_UISceneHostingController *)self->_sceneHostingController sceneView];
    sceneView = self->_sceneView;
    self->_sceneView = sceneView;

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
    leadingAnchor = [(UIView *)self->_sceneView leadingAnchor];
    leadingAnchor2 = [(UIView *)self->_parentOfSceneView leadingAnchor];
    v28 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v31[0] = v28;
    trailingAnchor = [(UIView *)self->_sceneView trailingAnchor];
    trailingAnchor2 = [(UIView *)self->_parentOfSceneView trailingAnchor];
    v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v31[1] = v19;
    topAnchor = [(UIView *)self->_sceneView topAnchor];
    topAnchor2 = [(UIView *)self->_parentOfSceneView topAnchor];
    v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v31[2] = v22;
    bottomAnchor = [(UIView *)self->_sceneView bottomAnchor];
    bottomAnchor2 = [(UIView *)self->_parentOfSceneView bottomAnchor];
    v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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
          imageProvider = [v6 imageProvider];
          [imageProvider setOverrideDataSourceDelegate:self];

          [v6 addObserver:self];
          v9 = [(SBFloatingDockRemoteContentManager *)self _iconViewForIcon:v6];
          v10 = v9;
          if (v9)
          {
            [v9 setOverrideDroppingDelegate:self];
          }

          layer = [v10 layer];
          RenderId = CALayerGetRenderId();

          v80 = [*(v4 + 2992) numberWithUnsignedLongLong:RenderId];
          v75 = v10;
          layer2 = [v10 layer];
          v14 = CALayerGetContext();
          contextId = [v14 contextId];

          v79 = [*(v4 + 2992) numberWithUnsignedInt:contextId];
          fileStackIconOpenIndicators = [(SBFloatingDockRemoteContentManager *)self fileStackIconOpenIndicators];
          leafIdentifier = [v6 leafIdentifier];
          v18 = [fileStackIconOpenIndicators objectForKey:leafIdentifier];

          v74 = v18;
          if (v18)
          {
            layer3 = [v18 layer];
            v20 = CALayerGetRenderId();

            if (v20)
            {
              v21 = [*(v4 + 2992) numberWithUnsignedLongLong:v20];
            }

            else
            {
              v21 = 0;
            }

            layer4 = [v18 layer];
            v25 = CALayerGetContext();
            contextId2 = [v25 contextId];

            v77 = v21;
            if (contextId2)
            {
              v78 = [*(v4 + 2992) numberWithUnsignedInt:contextId2];
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

          _floatingDockUtilitiesListView = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListView];
          layout = [_floatingDockUtilitiesListView layout];
          [layout iconImageInfoForGridSizeClass:v64];
          v30 = v29;
          v32 = v31;
          v34 = v33;
          v36 = v35;

          *&v37 = v34;
          v73 = [*(v4 + 2992) numberWithFloat:v37];
          *&v38 = v36;
          v72 = [*(v4 + 2992) numberWithFloat:v38];
          _hostComponent = [(SBFloatingDockRemoteContentManager *)self _hostComponent];
          leafIdentifier2 = [v6 leafIdentifier];
          v40 = [v6 url];
          sortOrder = [v6 sortOrder];
          identifier = [sortOrder identifier];
          isCurrentSortOrderAscending = [v6 isCurrentSortOrderAscending];
          displayMode = [v6 displayMode];
          identifier2 = [displayMode identifier];
          _floatingDockUtilitiesListView2 = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListView];
          v43 = [_floatingDockUtilitiesListView2 displayedIconViewForIcon:v6];
          [v43 frame];
          v45 = v44;
          v47 = v46;
          v49 = v48;
          v51 = v50;
          [(SBFloatingDockRemoteContentManager *)self floatingDockRootViewController];
          v53 = v52 = self;
          [v53 floatingDockScreenPresentationFrame];
          [_hostComponent configureFileStackIcon:leafIdentifier2 url:v40 sortingBy:identifier sortingOrderAscending:isCurrentSortOrderAscending displayMode:identifier2 anchorFrame:v80 floatingDockFrame:v45 sourceLayerRenderId:v47 sourceContextId:v49 openIndicatorLayerRenderId:v51 openIndicatorContextId:v54 iconImageInfoSize:v55 iconImageInfoScale:v56 iconImageContinuousCornerRadius:v57 requestFromHost:v79 fence:{v77, v78, v30, v32, v73, v72, 102, 0}];

          self = v52;
          _hostComponent2 = [(SBFloatingDockRemoteContentManager *)v52 _hostComponent];
          uUID = [MEMORY[0x277CCAD78] UUID];
          uUIDString = [uUID UUIDString];
          leafIdentifier3 = [v6 leafIdentifier];
          v62 = [v6 url];
          v81[0] = MEMORY[0x277D85DD0];
          v81[1] = 3221225472;
          v81[2] = __107__SBFloatingDockRemoteContentManager__notifyClientToPrewarmFileStackIconAssociatedFoldersAndOpenIndicators__block_invoke;
          v81[3] = &unk_2783A9398;
          v81[4] = v6;
          [_hostComponent2 fetchIconThumbnailWithSessionID:uUIDString forIcon:leafIdentifier3 url:v62 completion:v81];

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

- (void)_notifyClientConfigurationDidChangeOnFileStackIcon:(id)icon
{
  iconCopy = icon;
  v5 = objc_opt_class();
  v45 = iconCopy;
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
    _floatingDockUtilitiesListView = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListView];
    layout = [_floatingDockUtilitiesListView layout];
    [layout iconImageInfoForGridSizeClass:*MEMORY[0x277D66508]];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    *&v18 = v15;
    v19 = [MEMORY[0x277CCABB0] numberWithFloat:v18];
    *&v20 = v17;
    v40 = [MEMORY[0x277CCABB0] numberWithFloat:v20];
    _hostComponent = [(SBFloatingDockRemoteContentManager *)self _hostComponent];
    leafIdentifier = [v7 leafIdentifier];
    v23 = [v7 url];
    sortOrder = [v7 sortOrder];
    identifier = [sortOrder identifier];
    isCurrentSortOrderAscending = [v7 isCurrentSortOrderAscending];
    displayMode = [v7 displayMode];
    identifier2 = [displayMode identifier];
    _floatingDockUtilitiesListView2 = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListView];
    v26 = [_floatingDockUtilitiesListView2 displayedIconViewForIcon:v7];
    [v26 frame];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    floatingDockRootViewController = [(SBFloatingDockRemoteContentManager *)self floatingDockRootViewController];
    [floatingDockRootViewController floatingDockScreenPresentationFrame];
    [_hostComponent configureFileStackIcon:leafIdentifier url:v23 sortingBy:identifier sortingOrderAscending:isCurrentSortOrderAscending displayMode:identifier2 anchorFrame:0 floatingDockFrame:v28 sourceLayerRenderId:v30 sourceContextId:v32 openIndicatorLayerRenderId:v34 openIndicatorContextId:v36 iconImageInfoSize:v37 iconImageInfoScale:v38 iconImageContinuousCornerRadius:v39 requestFromHost:0 fence:{0, 0, v11, v13, v19, v40, 102, 0}];
  }
}

- (void)clientIsReady
{
  if (![(SBFloatingDockRemoteContentManager *)self isContentReady])
  {
    [(SBFloatingDockRemoteContentManager *)self setContentReady:1];
  }

  _hostComponent = [(SBFloatingDockRemoteContentManager *)self _hostComponent];
  [_hostComponent setDelegate:self];
}

- (void)clientRequestToInsertFileStackIcon:(id)icon
{
  v4 = MEMORY[0x277D66178];
  iconCopy = icon;
  initWithUniqueLeafIdentifier = [[v4 alloc] initWithUniqueLeafIdentifier];
  v6 = [iconCopy url];
  [initWithUniqueLeafIdentifier setUrl:v6];

  v7 = objc_alloc(MEMORY[0x277D06250]);
  sortingBy = [iconCopy sortingBy];
  v9 = [v7 initWithSortOrderIdentifier:sortingBy];
  [initWithUniqueLeafIdentifier setSortOrder:v9];

  [initWithUniqueLeafIdentifier setCurrentSortOrderAscending:{objc_msgSend(iconCopy, "sortingOrderAscending")}];
  v10 = objc_alloc(MEMORY[0x277D06240]);
  displayMode = [iconCopy displayMode];

  v12 = [v10 initWithDisplayModeIdentifier:displayMode];
  [initWithUniqueLeafIdentifier setDisplayMode:v12];

  delegate = [(SBFloatingDockRemoteContentManager *)self delegate];
  v14 = [delegate floatingDockListModel:self];

  v15 = [v14 addIcon:initWithUniqueLeafIdentifier];
}

- (void)clientRequestToRemoveFileStackIcon:(id)icon
{
  iconCopy = icon;
  if (iconCopy)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__89;
    v17 = __Block_byref_object_dispose__89;
    v18 = 0;
    _floatingDockUtilitiesListView = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListView];
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __73__SBFloatingDockRemoteContentManager_clientRequestToRemoveFileStackIcon___block_invoke;
    v10 = &unk_2783BC1C8;
    v11 = iconCopy;
    v12 = &v13;
    [_floatingDockUtilitiesListView enumerateVisibleIconsUsingBlock:&v7];

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

- (void)clientRequestToDeleteDragAndDropTempDirsWithSessionID:(id)d
{
  v32 = *MEMORY[0x277D85DE8];
  dCopy = d;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  dragAndDropTempDirsToDelete = [(SBFloatingDockRemoteContentManager *)self dragAndDropTempDirsToDelete];
  v7 = [dragAndDropTempDirsToDelete objectForKey:dCopy];

  if (v7)
  {
    selfCopy = self;
    v21 = dCopy;
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
          path = [v13 path];
          v15 = [defaultManager fileExistsAtPath:path];

          if (v15)
          {
            v16 = dispatch_get_global_queue(0, 0);
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __92__SBFloatingDockRemoteContentManager_clientRequestToDeleteDragAndDropTempDirsWithSessionID___block_invoke;
            block[3] = &unk_2783A92D8;
            v23 = defaultManager;
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

    dragAndDropTempDirsToDelete2 = [(SBFloatingDockRemoteContentManager *)selfCopy dragAndDropTempDirsToDelete];
    dCopy = v21;
    [dragAndDropTempDirsToDelete2 removeObjectForKey:v21];

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

- (void)clientRequestToUpdateFileStackIcon:(id)icon toUrl:(id)url
{
  iconCopy = icon;
  urlCopy = url;
  v8 = SBLogDockFileStack();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "File stack icon host handler for client url request", buf, 2u);
  }

  fileStackIconsInDock = [(SBFloatingDockRemoteContentManager *)self fileStackIconsInDock];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __79__SBFloatingDockRemoteContentManager_clientRequestToUpdateFileStackIcon_toUrl___block_invoke;
  v12[3] = &unk_2783BC1F0;
  v13 = iconCopy;
  v14 = urlCopy;
  selfCopy = self;
  v10 = urlCopy;
  v11 = iconCopy;
  [fileStackIconsInDock enumerateObjectsUsingBlock:v12];
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

- (void)clientRequestToUpdateFileStackIcon:(id)icon withThumbnail:(id)thumbnail
{
  iconCopy = icon;
  thumbnailCopy = thumbnail;
  if (thumbnailCopy)
  {
    fileStackIconThumbnails = [(SBFloatingDockRemoteContentManager *)self fileStackIconThumbnails];
    [fileStackIconThumbnails setObject:thumbnailCopy forKey:iconCopy];

    fileStackIconsInDock = [(SBFloatingDockRemoteContentManager *)self fileStackIconsInDock];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __87__SBFloatingDockRemoteContentManager_clientRequestToUpdateFileStackIcon_withThumbnail___block_invoke;
    v10[3] = &unk_2783BC218;
    v11 = iconCopy;
    v12 = thumbnailCopy;
    [fileStackIconsInDock enumerateObjectsUsingBlock:v10];
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

- (void)completeContextRequestUpdateFromHost:(id)host withError:(id)error
{
  hostCopy = host;
  errorCopy = error;
  if (errorCopy)
  {
    v7 = SBLogDockFileStack();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SBFloatingDockRemoteContentManager completeContextRequestUpdateFromHost:withError:];
    }
  }
}

- (void)handleDownloadCompleted:(id)completed
{
  userInfo = [completed userInfo];
  v4 = [userInfo objectForKey:*MEMORY[0x277D06170]];
  v5 = [userInfo objectForKey:*MEMORY[0x277D06160]];
  v6 = [userInfo objectForKey:*MEMORY[0x277D06168]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  [(SBFloatingDockRemoteContentManager *)self handleDownloadCompletedForFileStackIcon:v5 iconUrl:v4 isDownloadsFolder:bOOLValue];
}

- (void)handleDownloadCompletedForFileStackIcon:(id)icon iconUrl:(id)url isDownloadsFolder:(BOOL)folder
{
  folderCopy = folder;
  v45 = *MEMORY[0x277D85DE8];
  iconCopy = icon;
  urlCopy = url;
  if (folderCopy)
  {
    selfCopy = self;
    _floatingDockUtilitiesListModel = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListModel];
    selfCopy3 = self;
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
    v11 = urlCopy;
    v36 = v11;
    v37 = &v38;
    [_floatingDockUtilitiesListModel enumerateIconsUsingBlock:v35];
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
      v14 = [_floatingDockUtilitiesListModel addIcon:v13];
      if ([v14 count])
      {
        homeScreenDefaults = SBLogDock();
        if (os_log_type_enabled(homeScreenDefaults, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v44 = v11;
          _os_log_impl(&dword_21ED4E000, homeScreenDefaults, OS_LOG_TYPE_DEFAULT, "Failed to insert downloads folder into the floating dock after first download even though we should, url %@", buf, 0xCu);
        }
      }

      else
      {
        v16 = +[SBDefaults localDefaults];
        homeScreenDefaults = [v16 homeScreenDefaults];

        [homeScreenDefaults setShouldInsertDownloadFileStackIconToFloatingDock:0];
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
    selfCopy3 = self;
    if (v12)
    {
LABEL_14:
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      fileStackIconsInDock = [(SBFloatingDockRemoteContentManager *)selfCopy3 fileStackIconsInDock];
      v19 = [fileStackIconsInDock countByEnumeratingWithState:&v31 objects:v42 count:16];
      if (v19)
      {
        v20 = *v32;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v32 != v20)
            {
              objc_enumerationMutation(fileStackIconsInDock);
            }

            v22 = *(*(&v31 + 1) + 8 * i);
            leafIdentifier = [v22 leafIdentifier];
            if ([leafIdentifier isEqualToString:iconCopy])
            {
              v24 = [v22 url];
              v25 = [v24 isEqual:urlCopy];

              if (v25)
              {
                _floatingDockUtilitiesListView = [(SBFloatingDockRemoteContentManager *)selfCopy _floatingDockUtilitiesListView];
                v27 = [_floatingDockUtilitiesListView iconViewForIcon:v22];

                floatingDockRootViewController = [(SBFloatingDockRemoteContentManager *)selfCopy floatingDockRootViewController];
                [floatingDockRootViewController handleDownloadCompletedRequestIfNeededForIconView:v27];

                goto LABEL_25;
              }
            }

            else
            {
            }
          }

          v19 = [fileStackIconsInDock countByEnumeratingWithState:&v31 objects:v42 count:16];
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
  currentDevice = +[SBDefaults localDefaults];
  homeScreenDefaults = [currentDevice homeScreenDefaults];

  LODWORD(currentDevice) = [homeScreenDefaults shouldInsertDownloadFileStackIconToFloatingDock];
  v4 = SBLogDock();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = currentDevice;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "User defaults shouldInsertDownloads is %d", v7, 8u);
  }

  if (currentDevice)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    LOBYTE(currentDevice) = (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1;
  }

  return currentDevice;
}

- (void)clientRequestToAcknowledgeDidFinishAnimatingFor:(BOOL)for withFileStackIcon:(id)icon
{
  if (for)
  {
    [(SBFloatingDockRemoteContentManager *)self removeSceneHostingViewMatchMoveAnimation:for];
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

- (void)iconList:(id)list didAddIcon:(id)icon
{
  iconCopy = icon;
  if ([iconCopy isFileStackIcon])
  {
    v6 = iconCopy;
    v7 = [v6 url];

    if (v7)
    {
      v59 = iconCopy;
      [v6 addObserver:self];
      [(SBFloatingDockRemoteContentManager *)self createOpenIndicatorViewForFileStackIcon:v6];
      imageProvider = [v6 imageProvider];
      [imageProvider setOverrideDataSourceDelegate:self];

      v9 = [(SBFloatingDockRemoteContentManager *)self _iconViewForIcon:v6];
      v10 = v9;
      if (v9)
      {
        [v9 setOverrideDroppingDelegate:self];
      }

      v62 = v10;
      _floatingDockUtilitiesListView = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListView];
      layout = [_floatingDockUtilitiesListView layout];
      [layout iconImageInfoForGridSizeClass:*MEMORY[0x277D66508]];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;

      *&v21 = v18;
      v22 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
      *&v23 = v20;
      v24 = [MEMORY[0x277CCABB0] numberWithFloat:v23];
      _hostComponent = [(SBFloatingDockRemoteContentManager *)self _hostComponent];
      leafIdentifier = [v6 leafIdentifier];
      v26 = [v6 url];
      sortOrder = [v6 sortOrder];
      identifier = [sortOrder identifier];
      isCurrentSortOrderAscending = [v6 isCurrentSortOrderAscending];
      displayMode = [v6 displayMode];
      identifier2 = [displayMode identifier];
      _floatingDockUtilitiesListView2 = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListView];
      v29 = [_floatingDockUtilitiesListView2 displayedIconViewForIcon:v6];
      [v29 frame];
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;
      floatingDockRootViewController = [(SBFloatingDockRemoteContentManager *)self floatingDockRootViewController];
      [floatingDockRootViewController floatingDockScreenPresentationFrame];
      v60 = v24;
      v61 = v22;
      [_hostComponent configureFileStackIcon:leafIdentifier url:v26 sortingBy:identifier sortingOrderAscending:isCurrentSortOrderAscending displayMode:identifier2 anchorFrame:0 floatingDockFrame:v31 sourceLayerRenderId:v33 sourceContextId:v35 openIndicatorLayerRenderId:v37 openIndicatorContextId:v39 iconImageInfoSize:v40 iconImageInfoScale:v41 iconImageContinuousCornerRadius:v42 requestFromHost:0 fence:{0, 0, v14, v16, v22, v24, 102, 0}];

      leafIdentifier2 = [v6 leafIdentifier];
      v44 = [v6 url];
      v45 = v44;
      if (leafIdentifier2 && v44)
      {
        mEMORY[0x277D06248] = [MEMORY[0x277D06248] sharedManager];
        [mEMORY[0x277D06248] startObservingFolderWithIdentifier:leafIdentifier2 url:v45];
      }

      _hostComponent2 = [(SBFloatingDockRemoteContentManager *)self _hostComponent];
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      leafIdentifier3 = [v6 leafIdentifier];
      v51 = [v6 url];
      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = 3221225472;
      v63[2] = __58__SBFloatingDockRemoteContentManager_iconList_didAddIcon___block_invoke;
      v63[3] = &unk_2783A9398;
      v52 = v6;
      v64 = v52;
      [_hostComponent2 fetchIconThumbnailWithSessionID:uUIDString forIcon:leafIdentifier3 url:v51 completion:v63];

      [(SBFloatingDockRemoteContentManager *)self _persistFileStackIconURLSourceToDisk:v52];
      v53 = v62;
      iconCopy = v59;
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

- (void)iconList:(id)list didRemoveIcon:(id)icon
{
  iconCopy = icon;
  isFileStackIcon = [iconCopy isFileStackIcon];
  v6 = iconCopy;
  if (isFileStackIcon)
  {
    v7 = iconCopy;
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
    _floatingDockUtilitiesListView = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListView];
    layout = [_floatingDockUtilitiesListView layout];
    [layout iconImageInfoForGridSizeClass:*MEMORY[0x277D66508]];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    *&v22 = v19;
    v23 = [MEMORY[0x277CCABB0] numberWithFloat:v22];
    *&v24 = v21;
    v25 = [MEMORY[0x277CCABB0] numberWithFloat:v24];
    _hostComponent = [(SBFloatingDockRemoteContentManager *)self _hostComponent];
    leafIdentifier = [v11 leafIdentifier];
    v26 = [v11 url];
    sortOrder = [v11 sortOrder];
    identifier = [sortOrder identifier];
    isCurrentSortOrderAscending = [v11 isCurrentSortOrderAscending];
    displayMode = [v11 displayMode];
    identifier2 = [displayMode identifier];
    _floatingDockUtilitiesListView2 = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListView];
    v29 = [_floatingDockUtilitiesListView2 displayedIconViewForIcon:v9];
    [v29 frame];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    floatingDockRootViewController = [(SBFloatingDockRemoteContentManager *)self floatingDockRootViewController];
    [floatingDockRootViewController floatingDockScreenPresentationFrame];
    [_hostComponent configureFileStackIcon:leafIdentifier url:v26 sortingBy:identifier sortingOrderAscending:isCurrentSortOrderAscending displayMode:identifier2 anchorFrame:0 floatingDockFrame:v31 sourceLayerRenderId:v33 sourceContextId:v35 openIndicatorLayerRenderId:v37 openIndicatorContextId:v39 iconImageInfoSize:v40 iconImageInfoScale:v41 iconImageContinuousCornerRadius:v42 requestFromHost:0 fence:{0, 0, v15, v17, v23, v25, 103, 0}];

    leafIdentifier2 = [v11 leafIdentifier];
    v44 = [v11 url];
    v45 = v44;
    if (leafIdentifier2 && v44)
    {
      mEMORY[0x277D06248] = [MEMORY[0x277D06248] sharedManager];
      [mEMORY[0x277D06248] stopObservingFolderWithIdentifier:leafIdentifier2 url:v45];
    }

    [(SBFloatingDockRemoteContentManager *)self _deleteFileStackIconURLSourceFromDisk:v9];
    fileStackIconThumbnails = [(SBFloatingDockRemoteContentManager *)self fileStackIconThumbnails];
    leafIdentifier3 = [v9 leafIdentifier];
    [fileStackIconThumbnails removeObjectForKey:leafIdentifier3];

    [v9 removeObserver:self];
    v6 = iconCopy;
  }
}

- (void)iconView:(id)view performDrop:(id)drop
{
  v73[1] = *MEMORY[0x277D85DE8];
  dropCopy = drop;
  icon = [view icon];
  if ([icon isFileStackIcon])
  {
    v8 = icon;
    v73[0] = *MEMORY[0x277D06180];
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:1];
    v10 = [dropCopy hasItemsConformingToTypeIdentifiers:v9];

    if (v10)
    {
      array2 = SBLogDockFileStack();
      if (os_log_type_enabled(array2, OS_LOG_TYPE_ERROR))
      {
        [(SBFloatingDockRemoteContentManager *)array2 iconView:v11 performDrop:v12, v13, v14, v15, v16, v17];
      }
    }

    else
    {
      selfCopy = self;
      v38 = v8;
      v39 = icon;
      array = [MEMORY[0x277CBEB18] array];
      array2 = [MEMORY[0x277CBEB18] array];
      array3 = [MEMORY[0x277CBEB18] array];
      v40 = dropCopy;
      items = [dropCopy items];
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
      obj = items;
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
            itemProvider = [v22 itemProvider];
            v61 = 0u;
            v62 = 0u;
            v63 = 0u;
            v64 = 0u;
            registeredTypeIdentifiers = [itemProvider registeredTypeIdentifiers];
            v25 = [registeredTypeIdentifiers countByEnumeratingWithState:&v61 objects:v71 count:16];
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
                  objc_enumerationMutation(registeredTypeIdentifiers);
                }

                v29 = [MEMORY[0x277CE1CB8] typeWithIdentifier:*(*(&v61 + 1) + 8 * v28)];
                if ([v29 conformsToType:v20])
                {
                  break;
                }

                if (v26 == ++v28)
                {
                  v26 = [registeredTypeIdentifiers countByEnumeratingWithState:&v61 objects:v71 count:16];
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

              itemProvider2 = [v22 itemProvider];
              identifier = [v29 identifier];
              v53[0] = MEMORY[0x277D85DD0];
              v53[1] = 3221225472;
              v53[2] = __59__SBFloatingDockRemoteContentManager_iconView_performDrop___block_invoke;
              v53[3] = &unk_2783BC268;
              v54 = v43;
              v55 = array2;
              v56 = v29;
              v57 = array;
              v58 = array3;
              v59 = group;
              v33 = v29;
              v34 = [itemProvider2 loadInPlaceFileRepresentationForTypeIdentifier:identifier completionHandler:v53];
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
      block[4] = selfCopy;
      v50 = array;
      v51 = v38;
      v52 = array3;
      v35 = array3;
      v36 = array;
      dispatch_group_notify(group, MEMORY[0x277D85CD0], block);

      icon = v39;
      dropCopy = v40;
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

- (id)iconImageWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options forFileStackIcon:(id)icon
{
  optionsCopy = options;
  fileStackIconThumbnails = [(SBFloatingDockRemoteContentManager *)self fileStackIconThumbnails];
  leafIdentifier = [optionsCopy leafIdentifier];

  v10 = [fileStackIconThumbnails objectForKey:leafIdentifier];

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

- (void)applicationRestrictionController:(id)controller didUpdateVisibleTags:(id)tags hiddenTags:(id)hiddenTags
{
  v6 = [hiddenTags containsObject:{@"com.apple.DocumentsApp", tags}];
  hiddenRestorableFileStackIcons = [(SBFloatingDockRemoteContentManager *)self hiddenRestorableFileStackIcons];
  v8 = hiddenRestorableFileStackIcons;
  if (v6)
  {
    fileStackIconsInDock = [(SBFloatingDockRemoteContentManager *)self fileStackIconsInDock];
    [v8 addObjectsFromArray:fileStackIconsInDock];

    _floatingDockUtilitiesListModel = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListModel];
    [_floatingDockUtilitiesListModel removeAllIcons];
  }

  else
  {
    v10 = [hiddenRestorableFileStackIcons count];

    if (!v10)
    {
      return;
    }

    _floatingDockUtilitiesListModel2 = [(SBFloatingDockRemoteContentManager *)self _floatingDockUtilitiesListModel];
    hiddenRestorableFileStackIcons2 = [(SBFloatingDockRemoteContentManager *)self hiddenRestorableFileStackIcons];
    v13 = [_floatingDockUtilitiesListModel2 addIcons:hiddenRestorableFileStackIcons2];

    _floatingDockUtilitiesListModel = [(SBFloatingDockRemoteContentManager *)self hiddenRestorableFileStackIcons];
    [_floatingDockUtilitiesListModel removeAllObjects];
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