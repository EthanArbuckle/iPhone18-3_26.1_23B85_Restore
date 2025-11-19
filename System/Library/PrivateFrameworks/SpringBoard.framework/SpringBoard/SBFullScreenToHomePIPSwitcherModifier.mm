@interface SBFullScreenToHomePIPSwitcherModifier
- (BOOL)_isIndexSelectedAppLayout:(unint64_t)a3;
- (BOOL)_shouldApplyMorphToPIPToIndex:(unint64_t)a3;
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
- (SBFullScreenToHomePIPSwitcherModifier)initWithTransitionID:(id)a3 appLayout:(id)a4 layoutRole:(int64_t)a5;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (double)rotationAngleForIndex:(unint64_t)a3;
- (double)scaleForIndex:(unint64_t)a3;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)handleHideMorphToPIPAppLayoutEvent:(id)a3;
- (id)topMostLayoutElements;
- (id)transitionWillBegin;
- (id)transitionWillUpdate;
- (id)visibleAppLayouts;
- (void)didMoveToParentModifier:(id)a3;
@end

@implementation SBFullScreenToHomePIPSwitcherModifier

- (SBFullScreenToHomePIPSwitcherModifier)initWithTransitionID:(id)a3 appLayout:(id)a4 layoutRole:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  if (!v10)
  {
    [SBFullScreenToHomePIPSwitcherModifier initWithTransitionID:a2 appLayout:self layoutRole:?];
  }

  v14.receiver = self;
  v14.super_class = SBFullScreenToHomePIPSwitcherModifier;
  v11 = [(SBTransitionSwitcherModifier *)&v14 initWithTransitionID:v9];
  v12 = v11;
  if (v11)
  {
    v11->_layoutRole = a5;
    objc_storeStrong(&v11->_appLayout, a4);
  }

  return v12;
}

- (void)didMoveToParentModifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = SBFullScreenToHomePIPSwitcherModifier;
  [(SBChainableModifier *)&v7 didMoveToParentModifier:?];
  if (a3)
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
  v25.receiver = self;
  v25.super_class = SBFullScreenToHomePIPSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v25 transitionWillBegin];
  v4 = objc_alloc_init(SBSwitcherModifierEventResponse);
  v5 = [[SBUpdateContinuousExposeStripsPresentationResponse alloc] initWithPresentationOptions:0 dismissalOptions:1];
  v6 = objc_alloc_init(SBSetupPIPMorphingSwitcherEventResponse);
  v7 = [(SBFullScreenToHomePIPSwitcherModifier *)self windowManagementContext];
  if ([v7 isFlexibleWindowingEnabled])
  {
    v8 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:self->_appLayout];
    [v8 boundingBox];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
  }

  else
  {
    [(SBFullScreenToHomePIPSwitcherModifier *)self containerViewBounds];
    v10 = v17;
    v12 = v18;
    v14 = v19;
    v16 = v20;
  }

  [(SBSetupPIPMorphingSwitcherEventResponse *)v6 setAppLayoutBoundingBox:v10, v12, v14, v16];
  v21 = SBAppendSwitcherModifierResponse(v5, v3);
  [(SBChainableModifierEventResponse *)v4 addChildResponse:v21];

  v22 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:2 updateMode:2];
  [(SBChainableModifierEventResponse *)v4 addChildResponse:v22];

  [(SBChainableModifierEventResponse *)v4 addChildResponse:v6];
  v23 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v3 toResponse:v4];

  return v23;
}

- (id)transitionWillUpdate
{
  v7.receiver = self;
  v7.super_class = SBFullScreenToHomePIPSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v7 transitionWillUpdate];
  coplanarModifier = self->_coplanarModifier;
  v5 = [(SBFullScreenToHomePIPSwitcherModifier *)self peekingAppLayout];
  [(SBCoplanarSwitcherModifier *)coplanarModifier setIgnoredAppLayout:v5];

  return v3;
}

