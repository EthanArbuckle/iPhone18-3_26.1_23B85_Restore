@interface WFCompactHostingViewController
- (WFCompactHostingViewController)initWithScreenLocked:(BOOL)locked delegate:(id)delegate;
- (WFCompactHostingViewControllerDelegate)delegate;
- (id)presentationAnchorForActionUserInterface:(id)interface;
- (void)actionUserInterface:(id)interface showViewControllerInPlatter:(id)platter;
- (void)cancelAndDismiss;
- (void)clearStatusViewTimer;
- (void)dealloc;
- (void)dialogViewController:(id)controller didFinishWithResponse:(id)response waitForFollowUpRequest:(BOOL)request;
- (void)dismissPersistentChromeWithSuccess:(BOOL)success customAttribution:(id)attribution completionHandler:(id)handler;
- (void)dismissPlatterViewControllerAndUpdateChromeAnimated:(BOOL)animated completionHandler:(id)handler;
- (void)dismissPlatterViewControllerIfNecessaryAnimated:(BOOL)animated completionHandler:(id)handler;
- (void)dismissPresentedContentWithCompletionHandler:(id)handler;
- (void)handlePendingRequest;
- (void)handleRequest:(id)request completionHandler:(id)handler;
- (void)handleTapGesture:(id)gesture;
- (void)loadView;
- (void)preparePersistentChromeWithContext:(id)context attribution:(id)attribution;
- (void)presentChromeIfPossible;
- (void)presentStatusViewController;
- (void)scheduleStatusViewToAppear;
- (void)setProgress:(id)progress;
- (void)setTouchPassthrough:(BOOL)passthrough;
- (void)updateChromeVisibilityWithCompletionHandler:(id)handler;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation WFCompactHostingViewController

- (WFCompactHostingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)actionUserInterface:(id)interface showViewControllerInPlatter:(id)platter
{
  platterCopy = platter;
  interfaceCopy = interface;
  v12 = objc_alloc_init(WFCompactPlatterViewController);
  platterView = [(WFCompactPlatterViewController *)v12 platterView];
  attribution = [interfaceCopy attribution];

  [platterView setAttribution:attribution];
  platterView2 = [(WFCompactPlatterViewController *)v12 platterView];
  defaultConfiguration = [MEMORY[0x277D7D530] defaultConfiguration];
  [platterView2 applyStylingWithConfiguration:defaultConfiguration];

  [(WFCompactPlatterViewController *)v12 setContentViewController:platterCopy];
  [(WFCompactHostingViewController *)self presentViewController:v12 animated:1 completion:0];
}

- (id)presentationAnchorForActionUserInterface:(id)interface
{
  view = [(WFCompactHostingViewController *)self view];
  window = [view window];

  return window;
}

- (void)dismissPersistentChromeWithSuccess:(BOOL)success customAttribution:(id)attribution completionHandler:(id)handler
{
  successCopy = success;
  attributionCopy = attribution;
  handlerCopy = handler;
  [(WFCompactHostingViewController *)self clearStatusViewTimer];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __105__WFCompactHostingViewController_dismissPersistentChromeWithSuccess_customAttribution_completionHandler___block_invoke;
  aBlock[3] = &unk_279EE8B18;
  aBlock[4] = self;
  v10 = handlerCopy;
  v25 = v10;
  v11 = _Block_copy(aBlock);
  v12 = v11;
  if (successCopy)
  {
    presentedViewController = [(WFCompactHostingViewController *)self presentedViewController];
    if (presentedViewController && (v14 = presentedViewController, [(WFCompactHostingViewController *)self presentedViewController], v15 = objc_claimAutoreleasedReturnValue(), [(WFCompactHostingViewController *)self statusViewController], v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v14, v15 == v16))
    {
      statusViewController = [(WFCompactHostingViewController *)self statusViewController];
      [statusViewController transitionToCompleted:1 animated:1];

      v21 = dispatch_time(0, 750000000);
      dispatch_after(v21, MEMORY[0x277D85CD0], v12);
    }

    else
    {
      v17 = objc_alloc_init(WFCompactStatusViewController);
      v18 = v17;
      if (attributionCopy)
      {
        [(WFCompactStatusViewController *)v17 setAttribution:attributionCopy];
      }

      else
      {
        runningAttribution = [(WFCompactHostingViewController *)self runningAttribution];
        [(WFCompactStatusViewController *)v18 setAttribution:runningAttribution];
      }

      [(WFCompactStatusViewController *)v18 transitionToCompleted:1 animated:1];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __105__WFCompactHostingViewController_dismissPersistentChromeWithSuccess_customAttribution_completionHandler___block_invoke_2;
      v22[3] = &unk_279EE8A50;
      v23 = v12;
      [(WFCompactHostingViewController *)self presentViewController:v18 animated:1 completion:v22];
    }
  }

  else
  {
    (*(v11 + 2))(v11);
  }
}

