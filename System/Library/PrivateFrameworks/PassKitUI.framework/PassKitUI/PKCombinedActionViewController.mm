@interface PKCombinedActionViewController
- (CGSize)_imageSize;
- (PKCombinedActionViewController)initWithPass:(id)a3 actionGroups:(id)a4 paymentDataProvider:(id)a5 webService:(id)a6 balanceModel:(id)a7 mode:(unint64_t)a8;
- (PKCombinedActionViewControllerDelegate)delegate;
- (void)_cancelButtonPressed:(id)a3;
- (void)didSelectAction:(id)a3 completion:(id)a4;
- (void)didSelectActionGroup:(id)a3 completion:(id)a4;
- (void)performActionViewControllerDidCancel:(id)a3;
- (void)performActionViewControllerDidPerformAction:(id)a3;
- (void)remoteGroupActionsViewControllerDidCancel:(id)a3;
- (void)remoteGroupActionsViewControllerDidPerformFetchActionGroup:(id)a3;
- (void)remoteGroupActionsViewControllerDidPerformPayment:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setHeaderBackgroundColor:(id)a3;
- (void)setHeaderImage:(id)a3;
- (void)setSubtitleText:(id)a3;
- (void)setTitleFont:(id)a3;
- (void)setTitleText:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PKCombinedActionViewController

- (PKCombinedActionViewController)initWithPass:(id)a3 actionGroups:(id)a4 paymentDataProvider:(id)a5 webService:(id)a6 balanceModel:(id)a7 mode:(unint64_t)a8
{
  v15 = a3;
  v16 = a4;
  v33 = a5;
  v32 = a6;
  v17 = a7;
  v34.receiver = self;
  v34.super_class = PKCombinedActionViewController;
  v18 = [(PKDynamicCollectionViewController *)&v34 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_pass, a3);
    objc_storeStrong(&v19->_webService, a6);
    objc_storeStrong(&v19->_paymentDataProvider, a5);
    objc_storeStrong(&v19->_actionGroups, a4);
    v19->_mode = a8;
    v20 = [v17 displayableCommutePlanActions];
    v21 = [v20 pk_objectsPassingTest:&__block_literal_global_131];
    actions = v19->_actions;
    v19->_actions = v21;

    v23 = [PKCollapsibleHeaderView alloc];
    v24 = [(PKCollapsibleHeaderView *)v23 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    headerView = v19->_headerView;
    v19->_headerView = v24;

    v26 = [[PKPassView alloc] initWithPass:v15 content:5];
    passView = v19->_passView;
    v19->_passView = v26;

    objc_storeStrong(&v19->_transitBalanceModel, a7);
    v28 = [(PKCombinedActionViewController *)v19 navigationItem];
    v29 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
    [v29 configureWithTransparentBackground];
    [v28 setStandardAppearance:v29];
    v30 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v19 action:sel__cancelButtonPressed_];
    [v28 setLeftBarButtonItem:v30];
    [(PKDynamicCollectionViewController *)v19 setUseItemIdentityWhenUpdating:1];
  }

  return v19;
}

uint64_t __109__PKCombinedActionViewController_initWithPass_actionGroups_paymentDataProvider_webService_balanceModel_mode___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 type] == 2)
  {
    v3 = [v2 isActionAvailable];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)viewDidLoad
{
  v25[1] = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = PKCombinedActionViewController;
  [(PKDynamicCollectionViewController *)&v23 viewDidLoad];
  v3 = [(PKCombinedActionViewController *)self view];
  v4 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(PKCombinedActionViewController *)self setBackgroundColor:v4];
  [(PKCombinedActionViewController *)self setHeaderBackgroundColor:v4];
  mode = self->_mode;
  if (mode == 1)
  {
    v7 = PKPassLocalizedStringWithFormat();
    v14 = [PKCombinedSelectActionViewControllerListSectionController alloc];
    v15 = [MEMORY[0x1E696AFB0] UUID];
    v16 = [v15 UUIDString];
    v17 = [(PKCombinedSelectActionViewControllerListSectionController *)v14 initWithIdentifier:v16 pass:self->_pass actions:self->_actions];
    actionsListController = self->_actionsListController;
    self->_actionsListController = v17;

    [(PKCombinedSelectActionViewControllerListSectionController *)self->_actionsListController setDelegate:self];
    v24 = self->_actionsListController;
    v13 = &v24;
  }

  else
  {
    if (mode)
    {
      v7 = &stru_1F3BD7330;
      goto LABEL_9;
    }

    v6 = [(NSArray *)self->_actionGroups firstObject];
    v7 = [v6 title];

    if (!v7)
    {
      v22 = 0;
      v7 = PKPassLocalizedStringWithFormat();
    }

    v8 = [PKCombinedSelectActionGroupViewControllerListSectionController alloc];
    v9 = [MEMORY[0x1E696AFB0] UUID];
    v10 = [v9 UUIDString];
    v11 = [(PKCombinedSelectActionGroupViewControllerListSectionController *)v8 initWithIdentifier:v10 pass:self->_pass actionGroups:self->_actionGroups];
    actionGroupsListController = self->_actionGroupsListController;
    self->_actionGroupsListController = v11;

    [(PKCombinedSelectActionGroupViewControllerListSectionController *)self->_actionGroupsListController setDelegate:self];
    v25[0] = self->_actionGroupsListController;
    v13 = v25;
  }

  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:{1, v22}];
  [(PKDynamicCollectionViewController *)self setSections:v19 animated:1];

