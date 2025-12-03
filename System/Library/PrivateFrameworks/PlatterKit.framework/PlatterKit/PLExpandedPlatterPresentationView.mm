@interface PLExpandedPlatterPresentationView
- (BOOL)respondsToSelector:(SEL)selector;
- (CGSize)contentSizeForSize:(CGSize)size;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)sizeThatFitsContentWithSize:(CGSize)size;
- (PLClickPresentationInteractionPresentable)presentableViewController;
- (PLExpandedPlatter)expandedPlatterView;
- (PLExpandedPlatterPresentationView)initWithFrame:(CGRect)frame;
- (PLExpandedPlatterPresentationViewDelegate)delegate;
- (UIScrollView)scrollView;
- (double)_translationWithVelocity:(double)velocity acceleration:(double)acceleration;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_configureExpandedPlatterViewIfNecessary;
- (void)_configureScrollViewIfNecessary;
- (void)_dismissExpandedPlatterWithTrigger:(int64_t)trigger;
- (void)forwardInvocation:(id)invocation;
- (void)layoutSubviews;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
@end

@implementation PLExpandedPlatterPresentationView

- (PLExpandedPlatterPresentationView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PLExpandedPlatterPresentationView;
  v3 = [(PLExpandedPlatterPresentationView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PLExpandedPlatterPresentationView *)v3 setAutoresizesSubviews:1];
    [(PLExpandedPlatterPresentationView *)v4 _setIgnoresLayerTransformForSafeAreaInsets:1];
  }

  return v4;
}

- (PLExpandedPlatter)expandedPlatterView
{
  [(PLExpandedPlatterPresentationView *)self _configureExpandedPlatterViewIfNecessary];
  expandedPlatterView = self->_expandedPlatterView;

  return expandedPlatterView;
}

- (UIScrollView)scrollView
{
  [(PLExpandedPlatterPresentationView *)self _configureScrollViewIfNecessary];
  scrollView = self->_scrollView;

  return scrollView;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PLExpandedPlatterPresentationView *)self contentSizeForSize:fits.width, fits.height];

  [(PLExpandedPlatterPresentationView *)self sizeThatFitsContentWithSize:?];
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PLExpandedPlatterPresentationView;
  [(PLExpandedPlatterPresentationView *)&v4 layoutSubviews];
  [(PLExpandedPlatterPresentationView *)self _configureScrollViewIfNecessary];
  [(PLExpandedPlatterPresentationView *)self _configureExpandedPlatterViewIfNecessary];
  expandedPlatterView = self->_expandedPlatterView;
  [(UIScrollView *)self->_scrollView bounds];
  [(PLExpandedPlatter *)expandedPlatterView setFrame:?];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = PLExpandedPlatterPresentationView;
  v5 = [(PLExpandedPlatterPresentationView *)&v10 hitTest:event withEvent:test.x, test.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v7;
}

- (CGSize)sizeThatFitsContentWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(PLExpandedPlatterPresentationView *)self _configureExpandedPlatterViewIfNecessary];
  expandedPlatterView = self->_expandedPlatterView;

  [(PLExpandedPlatter *)expandedPlatterView sizeThatFitsContentWithSize:width, height];
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)contentSizeForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5 = *MEMORY[0x277CBF3A8];
  v6 = *(MEMORY[0x277CBF3A8] + 8);
  if (width > 0.0 && height > 0.0)
  {
    [(PLExpandedPlatterPresentationView *)self _configureExpandedPlatterViewIfNecessary:v5];
    [(PLExpandedPlatter *)self->_expandedPlatterView contentSizeForSize:width, height];
  }

  result.height = v6;
  result.width = v5;
  return result;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v8.receiver = self;
  v8.super_class = PLExpandedPlatterPresentationView;
  if ([(PLExpandedPlatterPresentationView *)&v8 respondsToSelector:?])
  {
    v5 = 1;
  }

  else if ([(UIView *)self pl_isScrollViewDelegateMethod:selector])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = objc_opt_respondsToSelector();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  if (-[UIView pl_isScrollViewDelegateMethod:](self, "pl_isScrollViewDelegateMethod:", [invocationCopy selector]))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [invocationCopy invokeWithTarget:WeakRetained];
    }

    else
    {
      v6.receiver = self;
      v6.super_class = PLExpandedPlatterPresentationView;
      [(PLExpandedPlatterPresentationView *)&v6 forwardInvocation:invocationCopy];
    }
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  WeakRetained = objc_loadWeakRetained(&self->_presentableViewController);
  [scrollCopy contentOffset];
  if (v5 < 0.0 && ([WeakRetained isBeingDismissed] & 1) == 0)
  {
    [scrollCopy contentOffset];
    v7 = v6 >= 0.0 ? v6 : -v6;
    [(PLExpandedPlatterPresentationView *)self bounds];
    v8 = fmax(v7 / CGRectGetHeight(v15), 0.0);
    if (v8 < 1.0)
    {
      [scrollCopy contentOffset];
      v10 = fmin(fmax(1.0 - (v9 + 60.0) / 60.0, 0.0), 1.0);
      expandedPlatterPresentationController = [WeakRetained expandedPlatterPresentationController];
      [expandedPlatterPresentationController hintDismissalWithCommitProgress:v10 overallProgress:v8];
    }
  }

  v12 = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [v12 scrollViewDidScroll:scrollCopy];
  }
}

