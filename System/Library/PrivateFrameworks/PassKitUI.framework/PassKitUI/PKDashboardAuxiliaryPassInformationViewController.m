@interface PKDashboardAuxiliaryPassInformationViewController
- ($85E40A55691FE2F31975A98F57E3065D)pkui_navigationStatusBarStyleDescriptor;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (PKDashboardAuxiliaryPassInformationViewController)initWithItem:(id)a3 forPass:(id)a4;
- (id)_barButtonItems;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (void)_handleMessageButtonTapped;
- (void)_handlePhoneButtonTapped;
- (void)_showMapsDetailsViewController;
- (void)_updateHeaderCellWithAnimationProgress:(id)a3;
- (void)_updateNavigationBarIconForNavigationBarAppeared:(BOOL)a3;
- (void)_updateNavigationBarIconWithLogoURL:(id)a3;
- (void)dealloc;
- (void)updateContent;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PKDashboardAuxiliaryPassInformationViewController

- (PKDashboardAuxiliaryPassInformationViewController)initWithItem:(id)a3 forPass:(id)a4
{
  v24[3] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [[PKAuxiliaryPassInformationDataSource alloc] initWithItem:v7 forPass:v6];

  v9 = objc_alloc_init(PKDashboardDetailHeaderItemPresenter);
  v10 = objc_alloc_init(PKDashboardTextActionItemPresenter);
  v11 = objc_alloc_init(PKDashboardMapItemPresenter);
  v12 = objc_alloc_init(PKHeaderVerticalScrollingLayout);
  [(PKHeaderVerticalScrollingLayout *)v12 setUseStickyHeader:1];
  v24[0] = v9;
  v24[1] = v10;
  v24[2] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:3];
  v23.receiver = self;
  v23.super_class = PKDashboardAuxiliaryPassInformationViewController;
  v14 = [(PKDashboardViewController *)&v23 initWithDataSource:v8 presenters:v13 layout:v12];

  if (v14)
  {
    v15 = [(PKDashboardAuxiliaryPassInformationViewController *)v14 navigationItem];
    v16 = [(PKDashboardAuxiliaryPassInformationViewController *)v14 _barButtonItems];
    [v15 setRightBarButtonItems:v16];

    v17 = [v15 standardAppearance];
    v18 = [v17 backgroundEffect];
    [(PKDashboardDetailHeaderItemPresenter *)v9 setOverlayEffect:v18];

    v19 = [v17 shadowColor];
    [(PKDashboardDetailHeaderItemPresenter *)v9 setShadowColor:v19];

    v20 = [(PKAuxiliaryPassInformationDataSource *)v8 headerIndexPath];
    headerIndexPath = v14->_headerIndexPath;
    v14->_headerIndexPath = v20;
  }

  return v14;
}

