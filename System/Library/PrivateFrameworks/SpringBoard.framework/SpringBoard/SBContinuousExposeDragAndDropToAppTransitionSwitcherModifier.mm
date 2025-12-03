@interface SBContinuousExposeDragAndDropToAppTransitionSwitcherModifier
- (id)animationAttributesForLayoutElement:(id)element;
@end

@implementation SBContinuousExposeDragAndDropToAppTransitionSwitcherModifier

- (id)animationAttributesForLayoutElement:(id)element
{
  v9.receiver = self;
  v9.super_class = SBContinuousExposeDragAndDropToAppTransitionSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v9 animationAttributesForLayoutElement:element];
  v5 = [v4 mutableCopy];

  medusaSettings = [(SBContinuousExposeDragAndDropToAppTransitionSwitcherModifier *)self medusaSettings];
  resizeAnimationSettings = [medusaSettings resizeAnimationSettings];
  [v5 setLayoutSettings:resizeAnimationSettings];

  [v5 setUpdateMode:3];

  return v5;
}

@end