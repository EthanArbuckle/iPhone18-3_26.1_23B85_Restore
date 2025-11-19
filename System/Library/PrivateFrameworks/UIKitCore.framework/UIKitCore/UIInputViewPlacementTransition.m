@interface UIInputViewPlacementTransition
+ (id)transitionForExistingPlacement:(id)a3 animationStyle:(id)a4;
+ (id)transitionFromPlacement:(id)a3 toPlacement:(id)a4 withAnimationStyle:(id)a5;
- (BOOL)didAdvanceAnimationToState:(int)a3;
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
  v5 = ![(UIInputViewPlacementTransition *)self cancelled]&& [(UIInputViewPlacementTransition *)self animationState]== v3 - 1;
  v6 = [(UIInputViewPlacementTransition *)self fromPlacement];
  if ([v6 isInteractive])
  {
    v7 = [(UIInputViewPlacementTransition *)self toPlacement];
    v8 = [v7 isInteractive] ^ 1;
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