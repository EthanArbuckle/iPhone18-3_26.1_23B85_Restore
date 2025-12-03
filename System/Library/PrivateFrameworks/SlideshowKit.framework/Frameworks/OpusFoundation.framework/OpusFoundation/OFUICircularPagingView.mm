@interface OFUICircularPagingView
- (CGRect)_frameForPageAtIndex:(unint64_t)index;
- (CGRect)_frameForScrollView;
- (OFUICircularPagingView)initWithCoder:(id)coder;
- (OFUICircularPagingView)initWithFrame:(CGRect)frame;
- (id)pagingViewAtIndex:(unint64_t)index;
- (void)_updateLayout;
- (void)commonInit;
- (void)dealloc;
- (void)didRotate;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
- (void)willAnimateRotation;
@end

@implementation OFUICircularPagingView

- (void)commonInit
{
  v8.receiver = self;
  v8.super_class = OFUICircularPagingView;
  [(OFUIView *)&v8 commonInit];
  self->_circularPagingViewController = 0;
  self->_delegate = 0;
  self->_gapBetweenPages = 0.0;
  self->_rotationInProgress = 0;
  self->_scrollViewIsMoving = 0;
  [(OFUICircularPagingView *)self setClipsToBounds:1];
  v3 = objc_alloc(MEMORY[0x277D759D8]);
  [(OFUICircularPagingView *)self _frameForScrollView];
  v4 = [v3 initWithFrame:?];
  self->_scrollView = v4;
  [(UIScrollView *)v4 setAutoresizingMask:18];
  [(UIScrollView *)self->_scrollView setPagingEnabled:1];
  -[UIScrollView setBackgroundColor:](self->_scrollView, "setBackgroundColor:", [MEMORY[0x277D75348] clearColor]);
  [(UIScrollView *)self->_scrollView setShowsVerticalScrollIndicator:0];
  [(UIScrollView *)self->_scrollView setShowsHorizontalScrollIndicator:0];
  [(UIScrollView *)self->_scrollView setBounces:1];
  [(UIScrollView *)self->_scrollView setDelegate:self];
  [(OFUICircularPagingView *)self addSubview:self->_scrollView];
  v5 = objc_alloc(MEMORY[0x277D75D18]);
  [(OFUICircularPagingView *)self _frameForPageAtIndex:0];
  self->_previousPagingView = [v5 initWithFrame:?];
  v6 = objc_alloc(MEMORY[0x277D75D18]);
  [(OFUICircularPagingView *)self _frameForPageAtIndex:1];
  self->_currentPagingView = [v6 initWithFrame:?];
  v7 = objc_alloc(MEMORY[0x277D75D18]);
  [(OFUICircularPagingView *)self _frameForPageAtIndex:2];
  self->_nextPagingView = [v7 initWithFrame:?];
  [(UIScrollView *)self->_scrollView addSubview:self->_previousPagingView];
  [(UIScrollView *)self->_scrollView addSubview:self->_currentPagingView];
  [(UIScrollView *)self->_scrollView addSubview:self->_nextPagingView];
}

- (OFUICircularPagingView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = OFUICircularPagingView;
  v3 = [(OFViewProxy *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(OFUICircularPagingView *)v3 commonInit];
  }

  return v4;
}

- (OFUICircularPagingView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = OFUICircularPagingView;
  v3 = [(OFViewProxy *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(OFUICircularPagingView *)v3 commonInit];
  }

  return v4;
}

- (void)dealloc
{
  if (self->_circularPagingViewController)
  {
    self->_circularPagingViewController = 0;
  }

  if (self->_delegate)
  {
    self->_delegate = 0;
  }

  scrollView = self->_scrollView;
  if (scrollView)
  {

    self->_scrollView = 0;
  }

  previousPagingView = self->_previousPagingView;
  if (previousPagingView)
  {

    self->_previousPagingView = 0;
  }

  currentPagingView = self->_currentPagingView;
  if (currentPagingView)
  {

    self->_currentPagingView = 0;
  }

  nextPagingView = self->_nextPagingView;
  if (nextPagingView)
  {

    self->_nextPagingView = 0;
  }

  v7.receiver = self;
  v7.super_class = OFUICircularPagingView;
  [(OFUIView *)&v7 dealloc];
}

- (CGRect)_frameForScrollView
{
  [(OFUICircularPagingView *)self bounds];
  gapBetweenPages = self->_gapBetweenPages;
  v5 = gapBetweenPages * -0.5;
  v7 = v6 + gapBetweenPages;
  v8 = 0.0;
  result.size.height = v3;
  result.size.width = v7;
  result.origin.y = v8;
  result.origin.x = v5;
  return result;
}

