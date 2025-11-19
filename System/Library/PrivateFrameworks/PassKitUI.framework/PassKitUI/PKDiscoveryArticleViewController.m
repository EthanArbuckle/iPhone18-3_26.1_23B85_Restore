@interface PKDiscoveryArticleViewController
- (BOOL)_hasCardInGalleryView;
- (BOOL)isScrollable;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForFooterInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (PKDiscoveryArticleViewController)initWithArticleLayout:(id)a3 referrerIdentifier:(id)a4 cardSize:(int64_t)a5;
- (PKDiscoveryArticleViewControllerDelegate)delegate;
- (PKProximityReaderDiscoveryDelegate)proximityReaderDelegate;
- (UIEdgeInsets)safeAreaOverrideInsets;
- (id)_paymentSetupNavigationControllerForProvisioningController:(id)a3;
- (id)_shelfForIndexPath:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)defaultZoomTransitionForDiscoveryCardView:(id)a3;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)_configureCallToActionShelfView:(id)a3 forCallToActionShelf:(id)a4 atIndexPath:(id)a5;
- (void)_configureInlineMediaShelfView:(id)a3 forInlineMediaShelf:(id)a4 atIndexPath:(id)a5;
- (void)_dismissButtonPressed;
- (void)_dismissForActionCompleted:(BOOL)a3 withRelevantPassUniqueIdentifier:(id)a4;
- (void)_loadMedia:(id)a3 forShelfViewAtIndexPath:(id)a4 withCellImageCacheKey:(id)a5 completion:(id)a6;
- (void)_performAccountUserInvitationFlowWithCTATapped:(id)a3 callToAction:(id)a4;
- (void)_performProvisioningCTATapped:(id)a3 callToAction:(id)a4;
- (void)_reportScolledToBottomIfNecessary;
- (void)_setCardSize:(int64_t)a3;
- (void)_showActivityIndicator:(BOOL)a3 view:(id)a4;
- (void)dealloc;
- (void)discoveryCardViewCTATapped:(id)a3 callToAction:(id)a4 itemIdentifier:(id)a5;
- (void)loadView;
- (void)paymentSetupDidFinish:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)setArticleLayout:(id)a3 cardSize:(int64_t)a4 animated:(BOOL)a5;
- (void)setCallToActionTappedOverride:(id)a3;
- (void)setIsDownloading:(BOOL)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation PKDiscoveryArticleViewController

