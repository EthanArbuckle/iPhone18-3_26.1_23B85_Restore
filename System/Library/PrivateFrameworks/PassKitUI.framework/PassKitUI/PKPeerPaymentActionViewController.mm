@interface PKPeerPaymentActionViewController
+ (id)peerPaymentActionViewControllerForAction:(unint64_t)a3 paymentPass:(id)a4 webService:(id)a5 passLibraryDataProvider:(id)a6 context:(int64_t)a7;
- (PKPassLibraryDataProvider)passLibraryDataProvider;
- (PKPeerPaymentAccountFeatureDescriptor)feature;
- (PKPeerPaymentActionViewController)initWithPaymentPass:(id)a3 webService:(id)a4 passLibraryDataProvider:(id)a5 context:(int64_t)a6;
- (PKPeerPaymentActionViewControllerDelegate)delegate;
- (id)cancelButton;
- (id)presentationSceneIdentifierForPeerPaymentActionController:(id)a3;
- (unint64_t)controllerAction;
- (void)_cancelledAction;
- (void)_handleApplicationDidBecomeActiveNotification:(id)a3;
- (void)_handlePeerPaymentAccountDidChangeNotification:(id)a3;
- (void)_performedAction;
- (void)dealloc;
- (void)loadView;
- (void)peerPaymentActionController:(id)a3 hasChangedState:(unint64_t)a4;
- (void)peerPaymentActionController:(id)a3 requestPresentViewController:(id)a4;
- (void)setAccount:(id)a3;
- (void)setCardBalance:(id)a3;
- (void)setControllerAction:(unint64_t)a3;
- (void)setCurrentAmount:(id)a3;
- (void)setMaxBalance:(id)a3;
- (void)setMaxLoadAmount:(id)a3;
- (void)setMinBalance:(id)a3;
- (void)setMinLoadAmount:(id)a3;
- (void)updateAccountValues;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PKPeerPaymentActionViewController

+ (id)peerPaymentActionViewControllerForAction:(unint64_t)a3 paymentPass:(id)a4 webService:(id)a5 passLibraryDataProvider:(id)a6 context:(int64_t)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (a3 == 1)
  {
    v14 = off_1E8005E28;
    goto LABEL_5;
  }

  if (a3 == 2)
  {
    v14 = off_1E8005E38;
LABEL_5:
    v15 = [objc_alloc(*v14) initWithPaymentPass:v11 webService:v12 passLibraryDataProvider:v13 context:a7];
    goto LABEL_7;
  }

  v15 = 0;
LABEL_7:

  return v15;
}

- (PKPeerPaymentActionViewController)initWithPaymentPass:(id)a3 webService:(id)a4 passLibraryDataProvider:(id)a5 context:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v29.receiver = self;
  v29.super_class = PKPeerPaymentActionViewController;
  v14 = [(PKPeerPaymentActionViewController *)&v29 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_pass, a3);
    objc_storeStrong(&v15->_webService, a4);
    v15->_context = a6;
    v16 = [MEMORY[0x1E696AB90] zero];
    currentAmount = v15->_currentAmount;
    v15->_currentAmount = v16;

    v18 = [MEMORY[0x1E696AB90] zero];
    cardBalance = v15->_cardBalance;
    v15->_cardBalance = v18;

    objc_storeWeak(&v15->_passLibraryDataProvider, v13);
    v20 = [[PKPeerPaymentActionController alloc] initWithPaymentPass:v11 webService:v12 context:v15->_context passLibraryDataProvider:v13 delegate:v15];
    actionController = v15->_actionController;
    v15->_actionController = v20;

    v22 = [MEMORY[0x1E696AD88] defaultCenter];
    v23 = *MEMORY[0x1E69BC378];
    v24 = [v12 targetDevice];
    [v22 addObserver:v15 selector:sel__handlePeerPaymentAccountDidChangeNotification_ name:v23 object:v24];

    v25 = [MEMORY[0x1E696AD88] defaultCenter];
    [v25 addObserver:v15 selector:sel__handleApplicationDidBecomeActiveNotification_ name:*MEMORY[0x1E69DDAB0] object:0];

    v26 = [(PKPeerPaymentWebService *)v15->_webService targetDevice];
    v27 = [v26 account];

    [(PKPeerPaymentActionViewController *)v15 setAccount:v27];
  }

  return v15;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PKPeerPaymentActionViewController;
  [(PKPeerPaymentActionViewController *)&v4 dealloc];
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = PKPeerPaymentActionViewController;
  [(PKPeerPaymentActionViewController *)&v5 loadView];
  v3 = [(PKPeerPaymentActionViewController *)self view];
  v4 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v3 setBackgroundColor:v4];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPeerPaymentActionViewController;
  [(PKPeerPaymentActionViewController *)&v4 viewWillDisappear:a3];
  self->_viewHasAppeared = 0;
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPeerPaymentActionViewController;
  [(PKPeerPaymentActionViewController *)&v4 viewDidAppear:a3];
  self->_viewHasAppeared = 1;
  if (!self->_dismissingViewController)
  {
    [(PKPeerPaymentActionViewController *)self updateFirstResponder];
  }
}

