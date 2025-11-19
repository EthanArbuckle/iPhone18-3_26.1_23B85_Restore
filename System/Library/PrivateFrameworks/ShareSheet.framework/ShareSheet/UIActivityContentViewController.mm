@interface UIActivityContentViewController
- (BOOL)_canShowOptions;
- (BOOL)_isOnlyCompactSize;
- (BOOL)_isOnlyFullSize;
- (BOOL)_shouldShowCloseButton;
- (BOOL)_wantsResizePanGesture;
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)isCompactSize;
- (BOOL)isResizable;
- (CGSize)hostPortraitWindowSize;
- (LPLinkMetadata)headerMetadata;
- (NSDiffableDataSourceSnapshot)currentSnapshot;
- (SHSheetContentDataSource)dataSource;
- (SHSheetContentPresenter)presenter;
- (UIActivityContentViewController)init;
- (UIActivityContentViewController)initWithContext:(id)a3;
- (UIActivityContentViewControllerDelegate)delegate;
- (UIBarButtonItem)cancelButton;
- (UIBarButtonItem)nextButton;
- (UIViewController)customViewController;
- (id)_activityTitleForActivity:(id)a3;
- (id)_contextMenuPreviewForCollectionView:(id)a3 collectionViewCell:(id)a4;
- (id)_createLinkView;
- (id)_footerTextForInformationalSectionIdentifier:(id)a3;
- (id)_provideCellForCollectionView:(id)a3 indexPath:(id)a4 itemIdentifier:(id)a5;
- (id)_provideLayoutForSection:(int64_t)a3 environment:(id)a4;
- (id)_provideSupplementaryViewForCollectionView:(id)a3 kind:(id)a4 indexPath:(id)a5;
- (id)_scrollViewForScrollingType:(int64_t)a3;
- (id)_sectionIdentifierForIndex:(int64_t)a3;
- (id)airDropNodeForItemIdentifier:(id)a3;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5;
- (id)collectionView:(id)a3 previewForDismissingContextMenuWithConfiguration:(id)a4;
- (id)collectionView:(id)a3 previewForHighlightingContextMenuWithConfiguration:(id)a4;
- (id)titleForItemIdentifier:(id)a3;
- (int64_t)currentSectionTypesToExclude;
- (int64_t)effectivePresentationStyle;
- (int64_t)presentationDirectionType;
- (unint64_t)_headingSizeClass;
- (void)_addResizeGestureIfNeeded;
- (void)_configureActionCell:(id)a3 itemIdentifier:(id)a4;
- (void)_configureAirDropCell:(id)a3 withChange:(id)a4;
- (void)_configureCollectionViewIfNeeded;
- (void)_configureHeaderViewIfNeeded;
- (void)_configureHeroActionCell:(id)a3 itemIdentifier:(id)a4;
- (void)_configureHorizontalActionCell:(id)a3 itemIdentifier:(id)a4;
- (void)_configureMagicHeadCell:(id)a3 withProxy:(id)a4;
- (void)_configurePeopleCell:(id)a3 itemIdentifier:(id)a4;
- (void)_configureSharingAppCell:(id)a3 itemIdentifier:(id)a4;
- (void)_configureWithContext:(id)a3;
- (void)_consumeURLSandboxExtensions:(id)a3 forURLRequests:(id)a4;
- (void)_handleResizeGesture:(id)a3;
- (void)_removeResizeGestureIfNeeded;
- (void)_resetPanGesture:(id)a3;
- (void)_updateBlurBackgroundIfNeeded;
- (void)_updateContent:(BOOL)a3;
- (void)_updateContentWithPeopleProxies:(id)a3 shareProxies:(id)a4 actionProxies:(id)a5 activitiesByUUID:(id)a6 nearbyCountSlotID:(id)a7 animated:(BOOL)a8 reloadData:(BOOL)a9;
- (void)_updateCustomViewContent;
- (void)_updateDividerIfNeeded;
- (void)_updateHeaderContentInsets;
- (void)_updateHeaderLinkViewAction;
- (void)_updateHeaderLinkViewSizeClass;
- (void)_updateHeaderMetadataValues;
- (void)_updateHeaderSize;
- (void)_updatePreferredContentSize;
- (void)_updateShowAllActions;
- (void)collectionView:(id)a3 cancelPrefetchingForItemsAtIndexPaths:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 prefetchItemsAtIndexPaths:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 willEndContextMenuInteractionWithConfiguration:(id)a4 animator:(id)a5;
- (void)dataSourceManager:(id)a3 didPublishDataSourceWithChangeDetails:(id)a4;
- (void)dealloc;
- (void)didUpdateAirDropTransferWithChange:(id)a3;
- (void)homeScreenService:(id)a3 homeScreenIconStyleConfigurationDidChange:(id)a4;
- (void)linkView:(id)a3 didFetchMetadata:(id)a4;
- (void)linkViewNeedsResize:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)reloadActivity:(id)a3;
- (void)reloadContent;
- (void)reloadMetadata:(id)a3;
- (void)runScrollingTestWithName:(id)a3 type:(int64_t)a4 completionHandler:(id)a5;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)setHeroActionActivityTypes:(id)a3;
- (void)setHostPresentationDirectionType:(id)a3;
- (void)setHostPresentationStyle:(id)a3;
- (void)setHostSLMEnabled:(id)a3;
- (void)setShowAllActions:(BOOL)a3;
- (void)startPulsingActivity:(id)a3 localizedTitle:(id)a4;
- (void)stopPulsingActivity:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateWithViewModel:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
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

- (UIActivityContentViewController)initWithContext:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = UIActivityContentViewController;
  v5 = [(UIActivityContentViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(UIActivityContentViewController *)v5 _configureWithContext:v4];
  }

  return v6;
}

- (void)dealloc
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [(UIActivityContentViewController *)self homeScreenIconStyleObserver];
  [v3 invalidate];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(UIActivityContentViewController *)self sandboxExtensionHandles];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v25 count:16];
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
          objc_enumerationMutation(v4);
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
      v7 = [v4 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v7);
  }

  v14 = [(UIActivityContentViewController *)self activityCollectionView];
  [v14 removeObserver:self forKeyPath:@"contentSize"];

  v16.receiver = self;
  v16.super_class = UIActivityContentViewController;
  [(UIActivityContentViewController *)&v16 dealloc];
}

- (int64_t)presentationDirectionType
{
  v3 = [(UIActivityContentViewController *)self hostPresentationDirectionType];

  if (v3)
  {
    v4 = [(UIActivityContentViewController *)self hostPresentationDirectionType];
    v5 = [v4 integerValue];
  }

  else
  {
    v6 = [(UIActivityContentViewController *)self popoverPresentationController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      return 0;
    }

    v4 = [(UIActivityContentViewController *)self popoverPresentationController];
    v5 = [v4 presentationDirectionType];
  }

  v8 = v5;

  return v8;
}

- (void)setHostPresentationStyle:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a3;
  hostPresentationStyle = self->_hostPresentationStyle;
  v7 = v5;
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

    objc_storeStrong(&self->_hostPresentationStyle, a3);
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
    v13 = [(UIActivityContentViewController *)self layoutSpec];
    v14 = [v13 deviceClass];

    if (v14 != v12)
    {
      v15 = [SHSheetContentLayoutSpec alloc];
      v16 = [(UIActivityContentViewController *)self traitCollection];
      v17 = [(UIActivityContentViewController *)self tintColor];
      [(UIActivityContentViewController *)self hostPortraitWindowSize];
      v18 = [(SHSheetContentLayoutSpec *)v15 initWithTraitCollection:v16 tintColor:v17 deviceClass:v12 portraitWindowSize:?];
      layoutSpec = self->_layoutSpec;
      self->_layoutSpec = v18;

      v20 = self->_layoutSpec;
      v21 = [(UIActivityContentViewController *)self layoutProvider];
      [v21 setLayoutSpec:v20];

      v22 = [(UIActivityContentViewController *)self peopleSuggestionImageProvider];
      [(SHSheetContentLayoutSpec *)self->_layoutSpec peopleIconWidth];
      v24 = v23;
      [(SHSheetContentLayoutSpec *)self->_layoutSpec peopleIconWidth];
      [v22 updateTargetSize:{v24, v25}];

      v26 = [(UIActivityContentViewController *)self peopleSuggestionImageProvider];
      v27 = [(SHSheetContentLayoutSpec *)self->_layoutSpec traitCollection];
      [v26 updateUserInterfaceStyle:{objc_msgSend(v27, "userInterfaceStyle")}];

      v28 = [(UIActivityContentViewController *)self activityCollectionView];
      [v28 reloadData];
    }

    v29 = [(UIActivityContentViewController *)self _shouldShowCloseButton];
    v30 = [(UIActivityContentViewController *)self headerTitleView];
    [v30 setHasCloseButton:v29];

    [(UIActivityContentViewController *)self _removeResizeGestureIfNeeded];
    [(UIActivityContentViewController *)self _addResizeGestureIfNeeded];
    v31 = [(UIActivityContentViewController *)self view];
    [v31 setNeedsLayout];
  }

LABEL_12:
}

- (void)setHostSLMEnabled:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  hostSLMEnabled = self->_hostSLMEnabled;
  v7 = v5;
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

    objc_storeStrong(&self->_hostSLMEnabled, a3);
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

- (void)setHostPresentationDirectionType:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_hostPresentationDirectionType != v5)
  {
    objc_storeStrong(&self->_hostPresentationDirectionType, a3);
    v6 = share_sheet_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412546;
      v8 = objc_opt_class();
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&dword_18B359000, v6, OS_LOG_TYPE_DEFAULT, "%@: setHostPresentationDirectionType:%@", &v7, 0x16u);
    }

    [(UIActivityContentViewController *)self _removeResizeGestureIfNeeded];
    [(UIActivityContentViewController *)self _addResizeGestureIfNeeded];
  }
}

- (int64_t)effectivePresentationStyle
{
  v3 = [(UIActivityContentViewController *)self hostPresentationStyle];

  if (v3)
  {
    v4 = [(UIActivityContentViewController *)self hostPresentationStyle];
    v5 = [v4 integerValue];

    return v5;
  }

  else
  {

    return SHSheetPresentationControllerPresentationStyle(self);
  }
}

- (void)_configureWithContext:(id)a3
{
  v4 = a3;
  self->_isRemote = [v4 isRemote];
  v5 = [v4 hostAuditToken];
  hostAuditToken = self->_hostAuditToken;
  self->_hostAuditToken = v5;

  self->_canRenderPeople = [v4 canRenderPeople];
  self->_configureForCloudSharing = [v4 configureForCloudSharing];
  self->_configureForPhotosEdit = [v4 configureForPhotosEdit];
  self->_hideHeaderView = [v4 hideHeaderView];
  self->_hideNavigationBar = [v4 hideNavigationBar];
  self->_sharingExpanded = [v4 sharingExpanded];
  self->_sharingStyle = [v4 sharingStyle];
  v7 = [v4 topContentSectionText];
  topContentSectionText = self->_topContentSectionText;
  self->_topContentSectionText = v7;

  v9 = [v4 applicationActivityTypes];
  applicationActivityTypes = self->_applicationActivityTypes;
  self->_applicationActivityTypes = v9;

  v11 = [v4 heroActionActivityTypes];
  heroActionActivityTypes = self->_heroActionActivityTypes;
  self->_heroActionActivityTypes = v11;

  self->_showHeroActionsHorizontally = [v4 showHeroActionsHorizontally];
  v13 = [v4 tintColor];
  tintColor = self->_tintColor;
  self->_tintColor = v13;

  [v4 hostPortraitWindowSize];
  self->_hostPortraitWindowSize.width = v15;
  self->_hostPortraitWindowSize.height = v16;
  v17 = _ShareSheetCurrentDeviceClassFromPresentationStyle([(UIActivityContentViewController *)self isPresentedInPopover]);
  v18 = [SHSheetContentLayoutSpec alloc];
  v19 = [(UIActivityContentViewController *)self traitCollection];
  v20 = [(UIActivityContentViewController *)self tintColor];
  [(UIActivityContentViewController *)self hostPortraitWindowSize];
  v21 = [(SHSheetContentLayoutSpec *)v18 initWithTraitCollection:v19 tintColor:v20 deviceClass:v17 portraitWindowSize:?];
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

  v30 = [MEMORY[0x1E695DF90] dictionary];
  identifiersToActivityImageRequestID = self->_identifiersToActivityImageRequestID;
  self->_identifiersToActivityImageRequestID = v30;

  v32 = [MEMORY[0x1E695DF90] dictionary];
  identifiersToPeopleSuggestionImageRequestIDs = self->_identifiersToPeopleSuggestionImageRequestIDs;
  self->_identifiersToPeopleSuggestionImageRequestIDs = v32;

  v34 = [(objc_class *)getSFUIActivityImageProviderClass_0() homeScreenService];
  v35 = [v34 addHomeScreenIconStyleObserver:self];
  homeScreenIconStyleObserver = self->_homeScreenIconStyleObserver;
  self->_homeScreenIconStyleObserver = v35;

  if (self->_canRenderPeople)
  {
    [(SHSheetContentLayoutSpec *)self->_layoutSpec peopleIconWidth];
    v38 = v37;
    [(SHSheetContentLayoutSpec *)self->_layoutSpec peopleIconWidth];
    v40 = v39;
    v41 = objc_alloc(getSFUIPeopleSuggestionImageProviderClass());
    v42 = [MEMORY[0x1E69DC668] sharedApplication];
    v43 = [v42 userInterfaceLayoutDirection];
    v44 = [(SHSheetContentLayoutSpec *)self->_layoutSpec traitCollection];
    v45 = [v41 initWithTargetSize:v43 layoutDirection:objc_msgSend(v44 userInterfaceStyle:{"userInterfaceStyle"), v38, v40}];
    peopleSuggestionImageProvider = self->_peopleSuggestionImageProvider;
    self->_peopleSuggestionImageProvider = v45;
  }

  self->_headerLinkActionsNeedsUpdate = 1;
  v47 = [MEMORY[0x1E695DFA8] set];
  sandboxExtensionHandles = self->_sandboxExtensionHandles;
  self->_sandboxExtensionHandles = v47;

  self->_showAllActions = [v4 sharingStyle] == 2;
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
  v2 = [(UIActivityContentViewController *)self viewModel];
  v3 = [v2 customViewController];

  return v3;
}

- (NSDiffableDataSourceSnapshot)currentSnapshot
{
  v2 = [(UIActivityContentViewController *)self dataSourceManager];
  v3 = [v2 dataSource];
  v4 = [v3 diffableSnapshot];

  return v4;
}

- (SHSheetContentDataSource)dataSource
{
  v2 = [(UIActivityContentViewController *)self dataSourceManager];
  v3 = [v2 dataSource];

  return v3;
}

