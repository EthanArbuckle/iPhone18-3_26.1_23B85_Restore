@interface _UIPointerInteractionPressGestureRecognizer
- (BOOL)_acceptsBeingFailureDependentOnGestureRecognizer:(id)a3;
- (BOOL)_acceptsBeingFailureRequirementForGestureRecognizer:(id)a3;
- (BOOL)canBePreventedByGestureRecognizer:(id)a3;
- (BOOL)canPreventGestureRecognizer:(id)a3;
@end

@implementation _UIPointerInteractionPressGestureRecognizer

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

- (BOOL)_acceptsBeingFailureRequirementForGestureRecognizer:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_acceptsBeingFailureDependentOnGestureRecognizer:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end