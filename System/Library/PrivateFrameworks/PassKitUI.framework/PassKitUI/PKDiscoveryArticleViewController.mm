@interface PKDiscoveryArticleViewController
- (BOOL)_hasCardInGalleryView;
- (BOOL)isScrollable;
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForFooterInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (PKDiscoveryArticleViewController)initWithArticleLayout:(id)layout referrerIdentifier:(id)identifier cardSize:(int64_t)size;
- (PKDiscoveryArticleViewControllerDelegate)delegate;
- (PKProximityReaderDiscoveryDelegate)proximityReaderDelegate;
- (UIEdgeInsets)safeAreaOverrideInsets;
- (id)_paymentSetupNavigationControllerForProvisioningController:(id)controller;
- (id)_shelfForIndexPath:(id)path;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)defaultZoomTransitionForDiscoveryCardView:(id)view;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)_configureCallToActionShelfView:(id)view forCallToActionShelf:(id)shelf atIndexPath:(id)path;
- (void)_configureInlineMediaShelfView:(id)view forInlineMediaShelf:(id)shelf atIndexPath:(id)path;
- (void)_dismissButtonPressed;
- (void)_dismissForActionCompleted:(BOOL)completed withRelevantPassUniqueIdentifier:(id)identifier;
- (void)_loadMedia:(id)media forShelfViewAtIndexPath:(id)path withCellImageCacheKey:(id)key completion:(id)completion;
- (void)_performAccountUserInvitationFlowWithCTATapped:(id)tapped callToAction:(id)action;
- (void)_performProvisioningCTATapped:(id)tapped callToAction:(id)action;
- (void)_reportScolledToBottomIfNecessary;
- (void)_setCardSize:(int64_t)size;
- (void)_showActivityIndicator:(BOOL)indicator view:(id)view;
- (void)dealloc;
- (void)discoveryCardViewCTATapped:(id)tapped callToAction:(id)action itemIdentifier:(id)identifier;
- (void)loadView;
- (void)paymentSetupDidFinish:(id)finish;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setArticleLayout:(id)layout cardSize:(int64_t)size animated:(BOOL)animated;
- (void)setCallToActionTappedOverride:(id)override;
- (void)setIsDownloading:(BOOL)downloading;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation PKDiscoveryArticleViewController

- (PKDiscoveryArticleViewController)initWithArticleLayout:(id)layout referrerIdentifier:(id)identifier cardSize:(int64_t)size
{
  layoutCopy = layout;
  identifierCopy = identifier;
  v20.receiver = self;
  v20.super_class = PKDiscoveryArticleViewController;
  v11 = [(PKDiscoveryArticleViewController *)&v20 initWithNibName:0 bundle:0];
  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v13 = *(v11 + 136);
    *(v11 + 136) = v12;

    *(v11 + 274) = 0;
    *(v11 + 1000) = xmmword_1BE115EF0;
    *(v11 + 1016) = xmmword_1BE115EF0;
    objc_storeStrong(v11 + 132, identifier);
    card = [layoutCopy card];
    callToAction = [card callToAction];
    *(v11 + 133) = [callToAction action];

    objc_storeStrong(v11 + 124, layout);
    v11[1032] = layoutCopy == 0;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v11 selector:sel__systemTextSizeChanged name:*MEMORY[0x1E69DDC48] object:0];
    [defaultCenter addObserver:v11 selector:sel__applicationWillTerminate name:*MEMORY[0x1E69DDBD0] object:0];
    [defaultCenter addObserver:v11 selector:sel__applicationWillResignActive name:*MEMORY[0x1E69DDBC8] object:0];
    v11[1114] = 1;
    [v11 _setCardSize:size];
    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v18 = *(v11 + 135);
    *(v11 + 135) = v17;

    [v11 setTransitioningDelegate:v11];
  }

  return v11;
}

- (void)_reportScolledToBottomIfNecessary
{
  if ([(PKDiscoveryArticleViewController *)self isScrollable])
  {
    if (!self->_reportedScrolledToBottom)
    {
      self->_reportedScrolledToBottom = 1;
      proximityReaderDelegate = [(PKDiscoveryArticleViewController *)self proximityReaderDelegate];

      if (!proximityReaderDelegate)
      {
        mEMORY[0x1E69B87F0] = [MEMORY[0x1E69B87F0] sharedInstance];
        itemIdentifier = [(PKDiscoveryArticleLayout *)self->_articleLayout itemIdentifier];
        [mEMORY[0x1E69B87F0] discoveryItemWithIdentifier:itemIdentifier callToAction:self->_callToAction wasScrolledToTheBottom:self->_scrolledToBottom];
      }
    }
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(PKDiscoveryCardView *)self->_cardView setDelegate:0];
  v4.receiver = self;
  v4.super_class = PKDiscoveryArticleViewController;
  [(PKDiscoveryArticleViewController *)&v4 dealloc];
}

