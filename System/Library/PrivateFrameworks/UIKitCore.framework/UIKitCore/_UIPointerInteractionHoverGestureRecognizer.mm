@interface _UIPointerInteractionHoverGestureRecognizer
- (BOOL)canBePreventedByGestureRecognizer:(id)a3;
- (BOOL)canPreventGestureRecognizer:(id)a3;
- (CGPoint)locationInView:(id)a3;
@end

@implementation _UIPointerInteractionHoverGestureRecognizer

- (BOOL)canPreventGestureRecognizer:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) != 0 && [(UIGestureRecognizer *)self state]< UIGestureRecognizerStateEnded;
}

- (BOOL)canBePreventedByGestureRecognizer:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (CGPoint)locationInView:(id)a3
{
  v4 = a3;
  if (v4 && ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStateBegan || [(UIGestureRecognizer *)self state]== UIGestureRecognizerStateChanged))
  {
    v11.receiver = self;
    v11.super_class = _UIPointerInteractionHoverGestureRecognizer;
    [(UIHoverGestureRecognizer *)&v11 locationInView:v4];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v8 = 0x7FEFFFFFFFFFFFFFLL;
    v6 = 0x7FEFFFFFFFFFFFFFLL;
  }

  v9 = *&v6;
  v10 = *&v8;
  result.y = v10;
  result.x = v9;
  return result;
}

@end