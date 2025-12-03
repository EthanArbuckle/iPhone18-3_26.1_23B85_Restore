@interface PKCombinedActionViewController
- (CGSize)_imageSize;
- (PKCombinedActionViewController)initWithPass:(id)pass actionGroups:(id)groups paymentDataProvider:(id)provider webService:(id)service balanceModel:(id)model mode:(unint64_t)mode;
- (PKCombinedActionViewControllerDelegate)delegate;
- (void)_cancelButtonPressed:(id)pressed;
- (void)didSelectAction:(id)action completion:(id)completion;
- (void)didSelectActionGroup:(id)group completion:(id)completion;
- (void)performActionViewControllerDidCancel:(id)cancel;
- (void)performActionViewControllerDidPerformAction:(id)action;
- (void)remoteGroupActionsViewControllerDidCancel:(id)cancel;
- (void)remoteGroupActionsViewControllerDidPerformFetchActionGroup:(id)group;
- (void)remoteGroupActionsViewControllerDidPerformPayment:(id)payment;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setBackgroundColor:(id)color;
- (void)setHeaderBackgroundColor:(id)color;
- (void)setHeaderImage:(id)image;
- (void)setSubtitleText:(id)text;
- (void)setTitleFont:(id)font;
- (void)setTitleText:(id)text;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PKCombinedActionViewController

- (PKCombinedActionViewController)initWithPass:(id)pass actionGroups:(id)groups paymentDataProvider:(id)provider webService:(id)service balanceModel:(id)model mode:(unint64_t)mode
{
  passCopy = pass;
  groupsCopy = groups;
  providerCopy = provider;
  serviceCopy = service;
  modelCopy = model;
  v34.receiver = self;
  v34.super_class = PKCombinedActionViewController;
  v18 = [(PKDynamicCollectionViewController *)&v34 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_pass, pass);
    objc_storeStrong(&v19->_webService, service);
    objc_storeStrong(&v19->_paymentDataProvider, provider);
    objc_storeStrong(&v19->_actionGroups, groups);
    v19->_mode = mode;
    displayableCommutePlanActions = [modelCopy displayableCommutePlanActions];
    v21 = [displayableCommutePlanActions pk_objectsPassingTest:&__block_literal_global_131];
    actions = v19->_actions;
    v19->_actions = v21;

    v23 = [PKCollapsibleHeaderView alloc];
    v24 = [(PKCollapsibleHeaderView *)v23 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    headerView = v19->_headerView;
    v19->_headerView = v24;

    v26 = [[PKPassView alloc] initWithPass:passCopy content:5];
    passView = v19->_passView;
    v19->_passView = v26;

    objc_storeStrong(&v19->_transitBalanceModel, model);
    navigationItem = [(PKCombinedActionViewController *)v19 navigationItem];
    v29 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
    [v29 configureWithTransparentBackground];
    [navigationItem setStandardAppearance:v29];
    v30 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v19 action:sel__cancelButtonPressed_];
    [navigationItem setLeftBarButtonItem:v30];
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
  view = [(PKCombinedActionViewController *)self view];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(PKCombinedActionViewController *)self setBackgroundColor:systemBackgroundColor];
  [(PKCombinedActionViewController *)self setHeaderBackgroundColor:systemBackgroundColor];
  mode = self->_mode;
  if (mode == 1)
  {
    title = PKPassLocalizedStringWithFormat();
    v14 = [PKCombinedSelectActionViewControllerListSectionController alloc];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v17 = [(PKCombinedSelectActionViewControllerListSectionController *)v14 initWithIdentifier:uUIDString pass:self->_pass actions:self->_actions];
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
      title = &stru_1F3BD7330;
      goto LABEL_9;
    }

    firstObject = [(NSArray *)self->_actionGroups firstObject];
    title = [firstObject title];

    if (!title)
    {
      v22 = 0;
      title = PKPassLocalizedStringWithFormat();
    }

    v8 = [PKCombinedSelectActionGroupViewControllerListSectionController alloc];
    uUID2 = [MEMORY[0x1E696AFB0] UUID];
    uUIDString2 = [uUID2 UUIDString];
    v11 = [(PKCombinedSelectActionGroupViewControllerListSectionController *)v8 initWithIdentifier:uUIDString2 pass:self->_pass actionGroups:self->_actionGroups];
    actionGroupsListController = self->_actionGroupsListController;
    self->_actionGroupsListController = v11;

    [(PKCombinedSelectActionGroupViewControllerListSectionController *)self->_actionGroupsListController setDelegate:self];
    v25[0] = self->_actionGroupsListController;
    v13 = v25;
  }

  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:{1, v22}];
  [(PKDynamicCollectionViewController *)self setSections:v19 animated:1];