- (id)handleHideMorphToPIPAppLayoutEvent:(id)a3
{
  self->_shouldHide = 1;
  v4 = a3;
  v5 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:8 updateMode:2];
  v9.receiver = self;
  v9.super_class = SBFullScreenToHomePIPSwitcherModifier;
  v6 = [(SBSwitcherModifier *)&v9 handleHideMorphToPIPAppLayoutEvent:v4];

  v7 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v5 toResponse:v6];

  return v7;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  v43 = *MEMORY[0x277D85DE8];
  if ([(SBFullScreenToHomePIPSwitcherModifier *)self _shouldApplyMorphToPIPToIndex:?])
  {
    v36.receiver = self;
    v36.super_class = SBFullScreenToHomePIPSwitcherModifier;
    [(SBFullScreenToHomePIPSwitcherModifier *)&v36 frameForIndex:a3];
    SBRectWithSize();
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [(SBFullScreenToHomePIPSwitcherModifier *)self morphToPIPTargetCenter];
    v14 = v13;
    v16 = v15;
    SBUnintegralizedRectCenteredAboutPoint();
    v33 = v18;
    v34 = v17;
    v20 = v19;
    v22 = v21;
    v23 = SBLogPIP();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v45.origin.x = v6;
      v45.origin.y = v8;
      v45.size.width = v10;
      v45.size.height = v12;
      v30 = NSStringFromCGRect(v45);
      v44.x = v14;
      v44.y = v16;
      v31 = NSStringFromCGPoint(v44);
      v46.origin.y = v33;
      v46.origin.x = v34;
      v46.size.width = v20;
      v46.size.height = v22;
      v32 = NSStringFromCGRect(v46);
      *buf = 138543874;
      v38 = v30;
      v39 = 2114;
      v40 = v31;
      v41 = 2114;
      v42 = v32;
      _os_log_debug_impl(&dword_21ED4E000, v23, OS_LOG_TYPE_DEBUG, "[FullscreenToHomeModifier] frameForIndex frame[%{public}@] morphToPIPTargetCenter[%{public}@] centeredFrame:[%{public}@]", buf, 0x20u);
    }

    v25 = v33;
    v24 = v34;
  }

  else
  {
    v35.receiver = self;
    v35.super_class = SBFullScreenToHomePIPSwitcherModifier;
    [(SBFullScreenToHomePIPSwitcherModifier *)&v35 frameForIndex:a3];
    v20 = v26;
    v22 = v27;
  }

  v28 = v20;
  v29 = v22;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (double)scaleForIndex:(unint64_t)a3
{
  if ([(SBFullScreenToHomePIPSwitcherModifier *)self _shouldApplyMorphToPIPToIndex:?])
  {

    [(SBFullScreenToHomePIPSwitcherModifier *)self morphToPIPTargetScale];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SBFullScreenToHomePIPSwitcherModifier;
    [(SBFullScreenToHomePIPSwitcherModifier *)&v6 scaleForIndex:a3];
  }

  return result;
}

