@interface WFCompactPlatterViewController
- (BNPresentableContext)presentableContext;
- (CGSize)minimumPlatterSize;
- (NSString)requestIdentifier;
- (UIScrollView)scrollView;
- (WFCompactPlatterContentContainer)platterContentContainer;
- (WFCompactPlatterView)platterView;
- (WFCompactPlatterViewController)init;
- (double)contentHeightForWidth:(double)width withMaximumVisibleHeight:(double)height;
- (double)maximumExpectedVisibleContentHeight;
- (double)platterHeightForWidth:(double)width withMaximumHeight:(double)height;
- (void)invalidatePlatterSize;
- (void)loadView;
- (void)scrollToTopAnimated:(BOOL)animated;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setAppearanceProvider:(id)provider;
- (void)setContentViewController:(id)controller;
- (void)setTransitioningDelegate:(id)delegate;
- (void)systemLayoutFittingSizeDidChangeForChildContentContainer:(id)container;
- (void)updateContentSizeAndPlatterPosition;
- (void)updatePlatterPosition;
- (void)updateScrollViewSeparators;
- (void)viewDidLayoutSubviews;
@end

@implementation WFCompactPlatterViewController

- (CGSize)minimumPlatterSize
{
  width = self->_minimumPlatterSize.width;
  height = self->_minimumPlatterSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIScrollView)scrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);

  return WeakRetained;
}

- (BNPresentableContext)presentableContext
{
  WeakRetained = objc_loadWeakRetained(&self->_presentableContext);

  return WeakRetained;
}

- (WFCompactPlatterContentContainer)platterContentContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_platterContentContainer);

  return WeakRetained;
}

- (void)setAppearanceProvider:(id)provider
{
  objc_storeStrong(&self->_appearanceProvider, provider);
  providerCopy = provider;
  platterView = [(WFCompactPlatterViewController *)self platterView];
  [platterView setAppearanceProvider:providerCopy];
}

- (NSString)requestIdentifier
{
  associatedRunningContext = [(WFCompactPlatterViewController *)self associatedRunningContext];
  identifier = [associatedRunningContext identifier];

  return identifier;
}

- (void)setContentViewController:(id)controller
{
  controllerCopy = controller;
  [(UIViewController *)self->_contentViewController willMoveToParentViewController:0];
  [(UIViewController *)self->_contentViewController removeFromParentViewController];
  objc_storeStrong(&self->_contentViewController, controller);
  if (controllerCopy)
  {
    [(WFCompactPlatterViewController *)self addChildViewController:controllerCopy];
    view = [controllerCopy view];
    platterView = [(WFCompactPlatterViewController *)self platterView];
    [platterView setContentView:view];

    [controllerCopy didMoveToParentViewController:self];
  }

  else
  {
    platterView2 = [(WFCompactPlatterViewController *)self platterView];
    [platterView2 setContentView:0];
  }
}

- (void)systemLayoutFittingSizeDidChangeForChildContentContainer:(id)container
{
  v4.receiver = self;
  v4.super_class = WFCompactPlatterViewController;
  [(WFCompactPlatterViewController *)&v4 systemLayoutFittingSizeDidChangeForChildContentContainer:container];
  [(WFCompactPlatterViewController *)self invalidatePlatterSize];
}

