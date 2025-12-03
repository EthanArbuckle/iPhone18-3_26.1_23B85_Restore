@interface SBDragAndDropToAppTransitionSwitcherModifier
- (id)animationAttributesForLayoutElement:(id)element;
@end

@implementation SBDragAndDropToAppTransitionSwitcherModifier

- (id)animationAttributesForLayoutElement:(id)element
{
  v9.receiver = self;
  v9.super_class = SBDragAndDropToAppTransitionSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v9 animationAttributesForLayoutElement:element];
  v5 = [v4 mutableCopy];

  medusaSettings = [(SBDragAndDropToAppTransitionSwitcherModifier *)self medusaSettings];
  resizeAnimationSettings = [medusaSettings resizeAnimationSettings];
  [v5 setLayoutSettings:resizeAnimationSettings];

  [v5 setUpdateMode:3];

  return v5;
}

@end