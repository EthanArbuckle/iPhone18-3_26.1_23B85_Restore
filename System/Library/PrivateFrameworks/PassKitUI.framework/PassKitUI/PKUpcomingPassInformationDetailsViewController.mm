@interface PKUpcomingPassInformationDetailsViewController
+ (BOOL)entryMeetsMinimumContentRequirements:(id)requirements;
- ($85E40A55691FE2F31975A98F57E3065D)pkui_navigationStatusBarStyleDescriptor;
- (BOOL)entryCanCreateCalendarEvent:(id)event;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (PKUpcomingPassInformationDetailsViewController)initWithDataSource:(id)source;
- (id)_allMenuItems;
- (id)_showCalendarAction;
- (id)_showSellAction;
- (id)_showTransferAction;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)createBarButtonItems;
- (id)moreMenu;
- (void)_performAddToCalendarRequestNeedingPermission:(BOOL)permission eventStore:(id)store entry:(id)entry pass:(id)pass;
- (void)_updateHeaderCellWithAnimationProgress:(id)progress;
- (void)_updateNavigationBarIconForNavigationBarAppeared:(BOOL)appeared;
- (void)_updateTitle;
- (void)addEventToCalendarWithEventStore:(id)store entry:(id)entry pass:(id)pass;
- (void)didMoveToParentViewController:(id)controller;
- (void)eventViewController:(id)controller didCompleteWithAction:(int64_t)action;
- (void)passTilesItemPresenter:(id)presenter displayTileContext:(int64_t)context forPass:(id)pass tile:(id)tile overrideMaximumRows:(BOOL)rows;
- (void)presentExistingCalendarEvent:(id)event eventStore:(id)store;
- (void)presentNeedsCalendarPermissionsAlert;
- (void)updateContent;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation PKUpcomingPassInformationDetailsViewController

+ (BOOL)entryMeetsMinimumContentRequirements:(id)requirements
{
  requirementsCopy = requirements;
  content = [requirementsCopy content];
  backFields = [content backFields];
  v6 = [backFields count] != 0;

  metadata = [requirementsCopy metadata];

  [metadata type];
  return v6;
}

- (PKUpcomingPassInformationDetailsViewController)initWithDataSource:(id)source
{
  v20[3] = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  v5 = objc_alloc_init(PKUpcomingPassInformationDetailsHeaderItemPresenter);
  v6 = objc_alloc_init(PKDashboardPassTilesItemPresenter);
  v7 = objc_alloc_init(PKDashboardTextActionItemPresenter);
  v20[0] = v5;
  v20[1] = v6;
  v20[2] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
  v9 = objc_alloc_init(PKHeaderVerticalScrollingLayout);
  [(PKHeaderVerticalScrollingLayout *)v9 setUseStickyHeader:1];
  v19.receiver = self;
  v19.super_class = PKUpcomingPassInformationDetailsViewController;
  v10 = [(PKDashboardViewController *)&v19 initWithDataSource:sourceCopy presenters:v8 layout:v9];
  if (v10)
  {
    headerIndexPath = [sourceCopy headerIndexPath];
    headerIndexPath = v10->_headerIndexPath;
    v10->_headerIndexPath = headerIndexPath;

    v10->_hideTopPocket = 1;
    [(PKDashboardPassTilesItemPresenter *)v6 setDelegate:v10];
    navigationItem = [(PKUpcomingPassInformationDetailsViewController *)v10 navigationItem];
    createBarButtonItems = [(PKUpcomingPassInformationDetailsViewController *)v10 createBarButtonItems];
    [navigationItem setRightBarButtonItems:createBarButtonItems];

    standardAppearance = [navigationItem standardAppearance];
    backgroundEffect = [standardAppearance backgroundEffect];
    [(PKUpcomingPassInformationDetailsHeaderItemPresenter *)v5 setOverlayEffect:backgroundEffect];

    shadowColor = [standardAppearance shadowColor];
    [(PKUpcomingPassInformationDetailsHeaderItemPresenter *)v5 setShadowColor:shadowColor];
  }

  return v10;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PKUpcomingPassInformationDetailsViewController;
  [(PKDashboardViewController *)&v5 viewDidLoad];
  view = [(PKUpcomingPassInformationDetailsViewController *)self view];
  v4 = +[PKDashboardViewController backgroundColor];
  [view setBackgroundColor:v4];

  [(PKUpcomingPassInformationDetailsViewController *)self _updateTitle];
}

