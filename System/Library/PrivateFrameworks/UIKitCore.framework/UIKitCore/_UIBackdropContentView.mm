@interface _UIBackdropContentView
- (_UIBackdropContentView)initWithFrame:(CGRect)frame;
- (void)_monitoredView:(id)view didMoveFromSuperview:(id)superview toSuperview:(id)toSuperview;
- (void)_monitoredView:(id)view willMoveFromSuperview:(id)superview toSuperview:(id)toSuperview;
- (void)backdropView:(id)view recursivelyUpdateMaskViewsForView:(id)forView;
- (void)didMoveToWindow;
- (void)recursivelyRemoveBackdropMaskViewsForView:(id)view;
@end

@implementation _UIBackdropContentView

- (_UIBackdropContentView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _UIBackdropContentView;
  v3 = [(UIView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 _setMonitorsSubtree:1];
    v4->_isForcingLayout = 0;
  }

  return v4;
}

- (void)backdropView:(id)view recursivelyUpdateMaskViewsForView:(id)forView
{
  v19 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  forViewCopy = forView;
  v8 = forViewCopy;
  if (!self->_isForcingLayout)
  {
    self->_isForcingLayout = 1;
    [forViewCopy layoutBelowIfNeeded];
    [viewCopy updateMaskViewsForView:v8];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    subviews = [v8 subviews];
    v10 = [subviews countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(subviews);
          }

          [(_UIBackdropContentView *)self backdropView:viewCopy recursivelyUpdateMaskViewsForView:*(*(&v14 + 1) + 8 * v13++)];
        }

        while (v11 != v13);
        v11 = [subviews countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }

    self->_isForcingLayout = 0;
  }
}

- (void)recursivelyRemoveBackdropMaskViewsForView:(id)view
{
  v15 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  [viewCopy _removeBackdropMaskViews];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  subviews = [viewCopy subviews];
  v6 = [subviews countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(subviews);
        }

        [(_UIBackdropContentView *)self recursivelyRemoveBackdropMaskViewsForView:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [subviews countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_monitoredView:(id)view didMoveFromSuperview:(id)superview toSuperview:(id)toSuperview
{
  viewCopy = view;
  v11.receiver = self;
  v11.super_class = _UIBackdropContentView;
  superviewCopy = superview;
  [(UIView *)&v11 _monitoredView:viewCopy didMoveFromSuperview:superviewCopy toSuperview:toSuperview];
  LOBYTE(toSuperview) = [superviewCopy isDescendantOfView:{self, v11.receiver, v11.super_class}];

  if ((toSuperview & 1) == 0)
  {
    superview = [(UIView *)self superview];
    [(_UIBackdropContentView *)self backdropView:superview recursivelyUpdateMaskViewsForView:viewCopy];
  }
}

- (void)_monitoredView:(id)view willMoveFromSuperview:(id)superview toSuperview:(id)toSuperview
{
  viewCopy = view;
  v10.receiver = self;
  v10.super_class = _UIBackdropContentView;
  toSuperviewCopy = toSuperview;
  [(UIView *)&v10 _monitoredView:viewCopy willMoveFromSuperview:superview toSuperview:toSuperviewCopy];
  LOBYTE(superview) = [toSuperviewCopy isDescendantOfView:{self, v10.receiver, v10.super_class}];

  if ((superview & 1) == 0)
  {
    [(_UIBackdropContentView *)self recursivelyRemoveBackdropMaskViewsForView:viewCopy];
  }
}

- (void)didMoveToWindow
{
  v25 = *MEMORY[0x1E69E9840];
  window = [(UIView *)self window];

  if (window)
  {
    v21 = 0uLL;
    v22 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
    subviews = [(UIView *)self subviews];
    v5 = [subviews countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v20;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(subviews);
          }

          v9 = *(*(&v19 + 1) + 8 * i);
          superview = [(UIView *)self superview];
          [(_UIBackdropContentView *)self backdropView:superview recursivelyUpdateMaskViewsForView:v9];
        }

        v6 = [subviews countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v17 = 0uLL;
    v18 = 0uLL;
    *(&v15 + 1) = 0;
    v16 = 0uLL;
    subviews = [(UIView *)self subviews];
    v11 = [subviews countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(subviews);
          }

          [(_UIBackdropContentView *)self recursivelyRemoveBackdropMaskViewsForView:*(*(&v15 + 1) + 8 * j)];
        }

        v12 = [subviews countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v12);
    }
  }
}

@end