- (void)peerPaymentActionController:(id)a3 hasChangedState:(unint64_t)a4
{
  v6 = a3;
  if (a4 > 3)
  {
    if (a4 == 4)
    {
      v7 = v6;
      [(PKPeerPaymentActionViewController *)self _cancelledAction];
    }

    else
    {
      if (a4 != 5)
      {
        goto LABEL_10;
      }

      v7 = v6;
      [(PKPeerPaymentActionViewController *)self updateAccountValues];
    }

    goto LABEL_9;
  }

  if (!a4 || a4 == 3)
  {
    v7 = v6;
    [(PKPeerPaymentActionViewController *)self _performedAction];
LABEL_9:
    v6 = v7;
  }

LABEL_10:
}

- (void)peerPaymentActionController:(id)a3 requestPresentViewController:(id)a4
{
  v5 = a4;
  v6 = [(PKPeerPaymentActionViewController *)self navigationController];
  [v6 presentViewController:v5 animated:1 completion:0];
}

- (id)presentationSceneIdentifierForPeerPaymentActionController:(id)a3
{
  v3 = [(PKPeerPaymentActionViewController *)self view];
  v4 = [v3 window];
  v5 = [v4 windowScene];
  v6 = [v5 _sceneIdentifier];

  return v6;
}

- (void)_cancelledAction
{
  [(PKPeerPaymentActionViewController *)self willDismissViewController];
  v3 = [(PKPeerPaymentActionViewController *)self delegate];
  v5 = v3;
  if (v3)
  {
    [v3 peerPaymentActionViewControllerDidCancel:self];
  }

  else
  {
    v4 = [(PKPeerPaymentActionViewController *)self navigationController];
    [v4 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_performedAction
{
  [(PKPeerPaymentActionViewController *)self willDismissViewController];
  v3 = [(PKPeerPaymentActionViewController *)self delegate];
  v5 = v3;
  if (v3)
  {
    [v3 peerPaymentActionViewControllerDidPerformAction:self];
  }

  else
  {
    v4 = [(PKPeerPaymentActionViewController *)self navigationController];
    [v4 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)setControllerAction:(unint64_t)a3
{
  v5 = [(PKPeerPaymentActionViewController *)self actionController];
  [v5 setControllerAction:a3];

  [(PKPeerPaymentActionViewController *)self updateAccountValues];
}

- (unint64_t)controllerAction
{
  v2 = [(PKPeerPaymentActionViewController *)self actionController];
  v3 = [v2 controllerAction];

  return v3;
}

- (void)setAccount:(id)a3
{
  v5 = a3;
  if (self->_account != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_account, a3);
    [(PKPeerPaymentActionViewController *)self updateAccountValues];
    v6 = [(PKPeerPaymentActionViewController *)self viewIfLoaded];
    [v6 setNeedsLayout];

    v5 = v7;
  }
}

- (void)updateAccountValues
{
  v9 = [(PKPeerPaymentAccount *)self->_account currentBalance];
  v3 = [MEMORY[0x1E696AB90] zero];
  v4 = [(PKPeerPaymentActionViewController *)self feature];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 maximumAmount];
    v7 = [v5 minimumAmount];
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = [v9 amount];
  [(PKPeerPaymentActionViewController *)self setCardBalance:v8];

  [(PKPeerPaymentActionViewController *)self setMaxBalance:0];
  [(PKPeerPaymentActionViewController *)self setMinBalance:v3];
  [(PKPeerPaymentActionViewController *)self setMinLoadAmount:v7];
  [(PKPeerPaymentActionViewController *)self setMaxLoadAmount:v6];
}

- (PKPeerPaymentAccountFeatureDescriptor)feature
{
  v3 = [(PKPeerPaymentActionViewController *)self controllerAction];
  switch(v3)
  {
    case 3uLL:
      v4 = [(PKPeerPaymentAccount *)self->_account transferToBankFeatureDescriptor];
      break;
    case 2uLL:
      v4 = [(PKPeerPaymentAccount *)self->_account instantWithdrawalPromotionFeatureDescriptor];
      break;
    case 1uLL:
      v4 = [(PKPeerPaymentAccount *)self->_account loadFromCardFeatureDescriptor];
      break;
    default:
      v4 = 0;
      break;
  }

  return v4;
}

- (void)setMaxBalance:(id)a3
{
  obj = a3;
  v4 = [MEMORY[0x1E696AB90] zero];
  v5 = [(NSDecimalNumber *)obj isEqualToNumber:v4];

  if (v5)
  {

    v6 = 0;
  }

  else
  {
    v6 = obj;
  }

  if (v6 != self->_maxBalance)
  {
    obja = v6;
    v7 = [(NSDecimalNumber *)v6 isEqualToNumber:?];
    v6 = obja;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_maxBalance, obja);
      v6 = obja;
    }
  }
}

- (void)setMinBalance:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_minBalance != v5)
  {
    v8 = v5;
    v7 = [(NSDecimalNumber *)v5 isEqualToNumber:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_minBalance, a3);
      v6 = v8;
    }
  }
}

