@interface PKTransactionAuthenticationPasscodeViewController
- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)result;
- (PKTransactionAuthenticationPasscodeViewController)initWithPassUniqueIdentifier:(id)identifier transactionIdentifier:(id)transactionIdentifier archivedAnalyticsSessionToken:(id)token;
- (PKTransactionAuthenticationPasscodeViewControllerDelegate)delegate;
- (unint64_t)supportedInterfaceOrientations;
- (void)_setRemoteVC:(id)c completion:(id)completion;
- (void)dealloc;
- (void)loadView;
- (void)passcodeViewControllerDidCancel;
- (void)passcodeViewControllerDidEndSessionExchange;
- (void)passcodeViewControllerDidGenerateEncryptedPasscode:(id)passcode;
- (void)passcodeViewControllerRequestSessionExchangeTokenWithHandler:(id)handler;
- (void)resetWithTransactionAuthenticationFailure:(int64_t)failure completion:(id)completion;
- (void)setDelegate:(id)delegate;
- (void)viewWillLayoutSubviews;
@end

@implementation PKTransactionAuthenticationPasscodeViewController

- (PKTransactionAuthenticationPasscodeViewController)initWithPassUniqueIdentifier:(id)identifier transactionIdentifier:(id)transactionIdentifier archivedAnalyticsSessionToken:(id)token
{
  identifierCopy = identifier;
  transactionIdentifierCopy = transactionIdentifier;
  tokenCopy = token;
  v20.receiver = self;
  v20.super_class = PKTransactionAuthenticationPasscodeViewController;
  v12 = [(PKTransactionAuthenticationPasscodeViewController *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_passUniqueIdentifier, identifier);
    objc_storeStrong(&v13->_transactionIdentifier, transactionIdentifier);
    objc_storeStrong(&v13->_archivedAnalyticsSessionToken, token);
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
    invoke = [(_UIAsyncInvocation *)remoteVCRequest invoke];
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

- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)result
{
  if (self->_remoteVC != container)
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
  view = [(PKTransactionAuthenticationPasscodeViewController *)self view];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [view setBackgroundColor:clearColor];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKTransactionAuthenticationPasscodeViewController;
  [(PKTransactionAuthenticationPasscodeViewController *)&v5 viewWillLayoutSubviews];
  view = [(PKRemoteTransactionAuthenticationPasscodeViewController *)self->_remoteVC view];
  view2 = [(PKTransactionAuthenticationPasscodeViewController *)self view];
  [view2 bounds];
  [view setFrame:?];
}

- (void)resetWithTransactionAuthenticationFailure:(int64_t)failure completion:(id)completion
{
  completionCopy = completion;
  remoteVC = self->_remoteVC;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __106__PKTransactionAuthenticationPasscodeViewController_resetWithTransactionAuthenticationFailure_completion___block_invoke;
  v12[3] = &unk_1E8012C28;
  v8 = completionCopy;
  v13 = v8;
  v9 = [(_UIRemoteViewController *)remoteVC serviceViewControllerProxyWithErrorHandler:v12];
  if (v9)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __106__PKTransactionAuthenticationPasscodeViewController_resetWithTransactionAuthenticationFailure_completion___block_invoke_2;
    v10[3] = &unk_1E8010AD8;
    v11 = v8;
    [v9 resetWithTransactionAuthenticationFailure:failure completion:v10];
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

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock(&self->_delegateLock);
  objc_storeWeak(&self->_delegate, delegateCopy);

  os_unfair_lock_unlock(&self->_delegateLock);
}

- (PKTransactionAuthenticationPasscodeViewControllerDelegate)delegate
{
  os_unfair_lock_lock(&self->_delegateLock);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->_delegateLock);

  return WeakRetained;
}

- (void)passcodeViewControllerRequestSessionExchangeTokenWithHandler:(id)handler
{
  handlerCopy = handler;
  delegate = [(PKTransactionAuthenticationPasscodeViewController *)self delegate];
  [delegate passcodeViewController:self requestSessionExchangeTokenWithHandler:handlerCopy];
}

- (void)passcodeViewControllerDidEndSessionExchange
{
  delegate = [(PKTransactionAuthenticationPasscodeViewController *)self delegate];
  [delegate passcodeViewControllerDidEndSessionExchange:self];
}

- (void)passcodeViewControllerDidCancel
{
  delegate = [(PKTransactionAuthenticationPasscodeViewController *)self delegate];
  [delegate passcodeViewControllerDidCancel:self];
}

- (void)passcodeViewControllerDidGenerateEncryptedPasscode:(id)passcode
{
  passcodeCopy = passcode;
  delegate = [(PKTransactionAuthenticationPasscodeViewController *)self delegate];
  [delegate passcodeViewController:self didGenerateEncryptedPasscode:passcodeCopy];
}

- (void)_setRemoteVC:(id)c completion:(id)completion
{
  cCopy = c;
  completionCopy = completion;
  objc_storeStrong(&self->_remoteVC, c);
  [(PKRemoteTransactionAuthenticationPasscodeViewController *)self->_remoteVC setDelegate:self];
  [(PKTransactionAuthenticationPasscodeViewController *)self addChildViewController:self->_remoteVC];
  view = [(PKRemoteTransactionAuthenticationPasscodeViewController *)self->_remoteVC view];
  view2 = [(PKTransactionAuthenticationPasscodeViewController *)self view];
  [view2 addSubview:view];
  [view2 setNeedsLayout];
  [view2 layoutIfNeeded];
  [(_UIRemoteViewController *)self->_remoteVC didMoveToParentViewController:self];
  [(PKTransactionAuthenticationPasscodeViewController *)self setNeedsStatusBarAppearanceUpdate];
  [(PKTransactionAuthenticationPasscodeViewController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
  remoteVC = self->_remoteVC;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __77__PKTransactionAuthenticationPasscodeViewController__setRemoteVC_completion___block_invoke;
  v19[3] = &unk_1E8012C28;
  v12 = completionCopy;
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