- (void)viewWillLayoutSubviews
{
  v40.receiver = self;
  v40.super_class = PKUpcomingPassInformationDetailsViewController;
  [(PKUpcomingPassInformationDetailsViewController *)&v40 viewWillLayoutSubviews];
  collectionView = [(PKUpcomingPassInformationDetailsViewController *)self collectionView];
  [collectionView contentOffset];
  v5 = v4;
  [collectionView safeAreaInsets];
  v8 = v7;
  v9 = MEMORY[0x1E69DDCE0];
  v10 = *(MEMORY[0x1E69DDCE0] + 8);
  if (self->_footer)
  {
    v11 = v6;
    [(PKDashboardViewControllerFooterContainer *)self->_footerContainer bounds];
    v13 = v12 - v11;
  }

  else
  {
    v13 = *(MEMORY[0x1E69DDCE0] + 16);
  }

  v14 = v9[3];
  v15 = *v9;
  v16 = self->_headerHeight - v8;
  [collectionView pkui_naturalRestingBounds];
  v18 = v5 - v17;
  v19 = v16 - (v5 - v17);
  if (v18 < 0.0)
  {
    v16 = v19;
  }

  [collectionView verticalScrollIndicatorInsets];
  if (v23 != v10 || (v20 == v16 ? (v24 = v22 == v14) : (v24 = 0), v24 ? (v25 = v21 == v13) : (v25 = 0), !v25))
  {
    [collectionView setVerticalScrollIndicatorInsets:{v16, v10, v13, v14}];
  }

  [collectionView contentInset];
  if (v29 != v10 || v26 != v15 || v28 != v14 || v27 != v13)
  {
    [collectionView setContentInset:{v15, v10, v13, v14}];
  }

  headerHeight = self->_headerHeight;
  headerAnimationProgress = self->_headerAnimationProgress;
  if (headerHeight <= 0.0)
  {
    self->_headerAnimationProgress = 0.0;
    v35 = 0.0;
  }

  else
  {
    v35 = fmin(fmax((v5 + v8) / (headerHeight - v8), 0.0), 1.0);
    self->_headerAnimationProgress = v35;
    if (headerAnimationProgress < 1.0 && v35 >= 1.0)
    {
      v36 = 1;
LABEL_37:
      [(PKUpcomingPassInformationDetailsViewController *)self _updateNavigationBarIconForNavigationBarAppeared:v36];
      goto LABEL_38;
    }
  }

  if (headerAnimationProgress >= 1.0 && v35 < 1.0)
  {
    v36 = 0;
    goto LABEL_37;
  }

LABEL_38:
  if (self->_headerIndexPath)
  {
    collectionView2 = [(PKUpcomingPassInformationDetailsViewController *)self collectionView];
    v39 = [collectionView2 cellForItemAtIndexPath:self->_headerIndexPath];

    if (v39)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(PKUpcomingPassInformationDetailsViewController *)self _updateHeaderCellWithAnimationProgress:v39];
      }
    }
  }
}

- (void)_updateNavigationBarIconForNavigationBarAppeared:(BOOL)appeared
{
  if (self->_titleText)
  {
    appearedCopy = appeared;
    navigationItem = [(PKUpcomingPassInformationDetailsViewController *)self navigationItem];
    if (appearedCopy)
    {
      titleText = self->_titleText;
    }

    else
    {
      titleText = 0;
    }

    v7 = navigationItem;
    [navigationItem _setTitle:titleText animated:1];
  }
}

