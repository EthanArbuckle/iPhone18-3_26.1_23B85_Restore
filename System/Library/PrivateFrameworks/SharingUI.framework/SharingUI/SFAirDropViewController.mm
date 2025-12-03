@interface SFAirDropViewController
- (SFAirDropViewController)initWithNoContentView:(BOOL)view;
- (SFAirDropViewControllerDelegate)delegate;
- (void)_presentationControllerDidDismiss:(id)dismiss;
- (void)_setChildViewController:(id)controller;
- (void)airDropViewServiceDidFinishTransferWithSuccess:(BOOL)success;
- (void)airDropViewServiceDidRequestDismissal;
- (void)airDropViewServiceDidStartTransfer;
- (void)airDropViewServiceRequestingSendingAppBundleIdentifierWithCompletionHandler:(id)handler;
- (void)airDropViewServiceRequestingSharedItemsWithDataRequest:(id)request completionHandler:(id)handler;
- (void)airDropViewServiceWillStartTransferToRecipient:(id)recipient;
- (void)dealloc;
- (void)viewDidLoad;
@end

@implementation SFAirDropViewController

- (SFAirDropViewController)initWithNoContentView:(BOOL)view
{
  viewCopy = view;
  v21[1] = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = SFAirDropViewController;
  v4 = [(SFAirDropViewController *)&v20 init];
  v5 = v4;
  if (v4)
  {
    [(SFAirDropViewController *)v4 _beginDelayingPresentation:0 cancellationHandler:3.0];
    v6 = [MEMORY[0x1E696ABD0] extensionWithIdentifier:@"com.apple.Sharing.AirDrop" error:0];
    [(SFAirDropViewController *)v5 setExtension:v6];
    objc_initWeak(&location, v5);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __49__SFAirDropViewController_initWithNoContentView___block_invoke;
    v17[3] = &unk_1E7EE3F28;
    objc_copyWeak(&v18, &location);
    [v6 setRequestCancellationBlock:v17];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __49__SFAirDropViewController_initWithNoContentView___block_invoke_3;
    v15[3] = &unk_1E7EE3F50;
    objc_copyWeak(&v16, &location);
    [v6 setRequestInterruptionBlock:v15];
    v7 = objc_alloc_init(MEMORY[0x1E696ABE0]);
    v8 = MEMORY[0x1E695DF20];
    v9 = [MEMORY[0x1E696AD98] numberWithBool:viewCopy];
    v10 = [v8 dictionaryWithObject:v9 forKey:@"ShowNoContentView"];
    [v7 setUserInfo:v10];

    v21[0] = v7;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __49__SFAirDropViewController_initWithNoContentView___block_invoke_5;
    v13[3] = &unk_1E7EE3F78;
    objc_copyWeak(&v14, &location);
    [v6 instantiateViewControllerWithInputItems:v11 connectionHandler:v13];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __49__SFAirDropViewController_initWithNoContentView___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__SFAirDropViewController_initWithNoContentView___block_invoke_2;
  block[3] = &unk_1E7EE3688;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __49__SFAirDropViewController_initWithNoContentView___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

void __49__SFAirDropViewController_initWithNoContentView___block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__SFAirDropViewController_initWithNoContentView___block_invoke_4;
  block[3] = &unk_1E7EE3688;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __49__SFAirDropViewController_initWithNoContentView___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

void __49__SFAirDropViewController_initWithNoContentView___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setChildViewController:v10];

  v7 = objc_loadWeakRetained((a1 + 32));
  [v7 _setExtensionRequest:v5];

  v8 = objc_loadWeakRetained((a1 + 32));
  [v10 setAirDropHost:v8];

  v9 = objc_loadWeakRetained((a1 + 32));
  [v9 _endDelayingPresentation];
}

