@interface SBFullScreenToHomeCenterZoomDownSwitcherModifier
- (BOOL)_isIndexCenterZoomAppLayout:(unint64_t)layout;
- (BOOL)shouldPinLayoutRolesToSpace:(unint64_t)space;
- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)space;
- (CGPoint)adjustedSpaceAccessoryViewAnchorPoint:(CGPoint)point forAppLayout:(id)layout;
- (CGPoint)anchorPointForIndex:(unint64_t)index;
- (CGPoint)perspectiveAngleForIndex:(unint64_t)index;
- (CGRect)adjustedSpaceAccessoryViewFrame:(CGRect)frame forAppLayout:(id)layout;
- (CGRect)frameForIndex:(unint64_t)index;
- (SBFullScreenToHomeCenterZoomDownSwitcherModifier)initWithTransitionID:(id)d appLayout:(id)layout offsetYPercentOfScreenHeight:(double)height;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index;
- (double)fadeInDelayForSplitViewHandles;
- (double)scaleForIndex:(unint64_t)index;
- (id)_layoutSettings;
- (id)_opacitySettings;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)topMostLayoutElements;
- (id)transitionWillBegin;
- (id)visibleAppLayouts;
- (int64_t)homeScreenBackdropBlurType;
- (void)didMoveToParentModifier:(id)modifier;
@end

@implementation SBFullScreenToHomeCenterZoomDownSwitcherModifier

- (SBFullScreenToHomeCenterZoomDownSwitcherModifier)initWithTransitionID:(id)d appLayout:(id)layout offsetYPercentOfScreenHeight:(double)height
{
  layoutCopy = layout;
  v13.receiver = self;
  v13.super_class = SBFullScreenToHomeCenterZoomDownSwitcherModifier;
  v10 = [(SBTransitionSwitcherModifier *)&v13 initWithTransitionID:d];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_appLayout, layout);
    v11->_offsetYPercentOfScreenHeight = height;
  }

  return v11;
}

- (void)didMoveToParentModifier:(id)modifier
{
  v7.receiver = self;
  v7.super_class = SBFullScreenToHomeCenterZoomDownSwitcherModifier;
  [(SBChainableModifier *)&v7 didMoveToParentModifier:?];
  if (modifier)
  {
    if (![(SBChainableModifier *)self containsChildModifier:self->_coplanarModifier])
    {
      v5 = [[SBCoplanarSwitcherModifier alloc] initWithActiveAppLayout:self->_appLayout];
      coplanarModifier = self->_coplanarModifier;
      self->_coplanarModifier = v5;

      [(SBCoplanarSwitcherModifier *)self->_coplanarModifier setUsesContainerViewBoundsAsActiveFrame:1];
      [(SBChainableModifier *)self addChildModifier:self->_coplanarModifier];
    }
  }
}

- (id)transitionWillBegin
{
  v6.receiver = self;
  v6.super_class = SBFullScreenToHomeCenterZoomDownSwitcherModifier;
  transitionWillBegin = [(SBTransitionSwitcherModifier *)&v6 transitionWillBegin];
  v3 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:2 updateMode:2];
  v4 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v3 toResponse:transitionWillBegin];

  return v4;
}