- (void)viewDidLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = PKUpcomingPassInformationDetailsViewController;
  [(PKUpcomingPassInformationDetailsViewController *)&v15 viewDidLayoutSubviews];
  view = [(PKUpcomingPassInformationDetailsViewController *)self view];
  [view bounds];
  if (self->_footerContainer)
  {
    v7 = v4;
    v8 = v5;
    v9 = v6;
    [view safeAreaInsets];
    v11 = v10;
    v13 = v8 - v10 - v12;
    [(PKDashboardViewControllerFooterContainer *)self->_footerContainer sizeThatFits:v13, v9];
    [(PKDashboardViewControllerFooterContainer *)self->_footerContainer setFrame:v11, v7 + v9 - v14, v13, v14];
  }
}

- (void)willMoveToParentViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = PKUpcomingPassInformationDetailsViewController;
  [(PKUpcomingPassInformationDetailsViewController *)&v5 willMoveToParentViewController:?];
  if (!controller)
  {
    objc_storeWeak(&self->_navigationController, 0);
  }
}

- (void)didMoveToParentViewController:(id)controller
{
  v6.receiver = self;
  v6.super_class = PKUpcomingPassInformationDetailsViewController;
  [(PKUpcomingPassInformationDetailsViewController *)&v6 didMoveToParentViewController:controller];
  navigationController = [(PKUpcomingPassInformationDetailsViewController *)self navigationController];
  if (navigationController && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = navigationController;
    objc_storeWeak(&self->_navigationController, v5);
    if (self->_hideTopPocketDirty)
    {
      self->_hideTopPocketDirty = 0;
      [v5 setNeedsNavigationBarUpdate];
    }
  }

  else
  {
    objc_storeWeak(&self->_navigationController, 0);
  }
}

