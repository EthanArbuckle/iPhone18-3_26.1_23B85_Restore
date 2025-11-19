@interface _UISwipeActionPanGestureRecognizer
- (BOOL)_isGestureType:(int64_t)a3;
- (BOOL)_shouldReceiveTouch:(id)a3 withEvent:(id)a4;
- (BOOL)_shouldTryToBeginWithEvent:(id)a3;
- (_UISwipeActionPanGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)setState:(int64_t)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation _UISwipeActionPanGestureRecognizer

- (_UISwipeActionPanGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v7.receiver = self;
  v7.super_class = _UISwipeActionPanGestureRecognizer;
  v4 = [(UIPanGestureRecognizer *)&v7 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    [(UIPanGestureRecognizer *)v4 setAllowedScrollTypesMask:3];
    [(UIPanGestureRecognizer *)v5 _setiOSMacUseNonacceleratedDelta:1];
    [(UIPanGestureRecognizer *)v5 _setiOSMacIgnoreScrollDirectionUserPreference:1];
  }

  return v5;
}

- (BOOL)_shouldReceiveTouch:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 _containsHIDPointerEvent])
  {
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = _UISwipeActionPanGestureRecognizer;
    v8 = [(UIGestureRecognizer *)&v10 _shouldReceiveTouch:v6 withEvent:v7];
  }

  return v8;
}

- (BOOL)_isGestureType:(int64_t)a3
{
  if (a3 == 21)
  {
    return 1;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = _UISwipeActionPanGestureRecognizer;
  return [(UIPanGestureRecognizer *)&v6 _isGestureType:?];
}

- (void)setState:(int64_t)a3
{
  v10.receiver = self;
  v10.super_class = _UISwipeActionPanGestureRecognizer;
  [(UIGestureRecognizer *)&v10 setState:a3];
  if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStateBegan)
  {
    v4 = [(UIGestureRecognizer *)self view];
    [(UIPanGestureRecognizer *)self translationInView:v4];
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

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible)
  {
    v8 = [(UIPanGestureRecognizer *)&self->super.super.super.isa _activeTouches];
    v9 = [v8 count];

    if (v9)
    {
      [(_UISwipeActionPanGestureRecognizer *)self setState:5];
    }
  }

  v10.receiver = self;
  v10.super_class = _UISwipeActionPanGestureRecognizer;
  [(UIPanGestureRecognizer *)&v10 touchesBegan:v6 withEvent:v7];
}

- (BOOL)_shouldTryToBeginWithEvent:(id)a3
{
  v4 = a3;
  if ([v4 type] == 10 && (-[UIGestureRecognizer view](self, "view"), v5 = objc_claimAutoreleasedReturnValue(), -[UIPanGestureRecognizer velocityInView:](self, "velocityInView:", v5), v7 = v6, v5, v7 == 0.0))
  {
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = _UISwipeActionPanGestureRecognizer;
    v8 = [(UIPanGestureRecognizer *)&v10 _shouldTryToBeginWithEvent:v4];
  }

  return v8;
}

@end