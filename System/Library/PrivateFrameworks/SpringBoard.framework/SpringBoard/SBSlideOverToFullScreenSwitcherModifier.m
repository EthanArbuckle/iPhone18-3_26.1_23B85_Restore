@interface SBSlideOverToFullScreenSwitcherModifier
- (BOOL)isLayoutRoleBlurred:(int64_t)a3 inAppLayout:(id)a4;
- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)a3 inAppLayout:(id)a4;
- (CGRect)frameForIndex:(unint64_t)a3;
- (SBSlideOverToFullScreenSwitcherModifier)initWithTransitionID:(id)a3 slideOverAppLayout:(id)a4 fullScreenAppLayout:(id)a5 replacingMainAppLayout:(id)a6;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3;
- (double)blurDelayForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (double)scaleForIndex:(unint64_t)a3;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)handleSceneReadyEvent:(id)a3;
- (id)preferredAppLayoutToReuseAccessoryForAppLayout:(id)a3 fromAppLayouts:(id)a4;
- (id)transitionWillBegin;
- (id)visibleAppLayouts;
- (id)visibleHomeAffordanceLayoutElements;
@end

@implementation SBSlideOverToFullScreenSwitcherModifier

- (SBSlideOverToFullScreenSwitcherModifier)initWithTransitionID:(id)a3 slideOverAppLayout:(id)a4 fullScreenAppLayout:(id)a5 replacingMainAppLayout:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = SBSlideOverToFullScreenSwitcherModifier;
  v14 = [(SBTransitionSwitcherModifier *)&v19 initWithTransitionID:v10];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_fromSlideOverAppLayout, a4);
    objc_storeStrong(&v15->_toFullScreenAppLayout, a5);
    objc_storeStrong(&v15->_removedMainAppLayout, a6);
    if (!v13)
    {
      v16 = [[SBHomeScreenZoomSwitcherModifier alloc] initWithTransitionID:v10 direction:2];
      homeScreenZoomModifier = v15->_homeScreenZoomModifier;
      v15->_homeScreenZoomModifier = v16;

      [(SBChainableModifier *)v15 addChildModifier:v15->_homeScreenZoomModifier];
    }
  }

  return v15;
}

- (id)handleSceneReadyEvent:(id)a3
{
  v7.receiver = self;
  v7.super_class = SBSlideOverToFullScreenSwitcherModifier;
  v3 = [(SBSwitcherModifier *)&v7 handleSceneReadyEvent:a3];
  v4 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:64 updateMode:2];
  v5 = SBAppendSwitcherModifierResponse(v4, v3);

  return v5;
}

- (id)transitionWillBegin
{
  v6.receiver = self;
  v6.super_class = SBSlideOverToFullScreenSwitcherModifier;
  v2 = [(SBTransitionSwitcherModifier *)&v6 transitionWillBegin];
  v3 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:2 updateMode:2];
  v4 = SBAppendSwitcherModifierResponse(v3, v2);

  return v4;
}

- (id)preferredAppLayoutToReuseAccessoryForAppLayout:(id)a3 fromAppLayouts:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_fromSlideOverAppLayout == v6 || self->_toFullScreenAppLayout == v6)
  {
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBSlideOverToFullScreenSwitcherModifier;
    v8 = [(SBSlideOverToFullScreenSwitcherModifier *)&v10 preferredAppLayoutToReuseAccessoryForAppLayout:v6 fromAppLayouts:v7];
  }

  return v8;
}

- (id)visibleAppLayouts
{
  v9.receiver = self;
  v9.super_class = SBSlideOverToFullScreenSwitcherModifier;
  v3 = [(SBSlideOverToFullScreenSwitcherModifier *)&v9 visibleAppLayouts];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__SBSlideOverToFullScreenSwitcherModifier_visibleAppLayouts__block_invoke;
  v8[3] = &unk_2783A8CB8;
  v8[4] = self;
  v4 = [v3 bs_filter:v8];
  v5 = [v4 mutableCopy];

  [v5 addObject:self->_toFullScreenAppLayout];
  v6 = v5;

  return v5;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  v23.receiver = self;
  v23.super_class = SBSlideOverToFullScreenSwitcherModifier;
  [(SBSlideOverToFullScreenSwitcherModifier *)&v23 frameForIndex:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(SBSlideOverToFullScreenSwitcherModifier *)self appLayouts];
  v14 = [v13 objectAtIndex:a3];

  if (self->_removedMainAppLayout == v14)
  {
    [(SBSlideOverToFullScreenSwitcherModifier *)self containerViewBounds];
    v6 = v15;
    v8 = v16;
    v10 = v17;
    v12 = v18;
  }

  v19 = v6;
  v20 = v8;
  v21 = v10;
  v22 = v12;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  v16.receiver = self;
  v16.super_class = SBSlideOverToFullScreenSwitcherModifier;
  v8 = a4;
  [(SBSlideOverToFullScreenSwitcherModifier *)&v16 opacityForLayoutRole:a3 inAppLayout:v8 atIndex:a5];
  v10 = v9;
  removedMainAppLayout = self->_removedMainAppLayout;

  if (removedMainAppLayout == v8)
  {
    v12 = [(SBSlideOverToFullScreenSwitcherModifier *)self switcherSettings:v16.receiver];
    v13 = [v12 animationSettings];
    [v13 slideOverToFullScreenOutgoingFinalOpacity];
    v10 = v14;
  }

  return v10;
}