uint64_t __105__WFCompactHostingViewController_dismissPersistentChromeWithSuccess_customAttribution_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setRunningContext:0];
  [*(a1 + 32) setRunningAttribution:0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 dismissPlatterViewControllerAndUpdateChromeAnimated:1 completionHandler:v3];
}

void __105__WFCompactHostingViewController_dismissPersistentChromeWithSuccess_customAttribution_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = dispatch_time(0, 500000000);
  v3 = *(a1 + 32);
  v4 = MEMORY[0x277D85CD0];

  dispatch_after(v2, v4, v3);
}

- (void)dismissPlatterViewControllerAndUpdateChromeAnimated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  handlerCopy = handler;
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __104__WFCompactHostingViewController_dismissPlatterViewControllerAndUpdateChromeAnimated_completionHandler___block_invoke;
  v15[3] = &unk_279EE8A78;
  v8 = v7;
  v16 = v8;
  [(WFCompactHostingViewController *)self dismissPlatterViewControllerIfNecessaryAnimated:animatedCopy completionHandler:v15];
  dispatch_group_enter(v8);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __104__WFCompactHostingViewController_dismissPlatterViewControllerAndUpdateChromeAnimated_completionHandler___block_invoke_2;
  v13[3] = &unk_279EE8A78;
  v14 = v8;
  v9 = v8;
  [(WFCompactHostingViewController *)self updateChromeVisibilityWithCompletionHandler:v13];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __104__WFCompactHostingViewController_dismissPlatterViewControllerAndUpdateChromeAnimated_completionHandler___block_invoke_3;
  block[3] = &unk_279EE8A50;
  v12 = handlerCopy;
  v10 = handlerCopy;
  dispatch_group_notify(v9, MEMORY[0x277D85CD0], block);
}

uint64_t __104__WFCompactHostingViewController_dismissPlatterViewControllerAndUpdateChromeAnimated_completionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)dismissPlatterViewControllerIfNecessaryAnimated:(BOOL)animated completionHandler:(id)handler
{
  handlerCopy = handler;
  presentedViewController = [(WFCompactHostingViewController *)self presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __100__WFCompactHostingViewController_dismissPlatterViewControllerIfNecessaryAnimated_completionHandler___block_invoke;
    block[3] = &unk_279EE8478;
    block[4] = self;
    animatedCopy = animated;
    v10 = handlerCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }
}

- (void)dismissPresentedContentWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__WFCompactHostingViewController_dismissPresentedContentWithCompletionHandler___block_invoke;
  aBlock[3] = &unk_279EE8B18;
  aBlock[4] = self;
  v5 = handlerCopy;
  v12 = v5;
  v6 = _Block_copy(aBlock);
  [(WFCompactHostingViewController *)self setHandlingRequest:0];
  [(WFCompactHostingViewController *)self setPreparingToPresentDialog:0];
  [(WFCompactHostingViewController *)self setAllowedInterfaceOrientations:30];
  presentedViewController = [(WFCompactHostingViewController *)self presentedViewController];
  if (!presentedViewController || ([(WFCompactHostingViewController *)self statusViewController], v8 = objc_claimAutoreleasedReturnValue(), v8, presentedViewController == v8))
  {
    v6[2](v6);
  }

  else
  {
    [(WFCompactHostingViewController *)self clearStatusViewTimer];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __79__WFCompactHostingViewController_dismissPresentedContentWithCompletionHandler___block_invoke_2;
    v9[3] = &unk_279EE8B18;
    v9[4] = self;
    v10 = v6;
    [(WFCompactHostingViewController *)self dismissPlatterViewControllerAndUpdateChromeAnimated:1 completionHandler:v9];
  }
}

