@interface PKFlightShareComposeViewController
- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)result;
- (PKFlightShareComposeViewController)initWithInvitation:(id)invitation delegate:(id)delegate;
- (void)_addRemoteViewControllerToView;
- (void)_setRemoteVC:(id)c completionHandler:(id)handler;
- (void)_setupRemoteView;
- (void)dealloc;
- (void)flightShareComposeViewControllerDidFinishWithResult:(BOOL)result;
- (void)loadView;
- (void)viewWillLayoutSubviews;
@end

@implementation PKFlightShareComposeViewController

- (PKFlightShareComposeViewController)initWithInvitation:(id)invitation delegate:(id)delegate
{
  invitationCopy = invitation;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = PKFlightShareComposeViewController;
  v9 = [(PKFlightShareComposeViewController *)&v12 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_invitation, invitation);
    objc_storeWeak(&v10->_delegate, delegateCopy);
    [(PKFlightShareComposeViewController *)v10 _setupRemoteView];
  }

  return v10;
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
  v6.super_class = PKFlightShareComposeViewController;
  [(PKFlightShareComposeViewController *)&v6 dealloc];
}

- (void)_setupRemoteView
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__PKFlightShareComposeViewController__setupRemoteView__block_invoke;
  v9[3] = &unk_1E8015460;
  v9[4] = self;
  [(PKFlightShareComposeViewController *)self _beginDelayingPresentation:v9 cancellationHandler:10.0];
  objc_initWeak(&location, self);
  v3 = *MEMORY[0x1E69BB800];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__PKFlightShareComposeViewController__setupRemoteView__block_invoke_87;
  v6[3] = &unk_1E8015488;
  v6[4] = self;
  objc_copyWeak(&v7, &location);
  v4 = [PKRemoteFlightShareComposeViewController requestViewController:@"PKServiceFlightShareComposeViewController" fromServiceWithBundleIdentifier:v3 connectionHandler:v6];
  remoteVCRequest = self->_remoteVCRequest;
  self->_remoteVCRequest = v4;

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

uint64_t __54__PKFlightShareComposeViewController__setupRemoteView__block_invoke(uint64_t a1, int a2)
{
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Timed out creating flight share view controller", v7, 2u);
  }

  v5 = [*(*(a1 + 32) + 1008) invoke];
  return a2 ^ 1u;
}

void __54__PKFlightShareComposeViewController__setupRemoteView__block_invoke_87(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 1008);
  *(v7 + 1008) = 0;

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = WeakRetained;
  if (!v5 || v6)
  {
    [WeakRetained _endDelayingPresentation];

    v11 = objc_loadWeakRetained((a1 + 40));
    [v11 flightShareComposeViewControllerDidFinishWithResult:0];
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __54__PKFlightShareComposeViewController__setupRemoteView__block_invoke_2;
    v12[3] = &unk_1E8011180;
    objc_copyWeak(&v13, (a1 + 40));
    [v10 _setRemoteVC:v5 completionHandler:v12];

    objc_destroyWeak(&v13);
  }
}

void __54__PKFlightShareComposeViewController__setupRemoteView__block_invoke_2(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _endDelayingPresentation];

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = v5;
  if (a2)
  {
    [v5 _addRemoteViewControllerToView];
  }

  else
  {
    [v5 flightShareComposeViewControllerDidFinishWithResult:0];
  }
}

- (void)_setRemoteVC:(id)c completionHandler:(id)handler
{
  cCopy = c;
  handlerCopy = handler;
  objc_storeStrong(&self->_remoteVC, c);
  [(PKRemoteFlightShareComposeViewController *)self->_remoteVC setDelegate:self];
  remoteVC = self->_remoteVC;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __69__PKFlightShareComposeViewController__setRemoteVC_completionHandler___block_invoke;
  v22[3] = &unk_1E8012C28;
  v10 = handlerCopy;
  v23 = v10;
  v11 = [(_UIRemoteViewController *)remoteVC serviceViewControllerProxyWithErrorHandler:v22];
  if (v11)
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    fixedCoordinateSpace = [mainScreen fixedCoordinateSpace];
    [fixedCoordinateSpace bounds];
    v15 = v14;
    v17 = v16;
    [mainScreen scale];
    [v11 setDisplayPropertiesWithScreenSize:v15 scale:{v17, v18}];

    invitation = self->_invitation;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __69__PKFlightShareComposeViewController__setRemoteVC_completionHandler___block_invoke_3;
    v20[3] = &unk_1E8010AD8;
    v21 = v10;
    [v11 setInvitation:invitation completion:v20];
  }

  else
  {
    (*(v10 + 2))(v10, 0);
  }
}

void __69__PKFlightShareComposeViewController__setRemoteVC_completionHandler___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__PKFlightShareComposeViewController__setRemoteVC_completionHandler___block_invoke_2;
  block[3] = &unk_1E8010B50;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __69__PKFlightShareComposeViewController__setRemoteVC_completionHandler___block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__PKFlightShareComposeViewController__setRemoteVC_completionHandler___block_invoke_4;
  block[3] = &unk_1E8010B50;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_addRemoteViewControllerToView
{
  [(PKFlightShareComposeViewController *)self addChildViewController:self->_remoteVC];
  view = [(PKRemoteFlightShareComposeViewController *)self->_remoteVC view];
  view2 = [(PKFlightShareComposeViewController *)self view];
  [view2 addSubview:view];
  [view2 setNeedsLayout];
  [view2 layoutIfNeeded];
  [(_UIRemoteViewController *)self->_remoteVC didMoveToParentViewController:self];
  [(PKFlightShareComposeViewController *)self setNeedsStatusBarAppearanceUpdate];
}

- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)result
{
  if (self->_remoteVC != container)
  {
    v7 = v4;
    v8 = v5;
    v6.receiver = self;
    v6.super_class = PKFlightShareComposeViewController;
    [(PKFlightShareComposeViewController *)&v6 sizeForChildContentContainer:result.width withParentContainerSize:result.height];
  }

  return result;
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = PKFlightShareComposeViewController;
  [(PKFlightShareComposeViewController *)&v5 loadView];
  view = [(PKFlightShareComposeViewController *)self view];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [view setBackgroundColor:clearColor];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKFlightShareComposeViewController;
  [(PKFlightShareComposeViewController *)&v5 viewWillLayoutSubviews];
  view = [(PKFlightShareComposeViewController *)self view];
  view2 = [(PKRemoteFlightShareComposeViewController *)self->_remoteVC view];
  [view bounds];
  [view2 setFrame:?];
}

- (void)flightShareComposeViewControllerDidFinishWithResult:(BOOL)result
{
  resultCopy = result;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    presentingViewController = objc_loadWeakRetained(&self->_delegate);
    [presentingViewController flightShareComposeViewControllerDidFinishWithResult:resultCopy];
  }

  else
  {
    presentingViewController = [(PKFlightShareComposeViewController *)self presentingViewController];
    [presentingViewController dismissViewControllerAnimated:0 completion:0];
  }
}

@end