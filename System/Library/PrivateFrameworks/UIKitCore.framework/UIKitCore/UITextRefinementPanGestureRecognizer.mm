@interface UITextRefinementPanGestureRecognizer
- (CGPoint)startPoint;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation UITextRefinementPanGestureRecognizer

- (void)touchesBegan:(id)began withEvent:(id)event
{
  p_startPoint = &self->_startPoint;
  eventCopy = event;
  beganCopy = began;
  anyObject = [beganCopy anyObject];
  view = [(UIGestureRecognizer *)self view];
  [anyObject locationInView:view];
  p_startPoint->x = v11;
  p_startPoint->y = v12;

  v13.receiver = self;
  v13.super_class = UITextRefinementPanGestureRecognizer;
  [(UIPanGestureRecognizer *)&v13 touchesBegan:beganCopy withEvent:eventCopy];
}

- (CGPoint)startPoint
{
  x = self->_startPoint.x;
  y = self->_startPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end