- (void)loadView
{
  v34.receiver = self;
  v34.super_class = PKDiscoveryArticleViewController;
  [(PKDiscoveryArticleViewController *)&v34 loadView];
  view = [(PKDiscoveryArticleViewController *)self view];
  v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:self action:sel__dismissButtonPressed];
  navigationItem = [(PKDiscoveryArticleViewController *)self navigationItem];
  v33 = v4;
  [navigationItem setLeftBarButtonItem:v4];

  v6 = objc_alloc_init(PKDiscoveryLayout);
  v7 = objc_alloc(MEMORY[0x1E69DC7F0]);
  v8 = *MEMORY[0x1E695F058];
  v9 = *(MEMORY[0x1E695F058] + 8);
  v10 = *(MEMORY[0x1E695F058] + 16);
  v11 = *(MEMORY[0x1E695F058] + 24);
  v12 = [v7 initWithFrame:v6 collectionViewLayout:{*MEMORY[0x1E695F058], v9, v10, v11}];
  collectionView = self->_collectionView;
  self->_collectionView = v12;

  [(UICollectionView *)self->_collectionView setContentInsetAdjustmentBehavior:2];
  v14 = self->_collectionView;
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(UICollectionView *)v14 setBackgroundColor:systemBackgroundColor];

  [(UICollectionView *)self->_collectionView setDelegate:self];
  [(UICollectionView *)self->_collectionView setDataSource:self];
  [(UICollectionView *)self->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"cell"];
  v32 = [[PKDiscoveryCardViewTemplateInformation alloc] initWithCardSize:self->_cardSize displayType:1];
  v16 = [[PKDiscoveryCardView alloc] initWithArticleLayout:self->_articleLayout cardTemplateInformation:v32];
  cardView = self->_cardView;
  self->_cardView = v16;

  [(PKDiscoveryCardView *)self->_cardView setCallToActionTappedOverride:self->_callToActionTappedOverride];
  [(PKDiscoveryCardView *)self->_cardView setDelegate:self];
  v18 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
  activityIndicator = self->_activityIndicator;
  self->_activityIndicator = v18;

  v20 = self->_activityIndicator;
  grayColor = [MEMORY[0x1E69DC888] grayColor];
  [(UIActivityIndicatorView *)v20 setColor:grayColor];

  v22 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v8, v9, v10, v11}];
  downloadingLabel = self->_downloadingLabel;
  self->_downloadingLabel = v22;

  v24 = self->_downloadingLabel;
  v25 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD08], *MEMORY[0x1E69DDC68]);
  [(UILabel *)v24 setFont:v25];

  v26 = self->_downloadingLabel;
  systemDarkGrayColor = [MEMORY[0x1E69DC888] systemDarkGrayColor];
  [(UILabel *)v26 setTextColor:systemDarkGrayColor];

  v28 = self->_downloadingLabel;
  v29 = PKLocalizedDiscoveryString(&cfstr_DiscoveryArtic.isa);
  [(UILabel *)v28 setText:v29];

  v30 = 0.0;
  if (self->_isDownloading)
  {
    v30 = 1.0;
  }

  [(UILabel *)self->_downloadingLabel setAlpha:v30];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [view setBackgroundColor:whiteColor];

  [view addSubview:self->_collectionView];
  [(UICollectionView *)self->_collectionView addSubview:self->_cardView];
  [view addSubview:self->_activityIndicator];
  [view addSubview:self->_downloadingLabel];
  [view setAccessibilityIdentifier:*MEMORY[0x1E69B9490]];
  if (self->_isDownloading)
  {
    [(UIActivityIndicatorView *)self->_activityIndicator startAnimating];
  }
}