- (CGRect)clippingFrameForIndex:(unint64_t)a3 withBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  if ([(SBFullScreenToHomePIPSwitcherModifier *)self _isIndexSelectedAppLayout:?]&& ![(SBTransitionSwitcherModifier *)self isPreparingLayout])
  {
    [(SBFullScreenToHomePIPSwitcherModifier *)self morphToPIPClippingFrame];
  }

  else if ([(SBFullScreenToHomePIPSwitcherModifier *)self _isIndexSelectedAppLayout:a3])
  {
    v15.receiver = self;
    v15.super_class = SBFullScreenToHomePIPSwitcherModifier;
    [(SBFullScreenToHomePIPSwitcherModifier *)&v15 clippingFrameForIndex:a3 withBounds:x, y, width, height];
    SBRectWithSize();
    if (self->_shouldClippingTakeShadowIntoAccount)
    {
      [(SBFullScreenToHomePIPSwitcherModifier *)self _insetFrameForDiffuseShadowRadius:?];
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = SBFullScreenToHomePIPSwitcherModifier;
    [(SBFullScreenToHomePIPSwitcherModifier *)&v14 clippingFrameForIndex:a3 withBounds:x, y, width, height];
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
  if ([(SBFullScreenToHomePIPSwitcherModifier *)self _isIndexSelectedAppLayout:a5]&& ![(SBTransitionSwitcherModifier *)self isPreparingLayout])
  {
    [(SBFullScreenToHomePIPSwitcherModifier *)self morphToPIPClippingFrame];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    [(SBFullScreenToHomePIPSwitcherModifier *)self frameForLayoutRole:a3 inAppLayout:v13 withBounds:x, y, width, height];
    v35 = -v34;
    v37 = -v36;
    v43.origin.x = v27;
    v43.origin.y = v29;
    v43.size.width = v31;
    v43.size.height = v33;
    *&v22 = CGRectOffset(v43, v35, v37);
    goto LABEL_8;
  }

  if (![(SBFullScreenToHomePIPSwitcherModifier *)self _isIndexSelectedAppLayout:a5])
  {
    v42.receiver = self;
    v42.super_class = SBFullScreenToHomePIPSwitcherModifier;
    [(SBFullScreenToHomePIPSwitcherModifier *)&v42 clippingFrameForLayoutRole:a3 inAppLayout:v13 atIndex:a5 withBounds:x, y, width, height];
    goto LABEL_8;
  }

  [(SBFullScreenToHomePIPSwitcherModifier *)self frameForLayoutRole:a3 inAppLayout:v13 withBounds:x, y, width, height];
  SBRectWithSize();
  v18 = v14;
  v19 = v15;
  v20 = v16;
  v21 = v17;
  if (self->_shouldClippingTakeShadowIntoAccount)
  {
    [(SBFullScreenToHomePIPSwitcherModifier *)self _insetFrameForDiffuseShadowRadius:v14, v15, v16, v17];
LABEL_8:
    v18 = v22;
    v19 = v23;
    v20 = v24;
    v21 = v25;
  }

  v38 = v18;
  v39 = v19;
  v40 = v20;
  v41 = v21;
  result.size.height = v41;
  result.size.width = v40;
  result.origin.y = v39;
  result.origin.x = v38;
  return result;
}

- (CGRect)_insetFrameForDiffuseShadowRadius:(CGRect)a3
{
  v3 = [(SBFullScreenToHomePIPSwitcherModifier *)self switcherSettings:a3.origin.x];
  v4 = [v3 windowingSettings];
  [v4 diffuseShadowRadius];
  v6 = v5;

  SBRectWithSize();

  return CGRectInset(*&v7, v6 * -2.8, v6 * -2.8);
}

- (id)visibleAppLayouts
{
  v6.receiver = self;
  v6.super_class = SBFullScreenToHomePIPSwitcherModifier;
  v3 = [(SBFullScreenToHomePIPSwitcherModifier *)&v6 visibleAppLayouts];
  v4 = [v3 setByAddingObject:self->_appLayout];

  return v4;
}

- (double)rotationAngleForIndex:(unint64_t)a3
{
  v5 = 0.0;
  v6 = 0.0;
  if ([(SBFullScreenToHomePIPSwitcherModifier *)self switcherInterfaceOrientation]!= 1)
  {
    if ([(SBFullScreenToHomePIPSwitcherModifier *)self switcherInterfaceOrientation]== 4)
    {
      v6 = -1.57079633;
    }

    else if ([(SBFullScreenToHomePIPSwitcherModifier *)self switcherInterfaceOrientation]== 3)
    {
      v6 = 1.57079633;
    }

    else if ([(SBFullScreenToHomePIPSwitcherModifier *)self switcherInterfaceOrientation]== 2)
    {
      v6 = 3.14159265;
    }

    else
    {
      v6 = 0.0;
    }
  }

  if ([(SBFullScreenToHomePIPSwitcherModifier *)self homeScreenInterfaceOrientation]!= 1)
  {
    if ([(SBFullScreenToHomePIPSwitcherModifier *)self homeScreenInterfaceOrientation]== 4)
    {
      v5 = -1.57079633;
    }

    else if ([(SBFullScreenToHomePIPSwitcherModifier *)self homeScreenInterfaceOrientation]== 3)
    {
      v5 = 1.57079633;
    }

    else if ([(SBFullScreenToHomePIPSwitcherModifier *)self homeScreenInterfaceOrientation]== 2)
    {
      v5 = 3.14159265;
    }

    else
    {
      v5 = 0.0;
    }
  }

  v7 = [(SBFullScreenToHomePIPSwitcherModifier *)self _shouldApplyMorphToPIPToIndex:a3];
  result = v5 - v6;
  if (!v7)
  {
    return 0.0;
  }

  return result;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v13.receiver = self;
  v13.super_class = SBFullScreenToHomePIPSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v13 animationAttributesForLayoutElement:a3];
  v5 = [v4 mutableCopy];

  v6 = [(SBFullScreenToHomePIPSwitcherModifier *)self switcherSettings];
  v7 = [v6 animationSettings];
  v8 = [v7 iconZoomDownSettings];
  [v5 setLayoutSettings:v8];

  v9 = +[SBPIPSettingsDomain rootSettings];
  v10 = [v9 fluidTransitionsSettings];
  v11 = [v10 sourceClippingFluidBehavior];
  [v5 setClippingSettings:v11];

  return v5;
}

