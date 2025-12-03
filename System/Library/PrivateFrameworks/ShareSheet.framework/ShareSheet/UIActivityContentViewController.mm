@interface UIActivityContentViewController
- (BOOL)_canShowOptions;
- (BOOL)_isOnlyCompactSize;
- (BOOL)_isOnlyFullSize;
- (BOOL)_shouldShowCloseButton;
- (BOOL)_wantsResizePanGesture;
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)isCompactSize;
- (BOOL)isResizable;
- (CGSize)hostPortraitWindowSize;
- (LPLinkMetadata)headerMetadata;
- (NSDiffableDataSourceSnapshot)currentSnapshot;
- (SHSheetContentDataSource)dataSource;
- (SHSheetContentPresenter)presenter;
- (UIActivityContentViewController)init;
- (UIActivityContentViewController)initWithContext:(id)context;
- (UIActivityContentViewControllerDelegate)delegate;
- (UIBarButtonItem)cancelButton;
- (UIBarButtonItem)nextButton;
- (UIViewController)customViewController;
- (id)_activityTitleForActivity:(id)activity;
- (id)_contextMenuPreviewForCollectionView:(id)view collectionViewCell:(id)cell;
- (id)_createLinkView;
- (id)_footerTextForInformationalSectionIdentifier:(id)identifier;
- (id)_provideCellForCollectionView:(id)view indexPath:(id)path itemIdentifier:(id)identifier;
- (id)_provideLayoutForSection:(int64_t)section environment:(id)environment;
- (id)_provideSupplementaryViewForCollectionView:(id)view kind:(id)kind indexPath:(id)path;
- (id)_scrollViewForScrollingType:(int64_t)type;
- (id)_sectionIdentifierForIndex:(int64_t)index;
- (id)airDropNodeForItemIdentifier:(id)identifier;
- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point;
- (id)collectionView:(id)view previewForDismissingContextMenuWithConfiguration:(id)configuration;
- (id)collectionView:(id)view previewForHighlightingContextMenuWithConfiguration:(id)configuration;
- (id)titleForItemIdentifier:(id)identifier;
- (int64_t)currentSectionTypesToExclude;
- (int64_t)effectivePresentationStyle;
- (int64_t)presentationDirectionType;
- (unint64_t)_headingSizeClass;
- (void)_addResizeGestureIfNeeded;
- (void)_configureActionCell:(id)cell itemIdentifier:(id)identifier;
- (void)_configureAirDropCell:(id)cell withChange:(id)change;
- (void)_configureCollectionViewIfNeeded;
- (void)_configureHeaderViewIfNeeded;
- (void)_configureHeroActionCell:(id)cell itemIdentifier:(id)identifier;
- (void)_configureHorizontalActionCell:(id)cell itemIdentifier:(id)identifier;
- (void)_configureMagicHeadCell:(id)cell withProxy:(id)proxy;
- (void)_configurePeopleCell:(id)cell itemIdentifier:(id)identifier;
- (void)_configureSharingAppCell:(id)cell itemIdentifier:(id)identifier;
- (void)_configureWithContext:(id)context;
- (void)_consumeURLSandboxExtensions:(id)extensions forURLRequests:(id)requests;
- (void)_handleResizeGesture:(id)gesture;
- (void)_removeResizeGestureIfNeeded;
- (void)_resetPanGesture:(id)gesture;
- (void)_updateBlurBackgroundIfNeeded;
- (void)_updateContent:(BOOL)content;
- (void)_updateContentWithPeopleProxies:(id)proxies shareProxies:(id)shareProxies actionProxies:(id)actionProxies activitiesByUUID:(id)d nearbyCountSlotID:(id)iD animated:(BOOL)animated reloadData:(BOOL)data;
- (void)_updateCustomViewContent;
- (void)_updateDividerIfNeeded;
- (void)_updateHeaderContentInsets;
- (void)_updateHeaderLinkViewAction;
- (void)_updateHeaderLinkViewSizeClass;
- (void)_updateHeaderMetadataValues;
- (void)_updateHeaderSize;
- (void)_updatePreferredContentSize;
- (void)_updateShowAllActions;
- (void)collectionView:(id)view cancelPrefetchingForItemsAtIndexPaths:(id)paths;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view prefetchItemsAtIndexPaths:(id)paths;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willEndContextMenuInteractionWithConfiguration:(id)configuration animator:(id)animator;
- (void)dataSourceManager:(id)manager didPublishDataSourceWithChangeDetails:(id)details;
- (void)dealloc;
- (void)didUpdateAirDropTransferWithChange:(id)change;
- (void)homeScreenService:(id)service homeScreenIconStyleConfigurationDidChange:(id)change;
- (void)linkView:(id)view didFetchMetadata:(id)metadata;
- (void)linkViewNeedsResize:(id)resize;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)reloadActivity:(id)activity;
- (void)reloadContent;
- (void)reloadMetadata:(id)metadata;
- (void)runScrollingTestWithName:(id)name type:(int64_t)type completionHandler:(id)handler;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)setHeroActionActivityTypes:(id)types;
- (void)setHostPresentationDirectionType:(id)type;
- (void)setHostPresentationStyle:(id)style;
- (void)setHostSLMEnabled:(id)enabled;
- (void)setShowAllActions:(BOOL)actions;
- (void)startPulsingActivity:(id)activity localizedTitle:(id)title;
- (void)stopPulsingActivity:(id)activity;
- (void)traitCollectionDidChange:(id)change;
- (void)updateWithViewModel:(id)model;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation UIActivityContentViewController

- (UIActivityContentViewController)init
{
  v5.receiver = self;
  v5.super_class = UIActivityContentViewController;
  v2 = [(UIActivityContentViewController *)&v5 initWithNibName:0 bundle:0];
  v3 = v2;
  if (v2)
  {
    [(UIActivityContentViewController *)v2 _configureWithContext:0];
  }

  return v3;
}

- (UIActivityContentViewController)initWithContext:(id)context
{
  contextCopy = context;
  v8.receiver = self;
  v8.super_class = UIActivityContentViewController;
  v5 = [(UIActivityContentViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(UIActivityContentViewController *)v5 _configureWithContext:contextCopy];
  }

  return v6;
}

- (void)dealloc
{
  v26 = *MEMORY[0x1E69E9840];
  homeScreenIconStyleObserver = [(UIActivityContentViewController *)self homeScreenIconStyleObserver];
  [homeScreenIconStyleObserver invalidate];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  sandboxExtensionHandles = [(UIActivityContentViewController *)self sandboxExtensionHandles];
  v5 = [sandboxExtensionHandles countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v18;
    *&v6 = 67109378;
    v15 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(sandboxExtensionHandles);
        }

        [*(*(&v17 + 1) + 8 * v9) integerValue];
        if (sandbox_extension_release() == -1)
        {
          v10 = share_sheet_log();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v11 = *__error();
            v12 = __error();
            v13 = strerror(*v12);
            *buf = v15;
            v22 = v11;
            v23 = 2080;
            v24 = v13;
            _os_log_error_impl(&dword_18B359000, v10, OS_LOG_TYPE_ERROR, "Failed to release sandbox extension with error %d (%s)", buf, 0x12u);
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [sandboxExtensionHandles countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v7);
  }

  activityCollectionView = [(UIActivityContentViewController *)self activityCollectionView];
  [activityCollectionView removeObserver:self forKeyPath:@"contentSize"];

  v16.receiver = self;
  v16.super_class = UIActivityContentViewController;
  [(UIActivityContentViewController *)&v16 dealloc];
}

- (int64_t)presentationDirectionType
{
  hostPresentationDirectionType = [(UIActivityContentViewController *)self hostPresentationDirectionType];

  if (hostPresentationDirectionType)
  {
    hostPresentationDirectionType2 = [(UIActivityContentViewController *)self hostPresentationDirectionType];
    integerValue = [hostPresentationDirectionType2 integerValue];
  }

  else
  {
    popoverPresentationController = [(UIActivityContentViewController *)self popoverPresentationController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      return 0;
    }

    hostPresentationDirectionType2 = [(UIActivityContentViewController *)self popoverPresentationController];
    integerValue = [hostPresentationDirectionType2 presentationDirectionType];
  }

  v8 = integerValue;

  return v8;
}

- (void)setHostPresentationStyle:(id)style
{
  v36 = *MEMORY[0x1E69E9840];
  styleCopy = style;
  hostPresentationStyle = self->_hostPresentationStyle;
  v7 = styleCopy;
  v8 = hostPresentationStyle;
  v9 = v8;
  if (v8 == v7)
  {
  }

  else
  {
    if ((v7 != 0) != (v8 == 0))
    {
      v10 = [(NSNumber *)v7 isEqual:v8];

      if (v10)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_hostPresentationStyle, style);
    v11 = share_sheet_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v32 = 138412546;
      v33 = objc_opt_class();
      v34 = 2112;
      v35 = v7;
      _os_log_impl(&dword_18B359000, v11, OS_LOG_TYPE_DEFAULT, "%@: setHostPresentationStyle:%@", &v32, 0x16u);
    }

    v12 = _ShareSheetCurrentDeviceClassFromPresentationStyle([(UIActivityContentViewController *)self isPresentedInPopover]);
    layoutSpec = [(UIActivityContentViewController *)self layoutSpec];
    deviceClass = [layoutSpec deviceClass];

    if (deviceClass != v12)
    {
      v15 = [SHSheetContentLayoutSpec alloc];
      traitCollection = [(UIActivityContentViewController *)self traitCollection];
      tintColor = [(UIActivityContentViewController *)self tintColor];
      [(UIActivityContentViewController *)self hostPortraitWindowSize];
      v18 = [(SHSheetContentLayoutSpec *)v15 initWithTraitCollection:traitCollection tintColor:tintColor deviceClass:v12 portraitWindowSize:?];
      layoutSpec = self->_layoutSpec;
      self->_layoutSpec = v18;

      v20 = self->_layoutSpec;
      layoutProvider = [(UIActivityContentViewController *)self layoutProvider];
      [layoutProvider setLayoutSpec:v20];

      peopleSuggestionImageProvider = [(UIActivityContentViewController *)self peopleSuggestionImageProvider];
      [(SHSheetContentLayoutSpec *)self->_layoutSpec peopleIconWidth];
      v24 = v23;
      [(SHSheetContentLayoutSpec *)self->_layoutSpec peopleIconWidth];
      [peopleSuggestionImageProvider updateTargetSize:{v24, v25}];

      peopleSuggestionImageProvider2 = [(UIActivityContentViewController *)self peopleSuggestionImageProvider];
      traitCollection2 = [(SHSheetContentLayoutSpec *)self->_layoutSpec traitCollection];
      [peopleSuggestionImageProvider2 updateUserInterfaceStyle:{objc_msgSend(traitCollection2, "userInterfaceStyle")}];

      activityCollectionView = [(UIActivityContentViewController *)self activityCollectionView];
      [activityCollectionView reloadData];
    }

    _shouldShowCloseButton = [(UIActivityContentViewController *)self _shouldShowCloseButton];
    headerTitleView = [(UIActivityContentViewController *)self headerTitleView];
    [headerTitleView setHasCloseButton:_shouldShowCloseButton];

    [(UIActivityContentViewController *)self _removeResizeGestureIfNeeded];
    [(UIActivityContentViewController *)self _addResizeGestureIfNeeded];
    view = [(UIActivityContentViewController *)self view];
    [view setNeedsLayout];
  }

LABEL_12:
}

- (void)setHostSLMEnabled:(id)enabled
{
  v16 = *MEMORY[0x1E69E9840];
  enabledCopy = enabled;
  hostSLMEnabled = self->_hostSLMEnabled;
  v7 = enabledCopy;
  v8 = hostSLMEnabled;
  v9 = v8;
  if (v8 == v7)
  {
  }

  else
  {
    if ((v7 != 0) != (v8 == 0))
    {
      v10 = [(NSNumber *)v7 isEqual:v8];

      if (v10)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_hostSLMEnabled, enabled);
    v11 = share_sheet_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = objc_opt_class();
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_18B359000, v11, OS_LOG_TYPE_DEFAULT, "%@: setHostSLMEnabled:%@", &v12, 0x16u);
    }

    [(UIActivityContentViewController *)self _updateBlurBackgroundIfNeeded];
  }

LABEL_10:
}

- (void)setHostPresentationDirectionType:(id)type
{
  v11 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  if (self->_hostPresentationDirectionType != typeCopy)
  {
    objc_storeStrong(&self->_hostPresentationDirectionType, type);
    v6 = share_sheet_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412546;
      v8 = objc_opt_class();
      v9 = 2112;
      v10 = typeCopy;
      _os_log_impl(&dword_18B359000, v6, OS_LOG_TYPE_DEFAULT, "%@: setHostPresentationDirectionType:%@", &v7, 0x16u);
    }

    [(UIActivityContentViewController *)self _removeResizeGestureIfNeeded];
    [(UIActivityContentViewController *)self _addResizeGestureIfNeeded];
  }
}

- (int64_t)effectivePresentationStyle
{
  hostPresentationStyle = [(UIActivityContentViewController *)self hostPresentationStyle];

  if (hostPresentationStyle)
  {
    hostPresentationStyle2 = [(UIActivityContentViewController *)self hostPresentationStyle];
    integerValue = [hostPresentationStyle2 integerValue];

    return integerValue;
  }

  else
  {

    return SHSheetPresentationControllerPresentationStyle(self);
  }
}

- (void)_configureWithContext:(id)context
{
  contextCopy = context;
  self->_isRemote = [contextCopy isRemote];
  hostAuditToken = [contextCopy hostAuditToken];
  hostAuditToken = self->_hostAuditToken;
  self->_hostAuditToken = hostAuditToken;

  self->_canRenderPeople = [contextCopy canRenderPeople];
  self->_configureForCloudSharing = [contextCopy configureForCloudSharing];
  self->_configureForPhotosEdit = [contextCopy configureForPhotosEdit];
  self->_hideHeaderView = [contextCopy hideHeaderView];
  self->_hideNavigationBar = [contextCopy hideNavigationBar];
  self->_sharingExpanded = [contextCopy sharingExpanded];
  self->_sharingStyle = [contextCopy sharingStyle];
  topContentSectionText = [contextCopy topContentSectionText];
  topContentSectionText = self->_topContentSectionText;
  self->_topContentSectionText = topContentSectionText;

  applicationActivityTypes = [contextCopy applicationActivityTypes];
  applicationActivityTypes = self->_applicationActivityTypes;
  self->_applicationActivityTypes = applicationActivityTypes;

  heroActionActivityTypes = [contextCopy heroActionActivityTypes];
  heroActionActivityTypes = self->_heroActionActivityTypes;
  self->_heroActionActivityTypes = heroActionActivityTypes;

  self->_showHeroActionsHorizontally = [contextCopy showHeroActionsHorizontally];
  tintColor = [contextCopy tintColor];
  tintColor = self->_tintColor;
  self->_tintColor = tintColor;

  [contextCopy hostPortraitWindowSize];
  self->_hostPortraitWindowSize.width = v15;
  self->_hostPortraitWindowSize.height = v16;
  v17 = _ShareSheetCurrentDeviceClassFromPresentationStyle([(UIActivityContentViewController *)self isPresentedInPopover]);
  v18 = [SHSheetContentLayoutSpec alloc];
  traitCollection = [(UIActivityContentViewController *)self traitCollection];
  tintColor2 = [(UIActivityContentViewController *)self tintColor];
  [(UIActivityContentViewController *)self hostPortraitWindowSize];
  v21 = [(SHSheetContentLayoutSpec *)v18 initWithTraitCollection:traitCollection tintColor:tintColor2 deviceClass:v17 portraitWindowSize:?];
  layoutSpec = self->_layoutSpec;
  self->_layoutSpec = v21;

  v23 = [[SHSheetContentLayoutProvider alloc] initWithLayoutSpec:self->_layoutSpec];
  layoutProvider = self->_layoutProvider;
  self->_layoutProvider = v23;

  [(SHSheetContentLayoutProvider *)self->_layoutProvider setDelegate:self];
  objc_initWeak(&location, self);
  v25 = [_UIActivityCollectionViewCompositionalLayout alloc];
  v50 = MEMORY[0x1E69E9820];
  v51 = 3221225472;
  v52 = __57__UIActivityContentViewController__configureWithContext___block_invoke;
  v53 = &unk_1E71F9E90;
  objc_copyWeak(&v54, &location);
  v26 = [(_UIActivityCollectionViewCompositionalLayout *)v25 initWithSectionProvider:&v50];
  activityCollectionViewLayout = self->_activityCollectionViewLayout;
  self->_activityCollectionViewLayout = v26;

  v28 = objc_alloc_init(getSFUIActivityImageProviderClass_0());
  activityImageProvider = self->_activityImageProvider;
  self->_activityImageProvider = v28;

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  identifiersToActivityImageRequestID = self->_identifiersToActivityImageRequestID;
  self->_identifiersToActivityImageRequestID = dictionary;

  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  identifiersToPeopleSuggestionImageRequestIDs = self->_identifiersToPeopleSuggestionImageRequestIDs;
  self->_identifiersToPeopleSuggestionImageRequestIDs = dictionary2;

  homeScreenService = [(objc_class *)getSFUIActivityImageProviderClass_0() homeScreenService];
  v35 = [homeScreenService addHomeScreenIconStyleObserver:self];
  homeScreenIconStyleObserver = self->_homeScreenIconStyleObserver;
  self->_homeScreenIconStyleObserver = v35;

  if (self->_canRenderPeople)
  {
    [(SHSheetContentLayoutSpec *)self->_layoutSpec peopleIconWidth];
    v38 = v37;
    [(SHSheetContentLayoutSpec *)self->_layoutSpec peopleIconWidth];
    v40 = v39;
    v41 = objc_alloc(getSFUIPeopleSuggestionImageProviderClass());
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];
    traitCollection2 = [(SHSheetContentLayoutSpec *)self->_layoutSpec traitCollection];
    v45 = [v41 initWithTargetSize:userInterfaceLayoutDirection layoutDirection:objc_msgSend(traitCollection2 userInterfaceStyle:{"userInterfaceStyle"), v38, v40}];
    peopleSuggestionImageProvider = self->_peopleSuggestionImageProvider;
    self->_peopleSuggestionImageProvider = v45;
  }

  self->_headerLinkActionsNeedsUpdate = 1;
  v47 = [MEMORY[0x1E695DFA8] set];
  sandboxExtensionHandles = self->_sandboxExtensionHandles;
  self->_sandboxExtensionHandles = v47;

  self->_showAllActions = [contextCopy sharingStyle] == 2;
  if ([(UIActivityContentViewController *)self isRemote])
  {
    if (_ShareSheetPlatformPrefersPopover())
    {
      if ([(UIActivityContentViewController *)self modalPresentationStyle]== 2)
      {
        v49 = _ShareSheetFormSheetSize();
      }

      else
      {
        v49 = _ShareSheetPopoverSize();
      }
    }

    else
    {
      v49 = _ShareSheetDefaultSheetSize();
    }

    [(UIActivityContentViewController *)self setPreferredContentSize:v49];
  }

  objc_destroyWeak(&v54);
  objc_destroyWeak(&location);
}

id __57__UIActivityContentViewController__configureWithContext___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained _provideLayoutForSection:a2 environment:v5];

  return v7;
}

- (UIViewController)customViewController
{
  viewModel = [(UIActivityContentViewController *)self viewModel];
  customViewController = [viewModel customViewController];

  return customViewController;
}

- (NSDiffableDataSourceSnapshot)currentSnapshot
{
  dataSourceManager = [(UIActivityContentViewController *)self dataSourceManager];
  dataSource = [dataSourceManager dataSource];
  diffableSnapshot = [dataSource diffableSnapshot];

  return diffableSnapshot;
}

- (SHSheetContentDataSource)dataSource
{
  dataSourceManager = [(UIActivityContentViewController *)self dataSourceManager];
  dataSource = [dataSourceManager dataSource];

  return dataSource;
}

