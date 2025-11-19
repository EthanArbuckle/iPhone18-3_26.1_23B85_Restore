@interface WFCompactPlatterViewController
- (BNPresentableContext)presentableContext;
- (CGSize)minimumPlatterSize;
- (NSString)requestIdentifier;
- (UIScrollView)scrollView;
- (WFCompactPlatterContentContainer)platterContentContainer;
- (WFCompactPlatterView)platterView;
- (WFCompactPlatterViewController)init;
- (double)contentHeightForWidth:(double)a3 withMaximumVisibleHeight:(double)a4;
- (double)maximumExpectedVisibleContentHeight;
- (double)platterHeightForWidth:(double)a3 withMaximumHeight:(double)a4;
- (void)invalidatePlatterSize;
- (void)loadView;
- (void)scrollToTopAnimated:(BOOL)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)setAppearanceProvider:(id)a3;
- (void)setContentViewController:(id)a3;
- (void)setTransitioningDelegate:(id)a3;
- (void)systemLayoutFittingSizeDidChangeForChildContentContainer:(id)a3;
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

- (void)setAppearanceProvider:(id)a3
{
  objc_storeStrong(&self->_appearanceProvider, a3);
  v5 = a3;
  v6 = [(WFCompactPlatterViewController *)self platterView];
  [v6 setAppearanceProvider:v5];
}

- (NSString)requestIdentifier
{
  v2 = [(WFCompactPlatterViewController *)self associatedRunningContext];
  v3 = [v2 identifier];

  return v3;
}

- (void)setContentViewController:(id)a3
{
  v8 = a3;
  [(UIViewController *)self->_contentViewController willMoveToParentViewController:0];
  [(UIViewController *)self->_contentViewController removeFromParentViewController];
  objc_storeStrong(&self->_contentViewController, a3);
  if (v8)
  {
    [(WFCompactPlatterViewController *)self addChildViewController:v8];
    v5 = [v8 view];
    v6 = [(WFCompactPlatterViewController *)self platterView];
    [v6 setContentView:v5];

    [v8 didMoveToParentViewController:self];
  }

  else
  {
    v7 = [(WFCompactPlatterViewController *)self platterView];
    [v7 setContentView:0];
  }
}

- (void)systemLayoutFittingSizeDidChangeForChildContentContainer:(id)a3
{
  v4.receiver = self;
  v4.super_class = WFCompactPlatterViewController;
  [(WFCompactPlatterViewController *)&v4 systemLayoutFittingSizeDidChangeForChildContentContainer:a3];
  [(WFCompactPlatterViewController *)self invalidatePlatterSize];
}

