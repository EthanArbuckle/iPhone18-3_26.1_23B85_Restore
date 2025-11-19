@interface UIViewControllerWrapperView
+ (UIViewControllerWrapperView)wrapperViewForView:(double)a3 frame:(double)a4;
+ (UIViewControllerWrapperView)wrapperViewForView:(double)a3 wrapperFrame:(double)a4 viewFrame:(double)a5;
+ (id)existingWrapperViewForView:(uint64_t)a1;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
- (void)unwrapView;
- (void)unwrapView:(void *)a1;
@end

@implementation UIViewControllerWrapperView

- (void)unwrapView
{
  if (a1)
  {
    v1 = [a1 subviews];
    [v1 makeObjectsPerformSelector:sel_removeFromSuperview];
  }
}

+ (UIViewControllerWrapperView)wrapperViewForView:(double)a3 frame:(double)a4
{
  v10 = a6;
  v11 = objc_opt_self();
  if (!v10)
  {
    v13 = 0;
    goto LABEL_7;
  }

  v12 = [(UIViewControllerWrapperView *)v11 existingWrapperViewForView:v10];
  if (v12)
  {
    v13 = v12;
    [(UIViewControllerWrapperView *)v12 setFrame:a1, a2, a3, a4];
    [(UIView *)v13 bounds];
    [v10 setFrame:?];
  }

  else
  {
    v13 = [[UIViewControllerWrapperView alloc] initWithFrame:a1, a2, a3, a4];
    -[UIView setAutoresizingMask:](v13, "setAutoresizingMask:", [v10 autoresizingMask]);
    [(UIView *)v13 bounds];
    [v10 setFrame:?];
    [(UIView *)v13 addSubview:v10];
    if (!v13)
    {
      goto LABEL_7;
    }
  }

  v13->_tightWrappingDisabled = 0;
LABEL_7:

  return v13;
}

+ (id)existingWrapperViewForView:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 superview];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (UIViewControllerWrapperView)wrapperViewForView:(double)a3 wrapperFrame:(double)a4 viewFrame:(double)a5
{
  v18 = a10;
  v19 = objc_opt_self();
  if (!v18)
  {
    v21 = 0;
    goto LABEL_7;
  }

  v20 = [(UIViewControllerWrapperView *)v19 existingWrapperViewForView:v18];
  if (v20)
  {
    v21 = v20;
    [(UIViewControllerWrapperView *)v20 setFrame:a1, a2, a3, a4];
    [v18 setFrame:{a5, a6, a7, a8}];
  }

  else
  {
    v21 = [[UIViewControllerWrapperView alloc] initWithFrame:a1, a2, a3, a4];
    -[UIView setAutoresizingMask:](v21, "setAutoresizingMask:", [v18 autoresizingMask]);
    [v18 setFrame:{a5, a6, a7, a8}];
    [(UIView *)v21 addSubview:v18];
    if (!v21)
    {
      goto LABEL_7;
    }
  }

  v21->_tightWrappingDisabled = 1;
LABEL_7:

  return v21;
}

- (void)setFrame:(CGRect)a3
{
  if (self)
  {
    tightWrappingDisabled = self->_tightWrappingDisabled;
    v7.receiver = self;
    v7.super_class = UIViewControllerWrapperView;
    [(UIView *)&v7 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
    if (tightWrappingDisabled)
    {
      return;
    }
  }

  else
  {
    v7.receiver = 0;
    v7.super_class = UIViewControllerWrapperView;
    [(UIView *)&v7 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  }

  v5 = [(UIView *)self subviews];
  v6 = [v5 lastObject];
  [(UIView *)self bounds];
  [v6 setFrame:?];
}

- (void)setBounds:(CGRect)a3
{
  if (self)
  {
    tightWrappingDisabled = self->_tightWrappingDisabled;
    v7.receiver = self;
    v7.super_class = UIViewControllerWrapperView;
    [(UIView *)&v7 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
    if (tightWrappingDisabled)
    {
      return;
    }
  }

  else
  {
    v7.receiver = 0;
    v7.super_class = UIViewControllerWrapperView;
    [(UIView *)&v7 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  }

  v5 = [(UIView *)self subviews];
  v6 = [v5 lastObject];
  [(UIView *)self bounds];
  [v6 setFrame:?];
}

- (void)unwrapView:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v5 = v3;
    v4 = [UIViewControllerWrapperView existingWrapperViewForView:v3];

    v3 = v5;
    if (v4 == a1)
    {
      [v5 removeFromSuperview];
      v3 = v5;
    }
  }
}

@end