- (int64_t)currentSectionTypesToExclude
{
  customViewController = [(UIActivityContentViewController *)self customViewController];
  if (customViewController)
  {
    configureForCloudSharing = [(UIActivityContentViewController *)self configureForCloudSharing];
  }

  else
  {
    configureForCloudSharing = 1;
  }

  if ([(UIActivityContentViewController *)self photosLandscapeMode]&& ([(UIActivityContentViewController *)self customViewController], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    sharingStyle = [(UIActivityContentViewController *)self sharingStyle];
    configureForCloudSharing2 = 1;
    v8 = 1;
    v9 = 1;
  }

  else
  {
    configureForCloudSharing2 = [(UIActivityContentViewController *)self configureForPhotosEdit]|| [(UIActivityContentViewController *)self configureForCloudSharing];
    sharingStyle = [(UIActivityContentViewController *)self sharingStyle];
    v8 = 0;
    if (_ShareSheetSolariumEnabled())
    {
      v9 = ![(UIActivityContentViewController *)self showAllActions];
    }

    else
    {
      v9 = 0;
    }
  }

  if ([(UIActivityContentViewController *)self sharingExpanded])
  {
    showHeroActionsHorizontally = [(UIActivityContentViewController *)self showHeroActionsHorizontally];
  }

  else
  {
    showHeroActionsHorizontally = 0;
  }

  v11 = v8 | _ShareSheetSolariumEnabled() ^ 1;
  if (sharingStyle == 2)
  {
    v11 = 1;
  }

  v12 = configureForCloudSharing | 2;
  if (!configureForCloudSharing2)
  {
    v12 = configureForCloudSharing;
  }

  if (v8)
  {
    v12 |= 4uLL;
  }

  if (v9)
  {
    v12 |= 8uLL;
  }

  if (showHeroActionsHorizontally)
  {
    v12 |= 0x10uLL;
  }

  if (v11)
  {
    return v12 | 0x20;
  }

  else
  {
    return v12;
  }
}

- (id)_provideLayoutForSection:(int64_t)section environment:(id)environment
{
  environmentCopy = environment;
  v7 = [(UIActivityContentViewController *)self _sectionIdentifierForIndex:section];
  v8 = [SHSheetContentLayoutContext alloc];
  currentSnapshot = [(UIActivityContentViewController *)self currentSnapshot];
  v10 = [(SHSheetContentLayoutContext *)v8 initWithSectionIdentifier:v7 dataSourceSnapshot:currentSnapshot environment:environmentCopy];

  view = [(UIActivityContentViewController *)self view];
  [view directionalLayoutMargins];
  [(SHSheetContentLayoutContext *)v10 setViewDirectionalLayoutMargins:?];

  topContentSectionText = [(UIActivityContentViewController *)self topContentSectionText];
  [(SHSheetContentLayoutContext *)v10 setEnableTopContentSectionText:topContentSectionText != 0];

  if ([(UIActivityContentViewController *)self showHeroActionsHorizontally])
  {
    layoutSpec = [(UIActivityContentViewController *)self layoutSpec];
    -[SHSheetContentLayoutContext setEnableHeroActions:](v10, "setEnableHeroActions:", [layoutSpec isAccessibilityContentSize] ^ 1);
  }

  else
  {
    [(SHSheetContentLayoutContext *)v10 setEnableHeroActions:0];
  }

  layoutProvider = [(UIActivityContentViewController *)self layoutProvider];
  v15 = [layoutProvider layoutSectionForContext:v10];

  if (([v7 isEqual:@"SHSheetContentPeopleSectionIdentifier"] & 1) != 0 || objc_msgSend(v7, "isEqual:", @"SHSheetContentAppsSectionIdentifier"))
  {
    [(UIActivityContentViewController *)self setCachedHorizontalLayoutSection:v15];
  }

  layoutSection = [v15 layoutSection];

  return layoutSection;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if ([path isEqualToString:{@"contentSize", object, change, context}])
  {
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__UIActivityContentViewController_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_1E71F96C8;
    block[4] = self;
    objc_copyWeak(&v8, &location);
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __82__UIActivityContentViewController_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = share_sheet_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = objc_opt_class();
    v3 = v6;
    _os_log_impl(&dword_18B359000, v2, OS_LOG_TYPE_DEFAULT, "%@: contentSize did change", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updatePreferredContentSize];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = UIActivityContentViewController;
  [(UIActivityContentViewController *)&v7 viewDidLoad];
  [(UIActivityContentViewController *)self _configureHeaderViewIfNeeded];
  [(UIActivityContentViewController *)self _configureCollectionViewIfNeeded];
  [(UIActivityContentViewController *)self _updateCustomViewContent];
  view = [(UIActivityContentViewController *)self view];
  [view setBackgroundColor:0];

  view2 = [(UIActivityContentViewController *)self view];
  [view2 setAccessibilityIdentifier:@"shareSheet.activity.contentView"];

  if (_ShareSheetSolariumEnabled())
  {
    view3 = [(UIActivityContentViewController *)self view];
    layer = [view3 layer];
    [layer setHitTestsAsOpaque:1];
  }
}

- (void)viewDidLayoutSubviews
{
  v9.receiver = self;
  v9.super_class = UIActivityContentViewController;
  [(UIActivityContentViewController *)&v9 viewDidLayoutSubviews];
  if (_ShareSheetPlatformPrefersPopover() && ![(UIActivityContentViewController *)self photosLandscapeMode])
  {
    if ([(UIActivityContentViewController *)self _shouldShowCloseButton])
    {
      closeButton = [(UIActivityContentViewController *)self closeButton];
    }

    else
    {
      closeButton = 0;
    }

    isCloseButtonOnLeadingEdge = [(UIActivityContentViewController *)self isCloseButtonOnLeadingEdge];
    navigationItem = [(UIActivityContentViewController *)self navigationItem];
    v6 = navigationItem;
    if (isCloseButtonOnLeadingEdge)
    {
      [navigationItem setLeftBarButtonItem:closeButton];
    }

    else
    {
      [navigationItem setRightBarButtonItem:closeButton];
    }
  }

  if (_ShareSheetPlatformPrefersPopover() && [(UIActivityContentViewController *)self configureForCloudSharing])
  {
    activityCollectionView = [(UIActivityContentViewController *)self activityCollectionView];
    [activityCollectionView reloadData];
  }

  self->_didLayout = 1;
  pendingUpdate = [(UIActivityContentViewController *)self pendingUpdate];
  [(UIActivityContentViewController *)self setPendingUpdate:0];
  if (pendingUpdate)
  {
    pendingUpdate[2](pendingUpdate);
  }

  [(UIActivityContentViewController *)self _updateHeaderContentInsets];
  [(UIActivityContentViewController *)self _updateDividerIfNeeded];
  [(UIActivityContentViewController *)self _updatePreferredContentSize];
}

- (BOOL)isCompactSize
{
  dataSource = [(UIActivityContentViewController *)self dataSource];
  actionProxies = [dataSource actionProxies];
  v5 = [actionProxies count];
  dataSource2 = [(UIActivityContentViewController *)self dataSource];
  topActionsMaximumCount = [dataSource2 topActionsMaximumCount];

  v8 = ![(UIActivityContentViewController *)self showAllActions];
  return v5 <= topActionsMaximumCount || v8;
}

- (BOOL)_isOnlyCompactSize
{
  dataSource = [(UIActivityContentViewController *)self dataSource];

  if (dataSource && (-[UIActivityContentViewController dataSource](self, "dataSource"), v4 = objc_claimAutoreleasedReturnValue(), [v4 actionProxies], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), -[UIActivityContentViewController dataSource](self, "dataSource"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "topActionsMaximumCount"), v7, v5, v4, v6 <= v8))
  {
    customViewController = [(UIActivityContentViewController *)self customViewController];
    if (customViewController)
    {
      LOBYTE(v9) = 0;
    }

    else if ([(UIActivityContentViewController *)self isPresentedInPopover])
    {
      LOBYTE(v9) = 1;
    }

    else
    {
      viewModel = [(UIActivityContentViewController *)self viewModel];
      v9 = [viewModel supportsCollaboration] ^ 1;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (BOOL)_isOnlyFullSize
{
  dataSource = [(UIActivityContentViewController *)self dataSource];

  if (dataSource)
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v6 = _ShareSheetCachedActiveInterfaceOrientation() - 3;
    sharingStyle = [(UIActivityContentViewController *)self sharingStyle];
    dataSource2 = [(UIActivityContentViewController *)self dataSource];
    actionProxies = [dataSource2 actionProxies];
    v10 = [actionProxies count];
    dataSource3 = [(UIActivityContentViewController *)self dataSource];
    topActionsMaximumCount = [dataSource3 topActionsMaximumCount];

    if (userInterfaceIdiom)
    {
      v13 = 1;
    }

    else
    {
      v13 = v6 >= 2;
    }

    LOBYTE(v14) = 1;
    if (v13 && sharingStyle != 2)
    {
      customViewController = [(UIActivityContentViewController *)self customViewController];
      if (!customViewController)
      {
        LOBYTE(v14) = 0;
        if (![(UIActivityContentViewController *)self isPresentedInPopover]&& v10 > topActionsMaximumCount)
        {
          viewModel = [(UIActivityContentViewController *)self viewModel];
          v14 = [viewModel supportsCollaboration] ^ 1;
        }
      }
    }
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  return v14;
}

- (BOOL)isResizable
{
  if (!_ShareSheetSolariumEnabled())
  {
    return 1;
  }

  if ([(UIActivityContentViewController *)self _isOnlyCompactSize])
  {
    return 0;
  }

  return ![(UIActivityContentViewController *)self _isOnlyFullSize];
}

- (void)_updatePreferredContentSize
{
  v87 = *MEMORY[0x1E69E9840];
  viewIfLoaded = [(UIActivityContentViewController *)self viewIfLoaded];

  if (viewIfLoaded)
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice userInterfaceIdiom] == 1)
    {
    }

    else
    {
      currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
      userInterfaceIdiom = [currentDevice2 userInterfaceIdiom];

      if (userInterfaceIdiom)
      {
        return;
      }
    }

    if (_ShareSheetSolariumEnabled())
    {
      activityCollectionView = [(UIActivityContentViewController *)self activityCollectionView];
      [activityCollectionView contentSize];
      v9 = v8;

      if (v9 > 0.0)
      {
        customViewController = [(UIActivityContentViewController *)self customViewController];

        if (!customViewController)
        {
          currentDevice3 = [MEMORY[0x1E69DC938] currentDevice];
          userInterfaceIdiom2 = [currentDevice3 userInterfaceIdiom];

          v13 = _ShareSheetCachedActiveInterfaceOrientation() - 3;
          v14 = 0.0;
          if (![(UIActivityContentViewController *)self showAllActions]&& v13 >= 2)
          {
            if ([(UIActivityContentViewController *)self isPresentedInPopover])
            {
              v14 = 18.0;
            }

            else
            {
              v14 = 0.0;
            }
          }

          [(UIActivityContentViewController *)self hostPortraitWindowSize];
          if (userInterfaceIdiom2 == 1)
          {
            v16 = _ShareSheetPopoverSize();
          }

          else
          {
            v17 = v15 * -0.2;
            [(UIActivityContentViewController *)self hostPortraitWindowSize];
            v20 = v19 + v17;
            if (v13 < 2)
            {
              v18 = v20;
            }

            v16 = v18 - v14;
          }

          v21 = _ShareSheetCachedActiveInterfaceOrientation() - 1;
          [(UIActivityContentViewController *)self hostPortraitWindowSize];
          if (v21 >= 2)
          {
            v24 = v22;
          }

          else
          {
            v24 = v23;
          }

          navigationController = [(UIActivityContentViewController *)self navigationController];
          navigationBar = [navigationController navigationBar];
          headerTitleView = [(UIActivityContentViewController *)self headerTitleView];
          [headerTitleView frame];
          v29 = v28;
          v31 = v30;
          v33 = v32;
          v35 = v34;
          view = [(UIActivityContentViewController *)self view];
          [navigationBar convertRect:view toView:{v29, v31, v33, v35}];
          v38 = v37;
          v40 = v39;
          v42 = v41;
          v44 = v43;

          navigationController2 = [(UIActivityContentViewController *)self navigationController];
          MaxY = 0.0;
          if (([navigationController2 isNavigationBarHidden] & 1) == 0)
          {
            v91.origin.x = v38;
            v91.origin.y = v40;
            v91.size.width = v42;
            v91.size.height = v44;
            MaxY = CGRectGetMaxY(v91);
          }

          activityCollectionView2 = [(UIActivityContentViewController *)self activityCollectionView];
          [activityCollectionView2 contentSize];
          v49 = MaxY + v48;

          if (userInterfaceIdiom2 != 1 && ![(UIActivityContentViewController *)self isCompactSize])
          {
            v49 = v24;
          }

          if (v49 <= v24)
          {
            v50 = v49;
          }

          else
          {
            v50 = v24;
          }

          mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
          [mainScreen scale];
          v53 = round(v50 * v52);
          mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
          [mainScreen2 scale];
          v56 = v53 / v55;

          [(UIActivityContentViewController *)self preferredContentSize];
          if (v58 != v16 || v57 != v56)
          {
            v59 = share_sheet_log();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
            {
              [(UIActivityContentViewController *)self preferredContentSize];
              v60 = NSStringFromCGSize(v88);
              v89.width = v16;
              v89.height = v56;
              v61 = NSStringFromCGSize(v89);
              v77 = 138412546;
              v78 = *&v60;
              v79 = 2112;
              v80 = v61;
              _os_log_impl(&dword_18B359000, v59, OS_LOG_TYPE_DEFAULT, "preferred content size updating from:%@ to:%@", &v77, 0x16u);
            }

            v62 = share_sheet_log();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
            {
              navigationController3 = [(UIActivityContentViewController *)self navigationController];
              navigationBar2 = [navigationController3 navigationBar];
              [navigationBar2 frame];
              v65 = NSStringFromRect(v92);
              activityCollectionView3 = [(UIActivityContentViewController *)self activityCollectionView];
              [activityCollectionView3 contentSize];
              v67 = NSStringFromSize(v90);
              v77 = 134219010;
              v78 = MaxY;
              v79 = 2112;
              v80 = v65;
              v81 = 2112;
              v82 = v67;
              v83 = 2048;
              v84 = v49;
              v85 = 2048;
              v86 = v24;
              _os_log_impl(&dword_18B359000, v62, OS_LOG_TYPE_DEFAULT, "preferred content size update details: headerHeight:%f - navigationBar.frame:%@ - collectionView.contentSize:%@ - contentHeight:%f - hostWindowHeight:%f", &v77, 0x34u);
            }

            [(UIActivityContentViewController *)self setPreferredContentSize:v16, v56];
            navigationController4 = [(UIActivityContentViewController *)self navigationController];
            [navigationController4 setPreferredContentSize:{v16, v56}];

            presenter = [(UIActivityContentViewController *)self presenter];
            [presenter didUpdateSheetSize];

            view2 = [(UIActivityContentViewController *)self view];
            window = [view2 window];
            _windowHostingScene = [window _windowHostingScene];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              view3 = [(UIActivityContentViewController *)self view];
              window2 = [view3 window];
              _windowHostingScene2 = [window2 _windowHostingScene];

              [(UIActivityContentViewController *)self preferredContentSize];
              [_windowHostingScene2 _setPreferredContentSize:?];
            }
          }
        }
      }
    }
  }
}

- (void)_updateShowAllActions
{
  if ([(UIActivityContentViewController *)self showAllActions]|| [(UIActivityContentViewController *)self _isOnlyFullSize])
  {
    v3 = 1;
  }

  else
  {
    v3 = [(UIActivityContentViewController *)self isPresentedInPopover]^ 1;
  }

  [(UIActivityContentViewController *)self setShowAllActions:v3];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v26 = *MEMORY[0x1E69E9840];
  coordinatorCopy = coordinator;
  v21.receiver = self;
  v21.super_class = UIActivityContentViewController;
  [(UIActivityContentViewController *)&v21 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8 = share_sheet_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = v9;
    v27.width = width;
    v27.height = height;
    v11 = NSStringFromCGSize(v27);
    *buf = 138412546;
    v23 = v9;
    v24 = 2112;
    v25 = v11;
    _os_log_impl(&dword_18B359000, v8, OS_LOG_TYPE_DEFAULT, "%@: viewWillTransitionToSize:%@", buf, 0x16u);
  }

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    windows = [mEMORY[0x1E69DC668] windows];
    firstObject = [windows firstObject];
    windowScene = [firstObject windowScene];
    interfaceOrientation = [windowScene interfaceOrientation];

    if (width <= height == (interfaceOrientation - 3) < 2)
    {
      [(UIActivityContentViewController *)self setShowAllActions:[(UIActivityContentViewController *)self _isOnlyFullSize]];
      [(UIActivityContentViewController *)self _removeResizeGestureIfNeeded];
      [(UIActivityContentViewController *)self _addResizeGestureIfNeeded];
    }
  }

  v19[4] = self;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __86__UIActivityContentViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v20[3] = &unk_1E71F9EB8;
  v20[4] = self;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __86__UIActivityContentViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v19[3] = &unk_1E71F9EB8;
  [coordinatorCopy animateAlongsideTransition:v20 completion:v19];
}

uint64_t __86__UIActivityContentViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateCustomViewContent];
  [*(a1 + 32) _updateDividerIfNeeded];
  v2 = *(a1 + 32);

  return [v2 _updateHeaderContentInsets];
}

uint64_t __86__UIActivityContentViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _updatePreferredContentSize];
  [*(a1 + 32) _updateContent:1];
  v2 = *(a1 + 32);

  return [v2 _updateShowAllActions];
}

- (void)traitCollectionDidChange:(id)change
{
  v27[1] = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v26.receiver = self;
  v26.super_class = UIActivityContentViewController;
  [(UIActivityContentViewController *)&v26 traitCollectionDidChange:changeCopy];
  traitCollection = [(UIActivityContentViewController *)self traitCollection];
  layoutSpec = [(UIActivityContentViewController *)self layoutSpec];
  [layoutSpec setTraitCollection:traitCollection];

  preferredContentSizeCategory = [changeCopy preferredContentSizeCategory];
  traitCollection2 = [(UIActivityContentViewController *)self traitCollection];
  preferredContentSizeCategory2 = [traitCollection2 preferredContentSizeCategory];

  if (preferredContentSizeCategory == preferredContentSizeCategory2)
  {
    v18 = 0;
  }

  else
  {
    [(UIActivityContentViewController *)self _updateHeaderSize];
    preferredContentSizeCategory3 = [changeCopy preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory3);
    traitCollection3 = [(UIActivityContentViewController *)self traitCollection];
    preferredContentSizeCategory4 = [traitCollection3 preferredContentSizeCategory];
    v14 = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory4);

    currentSnapshot = [(UIActivityContentViewController *)self currentSnapshot];
    sectionIdentifiers = [currentSnapshot sectionIdentifiers];
    v17 = [sectionIdentifiers containsObject:@"SHSheetContentHeroActionsSectionIdentifier"];

    v18 = 0;
    if (IsAccessibilityCategory != v14 && v17)
    {
      currentSnapshot2 = [(UIActivityContentViewController *)self currentSnapshot];
      v27[0] = @"SHSheetContentHeroActionsSectionIdentifier";
      v18 = 1;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
      [currentSnapshot2 reloadSectionsWithIdentifiers:v20];
    }
  }

  userInterfaceStyle = [changeCopy userInterfaceStyle];
  traitCollection4 = [(UIActivityContentViewController *)self traitCollection];
  userInterfaceStyle2 = [traitCollection4 userInterfaceStyle];

  if (userInterfaceStyle == userInterfaceStyle2)
  {
    if (v18)
    {
      diffableDataSource = [(UIActivityContentViewController *)self diffableDataSource];
      currentSnapshot3 = [(UIActivityContentViewController *)self currentSnapshot];
      [diffableDataSource applySnapshot:currentSnapshot3 animatingDifferences:0];
    }
  }

  else
  {
    [(UIActivityContentViewController *)self reloadContent];
  }
}

- (void)homeScreenService:(id)service homeScreenIconStyleConfigurationDidChange:(id)change
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __95__UIActivityContentViewController_homeScreenService_homeScreenIconStyleConfigurationDidChange___block_invoke;
  v4[3] = &unk_1E71F9510;
  v4[4] = self;
  sh_dispatch_on_main_queue(v4);
}

uint64_t __95__UIActivityContentViewController_homeScreenService_homeScreenIconStyleConfigurationDidChange___block_invoke(uint64_t a1)
{
  v2 = share_sheet_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_18B359000, v2, OS_LOG_TYPE_DEFAULT, "home screen icon style configuration did change", v4, 2u);
  }

  return [*(a1 + 32) reloadContent];
}

- (void)_updateHeaderMetadataValues
{
  v13 = *MEMORY[0x1E69E9840];
  viewModel = [(UIActivityContentViewController *)self viewModel];
  metadataValues = [viewModel metadataValues];

  headerLinkView = [(UIActivityContentViewController *)self headerLinkView];

  if (headerLinkView && [metadataValues count])
  {
    v6 = share_sheet_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = metadataValues;
      _os_log_impl(&dword_18B359000, v6, OS_LOG_TYPE_DEFAULT, "update link view metadata values:%@", &v11, 0xCu);
    }

    headerLinkView2 = [(UIActivityContentViewController *)self headerLinkView];
    [headerLinkView2 _setMultipleMetadata:metadataValues];

    delegate = [(UIActivityContentViewController *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      delegate2 = [(UIActivityContentViewController *)self delegate];
      [delegate2 activityContentViewControllerDidUpdateHeaderMetadata:self];
    }
  }
}

- (void)linkView:(id)view didFetchMetadata:(id)metadata
{
  v12 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  v6 = share_sheet_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = metadataCopy;
    _os_log_impl(&dword_18B359000, v6, OS_LOG_TYPE_DEFAULT, "link view did fetch metadata:%@", &v10, 0xCu);
  }

  delegate = [(UIActivityContentViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(UIActivityContentViewController *)self delegate];
    [delegate2 activityContentViewControllerDidUpdateHeaderMetadata:self];
  }
}

- (id)_createLinkView
{
  viewModel = [(UIActivityContentViewController *)self viewModel];
  metadataValues = [viewModel metadataValues];

  if ([metadataValues count] || (-[UIActivityContentViewController viewModel](self, "viewModel"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isLoadingMetadata"), v5, v6))
  {
    allocSHLPLinkViewInstance();
    v7 = [objc_claimAutoreleasedReturnValue() _initWithMultipleMetadata:metadataValues];
  }

  else
  {
    viewModel2 = [(UIActivityContentViewController *)self viewModel];
    urlRequests = [viewModel2 urlRequests];

    allocSHLPLinkViewInstance();
    v7 = [objc_claimAutoreleasedReturnValue() _initWithMetadataLoadedFromRequests:urlRequests];
  }

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v7 setBackgroundColor:clearColor];

  [v7 setPreservesSuperviewLayoutMargins:1];
  [v7 _setDisableTapGesture:1];
  [v7 _setDisableAnimations:1];
  [v7 setMaskView:0];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setDelegate:self];
  firstObject = [metadataValues firstObject];
  sourceApplication = [firstObject sourceApplication];
  bundleIdentifier = [sourceApplication bundleIdentifier];

  if (bundleIdentifier)
  {
    firstObject2 = [metadataValues firstObject];
    sourceApplication2 = [firstObject2 sourceApplication];
    bundleIdentifier2 = [sourceApplication2 bundleIdentifier];
    [v7 _setSourceBundleIdentifier:bundleIdentifier2];
  }

  else
  {
    hostAuditToken = [(UIActivityContentViewController *)self hostAuditToken];

    if (!hostAuditToken)
    {
      goto LABEL_12;
    }

    v16 = [(UIActivityContentViewController *)self hostAuditToken:0];
    v17 = v16;
    if (v16)
    {
      [v16 realToken];
    }

    firstObject2 = _ShareSheetBundleIDFromAuditToken();
    [v7 _setSourceBundleIdentifier:firstObject2];
  }

LABEL_12:

  return v7;
}

- (BOOL)_shouldShowCloseButton
{
  [(UIActivityContentViewController *)self isPresentedInPopover];
  if (![(UIActivityContentViewController *)self isPresentedInPopover])
  {
    return 1;
  }

  if (!_ShareSheetSolariumEnabled())
  {
    return 0;
  }

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if ([currentDevice userInterfaceIdiom])
  {
    showAllActions = 0;
  }

  else
  {
    showAllActions = [(UIActivityContentViewController *)self showAllActions];
  }

  return showAllActions;
}

- (void)_configureHeaderViewIfNeeded
{
  viewModel = [(UIActivityContentViewController *)self viewModel];
  if (viewModel)
  {
    v40 = viewModel;
    if (![(UIActivityContentViewController *)self configureForCloudSharing])
    {
      headerLinkView = [(UIActivityContentViewController *)self headerLinkView];

      if (headerLinkView)
      {
        return;
      }

      hideHeaderView = [(UIActivityContentViewController *)self hideHeaderView];
      v6 = [_UIActivityContentTitleView alloc];
      v40 = [(_UIActivityContentTitleView *)v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      [(_UIActivityContentTitleView *)v40 setPreservesSuperviewLayoutMargins:1];
      [(_UIActivityContentTitleView *)v40 setTranslatesAutoresizingMaskIntoConstraints:0];
      customViewController = [(UIActivityContentViewController *)self customViewController];
      v10 = customViewController && ([MEMORY[0x1E69DC938] currentDevice], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "userInterfaceIdiom"), v8, (v9 & 0xFFFFFFFFFFFFFFFBLL) != 1) && (_ShareSheetCachedActiveInterfaceOrientation() - 3) < 0xFFFFFFFFFFFFFFFELL;
      [(_UIActivityContentTitleView *)v40 setPhotosCarouselMode:v10];

      viewModel2 = [(UIActivityContentViewController *)self viewModel];
      -[_UIActivityContentTitleView setCustomButtonMode:](v40, "setCustomButtonMode:", [viewModel2 showCustomHeaderButton]);

      [(_UIActivityContentTitleView *)v40 setHasCloseButton:[(UIActivityContentViewController *)self _shouldShowCloseButton]];
      [(_UIActivityContentTitleView *)v40 setIsCloseButtonOnLeadingEdge:[(UIActivityContentViewController *)self isCloseButtonOnLeadingEdge]];
      [(_UIActivityContentTitleView *)v40 setIsPresentedInPopover:[(UIActivityContentViewController *)self isPresentedInPopover]];
      clearColor = [MEMORY[0x1E69DC888] clearColor];
      [(_UIActivityContentTitleView *)v40 setBackgroundColor:clearColor];

      if (!hideHeaderView)
      {
        _createLinkView = [(UIActivityContentViewController *)self _createLinkView];
        [(UIActivityContentViewController *)self setHeaderTitleView:v40];
        headerTitleView = [(UIActivityContentViewController *)self headerTitleView];
        [headerTitleView setAccessibilityIdentifier:@"header.titleView"];

        metadata = [_createLinkView metadata];
        title = [metadata title];
        navigationItem = [(UIActivityContentViewController *)self navigationItem];
        [navigationItem setTitle:title];

        navigationItem2 = [(UIActivityContentViewController *)self navigationItem];
        [navigationItem2 setTitleView:v40];

        [(UIActivityContentViewController *)self setHeaderLinkView:_createLinkView];
        headerLinkView2 = [(UIActivityContentViewController *)self headerLinkView];
        [headerLinkView2 setAccessibilityIdentifier:@"header.linkView"];

        headerTitleView2 = [(UIActivityContentViewController *)self headerTitleView];
        [headerTitleView2 setLinkView:_createLinkView];

        [(UIActivityContentViewController *)self _updateHeaderLinkViewSizeClass];
        [(UIActivityContentViewController *)self _updateHeaderMetadataValues];
      }

      v21 = objc_alloc(MEMORY[0x1E69DC708]);
      presenter = [(UIActivityContentViewController *)self presenter];
      v23 = [v21 initWithBarButtonSystemItem:24 target:presenter action:sel_handleClose];
      [(UIActivityContentViewController *)self setCloseButton:v23];

      if (_ShareSheetSolariumEnabled())
      {
        labelColor = [MEMORY[0x1E69DC888] labelColor];
        closeButton = [(UIActivityContentViewController *)self closeButton];
        [closeButton setTintColor:labelColor];
      }

      closeButton2 = [(UIActivityContentViewController *)self closeButton];
      [closeButton2 setAccessibilityIdentifier:@"header.closeButton"];

      if ([(_UIActivityContentTitleView *)v40 hasCloseButton])
      {
        isCloseButtonOnLeadingEdge = [(UIActivityContentViewController *)self isCloseButtonOnLeadingEdge];
        closeButton3 = [(UIActivityContentViewController *)self closeButton];
        navigationItem3 = [(UIActivityContentViewController *)self navigationItem];
        v30 = navigationItem3;
        if (isCloseButtonOnLeadingEdge)
        {
          [navigationItem3 setLeftBarButtonItem:closeButton3];
        }

        else
        {
          [navigationItem3 setRightBarButtonItem:closeButton3];
        }
      }

      navigationItem4 = [(UIActivityContentViewController *)self navigationItem];
      [navigationItem4 _setManualScrollEdgeAppearanceEnabled:1];

      if (hideHeaderView | ((_ShareSheetSolariumEnabled() & 1) == 0))
      {
        if (hideHeaderView)
        {
          [MEMORY[0x1E69DC888] clearColor];
        }

        else
        {
          [MEMORY[0x1E69DC888] separatorColor];
        }
        v32 = ;
        v33 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
        [v33 configureWithTransparentBackground];
        [v33 setShadowColor:v32];
        navigationItem5 = [(UIActivityContentViewController *)self navigationItem];
        [navigationItem5 setScrollEdgeAppearance:v33];

        if (hideHeaderView)
        {
          navigationItem6 = [(UIActivityContentViewController *)self navigationItem];
          [navigationItem6 setStandardAppearance:v33];
        }

        else
        {
          navigationItem6 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
          [navigationItem6 configureWithDefaultBackground];
          separatorColor = [MEMORY[0x1E69DC888] separatorColor];
          [navigationItem6 setShadowColor:separatorColor];

          navigationItem7 = [(UIActivityContentViewController *)self navigationItem];
          [navigationItem7 setStandardAppearance:navigationItem6];
        }

        navigationItem8 = [(UIActivityContentViewController *)self navigationItem];
        [navigationItem8 _setManualScrollEdgeAppearanceProgress:0.0];
      }

      if ([(UIActivityContentViewController *)self hideNavigationBar]|| [(UIActivityContentViewController *)self hideHeaderView]&& ![(_UIActivityContentTitleView *)v40 hasCloseButton])
      {
        navigationController = [(UIActivityContentViewController *)self navigationController];
        [navigationController setNavigationBarHidden:1];
      }
    }

    viewModel = v40;
  }
}

- (void)_updateHeaderContentInsets
{
  v28 = *MEMORY[0x1E69E9840];
  if (_ShareSheetSolariumEnabled())
  {
    cachedHorizontalLayoutSection = [(UIActivityContentViewController *)self cachedHorizontalLayoutSection];

    if (cachedHorizontalLayoutSection)
    {
      cachedHorizontalLayoutSection2 = [(UIActivityContentViewController *)self cachedHorizontalLayoutSection];
      layoutSection = [cachedHorizontalLayoutSection2 layoutSection];
      [layoutSection contentInsets];
      v7 = v6;

      cachedHorizontalLayoutSection3 = [(UIActivityContentViewController *)self cachedHorizontalLayoutSection];
      [cachedHorizontalLayoutSection3 cellSideInset];
      v10 = v7 + v9;

      navigationController = [(UIActivityContentViewController *)self navigationController];
      navigationBar = [navigationController navigationBar];
      [navigationBar frame];
      v14 = v10 - v13;

      v15 = fmax(v14, 0.0);
      layoutSpec = [(UIActivityContentViewController *)self layoutSpec];
      [layoutSpec peopleSectionTopInset];
      v18 = v17;

      headerTitleView = [(UIActivityContentViewController *)self headerTitleView];
      [headerTitleView setDirectionalLayoutMargins:{v15, v10, v18, v10}];

      v20 = share_sheet_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = objc_opt_class();
        v22 = v21;
        v29.top = v15;
        v29.leading = v10;
        v29.bottom = v18;
        v29.trailing = v10;
        v23 = NSStringFromDirectionalEdgeInsets(v29);
        v24 = 138412546;
        v25 = v21;
        v26 = 2112;
        v27 = v23;
        _os_log_impl(&dword_18B359000, v20, OS_LOG_TYPE_DEFAULT, "%@ _updateHeaderContentInsets: %@", &v24, 0x16u);
      }
    }
  }
}

