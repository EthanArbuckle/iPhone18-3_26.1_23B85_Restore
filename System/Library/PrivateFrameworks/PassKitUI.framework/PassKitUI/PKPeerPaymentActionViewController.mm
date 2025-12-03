@interface PKPeerPaymentActionViewController
+ (id)peerPaymentActionViewControllerForAction:(unint64_t)action paymentPass:(id)pass webService:(id)service passLibraryDataProvider:(id)provider context:(int64_t)context;
- (PKPassLibraryDataProvider)passLibraryDataProvider;
- (PKPeerPaymentAccountFeatureDescriptor)feature;
- (PKPeerPaymentActionViewController)initWithPaymentPass:(id)pass webService:(id)service passLibraryDataProvider:(id)provider context:(int64_t)context;
- (PKPeerPaymentActionViewControllerDelegate)delegate;
- (id)cancelButton;
- (id)presentationSceneIdentifierForPeerPaymentActionController:(id)controller;
- (unint64_t)controllerAction;
- (void)_cancelledAction;
- (void)_handleApplicationDidBecomeActiveNotification:(id)notification;
- (void)_handlePeerPaymentAccountDidChangeNotification:(id)notification;
- (void)_performedAction;
- (void)dealloc;
- (void)loadView;
- (void)peerPaymentActionController:(id)controller hasChangedState:(unint64_t)state;
- (void)peerPaymentActionController:(id)controller requestPresentViewController:(id)viewController;
- (void)setAccount:(id)account;
- (void)setCardBalance:(id)balance;
- (void)setControllerAction:(unint64_t)action;
- (void)setCurrentAmount:(id)amount;
- (void)setMaxBalance:(id)balance;
- (void)setMaxLoadAmount:(id)amount;
- (void)setMinBalance:(id)balance;
- (void)setMinLoadAmount:(id)amount;
- (void)updateAccountValues;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PKPeerPaymentActionViewController

+ (id)peerPaymentActionViewControllerForAction:(unint64_t)action paymentPass:(id)pass webService:(id)service passLibraryDataProvider:(id)provider context:(int64_t)context
{
  passCopy = pass;
  serviceCopy = service;
  providerCopy = provider;
  if (action == 1)
  {
    v14 = off_1E8005E28;
    goto LABEL_5;
  }

  if (action == 2)
  {
    v14 = off_1E8005E38;
LABEL_5:
    v15 = [objc_alloc(*v14) initWithPaymentPass:passCopy webService:serviceCopy passLibraryDataProvider:providerCopy context:context];
    goto LABEL_7;
  }

  v15 = 0;
LABEL_7:

  return v15;
}

- (PKPeerPaymentActionViewController)initWithPaymentPass:(id)pass webService:(id)service passLibraryDataProvider:(id)provider context:(int64_t)context
{
  passCopy = pass;
  serviceCopy = service;
  providerCopy = provider;
  v29.receiver = self;
  v29.super_class = PKPeerPaymentActionViewController;
  v14 = [(PKPeerPaymentActionViewController *)&v29 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_pass, pass);
    objc_storeStrong(&v15->_webService, service);
    v15->_context = context;
    zero = [MEMORY[0x1E696AB90] zero];
    currentAmount = v15->_currentAmount;
    v15->_currentAmount = zero;

    zero2 = [MEMORY[0x1E696AB90] zero];
    cardBalance = v15->_cardBalance;
    v15->_cardBalance = zero2;

    objc_storeWeak(&v15->_passLibraryDataProvider, providerCopy);
    v20 = [[PKPeerPaymentActionController alloc] initWithPaymentPass:passCopy webService:serviceCopy context:v15->_context passLibraryDataProvider:providerCopy delegate:v15];
    actionController = v15->_actionController;
    v15->_actionController = v20;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v23 = *MEMORY[0x1E69BC378];
    targetDevice = [serviceCopy targetDevice];
    [defaultCenter addObserver:v15 selector:sel__handlePeerPaymentAccountDidChangeNotification_ name:v23 object:targetDevice];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v15 selector:sel__handleApplicationDidBecomeActiveNotification_ name:*MEMORY[0x1E69DDAB0] object:0];

    targetDevice2 = [(PKPeerPaymentWebService *)v15->_webService targetDevice];
    account = [targetDevice2 account];

    [(PKPeerPaymentActionViewController *)v15 setAccount:account];
  }

  return v15;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PKPeerPaymentActionViewController;
  [(PKPeerPaymentActionViewController *)&v4 dealloc];
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = PKPeerPaymentActionViewController;
  [(PKPeerPaymentActionViewController *)&v5 loadView];
  view = [(PKPeerPaymentActionViewController *)self view];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [view setBackgroundColor:systemBackgroundColor];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PKPeerPaymentActionViewController;
  [(PKPeerPaymentActionViewController *)&v4 viewWillDisappear:disappear];
  self->_viewHasAppeared = 0;
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKPeerPaymentActionViewController;
  [(PKPeerPaymentActionViewController *)&v4 viewDidAppear:appear];
  self->_viewHasAppeared = 1;
  if (!self->_dismissingViewController)
  {
    [(PKPeerPaymentActionViewController *)self updateFirstResponder];
  }
}