uint64_t __79__WFCompactHostingViewController_dismissPresentedContentWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setActionInterfaceListener:0];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t __79__WFCompactHostingViewController_dismissPresentedContentWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) scheduleStatusViewToAppear];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)dialogViewController:(id)controller didFinishWithResponse:(id)response waitForFollowUpRequest:(BOOL)request
{
  requestCopy = request;
  controllerCopy = controller;
  responseCopy = response;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __100__WFCompactHostingViewController_dialogViewController_didFinishWithResponse_waitForFollowUpRequest___block_invoke;
  aBlock[3] = &unk_279EE8CA8;
  v10 = controllerCopy;
  v17 = v10;
  selfCopy = self;
  v11 = responseCopy;
  v19 = v11;
  v12 = _Block_copy(aBlock);
  v13 = v12;
  if (requestCopy)
  {
    (*(v12 + 2))(v12);
  }

  else
  {
    [(WFCompactHostingViewController *)self setHandlingRequest:0];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __100__WFCompactHostingViewController_dialogViewController_didFinishWithResponse_waitForFollowUpRequest___block_invoke_2;
    v14[3] = &unk_279EE8B18;
    v14[4] = self;
    v15 = v13;
    [(WFCompactHostingViewController *)self dismissPlatterViewControllerAndUpdateChromeAnimated:1 completionHandler:v14];
  }
}

void __100__WFCompactHostingViewController_dialogViewController_didFinishWithResponse_waitForFollowUpRequest___block_invoke(uint64_t a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 40) setTouchPassthrough:0];
  }

  v2 = [*(a1 + 40) requestCompletionHandler];

  if (v2)
  {
    v3 = [*(a1 + 40) requestCompletionHandler];
    v3[2](v3, *(a1 + 48));

    v4 = *(a1 + 40);

    [v4 setRequestCompletionHandler:0];
  }
}

uint64_t __100__WFCompactHostingViewController_dialogViewController_didFinishWithResponse_waitForFollowUpRequest___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) scheduleStatusViewToAppear];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)handlePendingRequest
{
  v20 = *MEMORY[0x277D85DE8];
  [(WFCompactHostingViewController *)self clearStatusViewTimer];
  pendingRequest = [(WFCompactHostingViewController *)self pendingRequest];
  [(WFCompactHostingViewController *)self setHandlingRequest:1];
  [(WFCompactHostingViewController *)self setPendingRequest:0];
  presentedViewController = [(WFCompactHostingViewController *)self presentedViewController];
  if (!presentedViewController || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    presentedViewController = 0;
LABEL_8:
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __54__WFCompactHostingViewController_handlePendingRequest__block_invoke;
    v13 = &unk_279EE8C58;
    v14 = pendingRequest;
    selfCopy = self;
    v8 = _Block_copy(&v10);
    v9 = [(WFCompactHostingViewController *)self presentedViewController:v10];

    if (v9)
    {
      [(WFCompactHostingViewController *)self dismissPlatterViewControllerAndUpdateChromeAnimated:1 completionHandler:v8];
    }

    else
    {
      [(WFCompactHostingViewController *)self updateChromeVisibilityWithCompletionHandler:0];
      v8[2](v8);
    }

    goto LABEL_12;
  }

  v5 = [presentedViewController canHandleFollowUpRequest:pendingRequest];
  v6 = getWFDialogLogObject();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (!v5)
  {
    if (v7)
    {
      *buf = 136315394;
      v17 = "[WFCompactHostingViewController handlePendingRequest]";
      v18 = 2112;
      v19 = presentedViewController;
      _os_log_impl(&dword_274719000, v6, OS_LOG_TYPE_DEFAULT, "%s Currently presented platter could not handle the follow up, dismissing: %@", buf, 0x16u);
    }

    goto LABEL_8;
  }

  if (v7)
  {
    *buf = 136315138;
    v17 = "[WFCompactHostingViewController handlePendingRequest]";
    _os_log_impl(&dword_274719000, v6, OS_LOG_TYPE_DEFAULT, "%s Currently presented platter can handle follow up request", buf, 0xCu);
  }

  [presentedViewController handleFollowUpRequest:pendingRequest];
LABEL_12:
}

