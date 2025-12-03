@interface _PUScrollViewPPTScrollHelper
- (CADisplayLink)_displayLink;
- (CGPoint)originContentOffset;
- (UIScrollView)scrollView;
- (_PUScrollViewPPTScrollHelper)init;
- (_PUScrollViewPPTScrollHelper)initWithScrollView:(id)view;
- (void)_endScroll;
- (void)_incrementScroll;
- (void)scrollWithStartHandler:(id)handler incrementHandler:(id)incrementHandler completionHandler:(id)completionHandler;
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
  _completionHandler = [(_PUScrollViewPPTScrollHelper *)self _completionHandler];

  if (_completionHandler)
  {
    _completionHandler2 = [(_PUScrollViewPPTScrollHelper *)self _completionHandler];
    _completionHandler2[2]();
  }

  [(_PUScrollViewPPTScrollHelper *)self _setIncrementHandler:0];
  [(_PUScrollViewPPTScrollHelper *)self _setCompletionHandler:0];
  _displayLink = [(_PUScrollViewPPTScrollHelper *)self _displayLink];
  [_displayLink invalidate];

  scrollView = [(_PUScrollViewPPTScrollHelper *)self scrollView];
  [scrollView _reenableImplicitAnimationsAfterScrollTest];
  [scrollView _pu_setPPTScrollHelper:0];
}

- (void)_incrementScroll
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v5 = v4;
  [(_PUScrollViewPPTScrollHelper *)self _lastIncrementTime];
  v7 = v5 - v6;
  [(_PUScrollViewPPTScrollHelper *)self _setLastIncrementTime:v5];
  v10 = 0;
  _incrementHandler = [(_PUScrollViewPPTScrollHelper *)self _incrementHandler];
  (_incrementHandler)[2](_incrementHandler, &v10, v7);

  if (v10)
  {
    [(_PUScrollViewPPTScrollHelper *)self _endScroll];
  }

  else
  {
    _displayLink = [(_PUScrollViewPPTScrollHelper *)self _displayLink];

    if (!_displayLink)
    {
      [(_PUScrollViewPPTScrollHelper *)self performSelector:a2 withObject:0 afterDelay:0.0];
    }
  }
}

- (void)scrollWithStartHandler:(id)handler incrementHandler:(id)incrementHandler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  incrementHandlerCopy = incrementHandler;
  completionHandlerCopy = completionHandler;
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
  scrollView = [(_PUScrollViewPPTScrollHelper *)self scrollView];
  [scrollView _pu_setPPTScrollHelper:self];
  [scrollView _suppressImplicitAnimationsForScrollTest];
  if (v11)
  {
    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    [v11 addToRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];
  }

  else
  {
    [(_PUScrollViewPPTScrollHelper *)self performSelector:sel__incrementScroll withObject:0 afterDelay:0.0];
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  [(_PUScrollViewPPTScrollHelper *)self _setLastIncrementTime:?];
  [(_PUScrollViewPPTScrollHelper *)self _setIncrementHandler:incrementHandlerCopy];
  [(_PUScrollViewPPTScrollHelper *)self _setCompletionHandler:completionHandlerCopy];
  if (handlerCopy)
  {
    handlerCopy[2]();
  }
}

- (_PUScrollViewPPTScrollHelper)initWithScrollView:(id)view
{
  viewCopy = view;
  v8.receiver = self;
  v8.super_class = _PUScrollViewPPTScrollHelper;
  v5 = [(_PUScrollViewPPTScrollHelper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scrollView, viewCopy);
  }

  return v6;
}

- (_PUScrollViewPPTScrollHelper)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIScrollView+PhotosUI.m" lineNumber:286 description:{@"%s is not available as initializer", "-[_PUScrollViewPPTScrollHelper init]"}];

  abort();
}

@end