- (void)_updateDividerIfNeeded
{
  dividerLineView = [(UIActivityContentViewController *)self dividerLineView];

  if (dividerLineView)
  {
    navigationController = [(UIActivityContentViewController *)self navigationController];
    navigationBar = [navigationController navigationBar];
    [navigationBar frame];
    v7 = v6;
    navigationController2 = [(UIActivityContentViewController *)self navigationController];
    navigationBar2 = [navigationController2 navigationBar];
    [navigationBar2 frame];
    v11 = v7 + v10;

    cachedHorizontalLayoutSection = [(UIActivityContentViewController *)self cachedHorizontalLayoutSection];
    layoutSection = [cachedHorizontalLayoutSection layoutSection];
    [layoutSection contentInsets];
    v15 = v14;

    cachedHorizontalLayoutSection2 = [(UIActivityContentViewController *)self cachedHorizontalLayoutSection];
    [cachedHorizontalLayoutSection2 cellSideInset];
    v18 = v15 + v17;

    view = [(UIActivityContentViewController *)self view];
    [view bounds];
    v21 = v20 + v18 * -2.0;
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v24 = round(v21 * v23);
    mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen2 scale];
    v27 = v24 / v26;

    dividerLineView2 = [(UIActivityContentViewController *)self dividerLineView];
    [dividerLineView2 setFrame:{v18, v11, v27, 1.0}];
  }
}

- (void)linkViewNeedsResize:(id)resize
{
  headerTitleView = [(UIActivityContentViewController *)self headerTitleView];
  [headerTitleView setNeedsUpdateConstraints];

  headerTitleView2 = [(UIActivityContentViewController *)self headerTitleView];
  [headerTitleView2 setNeedsLayout];

  activityCollectionView = [(UIActivityContentViewController *)self activityCollectionView];
  [activityCollectionView setNeedsUpdateConstraints];
}

- (void)_updateBlurBackgroundIfNeeded
{
  backgroundView = [(UIActivityContentViewController *)self backgroundView];

  if (backgroundView)
  {
    hostSLMEnabled = [(UIActivityContentViewController *)self hostSLMEnabled];
    if (hostSLMEnabled && (v5 = hostSLMEnabled, -[UIActivityContentViewController hostSLMEnabled](self, "hostSLMEnabled"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 BOOLValue], v6, v5, !v7))
    {
      v8 = 0;
    }

    else
    {
      v8 = _ShareSheetSolariumEnabled();
    }

    backgroundView2 = [(UIActivityContentViewController *)self backgroundView];
    [backgroundView2 setHidden:v8];
  }
}

- (void)_configureCollectionViewIfNeeded
{
  activityCollectionView = [(UIActivityContentViewController *)self activityCollectionView];
  if (activityCollectionView)
  {

    return;
  }

  if (([(UIActivityContentViewController *)self isViewLoaded]& 1) == 0)
  {
    return;
  }

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  view = [(UIActivityContentViewController *)self view];
  [view setBackgroundColor:clearColor];

  traitCollection = [(UIActivityContentViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom <= 1 && ![(UIActivityContentViewController *)self configureForCloudSharing])
  {
    v8 = [MEMORY[0x1E69DC730] effectWithStyle:9];
    v9 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v8];
    [(UIActivityContentViewController *)self setBackgroundView:v9];
    backgroundView = [(UIActivityContentViewController *)self backgroundView];
    [backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];

    view2 = [(UIActivityContentViewController *)self view];
    backgroundView2 = [(UIActivityContentViewController *)self backgroundView];
    [view2 addSubview:backgroundView2];
  }

  [(UIActivityContentViewController *)self _updateBlurBackgroundIfNeeded];
  v13 = [_UIActivityContentCollectionView alloc];
  view3 = [(UIActivityContentViewController *)self view];
  [view3 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  activityCollectionViewLayout = [(UIActivityContentViewController *)self activityCollectionViewLayout];
  v24 = [(_UIActivityContentCollectionView *)v13 initWithFrame:activityCollectionViewLayout collectionViewLayout:v16, v18, v20, v22];

  [(UIActivityContentViewController *)self setActivityCollectionView:v24];
  [(_UIActivityContentCollectionView *)v24 setDelegate:self];
  [(_UIActivityContentCollectionView *)v24 setPrefetchDataSource:self];
  [(_UIActivityContentCollectionView *)v24 setDelaysContentTouches:0];
  [(_UIActivityContentCollectionView *)v24 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(_UIActivityContentCollectionView *)v24 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"UIActivityContentCustomViewCellIdentifier"];
  [(_UIActivityContentCollectionView *)v24 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"UIActivityContentShareCellIdentifier"];
  [(_UIActivityContentCollectionView *)v24 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"UIActivityContentMagicHeadCellIdentifier"];
  [(_UIActivityContentCollectionView *)v24 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"UIActivityContentAirDropCellIdentifier"];
  [(_UIActivityContentCollectionView *)v24 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"UIActivityContentHeroActionCellIdentifier"];
  [(_UIActivityContentCollectionView *)v24 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"UIActivityContentActionCellIdentifier"];
  if (_ShareSheetSolariumEnabled())
  {
    [(_UIActivityContentCollectionView *)v24 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"UIActivityContentTopActionCellIdentifier"];
  }

  [(_UIActivityContentCollectionView *)v24 registerClass:objc_opt_class() forSupplementaryViewOfKind:@"UIActivityContentHeaderSectionKind" withReuseIdentifier:@"UIActivityContentHeaderViewIdentifier"];
  [(_UIActivityContentCollectionView *)v24 registerClass:objc_opt_class() forSupplementaryViewOfKind:@"UIActivityContentFooterSectionKind" withReuseIdentifier:@"UIActivityContentEditViewIdentifier"];
  [(_UIActivityContentCollectionView *)v24 registerClass:objc_opt_class() forSupplementaryViewOfKind:@"UIActivityContentFooterSectionKind" withReuseIdentifier:@"UIActivityContentFooterViewIdentifier"];
  [(_UIActivityContentCollectionView *)v24 registerClass:objc_opt_class() forSupplementaryViewOfKind:@"UIActivityContentFooterSectionKind" withReuseIdentifier:@"UIActivityContentInformationalActionFooterViewIdentifier"];
  [(_UIActivityContentCollectionView *)v24 setBackgroundColor:0];
  [(_UIActivityContentCollectionView *)v24 _setAdjustsContentInsetWhenScrollDisabled:1];
  [(_UIActivityContentCollectionView *)v24 setAlwaysBounceVertical:1];
  [(_UIActivityContentCollectionView *)v24 setShowsVerticalScrollIndicator:0];
  [(_UIActivityContentCollectionView *)v24 setShowsHorizontalScrollIndicator:0];
  [(_UIActivityContentCollectionView *)v24 setContentInsetAdjustmentBehavior:1];
  [(_UIActivityContentCollectionView *)v24 _setVisibleRectEdgeInsets:0.0, 0.0, -400.0, 0.0];
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    [(_UIActivityContentCollectionView *)v24 setContentInset:72.0, 0.0, 0.0, 0.0];
  }

  [(_UIActivityContentCollectionView *)v24 setAccessibilityIdentifier:@"activityCollectionView"];
  view4 = [(UIActivityContentViewController *)self view];
  [view4 addSubview:v24];

  objc_initWeak(&location, self);
  v26 = objc_alloc(MEMORY[0x1E69DC820]);
  activityCollectionView2 = [(UIActivityContentViewController *)self activityCollectionView];
  v75[0] = MEMORY[0x1E69E9820];
  v75[1] = 3221225472;
  v75[2] = __67__UIActivityContentViewController__configureCollectionViewIfNeeded__block_invoke;
  v75[3] = &unk_1E71F9EE0;
  objc_copyWeak(&v76, &location);
  v28 = [v26 initWithCollectionView:activityCollectionView2 cellProvider:v75];
  [(UIActivityContentViewController *)self setDiffableDataSource:v28];

  v73[0] = MEMORY[0x1E69E9820];
  v73[1] = 3221225472;
  v73[2] = __67__UIActivityContentViewController__configureCollectionViewIfNeeded__block_invoke_2;
  v73[3] = &unk_1E71F9F08;
  objc_copyWeak(&v74, &location);
  diffableDataSource = [(UIActivityContentViewController *)self diffableDataSource];
  [diffableDataSource setSupplementaryViewProvider:v73];

  if (_ShareSheetSolariumEnabled())
  {
    customViewController = [(UIActivityContentViewController *)self customViewController];
    if (customViewController)
    {
LABEL_17:

      goto LABEL_18;
    }

    if (![(UIActivityContentViewController *)self hideHeaderView])
    {
      v31 = [SHSheetDividerLineView alloc];
      view5 = [(UIActivityContentViewController *)self view];
      [view5 bounds];
      v33 = [(SHSheetDividerLineView *)v31 initWithFrame:0.0, 0.0];
      [(UIActivityContentViewController *)self setDividerLineView:v33];

      customViewController = [(UIActivityContentViewController *)self view];
      dividerLineView = [(UIActivityContentViewController *)self dividerLineView];
      [customViewController addSubview:dividerLineView];

      goto LABEL_17;
    }
  }

LABEL_18:
  [(_UIActivityContentCollectionView *)v24 addObserver:self forKeyPath:@"contentSize" options:1 context:0];
  v35 = objc_opt_new();
  backgroundView3 = [(UIActivityContentViewController *)self backgroundView];

  if (backgroundView3)
  {
    backgroundView4 = [(UIActivityContentViewController *)self backgroundView];
    leadingAnchor = [backgroundView4 leadingAnchor];
    view6 = [(UIActivityContentViewController *)self view];
    leadingAnchor2 = [view6 leadingAnchor];
    v41 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v35 addObject:v41];

    backgroundView5 = [(UIActivityContentViewController *)self backgroundView];
    trailingAnchor = [backgroundView5 trailingAnchor];
    view7 = [(UIActivityContentViewController *)self view];
    trailingAnchor2 = [view7 trailingAnchor];
    v46 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v35 addObject:v46];

    backgroundView6 = [(UIActivityContentViewController *)self backgroundView];
    topAnchor = [backgroundView6 topAnchor];
    view8 = [(UIActivityContentViewController *)self view];
    topAnchor2 = [view8 topAnchor];
    v51 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v35 addObject:v51];

    backgroundView7 = [(UIActivityContentViewController *)self backgroundView];
    bottomAnchor = [backgroundView7 bottomAnchor];
    view9 = [(UIActivityContentViewController *)self view];
    bottomAnchor2 = [view9 bottomAnchor];
    v56 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v35 addObject:v56];
  }

  leadingAnchor3 = [(_UIActivityContentCollectionView *)v24 leadingAnchor];
  view10 = [(UIActivityContentViewController *)self view];
  leadingAnchor4 = [view10 leadingAnchor];
  v60 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v35 addObject:v60];

  trailingAnchor3 = [(_UIActivityContentCollectionView *)v24 trailingAnchor];
  view11 = [(UIActivityContentViewController *)self view];
  trailingAnchor4 = [view11 trailingAnchor];
  v64 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v35 addObject:v64];

  topAnchor3 = [(_UIActivityContentCollectionView *)v24 topAnchor];
  view12 = [(UIActivityContentViewController *)self view];
  topAnchor4 = [view12 topAnchor];
  v68 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  [v35 addObject:v68];

  bottomAnchor3 = [(_UIActivityContentCollectionView *)v24 bottomAnchor];
  view13 = [(UIActivityContentViewController *)self view];
  bottomAnchor4 = [view13 bottomAnchor];
  v72 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  [v35 addObject:v72];

  [MEMORY[0x1E696ACD8] activateConstraints:v35];
  objc_destroyWeak(&v74);
  objc_destroyWeak(&v76);
  objc_destroyWeak(&location);
}

id __67__UIActivityContentViewController__configureCollectionViewIfNeeded__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [WeakRetained _provideCellForCollectionView:v9 indexPath:v8 itemIdentifier:v7];

  return v11;
}

id __67__UIActivityContentViewController__configureCollectionViewIfNeeded__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [WeakRetained _provideSupplementaryViewForCollectionView:v9 kind:v8 indexPath:v7];

  return v11;
}

- (void)_configureMagicHeadCell:(id)cell withProxy:(id)proxy
{
  v15 = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  identifier = [proxy identifier];
  [(UIActivityContentViewController *)self _configurePeopleCell:cellCopy itemIdentifier:identifier];

  v8 = share_sheet_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    displayName = [cellCopy displayName];
    subtitle = [cellCopy subtitle];
    v11 = 138412546;
    v12 = displayName;
    v13 = 2112;
    v14 = subtitle;
    _os_log_impl(&dword_18B359000, v8, OS_LOG_TYPE_DEFAULT, "_configureMagicHeadCell: displayName:%@ subtitle:%@", &v11, 0x16u);
  }
}

- (void)_configureAirDropCell:(id)cell withChange:(id)change
{
  v24 = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  changeCopy = change;
  displayName = [changeCopy displayName];
  status = [changeCopy status];
  v9 = share_sheet_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = changeCopy;
    _os_log_impl(&dword_18B359000, v9, OS_LOG_TYPE_DEFAULT, "configure AirDrop cell with change:%@", &v20, 0xCu);
  }

  if (displayName | status)
  {
    state = [changeCopy state];
    [changeCopy progress];
    [cellCopy setProgress:state != 5 animated:v11 / 100.0];
    slotIdentifier = [displayName slotIdentifier];
    slotIdentifier2 = [status slotIdentifier];
    text = [displayName text];
    [cellCopy setDisplayName:text];

    [cellCopy setTextSlotID:slotIdentifier];
    text2 = [status text];
    [cellCopy setSubtitle:text2];

    [cellCopy setSubtitleSlotID:slotIdentifier2];
    if ((state - 5) > 1)
    {
      if (state == 4)
      {
        systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
        [cellCopy setSubtitleTextColor:systemBlueColor];
        goto LABEL_13;
      }

      systemBlueColor = 0;
    }

    else
    {
      systemBlueColor = [MEMORY[0x1E69DC888] systemRedColor];
    }

    [cellCopy setSubtitleTextColor:systemBlueColor];
    if ((state - 1) <= 1)
    {
      [cellCopy startPulsing];
LABEL_14:
      v17 = share_sheet_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        displayName2 = [cellCopy displayName];
        subtitle = [cellCopy subtitle];
        v20 = 138412546;
        v21 = displayName2;
        v22 = 2112;
        v23 = subtitle;
        _os_log_impl(&dword_18B359000, v17, OS_LOG_TYPE_DEFAULT, "did update airdrop cell with displayName:%@ subtitle:%@", &v20, 0x16u);
      }

      goto LABEL_17;
    }

LABEL_13:
    [cellCopy stopPulsing];
    goto LABEL_14;
  }

  [cellCopy stopPulsing];
  systemBlueColor = share_sheet_log();
  if (os_log_type_enabled(systemBlueColor, OS_LOG_TYPE_FAULT))
  {
    [UIActivityContentViewController _configureAirDropCell:withChange:];
  }

LABEL_17:
}

- (void)_configurePeopleCell:(id)cell itemIdentifier:(id)identifier
{
  v48 = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  identifierCopy = identifier;
  [cellCopy setStateBeingRestored:1];
  dataSourceManager = [(UIActivityContentViewController *)self dataSourceManager];
  dataSource = [dataSourceManager dataSource];

  airDropProxy = [dataSource peopleProxyForIdentifier:identifierCopy];
  if (!airDropProxy)
  {
    airDropProxy = [dataSource airDropProxy];
  }

  v11 = share_sheet_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v47 = airDropProxy;
    _os_log_impl(&dword_18B359000, v11, OS_LOG_TYPE_DEFAULT, "configure people cell for proxy:%@", buf, 0xCu);
  }

  identifier = [airDropProxy identifier];
  [cellCopy setNode:airDropProxy];
  activeAirDropTransferChange = [(UIActivityContentViewController *)self activeAirDropTransferChange];
  proxyIdentifier = [activeAirDropTransferChange proxyIdentifier];
  v15 = [identifier isEqual:proxyIdentifier];

  if (v15)
  {
    [(UIActivityContentViewController *)self _configureAirDropCell:cellCopy withChange:activeAirDropTransferChange];
  }

  else
  {
    isPlaceholder = [airDropProxy isPlaceholder];
    [cellCopy setIdentifier:identifier];
    [cellCopy setImageSlotID:{objc_msgSend(airDropProxy, "avatarImageSlotID")}];
    [cellCopy setTransportSlotID:{objc_msgSend(airDropProxy, "transportImageSlotID")}];
    displayName = [airDropProxy displayName];
    [cellCopy setTextSlotID:{objc_msgSend(displayName, "slotIdentifier")}];

    subtitle = [airDropProxy subtitle];
    [cellCopy setSubtitleSlotID:{objc_msgSend(subtitle, "slotIdentifier")}];

    displayName2 = [airDropProxy displayName];
    text = [displayName2 text];
    [cellCopy setDisplayName:text];

    subtitle2 = [airDropProxy subtitle];
    text2 = [subtitle2 text];
    [cellCopy setSubtitle:text2];

    [cellCopy setDisabled:{objc_msgSend(airDropProxy, "isDisabled")}];
    peopleSuggestion = [airDropProxy peopleSuggestion];
    transportBundleIdentifier = [peopleSuggestion transportBundleIdentifier];
    if ([transportBundleIdentifier isEqualToString:@"com.apple.UIKit.activity.AirDrop"])
    {
      v25 = @"airDropCell";
    }

    else
    {
      v25 = @"peopleCell";
    }

    [cellCopy setAccessibilityIdentifier:v25];

    [cellCopy setLongPressable:1];
    peopleSuggestion2 = [airDropProxy peopleSuggestion];
    [cellCopy setIsGroup:{objc_msgSend(peopleSuggestion2, "isGroup")}];
    if (!peopleSuggestion2 || (isPlaceholder & 1) != 0)
    {
      [cellCopy setImage:0];
      [cellCopy setTransportImage:0];
    }

    else
    {
      v39 = [MEMORY[0x1E695DFA8] set];
      if ([peopleSuggestion2 isTapToRadar])
      {
        v27 = MEMORY[0x1E69DCAB8];
        v28 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v29 = [v27 imageNamed:@"FramedBugIcon" inBundle:v28];

        [cellCopy setImage:v29];
      }

      else
      {
        peopleSuggestionImageProvider = [(UIActivityContentViewController *)self peopleSuggestionImageProvider];
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = __71__UIActivityContentViewController__configurePeopleCell_itemIdentifier___block_invoke;
        v43[3] = &unk_1E71F9430;
        v38 = cellCopy;
        v44 = v38;
        v37 = identifier;
        v45 = v37;
        v31 = [peopleSuggestionImageProvider requestAvatarImageForPeopleSuggestion:peopleSuggestion2 resultHandler:v43];

        if (v31)
        {
          v32 = [MEMORY[0x1E696AD98] numberWithInt:v31];
          [v39 addObject:v32];
        }

        peopleSuggestionImageProvider2 = [(UIActivityContentViewController *)self peopleSuggestionImageProvider];
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __71__UIActivityContentViewController__configurePeopleCell_itemIdentifier___block_invoke_2;
        v40[3] = &unk_1E71F9430;
        v41 = v38;
        v42 = v37;
        v34 = [peopleSuggestionImageProvider2 requestTransportImageForPeopleSuggestion:peopleSuggestion2 resultHandler:v40];

        if (v34)
        {
          v35 = [MEMORY[0x1E696AD98] numberWithInt:v34];
          [v39 addObject:v35];
        }

        v29 = v44;
      }

      identifiersToPeopleSuggestionImageRequestIDs = [(UIActivityContentViewController *)self identifiersToPeopleSuggestionImageRequestIDs];
      [identifiersToPeopleSuggestionImageRequestIDs setObject:v39 forKeyedSubscript:identifierCopy];
    }
  }

  [cellCopy setStateBeingRestored:0];
}

void __71__UIActivityContentViewController__configurePeopleCell_itemIdentifier___block_invoke(uint64_t a1, void *a2, char a3, void *a4)
{
  v10 = a2;
  v7 = a4;
  if (v10)
  {
    if ((a3 & 1) == 0)
    {
      v8 = [*(a1 + 32) identifier];
      v9 = [v8 isEqual:*(a1 + 40)];

      if (v9)
      {
        [*(a1 + 32) setImage:v10];
      }
    }
  }
}

void __71__UIActivityContentViewController__configurePeopleCell_itemIdentifier___block_invoke_2(uint64_t a1, void *a2, char a3, void *a4)
{
  v10 = a2;
  v7 = a4;
  if (v10)
  {
    if ((a3 & 1) == 0)
    {
      v8 = [*(a1 + 32) identifier];
      v9 = [v8 isEqual:*(a1 + 40)];

      if (v9)
      {
        [*(a1 + 32) setTransportImage:v10];
      }
    }
  }
}