- (int64_t)currentSectionTypesToExclude
{
  v3 = [(UIActivityContentViewController *)self customViewController];
  if (v3)
  {
    v4 = [(UIActivityContentViewController *)self configureForCloudSharing];
  }

  else
  {
    v4 = 1;
  }

  if ([(UIActivityContentViewController *)self photosLandscapeMode]&& ([(UIActivityContentViewController *)self customViewController], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(UIActivityContentViewController *)self sharingStyle];
    v7 = 1;
    v8 = 1;
    v9 = 1;
  }

  else
  {
    v7 = [(UIActivityContentViewController *)self configureForPhotosEdit]|| [(UIActivityContentViewController *)self configureForCloudSharing];
    v6 = [(UIActivityContentViewController *)self sharingStyle];
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
    v10 = [(UIActivityContentViewController *)self showHeroActionsHorizontally];
  }

  else
  {
    v10 = 0;
  }

  v11 = v8 | _ShareSheetSolariumEnabled() ^ 1;
  if (v6 == 2)
  {
    v11 = 1;
  }

  v12 = v4 | 2;
  if (!v7)
  {
    v12 = v4;
  }

  if (v8)
  {
    v12 |= 4uLL;
  }

  if (v9)
  {
    v12 |= 8uLL;
  }

  if (v10)
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

- (id)_provideLayoutForSection:(int64_t)a3 environment:(id)a4
{
  v6 = a4;
  v7 = [(UIActivityContentViewController *)self _sectionIdentifierForIndex:a3];
  v8 = [SHSheetContentLayoutContext alloc];
  v9 = [(UIActivityContentViewController *)self currentSnapshot];
  v10 = [(SHSheetContentLayoutContext *)v8 initWithSectionIdentifier:v7 dataSourceSnapshot:v9 environment:v6];

  v11 = [(UIActivityContentViewController *)self view];
  [v11 directionalLayoutMargins];
  [(SHSheetContentLayoutContext *)v10 setViewDirectionalLayoutMargins:?];

  v12 = [(UIActivityContentViewController *)self topContentSectionText];
  [(SHSheetContentLayoutContext *)v10 setEnableTopContentSectionText:v12 != 0];

  if ([(UIActivityContentViewController *)self showHeroActionsHorizontally])
  {
    v13 = [(UIActivityContentViewController *)self layoutSpec];
    -[SHSheetContentLayoutContext setEnableHeroActions:](v10, "setEnableHeroActions:", [v13 isAccessibilityContentSize] ^ 1);
  }

  else
  {
    [(SHSheetContentLayoutContext *)v10 setEnableHeroActions:0];
  }

  v14 = [(UIActivityContentViewController *)self layoutProvider];
  v15 = [v14 layoutSectionForContext:v10];

  if (([v7 isEqual:@"SHSheetContentPeopleSectionIdentifier"] & 1) != 0 || objc_msgSend(v7, "isEqual:", @"SHSheetContentAppsSectionIdentifier"))
  {
    [(UIActivityContentViewController *)self setCachedHorizontalLayoutSection:v15];
  }

  v16 = [v15 layoutSection];

  return v16;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if ([a3 isEqualToString:{@"contentSize", a4, a5, a6}])
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
  v3 = [(UIActivityContentViewController *)self view];
  [v3 setBackgroundColor:0];

  v4 = [(UIActivityContentViewController *)self view];
  [v4 setAccessibilityIdentifier:@"shareSheet.activity.contentView"];

  if (_ShareSheetSolariumEnabled())
  {
    v5 = [(UIActivityContentViewController *)self view];
    v6 = [v5 layer];
    [v6 setHitTestsAsOpaque:1];
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
      v3 = [(UIActivityContentViewController *)self closeButton];
    }

    else
    {
      v3 = 0;
    }

    v4 = [(UIActivityContentViewController *)self isCloseButtonOnLeadingEdge];
    v5 = [(UIActivityContentViewController *)self navigationItem];
    v6 = v5;
    if (v4)
    {
      [v5 setLeftBarButtonItem:v3];
    }

    else
    {
      [v5 setRightBarButtonItem:v3];
    }
  }

  if (_ShareSheetPlatformPrefersPopover() && [(UIActivityContentViewController *)self configureForCloudSharing])
  {
    v7 = [(UIActivityContentViewController *)self activityCollectionView];
    [v7 reloadData];
  }

  self->_didLayout = 1;
  v8 = [(UIActivityContentViewController *)self pendingUpdate];
  [(UIActivityContentViewController *)self setPendingUpdate:0];
  if (v8)
  {
    v8[2](v8);
  }

  [(UIActivityContentViewController *)self _updateHeaderContentInsets];
  [(UIActivityContentViewController *)self _updateDividerIfNeeded];
  [(UIActivityContentViewController *)self _updatePreferredContentSize];
}

- (BOOL)isCompactSize
{
  v3 = [(UIActivityContentViewController *)self dataSource];
  v4 = [v3 actionProxies];
  v5 = [v4 count];
  v6 = [(UIActivityContentViewController *)self dataSource];
  v7 = [v6 topActionsMaximumCount];

  v8 = ![(UIActivityContentViewController *)self showAllActions];
  return v5 <= v7 || v8;
}

- (BOOL)_isOnlyCompactSize
{
  v3 = [(UIActivityContentViewController *)self dataSource];

  if (v3 && (-[UIActivityContentViewController dataSource](self, "dataSource"), v4 = objc_claimAutoreleasedReturnValue(), [v4 actionProxies], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), -[UIActivityContentViewController dataSource](self, "dataSource"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "topActionsMaximumCount"), v7, v5, v4, v6 <= v8))
  {
    v10 = [(UIActivityContentViewController *)self customViewController];
    if (v10)
    {
      LOBYTE(v9) = 0;
    }

    else if ([(UIActivityContentViewController *)self isPresentedInPopover])
    {
      LOBYTE(v9) = 1;
    }

    else
    {
      v11 = [(UIActivityContentViewController *)self viewModel];
      v9 = [v11 supportsCollaboration] ^ 1;
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
  v3 = [(UIActivityContentViewController *)self dataSource];

  if (v3)
  {
    v4 = [MEMORY[0x1E69DC938] currentDevice];
    v5 = [v4 userInterfaceIdiom];

    v6 = _ShareSheetCachedActiveInterfaceOrientation() - 3;
    v7 = [(UIActivityContentViewController *)self sharingStyle];
    v8 = [(UIActivityContentViewController *)self dataSource];
    v9 = [v8 actionProxies];
    v10 = [v9 count];
    v11 = [(UIActivityContentViewController *)self dataSource];
    v12 = [v11 topActionsMaximumCount];

    if (v5)
    {
      v13 = 1;
    }

    else
    {
      v13 = v6 >= 2;
    }

    LOBYTE(v14) = 1;
    if (v13 && v7 != 2)
    {
      v15 = [(UIActivityContentViewController *)self customViewController];
      if (!v15)
      {
        LOBYTE(v14) = 0;
        if (![(UIActivityContentViewController *)self isPresentedInPopover]&& v10 > v12)
        {
          v16 = [(UIActivityContentViewController *)self viewModel];
          v14 = [v16 supportsCollaboration] ^ 1;
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
  v3 = [(UIActivityContentViewController *)self viewIfLoaded];

  if (v3)
  {
    v4 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v4 userInterfaceIdiom] == 1)
    {
    }

    else
    {
      v5 = [MEMORY[0x1E69DC938] currentDevice];
      v6 = [v5 userInterfaceIdiom];

      if (v6)
      {
        return;
      }
    }

    if (_ShareSheetSolariumEnabled())
    {
      v7 = [(UIActivityContentViewController *)self activityCollectionView];
      [v7 contentSize];
      v9 = v8;

      if (v9 > 0.0)
      {
        v10 = [(UIActivityContentViewController *)self customViewController];

        if (!v10)
        {
          v11 = [MEMORY[0x1E69DC938] currentDevice];
          v12 = [v11 userInterfaceIdiom];

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
          if (v12 == 1)
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

          v25 = [(UIActivityContentViewController *)self navigationController];
          v26 = [v25 navigationBar];
          v27 = [(UIActivityContentViewController *)self headerTitleView];
          [v27 frame];
          v29 = v28;
          v31 = v30;
          v33 = v32;
          v35 = v34;
          v36 = [(UIActivityContentViewController *)self view];
          [v26 convertRect:v36 toView:{v29, v31, v33, v35}];
          v38 = v37;
          v40 = v39;
          v42 = v41;
          v44 = v43;

          v45 = [(UIActivityContentViewController *)self navigationController];
          MaxY = 0.0;
          if (([v45 isNavigationBarHidden] & 1) == 0)
          {
            v91.origin.x = v38;
            v91.origin.y = v40;
            v91.size.width = v42;
            v91.size.height = v44;
            MaxY = CGRectGetMaxY(v91);
          }

          v47 = [(UIActivityContentViewController *)self activityCollectionView];
          [v47 contentSize];
          v49 = MaxY + v48;

          if (v12 != 1 && ![(UIActivityContentViewController *)self isCompactSize])
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

          v51 = [MEMORY[0x1E69DCEB0] mainScreen];
          [v51 scale];
          v53 = round(v50 * v52);
          v54 = [MEMORY[0x1E69DCEB0] mainScreen];
          [v54 scale];
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
              v63 = [(UIActivityContentViewController *)self navigationController];
              v64 = [v63 navigationBar];
              [v64 frame];
              v65 = NSStringFromRect(v92);
              v66 = [(UIActivityContentViewController *)self activityCollectionView];
              [v66 contentSize];
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
            v68 = [(UIActivityContentViewController *)self navigationController];
            [v68 setPreferredContentSize:{v16, v56}];

            v69 = [(UIActivityContentViewController *)self presenter];
            [v69 didUpdateSheetSize];

            v70 = [(UIActivityContentViewController *)self view];
            v71 = [v70 window];
            v72 = [v71 _windowHostingScene];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v74 = [(UIActivityContentViewController *)self view];
              v75 = [v74 window];
              v76 = [v75 _windowHostingScene];

              [(UIActivityContentViewController *)self preferredContentSize];
              [v76 _setPreferredContentSize:?];
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

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v26 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v21.receiver = self;
  v21.super_class = UIActivityContentViewController;
  [(UIActivityContentViewController *)&v21 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
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

  v12 = [MEMORY[0x1E69DC938] currentDevice];
  v13 = [v12 userInterfaceIdiom];

  if (!v13)
  {
    v14 = [MEMORY[0x1E69DC668] sharedApplication];
    v15 = [v14 windows];
    v16 = [v15 firstObject];
    v17 = [v16 windowScene];
    v18 = [v17 interfaceOrientation];

    if (width <= height == (v18 - 3) < 2)
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
  [v7 animateAlongsideTransition:v20 completion:v19];
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

- (void)traitCollectionDidChange:(id)a3
{
  v27[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26.receiver = self;
  v26.super_class = UIActivityContentViewController;
  [(UIActivityContentViewController *)&v26 traitCollectionDidChange:v4];
  v5 = [(UIActivityContentViewController *)self traitCollection];
  v6 = [(UIActivityContentViewController *)self layoutSpec];
  [v6 setTraitCollection:v5];

  v7 = [v4 preferredContentSizeCategory];
  v8 = [(UIActivityContentViewController *)self traitCollection];
  v9 = [v8 preferredContentSizeCategory];

  if (v7 == v9)
  {
    v18 = 0;
  }

  else
  {
    [(UIActivityContentViewController *)self _updateHeaderSize];
    v10 = [v4 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v10);
    v12 = [(UIActivityContentViewController *)self traitCollection];
    v13 = [v12 preferredContentSizeCategory];
    v14 = UIContentSizeCategoryIsAccessibilityCategory(v13);

    v15 = [(UIActivityContentViewController *)self currentSnapshot];
    v16 = [v15 sectionIdentifiers];
    v17 = [v16 containsObject:@"SHSheetContentHeroActionsSectionIdentifier"];

    v18 = 0;
    if (IsAccessibilityCategory != v14 && v17)
    {
      v19 = [(UIActivityContentViewController *)self currentSnapshot];
      v27[0] = @"SHSheetContentHeroActionsSectionIdentifier";
      v18 = 1;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
      [v19 reloadSectionsWithIdentifiers:v20];
    }
  }

  v21 = [v4 userInterfaceStyle];
  v22 = [(UIActivityContentViewController *)self traitCollection];
  v23 = [v22 userInterfaceStyle];

  if (v21 == v23)
  {
    if (v18)
    {
      v24 = [(UIActivityContentViewController *)self diffableDataSource];
      v25 = [(UIActivityContentViewController *)self currentSnapshot];
      [v24 applySnapshot:v25 animatingDifferences:0];
    }
  }

  else
  {
    [(UIActivityContentViewController *)self reloadContent];
  }
}

- (void)homeScreenService:(id)a3 homeScreenIconStyleConfigurationDidChange:(id)a4
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
  v3 = [(UIActivityContentViewController *)self viewModel];
  v4 = [v3 metadataValues];

  v5 = [(UIActivityContentViewController *)self headerLinkView];

  if (v5 && [v4 count])
  {
    v6 = share_sheet_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v4;
      _os_log_impl(&dword_18B359000, v6, OS_LOG_TYPE_DEFAULT, "update link view metadata values:%@", &v11, 0xCu);
    }

    v7 = [(UIActivityContentViewController *)self headerLinkView];
    [v7 _setMultipleMetadata:v4];

    v8 = [(UIActivityContentViewController *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(UIActivityContentViewController *)self delegate];
      [v10 activityContentViewControllerDidUpdateHeaderMetadata:self];
    }
  }
}

- (void)linkView:(id)a3 didFetchMetadata:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = share_sheet_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&dword_18B359000, v6, OS_LOG_TYPE_DEFAULT, "link view did fetch metadata:%@", &v10, 0xCu);
  }

  v7 = [(UIActivityContentViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(UIActivityContentViewController *)self delegate];
    [v9 activityContentViewControllerDidUpdateHeaderMetadata:self];
  }
}

- (id)_createLinkView
{
  v3 = [(UIActivityContentViewController *)self viewModel];
  v4 = [v3 metadataValues];

  if ([v4 count] || (-[UIActivityContentViewController viewModel](self, "viewModel"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isLoadingMetadata"), v5, v6))
  {
    allocSHLPLinkViewInstance();
    v7 = [objc_claimAutoreleasedReturnValue() _initWithMultipleMetadata:v4];
  }

  else
  {
    v18 = [(UIActivityContentViewController *)self viewModel];
    v19 = [v18 urlRequests];

    allocSHLPLinkViewInstance();
    v7 = [objc_claimAutoreleasedReturnValue() _initWithMetadataLoadedFromRequests:v19];
  }

  v8 = [MEMORY[0x1E69DC888] clearColor];
  [v7 setBackgroundColor:v8];

  [v7 setPreservesSuperviewLayoutMargins:1];
  [v7 _setDisableTapGesture:1];
  [v7 _setDisableAnimations:1];
  [v7 setMaskView:0];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setDelegate:self];
  v9 = [v4 firstObject];
  v10 = [v9 sourceApplication];
  v11 = [v10 bundleIdentifier];

  if (v11)
  {
    v12 = [v4 firstObject];
    v13 = [v12 sourceApplication];
    v14 = [v13 bundleIdentifier];
    [v7 _setSourceBundleIdentifier:v14];
  }

  else
  {
    v15 = [(UIActivityContentViewController *)self hostAuditToken];

    if (!v15)
    {
      goto LABEL_12;
    }

    v16 = [(UIActivityContentViewController *)self hostAuditToken:0];
    v17 = v16;
    if (v16)
    {
      [v16 realToken];
    }

    v12 = _ShareSheetBundleIDFromAuditToken();
    [v7 _setSourceBundleIdentifier:v12];
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

  v3 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v3 userInterfaceIdiom])
  {
    v4 = 0;
  }

  else
  {
    v4 = [(UIActivityContentViewController *)self showAllActions];
  }

  return v4;
}

- (void)_configureHeaderViewIfNeeded
{
  v3 = [(UIActivityContentViewController *)self viewModel];
  if (v3)
  {
    v40 = v3;
    if (![(UIActivityContentViewController *)self configureForCloudSharing])
    {
      v4 = [(UIActivityContentViewController *)self headerLinkView];

      if (v4)
      {
        return;
      }

      v5 = [(UIActivityContentViewController *)self hideHeaderView];
      v6 = [_UIActivityContentTitleView alloc];
      v40 = [(_UIActivityContentTitleView *)v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      [(_UIActivityContentTitleView *)v40 setPreservesSuperviewLayoutMargins:1];
      [(_UIActivityContentTitleView *)v40 setTranslatesAutoresizingMaskIntoConstraints:0];
      v7 = [(UIActivityContentViewController *)self customViewController];
      v10 = v7 && ([MEMORY[0x1E69DC938] currentDevice], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "userInterfaceIdiom"), v8, (v9 & 0xFFFFFFFFFFFFFFFBLL) != 1) && (_ShareSheetCachedActiveInterfaceOrientation() - 3) < 0xFFFFFFFFFFFFFFFELL;
      [(_UIActivityContentTitleView *)v40 setPhotosCarouselMode:v10];

      v11 = [(UIActivityContentViewController *)self viewModel];
      -[_UIActivityContentTitleView setCustomButtonMode:](v40, "setCustomButtonMode:", [v11 showCustomHeaderButton]);

      [(_UIActivityContentTitleView *)v40 setHasCloseButton:[(UIActivityContentViewController *)self _shouldShowCloseButton]];
      [(_UIActivityContentTitleView *)v40 setIsCloseButtonOnLeadingEdge:[(UIActivityContentViewController *)self isCloseButtonOnLeadingEdge]];
      [(_UIActivityContentTitleView *)v40 setIsPresentedInPopover:[(UIActivityContentViewController *)self isPresentedInPopover]];
      v12 = [MEMORY[0x1E69DC888] clearColor];
      [(_UIActivityContentTitleView *)v40 setBackgroundColor:v12];

      if (!v5)
      {
        v13 = [(UIActivityContentViewController *)self _createLinkView];
        [(UIActivityContentViewController *)self setHeaderTitleView:v40];
        v14 = [(UIActivityContentViewController *)self headerTitleView];
        [v14 setAccessibilityIdentifier:@"header.titleView"];

        v15 = [v13 metadata];
        v16 = [v15 title];
        v17 = [(UIActivityContentViewController *)self navigationItem];
        [v17 setTitle:v16];

        v18 = [(UIActivityContentViewController *)self navigationItem];
        [v18 setTitleView:v40];

        [(UIActivityContentViewController *)self setHeaderLinkView:v13];
        v19 = [(UIActivityContentViewController *)self headerLinkView];
        [v19 setAccessibilityIdentifier:@"header.linkView"];

        v20 = [(UIActivityContentViewController *)self headerTitleView];
        [v20 setLinkView:v13];

        [(UIActivityContentViewController *)self _updateHeaderLinkViewSizeClass];
        [(UIActivityContentViewController *)self _updateHeaderMetadataValues];
      }

      v21 = objc_alloc(MEMORY[0x1E69DC708]);
      v22 = [(UIActivityContentViewController *)self presenter];
      v23 = [v21 initWithBarButtonSystemItem:24 target:v22 action:sel_handleClose];
      [(UIActivityContentViewController *)self setCloseButton:v23];

      if (_ShareSheetSolariumEnabled())
      {
        v24 = [MEMORY[0x1E69DC888] labelColor];
        v25 = [(UIActivityContentViewController *)self closeButton];
        [v25 setTintColor:v24];
      }

      v26 = [(UIActivityContentViewController *)self closeButton];
      [v26 setAccessibilityIdentifier:@"header.closeButton"];

      if ([(_UIActivityContentTitleView *)v40 hasCloseButton])
      {
        v27 = [(UIActivityContentViewController *)self isCloseButtonOnLeadingEdge];
        v28 = [(UIActivityContentViewController *)self closeButton];
        v29 = [(UIActivityContentViewController *)self navigationItem];
        v30 = v29;
        if (v27)
        {
          [v29 setLeftBarButtonItem:v28];
        }

        else
        {
          [v29 setRightBarButtonItem:v28];
        }
      }

      v31 = [(UIActivityContentViewController *)self navigationItem];
      [v31 _setManualScrollEdgeAppearanceEnabled:1];

      if (v5 | ((_ShareSheetSolariumEnabled() & 1) == 0))
      {
        if (v5)
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
        v34 = [(UIActivityContentViewController *)self navigationItem];
        [v34 setScrollEdgeAppearance:v33];

        if (v5)
        {
          v35 = [(UIActivityContentViewController *)self navigationItem];
          [v35 setStandardAppearance:v33];
        }

        else
        {
          v35 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
          [v35 configureWithDefaultBackground];
          v36 = [MEMORY[0x1E69DC888] separatorColor];
          [v35 setShadowColor:v36];

          v37 = [(UIActivityContentViewController *)self navigationItem];
          [v37 setStandardAppearance:v35];
        }

        v38 = [(UIActivityContentViewController *)self navigationItem];
        [v38 _setManualScrollEdgeAppearanceProgress:0.0];
      }

      if ([(UIActivityContentViewController *)self hideNavigationBar]|| [(UIActivityContentViewController *)self hideHeaderView]&& ![(_UIActivityContentTitleView *)v40 hasCloseButton])
      {
        v39 = [(UIActivityContentViewController *)self navigationController];
        [v39 setNavigationBarHidden:1];
      }
    }

    v3 = v40;
  }
}

- (void)_updateHeaderContentInsets
{
  v28 = *MEMORY[0x1E69E9840];
  if (_ShareSheetSolariumEnabled())
  {
    v3 = [(UIActivityContentViewController *)self cachedHorizontalLayoutSection];

    if (v3)
    {
      v4 = [(UIActivityContentViewController *)self cachedHorizontalLayoutSection];
      v5 = [v4 layoutSection];
      [v5 contentInsets];
      v7 = v6;

      v8 = [(UIActivityContentViewController *)self cachedHorizontalLayoutSection];
      [v8 cellSideInset];
      v10 = v7 + v9;

      v11 = [(UIActivityContentViewController *)self navigationController];
      v12 = [v11 navigationBar];
      [v12 frame];
      v14 = v10 - v13;

      v15 = fmax(v14, 0.0);
      v16 = [(UIActivityContentViewController *)self layoutSpec];
      [v16 peopleSectionTopInset];
      v18 = v17;

      v19 = [(UIActivityContentViewController *)self headerTitleView];
      [v19 setDirectionalLayoutMargins:{v15, v10, v18, v10}];

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
  v3 = [(UIActivityContentViewController *)self dividerLineView];

  if (v3)
  {
    v4 = [(UIActivityContentViewController *)self navigationController];
    v5 = [v4 navigationBar];
    [v5 frame];
    v7 = v6;
    v8 = [(UIActivityContentViewController *)self navigationController];
    v9 = [v8 navigationBar];
    [v9 frame];
    v11 = v7 + v10;

    v12 = [(UIActivityContentViewController *)self cachedHorizontalLayoutSection];
    v13 = [v12 layoutSection];
    [v13 contentInsets];
    v15 = v14;

    v16 = [(UIActivityContentViewController *)self cachedHorizontalLayoutSection];
    [v16 cellSideInset];
    v18 = v15 + v17;

    v19 = [(UIActivityContentViewController *)self view];
    [v19 bounds];
    v21 = v20 + v18 * -2.0;
    v22 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v22 scale];
    v24 = round(v21 * v23);
    v25 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v25 scale];
    v27 = v24 / v26;

    v28 = [(UIActivityContentViewController *)self dividerLineView];
    [v28 setFrame:{v18, v11, v27, 1.0}];
  }
}

- (void)linkViewNeedsResize:(id)a3
{
  v4 = [(UIActivityContentViewController *)self headerTitleView];
  [v4 setNeedsUpdateConstraints];

  v5 = [(UIActivityContentViewController *)self headerTitleView];
  [v5 setNeedsLayout];

  v6 = [(UIActivityContentViewController *)self activityCollectionView];
  [v6 setNeedsUpdateConstraints];
}

- (void)_updateBlurBackgroundIfNeeded
{
  v3 = [(UIActivityContentViewController *)self backgroundView];

  if (v3)
  {
    v4 = [(UIActivityContentViewController *)self hostSLMEnabled];
    if (v4 && (v5 = v4, -[UIActivityContentViewController hostSLMEnabled](self, "hostSLMEnabled"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 BOOLValue], v6, v5, !v7))
    {
      v8 = 0;
    }

    else
    {
      v8 = _ShareSheetSolariumEnabled();
    }

    v9 = [(UIActivityContentViewController *)self backgroundView];
    [v9 setHidden:v8];
  }
}

- (void)_configureCollectionViewIfNeeded
{
  v3 = [(UIActivityContentViewController *)self activityCollectionView];
  if (v3)
  {

    return;
  }

  if (([(UIActivityContentViewController *)self isViewLoaded]& 1) == 0)
  {
    return;
  }

  v4 = [MEMORY[0x1E69DC888] clearColor];
  v5 = [(UIActivityContentViewController *)self view];
  [v5 setBackgroundColor:v4];

  v6 = [(UIActivityContentViewController *)self traitCollection];
  v7 = [v6 userInterfaceIdiom];

  if (v7 <= 1 && ![(UIActivityContentViewController *)self configureForCloudSharing])
  {
    v8 = [MEMORY[0x1E69DC730] effectWithStyle:9];
    v9 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v8];
    [(UIActivityContentViewController *)self setBackgroundView:v9];
    v10 = [(UIActivityContentViewController *)self backgroundView];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

    v11 = [(UIActivityContentViewController *)self view];
    v12 = [(UIActivityContentViewController *)self backgroundView];
    [v11 addSubview:v12];
  }

  [(UIActivityContentViewController *)self _updateBlurBackgroundIfNeeded];
  v13 = [_UIActivityContentCollectionView alloc];
  v14 = [(UIActivityContentViewController *)self view];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [(UIActivityContentViewController *)self activityCollectionViewLayout];
  v24 = [(_UIActivityContentCollectionView *)v13 initWithFrame:v23 collectionViewLayout:v16, v18, v20, v22];

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
  v25 = [(UIActivityContentViewController *)self view];
  [v25 addSubview:v24];

  objc_initWeak(&location, self);
  v26 = objc_alloc(MEMORY[0x1E69DC820]);
  v27 = [(UIActivityContentViewController *)self activityCollectionView];
  v75[0] = MEMORY[0x1E69E9820];
  v75[1] = 3221225472;
  v75[2] = __67__UIActivityContentViewController__configureCollectionViewIfNeeded__block_invoke;
  v75[3] = &unk_1E71F9EE0;
  objc_copyWeak(&v76, &location);
  v28 = [v26 initWithCollectionView:v27 cellProvider:v75];
  [(UIActivityContentViewController *)self setDiffableDataSource:v28];

  v73[0] = MEMORY[0x1E69E9820];
  v73[1] = 3221225472;
  v73[2] = __67__UIActivityContentViewController__configureCollectionViewIfNeeded__block_invoke_2;
  v73[3] = &unk_1E71F9F08;
  objc_copyWeak(&v74, &location);
  v29 = [(UIActivityContentViewController *)self diffableDataSource];
  [v29 setSupplementaryViewProvider:v73];

  if (_ShareSheetSolariumEnabled())
  {
    v30 = [(UIActivityContentViewController *)self customViewController];
    if (v30)
    {
LABEL_17:

      goto LABEL_18;
    }

    if (![(UIActivityContentViewController *)self hideHeaderView])
    {
      v31 = [SHSheetDividerLineView alloc];
      v32 = [(UIActivityContentViewController *)self view];
      [v32 bounds];
      v33 = [(SHSheetDividerLineView *)v31 initWithFrame:0.0, 0.0];
      [(UIActivityContentViewController *)self setDividerLineView:v33];

      v30 = [(UIActivityContentViewController *)self view];
      v34 = [(UIActivityContentViewController *)self dividerLineView];
      [v30 addSubview:v34];

      goto LABEL_17;
    }
  }

LABEL_18:
  [(_UIActivityContentCollectionView *)v24 addObserver:self forKeyPath:@"contentSize" options:1 context:0];
  v35 = objc_opt_new();
  v36 = [(UIActivityContentViewController *)self backgroundView];

  if (v36)
  {
    v37 = [(UIActivityContentViewController *)self backgroundView];
    v38 = [v37 leadingAnchor];
    v39 = [(UIActivityContentViewController *)self view];
    v40 = [v39 leadingAnchor];
    v41 = [v38 constraintEqualToAnchor:v40];
    [v35 addObject:v41];

    v42 = [(UIActivityContentViewController *)self backgroundView];
    v43 = [v42 trailingAnchor];
    v44 = [(UIActivityContentViewController *)self view];
    v45 = [v44 trailingAnchor];
    v46 = [v43 constraintEqualToAnchor:v45];
    [v35 addObject:v46];

    v47 = [(UIActivityContentViewController *)self backgroundView];
    v48 = [v47 topAnchor];
    v49 = [(UIActivityContentViewController *)self view];
    v50 = [v49 topAnchor];
    v51 = [v48 constraintEqualToAnchor:v50];
    [v35 addObject:v51];

    v52 = [(UIActivityContentViewController *)self backgroundView];
    v53 = [v52 bottomAnchor];
    v54 = [(UIActivityContentViewController *)self view];
    v55 = [v54 bottomAnchor];
    v56 = [v53 constraintEqualToAnchor:v55];
    [v35 addObject:v56];
  }

  v57 = [(_UIActivityContentCollectionView *)v24 leadingAnchor];
  v58 = [(UIActivityContentViewController *)self view];
  v59 = [v58 leadingAnchor];
  v60 = [v57 constraintEqualToAnchor:v59];
  [v35 addObject:v60];

  v61 = [(_UIActivityContentCollectionView *)v24 trailingAnchor];
  v62 = [(UIActivityContentViewController *)self view];
  v63 = [v62 trailingAnchor];
  v64 = [v61 constraintEqualToAnchor:v63];
  [v35 addObject:v64];

  v65 = [(_UIActivityContentCollectionView *)v24 topAnchor];
  v66 = [(UIActivityContentViewController *)self view];
  v67 = [v66 topAnchor];
  v68 = [v65 constraintEqualToAnchor:v67];
  [v35 addObject:v68];

  v69 = [(_UIActivityContentCollectionView *)v24 bottomAnchor];
  v70 = [(UIActivityContentViewController *)self view];
  v71 = [v70 bottomAnchor];
  v72 = [v69 constraintEqualToAnchor:v71];
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

- (void)_configureMagicHeadCell:(id)a3 withProxy:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a4 identifier];
  [(UIActivityContentViewController *)self _configurePeopleCell:v6 itemIdentifier:v7];

  v8 = share_sheet_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 displayName];
    v10 = [v6 subtitle];
    v11 = 138412546;
    v12 = v9;
    v13 = 2112;
    v14 = v10;
    _os_log_impl(&dword_18B359000, v8, OS_LOG_TYPE_DEFAULT, "_configureMagicHeadCell: displayName:%@ subtitle:%@", &v11, 0x16u);
  }
}

- (void)_configureAirDropCell:(id)a3 withChange:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v6 displayName];
  v8 = [v6 status];
  v9 = share_sheet_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = v6;
    _os_log_impl(&dword_18B359000, v9, OS_LOG_TYPE_DEFAULT, "configure AirDrop cell with change:%@", &v20, 0xCu);
  }

  if (v7 | v8)
  {
    v10 = [v6 state];
    [v6 progress];
    [v5 setProgress:v10 != 5 animated:v11 / 100.0];
    v12 = [v7 slotIdentifier];
    v13 = [v8 slotIdentifier];
    v14 = [v7 text];
    [v5 setDisplayName:v14];

    [v5 setTextSlotID:v12];
    v15 = [v8 text];
    [v5 setSubtitle:v15];

    [v5 setSubtitleSlotID:v13];
    if ((v10 - 5) > 1)
    {
      if (v10 == 4)
      {
        v16 = [MEMORY[0x1E69DC888] systemBlueColor];
        [v5 setSubtitleTextColor:v16];
        goto LABEL_13;
      }

      v16 = 0;
    }

    else
    {
      v16 = [MEMORY[0x1E69DC888] systemRedColor];
    }

    [v5 setSubtitleTextColor:v16];
    if ((v10 - 1) <= 1)
    {
      [v5 startPulsing];
LABEL_14:
      v17 = share_sheet_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v5 displayName];
        v19 = [v5 subtitle];
        v20 = 138412546;
        v21 = v18;
        v22 = 2112;
        v23 = v19;
        _os_log_impl(&dword_18B359000, v17, OS_LOG_TYPE_DEFAULT, "did update airdrop cell with displayName:%@ subtitle:%@", &v20, 0x16u);
      }

      goto LABEL_17;
    }

