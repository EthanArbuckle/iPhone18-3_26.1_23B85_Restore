@interface UITrackingElementPlacementTransition
+ (id)transitionForExistingPlacement:(id)a3 animationStyle:(id)a4;
+ (id)transitionFromPlacement:(id)a3 toPlacement:(id)a4 withAnimationStyle:(id)a5;
- (BOOL)didAdvanceAnimationToState:(int)a3;
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

+ (id)transitionFromPlacement:(id)a3 toPlacement:(id)a4 withAnimationStyle:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(objc_opt_class());
  [v10 setFromPlacement:v9];

  [v10 setToPlacement:v8];
  [v10 setAnimationStyle:v7];

  return v10;
}

+ (id)transitionForExistingPlacement:(id)a3 animationStyle:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(objc_opt_class());
  [v7 setFromPlacement:v6];
  [v7 setToPlacement:v6];

  [v7 setAnimationStyle:v5];

  return v7;
}

- (BOOL)didAdvanceAnimationToState:(int)a3
{
  v3 = *&a3;
  v5 = ![(UITrackingElementPlacementTransition *)self cancelled]&& [(UITrackingElementPlacementTransition *)self animationState]== v3 - 1;
  v6 = [(UITrackingElementPlacementTransition *)self fromPlacement];
  if ([v6 isInteractive])
  {
    v7 = [(UITrackingElementPlacementTransition *)self toPlacement];
    v8 = [v7 isInteractive] ^ 1;
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