- (CGRect)_frameForPageAtIndex:(unint64_t)index
{
  [(UIScrollView *)self->_scrollView frame];
  v6 = v5;
  [(OFUICircularPagingView *)self bounds];
  v9 = self->_gapBetweenPages * 0.5 + v6 * index;
  v10 = 0.0;
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (void)_updateLayout
{
  [(UIScrollView *)self->_scrollView frame];
  if (v3 > self->_gapBetweenPages + 0.000001 && !self->_rotationInProgress && !self->_scrollViewIsMoving)
  {
    [(UIScrollView *)self->_scrollView frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [(OFUICircularPagingView *)self _frameForScrollView];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v30.origin.x = v5;
    v30.origin.y = v7;
    v30.size.width = v9;
    v30.size.height = v11;
    v31.origin.x = v13;
    v31.origin.y = v15;
    v31.size.width = v17;
    v31.size.height = v19;
    if (!CGRectEqualToRect(v30, v31))
    {
      [(UIScrollView *)self->_scrollView setFrame:v13, v15, v17, v19];
    }

    [(UIScrollView *)self->_scrollView frame];
    v21 = v20 * 3.0;
    [(UIScrollView *)self->_scrollView frame];
    v23 = v22;
    [(UIScrollView *)self->_scrollView contentSize];
    if (v25 != v21 || v24 != v23)
    {
      [(UIScrollView *)self->_scrollView setContentSize:v21, v23];
      [(UIScrollView *)self->_scrollView frame];
      [(UIScrollView *)self->_scrollView setContentOffset:v27, 0.0];
    }

    [(OFUICircularPagingView *)self _frameForPageAtIndex:0];
    [(UIView *)self->_previousPagingView setFrame:?];
    [(OFUICircularPagingView *)self _frameForPageAtIndex:1];
    [(UIView *)self->_currentPagingView setFrame:?];
    [(OFUICircularPagingView *)self _frameForPageAtIndex:2];
    nextPagingView = self->_nextPagingView;

    [(UIView *)nextPagingView setFrame:?];
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(OFUICircularPagingView *)self frame];
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  if (CGRectEqualToRect(v10, v11))
  {
    v8.receiver = self;
    v8.super_class = OFUICircularPagingView;
    [(OFUICircularPagingView *)&v8 setFrame:x, y, width, height];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = OFUICircularPagingView;
    [(OFUICircularPagingView *)&v9 setFrame:x, y, width, height];
    [(OFUICircularPagingView *)self _updateLayout];
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(OFUICircularPagingView *)self bounds];
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  if (CGRectEqualToRect(v10, v11))
  {
    v8.receiver = self;
    v8.super_class = OFUICircularPagingView;
    [(OFUICircularPagingView *)&v8 setBounds:x, y, width, height];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = OFUICircularPagingView;
    [(OFUICircularPagingView *)&v9 setBounds:x, y, width, height];
    [(OFUICircularPagingView *)self _updateLayout];
  }
}

- (id)pagingViewAtIndex:(unint64_t)index
{
  if (index > 2)
  {
    return 0;
  }

  else
  {
    return *(&self->super.super.super.super.super.isa + *off_279C8A460[index]);
  }
}

- (void)willAnimateRotation
{
  self->_rotationInProgress = 1;
  [(UIView *)self->_previousPagingView setHidden:1];
  [(UIView *)self->_nextPagingView setHidden:1];
  [(UIScrollView *)self->_scrollView frame];
  v4 = v3;
  v6 = v5;
  [(UIScrollView *)self->_scrollView contentOffset];
  gapBetweenPages = self->_gapBetweenPages;
  v9 = v8 + gapBetweenPages * 0.5;
  currentPagingView = self->_currentPagingView;

  [(UIView *)currentPagingView setFrame:v9, 0.0, v4 - gapBetweenPages, v6];
}

- (void)didRotate
{
  [(UIView *)self->_previousPagingView setHidden:1];
  [(UIView *)self->_nextPagingView setHidden:1];
  self->_rotationInProgress = 0;

  [(OFUICircularPagingView *)self _updateLayout];
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  [decelerating contentOffset];
  v6 = v5;
  [decelerating frame];
  if (v6 > v7 && self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(OFUICircularPagingViewDelegate *)self->_delegate circularPagingViewDidMoveForward:self];
  }

  [decelerating contentOffset];
  v9 = v8;
  [decelerating frame];
  if (v9 < v10 && self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(OFUICircularPagingViewDelegate *)self->_delegate circularPagingViewDidMoveBackward:self];
  }

  [(OFUICircularPagingView *)self _frameForPageAtIndex:1];

  [decelerating scrollRectToVisible:0 animated:?];
}

@end