- (void)updateContent
{
  v30.receiver = self;
  v30.super_class = PKUpcomingPassInformationDetailsViewController;
  [(PKDashboardViewController *)&v30 updateContent];
  navigationItem = [(PKUpcomingPassInformationDetailsViewController *)self navigationItem];
  rightBarButtonItems = [navigationItem rightBarButtonItems];
  createBarButtonItems = [(PKUpcomingPassInformationDetailsViewController *)self createBarButtonItems];
  if ((PKEqualObjects() & 1) == 0)
  {
    [navigationItem setRightBarButtonItems:createBarButtonItems animated:1];
  }

  [(PKUpcomingPassInformationDetailsViewController *)self _updateTitle];
  dataSource = [(PKDashboardViewController *)self dataSource];
  footerTitle = [dataSource footerTitle];
  if (footerTitle)
  {
    footer = self->_footer;
    if (!footer)
    {
      v9 = [PKDashboardViewControllerFooterView alloc];
      v10 = *MEMORY[0x1E695F058];
      v11 = *(MEMORY[0x1E695F058] + 8);
      v12 = *(MEMORY[0x1E695F058] + 16);
      v13 = *(MEMORY[0x1E695F058] + 24);
      v14 = [(PKDashboardViewControllerFooterView *)v9 initWithFrame:*MEMORY[0x1E695F058], v11, v12, v13];
      v15 = self->_footer;
      self->_footer = v14;

      [(PKDashboardViewControllerFooterView *)self->_footer setDetailNumberOfLines:2];
      v16 = objc_alloc(MEMORY[0x1E69DD6C8]);
      collectionView = [(PKUpcomingPassInformationDetailsViewController *)self collectionView];
      v18 = [v16 initWithScrollView:collectionView edge:4 style:1];

      [(PKDashboardViewControllerFooterView *)self->_footer addInteraction:v18];
      v19 = [[PKDashboardViewControllerFooterContainer alloc] initWithFrame:v10, v11, v12, v13];
      footerContainer = self->_footerContainer;
      self->_footerContainer = v19;

      [(PKDashboardViewControllerFooterContainer *)self->_footerContainer setCurrentFooter:self->_footer];
      [(PKDashboardViewControllerFooterContainer *)self->_footerContainer setAlpha:0.0];
      view = [(PKUpcomingPassInformationDetailsViewController *)self view];
      [view addSubview:self->_footerContainer];

      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __63__PKUpcomingPassInformationDetailsViewController_updateContent__block_invoke;
      v29[3] = &unk_1E8010970;
      v29[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v29 animations:0.1];

      footer = self->_footer;
    }

    leadingTitle = [(PKDashboardViewControllerFooterView *)footer leadingTitle];
    [leadingTitle setText:footerTitle];

    leadingDetail = [(PKDashboardViewControllerFooterView *)self->_footer leadingDetail];
    footerText = [dataSource footerText];
    [leadingDetail setText:footerText];

    trailingTitle = [(PKDashboardViewControllerFooterView *)self->_footer trailingTitle];
    footerSecondaryTitle = [dataSource footerSecondaryTitle];
    [trailingTitle setText:footerSecondaryTitle];

    trailingDetail = [(PKDashboardViewControllerFooterView *)self->_footer trailingDetail];
    footerSecondaryText = [dataSource footerSecondaryText];
    [trailingDetail setText:footerSecondaryText];

    [(PKDashboardViewControllerFooterView *)self->_footer setNeedsLayout];
  }

  else
  {
    [(PKDashboardViewControllerFooterContainer *)self->_footerContainer setCurrentFooter:0];
  }
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v16.receiver = self;
  v16.super_class = PKUpcomingPassInformationDetailsViewController;
  [(PKDashboardViewController *)&v16 collectionView:view layout:layout sizeForItemAtIndexPath:pathCopy];
  v10 = v9;
  v12 = v11;
  if (self->_headerIndexPath && [pathCopy isEqual:?] && self->_headerHeight != v12)
  {
    self->_headerHeight = v12;
    view = [(PKUpcomingPassInformationDetailsViewController *)self view];
    [view setNeedsLayout];
  }

  v14 = v10;
  v15 = v12;
  result.height = v15;
  result.width = v14;
  return result;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = PKUpcomingPassInformationDetailsViewController;
  v7 = [(PKDashboardViewController *)&v9 collectionView:view cellForItemAtIndexPath:pathCopy];
  if (self->_headerIndexPath)
  {
    if ([pathCopy isEqual:?])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(PKUpcomingPassInformationDetailsViewController *)self _updateHeaderCellWithAnimationProgress:v7];
      }
    }
  }

  return v7;
}

- (void)_updateHeaderCellWithAnimationProgress:(id)progress
{
  progressCopy = progress;
  [progressCopy setOverlayAlpha:self->_headerAnimationProgress];
  if (self->_headerAnimationProgress >= 1.0)
  {
    [progressCopy setOverlayAlpha:0.0];
  }

  collectionView = [(PKUpcomingPassInformationDetailsViewController *)self collectionView];
  v5 = collectionView;
  if (self->_headerHeight <= 0.0)
  {
    v11 = 0;
  }

  else
  {
    [collectionView contentOffset];
    v7 = v6;
    [v5 safeAreaInsets];
    v9 = v8;
    [progressCopy topLabelWithRespectTo:v5];
    v11 = v7 <= v10 - v9;
  }

  if ([v5 _hiddenPocketEdges] != v11)
  {
    [v5 _setHiddenPocketEdges:v11];
  }

  if (self->_hideTopPocket != v11)
  {
    self->_hideTopPocket = v11;
    WeakRetained = objc_loadWeakRetained(&self->_navigationController);
    v13 = WeakRetained;
    if (WeakRetained)
    {
      self->_hideTopPocketDirty = 0;
      [WeakRetained setNeedsNavigationBarUpdate];
    }

    else
    {
      self->_hideTopPocketDirty = 1;
    }
  }
}

