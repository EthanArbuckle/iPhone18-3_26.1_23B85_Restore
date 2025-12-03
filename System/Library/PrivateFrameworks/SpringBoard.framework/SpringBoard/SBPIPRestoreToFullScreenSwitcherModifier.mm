@interface SBPIPRestoreToFullScreenSwitcherModifier
- (BOOL)_isFromAppLayoutIndex:(unint64_t)index;
- (BOOL)_isToAppLayoutIndex:(unint64_t)index;
- (BOOL)_isToOrFromAppLayout:(id)layout;
- (BOOL)_isToOrFromAppLayoutIndex:(unint64_t)index;
- (BOOL)shouldPinLayoutRolesToSpace:(unint64_t)space;
- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)space;
- (CGPoint)adjustedSpaceAccessoryViewAnchorPoint:(CGPoint)point forAppLayout:(id)layout;
- (CGPoint)anchorPointForIndex:(unint64_t)index;
- (CGPoint)perspectiveAngleForIndex:(unint64_t)index;
- (CGRect)_insetFrameForDiffuseShadowRadius:(CGRect)radius;
- (CGRect)adjustedSpaceAccessoryViewFrame:(CGRect)frame forAppLayout:(id)layout;
- (CGRect)clippingFrameForIndex:(unint64_t)index withBounds:(CGRect)bounds;
- (CGRect)clippingFrameForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index withBounds:(CGRect)bounds;
- (CGRect)frameForIndex:(unint64_t)index;
- (SBPIPRestoreToFullScreenSwitcherModifier)initWithTransitionID:(id)d transitionModifier:(id)modifier fromAppLayout:(id)layout toAppLayout:(id)appLayout toLayoutRole:(int64_t)role;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index;
- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index;
- (double)scaleForIndex:(unint64_t)index;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)transitionWillBegin;
- (id)visibleAppLayouts;
@end

@implementation SBPIPRestoreToFullScreenSwitcherModifier

- (SBPIPRestoreToFullScreenSwitcherModifier)initWithTransitionID:(id)d transitionModifier:(id)modifier fromAppLayout:(id)layout toAppLayout:(id)appLayout toLayoutRole:(int64_t)role
{
  modifierCopy = modifier;
  layoutCopy = layout;
  appLayoutCopy = appLayout;
  v18.receiver = self;
  v18.super_class = SBPIPRestoreToFullScreenSwitcherModifier;
  v15 = [(SBTransitionSwitcherModifier *)&v18 initWithTransitionID:d];
  v16 = v15;
  if (v15)
  {
    v15->_toLayoutRole = role;
    objc_storeStrong(&v15->_fromAppLayout, layout);
    objc_storeStrong(&v16->_toAppLayout, appLayout);
    [(SBChainableModifier *)v16 addChildModifier:modifierCopy];
  }

  return v16;
}

- (id)transitionWillBegin
{
  v21.receiver = self;
  v21.super_class = SBPIPRestoreToFullScreenSwitcherModifier;
  transitionWillBegin = [(SBTransitionSwitcherModifier *)&v21 transitionWillBegin];
  v4 = objc_alloc_init(SBSwitcherModifierEventResponse);
  v5 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
  [(SBChainableModifierEventResponse *)v4 addChildResponse:v5];

  v6 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:2 updateMode:2];
  [(SBChainableModifierEventResponse *)v4 addChildResponse:v6];

  p_toAppLayoutBoundingBox = &self->_toAppLayoutBoundingBox;
  windowManagementContext = [(SBPIPRestoreToFullScreenSwitcherModifier *)self windowManagementContext];
  if ([windowManagementContext isFlexibleWindowingEnabled])
  {
    v9 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:self->_toAppLayout];
    [v9 boundingBox];
    p_toAppLayoutBoundingBox->origin.x = v10;
    p_toAppLayoutBoundingBox->origin.y = v11;
    p_toAppLayoutBoundingBox->size.width = v12;
    p_toAppLayoutBoundingBox->size.height = v13;
  }

  else
  {
    [(SBPIPRestoreToFullScreenSwitcherModifier *)self containerViewBounds];
    p_toAppLayoutBoundingBox->origin.x = v14;
    self->_toAppLayoutBoundingBox.origin.y = v15;
    self->_toAppLayoutBoundingBox.size.width = v16;
    self->_toAppLayoutBoundingBox.size.height = v17;
  }

  v18 = objc_alloc_init(SBSetupPIPMorphingSwitcherEventResponse);
  [(SBSetupPIPMorphingSwitcherEventResponse *)v18 setAppLayoutBoundingBox:p_toAppLayoutBoundingBox->origin.x, p_toAppLayoutBoundingBox->origin.y, p_toAppLayoutBoundingBox->size.width, p_toAppLayoutBoundingBox->size.height];
  [(SBChainableModifierEventResponse *)v4 addChildResponse:v18];
  v19 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:transitionWillBegin toResponse:v4];

  return v19;
}