LABEL_13:
    [v5 stopPulsing];
    goto LABEL_14;
  }

  [v5 stopPulsing];
  v16 = share_sheet_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    [UIActivityContentViewController _configureAirDropCell:withChange:];
  }

LABEL_17:
}

- (void)_configurePeopleCell:(id)a3 itemIdentifier:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [v6 setStateBeingRestored:1];
  v8 = [(UIActivityContentViewController *)self dataSourceManager];
  v9 = [v8 dataSource];

  v10 = [v9 peopleProxyForIdentifier:v7];
  if (!v10)
  {
    v10 = [v9 airDropProxy];
  }

  v11 = share_sheet_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v47 = v10;
    _os_log_impl(&dword_18B359000, v11, OS_LOG_TYPE_DEFAULT, "configure people cell for proxy:%@", buf, 0xCu);
  }

  v12 = [v10 identifier];
  [v6 setNode:v10];
  v13 = [(UIActivityContentViewController *)self activeAirDropTransferChange];
  v14 = [v13 proxyIdentifier];
  v15 = [v12 isEqual:v14];

  if (v15)
  {
    [(UIActivityContentViewController *)self _configureAirDropCell:v6 withChange:v13];
  }

  else
  {
    v16 = [v10 isPlaceholder];
    [v6 setIdentifier:v12];
    [v6 setImageSlotID:{objc_msgSend(v10, "avatarImageSlotID")}];
    [v6 setTransportSlotID:{objc_msgSend(v10, "transportImageSlotID")}];
    v17 = [v10 displayName];
    [v6 setTextSlotID:{objc_msgSend(v17, "slotIdentifier")}];

    v18 = [v10 subtitle];
    [v6 setSubtitleSlotID:{objc_msgSend(v18, "slotIdentifier")}];

    v19 = [v10 displayName];
    v20 = [v19 text];
    [v6 setDisplayName:v20];

    v21 = [v10 subtitle];
    v22 = [v21 text];
    [v6 setSubtitle:v22];

    [v6 setDisabled:{objc_msgSend(v10, "isDisabled")}];
    v23 = [v10 peopleSuggestion];
    v24 = [v23 transportBundleIdentifier];
    if ([v24 isEqualToString:@"com.apple.UIKit.activity.AirDrop"])
    {
      v25 = @"airDropCell";
    }

    else
    {
      v25 = @"peopleCell";
    }

    [v6 setAccessibilityIdentifier:v25];

    [v6 setLongPressable:1];
    v26 = [v10 peopleSuggestion];
    [v6 setIsGroup:{objc_msgSend(v26, "isGroup")}];
    if (!v26 || (v16 & 1) != 0)
    {
      [v6 setImage:0];
      [v6 setTransportImage:0];
    }

    else
    {
      v39 = [MEMORY[0x1E695DFA8] set];
      if ([v26 isTapToRadar])
      {
        v27 = MEMORY[0x1E69DCAB8];
        v28 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v29 = [v27 imageNamed:@"FramedBugIcon" inBundle:v28];

        [v6 setImage:v29];
      }

      else
      {
        v30 = [(UIActivityContentViewController *)self peopleSuggestionImageProvider];
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = __71__UIActivityContentViewController__configurePeopleCell_itemIdentifier___block_invoke;
        v43[3] = &unk_1E71F9430;
        v38 = v6;
        v44 = v38;
        v37 = v12;
        v45 = v37;
        v31 = [v30 requestAvatarImageForPeopleSuggestion:v26 resultHandler:v43];

        if (v31)
        {
          v32 = [MEMORY[0x1E696AD98] numberWithInt:v31];
          [v39 addObject:v32];
        }

        v33 = [(UIActivityContentViewController *)self peopleSuggestionImageProvider];
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __71__UIActivityContentViewController__configurePeopleCell_itemIdentifier___block_invoke_2;
        v40[3] = &unk_1E71F9430;
        v41 = v38;
        v42 = v37;
        v34 = [v33 requestTransportImageForPeopleSuggestion:v26 resultHandler:v40];

        if (v34)
        {
          v35 = [MEMORY[0x1E696AD98] numberWithInt:v34];
          [v39 addObject:v35];
        }

        v29 = v44;
      }

      v36 = [(UIActivityContentViewController *)self identifiersToPeopleSuggestionImageRequestIDs];
      [v36 setObject:v39 forKeyedSubscript:v7];
    }
  }

  [v6 setStateBeingRestored:0];
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