- (void)_configureSharingAppCell:(id)cell itemIdentifier:(id)identifier
{
  v63 = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  identifierCopy = identifier;
  dataSourceManager = [(UIActivityContentViewController *)self dataSourceManager];
  dataSource = [dataSourceManager dataSource];

  v10 = [dataSource activityForIdentifier:identifierCopy];
  v48 = dataSource;
  v11 = [dataSource shareProxyForIdentifier:identifierCopy];
  v12 = share_sheet_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v60 = v10;
    v61 = 2112;
    v62 = v11;
    _os_log_impl(&dword_18B359000, v12, OS_LOG_TYPE_DEFAULT, "configure sharing cell for activity:%@ proxy:%@", buf, 0x16u);
  }

  activityType = [v10 activityType];

  activityTitle = [v11 activityTitle];
  text = [activityTitle text];

  v49 = v10;
  if (v10 && !text)
  {
    presenter = [(UIActivityContentViewController *)self presenter];
    activityType2 = [v10 activityType];
    v18 = [presenter customTitleForActivityType:activityType2];
    v19 = v18;
    if (v18)
    {
      activityTitle2 = v18;
    }

    else
    {
      activityTitle2 = [v10 activityTitle];
    }

    v21 = activityTitle2;

    text = v21;
  }

  if ([v11 isUserDefaultsActivity])
  {
    v22 = 0;
  }

  else
  {
    v22 = [v11 isDisabled] ^ 1;
  }

  [cellCopy setIdentifier:identifierCopy];
  [cellCopy setActivityProxy:v11];
  [cellCopy setTitle:text];
  [cellCopy setImageSlotID:{objc_msgSend(v11, "iconImageSlotID")}];
  activityTitle3 = [v11 activityTitle];
  [cellCopy setTitleSlotID:{objc_msgSend(activityTitle3, "slotIdentifier")}];

  if (activityType == @"com.apple.UIKit.activity.AirDrop")
  {
    nearbyCountSlotID = [v48 nearbyCountSlotID];
  }

  else
  {
    nearbyCountSlotID = 0;
  }

  v47 = text;
  [cellCopy setBadgeSlotID:nearbyCountSlotID];
  [cellCopy setLongPressable:v22];
  [cellCopy setDisabled:{objc_msgSend(v11, "isDisabled")}];
  [cellCopy setAccessibilityIdentifier:@"shareCell"];
  layoutSpec = [(UIActivityContentViewController *)self layoutSpec];
  traitCollection = [layoutSpec traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  layoutSpec2 = [(UIActivityContentViewController *)self layoutSpec];
  traitCollection2 = [layoutSpec2 traitCollection];
  userInterfaceStyle = [traitCollection2 userInterfaceStyle];

  applicationBundleIdentifier = [v11 applicationBundleIdentifier];
  _activityImageUTI = [v49 _activityImageUTI];
  v33 = _activityImageUTI;
  if (_activityImageUTI)
  {
    activityImageUTI = _activityImageUTI;
  }

  else
  {
    activityImageUTI = [v11 activityImageUTI];
  }

  v35 = activityImageUTI;

  if ([v11 iconImageSlotID])
  {
    [cellCopy setImage:0];
    v36 = 0;
    goto LABEL_27;
  }

  if (v35)
  {
    activityImageProvider = [(UIActivityContentViewController *)self activityImageProvider];
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __75__UIActivityContentViewController__configureSharingAppCell_itemIdentifier___block_invoke;
    v56[3] = &unk_1E71F9430;
    v57 = cellCopy;
    v58 = identifierCopy;
    v36 = [activityImageProvider requestImageForUTI:v35 activityCategory:1 contentSizeCategory:preferredContentSizeCategory userInterfaceStyle:userInterfaceStyle iconFormat:10 synchronous:0 resultHandler:v56];

    v38 = v57;
LABEL_26:

    goto LABEL_27;
  }

  if (applicationBundleIdentifier)
  {
    activityImageProvider2 = [(UIActivityContentViewController *)self activityImageProvider];
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __75__UIActivityContentViewController__configureSharingAppCell_itemIdentifier___block_invoke_2;
    v53[3] = &unk_1E71F9430;
    v54 = cellCopy;
    v55 = identifierCopy;
    v36 = [activityImageProvider2 requestImageForBundleIdentifier:applicationBundleIdentifier activityCategory:1 contentSizeCategory:preferredContentSizeCategory userInterfaceStyle:userInterfaceStyle iconFormat:10 synchronous:0 resultHandler:v53];

    v38 = v54;
    goto LABEL_26;
  }

  if (v49)
  {
    activityImageProvider3 = [(UIActivityContentViewController *)self activityImageProvider];
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __75__UIActivityContentViewController__configureSharingAppCell_itemIdentifier___block_invoke_3;
    v50[3] = &unk_1E71F9430;
    v51 = cellCopy;
    v52 = identifierCopy;
    v36 = [activityImageProvider3 requestImageForActivity:v49 contentSizeCategory:preferredContentSizeCategory userInterfaceStyle:userInterfaceStyle imageSymbolConfiguration:0 synchronous:0 resultHandler:v50];

    v38 = v51;
    goto LABEL_26;
  }

  [cellCopy setImage:0];
  v46 = share_sheet_log();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
  {
    [UIActivityContentViewController _configureSharingAppCell:itemIdentifier:];
  }

  v36 = 0;
LABEL_27:
  pulsingActivityIdentifier = [(UIActivityContentViewController *)self pulsingActivityIdentifier];
  v42 = [pulsingActivityIdentifier isEqual:identifierCopy];

  if (v42)
  {
    pulsingLocalizedTitle = [(UIActivityContentViewController *)self pulsingLocalizedTitle];
    [cellCopy setTitle:pulsingLocalizedTitle];

    [cellCopy startPulsing];
  }

  if (v36)
  {
    v44 = [MEMORY[0x1E696AD98] numberWithInt:v36];
    identifiersToActivityImageRequestID = [(UIActivityContentViewController *)self identifiersToActivityImageRequestID];
    [identifiersToActivityImageRequestID setObject:v44 forKeyedSubscript:identifierCopy];
  }
}

void __75__UIActivityContentViewController__configureSharingAppCell_itemIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) identifier];
  v4 = [v3 isEqual:*(a1 + 40)];

  if (v4)
  {
    [*(a1 + 32) setImage:v5];
  }
}

void __75__UIActivityContentViewController__configureSharingAppCell_itemIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) identifier];
  v4 = [v3 isEqual:*(a1 + 40)];

  if (v4)
  {
    [*(a1 + 32) setImage:v5];
  }
}

void __75__UIActivityContentViewController__configureSharingAppCell_itemIdentifier___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) identifier];
  v4 = [v3 isEqual:*(a1 + 40)];

  if (v4)
  {
    [*(a1 + 32) setImage:v5];
  }
}

- (void)_configureHeroActionCell:(id)cell itemIdentifier:(id)identifier
{
  v24 = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  identifierCopy = identifier;
  dataSourceManager = [(UIActivityContentViewController *)self dataSourceManager];
  dataSource = [dataSourceManager dataSource];

  v10 = [dataSource activityForIdentifier:identifierCopy];

  [cellCopy setDisabled:{objc_msgSend(v10, "_isDisabled")}];
  v11 = [(UIActivityContentViewController *)self _activityTitleForActivity:v10];
  titleLabel = [cellCopy titleLabel];
  [titleLabel setText:v11];

  [cellCopy setAccessibilityIdentifier:@"heroActionCell"];
  v13 = share_sheet_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412290;
    v23 = v10;
    _os_log_impl(&dword_18B359000, v13, OS_LOG_TYPE_DEFAULT, "configure hero action cell for activity:%@", &v22, 0xCu);
  }

  _systemImageName = [v10 _systemImageName];

  if (_systemImageName)
  {
    v15 = MEMORY[0x1E69DCAB8];
    _systemImageName2 = [v10 _systemImageName];
    v17 = [v15 _systemImageNamed:_systemImageName2];
    layoutSpec = [(UIActivityContentViewController *)self layoutSpec];
    activityImageSymbolConfiguration = [layoutSpec activityImageSymbolConfiguration];
    v20 = [v17 imageByApplyingSymbolConfiguration:activityImageSymbolConfiguration];
  }

  else
  {
    _systemImageName2 = [v10 _actionImage];
    v20 = [_systemImageName2 imageWithRenderingMode:2];
  }

  activityImageView = [cellCopy activityImageView];
  [activityImageView setImage:v20];
}

- (void)_configureHorizontalActionCell:(id)cell itemIdentifier:(id)identifier
{
  v78 = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  identifierCopy = identifier;
  dataSourceManager = [(UIActivityContentViewController *)self dataSourceManager];
  dataSource = [dataSourceManager dataSource];

  v10 = [dataSource activityForIdentifier:identifierCopy];
  v59 = dataSource;
  v11 = [dataSource actionProxyForIdentifier:identifierCopy];
  v12 = share_sheet_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v75 = v10;
    v76 = 2112;
    v77 = v11;
    _os_log_impl(&dword_18B359000, v12, OS_LOG_TYPE_DEFAULT, "configure action cell for activity:%@ proxy:%@", buf, 0x16u);
  }

  v61 = v11;

  _activityStyle = [objc_opt_class() _activityStyle];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v15 = MEMORY[0x1E69DD1B8];
  traitCollection = [(UIActivityContentViewController *)self traitCollection];
  v17 = [v15 traitCollectionWithUserInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];
  v18 = [labelColor resolvedColorWithTraitCollection:v17];

  v58 = v18;
  if (_activityStyle == 1)
  {
    systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
  }

  else
  {
    systemRedColor = v18;
  }

  v63 = systemRedColor;
  v20 = v11;
  [cellCopy setIdentifier:identifierCopy];
  [cellCopy setActivityProxy:v11];
  [cellCopy setAccessibilityIdentifier:@"actionGroupCell"];
  activityTitle = [v11 activityTitle];
  text = [activityTitle text];

  if (v10 && !text)
  {
    heroActionActivityTypes = [(UIActivityContentViewController *)self heroActionActivityTypes];
    activityType = [v10 activityType];
    v25 = [heroActionActivityTypes containsObject:activityType];

    if (v25)
    {
      text = [(UIActivityContentViewController *)self _activityTitleForActivity:v10];
      v26 = share_sheet_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v75 = text;
        _os_log_impl(&dword_18B359000, v26, OS_LOG_TYPE_DEFAULT, "hero action title:%@", buf, 0xCu);
      }
    }

    else
    {
      presenter = [(UIActivityContentViewController *)self presenter];
      activityType2 = [v10 activityType];
      v26 = [presenter customTitleForActivityType:activityType2];

      if (v26)
      {
        v26 = v26;
        v29 = share_sheet_log();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v75 = v26;
          _os_log_impl(&dword_18B359000, v29, OS_LOG_TYPE_DEFAULT, "custom action title:%@", buf, 0xCu);
        }

        text = v26;
      }

      else
      {
        text = [v10 activityTitle];
      }
    }
  }

  [cellCopy setTitle:text];
  layoutSpec = [(UIActivityContentViewController *)self layoutSpec];
  traitCollection2 = [layoutSpec traitCollection];
  [traitCollection2 preferredContentSizeCategory];
  v33 = v32 = cellCopy;

  layoutSpec2 = [(UIActivityContentViewController *)self layoutSpec];
  traitCollection3 = [layoutSpec2 traitCollection];
  userInterfaceStyle = [traitCollection3 userInterfaceStyle];

  applicationBundleIdentifier = [v61 applicationBundleIdentifier];
  v64 = v10;
  _activityImageUTI = [v10 _activityImageUTI];
  v56 = _activityImageUTI;
  v57 = text;
  v60 = v33;
  v54 = applicationBundleIdentifier;
  selfCopy = self;
  if (_activityImageUTI)
  {
    v39 = _activityImageUTI;
    activityImageProvider = [(UIActivityContentViewController *)self activityImageProvider];
    v71[0] = MEMORY[0x1E69E9820];
    v71[1] = 3221225472;
    v71[2] = __81__UIActivityContentViewController__configureHorizontalActionCell_itemIdentifier___block_invoke;
    v71[3] = &unk_1E71F9430;
    v41 = &v72;
    v72 = v32;
    v42 = &v73;
    v43 = identifierCopy;
    v73 = identifierCopy;
    v20 = v61;
    v44 = [activityImageProvider requestImageForUTI:v39 activityCategory:0 contentSizeCategory:v33 userInterfaceStyle:userInterfaceStyle iconFormat:10 synchronous:0 resultHandler:v71];
    v10 = v64;
    v45 = v32;
  }

  else if (applicationBundleIdentifier)
  {
    activityImageProvider = [(UIActivityContentViewController *)self activityImageProvider];
    v68[0] = MEMORY[0x1E69E9820];
    v68[1] = 3221225472;
    v68[2] = __81__UIActivityContentViewController__configureHorizontalActionCell_itemIdentifier___block_invoke_2;
    v68[3] = &unk_1E71F9430;
    v46 = applicationBundleIdentifier;
    v41 = &v69;
    v45 = v32;
    v69 = v32;
    v42 = &v70;
    v43 = identifierCopy;
    v70 = identifierCopy;
    v20 = v61;
    v44 = [activityImageProvider requestImageForBundleIdentifier:v46 activityCategory:0 contentSizeCategory:v60 userInterfaceStyle:userInterfaceStyle iconFormat:10 synchronous:0 resultHandler:v68];
    v10 = v64;
  }

  else
  {
    if (!v10)
    {
      v45 = v32;
      [v32 setImage:0];
      goto LABEL_25;
    }

    activityImageProvider = [(UIActivityContentViewController *)self activityImageProvider];
    layoutSpec3 = [(UIActivityContentViewController *)self layoutSpec];
    horizontalActivityImageSymbolConfiguration = [layoutSpec3 horizontalActivityImageSymbolConfiguration];
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __81__UIActivityContentViewController__configureHorizontalActionCell_itemIdentifier___block_invoke_3;
    v65[3] = &unk_1E71F9430;
    v41 = &v66;
    v45 = v32;
    v66 = v32;
    v42 = &v67;
    v43 = identifierCopy;
    v67 = identifierCopy;
    v44 = [activityImageProvider requestImageForActivity:v10 contentSizeCategory:v60 userInterfaceStyle:userInterfaceStyle imageSymbolConfiguration:horizontalActivityImageSymbolConfiguration synchronous:0 resultHandler:v65];
  }

  identifierCopy = v43;
  applicationBundleIdentifier = v54;
  if (v44)
  {
    v47 = [MEMORY[0x1E696AD98] numberWithInt:v44];
    identifiersToActivityImageRequestID = [(UIActivityContentViewController *)selfCopy identifiersToActivityImageRequestID];
    [identifiersToActivityImageRequestID setObject:v47 forKeyedSubscript:v43];
  }

LABEL_25:
  [v45 setContentTintColor:v63];
  if ([v10 _isDisabled])
  {
    isDisabled = 1;
  }

  else
  {
    isDisabled = [v20 isDisabled];
  }

  [v45 setDisabled:isDisabled];
  [v45 setImageSlotID:{objc_msgSend(v20, "iconImageSlotID")}];
  activityTitle2 = [v20 activityTitle];
  [v45 setTitleSlotID:{objc_msgSend(activityTitle2, "slotIdentifier")}];

  v51 = share_sheet_log();
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
  {
    _activitySubtitle = [v64 _activitySubtitle];
    *buf = 138412290;
    v75 = _activitySubtitle;
    _os_log_impl(&dword_18B359000, v51, OS_LOG_TYPE_DEFAULT, "horizontal cell _activitySubtitle:%@", buf, 0xCu);
  }
}

void __81__UIActivityContentViewController__configureHorizontalActionCell_itemIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) identifier];
  v4 = [v3 isEqual:*(a1 + 40)];

  if (v4)
  {
    [*(a1 + 32) setImage:v5];
  }
}

void __81__UIActivityContentViewController__configureHorizontalActionCell_itemIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) identifier];
  v4 = [v3 isEqual:*(a1 + 40)];

  if (v4)
  {
    [*(a1 + 32) setImage:v5];
  }
}

void __81__UIActivityContentViewController__configureHorizontalActionCell_itemIdentifier___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) identifier];
  v4 = [v3 isEqual:*(a1 + 40)];

  if (v4)
  {
    [*(a1 + 32) setImage:v5];
  }
}

- (void)_configureActionCell:(id)cell itemIdentifier:(id)identifier
{
  v83 = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  identifierCopy = identifier;
  dataSourceManager = [(UIActivityContentViewController *)self dataSourceManager];
  dataSource = [dataSourceManager dataSource];

  v10 = [dataSource activityForIdentifier:identifierCopy];
  v68 = dataSource;
  v11 = [dataSource actionProxyForIdentifier:identifierCopy];
  v12 = share_sheet_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v80 = v10;
    v81 = 2112;
    v82 = v11;
    _os_log_impl(&dword_18B359000, v12, OS_LOG_TYPE_DEFAULT, "configure action cell for activity:%@ proxy:%@", buf, 0x16u);
  }

  v67 = v11;

  _activityStyle = [objc_opt_class() _activityStyle];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v15 = MEMORY[0x1E69DD1B8];
  traitCollection = [(UIActivityContentViewController *)self traitCollection];
  v17 = [v15 traitCollectionWithUserInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];
  v18 = [labelColor resolvedColorWithTraitCollection:v17];

  if (_activityStyle == 1)
  {
    systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
  }

  else
  {
    systemRedColor = v18;
  }

  v69 = systemRedColor;
  v20 = v67;
  [cellCopy setIdentifier:identifierCopy];
  [cellCopy setActivityProxy:v67];
  activityTitle = [v67 activityTitle];
  [activityTitle slotTextHeight];
  [cellCopy setPlatterTextHeight:?];

  [cellCopy setAccessibilityIdentifier:@"actionGroupCell"];
  activityTitle2 = [v67 activityTitle];
  text = [activityTitle2 text];

  v64 = v18;
  if (v10 && !text)
  {
    heroActionActivityTypes = [(UIActivityContentViewController *)self heroActionActivityTypes];
    activityType = [v10 activityType];
    v26 = [heroActionActivityTypes containsObject:activityType];

    if (v26)
    {
      text = [(UIActivityContentViewController *)self _activityTitleForActivity:v10];
      v27 = share_sheet_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v80 = text;
        _os_log_impl(&dword_18B359000, v27, OS_LOG_TYPE_DEFAULT, "hero action title:%@", buf, 0xCu);
      }
    }

    else
    {
      presenter = [(UIActivityContentViewController *)self presenter];
      activityType2 = [v10 activityType];
      v27 = [presenter customTitleForActivityType:activityType2];

      if (v27)
      {
        v27 = v27;
        v30 = share_sheet_log();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v80 = v27;
          _os_log_impl(&dword_18B359000, v30, OS_LOG_TYPE_DEFAULT, "custom action title:%@", buf, 0xCu);
        }

        text = v27;
      }

      else
      {
        text = [v10 activityTitle];
      }
    }
  }

  v63 = text;
  [cellCopy setTitle:text];
  layoutSpec = [(UIActivityContentViewController *)self layoutSpec];
  traitCollection2 = [layoutSpec traitCollection];
  preferredContentSizeCategory = [traitCollection2 preferredContentSizeCategory];

  layoutSpec2 = [(UIActivityContentViewController *)self layoutSpec];
  traitCollection3 = [layoutSpec2 traitCollection];
  userInterfaceStyle = [traitCollection3 userInterfaceStyle];

  applicationBundleIdentifier = [v67 applicationBundleIdentifier];
  _activityImageUTI = [v10 _activityImageUTI];
  if (_activityImageUTI || ([v67 activityImageUTI], (_activityImageUTI = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v37 = _activityImageUTI;
    v38 = identifierCopy;
    activityImageProvider = [(UIActivityContentViewController *)self activityImageProvider];
    v76[0] = MEMORY[0x1E69E9820];
    v76[1] = 3221225472;
    v76[2] = __71__UIActivityContentViewController__configureActionCell_itemIdentifier___block_invoke;
    v76[3] = &unk_1E71F9430;
    v40 = &v77;
    v77 = cellCopy;
    v41 = &v78;
    v78 = identifierCopy;
    v42 = [activityImageProvider requestImageForUTI:v37 activityCategory:0 contentSizeCategory:preferredContentSizeCategory userInterfaceStyle:userInterfaceStyle iconFormat:10 synchronous:0 resultHandler:v76];
  }

  else
  {
    if (applicationBundleIdentifier)
    {
      activityImageProvider2 = [(UIActivityContentViewController *)self activityImageProvider];
      v73[0] = MEMORY[0x1E69E9820];
      v73[1] = 3221225472;
      v73[2] = __71__UIActivityContentViewController__configureActionCell_itemIdentifier___block_invoke_2;
      v73[3] = &unk_1E71F9430;
      v40 = &v74;
      v74 = cellCopy;
      v41 = &v75;
      v38 = identifierCopy;
      v75 = identifierCopy;
      v42 = [activityImageProvider2 requestImageForBundleIdentifier:applicationBundleIdentifier activityCategory:0 contentSizeCategory:preferredContentSizeCategory userInterfaceStyle:userInterfaceStyle iconFormat:10 synchronous:0 resultHandler:v73];
    }

    else
    {
      if (!v10)
      {
        [cellCopy setImage:0];
        v37 = 0;
        goto LABEL_24;
      }

      activityImageProvider3 = [(UIActivityContentViewController *)self activityImageProvider];
      layoutSpec3 = [(UIActivityContentViewController *)self layoutSpec];
      activityImageSymbolConfiguration = [layoutSpec3 activityImageSymbolConfiguration];
      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 3221225472;
      v70[2] = __71__UIActivityContentViewController__configureActionCell_itemIdentifier___block_invoke_3;
      v70[3] = &unk_1E71F9F30;
      v40 = &v71;
      v71 = cellCopy;
      v41 = v72;
      v38 = identifierCopy;
      v72[0] = identifierCopy;
      v72[1] = self;
      v42 = [activityImageProvider3 requestImageForActivity:v10 contentSizeCategory:preferredContentSizeCategory userInterfaceStyle:userInterfaceStyle imageSymbolConfiguration:activityImageSymbolConfiguration synchronous:0 resultHandler:v70];
    }

    v37 = 0;
  }

  if (v42)
  {
    v43 = [MEMORY[0x1E696AD98] numberWithInt:v42];
    identifiersToActivityImageRequestID = [(UIActivityContentViewController *)self identifiersToActivityImageRequestID];
    identifierCopy = v38;
    [identifiersToActivityImageRequestID setObject:v43 forKeyedSubscript:v38];
  }

  else
  {
    identifierCopy = v38;
  }

  v20 = v67;
  dataSource = v68;
LABEL_24:
  [cellCopy setContentTintColor:v69];
  if ([v10 _isDisabled])
  {
    isDisabled = 1;
  }

  else
  {
    isDisabled = [v20 isDisabled];
  }

  [cellCopy setDisabled:isDisabled];
  _activitySubtitle = [v10 _activitySubtitle];
  [cellCopy setSubtitle:_activitySubtitle];

  _activityStatusImage = [v10 _activityStatusImage];
  [cellCopy setStatusImage:_activityStatusImage];

  [cellCopy setImageSlotID:{objc_msgSend(v20, "iconImageSlotID")}];
  activityTitle3 = [v20 activityTitle];
  [cellCopy setTitleSlotID:{objc_msgSend(activityTitle3, "slotIdentifier")}];

  _activityStatusTintColor = [v10 _activityStatusTintColor];
  [cellCopy setStatusImageTintColor:_activityStatusTintColor];

  _activityBadgeText = [v10 _activityBadgeText];
  _activityBadgeTextColor = [v10 _activityBadgeTextColor];
  v52 = _activityBadgeTextColor;
  if (_activityBadgeTextColor)
  {
    whiteColor = _activityBadgeTextColor;
  }

  else
  {
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  }

  v54 = whiteColor;

  _activityBadgeColor = [v10 _activityBadgeColor];
  v56 = _activityBadgeColor;
  if (_activityBadgeColor)
  {
    systemRedColor2 = _activityBadgeColor;
  }

  else
  {
    systemRedColor2 = [MEMORY[0x1E69DC888] systemRedColor];
  }

  v58 = systemRedColor2;

  [cellCopy setBadgeText:_activityBadgeText textColor:v54 backgroundColor:v58];
}

void __71__UIActivityContentViewController__configureActionCell_itemIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) identifier];
  v4 = [v3 isEqual:*(a1 + 40)];

  if (v4)
  {
    [*(a1 + 32) setImage:v5];
  }
}

void __71__UIActivityContentViewController__configureActionCell_itemIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) identifier];
  v4 = [v3 isEqual:*(a1 + 40)];

  if (v4)
  {
    [*(a1 + 32) setImage:v5];
  }
}

void __71__UIActivityContentViewController__configureActionCell_itemIdentifier___block_invoke_3(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) identifier];
  v4 = [v3 isEqual:*(a1 + 40)];

  if (v4)
  {
    v5 = [v11 configuration];
    v6 = [*(a1 + 48) layoutSpec];
    v7 = [v6 activityImageSymbolConfiguration];
    if (v5 == v7)
    {
      [*(a1 + 32) setImage:v11];
    }

    else
    {
      v8 = [*(a1 + 48) layoutSpec];
      v9 = [v8 activityImageSymbolConfiguration];
      v10 = [v11 imageWithConfiguration:v9];
      [*(a1 + 32) setImage:v10];
    }
  }
}