- (void)viewWillLayoutSubviews
{
  v49.receiver = self;
  v49.super_class = PKDiscoveryArticleViewController;
  [(PKDiscoveryArticleViewController *)&v49 viewWillLayoutSubviews];
  isWritingDirectionRTL = [(PKDiscoveryArticleLayout *)self->_articleLayout isWritingDirectionRTL];
  if (isWritingDirectionRTL)
  {
    v4 = isWritingDirectionRTL;
    traitOverrides = [(PKDiscoveryArticleViewController *)self traitOverrides];
    [traitOverrides setLayoutDirection:v4 == 1];
  }

  view = [(PKDiscoveryArticleViewController *)self view];
  [view bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [view safeAreaInsets];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  if (![(PKDiscoveryArticleViewController *)self isAnimatingCard])
  {
    [(UICollectionView *)self->_collectionView setFrame:v8, v10, v12, v14];
    if (self->_hasSafeAreaInsetOverride)
    {
      top = self->_safeAreaOverrideInsets.top;
      left = self->_safeAreaOverrideInsets.left;
      bottom = self->_safeAreaOverrideInsets.bottom;
      right = self->_safeAreaOverrideInsets.right;
    }

    else
    {
      right = v22;
      bottom = v20;
      left = v18;
      top = v16;
    }

    [(UICollectionView *)self->_collectionView setScrollIndicatorInsets:top, left, bottom, right];
    [(UICollectionView *)self->_collectionView contentOffset];
    v28 = fmin(v10, v27);
    [(PKDiscoveryCardView *)self->_cardView sizeThatFits:v12, v14];
    v30 = v29;
    v32 = v31;
    [(PKDiscoveryCardView *)self->_cardView setHasSafeAreaInsetOverride:self->_hasSafeAreaInsetOverride];
    [(PKDiscoveryCardView *)self->_cardView setSafeAreaOverrideInsets:self->_safeAreaOverrideInsets.top, self->_safeAreaOverrideInsets.left, self->_safeAreaOverrideInsets.bottom, self->_safeAreaOverrideInsets.right];
    [(PKDiscoveryCardView *)self->_cardView setFrame:v8, v28, v30, v32];
    [(UILabel *)self->_downloadingLabel sizeThatFits:v12, v14];
    PKSizeAlignedInRect();
    PKSizeAlignedInRect();
    v34 = v33;
    v36 = v35;
    v47 = v38;
    v48 = v37;
    PKSizeAlignedInRect();
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    [(UIActivityIndicatorView *)self->_activityIndicator setFrame:v34, v36, v48, v47];
    [(UILabel *)self->_downloadingLabel setFrame:v40, v42, v44, v46];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = PKDiscoveryArticleViewController;
  [(PKDiscoveryArticleViewController *)&v7 viewDidAppear:appear];
  if (self->_articleLayout && !self->_isDownloading)
  {
    proximityReaderDelegate = [(PKDiscoveryArticleViewController *)self proximityReaderDelegate];

    if (!proximityReaderDelegate)
    {
      mEMORY[0x1E69B87F0] = [MEMORY[0x1E69B87F0] sharedInstance];
      itemIdentifier = [(PKDiscoveryArticleLayout *)self->_articleLayout itemIdentifier];
      [mEMORY[0x1E69B87F0] discoveryItemWithIdentifier:itemIdentifier callToAction:self->_callToAction isScrollable:{-[PKDiscoveryArticleViewController isScrollable](self, "isScrollable")}];
    }
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PKDiscoveryArticleViewController;
  [(PKDiscoveryArticleViewController *)&v4 viewDidDisappear:disappear];
  [(PKDiscoveryArticleViewController *)self _reportScolledToBottomIfNecessary];
}

- (BOOL)isScrollable
{
  collectionViewLayout = [(UICollectionView *)self->_collectionView collectionViewLayout];
  isScrollable = [collectionViewLayout isScrollable];

  return isScrollable;
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  [view bounds];
  v6 = v5;
  +[PKDiscoveryCardView expandedHeight];
  v8 = v7 + 8.0;
  v9 = v6;
  result.height = v8;
  result.width = v9;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForFooterInSection:(int64_t)section
{
  v6 = [(PKDiscoveryArticleViewController *)self view:view];
  v7 = v6;
  if (self->_hasSafeAreaInsetOverride)
  {
    bottom = self->_safeAreaOverrideInsets.bottom;
  }

  else
  {
    [v6 safeAreaInsets];
    bottom = v9;
  }

  [v7 bounds];
  v11 = v10;

  v12 = v11;
  v13 = bottom;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  layout = [(PKDiscoveryArticleViewController *)self _shelfForIndexPath:path, layout];
  itemIdentifier = [(PKDiscoveryArticleLayout *)self->_articleLayout itemIdentifier];
  v8 = [PKDiscoveryShelfView viewForShelf:layout discoveryCardViewDelegate:self itemIdentifier:itemIdentifier];

  [v8 setContentInsets:{self->_contentInsets.top, self->_contentInsets.left, self->_contentInsets.bottom, self->_contentInsets.right}];
  [(UICollectionView *)self->_collectionView bounds];
  [v8 sizeThatFits:{v9, 1.79769313e308}];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)setCallToActionTappedOverride:(id)override
{
  overrideCopy = override;
  v4 = _Block_copy(overrideCopy);
  callToActionTappedOverride = self->_callToActionTappedOverride;
  self->_callToActionTappedOverride = v4;

  [(PKDiscoveryCardView *)self->_cardView setCallToActionTappedOverride:overrideCopy];
}

- (void)setArticleLayout:(id)layout cardSize:(int64_t)size animated:(BOOL)animated
{
  animatedCopy = animated;
  layoutCopy = layout;
  objc_storeStrong(&self->_articleLayout, layout);
  self->_isDownloading = layoutCopy == 0;
  [(PKDiscoveryCardView *)self->_cardView removeFromSuperview];
  [(PKDiscoveryCardView *)self->_cardView setDelegate:0];
  [(PKDiscoveryArticleViewController *)self _setCardSize:size];
  v10 = [[PKDiscoveryCardViewTemplateInformation alloc] initWithCardSize:self->_cardSize displayType:1];
  v11 = [[PKDiscoveryCardView alloc] initWithArticleLayout:self->_articleLayout cardTemplateInformation:v10];
  cardView = self->_cardView;
  self->_cardView = v11;

  [(PKDiscoveryCardView *)self->_cardView setDelegate:self];
  [(UICollectionView *)self->_collectionView addSubview:self->_cardView];
  view = [(PKDiscoveryArticleViewController *)self view];
  [view setNeedsLayout];

  [(UICollectionView *)self->_collectionView reloadData];
  if (animatedCopy)
  {
    [(UICollectionView *)self->_collectionView setAlpha:0.0];
    v14[4] = self;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __71__PKDiscoveryArticleViewController_setArticleLayout_cardSize_animated___block_invoke;
    v15[3] = &unk_1E8010970;
    v15[4] = self;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __71__PKDiscoveryArticleViewController_setArticleLayout_cardSize_animated___block_invoke_2;
    v14[3] = &unk_1E8011D28;
    [MEMORY[0x1E69DD250] pkui_animateUsingOptions:0 animations:v15 completion:v14];
  }

  else
  {
    [(UIActivityIndicatorView *)self->_activityIndicator setHidden:1];
    [(UILabel *)self->_downloadingLabel setAlpha:0.0];
    [(UIActivityIndicatorView *)self->_activityIndicator stopAnimating];
  }
}

uint64_t __71__PKDiscoveryArticleViewController_setArticleLayout_cardSize_animated___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1128) setAlpha:1.0];
  [*(*(a1 + 32) + 1040) setAlpha:0.0];
  v2 = *(*(a1 + 32) + 1048);

  return [v2 setAlpha:0.0];
}

- (void)setIsDownloading:(BOOL)downloading
{
  if (self->_isDownloading == !downloading)
  {
    v18 = v6;
    v19 = v5;
    v20 = v3;
    v21 = v4;
    downloadingCopy = downloading;
    self->_isDownloading = downloading;
    v9 = self->_activityIndicator;
    if (downloadingCopy)
    {
      [(UIActivityIndicatorView *)self->_activityIndicator startAnimating];
    }

    v10 = MEMORY[0x1E69DD250];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __53__PKDiscoveryArticleViewController_setIsDownloading___block_invoke;
    v15[3] = &unk_1E8013D60;
    v17 = downloadingCopy;
    v15[4] = self;
    v16 = v9;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __53__PKDiscoveryArticleViewController_setIsDownloading___block_invoke_2;
    v12[3] = &unk_1E8013E98;
    v14 = downloadingCopy;
    v13 = v16;
    v11 = v16;
    [v10 pkui_animateUsingOptions:6 animations:v15 completion:v12];
  }
}

uint64_t __53__PKDiscoveryArticleViewController_setIsDownloading___block_invoke(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  [*(*(a1 + 32) + 1048) setAlpha:v2];
  v3 = *(a1 + 40);

  return [v3 setAlpha:v2];
}

uint64_t __53__PKDiscoveryArticleViewController_setIsDownloading___block_invoke_2(uint64_t result)
{
  if ((*(result + 40) & 1) == 0)
  {
    return [*(result + 32) stopAnimating];
  }

  return result;
}

- (void)_setCardSize:(int64_t)size
{
  if (size == 2)
  {
    sizeCopy = 0;
  }

  else
  {
    sizeCopy = size;
  }

  self->_cardSize = sizeCopy;
}

- (void)discoveryCardViewCTATapped:(id)tapped callToAction:(id)action itemIdentifier:(id)identifier
{
  v27 = *MEMORY[0x1E69E9840];
  tappedCopy = tapped;
  actionCopy = action;
  identifierCopy = identifier;
  action = [actionCopy action];
  v12 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 134217984;
    v26 = action;
    _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Article view CTA (action=%ld) tapped", &v25, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  item = [(PKDiscoveryArticleLayout *)self->_articleLayout item];
  [WeakRetained discoveryArticleViewController:self tappedCallToAction:actionCopy item:item];

  proximityReaderDelegate = [(PKDiscoveryArticleViewController *)self proximityReaderDelegate];

  if (!proximityReaderDelegate)
  {
    mEMORY[0x1E69B87F0] = [MEMORY[0x1E69B87F0] sharedInstance];
    [mEMORY[0x1E69B87F0] tappedDiscoveryItemWithIdentifier:identifierCopy callToAction:objc_msgSend(actionCopy cardSize:{"action"), self->_cardSize}];
  }

  [actionCopy setReferrerIdentifier:self->_referrerIdentifierOverride];
  presentingViewController = [(PKDiscoveryArticleViewController *)self presentingViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    passGroupsViewController = [presentingViewController passGroupsViewController];
LABEL_9:
    v19 = passGroupsViewController;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    passGroupsViewController = presentingViewController;
    goto LABEL_9;
  }

  v19 = 0;
LABEL_11:
  if (action <= 5)
  {
    if (action < 4)
    {
LABEL_18:
      [(PKDiscoveryArticleViewController *)self _performProvisioningCTATapped:tappedCopy callToAction:actionCopy];
      goto LABEL_31;
    }

    if (action != 4)
    {
      if (action != 5)
      {
        goto LABEL_31;
      }

      proximityReaderDelegate2 = [(PKDiscoveryArticleViewController *)self proximityReaderDelegate];

      if (!proximityReaderDelegate2)
      {
        mEMORY[0x1E69B87F0]2 = [MEMORY[0x1E69B87F0] sharedInstance];
        [mEMORY[0x1E69B87F0]2 completedDiscoveryItemCTAWithCompletion:0];
      }
    }
  }

  else if (action <= 8)
  {
    if (action != 6)
    {
      if (action == 7)
      {
        [(PKDiscoveryArticleViewController *)self _performAccountUserInvitationFlowWithCTATapped:tappedCopy callToAction:actionCopy];
      }

      else
      {
        appStoreAppIdentifier = [actionCopy appStoreAppIdentifier];
        [v19 presentAppStorePageForItemWithIdentifier:appStoreAppIdentifier];
      }

      goto LABEL_31;
    }
  }

  else if ((action - 9) >= 2 && action != 12)
  {
    if (action != 11)
    {
      goto LABEL_31;
    }

    goto LABEL_18;
  }

  actionURL = [actionCopy actionURL];
  v24 = actionURL;
  if (actionURL)
  {
    v12 = [actionURL url];
    [v24 isSensitive];
    PKOpenURL();
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 134217984;
    v26 = action;
    _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Failed to perform actionType %ld as no URL exists", &v25, 0xCu);
  }

LABEL_31:
}

- (void)_performAccountUserInvitationFlowWithCTATapped:(id)tapped callToAction:(id)action
{
  tappedCopy = tapped;
  actionCopy = action;
  [(PKDiscoveryArticleViewController *)self _showActivityIndicator:1 view:tappedCopy];
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __96__PKDiscoveryArticleViewController__performAccountUserInvitationFlowWithCTATapped_callToAction___block_invoke;
  v9[3] = &unk_1E80110E0;
  objc_copyWeak(&v11, &location);
  v8 = tappedCopy;
  v10 = v8;
  [PKAccountInvitationController presentCreateAccountUserInvitationWithViewController:self account:0 accountUserCollection:0 familyMemberCollection:0 context:0 completion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __96__PKDiscoveryArticleViewController__performAccountUserInvitationFlowWithCTATapped_callToAction___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __96__PKDiscoveryArticleViewController__performAccountUserInvitationFlowWithCTATapped_callToAction___block_invoke_2;
  v2[3] = &unk_1E80110E0;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v2);

  objc_destroyWeak(&v4);
}

void __96__PKDiscoveryArticleViewController__performAccountUserInvitationFlowWithCTATapped_callToAction___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _showActivityIndicator:0 view:*(a1 + 32)];
}

