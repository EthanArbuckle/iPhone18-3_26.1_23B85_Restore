@interface PKPassSharesListViewController
- (PKPassSharesListViewController)initWithSharesController:(id)controller;
- (void)_setIsLoading:(BOOL)loading;
- (void)_showDisplayableError:(id)error;
- (void)loadView;
- (void)passSharesListSectionController:(id)controller didSelectShare:(id)share;
- (void)passSharesListSectionController:(id)controller presentAlert:(id)alert forItem:(id)item;
- (void)passSharesListSectionControllerDidSelectAddShare:(id)share;
- (void)reloadDataAnimated:(BOOL)animated;
- (void)shareSecureElementPassViewController:(id)controller didFinishWithResult:(int64_t)result;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PKPassSharesListViewController

- (PKPassSharesListViewController)initWithSharesController:(id)controller
{
  v15[1] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v14.receiver = self;
  v14.super_class = PKPassSharesListViewController;
  v6 = [(PKDynamicCollectionViewController *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sharesController, controller);
    v8 = objc_alloc_init(MEMORY[0x1E69B9248]);
    authorizer = v7->_authorizer;
    v7->_authorizer = v8;

    v10 = [[PKPassSharesListSectionController alloc] initWithMode:2 sharesController:v7->_sharesController rootShare:0 delegate:v7];
    sharesSectionController = v7->_sharesSectionController;
    v7->_sharesSectionController = v10;

    [(PKDynamicCollectionViewController *)v7 setUseItemIdentityWhenUpdating:1];
    v15[0] = v7->_sharesSectionController;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    [(PKDynamicCollectionViewController *)v7 setSections:v12 animated:0];
  }

  return v7;
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v9.receiver = self;
  v9.super_class = PKPassSharesListViewController;
  [(PKDynamicCollectionViewController *)&v9 viewWillAppear:?];
  [(PKSharedPassSharesController *)self->_sharesController updateSharesWithCompletion:0];
  v8.receiver = self;
  v8.super_class = PKPassSharesListViewController;
  [(PKDynamicCollectionViewController *)&v8 reloadDataAnimated:appearCopy];
  navigationController = [(PKPassSharesListViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setPrefersLargeTitles:1];

  navigationItem = [(PKPassSharesListViewController *)self navigationItem];
  [navigationItem setLargeTitleDisplayMode:1];
}

- (void)loadView
{
  v9.receiver = self;
  v9.super_class = PKPassSharesListViewController;
  [(PKDynamicCollectionViewController *)&v9 loadView];
  view = [(PKPassSharesListViewController *)self view];
  secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  collectionView = [(PKDynamicCollectionViewController *)self collectionView];
  [collectionView setBackgroundColor:secondarySystemBackgroundColor];

  [view setBackgroundColor:secondarySystemBackgroundColor];
  navigationItem = [(PKPassSharesListViewController *)self navigationItem];
  v7 = PKLocalizedShareableCredentialString(&cfstr_SharesListTitl.isa);
  [navigationItem setTitle:v7];

  v8 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__donePressed];
  [navigationItem setRightBarButtonItem:v8];
}

- (void)_setIsLoading:(BOOL)loading
{
  if (loading)
  {
    collectionView2 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    [collectionView2 startAnimating];
    v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:collectionView2];
    navigationItem = [(PKPassSharesListViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:v4];

    collectionView = [(PKDynamicCollectionViewController *)self collectionView];
    [collectionView setUserInteractionEnabled:0];
  }

  else
  {
    navigationItem2 = [(PKPassSharesListViewController *)self navigationItem];
    v8 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__donePressed];
    [navigationItem2 setRightBarButtonItem:v8];

    collectionView2 = [(PKDynamicCollectionViewController *)self collectionView];
    [collectionView2 setUserInteractionEnabled:1];
  }
}