- (PKDiscoveryArticleViewController)initWithArticleLayout:(id)a3 referrerIdentifier:(id)a4 cardSize:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
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
    objc_storeStrong(v11 + 132, a4);
    v14 = [v9 card];
    v15 = [v14 callToAction];
    *(v11 + 133) = [v15 action];

    objc_storeStrong(v11 + 124, a3);
    v11[1032] = v9 == 0;
    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    [v16 addObserver:v11 selector:sel__systemTextSizeChanged name:*MEMORY[0x1E69DDC48] object:0];
    [v16 addObserver:v11 selector:sel__applicationWillTerminate name:*MEMORY[0x1E69DDBD0] object:0];
    [v16 addObserver:v11 selector:sel__applicationWillResignActive name:*MEMORY[0x1E69DDBC8] object:0];
    v11[1114] = 1;
    [v11 _setCardSize:a5];
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
      v3 = [(PKDiscoveryArticleViewController *)self proximityReaderDelegate];

      if (!v3)
      {
        v5 = [MEMORY[0x1E69B87F0] sharedInstance];
        v4 = [(PKDiscoveryArticleLayout *)self->_articleLayout itemIdentifier];
        [v5 discoveryItemWithIdentifier:v4 callToAction:self->_callToAction wasScrolledToTheBottom:self->_scrolledToBottom];
      }
    }
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

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
  v3 = [(PKDiscoveryArticleViewController *)self view];
  v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:self action:sel__dismissButtonPressed];
  v5 = [(PKDiscoveryArticleViewController *)self navigationItem];
  v33 = v4;
  [v5 setLeftBarButtonItem:v4];

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
  v15 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(UICollectionView *)v14 setBackgroundColor:v15];

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
  v21 = [MEMORY[0x1E69DC888] grayColor];
  [(UIActivityIndicatorView *)v20 setColor:v21];

  v22 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v8, v9, v10, v11}];
  downloadingLabel = self->_downloadingLabel;
  self->_downloadingLabel = v22;

  v24 = self->_downloadingLabel;
  v25 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD08], *MEMORY[0x1E69DDC68]);
  [(UILabel *)v24 setFont:v25];

  v26 = self->_downloadingLabel;
  v27 = [MEMORY[0x1E69DC888] systemDarkGrayColor];
  [(UILabel *)v26 setTextColor:v27];

  v28 = self->_downloadingLabel;
  v29 = PKLocalizedDiscoveryString(&cfstr_DiscoveryArtic.isa);
  [(UILabel *)v28 setText:v29];

  v30 = 0.0;
  if (self->_isDownloading)
  {
    v30 = 1.0;
  }

  [(UILabel *)self->_downloadingLabel setAlpha:v30];
  v31 = [MEMORY[0x1E69DC888] whiteColor];
  [v3 setBackgroundColor:v31];

  [v3 addSubview:self->_collectionView];
  [(UICollectionView *)self->_collectionView addSubview:self->_cardView];
  [v3 addSubview:self->_activityIndicator];
  [v3 addSubview:self->_downloadingLabel];
  [v3 setAccessibilityIdentifier:*MEMORY[0x1E69B9490]];
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
  v3 = [(PKDiscoveryArticleLayout *)self->_articleLayout isWritingDirectionRTL];
  if (v3)
  {
    v4 = v3;
    v5 = [(PKDiscoveryArticleViewController *)self traitOverrides];
    [v5 setLayoutDirection:v4 == 1];
  }

  v6 = [(PKDiscoveryArticleViewController *)self view];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [v6 safeAreaInsets];
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

- (void)viewDidAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = PKDiscoveryArticleViewController;
  [(PKDiscoveryArticleViewController *)&v7 viewDidAppear:a3];
  if (self->_articleLayout && !self->_isDownloading)
  {
    v4 = [(PKDiscoveryArticleViewController *)self proximityReaderDelegate];

    if (!v4)
    {
      v5 = [MEMORY[0x1E69B87F0] sharedInstance];
      v6 = [(PKDiscoveryArticleLayout *)self->_articleLayout itemIdentifier];
      [v5 discoveryItemWithIdentifier:v6 callToAction:self->_callToAction isScrollable:{-[PKDiscoveryArticleViewController isScrollable](self, "isScrollable")}];
    }
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKDiscoveryArticleViewController;
  [(PKDiscoveryArticleViewController *)&v4 viewDidDisappear:a3];
  [(PKDiscoveryArticleViewController *)self _reportScolledToBottomIfNecessary];
}

