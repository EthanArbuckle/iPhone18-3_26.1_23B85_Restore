@interface PLExpandedPlatterPresentationView
- (BOOL)respondsToSelector:(SEL)a3;
- (CGSize)contentSizeForSize:(CGSize)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)sizeThatFitsContentWithSize:(CGSize)a3;
- (PLClickPresentationInteractionPresentable)presentableViewController;
- (PLExpandedPlatter)expandedPlatterView;
- (PLExpandedPlatterPresentationView)initWithFrame:(CGRect)a3;
- (PLExpandedPlatterPresentationViewDelegate)delegate;
- (UIScrollView)scrollView;
- (double)_translationWithVelocity:(double)a3 acceleration:(double)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_configureExpandedPlatterViewIfNecessary;
- (void)_configureScrollViewIfNecessary;
- (void)_dismissExpandedPlatterWithTrigger:(int64_t)a3;
- (void)forwardInvocation:(id)a3;
- (void)layoutSubviews;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
@end

@implementation PLExpandedPlatterPresentationView

- (PLExpandedPlatterPresentationView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PLExpandedPlatterPresentationView;
  v3 = [(PLExpandedPlatterPresentationView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PLExpandedPlatterPresentationView *)self contentSizeForSize:a3.width, a3.height];

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

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v10.receiver = self;
  v10.super_class = PLExpandedPlatterPresentationView;
  v5 = [(PLExpandedPlatterPresentationView *)&v10 hitTest:a4 withEvent:a3.x, a3.y];
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

- (CGSize)sizeThatFitsContentWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(PLExpandedPlatterPresentationView *)self _configureExpandedPlatterViewIfNecessary];
  expandedPlatterView = self->_expandedPlatterView;

  [(PLExpandedPlatter *)expandedPlatterView sizeThatFitsContentWithSize:width, height];
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)contentSizeForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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

- (BOOL)respondsToSelector:(SEL)a3
{
  v8.receiver = self;
  v8.super_class = PLExpandedPlatterPresentationView;
  if ([(PLExpandedPlatterPresentationView *)&v8 respondsToSelector:?])
  {
    v5 = 1;
  }

  else if ([(UIView *)self pl_isScrollViewDelegateMethod:a3])
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

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  if (-[UIView pl_isScrollViewDelegateMethod:](self, "pl_isScrollViewDelegateMethod:", [v4 selector]))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [v4 invokeWithTarget:WeakRetained];
    }

    else
    {
      v6.receiver = self;
      v6.super_class = PLExpandedPlatterPresentationView;
      [(PLExpandedPlatterPresentationView *)&v6 forwardInvocation:v4];
    }
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v13 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_presentableViewController);
  [v13 contentOffset];
  if (v5 < 0.0 && ([WeakRetained isBeingDismissed] & 1) == 0)
  {
    [v13 contentOffset];
    v7 = v6 >= 0.0 ? v6 : -v6;
    [(PLExpandedPlatterPresentationView *)self bounds];
    v8 = fmax(v7 / CGRectGetHeight(v15), 0.0);
    if (v8 < 1.0)
    {
      [v13 contentOffset];
      v10 = fmin(fmax(1.0 - (v9 + 60.0) / 60.0, 0.0), 1.0);
      v11 = [WeakRetained expandedPlatterPresentationController];
      [v11 hintDismissalWithCommitProgress:v10 overallProgress:v8];
    }
  }

  v12 = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [v12 scrollViewDidScroll:v13];
  }
}

- (double)_translationWithVelocity:(double)a3 acceleration:(double)a4
{
  v4 = a3;
  v5 = -(v4 * v4) / (a4 + a4);
  if (a3 <= 0.0)
  {
    v6 = -v5;
  }

  else
  {
    v6 = v5;
  }

  return v6 / PLMainScreenScale();
}

- (void)_dismissExpandedPlatterWithTrigger:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_presentableViewController);
  if (objc_opt_respondsToSelector())
  {
    v4 = WeakRetained;
    v5 = [v4 dismisser];
    [v5 expandedPlatterPresentable:v4 requestsDismissalWithTrigger:a3];
  }

  else
  {
    v5 = [WeakRetained presenter];
    if (objc_opt_respondsToSelector())
    {
      v4 = [v5 clickPresentationInteractionManager];
    }

    else
    {
      v4 = 0;
    }

    [v4 _dismissIfPossibleWithTrigger:a3];
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v4 = a4;
  v19 = a3;
  [v19 contentOffset];
  v7 = v6 + 60.0;
  WeakRetained = objc_loadWeakRetained(&self->_presentableViewController);
  if (v7 < 0.0 || !v4)
  {
    if (v7 >= 0.0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v11 = [v19 panGestureRecognizer];
  v12 = [WeakRetained expandedPlatterPresentationController];
  v13 = [v12 containerView];
  [v11 velocityInView:v13];
  v15 = v14;

  [(PLExpandedPlatterPresentationView *)self _translationWithVelocity:v15 acceleration:*MEMORY[0x277D76EC0] * -10000.0];
  v17 = v16;
  [v19 contentOffset];
  if (v18 - v17 + 60.0 < 0.0)
  {
LABEL_7:
    [(PLExpandedPlatterPresentationView *)self _dismissExpandedPlatterWithTrigger:1];
  }

LABEL_8:
  v10 = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [v10 scrollViewDidEndDragging:v19 willDecelerate:v4];
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
      v8 = [(PLExpandedPlatter *)v7 dismissControl];
      [v8 addTarget:self action:sel__handleDismissButton_ forControlEvents:0x2000];

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