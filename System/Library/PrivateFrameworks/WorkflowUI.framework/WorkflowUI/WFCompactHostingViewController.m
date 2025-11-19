@interface WFCompactHostingViewController
- (WFCompactHostingViewController)initWithScreenLocked:(BOOL)a3 delegate:(id)a4;
- (WFCompactHostingViewControllerDelegate)delegate;
- (id)presentationAnchorForActionUserInterface:(id)a3;
- (void)actionUserInterface:(id)a3 showViewControllerInPlatter:(id)a4;
- (void)cancelAndDismiss;
- (void)clearStatusViewTimer;
- (void)dealloc;
- (void)dialogViewController:(id)a3 didFinishWithResponse:(id)a4 waitForFollowUpRequest:(BOOL)a5;
- (void)dismissPersistentChromeWithSuccess:(BOOL)a3 customAttribution:(id)a4 completionHandler:(id)a5;
- (void)dismissPlatterViewControllerAndUpdateChromeAnimated:(BOOL)a3 completionHandler:(id)a4;
- (void)dismissPlatterViewControllerIfNecessaryAnimated:(BOOL)a3 completionHandler:(id)a4;
- (void)dismissPresentedContentWithCompletionHandler:(id)a3;
- (void)handlePendingRequest;
- (void)handleRequest:(id)a3 completionHandler:(id)a4;
- (void)handleTapGesture:(id)a3;
- (void)loadView;
- (void)preparePersistentChromeWithContext:(id)a3 attribution:(id)a4;
- (void)presentChromeIfPossible;
- (void)presentStatusViewController;
- (void)scheduleStatusViewToAppear;
- (void)setProgress:(id)a3;
- (void)setTouchPassthrough:(BOOL)a3;
- (void)updateChromeVisibilityWithCompletionHandler:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation WFCompactHostingViewController

- (WFCompactHostingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)actionUserInterface:(id)a3 showViewControllerInPlatter:(id)a4
{
  v6 = a4;
  v7 = a3;
  v12 = objc_alloc_init(WFCompactPlatterViewController);
  v8 = [(WFCompactPlatterViewController *)v12 platterView];
  v9 = [v7 attribution];

  [v8 setAttribution:v9];
  v10 = [(WFCompactPlatterViewController *)v12 platterView];
  v11 = [MEMORY[0x277D7D530] defaultConfiguration];
  [v10 applyStylingWithConfiguration:v11];

  [(WFCompactPlatterViewController *)v12 setContentViewController:v6];
  [(WFCompactHostingViewController *)self presentViewController:v12 animated:1 completion:0];
}

- (id)presentationAnchorForActionUserInterface:(id)a3
{
  v3 = [(WFCompactHostingViewController *)self view];
  v4 = [v3 window];

  return v4;
}