- (void)_performProvisioningCTATapped:(id)tapped callToAction:(id)action
{
  tappedCopy = tapped;
  actionCopy = action;
  objc_initWeak(&location, self);
  v8 = objc_alloc(MEMORY[0x1E69B8D48]);
  mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
  v10 = [v8 initWithWebService:mEMORY[0x1E69B8EF8]];

  referrerIdentifier = [actionCopy referrerIdentifier];
  [v10 setReferrerIdentifier:referrerIdentifier];

  paymentNetworks = [actionCopy paymentNetworks];
  [v10 setAllowedPaymentNetworks:paymentNetworks];

  transitNetworkIdentifiers = [actionCopy transitNetworkIdentifiers];
  [v10 setRequiredTransitNetworkIdentifiers:transitNetworkIdentifiers];

  allowedFeatureIdentifiers = [actionCopy allowedFeatureIdentifiers];
  [v10 setAllowedFeatureIdentifiers:allowedFeatureIdentifiers];

  productIdentifiers = [actionCopy productIdentifiers];
  [v10 setAllowedProductIdentifiers:productIdentifiers];

  [(PKDiscoveryArticleViewController *)self _showActivityIndicator:1 view:tappedCopy];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__PKDiscoveryArticleViewController__performProvisioningCTATapped_callToAction___block_invoke;
  aBlock[3] = &unk_1E8019890;
  objc_copyWeak(&v29, &location);
  v16 = v10;
  v26 = v16;
  v17 = actionCopy;
  v27 = v17;
  v18 = tappedCopy;
  v28 = v18;
  v19 = _Block_copy(aBlock);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __79__PKDiscoveryArticleViewController__performProvisioningCTATapped_callToAction___block_invoke_5;
  v22[3] = &unk_1E8017A28;
  v20 = v16;
  v23 = v20;
  v21 = v19;
  v24 = v21;
  [v20 preflightWithCompletion:v22];

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

void __79__PKDiscoveryArticleViewController__performProvisioningCTATapped_callToAction___block_invoke(id *a1, char a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__PKDiscoveryArticleViewController__performProvisioningCTATapped_callToAction___block_invoke_2;
  v7[3] = &unk_1E801CD20;
  objc_copyWeak(&v12, a1 + 7);
  v13 = a2;
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);

  objc_destroyWeak(&v12);
}

