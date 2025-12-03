@interface PKPeerPaymentRegistrationViewController
- (PKPeerPaymentRegistrationViewController)initWithUserInfo:(id)info;
- (unint64_t)supportedInterfaceOrientations;
- (void)_dismiss;
- (void)setDismissHandler:(id)handler;
- (void)startRegistrationFlowWithCompletion:(id)completion;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PKPeerPaymentRegistrationViewController

- (PKPeerPaymentRegistrationViewController)initWithUserInfo:(id)info
{
  infoCopy = info;
  v9.receiver = self;
  v9.super_class = PKPeerPaymentRegistrationViewController;
  v6 = [(PKPeerPaymentRegistrationViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userInfo, info);
  }

  return v7;
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = PKPeerPaymentRegistrationViewController;
  [(PKPeerPaymentRegistrationViewController *)&v2 viewDidLoad];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PKPeerPaymentRegistrationViewController;
  [(PKPeerPaymentRegistrationViewController *)&v4 viewWillDisappear:disappear];
  [(PKPeerPaymentRegistrationViewController *)self _dismiss];
}

- (unint64_t)supportedInterfaceOrientations
{
  if ([(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts])
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)startRegistrationFlowWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [[PKPeerPaymentRegistrationFlowController alloc] initWithUserInfo:self->_userInfo setupDelegate:self];
  flowController = self->_flowController;
  self->_flowController = v5;

  objc_initWeak(&location, self);
  v7 = self->_flowController;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__PKPeerPaymentRegistrationViewController_startRegistrationFlowWithCompletion___block_invoke;
  v9[3] = &unk_1E8018450;
  objc_copyWeak(&v11, &location);
  v8 = completionCopy;
  v10 = v8;
  [(PKPeerPaymentRegistrationFlowController *)v7 preflightWithCompletion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __79__PKPeerPaymentRegistrationViewController_startRegistrationFlowWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__PKPeerPaymentRegistrationViewController_startRegistrationFlowWithCompletion___block_invoke_2;
  block[3] = &unk_1E80111F8;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
}

void __79__PKPeerPaymentRegistrationViewController_startRegistrationFlowWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && (v3 = *(a1 + 32)) != 0)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __79__PKPeerPaymentRegistrationViewController_startRegistrationFlowWithCompletion___block_invoke_3;
    v5[3] = &unk_1E8010B50;
    v6 = *(a1 + 40);
    [WeakRetained presentViewController:v3 animated:1 completion:v5];
  }

  else
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, 0);
    }
  }
}

uint64_t __79__PKPeerPaymentRegistrationViewController_startRegistrationFlowWithCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)setDismissHandler:(id)handler
{
  if (!self->_dismissed)
  {
    v5 = _Block_copy(handler);
    dismissHandler = self->_dismissHandler;
    self->_dismissHandler = v5;
  }
}

- (void)_dismiss
{
  if (!self->_dismissed)
  {
    objc_initWeak(&location, self);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __51__PKPeerPaymentRegistrationViewController__dismiss__block_invoke;
    v3[3] = &unk_1E8010998;
    objc_copyWeak(&v4, &location);
    [(PKPeerPaymentRegistrationViewController *)self dismissViewControllerAnimated:1 completion:v3];
    self->_dismissed = 1;
    objc_destroyWeak(&v4);
    objc_destroyWeak(&location);
  }
}

void __51__PKPeerPaymentRegistrationViewController__dismiss__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[126];
    if (v3)
    {
      v5 = v2;
      (*(v3 + 16))();
      v4 = v5[126];
      v5[126] = 0;

      v2 = v5;
    }
  }
}

@end