- (void)dismissPersistentChromeWithSuccess:(BOOL)a3 customAttribution:(id)a4 completionHandler:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  [(WFCompactHostingViewController *)self clearStatusViewTimer];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __105__WFCompactHostingViewController_dismissPersistentChromeWithSuccess_customAttribution_completionHandler___block_invoke;
  aBlock[3] = &unk_279EE8B18;
  aBlock[4] = self;
  v10 = v9;
  v25 = v10;
  v11 = _Block_copy(aBlock);
  v12 = v11;
  if (v6)
  {
    v13 = [(WFCompactHostingViewController *)self presentedViewController];
    if (v13 && (v14 = v13, [(WFCompactHostingViewController *)self presentedViewController], v15 = objc_claimAutoreleasedReturnValue(), [(WFCompactHostingViewController *)self statusViewController], v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v14, v15 == v16))
    {
      v20 = [(WFCompactHostingViewController *)self statusViewController];
      [v20 transitionToCompleted:1 animated:1];

      v21 = dispatch_time(0, 750000000);
      dispatch_after(v21, MEMORY[0x277D85CD0], v12);
    }

    else
    {
      v17 = objc_alloc_init(WFCompactStatusViewController);
      v18 = v17;
      if (v8)
      {
        [(WFCompactStatusViewController *)v17 setAttribution:v8];
      }

      else
      {
        v19 = [(WFCompactHostingViewController *)self runningAttribution];
        [(WFCompactStatusViewController *)v18 setAttribution:v19];
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

- (void)dismissPlatterViewControllerAndUpdateChromeAnimated:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __104__WFCompactHostingViewController_dismissPlatterViewControllerAndUpdateChromeAnimated_completionHandler___block_invoke;
  v15[3] = &unk_279EE8A78;
  v8 = v7;
  v16 = v8;
  [(WFCompactHostingViewController *)self dismissPlatterViewControllerIfNecessaryAnimated:v4 completionHandler:v15];
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
  v12 = v6;
  v10 = v6;
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

- (void)dismissPlatterViewControllerIfNecessaryAnimated:(BOOL)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(WFCompactHostingViewController *)self presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __100__WFCompactHostingViewController_dismissPlatterViewControllerIfNecessaryAnimated_completionHandler___block_invoke;
    block[3] = &unk_279EE8478;
    block[4] = self;
    v11 = a3;
    v10 = v6;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else if (v6)
  {
    v6[2](v6);
  }
}

- (void)dismissPresentedContentWithCompletionHandler:(id)a3
{
  v4 = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__WFCompactHostingViewController_dismissPresentedContentWithCompletionHandler___block_invoke;
  aBlock[3] = &unk_279EE8B18;
  aBlock[4] = self;
  v5 = v4;
  v12 = v5;
  v6 = _Block_copy(aBlock);
  [(WFCompactHostingViewController *)self setHandlingRequest:0];
  [(WFCompactHostingViewController *)self setPreparingToPresentDialog:0];
  [(WFCompactHostingViewController *)self setAllowedInterfaceOrientations:30];
  v7 = [(WFCompactHostingViewController *)self presentedViewController];
  if (!v7 || ([(WFCompactHostingViewController *)self statusViewController], v8 = objc_claimAutoreleasedReturnValue(), v8, v7 == v8))
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

- (void)dialogViewController:(id)a3 didFinishWithResponse:(id)a4 waitForFollowUpRequest:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __100__WFCompactHostingViewController_dialogViewController_didFinishWithResponse_waitForFollowUpRequest___block_invoke;
  aBlock[3] = &unk_279EE8CA8;
  v10 = v8;
  v17 = v10;
  v18 = self;
  v11 = v9;
  v19 = v11;
  v12 = _Block_copy(aBlock);
  v13 = v12;
  if (v5)
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
  v3 = [(WFCompactHostingViewController *)self pendingRequest];
  [(WFCompactHostingViewController *)self setHandlingRequest:1];
  [(WFCompactHostingViewController *)self setPendingRequest:0];
  v4 = [(WFCompactHostingViewController *)self presentedViewController];
  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v4 = 0;
LABEL_8:
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __54__WFCompactHostingViewController_handlePendingRequest__block_invoke;
    v13 = &unk_279EE8C58;
    v14 = v3;
    v15 = self;
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

  v5 = [v4 canHandleFollowUpRequest:v3];
  v6 = getWFDialogLogObject();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (!v5)
  {
    if (v7)
    {
      *buf = 136315394;
      v17 = "[WFCompactHostingViewController handlePendingRequest]";
      v18 = 2112;
      v19 = v4;
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

  [v4 handleFollowUpRequest:v3];
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

- (void)handleRequest:(id)a3 completionHandler:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"WFCompactHostingViewController.m" lineNumber:322 description:{@"Invalid parameter not satisfying: %@", @"request"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v13 = [MEMORY[0x277CCA890] currentHandler];
  [v13 handleFailureInMethod:a2 object:self file:@"WFCompactHostingViewController.m" lineNumber:323 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  v10 = getWFDialogLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "[WFCompactHostingViewController handleRequest:completionHandler:]";
    v16 = 2114;
    v17 = v7;
    _os_log_impl(&dword_274719000, v10, OS_LOG_TYPE_DEFAULT, "%s Received request: %{public}@", buf, 0x16u);
  }

  [(WFCompactHostingViewController *)self setPendingRequest:v7];
  v11 = [v9 copy];
  [(WFCompactHostingViewController *)self setRequestCompletionHandler:v11];

  [(WFCompactHostingViewController *)self presentChromeIfPossible];
}

- (void)setTouchPassthrough:(BOOL)a3
{
  v3 = a3;
  v5 = [(WFCompactHostingViewController *)self dimmingView];
  [v5 setHidden:v3];

  v6 = [(WFCompactHostingViewController *)self materialView];
  [v6 setHidden:v3];
}

- (void)clearStatusViewTimer
{
  v3 = [(WFCompactHostingViewController *)self statusViewTimer];
  [v3 invalidate];

  [(WFCompactHostingViewController *)self setStatusViewTimer:0];
}

- (void)scheduleStatusViewToAppear
{
  v3 = [(WFCompactHostingViewController *)self runningContext];

  if (v3)
  {
    v4 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_presentStatusViewController selector:0 userInfo:0 repeats:0.5];
    [(WFCompactHostingViewController *)self setStatusViewTimer:v4];
  }
}

- (void)presentStatusViewController
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [(WFCompactHostingViewController *)self runningContext];

  if (v3)
  {
    [(WFCompactHostingViewController *)self clearStatusViewTimer];
    v4 = getWFDialogLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[WFCompactHostingViewController presentStatusViewController]";
      _os_log_impl(&dword_274719000, v4, OS_LOG_TYPE_DEFAULT, "%s Presenting status view", &v8, 0xCu);
    }

    v5 = [(WFCompactHostingViewController *)self statusViewController];
    if (!v5)
    {
      v5 = objc_alloc_init(WFCompactStatusViewController);
      v6 = [(WFCompactHostingViewController *)self progress];
      [(WFCompactStatusViewController *)v5 setProgress:v6];

      v7 = [(WFCompactHostingViewController *)self runningAttribution];
      [(WFCompactStatusViewController *)v5 setAttribution:v7];

      [(WFCompactHostingViewController *)self setStatusViewController:v5];
    }

    [(WFCompactHostingViewController *)self presentViewController:v5 animated:1 completion:0];
  }
}

- (void)updateChromeVisibilityWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([(WFCompactHostingViewController *)self handlingRequest])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(WFCompactHostingViewController *)self runningContext];
    v5 = v6 != 0;
  }

  if ([(WFCompactHostingViewController *)self screenIsLocked])
  {
    v7 = 0;
  }

  else
  {
    v8 = [(WFCompactHostingViewController *)self presentedViewController];
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
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

    v11 = [v10 viewIfLoaded];

    LODWORD(v10) = [v11 wf_containsFirstResponder];
    v12 = [MEMORY[0x277D7BDB0] sharedKeyboard];
    v13 = [v12 isVisible] & v10;

    v7 = v5 & (v13 ^ 1);
    LOBYTE(v5) = v13;
  }

  v14 = [(WFCompactHostingViewController *)self materialView];
  [v14 weighting];
  v16 = v15;

  v17 = [(WFCompactHostingViewController *)self dimmingView];
  [v17 alpha];
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
    v22 = v4;
    [v20 animateWithDuration:4 delay:v23 options:v21 animations:0.300000012 completion:0.100000001];
  }

  else if (v4)
  {
    v4[2](v4);
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

- (void)setProgress:(id)a3
{
  objc_storeStrong(&self->_progress, a3);
  v5 = a3;
  v6 = [(WFCompactHostingViewController *)self statusViewController];
  [v6 setProgress:v5];
}

- (void)presentChromeIfPossible
{
  if ([(WFCompactHostingViewController *)self hasViewAppeared])
  {
    v3 = [(WFCompactHostingViewController *)self pendingRequest];

    if (v3)
    {
      v4 = [(WFCompactHostingViewController *)self pendingRequest];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v7 = [(WFCompactHostingViewController *)self singleStepShortcutCompletionDialogDebouncer];
        [v7 poke];
      }

      else
      {

        [(WFCompactHostingViewController *)self handlePendingRequest];
      }
    }

    else
    {
      v6 = [(WFCompactHostingViewController *)self runningContext];

      if (v6)
      {
        [(WFCompactHostingViewController *)self updateChromeVisibilityWithCompletionHandler:0];

        [(WFCompactHostingViewController *)self scheduleStatusViewToAppear];
      }
    }
  }
}

