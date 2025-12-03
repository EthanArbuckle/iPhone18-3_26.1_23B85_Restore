@interface PKShareSecureElementPassViewController
- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)result;
- (PKShareSecureElementPassViewController)initWithSecureElementPass:(id)pass environment:(unint64_t)environment isFromPeopleScreen:(BOOL)screen delegate:(id)delegate;
- (id)delegate;
- (void)_addRemoteVCToView;
- (void)_remoteDidGetConfigured;
- (void)dealloc;
- (void)didCreateShareURL:(id)l activationCode:(id)code error:(id)error;
- (void)didFinishShareWithDidUserShare:(BOOL)share error:(id)error;
- (void)loadRemoteViewController;
- (void)loadView;
- (void)setPromptToShareURL:(BOOL)promptToShareURL;
- (void)setRemoteVC:(id)c completionHandler:(id)handler;
- (void)viewWillLayoutSubviews;
@end

@implementation PKShareSecureElementPassViewController

- (PKShareSecureElementPassViewController)initWithSecureElementPass:(id)pass environment:(unint64_t)environment isFromPeopleScreen:(BOOL)screen delegate:(id)delegate
{
  passCopy = pass;
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = PKShareSecureElementPassViewController;
  v13 = [(PKShareSecureElementPassViewController *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_pass, pass);
    v14->_environment = environment;
    v14->_isFromPeopleScreen = screen;
    objc_storeWeak(&v14->_delegate, delegateCopy);
    v14->_promptToShareURL = 1;
    [(PKShareSecureElementPassViewController *)v14 loadRemoteViewController];
  }

  return v14;
}

- (void)dealloc
{
  invoke = [(_UIAsyncInvocation *)self->_remoteVCRequest invoke];
  remoteVCRequest = self->_remoteVCRequest;
  self->_remoteVCRequest = 0;

  v5.receiver = self;
  v5.super_class = PKShareSecureElementPassViewController;
  [(PKShareSecureElementPassViewController *)&v5 dealloc];
}

- (void)loadRemoteViewController
{
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__PKShareSecureElementPassViewController_loadRemoteViewController__block_invoke;
  v10[3] = &unk_1E8015460;
  v10[4] = self;
  [(PKShareSecureElementPassViewController *)self _beginDelayingPresentation:v10 cancellationHandler:10.0];
  isCarKeyPass = [(PKSecureElementPass *)self->_pass isCarKeyPass];
  v4 = MEMORY[0x1E69BC530];
  if (!isCarKeyPass)
  {
    v4 = MEMORY[0x1E69BB800];
  }

  v5 = *v4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__PKShareSecureElementPassViewController_loadRemoteViewController__block_invoke_82;
  v8[3] = &unk_1E8015488;
  v8[4] = self;
  objc_copyWeak(&v9, &location);
  v6 = [PKShareSecureElementPassRemoteViewController requestViewController:@"PKRemoteShareSecureElementPassViewController" fromServiceWithBundleIdentifier:v5 connectionHandler:v8];
  remoteVCRequest = self->_remoteVCRequest;
  self->_remoteVCRequest = v6;

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

uint64_t __66__PKShareSecureElementPassViewController_loadRemoteViewController__block_invoke(uint64_t a1, int a2)
{
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "ShareSecureElementPass: Timed out while presenting share pass view controller", v7, 2u);
  }

  v5 = [*(*(a1 + 32) + 1016) invoke];
  return a2 ^ 1u;
}

void __66__PKShareSecureElementPassViewController_loadRemoteViewController__block_invoke_82(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 1016);
  *(v7 + 1016) = 0;

  if (!v5 || v6)
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v6;
      _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "ShareSecureElementPass: Failed to load remote view controller: %@", buf, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _endDelayingPresentation];

    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BC428] code:1 userInfo:0];
    v13 = objc_loadWeakRetained((a1 + 40));
    [v13 didFinishShareWithDidUserShare:0 error:v12];
  }

  else
  {
    v9 = *(a1 + 32);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __66__PKShareSecureElementPassViewController_loadRemoteViewController__block_invoke_2;
    v14[3] = &unk_1E8011180;
    objc_copyWeak(&v15, (a1 + 40));
    [v9 setRemoteVC:v5 completionHandler:v14];
    objc_destroyWeak(&v15);
  }
}

void __66__PKShareSecureElementPassViewController_loadRemoteViewController__block_invoke_2(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _endDelayingPresentation];

  if (a2)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    [v5 _addRemoteVCToView];

    v7 = objc_loadWeakRetained((a1 + 32));
    [v7 _remoteDidGetConfigured];
  }

  else
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BC428] code:1 userInfo:0];
    v6 = objc_loadWeakRetained((a1 + 32));
    [v6 didFinishShareWithDidUserShare:0 error:v7];
  }
}