void __54__WFCompactHostingViewController_handlePendingRequest__block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 40) setTouchPassthrough:1];
    v2 = [objc_alloc(objc_msgSend(*(a1 + 32) "wf_dialogViewControllerClass"))];
    [v2 setDelegate:*(a1 + 40)];
    if (WFIsRunningOniPad())
    {
      v3 = dispatch_time(0, 600000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __54__WFCompactHostingViewController_handlePendingRequest__block_invoke_2;
      block[3] = &unk_279EE8C58;
      block[4] = *(a1 + 40);
      v31 = v2;
      dispatch_after(v3, MEMORY[0x277D85CD0], block);
    }

    else
    {
      [*(a1 + 40) presentViewController:v2 animated:1 completion:0];
    }
  }

  else if ([objc_opt_class() conformsToProtocol:&unk_28843BCD0])
  {
    v4 = [objc_alloc(objc_msgSend(*(a1 + 32) "wf_dialogViewControllerClass"))];
    [v4 setDelegate:*(a1 + 40)];
    [*(a1 + 40) setPreparingToPresentDialog:1];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __54__WFCompactHostingViewController_handlePendingRequest__block_invoke_3;
    v28[3] = &unk_279EE8C58;
    v28[4] = *(a1 + 40);
    v29 = v4;
    v5 = v4;
    [v5 prepareForPresentationWithCompletionHandler:v28];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [*(a1 + 40) unlockService];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __54__WFCompactHostingViewController_handlePendingRequest__block_invoke_4;
      v26[3] = &unk_279EE8590;
      v24 = *(a1 + 32);
      v7 = v24.i64[0];
      v27 = vextq_s8(v24, v24, 8uLL);
      [v6 requestUnlockIfNeeded:v26];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(a1 + 40) setTouchPassthrough:1];
        v8 = [*(a1 + 40) requestCompletionHandler];

        if (v8)
        {
          v9 = [*(a1 + 40) view];
          [v9 bounds];
          [WFCompactPlatterPresentationController preferredSizeForPresentingInContainerViewOfSize:v10, v11];
          v13 = v12;

          v14 = [MEMORY[0x277CBEAF8] currentLocale];
          v15 = objc_alloc(MEMORY[0x277D23C88]);
          v16 = [*(a1 + 40) traitCollection];
          v17 = [v15 initWithSize:v14 locale:v16 traitCollection:{v13, 1.79769313e308}];

          v18 = [*(a1 + 40) requestCompletionHandler];
          v19 = [objc_alloc(MEMORY[0x277D7C5F8]) initWithEnvironment:v17];
          (v18)[2](v18, v19);

          [*(a1 + 40) setRequestCompletionHandler:0];
        }

        [*(a1 + 40) setTouchPassthrough:0];
        v20 = *(a1 + 40);

        [v20 setHandlingRequest:0];
      }

      else
      {
        v21 = getWFDialogLogObject();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = *(a1 + 32);
          *buf = 136315394;
          v33 = "[WFCompactHostingViewController handlePendingRequest]_block_invoke";
          v34 = 2114;
          v35 = v22;
          _os_log_impl(&dword_274719000, v21, OS_LOG_TYPE_ERROR, "%s Could not find a view class to handle the dialog request: %{public}@", buf, 0x16u);
        }

        [*(a1 + 40) setHandlingRequest:0];
        v23 = *(a1 + 40);
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __54__WFCompactHostingViewController_handlePendingRequest__block_invoke_270;
        v25[3] = &unk_279EE8A78;
        v25[4] = v23;
        [v23 updateChromeVisibilityWithCompletionHandler:v25];
      }
    }
  }
}

uint64_t __54__WFCompactHostingViewController_handlePendingRequest__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setPreparingToPresentDialog:0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 presentViewController:v3 animated:1 completion:0];
}

void __54__WFCompactHostingViewController_handlePendingRequest__block_invoke_4(uint64_t a1, char a2)
{
  if (a2)
  {
    v22 = *(a1 + 40);
    v3 = WFUserInterfaceFromViewController();
    v4 = objc_alloc(MEMORY[0x277D7D4F8]);
    v5 = *MEMORY[0x277CFC710];
    v6 = [v22 actionClassName];
    v7 = [v22 classNamesByType];
    v8 = [*(a1 + 40) attribution];
    v9 = [v4 initWithUserInterfaceType:v5 actionClassName:v6 classNamesByType:v7 attribution:v8];

    v10 = *(a1 + 32);
    v11 = [v9 actionInterface];
    [v11 setDelegate:v10];

    [*(a1 + 32) setActionInterfaceListener:v9];
    v12 = [*(a1 + 32) requestCompletionHandler];

    if (v12)
    {
      v13 = [*(a1 + 32) requestCompletionHandler];
      v14 = objc_alloc(MEMORY[0x277D7C8B8]);
      v15 = [v9 endpoint];
      v16 = [v3 userInterfaceType];
      v17 = [v14 initWithListenerEndpoint:v15 userInterfaceType:v16];
      (v13)[2](v13, v17);

      [*(a1 + 32) setRequestCompletionHandler:0];
    }
  }

  else
  {
    v18 = [*(a1 + 32) requestCompletionHandler];

    if (v18)
    {
      v19 = [*(a1 + 32) requestCompletionHandler];
      v20 = [objc_alloc(MEMORY[0x277D79F38]) initWithCancelled:1];
      (v19)[2](v19, v20);

      v21 = *(a1 + 32);

      [v21 setRequestCompletionHandler:0];
    }
  }
}

