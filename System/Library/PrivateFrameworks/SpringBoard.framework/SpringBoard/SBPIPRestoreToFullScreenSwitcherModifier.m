@interface SBPIPRestoreToFullScreenSwitcherModifier
- (BOOL)_isFromAppLayoutIndex:(unint64_t)a3;
- (BOOL)_isToAppLayoutIndex:(unint64_t)a3;
- (BOOL)_isToOrFromAppLayout:(id)a3;
- (BOOL)_isToOrFromAppLayoutIndex:(unint64_t)a3;
- (BOOL)shouldPinLayoutRolesToSpace:(unint64_t)a3;
- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)a3;
- (CGPoint)adjustedSpaceAccessoryViewAnchorPoint:(CGPoint)a3 forAppLayout:(id)a4;
- (CGPoint)anchorPointForIndex:(unint64_t)a3;
- (CGPoint)perspectiveAngleForIndex:(unint64_t)a3;
- (CGRect)_insetFrameForDiffuseShadowRadius:(CGRect)a3;
- (CGRect)adjustedSpaceAccessoryViewFrame:(CGRect)a3 forAppLayout:(id)a4;
- (CGRect)clippingFrameForIndex:(unint64_t)a3 withBounds:(CGRect)a4;
- (CGRect)clippingFrameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5 withBounds:(CGRect)a6;
- (CGRect)frameForIndex:(unint64_t)a3;
- (SBPIPRestoreToFullScreenSwitcherModifier)initWithTransitionID:(id)a3 transitionModifier:(id)a4 fromAppLayout:(id)a5 toAppLayout:(id)a6 toLayoutRole:(int64_t)a7;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (double)scaleForIndex:(unint64_t)a3;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)transitionWillBegin;
- (id)visibleAppLayouts;
@end

@implementation SBPIPRestoreToFullScreenSwitcherModifier

- (SBPIPRestoreToFullScreenSwitcherModifier)initWithTransitionID:(id)a3 transitionModifier:(id)a4 fromAppLayout:(id)a5 toAppLayout:(id)a6 toLayoutRole:(int64_t)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = SBPIPRestoreToFullScreenSwitcherModifier;
  v15 = [(SBTransitionSwitcherModifier *)&v18 initWithTransitionID:a3];
  v16 = v15;
  if (v15)
  {
    v15->_toLayoutRole = a7;
    objc_storeStrong(&v15->_fromAppLayout, a5);
    objc_storeStrong(&v16->_toAppLayout, a6);
    [(SBChainableModifier *)v16 addChildModifier:v12];
  }

  return v16;
}