- (void)setRemoteVC:(id)c completionHandler:(id)handler
{
  cCopy = c;
  handlerCopy = handler;
  objc_storeStrong(&self->_remoteVC, c);
  remoteVC = self->_remoteVC;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __72__PKShareSecureElementPassViewController_setRemoteVC_completionHandler___block_invoke;
  v24[3] = &unk_1E8012C28;
  v10 = handlerCopy;
  v25 = v10;
  v11 = [(_UIRemoteViewController *)remoteVC serviceViewControllerProxyWithErrorHandler:v24];
  if (v11)
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    fixedCoordinateSpace = [mainScreen fixedCoordinateSpace];
    [fixedCoordinateSpace bounds];
    v15 = v14;
    v17 = v16;
    [mainScreen scale];
    [v11 setDisplayPropertiesWithScreenSize:v15 scale:{v17, v18}];

    pass = self->_pass;
    environment = self->_environment;
    isFromPeopleScreen = self->_isFromPeopleScreen;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __72__PKShareSecureElementPassViewController_setRemoteVC_completionHandler___block_invoke_3;
    v22[3] = &unk_1E8010AD8;
    v23 = v10;
    [v11 setPass:pass environment:environment isFromPeopleScreen:isFromPeopleScreen completion:v22];
  }

  else
  {
    (*(v10 + 2))(v10, 0);
  }
}

void __72__PKShareSecureElementPassViewController_setRemoteVC_completionHandler___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__PKShareSecureElementPassViewController_setRemoteVC_completionHandler___block_invoke_2;
  block[3] = &unk_1E8010B50;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __72__PKShareSecureElementPassViewController_setRemoteVC_completionHandler___block_invoke_3(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __72__PKShareSecureElementPassViewController_setRemoteVC_completionHandler___block_invoke_4;
  v3[3] = &unk_1E8010FA8;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

- (void)_addRemoteVCToView
{
  [(PKShareSecureElementPassViewController *)self addChildViewController:self->_remoteVC];
  view = [(PKShareSecureElementPassRemoteViewController *)self->_remoteVC view];
  view2 = [(PKShareSecureElementPassViewController *)self view];
  [view2 addSubview:view];
  [view2 setNeedsLayout];
  [view2 layoutIfNeeded];
  [(_UIRemoteViewController *)self->_remoteVC didMoveToParentViewController:self];
  [(PKShareSecureElementPassViewController *)self setNeedsStatusBarAppearanceUpdate];
}

- (void)_remoteDidGetConfigured
{
  if (!self->_remoteVCConfigured)
  {
    self->_remoteVCConfigured = 1;
    [(PKShareSecureElementPassViewController *)self setPromptToShareURL:self->_promptToShareURL];
  }
}

- (void)setPromptToShareURL:(BOOL)promptToShareURL
{
  self->_promptToShareURL = promptToShareURL;
  if (self->_remoteVCConfigured)
  {
    serviceViewControllerProxy = [(_UIRemoteViewController *)self->_remoteVC serviceViewControllerProxy];
    [serviceViewControllerProxy setShouldPromptUserToShare:self->_promptToShareURL];
  }
}

- (void)didCreateShareURL:(id)l activationCode:(id)code error:(id)error
{
  lCopy = l;
  codeCopy = code;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v10 = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = objc_loadWeakRetained(&self->_delegate);
      [v12 shareSecureElementPassViewController:self didCreateShareURL:lCopy activationCode:codeCopy];
    }
  }
}

- (void)didFinishShareWithDidUserShare:(BOOL)share error:(id)error
{
  shareCopy = share;
  v16 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"N";
    if (shareCopy)
    {
      v8 = @"Y";
    }

    v12 = 138412546;
    v13 = v8;
    v14 = 2112;
    v15 = errorCopy;
    _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "ShareSecureElementPass: didFinishShare didUserShare: %@ error: %@", &v12, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    if (errorCopy)
    {
      v10 = 2;
    }

    else
    {
      v10 = shareCopy;
    }

    presentingViewController = objc_loadWeakRetained(&self->_delegate);
    [presentingViewController shareSecureElementPassViewController:self didFinishWithResult:v10];
  }

  else
  {
    presentingViewController = [(PKShareSecureElementPassViewController *)self presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)result
{
  if (self->_remoteVC != container)
  {
    v7 = v4;
    v8 = v5;
    v6.receiver = self;
    v6.super_class = PKShareSecureElementPassViewController;
    [(PKShareSecureElementPassViewController *)&v6 sizeForChildContentContainer:result.width withParentContainerSize:result.height];
  }

  return result;
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = PKShareSecureElementPassViewController;
  [(PKShareSecureElementPassViewController *)&v5 loadView];
  view = [(PKShareSecureElementPassViewController *)self view];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [view setBackgroundColor:clearColor];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKShareSecureElementPassViewController;
  [(PKShareSecureElementPassViewController *)&v5 viewWillLayoutSubviews];
  view = [(PKShareSecureElementPassViewController *)self view];
  view2 = [(PKShareSecureElementPassRemoteViewController *)self->_remoteVC view];
  [view bounds];
  [view2 setFrame:?];
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end