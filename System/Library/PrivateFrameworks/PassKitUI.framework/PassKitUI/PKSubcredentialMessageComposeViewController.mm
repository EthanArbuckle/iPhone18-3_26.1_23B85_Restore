@interface PKSubcredentialMessageComposeViewController
- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)result;
- (PKSubcredentialMessageComposeViewController)initWithSharingRequest:(id)request delegate:(id)delegate;
- (PKSubcredentialMessageComposeViewControllerDelegate)delegate;
- (int64_t)modalPresentationStyle;
- (unint64_t)supportedInterfaceOrientations;
- (void)_setRemoteVC:(id)c completionHandler:(id)handler;
- (void)dealloc;
- (void)loadView;
- (void)setDelegate:(id)delegate;
- (void)viewWillLayoutSubviews;
@end

@implementation PKSubcredentialMessageComposeViewController

- (PKSubcredentialMessageComposeViewController)initWithSharingRequest:(id)request delegate:(id)delegate
{
  requestCopy = request;
  delegateCopy = delegate;
  v18.receiver = self;
  v18.super_class = PKSubcredentialMessageComposeViewController;
  v9 = [(PKSubcredentialMessageComposeViewController *)&v18 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sharingRequest, request);
    objc_storeWeak(&v10->_delegate, delegateCopy);
    objc_initWeak(&location, v10);
    [(PKSubcredentialMessageComposeViewController *)v10 _beginDelayingPresentation:0 cancellationHandler:10.0];
    v11 = *MEMORY[0x1E69BC530];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __79__PKSubcredentialMessageComposeViewController_initWithSharingRequest_delegate___block_invoke;
    v15[3] = &unk_1E8012C00;
    objc_copyWeak(&v16, &location);
    v12 = [PKRemoteSubcredentialMessageComposeViewController requestViewController:@"PKServiceSubcredentialMessageComposeViewController" fromServiceWithBundleIdentifier:v11 connectionHandler:v15];
    remoteVCRequest = v10->_remoteVCRequest;
    v10->_remoteVCRequest = v12;

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __79__PKSubcredentialMessageComposeViewController_initWithSharingRequest_delegate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = *(WeakRetained + 125);
    *(WeakRetained + 125) = 0;

    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v5;
      _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "ReadyController: %@", buf, 0xCu);
    }

    if (v5)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __79__PKSubcredentialMessageComposeViewController_initWithSharingRequest_delegate___block_invoke_87;
      v12[3] = &unk_1E8010998;
      objc_copyWeak(&v13, (a1 + 32));
      [v8 _setRemoteVC:v5 completionHandler:v12];
      objc_destroyWeak(&v13);
    }

    else
    {
      [v8 _endDelayingPresentation];
      v11 = [v8 delegate];
      [v11 messageComposeViewControllerDidFinishWithResult:0];
    }
  }
}

void __79__PKSubcredentialMessageComposeViewController_initWithSharingRequest_delegate___block_invoke_87(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _endDelayingPresentation];
    WeakRetained = v2;
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
  v6.super_class = PKSubcredentialMessageComposeViewController;
  [(PKSubcredentialMessageComposeViewController *)&v6 dealloc];
}

- (void)_setRemoteVC:(id)c completionHandler:(id)handler
{
  cCopy = c;
  handlerCopy = handler;
  objc_storeStrong(&self->_remoteVC, c);
  remoteVC = self->_remoteVC;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [(PKRemoteSubcredentialMessageComposeViewController *)remoteVC setDelegate:WeakRetained];

  objc_storeWeak(&self->_delegate, 0);
  [(PKSubcredentialMessageComposeViewController *)self addChildViewController:self->_remoteVC];
  view = [(PKRemoteSubcredentialMessageComposeViewController *)self->_remoteVC view];
  view2 = [(PKSubcredentialMessageComposeViewController *)self view];
  [view2 addSubview:view];
  [view2 setNeedsLayout];
  [view2 layoutIfNeeded];
  [(_UIRemoteViewController *)self->_remoteVC didMoveToParentViewController:self];
  [(PKSubcredentialMessageComposeViewController *)self setNeedsStatusBarAppearanceUpdate];
  [(PKSubcredentialMessageComposeViewController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
  v13 = self->_remoteVC;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __78__PKSubcredentialMessageComposeViewController__setRemoteVC_completionHandler___block_invoke;
  v28[3] = &unk_1E8012C28;
  v14 = handlerCopy;
  v29 = v14;
  v15 = [(_UIRemoteViewController *)v13 serviceViewControllerProxyWithErrorHandler:v28];
  if (v15)
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    fixedCoordinateSpace = [mainScreen fixedCoordinateSpace];
    [fixedCoordinateSpace bounds];
    v19 = v18;
    v21 = v20;
    [mainScreen scale];
    [v15 setDisplayPropertiesWithScreenSize:v19 scale:{v21, v22}];

    sharingRequest = self->_sharingRequest;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __78__PKSubcredentialMessageComposeViewController__setRemoteVC_completionHandler___block_invoke_3;
    v26[3] = &unk_1E8010B50;
    v27 = v14;
    [v15 setSharingRequest:sharingRequest completionHandler:v26];
  }

  else if (v14)
  {
    v24 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      _os_log_impl(&dword_1BD026000, v24, OS_LOG_TYPE_DEFAULT, "No serviceVCProxy", v25, 2u);
    }

    v14[2](v14);
  }
}

void __78__PKSubcredentialMessageComposeViewController__setRemoteVC_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78__PKSubcredentialMessageComposeViewController__setRemoteVC_completionHandler___block_invoke_2;
    block[3] = &unk_1E8010B50;
    v3 = v1;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __78__PKSubcredentialMessageComposeViewController__setRemoteVC_completionHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78__PKSubcredentialMessageComposeViewController__setRemoteVC_completionHandler___block_invoke_4;
    block[3] = &unk_1E8010B50;
    v3 = v1;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
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
    v6.super_class = PKSubcredentialMessageComposeViewController;
    [(PKSubcredentialMessageComposeViewController *)&v6 sizeForChildContentContainer:result.width withParentContainerSize:result.height];
  }

  return result;
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = PKSubcredentialMessageComposeViewController;
  [(PKSubcredentialMessageComposeViewController *)&v5 loadView];
  view = [(PKSubcredentialMessageComposeViewController *)self view];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [view setBackgroundColor:clearColor];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKSubcredentialMessageComposeViewController;
  [(PKSubcredentialMessageComposeViewController *)&v5 viewWillLayoutSubviews];
  view = [(PKSubcredentialMessageComposeViewController *)self view];
  view2 = [(PKRemoteSubcredentialMessageComposeViewController *)self->_remoteVC view];
  [view bounds];
  [view2 setFrame:?];
}

- (PKSubcredentialMessageComposeViewControllerDelegate)delegate
{
  if (self->_remoteVC)
  {
    WeakRetained = [(PKRemoteSubcredentialMessageComposeViewController *)self->_remoteVC delegate];
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
    [(PKRemoteSubcredentialMessageComposeViewController *)self->_remoteVC setDelegate:delegate];
  }

  else
  {
    objc_storeWeak(&self->_delegate, delegate);
  }
}

@end