- (void)dealloc
{
  if (self->_extensionRequest)
  {
    [(NSExtension *)self->_extension cancelExtensionRequestWithIdentifier:?];
  }

  v3.receiver = self;
  v3.super_class = SFAirDropViewController;
  [(SFAirDropViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = SFAirDropViewController;
  [(SFAirDropViewController *)&v2 viewDidLoad];
}

- (void)_setChildViewController:(id)controller
{
  controllerCopy = controller;
  view = [(_SFAirDropRemoteViewController *)self->_childViewController view];
  [view removeFromSuperview];

  [(_SFAirDropRemoteViewController *)self->_childViewController removeFromParentViewController];
  objc_storeStrong(&self->_childViewController, controller);
  if (self->_childViewController)
  {
    [controllerCopy willMoveToParentViewController:self];
    view2 = [controllerCopy view];
    view3 = [(SFAirDropViewController *)self view];
    [view3 bounds];
    [view2 setFrame:?];

    [(SFAirDropViewController *)self addChildViewController:controllerCopy];
    view4 = [(SFAirDropViewController *)self view];
    [view4 addSubview:view2];

    array = [MEMORY[0x1E695DF70] array];
    view5 = [controllerCopy view];
    widthAnchor = [view5 widthAnchor];
    view6 = [(SFAirDropViewController *)self view];
    widthAnchor2 = [view6 widthAnchor];
    v14 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    [array addObject:v14];

    view7 = [controllerCopy view];
    heightAnchor = [view7 heightAnchor];
    view8 = [(SFAirDropViewController *)self view];
    heightAnchor2 = [view8 heightAnchor];
    v19 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    [array addObject:v19];

    view9 = [controllerCopy view];
    centerXAnchor = [view9 centerXAnchor];
    view10 = [(SFAirDropViewController *)self view];
    centerXAnchor2 = [view10 centerXAnchor];
    v24 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [array addObject:v24];

    view11 = [controllerCopy view];
    centerYAnchor = [view11 centerYAnchor];
    view12 = [(SFAirDropViewController *)self view];
    centerYAnchor2 = [view12 centerYAnchor];
    v29 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [array addObject:v29];

    [MEMORY[0x1E696ACD8] activateConstraints:array];
    [controllerCopy didMoveToParentViewController:self];
  }
}

- (void)airDropViewServiceDidRequestDismissal
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __64__SFAirDropViewController_airDropViewServiceDidRequestDismissal__block_invoke;
  v2[3] = &unk_1E7EE3720;
  v2[4] = self;
  [(SFAirDropViewController *)self dismissViewControllerAnimated:1 completion:v2];
}

void __64__SFAirDropViewController_airDropViewServiceDidRequestDismissal__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 airDropViewControllerDidDismiss:*(a1 + 32)];
  }
}

- (void)airDropViewServiceWillStartTransferToRecipient:(id)recipient
{
  recipientCopy = recipient;
  delegate = [(SFAirDropViewController *)self delegate];
  [delegate airDropViewServiceWillStartTransfer:self toRecipient:recipientCopy];
}

- (void)airDropViewServiceDidStartTransfer
{
  delegate = [(SFAirDropViewController *)self delegate];
  [delegate airDropViewControllerDidStartTransfer:self];
}

- (void)airDropViewServiceDidFinishTransferWithSuccess:(BOOL)success
{
  successCopy = success;
  delegate = [(SFAirDropViewController *)self delegate];
  [delegate airDropViewController:self didFinishTransferWithSuccess:successCopy];
}

- (void)airDropViewServiceRequestingSharedItemsWithDataRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  delegate = [(SFAirDropViewController *)self delegate];
  [delegate airDropViewController:self requestSharedItemsWithDataRequest:requestCopy completionHandler:handlerCopy];
}

- (void)airDropViewServiceRequestingSendingAppBundleIdentifierWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  delegate = [(SFAirDropViewController *)self delegate];
  [delegate airDropViewController:self requestSendingAppBundleIdentifierWithCompletionHandler:handlerCopy];
}

- (void)_presentationControllerDidDismiss:(id)dismiss
{
  delegate = [(SFAirDropViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(SFAirDropViewController *)self delegate];
    [delegate2 airDropViewControllerDidDismiss:self];
  }
}

- (SFAirDropViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end