- (void)peerPaymentActionController:(id)controller hasChangedState:(unint64_t)state
{
  controllerCopy = controller;
  if (state > 3)
  {
    if (state == 4)
    {
      v7 = controllerCopy;
      [(PKPeerPaymentActionViewController *)self _cancelledAction];
    }

    else
    {
      if (state != 5)
      {
        goto LABEL_10;
      }

      v7 = controllerCopy;
      [(PKPeerPaymentActionViewController *)self updateAccountValues];
    }

    goto LABEL_9;
  }

  if (!state || state == 3)
  {
    v7 = controllerCopy;
    [(PKPeerPaymentActionViewController *)self _performedAction];
LABEL_9:
    controllerCopy = v7;
  }

LABEL_10:
}

- (void)peerPaymentActionController:(id)controller requestPresentViewController:(id)viewController
{
  viewControllerCopy = viewController;
  navigationController = [(PKPeerPaymentActionViewController *)self navigationController];
  [navigationController presentViewController:viewControllerCopy animated:1 completion:0];
}

- (id)presentationSceneIdentifierForPeerPaymentActionController:(id)controller
{
  view = [(PKPeerPaymentActionViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  _sceneIdentifier = [windowScene _sceneIdentifier];

  return _sceneIdentifier;
}

- (void)_cancelledAction
{
  [(PKPeerPaymentActionViewController *)self willDismissViewController];
  delegate = [(PKPeerPaymentActionViewController *)self delegate];
  v5 = delegate;
  if (delegate)
  {
    [delegate peerPaymentActionViewControllerDidCancel:self];
  }

  else
  {
    navigationController = [(PKPeerPaymentActionViewController *)self navigationController];
    [navigationController dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_performedAction
{
  [(PKPeerPaymentActionViewController *)self willDismissViewController];
  delegate = [(PKPeerPaymentActionViewController *)self delegate];
  v5 = delegate;
  if (delegate)
  {
    [delegate peerPaymentActionViewControllerDidPerformAction:self];
  }

  else
  {
    navigationController = [(PKPeerPaymentActionViewController *)self navigationController];
    [navigationController dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)setControllerAction:(unint64_t)action
{
  actionController = [(PKPeerPaymentActionViewController *)self actionController];
  [actionController setControllerAction:action];

  [(PKPeerPaymentActionViewController *)self updateAccountValues];
}

- (unint64_t)controllerAction
{
  actionController = [(PKPeerPaymentActionViewController *)self actionController];
  controllerAction = [actionController controllerAction];

  return controllerAction;
}

- (void)setAccount:(id)account
{
  accountCopy = account;
  if (self->_account != accountCopy)
  {
    v7 = accountCopy;
    objc_storeStrong(&self->_account, account);
    [(PKPeerPaymentActionViewController *)self updateAccountValues];
    viewIfLoaded = [(PKPeerPaymentActionViewController *)self viewIfLoaded];
    [viewIfLoaded setNeedsLayout];

    accountCopy = v7;
  }
}

- (void)updateAccountValues
{
  currentBalance = [(PKPeerPaymentAccount *)self->_account currentBalance];
  zero = [MEMORY[0x1E696AB90] zero];
  feature = [(PKPeerPaymentActionViewController *)self feature];
  v5 = feature;
  if (feature)
  {
    maximumAmount = [feature maximumAmount];
    minimumAmount = [v5 minimumAmount];
  }

  else
  {
    minimumAmount = 0;
    maximumAmount = 0;
  }

  amount = [currentBalance amount];
  [(PKPeerPaymentActionViewController *)self setCardBalance:amount];

  [(PKPeerPaymentActionViewController *)self setMaxBalance:0];
  [(PKPeerPaymentActionViewController *)self setMinBalance:zero];
  [(PKPeerPaymentActionViewController *)self setMinLoadAmount:minimumAmount];
  [(PKPeerPaymentActionViewController *)self setMaxLoadAmount:maximumAmount];
}

- (PKPeerPaymentAccountFeatureDescriptor)feature
{
  controllerAction = [(PKPeerPaymentActionViewController *)self controllerAction];
  switch(controllerAction)
  {
    case 3uLL:
      transferToBankFeatureDescriptor = [(PKPeerPaymentAccount *)self->_account transferToBankFeatureDescriptor];
      break;
    case 2uLL:
      transferToBankFeatureDescriptor = [(PKPeerPaymentAccount *)self->_account instantWithdrawalPromotionFeatureDescriptor];
      break;
    case 1uLL:
      transferToBankFeatureDescriptor = [(PKPeerPaymentAccount *)self->_account loadFromCardFeatureDescriptor];
      break;
    default:
      transferToBankFeatureDescriptor = 0;
      break;
  }

  return transferToBankFeatureDescriptor;
}

- (void)setMaxBalance:(id)balance
{
  obj = balance;
  zero = [MEMORY[0x1E696AB90] zero];
  v5 = [(NSDecimalNumber *)obj isEqualToNumber:zero];

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

- (void)setMinBalance:(id)balance
{
  balanceCopy = balance;
  v6 = balanceCopy;
  if (self->_minBalance != balanceCopy)
  {
    v8 = balanceCopy;
    v7 = [(NSDecimalNumber *)balanceCopy isEqualToNumber:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_minBalance, balance);
      v6 = v8;
    }
  }
}

- (void)setMinLoadAmount:(id)amount
{
  amountCopy = amount;
  v6 = amountCopy;
  if (self->_minLoadAmount != amountCopy)
  {
    v8 = amountCopy;
    v7 = [(NSDecimalNumber *)amountCopy isEqualToNumber:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_minLoadAmount, amount);
      v6 = v8;
    }
  }
}

- (void)setMaxLoadAmount:(id)amount
{
  amountCopy = amount;
  v6 = amountCopy;
  if (self->_maxLoadAmount != amountCopy)
  {
    v8 = amountCopy;
    v7 = [(NSDecimalNumber *)amountCopy isEqualToNumber:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_maxLoadAmount, amount);
      v6 = v8;
    }
  }
}

- (void)setCardBalance:(id)balance
{
  balanceCopy = balance;
  v6 = balanceCopy;
  if (self->_cardBalance != balanceCopy)
  {
    v12 = balanceCopy;
    v7 = [(NSDecimalNumber *)balanceCopy isEqualToNumber:?];
    v6 = v12;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_cardBalance, balance);
      if (!self->_cardBalance || ([MEMORY[0x1E696AB90] notANumber], v8 = objc_claimAutoreleasedReturnValue(), v9 = -[NSDecimalNumber isEqual:](v12, "isEqual:", v8), v8, v6 = v12, v9))
      {
        zero = [MEMORY[0x1E696AB90] zero];
        cardBalance = self->_cardBalance;
        self->_cardBalance = zero;

        v6 = v12;
      }
    }
  }
}

- (void)setCurrentAmount:(id)amount
{
  amountCopy = amount;
  v6 = amountCopy;
  if (self->_currentAmount != amountCopy)
  {
    v12 = amountCopy;
    v7 = [(NSDecimalNumber *)amountCopy isEqualToNumber:?];
    v6 = v12;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_currentAmount, amount);
      if (!self->_currentAmount || ([MEMORY[0x1E696AB90] notANumber], v8 = objc_claimAutoreleasedReturnValue(), v9 = -[NSDecimalNumber isEqual:](v12, "isEqual:", v8), v8, v6 = v12, v9))
      {
        zero = [MEMORY[0x1E696AB90] zero];
        currentAmount = self->_currentAmount;
        self->_currentAmount = zero;

        v6 = v12;
      }
    }
  }
}

- (void)_handlePeerPaymentAccountDidChangeNotification:(id)notification
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

- (void)_handleApplicationDidBecomeActiveNotification:(id)notification
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