- (CGRect)frameForIndex:(unint64_t)index
{
  if ([(SBPIPRestoreToFullScreenSwitcherModifier *)self _isFromAppLayoutIndex:?])
  {
    [(SBPIPRestoreToFullScreenSwitcherModifier *)self containerViewBounds];
  }

  else if ([(SBTransitionSwitcherModifier *)self isPreparingLayout]&& [(SBPIPRestoreToFullScreenSwitcherModifier *)self _isToAppLayoutIndex:index])
  {
    SBRectWithSize();
    [(SBPIPRestoreToFullScreenSwitcherModifier *)self morphToPIPTargetCenter];
    SBUnintegralizedRectCenteredAboutPoint();
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBPIPRestoreToFullScreenSwitcherModifier;
    [(SBPIPRestoreToFullScreenSwitcherModifier *)&v9 frameForIndex:index];
  }

  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)clippingFrameForIndex:(unint64_t)index withBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if ([(SBTransitionSwitcherModifier *)self isPreparingLayout]&& [(SBPIPRestoreToFullScreenSwitcherModifier *)self _isToAppLayoutIndex:index])
  {
    [(SBPIPRestoreToFullScreenSwitcherModifier *)self morphToPIPClippingFrame];
  }

  else if ([(SBPIPRestoreToFullScreenSwitcherModifier *)self _isToAppLayoutIndex:index])
  {
    v15.receiver = self;
    v15.super_class = SBPIPRestoreToFullScreenSwitcherModifier;
    [(SBPIPRestoreToFullScreenSwitcherModifier *)&v15 clippingFrameForIndex:index withBounds:x, y, width, height];
    SBRectWithSize();
    if (self->_shouldClippingTakeShadowIntoAccount)
    {
      [(SBPIPRestoreToFullScreenSwitcherModifier *)self _insetFrameForDiffuseShadowRadius:?];
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = SBPIPRestoreToFullScreenSwitcherModifier;
    [(SBPIPRestoreToFullScreenSwitcherModifier *)&v14 clippingFrameForIndex:index withBounds:x, y, width, height];
  }

  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (CGRect)clippingFrameForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index withBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  layoutCopy = layout;
  if ([(SBTransitionSwitcherModifier *)self isPreparingLayout]&& [(SBPIPRestoreToFullScreenSwitcherModifier *)self _isToAppLayout:layoutCopy])
  {
    [(SBPIPRestoreToFullScreenSwitcherModifier *)self frameForLayoutRole:role inAppLayout:layoutCopy withBounds:x, y, width, height];
    v15 = v14;
    v17 = v16;
    [(SBPIPRestoreToFullScreenSwitcherModifier *)self morphToPIPClippingFrame];
    v32 = CGRectOffset(v31, -v15, -v17);
LABEL_8:
    v22 = v32.origin.x;
    v23 = v32.origin.y;
    v24 = v32.size.width;
    v25 = v32.size.height;
    goto LABEL_9;
  }

  if (![(SBPIPRestoreToFullScreenSwitcherModifier *)self _isToAppLayout:layoutCopy])
  {
    v30.receiver = self;
    v30.super_class = SBPIPRestoreToFullScreenSwitcherModifier;
    [(SBPIPRestoreToFullScreenSwitcherModifier *)&v30 clippingFrameForLayoutRole:role inAppLayout:layoutCopy atIndex:index withBounds:x, y, width, height];
    goto LABEL_8;
  }

  [(SBPIPRestoreToFullScreenSwitcherModifier *)self frameForLayoutRole:role inAppLayout:layoutCopy withBounds:x, y, width, height];
  SBRectWithSize();
  v22 = v18;
  v23 = v19;
  v24 = v20;
  v25 = v21;
  if (self->_shouldClippingTakeShadowIntoAccount)
  {
    [(SBPIPRestoreToFullScreenSwitcherModifier *)self _insetFrameForDiffuseShadowRadius:v18, v19, v20, v21];
    goto LABEL_8;
  }

LABEL_9:

  v26 = v22;
  v27 = v23;
  v28 = v24;
  v29 = v25;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (CGRect)_insetFrameForDiffuseShadowRadius:(CGRect)radius
{
  v3 = [(SBPIPRestoreToFullScreenSwitcherModifier *)self switcherSettings:radius.origin.x];
  windowingSettings = [v3 windowingSettings];
  [windowingSettings diffuseShadowRadius];
  v6 = v5;

  SBRectWithSize();

  return CGRectInset(*&v7, v6 * -2.8, v6 * -2.8);
}

- (double)scaleForIndex:(unint64_t)index
{
  v10.receiver = self;
  v10.super_class = SBPIPRestoreToFullScreenSwitcherModifier;
  [(SBPIPRestoreToFullScreenSwitcherModifier *)&v10 scaleForIndex:?];
  v6 = v5;
  v7 = [(SBPIPRestoreToFullScreenSwitcherModifier *)self _isFromAppLayoutIndex:index];
  result = 1.0;
  if (!v7)
  {
    if ([(SBTransitionSwitcherModifier *)self isPreparingLayout])
    {
      v9 = [(SBPIPRestoreToFullScreenSwitcherModifier *)self _isToAppLayoutIndex:index];
      result = v6;
      if (v9)
      {
        [(SBPIPRestoreToFullScreenSwitcherModifier *)self morphToPIPTargetScale];
      }
    }

    else
    {
      return v6;
    }
  }

  return result;
}

- (id)visibleAppLayouts
{
  v6.receiver = self;
  v6.super_class = SBPIPRestoreToFullScreenSwitcherModifier;
  visibleAppLayouts = [(SBPIPRestoreToFullScreenSwitcherModifier *)&v6 visibleAppLayouts];
  v4 = [visibleAppLayouts mutableCopy];

  if (self->_fromAppLayout)
  {
    [v4 addObject:?];
  }

  return v4;
}

- (CGPoint)anchorPointForIndex:(unint64_t)index
{
  if (!self->_shouldForceDefaultAnchorPointForTransition || (v7 = [(SBPIPRestoreToFullScreenSwitcherModifier *)self _isToOrFromAppLayoutIndex:index], v3 = 0.5, v4 = 0.5, !v7))
  {
    v8.receiver = self;
    v8.super_class = SBPIPRestoreToFullScreenSwitcherModifier;
    [(SBPIPRestoreToFullScreenSwitcherModifier *)&v8 anchorPointForIndex:index, v3, v4];
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (BOOL)shouldPinLayoutRolesToSpace:(unint64_t)space
{
  if (self->_shouldForceDefaultAnchorPointForTransition && [(SBPIPRestoreToFullScreenSwitcherModifier *)self _isToOrFromAppLayoutIndex:space])
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = SBPIPRestoreToFullScreenSwitcherModifier;
  return [(SBPIPRestoreToFullScreenSwitcherModifier *)&v6 shouldPinLayoutRolesToSpace:space];
}

- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)space
{
  if (self->_shouldForceDefaultAnchorPointForTransition && [(SBPIPRestoreToFullScreenSwitcherModifier *)self _isToOrFromAppLayoutIndex:space])
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = SBPIPRestoreToFullScreenSwitcherModifier;
  return [(SBPIPRestoreToFullScreenSwitcherModifier *)&v6 shouldUseAnchorPointToPinLayoutRolesToSpace:space];
}

- (CGPoint)perspectiveAngleForIndex:(unint64_t)index
{
  appLayouts = [(SBPIPRestoreToFullScreenSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if (self->_shouldForceDefaultAnchorPointForTransition && [(SBPIPRestoreToFullScreenSwitcherModifier *)self _isToOrFromAppLayout:v6])
  {
    v7 = *MEMORY[0x277CBF348];
    v8 = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBPIPRestoreToFullScreenSwitcherModifier;
    [(SBPIPRestoreToFullScreenSwitcherModifier *)&v13 perspectiveAngleForIndex:index];
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
  if (self->_shouldForceDefaultAnchorPointForTransition && [(SBPIPRestoreToFullScreenSwitcherModifier *)self _isToOrFromAppLayout:layoutCopy])
  {
    appLayouts = [(SBPIPRestoreToFullScreenSwitcherModifier *)self appLayouts];
    -[SBPIPRestoreToFullScreenSwitcherModifier frameForIndex:](self, "frameForIndex:", [appLayouts indexOfObject:layoutCopy]);
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
  }

  else
  {
    v27.receiver = self;
    v27.super_class = SBPIPRestoreToFullScreenSwitcherModifier;
    [(SBPIPRestoreToFullScreenSwitcherModifier *)&v27 adjustedSpaceAccessoryViewFrame:layoutCopy forAppLayout:x, y, width, height];
    v12 = v19;
    v14 = v20;
    v16 = v21;
    v18 = v22;
  }

  v23 = v12;
  v24 = v14;
  v25 = v16;
  v26 = v18;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (CGPoint)adjustedSpaceAccessoryViewAnchorPoint:(CGPoint)point forAppLayout:(id)layout
{
  y = point.y;
  x = point.x;
  layoutCopy = layout;
  if (!self->_shouldForceDefaultAnchorPointForTransition || (v8 = 0.5, v9 = 0.5, ![(SBPIPRestoreToFullScreenSwitcherModifier *)self _isToOrFromAppLayout:layoutCopy]))
  {
    v14.receiver = self;
    v14.super_class = SBPIPRestoreToFullScreenSwitcherModifier;
    [(SBPIPRestoreToFullScreenSwitcherModifier *)&v14 adjustedSpaceAccessoryViewAnchorPoint:layoutCopy forAppLayout:x, y];
    v8 = v10;
    v9 = v11;
  }

  v12 = v8;
  v13 = v9;
  result.y = v13;
  result.x = v12;
  return result;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  v7.receiver = self;
  v7.super_class = SBPIPRestoreToFullScreenSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v7 animationAttributesForLayoutElement:element];
  v4 = [v3 mutableCopy];

  layoutSettings = [v4 layoutSettings];
  [v4 setClippingSettings:layoutSettings];

  return v4;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index
{
  [(SBPIPRestoreToFullScreenSwitcherModifier *)self displayCornerRadius];
  SBRectCornerRadiiForRadius();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if ([(SBTransitionSwitcherModifier *)self isPreparingLayout]&& [(SBPIPRestoreToFullScreenSwitcherModifier *)self _isToAppLayoutIndex:index])
  {
    [(SBPIPRestoreToFullScreenSwitcherModifier *)self morphToPIPClippingCornerRadius];
    v6 = v13;
    v8 = v13;
    v10 = v13;
    v12 = v13;
  }

  v14 = v6;
  v15 = v8;
  v16 = v10;
  v17 = v12;
  result.topRight = v17;
  result.bottomRight = v16;
  result.bottomLeft = v15;
  result.topLeft = v14;
  return result;
}

- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index
{
  layoutCopy = layout;
  v9 = 1.0;
  if (![(SBPIPRestoreToFullScreenSwitcherModifier *)self _isToOrFromAppLayoutIndex:index])
  {
    v12.receiver = self;
    v12.super_class = SBPIPRestoreToFullScreenSwitcherModifier;
    [(SBPIPRestoreToFullScreenSwitcherModifier *)&v12 opacityForLayoutRole:role inAppLayout:layoutCopy atIndex:index];
    v9 = v10;
  }

  return v9;
}

- (BOOL)_isFromAppLayoutIndex:(unint64_t)index
{
  selfCopy = self;
  appLayouts = [(SBPIPRestoreToFullScreenSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  LOBYTE(selfCopy) = [v6 isEqual:selfCopy->_fromAppLayout];
  return selfCopy;
}

- (BOOL)_isToAppLayoutIndex:(unint64_t)index
{
  selfCopy = self;
  appLayouts = [(SBPIPRestoreToFullScreenSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  LOBYTE(selfCopy) = [v6 isEqual:selfCopy->_toAppLayout];
  return selfCopy;
}

- (BOOL)_isToOrFromAppLayout:(id)layout
{
  layoutCopy = layout;
  if ([layoutCopy isEqual:self->_fromAppLayout])
  {
    v5 = 1;
  }

  else
  {
    v5 = [layoutCopy isEqual:self->_toAppLayout];
  }

  return v5;
}

- (BOOL)_isToOrFromAppLayoutIndex:(unint64_t)index
{
  selfCopy = self;
  appLayouts = [(SBPIPRestoreToFullScreenSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  LOBYTE(selfCopy) = [(SBPIPRestoreToFullScreenSwitcherModifier *)selfCopy _isToOrFromAppLayout:v6];
  return selfCopy;
}

@end