@interface UITextRangeAdjustmentGestureRecognizer
- (CGPoint)startPoint;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation UITextRangeAdjustmentGestureRecognizer

- (void)touchesBegan:(id)began withEvent:(id)event
{
  p_startPoint = &self->_startPoint;
  eventCopy = event;
  beganCopy = began;
  anyObject = [beganCopy anyObject];
  view = [(UIGestureRecognizer *)self view];
  textInputView = [view textInputView];
  [anyObject locationInView:textInputView];
  p_startPoint->x = v12;
  p_startPoint->y = v13;

  v14.receiver = self;
  v14.super_class = UITextRangeAdjustmentGestureRecognizer;
  [(UIPanGestureRecognizer *)&v14 touchesBegan:beganCopy withEvent:eventCopy];
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