uint64_t __54__WFCompactHostingViewController_handlePendingRequest__block_invoke_270(uint64_t a1)
{
  v2 = [*(a1 + 32) requestCompletionHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) requestCompletionHandler];
    v4 = [objc_alloc(MEMORY[0x277D79F38]) initWithCancelled:1];
    (v3)[2](v3, v4);

    [*(a1 + 32) setRequestCompletionHandler:0];
  }

  v5 = *(a1 + 32);

  return [v5 scheduleStatusViewToAppear];
}

- (void)handleRequest:(id)request completionHandler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (requestCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFCompactHostingViewController.m" lineNumber:322 description:{@"Invalid parameter not satisfying: %@", @"request"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFCompactHostingViewController.m" lineNumber:323 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  v10 = getWFDialogLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "[WFCompactHostingViewController handleRequest:completionHandler:]";
    v16 = 2114;
    v17 = requestCopy;
    _os_log_impl(&dword_274719000, v10, OS_LOG_TYPE_DEFAULT, "%s Received request: %{public}@", buf, 0x16u);
  }

  [(WFCompactHostingViewController *)self setPendingRequest:requestCopy];
  v11 = [v9 copy];
  [(WFCompactHostingViewController *)self setRequestCompletionHandler:v11];

  [(WFCompactHostingViewController *)self presentChromeIfPossible];
}

- (void)setTouchPassthrough:(BOOL)passthrough
{
  passthroughCopy = passthrough;
  dimmingView = [(WFCompactHostingViewController *)self dimmingView];
  [dimmingView setHidden:passthroughCopy];

  materialView = [(WFCompactHostingViewController *)self materialView];
  [materialView setHidden:passthroughCopy];
}

- (void)clearStatusViewTimer
{
  statusViewTimer = [(WFCompactHostingViewController *)self statusViewTimer];
  [statusViewTimer invalidate];

  [(WFCompactHostingViewController *)self setStatusViewTimer:0];
}

- (void)scheduleStatusViewToAppear
{
  runningContext = [(WFCompactHostingViewController *)self runningContext];

  if (runningContext)
  {
    v4 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_presentStatusViewController selector:0 userInfo:0 repeats:0.5];
    [(WFCompactHostingViewController *)self setStatusViewTimer:v4];
  }
}

- (void)presentStatusViewController
{
  v10 = *MEMORY[0x277D85DE8];
  runningContext = [(WFCompactHostingViewController *)self runningContext];

  if (runningContext)
  {
    [(WFCompactHostingViewController *)self clearStatusViewTimer];
    v4 = getWFDialogLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[WFCompactHostingViewController presentStatusViewController]";
      _os_log_impl(&dword_274719000, v4, OS_LOG_TYPE_DEFAULT, "%s Presenting status view", &v8, 0xCu);
    }

    statusViewController = [(WFCompactHostingViewController *)self statusViewController];
    if (!statusViewController)
    {
      statusViewController = objc_alloc_init(WFCompactStatusViewController);
      progress = [(WFCompactHostingViewController *)self progress];
      [(WFCompactStatusViewController *)statusViewController setProgress:progress];

      runningAttribution = [(WFCompactHostingViewController *)self runningAttribution];
      [(WFCompactStatusViewController *)statusViewController setAttribution:runningAttribution];

      [(WFCompactHostingViewController *)self setStatusViewController:statusViewController];
    }

    [(WFCompactHostingViewController *)self presentViewController:statusViewController animated:1 completion:0];
  }
}

