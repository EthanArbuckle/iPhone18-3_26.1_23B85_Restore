@interface SBDefaultWindowingModifier
- (BOOL)supportsHomeAffordanceForItem:(id)item;
- (CGPoint)perspectiveAngleForItem:(id)item;
- (SBWindowingItemCorners)cornersForItem:(SEL)item;
- (SBWindowingItemFrame)frameForItem:(SEL)item;
- (SBWindowingItemShadow)shadowForItem:(id)item;
- (id)animationAttributesForItem:(id)item;
- (id)stateModel;
@end

@implementation SBDefaultWindowingModifier

- (id)stateModel
{
  v2 = objc_opt_new();

  return v2;
}

- (SBWindowingItemFrame)frameForItem:(SEL)item
{
  [(SBDefaultWindowingModifier *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  UIRectGetCenter();
  *&v16 = 0x3FF0000000000000;
  *(&v16 + 1) = 0x3FF0000000000000;
  SBWindowingItemFrameMake(retstr, v6, v8, v10, v12, v13, v14, 0.5, 0.5, v16, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));
  return result;
}

- (SBWindowingItemCorners)cornersForItem:(SEL)item
{
  [(SBDefaultWindowingModifier *)self displayCornerRadius];
  SBRectCornerRadiiForRadius();

  return SBWindowingItemCornersMake(15, retstr, v5, v6, v7, v8);
}

- (SBWindowingItemShadow)shadowForItem:(id)item
{
  SBWindowingItemShadowMake();
  result.shadowStyle = v4;
  result.shadowOpacity = v3;
  return result;
}

- (CGPoint)perspectiveAngleForItem:(id)item
{
  v3 = *MEMORY[0x277CBF348];
  v4 = *(MEMORY[0x277CBF348] + 8);
  result.y = v4;
  result.x = v3;
  return result;
}

- (id)animationAttributesForItem:(id)item
{
  switcherSettings = [(SBDefaultWindowingModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];

  v5 = objc_alloc_init(SBMutableSwitcherAnimationAttributes);
  [(SBSwitcherAnimationAttributes *)v5 setUpdateMode:1];
  layoutSettings = [animationSettings layoutSettings];
  [(SBSwitcherAnimationAttributes *)v5 setLayoutSettings:layoutSettings];

  opacitySettings = [animationSettings opacitySettings];
  [(SBSwitcherAnimationAttributes *)v5 setOpacitySettings:opacitySettings];

  return v5;
}

- (BOOL)supportsHomeAffordanceForItem:(id)item
{
  homeGrabberSettings = [(SBDefaultWindowingModifier *)self homeGrabberSettings];
  isEnabled = [homeGrabberSettings isEnabled];

  return isEnabled;
}

@end