- (void)dealloc
{
  loadingMapsTimer = self->_loadingMapsTimer;
  if (loadingMapsTimer)
  {
    dispatch_source_cancel(loadingMapsTimer);
    v4 = self->_loadingMapsTimer;
    self->_loadingMapsTimer = 0;
  }

  v5.receiver = self;
  v5.super_class = PKDashboardAuxiliaryPassInformationViewController;
  [(PKDashboardViewController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PKDashboardAuxiliaryPassInformationViewController;
  [(PKDashboardViewController *)&v5 viewDidLoad];
  v3 = [(PKDashboardAuxiliaryPassInformationViewController *)self view];
  v4 = +[PKDashboardViewController backgroundColor];
  [v3 setBackgroundColor:v4];
}

- (void)_updateNavigationBarIconForNavigationBarAppeared:(BOOL)a3
{
  v3 = a3;
  titleIconImageView = self->_titleIconImageView;
  if (titleIconImageView)
  {
    titleView = self->_titleView;
    if (v3)
    {
      if (!titleView)
      {
        v7 = [(PKDashboardAuxiliaryPassInformationViewController *)self navigationController];
        v8 = [v7 navigationBar];
        [v8 frame];
        v10 = v9;

        v11 = [[PKAnimatedNavigationBarTitleView alloc] initWithFrame:0.0, 0.0, v10, v10];
        v12 = self->_titleView;
        self->_titleView = v11;

        [(PKAnimatedNavigationBarTitleView *)self->_titleView setMaxWidth:33.0];
        v13 = [(PKDashboardAuxiliaryPassInformationViewController *)self navigationItem];
        [v13 pkui_setCenterAlignedTitleView:self->_titleView];

        titleView = self->_titleView;
        titleIconImageView = self->_titleIconImageView;
      }
    }

    else
    {
      titleIconImageView = 0;
    }

    [(PKAnimatedNavigationBarTitleView *)titleView setTitleView:titleIconImageView animated:1];
  }

  else if (self->_titleText)
  {
    v14 = [(PKDashboardAuxiliaryPassInformationViewController *)self navigationItem];
    v16 = v14;
    if (v3)
    {
      titleText = self->_titleText;
    }

    else
    {
      titleText = 0;
    }

    [v14 _setTitle:titleText animated:1];
  }
}

- (void)viewWillLayoutSubviews
{
  v40.receiver = self;
  v40.super_class = PKDashboardAuxiliaryPassInformationViewController;
  [(PKDashboardAuxiliaryPassInformationViewController *)&v40 viewWillLayoutSubviews];
  v3 = [(PKDashboardAuxiliaryPassInformationViewController *)self collectionView];
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
      [(PKDashboardAuxiliaryPassInformationViewController *)self _updateNavigationBarIconForNavigationBarAppeared:v36];
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
    v38 = [(PKDashboardAuxiliaryPassInformationViewController *)self collectionView];
    v39 = [v38 cellForItemAtIndexPath:self->_headerIndexPath];

    if (v39)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(PKDashboardAuxiliaryPassInformationViewController *)self _updateHeaderCellWithAnimationProgress:v39];
      }
    }
  }
}

- (void)viewDidLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = PKDashboardAuxiliaryPassInformationViewController;
  [(PKDashboardAuxiliaryPassInformationViewController *)&v15 viewDidLayoutSubviews];
  v3 = [(PKDashboardAuxiliaryPassInformationViewController *)self view];
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