- ($85E40A55691FE2F31975A98F57E3065D)pkui_navigationStatusBarStyleDescriptor
{
  hideTopPocket = self->_hideTopPocket;
  v3 = 0;
  result.var1 = v3;
  result.var0 = hideTopPocket;
  return result;
}

- (void)_updateTitle
{
  navigationItem = [(PKUpcomingPassInformationDetailsViewController *)self navigationItem];
  dataSource = [(PKDashboardViewController *)self dataSource];
  navigationBarTitle = [dataSource navigationBarTitle];
  [navigationItem setBackButtonTitle:navigationBarTitle];
  [navigationItem setBackButtonDisplayMode:1];
  titleText = self->_titleText;
  self->_titleText = navigationBarTitle;
}

- (id)createBarButtonItems
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  moreMenu = [(PKUpcomingPassInformationDetailsViewController *)self moreMenu];
  if (moreMenu)
  {
    v5 = PKUIInfoButtonImageWithDefaultConfiguration();
    v6 = [objc_alloc(MEMORY[0x1E69DC708]) initWithImage:v5 menu:moreMenu];
    [v6 setAccessibilityIdentifier:*MEMORY[0x1E69B9970]];
    [v3 addObject:v6];
  }

  v7 = [v3 copy];

  return v7;
}

- (id)moreMenu
{
  _allMenuItems = [(PKUpcomingPassInformationDetailsViewController *)self _allMenuItems];
  if ([_allMenuItems count])
  {
    v3 = [MEMORY[0x1E69DCC60] menuWithChildren:_allMenuItems];
    [v3 setAccessibilityIdentifier:*MEMORY[0x1E69B9970]];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_allMenuItems
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  _showCalendarAction = [(PKUpcomingPassInformationDetailsViewController *)self _showCalendarAction];
  [v4 safelyAddObject:_showCalendarAction];

  _showTransferAction = [(PKUpcomingPassInformationDetailsViewController *)self _showTransferAction];
  [v4 safelyAddObject:_showTransferAction];

  _showSellAction = [(PKUpcomingPassInformationDetailsViewController *)self _showSellAction];
  [v4 safelyAddObject:_showSellAction];

  if ([v4 count])
  {
    v8 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F3BD7330 image:0 identifier:0 options:1 children:v4];
    [v3 addObject:v8];
  }

  v9 = [v3 copy];

  return v9;
}

- (id)_showTransferAction
{
  dataSource = [(PKDashboardViewController *)self dataSource];
  entry = [dataSource entry];
  content = [entry content];

  eventContent = [content eventContent];
  transferURL = [eventContent transferURL];

  if (transferURL)
  {
    objc_initWeak(&location, self);
    v8 = MEMORY[0x1E69DC628];
    v9 = PKLocalizedString(&cfstr_DashboardMoreM_9.isa);
    v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.line.dotted.person"];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __69__PKUpcomingPassInformationDetailsViewController__showTransferAction__block_invoke;
    v13[3] = &unk_1E8012328;
    objc_copyWeak(&v15, &location);
    v14 = transferURL;
    v11 = [v8 actionWithTitle:v9 image:v10 identifier:0 handler:v13];

    [v11 setAccessibilityIdentifier:*MEMORY[0x1E69B9D68]];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __69__PKUpcomingPassInformationDetailsViewController__showTransferAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    PKOpenURL();
    WeakRetained = v2;
  }
}