- (double)scaleForIndex:(unint64_t)a3
{
  v13.receiver = self;
  v13.super_class = SBSlideOverToFullScreenSwitcherModifier;
  [(SBSlideOverToFullScreenSwitcherModifier *)&v13 scaleForIndex:?];
  v6 = v5;
  v7 = [(SBSlideOverToFullScreenSwitcherModifier *)self appLayouts];
  v8 = [v7 objectAtIndex:a3];

  if (self->_removedMainAppLayout == v8)
  {
    v9 = [(SBSlideOverToFullScreenSwitcherModifier *)self switcherSettings];
    v10 = [v9 animationSettings];
    [v10 slideOverToFullScreenOutgoingAppScaleBack];
    v6 = v11;
  }

  return v6;
}

- (BOOL)isLayoutRoleBlurred:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  if ([v6 isEqual:self->_toFullScreenAppLayout])
  {
    LODWORD(a3) = [(SBSlideOverToFullScreenSwitcherModifier *)self isLayoutRoleContentReady:a3 inAppLayout:self->_toFullScreenAppLayout]^ 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBSlideOverToFullScreenSwitcherModifier;
    LOBYTE(a3) = [(SBSlideOverToFullScreenSwitcherModifier *)&v8 isLayoutRoleBlurred:a3 inAppLayout:v6];
  }

  return a3;
}

- (double)blurDelayForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v10.receiver = self;
  v10.super_class = SBSlideOverToFullScreenSwitcherModifier;
  v6 = a4;
  [(SBSlideOverToFullScreenSwitcherModifier *)&v10 blurDelayForLayoutRole:a3 inAppLayout:v6];
  v8 = v7;
  LODWORD(a3) = [v6 isEqual:{self->_toFullScreenAppLayout, v10.receiver, v10.super_class}];

  result = 0.0;
  if (!a3)
  {
    return v8;
  }

  return result;
}

- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)a3 inAppLayout:(id)a4
{
  v5 = self;
  v8.receiver = self;
  v8.super_class = SBSlideOverToFullScreenSwitcherModifier;
  v6 = a4;
  LOBYTE(a3) = [(SBSlideOverToFullScreenSwitcherModifier *)&v8 isLayoutRoleMatchMovedToScene:a3 inAppLayout:v6];
  LOBYTE(v5) = [v6 isEqual:{v5->_toFullScreenAppLayout, v8.receiver, v8.super_class}];

  return (v5 | a3) & 1;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3
{
  [(SBSlideOverToFullScreenSwitcherModifier *)self displayCornerRadius];

  SBRectCornerRadiiForRadius();
  result.topRight = v6;
  result.bottomRight = v5;
  result.bottomLeft = v4;
  result.topLeft = v3;
  return result;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v10.receiver = self;
  v10.super_class = SBSlideOverToFullScreenSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v10 animationAttributesForLayoutElement:a3];
  v5 = [v4 mutableCopy];

  v6 = [(SBSlideOverToFullScreenSwitcherModifier *)self switcherSettings];
  v7 = [v6 animationSettings];
  v8 = [v7 slideOverToFullScreenAnimationSettings];
  [v5 setLayoutSettings:v8];

  [v5 setUpdateMode:3];

  return v5;
}

- (id)visibleHomeAffordanceLayoutElements
{
  v6.receiver = self;
  v6.super_class = SBSlideOverToFullScreenSwitcherModifier;
  v3 = [(SBSlideOverToFullScreenSwitcherModifier *)&v6 visibleHomeAffordanceLayoutElements];
  v4 = [v3 mutableCopy];

  [v4 removeObject:self->_fromSlideOverAppLayout];
  [v4 removeObject:self->_toFullScreenAppLayout];

  return v4;
}

@end