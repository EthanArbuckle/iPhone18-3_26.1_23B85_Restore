@interface PKShareableCredentialsMessageComposeViewController
- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)result;
- (PKShareableCredentialsMessageComposeViewControllerDelegate)delegate;
- (id)_init;
- (id)_initWithPartialShareInvite:(id)invite configuration:(id)configuration;
- (int64_t)modalPresentationStyle;
- (unint64_t)supportedInterfaceOrientations;
- (void)_setRemoteVC:(id)c completionHandler:(id)handler;
- (void)_setupRemoteView;
- (void)dealloc;
- (void)loadView;
- (void)setDelegate:(id)delegate;
- (void)viewWillLayoutSubviews;
@end

@implementation PKShareableCredentialsMessageComposeViewController

- (id)_initWithPartialShareInvite:(id)invite configuration:(id)configuration
{
  inviteCopy = invite;
  configurationCopy = configuration;
  _init = [(PKShareableCredentialsMessageComposeViewController *)self _init];
  v10 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 126, invite);
    objc_storeStrong(v10 + 125, configuration);
  }

  return v10;
}

- (id)_init
{
  v4.receiver = self;
  v4.super_class = PKShareableCredentialsMessageComposeViewController;
  v2 = [(PKShareableCredentialsMessageComposeViewController *)&v4 initWithNibName:0 bundle:0];
  [(PKShareableCredentialsMessageComposeViewController *)v2 _setupRemoteView];
  return v2;
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
  v6.super_class = PKShareableCredentialsMessageComposeViewController;
  [(PKShareableCredentialsMessageComposeViewController *)&v6 dealloc];
}

- (void)_setupRemoteView
{
  objc_initWeak(&location, self);
  [(PKShareableCredentialsMessageComposeViewController *)self _beginDelayingPresentation:0 cancellationHandler:10.0];
  v3 = *MEMORY[0x1E69BB800];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__PKShareableCredentialsMessageComposeViewController__setupRemoteView__block_invoke;
  v6[3] = &unk_1E8012C00;
  objc_copyWeak(&v7, &location);
  v4 = [PKRemoteShareableCredentialsMessageComposeViewController requestViewController:@"PKServiceMessagesComposeViewController" fromServiceWithBundleIdentifier:v3 connectionHandler:v6];
  remoteVCRequest = self->_remoteVCRequest;
  self->_remoteVCRequest = v4;

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __70__PKShareableCredentialsMessageComposeViewController__setupRemoteView__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = *(WeakRetained + 127);
    *(WeakRetained + 127) = 0;

    if (v5)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __70__PKShareableCredentialsMessageComposeViewController__setupRemoteView__block_invoke_2;
      v11[3] = &unk_1E8010998;
      objc_copyWeak(&v12, (a1 + 32));
      [v8 _setRemoteVC:v5 completionHandler:v11];
      objc_destroyWeak(&v12);
    }

    else
    {
      [v8 _endDelayingPresentation];
      v10 = [v8 delegate];
      [v10 messageComposeViewControllerDidFinishWithResult:0];
    }
  }
}

void __70__PKShareableCredentialsMessageComposeViewController__setupRemoteView__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _endDelayingPresentation];
}

- (void)_setRemoteVC:(id)c completionHandler:(id)handler
{
  cCopy = c;
  handlerCopy = handler;
  objc_storeStrong(&self->_remoteVC, c);
  remoteVC = self->_remoteVC;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [(PKRemoteShareableCredentialsMessageComposeViewController *)remoteVC setDelegate:WeakRetained];

  objc_storeWeak(&self->_delegate, 0);
  [(PKShareableCredentialsMessageComposeViewController *)self addChildViewController:self->_remoteVC];
  view = [(PKRemoteShareableCredentialsMessageComposeViewController *)self->_remoteVC view];
  view2 = [(PKShareableCredentialsMessageComposeViewController *)self view];
  [view2 addSubview:view];
  [view2 setNeedsLayout];
  [view2 layoutIfNeeded];
  [(_UIRemoteViewController *)self->_remoteVC didMoveToParentViewController:self];
  [(PKShareableCredentialsMessageComposeViewController *)self setNeedsStatusBarAppearanceUpdate];
  [(PKShareableCredentialsMessageComposeViewController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__PKShareableCredentialsMessageComposeViewController__setRemoteVC_completionHandler___block_invoke;
  aBlock[3] = &unk_1E8010B50;
  v13 = handlerCopy;
  v33 = v13;
  v14 = _Block_copy(aBlock);
  v15 = self->_remoteVC;
  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = __85__PKShareableCredentialsMessageComposeViewController__setRemoteVC_completionHandler___block_invoke_3;
  v30 = &unk_1E8012C28;
  v16 = v14;
  v31 = v16;
  v17 = [(_UIRemoteViewController *)v15 serviceViewControllerProxyWithErrorHandler:&v27];
  if (v17)
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    fixedCoordinateSpace = [mainScreen fixedCoordinateSpace];
    [fixedCoordinateSpace bounds];
    v21 = v20;
    v23 = v22;
    [mainScreen scale];
    [v17 setDisplayPropertiesWithScreenSize:v21 scale:{v23, v24}];

    configuration = self->_configuration;
    if (configuration)
    {
      [v17 setConfiguration:configuration completionHandler:v16];
    }

    else
    {
      partialShareInvite = self->_partialShareInvite;
      if (partialShareInvite)
      {
        [v17 setPartialShareInvite:partialShareInvite completion:v16];
      }
    }
  }

  else
  {
    v13[2](v13);
  }
}

void __85__PKShareableCredentialsMessageComposeViewController__setRemoteVC_completionHandler___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__PKShareableCredentialsMessageComposeViewController__setRemoteVC_completionHandler___block_invoke_2;
  block[3] = &unk_1E8010B50;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (int64_t)modalPresentationStyle
{
  if ([(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts])
  {
    return 16;
  }

  else
  {
    return 0;
  }
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
    v6.super_class = PKShareableCredentialsMessageComposeViewController;
    [(PKShareableCredentialsMessageComposeViewController *)&v6 sizeForChildContentContainer:result.width withParentContainerSize:result.height];
  }

  return result;
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = PKShareableCredentialsMessageComposeViewController;
  [(PKShareableCredentialsMessageComposeViewController *)&v5 loadView];
  view = [(PKShareableCredentialsMessageComposeViewController *)self view];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [view setBackgroundColor:clearColor];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKShareableCredentialsMessageComposeViewController;
  [(PKShareableCredentialsMessageComposeViewController *)&v5 viewWillLayoutSubviews];
  view = [(PKShareableCredentialsMessageComposeViewController *)self view];
  view2 = [(PKRemoteShareableCredentialsMessageComposeViewController *)self->_remoteVC view];
  [view bounds];
  [view2 setFrame:?];
}

- (PKShareableCredentialsMessageComposeViewControllerDelegate)delegate
{
  if (self->_remoteVC)
  {
    WeakRetained = [(PKRemoteShareableCredentialsMessageComposeViewController *)self->_remoteVC delegate];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
  }

  return WeakRetained;
}

- (void)setDelegate:(id)delegate
{
  if (self->_remoteVC)
  {
    [(PKRemoteShareableCredentialsMessageComposeViewController *)self->_remoteVC setDelegate:delegate];
  }

  else
  {
    objc_storeWeak(&self->_delegate, delegate);
  }
}

@end