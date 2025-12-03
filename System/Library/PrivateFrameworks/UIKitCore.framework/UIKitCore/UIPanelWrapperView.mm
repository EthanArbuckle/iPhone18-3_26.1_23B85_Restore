@interface UIPanelWrapperView
+ (id)existingWrapperViewForView:(id)view;
+ (id)wrapperViewForView:(id)view;
- (void)layoutSubviews;
@end

@implementation UIPanelWrapperView

+ (id)wrapperViewForView:(id)view
{
  viewCopy = view;
  if (viewCopy)
  {
    v5 = [self existingWrapperViewForView:viewCopy];
    if (!v5)
    {
      v6 = [self alloc];
      [viewCopy frame];
      v5 = [v6 initWithFrame:?];
      [v5 setAutoresizingMask:0];
      [v5 setAutoresizesSubviews:0];
      [v5 bounds];
      [viewCopy setFrame:?];
      [v5 addSubview:viewCopy];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)existingWrapperViewForView:(id)view
{
  superview = [view superview];
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

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = UIPanelWrapperView;
  [(UIView *)&v6 layoutSubviews];
  subviews = [(UIView *)self subviews];
  firstObject = [subviews firstObject];

  if (firstObject)
  {
    v5 = firstObject[10];
    [(UIView *)self bounds];
    if (v5)
    {
      [v5 _updateControlledViewsToFrame:?];
    }

    else
    {
      [firstObject setFrame:?];
    }
  }
}

@end