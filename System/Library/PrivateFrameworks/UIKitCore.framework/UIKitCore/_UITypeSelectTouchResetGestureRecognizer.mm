@interface _UITypeSelectTouchResetGestureRecognizer
- (BOOL)_shouldReceiveTouch:(id)a3 withEvent:(id)a4;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation _UITypeSelectTouchResetGestureRecognizer

- (BOOL)_shouldReceiveTouch:(id)a3 withEvent:(id)a4
{
  v4 = [(UIGestureRecognizer *)self _allActiveTouches:a3];
  v5 = [v4 count] == 0;

  return v5;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = _UITypeSelectTouchResetGestureRecognizer;
  [(UIGestureRecognizer *)&v5 touchesBegan:a3 withEvent:a4];
  [(UIGestureRecognizer *)self setState:1];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = _UITypeSelectTouchResetGestureRecognizer;
  [(UIGestureRecognizer *)&v5 touchesMoved:a3 withEvent:a4];
  [(UIGestureRecognizer *)self setState:2];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = _UITypeSelectTouchResetGestureRecognizer;
  [(UIGestureRecognizer *)&v5 touchesMoved:a3 withEvent:a4];
  [(UIGestureRecognizer *)self setState:3];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = _UITypeSelectTouchResetGestureRecognizer;
  [(UIGestureRecognizer *)&v5 touchesMoved:a3 withEvent:a4];
  [(UIGestureRecognizer *)self setState:4];
}

@end