- (void)updateChromeVisibilityWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(WFCompactHostingViewController *)self handlingRequest])
  {
    v5 = 1;
  }

  else
  {
    runningContext = [(WFCompactHostingViewController *)self runningContext];
    v5 = runningContext != 0;
  }

  if ([(WFCompactHostingViewController *)self screenIsLocked])
  {
    v7 = 0;
  }

  else
  {
    presentedViewController = [(WFCompactHostingViewController *)self presentedViewController];
    if (presentedViewController)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = presentedViewController;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    viewIfLoaded = [v10 viewIfLoaded];

    LODWORD(v10) = [viewIfLoaded wf_containsFirstResponder];
    mEMORY[0x277D7BDB0] = [MEMORY[0x277D7BDB0] sharedKeyboard];
    v13 = [mEMORY[0x277D7BDB0] isVisible] & v10;

    v7 = v5 & (v13 ^ 1);
    LOBYTE(v5) = v13;
  }

  materialView = [(WFCompactHostingViewController *)self materialView];
  [materialView weighting];
  v16 = v15;

  dimmingView = [(WFCompactHostingViewController *)self dimmingView];
  [dimmingView alpha];
  v19 = v18;

  if (v5 == v16 <= 0.0 || ((v7 ^ (v19 <= 0.0)) & 1) == 0)
  {
    v20 = MEMORY[0x277D75D18];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __78__WFCompactHostingViewController_updateChromeVisibilityWithCompletionHandler___block_invoke;
    v23[3] = &unk_279EE8428;
    v23[4] = self;
    v24 = v7;
    v25 = v5;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __78__WFCompactHostingViewController_updateChromeVisibilityWithCompletionHandler___block_invoke_2;
    v21[3] = &unk_279EE8450;
    v22 = handlerCopy;
    [v20 animateWithDuration:4 delay:v23 options:v21 animations:0.300000012 completion:0.100000001];
  }

  else if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }
}

void __78__WFCompactHostingViewController_updateChromeVisibilityWithCompletionHandler___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  v3 = [*(a1 + 32) dimmingView];
  [v3 setAlpha:v2];

  if (*(a1 + 41))
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = [*(a1 + 32) materialView];
  [v5 setWeighting:v4];
}

uint64_t __78__WFCompactHostingViewController_updateChromeVisibilityWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setProgress:(id)progress
{
  objc_storeStrong(&self->_progress, progress);
  progressCopy = progress;
  statusViewController = [(WFCompactHostingViewController *)self statusViewController];
  [statusViewController setProgress:progressCopy];
}

- (void)presentChromeIfPossible
{
  if ([(WFCompactHostingViewController *)self hasViewAppeared])
  {
    pendingRequest = [(WFCompactHostingViewController *)self pendingRequest];

    if (pendingRequest)
    {
      pendingRequest2 = [(WFCompactHostingViewController *)self pendingRequest];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        singleStepShortcutCompletionDialogDebouncer = [(WFCompactHostingViewController *)self singleStepShortcutCompletionDialogDebouncer];
        [singleStepShortcutCompletionDialogDebouncer poke];
      }

      else
      {

        [(WFCompactHostingViewController *)self handlePendingRequest];
      }
    }

    else
    {
      runningContext = [(WFCompactHostingViewController *)self runningContext];

      if (runningContext)
      {
        [(WFCompactHostingViewController *)self updateChromeVisibilityWithCompletionHandler:0];

        [(WFCompactHostingViewController *)self scheduleStatusViewToAppear];
      }
    }
  }
}

- (void)preparePersistentChromeWithContext:(id)context attribution:(id)attribution
{
  contextCopy = context;
  attributionCopy = attribution;
  if (!contextCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFCompactHostingViewController.m" lineNumber:194 description:{@"Invalid parameter not satisfying: %@", @"runningContext"}];
  }

  runningContext = self->_runningContext;
  if (runningContext && self->_progressSubscriber)
  {
    [(WFWorkflowRunningContext *)runningContext removeProgressSubscriber:?];
  }

  objc_storeStrong(&self->_runningContext, context);
  objc_storeStrong(&self->_runningAttribution, attribution);
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__WFCompactHostingViewController_preparePersistentChromeWithContext_attribution___block_invoke;
  aBlock[3] = &unk_279EE8400;
  objc_copyWeak(&v15, &location);
  v11 = _Block_copy(aBlock);
  v12 = [contextCopy addProgressSubscriberUsingPublishingHandler:v11];
  [(WFCompactHostingViewController *)self setProgressSubscriber:v12];

  [(WFCompactHostingViewController *)self presentChromeIfPossible];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

id __81__WFCompactHostingViewController_preparePersistentChromeWithContext_attribution___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__WFCompactHostingViewController_preparePersistentChromeWithContext_attribution___block_invoke_2;
  aBlock[3] = &unk_279EE8908;
  objc_copyWeak(&v9, (a1 + 32));
  v4 = _Block_copy(aBlock);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setProgress:v3];
  v6 = _Block_copy(v4);

  objc_destroyWeak(&v9);

  return v6;
}