- (double)_translationWithVelocity:(double)velocity acceleration:(double)acceleration
{
  velocityCopy = velocity;
  v5 = -(velocityCopy * velocityCopy) / (acceleration + acceleration);
  if (velocity <= 0.0)
  {
    v6 = -v5;
  }

  else
  {
    v6 = v5;
  }

  return v6 / PLMainScreenScale();
}

- (void)_dismissExpandedPlatterWithTrigger:(int64_t)trigger
{
  WeakRetained = objc_loadWeakRetained(&self->_presentableViewController);
  if (objc_opt_respondsToSelector())
  {
    clickPresentationInteractionManager = WeakRetained;
    dismisser = [clickPresentationInteractionManager dismisser];
    [dismisser expandedPlatterPresentable:clickPresentationInteractionManager requestsDismissalWithTrigger:trigger];
  }

  else
  {
    dismisser = [WeakRetained presenter];
    if (objc_opt_respondsToSelector())
    {
      clickPresentationInteractionManager = [dismisser clickPresentationInteractionManager];
    }

    else
    {
      clickPresentationInteractionManager = 0;
    }

    [clickPresentationInteractionManager _dismissIfPossibleWithTrigger:trigger];
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  decelerateCopy = decelerate;
  draggingCopy = dragging;
  [draggingCopy contentOffset];
  v7 = v6 + 60.0;
  WeakRetained = objc_loadWeakRetained(&self->_presentableViewController);
  if (v7 < 0.0 || !decelerateCopy)
  {
    if (v7 >= 0.0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  panGestureRecognizer = [draggingCopy panGestureRecognizer];
  expandedPlatterPresentationController = [WeakRetained expandedPlatterPresentationController];
  containerView = [expandedPlatterPresentationController containerView];
  [panGestureRecognizer velocityInView:containerView];
  v15 = v14;

  [(PLExpandedPlatterPresentationView *)self _translationWithVelocity:v15 acceleration:*MEMORY[0x277D76EC0] * -10000.0];
  v17 = v16;
  [draggingCopy contentOffset];
  if (v18 - v17 + 60.0 < 0.0)
  {
LABEL_7:
    [(PLExpandedPlatterPresentationView *)self _dismissExpandedPlatterWithTrigger:1];
  }

LABEL_8:
  v10 = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [v10 scrollViewDidEndDragging:draggingCopy willDecelerate:decelerateCopy];
  }
}

- (void)_configureScrollViewIfNecessary
{
  if (!self->_scrollView)
  {
    v3 = objc_alloc(MEMORY[0x277D759D8]);
    [(PLExpandedPlatterPresentationView *)self bounds];
    v4 = [v3 initWithFrame:?];
    scrollView = self->_scrollView;
    self->_scrollView = v4;

    [(UIScrollView *)self->_scrollView setAutoresizingMask:18];
    [(UIScrollView *)self->_scrollView setAlwaysBounceHorizontal:0];
    [(UIScrollView *)self->_scrollView setShowsVerticalScrollIndicator:0];
    [(UIScrollView *)self->_scrollView setShowsHorizontalScrollIndicator:0];
    [(UIScrollView *)self->_scrollView setClipsToBounds:0];
    [(UIScrollView *)self->_scrollView setDelegate:self];
    [(UIScrollView *)self->_scrollView setBounces:1];
    [(UIScrollView *)self->_scrollView setAlwaysBounceVertical:1];
    v6 = self->_scrollView;

    [(PLExpandedPlatterPresentationView *)self addSubview:v6];
  }
}

- (void)_configureExpandedPlatterViewIfNecessary
{
  if (!self->_expandedPlatterView)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v3 = [WeakRetained expandedPlatterViewForPresentationView:self];
    }

    else
    {
      v3 = 0;
    }

    expandedPlatterView = self->_expandedPlatterView;
    self->_expandedPlatterView = v3;

    v5 = self->_expandedPlatterView;
    if (v5)
    {
      [(PLExpandedPlatter *)v5 setAdjustsFontForContentSizeCategory:1];
      if ([(PLExpandedPlatter *)self->_expandedPlatterView conformsToProtocol:&unk_2833AED78])
      {
        v6 = self->_expandedPlatterView;
      }

      else
      {
        v6 = 0;
      }

      v7 = v6;
      dismissControl = [(PLExpandedPlatter *)v7 dismissControl];
      [dismissControl addTarget:self action:sel__handleDismissButton_ forControlEvents:0x2000];

      [(PLExpandedPlatterPresentationView *)self _configureScrollViewIfNecessary];
      [(UIScrollView *)self->_scrollView addSubview:self->_expandedPlatterView];
    }
  }
}

- (PLClickPresentationInteractionPresentable)presentableViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentableViewController);

  return WeakRetained;
}

- (PLExpandedPlatterPresentationViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end