- (BOOL)isScrollable
{
  v2 = [(UICollectionView *)self->_collectionView collectionViewLayout];
  v3 = [v2 isScrollable];

  return v3;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  [a3 bounds];
  v6 = v5;
  +[PKDiscoveryCardView expandedHeight];
  v8 = v7 + 8.0;
  v9 = v6;
  result.height = v8;
  result.width = v9;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForFooterInSection:(int64_t)a5
{
  v6 = [(PKDiscoveryArticleViewController *)self view:a3];
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

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v6 = [(PKDiscoveryArticleViewController *)self _shelfForIndexPath:a5, a4];
  v7 = [(PKDiscoveryArticleLayout *)self->_articleLayout itemIdentifier];
  v8 = [PKDiscoveryShelfView viewForShelf:v6 discoveryCardViewDelegate:self itemIdentifier:v7];

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

- (void)setCallToActionTappedOverride:(id)a3
{
  v6 = a3;
  v4 = _Block_copy(v6);
  callToActionTappedOverride = self->_callToActionTappedOverride;
  self->_callToActionTappedOverride = v4;

  [(PKDiscoveryCardView *)self->_cardView setCallToActionTappedOverride:v6];
}

- (void)setArticleLayout:(id)a3 cardSize:(int64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  objc_storeStrong(&self->_articleLayout, a3);
  self->_isDownloading = v9 == 0;
  [(PKDiscoveryCardView *)self->_cardView removeFromSuperview];
  [(PKDiscoveryCardView *)self->_cardView setDelegate:0];
  [(PKDiscoveryArticleViewController *)self _setCardSize:a4];
  v10 = [[PKDiscoveryCardViewTemplateInformation alloc] initWithCardSize:self->_cardSize displayType:1];
  v11 = [[PKDiscoveryCardView alloc] initWithArticleLayout:self->_articleLayout cardTemplateInformation:v10];
  cardView = self->_cardView;
  self->_cardView = v11;

  [(PKDiscoveryCardView *)self->_cardView setDelegate:self];
  [(UICollectionView *)self->_collectionView addSubview:self->_cardView];
  v13 = [(PKDiscoveryArticleViewController *)self view];
  [v13 setNeedsLayout];

  [(UICollectionView *)self->_collectionView reloadData];
  if (v5)
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

- (void)setIsDownloading:(BOOL)a3
{
  if (self->_isDownloading == !a3)
  {
    v18 = v6;
    v19 = v5;
    v20 = v3;
    v21 = v4;
    v7 = a3;
    self->_isDownloading = a3;
    v9 = self->_activityIndicator;
    if (v7)
    {
      [(UIActivityIndicatorView *)self->_activityIndicator startAnimating];
    }

    v10 = MEMORY[0x1E69DD250];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __53__PKDiscoveryArticleViewController_setIsDownloading___block_invoke;
    v15[3] = &unk_1E8013D60;
    v17 = v7;
    v15[4] = self;
    v16 = v9;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __53__PKDiscoveryArticleViewController_setIsDownloading___block_invoke_2;
    v12[3] = &unk_1E8013E98;
    v14 = v7;
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

- (void)_setCardSize:(int64_t)a3
{
  if (a3 == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = a3;
  }

  self->_cardSize = v3;
}

- (void)discoveryCardViewCTATapped:(id)a3 callToAction:(id)a4 itemIdentifier:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 action];
  v12 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 134217984;
    v26 = v11;
    _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Article view CTA (action=%ld) tapped", &v25, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v14 = [(PKDiscoveryArticleLayout *)self->_articleLayout item];
  [WeakRetained discoveryArticleViewController:self tappedCallToAction:v9 item:v14];

  v15 = [(PKDiscoveryArticleViewController *)self proximityReaderDelegate];

  if (!v15)
  {
    v16 = [MEMORY[0x1E69B87F0] sharedInstance];
    [v16 tappedDiscoveryItemWithIdentifier:v10 callToAction:objc_msgSend(v9 cardSize:{"action"), self->_cardSize}];
  }

  [v9 setReferrerIdentifier:self->_referrerIdentifierOverride];
  v17 = [(PKDiscoveryArticleViewController *)self presentingViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [v17 passGroupsViewController];
LABEL_9:
    v19 = v18;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
    goto LABEL_9;
  }

  v19 = 0;
LABEL_11:
  if (v11 <= 5)
  {
    if (v11 < 4)
    {
LABEL_18:
      [(PKDiscoveryArticleViewController *)self _performProvisioningCTATapped:v8 callToAction:v9];
      goto LABEL_31;
    }

    if (v11 != 4)
    {
      if (v11 != 5)
      {
        goto LABEL_31;
      }

      v21 = [(PKDiscoveryArticleViewController *)self proximityReaderDelegate];

      if (!v21)
      {
        v22 = [MEMORY[0x1E69B87F0] sharedInstance];
        [v22 completedDiscoveryItemCTAWithCompletion:0];
      }
    }
  }

  else if (v11 <= 8)
  {
    if (v11 != 6)
    {
      if (v11 == 7)
      {
        [(PKDiscoveryArticleViewController *)self _performAccountUserInvitationFlowWithCTATapped:v8 callToAction:v9];
      }

      else
      {
        v20 = [v9 appStoreAppIdentifier];
        [v19 presentAppStorePageForItemWithIdentifier:v20];
      }

      goto LABEL_31;
    }
  }

  else if ((v11 - 9) >= 2 && v11 != 12)
  {
    if (v11 != 11)
    {
      goto LABEL_31;
    }

    goto LABEL_18;
  }

  v23 = [v9 actionURL];
  v24 = v23;
  if (v23)
  {
    v12 = [v23 url];
    [v24 isSensitive];
    PKOpenURL();
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 134217984;
    v26 = v11;
    _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Failed to perform actionType %ld as no URL exists", &v25, 0xCu);
  }

LABEL_31:
}

- (void)_performAccountUserInvitationFlowWithCTATapped:(id)a3 callToAction:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(PKDiscoveryArticleViewController *)self _showActivityIndicator:1 view:v6];
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __96__PKDiscoveryArticleViewController__performAccountUserInvitationFlowWithCTATapped_callToAction___block_invoke;
  v9[3] = &unk_1E80110E0;
  objc_copyWeak(&v11, &location);
  v8 = v6;
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

- (void)_performProvisioningCTATapped:(id)a3 callToAction:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = objc_alloc(MEMORY[0x1E69B8D48]);
  v9 = [MEMORY[0x1E69B8EF8] sharedService];
  v10 = [v8 initWithWebService:v9];

  v11 = [v7 referrerIdentifier];
  [v10 setReferrerIdentifier:v11];

  v12 = [v7 paymentNetworks];
  [v10 setAllowedPaymentNetworks:v12];

  v13 = [v7 transitNetworkIdentifiers];
  [v10 setRequiredTransitNetworkIdentifiers:v13];

  v14 = [v7 allowedFeatureIdentifiers];
  [v10 setAllowedFeatureIdentifiers:v14];

  v15 = [v7 productIdentifiers];
  [v10 setAllowedProductIdentifiers:v15];

  [(PKDiscoveryArticleViewController *)self _showActivityIndicator:1 view:v6];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__PKDiscoveryArticleViewController__performProvisioningCTATapped_callToAction___block_invoke;
  aBlock[3] = &unk_1E8019890;
  objc_copyWeak(&v29, &location);
  v16 = v10;
  v26 = v16;
  v17 = v7;
  v27 = v17;
  v18 = v6;
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

- (id)_paymentSetupNavigationControllerForProvisioningController:(id)a3
{
  v4 = a3;
  v5 = [[PKPaymentSetupNavigationController alloc] initWithProvisioningController:v4 context:0];

  [(PKNavigationController *)v5 setCustomFormSheetPresentationStyleForiPad];
  [(PKPaymentSetupNavigationController *)v5 setSetupDelegate:self];

  return v5;
}

- (void)_showActivityIndicator:(BOOL)a3 view:(id)a4
{
  v4 = a3;
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [v5 setShowActivityIndicator:v4];
  }
}

- (void)paymentSetupDidFinish:(id)a3
{
  v4 = [a3 provisioningController];
  v5 = [v4 provisionedPasses];
  v6 = [v5 lastObject];
  v7 = [v6 secureElementPass];
  v9 = [v7 paymentPass];

  if (v9)
  {
    v8 = [v9 uniqueID];
    [(PKDiscoveryArticleViewController *)self _dismissForActionCompleted:1 withRelevantPassUniqueIdentifier:v8];
  }

  else
  {
    [(PKDiscoveryArticleViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v7 = a3;
  v8 = a4;
  if (v7 == self && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [[PKPresentationControllerForOverCurrentContextDestination alloc] initWithPresentedViewController:v7 presentingViewController:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)defaultZoomTransitionForDiscoveryCardView:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E69DD320]);
  [v4 setAlignmentRectProvider:&__block_literal_global_161];
  objc_initWeak(&location, v3);
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

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(PKDiscoveryArticleLayout *)self->_articleLayout shelves:a3];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:v6];
  v8 = [MEMORY[0x1E69DC888] whiteColor];
  [v7 setBackgroundColor:v8];

  v9 = [(PKDiscoveryArticleViewController *)self _shelfForIndexPath:v6];
  if (v9)
  {
    v10 = [(PKDiscoveryArticleLayout *)self->_articleLayout itemIdentifier];
    v11 = [PKDiscoveryShelfView viewForShelf:v9 discoveryCardViewDelegate:self itemIdentifier:v10];

    [v11 setContentInsets:{self->_contentInsets.top, self->_contentInsets.left, self->_contentInsets.bottom, self->_contentInsets.right}];
    v12 = [v7 shelfView];
    v13 = v12;
    if (v12)
    {
      if (v12 == v11)
      {
LABEL_6:
        v15 = [v9 type];
        if (v15 == 4)
        {
          [(PKDiscoveryArticleViewController *)self _configureCallToActionShelfView:v11 forCallToActionShelf:v9 atIndexPath:v6];
        }

        else if (v15 == 2)
        {
          [(PKDiscoveryArticleViewController *)self _configureInlineMediaShelfView:v11 forInlineMediaShelf:v9 atIndexPath:v6];
        }

        goto LABEL_14;
      }

      v14 = [v7 shelfView];
      [v14 removeFromSuperview];

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

- (id)_shelfForIndexPath:(id)a3
{
  v4 = [a3 row];
  v5 = [(PKDiscoveryArticleLayout *)self->_articleLayout shelves];
  if (v4 >= [v5 count])
  {
    v6 = 0;
  }

  else
  {
    v6 = [v5 objectAtIndex:v4];
  }

  return v6;
}

- (void)scrollViewDidScroll:(id)a3
{
  v17 = a3;
  v4 = [(PKDiscoveryArticleViewController *)self view];
  [v4 setNeedsLayout];

  v5 = [(PKDiscoveryArticleViewController *)self proximityReaderDelegate];

  if (v5)
  {
    [v17 contentOffset];
    v7 = v6;
    [v17 frame];
    v9 = v7 + v8;
    v10 = [(PKDiscoveryArticleViewController *)self proximityReaderDelegate];
    v11 = [(PKDiscoveryArticleLayout *)self->_articleLayout itemIdentifier];
    [v10 discoveryItemWithIdentifier:v11 position:v9];
  }

  else if ([(PKDiscoveryArticleViewController *)self isScrollable])
  {
    if (!self->_scrolledToBottom)
    {
      [v17 contentOffset];
      v13 = v12;
      [v17 contentSize];
      v15 = v14;
      [v17 frame];
      self->_scrolledToBottom = v13 >= v15 - v16;
      if (v13 >= v15 - v16)
      {
        [(PKDiscoveryArticleViewController *)self _reportScolledToBottomIfNecessary];
      }
    }
  }
}

- (void)_configureInlineMediaShelfView:(id)a3 forInlineMediaShelf:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 media];
  v12 = [v11 type];

  if (v12 == 1)
  {
    v13 = v8;
    v14 = [(NSMutableDictionary *)self->_cellImageCache objectForKey:v10];
    v15 = [v14 objectForKey:@"mediaAsset"];
    if (v15)
    {
      [v13 setImage:v15 animated:0];
    }

    else
    {
      v16 = [v9 media];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __99__PKDiscoveryArticleViewController__configureInlineMediaShelfView_forInlineMediaShelf_atIndexPath___block_invoke;
      v17[3] = &unk_1E8010A38;
      v18 = v13;
      [(PKDiscoveryArticleViewController *)self _loadMedia:v16 forShelfViewAtIndexPath:v10 withCellImageCacheKey:@"mediaAsset" completion:v17];
    }
  }
}

- (void)_configureCallToActionShelfView:(id)a3 forCallToActionShelf:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a5;
  cellImageCache = self->_cellImageCache;
  v11 = a4;
  v12 = [(NSMutableDictionary *)cellImageCache objectForKey:v9];
  v13 = [v11 callToAction];

  v14 = [v13 icon];

  if (!v14)
  {
    v16 = [v12 objectForKey:@"wordmarkAsset"];
    if (v16)
    {
      goto LABEL_6;
    }

LABEL_8:
    v18 = [v13 wordmarkAsset];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __101__PKDiscoveryArticleViewController__configureCallToActionShelfView_forCallToActionShelf_atIndexPath___block_invoke_2;
    v19[3] = &unk_1E8010A38;
    v20 = v8;
    [(PKDiscoveryArticleViewController *)self _loadMedia:v18 forShelfViewAtIndexPath:v9 withCellImageCacheKey:@"wordmarkAsset" completion:v19];

    goto LABEL_9;
  }

  v15 = [v12 objectForKey:@"mediaAsset"];
  v16 = [v12 objectForKey:@"wordmarkAsset"];
  if (!v15)
  {
    v17 = [v13 icon];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __101__PKDiscoveryArticleViewController__configureCallToActionShelfView_forCallToActionShelf_atIndexPath___block_invoke;
    v21[3] = &unk_1E8010A38;
    v22 = v8;
    [(PKDiscoveryArticleViewController *)self _loadMedia:v17 forShelfViewAtIndexPath:v9 withCellImageCacheKey:@"mediaAsset" completion:v21];

    if (v16)
    {
      goto LABEL_6;
    }

    goto LABEL_8;
  }

  [v8 setImage:v15 animated:0];

  if (!v16)
  {
    goto LABEL_8;
  }

LABEL_6:
  [v8 setWordmarkAsset:v16 animated:0];
LABEL_9:
}

- (void)_loadMedia:(id)a3 forShelfViewAtIndexPath:(id)a4 withCellImageCacheKey:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  os_unfair_lock_lock(&self->_lockDownloads);
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__38;
  v35 = __Block_byref_object_dispose__38;
  v36 = [(NSMutableDictionary *)self->_imageDownloads objectForKey:v11];
  v14 = v32[5];
  if (v14)
  {
    v15 = [v32[5] objectForKey:v12];
    if (v15)
    {
      v16 = _Block_copy(v13);
      [v15 addObject:v16];
    }

    else
    {
      v21 = objc_alloc(MEMORY[0x1E695DF70]);
      v22 = _Block_copy(v13);
      v15 = [v21 initWithObjects:{v22, 0}];

      [v32[5] setObject:v15 forKey:v12];
    }
  }

  else
  {
    v17 = objc_alloc(MEMORY[0x1E695DF70]);
    v18 = _Block_copy(v13);
    v15 = [v17 initWithObjects:{v18, 0}];

    v19 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    v20 = v32[5];
    v32[5] = v19;

    [v32[5] setObject:v15 forKey:v12];
  }

  [(NSMutableDictionary *)self->_imageDownloads setObject:v32[5] forKey:v11];
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
    v26 = v11;
    v27 = v12;
    v28 = &v31;
    PKFetchImageForDiscoveryMedia(v10, v23, v24, 0, v25);

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
  v3 = [(PKDiscoveryArticleViewController *)self presentingViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    articleLayout = self->_articleLayout;
    v5 = v3;
    v6 = [(PKDiscoveryArticleLayout *)articleLayout itemIdentifier];
    v7 = [v5 hasDiscoveryCardWithItemIdentifier:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_dismissForActionCompleted:(BOOL)a3 withRelevantPassUniqueIdentifier:(id)a4
{
  v4 = a3;
  v12 = a4;
  v6 = [(PKDiscoveryArticleViewController *)self presentingViewController];
  if ([v6 conformsToProtocol:&unk_1F3DC57F0])
  {
    [v6 dismissDiscoveryArticleViewController:self afterActionCompleted:v4 withRelevantPassUniqueIdenitifer:v12];
    v7 = [(PKDiscoveryArticleViewController *)self proximityReaderDelegate];

    if (!v7)
    {
      v8 = [MEMORY[0x1E69B87F0] sharedInstance];
      v9 = [(PKDiscoveryArticleLayout *)self->_articleLayout itemIdentifier];
      v10 = [(PKDiscoveryArticleLayout *)self->_articleLayout card];
      v11 = [v10 callToAction];
      [v8 dismissedDiscoveryItemWithIdentifier:v9 callToAction:objc_msgSend(v11 cardSize:{"action"), self->_cardSize}];
    }
  }

  else
  {
    [v6 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_dismissButtonPressed
{
  v3 = [(PKDiscoveryArticleViewController *)self cardView];
  [v3 loadAndUploadImageData];

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