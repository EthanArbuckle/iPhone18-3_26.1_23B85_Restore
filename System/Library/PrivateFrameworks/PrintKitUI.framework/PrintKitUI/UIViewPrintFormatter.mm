@interface UIViewPrintFormatter
- (CGRect)rectForPageAtIndex:(int64_t)index;
- (id)_initWithView:(id)view;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)_recalcPageCount;
- (void)drawInRect:(CGRect)rect forPageAtIndex:(int64_t)index;
@end

@implementation UIViewPrintFormatter

- (id)_initWithView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = UIViewPrintFormatter;
  v6 = [(UIPrintFormatter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_view, view);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = UIViewPrintFormatter;
  v4 = [(UIPrintFormatter *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 15, self->_view);
  }

  return v5;
}

- (int64_t)_recalcPageCount
{
  view = self->_view;
  if (!view)
  {
    return 0;
  }

  [(UIView *)view bounds];
  if (v4 <= 0.0)
  {
    return 0;
  }

  v5 = v4;
  v10.receiver = self;
  v10.super_class = UIViewPrintFormatter;
  v6 = 1;
  [(UIPrintFormatter *)&v10 _pageContentRect:1];
  v7 = v5 - CGRectGetHeight(v11);
  if (v7 > 0.0)
  {
    v9.receiver = self;
    v9.super_class = UIViewPrintFormatter;
    [(UIPrintFormatter *)&v9 _pageContentRect:0];
    return (ceil(v7 / CGRectGetHeight(v12)) + 1.0);
  }

  return v6;
}

- (CGRect)rectForPageAtIndex:(int64_t)index
{
  v31.receiver = self;
  v31.super_class = UIViewPrintFormatter;
  [(UIPrintFormatter *)&v31 _pageContentRect:1];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(UIView *)self->_view bounds];
  v14 = v13;
  v16 = v15;
  startPage = [(UIPrintFormatter *)self startPage];
  if (startPage == index)
  {
    v18 = v6;
    v19 = v8;
    v20 = v14;
    v21 = v16;
    v22 = v6;
    v23 = v8;
    v24 = v10;
    v25 = v12;
  }

  else
  {
    v26 = startPage;
    v30.receiver = self;
    v30.super_class = UIViewPrintFormatter;
    [(UIPrintFormatter *)&v30 _pageContentRect:0];
    v23 = v27;
    v24 = v28;
    v25 = v29;
    v19 = v27 - (v12 + v29 * (~v26 + index));
    v20 = v14;
    v21 = v16;
    v22 = v18;
  }

  return CGRectIntersection(*&v18, *&v22);
}

- (void)drawInRect:(CGRect)rect forPageAtIndex:(int64_t)index
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  CGContextClipToRect(CurrentContext, v17);
  CGContextTranslateCTM(CurrentContext, x, y);
  startPage = [(UIPrintFormatter *)self startPage];
  v12 = index - startPage - 1;
  if (index - startPage < 1)
  {
    v14 = 0.0;
  }

  else
  {
    v16.receiver = self;
    v16.super_class = UIViewPrintFormatter;
    [(UIPrintFormatter *)&v16 _pageContentRect:1];
    v13 = CGRectGetHeight(v18);
    v15.receiver = self;
    v15.super_class = UIViewPrintFormatter;
    [(UIPrintFormatter *)&v15 _pageContentRect:0];
    v14 = v13 + v12 * CGRectGetHeight(v19);
  }

  CGContextTranslateCTM(CurrentContext, 0.0, -v14);
  [(UIView *)self->_view drawRect:self forViewPrintFormatter:0.0, v14, width, height];
  CGContextRestoreGState(CurrentContext);
}

@end