@interface _UIFlexInteractionPanGestureRecognizer
- (CGPoint)translationInView:(id)view;
- (_UIFlexInteractionPanGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation _UIFlexInteractionPanGestureRecognizer

- (_UIFlexInteractionPanGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v7.receiver = self;
  v7.super_class = _UIFlexInteractionPanGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v7 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    [(UIGestureRecognizer *)v4 setName:@"com.apple.UIKit._UIFlexInteraction.Pan"];
    [(UIGestureRecognizer *)v5 setCancelsTouchesInView:0];
    [(UIGestureRecognizer *)v5 setDelaysTouchesEnded:0];
  }

  return v5;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = _UIFlexInteractionPanGestureRecognizer;
  [(UIGestureRecognizer *)&v7 touchesBegan:began withEvent:event];
  [(UIGestureRecognizer *)self locationInView:0];
  self->_initialTouchLocation.x = v5;
  self->_initialTouchLocation.y = v6;
  [(UIGestureRecognizer *)self setState:1];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = _UIFlexInteractionPanGestureRecognizer;
  [(UIGestureRecognizer *)&v5 touchesEnded:ended withEvent:event];
  [(UIGestureRecognizer *)self setState:3];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = _UIFlexInteractionPanGestureRecognizer;
  [(UIGestureRecognizer *)&v5 touchesCancelled:cancelled withEvent:event];
  [(UIGestureRecognizer *)self setState:4];
}

- (CGPoint)translationInView:(id)view
{
  viewCopy = view;
  v5 = viewCopy;
  x = self->_initialTouchLocation.x;
  y = self->_initialTouchLocation.y;
  if (viewCopy)
  {
    [viewCopy convertPoint:0 fromView:{self->_initialTouchLocation.x, self->_initialTouchLocation.y}];
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