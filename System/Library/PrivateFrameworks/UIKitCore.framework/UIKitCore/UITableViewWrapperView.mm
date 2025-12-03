@interface UITableViewWrapperView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (UITableViewWrapperView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_addSubview:(id)subview positioned:(int64_t)positioned relativeTo:(id)to;
- (void)_stickViewToBack:(id)back;
- (void)_unstickView:(id)view;
- (void)bringSubviewToFront:(id)front;
- (void)dealloc;
- (void)sendSubviewToBack:(id)back;
- (void)setBounds:(CGRect)bounds;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation UITableViewWrapperView

- (UITableViewWrapperView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = UITableViewWrapperView;
  v3 = [(UIScrollView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  superview = [(UIView *)self superview];
  [(UIView *)self convertPoint:superview toView:x, y];
  LOBYTE(self) = [superview pointInside:eventCopy withEvent:?];

  return self;
}

- (void)_stickViewToBack:(id)back
{
  backCopy = back;
  if (backCopy)
  {
    stuckToBackViews = self->_stuckToBackViews;
    v9 = backCopy;
    if (!stuckToBackViews)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = self->_stuckToBackViews;
      self->_stuckToBackViews = v6;

      stuckToBackViews = self->_stuckToBackViews;
    }

    v8 = [(NSMutableArray *)stuckToBackViews containsObject:v9];
    backCopy = v9;
    if ((v8 & 1) == 0)
    {
      [(UIView *)self insertSubview:v9 atIndex:[(NSMutableArray *)self->_stuckToBackViews count]];
      [(NSMutableArray *)self->_stuckToBackViews addObject:v9];
      backCopy = v9;
    }
  }
}

- (void)_unstickView:(id)view
{
  viewCopy = view;
  v10 = viewCopy;
  if (viewCopy)
  {
    [(NSMutableArray *)self->_stuckToBackViews removeObject:viewCopy];
    viewCopy = v10;
  }

  superview = [viewCopy superview];
  v6 = superview;
  if (superview == self)
  {
    subviews = [(UIView *)self subviews];
    v8 = [subviews indexOfObject:v10];
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

- (void)bringSubviewToFront:(id)front
{
  v4 = _UITableViewSubviewToMoveForView(front);
  v5.receiver = self;
  v5.super_class = UITableViewWrapperView;
  [(UIView *)&v5 bringSubviewToFront:v4];
}

- (void)sendSubviewToBack:(id)back
{
  v4 = _UITableViewSubviewToMoveForView(back);
  v5.receiver = self;
  v5.super_class = UITableViewWrapperView;
  [(UIView *)&v5 sendSubviewToBack:v4];
}

- (void)_addSubview:(id)subview positioned:(int64_t)positioned relativeTo:(id)to
{
  toCopy = to;
  v9 = _UITableViewSubviewToMoveForView(subview);
  v10.receiver = self;
  v10.super_class = UITableViewWrapperView;
  [(UIView *)&v10 _addSubview:v9 positioned:positioned relativeTo:toCopy];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  selfCopy = self;
  v9 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v9, a2);
  Implementation = method_getImplementation(InstanceMethod);
  (Implementation)(selfCopy, a2, beganCopy, eventCopy);
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  movedCopy = moved;
  eventCopy = event;
  selfCopy = self;
  v9 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v9, a2);
  Implementation = method_getImplementation(InstanceMethod);
  (Implementation)(selfCopy, a2, movedCopy, eventCopy);
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  selfCopy = self;
  v9 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v9, a2);
  Implementation = method_getImplementation(InstanceMethod);
  (Implementation)(selfCopy, a2, endedCopy, eventCopy);
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  cancelledCopy = cancelled;
  eventCopy = event;
  selfCopy = self;
  v9 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v9, a2);
  Implementation = method_getImplementation(InstanceMethod);
  (Implementation)(selfCopy, a2, cancelledCopy, eventCopy);
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(UIScrollView *)self contentOffset];
  v9 = v8;
  v11 = v10;
  superview = [(UIView *)self superview];
  _manuallyManagesSwipeUI = [superview _manuallyManagesSwipeUI];
  v14 = *(&self->super.super._viewFlags + 2);
  if ((_manuallyManagesSwipeUI & 1) == 0)
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

  if (((_manuallyManagesSwipeUI | v16) & 1) == 0)
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

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = UITableViewWrapperView;
  v5 = [(UIScrollView *)&v10 hitTest:event withEvent:test.x, test.y];
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