void __79__PKDiscoveryArticleViewController__performProvisioningCTATapped_callToAction___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 72) == 1)
    {
      v4 = [WeakRetained _paymentSetupNavigationControllerForProvisioningController:*(a1 + 32)];
      [v4 setPaymentSetupMode:{objc_msgSend(*(a1 + 40), "paymentSetupMode")}];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __79__PKDiscoveryArticleViewController__performProvisioningCTATapped_callToAction___block_invoke_3;
      v9[3] = &unk_1E8012798;
      v10 = v3;
      v11 = v4;
      v12 = *(a1 + 48);
      v5 = v4;
      [v5 preflightWithCompletion:v9];
    }

    else
    {
      [WeakRetained _showActivityIndicator:0 view:*(a1 + 48)];
      v6 = *(a1 + 56);
      if (v6)
      {
        v7 = v6;
      }

      else
      {
        v7 = PKDisplayableErrorForCommonType();
      }

      v5 = v7;
      v8 = [PKPaymentSetupNavigationController viewControllerForPresentingPaymentError:v7];
      [v3 presentViewController:v8 animated:1 completion:0];
    }
  }
}

void __79__PKDiscoveryArticleViewController__performProvisioningCTATapped_callToAction___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __79__PKDiscoveryArticleViewController__performProvisioningCTATapped_callToAction___block_invoke_4;
  v4[3] = &unk_1E8010A10;
  v5 = v2;
  v6 = *(a1 + 48);
  [v5 presentViewController:v3 animated:1 completion:v4];
}