- (void)_configureSharingAppCell:(id)a3 itemIdentifier:(id)a4
{
  v63 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(UIActivityContentViewController *)self dataSourceManager];
  v9 = [v8 dataSource];

  v10 = [v9 activityForIdentifier:v7];
  v48 = v9;
  v11 = [v9 shareProxyForIdentifier:v7];
  v12 = share_sheet_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v60 = v10;
    v61 = 2112;
    v62 = v11;
    _os_log_impl(&dword_18B359000, v12, OS_LOG_TYPE_DEFAULT, "configure sharing cell for activity:%@ proxy:%@", buf, 0x16u);
  }

  v13 = [v10 activityType];

  v14 = [v11 activityTitle];
  v15 = [v14 text];

  v49 = v10;
  if (v10 && !v15)
  {
    v16 = [(UIActivityContentViewController *)self presenter];
    v17 = [v10 activityType];
    v18 = [v16 customTitleForActivityType:v17];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = [v10 activityTitle];
    }

    v21 = v20;

    v15 = v21;
  }

  if ([v11 isUserDefaultsActivity])
  {
    v22 = 0;
  }

  else
  {
    v22 = [v11 isDisabled] ^ 1;
  }

  [v6 setIdentifier:v7];
  [v6 setActivityProxy:v11];
  [v6 setTitle:v15];
  [v6 setImageSlotID:{objc_msgSend(v11, "iconImageSlotID")}];
  v23 = [v11 activityTitle];
  [v6 setTitleSlotID:{objc_msgSend(v23, "slotIdentifier")}];

  if (v13 == @"com.apple.UIKit.activity.AirDrop")
  {
    v24 = [v48 nearbyCountSlotID];
  }

  else
  {
    v24 = 0;
  }

  v47 = v15;
  [v6 setBadgeSlotID:v24];
  [v6 setLongPressable:v22];
  [v6 setDisabled:{objc_msgSend(v11, "isDisabled")}];
  [v6 setAccessibilityIdentifier:@"shareCell"];
  v25 = [(UIActivityContentViewController *)self layoutSpec];
  v26 = [v25 traitCollection];
  v27 = [v26 preferredContentSizeCategory];

  v28 = [(UIActivityContentViewController *)self layoutSpec];
  v29 = [v28 traitCollection];
  v30 = [v29 userInterfaceStyle];

  v31 = [v11 applicationBundleIdentifier];
  v32 = [v49 _activityImageUTI];
  v33 = v32;
  if (v32)
  {
    v34 = v32;
  }

  else
  {
    v34 = [v11 activityImageUTI];
  }

  v35 = v34;

  if ([v11 iconImageSlotID])
  {
    [v6 setImage:0];
    v36 = 0;
    goto LABEL_27;
  }

  if (v35)
  {
    v37 = [(UIActivityContentViewController *)self activityImageProvider];
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __75__UIActivityContentViewController__configureSharingAppCell_itemIdentifier___block_invoke;
    v56[3] = &unk_1E71F9430;
    v57 = v6;
    v58 = v7;
    v36 = [v37 requestImageForUTI:v35 activityCategory:1 contentSizeCategory:v27 userInterfaceStyle:v30 iconFormat:10 synchronous:0 resultHandler:v56];

    v38 = v57;
LABEL_26:

    goto LABEL_27;
  }

  if (v31)
  {
    v39 = [(UIActivityContentViewController *)self activityImageProvider];
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __75__UIActivityContentViewController__configureSharingAppCell_itemIdentifier___block_invoke_2;
    v53[3] = &unk_1E71F9430;
    v54 = v6;
    v55 = v7;
    v36 = [v39 requestImageForBundleIdentifier:v31 activityCategory:1 contentSizeCategory:v27 userInterfaceStyle:v30 iconFormat:10 synchronous:0 resultHandler:v53];

    v38 = v54;
    goto LABEL_26;
  }

  if (v49)
  {
    v40 = [(UIActivityContentViewController *)self activityImageProvider];
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __75__UIActivityContentViewController__configureSharingAppCell_itemIdentifier___block_invoke_3;
    v50[3] = &unk_1E71F9430;
    v51 = v6;
    v52 = v7;
    v36 = [v40 requestImageForActivity:v49 contentSizeCategory:v27 userInterfaceStyle:v30 imageSymbolConfiguration:0 synchronous:0 resultHandler:v50];

    v38 = v51;
    goto LABEL_26;
  }

  [v6 setImage:0];
  v46 = share_sheet_log();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
  {
    [UIActivityContentViewController _configureSharingAppCell:itemIdentifier:];
  }

  v36 = 0;
LABEL_27:
  v41 = [(UIActivityContentViewController *)self pulsingActivityIdentifier];
  v42 = [v41 isEqual:v7];

  if (v42)
  {
    v43 = [(UIActivityContentViewController *)self pulsingLocalizedTitle];
    [v6 setTitle:v43];

    [v6 startPulsing];
  }

  if (v36)
  {
    v44 = [MEMORY[0x1E696AD98] numberWithInt:v36];
    v45 = [(UIActivityContentViewController *)self identifiersToActivityImageRequestID];
    [v45 setObject:v44 forKeyedSubscript:v7];
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

- (void)_configureHeroActionCell:(id)a3 itemIdentifier:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(UIActivityContentViewController *)self dataSourceManager];
  v9 = [v8 dataSource];

  v10 = [v9 activityForIdentifier:v7];

  [v6 setDisabled:{objc_msgSend(v10, "_isDisabled")}];
  v11 = [(UIActivityContentViewController *)self _activityTitleForActivity:v10];
  v12 = [v6 titleLabel];
  [v12 setText:v11];

  [v6 setAccessibilityIdentifier:@"heroActionCell"];
  v13 = share_sheet_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412290;
    v23 = v10;
    _os_log_impl(&dword_18B359000, v13, OS_LOG_TYPE_DEFAULT, "configure hero action cell for activity:%@", &v22, 0xCu);
  }

  v14 = [v10 _systemImageName];

  if (v14)
  {
    v15 = MEMORY[0x1E69DCAB8];
    v16 = [v10 _systemImageName];
    v17 = [v15 _systemImageNamed:v16];
    v18 = [(UIActivityContentViewController *)self layoutSpec];
    v19 = [v18 activityImageSymbolConfiguration];
    v20 = [v17 imageByApplyingSymbolConfiguration:v19];
  }

  else
  {
    v16 = [v10 _actionImage];
    v20 = [v16 imageWithRenderingMode:2];
  }

  v21 = [v6 activityImageView];
  [v21 setImage:v20];
}

- (void)_configureHorizontalActionCell:(id)a3 itemIdentifier:(id)a4
{
  v78 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(UIActivityContentViewController *)self dataSourceManager];
  v9 = [v8 dataSource];

  v10 = [v9 activityForIdentifier:v7];
  v59 = v9;
  v11 = [v9 actionProxyForIdentifier:v7];
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

  v13 = [objc_opt_class() _activityStyle];
  v14 = [MEMORY[0x1E69DC888] labelColor];
  v15 = MEMORY[0x1E69DD1B8];
  v16 = [(UIActivityContentViewController *)self traitCollection];
  v17 = [v15 traitCollectionWithUserInterfaceStyle:{objc_msgSend(v16, "userInterfaceStyle")}];
  v18 = [v14 resolvedColorWithTraitCollection:v17];

  v58 = v18;
  if (v13 == 1)
  {
    v19 = [MEMORY[0x1E69DC888] systemRedColor];
  }

  else
  {
    v19 = v18;
  }

  v63 = v19;
  v20 = v11;
  [v6 setIdentifier:v7];
  [v6 setActivityProxy:v11];
  [v6 setAccessibilityIdentifier:@"actionGroupCell"];
  v21 = [v11 activityTitle];
  v22 = [v21 text];

  if (v10 && !v22)
  {
    v23 = [(UIActivityContentViewController *)self heroActionActivityTypes];
    v24 = [v10 activityType];
    v25 = [v23 containsObject:v24];

    if (v25)
    {
      v22 = [(UIActivityContentViewController *)self _activityTitleForActivity:v10];
      v26 = share_sheet_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v75 = v22;
        _os_log_impl(&dword_18B359000, v26, OS_LOG_TYPE_DEFAULT, "hero action title:%@", buf, 0xCu);
      }
    }

    else
    {
      v27 = [(UIActivityContentViewController *)self presenter];
      v28 = [v10 activityType];
      v26 = [v27 customTitleForActivityType:v28];

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

        v22 = v26;
      }

      else
      {
        v22 = [v10 activityTitle];
      }
    }
  }

  [v6 setTitle:v22];
  v30 = [(UIActivityContentViewController *)self layoutSpec];
  v31 = [v30 traitCollection];
  [v31 preferredContentSizeCategory];
  v33 = v32 = v6;

  v34 = [(UIActivityContentViewController *)self layoutSpec];
  v35 = [v34 traitCollection];
  v36 = [v35 userInterfaceStyle];

  v37 = [v61 applicationBundleIdentifier];
  v64 = v10;
  v38 = [v10 _activityImageUTI];
  v56 = v38;
  v57 = v22;
  v60 = v33;
  v54 = v37;
  v55 = self;
  if (v38)
  {
    v39 = v38;
    v40 = [(UIActivityContentViewController *)self activityImageProvider];
    v71[0] = MEMORY[0x1E69E9820];
    v71[1] = 3221225472;
    v71[2] = __81__UIActivityContentViewController__configureHorizontalActionCell_itemIdentifier___block_invoke;
    v71[3] = &unk_1E71F9430;
    v41 = &v72;
    v72 = v32;
    v42 = &v73;
    v43 = v7;
    v73 = v7;
    v20 = v61;
    v44 = [v40 requestImageForUTI:v39 activityCategory:0 contentSizeCategory:v33 userInterfaceStyle:v36 iconFormat:10 synchronous:0 resultHandler:v71];
    v10 = v64;
    v45 = v32;
  }

  else if (v37)
  {
    v40 = [(UIActivityContentViewController *)self activityImageProvider];
    v68[0] = MEMORY[0x1E69E9820];
    v68[1] = 3221225472;
    v68[2] = __81__UIActivityContentViewController__configureHorizontalActionCell_itemIdentifier___block_invoke_2;
    v68[3] = &unk_1E71F9430;
    v46 = v37;
    v41 = &v69;
    v45 = v32;
    v69 = v32;
    v42 = &v70;
    v43 = v7;
    v70 = v7;
    v20 = v61;
    v44 = [v40 requestImageForBundleIdentifier:v46 activityCategory:0 contentSizeCategory:v60 userInterfaceStyle:v36 iconFormat:10 synchronous:0 resultHandler:v68];
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

    v40 = [(UIActivityContentViewController *)self activityImageProvider];
    v62 = [(UIActivityContentViewController *)self layoutSpec];
    v53 = [v62 horizontalActivityImageSymbolConfiguration];
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __81__UIActivityContentViewController__configureHorizontalActionCell_itemIdentifier___block_invoke_3;
    v65[3] = &unk_1E71F9430;
    v41 = &v66;
    v45 = v32;
    v66 = v32;
    v42 = &v67;
    v43 = v7;
    v67 = v7;
    v44 = [v40 requestImageForActivity:v10 contentSizeCategory:v60 userInterfaceStyle:v36 imageSymbolConfiguration:v53 synchronous:0 resultHandler:v65];
  }

  v7 = v43;
  v37 = v54;
  if (v44)
  {
    v47 = [MEMORY[0x1E696AD98] numberWithInt:v44];
    v48 = [(UIActivityContentViewController *)v55 identifiersToActivityImageRequestID];
    [v48 setObject:v47 forKeyedSubscript:v43];
  }