- (id)_showSellAction
{
  dataSource = [(PKDashboardViewController *)self dataSource];
  entry = [dataSource entry];
  content = [entry content];

  eventContent = [content eventContent];
  sellURL = [eventContent sellURL];

  if (sellURL)
  {
    objc_initWeak(&location, self);
    v8 = MEMORY[0x1E69DC628];
    v9 = PKLocalizedString(&cfstr_DashboardMoreM_10.isa);
    v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"banknote"];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __65__PKUpcomingPassInformationDetailsViewController__showSellAction__block_invoke;
    v13[3] = &unk_1E8012328;
    objc_copyWeak(&v15, &location);
    v14 = sellURL;
    v11 = [v8 actionWithTitle:v9 image:v10 identifier:0 handler:v13];

    [v11 setAccessibilityIdentifier:*MEMORY[0x1E69B9C08]];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __65__PKUpcomingPassInformationDetailsViewController__showSellAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    PKOpenURL();
    WeakRetained = v2;
  }
}

- (id)_showCalendarAction
{
  v3 = PKIsAuthorizedForEvents();
  if (v3 == 2)
  {
    v4 = 0;
  }

  else
  {
    v5 = v3;
    dataSource = [(PKDashboardViewController *)self dataSource];
    entry = [dataSource entry];
    pass = [dataSource pass];
    if ([(PKUpcomingPassInformationDetailsViewController *)self entryCanCreateCalendarEvent:entry])
    {
      v9 = MEMORY[0x1E69DC928];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __69__PKUpcomingPassInformationDetailsViewController__showCalendarAction__block_invoke;
      v11[3] = &unk_1E8019868;
      v15 = v5;
      v12 = pass;
      v13 = entry;
      selfCopy = self;
      v4 = [v9 elementWithUncachedProvider:v11];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

void __69__PKUpcomingPassInformationDetailsViewController__showCalendarAction__block_invoke(uint64_t a1, void *a2)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 56) == 1;
  v5 = PKEventStore();
  v6 = PKExistingCalendarEventsFromPass();
  v7 = v6;
  v8 = @"DASHBOARD_MORE_MENU_ADD_TO_CALENDAR";
  if (v4)
  {
    v9 = [v6 count];
    v10 = v9 != 0;
    if (v9)
    {
      v8 = @"DASHBOARD_MORE_MENU_VIEW_CALENDAR_EVENT";
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = PKLocalizedString(&v8->isa);
  objc_initWeak(&location, *(a1 + 48));
  v12 = MEMORY[0x1E69DC628];
  v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"calendar"];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __69__PKUpcomingPassInformationDetailsViewController__showCalendarAction__block_invoke_2;
  v18[3] = &unk_1E8019840;
  objc_copyWeak(&v23, &location);
  v24 = v10;
  v14 = v7;
  v19 = v14;
  v15 = v5;
  v20 = v15;
  v25 = v4;
  v21 = *(a1 + 40);
  v22 = *(a1 + 32);
  v16 = [v12 actionWithTitle:v11 image:v13 identifier:0 handler:v18];

  [v16 setAccessibilityIdentifier:*MEMORY[0x1E69B9598]];
  v27[0] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  v3[2](v3, v17);

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __69__PKUpcomingPassInformationDetailsViewController__showCalendarAction__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if (*(a1 + 72) == 1)
    {
      v3 = [*(a1 + 32) firstObject];
      [v4 presentExistingCalendarEvent:v3 eventStore:*(a1 + 40)];
    }

    else
    {
      [WeakRetained _performAddToCalendarRequestNeedingPermission:(*(a1 + 73) & 1) == 0 eventStore:*(a1 + 40) entry:*(a1 + 48) pass:*(a1 + 56)];
    }

    WeakRetained = v4;
  }
}

- (BOOL)entryCanCreateCalendarEvent:(id)event
{
  metadata = [event metadata];
  name = [metadata name];

  if (!name || [metadata type] != 1)
  {
    v9 = 0;
    goto LABEL_14;
  }

  semantics = [metadata semantics];
  v6 = [semantics objectForKeyedSubscript:*MEMORY[0x1E69BBC58]];

  dateValue = [v6 dateValue];
  if (!dateValue)
  {
    semantics2 = [metadata semantics];
    v11 = [semantics2 objectForKeyedSubscript:*MEMORY[0x1E69BBCB8]];

    eventDateInfoValue = [v11 eventDateInfoValue];
    date = [eventDateInfoValue date];

    if (date)
    {
      goto LABEL_7;
    }

    dateValue = [metadata date];
  }

  date = dateValue;
LABEL_7:
  semantics3 = [metadata semantics];
  v14 = [semantics3 objectForKeyedSubscript:*MEMORY[0x1E69BBC50]];

  dateValue2 = [v14 dateValue];
  if (date)
  {
    v16 = dateValue2 == 0;
  }

  else
  {
    v16 = 1;
  }

  v9 = !v16;

LABEL_14:
  return v9;
}

- (void)_performAddToCalendarRequestNeedingPermission:(BOOL)permission eventStore:(id)store entry:(id)entry pass:(id)pass
{
  storeCopy = store;
  entryCopy = entry;
  passCopy = pass;
  if (permission)
  {
    objc_initWeak(&location, self);
    objc_copyWeak(&v16, &location);
    v13 = storeCopy;
    v14 = entryCopy;
    v15 = passCopy;
    PKRequestEventsAuthorization();

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    [(PKUpcomingPassInformationDetailsViewController *)self addEventToCalendarWithEventStore:storeCopy entry:entryCopy pass:passCopy];
  }
}

void __118__PKUpcomingPassInformationDetailsViewController__performAddToCalendarRequestNeedingPermission_eventStore_entry_pass___block_invoke(id *a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __118__PKUpcomingPassInformationDetailsViewController__performAddToCalendarRequestNeedingPermission_eventStore_entry_pass___block_invoke_2;
    v7[3] = &unk_1E8016FE8;
    v13 = a2;
    v8 = v5;
    v9 = WeakRetained;
    v10 = a1[4];
    v11 = a1[5];
    v12 = a1[6];
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }
}