void __79__PKDiscoveryArticleViewController__performProvisioningCTATapped_callToAction___block_invoke_5(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) paymentSetupProductModel];
  v7 = [v6 allSetupProducts];

  if (a2 && [v7 count] == 1)
  {
    v8 = *(a1 + 32);
    v9 = [v7 firstObject];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __79__PKDiscoveryArticleViewController__performProvisioningCTATapped_callToAction___block_invoke_6;
    v10[3] = &unk_1E8010B28;
    v11 = *(a1 + 40);
    [v8 setupProductForProvisioning:v9 includePurchases:1 withCompletionHandler:v10];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (id)_paymentSetupNavigationControllerForProvisioningController:(id)controller
{
  controllerCopy = controller;
  v5 = [[PKPaymentSetupNavigationController alloc] initWithProvisioningController:controllerCopy context:0];

  [(PKNavigationController *)v5 setCustomFormSheetPresentationStyleForiPad];
  [(PKPaymentSetupNavigationController *)v5 setSetupDelegate:self];

  return v5;
}

- (void)_showActivityIndicator:(BOOL)indicator view:(id)view
{
  indicatorCopy = indicator;
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [viewCopy setShowActivityIndicator:indicatorCopy];
  }
}

- (void)paymentSetupDidFinish:(id)finish
{
  provisioningController = [finish provisioningController];
  provisionedPasses = [provisioningController provisionedPasses];
  lastObject = [provisionedPasses lastObject];
  secureElementPass = [lastObject secureElementPass];
  paymentPass = [secureElementPass paymentPass];

  if (paymentPass)
  {
    uniqueID = [paymentPass uniqueID];
    [(PKDiscoveryArticleViewController *)self _dismissForActionCompleted:1 withRelevantPassUniqueIdentifier:uniqueID];
  }

  else
  {
    [(PKDiscoveryArticleViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  if (controllerCopy == self && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [[PKPresentationControllerForOverCurrentContextDestination alloc] initWithPresentedViewController:controllerCopy presentingViewController:viewControllerCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)defaultZoomTransitionForDiscoveryCardView:(id)view
{
  viewCopy = view;
  v4 = objc_alloc_init(MEMORY[0x1E69DD320]);
  [v4 setAlignmentRectProvider:&__block_literal_global_161];
  objc_initWeak(&location, viewCopy);
  v5 = MEMORY[0x1E69DD260];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78__PKDiscoveryArticleViewController_defaultZoomTransitionForDiscoveryCardView___block_invoke_2;
  v8[3] = &unk_1E801CD68;
  objc_copyWeak(&v9, &location);
  v6 = [v5 zoomWithOptions:v4 sourceViewProvider:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v6;
}

double __78__PKDiscoveryArticleViewController_defaultZoomTransitionForDiscoveryCardView___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 zoomedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    if (!v4)
    {
LABEL_10:
      v10 = *MEMORY[0x1E695F050];
      goto LABEL_11;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_10;
    }

    v5 = [v3 viewControllers];
    v6 = [v5 firstObject];

    objc_opt_class();
    v4 = (objc_opt_isKindOfClass() & 1) != 0 ? v6 : 0;

    if (!v4)
    {
      goto LABEL_10;
    }
  }

  v7 = [v2 sourceView];
  v8 = [v4 cardView];
  [v7 frame];
  [v8 frame];
  PKSizeAlignedInRect();
  v10 = v9;

LABEL_11:
  return v10;
}

id __78__PKDiscoveryArticleViewController_defaultZoomTransitionForDiscoveryCardView___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  return WeakRetained;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(PKDiscoveryArticleLayout *)self->_articleLayout shelves:view];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v20 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v7 = [view dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:pathCopy];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [v7 setBackgroundColor:whiteColor];

  v9 = [(PKDiscoveryArticleViewController *)self _shelfForIndexPath:pathCopy];
  if (v9)
  {
    itemIdentifier = [(PKDiscoveryArticleLayout *)self->_articleLayout itemIdentifier];
    v11 = [PKDiscoveryShelfView viewForShelf:v9 discoveryCardViewDelegate:self itemIdentifier:itemIdentifier];

    [v11 setContentInsets:{self->_contentInsets.top, self->_contentInsets.left, self->_contentInsets.bottom, self->_contentInsets.right}];
    shelfView = [v7 shelfView];
    v13 = shelfView;
    if (shelfView)
    {
      if (shelfView == v11)
      {
LABEL_6:
        type = [v9 type];
        if (type == 4)
        {
          [(PKDiscoveryArticleViewController *)self _configureCallToActionShelfView:v11 forCallToActionShelf:v9 atIndexPath:pathCopy];
        }

        else if (type == 2)
        {
          [(PKDiscoveryArticleViewController *)self _configureInlineMediaShelfView:v11 forInlineMediaShelf:v9 atIndexPath:pathCopy];
        }

        goto LABEL_14;
      }

      shelfView2 = [v7 shelfView];
      [shelfView2 removeFromSuperview];

      [v7 setShelfView:0];
    }

    [v7 setShelfView:v11];
    goto LABEL_6;
  }

  v16 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = 0;
    _os_log_impl(&dword_1BD026000, v16, OS_LOG_TYPE_DEFAULT, "Could not create PKDiscoveryShelfView for shelf: %@", &v18, 0xCu);
  }

LABEL_14:

  return v7;
}

- (id)_shelfForIndexPath:(id)path
{
  v4 = [path row];
  shelves = [(PKDiscoveryArticleLayout *)self->_articleLayout shelves];
  if (v4 >= [shelves count])
  {
    v6 = 0;
  }

  else
  {
    v6 = [shelves objectAtIndex:v4];
  }

  return v6;
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  view = [(PKDiscoveryArticleViewController *)self view];
  [view setNeedsLayout];

  proximityReaderDelegate = [(PKDiscoveryArticleViewController *)self proximityReaderDelegate];

  if (proximityReaderDelegate)
  {
    [scrollCopy contentOffset];
    v7 = v6;
    [scrollCopy frame];
    v9 = v7 + v8;
    proximityReaderDelegate2 = [(PKDiscoveryArticleViewController *)self proximityReaderDelegate];
    itemIdentifier = [(PKDiscoveryArticleLayout *)self->_articleLayout itemIdentifier];
    [proximityReaderDelegate2 discoveryItemWithIdentifier:itemIdentifier position:v9];
  }

  else if ([(PKDiscoveryArticleViewController *)self isScrollable])
  {
    if (!self->_scrolledToBottom)
    {
      [scrollCopy contentOffset];
      v13 = v12;
      [scrollCopy contentSize];
      v15 = v14;
      [scrollCopy frame];
      self->_scrolledToBottom = v13 >= v15 - v16;
      if (v13 >= v15 - v16)
      {
        [(PKDiscoveryArticleViewController *)self _reportScolledToBottomIfNecessary];
      }
    }
  }
}

- (void)_configureInlineMediaShelfView:(id)view forInlineMediaShelf:(id)shelf atIndexPath:(id)path
{
  viewCopy = view;
  shelfCopy = shelf;
  pathCopy = path;
  media = [shelfCopy media];
  type = [media type];

  if (type == 1)
  {
    v13 = viewCopy;
    v14 = [(NSMutableDictionary *)self->_cellImageCache objectForKey:pathCopy];
    v15 = [v14 objectForKey:@"mediaAsset"];
    if (v15)
    {
      [v13 setImage:v15 animated:0];
    }

    else
    {
      media2 = [shelfCopy media];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __99__PKDiscoveryArticleViewController__configureInlineMediaShelfView_forInlineMediaShelf_atIndexPath___block_invoke;
      v17[3] = &unk_1E8010A38;
      v18 = v13;
      [(PKDiscoveryArticleViewController *)self _loadMedia:media2 forShelfViewAtIndexPath:pathCopy withCellImageCacheKey:@"mediaAsset" completion:v17];
    }
  }
}

- (void)_configureCallToActionShelfView:(id)view forCallToActionShelf:(id)shelf atIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  cellImageCache = self->_cellImageCache;
  shelfCopy = shelf;
  v12 = [(NSMutableDictionary *)cellImageCache objectForKey:pathCopy];
  callToAction = [shelfCopy callToAction];

  icon = [callToAction icon];

  if (!icon)
  {
    v16 = [v12 objectForKey:@"wordmarkAsset"];
    if (v16)
    {
      goto LABEL_6;
    }

LABEL_8:
    wordmarkAsset = [callToAction wordmarkAsset];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __101__PKDiscoveryArticleViewController__configureCallToActionShelfView_forCallToActionShelf_atIndexPath___block_invoke_2;
    v19[3] = &unk_1E8010A38;
    v20 = viewCopy;
    [(PKDiscoveryArticleViewController *)self _loadMedia:wordmarkAsset forShelfViewAtIndexPath:pathCopy withCellImageCacheKey:@"wordmarkAsset" completion:v19];

    goto LABEL_9;
  }

  v15 = [v12 objectForKey:@"mediaAsset"];
  v16 = [v12 objectForKey:@"wordmarkAsset"];
  if (!v15)
  {
    icon2 = [callToAction icon];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __101__PKDiscoveryArticleViewController__configureCallToActionShelfView_forCallToActionShelf_atIndexPath___block_invoke;
    v21[3] = &unk_1E8010A38;
    v22 = viewCopy;
    [(PKDiscoveryArticleViewController *)self _loadMedia:icon2 forShelfViewAtIndexPath:pathCopy withCellImageCacheKey:@"mediaAsset" completion:v21];

    if (v16)
    {
      goto LABEL_6;
    }

    goto LABEL_8;
  }

  [viewCopy setImage:v15 animated:0];

  if (!v16)
  {
    goto LABEL_8;
  }

LABEL_6:
  [viewCopy setWordmarkAsset:v16 animated:0];
LABEL_9:
}