- (void)invalidatePlatterSize
{
  view = [(WFCompactPlatterViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;

  platterContentContainer = [(WFCompactPlatterViewController *)self platterContentContainer];
  [platterContentContainer platterPresentationDidInvalidateSize:self];

  view2 = [(WFCompactPlatterViewController *)self view];
  [view2 bounds];
  v11 = v10;
  v13 = v12;

  if (v11 == v5 && v13 == v7)
  {

    [(WFCompactPlatterViewController *)self updateContentSizeAndPlatterPosition];
  }
}

- (double)maximumExpectedVisibleContentHeight
{
  platterContentContainer = [(WFCompactPlatterViewController *)self platterContentContainer];
  [platterContentContainer maximumExpectedHeightForPlatterPresentation:self];
  v5 = v4;
  [(WFCompactPlatterViewController *)self minimumPlatterSize];
  v7 = v5 - v6;

  return v7;
}

- (double)contentHeightForWidth:(double)width withMaximumVisibleHeight:(double)height
{
  v5 = [(WFCompactPlatterViewController *)self platterView:width];
  contentView = [v5 contentView];
  LODWORD(v7) = 1148846080;
  LODWORD(v8) = 1112014848;
  [contentView systemLayoutSizeFittingSize:width withHorizontalFittingPriority:*(MEMORY[0x277D76C78] + 8) verticalFittingPriority:{v7, v8}];
  v10 = v9;

  return v10;
}

- (double)platterHeightForWidth:(double)width withMaximumHeight:(double)height
{
  platterView = [(WFCompactPlatterViewController *)self platterView];
  [platterView sizeThatFits:{width, height}];
  v9 = v8;

  v10 = 0.0;
  v11 = fmax(height - v9, 0.0);
  platterView2 = [(WFCompactPlatterViewController *)self platterView];
  if ([platterView2 insetsContent])
  {
    v10 = 30.0;
  }

  [(WFCompactPlatterViewController *)self contentHeightForWidth:width - v10 withMaximumVisibleHeight:v11];
  return v9 + v13;
}

- (void)scrollViewDidScroll:(id)scroll
{
  [(WFCompactPlatterViewController *)self updateScrollViewSeparators];

  [(WFCompactPlatterViewController *)self updatePlatterPosition];
}

- (void)updateScrollViewSeparators
{
  platterView = [(WFCompactPlatterViewController *)self platterView];
  isClippingContent = [platterView isClippingContent];

  if (!isClippingContent)
  {
    platterView2 = [(WFCompactPlatterViewController *)self platterView];
    [platterView2 setShowsTopScrollingSeparator:0];

    platterView3 = [(WFCompactPlatterViewController *)self platterView];
    v26[0] = platterView3;
LABEL_6:
    v24 = 0;
    goto LABEL_7;
  }

  scrollView = [(WFCompactPlatterViewController *)self scrollView];
  [scrollView contentOffset];
  v7 = v6 > 0.0;

  platterView4 = [(WFCompactPlatterViewController *)self platterView];
  [platterView4 setShowsTopScrollingSeparator:v7];

  scrollView2 = [(WFCompactPlatterViewController *)self scrollView];
  [scrollView2 contentOffset];
  v11 = v10;
  scrollView3 = [(WFCompactPlatterViewController *)self scrollView];
  [scrollView3 bounds];
  v14 = v13;

  scrollView4 = [(WFCompactPlatterViewController *)self scrollView];
  [scrollView4 contentSize];
  *v26 = v16;

  platterView5 = [(WFCompactPlatterViewController *)self platterView];
  actionGroupView = [platterView5 actionGroupView];

  if (!actionGroupView)
  {
    return;
  }

  v19.f64[0] = v11 + v14;
  *&v19.f64[1] = v26[0];
  v20 = vdupq_n_s64(0x4059000000000000uLL);
  v21 = vdivq_f64(vrndaq_f64(vmulq_f64(v19, v20)), v20);
  v22 = vmovn_s64(vmvnq_s8(vcgeq_f64(v21, vdupq_laneq_s64(v21, 1)))).u8[0];
  platterView3 = [(WFCompactPlatterViewController *)self platterView];
  v26[0] = platterView3;
  if ((v22 & 1) == 0)
  {
    goto LABEL_6;
  }

  v24 = 1;
LABEL_7:
  [platterView3 setShowsBottomScrollingSeparator:{v24, *v26}];
}

- (void)updatePlatterPosition
{
  scrollView = [(WFCompactPlatterViewController *)self scrollView];
  platterView = [(WFCompactPlatterViewController *)self platterView];
  [scrollView contentSize];
  v5 = v4;
  v7 = v6;
  [scrollView contentOffset];
  v9 = v8;
  [scrollView frame];
  v11 = v10;
  [(WFCompactPlatterViewController *)self minimumPlatterSize];
  if (v12 < v7 - v9)
  {
    v12 = v7 - v9;
  }

  if (v11 >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  [platterView setFrame:{*MEMORY[0x277CBF3A0], v9, v5, v13}];
  [platterView setContentVerticalOffsetWhenClipped:-v9];
}

- (void)updateContentSizeAndPlatterPosition
{
  platterView = [(WFCompactPlatterViewController *)self platterView];
  view = [(WFCompactPlatterViewController *)self view];
  [view bounds];
  [platterView sizeThatFits:{v7, 1.79769313e308}];
  v9 = v8;
  v11 = v10;

  view2 = [(WFCompactPlatterViewController *)self view];
  [view2 bounds];
  v14 = v13 - v11;

  v15 = 0.0;
  v16 = fmax(v14, 0.0);
  platterView2 = [(WFCompactPlatterViewController *)self platterView];
  if ([platterView2 insetsContent])
  {
    v15 = 30.0;
  }

  view3 = [(WFCompactPlatterViewController *)self view];
  [view3 bounds];
  [(WFCompactPlatterViewController *)self contentHeightForWidth:v19 - v15 withMaximumVisibleHeight:v16];
  v21 = v20;

  [(WFCompactPlatterViewController *)self setMinimumPlatterSize:v9, v11];
  view4 = [(WFCompactPlatterViewController *)self view];
  [view4 bounds];
  v24 = v23;
  scrollView = [(WFCompactPlatterViewController *)self scrollView];
  [scrollView setContentSize:{v24, v11 + v21}];

  platterView3 = [(WFCompactPlatterViewController *)self platterView];
  [platterView3 setContentHeightWhenClipped:v21];

  scrollView2 = [(WFCompactPlatterViewController *)self scrollView];
  [scrollView2 contentSize];
  view5 = [(WFCompactPlatterViewController *)self view];
  UIRoundToViewScale();
  v30 = v29;
  scrollView3 = [(WFCompactPlatterViewController *)self scrollView];
  [scrollView3 bounds];
  view6 = [(WFCompactPlatterViewController *)self view];
  UIRoundToViewScale();
  v34 = vabdd_f64(v30, v33);
  if (v34 < 2.22044605e-16)
  {
    v38 = 0;
  }

  else
  {
    scrollView4 = [(WFCompactPlatterViewController *)self scrollView];
    [scrollView4 contentSize];
    v36 = v35;
    scrollView5 = [(WFCompactPlatterViewController *)self scrollView];
    [scrollView5 bounds];
    v38 = v36 > v37;
  }

  platterView4 = [(WFCompactPlatterViewController *)self platterView];
  [platterView4 setClippingContent:v38];

  if (v34 >= 2.22044605e-16)
  {
  }

  [(WFCompactPlatterViewController *)self updateScrollViewSeparators];

  [(WFCompactPlatterViewController *)self updatePlatterPosition];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = WFCompactPlatterViewController;
  [(WFCompactPlatterViewController *)&v3 viewDidLayoutSubviews];
  [(WFCompactPlatterViewController *)self updateContentSizeAndPlatterPosition];
}

- (void)scrollToTopAnimated:(BOOL)animated
{
  animatedCopy = animated;
  scrollView = [(WFCompactPlatterViewController *)self scrollView];
  [scrollView _scrollToTopIfPossible:animatedCopy];
}

- (WFCompactPlatterView)platterView
{
  [(WFCompactPlatterViewController *)self loadViewIfNeeded];
  WeakRetained = objc_loadWeakRetained(&self->_platterView);

  return WeakRetained;
}

- (void)loadView
{
  v8.receiver = self;
  v8.super_class = WFCompactPlatterViewController;
  [(WFCompactPlatterViewController *)&v8 loadView];
  v3 = objc_alloc_init(MEMORY[0x277D759D8]);
  [v3 setDelegate:self];
  [v3 setShowsVerticalScrollIndicator:0];
  [v3 setShowsHorizontalScrollIndicator:0];
  [v3 setDelaysContentTouches:0];
  view = [(WFCompactPlatterViewController *)self view];
  [view bounds];
  [v3 setFrame:?];

  [v3 setAutoresizingMask:18];
  view2 = [(WFCompactPlatterViewController *)self view];
  [view2 addSubview:v3];

  objc_storeWeak(&self->_scrollView, v3);
  [v3 setClipsToBounds:0];
  [v3 setContentInsetAdjustmentBehavior:2];
  [v3 _setHiddenPocketEdges:15];
  v6 = objc_opt_new();
  appearanceProvider = [(WFCompactPlatterViewController *)self appearanceProvider];
  [v6 setAppearanceProvider:appearanceProvider];

  [v6 setSizingDelegate:self];
  [v3 addSubview:v6];
  objc_storeWeak(&self->_platterView, v6);
}

- (void)setTransitioningDelegate:(id)delegate
{
  delegateCopy = delegate;
  wf_transitioningDelegate = self->_wf_transitioningDelegate;
  if (wf_transitioningDelegate != delegateCopy)
  {
    self->_wf_transitioningDelegate = 0;
  }

  v6.receiver = self;
  v6.super_class = WFCompactPlatterViewController;
  [(WFCompactPlatterViewController *)&v6 setTransitioningDelegate:delegateCopy];
}

- (WFCompactPlatterViewController)init
{
  v8.receiver = self;
  v8.super_class = WFCompactPlatterViewController;
  v2 = [(WFCompactPlatterViewController *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(WFCompactPlatterViewController *)v2 setModalPresentationStyle:4];
    v4 = objc_opt_new();
    wf_transitioningDelegate = v3->_wf_transitioningDelegate;
    v3->_wf_transitioningDelegate = v4;

    [(WFCompactPlatterViewController *)v3 setTransitioningDelegate:v3->_wf_transitioningDelegate];
    v6 = v3;
  }

  return v3;
}

@end