uint64_t __118__PKUpcomingPassInformationDetailsViewController__performAddToCalendarRequestNeedingPermission_eventStore_entry_pass___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 72) == 1 && !*(a1 + 32))
  {
    return [*(a1 + 40) addEventToCalendarWithEventStore:*(a1 + 48) entry:*(a1 + 56) pass:*(a1 + 64)];
  }

  else
  {
    return [*(a1 + 40) presentNeedsCalendarPermissionsAlert];
  }
}

- (void)presentExistingCalendarEvent:(id)event eventStore:(id)store
{
  v5 = MEMORY[0x1E6966B90];
  eventCopy = event;
  v9 = objc_alloc_init(v5);
  [v9 setDelegate:self];
  [v9 setEvent:eventCopy];

  v7 = [objc_opt_new() initWithRootViewController:v9];
  WeakRetained = objc_loadWeakRetained(&self->_navigationController);
  [WeakRetained presentViewController:v7 animated:1 completion:0];
}

- (void)addEventToCalendarWithEventStore:(id)store entry:(id)entry pass:(id)pass
{
  storeCopy = store;
  v6 = PKGenerateCalendarEventsFromPass();
  if ([v6 count])
  {
    v7 = objc_alloc_init(MEMORY[0x1E6966B88]);
    [v7 setEditViewDelegate:self];
    [v7 setEventStore:storeCopy];
    firstObject = [v6 firstObject];
    [v7 setEvent:firstObject];

    WeakRetained = objc_loadWeakRetained(&self->_navigationController);
    [WeakRetained presentViewController:v7 animated:1 completion:0];
  }
}

