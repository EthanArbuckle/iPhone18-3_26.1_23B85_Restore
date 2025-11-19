@interface SUScrollViewScroller
- (id)methodSignatureForSelector:(SEL)a3;
- (void)_addScrollRequest:(id)a3;
- (void)_finishActiveScrollRequest;
- (void)_performContentOffsetRequest:(id)a3;
- (void)_performNextScrollRequest;
- (void)_performScrollRectRequest:(id)a3;
- (void)attachToScrollView:(id)a3;
- (void)dealloc;
- (void)detachFromScrollView;
- (void)forwardInvocation:(id)a3;
- (void)scrollFrameToVisible:(CGRect)a3 animated:(BOOL)a4 completionBlock:(id)a5;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)setContentOffset:(CGPoint)a3 animated:(BOOL)a4 completionBlock:(id)a5;
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

- (void)attachToScrollView:(id)a3
{
  self->_originalDelegate = 0;
  if ([a3 delegate] != self)
  {
    self->_originalDelegate = [a3 delegate];
  }

  v5 = a3;
  self->_scrollView = v5;

  [(UIScrollView *)v5 setDelegate:self];
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

- (void)scrollFrameToVisible:(CGRect)a3 animated:(BOOL)a4 completionBlock:(id)a5
{
  v6 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = objc_alloc_init(SUScrollRequest);
  [(SUScrollRequest *)v12 setAnimated:v6];
  [(SUScrollRequest *)v12 setCompletionHandler:a5];
  -[SUScrollRequest setFrameValue:](v12, "setFrameValue:", [MEMORY[0x1E696B098] valueWithCGRect:{x, y, width, height}]);
  [(SUScrollViewScroller *)self _addScrollRequest:v12];
}

- (void)setContentOffset:(CGPoint)a3 animated:(BOOL)a4 completionBlock:(id)a5
{
  v6 = a4;
  y = a3.y;
  x = a3.x;
  v10 = objc_alloc_init(SUScrollRequest);
  [(SUScrollRequest *)v10 setAnimated:v6];
  [(SUScrollRequest *)v10 setCompletionHandler:a5];
  -[SUScrollRequest setContentOffsetValue:](v10, "setContentOffsetValue:", [MEMORY[0x1E696B098] valueWithCGPoint:{x, y}]);
  [(SUScrollViewScroller *)self _addScrollRequest:v10];
}

- (void)forwardInvocation:(id)a3
{
  [a3 selector];
  if (objc_opt_respondsToSelector())
  {
    originalDelegate = self->_originalDelegate;

    [a3 invokeWithTarget:originalDelegate];
  }
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v6.receiver = self;
  v6.super_class = SUScrollViewScroller;
  result = [(SUScrollViewScroller *)&v6 methodSignatureForSelector:?];
  if (!result)
  {
    result = protocol_getMethodDescription(&unk_1F4203C48, a3, 0, 1).name;
    if (result)
    {
      return [(UIScrollViewDelegate *)self->_originalDelegate methodSignatureForSelector:a3];
    }
  }

  return result;
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  [(SUScrollViewScroller *)self _finishActiveScrollRequest];
  if (objc_opt_respondsToSelector())
  {
    originalDelegate = self->_originalDelegate;

    [(UIScrollViewDelegate *)originalDelegate scrollViewDidEndScrollingAnimation:a3];
  }
}

- (void)_addScrollRequest:(id)a3
{
  scrollRequests = self->_scrollRequests;
  if (!scrollRequests)
  {
    scrollRequests = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_scrollRequests = scrollRequests;
  }

  [(NSMutableArray *)scrollRequests addObject:a3];
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
      v5 = self;
      (*(v4 + 16))(v4);
    }

    [(NSMutableArray *)self->_scrollRequests removeObjectAtIndex:0];
    [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];

    [(SUScrollViewScroller *)self _performNextScrollRequest];
  }
}

- (void)_performContentOffsetRequest:(id)a3
{
  [objc_msgSend(a3 "contentOffsetValue")];
  v6 = v5;
  v8 = v7;
  [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];
  [(UIScrollView *)self->_scrollView contentOffset];
  v11 = v6 == v10 && v8 == v9;
  if (v11 || (v12 = [a3 isAnimated], -[UIScrollView setContentOffset:animated:](self->_scrollView, "setContentOffset:animated:", v12, v6, v8), (v12 & 1) == 0))
  {

    [(SUScrollViewScroller *)self _finishActiveScrollRequest];
  }
}

- (void)_performNextScrollRequest
{
  if ([(NSMutableArray *)self->_scrollRequests count])
  {
    v3 = [(NSMutableArray *)self->_scrollRequests objectAtIndex:0];
    v4 = [v3 contentOffsetValue];
    v5 = [v3 frameValue];
    if (v4)
    {

      [(SUScrollViewScroller *)self _performContentOffsetRequest:v3];
    }

    else if (v5)
    {

      [(SUScrollViewScroller *)self _performScrollRectRequest:v3];
    }

    else
    {

      [(SUScrollViewScroller *)self _finishActiveScrollRequest];
    }
  }
}

- (void)_performScrollRectRequest:(id)a3
{
  [(UIScrollView *)self->_scrollView bounds];
  v6 = v5;
  v8 = v7;
  [(UIScrollView *)self->_scrollView contentOffset];
  v10 = v9;
  v12 = v11;
  [objc_msgSend(a3 "frameValue")];
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
  if (CGRectContainsRect(v23, v24) || (v21 = [a3 isAnimated], -[UIScrollView scrollRectToVisible:animated:](self->_scrollView, "scrollRectToVisible:animated:", v21, v14, v16, v18, v20), (v21 & 1) == 0))
  {

    [(SUScrollViewScroller *)self _finishActiveScrollRequest];
  }
}

@end