- (void)_loadMedia:(id)media forShelfViewAtIndexPath:(id)path withCellImageCacheKey:(id)key completion:(id)completion
{
  mediaCopy = media;
  pathCopy = path;
  keyCopy = key;
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lockDownloads);
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__38;
  v35 = __Block_byref_object_dispose__38;
  v36 = [(NSMutableDictionary *)self->_imageDownloads objectForKey:pathCopy];
  v14 = v32[5];
  if (v14)
  {
    v15 = [v32[5] objectForKey:keyCopy];
    if (v15)
    {
      v16 = _Block_copy(completionCopy);
      [v15 addObject:v16];
    }

    else
    {
      v21 = objc_alloc(MEMORY[0x1E695DF70]);
      v22 = _Block_copy(completionCopy);
      v15 = [v21 initWithObjects:{v22, 0}];

      [v32[5] setObject:v15 forKey:keyCopy];
    }
  }

  else
  {
    v17 = objc_alloc(MEMORY[0x1E695DF70]);
    v18 = _Block_copy(completionCopy);
    v15 = [v17 initWithObjects:{v18, 0}];

    v19 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    v20 = v32[5];
    v32[5] = v19;

    [v32[5] setObject:v15 forKey:keyCopy];
  }

  [(NSMutableDictionary *)self->_imageDownloads setObject:v32[5] forKey:pathCopy];
  os_unfair_lock_unlock(&self->_lockDownloads);
  if (!v14)
  {
    v23 = *MEMORY[0x1E695F060];
    v24 = *(MEMORY[0x1E695F060] + 8);
    objc_initWeak(&location, self);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __104__PKDiscoveryArticleViewController__loadMedia_forShelfViewAtIndexPath_withCellImageCacheKey_completion___block_invoke;
    v25[3] = &unk_1E801CDB8;
    objc_copyWeak(&v29, &location);
    v26 = pathCopy;
    v27 = keyCopy;
    v28 = &v31;
    PKFetchImageForDiscoveryMedia(mediaCopy, v23, v24, 0, v25);

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  _Block_object_dispose(&v31, 8);
}

