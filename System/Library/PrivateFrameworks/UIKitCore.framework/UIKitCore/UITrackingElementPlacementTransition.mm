@interface UITrackingElementPlacementTransition
+ (id)transitionForExistingPlacement:(id)placement animationStyle:(id)style;
+ (id)transitionFromPlacement:(id)placement toPlacement:(id)toPlacement withAnimationStyle:(id)style;
- (BOOL)didAdvanceAnimationToState:(int)state;
- (CGRect)lastKnownKeyboardFrame;
- (void)dealloc;
@end

@implementation UITrackingElementPlacementTransition

- (void)dealloc
{
  if (self->animationContext)
  {
    [(UIInputViewAnimationController *)self->animationController completeAnimationWithHost:0 context:?];
  }

  v3.receiver = self;
  v3.super_class = UITrackingElementPlacementTransition;
  [(UITrackingElementPlacementTransition *)&v3 dealloc];
}

+ (id)transitionFromPlacement:(id)placement toPlacement:(id)toPlacement withAnimationStyle:(id)style
{
  styleCopy = style;
  toPlacementCopy = toPlacement;
  placementCopy = placement;
  v10 = objc_alloc_init(objc_opt_class());
  [v10 setFromPlacement:placementCopy];

  [v10 setToPlacement:toPlacementCopy];
  [v10 setAnimationStyle:styleCopy];

  return v10;
}

+ (id)transitionForExistingPlacement:(id)placement animationStyle:(id)style
{
  styleCopy = style;
  placementCopy = placement;
  v7 = objc_alloc_init(objc_opt_class());
  [v7 setFromPlacement:placementCopy];
  [v7 setToPlacement:placementCopy];

  [v7 setAnimationStyle:styleCopy];

  return v7;
}

- (BOOL)didAdvanceAnimationToState:(int)state
{
  v3 = *&state;
  v5 = ![(UITrackingElementPlacementTransition *)self cancelled]&& [(UITrackingElementPlacementTransition *)self animationState]== v3 - 1;
  fromPlacement = [(UITrackingElementPlacementTransition *)self fromPlacement];
  if ([fromPlacement isInteractive])
  {
    toPlacement = [(UITrackingElementPlacementTransition *)self toPlacement];
    v8 = [toPlacement isInteractive] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  if ((v5 | v8))
  {
    [(UITrackingElementPlacementTransition *)self setAnimationState:v3];
  }

  return (v5 | v8) & 1;
}

- (CGRect)lastKnownKeyboardFrame
{
  x = self->lastKnownKeyboardFrame.origin.x;
  y = self->lastKnownKeyboardFrame.origin.y;
  width = self->lastKnownKeyboardFrame.size.width;
  height = self->lastKnownKeyboardFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end