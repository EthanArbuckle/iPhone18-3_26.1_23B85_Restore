@interface _UITypeSelectTouchResetGestureRecognizer
- (BOOL)_shouldReceiveTouch:(id)touch withEvent:(id)event;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation _UITypeSelectTouchResetGestureRecognizer

- (BOOL)_shouldReceiveTouch:(id)touch withEvent:(id)event
{
  v4 = [(UIGestureRecognizer *)self _allActiveTouches:touch];
  v5 = [v4 count] == 0;

  return v5;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = _UITypeSelectTouchResetGestureRecognizer;
  [(UIGestureRecognizer *)&v5 touchesBegan:began withEvent:event];
  [(UIGestureRecognizer *)self setState:1];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = _UITypeSelectTouchResetGestureRecognizer;
  [(UIGestureRecognizer *)&v5 touchesMoved:moved withEvent:event];
  [(UIGestureRecognizer *)self setState:2];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = _UITypeSelectTouchResetGestureRecognizer;
  [(UIGestureRecognizer *)&v5 touchesMoved:ended withEvent:event];
  [(UIGestureRecognizer *)self setState:3];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = _UITypeSelectTouchResetGestureRecognizer;
  [(UIGestureRecognizer *)&v5 touchesMoved:cancelled withEvent:event];
  [(UIGestureRecognizer *)self setState:4];
}

@end