- (void)invalidatePlatterSize
{
  v3 = [(WFCompactPlatterViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  v8 = [(WFCompactPlatterViewController *)self platterContentContainer];
  [v8 platterPresentationDidInvalidateSize:self];

  v9 = [(WFCompactPlatterViewController *)self view];
  [v9 bounds];
  v11 = v10;
  v13 = v12;

  if (v11 == v5 && v13 == v7)
  {

    [(WFCompactPlatterViewController *)self updateContentSizeAndPlatterPosition];
  }
}

- (double)maximumExpectedVisibleContentHeight
{
  v3 = [(WFCompactPlatterViewController *)self platterContentContainer];
  [v3 maximumExpectedHeightForPlatterPresentation:self];
  v5 = v4;
  [(WFCompactPlatterViewController *)self minimumPlatterSize];
  v7 = v5 - v6;

  return v7;
}

- (double)contentHeightForWidth:(double)a3 withMaximumVisibleHeight:(double)a4
{
  v5 = [(WFCompactPlatterViewController *)self platterView:a3];
  v6 = [v5 contentView];
  LODWORD(v7) = 1148846080;
  LODWORD(v8) = 1112014848;
  [v6 systemLayoutSizeFittingSize:a3 withHorizontalFittingPriority:*(MEMORY[0x277D76C78] + 8) verticalFittingPriority:{v7, v8}];
  v10 = v9;

  return v10;
}

- (double)platterHeightForWidth:(double)a3 withMaximumHeight:(double)a4
{
  v7 = [(WFCompactPlatterViewController *)self platterView];
  [v7 sizeThatFits:{a3, a4}];
  v9 = v8;

  v10 = 0.0;
  v11 = fmax(a4 - v9, 0.0);
  v12 = [(WFCompactPlatterViewController *)self platterView];
  if ([v12 insetsContent])
  {
    v10 = 30.0;
  }

  [(WFCompactPlatterViewController *)self contentHeightForWidth:a3 - v10 withMaximumVisibleHeight:v11];
  return v9 + v13;
}

- (void)scrollViewDidScroll:(id)a3
{
  [(WFCompactPlatterViewController *)self updateScrollViewSeparators];

  [(WFCompactPlatterViewController *)self updatePlatterPosition];
}

- (void)updateScrollViewSeparators
{
  v3 = [(WFCompactPlatterViewController *)self platterView];
  v4 = [v3 isClippingContent];

  if (!v4)
  {
    v25 = [(WFCompactPlatterViewController *)self platterView];
    [v25 setShowsTopScrollingSeparator:0];

    v23 = [(WFCompactPlatterViewController *)self platterView];
    v26[0] = v23;
LABEL_6:
    v24 = 0;
    goto LABEL_7;
  }

  v5 = [(WFCompactPlatterViewController *)self scrollView];
  [v5 contentOffset];
  v7 = v6 > 0.0;

  v8 = [(WFCompactPlatterViewController *)self platterView];
  [v8 setShowsTopScrollingSeparator:v7];

  v9 = [(WFCompactPlatterViewController *)self scrollView];
  [v9 contentOffset];
  v11 = v10;
  v12 = [(WFCompactPlatterViewController *)self scrollView];
  [v12 bounds];
  v14 = v13;

  v15 = [(WFCompactPlatterViewController *)self scrollView];
  [v15 contentSize];
  *v26 = v16;

  v17 = [(WFCompactPlatterViewController *)self platterView];
  v18 = [v17 actionGroupView];

  if (!v18)
  {
    return;
  }

  v19.f64[0] = v11 + v14;
  *&v19.f64[1] = v26[0];
  v20 = vdupq_n_s64(0x4059000000000000uLL);
  v21 = vdivq_f64(vrndaq_f64(vmulq_f64(v19, v20)), v20);
  v22 = vmovn_s64(vmvnq_s8(vcgeq_f64(v21, vdupq_laneq_s64(v21, 1)))).u8[0];
  v23 = [(WFCompactPlatterViewController *)self platterView];
  v26[0] = v23;
  if ((v22 & 1) == 0)
  {
    goto LABEL_6;
  }

  v24 = 1;
LABEL_7:
  [v23 setShowsBottomScrollingSeparator:{v24, *v26}];
}

- (void)updatePlatterPosition
{
  v14 = [(WFCompactPlatterViewController *)self scrollView];
  v3 = [(WFCompactPlatterViewController *)self platterView];
  [v14 contentSize];
  v5 = v4;
  v7 = v6;
  [v14 contentOffset];
  v9 = v8;
  [v14 frame];
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

  [v3 setFrame:{*MEMORY[0x277CBF3A0], v9, v5, v13}];
  [v3 setContentVerticalOffsetWhenClipped:-v9];
}

- (void)updateContentSizeAndPlatterPosition
{
  v5 = [(WFCompactPlatterViewController *)self platterView];
  v6 = [(WFCompactPlatterViewController *)self view];
  [v6 bounds];
  [v5 sizeThatFits:{v7, 1.79769313e308}];
  v9 = v8;
  v11 = v10;

  v12 = [(WFCompactPlatterViewController *)self view];
  [v12 bounds];
  v14 = v13 - v11;

  v15 = 0.0;
  v16 = fmax(v14, 0.0);
  v17 = [(WFCompactPlatterViewController *)self platterView];
  if ([v17 insetsContent])
  {
    v15 = 30.0;
  }

  v18 = [(WFCompactPlatterViewController *)self view];
  [v18 bounds];
  [(WFCompactPlatterViewController *)self contentHeightForWidth:v19 - v15 withMaximumVisibleHeight:v16];
  v21 = v20;

  [(WFCompactPlatterViewController *)self setMinimumPlatterSize:v9, v11];
  v22 = [(WFCompactPlatterViewController *)self view];
  [v22 bounds];
  v24 = v23;
  v25 = [(WFCompactPlatterViewController *)self scrollView];
  [v25 setContentSize:{v24, v11 + v21}];

  v26 = [(WFCompactPlatterViewController *)self platterView];
  [v26 setContentHeightWhenClipped:v21];

  v27 = [(WFCompactPlatterViewController *)self scrollView];
  [v27 contentSize];
  v28 = [(WFCompactPlatterViewController *)self view];
  UIRoundToViewScale();
  v30 = v29;
  v31 = [(WFCompactPlatterViewController *)self scrollView];
  [v31 bounds];
  v32 = [(WFCompactPlatterViewController *)self view];
  UIRoundToViewScale();
  v34 = vabdd_f64(v30, v33);
  if (v34 < 2.22044605e-16)
  {
    v38 = 0;
  }

  else
  {
    v2 = [(WFCompactPlatterViewController *)self scrollView];
    [v2 contentSize];
    v36 = v35;
    v3 = [(WFCompactPlatterViewController *)self scrollView];
    [v3 bounds];
    v38 = v36 > v37;
  }

  v39 = [(WFCompactPlatterViewController *)self platterView];
  [v39 setClippingContent:v38];

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

- (void)scrollToTopAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(WFCompactPlatterViewController *)self scrollView];
  [v4 _scrollToTopIfPossible:v3];
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
  v4 = [(WFCompactPlatterViewController *)self view];
  [v4 bounds];
  [v3 setFrame:?];

  [v3 setAutoresizingMask:18];
  v5 = [(WFCompactPlatterViewController *)self view];
  [v5 addSubview:v3];

  objc_storeWeak(&self->_scrollView, v3);
  [v3 setClipsToBounds:0];
  [v3 setContentInsetAdjustmentBehavior:2];
  [v3 _setHiddenPocketEdges:15];
  v6 = objc_opt_new();
  v7 = [(WFCompactPlatterViewController *)self appearanceProvider];
  [v6 setAppearanceProvider:v7];

  [v6 setSizingDelegate:self];
  [v3 addSubview:v6];
  objc_storeWeak(&self->_platterView, v6);
}

- (void)setTransitioningDelegate:(id)a3
{
  v4 = a3;
  wf_transitioningDelegate = self->_wf_transitioningDelegate;
  if (wf_transitioningDelegate != v4)
  {
    self->_wf_transitioningDelegate = 0;
  }

  v6.receiver = self;
  v6.super_class = WFCompactPlatterViewController;
  [(WFCompactPlatterViewController *)&v6 setTransitioningDelegate:v4];
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