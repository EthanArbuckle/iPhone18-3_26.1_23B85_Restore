@interface UIInputViewPlacementTransition
+ (id)transitionForExistingPlacement:(id)placement animationStyle:(id)style;
+ (id)transitionFromPlacement:(id)placement toPlacement:(id)toPlacement withAnimationStyle:(id)style;
- (BOOL)didAdvanceAnimationToState:(int)state;
- (void)dealloc;
@end

@implementation UIInputViewPlacementTransition

- (void)dealloc
{
  if (self->animationContext)
  {
    [(UIInputViewAnimationController *)self->animationController completeAnimationWithHost:0 context:?];
  }

  v3.receiver = self;
  v3.super_class = UIInputViewPlacementTransition;
  [(UIInputViewPlacementTransition *)&v3 dealloc];
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
  v5 = ![(UIInputViewPlacementTransition *)self cancelled]&& [(UIInputViewPlacementTransition *)self animationState]== v3 - 1;
  fromPlacement = [(UIInputViewPlacementTransition *)self fromPlacement];
  if ([fromPlacement isInteractive])
  {
    toPlacement = [(UIInputViewPlacementTransition *)self toPlacement];
    v8 = [toPlacement isInteractive] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  if ((v5 | v8))
  {
    [(UIInputViewPlacementTransition *)self setAnimationState:v3];
  }

  return (v5 | v8) & 1;
}

@end