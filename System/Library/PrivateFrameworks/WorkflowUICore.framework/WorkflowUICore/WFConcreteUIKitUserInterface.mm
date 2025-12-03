@interface WFConcreteUIKitUserInterface
- (UIView)view;
- (UIViewController)viewController;
- (WFAlert)presentedAlert;
- (WFConcreteUIKitUserInterface)initWithView:(id)view viewController:(id)controller;
- (id)presentationAnchorForActionUserInterface:(id)interface;
- (void)actionUserInterface:(id)interface showViewControllerInPlatter:(id)platter;
- (void)dismissPlatterForActionUserInterface:(id)interface completionHandler:(id)handler;
- (void)dismissPresentedContentWithCompletionHandler:(id)handler;
- (void)presentAlert:(id)alert;
- (void)requestActionInterfacePresentationForActionClassName:(id)name classNamesByType:(id)type completionHandler:(id)handler;
- (void)requestAuthorizationWithConfiguration:(id)configuration completionHandler:(id)handler;
@end

@implementation WFConcreteUIKitUserInterface

- (WFAlert)presentedAlert
{
  WeakRetained = objc_loadWeakRetained(&self->_presentedAlert);

  return WeakRetained;
}

- (UIViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

- (void)dismissPlatterForActionUserInterface:(id)interface completionHandler:(id)handler
{
  handlerCopy = handler;
  presentedViewController = [(WFConcreteUIKitUserInterface *)self presentedViewController];

  if (presentedViewController)
  {
    presentedViewController2 = [(WFConcreteUIKitUserInterface *)self presentedViewController];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __87__WFConcreteUIKitUserInterface_dismissPlatterForActionUserInterface_completionHandler___block_invoke;
    v8[3] = &unk_279EF51F0;
    v8[4] = self;
    v9 = handlerCopy;
    [presentedViewController2 dismissViewControllerAnimated:1 completion:v8];
  }

  else
  {
    handlerCopy[2](handlerCopy);
  }
}

uint64_t __87__WFConcreteUIKitUserInterface_dismissPlatterForActionUserInterface_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPresentedViewController:0];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)actionUserInterface:(id)interface showViewControllerInPlatter:(id)platter
{
  platterCopy = platter;
  viewController = [(WFConcreteUIKitUserInterface *)self viewController];
  [viewController presentViewController:platterCopy animated:1 completion:0];

  [(WFConcreteUIKitUserInterface *)self setPresentedViewController:platterCopy];
}

- (id)presentationAnchorForActionUserInterface:(id)interface
{
  view = [(WFConcreteUIKitUserInterface *)self view];
  window = [view window];

  return window;
}

- (void)requestActionInterfacePresentationForActionClassName:(id)name classNamesByType:(id)type completionHandler:(id)handler
{
  handlerCopy = handler;
  typeCopy = type;
  nameCopy = name;
  v11 = [WFActionUserInterfaceListener alloc];
  v14 = [(WFActionUserInterfaceListener *)v11 initWithUserInterfaceType:*MEMORY[0x277CFC710] actionClassName:nameCopy classNamesByType:typeCopy];

  if (v14)
  {
    actionInterface = [(WFActionUserInterfaceListener *)v14 actionInterface];
    [actionInterface setDelegate:self];

    [(WFConcreteUIKitUserInterface *)self setActionUserInterfaceListener:v14];
    actionInterface2 = [(WFActionUserInterfaceListener *)v14 actionInterface];
    handlerCopy[2](handlerCopy, actionInterface2, 0);
  }

  else
  {
    actionInterface2 = [MEMORY[0x277CCA9B8] wfUnsupportedUserInterfaceError];
    (handlerCopy)[2](handlerCopy, 0, actionInterface2);
  }
}

- (void)requestAuthorizationWithConfiguration:(id)configuration completionHandler:(id)handler
{
  v5 = [configuration siriDialogAlertWithCompletionHandler:handler];
  [(WFConcreteUIKitUserInterface *)self presentAlert:v5];
}

- (void)presentAlert:(id)alert
{
  alertCopy = alert;
  [WFUIKitAlertPresenter presentAlert:alertCopy withUserInterface:self];
  [(WFConcreteUIKitUserInterface *)self setPresentedAlert:alertCopy];
}

- (void)dismissPresentedContentWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__WFConcreteUIKitUserInterface_dismissPresentedContentWithCompletionHandler___block_invoke;
  v6[3] = &unk_279EF51F0;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __77__WFConcreteUIKitUserInterface_dismissPresentedContentWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = dispatch_group_create();
  v3 = [*(a1 + 32) actionUserInterfaceListener];

  if (v3)
  {
    dispatch_group_enter(v2);
    v4 = [*(a1 + 32) actionUserInterfaceListener];
    v5 = [v4 actionInterface];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __77__WFConcreteUIKitUserInterface_dismissPresentedContentWithCompletionHandler___block_invoke_2;
    v14[3] = &unk_279EF51A0;
    v14[4] = *(a1 + 32);
    v15 = v2;
    [v5 cancelPresentationWithCompletionHandler:v14];
  }

  v6 = [*(a1 + 32) presentedAlert];

  if (v6)
  {
    dispatch_group_enter(v2);
    v7 = [*(a1 + 32) presentedAlert];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __77__WFConcreteUIKitUserInterface_dismissPresentedContentWithCompletionHandler___block_invoke_3;
    v12[3] = &unk_279EF51A0;
    v12[4] = *(a1 + 32);
    v13 = v2;
    [v7 dismissWithCompletionHandler:v12];
    v8 = v13;
  }

  else
  {
    v9 = [*(a1 + 32) presentedViewController];

    if (!v9)
    {
      dispatch_group_notify(v2, MEMORY[0x277D85CD0], *(a1 + 40));
      goto LABEL_8;
    }

    dispatch_group_enter(v2);
    v7 = [*(a1 + 32) presentedViewController];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __77__WFConcreteUIKitUserInterface_dismissPresentedContentWithCompletionHandler___block_invoke_4;
    v10[3] = &unk_279EF51A0;
    v10[4] = *(a1 + 32);
    v11 = v2;
    [v7 dismissViewControllerAnimated:1 completion:v10];
    v8 = v11;
  }

LABEL_8:
}

void __77__WFConcreteUIKitUserInterface_dismissPresentedContentWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setActionUserInterfaceListener:0];
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

void __77__WFConcreteUIKitUserInterface_dismissPresentedContentWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setPresentedAlert:0];
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

void __77__WFConcreteUIKitUserInterface_dismissPresentedContentWithCompletionHandler___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setPresentedViewController:0];
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    view = WeakRetained;
  }

  else
  {
    v6 = objc_loadWeakRetained(&self->_viewController);
    view = [v6 view];
  }

  return view;
}

- (WFConcreteUIKitUserInterface)initWithView:(id)view viewController:(id)controller
{
  viewCopy = view;
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = WFConcreteUIKitUserInterface;
  v8 = [(WFConcreteUIKitUserInterface *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_view, viewCopy);
    objc_storeWeak(&v9->_viewController, controllerCopy);
    v10 = v9;
  }

  return v9;
}

@end