LABEL_9:
  [(PKCombinedActionViewController *)self setTitleText:v7];
  passView = self->_passView;
  [(PKCombinedActionViewController *)self _imageSize];
  v21 = [(PKPassView *)passView snapshotOfFrontFaceWithRequestedSize:?];
  [(PKCombinedActionViewController *)self setHeaderImage:v21];

  [v3 addSubview:self->_headerView];
}

- (CGSize)_imageSize
{
  v2 = PKUIGetMinScreenWidthType();
  v3 = dbl_1BE1159E0[v2 < 5];
  v4 = dbl_1BE1159F0[v2 < 5];
  if (!v2)
  {
    v4 = 81.0;
    v3 = 51.0;
  }

  result.height = v3;
  result.width = v4;
  return result;
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKCombinedActionViewController;
  [(PKDynamicCollectionViewController *)&v4 viewDidAppear:a3];
  self->_viewDidAppear = 1;
}

- (void)viewWillLayoutSubviews
{
  v28.receiver = self;
  v28.super_class = PKCombinedActionViewController;
  [(PKDynamicCollectionViewController *)&v28 viewWillLayoutSubviews];
  v3 = [(PKCombinedActionViewController *)self view];
  v4 = [v3 readableContentGuide];
  [v4 layoutFrame];
  v6 = v5;
  v8 = v7;

  [v3 safeAreaInsets];
  v10 = v9;
  v11 = [(PKDynamicCollectionViewController *)self collectionView];
  [v11 frame];
  v13 = v12;
  [v11 contentOffset];
  v25 = v15;
  v26 = v14;
  [v11 contentInset];
  v17 = v16;
  v18 = *(MEMORY[0x1E69DDCE0] + 8);
  v19 = *(MEMORY[0x1E69DDCE0] + 16);
  v20 = *(MEMORY[0x1E69DDCE0] + 24);
  v21 = v10 + v13;
  headerHeight = self->_headerHeight;
  v29.origin.x = v6;
  v29.origin.y = v21;
  v29.size.width = v8;
  v29.size.height = headerHeight;
  CGRectGetMaxY(v29);
  [(PKCollapsibleHeaderView *)self->_headerView setFrame:v6, v21, v8, headerHeight];
  headerView = self->_headerView;
  if (headerView)
  {
    [(PKCollapsibleHeaderView *)headerView heightBoundsForWidth:v8];
    v24 = v27;
  }

  else
  {
    v24 = 0.0;
  }

  [v11 setContentInset:{v24, v18, v19, v20}];
  if (v17 - v24 != 0.0)
  {
    [v11 setContentOffset:{v26, v25 + v17 - v24}];
  }
}

- (void)setTitleFont:(id)a3
{
  v6 = a3;
  v4 = [(PKCollapsibleHeaderView *)self->_headerView titleFont];
  v5 = [v4 isEqual:v6];

  if ((v5 & 1) == 0)
  {
    [(PKCollapsibleHeaderView *)self->_headerView setTitleFont:v6];
  }
}

- (void)setTitleText:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_titleText isEqualToString:?])
  {
    objc_storeStrong(&self->_titleText, a3);
    [(PKCollapsibleHeaderView *)self->_headerView setTitle:self->_titleText subtitle:self->_subtitleText];
    v5 = [(PKCombinedActionViewController *)self view];
    [v5 setNeedsLayout];
  }
}

- (void)setSubtitleText:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_subtitleText isEqualToString:?])
  {
    objc_storeStrong(&self->_subtitleText, a3);
    [(PKCollapsibleHeaderView *)self->_headerView setTitle:self->_titleText subtitle:self->_subtitleText];
    v5 = [(PKCombinedActionViewController *)self view];
    [v5 setNeedsLayout];
  }
}

