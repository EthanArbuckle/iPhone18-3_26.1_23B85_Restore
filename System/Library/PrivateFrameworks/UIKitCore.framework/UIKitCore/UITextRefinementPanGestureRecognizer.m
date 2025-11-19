@interface UITextRefinementPanGestureRecognizer
- (CGPoint)startPoint;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation UITextRefinementPanGestureRecognizer

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  p_startPoint = &self->_startPoint;
  v7 = a4;
  v8 = a3;
  v9 = [v8 anyObject];
  v10 = [(UIGestureRecognizer *)self view];
  [v9 locationInView:v10];
  p_startPoint->x = v11;
  p_startPoint->y = v12;

  v13.receiver = self;
  v13.super_class = UITextRefinementPanGestureRecognizer;
  [(UIPanGestureRecognizer *)&v13 touchesBegan:v8 withEvent:v7];
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