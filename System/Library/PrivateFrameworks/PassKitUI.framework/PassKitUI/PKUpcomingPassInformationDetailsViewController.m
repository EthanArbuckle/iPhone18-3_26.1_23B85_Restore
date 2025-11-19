@interface PKUpcomingPassInformationDetailsViewController
+ (BOOL)entryMeetsMinimumContentRequirements:(id)a3;
- ($85E40A55691FE2F31975A98F57E3065D)pkui_navigationStatusBarStyleDescriptor;
- (BOOL)entryCanCreateCalendarEvent:(id)a3;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (PKUpcomingPassInformationDetailsViewController)initWithDataSource:(id)a3;
- (id)_allMenuItems;
- (id)_showCalendarAction;
- (id)_showSellAction;
- (id)_showTransferAction;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)createBarButtonItems;
- (id)moreMenu;
- (void)_performAddToCalendarRequestNeedingPermission:(BOOL)a3 eventStore:(id)a4 entry:(id)a5 pass:(id)a6;
- (void)_updateHeaderCellWithAnimationProgress:(id)a3;
- (void)_updateNavigationBarIconForNavigationBarAppeared:(BOOL)a3;
- (void)_updateTitle;
- (void)addEventToCalendarWithEventStore:(id)a3 entry:(id)a4 pass:(id)a5;
- (void)didMoveToParentViewController:(id)a3;
- (void)eventViewController:(id)a3 didCompleteWithAction:(int64_t)a4;
- (void)passTilesItemPresenter:(id)a3 displayTileContext:(int64_t)a4 forPass:(id)a5 tile:(id)a6 overrideMaximumRows:(BOOL)a7;
- (void)presentExistingCalendarEvent:(id)a3 eventStore:(id)a4;
- (void)presentNeedsCalendarPermissionsAlert;
- (void)updateContent;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation PKUpcomingPassInformationDetailsViewController

+ (BOOL)entryMeetsMinimumContentRequirements:(id)a3
{
  v3 = a3;
  v4 = [v3 content];
  v5 = [v4 backFields];
  v6 = [v5 count] != 0;

  v7 = [v3 metadata];

  [v7 type];
  return v6;
}