- (void)updateContent
{
  v45.receiver = self;
  v45.super_class = PKDashboardAuxiliaryPassInformationViewController;
  [(PKDashboardViewController *)&v45 updateContent];
  v3 = [(PKDashboardAuxiliaryPassInformationViewController *)self navigationItem];
  v4 = [v3 rightBarButtonItems];
  v5 = [(PKDashboardAuxiliaryPassInformationViewController *)self _barButtonItems];
  if ((PKEqualObjects() & 1) == 0)
  {
    [v3 setRightBarButtonItems:v5 animated:1];
  }

  v44 = v5;
  v6 = [(PKDashboardViewController *)self dataSource];
  v7 = [v6 merchant];
  PKUIScreenScale();
  v8 = PKMapsIconForMerchant();
  v9 = [v7 logoImageURL];
  v10 = [v6 item];
  v11 = v10;
  if (v8)
  {
    v12 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v8];
    titleIconImageView = self->_titleIconImageView;
    self->_titleIconImageView = v12;

    [(UIImageView *)self->_titleIconImageView setContentMode:1];
    [(UIImageView *)self->_titleIconImageView _setContinuousCornerRadius:3.0];
    [(UIImageView *)self->_titleIconImageView setClipsToBounds:1];
    [(PKDashboardAuxiliaryPassInformationViewController *)self _updateNavigationBarIconWithLogoURL:v9];
  }

  else
  {
    v14 = [v10 title];
    titleText = self->_titleText;
    self->_titleText = v14;
  }

  v43 = v9;
  v16 = [v11 detailFooterLeadingTitle];
  if (v16)
  {
    v40 = v4;
    footer = self->_footer;
    if (!footer)
    {
      v18 = [PKDashboardViewControllerFooterView alloc];
      v19 = *MEMORY[0x1E695F058];
      v20 = *(MEMORY[0x1E695F058] + 8);
      v21 = *(MEMORY[0x1E695F058] + 16);
      v22 = *(MEMORY[0x1E695F058] + 24);
      v23 = [(PKDashboardViewControllerFooterView *)v18 initWithFrame:*MEMORY[0x1E695F058], v20, v21, v22];
      v24 = self->_footer;
      self->_footer = v23;

      [(PKDashboardViewControllerFooterView *)self->_footer setDetailNumberOfLines:2];
      v25 = objc_alloc(MEMORY[0x1E69DD6C8]);
      v26 = [(PKDashboardAuxiliaryPassInformationViewController *)self collectionView];
      v27 = [v25 initWithScrollView:v26 edge:4 style:1];

      [(PKDashboardViewControllerFooterView *)self->_footer addInteraction:v27];
      v28 = [[PKDashboardViewControllerFooterContainer alloc] initWithFrame:v19, v20, v21, v22];
      footerContainer = self->_footerContainer;
      self->_footerContainer = v28;

      [(PKDashboardViewControllerFooterContainer *)self->_footerContainer setCurrentFooter:self->_footer];
      v30 = [(PKDashboardAuxiliaryPassInformationViewController *)self view];
      [v30 addSubview:self->_footerContainer];

      footer = self->_footer;
    }

    v31 = [(PKDashboardViewControllerFooterView *)footer leadingTitle:v40];
    [v31 setText:v16];

    v32 = [(PKDashboardViewControllerFooterView *)self->_footer leadingDetail];
    v33 = [v11 detailFooterLeadingText];
    [v32 setText:v33];

    v34 = [v11 detailFooterTrailingTitle];
    v35 = [(PKDashboardViewControllerFooterView *)self->_footer trailingTitle];
    [v35 setText:v34];

    v36 = [(PKDashboardViewControllerFooterView *)self->_footer trailingDetail];
    v37 = [v11 detailFooterTrailingText];
    [v36 setText:v37];

    [(PKDashboardViewControllerFooterView *)self->_footer setNeedsLayout];
    v4 = v41;
    v3 = v42;
  }

  else
  {
    [(PKDashboardViewControllerFooterContainer *)self->_footerContainer setCurrentFooter:0];
  }

  v38 = [(PKDashboardAuxiliaryPassInformationViewController *)self navigationItem];
  v39 = [v6 navigationBarTitle];
  [v38 setBackButtonTitle:v39];

  [v38 setBackButtonDisplayMode:1];
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v8 = a5;
  v16.receiver = self;
  v16.super_class = PKDashboardAuxiliaryPassInformationViewController;
  [(PKDashboardViewController *)&v16 collectionView:a3 layout:a4 sizeForItemAtIndexPath:v8];
  v10 = v9;
  v12 = v11;
  if (self->_headerIndexPath && [v8 isEqual:?] && self->_headerHeight != v12)
  {
    self->_headerHeight = v12;
    v13 = [(PKDashboardAuxiliaryPassInformationViewController *)self view];
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
  v9.super_class = PKDashboardAuxiliaryPassInformationViewController;
  v7 = [(PKDashboardViewController *)&v9 collectionView:a3 cellForItemAtIndexPath:v6];
  if (self->_headerIndexPath)
  {
    if ([v6 isEqual:?])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(PKDashboardAuxiliaryPassInformationViewController *)self _updateHeaderCellWithAnimationProgress:v7];
      }
    }
  }

  return v7;
}

- (void)_updateHeaderCellWithAnimationProgress:(id)a3
{
  v13 = a3;
  [v13 setOverlayAlpha:self->_headerAnimationProgress];
  if (self->_headerAnimationProgress >= 1.0)
  {
    [v13 setOverlayAlpha:0.0];
  }

  v4 = [(PKDashboardAuxiliaryPassInformationViewController *)self collectionView];
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
    [v13 topLabelWithRespectTo:v5];
    v11 = v7 <= v10 - v9;
  }

  if ([v5 _hiddenPocketEdges] != v11)
  {
    [v5 _setHiddenPocketEdges:v11];
  }

  if (self->_hideTopPocket != v11)
  {
    self->_hideTopPocket = v11;
    v12 = [(PKDashboardAuxiliaryPassInformationViewController *)self navigationController];
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v12 setNeedsNavigationBarUpdate];
      }
    }
  }
}

