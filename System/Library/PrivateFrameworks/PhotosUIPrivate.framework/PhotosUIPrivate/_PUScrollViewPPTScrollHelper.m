@interface _PUScrollViewPPTScrollHelper
- (CADisplayLink)_displayLink;
- (CGPoint)originContentOffset;
- (UIScrollView)scrollView;
- (_PUScrollViewPPTScrollHelper)init;
- (_PUScrollViewPPTScrollHelper)initWithScrollView:(id)a3;
- (void)_endScroll;
- (void)_incrementScroll;
- (void)scrollWithStartHandler:(id)a3 incrementHandler:(id)a4 completionHandler:(id)a5;
@end

@implementation _PUScrollViewPPTScrollHelper

- (CADisplayLink)_displayLink
{
  WeakRetained = objc_loadWeakRetained(&self->__displayLink);

  return WeakRetained;
}

- (CGPoint)originContentOffset
{
  x = self->_originContentOffset.x;
  y = self->_originContentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (UIScrollView)scrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);

  return WeakRetained;
}

- (void)_endScroll
{
  v3 = [(_PUScrollViewPPTScrollHelper *)self _completionHandler];

  if (v3)
  {
    v4 = [(_PUScrollViewPPTScrollHelper *)self _completionHandler];
    v4[2]();
  }

  [(_PUScrollViewPPTScrollHelper *)self _setIncrementHandler:0];
  [(_PUScrollViewPPTScrollHelper *)self _setCompletionHandler:0];
  v5 = [(_PUScrollViewPPTScrollHelper *)self _displayLink];
  [v5 invalidate];

  v6 = [(_PUScrollViewPPTScrollHelper *)self scrollView];
  [v6 _reenableImplicitAnimationsAfterScrollTest];
  [v6 _pu_setPPTScrollHelper:0];
}

- (void)_incrementScroll
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v5 = v4;
  [(_PUScrollViewPPTScrollHelper *)self _lastIncrementTime];
  v7 = v5 - v6;
  [(_PUScrollViewPPTScrollHelper *)self _setLastIncrementTime:v5];
  v10 = 0;
  v8 = [(_PUScrollViewPPTScrollHelper *)self _incrementHandler];
  (v8)[2](v8, &v10, v7);

  if (v10)
  {
    [(_PUScrollViewPPTScrollHelper *)self _endScroll];
  }

  else
  {
    v9 = [(_PUScrollViewPPTScrollHelper *)self _displayLink];

    if (!v9)
    {
      [(_PUScrollViewPPTScrollHelper *)self performSelector:a2 withObject:0 afterDelay:0.0];
    }
  }
}

- (void)scrollWithStartHandler:(id)a3 incrementHandler:(id)a4 completionHandler:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  v10 = getenv("CA_BENCHMARK");
  if (v10 && *v10 != 48)
  {
    v11 = 0;
  }

  else
  {
    v11 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel__incrementScroll];
  }

  [(_PUScrollViewPPTScrollHelper *)self _setDisplayLink:v11];
  v12 = [(_PUScrollViewPPTScrollHelper *)self scrollView];
  [v12 _pu_setPPTScrollHelper:self];
  [v12 _suppressImplicitAnimationsForScrollTest];
  if (v11)
  {
    v13 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [v11 addToRunLoop:v13 forMode:*MEMORY[0x1E695DA28]];
  }

  else
  {
    [(_PUScrollViewPPTScrollHelper *)self performSelector:sel__incrementScroll withObject:0 afterDelay:0.0];
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  [(_PUScrollViewPPTScrollHelper *)self _setLastIncrementTime:?];
  [(_PUScrollViewPPTScrollHelper *)self _setIncrementHandler:v8];
  [(_PUScrollViewPPTScrollHelper *)self _setCompletionHandler:v9];
  if (v14)
  {
    v14[2]();
  }
}

- (_PUScrollViewPPTScrollHelper)initWithScrollView:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _PUScrollViewPPTScrollHelper;
  v5 = [(_PUScrollViewPPTScrollHelper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scrollView, v4);
  }

  return v6;
}

- (_PUScrollViewPPTScrollHelper)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"UIScrollView+PhotosUI.m" lineNumber:286 description:{@"%s is not available as initializer", "-[_PUScrollViewPPTScrollHelper init]"}];

  abort();
}

@end