- (id)transitionWillBegin
{
  v21.receiver = self;
  v21.super_class = SBPIPRestoreToFullScreenSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v21 transitionWillBegin];
  v4 = objc_alloc_init(SBSwitcherModifierEventResponse);
  v5 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
  [(SBChainableModifierEventResponse *)v4 addChildResponse:v5];

  v6 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:2 updateMode:2];
  [(SBChainableModifierEventResponse *)v4 addChildResponse:v6];

  p_toAppLayoutBoundingBox = &self->_toAppLayoutBoundingBox;
  v8 = [(SBPIPRestoreToFullScreenSwitcherModifier *)self windowManagementContext];
  if ([v8 isFlexibleWindowingEnabled])
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
  v19 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v3 toResponse:v4];

  return v19;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  if ([(SBPIPRestoreToFullScreenSwitcherModifier *)self _isFromAppLayoutIndex:?])
  {
    [(SBPIPRestoreToFullScreenSwitcherModifier *)self containerViewBounds];
  }

  else if ([(SBTransitionSwitcherModifier *)self isPreparingLayout]&& [(SBPIPRestoreToFullScreenSwitcherModifier *)self _isToAppLayoutIndex:a3])
  {
    SBRectWithSize();
    [(SBPIPRestoreToFullScreenSwitcherModifier *)self morphToPIPTargetCenter];
    SBUnintegralizedRectCenteredAboutPoint();
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBPIPRestoreToFullScreenSwitcherModifier;
    [(SBPIPRestoreToFullScreenSwitcherModifier *)&v9 frameForIndex:a3];
  }

  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)clippingFrameForIndex:(unint64_t)a3 withBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  if ([(SBTransitionSwitcherModifier *)self isPreparingLayout]&& [(SBPIPRestoreToFullScreenSwitcherModifier *)self _isToAppLayoutIndex:a3])
  {
    [(SBPIPRestoreToFullScreenSwitcherModifier *)self morphToPIPClippingFrame];
  }

  else if ([(SBPIPRestoreToFullScreenSwitcherModifier *)self _isToAppLayoutIndex:a3])
  {
    v15.receiver = self;
    v15.super_class = SBPIPRestoreToFullScreenSwitcherModifier;
    [(SBPIPRestoreToFullScreenSwitcherModifier *)&v15 clippingFrameForIndex:a3 withBounds:x, y, width, height];
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
    [(SBPIPRestoreToFullScreenSwitcherModifier *)&v14 clippingFrameForIndex:a3 withBounds:x, y, width, height];
  }

  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (CGRect)clippingFrameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5 withBounds:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v13 = a4;
  if ([(SBTransitionSwitcherModifier *)self isPreparingLayout]&& [(SBPIPRestoreToFullScreenSwitcherModifier *)self _isToAppLayout:v13])
  {
    [(SBPIPRestoreToFullScreenSwitcherModifier *)self frameForLayoutRole:a3 inAppLayout:v13 withBounds:x, y, width, height];
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

  if (![(SBPIPRestoreToFullScreenSwitcherModifier *)self _isToAppLayout:v13])
  {
    v30.receiver = self;
    v30.super_class = SBPIPRestoreToFullScreenSwitcherModifier;
    [(SBPIPRestoreToFullScreenSwitcherModifier *)&v30 clippingFrameForLayoutRole:a3 inAppLayout:v13 atIndex:a5 withBounds:x, y, width, height];
    goto LABEL_8;
  }

  [(SBPIPRestoreToFullScreenSwitcherModifier *)self frameForLayoutRole:a3 inAppLayout:v13 withBounds:x, y, width, height];
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

- (CGRect)_insetFrameForDiffuseShadowRadius:(CGRect)a3
{
  v3 = [(SBPIPRestoreToFullScreenSwitcherModifier *)self switcherSettings:a3.origin.x];
  v4 = [v3 windowingSettings];
  [v4 diffuseShadowRadius];
  v6 = v5;

  SBRectWithSize();

  return CGRectInset(*&v7, v6 * -2.8, v6 * -2.8);
}

- (double)scaleForIndex:(unint64_t)a3
{
  v10.receiver = self;
  v10.super_class = SBPIPRestoreToFullScreenSwitcherModifier;
  [(SBPIPRestoreToFullScreenSwitcherModifier *)&v10 scaleForIndex:?];
  v6 = v5;
  v7 = [(SBPIPRestoreToFullScreenSwitcherModifier *)self _isFromAppLayoutIndex:a3];
  result = 1.0;
  if (!v7)
  {
    if ([(SBTransitionSwitcherModifier *)self isPreparingLayout])
    {
      v9 = [(SBPIPRestoreToFullScreenSwitcherModifier *)self _isToAppLayoutIndex:a3];
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
  v3 = [(SBPIPRestoreToFullScreenSwitcherModifier *)&v6 visibleAppLayouts];
  v4 = [v3 mutableCopy];

  if (self->_fromAppLayout)
  {
    [v4 addObject:?];
  }

  return v4;
}

- (CGPoint)anchorPointForIndex:(unint64_t)a3
{
  if (!self->_shouldForceDefaultAnchorPointForTransition || (v7 = [(SBPIPRestoreToFullScreenSwitcherModifier *)self _isToOrFromAppLayoutIndex:a3], v3 = 0.5, v4 = 0.5, !v7))
  {
    v8.receiver = self;
    v8.super_class = SBPIPRestoreToFullScreenSwitcherModifier;
    [(SBPIPRestoreToFullScreenSwitcherModifier *)&v8 anchorPointForIndex:a3, v3, v4];
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (BOOL)shouldPinLayoutRolesToSpace:(unint64_t)a3
{
  if (self->_shouldForceDefaultAnchorPointForTransition && [(SBPIPRestoreToFullScreenSwitcherModifier *)self _isToOrFromAppLayoutIndex:a3])
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = SBPIPRestoreToFullScreenSwitcherModifier;
  return [(SBPIPRestoreToFullScreenSwitcherModifier *)&v6 shouldPinLayoutRolesToSpace:a3];
}

- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)a3
{
  if (self->_shouldForceDefaultAnchorPointForTransition && [(SBPIPRestoreToFullScreenSwitcherModifier *)self _isToOrFromAppLayoutIndex:a3])
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = SBPIPRestoreToFullScreenSwitcherModifier;
  return [(SBPIPRestoreToFullScreenSwitcherModifier *)&v6 shouldUseAnchorPointToPinLayoutRolesToSpace:a3];
}

- (CGPoint)perspectiveAngleForIndex:(unint64_t)a3
{
  v5 = [(SBPIPRestoreToFullScreenSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if (self->_shouldForceDefaultAnchorPointForTransition && [(SBPIPRestoreToFullScreenSwitcherModifier *)self _isToOrFromAppLayout:v6])
  {
    v7 = *MEMORY[0x277CBF348];
    v8 = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBPIPRestoreToFullScreenSwitcherModifier;
    [(SBPIPRestoreToFullScreenSwitcherModifier *)&v13 perspectiveAngleForIndex:a3];
    v7 = v9;
    v8 = v10;
  }

  v11 = v7;
  v12 = v8;
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGRect)adjustedSpaceAccessoryViewFrame:(CGRect)a3 forAppLayout:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  if (self->_shouldForceDefaultAnchorPointForTransition && [(SBPIPRestoreToFullScreenSwitcherModifier *)self _isToOrFromAppLayout:v9])
  {
    v10 = [(SBPIPRestoreToFullScreenSwitcherModifier *)self appLayouts];
    -[SBPIPRestoreToFullScreenSwitcherModifier frameForIndex:](self, "frameForIndex:", [v10 indexOfObject:v9]);
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
  }

  else
  {
    v27.receiver = self;
    v27.super_class = SBPIPRestoreToFullScreenSwitcherModifier;
    [(SBPIPRestoreToFullScreenSwitcherModifier *)&v27 adjustedSpaceAccessoryViewFrame:v9 forAppLayout:x, y, width, height];
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

- (CGPoint)adjustedSpaceAccessoryViewAnchorPoint:(CGPoint)a3 forAppLayout:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if (!self->_shouldForceDefaultAnchorPointForTransition || (v8 = 0.5, v9 = 0.5, ![(SBPIPRestoreToFullScreenSwitcherModifier *)self _isToOrFromAppLayout:v7]))
  {
    v14.receiver = self;
    v14.super_class = SBPIPRestoreToFullScreenSwitcherModifier;
    [(SBPIPRestoreToFullScreenSwitcherModifier *)&v14 adjustedSpaceAccessoryViewAnchorPoint:v7 forAppLayout:x, y];
    v8 = v10;
    v9 = v11;
  }

  v12 = v8;
  v13 = v9;
  result.y = v13;
  result.x = v12;
  return result;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v7.receiver = self;
  v7.super_class = SBPIPRestoreToFullScreenSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v7 animationAttributesForLayoutElement:a3];
  v4 = [v3 mutableCopy];

  v5 = [v4 layoutSettings];
  [v4 setClippingSettings:v5];

  return v4;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3
{
  [(SBPIPRestoreToFullScreenSwitcherModifier *)self displayCornerRadius];
  SBRectCornerRadiiForRadius();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if ([(SBTransitionSwitcherModifier *)self isPreparingLayout]&& [(SBPIPRestoreToFullScreenSwitcherModifier *)self _isToAppLayoutIndex:a3])
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

- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  v8 = a4;
  v9 = 1.0;
  if (![(SBPIPRestoreToFullScreenSwitcherModifier *)self _isToOrFromAppLayoutIndex:a5])
  {
    v12.receiver = self;
    v12.super_class = SBPIPRestoreToFullScreenSwitcherModifier;
    [(SBPIPRestoreToFullScreenSwitcherModifier *)&v12 opacityForLayoutRole:a3 inAppLayout:v8 atIndex:a5];
    v9 = v10;
  }

  return v9;
}

- (BOOL)_isFromAppLayoutIndex:(unint64_t)a3
{
  v4 = self;
  v5 = [(SBPIPRestoreToFullScreenSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  LOBYTE(v4) = [v6 isEqual:v4->_fromAppLayout];
  return v4;
}

- (BOOL)_isToAppLayoutIndex:(unint64_t)a3
{
  v4 = self;
  v5 = [(SBPIPRestoreToFullScreenSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  LOBYTE(v4) = [v6 isEqual:v4->_toAppLayout];
  return v4;
}

- (BOOL)_isToOrFromAppLayout:(id)a3
{
  v4 = a3;
  if ([v4 isEqual:self->_fromAppLayout])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqual:self->_toAppLayout];
  }

  return v5;
}

- (BOOL)_isToOrFromAppLayoutIndex:(unint64_t)a3
{
  v4 = self;
  v5 = [(SBPIPRestoreToFullScreenSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  LOBYTE(v4) = [(SBPIPRestoreToFullScreenSwitcherModifier *)v4 _isToOrFromAppLayout:v6];
  return v4;
}

@end