- (void)_updateNavigationBarIconWithLogoURL:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x1E69B8A08];
    v5 = a3;
    v6 = [v4 sharedImageAssetDownloader];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __89__PKDashboardAuxiliaryPassInformationViewController__updateNavigationBarIconWithLogoURL___block_invoke;
    v7[3] = &unk_1E8020570;
    v7[4] = self;
    [v6 downloadFromUrl:v5 completionHandler:v7];
  }
}

void __89__PKDashboardAuxiliaryPassInformationViewController__updateNavigationBarIconWithLogoURL___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 && !a4)
  {
    v5 = [MEMORY[0x1E69DCAB8] imageWithData:a2];
    v6 = v5;
    if (v5)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __89__PKDashboardAuxiliaryPassInformationViewController__updateNavigationBarIconWithLogoURL___block_invoke_2;
      v7[3] = &unk_1E8010A10;
      v7[4] = *(a1 + 32);
      v8 = v5;
      dispatch_async(MEMORY[0x1E69E96A0], v7);
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

- (id)_barButtonItems
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v44 = [(PKDashboardViewController *)self dataSource];
  v4 = [v44 merchant];
  v5 = v4;
  if (v4)
  {
    if ([v4 shouldIgnoreMapsMatches])
    {
      v6 = 0;
    }

    else
    {
      v9 = [v5 mapsMerchant];
      v6 = v9 != 0;
    }

    v10 = [v5 phoneNumber];
    v8 = v10 != 0;

    v11 = [v5 businessChatURL];
    v7 = v11 != 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v6 = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__PKDashboardAuxiliaryPassInformationViewController__barButtonItems__block_invoke_2;
  aBlock[3] = &__block_descriptor_48_e49___PKAlignedContentContainerView_16__0__UIButton_8l;
  v53 = vdupq_n_s64(0x4040000000000000uLL);
  v12 = _Block_copy(aBlock);
  objc_initWeak(&location, self);
  if (v6)
  {
    v13 = &OBJC_IVAR___PKFamilyMemberTransactionsViewController__contactResolver;
    if (!self->_detailsButton)
    {
      v14 = [(PKDashboardViewController *)self dataSource];
      v15 = [v14 merchant];
      v16 = [v15 heroImageURL];
      v43 = v14;

      v17 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"info"];
      v18 = MEMORY[0x1E69DC628];
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __68__PKDashboardAuxiliaryPassInformationViewController__barButtonItems__block_invoke_3;
      v49[3] = &unk_1E8010A60;
      objc_copyWeak(&v50, &location);
      v19 = [v18 actionWithHandler:v49];
      v20 = __68__PKDashboardAuxiliaryPassInformationViewController__barButtonItems__block_invoke(v17, v16 == 0, v19);
      detailsButton = self->_detailsButton;
      self->_detailsButton = v20;

      v22 = v12[2](v12, self->_detailsButton);
      v13 = &OBJC_IVAR___PKFamilyMemberTransactionsViewController__contactResolver;
      detailsButtonContainer = self->_detailsButtonContainer;
      self->_detailsButtonContainer = v22;

      objc_destroyWeak(&v50);
    }

    v24 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:*(&self->super.super.super.super.super.isa + v13[245])];
    [v3 addObject:v24];
  }

  if (v8)
  {
    if (!self->_phoneButton)
    {
      v25 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"phone"];
      v26 = MEMORY[0x1E69DC628];
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __68__PKDashboardAuxiliaryPassInformationViewController__barButtonItems__block_invoke_4;
      v47[3] = &unk_1E8010A60;
      objc_copyWeak(&v48, &location);
      v27 = [v26 actionWithHandler:v47];
      v28 = __68__PKDashboardAuxiliaryPassInformationViewController__barButtonItems__block_invoke(v25, 0, v27);
      phoneButton = self->_phoneButton;
      self->_phoneButton = v28;

      v30 = v12[2](v12, self->_phoneButton);
      phoneButtonContainer = self->_phoneButtonContainer;
      self->_phoneButtonContainer = v30;

      objc_destroyWeak(&v48);
    }

    v32 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:self->_phoneButtonContainer];
    [v3 addObject:v32];
  }

  if (v7)
  {
    if (!self->_messageButton)
    {
      v33 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"message"];
      v34 = MEMORY[0x1E69DC628];
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __68__PKDashboardAuxiliaryPassInformationViewController__barButtonItems__block_invoke_5;
      v45[3] = &unk_1E8010A60;
      objc_copyWeak(&v46, &location);
      v35 = [v34 actionWithHandler:v45];
      v36 = __68__PKDashboardAuxiliaryPassInformationViewController__barButtonItems__block_invoke(v33, 0, v35);
      messageButton = self->_messageButton;
      self->_messageButton = v36;

      v38 = v12[2](v12, self->_messageButton);
      messageButtonContainer = self->_messageButtonContainer;
      self->_messageButtonContainer = v38;

      objc_destroyWeak(&v46);
    }

    v40 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:self->_messageButtonContainer];
    [v3 addObject:v40];
  }

  v41 = [v3 copy];
  objc_destroyWeak(&location);

  return v41;
}