- (id)_provideCellForCollectionView:(id)view indexPath:(id)path itemIdentifier:(id)identifier
{
  viewCopy = view;
  pathCopy = path;
  identifierCopy = identifier;
  currentSnapshot = [(UIActivityContentViewController *)self currentSnapshot];
  v12 = [currentSnapshot sectionIdentifierForSectionContainingItemIdentifier:identifierCopy];

  dataSourceManager = [(UIActivityContentViewController *)self dataSourceManager];
  dataSource = [dataSourceManager dataSource];

  layoutSpec = [(UIActivityContentViewController *)self layoutSpec];
  v16 = ([layoutSpec isAccessibilityContentSize] & 1) == 0 && -[UIActivityContentViewController showHeroActionsHorizontally](self, "showHeroActionsHorizontally");

  v17 = share_sheet_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [UIActivityContentViewController _provideCellForCollectionView:indexPath:itemIdentifier:];
  }

  if ([v12 isEqualToString:@"SHSheetContentCustomViewSectionIdentifier"])
  {
    v18 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"UIActivityContentCustomViewCellIdentifier" forIndexPath:pathCopy];
  }

  else if ([v12 isEqualToString:@"SHSheetContentPeopleSectionIdentifier"])
  {
    airDropProxy = [dataSource airDropProxy];
    identifier = [airDropProxy identifier];
    v21 = [identifierCopy isEqual:identifier];

    v22 = share_sheet_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [UIActivityContentViewController _provideCellForCollectionView:indexPath:itemIdentifier:];
    }

    if (v21)
    {
      v18 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"UIActivityContentMagicHeadCellIdentifier" forIndexPath:pathCopy];
      layoutSpec2 = [(UIActivityContentViewController *)self layoutSpec];
      [v18 configureLayoutIfNeeded:layoutSpec2];

      identifier2 = [airDropProxy identifier];
      [v18 setIdentifier:identifier2];

      [v18 setNode:airDropProxy];
      [v18 setAccessibilityIdentifier:@"airDropCell"];
    }

    else
    {
      v18 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"UIActivityContentAirDropCellIdentifier" forIndexPath:pathCopy];
      layoutSpec3 = [(UIActivityContentViewController *)self layoutSpec];
      [v18 configureLayoutIfNeeded:layoutSpec3];

      [(UIActivityContentViewController *)self _configurePeopleCell:v18 itemIdentifier:identifierCopy];
    }
  }

  else if ([v12 isEqualToString:@"SHSheetContentAppsSectionIdentifier"])
  {
    v18 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"UIActivityContentShareCellIdentifier" forIndexPath:pathCopy];
    layoutSpec4 = [(UIActivityContentViewController *)self layoutSpec];
    [v18 configureLayoutIfNeeded:layoutSpec4];

    [(UIActivityContentViewController *)self _configureSharingAppCell:v18 itemIdentifier:identifierCopy];
  }

  else if (v16 && [v12 isEqualToString:@"SHSheetContentHeroActionsSectionIdentifier"])
  {
    v18 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"UIActivityContentHeroActionCellIdentifier" forIndexPath:pathCopy];
    [(UIActivityContentViewController *)self _configureHeroActionCell:v18 itemIdentifier:identifierCopy];
  }

  else if ([v12 isEqualToString:@"SHSheetContentTopActionsSectionIdentifier"])
  {
    v18 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"UIActivityContentTopActionCellIdentifier" forIndexPath:pathCopy];
    layoutSpec5 = [(UIActivityContentViewController *)self layoutSpec];
    [v18 configureLayoutIfNeeded:layoutSpec5];

    [(UIActivityContentViewController *)self _configureHorizontalActionCell:v18 itemIdentifier:identifierCopy];
  }

  else
  {
    v18 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"UIActivityContentActionCellIdentifier" forIndexPath:pathCopy];
    [(UIActivityContentViewController *)self _configureActionCell:v18 itemIdentifier:identifierCopy];
  }

  return v18;
}

- (id)_provideSupplementaryViewForCollectionView:(id)view kind:(id)kind indexPath:(id)path
{
  v44[3] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  currentSnapshot = [(UIActivityContentViewController *)self currentSnapshot];
  sectionIdentifiers = [currentSnapshot sectionIdentifiers];

  v13 = -[UIActivityContentViewController _sectionIdentifierForIndex:](self, "_sectionIdentifierForIndex:", [pathCopy section]);
  v44[0] = @"SHSheetContentCustomViewSectionIdentifier";
  v44[1] = @"SHSheetContentAppsSectionIdentifier";
  v44[2] = @"SHSheetContentPeopleSectionIdentifier";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:3];
  if ((([v13 isEqualToString:@"SHSheetContentPeopleSectionIdentifier"] & 1) != 0 || objc_msgSend(v13, "isEqualToString:", @"SHSheetContentAppsSectionIdentifier")) && objc_msgSend(kindCopy, "isEqualToString:", @"UIActivityContentHeaderSectionKind"))
  {
    v15 = [viewCopy dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:@"UIActivityContentHeaderViewIdentifier" forIndexPath:pathCopy];
    topContentSectionText = [(UIActivityContentViewController *)self topContentSectionText];
    [v15 titleLabel];
    v18 = v17 = v14;
    [v18 setText:topContentSectionText];

    v14 = v17;
    layoutSpec = [(UIActivityContentViewController *)self layoutSpec];
    [layoutSpec topContentSectionHeaderInsets];
    [v15 setDirectionalLayoutMargins:?];

    v20 = @"collectionView.sectionHeader";
LABEL_15:
    [v15 setAccessibilityIdentifier:v20];
    goto LABEL_16;
  }

  if ([v13 hasPrefix:@"SHSheetContentInformationalActionsSectionIdentifier_"] && objc_msgSend(kindCopy, "isEqualToString:", @"UIActivityContentFooterSectionKind"))
  {
    v15 = [viewCopy dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:@"UIActivityContentInformationalActionFooterViewIdentifier" forIndexPath:pathCopy];
    v21 = [(UIActivityContentViewController *)self _footerTextForInformationalSectionIdentifier:v13];
    footerTextView = [v15 footerTextView];
    [footerTextView setAttributedText:v21];

    v20 = @"collectionView.sectionFooter";
    goto LABEL_15;
  }

  lastObject = [sectionIdentifiers lastObject];
  if ([v13 isEqualToString:lastObject])
  {
    v24 = [v14 containsObject:v13];

    if ((v24 & 1) == 0)
    {
      v15 = [viewCopy dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:@"UIActivityContentEditViewIdentifier" forIndexPath:pathCopy];
      if (_ShareSheetSolariumEnabled())
      {
        v25 = 1;
      }

      else
      {
        currentDevice = [MEMORY[0x1E69DC938] currentDevice];
        v25 = [currentDevice userInterfaceIdiom] == 6;
      }

      if (_ShareSheetSolariumEnabled())
      {
        editButton = [v15 editButton];
        [MEMORY[0x1E69DC888] labelColor];
        v42 = v25;
        v32 = v31 = v14;
        [editButton setTitleColor:v32 forState:0];

        v14 = v31;
        v25 = v42;
      }

      v43 = v14;
      if (v25)
      {
        v33 = @"SHARE_SHEET_EDIT_ACTIONS_BUTTON_TITLE";
      }

      else
      {
        if ([(UIActivityContentViewController *)self isRemote]&& (_ShareSheetSolariumEnabled() & 1) == 0)
        {
          editButton2 = [v15 editButton];
          layoutSpec2 = [(UIActivityContentViewController *)self layoutSpec];
          editTintColor = [layoutSpec2 editTintColor];
          [editButton2 setTitleColor:editTintColor forState:0];
        }

        v33 = @"SHARE_SHEET_EDIT_ACTIONS_BUTTON_TITLE_WITH_ELLIPSIS";
      }

      editButton3 = [v15 editButton];
      v38 = _ShareSheetBundle();
      v39 = [v38 localizedStringForKey:v33 value:&stru_1EFE999E0 table:@"Localizable"];
      [editButton3 setTitle:v39 forState:0];

      editButton4 = [v15 editButton];
      presenter = [(UIActivityContentViewController *)self presenter];
      [editButton4 addTarget:presenter action:sel_handleActionsEdit forControlEvents:64];

      [v15 setAccessibilityIdentifier:@"collectionView.footerEditView"];
      v14 = v43;
      goto LABEL_16;
    }
  }

  else
  {
  }

  if ([kindCopy isEqualToString:@"UIActivityContentFooterSectionKind"])
  {
    v15 = [viewCopy dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:@"UIActivityContentFooterViewIdentifier" forIndexPath:pathCopy];
    layoutSpec3 = [(UIActivityContentViewController *)self layoutSpec];
    footerBackgroundColor = [layoutSpec3 footerBackgroundColor];
    [v15 setBackgroundColor:footerBackgroundColor];

    v20 = @"collectionView.footerView";
    goto LABEL_15;
  }

  v15 = 0;
LABEL_16:

  return v15;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  v7 = -[UIActivityContentViewController _sectionIdentifierForIndex:](self, "_sectionIdentifierForIndex:", [path section]);
  if ([v7 isEqualToString:@"SHSheetContentCustomViewSectionIdentifier"])
  {
    customViewController = [(UIActivityContentViewController *)self customViewController];
    v9 = customViewController;
    if (customViewController)
    {
      view = [customViewController view];
      contentView = [cellCopy contentView];
      [contentView bounds];
      [view setFrame:?];
      [view setAutoresizingMask:18];
      getPUCarouselSharingViewControllerClass();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        view2 = [v9 view];
        [view2 setBackgroundColor:0];

        mainCollectionView = [v9 mainCollectionView];
        [mainCollectionView setBackgroundColor:0];
      }

      subviews = [contentView subviews];
      [subviews makeObjectsPerformSelector:sel_removeFromSuperview];

      [v9 willMoveToParentViewController:self];
      [(UIActivityContentViewController *)self addChildViewController:v9];
      [contentView addSubview:view];
      [v9 didMoveToParentViewController:self];
    }
  }
}

- (void)collectionView:(id)view prefetchItemsAtIndexPaths:(id)paths
{
  v22 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [pathsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(pathsCopy);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        diffableDataSource = [(UIActivityContentViewController *)self diffableDataSource];
        v12 = [diffableDataSource itemIdentifierForIndexPath:v10];

        dataSource = [(UIActivityContentViewController *)self dataSource];
        v14 = [dataSource peopleProxyForIdentifier:v12];

        peopleSuggestion = [v14 peopleSuggestion];
        if (peopleSuggestion)
        {
          peopleSuggestionImageProvider = [(UIActivityContentViewController *)self peopleSuggestionImageProvider];
          [peopleSuggestionImageProvider requestAvatarImageForPeopleSuggestion:peopleSuggestion resultHandler:0];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [pathsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }
}

- (void)collectionView:(id)view cancelPrefetchingForItemsAtIndexPaths:(id)paths
{
  v38 = *MEMORY[0x1E69E9840];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = paths;
  v5 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v5)
  {
    v6 = v5;
    v27 = *v33;
    do
    {
      v7 = 0;
      do
      {
        if (*v33 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v32 + 1) + 8 * v7);
        diffableDataSource = [(UIActivityContentViewController *)self diffableDataSource];
        v10 = [diffableDataSource itemIdentifierForIndexPath:v8];

        identifiersToPeopleSuggestionImageRequestIDs = [(UIActivityContentViewController *)self identifiersToPeopleSuggestionImageRequestIDs];
        v12 = [identifiersToPeopleSuggestionImageRequestIDs objectForKeyedSubscript:v10];

        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v13 = v12;
        v14 = [v13 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v29;
          do
          {
            v17 = 0;
            do
            {
              if (*v29 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v28 + 1) + 8 * v17);
              peopleSuggestionImageProvider = [(UIActivityContentViewController *)self peopleSuggestionImageProvider];
              [peopleSuggestionImageProvider cancelImageRequest:{objc_msgSend(v18, "intValue")}];

              ++v17;
            }

            while (v15 != v17);
            v15 = [v13 countByEnumeratingWithState:&v28 objects:v36 count:16];
          }

          while (v15);
        }

        identifiersToActivityImageRequestID = [(UIActivityContentViewController *)self identifiersToActivityImageRequestID];
        v21 = [identifiersToActivityImageRequestID objectForKeyedSubscript:v10];

        if (v21)
        {
          identifiersToActivityImageRequestID2 = [(UIActivityContentViewController *)self identifiersToActivityImageRequestID];
          v23 = [identifiersToActivityImageRequestID2 objectForKeyedSubscript:v10];
          intValue = [v23 intValue];

          activityImageProvider = [(UIActivityContentViewController *)self activityImageProvider];
          [activityImageProvider cancelImageRequest:intValue];
        }

        ++v7;
      }

      while (v7 != v6);
      v6 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v6);
  }
}

- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point
{
  pathCopy = path;
  viewCopy = view;
  [viewCopy deselectItemAtIndexPath:pathCopy animated:0];
  v9 = [viewCopy cellForItemAtIndexPath:pathCopy];

  currentSnapshot = [(UIActivityContentViewController *)self currentSnapshot];
  diffableDataSource = [(UIActivityContentViewController *)self diffableDataSource];
  v12 = [diffableDataSource itemIdentifierForIndexPath:pathCopy];
  v13 = [currentSnapshot sectionIdentifierForSectionContainingItemIdentifier:v12];

  if ([v13 isEqualToString:@"SHSheetContentPeopleSectionIdentifier"])
  {
    array = v9;
    identifier = [array identifier];
    dataSource = [(UIActivityContentViewController *)self dataSource];
    airDropProxy = [dataSource airDropProxy];
    identifier2 = [airDropProxy identifier];
    v19 = identifier;
    v20 = v19;
    if (identifier2 == v19)
    {
    }

    else
    {
      if ((v19 == 0) == (identifier2 != 0))
      {
      }

      else
      {
        v21 = [identifier2 isEqual:v19];

        if (v21)
        {
          goto LABEL_14;
        }
      }

      if ([array isLongPressable])
      {
        v30 = MEMORY[0x1E69DC8D8];
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __99__UIActivityContentViewController_collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke_2;
        v39[3] = &unk_1E71F9FA0;
        v39[4] = self;
        v20 = v20;
        v40 = v20;
        v29 = [v30 configurationWithIdentifier:pathCopy previewProvider:&__block_literal_global_13 actionProvider:v39];

        goto LABEL_15;
      }
    }

LABEL_14:
    v29 = 0;
    goto LABEL_15;
  }

  if (![v13 isEqualToString:@"SHSheetContentAppsSectionIdentifier"])
  {
    v29 = 0;
    goto LABEL_16;
  }

  array = [MEMORY[0x1E695DF70] array];
  v20 = v9;
  if (![v20 isLongPressable])
  {
    goto LABEL_14;
  }

  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __99__UIActivityContentViewController_collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke_5;
  v38[3] = &unk_1E71F9FC8;
  v38[4] = self;
  v22 = MEMORY[0x18CFF58E0](v38);
  dataSource2 = [(UIActivityContentViewController *)self dataSource];
  identifier3 = [v20 identifier];
  v25 = [dataSource2 shareProxyForIdentifier:identifier3];

  v26 = MEMORY[0x1E69DC8D8];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __99__UIActivityContentViewController_collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke_7;
  v32[3] = &unk_1E71FA040;
  v33 = v25;
  selfCopy = self;
  v35 = pathCopy;
  v37 = v22;
  array = array;
  v36 = array;
  v27 = v22;
  v28 = v25;
  v29 = [v26 configurationWithIdentifier:v35 previewProvider:&__block_literal_global_361 actionProvider:v32];

LABEL_15:
LABEL_16:

  return v29;
}

id __99__UIActivityContentViewController_collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke_2(uint64_t a1)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v2 = _ShareSheetBundle();
  v3 = [v2 localizedStringForKey:@"SHARE_SHEET_REMOVE_PERSON_TITLE" value:&stru_1EFE999E0 table:@"Localizable"];

  v4 = MEMORY[0x1E69DC628];
  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"hand.thumbsdown"];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __99__UIActivityContentViewController_collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke_3;
  v21[3] = &unk_1E71F9F78;
  v6 = *(a1 + 40);
  v21[4] = *(a1 + 32);
  v22 = v6;
  v7 = [v4 actionWithTitle:v3 image:v5 identifier:0 handler:v21];

  [v7 setAttributes:2];
  v24[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  if (IsAppleInternalBuild())
  {
    v9 = _ShareSheetBundle();
    v10 = [v9 localizedStringForKey:@"SHARE_SHEET_SUGGESTION_INFO_TITLE" value:&stru_1EFE999E0 table:@"Localizable"];

    v11 = MEMORY[0x1E69DC628];
    v12 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"info.circle"];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __99__UIActivityContentViewController_collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke_4;
    v19[3] = &unk_1E71F9F78;
    v13 = *(a1 + 40);
    v19[4] = *(a1 + 32);
    v20 = v13;
    v14 = [v11 actionWithTitle:v10 image:v12 identifier:0 handler:v19];

    v23 = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
    v16 = [v15 arrayByAddingObject:v7];

    v8 = v16;
  }

  v17 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1EFE999E0 children:v8];

  return v17;
}

void __99__UIActivityContentViewController_collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) dataSource];
  v5 = [v2 peopleProxyForIdentifier:*(a1 + 40)];

  v3 = [*(a1 + 32) presenter];
  [v3 removePeopleSuggestionProxy:v5];

  v4 = [*(a1 + 32) dataSourceManager];
  [v4 suggestLessPeopleProxyForIdentifier:*(a1 + 40)];
}

void __99__UIActivityContentViewController_collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) dataSource];
  v5 = [v2 peopleProxyForIdentifier:*(a1 + 40)];

  v3 = [v5 suggestionReason];
  v4 = [*(a1 + 32) presenter];
  [v4 handleInfoSuggestionPress:v3];
}

void __99__UIActivityContentViewController_collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke_5(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v8 = a3;
  v9 = [v6 dataSource];
  v11 = [v9 shareProxyForIdentifier:v8];

  v10 = [*(a1 + 32) presenter];
  [v10 performShareActivityProxy:v11 activityIdentifier:v7];
}

id __99__UIActivityContentViewController_collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke_7(uint64_t a1)
{
  v2 = [*(a1 + 32) activityIdentifierShare];
  if (v2)
  {

LABEL_3:
    v3 = _ShareSheetBundle();
    v4 = [v3 localizedStringForKey:@"SHARE_EXTENSION_TITLE" value:&stru_1EFE999E0 table:@"Localizable"];

    v5 = MEMORY[0x1E69DC628];
    v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.and.arrow.up"];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __99__UIActivityContentViewController_collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke_8;
    v36[3] = &unk_1E71F9FF0;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v37 = v7;
    v38 = v8;
    v39 = v9;
    v40 = *(a1 + 64);
    v10 = [v5 actionWithTitle:v4 image:v6 identifier:0 handler:v36];

    [*(a1 + 56) addObject:v10];
    goto LABEL_7;
  }

  v11 = [*(a1 + 32) activityIdentifierOpen];
  if (v11)
  {
  }

  else
  {
    v12 = [*(a1 + 32) activityIdentifierCopy];

    if (!v12)
    {
      goto LABEL_3;
    }
  }

LABEL_7:
  v13 = [*(a1 + 32) activityIdentifierOpen];

  if (v13)
  {
    v14 = _ShareSheetBundle();
    v15 = [v14 localizedStringForKey:@"OPEN_IN_ACTIVITY_TITLE" value:&stru_1EFE999E0 table:@"Localizable"];

    v16 = MEMORY[0x1E69DC628];
    v17 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.up.forward.app"];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __99__UIActivityContentViewController_collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke_9;
    v33[3] = &unk_1E71FA018;
    v35 = *(a1 + 64);
    v34 = *(a1 + 32);
    v18 = [v16 actionWithTitle:v15 image:v17 identifier:0 handler:v33];

    [*(a1 + 56) addObject:v18];
  }

  v19 = [*(a1 + 32) activityIdentifierCopy];

  if (v19)
  {
    v20 = _ShareSheetBundle();
    v21 = [v20 localizedStringForKey:@"COPY_TO_ACTIVITY_TITLE" value:&stru_1EFE999E0 table:@"Localizable"];

    v22 = MEMORY[0x1E69DC628];
    v23 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"doc.on.doc"];
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __99__UIActivityContentViewController_collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke_10;
    v30 = &unk_1E71FA018;
    v32 = *(a1 + 64);
    v31 = *(a1 + 32);
    v24 = [v22 actionWithTitle:v21 image:v23 identifier:0 handler:&v27];

    [*(a1 + 56) addObject:{v24, v27, v28, v29, v30}];
  }

  v25 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1EFE999E0 children:*(a1 + 56)];

  return v25;
}

void __99__UIActivityContentViewController_collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 activityIdentifierShare];
  v6 = v5;
  if (v5)
  {
    v10 = v5;
  }

  else
  {
    v7 = [*(a1 + 40) diffableDataSource];
    v10 = [v7 itemIdentifierForIndexPath:*(a1 + 48)];
  }

  v8 = *(a1 + 56);
  v9 = [*(a1 + 32) identifier];
  (*(v8 + 16))(v8, v4, v9, v10);
}

void __99__UIActivityContentViewController_collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke_9(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = a2;
  v7 = [v4 identifier];
  v6 = [*(a1 + 32) activityIdentifierOpen];
  (*(v3 + 16))(v3, v5, v7, v6);
}

void __99__UIActivityContentViewController_collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke_10(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = a2;
  v7 = [v4 identifier];
  v6 = [*(a1 + 32) activityIdentifierCopy];
  (*(v3 + 16))(v3, v5, v7, v6);
}

- (id)collectionView:(id)view previewForHighlightingContextMenuWithConfiguration:(id)configuration
{
  viewCopy = view;
  identifier = [configuration identifier];
  currentSnapshot = [(UIActivityContentViewController *)self currentSnapshot];
  diffableDataSource = [(UIActivityContentViewController *)self diffableDataSource];
  v10 = [diffableDataSource itemIdentifierForIndexPath:identifier];
  v11 = [currentSnapshot sectionIdentifierForSectionContainingItemIdentifier:v10];

  v12 = [viewCopy cellForItemAtIndexPath:identifier];
  if ([v11 isEqualToString:@"SHSheetContentPeopleSectionIdentifier"])
  {
    [v12 setTransportIconHidden:1 animated:1 useDelay:0];
  }

  v13 = [(UIActivityContentViewController *)self _contextMenuPreviewForCollectionView:viewCopy collectionViewCell:v12];

  return v13;
}

- (id)collectionView:(id)view previewForDismissingContextMenuWithConfiguration:(id)configuration
{
  viewCopy = view;
  identifier = [configuration identifier];
  v8 = [viewCopy cellForItemAtIndexPath:identifier];
  v9 = [(UIActivityContentViewController *)self _contextMenuPreviewForCollectionView:viewCopy collectionViewCell:v8];

  return v9;
}

- (void)collectionView:(id)view willEndContextMenuInteractionWithConfiguration:(id)configuration animator:(id)animator
{
  viewCopy = view;
  identifier = [configuration identifier];
  diffableDataSource = [(UIActivityContentViewController *)self diffableDataSource];
  v10 = [diffableDataSource itemIdentifierForIndexPath:identifier];

  if (v10)
  {
    currentSnapshot = [(UIActivityContentViewController *)self currentSnapshot];
    v12 = [currentSnapshot sectionIdentifierForSectionContainingItemIdentifier:v10];

    if ([v12 isEqualToString:@"SHSheetContentPeopleSectionIdentifier"])
    {
      v13 = [viewCopy cellForItemAtIndexPath:identifier];
      [v13 setTransportIconHidden:0 animated:1 useDelay:1];
    }
  }

  else
  {
    v12 = share_sheet_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [UIActivityContentViewController collectionView:willEndContextMenuInteractionWithConfiguration:animator:];
    }
  }
}