- (PKUpcomingPassInformationDetailsViewController)initWithDataSource:(id)a3
{
  v20[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
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
  v10 = [(PKDashboardViewController *)&v19 initWithDataSource:v4 presenters:v8 layout:v9];
  if (v10)
  {
    v11 = [v4 headerIndexPath];
    headerIndexPath = v10->_headerIndexPath;
    v10->_headerIndexPath = v11;

    v10->_hideTopPocket = 1;
    [(PKDashboardPassTilesItemPresenter *)v6 setDelegate:v10];
    v13 = [(PKUpcomingPassInformationDetailsViewController *)v10 navigationItem];
    v14 = [(PKUpcomingPassInformationDetailsViewController *)v10 createBarButtonItems];
    [v13 setRightBarButtonItems:v14];

    v15 = [v13 standardAppearance];
    v16 = [v15 backgroundEffect];
    [(PKUpcomingPassInformationDetailsHeaderItemPresenter *)v5 setOverlayEffect:v16];

    v17 = [v15 shadowColor];
    [(PKUpcomingPassInformationDetailsHeaderItemPresenter *)v5 setShadowColor:v17];
  }

  return v10;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PKUpcomingPassInformationDetailsViewController;
  [(PKDashboardViewController *)&v5 viewDidLoad];
  v3 = [(PKUpcomingPassInformationDetailsViewController *)self view];
  v4 = +[PKDashboardViewController backgroundColor];
  [v3 setBackgroundColor:v4];

  [(PKUpcomingPassInformationDetailsViewController *)self _updateTitle];
}

- (void)viewWillLayoutSubviews
{
  v40.receiver = self;
  v40.super_class = PKUpcomingPassInformationDetailsViewController;
  [(PKUpcomingPassInformationDetailsViewController *)&v40 viewWillLayoutSubviews];
  v3 = [(PKUpcomingPassInformationDetailsViewController *)self collectionView];
  [v3 contentOffset];
  v5 = v4;
  [v3 safeAreaInsets];
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
  [v3 pkui_naturalRestingBounds];
  v18 = v5 - v17;
  v19 = v16 - (v5 - v17);
  if (v18 < 0.0)
  {
    v16 = v19;
  }

  [v3 verticalScrollIndicatorInsets];
  if (v23 != v10 || (v20 == v16 ? (v24 = v22 == v14) : (v24 = 0), v24 ? (v25 = v21 == v13) : (v25 = 0), !v25))
  {
    [v3 setVerticalScrollIndicatorInsets:{v16, v10, v13, v14}];
  }

  [v3 contentInset];
  if (v29 != v10 || v26 != v15 || v28 != v14 || v27 != v13)
  {
    [v3 setContentInset:{v15, v10, v13, v14}];
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
    v38 = [(PKUpcomingPassInformationDetailsViewController *)self collectionView];
    v39 = [v38 cellForItemAtIndexPath:self->_headerIndexPath];

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

- (void)_updateNavigationBarIconForNavigationBarAppeared:(BOOL)a3
{
  if (self->_titleText)
  {
    v3 = a3;
    v5 = [(PKUpcomingPassInformationDetailsViewController *)self navigationItem];
    if (v3)
    {
      titleText = self->_titleText;
    }

    else
    {
      titleText = 0;
    }

    v7 = v5;
    [v5 _setTitle:titleText animated:1];
  }
}

- (void)viewDidLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = PKUpcomingPassInformationDetailsViewController;
  [(PKUpcomingPassInformationDetailsViewController *)&v15 viewDidLayoutSubviews];
  v3 = [(PKUpcomingPassInformationDetailsViewController *)self view];
  [v3 bounds];
  if (self->_footerContainer)
  {
    v7 = v4;
    v8 = v5;
    v9 = v6;
    [v3 safeAreaInsets];
    v11 = v10;
    v13 = v8 - v10 - v12;
    [(PKDashboardViewControllerFooterContainer *)self->_footerContainer sizeThatFits:v13, v9];
    [(PKDashboardViewControllerFooterContainer *)self->_footerContainer setFrame:v11, v7 + v9 - v14, v13, v14];
  }
}

- (void)willMoveToParentViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKUpcomingPassInformationDetailsViewController;
  [(PKUpcomingPassInformationDetailsViewController *)&v5 willMoveToParentViewController:?];
  if (!a3)
  {
    objc_storeWeak(&self->_navigationController, 0);
  }
}

- (void)didMoveToParentViewController:(id)a3
{
  v6.receiver = self;
  v6.super_class = PKUpcomingPassInformationDetailsViewController;
  [(PKUpcomingPassInformationDetailsViewController *)&v6 didMoveToParentViewController:a3];
  v4 = [(PKUpcomingPassInformationDetailsViewController *)self navigationController];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
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
  v3 = [(PKUpcomingPassInformationDetailsViewController *)self navigationItem];
  v4 = [v3 rightBarButtonItems];
  v5 = [(PKUpcomingPassInformationDetailsViewController *)self createBarButtonItems];
  if ((PKEqualObjects() & 1) == 0)
  {
    [v3 setRightBarButtonItems:v5 animated:1];
  }

  [(PKUpcomingPassInformationDetailsViewController *)self _updateTitle];
  v6 = [(PKDashboardViewController *)self dataSource];
  v7 = [v6 footerTitle];
  if (v7)
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
      v17 = [(PKUpcomingPassInformationDetailsViewController *)self collectionView];
      v18 = [v16 initWithScrollView:v17 edge:4 style:1];

      [(PKDashboardViewControllerFooterView *)self->_footer addInteraction:v18];
      v19 = [[PKDashboardViewControllerFooterContainer alloc] initWithFrame:v10, v11, v12, v13];
      footerContainer = self->_footerContainer;
      self->_footerContainer = v19;

      [(PKDashboardViewControllerFooterContainer *)self->_footerContainer setCurrentFooter:self->_footer];
      [(PKDashboardViewControllerFooterContainer *)self->_footerContainer setAlpha:0.0];
      v21 = [(PKUpcomingPassInformationDetailsViewController *)self view];
      [v21 addSubview:self->_footerContainer];

      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __63__PKUpcomingPassInformationDetailsViewController_updateContent__block_invoke;
      v29[3] = &unk_1E8010970;
      v29[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v29 animations:0.1];

      footer = self->_footer;
    }

    v22 = [(PKDashboardViewControllerFooterView *)footer leadingTitle];
    [v22 setText:v7];

    v23 = [(PKDashboardViewControllerFooterView *)self->_footer leadingDetail];
    v24 = [v6 footerText];
    [v23 setText:v24];

    v25 = [(PKDashboardViewControllerFooterView *)self->_footer trailingTitle];
    v26 = [v6 footerSecondaryTitle];
    [v25 setText:v26];

    v27 = [(PKDashboardViewControllerFooterView *)self->_footer trailingDetail];
    v28 = [v6 footerSecondaryText];
    [v27 setText:v28];

    [(PKDashboardViewControllerFooterView *)self->_footer setNeedsLayout];
  }

  else
  {
    [(PKDashboardViewControllerFooterContainer *)self->_footerContainer setCurrentFooter:0];
  }
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v8 = a5;
  v16.receiver = self;
  v16.super_class = PKUpcomingPassInformationDetailsViewController;
  [(PKDashboardViewController *)&v16 collectionView:a3 layout:a4 sizeForItemAtIndexPath:v8];
  v10 = v9;
  v12 = v11;
  if (self->_headerIndexPath && [v8 isEqual:?] && self->_headerHeight != v12)
  {
    self->_headerHeight = v12;
    v13 = [(PKUpcomingPassInformationDetailsViewController *)self view];
    [v13 setNeedsLayout];
  }

  v14 = v10;
  v15 = v12;
  result.height = v15;
  result.width = v14;
  return result;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v9.receiver = self;
  v9.super_class = PKUpcomingPassInformationDetailsViewController;
  v7 = [(PKDashboardViewController *)&v9 collectionView:a3 cellForItemAtIndexPath:v6];
  if (self->_headerIndexPath)
  {
    if ([v6 isEqual:?])
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

- (void)_updateHeaderCellWithAnimationProgress:(id)a3
{
  v14 = a3;
  [v14 setOverlayAlpha:self->_headerAnimationProgress];
  if (self->_headerAnimationProgress >= 1.0)
  {
    [v14 setOverlayAlpha:0.0];
  }

  v4 = [(PKUpcomingPassInformationDetailsViewController *)self collectionView];
  v5 = v4;
  if (self->_headerHeight <= 0.0)
  {
    v11 = 0;
  }

  else
  {
    [v4 contentOffset];
    v7 = v6;
    [v5 safeAreaInsets];
    v9 = v8;
    [v14 topLabelWithRespectTo:v5];
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
  v6 = [(PKUpcomingPassInformationDetailsViewController *)self navigationItem];
  v3 = [(PKDashboardViewController *)self dataSource];
  v4 = [v3 navigationBarTitle];
  [v6 setBackButtonTitle:v4];
  [v6 setBackButtonDisplayMode:1];
  titleText = self->_titleText;
  self->_titleText = v4;
}

- (id)createBarButtonItems
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(PKUpcomingPassInformationDetailsViewController *)self moreMenu];
  if (v4)
  {
    v5 = PKUIInfoButtonImageWithDefaultConfiguration();
    v6 = [objc_alloc(MEMORY[0x1E69DC708]) initWithImage:v5 menu:v4];
    [v6 setAccessibilityIdentifier:*MEMORY[0x1E69B9970]];
    [v3 addObject:v6];
  }

  v7 = [v3 copy];

  return v7;
}