- (void)setBackgroundColor:(id)a3
{
  v5 = a3;
  if (self->_backgroundColor != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_backgroundColor, a3);
    v6 = [(PKDynamicCollectionViewController *)self collectionView];
    [v6 setBackgroundColor:v8];

    v7 = [(PKCombinedActionViewController *)self view];
    [v7 setBackgroundColor:v8];

    v5 = v8;
  }
}

- (void)setHeaderBackgroundColor:(id)a3
{
  v5 = a3;
  if (self->_headerBackgroundColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_headerBackgroundColor, a3);
    [(PKCollapsibleHeaderView *)self->_headerView setBackgroundColor:self->_headerBackgroundColor];
    v5 = v6;
  }
}

- (void)setHeaderImage:(id)a3
{
  v7 = a3;
  v4 = [(PKCollapsibleHeaderView *)self->_headerView image];
  v5 = [v4 isEqual:v7];

  if ((v5 & 1) == 0)
  {
    [(PKCollapsibleHeaderView *)self->_headerView setImage:v7];
    v6 = [(PKCombinedActionViewController *)self view];
    [v6 setNeedsLayout];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  [a3 contentOffset];
  v5 = v4;
  v6 = [(PKCombinedActionViewController *)self view];
  [v6 safeAreaInsets];
  v8 = v5 + v7;

  v25 = 0.0;
  v23 = 0u;
  v24 = 0u;
  headerView = self->_headerView;
  [(PKCollapsibleHeaderView *)headerView bounds];
  if (headerView)
  {
    [(PKCollapsibleHeaderView *)headerView heightBoundsForWidth:v10];
    v11 = v25;
    v12 = *&v23;
  }

  else
  {
    v25 = 0.0;
    v12 = 0.0;
    v11 = 0.0;
    v23 = 0u;
    v24 = 0u;
  }

  v13 = fmin(v11, fmax(-v8, v12));
  if (v13 != self->_headerHeight)
  {
    self->_headerHeight = v13;
    v14 = v13 + -8.0;
    if (v13 + -8.0 < *(&v24 + 1) && self->_viewDidAppear)
    {
      titleText = self->_titleText;
      v16 = 1;
    }

    else
    {
      v16 = 0;
      titleText = 0;
    }

    v22.receiver = self;
    v22.super_class = PKCombinedActionViewController;
    [(PKCombinedActionViewController *)&v22 setTitle:titleText];
    if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
    {
      v17 = (*(&v24 + 1) - v14) * 0.125;
      v18 = [(PKCombinedActionViewController *)self navigationItem];
      v19 = v18;
      v20 = 0.0;
      if (v16)
      {
        v20 = v17;
      }

      [v18 _setManualScrollEdgeAppearanceProgress:v20];
    }
  }

  v21 = [(PKCombinedActionViewController *)self view];
  [v21 setNeedsLayout];
}

- (void)_cancelButtonPressed:(id)a3
{
  v4 = [(PKCombinedActionViewController *)self delegate];
  [v4 combinedActionViewControllerDidCancel:self];
}

- (void)didSelectActionGroup:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[PKRemoteActionGroupViewController alloc] initWithPass:self->_pass actionGroup:v6 paymentDataProvider:self->_paymentDataProvider webService:self->_webService];
  [(PKRemoteActionGroupViewController *)v8 setDelegate:self];
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__PKCombinedActionViewController_didSelectActionGroup_completion___block_invoke;
  v11[3] = &unk_1E801B480;
  objc_copyWeak(&v14, &location);
  v9 = v8;
  v12 = v9;
  v10 = v7;
  v13 = v10;
  [(PKRemoteActionGroupViewController *)v9 preflightWithCompletion:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __66__PKCombinedActionViewController_didSelectActionGroup_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v11 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v7 = [WeakRetained navigationController];
      v8 = [v7 pk_settings_useStateDrivenNavigation];
      v9 = *(a1 + 32);
      if (v8)
      {
        [v7 pk_settings_pushViewController:v9];
      }

      else
      {
        [v7 pushViewController:v9 animated:1];
      }
    }

    else
    {
      [WeakRetained presentViewController:v11 animated:1 completion:0];
    }

    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))();
    }
  }
}