- (id)_contextMenuPreviewForCollectionView:(id)view collectionViewCell:(id)cell
{
  cellCopy = cell;
  v7 = [view indexPathForCell:cellCopy];
  diffableDataSource = [(UIActivityContentViewController *)self diffableDataSource];
  v9 = [diffableDataSource itemIdentifierForIndexPath:v7];

  if (v9)
  {
    currentSnapshot = [(UIActivityContentViewController *)self currentSnapshot];
    v11 = [currentSnapshot sectionIdentifierForSectionContainingItemIdentifier:v9];

    if (([v11 isEqualToString:@"SHSheetContentPeopleSectionIdentifier"] & 1) != 0 || objc_msgSend(v11, "isEqualToString:", @"SHSheetContentAppsSectionIdentifier"))
    {
      createTargetedPreview = [cellCopy createTargetedPreview];
    }

    else
    {
      createTargetedPreview = 0;
    }
  }

  else
  {
    v13 = share_sheet_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [UIActivityContentViewController _contextMenuPreviewForCollectionView:collectionViewCell:];
    }

    createTargetedPreview = 0;
  }

  return createTargetedPreview;
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  v4 = [view cellForItemAtIndexPath:path];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 isDisabled] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v34 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  [view deselectItemAtIndexPath:pathCopy animated:0];
  currentSnapshot = [(UIActivityContentViewController *)self currentSnapshot];
  diffableDataSource = [(UIActivityContentViewController *)self diffableDataSource];
  v9 = [diffableDataSource itemIdentifierForIndexPath:pathCopy];
  v10 = [currentSnapshot sectionIdentifierForSectionContainingItemIdentifier:v9];

  diffableDataSource2 = [(UIActivityContentViewController *)self diffableDataSource];
  v12 = [diffableDataSource2 itemIdentifierForIndexPath:pathCopy];

  v13 = share_sheet_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 138412290;
    v33 = v10;
    _os_log_impl(&dword_18B359000, v13, OS_LOG_TYPE_DEFAULT, "User selected node in section %@", &v32, 0xCu);
  }

  if ([v10 isEqualToString:@"SHSheetContentPeopleSectionIdentifier"])
  {
    if ([(UIActivityContentViewController *)self ignorePersonTap])
    {
      v14 = share_sheet_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v32) = 0;
        v15 = "Ignore person tap currently enabled. Ignore selection.";
        v16 = v14;
        v17 = 2;
LABEL_26:
        _os_log_impl(&dword_18B359000, v16, OS_LOG_TYPE_DEFAULT, v15, &v32, v17);
        goto LABEL_29;
      }

      goto LABEL_29;
    }

    dataSource = [(UIActivityContentViewController *)self dataSource];
    v14 = [dataSource peopleProxyForIdentifier:v12];

    v24 = share_sheet_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v32 = 138412290;
      v33 = v14;
      _os_log_impl(&dword_18B359000, v24, OS_LOG_TYPE_DEFAULT, "People proxy selected:%@", &v32, 0xCu);
    }

    if ([v14 isTapToRadar])
    {
      reporterForPeopleSuggestions = [(objc_class *)getSFUITTRReporterClass() reporterForPeopleSuggestions];
      [reporterForPeopleSuggestions report];
    }

    else
    {
      reporterForPeopleSuggestions = [(UIActivityContentViewController *)self presenter];
      [reporterForPeopleSuggestions performPeopleSuggestionProxy:v14];
    }

LABEL_23:

    goto LABEL_29;
  }

  v18 = [v10 isEqualToString:@"SHSheetContentAppsSectionIdentifier"];
  dataSource2 = [(UIActivityContentViewController *)self dataSource];
  v20 = dataSource2;
  if (v18)
  {
    v14 = [dataSource2 shareProxyForIdentifier:v12];

    v21 = share_sheet_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v32 = 138412290;
      v33 = v14;
      _os_log_impl(&dword_18B359000, v21, OS_LOG_TYPE_DEFAULT, "Share proxy selected:%@", &v32, 0xCu);
    }

    reporterForPeopleSuggestions = [(UIActivityContentViewController *)self presenter];
    [reporterForPeopleSuggestions performShareActivityProxy:v14 activityIdentifier:0];
    goto LABEL_23;
  }

  v25 = [dataSource2 containsSectionForIdentifier:v10];

  if (v25)
  {
    dataSource3 = [(UIActivityContentViewController *)self dataSource];
    v14 = [dataSource3 actionProxyForIdentifier:v12];

    activity = [v14 activity];
    if (!v14)
    {
      dataSource4 = [(UIActivityContentViewController *)self dataSource];
      v29 = [dataSource4 activityForIdentifier:v12];

      activity = v29;
    }

    v30 = share_sheet_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v32 = 138412290;
      v33 = v14;
      _os_log_impl(&dword_18B359000, v30, OS_LOG_TYPE_DEFAULT, "Action proxy selected:%@", &v32, 0xCu);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(UIActivityContentViewController *)self setShowAllActions:[(UIActivityContentViewController *)self showAllActions]^ 1];
    }

    else
    {
      presenter = [(UIActivityContentViewController *)self presenter];
      [presenter performActionActivityProxy:v14];
    }
  }

  else
  {
    v14 = share_sheet_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v32 = 138412290;
      v33 = v10;
      v15 = "Unexpected path: section %@ is not supported. Ignore selection.";
      v16 = v14;
      v17 = 12;
      goto LABEL_26;
    }
  }

LABEL_29:
}

- (UIBarButtonItem)cancelButton
{
  cancelButton = self->_cancelButton;
  if (!cancelButton)
  {
    v4 = objc_alloc(MEMORY[0x1E69DC708]);
    presenter = [(UIActivityContentViewController *)self presenter];
    v6 = [v4 initWithBarButtonSystemItem:1 target:presenter action:sel_handleClose];
    v7 = self->_cancelButton;
    self->_cancelButton = v6;

    cancelButton = self->_cancelButton;
  }

  return cancelButton;
}

- (UIBarButtonItem)nextButton
{
  nextButton = self->_nextButton;
  if (!nextButton)
  {
    v4 = objc_alloc(MEMORY[0x1E69DC708]);
    v5 = _ShareSheetBundle();
    v6 = [v5 localizedStringForKey:@"SHARE_SHEET_NEXT_BUTTON_TITLE" value:@"Next" table:@"Localizable"];
    presenter = [(UIActivityContentViewController *)self presenter];
    v8 = [v4 initWithTitle:v6 style:0 target:presenter action:sel_handleNext];
    v9 = self->_nextButton;
    self->_nextButton = v8;

    nextButton = self->_nextButton;
  }

  return nextButton;
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  activityCollectionView = [(UIActivityContentViewController *)self activityCollectionView];

  v5 = scrollCopy;
  if (activityCollectionView == scrollCopy)
  {
    [scrollCopy adjustedContentInset];
    v7 = v6;
    [scrollCopy contentOffset];
    v8 = 0.0;
    if (v9 > -v7)
    {
      [scrollCopy contentOffset];
      v8 = fmin((v7 + v10) * 10.0, 100.0) / 100.0;
    }

    dividerLineView = [(UIActivityContentViewController *)self dividerLineView];
    [dividerLineView setProgress:v8];

    navigationItem = [(UIActivityContentViewController *)self navigationItem];
    [navigationItem _setManualScrollEdgeAppearanceProgress:v8];

    v5 = scrollCopy;
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  v23 = *MEMORY[0x1E69E9840];
  draggingCopy = dragging;
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (_ShareSheetSolariumEnabled())
  {
    if (userInterfaceIdiom != 1)
    {
      if ([(UIActivityContentViewController *)self isPresentedInPopover])
      {
        activityCollectionView = [(UIActivityContentViewController *)self activityCollectionView];

        if (activityCollectionView == draggingCopy)
        {
          v8 = share_sheet_log();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            [(UIActivityContentViewController *)self isPresentedFromBottom];
            v9 = NSStringFromBOOL();
            v21 = 138412290;
            v22 = v9;
            _os_log_impl(&dword_18B359000, v8, OS_LOG_TYPE_DEFAULT, "scrollViewWillBeginDragging - isPresentedFromBottom:%@", &v21, 0xCu);
          }

          if ([(UIActivityContentViewController *)self isPresentedFromBottom])
          {
            [draggingCopy contentOffset];
            v11 = v10;
            [draggingCopy adjustedContentInset];
            v13 = v11 <= -v12;
          }

          else
          {
            [draggingCopy contentSize];
            v15 = v14;
            [draggingCopy bounds];
            v17 = v15 - v16;
            [draggingCopy contentInset];
            v19 = v18 + v17;
            [draggingCopy contentOffset];
            v13 = v20 >= v19;
          }

          [(UIActivityContentViewController *)self setIsAtScrollBoundary:v13];
        }
      }
    }
  }
}

- (void)didUpdateAirDropTransferWithChange:(id)change
{
  v22 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = changeCopy;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "did update airdrop transfer with change:%@", &v20, 0xCu);
  }

  [(UIActivityContentViewController *)self setActiveAirDropTransferChange:changeCopy];
  proxyIdentifier = [changeCopy proxyIdentifier];
  dataSource = [(UIActivityContentViewController *)self dataSource];
  airDropProxy = [dataSource airDropProxy];
  identifier = [airDropProxy identifier];
  v10 = identifier;
  if (identifier)
  {
    v11 = identifier;
  }

  else
  {
    v11 = proxyIdentifier;
  }

  v12 = v11;

  diffableDataSource = [(UIActivityContentViewController *)self diffableDataSource];
  v14 = [diffableDataSource indexPathForItemIdentifier:v12];

  activityCollectionView = [(UIActivityContentViewController *)self activityCollectionView];
  v16 = [activityCollectionView cellForItemAtIndexPath:v14];

  identifier2 = [v16 identifier];
  v18 = [identifier2 isEqual:proxyIdentifier];

  if (v18)
  {
    [(UIActivityContentViewController *)self _configureAirDropCell:v16 withChange:changeCopy];
  }

  else
  {
    v19 = share_sheet_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(UIActivityContentViewController *)v16 didUpdateAirDropTransferWithChange:proxyIdentifier, v19];
    }
  }
}

- (void)startPulsingActivity:(id)activity localizedTitle:(id)title
{
  v19 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  titleCopy = title;
  pulsingActivity = [(UIActivityContentViewController *)self pulsingActivity];

  if (pulsingActivity)
  {
    pulsingActivity2 = [(UIActivityContentViewController *)self pulsingActivity];
    [(UIActivityContentViewController *)self stopPulsingActivity:pulsingActivity2];
  }

  v10 = share_sheet_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = activityCopy;
    _os_log_impl(&dword_18B359000, v10, OS_LOG_TYPE_DEFAULT, "start pulsing activity:%@", &v17, 0xCu);
  }

  dataSource = [(UIActivityContentViewController *)self dataSource];
  v12 = [dataSource identifierForActivity:activityCopy];

  [(UIActivityContentViewController *)self setPulsingActivityIdentifier:v12];
  [(UIActivityContentViewController *)self setPulsingActivity:activityCopy];
  [(UIActivityContentViewController *)self setPulsingLocalizedTitle:titleCopy];
  diffableDataSource = [(UIActivityContentViewController *)self diffableDataSource];
  v14 = [diffableDataSource indexPathForItemIdentifier:v12];

  activityCollectionView = [(UIActivityContentViewController *)self activityCollectionView];
  v16 = [activityCollectionView cellForItemAtIndexPath:v14];

  [v16 setTitle:titleCopy];
  [v16 startPulsing];
}

- (void)stopPulsingActivity:(id)activity
{
  v17 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  pulsingActivity = [(UIActivityContentViewController *)self pulsingActivity];
  activityUUID = [pulsingActivity activityUUID];
  activityUUID2 = [activityCopy activityUUID];
  v8 = activityUUID;
  v9 = activityUUID2;
  v10 = v9;
  if (v8 == v9)
  {

LABEL_6:
    v12 = share_sheet_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = activityCopy;
      _os_log_impl(&dword_18B359000, v12, OS_LOG_TYPE_DEFAULT, "stop pulsing activity:%@", &v15, 0xCu);
    }

    pulsingActivity = [(UIActivityContentViewController *)self pulsingActivityIdentifier];
    [(UIActivityContentViewController *)self setPulsingActivityIdentifier:0];
    diffableDataSource = [(UIActivityContentViewController *)self diffableDataSource];
    v8 = [diffableDataSource indexPathForItemIdentifier:pulsingActivity];

    activityCollectionView = [(UIActivityContentViewController *)self activityCollectionView];
    v10 = [activityCollectionView cellForItemAtIndexPath:v8];

    if (v10)
    {
      [v10 stopPulsing];
      [(UIActivityContentViewController *)self _configureSharingAppCell:v10 itemIdentifier:pulsingActivity];
    }

    [(UIActivityContentViewController *)self setPulsingActivity:0];
    [(UIActivityContentViewController *)self setPulsingLocalizedTitle:0];
    goto LABEL_12;
  }

  if ((v8 != 0) != (v9 == 0))
  {
    v11 = [v8 isEqual:v9];

    if ((v11 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_6;
  }

LABEL_12:
LABEL_13:
}

- (void)setShowAllActions:(BOOL)actions
{
  if (self->_showAllActions != actions)
  {
    if (actions)
    {
      if ([(UIActivityContentViewController *)self _isOnlyCompactSize])
      {
        return;
      }
    }

    else if ([(UIActivityContentViewController *)self _isOnlyFullSize])
    {
      return;
    }

    self->_showAllActions = actions;

    [(UIActivityContentViewController *)self _updateContent:0];
  }
}

- (void)_updateContent:(BOOL)content
{
  _shouldShowCloseButton = [(UIActivityContentViewController *)self _shouldShowCloseButton];
  headerTitleView = [(UIActivityContentViewController *)self headerTitleView];
  [headerTitleView setHasCloseButton:_shouldShowCloseButton];

  viewModel = [(UIActivityContentViewController *)self viewModel];
  peopleSuggestionProxies = [viewModel peopleSuggestionProxies];

  viewModel2 = [(UIActivityContentViewController *)self viewModel];
  shareProxies = [viewModel2 shareProxies];

  viewModel3 = [(UIActivityContentViewController *)self viewModel];
  actionProxies = [viewModel3 actionProxies];

  viewModel4 = [(UIActivityContentViewController *)self viewModel];
  activitiesByUUID = [viewModel4 activitiesByUUID];
  viewModel5 = [(UIActivityContentViewController *)self viewModel];
  nearbyCountSlotID = [viewModel5 nearbyCountSlotID];
  viewModel6 = [(UIActivityContentViewController *)self viewModel];
  LOBYTE(v17) = content;
  -[UIActivityContentViewController _updateContentWithPeopleProxies:shareProxies:actionProxies:activitiesByUUID:nearbyCountSlotID:animated:reloadData:](self, "_updateContentWithPeopleProxies:shareProxies:actionProxies:activitiesByUUID:nearbyCountSlotID:animated:reloadData:", peopleSuggestionProxies, shareProxies, actionProxies, activitiesByUUID, nearbyCountSlotID, [viewModel6 updateProxiesWithAnimation], v17);
}

- (void)setHeroActionActivityTypes:(id)types
{
  typesCopy = types;
  if ([typesCopy count] >= 6)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot set more than %d hero action types", 5];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    v10 = v9;

    objc_exception_throw(v9);
  }

  v4 = [typesCopy copy];
  heroActionActivityTypes = self->_heroActionActivityTypes;
  self->_heroActionActivityTypes = v4;
}

- (id)airDropNodeForItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dataSource = [(UIActivityContentViewController *)self dataSource];
  v6 = [dataSource peopleProxyForIdentifier:identifierCopy];

  return v6;
}

- (id)titleForItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dataSource = [(UIActivityContentViewController *)self dataSource];
  v6 = [dataSource activityForIdentifier:identifierCopy];

  if (!v6 && (-[UIActivityContentViewController dataSource](self, "dataSource"), v7 = objc_claimAutoreleasedReturnValue(), [v7 shareProxyForIdentifier:identifierCopy], v6 = objc_claimAutoreleasedReturnValue(), v7, !v6) && (-[UIActivityContentViewController dataSource](self, "dataSource"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "actionProxyForIdentifier:", identifierCopy), v6 = objc_claimAutoreleasedReturnValue(), v8, !v6) || (-[UIActivityContentViewController _activityTitleForActivity:](self, "_activityTitleForActivity:", v6), (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v10 = share_sheet_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [UIActivityContentViewController titleForItemIdentifier:];
    }

    v9 = 0;
  }

  return v9;
}

- (id)_activityTitleForActivity:(id)activity
{
  activityCopy = activity;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    activityTitle = [activityCopy activityTitle];
    text = [activityTitle text];
  }

  else
  {
    _heroActionTitle = [activityCopy _heroActionTitle];
    v8 = [_heroActionTitle length];

    if (v8)
    {
      text = [activityCopy _heroActionTitle];
      goto LABEL_10;
    }

    activityTitle = [(UIActivityContentViewController *)self presenter];
    activityType = [activityCopy activityType];
    v10 = [activityTitle customTitleForActivityType:activityType];
    v11 = v10;
    if (v10)
    {
      activityTitle2 = v10;
    }

    else
    {
      activityTitle2 = [activityCopy activityTitle];
    }

    text = activityTitle2;
  }

LABEL_10:

  return text;
}

- (id)_sectionIdentifierForIndex:(int64_t)index
{
  currentSnapshot = [(UIActivityContentViewController *)self currentSnapshot];
  sectionIdentifiers = [currentSnapshot sectionIdentifiers];

  v6 = [sectionIdentifiers objectAtIndexedSubscript:index];

  return v6;
}

- (id)_footerTextForInformationalSectionIdentifier:(id)identifier
{
  v4 = [identifier componentsSeparatedByString:@"_"];
  lastObject = [v4 lastObject];
  if (lastObject)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:lastObject];
    if (v6)
    {
      dataSource = [(UIActivityContentViewController *)self dataSource];
      v8 = [dataSource actionProxyForIdentifier:v6];

      activityFooter = [v8 activityFooter];
      v10 = activityFooter;
      if (activityFooter)
      {
        _activityFooterText = activityFooter;
      }

      else
      {
        activity = [v8 activity];
        _activityFooterText = [activity _activityFooterText];
      }
    }

    else
    {
      _activityFooterText = 0;
    }
  }

  else
  {
    _activityFooterText = 0;
  }

  return _activityFooterText;
}

- (void)updateWithViewModel:(id)model
{
  modelCopy = model;
  v5 = share_sheet_log();
  v6 = share_sheet_log();
  v7 = os_signpost_id_make_with_pointer(v6, self);

  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18B359000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "UpdateContentView", " enableTelemetry=YES ", buf, 2u);
  }

  viewModel = [(UIActivityContentViewController *)self viewModel];
  metadataValues = [viewModel metadataValues];
  metadataValues2 = [modelCopy metadataValues];
  v11 = metadataValues;
  v12 = metadataValues2;
  v13 = v12;
  if (v11 == v12)
  {
    v14 = 1;
  }

  else if ((v11 != 0) == (v12 == 0))
  {
    v14 = 0;
  }

  else
  {
    v14 = [v11 isEqual:v12];
  }

  viewModel2 = [(UIActivityContentViewController *)self viewModel];
  urlRequests = [viewModel2 urlRequests];
  urlRequests2 = [modelCopy urlRequests];
  v18 = urlRequests;
  v19 = urlRequests2;
  v20 = v19;
  if (v18 == v19)
  {
    LOBYTE(v21) = 0;
  }

  else if ((v18 != 0) == (v19 == 0))
  {
    LOBYTE(v21) = 1;
  }

  else
  {
    v21 = [v18 isEqual:v19] ^ 1;
  }

  viewModel3 = [(UIActivityContentViewController *)self viewModel];
  urlSandboxExtensions = [viewModel3 urlSandboxExtensions];
  urlSandboxExtensions2 = [modelCopy urlSandboxExtensions];
  v25 = urlSandboxExtensions;
  v26 = urlSandboxExtensions2;
  v27 = v26;
  if (v25 == v26)
  {
    v28 = 1;
  }

  else if ((v25 != 0) == (v26 == 0))
  {
    v28 = 0;
  }

  else
  {
    v28 = [v25 isEqual:v26];
  }

  if (v14)
  {
    v29 = v21 | v28 ^ 1;
  }

  else
  {
    v29 = 1;
  }

  v112 = v29;
  viewModel4 = [(UIActivityContentViewController *)self viewModel];
  showOptions = [viewModel4 showOptions];
  showOptions2 = [modelCopy showOptions];

  viewModel5 = [(UIActivityContentViewController *)self viewModel];
  customOptionsTitle = [viewModel5 customOptionsTitle];
  customOptionsTitle2 = [modelCopy customOptionsTitle];
  v34 = customOptionsTitle;
  v35 = customOptionsTitle2;
  v36 = v35;
  if (v34 == v35)
  {
    v110 = 0;
  }

  else
  {
    if ((v34 != 0) == (v35 == 0))
    {
      v37 = 1;
    }

    else
    {
      v37 = [v34 isEqual:v35] ^ 1;
    }

    v110 = v37;
  }

  viewModel6 = [(UIActivityContentViewController *)self viewModel];
  showCustomHeaderButton = [viewModel6 showCustomHeaderButton];
  showCustomHeaderButton2 = [modelCopy showCustomHeaderButton];

  viewModel7 = [(UIActivityContentViewController *)self viewModel];
  customHeaderButtonTitle = [viewModel7 customHeaderButtonTitle];
  customHeaderButtonTitle2 = [modelCopy customHeaderButtonTitle];
  v42 = customHeaderButtonTitle;
  v43 = customHeaderButtonTitle2;
  v44 = v43;
  if (v42 == v43)
  {
    v107 = 0;
  }

  else
  {
    if ((v42 != 0) == (v43 == 0))
    {
      v45 = 1;
    }

    else
    {
      v45 = [v42 isEqual:v43] ^ 1;
    }

    v107 = v45;
  }

  viewModel8 = [(UIActivityContentViewController *)self viewModel];
  customHeaderButtonColor = [viewModel8 customHeaderButtonColor];
  customHeaderButtonColor2 = [modelCopy customHeaderButtonColor];
  v49 = customHeaderButtonColor;
  v50 = customHeaderButtonColor2;
  v51 = v50;
  v111 = v28;
  if (v49 == v50)
  {
    v104 = 0;
  }

  else
  {
    if ((v49 != 0) == (v50 == 0))
    {
      v52 = 1;
    }

    else
    {
      v52 = [v49 isEqual:v50] ^ 1;
    }

    v104 = v52;
  }

  viewModel9 = [(UIActivityContentViewController *)self viewModel];
  showHeaderSpecialization = [viewModel9 showHeaderSpecialization];
  showHeaderSpecialization2 = [modelCopy showHeaderSpecialization];

  viewModel10 = [(UIActivityContentViewController *)self viewModel];
  isCollaborative = [viewModel10 isCollaborative];
  isCollaborative2 = [modelCopy isCollaborative];

  viewModel11 = [(UIActivityContentViewController *)self viewModel];
  showCollaborationOptions = [viewModel11 showCollaborationOptions];
  showCollaborationOptions2 = [modelCopy showCollaborationOptions];

  viewModel12 = [(UIActivityContentViewController *)self viewModel];
  collaborationModeTitle = [viewModel12 collaborationModeTitle];
  collaborationModeTitle2 = [modelCopy collaborationModeTitle];
  v63 = collaborationModeTitle;
  v64 = collaborationModeTitle2;
  v65 = v64;
  if (v63 == v64)
  {
    v66 = 1;
  }

  else if ((v63 != 0) == (v64 == 0))
  {
    v66 = 0;
  }

  else
  {
    v66 = [v63 isEqual:v64];
  }

  if ((v66 & 1) == 0)
  {
    [(UIActivityContentViewController *)self setHeaderLinkActionsNeedsUpdate:1];
  }

  v67 = showOptions ^ showOptions2;
  v68 = isCollaborative ^ isCollaborative2;
  v109 = showCollaborationOptions ^ showCollaborationOptions2;
  viewModel13 = [(UIActivityContentViewController *)self viewModel];
  collaborationFooterViewModel = [viewModel13 collaborationFooterViewModel];
  collaborationFooterViewModel2 = [modelCopy collaborationFooterViewModel];
  v72 = collaborationFooterViewModel;
  v73 = collaborationFooterViewModel2;
  v74 = v73;
  if (v72 == v73)
  {
    LOBYTE(v75) = 0;
  }

  else if ((v72 != 0) == (v73 == 0))
  {
    LOBYTE(v75) = 1;
  }

  else
  {
    v75 = [v72 isEqual:v73] ^ 1;
  }

  if ((v67 | v110 | showCustomHeaderButton ^ showCustomHeaderButton2 | v107 | v104 | showHeaderSpecialization ^ showHeaderSpecialization2 | v68 | v109))
  {
    v76 = 1;
  }

  else
  {
    v76 = v66 ^ 1 | v75;
  }

  viewModel14 = [(UIActivityContentViewController *)self viewModel];
  customViewController = [viewModel14 customViewController];
  customViewController2 = [modelCopy customViewController];

  customViewControllerVerticalInsetWrapper = [modelCopy customViewControllerVerticalInsetWrapper];

  if (customViewControllerVerticalInsetWrapper)
  {
    customViewControllerVerticalInsetWrapper2 = [modelCopy customViewControllerVerticalInsetWrapper];
    [customViewControllerVerticalInsetWrapper2 floatValue];
    v83 = v82;
    layoutSpec = [(UIActivityContentViewController *)self layoutSpec];
    [layoutSpec setCustomViewVerticalInset:v83];
  }

  customViewControllerSectionHeightWrapper = [modelCopy customViewControllerSectionHeightWrapper];

  if (customViewControllerSectionHeightWrapper)
  {
    customViewControllerSectionHeightWrapper2 = [modelCopy customViewControllerSectionHeightWrapper];
    [customViewControllerSectionHeightWrapper2 floatValue];
    v88 = v87;
    layoutSpec2 = [(UIActivityContentViewController *)self layoutSpec];
    [layoutSpec2 setCustomViewSectionHeight:v88];
  }

  [(UIActivityContentViewController *)self setViewModel:modelCopy];
  if ((v111 & 1) == 0 && [(UIActivityContentViewController *)self isRemote])
  {
    urlSandboxExtensions3 = [modelCopy urlSandboxExtensions];
    urlRequests3 = [modelCopy urlRequests];
    [(UIActivityContentViewController *)self _consumeURLSandboxExtensions:urlSandboxExtensions3 forURLRequests:urlRequests3];
  }

  [(UIActivityContentViewController *)self _updateShowAllActions];
  if (v76)
  {
    [(UIActivityContentViewController *)self _updateHeaderLinkViewAction];
  }

  if (v112)
  {
    [(UIActivityContentViewController *)self _updateHeaderMetadataValues];
  }

  if (customViewController != customViewController2)
  {
    [(UIActivityContentViewController *)self _updateCustomViewContent];
  }

  applicationActivityTypes = [modelCopy applicationActivityTypes];
  dataSourceManager = [(UIActivityContentViewController *)self dataSourceManager];
  [dataSourceManager setApplicationActivityTypes:applicationActivityTypes];

  peopleSuggestionProxies = [modelCopy peopleSuggestionProxies];
  shareProxies = [modelCopy shareProxies];
  actionProxies = [modelCopy actionProxies];
  activitiesByUUID = [modelCopy activitiesByUUID];
  nearbyCountSlotID = [modelCopy nearbyCountSlotID];
  updateProxiesWithAnimation = [modelCopy updateProxiesWithAnimation];
  LOBYTE(v100) = [modelCopy reloadData];
  [(UIActivityContentViewController *)self _updateContentWithPeopleProxies:peopleSuggestionProxies shareProxies:shareProxies actionProxies:actionProxies activitiesByUUID:activitiesByUUID nearbyCountSlotID:nearbyCountSlotID animated:updateProxiesWithAnimation reloadData:v100];
}