void __81__WFCompactHostingViewController_preparePersistentChromeWithContext_attribution___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setProgress:0];
}

- (void)viewWillLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = WFCompactHostingViewController;
  [(WFCompactHostingViewController *)&v6 viewWillLayoutSubviews];
  pendingRequest = [(WFCompactHostingViewController *)self pendingRequest];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    singleStepShortcutCompletionDialogDebouncer = [(WFCompactHostingViewController *)self singleStepShortcutCompletionDialogDebouncer];
    [singleStepShortcutCompletionDialogDebouncer poke];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = WFCompactHostingViewController;
  [(WFCompactHostingViewController *)&v7 viewDidAppear:appear];
  if (![(WFCompactHostingViewController *)self hasViewAppeared])
  {
    [(WFCompactHostingViewController *)self setHasViewAppeared:1];
    view = [(WFCompactHostingViewController *)self view];
    window = [view window];
    _rootSheetPresentationController = [window _rootSheetPresentationController];
    [_rootSheetPresentationController _setShouldScaleDownBehindDescendantSheets:0];

    [(WFCompactHostingViewController *)self presentChromeIfPossible];
  }
}

- (void)cancelAndDismiss
{
  v16 = *MEMORY[0x277D85DE8];
  if (![(WFCompactHostingViewController *)self preparingToPresentDialog])
  {
    progress = [(WFCompactHostingViewController *)self progress];

    if (progress)
    {
      v4 = getWFDialogLogObject();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v15 = "[WFCompactHostingViewController cancelAndDismiss]";
        _os_log_impl(&dword_274719000, v4, OS_LOG_TYPE_DEFAULT, "%s Cancelling NSProgress", buf, 0xCu);
      }

      progress2 = [(WFCompactHostingViewController *)self progress];
      [progress2 cancel];
    }

    else
    {
      requestCompletionHandler = [(WFCompactHostingViewController *)self requestCompletionHandler];

      v7 = getWFDialogLogObject();
      v8 = v7;
      if (requestCompletionHandler)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v15 = "[WFCompactHostingViewController cancelAndDismiss]";
          _os_log_impl(&dword_274719000, v8, OS_LOG_TYPE_DEFAULT, "%s Cancelling request", buf, 0xCu);
        }

        requestCompletionHandler2 = [(WFCompactHostingViewController *)self requestCompletionHandler];
        [(WFCompactHostingViewController *)self setRequestCompletionHandler:0];
        [(WFCompactHostingViewController *)self setHandlingRequest:0];
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __50__WFCompactHostingViewController_cancelAndDismiss__block_invoke;
        v12[3] = &unk_279EE8A50;
        v13 = requestCompletionHandler2;
        v10 = requestCompletionHandler2;
        [(WFCompactHostingViewController *)self dismissPlatterViewControllerAndUpdateChromeAnimated:1 completionHandler:v12];
      }

      else
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v15 = "[WFCompactHostingViewController cancelAndDismiss]";
          _os_log_impl(&dword_274719000, v8, OS_LOG_TYPE_ERROR, "%s Failed to cancel; no NSProgress or request to cancel", buf, 0xCu);
        }

        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __50__WFCompactHostingViewController_cancelAndDismiss__block_invoke_188;
        v11[3] = &unk_279EE8A78;
        v11[4] = self;
        [(WFCompactHostingViewController *)self dismissPlatterViewControllerAndUpdateChromeAnimated:1 completionHandler:v11];
      }
    }
  }
}

void __50__WFCompactHostingViewController_cancelAndDismiss__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [objc_alloc(MEMORY[0x277D79F38]) initWithCancelled:1];
  (*(v1 + 16))(v1, v2);
}