- (CGPoint)anchorPointForIndex:(unint64_t)a3
{
  if (!self->_shouldForceDefaultAnchorPointForTransition || (v7 = [(SBFullScreenToHomePIPSwitcherModifier *)self _isIndexSelectedAppLayout:a3], v3 = 0.5, v4 = 0.5, !v7))
  {
    v8.receiver = self;
    v8.super_class = SBFullScreenToHomePIPSwitcherModifier;
    [(SBFullScreenToHomePIPSwitcherModifier *)&v8 anchorPointForIndex:a3, v3, v4];
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (BOOL)shouldPinLayoutRolesToSpace:(unint64_t)a3
{
  if (self->_shouldForceDefaultAnchorPointForTransition && [(SBFullScreenToHomePIPSwitcherModifier *)self _isIndexSelectedAppLayout:a3])
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = SBFullScreenToHomePIPSwitcherModifier;
  return [(SBFullScreenToHomePIPSwitcherModifier *)&v6 shouldPinLayoutRolesToSpace:a3];
}

- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)a3
{
  if (self->_shouldForceDefaultAnchorPointForTransition && [(SBFullScreenToHomePIPSwitcherModifier *)self _isIndexSelectedAppLayout:a3])
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = SBFullScreenToHomePIPSwitcherModifier;
  return [(SBFullScreenToHomePIPSwitcherModifier *)&v6 shouldUseAnchorPointToPinLayoutRolesToSpace:a3];
}

- (CGPoint)perspectiveAngleForIndex:(unint64_t)a3
{
  v5 = [(SBFullScreenToHomePIPSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if (self->_shouldForceDefaultAnchorPointForTransition && [v6 isEqual:self->_appLayout])
  {
    v7 = *MEMORY[0x277CBF348];
    v8 = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBFullScreenToHomePIPSwitcherModifier;
    [(SBFullScreenToHomePIPSwitcherModifier *)&v13 perspectiveAngleForIndex:a3];
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
  v10 = v9;
  if (self->_shouldForceDefaultAnchorPointForTransition && [v9 isEqual:self->_appLayout])
  {
    v11 = [(SBFullScreenToHomePIPSwitcherModifier *)self appLayouts];
    -[SBFullScreenToHomePIPSwitcherModifier frameForIndex:](self, "frameForIndex:", [v11 indexOfObject:self->_appLayout]);
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
  }

  else
  {
    v28.receiver = self;
    v28.super_class = SBFullScreenToHomePIPSwitcherModifier;
    [(SBFullScreenToHomePIPSwitcherModifier *)&v28 adjustedSpaceAccessoryViewFrame:v10 forAppLayout:x, y, width, height];
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

- (CGPoint)adjustedSpaceAccessoryViewAnchorPoint:(CGPoint)a3 forAppLayout:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = v7;
  if (!self->_shouldForceDefaultAnchorPointForTransition || (v9 = 0.5, v10 = 0.5, ([v7 isEqual:self->_appLayout] & 1) == 0))
  {
    v15.receiver = self;
    v15.super_class = SBFullScreenToHomePIPSwitcherModifier;
    [(SBFullScreenToHomePIPSwitcherModifier *)&v15 adjustedSpaceAccessoryViewAnchorPoint:v8 forAppLayout:x, y];
    v9 = v11;
    v10 = v12;
  }

  v13 = v9;
  v14 = v10;
  result.y = v14;
  result.x = v13;
  return result;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3
{
  [(SBFullScreenToHomePIPSwitcherModifier *)self displayCornerRadius];
  SBRectCornerRadiiForRadius();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if ([(SBFullScreenToHomePIPSwitcherModifier *)self _shouldApplyMorphToPIPToIndex:a3])
  {
    [(SBFullScreenToHomePIPSwitcherModifier *)self morphToPIPClippingCornerRadius];

    SBRectCornerRadiiForRadius();
  }

  else
  {
    v13 = v6;
    v14 = v8;
    v15 = v10;
    v16 = v12;
  }

  result.topRight = v16;
  result.bottomRight = v15;
  result.bottomLeft = v14;
  result.topLeft = v13;
  return result;
}

- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  v8 = a4;
  v9 = [(SBFullScreenToHomePIPSwitcherModifier *)self peekingAppLayout];
  v10 = [v9 isOrContainsAppLayout:v8];

  if (v10)
  {
    [(SBFullScreenToHomePIPSwitcherModifier *)&v15 opacityForLayoutRole:a3 inAppLayout:v8 atIndex:a5, v14.receiver, v14.super_class, self, SBFullScreenToHomePIPSwitcherModifier];
  }

  else
  {
    v12 = 0.0;
    if (self->_shouldHide)
    {
      goto LABEL_5;
    }

    if ([(SBFullScreenToHomePIPSwitcherModifier *)self _shouldApplyMorphToPIPToIndex:a5])
    {
      [(SBFullScreenToHomePIPSwitcherModifier *)self morphToPIPSourceAlpha];
    }

    else
    {
      [(SBFullScreenToHomePIPSwitcherModifier *)&v14 opacityForLayoutRole:a3 inAppLayout:v8 atIndex:a5, self, SBFullScreenToHomePIPSwitcherModifier, v15.receiver, v15.super_class];
    }
  }

  v12 = v11;
LABEL_5:

  return v12;
}

- (id)topMostLayoutElements
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = SBFullScreenToHomePIPSwitcherModifier;
  v3 = [(SBFullScreenToHomePIPSwitcherModifier *)&v8 topMostLayoutElements];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 mutableCopy];
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

- (BOOL)_shouldApplyMorphToPIPToIndex:(unint64_t)a3
{
  v5 = [(SBTransitionSwitcherModifier *)self isUpdatingLayout];
  if (v5)
  {

    LOBYTE(v5) = [(SBFullScreenToHomePIPSwitcherModifier *)self _isIndexSelectedAppLayout:a3];
  }

  return v5;
}

- (BOOL)_isIndexSelectedAppLayout:(unint64_t)a3
{
  v4 = self;
  v5 = [(SBFullScreenToHomePIPSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  LOBYTE(v4) = [v6 isEqual:v4->_appLayout];
  return v4;
}

- (void)initWithTransitionID:(uint64_t)a1 appLayout:(uint64_t)a2 layoutRole:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFullScreenToHomePIPSwitcherModifier.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"appLayout != nil"}];
}

@end