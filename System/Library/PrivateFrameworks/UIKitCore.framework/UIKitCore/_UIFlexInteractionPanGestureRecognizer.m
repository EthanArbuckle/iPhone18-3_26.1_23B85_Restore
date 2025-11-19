@interface _UIFlexInteractionPanGestureRecognizer
- (CGPoint)translationInView:(id)a3;
- (_UIFlexInteractionPanGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation _UIFlexInteractionPanGestureRecognizer

- (_UIFlexInteractionPanGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v7.receiver = self;
  v7.super_class = _UIFlexInteractionPanGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v7 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    [(UIGestureRecognizer *)v4 setName:@"com.apple.UIKit._UIFlexInteraction.Pan"];
    [(UIGestureRecognizer *)v5 setCancelsTouchesInView:0];
    [(UIGestureRecognizer *)v5 setDelaysTouchesEnded:0];
  }

  return v5;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = _UIFlexInteractionPanGestureRecognizer;
  [(UIGestureRecognizer *)&v7 touchesBegan:a3 withEvent:a4];
  [(UIGestureRecognizer *)self locationInView:0];
  self->_initialTouchLocation.x = v5;
  self->_initialTouchLocation.y = v6;
  [(UIGestureRecognizer *)self setState:1];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = _UIFlexInteractionPanGestureRecognizer;
  [(UIGestureRecognizer *)&v5 touchesEnded:a3 withEvent:a4];
  [(UIGestureRecognizer *)self setState:3];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = _UIFlexInteractionPanGestureRecognizer;
  [(UIGestureRecognizer *)&v5 touchesCancelled:a3 withEvent:a4];
  [(UIGestureRecognizer *)self setState:4];
}

- (CGPoint)translationInView:(id)a3
{
  v4 = a3;
  v5 = v4;
  x = self->_initialTouchLocation.x;
  y = self->_initialTouchLocation.y;
  if (v4)
  {
    [v4 convertPoint:0 fromView:{self->_initialTouchLocation.x, self->_initialTouchLocation.y}];
    x = v8;
    y = v9;
  }

  [(UIGestureRecognizer *)self locationInView:v5];
  v11 = v10 - x;
  v13 = v12 - y;

  v14 = v11;
  v15 = v13;
  result.y = v15;
  result.x = v14;
  return result;
}

@end