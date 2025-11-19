@interface SBContinuousExposeDragAndDropToAppTransitionSwitcherModifier
- (id)animationAttributesForLayoutElement:(id)a3;
@end

@implementation SBContinuousExposeDragAndDropToAppTransitionSwitcherModifier

- (id)animationAttributesForLayoutElement:(id)a3
{
  v9.receiver = self;
  v9.super_class = SBContinuousExposeDragAndDropToAppTransitionSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v9 animationAttributesForLayoutElement:a3];
  v5 = [v4 mutableCopy];

  v6 = [(SBContinuousExposeDragAndDropToAppTransitionSwitcherModifier *)self medusaSettings];
  v7 = [v6 resizeAnimationSettings];
  [v5 setLayoutSettings:v7];

  [v5 setUpdateMode:3];

  return v5;
}

@end