id __68__PKDashboardAuxiliaryPassInformationViewController__barButtonItems__block_invoke(void *a1, int a2, void *a3)
{
  v5 = MEMORY[0x1E69DC740];
  v6 = a3;
  v7 = a1;
  v8 = [v5 plainButtonConfiguration];
  [v8 setImage:v7];

  [v8 setCornerStyle:4];
  v9 = MEMORY[0x1E69DCAD8];
  v10 = MEMORY[0x1E69DB978];
  if (a2)
  {
    v10 = MEMORY[0x1E69DB958];
  }

  v11 = [MEMORY[0x1E69DB878] systemFontOfSize:14.0 weight:*v10];
  v12 = [v9 configurationWithFont:v11];

  [v8 setPreferredSymbolConfigurationForImage:v12];
  v13 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v8 primaryAction:v6];

  return v13;
}

PKAlignedContentContainerView *__68__PKDashboardAuxiliaryPassInformationViewController__barButtonItems__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [PKAlignedContentContainerView alloc];
  v5 = [(PKAlignedContentContainerView *)v4 initWithContentView:v3 alignment:*MEMORY[0x1E69BB7F8] size:*(a1 + 32), *(a1 + 40)];

  [(PKAlignedContentContainerView *)v5 setFrame:0.0, 0.0, 32.0, 32.0];

  return v5;
}

void __68__PKDashboardAuxiliaryPassInformationViewController__barButtonItems__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleInfoButtonTapped];
}

void __68__PKDashboardAuxiliaryPassInformationViewController__barButtonItems__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePhoneButtonTapped];
}

void __68__PKDashboardAuxiliaryPassInformationViewController__barButtonItems__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleMessageButtonTapped];
}

- (void)_handleMessageButtonTapped
{
  if (PKStoreDemoModeEnabled())
  {
    v5 = PKUIStoreDemoGatewayViewController();
    [(PKDashboardAuxiliaryPassInformationViewController *)self presentViewController:v5 animated:1 completion:0];
  }

  else
  {
    v5 = [(PKDashboardViewController *)self dataSource];
    v3 = [v5 merchant];
    v4 = [v3 businessChatURL];

    if (v4)
    {
      PKOpenURL();
    }
  }
}

- (void)_handlePhoneButtonTapped
{
  if (PKStoreDemoModeEnabled())
  {
    v6 = PKUIStoreDemoGatewayViewController();
    [(PKDashboardAuxiliaryPassInformationViewController *)self presentViewController:v6 animated:1 completion:0];
  }

  else
  {
    v6 = [(PKDashboardViewController *)self dataSource];
    v3 = [v6 merchant];
    v4 = [v3 phoneNumber];

    if (v4)
    {
      v5 = PKTelephoneURLFromPhoneNumber();
      PKOpenURL();
    }
  }
}

