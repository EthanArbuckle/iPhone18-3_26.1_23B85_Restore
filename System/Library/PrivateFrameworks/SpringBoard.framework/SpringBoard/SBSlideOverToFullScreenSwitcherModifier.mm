@interface SBSlideOverToFullScreenSwitcherModifier
- (BOOL)isLayoutRoleBlurred:(int64_t)blurred inAppLayout:(id)layout;
- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)scene inAppLayout:(id)layout;
- (CGRect)frameForIndex:(unint64_t)index;
- (SBSlideOverToFullScreenSwitcherModifier)initWithTransitionID:(id)d slideOverAppLayout:(id)layout fullScreenAppLayout:(id)appLayout replacingMainAppLayout:(id)mainAppLayout;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index;
- (double)blurDelayForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index;
- (double)scaleForIndex:(unint64_t)index;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)handleSceneReadyEvent:(id)event;
- (id)preferredAppLayoutToReuseAccessoryForAppLayout:(id)layout fromAppLayouts:(id)layouts;
- (id)transitionWillBegin;
- (id)visibleAppLayouts;
- (id)visibleHomeAffordanceLayoutElements;
@end

@implementation SBSlideOverToFullScreenSwitcherModifier

- (SBSlideOverToFullScreenSwitcherModifier)initWithTransitionID:(id)d slideOverAppLayout:(id)layout fullScreenAppLayout:(id)appLayout replacingMainAppLayout:(id)mainAppLayout
{
  dCopy = d;
  layoutCopy = layout;
  appLayoutCopy = appLayout;
  mainAppLayoutCopy = mainAppLayout;
  v19.receiver = self;
  v19.super_class = SBSlideOverToFullScreenSwitcherModifier;
  v14 = [(SBTransitionSwitcherModifier *)&v19 initWithTransitionID:dCopy];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_fromSlideOverAppLayout, layout);
    objc_storeStrong(&v15->_toFullScreenAppLayout, appLayout);
    objc_storeStrong(&v15->_removedMainAppLayout, mainAppLayout);
    if (!mainAppLayoutCopy)
    {
      v16 = [[SBHomeScreenZoomSwitcherModifier alloc] initWithTransitionID:dCopy direction:2];
      homeScreenZoomModifier = v15->_homeScreenZoomModifier;
      v15->_homeScreenZoomModifier = v16;

      [(SBChainableModifier *)v15 addChildModifier:v15->_homeScreenZoomModifier];
    }
  }

  return v15;
}

- (id)handleSceneReadyEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = SBSlideOverToFullScreenSwitcherModifier;
  v3 = [(SBSwitcherModifier *)&v7 handleSceneReadyEvent:event];
  v4 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:64 updateMode:2];
  v5 = SBAppendSwitcherModifierResponse(v4, v3);

  return v5;
}

- (id)transitionWillBegin
{
  v6.receiver = self;
  v6.super_class = SBSlideOverToFullScreenSwitcherModifier;
  transitionWillBegin = [(SBTransitionSwitcherModifier *)&v6 transitionWillBegin];
  v3 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:2 updateMode:2];
  v4 = SBAppendSwitcherModifierResponse(v3, transitionWillBegin);

  return v4;
}

- (id)preferredAppLayoutToReuseAccessoryForAppLayout:(id)layout fromAppLayouts:(id)layouts
{
  layoutCopy = layout;
  layoutsCopy = layouts;
  if (self->_fromSlideOverAppLayout == layoutCopy || self->_toFullScreenAppLayout == layoutCopy)
  {
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBSlideOverToFullScreenSwitcherModifier;
    v8 = [(SBSlideOverToFullScreenSwitcherModifier *)&v10 preferredAppLayoutToReuseAccessoryForAppLayout:layoutCopy fromAppLayouts:layoutsCopy];
  }

  return v8;
}

- (id)visibleAppLayouts
{
  v9.receiver = self;
  v9.super_class = SBSlideOverToFullScreenSwitcherModifier;
  visibleAppLayouts = [(SBSlideOverToFullScreenSwitcherModifier *)&v9 visibleAppLayouts];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__SBSlideOverToFullScreenSwitcherModifier_visibleAppLayouts__block_invoke;
  v8[3] = &unk_2783A8CB8;
  v8[4] = self;
  v4 = [visibleAppLayouts bs_filter:v8];
  v5 = [v4 mutableCopy];

  [v5 addObject:self->_toFullScreenAppLayout];
  v6 = v5;

  return v5;
}