- (void)setMinLoadAmount:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_minLoadAmount != v5)
  {
    v8 = v5;
    v7 = [(NSDecimalNumber *)v5 isEqualToNumber:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_minLoadAmount, a3);
      v6 = v8;
    }
  }
}

- (void)setMaxLoadAmount:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_maxLoadAmount != v5)
  {
    v8 = v5;
    v7 = [(NSDecimalNumber *)v5 isEqualToNumber:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_maxLoadAmount, a3);
      v6 = v8;
    }
  }
}

- (void)setCardBalance:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_cardBalance != v5)
  {
    v12 = v5;
    v7 = [(NSDecimalNumber *)v5 isEqualToNumber:?];
    v6 = v12;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_cardBalance, a3);
      if (!self->_cardBalance || ([MEMORY[0x1E696AB90] notANumber], v8 = objc_claimAutoreleasedReturnValue(), v9 = -[NSDecimalNumber isEqual:](v12, "isEqual:", v8), v8, v6 = v12, v9))
      {
        v10 = [MEMORY[0x1E696AB90] zero];
        cardBalance = self->_cardBalance;
        self->_cardBalance = v10;

        v6 = v12;
      }
    }
  }
}

- (void)setCurrentAmount:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_currentAmount != v5)
  {
    v12 = v5;
    v7 = [(NSDecimalNumber *)v5 isEqualToNumber:?];
    v6 = v12;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_currentAmount, a3);
      if (!self->_currentAmount || ([MEMORY[0x1E696AB90] notANumber], v8 = objc_claimAutoreleasedReturnValue(), v9 = -[NSDecimalNumber isEqual:](v12, "isEqual:", v8), v8, v6 = v12, v9))
      {
        v10 = [MEMORY[0x1E696AB90] zero];
        currentAmount = self->_currentAmount;
        self->_currentAmount = v10;

        v6 = v12;
      }
    }
  }
}

- (void)_handlePeerPaymentAccountDidChangeNotification:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__PKPeerPaymentActionViewController__handlePeerPaymentAccountDidChangeNotification___block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __84__PKPeerPaymentActionViewController__handlePeerPaymentAccountDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1032) targetDevice];
  v3 = [v2 account];

  [*(a1 + 32) setAccount:v3];
}

- (void)_handleApplicationDidBecomeActiveNotification:(id)a3
{
  if (self->_viewHasAppeared)
  {
    [(PKPeerPaymentActionViewController *)self updateFirstResponder];
  }
}

- (id)cancelButton
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DC628];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __49__PKPeerPaymentActionViewController_cancelButton__block_invoke;
  v10 = &unk_1E8010A60;
  objc_copyWeak(&v11, &location);
  v3 = [v2 actionWithHandler:&v7];
  v4 = objc_alloc(MEMORY[0x1E69DC708]);
  v5 = [v4 initWithBarButtonSystemItem:1 primaryAction:{v3, v7, v8, v9, v10}];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v5;
}

void __49__PKPeerPaymentActionViewController_cancelButton__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cancelledAction];
}

- (PKPeerPaymentActionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PKPassLibraryDataProvider)passLibraryDataProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_passLibraryDataProvider);

  return WeakRetained;
}

@end