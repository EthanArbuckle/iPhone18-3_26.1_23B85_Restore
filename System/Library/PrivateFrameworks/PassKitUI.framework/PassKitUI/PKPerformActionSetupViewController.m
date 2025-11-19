@interface PKPerformActionSetupViewController
- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)result;
- (PKPerformActionSetupViewController)initWithPassIdentifier:(id)a3;
- (PKPerformActionSetupViewControllerDelegate)delegate;
- (unint64_t)supportedInterfaceOrientations;
- (void)_setRemoteVC:(id)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)didCancel;
- (void)didFinish;
- (void)loadView;
- (void)setPresentationStyle:(int64_t)a3;
- (void)updateModalPresentationStyle;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PKPerformActionSetupViewController

- (PKPerformActionSetupViewController)initWithPassIdentifier:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = PKPerformActionSetupViewController;
  v6 = [(PKPerformActionSetupViewController *)&v14 init];
  v7 = v6;
  if (v6)
  {
    v6->_explicitPresentationStyle = 0;
    objc_storeStrong(&v6->_passIdentifier, a3);
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
    v4 = [(_UIAsyncInvocation *)remoteVCRequest invoke];
    v5 = self->_remoteVCRequest;
    self->_remoteVCRequest = 0;
  }

  v6.receiver = self;
  v6.super_class = PKPerformActionSetupViewController;
  [(PKPerformActionSetupViewController *)&v6 dealloc];
}

- (void)_setRemoteVC:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_storeStrong(&self->_remoteVC, a3);
  [(PKPerformActionSetupViewController *)self addChildViewController:self->_remoteVC];
  v9 = [(PKRemotePerformActionSetupViewController *)self->_remoteVC view];
  v10 = [(PKPerformActionSetupViewController *)self view];
  [v10 addSubview:v9];
  [v10 setNeedsLayout];
  [v10 layoutIfNeeded];
  [v9 setUserInteractionEnabled:0];
  [(_UIRemoteViewController *)self->_remoteVC didMoveToParentViewController:self];
  [(PKPerformActionSetupViewController *)self setNeedsStatusBarAppearanceUpdate];
  [(PKPerformActionSetupViewController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
  remoteVC = self->_remoteVC;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __69__PKPerformActionSetupViewController__setRemoteVC_completionHandler___block_invoke;
  v24[3] = &unk_1E8012C28;
  v12 = v8;
  v25 = v12;
  v13 = [(_UIRemoteViewController *)remoteVC serviceViewControllerProxyWithErrorHandler:v24];
  if (v13)
  {
    v14 = [MEMORY[0x1E69DCEB0] mainScreen];
    v15 = [v14 fixedCoordinateSpace];
    [v15 bounds];
    v17 = v16;
    v19 = v18;
    [v14 scale];
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

- (void)setPresentationStyle:(int64_t)a3
{
  if (self->_presentationStyle != a3 || !self->_explicitPresentationStyle)
  {
    self->_presentationStyle = 2 * (a3 == 2);
    self->_explicitPresentationStyle = 1;
    [(PKPerformActionSetupViewController *)self updateModalPresentationStyle];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v5.receiver = self;
  v5.super_class = PKPerformActionSetupViewController;
  [(PKPerformActionSetupViewController *)&v5 viewWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
  [(PKPerformActionSetupViewController *)self updateModalPresentationStyle];
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = PKPerformActionSetupViewController;
  [(PKPerformActionSetupViewController *)&v5 viewDidMoveToWindow:a3 shouldAppearOrDisappear:a4];
  [(PKPerformActionSetupViewController *)self updateModalPresentationStyle];
}

- (void)updateModalPresentationStyle
{
  v3 = [(PKPerformActionSetupViewController *)self view];
  v10 = [v3 window];

  v4 = v10;
  if (v10)
  {
    v5 = [v10 windowScene];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 interfaceOrientation];
      if ([(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts])
      {
        v8 = self;
        presentationStyle = 16;
      }

      else if ((v7 - 3) >= 2 && self->_explicitPresentationStyle)
      {
        presentationStyle = self->_presentationStyle;
        v8 = self;
      }

      else
      {
        v8 = self;
        presentationStyle = 0;
      }

      [(PKPerformActionSetupViewController *)v8 setModalPresentationStyle:presentationStyle];
    }

    v4 = v10;
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

- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)result
{
  if (self->_remoteVC != a3)
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
  v3 = [(PKPerformActionSetupViewController *)self view];
  v4 = [MEMORY[0x1E69DC888] clearColor];
  [v3 setBackgroundColor:v4];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKPerformActionSetupViewController;
  [(PKPerformActionSetupViewController *)&v5 viewWillLayoutSubviews];
  v3 = [(PKPerformActionSetupViewController *)self view];
  v4 = [(PKRemotePerformActionSetupViewController *)self->_remoteVC view];
  [v3 bounds];
  [v4 setFrame:?];
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

  v9 = [(PKPerformActionSetupViewController *)self presentingViewController];
  v10 = v9;
  if (v9)
  {
    [v9 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    v11 = [(PKPerformActionSetupViewController *)self navigationController];
    v12 = [v11 popViewControllerAnimated:1];
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

  v9 = [(PKPerformActionSetupViewController *)self presentingViewController];
  v10 = v9;
  if (v9)
  {
    [v9 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    v11 = [(PKPerformActionSetupViewController *)self navigationController];
    v12 = [v11 popViewControllerAnimated:1];
  }
}

- (PKPerformActionSetupViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end