@interface _UIPointerInteractionHoverGestureRecognizer
- (BOOL)canBePreventedByGestureRecognizer:(id)recognizer;
- (BOOL)canPreventGestureRecognizer:(id)recognizer;
- (CGPoint)locationInView:(id)view;
@end

@implementation _UIPointerInteractionHoverGestureRecognizer

- (BOOL)canPreventGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) != 0 && [(UIGestureRecognizer *)self state]< UIGestureRecognizerStateEnded;
}

- (BOOL)canBePreventedByGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (CGPoint)locationInView:(id)view
{
  viewCopy = view;
  if (viewCopy && ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStateBegan || [(UIGestureRecognizer *)self state]== UIGestureRecognizerStateChanged))
  {
    v11.receiver = self;
    v11.super_class = _UIPointerInteractionHoverGestureRecognizer;
    [(UIHoverGestureRecognizer *)&v11 locationInView:viewCopy];
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