void __104__PKDiscoveryArticleViewController__loadMedia_forShelfViewAtIndexPath_withCellImageCacheKey_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __104__PKDiscoveryArticleViewController__loadMedia_forShelfViewAtIndexPath_withCellImageCacheKey_completion___block_invoke_2;
  block[3] = &unk_1E801CD90;
  objc_copyWeak(&v12, (a1 + 56));
  v8 = v3;
  v9 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v10 = v4;
  v11 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v12);
}

void __104__PKDiscoveryArticleViewController__loadMedia_forShelfViewAtIndexPath_withCellImageCacheKey_completion___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v4 = [WeakRetained[135] objectForKey:*(a1 + 40)];
      if (!v4)
      {
        v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
      }

      [v4 setObject:*(a1 + 32) forKey:*(a1 + 48)];
      [v3[135] setObject:v4 forKey:*(a1 + 40)];
    }

    os_unfair_lock_lock(v3 + 274);
    v5 = [v3[136] objectForKey:*(a1 + 40)];
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    [v3[136] removeObjectForKey:*(a1 + 40)];
    os_unfair_lock_unlock(v3 + 274);
    v8 = [*(*(*(a1 + 56) + 8) + 40) objectForKey:*(a1 + 48)];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v8);
          }

          (*(*(*(&v13 + 1) + 8 * v12++) + 16))();
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }
}

- (BOOL)_hasCardInGalleryView
{
  presentingViewController = [(PKDiscoveryArticleViewController *)self presentingViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    articleLayout = self->_articleLayout;
    v5 = presentingViewController;
    itemIdentifier = [(PKDiscoveryArticleLayout *)articleLayout itemIdentifier];
    v7 = [v5 hasDiscoveryCardWithItemIdentifier:itemIdentifier];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_dismissForActionCompleted:(BOOL)completed withRelevantPassUniqueIdentifier:(id)identifier
{
  completedCopy = completed;
  identifierCopy = identifier;
  presentingViewController = [(PKDiscoveryArticleViewController *)self presentingViewController];
  if ([presentingViewController conformsToProtocol:&unk_1F3DC57F0])
  {
    [presentingViewController dismissDiscoveryArticleViewController:self afterActionCompleted:completedCopy withRelevantPassUniqueIdenitifer:identifierCopy];
    proximityReaderDelegate = [(PKDiscoveryArticleViewController *)self proximityReaderDelegate];

    if (!proximityReaderDelegate)
    {
      mEMORY[0x1E69B87F0] = [MEMORY[0x1E69B87F0] sharedInstance];
      itemIdentifier = [(PKDiscoveryArticleLayout *)self->_articleLayout itemIdentifier];
      card = [(PKDiscoveryArticleLayout *)self->_articleLayout card];
      callToAction = [card callToAction];
      [mEMORY[0x1E69B87F0] dismissedDiscoveryItemWithIdentifier:itemIdentifier callToAction:objc_msgSend(callToAction cardSize:{"action"), self->_cardSize}];
    }
  }

  else
  {
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_dismissButtonPressed
{
  cardView = [(PKDiscoveryArticleViewController *)self cardView];
  [cardView loadAndUploadImageData];

  [(PKDiscoveryArticleViewController *)self _dismissForActionCompleted:0 withRelevantPassUniqueIdentifier:0];
}

- (UIEdgeInsets)safeAreaOverrideInsets
{
  top = self->_safeAreaOverrideInsets.top;
  left = self->_safeAreaOverrideInsets.left;
  bottom = self->_safeAreaOverrideInsets.bottom;
  right = self->_safeAreaOverrideInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (PKDiscoveryArticleViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PKProximityReaderDiscoveryDelegate)proximityReaderDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_proximityReaderDelegate);

  return WeakRetained;
}

@end