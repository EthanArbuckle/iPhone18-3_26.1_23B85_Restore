@interface SXScrollView
- (BOOL)_accessibilityScrollingEnabled;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)isBouncing;
- (BOOL)shouldOccludeAccessibilityElement:(id)element;
- (SXScrollView)initWithFrame:(CGRect)frame;
- (SXScrollViewDelegate)scrollViewDelegate;
- (id)accessibilityCustomRotors;
- (void)setContentOffset:(CGPoint)offset animated:(BOOL)animated completionBlock:(id)block;
@end

@implementation SXScrollView

- (SXScrollView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = SXScrollView;
  v3 = [(SXScrollView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [[SXAXCustomRotorProvider alloc] initWithRootElement:v3];
    customRotorProvider = v3->_customRotorProvider;
    v3->_customRotorProvider = v4;

    [(SXScrollView *)v3 setScrollsToTop:0];
  }

  return v3;
}

- (void)setContentOffset:(CGPoint)offset animated:(BOOL)animated completionBlock:(id)block
{
  animatedCopy = animated;
  v8.receiver = self;
  v8.super_class = SXScrollView;
  [(TSKScrollView *)&v8 setContentOffset:animated animated:block completionBlock:offset.x, offset.y];
  if (animatedCopy)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __58__SXScrollView_setContentOffset_animated_completionBlock___block_invoke;
    v7[3] = &unk_1E84FED18;
    v7[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v7 options:0 animations:0.200000003 completion:0.0];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  panGestureRecognizer = [(SXScrollView *)self panGestureRecognizer];
  v6 = panGestureRecognizer;
  if (panGestureRecognizer != beginCopy)
  {

LABEL_5:
    v11.receiver = self;
    v11.super_class = SXScrollView;
    v9 = [(SXScrollView *)&v11 gestureRecognizerShouldBegin:beginCopy];
    goto LABEL_6;
  }

  scrollViewDelegate = [(SXScrollView *)self scrollViewDelegate];
  v8 = [scrollViewDelegate shouldPreventDraggingForScrollView:self];

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
  graphSearchForAvailableCustomRotorsAndUpdateCache = [(SXAXCustomRotorProvider *)self->_customRotorProvider graphSearchForAvailableCustomRotorsAndUpdateCache];
  allObjects = [graphSearchForAvailableCustomRotorsAndUpdateCache allObjects];

  return allObjects;
}

- (BOOL)shouldOccludeAccessibilityElement:(id)element
{
  elementCopy = element;
  scrollViewDelegate = [(SXScrollView *)self scrollViewDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    scrollViewDelegate2 = [(SXScrollView *)self scrollViewDelegate];
    v8 = [scrollViewDelegate2 scrollView:self shouldOccludeAccessibilityElement:elementCopy];
LABEL_9:
    v11 = v8;

    goto LABEL_10;
  }

  accessibilityContainer = [(SXScrollView *)self accessibilityContainer];
  if (accessibilityContainer)
  {
    scrollViewDelegate2 = accessibilityContainer;
    while ((objc_opt_respondsToSelector() & 1) == 0)
    {
      accessibilityContainer2 = [scrollViewDelegate2 accessibilityContainer];

      scrollViewDelegate2 = accessibilityContainer2;
      if (!accessibilityContainer2)
      {
        goto LABEL_7;
      }
    }

    v8 = [scrollViewDelegate2 shouldOccludeAccessibilityElement:elementCopy];
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
  _accessibilityScrollingEnabled = [(SXScrollView *)&v11 _accessibilityScrollingEnabled];
  scrollViewDelegate = [(SXScrollView *)self scrollViewDelegate];
  v5 = objc_opt_respondsToSelector();

  scrollViewDelegate2 = [(SXScrollView *)self scrollViewDelegate];
  scrollViewDelegate3 = scrollViewDelegate2;
  if (v5)
  {
    v8 = [scrollViewDelegate2 accessibilityShouldScrollForScrollView:self defaultValue:_accessibilityScrollingEnabled];
LABEL_5:
    LOBYTE(_accessibilityScrollingEnabled) = v8;

    return _accessibilityScrollingEnabled;
  }

  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    scrollViewDelegate3 = [(SXScrollView *)self scrollViewDelegate];
    v8 = [scrollViewDelegate3 accessibilityShouldScrollForScrollView:self];
    goto LABEL_5;
  }

  return _accessibilityScrollingEnabled;
}

- (SXScrollViewDelegate)scrollViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollViewDelegate);

  return WeakRetained;
}

@end