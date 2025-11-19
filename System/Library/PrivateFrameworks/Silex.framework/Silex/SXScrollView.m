@interface SXScrollView
- (BOOL)_accessibilityScrollingEnabled;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)isBouncing;
- (BOOL)shouldOccludeAccessibilityElement:(id)a3;
- (SXScrollView)initWithFrame:(CGRect)a3;
- (SXScrollViewDelegate)scrollViewDelegate;
- (id)accessibilityCustomRotors;
- (void)setContentOffset:(CGPoint)a3 animated:(BOOL)a4 completionBlock:(id)a5;
@end

@implementation SXScrollView

- (SXScrollView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = SXScrollView;
  v3 = [(SXScrollView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [[SXAXCustomRotorProvider alloc] initWithRootElement:v3];
    customRotorProvider = v3->_customRotorProvider;
    v3->_customRotorProvider = v4;

    [(SXScrollView *)v3 setScrollsToTop:0];
  }

  return v3;
}

- (void)setContentOffset:(CGPoint)a3 animated:(BOOL)a4 completionBlock:(id)a5
{
  v5 = a4;
  v8.receiver = self;
  v8.super_class = SXScrollView;
  [(TSKScrollView *)&v8 setContentOffset:a4 animated:a5 completionBlock:a3.x, a3.y];
  if (v5)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __58__SXScrollView_setContentOffset_animated_completionBlock___block_invoke;
    v7[3] = &unk_1E84FED18;
    v7[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v7 options:0 animations:0.200000003 completion:0.0];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(SXScrollView *)self panGestureRecognizer];
  v6 = v5;
  if (v5 != v4)
  {

LABEL_5:
    v11.receiver = self;
    v11.super_class = SXScrollView;
    v9 = [(SXScrollView *)&v11 gestureRecognizerShouldBegin:v4];
    goto LABEL_6;
  }

  v7 = [(SXScrollView *)self scrollViewDelegate];
  v8 = [v7 shouldPreventDraggingForScrollView:self];

  if ((v8 & 1) == 0)
  {
    goto LABEL_5;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (BOOL)isBouncing
{
  [(SXScrollView *)self contentOffset];
  if (round(v3) < 0.0)
  {
    return 1;
  }

  [(SXScrollView *)self contentOffset];
  v6 = v5;
  [(SXScrollView *)self bounds];
  v7 = round(v6 + CGRectGetHeight(v9));
  [(SXScrollView *)self contentSize];
  return v7 > round(v8);
}

- (id)accessibilityCustomRotors
{
  v2 = [(SXAXCustomRotorProvider *)self->_customRotorProvider graphSearchForAvailableCustomRotorsAndUpdateCache];
  v3 = [v2 allObjects];

  return v3;
}

- (BOOL)shouldOccludeAccessibilityElement:(id)a3
{
  v4 = a3;
  v5 = [(SXScrollView *)self scrollViewDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(SXScrollView *)self scrollViewDelegate];
    v8 = [v7 scrollView:self shouldOccludeAccessibilityElement:v4];
LABEL_9:
    v11 = v8;

    goto LABEL_10;
  }

  v9 = [(SXScrollView *)self accessibilityContainer];
  if (v9)
  {
    v7 = v9;
    while ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v10 = [v7 accessibilityContainer];

      v7 = v10;
      if (!v10)
      {
        goto LABEL_7;
      }
    }

    v8 = [v7 shouldOccludeAccessibilityElement:v4];
    goto LABEL_9;
  }

LABEL_7:
  v11 = 0;
LABEL_10:

  return v11;
}

- (BOOL)_accessibilityScrollingEnabled
{
  v11.receiver = self;
  v11.super_class = SXScrollView;
  v3 = [(SXScrollView *)&v11 _accessibilityScrollingEnabled];
  v4 = [(SXScrollView *)self scrollViewDelegate];
  v5 = objc_opt_respondsToSelector();

  v6 = [(SXScrollView *)self scrollViewDelegate];
  v7 = v6;
  if (v5)
  {
    v8 = [v6 accessibilityShouldScrollForScrollView:self defaultValue:v3];
LABEL_5:
    LOBYTE(v3) = v8;

    return v3;
  }

  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v7 = [(SXScrollView *)self scrollViewDelegate];
    v8 = [v7 accessibilityShouldScrollForScrollView:self];
    goto LABEL_5;
  }

  return v3;
}

- (SXScrollViewDelegate)scrollViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollViewDelegate);

  return WeakRetained;
}

@end