- (id)moreMenu
{
  v2 = [(PKUpcomingPassInformationDetailsViewController *)self _allMenuItems];
  if ([v2 count])
  {
    v3 = [MEMORY[0x1E69DCC60] menuWithChildren:v2];
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
  v5 = [(PKUpcomingPassInformationDetailsViewController *)self _showCalendarAction];
  [v4 safelyAddObject:v5];

  v6 = [(PKUpcomingPassInformationDetailsViewController *)self _showTransferAction];
  [v4 safelyAddObject:v6];

  v7 = [(PKUpcomingPassInformationDetailsViewController *)self _showSellAction];
  [v4 safelyAddObject:v7];

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
  v3 = [(PKDashboardViewController *)self dataSource];
  v4 = [v3 entry];
  v5 = [v4 content];

  v6 = [v5 eventContent];
  v7 = [v6 transferURL];

  if (v7)
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
    v14 = v7;
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
  v3 = [(PKDashboardViewController *)self dataSource];
  v4 = [v3 entry];
  v5 = [v4 content];

  v6 = [v5 eventContent];
  v7 = [v6 sellURL];

  if (v7)
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
    v14 = v7;
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
    v6 = [(PKDashboardViewController *)self dataSource];
    v7 = [v6 entry];
    v8 = [v6 pass];
    if ([(PKUpcomingPassInformationDetailsViewController *)self entryCanCreateCalendarEvent:v7])
    {
      v9 = MEMORY[0x1E69DC928];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __69__PKUpcomingPassInformationDetailsViewController__showCalendarAction__block_invoke;
      v11[3] = &unk_1E8019868;
      v15 = v5;
      v12 = v8;
      v13 = v7;
      v14 = self;
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

- (BOOL)entryCanCreateCalendarEvent:(id)a3
{
  v3 = [a3 metadata];
  v4 = [v3 name];

  if (!v4 || [v3 type] != 1)
  {
    v9 = 0;
    goto LABEL_14;
  }

  v5 = [v3 semantics];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BBC58]];

  v7 = [v6 dateValue];
  if (!v7)
  {
    v10 = [v3 semantics];
    v11 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69BBCB8]];

    v12 = [v11 eventDateInfoValue];
    v8 = [v12 date];

    if (v8)
    {
      goto LABEL_7;
    }

    v7 = [v3 date];
  }

  v8 = v7;
