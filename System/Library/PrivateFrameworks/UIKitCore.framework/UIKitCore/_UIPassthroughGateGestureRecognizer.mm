@interface _UIPassthroughGateGestureRecognizer
- (BOOL)_shouldReceiveTouch:(id)a3 withEvent:(id)a4;
- (BOOL)shouldReceiveEvent:(id)a3;
- (_UIPassthroughGateGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
@end

@implementation _UIPassthroughGateGestureRecognizer

- (_UIPassthroughGateGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v7.receiver = self;
  v7.super_class = _UIPassthroughGateGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v7 initWithTarget:self action:a4];
  v5 = v4;
  if (v4)
  {
    *(&v4->super._gestureFlags + 4) &= ~0x10u;
    [(UIGestureRecognizer *)v4 _setRequiresSystemGesturesToFail:1];
    v5->_acceptsFailureRequirements = 1;
  }

  return v5;
}

- (BOOL)_shouldReceiveTouch:(id)a3 withEvent:(id)a4
{
  v7 = [(UIGestureRecognizer *)self delegate];
  if (v7)
  {
    v8 = [(UIGestureRecognizer *)self view];
    [a3 locationInView:v8];
    v10 = v9;
    v12 = v11;

    v13 = [v7 _passthroughGestureRecognizer:self shouldInteractAtLocation:a4 withEvent:{v10, v12}];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)shouldReceiveEvent:(id)a3
{
  if ([a3 type] == 10)
  {
    v5 = [(UIGestureRecognizer *)self delegate];
    if (v5)
    {
      v6 = a3;
      v7 = [(UIGestureRecognizer *)self view];
      [v6 locationInView:v7];
      v9 = v8;
      v11 = v10;

      v12 = [v5 _passthroughGestureRecognizer:self shouldInteractAtLocation:v6 withEvent:{v9, v11}];
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
    return [(UIGestureRecognizer *)&v14 shouldReceiveEvent:a3];
  }

  return v12;
}

@end