LABEL_25:
  [v45 setContentTintColor:v63];
  if ([v10 _isDisabled])
  {
    v49 = 1;
  }

  else
  {
    v49 = [v20 isDisabled];
  }

  [v45 setDisabled:v49];
  [v45 setImageSlotID:{objc_msgSend(v20, "iconImageSlotID")}];
  v50 = [v20 activityTitle];
  [v45 setTitleSlotID:{objc_msgSend(v50, "slotIdentifier")}];

  v51 = share_sheet_log();
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
  {
    v52 = [v64 _activitySubtitle];
    *buf = 138412290;
    v75 = v52;
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

- (void)_configureActionCell:(id)a3 itemIdentifier:(id)a4
{
  v83 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(UIActivityContentViewController *)self dataSourceManager];
  v9 = [v8 dataSource];

  v10 = [v9 activityForIdentifier:v7];
  v68 = v9;
  v11 = [v9 actionProxyForIdentifier:v7];
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

  v13 = [objc_opt_class() _activityStyle];
  v14 = [MEMORY[0x1E69DC888] labelColor];
  v15 = MEMORY[0x1E69DD1B8];
  v16 = [(UIActivityContentViewController *)self traitCollection];
  v17 = [v15 traitCollectionWithUserInterfaceStyle:{objc_msgSend(v16, "userInterfaceStyle")}];
  v18 = [v14 resolvedColorWithTraitCollection:v17];

  if (v13 == 1)
  {
    v19 = [MEMORY[0x1E69DC888] systemRedColor];
  }

  else
  {
    v19 = v18;
  }

  v69 = v19;
  v20 = v67;
  [v6 setIdentifier:v7];
  [v6 setActivityProxy:v67];
  v21 = [v67 activityTitle];
  [v21 slotTextHeight];
  [v6 setPlatterTextHeight:?];

  [v6 setAccessibilityIdentifier:@"actionGroupCell"];
  v22 = [v67 activityTitle];
  v23 = [v22 text];

  v64 = v18;
  if (v10 && !v23)
  {
    v24 = [(UIActivityContentViewController *)self heroActionActivityTypes];
    v25 = [v10 activityType];
    v26 = [v24 containsObject:v25];

    if (v26)
    {
      v23 = [(UIActivityContentViewController *)self _activityTitleForActivity:v10];
      v27 = share_sheet_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v80 = v23;
        _os_log_impl(&dword_18B359000, v27, OS_LOG_TYPE_DEFAULT, "hero action title:%@", buf, 0xCu);
      }
    }

    else
    {
      v28 = [(UIActivityContentViewController *)self presenter];
      v29 = [v10 activityType];
      v27 = [v28 customTitleForActivityType:v29];

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

        v23 = v27;
      }

      else
      {
        v23 = [v10 activityTitle];
      }
    }
  }

  v63 = v23;
  [v6 setTitle:v23];
  v31 = [(UIActivityContentViewController *)self layoutSpec];
  v32 = [v31 traitCollection];
  v66 = [v32 preferredContentSizeCategory];

  v33 = [(UIActivityContentViewController *)self layoutSpec];
  v34 = [v33 traitCollection];
  v35 = [v34 userInterfaceStyle];

  v65 = [v67 applicationBundleIdentifier];
  v36 = [v10 _activityImageUTI];
  if (v36 || ([v67 activityImageUTI], (v36 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v37 = v36;
    v38 = v7;
    v39 = [(UIActivityContentViewController *)self activityImageProvider];
    v76[0] = MEMORY[0x1E69E9820];
    v76[1] = 3221225472;
    v76[2] = __71__UIActivityContentViewController__configureActionCell_itemIdentifier___block_invoke;
    v76[3] = &unk_1E71F9430;
    v40 = &v77;
    v77 = v6;
    v41 = &v78;
    v78 = v7;
    v42 = [v39 requestImageForUTI:v37 activityCategory:0 contentSizeCategory:v66 userInterfaceStyle:v35 iconFormat:10 synchronous:0 resultHandler:v76];
  }

  else
  {
    if (v65)
    {
      v59 = [(UIActivityContentViewController *)self activityImageProvider];
      v73[0] = MEMORY[0x1E69E9820];
      v73[1] = 3221225472;
      v73[2] = __71__UIActivityContentViewController__configureActionCell_itemIdentifier___block_invoke_2;
      v73[3] = &unk_1E71F9430;
      v40 = &v74;
      v74 = v6;
      v41 = &v75;
      v38 = v7;
      v75 = v7;
      v42 = [v59 requestImageForBundleIdentifier:v65 activityCategory:0 contentSizeCategory:v66 userInterfaceStyle:v35 iconFormat:10 synchronous:0 resultHandler:v73];
    }

    else
    {
      if (!v10)
      {
        [v6 setImage:0];
        v37 = 0;
        goto LABEL_24;
      }

      v61 = [(UIActivityContentViewController *)self activityImageProvider];
      v62 = [(UIActivityContentViewController *)self layoutSpec];
      v60 = [v62 activityImageSymbolConfiguration];
      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 3221225472;
      v70[2] = __71__UIActivityContentViewController__configureActionCell_itemIdentifier___block_invoke_3;
      v70[3] = &unk_1E71F9F30;
      v40 = &v71;
      v71 = v6;
      v41 = v72;
      v38 = v7;
      v72[0] = v7;
      v72[1] = self;
      v42 = [v61 requestImageForActivity:v10 contentSizeCategory:v66 userInterfaceStyle:v35 imageSymbolConfiguration:v60 synchronous:0 resultHandler:v70];
    }

    v37 = 0;
  }

  if (v42)
  {
    v43 = [MEMORY[0x1E696AD98] numberWithInt:v42];
    v44 = [(UIActivityContentViewController *)self identifiersToActivityImageRequestID];
    v7 = v38;
    [v44 setObject:v43 forKeyedSubscript:v38];
  }

  else
  {
    v7 = v38;
  }

  v20 = v67;
  v9 = v68;
LABEL_24:
  [v6 setContentTintColor:v69];
  if ([v10 _isDisabled])
  {
    v45 = 1;
  }

  else
  {
    v45 = [v20 isDisabled];
  }

  [v6 setDisabled:v45];
  v46 = [v10 _activitySubtitle];
  [v6 setSubtitle:v46];

  v47 = [v10 _activityStatusImage];
  [v6 setStatusImage:v47];

  [v6 setImageSlotID:{objc_msgSend(v20, "iconImageSlotID")}];
  v48 = [v20 activityTitle];
  [v6 setTitleSlotID:{objc_msgSend(v48, "slotIdentifier")}];

  v49 = [v10 _activityStatusTintColor];
  [v6 setStatusImageTintColor:v49];

  v50 = [v10 _activityBadgeText];
  v51 = [v10 _activityBadgeTextColor];
  v52 = v51;
  if (v51)
  {
    v53 = v51;
  }

  else
  {
    v53 = [MEMORY[0x1E69DC888] whiteColor];
  }

  v54 = v53;

  v55 = [v10 _activityBadgeColor];
  v56 = v55;
  if (v55)
  {
    v57 = v55;
  }

  else
  {
    v57 = [MEMORY[0x1E69DC888] systemRedColor];
  }

  v58 = v57;

  [v6 setBadgeText:v50 textColor:v54 backgroundColor:v58];
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

- (id)_provideCellForCollectionView:(id)a3 indexPath:(id)a4 itemIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(UIActivityContentViewController *)self currentSnapshot];
  v12 = [v11 sectionIdentifierForSectionContainingItemIdentifier:v10];

  v13 = [(UIActivityContentViewController *)self dataSourceManager];
  v14 = [v13 dataSource];

  v15 = [(UIActivityContentViewController *)self layoutSpec];
  v16 = ([v15 isAccessibilityContentSize] & 1) == 0 && -[UIActivityContentViewController showHeroActionsHorizontally](self, "showHeroActionsHorizontally");

  v17 = share_sheet_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [UIActivityContentViewController _provideCellForCollectionView:indexPath:itemIdentifier:];
  }

  if ([v12 isEqualToString:@"SHSheetContentCustomViewSectionIdentifier"])
  {
    v18 = [v8 dequeueReusableCellWithReuseIdentifier:@"UIActivityContentCustomViewCellIdentifier" forIndexPath:v9];
  }

  else if ([v12 isEqualToString:@"SHSheetContentPeopleSectionIdentifier"])
  {
    v19 = [v14 airDropProxy];
    v20 = [v19 identifier];
    v21 = [v10 isEqual:v20];

    v22 = share_sheet_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [UIActivityContentViewController _provideCellForCollectionView:indexPath:itemIdentifier:];
    }

    if (v21)
    {
      v18 = [v8 dequeueReusableCellWithReuseIdentifier:@"UIActivityContentMagicHeadCellIdentifier" forIndexPath:v9];
      v23 = [(UIActivityContentViewController *)self layoutSpec];
      [v18 configureLayoutIfNeeded:v23];

      v24 = [v19 identifier];
      [v18 setIdentifier:v24];

      [v18 setNode:v19];
      [v18 setAccessibilityIdentifier:@"airDropCell"];
    }

    else
    {
      v18 = [v8 dequeueReusableCellWithReuseIdentifier:@"UIActivityContentAirDropCellIdentifier" forIndexPath:v9];
      v26 = [(UIActivityContentViewController *)self layoutSpec];
      [v18 configureLayoutIfNeeded:v26];

      [(UIActivityContentViewController *)self _configurePeopleCell:v18 itemIdentifier:v10];
    }
  }

  else if ([v12 isEqualToString:@"SHSheetContentAppsSectionIdentifier"])
  {
    v18 = [v8 dequeueReusableCellWithReuseIdentifier:@"UIActivityContentShareCellIdentifier" forIndexPath:v9];
    v25 = [(UIActivityContentViewController *)self layoutSpec];
    [v18 configureLayoutIfNeeded:v25];

    [(UIActivityContentViewController *)self _configureSharingAppCell:v18 itemIdentifier:v10];
  }

  else if (v16 && [v12 isEqualToString:@"SHSheetContentHeroActionsSectionIdentifier"])
  {
    v18 = [v8 dequeueReusableCellWithReuseIdentifier:@"UIActivityContentHeroActionCellIdentifier" forIndexPath:v9];
    [(UIActivityContentViewController *)self _configureHeroActionCell:v18 itemIdentifier:v10];
  }

  else if ([v12 isEqualToString:@"SHSheetContentTopActionsSectionIdentifier"])
  {
    v18 = [v8 dequeueReusableCellWithReuseIdentifier:@"UIActivityContentTopActionCellIdentifier" forIndexPath:v9];
    v28 = [(UIActivityContentViewController *)self layoutSpec];
    [v18 configureLayoutIfNeeded:v28];

    [(UIActivityContentViewController *)self _configureHorizontalActionCell:v18 itemIdentifier:v10];
  }

  else
  {
    v18 = [v8 dequeueReusableCellWithReuseIdentifier:@"UIActivityContentActionCellIdentifier" forIndexPath:v9];
    [(UIActivityContentViewController *)self _configureActionCell:v18 itemIdentifier:v10];
  }

  return v18;
}

- (id)_provideSupplementaryViewForCollectionView:(id)a3 kind:(id)a4 indexPath:(id)a5
{
  v44[3] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(UIActivityContentViewController *)self currentSnapshot];
  v12 = [v11 sectionIdentifiers];

  v13 = -[UIActivityContentViewController _sectionIdentifierForIndex:](self, "_sectionIdentifierForIndex:", [v10 section]);
  v44[0] = @"SHSheetContentCustomViewSectionIdentifier";
  v44[1] = @"SHSheetContentAppsSectionIdentifier";
  v44[2] = @"SHSheetContentPeopleSectionIdentifier";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:3];
  if ((([v13 isEqualToString:@"SHSheetContentPeopleSectionIdentifier"] & 1) != 0 || objc_msgSend(v13, "isEqualToString:", @"SHSheetContentAppsSectionIdentifier")) && objc_msgSend(v9, "isEqualToString:", @"UIActivityContentHeaderSectionKind"))
  {
    v15 = [v8 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:@"UIActivityContentHeaderViewIdentifier" forIndexPath:v10];
    v16 = [(UIActivityContentViewController *)self topContentSectionText];
    [v15 titleLabel];
    v18 = v17 = v14;
    [v18 setText:v16];

    v14 = v17;
    v19 = [(UIActivityContentViewController *)self layoutSpec];
    [v19 topContentSectionHeaderInsets];
    [v15 setDirectionalLayoutMargins:?];

    v20 = @"collectionView.sectionHeader";
LABEL_15:
    [v15 setAccessibilityIdentifier:v20];
    goto LABEL_16;
  }

  if ([v13 hasPrefix:@"SHSheetContentInformationalActionsSectionIdentifier_"] && objc_msgSend(v9, "isEqualToString:", @"UIActivityContentFooterSectionKind"))
  {
    v15 = [v8 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:@"UIActivityContentInformationalActionFooterViewIdentifier" forIndexPath:v10];
    v21 = [(UIActivityContentViewController *)self _footerTextForInformationalSectionIdentifier:v13];
    v22 = [v15 footerTextView];
    [v22 setAttributedText:v21];

    v20 = @"collectionView.sectionFooter";
    goto LABEL_15;
  }

  v23 = [v12 lastObject];
  if ([v13 isEqualToString:v23])
  {
    v24 = [v14 containsObject:v13];

    if ((v24 & 1) == 0)
    {
      v15 = [v8 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:@"UIActivityContentEditViewIdentifier" forIndexPath:v10];
      if (_ShareSheetSolariumEnabled())
      {
        v25 = 1;
      }

      else
      {
        v29 = [MEMORY[0x1E69DC938] currentDevice];
        v25 = [v29 userInterfaceIdiom] == 6;
      }

      if (_ShareSheetSolariumEnabled())
      {
        v30 = [v15 editButton];
        [MEMORY[0x1E69DC888] labelColor];
        v42 = v25;
        v32 = v31 = v14;
        [v30 setTitleColor:v32 forState:0];

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
          v34 = [v15 editButton];
          v35 = [(UIActivityContentViewController *)self layoutSpec];
          v36 = [v35 editTintColor];
          [v34 setTitleColor:v36 forState:0];
        }

        v33 = @"SHARE_SHEET_EDIT_ACTIONS_BUTTON_TITLE_WITH_ELLIPSIS";
      }

      v37 = [v15 editButton];
      v38 = _ShareSheetBundle();
      v39 = [v38 localizedStringForKey:v33 value:&stru_1EFE999E0 table:@"Localizable"];
      [v37 setTitle:v39 forState:0];

      v40 = [v15 editButton];
      v41 = [(UIActivityContentViewController *)self presenter];
      [v40 addTarget:v41 action:sel_handleActionsEdit forControlEvents:64];

      [v15 setAccessibilityIdentifier:@"collectionView.footerEditView"];
      v14 = v43;
      goto LABEL_16;
    }
  }

  else
  {
  }

  if ([v9 isEqualToString:@"UIActivityContentFooterSectionKind"])
  {
    v15 = [v8 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:@"UIActivityContentFooterViewIdentifier" forIndexPath:v10];
    v26 = [(UIActivityContentViewController *)self layoutSpec];
    v27 = [v26 footerBackgroundColor];
    [v15 setBackgroundColor:v27];

    v20 = @"collectionView.footerView";
    goto LABEL_15;
  }

  v15 = 0;
LABEL_16:

  return v15;
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v15 = a4;
  v7 = -[UIActivityContentViewController _sectionIdentifierForIndex:](self, "_sectionIdentifierForIndex:", [a5 section]);
  if ([v7 isEqualToString:@"SHSheetContentCustomViewSectionIdentifier"])
  {
    v8 = [(UIActivityContentViewController *)self customViewController];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 view];
      v11 = [v15 contentView];
      [v11 bounds];
      [v10 setFrame:?];
      [v10 setAutoresizingMask:18];
      getPUCarouselSharingViewControllerClass();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [v9 view];
        [v12 setBackgroundColor:0];

        v13 = [v9 mainCollectionView];
        [v13 setBackgroundColor:0];
      }

      v14 = [v11 subviews];
      [v14 makeObjectsPerformSelector:sel_removeFromSuperview];

      [v9 willMoveToParentViewController:self];
      [(UIActivityContentViewController *)self addChildViewController:v9];
      [v11 addSubview:v10];
      [v9 didMoveToParentViewController:self];
    }
  }
}

- (void)collectionView:(id)a3 prefetchItemsAtIndexPaths:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        v11 = [(UIActivityContentViewController *)self diffableDataSource];
        v12 = [v11 itemIdentifierForIndexPath:v10];

        v13 = [(UIActivityContentViewController *)self dataSource];
        v14 = [v13 peopleProxyForIdentifier:v12];

        v15 = [v14 peopleSuggestion];
        if (v15)
        {
          v16 = [(UIActivityContentViewController *)self peopleSuggestionImageProvider];
          [v16 requestAvatarImageForPeopleSuggestion:v15 resultHandler:0];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }
}

- (void)collectionView:(id)a3 cancelPrefetchingForItemsAtIndexPaths:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = a4;
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
        v9 = [(UIActivityContentViewController *)self diffableDataSource];
        v10 = [v9 itemIdentifierForIndexPath:v8];

        v11 = [(UIActivityContentViewController *)self identifiersToPeopleSuggestionImageRequestIDs];
        v12 = [v11 objectForKeyedSubscript:v10];

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
              v19 = [(UIActivityContentViewController *)self peopleSuggestionImageProvider];
              [v19 cancelImageRequest:{objc_msgSend(v18, "intValue")}];

              ++v17;
            }

            while (v15 != v17);
            v15 = [v13 countByEnumeratingWithState:&v28 objects:v36 count:16];
          }

          while (v15);
        }

        v20 = [(UIActivityContentViewController *)self identifiersToActivityImageRequestID];
        v21 = [v20 objectForKeyedSubscript:v10];

        if (v21)
        {
          v22 = [(UIActivityContentViewController *)self identifiersToActivityImageRequestID];
          v23 = [v22 objectForKeyedSubscript:v10];
          v24 = [v23 intValue];

          v25 = [(UIActivityContentViewController *)self activityImageProvider];
          [v25 cancelImageRequest:v24];
        }

        ++v7;
      }

      while (v7 != v6);
      v6 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v6);
  }
}

- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5
{
  v7 = a4;
  v8 = a3;
  [v8 deselectItemAtIndexPath:v7 animated:0];
  v9 = [v8 cellForItemAtIndexPath:v7];

  v10 = [(UIActivityContentViewController *)self currentSnapshot];
  v11 = [(UIActivityContentViewController *)self diffableDataSource];
  v12 = [v11 itemIdentifierForIndexPath:v7];
  v13 = [v10 sectionIdentifierForSectionContainingItemIdentifier:v12];

  if ([v13 isEqualToString:@"SHSheetContentPeopleSectionIdentifier"])
  {
    v14 = v9;
    v15 = [v14 identifier];
    v16 = [(UIActivityContentViewController *)self dataSource];
    v17 = [v16 airDropProxy];
    v18 = [v17 identifier];
    v19 = v15;
    v20 = v19;
    if (v18 == v19)
    {
    }

    else
    {
      if ((v19 == 0) == (v18 != 0))
      {
      }

      else
      {
        v21 = [v18 isEqual:v19];

        if (v21)
        {
          goto LABEL_14;
        }
      }

      if ([v14 isLongPressable])
      {
        v30 = MEMORY[0x1E69DC8D8];
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __99__UIActivityContentViewController_collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke_2;
        v39[3] = &unk_1E71F9FA0;
        v39[4] = self;
        v20 = v20;
        v40 = v20;
        v29 = [v30 configurationWithIdentifier:v7 previewProvider:&__block_literal_global_13 actionProvider:v39];

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

  v14 = [MEMORY[0x1E695DF70] array];
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
  v23 = [(UIActivityContentViewController *)self dataSource];
  v24 = [v20 identifier];
  v25 = [v23 shareProxyForIdentifier:v24];

  v26 = MEMORY[0x1E69DC8D8];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __99__UIActivityContentViewController_collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke_7;
  v32[3] = &unk_1E71FA040;
  v33 = v25;
  v34 = self;
  v35 = v7;
  v37 = v22;
  v14 = v14;
  v36 = v14;
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

- (id)collectionView:(id)a3 previewForHighlightingContextMenuWithConfiguration:(id)a4
{
  v6 = a3;
  v7 = [a4 identifier];
  v8 = [(UIActivityContentViewController *)self currentSnapshot];
  v9 = [(UIActivityContentViewController *)self diffableDataSource];
  v10 = [v9 itemIdentifierForIndexPath:v7];
  v11 = [v8 sectionIdentifierForSectionContainingItemIdentifier:v10];

  v12 = [v6 cellForItemAtIndexPath:v7];
  if ([v11 isEqualToString:@"SHSheetContentPeopleSectionIdentifier"])
  {
    [v12 setTransportIconHidden:1 animated:1 useDelay:0];
  }

  v13 = [(UIActivityContentViewController *)self _contextMenuPreviewForCollectionView:v6 collectionViewCell:v12];

  return v13;
}

- (id)collectionView:(id)a3 previewForDismissingContextMenuWithConfiguration:(id)a4
{
  v6 = a3;
  v7 = [a4 identifier];
  v8 = [v6 cellForItemAtIndexPath:v7];
  v9 = [(UIActivityContentViewController *)self _contextMenuPreviewForCollectionView:v6 collectionViewCell:v8];

  return v9;
}

- (void)collectionView:(id)a3 willEndContextMenuInteractionWithConfiguration:(id)a4 animator:(id)a5
{
  v7 = a3;
  v8 = [a4 identifier];
  v9 = [(UIActivityContentViewController *)self diffableDataSource];
  v10 = [v9 itemIdentifierForIndexPath:v8];

  if (v10)
  {
    v11 = [(UIActivityContentViewController *)self currentSnapshot];
    v12 = [v11 sectionIdentifierForSectionContainingItemIdentifier:v10];

    if ([v12 isEqualToString:@"SHSheetContentPeopleSectionIdentifier"])
    {
      v13 = [v7 cellForItemAtIndexPath:v8];
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

- (id)_contextMenuPreviewForCollectionView:(id)a3 collectionViewCell:(id)a4
{
  v6 = a4;
  v7 = [a3 indexPathForCell:v6];
  v8 = [(UIActivityContentViewController *)self diffableDataSource];
  v9 = [v8 itemIdentifierForIndexPath:v7];

  if (v9)
  {
    v10 = [(UIActivityContentViewController *)self currentSnapshot];
    v11 = [v10 sectionIdentifierForSectionContainingItemIdentifier:v9];

    if (([v11 isEqualToString:@"SHSheetContentPeopleSectionIdentifier"] & 1) != 0 || objc_msgSend(v11, "isEqualToString:", @"SHSheetContentAppsSectionIdentifier"))
    {
      v12 = [v6 createTargetedPreview];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v13 = share_sheet_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [UIActivityContentViewController _contextMenuPreviewForCollectionView:collectionViewCell:];
    }

    v12 = 0;
  }

  return v12;
}

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v4 = [a3 cellForItemAtIndexPath:a4];
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

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a4;
  [a3 deselectItemAtIndexPath:v6 animated:0];
  v7 = [(UIActivityContentViewController *)self currentSnapshot];
  v8 = [(UIActivityContentViewController *)self diffableDataSource];
  v9 = [v8 itemIdentifierForIndexPath:v6];
  v10 = [v7 sectionIdentifierForSectionContainingItemIdentifier:v9];

  v11 = [(UIActivityContentViewController *)self diffableDataSource];
  v12 = [v11 itemIdentifierForIndexPath:v6];

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

    v23 = [(UIActivityContentViewController *)self dataSource];
    v14 = [v23 peopleProxyForIdentifier:v12];

    v24 = share_sheet_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v32 = 138412290;
      v33 = v14;
      _os_log_impl(&dword_18B359000, v24, OS_LOG_TYPE_DEFAULT, "People proxy selected:%@", &v32, 0xCu);
    }

    if ([v14 isTapToRadar])
    {
      v22 = [(objc_class *)getSFUITTRReporterClass() reporterForPeopleSuggestions];
      [v22 report];
    }

    else
    {
      v22 = [(UIActivityContentViewController *)self presenter];
      [v22 performPeopleSuggestionProxy:v14];
    }

LABEL_23:

    goto LABEL_29;
  }

  v18 = [v10 isEqualToString:@"SHSheetContentAppsSectionIdentifier"];
  v19 = [(UIActivityContentViewController *)self dataSource];
  v20 = v19;
  if (v18)
  {
    v14 = [v19 shareProxyForIdentifier:v12];

    v21 = share_sheet_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v32 = 138412290;
      v33 = v14;
      _os_log_impl(&dword_18B359000, v21, OS_LOG_TYPE_DEFAULT, "Share proxy selected:%@", &v32, 0xCu);
    }

    v22 = [(UIActivityContentViewController *)self presenter];
    [v22 performShareActivityProxy:v14 activityIdentifier:0];
    goto LABEL_23;
  }

  v25 = [v19 containsSectionForIdentifier:v10];

  if (v25)
  {
    v26 = [(UIActivityContentViewController *)self dataSource];
    v14 = [v26 actionProxyForIdentifier:v12];

    v27 = [v14 activity];
    if (!v14)
    {
      v28 = [(UIActivityContentViewController *)self dataSource];
      v29 = [v28 activityForIdentifier:v12];

      v27 = v29;
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
      v31 = [(UIActivityContentViewController *)self presenter];
      [v31 performActionActivityProxy:v14];
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
    v5 = [(UIActivityContentViewController *)self presenter];
    v6 = [v4 initWithBarButtonSystemItem:1 target:v5 action:sel_handleClose];
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
    v7 = [(UIActivityContentViewController *)self presenter];
    v8 = [v4 initWithTitle:v6 style:0 target:v7 action:sel_handleNext];
    v9 = self->_nextButton;
    self->_nextButton = v8;

    nextButton = self->_nextButton;
  }

  return nextButton;
}

- (void)scrollViewDidScroll:(id)a3
{
  v13 = a3;
  v4 = [(UIActivityContentViewController *)self activityCollectionView];

  v5 = v13;
  if (v4 == v13)
  {
    [v13 adjustedContentInset];
    v7 = v6;
    [v13 contentOffset];
    v8 = 0.0;
    if (v9 > -v7)
    {
      [v13 contentOffset];
      v8 = fmin((v7 + v10) * 10.0, 100.0) / 100.0;
    }

    v11 = [(UIActivityContentViewController *)self dividerLineView];
    [v11 setProgress:v8];

    v12 = [(UIActivityContentViewController *)self navigationItem];
    [v12 _setManualScrollEdgeAppearanceProgress:v8];

    v5 = v13;
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69DC938] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (_ShareSheetSolariumEnabled())
  {
    if (v6 != 1)
    {
      if ([(UIActivityContentViewController *)self isPresentedInPopover])
      {
        v7 = [(UIActivityContentViewController *)self activityCollectionView];

        if (v7 == v4)
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
            [v4 contentOffset];
            v11 = v10;
            [v4 adjustedContentInset];
            v13 = v11 <= -v12;
          }

          else
          {
            [v4 contentSize];
            v15 = v14;
            [v4 bounds];
            v17 = v15 - v16;
            [v4 contentInset];
            v19 = v18 + v17;
            [v4 contentOffset];
            v13 = v20 >= v19;
          }

          [(UIActivityContentViewController *)self setIsAtScrollBoundary:v13];
        }
      }
    }
  }
}

- (void)didUpdateAirDropTransferWithChange:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = v4;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "did update airdrop transfer with change:%@", &v20, 0xCu);
  }

  [(UIActivityContentViewController *)self setActiveAirDropTransferChange:v4];
  v6 = [v4 proxyIdentifier];
  v7 = [(UIActivityContentViewController *)self dataSource];
  v8 = [v7 airDropProxy];
  v9 = [v8 identifier];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  v12 = v11;

  v13 = [(UIActivityContentViewController *)self diffableDataSource];
  v14 = [v13 indexPathForItemIdentifier:v12];

  v15 = [(UIActivityContentViewController *)self activityCollectionView];
  v16 = [v15 cellForItemAtIndexPath:v14];

  v17 = [v16 identifier];
  v18 = [v17 isEqual:v6];

  if (v18)
  {
    [(UIActivityContentViewController *)self _configureAirDropCell:v16 withChange:v4];
  }

  else
  {
    v19 = share_sheet_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(UIActivityContentViewController *)v16 didUpdateAirDropTransferWithChange:v6, v19];
    }
  }
}

- (void)startPulsingActivity:(id)a3 localizedTitle:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(UIActivityContentViewController *)self pulsingActivity];

  if (v8)
  {
    v9 = [(UIActivityContentViewController *)self pulsingActivity];
    [(UIActivityContentViewController *)self stopPulsingActivity:v9];
  }

  v10 = share_sheet_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v6;
    _os_log_impl(&dword_18B359000, v10, OS_LOG_TYPE_DEFAULT, "start pulsing activity:%@", &v17, 0xCu);
  }

  v11 = [(UIActivityContentViewController *)self dataSource];
  v12 = [v11 identifierForActivity:v6];

  [(UIActivityContentViewController *)self setPulsingActivityIdentifier:v12];
  [(UIActivityContentViewController *)self setPulsingActivity:v6];
  [(UIActivityContentViewController *)self setPulsingLocalizedTitle:v7];
  v13 = [(UIActivityContentViewController *)self diffableDataSource];
  v14 = [v13 indexPathForItemIdentifier:v12];

  v15 = [(UIActivityContentViewController *)self activityCollectionView];
  v16 = [v15 cellForItemAtIndexPath:v14];

  [v16 setTitle:v7];
  [v16 startPulsing];
}

- (void)stopPulsingActivity:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UIActivityContentViewController *)self pulsingActivity];
  v6 = [v5 activityUUID];
  v7 = [v4 activityUUID];
  v8 = v6;
  v9 = v7;
  v10 = v9;
  if (v8 == v9)
  {

LABEL_6:
    v12 = share_sheet_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v4;
      _os_log_impl(&dword_18B359000, v12, OS_LOG_TYPE_DEFAULT, "stop pulsing activity:%@", &v15, 0xCu);
    }

    v5 = [(UIActivityContentViewController *)self pulsingActivityIdentifier];
    [(UIActivityContentViewController *)self setPulsingActivityIdentifier:0];
    v13 = [(UIActivityContentViewController *)self diffableDataSource];
    v8 = [v13 indexPathForItemIdentifier:v5];

    v14 = [(UIActivityContentViewController *)self activityCollectionView];
    v10 = [v14 cellForItemAtIndexPath:v8];

    if (v10)
    {
      [v10 stopPulsing];
      [(UIActivityContentViewController *)self _configureSharingAppCell:v10 itemIdentifier:v5];
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

- (void)setShowAllActions:(BOOL)a3
{
  if (self->_showAllActions != a3)
  {
    if (a3)
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

    self->_showAllActions = a3;

    [(UIActivityContentViewController *)self _updateContent:0];
  }
}

- (void)_updateContent:(BOOL)a3
{
  v5 = [(UIActivityContentViewController *)self _shouldShowCloseButton];
  v6 = [(UIActivityContentViewController *)self headerTitleView];
  [v6 setHasCloseButton:v5];

  v7 = [(UIActivityContentViewController *)self viewModel];
  v18 = [v7 peopleSuggestionProxies];

  v8 = [(UIActivityContentViewController *)self viewModel];
  v9 = [v8 shareProxies];

  v10 = [(UIActivityContentViewController *)self viewModel];
  v11 = [v10 actionProxies];

  v12 = [(UIActivityContentViewController *)self viewModel];
  v13 = [v12 activitiesByUUID];
  v14 = [(UIActivityContentViewController *)self viewModel];
  v15 = [v14 nearbyCountSlotID];
  v16 = [(UIActivityContentViewController *)self viewModel];
  LOBYTE(v17) = a3;
  -[UIActivityContentViewController _updateContentWithPeopleProxies:shareProxies:actionProxies:activitiesByUUID:nearbyCountSlotID:animated:reloadData:](self, "_updateContentWithPeopleProxies:shareProxies:actionProxies:activitiesByUUID:nearbyCountSlotID:animated:reloadData:", v18, v9, v11, v13, v15, [v16 updateProxiesWithAnimation], v17);
}

- (void)setHeroActionActivityTypes:(id)a3
{
  v11 = a3;
  if ([v11 count] >= 6)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot set more than %d hero action types", 5];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    v10 = v9;

    objc_exception_throw(v9);
  }

  v4 = [v11 copy];
  heroActionActivityTypes = self->_heroActionActivityTypes;
  self->_heroActionActivityTypes = v4;
}

- (id)airDropNodeForItemIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(UIActivityContentViewController *)self dataSource];
  v6 = [v5 peopleProxyForIdentifier:v4];

  return v6;
}

- (id)titleForItemIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(UIActivityContentViewController *)self dataSource];
  v6 = [v5 activityForIdentifier:v4];

  if (!v6 && (-[UIActivityContentViewController dataSource](self, "dataSource"), v7 = objc_claimAutoreleasedReturnValue(), [v7 shareProxyForIdentifier:v4], v6 = objc_claimAutoreleasedReturnValue(), v7, !v6) && (-[UIActivityContentViewController dataSource](self, "dataSource"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "actionProxyForIdentifier:", v4), v6 = objc_claimAutoreleasedReturnValue(), v8, !v6) || (-[UIActivityContentViewController _activityTitleForActivity:](self, "_activityTitleForActivity:", v6), (v9 = objc_claimAutoreleasedReturnValue()) == 0))
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

- (id)_activityTitleForActivity:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 activityTitle];
    v6 = [v5 text];
  }

  else
  {
    v7 = [v4 _heroActionTitle];
    v8 = [v7 length];

    if (v8)
    {
      v6 = [v4 _heroActionTitle];
      goto LABEL_10;
    }

    v5 = [(UIActivityContentViewController *)self presenter];
    v9 = [v4 activityType];
    v10 = [v5 customTitleForActivityType:v9];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [v4 activityTitle];
    }

    v6 = v12;
  }

LABEL_10:

  return v6;
}

- (id)_sectionIdentifierForIndex:(int64_t)a3
{
  v4 = [(UIActivityContentViewController *)self currentSnapshot];
  v5 = [v4 sectionIdentifiers];

  v6 = [v5 objectAtIndexedSubscript:a3];

  return v6;
}

- (id)_footerTextForInformationalSectionIdentifier:(id)a3
{
  v4 = [a3 componentsSeparatedByString:@"_"];
  v5 = [v4 lastObject];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v5];
    if (v6)
    {
      v7 = [(UIActivityContentViewController *)self dataSource];
      v8 = [v7 actionProxyForIdentifier:v6];

      v9 = [v8 activityFooter];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v12 = [v8 activity];
        v11 = [v12 _activityFooterText];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)updateWithViewModel:(id)a3
{
  v4 = a3;
  v5 = share_sheet_log();
  v6 = share_sheet_log();
  v7 = os_signpost_id_make_with_pointer(v6, self);

  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18B359000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "UpdateContentView", " enableTelemetry=YES ", buf, 2u);
  }

  v8 = [(UIActivityContentViewController *)self viewModel];
  v9 = [v8 metadataValues];
  v10 = [v4 metadataValues];
  v11 = v9;
  v12 = v10;
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

  v15 = [(UIActivityContentViewController *)self viewModel];
  v16 = [v15 urlRequests];
  v17 = [v4 urlRequests];
  v18 = v16;
  v19 = v17;
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

  v22 = [(UIActivityContentViewController *)self viewModel];
  v23 = [v22 urlSandboxExtensions];
  v24 = [v4 urlSandboxExtensions];
  v25 = v23;
  v26 = v24;
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
  v30 = [(UIActivityContentViewController *)self viewModel];
  v101 = [v30 showOptions];
  v108 = [v4 showOptions];

  v31 = [(UIActivityContentViewController *)self viewModel];
  v32 = [v31 customOptionsTitle];
  v33 = [v4 customOptionsTitle];
  v34 = v32;
  v35 = v33;
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

  v38 = [(UIActivityContentViewController *)self viewModel];
  v106 = [v38 showCustomHeaderButton];
  v105 = [v4 showCustomHeaderButton];

  v39 = [(UIActivityContentViewController *)self viewModel];
  v40 = [v39 customHeaderButtonTitle];
  v41 = [v4 customHeaderButtonTitle];
  v42 = v40;
  v43 = v41;
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

  v46 = [(UIActivityContentViewController *)self viewModel];
  v47 = [v46 customHeaderButtonColor];
  v48 = [v4 customHeaderButtonColor];
  v49 = v47;
  v50 = v48;
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

  v53 = [(UIActivityContentViewController *)self viewModel];
  v103 = [v53 showHeaderSpecialization];
  v102 = [v4 showHeaderSpecialization];

  v54 = [(UIActivityContentViewController *)self viewModel];
  v55 = [v54 isCollaborative];
  v56 = [v4 isCollaborative];

  v57 = [(UIActivityContentViewController *)self viewModel];
  v58 = [v57 showCollaborationOptions];
  v59 = [v4 showCollaborationOptions];

  v60 = [(UIActivityContentViewController *)self viewModel];
  v61 = [v60 collaborationModeTitle];
  v62 = [v4 collaborationModeTitle];
  v63 = v61;
  v64 = v62;
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

  v67 = v101 ^ v108;
  v68 = v55 ^ v56;
  v109 = v58 ^ v59;
  v69 = [(UIActivityContentViewController *)self viewModel];
  v70 = [v69 collaborationFooterViewModel];
  v71 = [v4 collaborationFooterViewModel];
  v72 = v70;
  v73 = v71;
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

  if ((v67 | v110 | v106 ^ v105 | v107 | v104 | v103 ^ v102 | v68 | v109))
  {
    v76 = 1;
  }

  else
  {
    v76 = v66 ^ 1 | v75;
  }

  v77 = [(UIActivityContentViewController *)self viewModel];
  v78 = [v77 customViewController];
  v79 = [v4 customViewController];

  v80 = [v4 customViewControllerVerticalInsetWrapper];

  if (v80)
  {
    v81 = [v4 customViewControllerVerticalInsetWrapper];
    [v81 floatValue];
    v83 = v82;
    v84 = [(UIActivityContentViewController *)self layoutSpec];
    [v84 setCustomViewVerticalInset:v83];
  }

  v85 = [v4 customViewControllerSectionHeightWrapper];

  if (v85)
  {
    v86 = [v4 customViewControllerSectionHeightWrapper];
    [v86 floatValue];
    v88 = v87;
    v89 = [(UIActivityContentViewController *)self layoutSpec];
    [v89 setCustomViewSectionHeight:v88];
  }

  [(UIActivityContentViewController *)self setViewModel:v4];
  if ((v111 & 1) == 0 && [(UIActivityContentViewController *)self isRemote])
  {
    v90 = [v4 urlSandboxExtensions];
    v91 = [v4 urlRequests];
    [(UIActivityContentViewController *)self _consumeURLSandboxExtensions:v90 forURLRequests:v91];
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

  if (v78 != v79)
  {
    [(UIActivityContentViewController *)self _updateCustomViewContent];
  }

  v92 = [v4 applicationActivityTypes];
  v93 = [(UIActivityContentViewController *)self dataSourceManager];
  [v93 setApplicationActivityTypes:v92];

  v94 = [v4 peopleSuggestionProxies];
  v95 = [v4 shareProxies];
  v96 = [v4 actionProxies];
  v97 = [v4 activitiesByUUID];
  v98 = [v4 nearbyCountSlotID];
  v99 = [v4 updateProxiesWithAnimation];
  LOBYTE(v100) = [v4 reloadData];
  [(UIActivityContentViewController *)self _updateContentWithPeopleProxies:v94 shareProxies:v95 actionProxies:v96 activitiesByUUID:v97 nearbyCountSlotID:v98 animated:v99 reloadData:v100];
}

