@interface UITableViewWrapperView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (UITableViewWrapperView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_addSubview:(id)a3 positioned:(int64_t)a4 relativeTo:(id)a5;
- (void)_stickViewToBack:(id)a3;
- (void)_unstickView:(id)a3;
- (void)bringSubviewToFront:(id)a3;
- (void)dealloc;
- (void)sendSubviewToBack:(id)a3;
- (void)setBounds:(CGRect)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation UITableViewWrapperView

- (UITableViewWrapperView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = UITableViewWrapperView;
  v3 = [(UIScrollView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIScrollView *)v3 _setZoomFeedbackGenerator:0];
  }

  return v4;
}

- (void)dealloc
{
  stuckToBackViews = self->_stuckToBackViews;
  self->_stuckToBackViews = 0;

  v4.receiver = self;
  v4.super_class = UITableViewWrapperView;
  [(UIScrollView *)&v4 dealloc];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(UIView *)self superview];
  [(UIView *)self convertPoint:v8 toView:x, y];
  LOBYTE(self) = [v8 pointInside:v7 withEvent:?];

  return self;
}

- (void)_stickViewToBack:(id)a3
{
  v4 = a3;
  if (v4)
  {
    stuckToBackViews = self->_stuckToBackViews;
    v9 = v4;
    if (!stuckToBackViews)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = self->_stuckToBackViews;
      self->_stuckToBackViews = v6;

      stuckToBackViews = self->_stuckToBackViews;
    }

    v8 = [(NSMutableArray *)stuckToBackViews containsObject:v9];
    v4 = v9;
    if ((v8 & 1) == 0)
    {
      [(UIView *)self insertSubview:v9 atIndex:[(NSMutableArray *)self->_stuckToBackViews count]];
      [(NSMutableArray *)self->_stuckToBackViews addObject:v9];
      v4 = v9;
    }
  }
}

- (void)_unstickView:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (v4)
  {
    [(NSMutableArray *)self->_stuckToBackViews removeObject:v4];
    v4 = v10;
  }

  v5 = [v4 superview];
  v6 = v5;
  if (v5 == self)
  {
    v7 = [(UIView *)self subviews];
    v8 = [v7 indexOfObject:v10];
    v9 = [(NSMutableArray *)self->_stuckToBackViews count];

    if (v8 < v9)
    {
      [(UITableViewWrapperView *)self bringSubviewToFront:v10];
    }
  }

  else
  {
  }
}

- (void)bringSubviewToFront:(id)a3
{
  v4 = _UITableViewSubviewToMoveForView(a3);
  v5.receiver = self;
  v5.super_class = UITableViewWrapperView;
  [(UIView *)&v5 bringSubviewToFront:v4];
}

- (void)sendSubviewToBack:(id)a3
{
  v4 = _UITableViewSubviewToMoveForView(a3);
  v5.receiver = self;
  v5.super_class = UITableViewWrapperView;
  [(UIView *)&v5 sendSubviewToBack:v4];
}

- (void)_addSubview:(id)a3 positioned:(int64_t)a4 relativeTo:(id)a5
{
  v8 = a5;
  v9 = _UITableViewSubviewToMoveForView(a3);
  v10.receiver = self;
  v10.super_class = UITableViewWrapperView;
  [(UIView *)&v10 _addSubview:v9 positioned:a4 relativeTo:v8];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v12 = a3;
  v7 = a4;
  v8 = self;
  v9 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v9, a2);
  Implementation = method_getImplementation(InstanceMethod);
  (Implementation)(v8, a2, v12, v7);
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v12 = a3;
  v7 = a4;
  v8 = self;
  v9 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v9, a2);
  Implementation = method_getImplementation(InstanceMethod);
  (Implementation)(v8, a2, v12, v7);
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v12 = a3;
  v7 = a4;
  v8 = self;
  v9 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v9, a2);
  Implementation = method_getImplementation(InstanceMethod);
  (Implementation)(v8, a2, v12, v7);
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v12 = a3;
  v7 = a4;
  v8 = self;
  v9 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v9, a2);
  Implementation = method_getImplementation(InstanceMethod);
  (Implementation)(v8, a2, v12, v7);
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIScrollView *)self contentOffset];
  v9 = v8;
  v11 = v10;
  v12 = [(UIView *)self superview];
  v13 = [v12 _manuallyManagesSwipeUI];
  v14 = *(&self->super.super._viewFlags + 2);
  if ((v13 & 1) == 0)
  {
    if ((v14 & 0x400000) != 0)
    {
      if (x > 0.0)
      {
        x = 0.0;
      }
    }

    else
    {
      x = fmax(x, 0.0);
    }
  }

  v22.receiver = self;
  v22.super_class = UITableViewWrapperView;
  [(UIScrollView *)&v22 setBounds:x, y, width, height];
  [(UIScrollView *)self contentOffset];
  v16 = v9 == v15;
  if (v11 != v17)
  {
    v16 = 0;
  }

  if (((v13 | v16) & 1) == 0)
  {
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    MinX = CGRectGetMinX(v23);
    if ((v14 & 0x400000) != 0)
    {
      if (MinX >= -30.0 && ![(UIScrollView *)self _isHorizontalBouncing])
      {
        [(UIScrollView *)self _horizontalVelocity];
        v20 = v21 < 0.0;
        goto LABEL_16;
      }
    }

    else if (MinX <= 30.0 && ![(UIScrollView *)self _isHorizontalBouncing])
    {
      [(UIScrollView *)self _horizontalVelocity];
      v20 = v19 > 0.0;
LABEL_16:
      [(UIScrollView *)self setBounces:v20];
      goto LABEL_17;
    }

    v20 = 1;
    goto LABEL_16;
  }

LABEL_17:
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v10.receiver = self;
  v10.super_class = UITableViewWrapperView;
  v5 = [(UIScrollView *)&v10 hitTest:a4 withEvent:a3.x, a3.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v7;
}

@end