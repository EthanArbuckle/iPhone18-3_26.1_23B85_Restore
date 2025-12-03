@interface PKPerformActionSetupViewController
- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)result;
- (PKPerformActionSetupViewController)initWithPassIdentifier:(id)identifier;
- (PKPerformActionSetupViewControllerDelegate)delegate;
- (unint64_t)supportedInterfaceOrientations;
- (void)_setRemoteVC:(id)c completionHandler:(id)handler;
- (void)dealloc;
- (void)didCancel;
- (void)didFinish;
- (void)loadView;
- (void)setPresentationStyle:(int64_t)style;
- (void)updateModalPresentationStyle;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PKPerformActionSetupViewController

- (PKPerformActionSetupViewController)initWithPassIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = PKPerformActionSetupViewController;
  v6 = [(PKPerformActionSetupViewController *)&v14 init];
  v7 = v6;
  if (v6)
  {
    v6->_explicitPresentationStyle = 0;
    objc_storeStrong(&v6->_passIdentifier, identifier);
    objc_initWeak(&location, v7);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __61__PKPerformActionSetupViewController_initWithPassIdentifier___block_invoke;
    v11[3] = &unk_1E8012C00;
    objc_copyWeak(&v12, &location);
    v8 = [PKRemotePerformActionSetupViewController requestViewController:@"PKServicePerformActionSetupViewController" fromServiceWithBundleIdentifier:@"com.apple.PassbookUIService" connectionHandler:v11];
    remoteVCRequest = v7->_remoteVCRequest;
    v7->_remoteVCRequest = v8;

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __61__PKPerformActionSetupViewController_initWithPassIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(WeakRetained + 125);
    *(WeakRetained + 125) = 0;

    if (v6)
    {
      [v4 _setRemoteVC:v6 completionHandler:0];
    }

    else
    {
      [v4 didCancel];
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
  v6.super_class = PKPerformActionSetupViewController;
  [(PKPerformActionSetupViewController *)&v6 dealloc];
}

- (void)_setRemoteVC:(id)c completionHandler:(id)handler
{
  cCopy = c;
  handlerCopy = handler;
  objc_storeStrong(&self->_remoteVC, c);
  [(PKPerformActionSetupViewController *)self addChildViewController:self->_remoteVC];
  view = [(PKRemotePerformActionSetupViewController *)self->_remoteVC view];
  view2 = [(PKPerformActionSetupViewController *)self view];
  [view2 addSubview:view];
  [view2 setNeedsLayout];
  [view2 layoutIfNeeded];
  [view setUserInteractionEnabled:0];
  [(_UIRemoteViewController *)self->_remoteVC didMoveToParentViewController:self];
  [(PKPerformActionSetupViewController *)self setNeedsStatusBarAppearanceUpdate];
  [(PKPerformActionSetupViewController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
  remoteVC = self->_remoteVC;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __69__PKPerformActionSetupViewController__setRemoteVC_completionHandler___block_invoke;
  v24[3] = &unk_1E8012C28;
  v12 = handlerCopy;
  v25 = v12;
  v13 = [(_UIRemoteViewController *)remoteVC serviceViewControllerProxyWithErrorHandler:v24];
  if (v13)
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    fixedCoordinateSpace = [mainScreen fixedCoordinateSpace];
    [fixedCoordinateSpace bounds];
    v17 = v16;
    v19 = v18;
    [mainScreen scale];
    [v13 setDisplayPropertiesWithScreenSize:v17 scale:{v19, v20}];

    passIdentifier = self->_passIdentifier;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __69__PKPerformActionSetupViewController__setRemoteVC_completionHandler___block_invoke_3;
    v22[3] = &unk_1E8010AD8;
    v23 = v12;
    [v13 configureWithPassUniqueIdentifier:passIdentifier actionType:1 completion:v22];
  }

  else if (v12)
  {
    v12[2](v12);
  }
}

void __69__PKPerformActionSetupViewController__setRemoteVC_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__PKPerformActionSetupViewController__setRemoteVC_completionHandler___block_invoke_2;
    block[3] = &unk_1E8010B50;
    v3 = v1;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __69__PKPerformActionSetupViewController__setRemoteVC_completionHandler___block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__PKPerformActionSetupViewController__setRemoteVC_completionHandler___block_invoke_4;
  block[3] = &unk_1E8010B50;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __69__PKPerformActionSetupViewController__setRemoteVC_completionHandler___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setPresentationStyle:(int64_t)style
{
  if (self->_presentationStyle != style || !self->_explicitPresentationStyle)
  {
    self->_presentationStyle = 2 * (style == 2);
    self->_explicitPresentationStyle = 1;
    [(PKPerformActionSetupViewController *)self updateModalPresentationStyle];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v5.receiver = self;
  v5.super_class = PKPerformActionSetupViewController;
  [(PKPerformActionSetupViewController *)&v5 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  [(PKPerformActionSetupViewController *)self updateModalPresentationStyle];
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PKPerformActionSetupViewController;
  [(PKPerformActionSetupViewController *)&v5 viewDidMoveToWindow:window shouldAppearOrDisappear:disappear];
  [(PKPerformActionSetupViewController *)self updateModalPresentationStyle];
}

- (void)updateModalPresentationStyle
{
  view = [(PKPerformActionSetupViewController *)self view];
  window = [view window];

  v4 = window;
  if (window)
  {
    windowScene = [window windowScene];
    v6 = windowScene;
    if (windowScene)
    {
      interfaceOrientation = [windowScene interfaceOrientation];
      if ([(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts])
      {
        selfCopy3 = self;
        presentationStyle = 16;
      }

      else if ((interfaceOrientation - 3) >= 2 && self->_explicitPresentationStyle)
      {
        presentationStyle = self->_presentationStyle;
        selfCopy3 = self;
      }

      else
      {
        selfCopy3 = self;
        presentationStyle = 0;
      }

      [(PKPerformActionSetupViewController *)selfCopy3 setModalPresentationStyle:presentationStyle];
    }

    v4 = window;
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
    v6.super_class = PKPerformActionSetupViewController;
    [(PKPerformActionSetupViewController *)&v6 sizeForChildContentContainer:result.width withParentContainerSize:result.height];
  }

  return result;
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = PKPerformActionSetupViewController;
  [(PKPerformActionSetupViewController *)&v5 loadView];
  view = [(PKPerformActionSetupViewController *)self view];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [view setBackgroundColor:clearColor];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKPerformActionSetupViewController;
  [(PKPerformActionSetupViewController *)&v5 viewWillLayoutSubviews];
  view = [(PKPerformActionSetupViewController *)self view];
  view2 = [(PKRemotePerformActionSetupViewController *)self->_remoteVC view];
  [view bounds];
  [view2 setFrame:?];
}

- (void)didCancel
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "PKPerformActionSetupViewController did cancel", v13, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      [v8 performActionSetupViewControllerDidCancel:self];
    }
  }

  presentingViewController = [(PKPerformActionSetupViewController *)self presentingViewController];
  v10 = presentingViewController;
  if (presentingViewController)
  {
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    navigationController = [(PKPerformActionSetupViewController *)self navigationController];
    v12 = [navigationController popViewControllerAnimated:1];
  }
}

- (void)didFinish
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "PKPerformActionSetupViewController did finish", v13, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      [v8 performActionSetupViewControllerDidFinish:self];
    }
  }

  presentingViewController = [(PKPerformActionSetupViewController *)self presentingViewController];
  v10 = presentingViewController;
  if (presentingViewController)
  {
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    navigationController = [(PKPerformActionSetupViewController *)self navigationController];
    v12 = [navigationController popViewControllerAnimated:1];
  }
}

- (PKPerformActionSetupViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end