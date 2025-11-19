@interface PKTransactionAuthenticationPasscodeViewController
- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)result;
- (PKTransactionAuthenticationPasscodeViewController)initWithPassUniqueIdentifier:(id)a3 transactionIdentifier:(id)a4 archivedAnalyticsSessionToken:(id)a5;
- (PKTransactionAuthenticationPasscodeViewControllerDelegate)delegate;
- (unint64_t)supportedInterfaceOrientations;
- (void)_setRemoteVC:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)loadView;
- (void)passcodeViewControllerDidCancel;
- (void)passcodeViewControllerDidEndSessionExchange;
- (void)passcodeViewControllerDidGenerateEncryptedPasscode:(id)a3;
- (void)passcodeViewControllerRequestSessionExchangeTokenWithHandler:(id)a3;
- (void)resetWithTransactionAuthenticationFailure:(int64_t)a3 completion:(id)a4;
- (void)setDelegate:(id)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation PKTransactionAuthenticationPasscodeViewController

- (PKTransactionAuthenticationPasscodeViewController)initWithPassUniqueIdentifier:(id)a3 transactionIdentifier:(id)a4 archivedAnalyticsSessionToken:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = PKTransactionAuthenticationPasscodeViewController;
  v12 = [(PKTransactionAuthenticationPasscodeViewController *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_passUniqueIdentifier, a3);
    objc_storeStrong(&v13->_transactionIdentifier, a4);
    objc_storeStrong(&v13->_archivedAnalyticsSessionToken, a5);
    v13->_delegateLock._os_unfair_lock_opaque = 0;
    objc_initWeak(&location, v13);
    [(PKTransactionAuthenticationPasscodeViewController *)v13 _beginDelayingPresentation:0 cancellationHandler:10.0];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __134__PKTransactionAuthenticationPasscodeViewController_initWithPassUniqueIdentifier_transactionIdentifier_archivedAnalyticsSessionToken___block_invoke;
    v17[3] = &unk_1E8012C00;
    objc_copyWeak(&v18, &location);
    v14 = [PKRemoteTransactionAuthenticationPasscodeViewController requestViewController:@"PKServiceTransactionAuthenticationPasscodeViewController" fromServiceWithBundleIdentifier:@"com.apple.PassbookSecureUIService" connectionHandler:v17];
    remoteVCRequest = v13->_remoteVCRequest;
    v13->_remoteVCRequest = v14;

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v13;
}

void __134__PKTransactionAuthenticationPasscodeViewController_initWithPassUniqueIdentifier_transactionIdentifier_archivedAnalyticsSessionToken___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = *(WeakRetained + 124);
    *(WeakRetained + 124) = 0;

    if (v5)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __134__PKTransactionAuthenticationPasscodeViewController_initWithPassUniqueIdentifier_transactionIdentifier_archivedAnalyticsSessionToken___block_invoke_2;
      v11[3] = &unk_1E8011180;
      objc_copyWeak(&v12, (a1 + 32));
      [v8 _setRemoteVC:v5 completion:v11];
      objc_destroyWeak(&v12);
    }

    else
    {
      [v8 _endDelayingPresentation];
      v10 = [v8 delegate];
      [v10 passcodeViewControllerDidCancel:v8];
    }
  }
}

void __134__PKTransactionAuthenticationPasscodeViewController_initWithPassUniqueIdentifier_transactionIdentifier_archivedAnalyticsSessionToken___block_invoke_2(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained _endDelayingPresentation];
    WeakRetained = v5;
    if ((a2 & 1) == 0)
    {
      v4 = [v5 delegate];
      [v4 passcodeViewControllerDidCancel:v5];

      WeakRetained = v5;
    }
  }
}

- (void)dealloc
{
  remoteVCRequest = self->_remoteVCRequest;
  if (remoteVCRequest)
  {
    v4 = [(_UIAsyncInvocation *)remoteVCRequest invoke];
    v5 = self->_remoteVCRequest;
    self->_remoteVCRequest = 0;
  }

  v6.receiver = self;
  v6.super_class = PKTransactionAuthenticationPasscodeViewController;
  [(PKTransactionAuthenticationPasscodeViewController *)&v6 dealloc];
}

- (unint64_t)supportedInterfaceOrientations
{
  remoteVC = self->_remoteVC;
  if (remoteVC)
  {
    return [(_UIRemoteViewController *)remoteVC supportedInterfaceOrientations];
  }

  else
  {
    return 2;
  }
}

- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)result
{
  if (self->_remoteVC != a3)
  {
    v7 = v4;
    v8 = v5;
    v6.receiver = self;
    v6.super_class = PKTransactionAuthenticationPasscodeViewController;
    [(PKTransactionAuthenticationPasscodeViewController *)&v6 sizeForChildContentContainer:result.width withParentContainerSize:result.height];
  }

  return result;
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = PKTransactionAuthenticationPasscodeViewController;
  [(PKTransactionAuthenticationPasscodeViewController *)&v5 loadView];
  v3 = [(PKTransactionAuthenticationPasscodeViewController *)self view];
  v4 = [MEMORY[0x1E69DC888] clearColor];
  [v3 setBackgroundColor:v4];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKTransactionAuthenticationPasscodeViewController;
  [(PKTransactionAuthenticationPasscodeViewController *)&v5 viewWillLayoutSubviews];
  v3 = [(PKRemoteTransactionAuthenticationPasscodeViewController *)self->_remoteVC view];
  v4 = [(PKTransactionAuthenticationPasscodeViewController *)self view];
  [v4 bounds];
  [v3 setFrame:?];
}

