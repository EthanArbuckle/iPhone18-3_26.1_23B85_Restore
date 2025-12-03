@interface _UISwipeActionPanGestureRecognizer
- (BOOL)_isGestureType:(int64_t)type;
- (BOOL)_shouldReceiveTouch:(id)touch withEvent:(id)event;
- (BOOL)_shouldTryToBeginWithEvent:(id)event;
- (_UISwipeActionPanGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)setState:(int64_t)state;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation _UISwipeActionPanGestureRecognizer

- (_UISwipeActionPanGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v7.receiver = self;
  v7.super_class = _UISwipeActionPanGestureRecognizer;
  v4 = [(UIPanGestureRecognizer *)&v7 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    [(UIPanGestureRecognizer *)v4 setAllowedScrollTypesMask:3];
    [(UIPanGestureRecognizer *)v5 _setiOSMacUseNonacceleratedDelta:1];
    [(UIPanGestureRecognizer *)v5 _setiOSMacIgnoreScrollDirectionUserPreference:1];
  }

  return v5;
}

- (BOOL)_shouldReceiveTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  eventCopy = event;
  if ([eventCopy _containsHIDPointerEvent])
  {
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = _UISwipeActionPanGestureRecognizer;
    v8 = [(UIGestureRecognizer *)&v10 _shouldReceiveTouch:touchCopy withEvent:eventCopy];
  }

  return v8;
}

- (BOOL)_isGestureType:(int64_t)type
{
  if (type == 21)
  {
    return 1;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = _UISwipeActionPanGestureRecognizer;
  return [(UIPanGestureRecognizer *)&v6 _isGestureType:?];
}

- (void)setState:(int64_t)state
{
  v10.receiver = self;
  v10.super_class = _UISwipeActionPanGestureRecognizer;
  [(UIGestureRecognizer *)&v10 setState:state];
  if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStateBegan)
  {
    view = [(UIGestureRecognizer *)self view];
    [(UIPanGestureRecognizer *)self translationInView:view];
    v6 = v5;
    v8 = v7;

    if (fabs(v6) < fabs(v8))
    {
      v9.receiver = self;
      v9.super_class = _UISwipeActionPanGestureRecognizer;
      [(UIGestureRecognizer *)&v9 setState:5];
    }
  }
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible)
  {
    _activeTouches = [(UIPanGestureRecognizer *)&self->super.super.super.isa _activeTouches];
    v9 = [_activeTouches count];

    if (v9)
    {
      [(_UISwipeActionPanGestureRecognizer *)self setState:5];
    }
  }

  v10.receiver = self;
  v10.super_class = _UISwipeActionPanGestureRecognizer;
  [(UIPanGestureRecognizer *)&v10 touchesBegan:beganCopy withEvent:eventCopy];
}

- (BOOL)_shouldTryToBeginWithEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy type] == 10 && (-[UIGestureRecognizer view](self, "view"), v5 = objc_claimAutoreleasedReturnValue(), -[UIPanGestureRecognizer velocityInView:](self, "velocityInView:", v5), v7 = v6, v5, v7 == 0.0))
  {
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = _UISwipeActionPanGestureRecognizer;
    v8 = [(UIPanGestureRecognizer *)&v10 _shouldTryToBeginWithEvent:eventCopy];
  }

  return v8;
}

@end