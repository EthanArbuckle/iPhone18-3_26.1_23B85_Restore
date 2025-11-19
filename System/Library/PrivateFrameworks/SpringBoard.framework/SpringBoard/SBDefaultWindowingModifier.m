@interface SBDefaultWindowingModifier
- (BOOL)supportsHomeAffordanceForItem:(id)a3;
- (CGPoint)perspectiveAngleForItem:(id)a3;
- (SBWindowingItemCorners)cornersForItem:(SEL)a3;
- (SBWindowingItemFrame)frameForItem:(SEL)a3;
- (SBWindowingItemShadow)shadowForItem:(id)a3;
- (id)animationAttributesForItem:(id)a3;
- (id)stateModel;
@end

@implementation SBDefaultWindowingModifier

- (id)stateModel
{
  v2 = objc_opt_new();

  return v2;
}

- (SBWindowingItemFrame)frameForItem:(SEL)a3
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

- (SBWindowingItemCorners)cornersForItem:(SEL)a3
{
  [(SBDefaultWindowingModifier *)self displayCornerRadius];
  SBRectCornerRadiiForRadius();

  return SBWindowingItemCornersMake(15, retstr, v5, v6, v7, v8);
}

- (SBWindowingItemShadow)shadowForItem:(id)a3
{
  SBWindowingItemShadowMake();
  result.shadowStyle = v4;
  result.shadowOpacity = v3;
  return result;
}

- (CGPoint)perspectiveAngleForItem:(id)a3
{
  v3 = *MEMORY[0x277CBF348];
  v4 = *(MEMORY[0x277CBF348] + 8);
  result.y = v4;
  result.x = v3;
  return result;
}

- (id)animationAttributesForItem:(id)a3
{
  v3 = [(SBDefaultWindowingModifier *)self switcherSettings];
  v4 = [v3 animationSettings];

  v5 = objc_alloc_init(SBMutableSwitcherAnimationAttributes);
  [(SBSwitcherAnimationAttributes *)v5 setUpdateMode:1];
  v6 = [v4 layoutSettings];
  [(SBSwitcherAnimationAttributes *)v5 setLayoutSettings:v6];

  v7 = [v4 opacitySettings];
  [(SBSwitcherAnimationAttributes *)v5 setOpacitySettings:v7];

  return v5;
}

- (BOOL)supportsHomeAffordanceForItem:(id)a3
{
  v3 = [(SBDefaultWindowingModifier *)self homeGrabberSettings];
  v4 = [v3 isEnabled];

  return v4;
}

@end