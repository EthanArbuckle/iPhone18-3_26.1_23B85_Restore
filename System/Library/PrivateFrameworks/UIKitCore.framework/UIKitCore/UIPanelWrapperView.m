@interface UIPanelWrapperView
+ (id)existingWrapperViewForView:(id)a3;
+ (id)wrapperViewForView:(id)a3;
- (void)layoutSubviews;
@end

@implementation UIPanelWrapperView

+ (id)wrapperViewForView:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [a1 existingWrapperViewForView:v4];
    if (!v5)
    {
      v6 = [a1 alloc];
      [v4 frame];
      v5 = [v6 initWithFrame:?];
      [v5 setAutoresizingMask:0];
      [v5 setAutoresizesSubviews:0];
      [v5 bounds];
      [v4 setFrame:?];
      [v5 addSubview:v4];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)existingWrapperViewForView:(id)a3
{
  v3 = [a3 superview];
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

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = UIPanelWrapperView;
  [(UIView *)&v6 layoutSubviews];
  v3 = [(UIView *)self subviews];
  v4 = [v3 firstObject];

  if (v4)
  {
    v5 = v4[10];
    [(UIView *)self bounds];
    if (v5)
    {
      [v5 _updateControlledViewsToFrame:?];
    }

    else
    {
      [v4 setFrame:?];
    }
  }
}

@end