- (void)preparePersistentChromeWithContext:(id)a3 attribution:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"WFCompactHostingViewController.m" lineNumber:194 description:{@"Invalid parameter not satisfying: %@", @"runningContext"}];
  }

  runningContext = self->_runningContext;
  if (runningContext && self->_progressSubscriber)
  {
    [(WFWorkflowRunningContext *)runningContext removeProgressSubscriber:?];
  }

  objc_storeStrong(&self->_runningContext, a3);
  objc_storeStrong(&self->_runningAttribution, a4);
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__WFCompactHostingViewController_preparePersistentChromeWithContext_attribution___block_invoke;
  aBlock[3] = &unk_279EE8400;
  objc_copyWeak(&v15, &location);
  v11 = _Block_copy(aBlock);
  v12 = [v8 addProgressSubscriberUsingPublishingHandler:v11];
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
  v3 = [(WFCompactHostingViewController *)self pendingRequest];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(WFCompactHostingViewController *)self singleStepShortcutCompletionDialogDebouncer];
    [v5 poke];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = WFCompactHostingViewController;
  [(WFCompactHostingViewController *)&v7 viewDidAppear:a3];
  if (![(WFCompactHostingViewController *)self hasViewAppeared])
  {
    [(WFCompactHostingViewController *)self setHasViewAppeared:1];
    v4 = [(WFCompactHostingViewController *)self view];
    v5 = [v4 window];
    v6 = [v5 _rootSheetPresentationController];
    [v6 _setShouldScaleDownBehindDescendantSheets:0];

    [(WFCompactHostingViewController *)self presentChromeIfPossible];
  }
}

