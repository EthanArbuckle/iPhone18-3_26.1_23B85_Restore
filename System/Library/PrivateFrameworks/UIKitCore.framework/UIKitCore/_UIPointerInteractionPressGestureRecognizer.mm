@interface _UIPointerInteractionPressGestureRecognizer
- (BOOL)_acceptsBeingFailureDependentOnGestureRecognizer:(id)recognizer;
- (BOOL)_acceptsBeingFailureRequirementForGestureRecognizer:(id)recognizer;
- (BOOL)canBePreventedByGestureRecognizer:(id)recognizer;
- (BOOL)canPreventGestureRecognizer:(id)recognizer;
@end

@implementation _UIPointerInteractionPressGestureRecognizer

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

- (BOOL)_acceptsBeingFailureRequirementForGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_acceptsBeingFailureDependentOnGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end