@interface _UIBackdropContentView
- (_UIBackdropContentView)initWithFrame:(CGRect)a3;
- (void)_monitoredView:(id)a3 didMoveFromSuperview:(id)a4 toSuperview:(id)a5;
- (void)_monitoredView:(id)a3 willMoveFromSuperview:(id)a4 toSuperview:(id)a5;
- (void)backdropView:(id)a3 recursivelyUpdateMaskViewsForView:(id)a4;
- (void)didMoveToWindow;
- (void)recursivelyRemoveBackdropMaskViewsForView:(id)a3;
@end

@implementation _UIBackdropContentView

- (_UIBackdropContentView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _UIBackdropContentView;
  v3 = [(UIView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 _setMonitorsSubtree:1];
    v4->_isForcingLayout = 0;
  }

  return v4;
}

- (void)backdropView:(id)a3 recursivelyUpdateMaskViewsForView:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!self->_isForcingLayout)
  {
    self->_isForcingLayout = 1;
    [v7 layoutBelowIfNeeded];
    [v6 updateMaskViewsForView:v8];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = [v8 subviews];
    v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(v9);
          }

          [(_UIBackdropContentView *)self backdropView:v6 recursivelyUpdateMaskViewsForView:*(*(&v14 + 1) + 8 * v13++)];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }

    self->_isForcingLayout = 0;
  }
}

- (void)recursivelyRemoveBackdropMaskViewsForView:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 _removeBackdropMaskViews];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [v4 subviews];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        [(_UIBackdropContentView *)self recursivelyRemoveBackdropMaskViewsForView:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_monitoredView:(id)a3 didMoveFromSuperview:(id)a4 toSuperview:(id)a5
{
  v8 = a3;
  v11.receiver = self;
  v11.super_class = _UIBackdropContentView;
  v9 = a4;
  [(UIView *)&v11 _monitoredView:v8 didMoveFromSuperview:v9 toSuperview:a5];
  LOBYTE(a5) = [v9 isDescendantOfView:{self, v11.receiver, v11.super_class}];

  if ((a5 & 1) == 0)
  {
    v10 = [(UIView *)self superview];
    [(_UIBackdropContentView *)self backdropView:v10 recursivelyUpdateMaskViewsForView:v8];
  }
}

- (void)_monitoredView:(id)a3 willMoveFromSuperview:(id)a4 toSuperview:(id)a5
{
  v8 = a3;
  v10.receiver = self;
  v10.super_class = _UIBackdropContentView;
  v9 = a5;
  [(UIView *)&v10 _monitoredView:v8 willMoveFromSuperview:a4 toSuperview:v9];
  LOBYTE(a4) = [v9 isDescendantOfView:{self, v10.receiver, v10.super_class}];

  if ((a4 & 1) == 0)
  {
    [(_UIBackdropContentView *)self recursivelyRemoveBackdropMaskViewsForView:v8];
  }
}

- (void)didMoveToWindow
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [(UIView *)self window];

  if (v3)
  {
    v21 = 0uLL;
    v22 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
    v4 = [(UIView *)self subviews];
    v5 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
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
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v19 + 1) + 8 * i);
          v10 = [(UIView *)self superview];
          [(_UIBackdropContentView *)self backdropView:v10 recursivelyUpdateMaskViewsForView:v9];
        }

        v6 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
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
    v4 = [(UIView *)self subviews];
    v11 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
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
            objc_enumerationMutation(v4);
          }

          [(_UIBackdropContentView *)self recursivelyRemoveBackdropMaskViewsForView:*(*(&v15 + 1) + 8 * j)];
        }

        v12 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v12);
    }
  }
}

@end