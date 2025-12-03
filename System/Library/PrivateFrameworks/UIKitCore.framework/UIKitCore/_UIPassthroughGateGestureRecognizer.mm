@interface _UIPassthroughGateGestureRecognizer
- (BOOL)_shouldReceiveTouch:(id)touch withEvent:(id)event;
- (BOOL)shouldReceiveEvent:(id)event;
- (_UIPassthroughGateGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
@end

@implementation _UIPassthroughGateGestureRecognizer

- (_UIPassthroughGateGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v7.receiver = self;
  v7.super_class = _UIPassthroughGateGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v7 initWithTarget:self action:action];
  v5 = v4;
  if (v4)
  {
    *(&v4->super._gestureFlags + 4) &= ~0x10u;
    [(UIGestureRecognizer *)v4 _setRequiresSystemGesturesToFail:1];
    v5->_acceptsFailureRequirements = 1;
  }

  return v5;
}

- (BOOL)_shouldReceiveTouch:(id)touch withEvent:(id)event
{
  delegate = [(UIGestureRecognizer *)self delegate];
  if (delegate)
  {
    view = [(UIGestureRecognizer *)self view];
    [touch locationInView:view];
    v10 = v9;
    v12 = v11;

    v13 = [delegate _passthroughGestureRecognizer:self shouldInteractAtLocation:event withEvent:{v10, v12}];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)shouldReceiveEvent:(id)event
{
  if ([event type] == 10)
  {
    delegate = [(UIGestureRecognizer *)self delegate];
    if (delegate)
    {
      eventCopy = event;
      view = [(UIGestureRecognizer *)self view];
      [eventCopy locationInView:view];
      v9 = v8;
      v11 = v10;

      v12 = [delegate _passthroughGestureRecognizer:self shouldInteractAtLocation:eventCopy withEvent:{v9, v11}];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = _UIPassthroughGateGestureRecognizer;
    return [(UIGestureRecognizer *)&v14 shouldReceiveEvent:event];
  }

  return v12;
}

@end