- (CGRect)frameForIndex:(unint64_t)index
{
  v21.receiver = self;
  v21.super_class = SBFullScreenToHomeCenterZoomDownSwitcherModifier;
  [(SBFullScreenToHomeCenterZoomDownSwitcherModifier *)&v21 frameForIndex:?];
  x = v5;
  y = v7;
  width = v9;
  height = v11;
  if ([(SBTransitionSwitcherModifier *)self isUpdatingLayout]&& [(SBFullScreenToHomeCenterZoomDownSwitcherModifier *)self _isIndexCenterZoomAppLayout:index])
  {
    v13 = *MEMORY[0x277CBF348];
    v14 = *(MEMORY[0x277CBF348] + 8);
    [(SBFullScreenToHomeCenterZoomDownSwitcherModifier *)self screenScale];
    BSFloatRoundForScale();
    v16 = v15;
    v22.origin.x = v13;
    v22.origin.y = v14;
    v22.size.width = width;
    v22.size.height = height;
    v23 = CGRectOffset(v22, 0.0, v16);
    x = v23.origin.x;
    y = v23.origin.y;
    width = v23.size.width;
    height = v23.size.height;
  }

  v17 = x;
  v18 = y;
  v19 = width;
  v20 = height;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (double)scaleForIndex:(unint64_t)index
{
  if ([(SBTransitionSwitcherModifier *)self isUpdatingLayout]&& [(SBFullScreenToHomeCenterZoomDownSwitcherModifier *)self _isIndexCenterZoomAppLayout:index])
  {
    switcherSettings = [(SBFullScreenToHomeCenterZoomDownSwitcherModifier *)self switcherSettings];
    animationSettings = [switcherSettings animationSettings];
    [animationSettings centerZoomScale];
    v8 = v7;

    return v8;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBFullScreenToHomeCenterZoomDownSwitcherModifier;
    [(SBFullScreenToHomeCenterZoomDownSwitcherModifier *)&v10 scaleForIndex:index];
  }

  return result;
}

- (CGPoint)anchorPointForIndex:(unint64_t)index
{
  if (!self->_shouldForceDefaultAnchorPointForTransition || (v7 = [(SBFullScreenToHomeCenterZoomDownSwitcherModifier *)self _isIndexCenterZoomAppLayout:index], v3 = 0.5, v4 = 0.5, !v7))
  {
    v8.receiver = self;
    v8.super_class = SBFullScreenToHomeCenterZoomDownSwitcherModifier;
    [(SBFullScreenToHomeCenterZoomDownSwitcherModifier *)&v8 anchorPointForIndex:index, v3, v4];
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (BOOL)shouldPinLayoutRolesToSpace:(unint64_t)space
{
  if (self->_shouldForceDefaultAnchorPointForTransition && [(SBFullScreenToHomeCenterZoomDownSwitcherModifier *)self _isIndexCenterZoomAppLayout:space])
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = SBFullScreenToHomeCenterZoomDownSwitcherModifier;
  return [(SBFullScreenToHomeCenterZoomDownSwitcherModifier *)&v6 shouldPinLayoutRolesToSpace:space];
}

- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)space
{
  if (self->_shouldForceDefaultAnchorPointForTransition && [(SBFullScreenToHomeCenterZoomDownSwitcherModifier *)self _isIndexCenterZoomAppLayout:space])
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = SBFullScreenToHomeCenterZoomDownSwitcherModifier;
  return [(SBFullScreenToHomeCenterZoomDownSwitcherModifier *)&v6 shouldUseAnchorPointToPinLayoutRolesToSpace:space];
}

- (CGPoint)perspectiveAngleForIndex:(unint64_t)index
{
  appLayouts = [(SBFullScreenToHomeCenterZoomDownSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if (self->_shouldForceDefaultAnchorPointForTransition && [v6 isEqual:self->_appLayout])
  {
    v7 = *MEMORY[0x277CBF348];
    v8 = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBFullScreenToHomeCenterZoomDownSwitcherModifier;
    [(SBFullScreenToHomeCenterZoomDownSwitcherModifier *)&v13 perspectiveAngleForIndex:index];
    v7 = v9;
    v8 = v10;
  }

  v11 = v7;
  v12 = v8;
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGRect)adjustedSpaceAccessoryViewFrame:(CGRect)frame forAppLayout:(id)layout
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  layoutCopy = layout;
  v10 = layoutCopy;
  if (self->_shouldForceDefaultAnchorPointForTransition && [layoutCopy isEqual:self->_appLayout])
  {
    appLayouts = [(SBFullScreenToHomeCenterZoomDownSwitcherModifier *)self appLayouts];
    -[SBFullScreenToHomeCenterZoomDownSwitcherModifier frameForIndex:](self, "frameForIndex:", [appLayouts indexOfObject:self->_appLayout]);
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
  }

  else
  {
    v28.receiver = self;
    v28.super_class = SBFullScreenToHomeCenterZoomDownSwitcherModifier;
    [(SBFullScreenToHomeCenterZoomDownSwitcherModifier *)&v28 adjustedSpaceAccessoryViewFrame:v10 forAppLayout:x, y, width, height];
    v13 = v20;
    v15 = v21;
    v17 = v22;
    v19 = v23;
  }

  v24 = v13;
  v25 = v15;
  v26 = v17;
  v27 = v19;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (CGPoint)adjustedSpaceAccessoryViewAnchorPoint:(CGPoint)point forAppLayout:(id)layout
{
  y = point.y;
  x = point.x;
  layoutCopy = layout;
  v8 = layoutCopy;
  if (!self->_shouldForceDefaultAnchorPointForTransition || (v9 = 0.5, v10 = 0.5, ([layoutCopy isEqual:self->_appLayout] & 1) == 0))
  {
    v15.receiver = self;
    v15.super_class = SBFullScreenToHomeCenterZoomDownSwitcherModifier;
    [(SBFullScreenToHomeCenterZoomDownSwitcherModifier *)&v15 adjustedSpaceAccessoryViewAnchorPoint:v8 forAppLayout:x, y];
    v9 = v11;
    v10 = v12;
  }

  v13 = v9;
  v14 = v10;
  result.y = v14;
  result.x = v13;
  return result;
}

- (id)visibleAppLayouts
{
  v6.receiver = self;
  v6.super_class = SBFullScreenToHomeCenterZoomDownSwitcherModifier;
  visibleAppLayouts = [(SBFullScreenToHomeCenterZoomDownSwitcherModifier *)&v6 visibleAppLayouts];
  v4 = [visibleAppLayouts setByAddingObject:self->_appLayout];

  return v4;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  v9.receiver = self;
  v9.super_class = SBFullScreenToHomeCenterZoomDownSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v9 animationAttributesForLayoutElement:element];
  v5 = [v4 mutableCopy];

  _layoutSettings = [(SBFullScreenToHomeCenterZoomDownSwitcherModifier *)self _layoutSettings];
  [v5 setLayoutSettings:_layoutSettings];

  _opacitySettings = [(SBFullScreenToHomeCenterZoomDownSwitcherModifier *)self _opacitySettings];
  [v5 setOpacitySettings:_opacitySettings];

  return v5;
}

- (id)_layoutSettings
{
  switcherSettings = [(SBFullScreenToHomeCenterZoomDownSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];
  centerZoomSettings = [animationSettings centerZoomSettings];

  return centerZoomSettings;
}

- (id)_opacitySettings
{
  switcherSettings = [(SBFullScreenToHomeCenterZoomDownSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];
  centerZoomOpacitySettings = [animationSettings centerZoomOpacitySettings];

  return centerZoomOpacitySettings;
}

- (double)fadeInDelayForSplitViewHandles
{
  switcherSettings = [(SBFullScreenToHomeCenterZoomDownSwitcherModifier *)self switcherSettings];
  windowingSettings = [switcherSettings windowingSettings];
  [windowingSettings percentageOfTransitionForSplitViewHandleFadeInDelay];
  v5 = v4;
  animationSettings = [switcherSettings animationSettings];
  layoutSettings = [animationSettings layoutSettings];
  [layoutSettings settlingDuration];
  v9 = v5 * v8;

  return v9;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index
{
  [(SBFullScreenToHomeCenterZoomDownSwitcherModifier *)self displayCornerRadius];

  SBRectCornerRadiiForRadius();
  result.topRight = v6;
  result.bottomRight = v5;
  result.bottomLeft = v4;
  result.topLeft = v3;
  return result;
}

- (int64_t)homeScreenBackdropBlurType
{
  if ([(SBFullScreenToHomeCenterZoomDownSwitcherModifier *)self hasHomeButton])
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

- (id)topMostLayoutElements
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = SBFullScreenToHomeCenterZoomDownSwitcherModifier;
  topMostLayoutElements = [(SBFullScreenToHomeCenterZoomDownSwitcherModifier *)&v8 topMostLayoutElements];
  v4 = topMostLayoutElements;
  if (topMostLayoutElements)
  {
    v5 = [topMostLayoutElements mutableCopy];
    v6 = [v5 indexOfObject:self->_appLayout];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v5 insertObject:self->_appLayout atIndex:0];
    }

    else
    {
      [v5 exchangeObjectAtIndex:v6 withObjectAtIndex:0];
    }
  }

  else
  {
    v9[0] = self->_appLayout;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  }

  return v5;
}

- (BOOL)_isIndexCenterZoomAppLayout:(unint64_t)layout
{
  selfCopy = self;
  appLayouts = [(SBFullScreenToHomeCenterZoomDownSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:layout];

  LOBYTE(selfCopy) = [v6 isEqual:selfCopy->_appLayout];
  return selfCopy;
}

@end