- (void)_consumeURLSandboxExtensions:(id)a3 forURLRequests:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v19 objects:v29 count:16];
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
          objc_enumerationMutation(v6);
        }

        [*(*(&v19 + 1) + 8 * v11) bytes];
        v12 = sandbox_extension_consume();
        if (v12 == -1)
        {
          v14 = share_sheet_log();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v16 = *__error();
            v17 = __error();
            v18 = strerror(*v17);
            *buf = 138412802;
            v24 = v7;
            v25 = 1024;
            v26 = v16;
            v27 = 2080;
            v28 = v18;
            _os_log_error_impl(&dword_18B359000, v14, OS_LOG_TYPE_ERROR, "Failed to extend sandbox for one of the URL requests %@ with error %d (%s)", buf, 0x1Cu);
          }
        }

        else
        {
          v13 = v12;
          v14 = [(UIActivityContentViewController *)self sandboxExtensionHandles];
          v15 = [MEMORY[0x1E696AD98] numberWithLongLong:v13];
          [v14 addObject:v15];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v19 objects:v29 count:16];
    }

    while (v9);
  }
}

- (void)reloadMetadata:(id)a3
{
  v10 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  [(UIActivityContentViewController *)self _updateHeaderMetadataValues];
  v4 = [(UIActivityContentViewController *)self customViewController];
  if (v4)
  {
    v5 = v4;
    v6 = [MEMORY[0x1E69DC938] currentDevice];
    v7 = [v6 userInterfaceIdiom];

    if ((v7 & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      v8 = [v10 title];
      v9 = [(UIActivityContentViewController *)self navigationItem];
      [v9 setTitle:v8];
    }
  }
}

- (void)reloadContent
{
  v3 = [(UIActivityContentViewController *)self currentSnapshot];
  if (v3)
  {
    v5 = v3;
    v4 = [(UIActivityContentViewController *)self diffableDataSource];
    [v4 applySnapshotUsingReloadData:v5];

    v3 = v5;
  }
}

- (void)reloadActivity:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UIActivityContentViewController *)self diffableDataSource];
  v6 = [v4 activityUUID];
  v7 = [v5 indexPathForItemIdentifier:v6];

  if (v7)
  {
    v8 = [(UIActivityContentViewController *)self currentSnapshot];
    v9 = [v4 activityUUID];
    v13[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    [v8 reloadItemsWithIdentifiers:v10];

    v11 = [(UIActivityContentViewController *)self diffableDataSource];
    v12 = [(UIActivityContentViewController *)self currentSnapshot];
    [v11 applySnapshotUsingReloadData:v12];
  }
}

- (LPLinkMetadata)headerMetadata
{
  v2 = [(UIActivityContentViewController *)self headerLinkView];
  v3 = [v2 metadata];

  return v3;
}

- (void)_updateHeaderSize
{
  v3 = [(UIActivityContentViewController *)self headerLinkView];
  if (v3)
  {
    v6 = v3;
    v4 = [(UIActivityContentViewController *)self headerLinkView];
    [v4 setDelegate:0];

    [(UIActivityContentViewController *)self setHeaderLinkView:0];
    v5 = [(UIActivityContentViewController *)self headerTitleView];
    [v5 removeFromSuperview];

    [(UIActivityContentViewController *)self setHeaderTitleView:0];
    [(UIActivityContentViewController *)self _configureHeaderViewIfNeeded];
    v3 = v6;
  }
}

- (void)_updateHeaderLinkViewAction
{
  v90 = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v5 = [(UIActivityContentViewController *)self _canShowOptions];
  [(UIActivityContentViewController *)self _configureHeaderViewIfNeeded];
  v6 = share_sheet_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (v5)
    {
      v7 = @"Options link";
    }

    else
    {
      v2 = [(UIActivityContentViewController *)self viewModel];
      v8 = [v2 showCustomHeaderButton];
      v7 = @"no button";
      if (v8)
      {
        v7 = @"custom header button";
      }
    }

    *buf = 138412290;
    v89 = v7;
    _os_log_impl(&dword_18B359000, v6, OS_LOG_TYPE_DEFAULT, "updating header action to %@", buf, 0xCu);
    if ((v5 & 1) == 0)
    {
    }
  }

  if ((v5 & 1) != 0 || (-[UIActivityContentViewController viewModel](self, "viewModel"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 supportsCollaboration], v9, v10))
  {
    [(UIActivityContentViewController *)self _updateHeaderLinkViewSizeClass];
    v11 = [(UIActivityContentViewController *)self viewModel];
    v12 = [v11 supportsCollaboration];

    if (!v12)
    {
      v24 = [(UIActivityContentViewController *)self viewModel];
      v25 = [v24 customOptionsTitle];
      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 3221225472;
      v76[2] = __62__UIActivityContentViewController__updateHeaderLinkViewAction__block_invoke_5;
      v76[3] = &unk_1E71F95A8;
      v26 = &v77;
      objc_copyWeak(&v77, &location);
      v27 = UIActivityContentHelperOptionsButtonAction(v5, v25, v76);

      v28 = [(UIActivityContentViewController *)self headerLinkView];
      v87 = v27;
      v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v87 count:1];
      [v28 _setButtonActions:v29];

      v30 = [(UIActivityContentViewController *)self headerLinkView];
      [v30 _setAction:0 withText:&stru_1EFE999E0];
      goto LABEL_44;
    }

    if ([(UIActivityContentViewController *)self headerLinkActionsNeedsUpdate])
    {
      v13 = [(UIActivityContentViewController *)self viewModel];
      v14 = [v13 supportsSendCopy];

      [(UIActivityContentViewController *)self viewModel];
      if (v14)
        v15 = {;
        v16 = [v15 isCollaborative];
        v17 = [(UIActivityContentViewController *)self viewModel];
        v18 = [v17 collaborationModeTitle];
        v84[0] = MEMORY[0x1E69E9820];
        v84[1] = 3221225472;
        v84[2] = __62__UIActivityContentViewController__updateHeaderLinkViewAction__block_invoke;
        v84[3] = &unk_1E71F95A8;
        objc_copyWeak(&v85, &location);
        v19 = UIActivityContentHelperCollaborationButtonAction(v16, v18, v84);

        v20 = [(UIActivityContentViewController *)self viewModel];
        LODWORD(v15) = [v20 isCollaborative];
        v82[0] = MEMORY[0x1E69E9820];
        v82[1] = 3221225472;
        v82[2] = __62__UIActivityContentViewController__updateHeaderLinkViewAction__block_invoke_2;
        v82[3] = &unk_1E71F95A8;
        objc_copyWeak(&v83, &location);
        v21 = UIActivityContentHelperCopyButtonAction(v15, v82);

        v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v19, v21, 0}];
        v23 = [(UIActivityContentViewController *)self headerLinkView];
        [v23 _setButtonActions:v22];

        v3 = [(UIActivityContentViewController *)self headerLinkView];
        [v3 _setOverrideActionButtonColor:0];

        objc_destroyWeak(&v83);
        objc_destroyWeak(&v85);
      }

      else
        v45 = {;
        v46 = [v45 collaborationModeTitle];
        v47 = UIActivityContentHelperCollaborationSubtitle(v46);

        v48 = [(UIActivityContentViewController *)self headerLinkView];
        [v48 _setOverrideSubtitle:v47];
      }

      [(UIActivityContentViewController *)self setHeaderLinkActionsNeedsUpdate:0];
    }

    v49 = [(UIActivityContentViewController *)self viewModel];
    v50 = [v49 isCollaborative];

    if (!v50)
    {
      v60 = [(UIActivityContentViewController *)self headerLinkView];
      [v60 _setCollaborationFooterViewModel:0 action:0];

      [(UIActivityContentViewController *)self setCollaborationFooterViewModel:0];
LABEL_42:
      if (!v5)
      {
LABEL_45:
        v72 = objc_alloc_init(getLPLinkRendererSizeClassParametersClass());
        [v72 setAlignButtonWithCaptionTextLeadingEdge:1];
        v73 = [(UIActivityContentViewController *)self headerLinkView];
        [v73 _setSizeClassParameters:v72];

        goto LABEL_46;
      }

      v69 = [(UIActivityContentViewController *)self viewModel];
      v70 = [v69 customOptionsTitle];
      v78[0] = MEMORY[0x1E69E9820];
      v78[1] = 3221225472;
      v78[2] = __62__UIActivityContentViewController__updateHeaderLinkViewAction__block_invoke_4;
      v78[3] = &unk_1E71F95A8;
      v26 = &v79;
      objc_copyWeak(&v79, &location);
      v27 = UIActivityContentHelperOptionsButtonAction(1, v70, v78);

      v71 = [(UIActivityContentViewController *)self headerLinkView];
      [v71 _setSecondaryButtonAction:v27];

      v30 = [(UIActivityContentViewController *)self headerLinkView];
      [v30 _setAction:0 withText:&stru_1EFE999E0];
LABEL_44:

      objc_destroyWeak(v26);
      goto LABEL_45;
    }

    v51 = [(UIActivityContentViewController *)self viewModel];
    v52 = [v51 collaborationFooterViewModel];

    v53 = [(UIActivityContentViewController *)self collaborationFooterViewModel];
    if (![v52 isEqual:v53])
    {
      goto LABEL_32;
    }

    v54 = [v52 optionsSummary];
    v55 = [(UIActivityContentViewController *)self collaborationFooterViewModel];
    v56 = [v55 optionsSummary];
    v3 = v54;
    v57 = v56;
    v58 = v57;
    if (v3 == v57)
    {
    }

    else
    {
      if ((v3 != 0) == (v57 == 0))
      {

LABEL_31:
LABEL_32:

        goto LABEL_33;
      }

      v59 = [v3 isEqual:v57];

      if (!v59)
      {
        goto LABEL_31;
      }
    }

    v61 = [(UIActivityContentViewController *)self canShowShareOptions];
    v62 = [(UIActivityContentViewController *)self viewModel];
    v63 = [v62 showCollaborationOptions];

    if (((v61 ^ v63) & 1) == 0)
    {
LABEL_41:

      goto LABEL_42;
    }

LABEL_33:
    v64 = [(UIActivityContentViewController *)self viewModel];
    -[UIActivityContentViewController setCanShowShareOptions:](self, "setCanShowShareOptions:", [v64 showCollaborationOptions]);

    [(UIActivityContentViewController *)self setCollaborationFooterViewModel:v52];
    if (v52)
    {
      v65 = [(UIActivityContentViewController *)self viewModel];
      v66 = [v65 showCollaborationOptions];
    }

    else
    {
      v66 = 0;
    }

    v67 = [(UIActivityContentViewController *)self headerLinkView];
    if (v66)
    {
      v80[0] = MEMORY[0x1E69E9820];
      v80[1] = 3221225472;
      v80[2] = __62__UIActivityContentViewController__updateHeaderLinkViewAction__block_invoke_3;
      v80[3] = &unk_1E71F95A8;
      v3 = &v81;
      objc_copyWeak(&v81, &location);
      v68 = v80;
    }

    else
    {
      v68 = 0;
    }

    [v67 _setCollaborationFooterViewModel:v52 action:v68];

    if (v66)
    {
      objc_destroyWeak(v3);
    }

    goto LABEL_41;
  }

  v31 = [(UIActivityContentViewController *)self viewModel];
  v32 = [v31 showCustomHeaderButton];

  if (v32)
  {
    v33 = [(UIActivityContentViewController *)self headerLinkView];
    [v33 _setPreferredSizeClass:12];

    v34 = [(UIActivityContentViewController *)self headerLinkView];
    v74[0] = MEMORY[0x1E69E9820];
    v74[1] = 3221225472;
    v74[2] = __62__UIActivityContentViewController__updateHeaderLinkViewAction__block_invoke_6;
    v74[3] = &unk_1E71F95A8;
    objc_copyWeak(&v75, &location);
    v35 = [(UIActivityContentViewController *)self viewModel];
    v36 = [v35 customHeaderButtonTitle];
    [v34 _setAction:v74 withAttributedText:v36 buttonType:1];

    v37 = [(UIActivityContentViewController *)self headerLinkView];
    v38 = [(UIActivityContentViewController *)self viewModel];
    v39 = [v38 customHeaderButtonColor];
    [v37 _setOverrideActionButtonColor:v39];

    objc_destroyWeak(&v75);
  }

  else
  {
    v40 = [(UIActivityContentViewController *)self _headingSizeClass];
    v41 = [(UIActivityContentViewController *)self headerLinkView];
    [v41 _setPreferredSizeClass:v40];

    v42 = [(UIActivityContentViewController *)self headerLinkView];
    [v42 _setButtonActions:0];

    v43 = [(UIActivityContentViewController *)self headerLinkView];
    [v43 _setAction:0 withText:&stru_1EFE999E0];

    v44 = [(UIActivityContentViewController *)self headerLinkView];
    [v44 _setOverrideActionButtonColor:0];
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
  v3 = [(UIActivityContentViewController *)self viewModel];
  if ([v3 showCustomHeaderButton])
  {
    goto LABEL_4;
  }

  v4 = [(UIActivityContentViewController *)self viewModel];
  if ([v4 supportsCollaboration])
  {

LABEL_4:
LABEL_5:
    v5 = 12;
    goto LABEL_6;
  }

  v8 = [(UIActivityContentViewController *)self viewModel];
  v9 = [v8 showHeaderSpecialization];

  if (v9)
  {
    goto LABEL_5;
  }

  v5 = 2;
LABEL_6:
  v6 = [(UIActivityContentViewController *)self _canShowOptions];
  if ((_ShareSheetSolariumEnabled() | v6))
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
  v3 = [(UIActivityContentViewController *)self _headingSizeClass];
  v4 = [(UIActivityContentViewController *)self headerLinkView];
  [v4 _setPreferredSizeClass:v3];
}