- (CGRect)frameForIndex:(unint64_t)index
{
  v23.receiver = self;
  v23.super_class = SBSlideOverToFullScreenSwitcherModifier;
  [(SBSlideOverToFullScreenSwitcherModifier *)&v23 frameForIndex:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  appLayouts = [(SBSlideOverToFullScreenSwitcherModifier *)self appLayouts];
  v14 = [appLayouts objectAtIndex:index];

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

- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index
{
  v16.receiver = self;
  v16.super_class = SBSlideOverToFullScreenSwitcherModifier;
  layoutCopy = layout;
  [(SBSlideOverToFullScreenSwitcherModifier *)&v16 opacityForLayoutRole:role inAppLayout:layoutCopy atIndex:index];
  v10 = v9;
  removedMainAppLayout = self->_removedMainAppLayout;

  if (removedMainAppLayout == layoutCopy)
  {
    v12 = [(SBSlideOverToFullScreenSwitcherModifier *)self switcherSettings:v16.receiver];
    animationSettings = [v12 animationSettings];
    [animationSettings slideOverToFullScreenOutgoingFinalOpacity];
    v10 = v14;
  }

  return v10;
}

- (double)scaleForIndex:(unint64_t)index
{
  v13.receiver = self;
  v13.super_class = SBSlideOverToFullScreenSwitcherModifier;
  [(SBSlideOverToFullScreenSwitcherModifier *)&v13 scaleForIndex:?];
  v6 = v5;
  appLayouts = [(SBSlideOverToFullScreenSwitcherModifier *)self appLayouts];
  v8 = [appLayouts objectAtIndex:index];

  if (self->_removedMainAppLayout == v8)
  {
    switcherSettings = [(SBSlideOverToFullScreenSwitcherModifier *)self switcherSettings];
    animationSettings = [switcherSettings animationSettings];
    [animationSettings slideOverToFullScreenOutgoingAppScaleBack];
    v6 = v11;
  }

  return v6;
}

- (BOOL)isLayoutRoleBlurred:(int64_t)blurred inAppLayout:(id)layout
{
  layoutCopy = layout;
  if ([layoutCopy isEqual:self->_toFullScreenAppLayout])
  {
    LODWORD(blurred) = [(SBSlideOverToFullScreenSwitcherModifier *)self isLayoutRoleContentReady:blurred inAppLayout:self->_toFullScreenAppLayout]^ 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBSlideOverToFullScreenSwitcherModifier;
    LOBYTE(blurred) = [(SBSlideOverToFullScreenSwitcherModifier *)&v8 isLayoutRoleBlurred:blurred inAppLayout:layoutCopy];
  }

  return blurred;
}

- (double)blurDelayForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  v10.receiver = self;
  v10.super_class = SBSlideOverToFullScreenSwitcherModifier;
  layoutCopy = layout;
  [(SBSlideOverToFullScreenSwitcherModifier *)&v10 blurDelayForLayoutRole:role inAppLayout:layoutCopy];
  v8 = v7;
  LODWORD(role) = [layoutCopy isEqual:{self->_toFullScreenAppLayout, v10.receiver, v10.super_class}];

  result = 0.0;
  if (!role)
  {
    return v8;
  }

  return result;
}

- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)scene inAppLayout:(id)layout
{
  selfCopy = self;
  v8.receiver = self;
  v8.super_class = SBSlideOverToFullScreenSwitcherModifier;
  layoutCopy = layout;
  LOBYTE(scene) = [(SBSlideOverToFullScreenSwitcherModifier *)&v8 isLayoutRoleMatchMovedToScene:scene inAppLayout:layoutCopy];
  LOBYTE(selfCopy) = [layoutCopy isEqual:{selfCopy->_toFullScreenAppLayout, v8.receiver, v8.super_class}];

  return (selfCopy | scene) & 1;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index
{
  [(SBSlideOverToFullScreenSwitcherModifier *)self displayCornerRadius];

  SBRectCornerRadiiForRadius();
  result.topRight = v6;
  result.bottomRight = v5;
  result.bottomLeft = v4;
  result.topLeft = v3;
  return result;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  v10.receiver = self;
  v10.super_class = SBSlideOverToFullScreenSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v10 animationAttributesForLayoutElement:element];
  v5 = [v4 mutableCopy];

  switcherSettings = [(SBSlideOverToFullScreenSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];
  slideOverToFullScreenAnimationSettings = [animationSettings slideOverToFullScreenAnimationSettings];
  [v5 setLayoutSettings:slideOverToFullScreenAnimationSettings];

  [v5 setUpdateMode:3];

  return v5;
}

- (id)visibleHomeAffordanceLayoutElements
{
  v6.receiver = self;
  v6.super_class = SBSlideOverToFullScreenSwitcherModifier;
  visibleHomeAffordanceLayoutElements = [(SBSlideOverToFullScreenSwitcherModifier *)&v6 visibleHomeAffordanceLayoutElements];
  v4 = [visibleHomeAffordanceLayoutElements mutableCopy];

  [v4 removeObject:self->_fromSlideOverAppLayout];
  [v4 removeObject:self->_toFullScreenAppLayout];

  return v4;
}

@end