- (void)_consumeURLSandboxExtensions:(id)extensions forURLRequests:(id)requests
{
  v30 = *MEMORY[0x1E69E9840];
  extensionsCopy = extensions;
  requestsCopy = requests;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [extensionsCopy countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(extensionsCopy);
        }

        [*(*(&v19 + 1) + 8 * v11) bytes];
        v12 = sandbox_extension_consume();
        if (v12 == -1)
        {
          sandboxExtensionHandles = share_sheet_log();
          if (os_log_type_enabled(sandboxExtensionHandles, OS_LOG_TYPE_ERROR))
          {
            v16 = *__error();
            v17 = __error();
            v18 = strerror(*v17);
            *buf = 138412802;
            v24 = requestsCopy;
            v25 = 1024;
            v26 = v16;
            v27 = 2080;
            v28 = v18;
            _os_log_error_impl(&dword_18B359000, sandboxExtensionHandles, OS_LOG_TYPE_ERROR, "Failed to extend sandbox for one of the URL requests %@ with error %d (%s)", buf, 0x1Cu);
          }
        }

        else
        {
          v13 = v12;
          sandboxExtensionHandles = [(UIActivityContentViewController *)self sandboxExtensionHandles];
          v15 = [MEMORY[0x1E696AD98] numberWithLongLong:v13];
          [sandboxExtensionHandles addObject:v15];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [extensionsCopy countByEnumeratingWithState:&v19 objects:v29 count:16];
    }

    while (v9);
  }
}

- (void)reloadMetadata:(id)metadata
{
  metadataCopy = metadata;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  [(UIActivityContentViewController *)self _updateHeaderMetadataValues];
  customViewController = [(UIActivityContentViewController *)self customViewController];
  if (customViewController)
  {
    v5 = customViewController;
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      title = [metadataCopy title];
      navigationItem = [(UIActivityContentViewController *)self navigationItem];
      [navigationItem setTitle:title];
    }
  }
}

- (void)reloadContent
{
  currentSnapshot = [(UIActivityContentViewController *)self currentSnapshot];
  if (currentSnapshot)
  {
    v5 = currentSnapshot;
    diffableDataSource = [(UIActivityContentViewController *)self diffableDataSource];
    [diffableDataSource applySnapshotUsingReloadData:v5];

    currentSnapshot = v5;
  }
}

- (void)reloadActivity:(id)activity
{
  v13[1] = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  diffableDataSource = [(UIActivityContentViewController *)self diffableDataSource];
  activityUUID = [activityCopy activityUUID];
  v7 = [diffableDataSource indexPathForItemIdentifier:activityUUID];

  if (v7)
  {
    currentSnapshot = [(UIActivityContentViewController *)self currentSnapshot];
    activityUUID2 = [activityCopy activityUUID];
    v13[0] = activityUUID2;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    [currentSnapshot reloadItemsWithIdentifiers:v10];

    diffableDataSource2 = [(UIActivityContentViewController *)self diffableDataSource];
    currentSnapshot2 = [(UIActivityContentViewController *)self currentSnapshot];
    [diffableDataSource2 applySnapshotUsingReloadData:currentSnapshot2];
  }
}

- (LPLinkMetadata)headerMetadata
{
  headerLinkView = [(UIActivityContentViewController *)self headerLinkView];
  metadata = [headerLinkView metadata];

  return metadata;
}

- (void)_updateHeaderSize
{
  headerLinkView = [(UIActivityContentViewController *)self headerLinkView];
  if (headerLinkView)
  {
    v6 = headerLinkView;
    headerLinkView2 = [(UIActivityContentViewController *)self headerLinkView];
    [headerLinkView2 setDelegate:0];

    [(UIActivityContentViewController *)self setHeaderLinkView:0];
    headerTitleView = [(UIActivityContentViewController *)self headerTitleView];
    [headerTitleView removeFromSuperview];

    [(UIActivityContentViewController *)self setHeaderTitleView:0];
    [(UIActivityContentViewController *)self _configureHeaderViewIfNeeded];
    headerLinkView = v6;
  }
}

- (void)_updateHeaderLinkViewAction
{
  v90 = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  _canShowOptions = [(UIActivityContentViewController *)self _canShowOptions];
  [(UIActivityContentViewController *)self _configureHeaderViewIfNeeded];
  v6 = share_sheet_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (_canShowOptions)
    {
      v7 = @"Options link";
    }

    else
    {
      viewModel = [(UIActivityContentViewController *)self viewModel];
      showCustomHeaderButton = [viewModel showCustomHeaderButton];
      v7 = @"no button";
      if (showCustomHeaderButton)
      {
        v7 = @"custom header button";
      }
    }

    *buf = 138412290;
    v89 = v7;
    _os_log_impl(&dword_18B359000, v6, OS_LOG_TYPE_DEFAULT, "updating header action to %@", buf, 0xCu);
    if ((_canShowOptions & 1) == 0)
    {
    }
  }

  if ((_canShowOptions & 1) != 0 || (-[UIActivityContentViewController viewModel](self, "viewModel"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 supportsCollaboration], v9, v10))
  {
    [(UIActivityContentViewController *)self _updateHeaderLinkViewSizeClass];
    viewModel2 = [(UIActivityContentViewController *)self viewModel];
    supportsCollaboration = [viewModel2 supportsCollaboration];

    if (!supportsCollaboration)
    {
      viewModel3 = [(UIActivityContentViewController *)self viewModel];
      customOptionsTitle = [viewModel3 customOptionsTitle];
      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 3221225472;
      v76[2] = __62__UIActivityContentViewController__updateHeaderLinkViewAction__block_invoke_5;
      v76[3] = &unk_1E71F95A8;
      v26 = &v77;
      objc_copyWeak(&v77, &location);
      v27 = UIActivityContentHelperOptionsButtonAction(_canShowOptions, customOptionsTitle, v76);

      headerLinkView = [(UIActivityContentViewController *)self headerLinkView];
      v87 = v27;
      v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v87 count:1];
      [headerLinkView _setButtonActions:v29];

      headerLinkView2 = [(UIActivityContentViewController *)self headerLinkView];
      [headerLinkView2 _setAction:0 withText:&stru_1EFE999E0];
      goto LABEL_44;
    }

    if ([(UIActivityContentViewController *)self headerLinkActionsNeedsUpdate])
    {
      viewModel4 = [(UIActivityContentViewController *)self viewModel];
      supportsSendCopy = [viewModel4 supportsSendCopy];

      [(UIActivityContentViewController *)self viewModel];
      if (supportsSendCopy)
        v15 = {;
        isCollaborative = [v15 isCollaborative];
        viewModel5 = [(UIActivityContentViewController *)self viewModel];
        collaborationModeTitle = [viewModel5 collaborationModeTitle];
        v84[0] = MEMORY[0x1E69E9820];
        v84[1] = 3221225472;
        v84[2] = __62__UIActivityContentViewController__updateHeaderLinkViewAction__block_invoke;
        v84[3] = &unk_1E71F95A8;
        objc_copyWeak(&v85, &location);
        v19 = UIActivityContentHelperCollaborationButtonAction(isCollaborative, collaborationModeTitle, v84);

        viewModel6 = [(UIActivityContentViewController *)self viewModel];
        LODWORD(v15) = [viewModel6 isCollaborative];
        v82[0] = MEMORY[0x1E69E9820];
        v82[1] = 3221225472;
        v82[2] = __62__UIActivityContentViewController__updateHeaderLinkViewAction__block_invoke_2;
        v82[3] = &unk_1E71F95A8;
        objc_copyWeak(&v83, &location);
        v21 = UIActivityContentHelperCopyButtonAction(v15, v82);

        v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v19, v21, 0}];
        headerLinkView3 = [(UIActivityContentViewController *)self headerLinkView];
        [headerLinkView3 _setButtonActions:v22];

        headerLinkView4 = [(UIActivityContentViewController *)self headerLinkView];
        [headerLinkView4 _setOverrideActionButtonColor:0];

        objc_destroyWeak(&v83);
        objc_destroyWeak(&v85);
      }

      else
        v45 = {;
        collaborationModeTitle2 = [v45 collaborationModeTitle];
        v47 = UIActivityContentHelperCollaborationSubtitle(collaborationModeTitle2);

        headerLinkView5 = [(UIActivityContentViewController *)self headerLinkView];
        [headerLinkView5 _setOverrideSubtitle:v47];
      }

      [(UIActivityContentViewController *)self setHeaderLinkActionsNeedsUpdate:0];
    }

    viewModel7 = [(UIActivityContentViewController *)self viewModel];
    isCollaborative2 = [viewModel7 isCollaborative];

    if (!isCollaborative2)
    {
      headerLinkView6 = [(UIActivityContentViewController *)self headerLinkView];
      [headerLinkView6 _setCollaborationFooterViewModel:0 action:0];

      [(UIActivityContentViewController *)self setCollaborationFooterViewModel:0];
LABEL_42:
      if (!_canShowOptions)
      {
LABEL_45:
        v72 = objc_alloc_init(getLPLinkRendererSizeClassParametersClass());
        [v72 setAlignButtonWithCaptionTextLeadingEdge:1];
        headerLinkView7 = [(UIActivityContentViewController *)self headerLinkView];
        [headerLinkView7 _setSizeClassParameters:v72];

        goto LABEL_46;
      }

      viewModel8 = [(UIActivityContentViewController *)self viewModel];
      customOptionsTitle2 = [viewModel8 customOptionsTitle];
      v78[0] = MEMORY[0x1E69E9820];
      v78[1] = 3221225472;
      v78[2] = __62__UIActivityContentViewController__updateHeaderLinkViewAction__block_invoke_4;
      v78[3] = &unk_1E71F95A8;
      v26 = &v79;
      objc_copyWeak(&v79, &location);
      v27 = UIActivityContentHelperOptionsButtonAction(1, customOptionsTitle2, v78);

      headerLinkView8 = [(UIActivityContentViewController *)self headerLinkView];
      [headerLinkView8 _setSecondaryButtonAction:v27];

      headerLinkView2 = [(UIActivityContentViewController *)self headerLinkView];
      [headerLinkView2 _setAction:0 withText:&stru_1EFE999E0];
LABEL_44:

      objc_destroyWeak(v26);
      goto LABEL_45;
    }

    viewModel9 = [(UIActivityContentViewController *)self viewModel];
    collaborationFooterViewModel = [viewModel9 collaborationFooterViewModel];

    collaborationFooterViewModel2 = [(UIActivityContentViewController *)self collaborationFooterViewModel];
    if (![collaborationFooterViewModel isEqual:collaborationFooterViewModel2])
    {
      goto LABEL_32;
    }

    optionsSummary = [collaborationFooterViewModel optionsSummary];
    collaborationFooterViewModel3 = [(UIActivityContentViewController *)self collaborationFooterViewModel];
    optionsSummary2 = [collaborationFooterViewModel3 optionsSummary];
    headerLinkView4 = optionsSummary;
    v57 = optionsSummary2;
    v58 = v57;
    if (headerLinkView4 == v57)
    {
    }

    else
    {
      if ((headerLinkView4 != 0) == (v57 == 0))
      {

LABEL_31:
LABEL_32:

        goto LABEL_33;
      }

      v59 = [headerLinkView4 isEqual:v57];

      if (!v59)
      {
        goto LABEL_31;
      }
    }

    canShowShareOptions = [(UIActivityContentViewController *)self canShowShareOptions];
    viewModel10 = [(UIActivityContentViewController *)self viewModel];
    showCollaborationOptions = [viewModel10 showCollaborationOptions];

    if (((canShowShareOptions ^ showCollaborationOptions) & 1) == 0)
    {
LABEL_41:

      goto LABEL_42;
    }

LABEL_33:
    viewModel11 = [(UIActivityContentViewController *)self viewModel];
    -[UIActivityContentViewController setCanShowShareOptions:](self, "setCanShowShareOptions:", [viewModel11 showCollaborationOptions]);

    [(UIActivityContentViewController *)self setCollaborationFooterViewModel:collaborationFooterViewModel];
    if (collaborationFooterViewModel)
    {
      viewModel12 = [(UIActivityContentViewController *)self viewModel];
      showCollaborationOptions2 = [viewModel12 showCollaborationOptions];
    }

    else
    {
      showCollaborationOptions2 = 0;
    }

    headerLinkView9 = [(UIActivityContentViewController *)self headerLinkView];
    if (showCollaborationOptions2)
    {
      v80[0] = MEMORY[0x1E69E9820];
      v80[1] = 3221225472;
      v80[2] = __62__UIActivityContentViewController__updateHeaderLinkViewAction__block_invoke_3;
      v80[3] = &unk_1E71F95A8;
      headerLinkView4 = &v81;
      objc_copyWeak(&v81, &location);
      v68 = v80;
    }

    else
    {
      v68 = 0;
    }

    [headerLinkView9 _setCollaborationFooterViewModel:collaborationFooterViewModel action:v68];

    if (showCollaborationOptions2)
    {
      objc_destroyWeak(headerLinkView4);
    }

    goto LABEL_41;
  }

  viewModel13 = [(UIActivityContentViewController *)self viewModel];
  showCustomHeaderButton2 = [viewModel13 showCustomHeaderButton];

  if (showCustomHeaderButton2)
  {
    headerLinkView10 = [(UIActivityContentViewController *)self headerLinkView];
    [headerLinkView10 _setPreferredSizeClass:12];

    headerLinkView11 = [(UIActivityContentViewController *)self headerLinkView];
    v74[0] = MEMORY[0x1E69E9820];
    v74[1] = 3221225472;
    v74[2] = __62__UIActivityContentViewController__updateHeaderLinkViewAction__block_invoke_6;
    v74[3] = &unk_1E71F95A8;
    objc_copyWeak(&v75, &location);
    viewModel14 = [(UIActivityContentViewController *)self viewModel];
    customHeaderButtonTitle = [viewModel14 customHeaderButtonTitle];
    [headerLinkView11 _setAction:v74 withAttributedText:customHeaderButtonTitle buttonType:1];

    headerLinkView12 = [(UIActivityContentViewController *)self headerLinkView];
    viewModel15 = [(UIActivityContentViewController *)self viewModel];
    customHeaderButtonColor = [viewModel15 customHeaderButtonColor];
    [headerLinkView12 _setOverrideActionButtonColor:customHeaderButtonColor];

    objc_destroyWeak(&v75);
  }

  else
  {
    _headingSizeClass = [(UIActivityContentViewController *)self _headingSizeClass];
    headerLinkView13 = [(UIActivityContentViewController *)self headerLinkView];
    [headerLinkView13 _setPreferredSizeClass:_headingSizeClass];

    headerLinkView14 = [(UIActivityContentViewController *)self headerLinkView];
    [headerLinkView14 _setButtonActions:0];

    headerLinkView15 = [(UIActivityContentViewController *)self headerLinkView];
    [headerLinkView15 _setAction:0 withText:&stru_1EFE999E0];

    headerLinkView16 = [(UIActivityContentViewController *)self headerLinkView];
    [headerLinkView16 _setOverrideActionButtonColor:0];
  }

LABEL_46:
  objc_destroyWeak(&location);
}

void __62__UIActivityContentViewController__updateHeaderLinkViewAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained presenter];
  [v1 didSelectCollaborativeAction];

  v2 = [WeakRetained viewModel];
  v3 = [v2 isModeSwitchDisabled];

  if (v3)
  {
    [WeakRetained setHeaderLinkActionsNeedsUpdate:1];
    [WeakRetained _updateHeaderLinkViewAction];
  }
}

void __62__UIActivityContentViewController__updateHeaderLinkViewAction__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained presenter];
  [v1 didSelectSendCopyAction];

  v2 = [WeakRetained viewModel];
  v3 = [v2 isModeSwitchDisabled];

  if (v3)
  {
    [WeakRetained setHeaderLinkActionsNeedsUpdate:1];
    [WeakRetained _updateHeaderLinkViewAction];
  }
}

void __62__UIActivityContentViewController__updateHeaderLinkViewAction__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained presenter];
  [v1 handleCollaborationOptions];
}

void __62__UIActivityContentViewController__updateHeaderLinkViewAction__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained presenter];
  [v1 handleOptions];
}

void __62__UIActivityContentViewController__updateHeaderLinkViewAction__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained presenter];
  [v1 handleOptions];
}

void __62__UIActivityContentViewController__updateHeaderLinkViewAction__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained presenter];
  [v1 handleCustomHeaderButton];
}

- (unint64_t)_headingSizeClass
{
  viewModel = [(UIActivityContentViewController *)self viewModel];
  if ([viewModel showCustomHeaderButton])
  {
    goto LABEL_4;
  }

  viewModel2 = [(UIActivityContentViewController *)self viewModel];
  if ([viewModel2 supportsCollaboration])
  {

LABEL_4:
LABEL_5:
    v5 = 12;
    goto LABEL_6;
  }

  viewModel3 = [(UIActivityContentViewController *)self viewModel];
  showHeaderSpecialization = [viewModel3 showHeaderSpecialization];

  if (showHeaderSpecialization)
  {
    goto LABEL_5;
  }

  v5 = 2;
LABEL_6:
  _canShowOptions = [(UIActivityContentViewController *)self _canShowOptions];
  if ((_ShareSheetSolariumEnabled() | _canShowOptions))
  {
    return 12;
  }

  else
  {
    return v5;
  }
}

- (void)_updateHeaderLinkViewSizeClass
{
  _headingSizeClass = [(UIActivityContentViewController *)self _headingSizeClass];
  headerLinkView = [(UIActivityContentViewController *)self headerLinkView];
  [headerLinkView _setPreferredSizeClass:_headingSizeClass];
}