LABEL_7:
  v13 = [v3 semantics];
  v14 = [v13 objectForKeyedSubscript:*MEMORY[0x1E69BBC50]];

  v15 = [v14 dateValue];
  if (v8)
  {
    v16 = v15 == 0;
  }

  else
  {
    v16 = 1;
  }

  v9 = !v16;

LABEL_14:
  return v9;
}

- (void)_performAddToCalendarRequestNeedingPermission:(BOOL)a3 eventStore:(id)a4 entry:(id)a5 pass:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (a3)
  {
    objc_initWeak(&location, self);
    objc_copyWeak(&v16, &location);
    v13 = v10;
    v14 = v11;
    v15 = v12;
    PKRequestEventsAuthorization();

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    [(PKUpcomingPassInformationDetailsViewController *)self addEventToCalendarWithEventStore:v10 entry:v11 pass:v12];
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

- (void)presentExistingCalendarEvent:(id)a3 eventStore:(id)a4
{
  v5 = MEMORY[0x1E6966B90];
  v6 = a3;
  v9 = objc_alloc_init(v5);
  [v9 setDelegate:self];
  [v9 setEvent:v6];

  v7 = [objc_opt_new() initWithRootViewController:v9];
  WeakRetained = objc_loadWeakRetained(&self->_navigationController);
  [WeakRetained presentViewController:v7 animated:1 completion:0];
}

- (void)addEventToCalendarWithEventStore:(id)a3 entry:(id)a4 pass:(id)a5
{
  v10 = a3;
  v6 = PKGenerateCalendarEventsFromPass();
  if ([v6 count])
  {
    v7 = objc_alloc_init(MEMORY[0x1E6966B88]);
    [v7 setEditViewDelegate:self];
    [v7 setEventStore:v10];
    v8 = [v6 firstObject];
    [v7 setEvent:v8];

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

- (void)eventViewController:(id)a3 didCompleteWithAction:(int64_t)a4
{
  v5 = a3;
  if ((a4 | 2) == 2)
  {
    v6 = v5;
    [v5 dismissViewControllerAnimated:1 completion:0];
    v5 = v6;
  }
}

- (void)passTilesItemPresenter:(id)a3 displayTileContext:(int64_t)a4 forPass:(id)a5 tile:(id)a6 overrideMaximumRows:(BOOL)a7
{
  v7 = a7;
  v39 = a3;
  v38 = a5;
  v12 = a6;
  v36 = self;
  v13 = [(PKDashboardViewController *)self dataSource];
  v40 = [v13 entry];
  v14 = [v13 passStateProvider];
  v15 = [v13 tileDescriptor];
  v16 = [v13 tileFactory];
  v17 = [PKDashboardSectionDataSourcePassSemanticTiles alloc];
  v18 = [v12 metadata];
  v19 = [v18 identifier];
  v20 = [(PKDashboardSectionDataSourcePassSemanticTiles *)v17 initWithDescriptor:v15 forContext:a4 tileFactory:v16 tileGroupID:v19 passStateProvider:v14 overridesMaximumRows:v7];

  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v21 addObject:v20];
  v37 = v12;
  if (a4 == 4)
  {
    goto LABEL_5;
  }

  if (a4 == 5)
  {
    v25 = [v40 metadata];
    v26 = [v25 type];

    if (v26 == 1)
    {
      v27 = [v40 metadata];
      v28 = [v27 name];
      v29 = v28;
      if (v28)
      {
        v30 = v28;
      }

      else
      {
        v30 = PKLocalizedTicketingString(&cfstr_EventGuideFall.isa);
      }

      v24 = v30;

      v31 = [PKDashboardSectionDataSourceLinkedApp alloc];
      v22 = [v40 content];
      v23 = [v22 auxiliaryStoreIdentifiers];
      v32 = [(PKDashboardSectionDataSourceLinkedApp *)v31 initWithStoreIDs:v23 applicationBundleIdentifiers:0 defaultLaunchURL:0];
      [v21 addObject:v32];

      goto LABEL_13;
    }

    if (!v26)
    {
      __break(1u);
      return;
    }
  }

  else if (a4 < 4)
  {
    __break(1u);
LABEL_5:
    v22 = [v12 state];
    v23 = [v22 stateTypeGroup];
    v24 = [v23 header];
LABEL_13:

    goto LABEL_14;
  }

  v24 = &stru_1F3BD7330;
LABEL_14:
  v33 = [[PKSectionedDashboardDataSource alloc] initWithSectionDataSources:v21];
  v34 = [[PKDashboardTileContextViewController alloc] initWithTitle:v24 dataSource:v33];
  WeakRetained = objc_loadWeakRetained(&v36->_navigationController);
  [WeakRetained pushViewController:v34 animated:1];
}

@end