LABEL_9:
  [(PKCombinedActionViewController *)self setTitleText:title];
  passView = self->_passView;
  [(PKCombinedActionViewController *)self _imageSize];
  v21 = [(PKPassView *)passView snapshotOfFrontFaceWithRequestedSize:?];
  [(PKCombinedActionViewController *)self setHeaderImage:v21];

  [view addSubview:self->_headerView];
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

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKCombinedActionViewController;
  [(PKDynamicCollectionViewController *)&v4 viewDidAppear:appear];
  self->_viewDidAppear = 1;
}

- (void)viewWillLayoutSubviews
{
  v28.receiver = self;
  v28.super_class = PKCombinedActionViewController;
  [(PKDynamicCollectionViewController *)&v28 viewWillLayoutSubviews];
  view = [(PKCombinedActionViewController *)self view];
  readableContentGuide = [view readableContentGuide];
  [readableContentGuide layoutFrame];
  v6 = v5;
  v8 = v7;

  [view safeAreaInsets];
  v10 = v9;
  collectionView = [(PKDynamicCollectionViewController *)self collectionView];
  [collectionView frame];
  v13 = v12;
  [collectionView contentOffset];
  v25 = v15;
  v26 = v14;
  [collectionView contentInset];
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

  [collectionView setContentInset:{v24, v18, v19, v20}];
  if (v17 - v24 != 0.0)
  {
    [collectionView setContentOffset:{v26, v25 + v17 - v24}];
  }
}

- (void)setTitleFont:(id)font
{
  fontCopy = font;
  titleFont = [(PKCollapsibleHeaderView *)self->_headerView titleFont];
  v5 = [titleFont isEqual:fontCopy];

  if ((v5 & 1) == 0)
  {
    [(PKCollapsibleHeaderView *)self->_headerView setTitleFont:fontCopy];
  }
}

- (void)setTitleText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_titleText isEqualToString:?])
  {
    objc_storeStrong(&self->_titleText, text);
    [(PKCollapsibleHeaderView *)self->_headerView setTitle:self->_titleText subtitle:self->_subtitleText];
    view = [(PKCombinedActionViewController *)self view];
    [view setNeedsLayout];
  }
}

- (void)setSubtitleText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_subtitleText isEqualToString:?])
  {
    objc_storeStrong(&self->_subtitleText, text);
    [(PKCollapsibleHeaderView *)self->_headerView setTitle:self->_titleText subtitle:self->_subtitleText];
    view = [(PKCombinedActionViewController *)self view];
    [view setNeedsLayout];
  }
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  if (self->_backgroundColor != colorCopy)
  {
    v8 = colorCopy;
    objc_storeStrong(&self->_backgroundColor, color);
    collectionView = [(PKDynamicCollectionViewController *)self collectionView];
    [collectionView setBackgroundColor:v8];

    view = [(PKCombinedActionViewController *)self view];
    [view setBackgroundColor:v8];

    colorCopy = v8;
  }
}

- (void)setHeaderBackgroundColor:(id)color
{
  colorCopy = color;
  if (self->_headerBackgroundColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_headerBackgroundColor, color);
    [(PKCollapsibleHeaderView *)self->_headerView setBackgroundColor:self->_headerBackgroundColor];
    colorCopy = v6;
  }
}

- (void)setHeaderImage:(id)image
{
  imageCopy = image;
  image = [(PKCollapsibleHeaderView *)self->_headerView image];
  v5 = [image isEqual:imageCopy];

  if ((v5 & 1) == 0)
  {
    [(PKCollapsibleHeaderView *)self->_headerView setImage:imageCopy];
    view = [(PKCombinedActionViewController *)self view];
    [view setNeedsLayout];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  [scroll contentOffset];
  v5 = v4;
  view = [(PKCombinedActionViewController *)self view];
  [view safeAreaInsets];
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
      navigationItem = [(PKCombinedActionViewController *)self navigationItem];
      v19 = navigationItem;
      v20 = 0.0;
      if (v16)
      {
        v20 = v17;
      }

      [navigationItem _setManualScrollEdgeAppearanceProgress:v20];
    }
  }

  view2 = [(PKCombinedActionViewController *)self view];
  [view2 setNeedsLayout];
}

