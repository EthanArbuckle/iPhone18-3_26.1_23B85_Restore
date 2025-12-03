@interface WFShowContentDialogViewController
- (BOOL)hasCustomHomeGestureBehavior;
- (BOOL)shouldHideSashView;
- (double)contentHeightForWidth:(double)width withMaximumVisibleHeight:(double)height;
- (double)contentHeightWithPreferredHeight:(double)height maxVisibleHeight:(double)visibleHeight;
- (double)targetHeightForAnimatingToProposedHeight:(double)height;
- (id)visualStylingProviderForCategory:(int64_t)category;
- (void)askContainerForHomeGestureUpdate;
- (void)configureCell:(id)cell;
- (void)homeGestureDidPassThreshold;
- (void)loadView;
- (void)prepareForPresentationWithCompletionHandler:(id)handler;
- (void)updateActions;
@end

@implementation WFShowContentDialogViewController

- (BOOL)shouldHideSashView
{
  contentCollectionPreviewController = [(WFShowContentDialogViewController *)self contentCollectionPreviewController];
  shouldHideSashView = [contentCollectionPreviewController shouldHideSashView];

  return shouldHideSashView;
}

- (void)homeGestureDidPassThreshold
{
  presentedViewController = [(WFShowContentDialogViewController *)self presentedViewController];

  if (presentedViewController)
  {

    [(WFShowContentDialogViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (BOOL)hasCustomHomeGestureBehavior
{
  presentedViewController = [(WFShowContentDialogViewController *)self presentedViewController];
  v3 = presentedViewController != 0;

  return v3;
}

- (void)askContainerForHomeGestureUpdate
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"WFBannerShouldUpdateHomeGestureOwnershipNotification" object:0];
}

- (id)visualStylingProviderForCategory:(int64_t)category
{
  platterView = [(WFCompactPlatterViewController *)self platterView];
  v5 = [platterView visualStylingProviderForCategory:category];

  return v5;
}

- (void)configureCell:(id)cell
{
  cellCopy = cell;
  appearanceProvider = [(WFCompactPlatterViewController *)self appearanceProvider];
  [appearanceProvider configureChooseFromListDialogCell:cellCopy];
}

- (double)targetHeightForAnimatingToProposedHeight:(double)height
{
  [(WFCompactPlatterViewController *)self maximumExpectedVisibleContentHeight];

  [(WFShowContentDialogViewController *)self contentHeightWithPreferredHeight:height maxVisibleHeight:v5];
  return result;
}

- (void)updateActions
{
  v3 = objc_opt_new();
  objc_initWeak(&location, self);
  request = [(WFCompactDialogViewController *)self request];
  doneButton = [request doneButton];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50__WFShowContentDialogViewController_updateActions__block_invoke;
  v12[3] = &unk_279EE8908;
  objc_copyWeak(&v13, &location);
  v6 = [WFCompactDialogAction actionForButton:doneButton handler:v12];
  [v3 addObject:v6];

  request2 = [(WFCompactDialogViewController *)self request];
  cancelButton = [request2 cancelButton];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__WFShowContentDialogViewController_updateActions__block_invoke_2;
  v10[3] = &unk_279EE8908;
  objc_copyWeak(&v11, &location);
  v9 = [WFCompactDialogAction actionForButton:cancelButton handler:v10];
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

- (void)prepareForPresentationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  request = [(WFCompactDialogViewController *)self request];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__WFShowContentDialogViewController_prepareForPresentationWithCompletionHandler___block_invoke;
  v7[3] = &unk_279EE7ED0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [request getContentCollectionWithCompletionHandler:v7];
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

- (double)contentHeightWithPreferredHeight:(double)height maxVisibleHeight:(double)visibleHeight
{
  contentCollectionPreviewController = [(WFShowContentDialogViewController *)self contentCollectionPreviewController];
  contentAllowsScrolling = [contentCollectionPreviewController contentAllowsScrolling];

  if (height < visibleHeight)
  {
    v8 = 1;
  }

  else
  {
    v8 = contentAllowsScrolling;
  }

  if (v8)
  {
    return height;
  }

  else
  {
    return visibleHeight;
  }
}

- (double)contentHeightForWidth:(double)width withMaximumVisibleHeight:(double)height
{
  contentCollectionPreviewController = [(WFShowContentDialogViewController *)self contentCollectionPreviewController];
  [contentCollectionPreviewController contentHeightForWidth:width];
  v9 = v8;

  [(WFShowContentDialogViewController *)self contentHeightWithPreferredHeight:v9 maxVisibleHeight:height];
  return result;
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = WFShowContentDialogViewController;
  [(WFCompactDialogViewController *)&v4 loadView];
  platterView = [(WFCompactPlatterViewController *)self platterView];
  [platterView setArrangeActionsVertically:1];
  [(WFShowContentDialogViewController *)self updateActions];
}

@end