- (void)presentNeedsCalendarPermissionsAlert
{
  v3 = MEMORY[0x1E69DC650];
  v4 = PKLocalizedString(&cfstr_DashboardMoreM_47.isa);
  v5 = PKLocalizedString(&cfstr_DashboardMoreM_48.isa);
  v13 = [v3 alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  v6 = MEMORY[0x1E69DC648];
  v7 = PKLocalizedString(&cfstr_DashboardMoreM_49.isa);
  v8 = [v6 actionWithTitle:v7 style:0 handler:&__block_literal_global_109];
  [v13 addAction:v8];

  v9 = MEMORY[0x1E69DC648];
  v10 = PKLocalizedString(&cfstr_Cancel.isa);
  v11 = [v9 actionWithTitle:v10 style:1 handler:0];
  [v13 addAction:v11];

  WeakRetained = objc_loadWeakRetained(&self->_navigationController);
  [WeakRetained presentViewController:v13 animated:1 completion:0];
}

void __86__PKUpcomingPassInformationDetailsViewController_presentNeedsCalendarPermissionsAlert__block_invoke()
{
  v0 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=Privacy&path=CALENDARS"];
  PKOpenURL();
}

- (void)eventViewController:(id)controller didCompleteWithAction:(int64_t)action
{
  controllerCopy = controller;
  if ((action | 2) == 2)
  {
    v6 = controllerCopy;
    [controllerCopy dismissViewControllerAnimated:1 completion:0];
    controllerCopy = v6;
  }
}

- (void)passTilesItemPresenter:(id)presenter displayTileContext:(int64_t)context forPass:(id)pass tile:(id)tile overrideMaximumRows:(BOOL)rows
{
  rowsCopy = rows;
  presenterCopy = presenter;
  passCopy = pass;
  tileCopy = tile;
  selfCopy = self;
  dataSource = [(PKDashboardViewController *)self dataSource];
  entry = [dataSource entry];
  passStateProvider = [dataSource passStateProvider];
  tileDescriptor = [dataSource tileDescriptor];
  tileFactory = [dataSource tileFactory];
  v17 = [PKDashboardSectionDataSourcePassSemanticTiles alloc];
  metadata = [tileCopy metadata];
  identifier = [metadata identifier];
  v20 = [(PKDashboardSectionDataSourcePassSemanticTiles *)v17 initWithDescriptor:tileDescriptor forContext:context tileFactory:tileFactory tileGroupID:identifier passStateProvider:passStateProvider overridesMaximumRows:rowsCopy];

  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v21 addObject:v20];
  v37 = tileCopy;
  if (context == 4)
  {
    goto LABEL_5;
  }

  if (context == 5)
  {
    metadata2 = [entry metadata];
    type = [metadata2 type];

    if (type == 1)
    {
      metadata3 = [entry metadata];
      name = [metadata3 name];
      v29 = name;
      if (name)
      {
        v30 = name;
      }

      else
      {
        v30 = PKLocalizedTicketingString(&cfstr_EventGuideFall.isa);
      }

      header = v30;

      v31 = [PKDashboardSectionDataSourceLinkedApp alloc];
      content = [entry content];
      auxiliaryStoreIdentifiers = [content auxiliaryStoreIdentifiers];
      v32 = [(PKDashboardSectionDataSourceLinkedApp *)v31 initWithStoreIDs:auxiliaryStoreIdentifiers applicationBundleIdentifiers:0 defaultLaunchURL:0];
      [v21 addObject:v32];

      goto LABEL_13;
    }

    if (!type)
    {
      __break(1u);
      return;
    }
  }

  else if (context < 4)
  {
    __break(1u);
LABEL_5:
    content = [tileCopy state];
    auxiliaryStoreIdentifiers = [content stateTypeGroup];
    header = [auxiliaryStoreIdentifiers header];
LABEL_13:

    goto LABEL_14;
  }

  header = &stru_1F3BD7330;
LABEL_14:
  v33 = [[PKSectionedDashboardDataSource alloc] initWithSectionDataSources:v21];
  v34 = [[PKDashboardTileContextViewController alloc] initWithTitle:header dataSource:v33];
  WeakRetained = objc_loadWeakRetained(&selfCopy->_navigationController);
  [WeakRetained pushViewController:v34 animated:1];
}

@end