- (void)_showMapsDetailsViewController
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (!self->_loadingMapsViewController)
  {
    v3 = [(PKDashboardViewController *)self dataSource];
    v4 = [v3 merchant];
    v5 = [v4 mapsMerchant];
    v6 = [v5 identifier];

    if (v6)
    {
      self->_loadingMapsViewController = 1;
      loadingMapsTimer = self->_loadingMapsTimer;
      if (loadingMapsTimer)
      {
        dispatch_source_cancel(loadingMapsTimer);
        v8 = self->_loadingMapsTimer;
        self->_loadingMapsTimer = 0;
      }

      objc_initWeak(&location, self);
      v9 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
      v10 = self->_loadingMapsTimer;
      self->_loadingMapsTimer = v9;

      v11 = self->_loadingMapsTimer;
      v12 = dispatch_time(0, 1000000000);
      dispatch_source_set_timer(v11, v12, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
      v13 = self->_loadingMapsTimer;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __83__PKDashboardAuxiliaryPassInformationViewController__showMapsDetailsViewController__block_invoke;
      handler[3] = &unk_1E8010998;
      objc_copyWeak(&v21, &location);
      dispatch_source_set_event_handler(v13, handler);
      dispatch_resume(self->_loadingMapsTimer);
      v14 = objc_alloc_init(MEMORY[0x1E696F260]);
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v6];
      v23[0] = v15;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
      [v14 _setMuids:v16];

      v17 = [objc_alloc(MEMORY[0x1E696F248]) initWithRequest:v14];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __83__PKDashboardAuxiliaryPassInformationViewController__showMapsDetailsViewController__block_invoke_2;
      v18[3] = &unk_1E8021220;
      objc_copyWeak(v19, &location);
      v18[4] = self;
      v19[1] = v6;
      [v17 startWithCompletionHandler:v18];
      objc_destroyWeak(v19);

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }
  }
}

void __83__PKDashboardAuxiliaryPassInformationViewController__showMapsDetailsViewController__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 160);
    v5 = v2;
    if (v3)
    {
      dispatch_source_cancel(v3);
      v4 = v5[160];
      v5[160] = 0;

      v2 = v5;
    }

    [v2[165] pkui_updateConfigurationShowingActivityIndicator:1];
    v2 = v5;
  }
}

void __83__PKDashboardAuxiliaryPassInformationViewController__showMapsDetailsViewController__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__PKDashboardAuxiliaryPassInformationViewController__showMapsDetailsViewController__block_invoke_3;
  block[3] = &unk_1E80211F8;
  objc_copyWeak(v13, (a1 + 40));
  block[4] = *(a1 + 32);
  v11 = v6;
  v7 = *(a1 + 48);
  v12 = v5;
  v13[1] = v7;
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(v13);
}

void __83__PKDashboardAuxiliaryPassInformationViewController__showMapsDetailsViewController__block_invoke_3(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[160];
    if (v4)
    {
      dispatch_source_cancel(v4);
      v5 = v3[160];
      v3[160] = 0;
    }

    *(v3 + 1272) = 0;
    [*(*(a1 + 32) + 1320) pkui_updateConfigurationShowingActivityIndicator:0];
    if (*(a1 + 40) || ([*(a1 + 48) mapItems], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v10, !v11))
    {
      v6 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 64);
        v8 = *(a1 + 40);
        if (v8)
        {
          v9 = [v8 localizedDescription];
        }

        else
        {
          v9 = @"no map items.";
        }

        v23 = 134218242;
        v24 = v7;
        v25 = 2112;
        v26 = v9;
        _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "PKDashboardAuxiliaryPassInformationViewController: MKLocalSearch could not resolve merchant maps for mapsID: %llu. Error: %@", &v23, 0x16u);
        if (v8)
        {
        }
      }

      v17 = MEMORY[0x1E69DC650];
      v18 = PKLocalizedPaymentString(&cfstr_DashboardMapsM.isa);
      v19 = [v17 alertControllerWithTitle:0 message:v18 preferredStyle:1];

      v20 = MEMORY[0x1E69DC648];
      v21 = PKLocalizedPaymentString(&cfstr_DashboardMapsM_0.isa);
      v22 = [v20 actionWithTitle:v21 style:0 handler:0];
      [v19 addAction:v22];

      [v3 presentViewController:v19 animated:1 completion:0];
    }

    else
    {
      v12 = [PKMerchantMapViewController alloc];
      v13 = [*(a1 + 48) mapItems];
      v14 = [v13 firstObject];
      v15 = [(PKMerchantMapViewController *)v12 initWithMapItem:v14 configOptions:0x2000000000000];

      v16 = [v3 navigationController];
      [v16 pushViewController:v15 animated:1];
    }
  }
}

@end