void __50__WFCompactHostingViewController_cancelAndDismiss__block_invoke_188(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = getWFDialogLogObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315138;
        v9 = "[WFCompactHostingViewController cancelAndDismiss]_block_invoke";
        _os_log_impl(&dword_274719000, v6, OS_LOG_TYPE_DEFAULT, "%s Requesting daemon to cleanup the view service", &v8, 0xCu);
      }

      v7 = [*(a1 + 32) delegate];
      [v7 hostingViewControllerDidRequestExit:*(a1 + 32)];
    }
  }
}

- (void)handleTapGesture:(id)gesture
{
  if ([gesture state] == 3)
  {
    materialView = [(WFCompactHostingViewController *)self materialView];
    [materialView weighting];
    v6 = v5;

    if (v6 < 1.0 || -[WFCompactHostingViewController screenIsLocked](self, "screenIsLocked") && ([MEMORY[0x277D7BDB0] sharedKeyboard], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isVisible"), v7, (v8 & 1) == 0))
    {

      [(WFCompactHostingViewController *)self cancelAndDismiss];
    }

    else
    {
      view = [(WFCompactHostingViewController *)self view];
      window = [view window];
      [window endEditing:1];
    }
  }
}

- (void)loadView
{
  v11.receiver = self;
  v11.super_class = WFCompactHostingViewController;
  [(WFCompactHostingViewController *)&v11 loadView];
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v3 setAlpha:0.0];
  view = [(WFCompactHostingViewController *)self view];
  [view bounds];
  [v3 setFrame:?];

  v5 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.200000003];
  [v3 setBackgroundColor:v5];

  [v3 setAutoresizingMask:18];
  view2 = [(WFCompactHostingViewController *)self view];
  [view2 addSubview:v3];

  [(WFCompactHostingViewController *)self setDimmingView:v3];
  v7 = [MEMORY[0x277D26718] materialViewWithRecipe:6 options:0 initialWeighting:0.0];
  [v7 setUserInteractionEnabled:1];
  view3 = [(WFCompactHostingViewController *)self view];
  [view3 bounds];
  [v7 setFrame:?];

  [v7 setAutoresizingMask:18];
  view4 = [(WFCompactHostingViewController *)self view];
  [view4 addSubview:v7];

  [(WFCompactHostingViewController *)self setMaterialView:v7];
  v10 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_handleTapGesture_];
  [v7 addGestureRecognizer:v10];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D7BE00] object:0];

  v4.receiver = self;
  v4.super_class = WFCompactHostingViewController;
  [(WFCompactHostingViewController *)&v4 dealloc];
}

- (WFCompactHostingViewController)initWithScreenLocked:(BOOL)locked delegate:(id)delegate
{
  delegateCopy = delegate;
  v20.receiver = self;
  v20.super_class = WFCompactHostingViewController;
  v7 = [(WFCompactHostingViewController *)&v20 init];
  v8 = v7;
  if (v7)
  {
    v7->_screenIsLocked = locked;
    objc_storeWeak(&v7->_delegate, delegateCopy);
    v9 = objc_opt_new();
    unlockService = v8->_unlockService;
    v8->_unlockService = v9;

    v8->_allowedInterfaceOrientations = 30;
    v11 = objc_alloc(MEMORY[0x277D79F00]);
    v12 = WFIsRunningOniPad();
    v13 = 0.1;
    if (v12)
    {
      v13 = 0.2;
    }

    v14 = [v11 initWithDelay:MEMORY[0x277D85CD0] maximumDelay:v13 queue:0.8];
    singleStepShortcutCompletionDialogDebouncer = v8->_singleStepShortcutCompletionDialogDebouncer;
    v8->_singleStepShortcutCompletionDialogDebouncer = v14;

    singleStepShortcutCompletionDialogDebouncer = [(WFCompactHostingViewController *)v8 singleStepShortcutCompletionDialogDebouncer];
    [singleStepShortcutCompletionDialogDebouncer addTarget:v8 action:sel_handlePendingRequest];

    [(WFCompactHostingViewController *)v8 setModalPresentationStyle:6];
    [(WFCompactHostingViewController *)v8 setModalTransitionStyle:2];
    [MEMORY[0x277D7BDB0] beginObservingKeyboardNotifications];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel_keyboardWillChange name:*MEMORY[0x277D7BE00] object:0];

    v18 = v8;
  }

  return v8;
}

@end