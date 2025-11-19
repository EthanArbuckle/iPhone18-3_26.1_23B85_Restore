@interface WFShowContentDialogViewController
- (BOOL)hasCustomHomeGestureBehavior;
- (BOOL)shouldHideSashView;
- (double)contentHeightForWidth:(double)a3 withMaximumVisibleHeight:(double)a4;
- (double)contentHeightWithPreferredHeight:(double)a3 maxVisibleHeight:(double)a4;
- (double)targetHeightForAnimatingToProposedHeight:(double)a3;
- (id)visualStylingProviderForCategory:(int64_t)a3;
- (void)askContainerForHomeGestureUpdate;
- (void)configureCell:(id)a3;
- (void)homeGestureDidPassThreshold;
- (void)loadView;
- (void)prepareForPresentationWithCompletionHandler:(id)a3;
- (void)updateActions;
@end

@implementation WFShowContentDialogViewController

- (BOOL)shouldHideSashView
{
  v2 = [(WFShowContentDialogViewController *)self contentCollectionPreviewController];
  v3 = [v2 shouldHideSashView];

  return v3;
}

- (void)homeGestureDidPassThreshold
{
  v3 = [(WFShowContentDialogViewController *)self presentedViewController];

  if (v3)
  {

    [(WFShowContentDialogViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (BOOL)hasCustomHomeGestureBehavior
{
  v2 = [(WFShowContentDialogViewController *)self presentedViewController];
  v3 = v2 != 0;

  return v3;
}

- (void)askContainerForHomeGestureUpdate
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"WFBannerShouldUpdateHomeGestureOwnershipNotification" object:0];
}

- (id)visualStylingProviderForCategory:(int64_t)a3
{
  v4 = [(WFCompactPlatterViewController *)self platterView];
  v5 = [v4 visualStylingProviderForCategory:a3];

  return v5;
}

- (void)configureCell:(id)a3
{
  v4 = a3;
  v5 = [(WFCompactPlatterViewController *)self appearanceProvider];
  [v5 configureChooseFromListDialogCell:v4];
}

- (double)targetHeightForAnimatingToProposedHeight:(double)a3
{
  [(WFCompactPlatterViewController *)self maximumExpectedVisibleContentHeight];

  [(WFShowContentDialogViewController *)self contentHeightWithPreferredHeight:a3 maxVisibleHeight:v5];
  return result;
}

- (void)updateActions
{
  v3 = objc_opt_new();
  objc_initWeak(&location, self);
  v4 = [(WFCompactDialogViewController *)self request];
  v5 = [v4 doneButton];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50__WFShowContentDialogViewController_updateActions__block_invoke;
  v12[3] = &unk_279EE8908;
  objc_copyWeak(&v13, &location);
  v6 = [WFCompactDialogAction actionForButton:v5 handler:v12];
  [v3 addObject:v6];

  v7 = [(WFCompactDialogViewController *)self request];
  v8 = [v7 cancelButton];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__WFShowContentDialogViewController_updateActions__block_invoke_2;
  v10[3] = &unk_279EE8908;
  objc_copyWeak(&v11, &location);
  v9 = [WFCompactDialogAction actionForButton:v8 handler:v10];
  [v3 addObject:v9];

  [(WFCompactDialogViewController *)self configureActionGroupWithActions:v3];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __50__WFShowContentDialogViewController_updateActions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [objc_alloc(MEMORY[0x277D79F38]) initWithCancelled:0];
  [WeakRetained finishWithResponse:v1];
}

void __50__WFShowContentDialogViewController_updateActions__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [objc_alloc(MEMORY[0x277D79F38]) initWithCancelled:1];
  [WeakRetained finishWithResponse:v1];
}

- (void)prepareForPresentationWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(WFCompactDialogViewController *)self request];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__WFShowContentDialogViewController_prepareForPresentationWithCompletionHandler___block_invoke;
  v7[3] = &unk_279EE7ED0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 getContentCollectionWithCompletionHandler:v7];
}

void __81__WFShowContentDialogViewController_prepareForPresentationWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) contentCollectionPreviewController];
  if (!v4)
  {
    v4 = objc_alloc_init(WFContentCollectionPreviewViewController);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__WFShowContentDialogViewController_prepareForPresentationWithCompletionHandler___block_invoke_2;
  v7[3] = &unk_279EE7EA8;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v4;
  v9 = v5;
  v6 = v4;
  [(WFContentCollectionPreviewViewController *)v6 prepareContentCollection:v3 withCompletionHandler:v7];
}

uint64_t __81__WFShowContentDialogViewController_prepareForPresentationWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setContentViewController:*(a1 + 40)];
  [*(a1 + 32) loadViewIfNeeded];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (double)contentHeightWithPreferredHeight:(double)a3 maxVisibleHeight:(double)a4
{
  v6 = [(WFShowContentDialogViewController *)self contentCollectionPreviewController];
  v7 = [v6 contentAllowsScrolling];

  if (a3 < a4)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  if (v8)
  {
    return a3;
  }

  else
  {
    return a4;
  }
}

- (double)contentHeightForWidth:(double)a3 withMaximumVisibleHeight:(double)a4
{
  v7 = [(WFShowContentDialogViewController *)self contentCollectionPreviewController];
  [v7 contentHeightForWidth:a3];
  v9 = v8;

  [(WFShowContentDialogViewController *)self contentHeightWithPreferredHeight:v9 maxVisibleHeight:a4];
  return result;
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = WFShowContentDialogViewController;
  [(WFCompactDialogViewController *)&v4 loadView];
  v3 = [(WFCompactPlatterViewController *)self platterView];
  [v3 setArrangeActionsVertically:1];
  [(WFShowContentDialogViewController *)self updateActions];
}

@end