@interface _UIContinuousSelectionGestureRecognizer
- (BOOL)_shouldReceiveTouch:(id)touch withEvent:(id)event;
- (CGPoint)locationInView:(id)view;
- (CGPoint)originalLocation;
- (CGVector)allowableMovement;
- (_UIContinuousSelectionGestureRecognizer)init;
- (void)_cancelOrFail;
- (void)_resetGestureRecognizer;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation _UIContinuousSelectionGestureRecognizer

- (_UIContinuousSelectionGestureRecognizer)init
{
  v5.receiver = self;
  v5.super_class = _UIContinuousSelectionGestureRecognizer;
  v2 = [(UIGestureRecognizer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(_UIContinuousSelectionGestureRecognizer *)v2 setAllowableMovement:0.0, 0.0];
  }

  return v3;
}

- (CGPoint)locationInView:(id)view
{
  viewCopy = view;
  _activeTouchesEvent = [(UIGestureRecognizer *)self _activeTouchesEvent];
  v6 = [_activeTouchesEvent touchesForGestureRecognizer:self];

  if ([v6 count])
  {
    v25.receiver = self;
    v25.super_class = _UIContinuousSelectionGestureRecognizer;
    [(UIGestureRecognizer *)&v25 locationInView:viewCopy];
    v8 = v7;
    v10 = v9;
  }

  else
  {
    if (![(NSMutableArray *)self->_locationInWindow count])
    {
      goto LABEL_8;
    }

    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = [(NSMutableArray *)self->_locationInWindow objectAtIndexedSubscript:v11];
      [v14 CGPointValue];
      v16 = v15;
      v18 = v17;
      v19 = [(NSMutableArray *)self->_windows objectAtIndexedSubscript:v11];
      v20 = _UITouchConvertLocationInWindowToView(v19, viewCopy, v16, v18);
      v22 = v21;

      v13 = (v20 + v13);
      v12 = (v22 + v12);
      ++v11;
    }

    while (v11 < [(NSMutableArray *)self->_locationInWindow count]);
    if (v11)
    {
      v8 = (v13 / v11);
      v10 = (v12 / v11);
    }

    else
    {
LABEL_8:
      v8 = *MEMORY[0x1E695EFF8];
      v10 = *(MEMORY[0x1E695EFF8] + 8);
    }
  }

  v23 = v8;
  v24 = v10;
  result.y = v24;
  result.x = v23;
  return result;
}

- (void)_cancelOrFail
{
  if ([(UIGestureRecognizer *)self state])
  {
    v3 = 4;
  }

  else
  {
    v3 = 5;
  }

  [(UIGestureRecognizer *)self setState:v3];
}

- (BOOL)_shouldReceiveTouch:(id)touch withEvent:(id)event
{
  v4 = [(UIGestureRecognizer *)self _allActiveTouches:touch];
  v5 = [v4 count] == 0;

  return v5;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  [(_UIContinuousSelectionGestureRecognizer *)self locationInView:0, event];
  [(_UIContinuousSelectionGestureRecognizer *)self setOriginalLocation:?];
  if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible)
  {

    [(UIGestureRecognizer *)self setState:1];
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  [(_UIContinuousSelectionGestureRecognizer *)self allowableMovement:moved];
  v6 = v5;
  v8 = v7;
  [(_UIContinuousSelectionGestureRecognizer *)self originalLocation];
  v10 = v9;
  v12 = v11;
  [(_UIContinuousSelectionGestureRecognizer *)self locationInView:0];
  v15 = v14;
  if (v6 <= 0.0)
  {
    if (v8 <= 0.0)
    {
      goto LABEL_9;
    }

    v18 = 0;
  }

  else
  {
    v16 = vabdd_f64(v13, v10);
    [(_UIContinuousSelectionGestureRecognizer *)self allowableMovement];
    v18 = v16 > v17;
    if (v8 <= 0.0)
    {
      if (v16 > v17)
      {
        goto LABEL_15;
      }

      goto LABEL_9;
    }
  }

  [(_UIContinuousSelectionGestureRecognizer *)self allowableMovement];
  if (v18 || vabdd_f64(v15, v12) > v19)
  {
LABEL_15:

    [(_UIContinuousSelectionGestureRecognizer *)self _cancelOrFail];
    return;
  }

LABEL_9:
  if ([(UIGestureRecognizer *)self state]>= UIGestureRecognizerStateBegan && [(UIGestureRecognizer *)self state]<= UIGestureRecognizerStateChanged)
  {

    [(UIGestureRecognizer *)self setState:2];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  if ([(UIGestureRecognizer *)self state:ended]< UIGestureRecognizerStateBegan || [(UIGestureRecognizer *)self state]>= UIGestureRecognizerStateEnded)
  {
    v5 = 5;
  }

  else
  {
    v5 = 3;
  }

  [(UIGestureRecognizer *)self setState:v5];
}

- (void)_resetGestureRecognizer
{
  locationInWindow = self->_locationInWindow;
  self->_locationInWindow = 0;

  windows = self->_windows;
  self->_windows = 0;

  v5.receiver = self;
  v5.super_class = _UIContinuousSelectionGestureRecognizer;
  [(UIGestureRecognizer *)&v5 _resetGestureRecognizer];
}

- (CGVector)allowableMovement
{
  dx = self->_allowableMovement.dx;
  dy = self->_allowableMovement.dy;
  result.dy = dy;
  result.dx = dx;
  return result;
}

- (CGPoint)originalLocation
{
  x = self->_originalLocation.x;
  y = self->_originalLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end