- (void)_updateCustomViewContent
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  customViewController = [(UIActivityContentViewController *)self customViewController];

  if (!customViewController || userInterfaceIdiom == 1)
  {
    return;
  }

  presentingViewController = [(UIActivityContentViewController *)self presentingViewController];
  v7 = ~[presentingViewController supportedInterfaceOrientations];

  v8 = _ShareSheetCachedActiveInterfaceOrientation() - 3;
  v10 = (v7 & 0x18) == 0 && v8 < 0xFFFFFFFFFFFFFFFELL;
  _shouldShowCloseButton = [(UIActivityContentViewController *)self _shouldShowCloseButton];
  [(UIActivityContentViewController *)self _configureHeaderViewIfNeeded];
  [(UIActivityContentViewController *)self _configureCollectionViewIfNeeded];
  if (v10)
  {
    v12 = 1;
    [(UIActivityContentViewController *)self setPhotosLandscapeMode:1];
    headerTitleView = [(UIActivityContentViewController *)self headerTitleView];
    [headerTitleView setPhotosCarouselMode:1];

    cancelButton = [(UIActivityContentViewController *)self cancelButton];
    navigationItem = [(UIActivityContentViewController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:cancelButton];

    nextButton = [(UIActivityContentViewController *)self nextButton];
    navigationItem2 = [(UIActivityContentViewController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:nextButton];
  }

  else
  {
    [(UIActivityContentViewController *)self setPhotosLandscapeMode:0];
    headerTitleView2 = [(UIActivityContentViewController *)self headerTitleView];
    [headerTitleView2 setPhotosCarouselMode:0];

    if (!_shouldShowCloseButton)
    {
      v12 = 2;
      goto LABEL_24;
    }

    isCloseButtonOnLeadingEdge = [(UIActivityContentViewController *)self isCloseButtonOnLeadingEdge];
    if (isCloseButtonOnLeadingEdge)
    {
      closeButton = 0;
    }

    else
    {
      closeButton = [(UIActivityContentViewController *)self closeButton];
    }

    navigationItem3 = [(UIActivityContentViewController *)self navigationItem];
    [navigationItem3 setRightBarButtonItem:closeButton];

    if (!isCloseButtonOnLeadingEdge)
    {
    }

    isCloseButtonOnLeadingEdge2 = [(UIActivityContentViewController *)self isCloseButtonOnLeadingEdge];
    v23 = isCloseButtonOnLeadingEdge2;
    if (isCloseButtonOnLeadingEdge2)
    {
      nextButton = [(UIActivityContentViewController *)self closeButton];
    }

    else
    {
      nextButton = 0;
    }

    navigationItem4 = [(UIActivityContentViewController *)self navigationItem];
    [navigationItem4 setLeftBarButtonItem:nextButton];

    v12 = 2;
    if (!v23)
    {
      goto LABEL_24;
    }
  }

LABEL_24:
  defaultConfiguration = [MEMORY[0x1E69DC810] defaultConfiguration];
  [defaultConfiguration setContentInsetsReference:v12];
  activityCollectionView = [(UIActivityContentViewController *)self activityCollectionView];
  collectionViewLayout = [activityCollectionView collectionViewLayout];
  [collectionViewLayout setConfiguration:defaultConfiguration];

  [(UIActivityContentViewController *)self preferredContentSize];
  if (v27 > 0.0)
  {
    [(UIActivityContentViewController *)self preferredContentSize];
    v30 = v31;
  }

  else
  {
    view = [(UIActivityContentViewController *)self view];
    [view bounds];
    v30 = v29;
  }

  dataSource = [(UIActivityContentViewController *)self dataSource];
  createChangeRequestFromCurrentState = [dataSource createChangeRequestFromCurrentState];

  [createChangeRequestFromCurrentState setAnimated:v10];
  [createChangeRequestFromCurrentState setExcludeSectionTypes:{-[UIActivityContentViewController currentSectionTypesToExclude](self, "currentSectionTypesToExclude")}];
  layoutSpec = [(UIActivityContentViewController *)self layoutSpec];
  [createChangeRequestFromCurrentState setTopActionsMaximumCount:{objc_msgSend(layoutSpec, "numberOfHorizontalItemsPerGroupForContentWidth:", v30)}];

  dataSourceManager = [(UIActivityContentViewController *)self dataSourceManager];
  [dataSourceManager updateWithChangeRequest:createChangeRequestFromCurrentState];
}

- (void)_updateContentWithPeopleProxies:(id)proxies shareProxies:(id)shareProxies actionProxies:(id)actionProxies activitiesByUUID:(id)d nearbyCountSlotID:(id)iD animated:(BOOL)animated reloadData:(BOOL)data
{
  animatedCopy = animated;
  dataCopy2 = data;
  proxiesCopy = proxies;
  shareProxiesCopy = shareProxies;
  actionProxiesCopy = actionProxies;
  dCopy = d;
  iDCopy = iD;
  if (self->_didLayout)
  {
    [(UIActivityContentViewController *)self _configureHeaderViewIfNeeded];
    [(UIActivityContentViewController *)self _configureCollectionViewIfNeeded];
    [(UIActivityContentViewController *)self preferredContentSize];
    if (v21 > 0.0)
    {
      [(UIActivityContentViewController *)self preferredContentSize];
      v24 = v25;
    }

    else
    {
      view = [(UIActivityContentViewController *)self view];
      [view bounds];
      v24 = v23;
    }

    if (_ShareSheetSolariumEnabled())
    {
      currentDevice = [MEMORY[0x1E69DC938] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      v28 = _ShareSheetCachedActiveInterfaceOrientation() - 3;
      if (userInterfaceIdiom)
      {
        v29 = 1;
      }

      else
      {
        v29 = v28 >= 2;
      }

      v30 = !v29;
      activityCollectionView = [(UIActivityContentViewController *)self activityCollectionView];
      [activityCollectionView contentSize];
      if (v32 > 0.0)
      {
        activityCollectionView2 = [(UIActivityContentViewController *)self activityCollectionView];
        [activityCollectionView2 contentSize];
        activityCollectionView3 = [(UIActivityContentViewController *)self activityCollectionView];
        [activityCollectionView3 bounds];
        [(UIActivityContentViewController *)self activityCollectionView];
        v33 = v54 = v30;
        [v33 adjustedContentInset];
        [(UIActivityContentViewController *)self activityCollectionView];
        v34 = iDCopy;
        v35 = dCopy;
        v36 = actionProxiesCopy;
        v37 = shareProxiesCopy;
        v38 = proxiesCopy;
        v40 = v39 = animatedCopy;
        [v40 adjustedContentInset];

        animatedCopy = v39;
        proxiesCopy = v38;
        shareProxiesCopy = v37;
        actionProxiesCopy = v36;
        dCopy = v35;
        iDCopy = v34;

        v30 = v54;
      }

      if (v30)
      {
        v41 = 1;
      }

      else
      {
        v41 = [(UIActivityContentViewController *)self isCompactSize]^ 1;
      }

      dataCopy2 = data;
      activityCollectionView4 = [(UIActivityContentViewController *)self activityCollectionView];
      [activityCollectionView4 setScrollEnabled:v41];
    }

    v43 = +[SHSheetContentDataSourceChangeRequest changeRequestForPeopleProxies:shareProxies:actionProxies:nearbyCountSlotID:activitiesByUUID:](SHSheetContentDataSourceChangeRequest, "changeRequestForPeopleProxies:shareProxies:actionProxies:nearbyCountSlotID:activitiesByUUID:", proxiesCopy, shareProxiesCopy, actionProxiesCopy, [iDCopy unsignedIntValue], dCopy);
    [v43 setExcludeSectionTypes:{-[UIActivityContentViewController currentSectionTypesToExclude](self, "currentSectionTypesToExclude")}];
    [v43 setAnimated:animatedCopy];
    [v43 setForceReload:dataCopy2];
    layoutSpec = [(UIActivityContentViewController *)self layoutSpec];
    [v43 setTopActionsMaximumCount:{objc_msgSend(layoutSpec, "numberOfHorizontalItemsPerGroupForContentWidth:", v24)}];

    dataSourceManager = [(UIActivityContentViewController *)self dataSourceManager];

    if (!dataSourceManager)
    {
      v46 = [SHSheetContentDataSourceManager alloc];
      applicationActivityTypes = [(UIActivityContentViewController *)self applicationActivityTypes];
      heroActionActivityTypes = [(UIActivityContentViewController *)self heroActionActivityTypes];
      v49 = [(SHSheetContentDataSourceManager *)v46 initWithApplicationActivityTypes:applicationActivityTypes heroActionActivityTypes:heroActionActivityTypes];
      [(UIActivityContentViewController *)self setDataSourceManager:v49];

      dataSourceManager2 = [(UIActivityContentViewController *)self dataSourceManager];
      [dataSourceManager2 setDelegate:self];
    }

    dataSourceManager3 = [(UIActivityContentViewController *)self dataSourceManager];
    [dataSourceManager3 updateWithChangeRequest:v43];
  }

  else
  {
    objc_initWeak(&location, self);
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __149__UIActivityContentViewController__updateContentWithPeopleProxies_shareProxies_actionProxies_activitiesByUUID_nearbyCountSlotID_animated_reloadData___block_invoke;
    v55[3] = &unk_1E71FA068;
    objc_copyWeak(&v61, &location);
    v56 = proxiesCopy;
    v57 = shareProxiesCopy;
    v58 = actionProxiesCopy;
    v59 = dCopy;
    v60 = iDCopy;
    v62 = animatedCopy;
    dataCopy3 = data;
    [(UIActivityContentViewController *)self setPendingUpdate:v55];

    objc_destroyWeak(&v61);
    objc_destroyWeak(&location);
  }
}

void __149__UIActivityContentViewController__updateContentWithPeopleProxies_shareProxies_actionProxies_activitiesByUUID_nearbyCountSlotID_animated_reloadData___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  LOBYTE(v2) = *(a1 + 81);
  [WeakRetained _updateContentWithPeopleProxies:*(a1 + 32) shareProxies:*(a1 + 40) actionProxies:*(a1 + 48) activitiesByUUID:*(a1 + 56) nearbyCountSlotID:*(a1 + 64) animated:*(a1 + 80) reloadData:v2];
}

- (BOOL)_canShowOptions
{
  viewModel = [(UIActivityContentViewController *)self viewModel];
  if ([viewModel showOptions])
  {
    heroActionActivityTypes = [(UIActivityContentViewController *)self heroActionActivityTypes];
    if ([heroActionActivityTypes count])
    {
      viewModel2 = [(UIActivityContentViewController *)self viewModel];
      isSharingExpanded = [viewModel2 isSharingExpanded];
    }

    else
    {
      isSharingExpanded = 1;
    }
  }

  else
  {
    isSharingExpanded = 0;
  }

  return isSharingExpanded;
}

- (void)dataSourceManager:(id)manager didPublishDataSourceWithChangeDetails:(id)details
{
  location[3] = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  detailsCopy = details;
  if (([detailsCopy snapshotChanged] & 1) != 0 || (objc_msgSend(detailsCopy, "airDropBadgeChanged") & 1) != 0 || (objc_msgSend(detailsCopy, "modifiedIdentifiers"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v8))
  {
    dataSource = [managerCopy dataSource];
    [dataSource logCurrentState];
    dataSource2 = [managerCopy dataSource];
    diffableSnapshot = [dataSource2 diffableSnapshot];

    if (([detailsCopy sectionsChanged] & 1) != 0 || objc_msgSend(detailsCopy, "peopleCountChanged"))
    {
      presentedViewController = [(UIActivityContentViewController *)self presentedViewController];
      v11 = presentedViewController == 0;
    }

    else
    {
      v11 = 0;
    }

    if ([detailsCopy forceReload])
    {
      LOBYTE(v44) = 0;
    }

    else
    {
      diffableDataSource = [(UIActivityContentViewController *)self diffableDataSource];
      snapshot = [diffableDataSource snapshot];
      if (snapshot)
      {
        v44 = [detailsCopy animateDifferences] | v11;
      }

      else
      {
        LOBYTE(v44) = 0;
      }
    }

    forceReload = [detailsCopy forceReload];
    if ([detailsCopy peopleCountChanged])
    {
      [(UIActivityContentViewController *)self setIgnorePersonTap:1];
      objc_initWeak(location, self);
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __91__UIActivityContentViewController_dataSourceManager_didPublishDataSourceWithChangeDetails___block_invoke;
      v48[3] = &unk_1E71F95A8;
      objc_copyWeak(&v49, location);
      v15 = MEMORY[0x18CFF58E0](v48);
      activeAirDropTransferChange = [(UIActivityContentViewController *)self activeAirDropTransferChange];
      airDropProxy = [dataSource airDropProxy];
      identifier = [airDropProxy identifier];
      proxyIdentifier = [activeAirDropTransferChange proxyIdentifier];
      v20 = [identifier isEqual:proxyIdentifier];

      if ((v20 & 1) == 0)
      {
        [(UIActivityContentViewController *)self setActiveAirDropTransferChange:0];
      }

      objc_destroyWeak(&v49);
      objc_destroyWeak(location);
    }

    else
    {
      v15 = 0;
    }

    v21 = share_sheet_log();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (forceReload)
    {
      if (v22)
      {
        LOWORD(location[0]) = 0;
        _os_log_impl(&dword_18B359000, v21, OS_LOG_TYPE_DEFAULT, "apply new snapshot using reload data", location, 2u);
      }

      diffableDataSource2 = [(UIActivityContentViewController *)self diffableDataSource];
      [diffableDataSource2 applySnapshotUsingReloadData:diffableSnapshot completion:v15];
LABEL_35:

      goto LABEL_36;
    }

    if (v22)
    {
      v24 = NSStringFromBOOL();
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v24;
      _os_log_impl(&dword_18B359000, v21, OS_LOG_TYPE_DEFAULT, "apply new snapshot with animation:%@", location, 0xCu);
    }

    diffableDataSource3 = [(UIActivityContentViewController *)self diffableDataSource];
    [diffableDataSource3 applySnapshot:diffableSnapshot animatingDifferences:v44 & 1 completion:v15];

    modifiedIdentifiers = [detailsCopy modifiedIdentifiers];
    v27 = [modifiedIdentifiers count];

    if ([detailsCopy airDropBadgeChanged])
    {
      v28 = [dataSource containsSectionForIdentifier:@"SHSheetContentAppsSectionIdentifier"];
      if (v27)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v28 = 0;
      if (v27)
      {
LABEL_30:
        v29 = v27 != 0;
        diffableDataSource2 = [diffableSnapshot copy];
        if (v29)
        {
          modifiedIdentifiers2 = [detailsCopy modifiedIdentifiers];
          [diffableDataSource2 reconfigureItemsWithIdentifiers:modifiedIdentifiers2];
        }

        if (v28)
        {
          shareProxies = [dataSource shareProxies];
          firstObject = [shareProxies firstObject];
          identifier2 = [firstObject identifier];
          v50 = identifier2;
          v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
          [diffableDataSource2 reconfigureItemsWithIdentifiers:v34];
        }

        diffableDataSource4 = [(UIActivityContentViewController *)self diffableDataSource];
        [diffableDataSource4 applySnapshot:diffableDataSource2 animatingDifferences:v44 & 1 completion:v15];

        goto LABEL_35;
      }
    }

    if (!v28)
    {
LABEL_36:
      delegate = [(UIActivityContentViewController *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v37 = share_sheet_log();
        v38 = share_sheet_log();
        v39 = os_signpost_id_make_with_pointer(v38, self);

        if (v39 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
        {
          LOWORD(location[0]) = 0;
          _os_signpost_emit_with_name_impl(&dword_18B359000, v37, OS_SIGNPOST_INTERVAL_END, v39, "UpdateContentView", &unk_18B437ED2, location, 2u);
        }

        [delegate activityContentViewControllerDidUpdateDataSource:self];
      }

      [(UIActivityContentViewController *)self _updateHeaderLinkViewAction];
      [(UIActivityContentViewController *)self _addResizeGestureIfNeeded];

      v40 = dataSource;
      goto LABEL_42;
    }

    goto LABEL_30;
  }

  v41 = share_sheet_log();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(location[0]) = 0;
    _os_log_impl(&dword_18B359000, v41, OS_LOG_TYPE_DEFAULT, "The new data source published don't require to update the current snapshot.", location, 2u);
  }

  v40 = share_sheet_log();
  v42 = share_sheet_log();
  v43 = os_signpost_id_make_with_pointer(v42, self);

  if (v43 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
  {
    LOWORD(location[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_18B359000, v40, OS_SIGNPOST_INTERVAL_END, v43, "UpdateContentView", "update not needed", location, 2u);
  }

LABEL_42:
}

void __91__UIActivityContentViewController_dataSourceManager_didPublishDataSourceWithChangeDetails___block_invoke(uint64_t a1)
{
  v2 = dispatch_time(0, 200000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__UIActivityContentViewController_dataSourceManager_didPublishDataSourceWithChangeDetails___block_invoke_2;
  block[3] = &unk_1E71F95A8;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_after(v2, MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v4);
}

void __91__UIActivityContentViewController_dataSourceManager_didPublishDataSourceWithChangeDetails___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setIgnorePersonTap:0];
}

- (void)runScrollingTestWithName:(id)name type:(int64_t)type completionHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  handlerCopy = handler;
  if (([(objc_class *)getRPTTestRunnerClass() isRecapAvailable]& 1) != 0)
  {
    v10 = [(UIActivityContentViewController *)self _scrollViewForScrollingType:type];
    v11 = share_sheet_log();
    v12 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v22 = nameCopy;
        v23 = 2112;
        v24 = v10;
        _os_log_impl(&dword_18B359000, v12, OS_LOG_TYPE_DEFAULT, "run scrolling test with name:%@ scrollview:%@", buf, 0x16u);
      }

      v13 = objc_alloc(getRPTScrollViewTestParametersClass());
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __83__UIActivityContentViewController_runScrollingTestWithName_type_completionHandler___block_invoke;
      v17[3] = &unk_1E71F9958;
      v14 = nameCopy;
      v18 = v14;
      v19 = v10;
      v20 = handlerCopy;
      v15 = [v13 initWithTestName:v14 scrollView:v19 completionHandler:v17];
      if (![v14 isEqualToString:@"ShareSheetScrollHorizontalApps"] || (_ShareSheetSolariumEnabled() & 1) == 0)
      {
        [v15 setPreventSheetDismissal:1];
      }

      [v15 setShouldFlick:0];
      [(objc_class *)getRPTTestRunnerClass() runTestWithParameters:v15];
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [UIActivityContentViewController runScrollingTestWithName:type:completionHandler:];
      }

      handlerCopy[2](handlerCopy);
    }
  }

  else
  {
    v16 = share_sheet_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [UIActivityContentViewController runScrollingTestWithName:type:completionHandler:];
    }

    handlerCopy[2](handlerCopy);
  }
}

uint64_t __83__UIActivityContentViewController_runScrollingTestWithName_type_completionHandler___block_invoke(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = share_sheet_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_18B359000, v2, OS_LOG_TYPE_DEFAULT, "did complete scrolling test for name:%@ scrollview:%@", &v6, 0x16u);
  }

  return (*(a1[6] + 16))();
}

- (id)_scrollViewForScrollingType:(int64_t)type
{
  activityCollectionView = [(UIActivityContentViewController *)self activityCollectionView];
  if (type)
  {
    if (type == 3)
    {
      customViewController = [(UIActivityContentViewController *)self customViewController];
      view = [customViewController view];

      activityCollectionView = view;
    }

    v8 = SHSheetContentHelperFindScrollView(activityCollectionView);
    dataSource = [(UIActivityContentViewController *)self dataSource];
    v10 = [dataSource containsSectionForIdentifier:@"SHSheetContentCustomViewSectionIdentifier"];

    dataSource2 = [(UIActivityContentViewController *)self dataSource];
    v12 = [dataSource2 containsSectionForIdentifier:@"SHSheetContentPeopleSectionIdentifier"];

    dataSource3 = [(UIActivityContentViewController *)self dataSource];
    v14 = [dataSource3 containsSectionForIdentifier:@"SHSheetContentAppsSectionIdentifier"];

    switch(type)
    {
      case 3:
        if (v10)
        {
LABEL_6:
          firstObject = [v8 firstObject];
LABEL_7:
          v16 = firstObject;
LABEL_26:

          activityCollectionView = v16;
          goto LABEL_27;
        }

        v17 = share_sheet_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [UIActivityContentViewController _scrollViewForScrollingType:];
        }

        goto LABEL_24;
      case 2:
        if (!v14)
        {
          v17 = share_sheet_log();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            [UIActivityContentViewController _scrollViewForScrollingType:];
          }

          goto LABEL_24;
        }

        if (!v10)
        {
          if (!v12)
          {
            goto LABEL_6;
          }

LABEL_31:
          v18 = [v8 count];
          goto LABEL_32;
        }

        v18 = [v8 count];
        if (!v12)
        {
LABEL_32:
          if (v18 < 2)
          {
            break;
          }

          v19 = v8;
          v20 = 1;
LABEL_34:
          firstObject = [v19 objectAtIndexedSubscript:v20];
          goto LABEL_7;
        }

        if (v18 >= 3)
        {
          v19 = v8;
          v20 = 2;
          goto LABEL_34;
        }

        break;
      case 1:
        if (v12)
        {
          if (!v10)
          {
            goto LABEL_6;
          }

          goto LABEL_31;
        }

        v17 = share_sheet_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [UIActivityContentViewController _scrollViewForScrollingType:];
        }

LABEL_24:

        break;
    }

    v16 = 0;
    goto LABEL_26;
  }

LABEL_27:

  return activityCollectionView;
}

- (BOOL)_wantsResizePanGesture
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (!_ShareSheetSolariumEnabled() || userInterfaceIdiom == 1)
  {
    return 0;
  }

  return [(UIActivityContentViewController *)self isPresentedInPopover];
}

- (void)_addResizeGestureIfNeeded
{
  if (![(UIActivityContentViewController *)self _wantsResizePanGesture])
  {
    return;
  }

  headerViewResizeGestureRecognizer = [(UIActivityContentViewController *)self headerViewResizeGestureRecognizer];
  if (headerViewResizeGestureRecognizer)
  {
    goto LABEL_5;
  }

  headerLinkView = [(UIActivityContentViewController *)self headerLinkView];

  if (headerLinkView)
  {
    headerViewResizeGestureRecognizer = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel__handleResizeGesture_];
    [headerViewResizeGestureRecognizer setDelegate:self];
    headerLinkView2 = [(UIActivityContentViewController *)self headerLinkView];
    [headerLinkView2 addGestureRecognizer:headerViewResizeGestureRecognizer];

    [(UIActivityContentViewController *)self setHeaderViewResizeGestureRecognizer:headerViewResizeGestureRecognizer];
LABEL_5:
  }

  collectionViewResizeGestureRecognizer = [(UIActivityContentViewController *)self collectionViewResizeGestureRecognizer];
  if (!collectionViewResizeGestureRecognizer)
  {
    viewIfLoaded = [(UIActivityContentViewController *)self viewIfLoaded];

    if (!viewIfLoaded)
    {
      return;
    }

    v9 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel__handleResizeGesture_];
    [v9 setDelegate:self];
    view = [(UIActivityContentViewController *)self view];
    [view addGestureRecognizer:v9];

    [(UIActivityContentViewController *)self setCollectionViewResizeGestureRecognizer:v9];
    collectionViewResizeGestureRecognizer = v9;
  }
}

- (void)_removeResizeGestureIfNeeded
{
  headerViewResizeGestureRecognizer = [(UIActivityContentViewController *)self headerViewResizeGestureRecognizer];

  if (headerViewResizeGestureRecognizer)
  {
    headerLinkView = [(UIActivityContentViewController *)self headerLinkView];
    headerViewResizeGestureRecognizer2 = [(UIActivityContentViewController *)self headerViewResizeGestureRecognizer];
    [headerLinkView removeGestureRecognizer:headerViewResizeGestureRecognizer2];

    [(UIActivityContentViewController *)self setHeaderViewResizeGestureRecognizer:0];
  }

  collectionViewResizeGestureRecognizer = [(UIActivityContentViewController *)self collectionViewResizeGestureRecognizer];

  if (collectionViewResizeGestureRecognizer)
  {
    view = [(UIActivityContentViewController *)self view];
    collectionViewResizeGestureRecognizer2 = [(UIActivityContentViewController *)self collectionViewResizeGestureRecognizer];
    [view removeGestureRecognizer:collectionViewResizeGestureRecognizer2];

    [(UIActivityContentViewController *)self setCollectionViewResizeGestureRecognizer:0];
  }
}

- (void)_handleResizeGesture:(id)gesture
{
  v19 = *MEMORY[0x1E69E9840];
  gestureCopy = gesture;
  collectionViewResizeGestureRecognizer = [(UIActivityContentViewController *)self collectionViewResizeGestureRecognizer];
  if (collectionViewResizeGestureRecognizer == gestureCopy)
  {
    [(UIActivityContentViewController *)self view];
  }

  else
  {
    [(UIActivityContentViewController *)self headerLinkView];
  }
  v6 = ;

  [gestureCopy translationInView:v6];
  v8 = v7;
  state = [gestureCopy state];
  if (![(UIActivityContentViewController *)self isPresentedFromBottom])
  {
    v8 = -v8;
  }

  v10 = share_sheet_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    [(UIActivityContentViewController *)self isPresentedFromBottom];
    v11 = NSStringFromBOOL();
    v17 = 138412290;
    v18 = v11;
    _os_log_impl(&dword_18B359000, v10, OS_LOG_TYPE_DEFAULT, "handleResizeGesture - isPresentedFromBottom:%@", &v17, 0xCu);
  }

  if (state == 2)
  {
    if ([(UIActivityContentViewController *)self showAllActions])
    {
      headerViewResizeGestureRecognizer = [(UIActivityContentViewController *)self headerViewResizeGestureRecognizer];
      if (headerViewResizeGestureRecognizer == gestureCopy)
      {
        v13 = 0;
      }

      else
      {
        v13 = ![(UIActivityContentViewController *)self isAtScrollBoundary];
      }

      if (v8 > 0.0 && (v13 & 1) == 0)
      {
        [(UIActivityContentViewController *)self _resetPanGesture:gestureCopy];
        if ([(UIActivityContentViewController *)self _isOnlyFullSize])
        {
          goto LABEL_19;
        }

        selfCopy2 = self;
        v15 = 0;
LABEL_21:
        [(UIActivityContentViewController *)selfCopy2 setShowAllActions:v15];
      }
    }

    else
    {
      [(UIActivityContentViewController *)self _resetPanGesture:gestureCopy];
      if (v8 > 0.0)
      {
LABEL_19:
        presenter = [(UIActivityContentViewController *)self presenter];
        [presenter handleClose];

        goto LABEL_22;
      }

      if (v8 < 0.0)
      {
        selfCopy2 = self;
        v15 = 1;
        goto LABEL_21;
      }
    }
  }

LABEL_22:
}

- (void)_resetPanGesture:(id)gesture
{
  gestureCopy = gesture;
  [gestureCopy setEnabled:0];
  [gestureCopy setEnabled:1];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  collectionViewResizeGestureRecognizer = [(UIActivityContentViewController *)self collectionViewResizeGestureRecognizer];

  if (collectionViewResizeGestureRecognizer != beginCopy)
  {
    return 1;
  }

  activityCollectionView = [(UIActivityContentViewController *)self activityCollectionView];
  [activityCollectionView contentOffset];
  v6 = v8 <= 0.0;

  return v6;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  collectionViewResizeGestureRecognizer = [(UIActivityContentViewController *)self collectionViewResizeGestureRecognizer];

  if (collectionViewResizeGestureRecognizer == recognizerCopy)
  {
    view = [gestureRecognizerCopy view];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      customViewController = [(UIActivityContentViewController *)self customViewController];
      view2 = [customViewController view];
      view3 = [gestureRecognizerCopy view];
      v9 = [view2 containsView:view3] ^ 1;
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (UIActivityContentViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SHSheetContentPresenter)presenter
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  return WeakRetained;
}

- (CGSize)hostPortraitWindowSize
{
  width = self->_hostPortraitWindowSize.width;
  height = self->_hostPortraitWindowSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_configureAirDropCell:withChange:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_18B359000, v0, OS_LOG_TYPE_FAULT, "update AirDrop progress for cell:%@ without top/bottom text.", v1, 0xCu);
}

- (void)_configureSharingAppCell:itemIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_provideCellForCollectionView:indexPath:itemIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
}

- (void)collectionView:willEndContextMenuInteractionWithConfiguration:animator:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_18B359000, v0, OS_LOG_TYPE_FAULT, "No item identifier found at indexPath:%@", v1, 0xCu);
}

- (void)_contextMenuPreviewForCollectionView:collectionViewCell:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x16u);
}

- (void)didUpdateAirDropTransferWithChange:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [a1 identifier];
  OUTLINED_FUNCTION_1();
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_18B359000, a3, OS_LOG_TYPE_ERROR, "AirDrop cell identifier:%@ mismatches update proxy identifier:%@", v6, 0x16u);
}

- (void)titleForItemIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)runScrollingTestWithName:type:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)runScrollingTestWithName:type:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x16u);
}

@end