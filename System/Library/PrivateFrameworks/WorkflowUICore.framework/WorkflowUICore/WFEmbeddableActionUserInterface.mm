@interface WFEmbeddableActionUserInterface
- (BOOL)presentContent:(id)content completion:(id)completion;
- (void)cancelPresentationWithCompletionHandler:(id)handler;
- (void)presentContent:(id)content;
@end

@implementation WFEmbeddableActionUserInterface

- (void)cancelPresentationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  contentViewController = [(WFEmbeddableActionUserInterface *)self contentViewController];

  if (contentViewController)
  {
    if ([(WFEmbeddableActionUserInterface *)self prefersModalPresentation]&& ([(WFActionUserInterface *)self viewControllerForPresenting], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
    {
      viewControllerForPresenting = [(WFActionUserInterface *)self viewControllerForPresenting];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __75__WFEmbeddableActionUserInterface_cancelPresentationWithCompletionHandler___block_invoke;
      v12[3] = &unk_279EF51F0;
      v12[4] = self;
      v13 = handlerCopy;
      [viewControllerForPresenting dismissViewControllerAnimated:1 completion:v12];

      v8 = v13;
    }

    else
    {
      delegate = [(WFActionUserInterface *)self delegate];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __75__WFEmbeddableActionUserInterface_cancelPresentationWithCompletionHandler___block_invoke_2;
      v10[3] = &unk_279EF51F0;
      v10[4] = self;
      v11 = handlerCopy;
      [delegate dismissPlatterForActionUserInterface:self completionHandler:v10];

      v8 = v11;
    }
  }

  else
  {
    handlerCopy[2](handlerCopy);
  }
}

uint64_t __75__WFEmbeddableActionUserInterface_cancelPresentationWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setContentViewController:0];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

uint64_t __75__WFEmbeddableActionUserInterface_cancelPresentationWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setContentViewController:0];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (BOOL)presentContent:(id)content completion:(id)completion
{
  contentCopy = content;
  completionCopy = completion;
  if ([(WFEmbeddableActionUserInterface *)self prefersModalPresentation]&& ([(WFActionUserInterface *)self viewControllerForPresenting], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    viewControllerForPresenting = [(WFActionUserInterface *)self viewControllerForPresenting];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __61__WFEmbeddableActionUserInterface_presentContent_completion___block_invoke;
    v12[3] = &unk_279EF51C8;
    v12[4] = self;
    v13 = contentCopy;
    v14 = completionCopy;
    v10 = 1;
    [viewControllerForPresenting presentViewController:v13 animated:1 completion:v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __61__WFEmbeddableActionUserInterface_presentContent_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setContentViewController:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)presentContent:(id)content
{
  v10 = *MEMORY[0x277D85DE8];
  contentCopy = content;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  contentViewController = [(WFEmbeddableActionUserInterface *)self contentViewController];

  if (contentViewController)
  {
    v6 = getWFDialogLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v8 = 136315138;
      v9 = "[WFEmbeddableActionUserInterface presentContent:]";
      _os_log_impl(&dword_274AD4000, v6, OS_LOG_TYPE_FAULT, "%s Unable to present a content view controller while one is already active.", &v8, 0xCu);
    }
  }

  else if (![(WFEmbeddableActionUserInterface *)self presentContent:contentCopy completion:0])
  {
    delegate = [(WFActionUserInterface *)self delegate];
    [delegate actionUserInterface:self showViewControllerInPlatter:contentCopy];

    [(WFEmbeddableActionUserInterface *)self setContentViewController:contentCopy];
  }
}

@end