- (void)_cancelButtonPressed:(id)pressed
{
  delegate = [(PKCombinedActionViewController *)self delegate];
  [delegate combinedActionViewControllerDidCancel:self];
}

- (void)didSelectActionGroup:(id)group completion:(id)completion
{
  groupCopy = group;
  completionCopy = completion;
  v8 = [[PKRemoteActionGroupViewController alloc] initWithPass:self->_pass actionGroup:groupCopy paymentDataProvider:self->_paymentDataProvider webService:self->_webService];
  [(PKRemoteActionGroupViewController *)v8 setDelegate:self];
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__PKCombinedActionViewController_didSelectActionGroup_completion___block_invoke;
  v11[3] = &unk_1E801B480;
  objc_copyWeak(&v14, &location);
  v9 = v8;
  v12 = v9;
  v10 = completionCopy;
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

- (void)didSelectAction:(id)action completion:(id)completion
{
  actionCopy = action;
  completionCopy = completion;
  v23 = 0;
  v24 = 0;
  v8 = [(PKPaymentPass *)self->_pass canPerformAction:actionCopy unableReason:&v24 displayableError:&v23];
  v9 = v23;
  if ((v8 & 1) != 0 || v24 == 2)
  {
    if ([actionCopy hasExternalActionContent])
    {
      pass = self->_pass;
      externalActionContent = [actionCopy externalActionContent];
      title = [actionCopy title];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __61__PKCombinedActionViewController_didSelectAction_completion___block_invoke;
      v21[3] = &unk_1E801B4A8;
      v21[4] = self;
      v22 = completionCopy;
      PKPaymentPassActionPerformExternalActionContent(pass, externalActionContent, title, v21);
    }

    else
    {
      v14 = [[PKPerformActionViewController alloc] initWithPass:self->_pass action:actionCopy paymentDataProvider:self->_paymentDataProvider];
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
      v18 = completionCopy;
      [(PKPerformActionViewController *)v15 preflightWithCompletion:v16];

      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v10 = [PKPerformActionViewController alertControllerForUnableReason:v24 action:actionCopy displayableError:v9 addCardActionHandler:0];
    [(PKCombinedActionViewController *)self presentViewController:v10 animated:1 completion:0];
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
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

- (void)remoteGroupActionsViewControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  navigationController = [cancelCopy navigationController];
  if ([navigationController pk_settings_useStateDrivenNavigation])
  {
    [navigationController pk_settings_popViewController];
  }

  else
  {
    v5 = [navigationController popViewControllerAnimated:1];
  }

  delegate = [(PKCombinedActionViewController *)self delegate];
  [delegate combinedActionViewControllerDidCancel:self];

  [cancelCopy setDelegate:0];
}

- (void)remoteGroupActionsViewControllerDidPerformFetchActionGroup:(id)group
{
  groupCopy = group;
  navigationController = [groupCopy navigationController];
  if ([navigationController pk_settings_useStateDrivenNavigation])
  {
    [navigationController pk_settings_popViewController];
  }

  else
  {
    v5 = [navigationController popViewControllerAnimated:1];
  }

  delegate = [(PKCombinedActionViewController *)self delegate];
  [delegate combinedActionViewControllerDidFinish:self];

  [groupCopy setDelegate:0];
}

- (void)remoteGroupActionsViewControllerDidPerformPayment:(id)payment
{
  paymentCopy = payment;
  navigationController = [paymentCopy navigationController];
  if ([navigationController pk_settings_useStateDrivenNavigation])
  {
    [navigationController pk_settings_popViewController];
  }

  else
  {
    v5 = [navigationController popViewControllerAnimated:1];
  }

  delegate = [(PKCombinedActionViewController *)self delegate];
  [delegate combinedActionViewControllerDidFinish:self];

  [paymentCopy setDelegate:0];
}

- (void)performActionViewControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  navigationController = [cancelCopy navigationController];
  if ([navigationController pk_settings_useStateDrivenNavigation])
  {
    [navigationController pk_settings_popViewController];
  }

  else
  {
    v5 = [navigationController popViewControllerAnimated:1];
  }

  delegate = [(PKCombinedActionViewController *)self delegate];
  [delegate combinedActionViewControllerDidCancel:self];

  [cancelCopy setDelegate:0];
}

- (void)performActionViewControllerDidPerformAction:(id)action
{
  actionCopy = action;
  delegate = [(PKCombinedActionViewController *)self delegate];
  [delegate combinedActionViewControllerDidFinish:self];

  [actionCopy setDelegate:0];
}

- (PKCombinedActionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end