- (void)didSelectAction:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23 = 0;
  v24 = 0;
  v8 = [(PKPaymentPass *)self->_pass canPerformAction:v6 unableReason:&v24 displayableError:&v23];
  v9 = v23;
  if ((v8 & 1) != 0 || v24 == 2)
  {
    if ([v6 hasExternalActionContent])
    {
      pass = self->_pass;
      v12 = [v6 externalActionContent];
      v13 = [v6 title];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __61__PKCombinedActionViewController_didSelectAction_completion___block_invoke;
      v21[3] = &unk_1E801B4A8;
      v21[4] = self;
      v22 = v7;
      PKPaymentPassActionPerformExternalActionContent(pass, v12, v13, v21);
    }

    else
    {
      v14 = [[PKPerformActionViewController alloc] initWithPass:self->_pass action:v6 paymentDataProvider:self->_paymentDataProvider];
      [(PKPerformActionViewController *)v14 setDelegate:self];
      [(PKPerformActionViewController *)v14 setWebService:self->_webService];
      objc_initWeak(&location, self);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __61__PKCombinedActionViewController_didSelectAction_completion___block_invoke_2;
      v16[3] = &unk_1E801B480;
      objc_copyWeak(&v19, &location);
      v15 = v14;
      v17 = v15;
      v18 = v7;
      [(PKPerformActionViewController *)v15 preflightWithCompletion:v16];

      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v10 = [PKPerformActionViewController alertControllerForUnableReason:v24 action:v6 displayableError:v9 addCardActionHandler:0];
    [(PKCombinedActionViewController *)self presentViewController:v10 animated:1 completion:0];
    if (v7)
    {
      v7[2](v7);
    }
  }
}

void __61__PKCombinedActionViewController_didSelectAction_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = v4;
  if (v4)
  {
    [*(a1 + 32) presentViewController:v4 animated:1 completion:0];
    v4 = v6;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v4);
    v4 = v6;
  }
}

void __61__PKCombinedActionViewController_didSelectAction_completion___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v11 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v7 = [WeakRetained navigationController];
      v8 = [v7 pk_settings_useStateDrivenNavigation];
      v9 = *(a1 + 32);
      if (v8)
      {
        [v7 pk_settings_pushViewController:v9];
      }

      else
      {
        [v7 pushViewController:v9 animated:1];
      }
    }

    else
    {
      [WeakRetained presentViewController:v11 animated:1 completion:0];
    }

    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))();
    }
  }
}

- (void)remoteGroupActionsViewControllerDidCancel:(id)a3
{
  v4 = a3;
  v7 = [v4 navigationController];
  if ([v7 pk_settings_useStateDrivenNavigation])
  {
    [v7 pk_settings_popViewController];
  }

  else
  {
    v5 = [v7 popViewControllerAnimated:1];
  }

  v6 = [(PKCombinedActionViewController *)self delegate];
  [v6 combinedActionViewControllerDidCancel:self];

  [v4 setDelegate:0];
}

- (void)remoteGroupActionsViewControllerDidPerformFetchActionGroup:(id)a3
{
  v4 = a3;
  v7 = [v4 navigationController];
  if ([v7 pk_settings_useStateDrivenNavigation])
  {
    [v7 pk_settings_popViewController];
  }

  else
  {
    v5 = [v7 popViewControllerAnimated:1];
  }

  v6 = [(PKCombinedActionViewController *)self delegate];
  [v6 combinedActionViewControllerDidFinish:self];

  [v4 setDelegate:0];
}

- (void)remoteGroupActionsViewControllerDidPerformPayment:(id)a3
{
  v4 = a3;
  v7 = [v4 navigationController];
  if ([v7 pk_settings_useStateDrivenNavigation])
  {
    [v7 pk_settings_popViewController];
  }

  else
  {
    v5 = [v7 popViewControllerAnimated:1];
  }

  v6 = [(PKCombinedActionViewController *)self delegate];
  [v6 combinedActionViewControllerDidFinish:self];

  [v4 setDelegate:0];
}

- (void)performActionViewControllerDidCancel:(id)a3
{
  v4 = a3;
  v7 = [v4 navigationController];
  if ([v7 pk_settings_useStateDrivenNavigation])
  {
    [v7 pk_settings_popViewController];
  }

  else
  {
    v5 = [v7 popViewControllerAnimated:1];
  }

  v6 = [(PKCombinedActionViewController *)self delegate];
  [v6 combinedActionViewControllerDidCancel:self];

  [v4 setDelegate:0];
}

- (void)performActionViewControllerDidPerformAction:(id)a3
{
  v5 = a3;
  v4 = [(PKCombinedActionViewController *)self delegate];
  [v4 combinedActionViewControllerDidFinish:self];

  [v5 setDelegate:0];
}

- (PKCombinedActionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end