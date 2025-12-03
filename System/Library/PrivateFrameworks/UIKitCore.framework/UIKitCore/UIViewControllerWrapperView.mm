@interface UIViewControllerWrapperView
+ (UIViewControllerWrapperView)wrapperViewForView:(double)view frame:(double)frame;
+ (UIViewControllerWrapperView)wrapperViewForView:(double)view wrapperFrame:(double)frame viewFrame:(double)viewFrame;
+ (id)existingWrapperViewForView:(uint64_t)view;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
- (void)unwrapView;
- (void)unwrapView:(void *)view;
@end

@implementation UIViewControllerWrapperView

- (void)unwrapView
{
  if (self)
  {
    subviews = [self subviews];
    [subviews makeObjectsPerformSelector:sel_removeFromSuperview];
  }
}

+ (UIViewControllerWrapperView)wrapperViewForView:(double)view frame:(double)frame
{
  v10 = a6;
  v11 = objc_opt_self();
  if (!v10)
  {
    frame = 0;
    goto LABEL_7;
  }

  v12 = [(UIViewControllerWrapperView *)v11 existingWrapperViewForView:v10];
  if (v12)
  {
    frame = v12;
    [(UIViewControllerWrapperView *)v12 setFrame:self, a2, view, frame];
    [(UIView *)frame bounds];
    [v10 setFrame:?];
  }

  else
  {
    frame = [[UIViewControllerWrapperView alloc] initWithFrame:self, a2, view, frame];
    -[UIView setAutoresizingMask:](frame, "setAutoresizingMask:", [v10 autoresizingMask]);
    [(UIView *)frame bounds];
    [v10 setFrame:?];
    [(UIView *)frame addSubview:v10];
    if (!frame)
    {
      goto LABEL_7;
    }
  }

  frame->_tightWrappingDisabled = 0;
LABEL_7:

  return frame;
}

+ (id)existingWrapperViewForView:(uint64_t)view
{
  v2 = a2;
  objc_opt_self();
  superview = [v2 superview];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = superview;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (UIViewControllerWrapperView)wrapperViewForView:(double)view wrapperFrame:(double)frame viewFrame:(double)viewFrame
{
  v18 = a10;
  v19 = objc_opt_self();
  if (!v18)
  {
    frame = 0;
    goto LABEL_7;
  }

  v20 = [(UIViewControllerWrapperView *)v19 existingWrapperViewForView:v18];
  if (v20)
  {
    frame = v20;
    [(UIViewControllerWrapperView *)v20 setFrame:self, a2, view, frame];
    [v18 setFrame:{viewFrame, a6, a7, a8}];
  }

  else
  {
    frame = [[UIViewControllerWrapperView alloc] initWithFrame:self, a2, view, frame];
    -[UIView setAutoresizingMask:](frame, "setAutoresizingMask:", [v18 autoresizingMask]);
    [v18 setFrame:{viewFrame, a6, a7, a8}];
    [(UIView *)frame addSubview:v18];
    if (!frame)
    {
      goto LABEL_7;
    }
  }

  frame->_tightWrappingDisabled = 1;
LABEL_7:

  return frame;
}

- (void)setFrame:(CGRect)frame
{
  if (self)
  {
    tightWrappingDisabled = self->_tightWrappingDisabled;
    v7.receiver = self;
    v7.super_class = UIViewControllerWrapperView;
    [(UIView *)&v7 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
    if (tightWrappingDisabled)
    {
      return;
    }
  }

  else
  {
    v7.receiver = 0;
    v7.super_class = UIViewControllerWrapperView;
    [(UIView *)&v7 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  }

  subviews = [(UIView *)self subviews];
  lastObject = [subviews lastObject];
  [(UIView *)self bounds];
  [lastObject setFrame:?];
}

- (void)setBounds:(CGRect)bounds
{
  if (self)
  {
    tightWrappingDisabled = self->_tightWrappingDisabled;
    v7.receiver = self;
    v7.super_class = UIViewControllerWrapperView;
    [(UIView *)&v7 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
    if (tightWrappingDisabled)
    {
      return;
    }
  }

  else
  {
    v7.receiver = 0;
    v7.super_class = UIViewControllerWrapperView;
    [(UIView *)&v7 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  }

  subviews = [(UIView *)self subviews];
  lastObject = [subviews lastObject];
  [(UIView *)self bounds];
  [lastObject setFrame:?];
}

- (void)unwrapView:(void *)view
{
  v3 = a2;
  if (view)
  {
    v5 = v3;
    v4 = [UIViewControllerWrapperView existingWrapperViewForView:v3];

    v3 = v5;
    if (v4 == view)
    {
      [v5 removeFromSuperview];
      v3 = v5;
    }
  }
}

@end