- (void)cancelAndDismiss
{
  v16 = *MEMORY[0x277D85DE8];
  if (![(WFCompactHostingViewController *)self preparingToPresentDialog])
  {
    v3 = [(WFCompactHostingViewController *)self progress];

    if (v3)
    {
      v4 = getWFDialogLogObject();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v15 = "[WFCompactHostingViewController cancelAndDismiss]";
        _os_log_impl(&dword_274719000, v4, OS_LOG_TYPE_DEFAULT, "%s Cancelling NSProgress", buf, 0xCu);
      }

      v5 = [(WFCompactHostingViewController *)self progress];
      [v5 cancel];
    }

    else
    {
      v6 = [(WFCompactHostingViewController *)self requestCompletionHandler];

      v7 = getWFDialogLogObject();
      v8 = v7;
      if (v6)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v15 = "[WFCompactHostingViewController cancelAndDismiss]";
          _os_log_impl(&dword_274719000, v8, OS_LOG_TYPE_DEFAULT, "%s Cancelling request", buf, 0xCu);
        }

        v9 = [(WFCompactHostingViewController *)self requestCompletionHandler];
        [(WFCompactHostingViewController *)self setRequestCompletionHandler:0];
        [(WFCompactHostingViewController *)self setHandlingRequest:0];
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __50__WFCompactHostingViewController_cancelAndDismiss__block_invoke;
        v12[3] = &unk_279EE8A50;
        v13 = v9;
        v10 = v9;
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

- (void)handleTapGesture:(id)a3
{
  if ([a3 state] == 3)
  {
    v4 = [(WFCompactHostingViewController *)self materialView];
    [v4 weighting];
    v6 = v5;

    if (v6 < 1.0 || -[WFCompactHostingViewController screenIsLocked](self, "screenIsLocked") && ([MEMORY[0x277D7BDB0] sharedKeyboard], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isVisible"), v7, (v8 & 1) == 0))
    {

      [(WFCompactHostingViewController *)self cancelAndDismiss];
    }

    else
    {
      v10 = [(WFCompactHostingViewController *)self view];
      v9 = [v10 window];
      [v9 endEditing:1];
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
  v4 = [(WFCompactHostingViewController *)self view];
  [v4 bounds];
  [v3 setFrame:?];

  v5 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.200000003];
  [v3 setBackgroundColor:v5];

  [v3 setAutoresizingMask:18];
  v6 = [(WFCompactHostingViewController *)self view];
  [v6 addSubview:v3];

  [(WFCompactHostingViewController *)self setDimmingView:v3];
  v7 = [MEMORY[0x277D26718] materialViewWithRecipe:6 options:0 initialWeighting:0.0];
  [v7 setUserInteractionEnabled:1];
  v8 = [(WFCompactHostingViewController *)self view];
  [v8 bounds];
  [v7 setFrame:?];

  [v7 setAutoresizingMask:18];
  v9 = [(WFCompactHostingViewController *)self view];
  [v9 addSubview:v7];

  [(WFCompactHostingViewController *)self setMaterialView:v7];
  v10 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_handleTapGesture_];
  [v7 addGestureRecognizer:v10];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D7BE00] object:0];

  v4.receiver = self;
  v4.super_class = WFCompactHostingViewController;
  [(WFCompactHostingViewController *)&v4 dealloc];
}

- (WFCompactHostingViewController)initWithScreenLocked:(BOOL)a3 delegate:(id)a4
{
  v6 = a4;
  v20.receiver = self;
  v20.super_class = WFCompactHostingViewController;
  v7 = [(WFCompactHostingViewController *)&v20 init];
  v8 = v7;
  if (v7)
  {
    v7->_screenIsLocked = a3;
    objc_storeWeak(&v7->_delegate, v6);
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

    v16 = [(WFCompactHostingViewController *)v8 singleStepShortcutCompletionDialogDebouncer];
    [v16 addTarget:v8 action:sel_handlePendingRequest];

    [(WFCompactHostingViewController *)v8 setModalPresentationStyle:6];
    [(WFCompactHostingViewController *)v8 setModalTransitionStyle:2];
    [MEMORY[0x277D7BDB0] beginObservingKeyboardNotifications];
    v17 = [MEMORY[0x277CCAB98] defaultCenter];
    [v17 addObserver:v8 selector:sel_keyboardWillChange name:*MEMORY[0x277D7BE00] object:0];

    v18 = v8;
  }

  return v8;
}

@end