- (void)_showDisplayableError:(id)error
{
  v4 = MEMORY[0x1E69DC650];
  errorCopy = error;
  v6 = PKTitleForDisplayableError();
  v7 = MEMORY[0x1BFB42D10](errorCopy);

  v11 = [v4 alertControllerWithTitle:v6 message:v7 preferredStyle:1];

  v8 = MEMORY[0x1E69DC648];
  v9 = PKLocalizedString(&cfstr_OkButtonTitle.isa);
  v10 = [v8 actionWithTitle:v9 style:0 handler:0];
  [v11 addAction:v10];

  [(PKPassSharesListViewController *)self presentViewController:v11 animated:1 completion:0];
}

- (void)reloadDataAnimated:(BOOL)animated
{
  animatedCopy = animated;
  presentedViewController = [(PKPassSharesListViewController *)self presentedViewController];

  if (!presentedViewController)
  {
    v6.receiver = self;
    v6.super_class = PKPassSharesListViewController;
    [(PKDynamicCollectionViewController *)&v6 reloadDataAnimated:animatedCopy];
  }
}

- (void)passSharesListSectionController:(id)controller didSelectShare:(id)share
{
  shareCopy = share;
  authorizer = self->_authorizer;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __81__PKPassSharesListViewController_passSharesListSectionController_didSelectShare___block_invoke;
  v8[3] = &unk_1E8012FD0;
  v9 = shareCopy;
  selfCopy = self;
  v7 = shareCopy;
  [(PKShareAuthorizationSession *)authorizer authorizeDeviceOwnerWithAuthHandler:0 completion:v8];
}

void __81__PKPassSharesListViewController_passSharesListSectionController_didSelectShare___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = [[PKPassShareDetailsViewController alloc] initWithShare:*(a1 + 32) sharesController:*(*(a1 + 40) + 1072) authorizer:*(*(a1 + 40) + 1080)];
    v3 = [*(a1 + 40) navigationController];
    [v3 pushViewController:v4 animated:1];
  }
}

- (void)passSharesListSectionControllerDidSelectAddShare:(id)share
{
  sharesController = self->_sharesController;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __83__PKPassSharesListViewController_passSharesListSectionControllerDidSelectAddShare___block_invoke;
  v4[3] = &unk_1E8013908;
  v4[4] = self;
  [(PKSharedPassSharesController *)sharesController canSendInvitationWithCompletion:v4];
}

void __83__PKPassSharesListViewController_passSharesListSectionControllerDidSelectAddShare___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = PKAlertForDisplayableErrorWithHandlers(a2, 0, 0, 0);
    v4 = *(a1 + 32);
    v9 = v3;
    v5 = 1;
  }

  else
  {
    v6 = [PKShareSecureElementPassViewController alloc];
    v7 = [*(*(a1 + 32) + 1072) pass];
    v9 = [(PKShareSecureElementPassViewController *)v6 initWithSecureElementPass:v7 environment:0 isFromPeopleScreen:1 delegate:*(a1 + 32)];

    [(PKShareSecureElementPassViewController *)v9 setModalPresentationStyle:5];
    v8 = *(a1 + 32);
    v5 = [(PKShareSecureElementPassViewController *)v9 shouldViewControllerBeAnimatedIn];
    v4 = v8;
    v3 = v9;
  }

  [v4 presentViewController:v3 animated:v5 completion:0];
}

- (void)passSharesListSectionController:(id)controller presentAlert:(id)alert forItem:(id)item
{
  alertCopy = alert;
  if (item)
  {
    v7 = [(PKDynamicCollectionViewController *)self cellForItem:item];
    popoverPresentationController = [alertCopy popoverPresentationController];
    [popoverPresentationController setSourceItem:v7];
  }

  [(PKPassSharesListViewController *)self presentViewController:alertCopy animated:1 completion:0];
}

- (void)shareSecureElementPassViewController:(id)controller didFinishWithResult:(int64_t)result
{
  v5.receiver = self;
  v5.super_class = PKPassSharesListViewController;
  [(PKDynamicCollectionViewController *)&v5 reloadDataAnimated:1, result];
  [(PKPassSharesListViewController *)self dismissViewControllerAnimated:1 completion:0];
}

@end