- (void)resetWithTransactionAuthenticationFailure:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  remoteVC = self->_remoteVC;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __106__PKTransactionAuthenticationPasscodeViewController_resetWithTransactionAuthenticationFailure_completion___block_invoke;
  v12[3] = &unk_1E8012C28;
  v8 = v6;
  v13 = v8;
  v9 = [(_UIRemoteViewController *)remoteVC serviceViewControllerProxyWithErrorHandler:v12];
  if (v9)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __106__PKTransactionAuthenticationPasscodeViewController_resetWithTransactionAuthenticationFailure_completion___block_invoke_2;
    v10[3] = &unk_1E8010AD8;
    v11 = v8;
    [v9 resetWithTransactionAuthenticationFailure:a3 completion:v10];
  }

  else if (v8)
  {
    (*(v8 + 2))(v8, 0);
  }
}

uint64_t __106__PKTransactionAuthenticationPasscodeViewController_resetWithTransactionAuthenticationFailure_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __106__PKTransactionAuthenticationPasscodeViewController_resetWithTransactionAuthenticationFailure_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_delegateLock);
  objc_storeWeak(&self->_delegate, v4);

  os_unfair_lock_unlock(&self->_delegateLock);
}

- (PKTransactionAuthenticationPasscodeViewControllerDelegate)delegate
{
  os_unfair_lock_lock(&self->_delegateLock);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->_delegateLock);

  return WeakRetained;
}

- (void)passcodeViewControllerRequestSessionExchangeTokenWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(PKTransactionAuthenticationPasscodeViewController *)self delegate];
  [v5 passcodeViewController:self requestSessionExchangeTokenWithHandler:v4];
}

- (void)passcodeViewControllerDidEndSessionExchange
{
  v3 = [(PKTransactionAuthenticationPasscodeViewController *)self delegate];
  [v3 passcodeViewControllerDidEndSessionExchange:self];
}

- (void)passcodeViewControllerDidCancel
{
  v3 = [(PKTransactionAuthenticationPasscodeViewController *)self delegate];
  [v3 passcodeViewControllerDidCancel:self];
}

- (void)passcodeViewControllerDidGenerateEncryptedPasscode:(id)a3
{
  v4 = a3;
  v5 = [(PKTransactionAuthenticationPasscodeViewController *)self delegate];
  [v5 passcodeViewController:self didGenerateEncryptedPasscode:v4];
}

- (void)_setRemoteVC:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_storeStrong(&self->_remoteVC, a3);
  [(PKRemoteTransactionAuthenticationPasscodeViewController *)self->_remoteVC setDelegate:self];
  [(PKTransactionAuthenticationPasscodeViewController *)self addChildViewController:self->_remoteVC];
  v9 = [(PKRemoteTransactionAuthenticationPasscodeViewController *)self->_remoteVC view];
  v10 = [(PKTransactionAuthenticationPasscodeViewController *)self view];
  [v10 addSubview:v9];
  [v10 setNeedsLayout];
  [v10 layoutIfNeeded];
  [(_UIRemoteViewController *)self->_remoteVC didMoveToParentViewController:self];
  [(PKTransactionAuthenticationPasscodeViewController *)self setNeedsStatusBarAppearanceUpdate];
  [(PKTransactionAuthenticationPasscodeViewController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
  remoteVC = self->_remoteVC;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __77__PKTransactionAuthenticationPasscodeViewController__setRemoteVC_completion___block_invoke;
  v19[3] = &unk_1E8012C28;
  v12 = v8;
  v20 = v12;
  v13 = [(_UIRemoteViewController *)remoteVC serviceViewControllerProxyWithErrorHandler:v19];
  if (v13)
  {
    passUniqueIdentifier = self->_passUniqueIdentifier;
    transactionIdentifier = self->_transactionIdentifier;
    archivedAnalyticsSessionToken = self->_archivedAnalyticsSessionToken;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __77__PKTransactionAuthenticationPasscodeViewController__setRemoteVC_completion___block_invoke_3;
    v17[3] = &unk_1E8010AD8;
    v18 = v12;
    [v13 setPassUniqueIdentifier:passUniqueIdentifier transactionIdentifier:transactionIdentifier archivedAnalyticsSessionToken:archivedAnalyticsSessionToken completionHandler:v17];
  }

  else if (v12)
  {
    (*(v12 + 2))(v12, 0);
  }
}

void __77__PKTransactionAuthenticationPasscodeViewController__setRemoteVC_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__PKTransactionAuthenticationPasscodeViewController__setRemoteVC_completion___block_invoke_2;
    block[3] = &unk_1E8010B50;
    v3 = v1;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __77__PKTransactionAuthenticationPasscodeViewController__setRemoteVC_completion___block_invoke_3(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __77__PKTransactionAuthenticationPasscodeViewController__setRemoteVC_completion___block_invoke_4;
    v4[3] = &unk_1E8010FA8;
    v5 = v2;
    v6 = a2;
    dispatch_async(MEMORY[0x1E69E96A0], v4);
  }
}

@end