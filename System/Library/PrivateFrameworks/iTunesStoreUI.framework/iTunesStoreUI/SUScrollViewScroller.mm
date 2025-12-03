@interface SUScrollViewScroller
- (id)methodSignatureForSelector:(SEL)selector;
- (void)_addScrollRequest:(id)request;
- (void)_finishActiveScrollRequest;
- (void)_performContentOffsetRequest:(id)request;
- (void)_performNextScrollRequest;
- (void)_performScrollRectRequest:(id)request;
- (void)attachToScrollView:(id)view;
- (void)dealloc;
- (void)detachFromScrollView;
- (void)forwardInvocation:(id)invocation;
- (void)scrollFrameToVisible:(CGRect)visible animated:(BOOL)animated completionBlock:(id)block;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)setContentOffset:(CGPoint)offset animated:(BOOL)animated completionBlock:(id)block;
@end

@implementation SUScrollViewScroller

- (void)dealloc
{
  if ([(UIScrollView *)self->_scrollView delegate]== self)
  {
    [(UIScrollView *)self->_scrollView setDelegate:0];
  }

  v3.receiver = self;
  v3.super_class = SUScrollViewScroller;
  [(SUScrollViewScroller *)&v3 dealloc];
}

- (void)attachToScrollView:(id)view
{
  self->_originalDelegate = 0;
  if ([view delegate] != self)
  {
    self->_originalDelegate = [view delegate];
  }

  viewCopy = view;
  self->_scrollView = viewCopy;

  [(UIScrollView *)viewCopy setDelegate:self];
}

- (void)detachFromScrollView
{
  if ([(UIScrollView *)self->_scrollView delegate]== self)
  {
    [(UIScrollView *)self->_scrollView setDelegate:self->_originalDelegate];
  }

  self->_originalDelegate = 0;
  self->_scrollView = 0;
}

- (void)scrollFrameToVisible:(CGRect)visible animated:(BOOL)animated completionBlock:(id)block
{
  animatedCopy = animated;
  height = visible.size.height;
  width = visible.size.width;
  y = visible.origin.y;
  x = visible.origin.x;
  v12 = objc_alloc_init(SUScrollRequest);
  [(SUScrollRequest *)v12 setAnimated:animatedCopy];
  [(SUScrollRequest *)v12 setCompletionHandler:block];
  -[SUScrollRequest setFrameValue:](v12, "setFrameValue:", [MEMORY[0x1E696B098] valueWithCGRect:{x, y, width, height}]);
  [(SUScrollViewScroller *)self _addScrollRequest:v12];
}

- (void)setContentOffset:(CGPoint)offset animated:(BOOL)animated completionBlock:(id)block
{
  animatedCopy = animated;
  y = offset.y;
  x = offset.x;
  v10 = objc_alloc_init(SUScrollRequest);
  [(SUScrollRequest *)v10 setAnimated:animatedCopy];
  [(SUScrollRequest *)v10 setCompletionHandler:block];
  -[SUScrollRequest setContentOffsetValue:](v10, "setContentOffsetValue:", [MEMORY[0x1E696B098] valueWithCGPoint:{x, y}]);
  [(SUScrollViewScroller *)self _addScrollRequest:v10];
}

- (void)forwardInvocation:(id)invocation
{
  [invocation selector];
  if (objc_opt_respondsToSelector())
  {
    originalDelegate = self->_originalDelegate;

    [invocation invokeWithTarget:originalDelegate];
  }
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v6.receiver = self;
  v6.super_class = SUScrollViewScroller;
  result = [(SUScrollViewScroller *)&v6 methodSignatureForSelector:?];
  if (!result)
  {
    result = protocol_getMethodDescription(&unk_1F4203C48, selector, 0, 1).name;
    if (result)
    {
      return [(UIScrollViewDelegate *)self->_originalDelegate methodSignatureForSelector:selector];
    }
  }

  return result;
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  [(SUScrollViewScroller *)self _finishActiveScrollRequest];
  if (objc_opt_respondsToSelector())
  {
    originalDelegate = self->_originalDelegate;

    [(UIScrollViewDelegate *)originalDelegate scrollViewDidEndScrollingAnimation:animation];
  }
}

- (void)_addScrollRequest:(id)request
{
  scrollRequests = self->_scrollRequests;
  if (!scrollRequests)
  {
    scrollRequests = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_scrollRequests = scrollRequests;
  }

  [(NSMutableArray *)scrollRequests addObject:request];
  if ([(NSMutableArray *)self->_scrollRequests count]== 1)
  {

    [(SUScrollViewScroller *)self _performNextScrollRequest];
  }
}

- (void)_finishActiveScrollRequest
{
  if ([(NSMutableArray *)self->_scrollRequests count])
  {
    v3 = [-[NSMutableArray objectAtIndex:](self->_scrollRequests objectAtIndex:{0), "completionHandler"}];
    if (v3)
    {
      v4 = v3;
      selfCopy = self;
      (*(v4 + 16))(v4);
    }

    [(NSMutableArray *)self->_scrollRequests removeObjectAtIndex:0];
    [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];

    [(SUScrollViewScroller *)self _performNextScrollRequest];
  }
}

- (void)_performContentOffsetRequest:(id)request
{
  [objc_msgSend(request "contentOffsetValue")];
  v6 = v5;
  v8 = v7;
  [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];
  [(UIScrollView *)self->_scrollView contentOffset];
  v11 = v6 == v10 && v8 == v9;
  if (v11 || (v12 = [request isAnimated], -[UIScrollView setContentOffset:animated:](self->_scrollView, "setContentOffset:animated:", v12, v6, v8), (v12 & 1) == 0))
  {

    [(SUScrollViewScroller *)self _finishActiveScrollRequest];
  }
}

- (void)_performNextScrollRequest
{
  if ([(NSMutableArray *)self->_scrollRequests count])
  {
    v3 = [(NSMutableArray *)self->_scrollRequests objectAtIndex:0];
    contentOffsetValue = [v3 contentOffsetValue];
    frameValue = [v3 frameValue];
    if (contentOffsetValue)
    {

      [(SUScrollViewScroller *)self _performContentOffsetRequest:v3];
    }

    else if (frameValue)
    {

      [(SUScrollViewScroller *)self _performScrollRectRequest:v3];
    }

    else
    {

      [(SUScrollViewScroller *)self _finishActiveScrollRequest];
    }
  }
}

- (void)_performScrollRectRequest:(id)request
{
  [(UIScrollView *)self->_scrollView bounds];
  v6 = v5;
  v8 = v7;
  [(UIScrollView *)self->_scrollView contentOffset];
  v10 = v9;
  v12 = v11;
  [objc_msgSend(request "frameValue")];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];
  v23.origin.x = v10;
  v23.origin.y = v12;
  v23.size.width = v6;
  v23.size.height = v8;
  v24.origin.x = v14;
  v24.origin.y = v16;
  v24.size.width = v18;
  v24.size.height = v20;
  if (CGRectContainsRect(v23, v24) || (v21 = [request isAnimated], -[UIScrollView scrollRectToVisible:animated:](self->_scrollView, "scrollRectToVisible:animated:", v21, v14, v16, v18, v20), (v21 & 1) == 0))
  {

    [(SUScrollViewScroller *)self _finishActiveScrollRequest];
  }
}

@end