- (void)_updateCustomViewContent
{
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  v5 = [(UIActivityContentViewController *)self customViewController];

  if (!v5 || v4 == 1)
  {
    return;
  }

  v6 = [(UIActivityContentViewController *)self presentingViewController];
  v7 = ~[v6 supportedInterfaceOrientations];

  v8 = _ShareSheetCachedActiveInterfaceOrientation() - 3;
  v10 = (v7 & 0x18) == 0 && v8 < 0xFFFFFFFFFFFFFFFELL;
  v11 = [(UIActivityContentViewController *)self _shouldShowCloseButton];
  [(UIActivityContentViewController *)self _configureHeaderViewIfNeeded];
  [(UIActivityContentViewController *)self _configureCollectionViewIfNeeded];
  if (v10)
  {
    v12 = 1;
    [(UIActivityContentViewController *)self setPhotosLandscapeMode:1];
    v13 = [(UIActivityContentViewController *)self headerTitleView];
    [v13 setPhotosCarouselMode:1];

    v14 = [(UIActivityContentViewController *)self cancelButton];
    v15 = [(UIActivityContentViewController *)self navigationItem];
    [v15 setLeftBarButtonItem:v14];

    v16 = [(UIActivityContentViewController *)self nextButton];
    v17 = [(UIActivityContentViewController *)self navigationItem];
    [v17 setRightBarButtonItem:v16];
  }

  else
  {
    [(UIActivityContentViewController *)self setPhotosLandscapeMode:0];
    v18 = [(UIActivityContentViewController *)self headerTitleView];
    [v18 setPhotosCarouselMode:0];

    if (!v11)
    {
      v12 = 2;
      goto LABEL_24;
    }

    v19 = [(UIActivityContentViewController *)self isCloseButtonOnLeadingEdge];
    if (v19)
    {
      v20 = 0;
    }

    else
    {
      v20 = [(UIActivityContentViewController *)self closeButton];
    }

    v21 = [(UIActivityContentViewController *)self navigationItem];
    [v21 setRightBarButtonItem:v20];

    if (!v19)
    {
    }

    v22 = [(UIActivityContentViewController *)self isCloseButtonOnLeadingEdge];
    v23 = v22;
    if (v22)
    {
      v16 = [(UIActivityContentViewController *)self closeButton];
    }

    else
    {
      v16 = 0;
    }

    v24 = [(UIActivityContentViewController *)self navigationItem];
    [v24 setLeftBarButtonItem:v16];

    v12 = 2;
    if (!v23)
    {
      goto LABEL_24;
    }
  }

LABEL_24:
  v36 = [MEMORY[0x1E69DC810] defaultConfiguration];
  [v36 setContentInsetsReference:v12];
  v25 = [(UIActivityContentViewController *)self activityCollectionView];
  v26 = [v25 collectionViewLayout];
  [v26 setConfiguration:v36];

  [(UIActivityContentViewController *)self preferredContentSize];
  if (v27 > 0.0)
  {
    [(UIActivityContentViewController *)self preferredContentSize];
    v30 = v31;
  }

  else
  {
    v28 = [(UIActivityContentViewController *)self view];
    [v28 bounds];
    v30 = v29;
  }

  v32 = [(UIActivityContentViewController *)self dataSource];
  v33 = [v32 createChangeRequestFromCurrentState];

  [v33 setAnimated:v10];
  [v33 setExcludeSectionTypes:{-[UIActivityContentViewController currentSectionTypesToExclude](self, "currentSectionTypesToExclude")}];
  v34 = [(UIActivityContentViewController *)self layoutSpec];
  [v33 setTopActionsMaximumCount:{objc_msgSend(v34, "numberOfHorizontalItemsPerGroupForContentWidth:", v30)}];

  v35 = [(UIActivityContentViewController *)self dataSourceManager];
  [v35 updateWithChangeRequest:v33];
}

- (void)_updateContentWithPeopleProxies:(id)a3 shareProxies:(id)a4 actionProxies:(id)a5 activitiesByUUID:(id)a6 nearbyCountSlotID:(id)a7 animated:(BOOL)a8 reloadData:(BOOL)a9
{
  v9 = a8;
  v15 = a9;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
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
      v22 = [(UIActivityContentViewController *)self view];
      [v22 bounds];
      v24 = v23;
    }

    if (_ShareSheetSolariumEnabled())
    {
      v26 = [MEMORY[0x1E69DC938] currentDevice];
      v27 = [v26 userInterfaceIdiom];

      v28 = _ShareSheetCachedActiveInterfaceOrientation() - 3;
      if (v27)
      {
        v29 = 1;
      }

      else
      {
        v29 = v28 >= 2;
      }

      v30 = !v29;
      v31 = [(UIActivityContentViewController *)self activityCollectionView];
      [v31 contentSize];
      if (v32 > 0.0)
      {
        v53 = [(UIActivityContentViewController *)self activityCollectionView];
        [v53 contentSize];
        v52 = [(UIActivityContentViewController *)self activityCollectionView];
        [v52 bounds];
        [(UIActivityContentViewController *)self activityCollectionView];
        v33 = v54 = v30;
        [v33 adjustedContentInset];
        [(UIActivityContentViewController *)self activityCollectionView];
        v34 = v20;
        v35 = v19;
        v36 = v18;
        v37 = v17;
        v38 = v16;
        v40 = v39 = v9;
        [v40 adjustedContentInset];

        v9 = v39;
        v16 = v38;
        v17 = v37;
        v18 = v36;
        v19 = v35;
        v20 = v34;

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

      v15 = a9;
      v42 = [(UIActivityContentViewController *)self activityCollectionView];
      [v42 setScrollEnabled:v41];
    }

    v43 = +[SHSheetContentDataSourceChangeRequest changeRequestForPeopleProxies:shareProxies:actionProxies:nearbyCountSlotID:activitiesByUUID:](SHSheetContentDataSourceChangeRequest, "changeRequestForPeopleProxies:shareProxies:actionProxies:nearbyCountSlotID:activitiesByUUID:", v16, v17, v18, [v20 unsignedIntValue], v19);
    [v43 setExcludeSectionTypes:{-[UIActivityContentViewController currentSectionTypesToExclude](self, "currentSectionTypesToExclude")}];
    [v43 setAnimated:v9];
    [v43 setForceReload:v15];
    v44 = [(UIActivityContentViewController *)self layoutSpec];
    [v43 setTopActionsMaximumCount:{objc_msgSend(v44, "numberOfHorizontalItemsPerGroupForContentWidth:", v24)}];

    v45 = [(UIActivityContentViewController *)self dataSourceManager];

    if (!v45)
    {
      v46 = [SHSheetContentDataSourceManager alloc];
      v47 = [(UIActivityContentViewController *)self applicationActivityTypes];
      v48 = [(UIActivityContentViewController *)self heroActionActivityTypes];
      v49 = [(SHSheetContentDataSourceManager *)v46 initWithApplicationActivityTypes:v47 heroActionActivityTypes:v48];
      [(UIActivityContentViewController *)self setDataSourceManager:v49];

      v50 = [(UIActivityContentViewController *)self dataSourceManager];
      [v50 setDelegate:self];
    }

    v51 = [(UIActivityContentViewController *)self dataSourceManager];
    [v51 updateWithChangeRequest:v43];
  }

  else
  {
    objc_initWeak(&location, self);
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __149__UIActivityContentViewController__updateContentWithPeopleProxies_shareProxies_actionProxies_activitiesByUUID_nearbyCountSlotID_animated_reloadData___block_invoke;
    v55[3] = &unk_1E71FA068;
    objc_copyWeak(&v61, &location);
    v56 = v16;
    v57 = v17;
    v58 = v18;
    v59 = v19;
    v60 = v20;
    v62 = v9;
    v63 = a9;
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
  v3 = [(UIActivityContentViewController *)self viewModel];
  if ([v3 showOptions])
  {
    v4 = [(UIActivityContentViewController *)self heroActionActivityTypes];
    if ([v4 count])
    {
      v5 = [(UIActivityContentViewController *)self viewModel];
      v6 = [v5 isSharingExpanded];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)dataSourceManager:(id)a3 didPublishDataSourceWithChangeDetails:(id)a4
{
  location[3] = *MEMORY[0x1E69E9840];
  v47 = a3;
  v6 = a4;
  if (([v6 snapshotChanged] & 1) != 0 || (objc_msgSend(v6, "airDropBadgeChanged") & 1) != 0 || (objc_msgSend(v6, "modifiedIdentifiers"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v8))
  {
    v46 = [v47 dataSource];
    [v46 logCurrentState];
    v9 = [v47 dataSource];
    v45 = [v9 diffableSnapshot];

    if (([v6 sectionsChanged] & 1) != 0 || objc_msgSend(v6, "peopleCountChanged"))
    {
      v10 = [(UIActivityContentViewController *)self presentedViewController];
      v11 = v10 == 0;
    }

    else
    {
      v11 = 0;
    }

    if ([v6 forceReload])
    {
      LOBYTE(v44) = 0;
    }

    else
    {
      v12 = [(UIActivityContentViewController *)self diffableDataSource];
      v13 = [v12 snapshot];
      if (v13)
      {
        v44 = [v6 animateDifferences] | v11;
      }

      else
      {
        LOBYTE(v44) = 0;
      }
    }

    v14 = [v6 forceReload];
    if ([v6 peopleCountChanged])
    {
      [(UIActivityContentViewController *)self setIgnorePersonTap:1];
      objc_initWeak(location, self);
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __91__UIActivityContentViewController_dataSourceManager_didPublishDataSourceWithChangeDetails___block_invoke;
      v48[3] = &unk_1E71F95A8;
      objc_copyWeak(&v49, location);
      v15 = MEMORY[0x18CFF58E0](v48);
      v16 = [(UIActivityContentViewController *)self activeAirDropTransferChange];
      v17 = [v46 airDropProxy];
      v18 = [v17 identifier];
      v19 = [v16 proxyIdentifier];
      v20 = [v18 isEqual:v19];

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
    if (v14)
    {
      if (v22)
      {
        LOWORD(location[0]) = 0;
        _os_log_impl(&dword_18B359000, v21, OS_LOG_TYPE_DEFAULT, "apply new snapshot using reload data", location, 2u);
      }

      v23 = [(UIActivityContentViewController *)self diffableDataSource];
      [v23 applySnapshotUsingReloadData:v45 completion:v15];
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

    v25 = [(UIActivityContentViewController *)self diffableDataSource];
    [v25 applySnapshot:v45 animatingDifferences:v44 & 1 completion:v15];

    v26 = [v6 modifiedIdentifiers];
    v27 = [v26 count];

    if ([v6 airDropBadgeChanged])
    {
      v28 = [v46 containsSectionForIdentifier:@"SHSheetContentAppsSectionIdentifier"];
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
        v23 = [v45 copy];
        if (v29)
        {
          v30 = [v6 modifiedIdentifiers];
          [v23 reconfigureItemsWithIdentifiers:v30];
        }

        if (v28)
        {
          v31 = [v46 shareProxies];
          v32 = [v31 firstObject];
          v33 = [v32 identifier];
          v50 = v33;
          v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
          [v23 reconfigureItemsWithIdentifiers:v34];
        }

        v35 = [(UIActivityContentViewController *)self diffableDataSource];
        [v35 applySnapshot:v23 animatingDifferences:v44 & 1 completion:v15];

        goto LABEL_35;
      }
    }

    if (!v28)
    {
LABEL_36:
      v36 = [(UIActivityContentViewController *)self delegate];
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

        [v36 activityContentViewControllerDidUpdateDataSource:self];
      }

      [(UIActivityContentViewController *)self _updateHeaderLinkViewAction];
      [(UIActivityContentViewController *)self _addResizeGestureIfNeeded];

      v40 = v46;
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

- (void)runScrollingTestWithName:(id)a3 type:(int64_t)a4 completionHandler:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (([(objc_class *)getRPTTestRunnerClass() isRecapAvailable]& 1) != 0)
  {
    v10 = [(UIActivityContentViewController *)self _scrollViewForScrollingType:a4];
    v11 = share_sheet_log();
    v12 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v22 = v8;
        v23 = 2112;
        v24 = v10;
        _os_log_impl(&dword_18B359000, v12, OS_LOG_TYPE_DEFAULT, "run scrolling test with name:%@ scrollview:%@", buf, 0x16u);
      }

      v13 = objc_alloc(getRPTScrollViewTestParametersClass());
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __83__UIActivityContentViewController_runScrollingTestWithName_type_completionHandler___block_invoke;
      v17[3] = &unk_1E71F9958;
      v14 = v8;
      v18 = v14;
      v19 = v10;
      v20 = v9;
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

      v9[2](v9);
    }
  }

  else
  {
    v16 = share_sheet_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [UIActivityContentViewController runScrollingTestWithName:type:completionHandler:];
    }

    v9[2](v9);
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

- (id)_scrollViewForScrollingType:(int64_t)a3
{
  v5 = [(UIActivityContentViewController *)self activityCollectionView];
  if (a3)
  {
    if (a3 == 3)
    {
      v6 = [(UIActivityContentViewController *)self customViewController];
      v7 = [v6 view];

      v5 = v7;
    }

    v8 = SHSheetContentHelperFindScrollView(v5);
    v9 = [(UIActivityContentViewController *)self dataSource];
    v10 = [v9 containsSectionForIdentifier:@"SHSheetContentCustomViewSectionIdentifier"];

    v11 = [(UIActivityContentViewController *)self dataSource];
    v12 = [v11 containsSectionForIdentifier:@"SHSheetContentPeopleSectionIdentifier"];

    v13 = [(UIActivityContentViewController *)self dataSource];
    v14 = [v13 containsSectionForIdentifier:@"SHSheetContentAppsSectionIdentifier"];

    switch(a3)
    {
      case 3:
        if (v10)
        {
LABEL_6:
          v15 = [v8 firstObject];
LABEL_7:
          v16 = v15;
LABEL_26:

          v5 = v16;
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
          v15 = [v19 objectAtIndexedSubscript:v20];
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

  return v5;
}

- (BOOL)_wantsResizePanGesture
{
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (!_ShareSheetSolariumEnabled() || v4 == 1)
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

  v3 = [(UIActivityContentViewController *)self headerViewResizeGestureRecognizer];
  if (v3)
  {
    goto LABEL_5;
  }

  v4 = [(UIActivityContentViewController *)self headerLinkView];

  if (v4)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel__handleResizeGesture_];
    [v3 setDelegate:self];
    v5 = [(UIActivityContentViewController *)self headerLinkView];
    [v5 addGestureRecognizer:v3];

    [(UIActivityContentViewController *)self setHeaderViewResizeGestureRecognizer:v3];
LABEL_5:
  }

  v6 = [(UIActivityContentViewController *)self collectionViewResizeGestureRecognizer];
  if (!v6)
  {
    v7 = [(UIActivityContentViewController *)self viewIfLoaded];

    if (!v7)
    {
      return;
    }

    v9 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel__handleResizeGesture_];
    [v9 setDelegate:self];
    v8 = [(UIActivityContentViewController *)self view];
    [v8 addGestureRecognizer:v9];

    [(UIActivityContentViewController *)self setCollectionViewResizeGestureRecognizer:v9];
    v6 = v9;
  }
}

- (void)_removeResizeGestureIfNeeded
{
  v3 = [(UIActivityContentViewController *)self headerViewResizeGestureRecognizer];

  if (v3)
  {
    v4 = [(UIActivityContentViewController *)self headerLinkView];
    v5 = [(UIActivityContentViewController *)self headerViewResizeGestureRecognizer];
    [v4 removeGestureRecognizer:v5];

    [(UIActivityContentViewController *)self setHeaderViewResizeGestureRecognizer:0];
  }

  v6 = [(UIActivityContentViewController *)self collectionViewResizeGestureRecognizer];

  if (v6)
  {
    v7 = [(UIActivityContentViewController *)self view];
    v8 = [(UIActivityContentViewController *)self collectionViewResizeGestureRecognizer];
    [v7 removeGestureRecognizer:v8];

    [(UIActivityContentViewController *)self setCollectionViewResizeGestureRecognizer:0];
  }
}

- (void)_handleResizeGesture:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UIActivityContentViewController *)self collectionViewResizeGestureRecognizer];
  if (v5 == v4)
  {
    [(UIActivityContentViewController *)self view];
  }

  else
  {
    [(UIActivityContentViewController *)self headerLinkView];
  }
  v6 = ;

  [v4 translationInView:v6];
  v8 = v7;
  v9 = [v4 state];
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

  if (v9 == 2)
  {
    if ([(UIActivityContentViewController *)self showAllActions])
    {
      v12 = [(UIActivityContentViewController *)self headerViewResizeGestureRecognizer];
      if (v12 == v4)
      {
        v13 = 0;
      }

      else
      {
        v13 = ![(UIActivityContentViewController *)self isAtScrollBoundary];
      }

      if (v8 > 0.0 && (v13 & 1) == 0)
      {
        [(UIActivityContentViewController *)self _resetPanGesture:v4];
        if ([(UIActivityContentViewController *)self _isOnlyFullSize])
        {
          goto LABEL_19;
        }

        v14 = self;
        v15 = 0;
LABEL_21:
        [(UIActivityContentViewController *)v14 setShowAllActions:v15];
      }
    }

    else
    {
      [(UIActivityContentViewController *)self _resetPanGesture:v4];
      if (v8 > 0.0)
      {
LABEL_19:
        v16 = [(UIActivityContentViewController *)self presenter];
        [v16 handleClose];

        goto LABEL_22;
      }

      if (v8 < 0.0)
      {
        v14 = self;
        v15 = 1;
        goto LABEL_21;
      }
    }
  }

LABEL_22:
}

- (void)_resetPanGesture:(id)a3
{
  v3 = a3;
  [v3 setEnabled:0];
  [v3 setEnabled:1];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(UIActivityContentViewController *)self collectionViewResizeGestureRecognizer];

  if (v5 != v4)
  {
    return 1;
  }

  v7 = [(UIActivityContentViewController *)self activityCollectionView];
  [v7 contentOffset];
  v6 = v8 <= 0.0;

  return v6;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UIActivityContentViewController *)self collectionViewResizeGestureRecognizer];

  if (v8 == v7)
  {
    v10 = [v6 view];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [(UIActivityContentViewController *)self customViewController];
      v12 = [v11 view];
      v13 = [v6 view];
      v9 = [v12 containsView:v13] ^ 1;
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