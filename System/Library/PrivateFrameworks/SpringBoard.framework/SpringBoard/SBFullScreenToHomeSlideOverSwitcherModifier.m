@interface SBFullScreenToHomeSlideOverSwitcherModifier
- (BOOL)_isIndexSlideOverAppLayout:(unint64_t)a3;
- (BOOL)_shouldApplySlideOverLayoutToIndex:(unint64_t)a3;
- (BOOL)isLayoutRoleBlurred:(int64_t)a3 inAppLayout:(id)a4;
- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)a3 inAppLayout:(id)a4;
- (BOOL)shouldPinLayoutRolesToSpace:(unint64_t)a3;
- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)a3;
- (CGPoint)adjustedSpaceAccessoryViewAnchorPoint:(CGPoint)a3 forAppLayout:(id)a4;
- (CGPoint)anchorPointForIndex:(unint64_t)a3;
- (CGPoint)perspectiveAngleForIndex:(unint64_t)a3;
- (CGRect)adjustedSpaceAccessoryViewFrame:(CGRect)a3 forAppLayout:(id)a4;
- (CGRect)frameForIndex:(unint64_t)a3;
- (SBFullScreenToHomeSlideOverSwitcherModifier)initWithTransitionID:(id)a3 appLayout:(id)a4 direction:(unint64_t)a5;
- (double)blurDelayForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (double)homeScreenAlpha;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (double)scaleForIndex:(unint64_t)a3;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)handleSceneReadyEvent:(id)a3;
- (id)transitionWillBegin;
- (id)visibleAppLayouts;
- (int64_t)homeScreenBackdropBlurType;
@end

@implementation SBFullScreenToHomeSlideOverSwitcherModifier

- (SBFullScreenToHomeSlideOverSwitcherModifier)initWithTransitionID:(id)a3 appLayout:(id)a4 direction:(unint64_t)a5
{
  v9 = a4;
  v15.receiver = self;
  v15.super_class = SBFullScreenToHomeSlideOverSwitcherModifier;
  v10 = [(SBTransitionSwitcherModifier *)&v15 initWithTransitionID:a3];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_appLayout, a4);
    v11->_direction = a5;
    v12 = [[SBFullScreenAppLayoutSwitcherModifier alloc] initWithActiveAppLayout:v11->_appLayout];
    fullScreenModifier = v11->_fullScreenModifier;
    v11->_fullScreenModifier = v12;
  }

  return v11;
}

- (id)transitionWillBegin
{
  v11.receiver = self;
  v11.super_class = SBFullScreenToHomeSlideOverSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v11 transitionWillBegin];
  v4 = [(SBFullScreenToHomeSlideOverSwitcherModifier *)self homeScreenBackdropBlurType];
  if (self->_direction)
  {
    v5 = v4;
    v6 = [SBUpdateLayoutSwitcherEventResponse alloc];
    if (v5 != 3)
    {
      v7 = 10;
      goto LABEL_6;
    }
  }

  else
  {
    v6 = [SBUpdateLayoutSwitcherEventResponse alloc];
  }

  v7 = 2;
LABEL_6:
  v8 = [(SBUpdateLayoutSwitcherEventResponse *)v6 initWithOptions:v7 updateMode:2];
  v9 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v8 toResponse:v3];

  return v9;
}

- (id)handleSceneReadyEvent:(id)a3
{
  v8.receiver = self;
  v8.super_class = SBFullScreenToHomeSlideOverSwitcherModifier;
  v4 = [(SBSwitcherModifier *)&v8 handleSceneReadyEvent:a3];
  if (self->_shouldBlurUnreadyScenes)
  {
    v5 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:64 updateMode:2];
    v6 = SBAppendSwitcherModifierResponse(v5, v4);

    v4 = v6;
  }

  return v4;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  v31.receiver = self;
  v31.super_class = SBFullScreenToHomeSlideOverSwitcherModifier;
  [(SBFullScreenToHomeSlideOverSwitcherModifier *)&v31 frameForIndex:?];
  x = v5;
  y = v7;
  width = v9;
  height = v11;
  if ([(SBFullScreenToHomeSlideOverSwitcherModifier *)self _isIndexSlideOverAppLayout:a3])
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x4010000000;
    v28 = &unk_21F9DA6A3;
    v13 = *(MEMORY[0x277CBF3A0] + 16);
    fullScreenModifier = self->_fullScreenModifier;
    v29 = *MEMORY[0x277CBF3A0];
    v30 = v13;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __61__SBFullScreenToHomeSlideOverSwitcherModifier_frameForIndex___block_invoke;
    v24[3] = &unk_2783AA618;
    v24[4] = self;
    v24[5] = &v25;
    v24[6] = a3;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:fullScreenModifier usingBlock:v24];
    x = v26[4];
    y = v26[5];
    width = v26[6];
    height = v26[7];
    _Block_object_dispose(&v25, 8);
  }

  if ([(SBFullScreenToHomeSlideOverSwitcherModifier *)self _shouldApplySlideOverLayoutToIndex:a3])
  {
    [(SBFullScreenToHomeSlideOverSwitcherModifier *)self containerViewBounds];
    v16 = v15;
    v17 = [(SBFullScreenToHomeSlideOverSwitcherModifier *)self isRTLEnabled];
    v18 = -v16;
    if (!v17)
    {
      v18 = v16;
    }

    if (self->_startingScreenEdge == 1)
    {
      v19 = -v18;
    }

    else
    {
      v19 = v18;
    }

    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = width;
    v32.size.height = height;
    v33 = CGRectOffset(v32, v19, 0.0);
    x = v33.origin.x;
    y = v33.origin.y;
    width = v33.size.width;
    height = v33.size.height;
  }

  v20 = x;
  v21 = y;
  v22 = width;
  v23 = height;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

uint64_t __61__SBFullScreenToHomeSlideOverSwitcherModifier_frameForIndex___block_invoke(void *a1)
{
  result = [*(a1[4] + 184) frameForIndex:a1[6]];
  v3 = *(a1[5] + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

- (double)scaleForIndex:(unint64_t)a3
{
  v5 = [(SBFullScreenToHomeSlideOverSwitcherModifier *)self _isIndexSlideOverAppLayout:?];
  result = 1.0;
  if (!v5)
  {
    v7.receiver = self;
    v7.super_class = SBFullScreenToHomeSlideOverSwitcherModifier;
    [(SBFullScreenToHomeSlideOverSwitcherModifier *)&v7 scaleForIndex:a3, 1.0];
  }

  return result;
}

- (CGPoint)anchorPointForIndex:(unint64_t)a3
{
  if (!self->_shouldForceDefaultAnchorPointForTransition || (v7 = [(SBFullScreenToHomeSlideOverSwitcherModifier *)self _isIndexSlideOverAppLayout:a3], v3 = 0.5, v4 = 0.5, !v7))
  {
    v8.receiver = self;
    v8.super_class = SBFullScreenToHomeSlideOverSwitcherModifier;
    [(SBFullScreenToHomeSlideOverSwitcherModifier *)&v8 anchorPointForIndex:a3, v3, v4];
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (BOOL)shouldPinLayoutRolesToSpace:(unint64_t)a3
{
  if (self->_shouldForceDefaultAnchorPointForTransition && [(SBFullScreenToHomeSlideOverSwitcherModifier *)self _isIndexSlideOverAppLayout:a3])
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = SBFullScreenToHomeSlideOverSwitcherModifier;
  return [(SBFullScreenToHomeSlideOverSwitcherModifier *)&v6 shouldPinLayoutRolesToSpace:a3];
}

- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)a3
{
  if (self->_shouldForceDefaultAnchorPointForTransition && [(SBFullScreenToHomeSlideOverSwitcherModifier *)self _isIndexSlideOverAppLayout:a3])
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = SBFullScreenToHomeSlideOverSwitcherModifier;
  return [(SBFullScreenToHomeSlideOverSwitcherModifier *)&v6 shouldUseAnchorPointToPinLayoutRolesToSpace:a3];
}

- (CGPoint)perspectiveAngleForIndex:(unint64_t)a3
{
  v5 = [(SBFullScreenToHomeSlideOverSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if (self->_shouldForceDefaultAnchorPointForTransition && [v6 isEqual:self->_appLayout])
  {
    v7 = *MEMORY[0x277CBF348];
    v8 = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBFullScreenToHomeSlideOverSwitcherModifier;
    [(SBFullScreenToHomeSlideOverSwitcherModifier *)&v13 perspectiveAngleForIndex:a3];
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
    v11 = [(SBFullScreenToHomeSlideOverSwitcherModifier *)self appLayouts];
    -[SBFullScreenToHomeSlideOverSwitcherModifier frameForIndex:](self, "frameForIndex:", [v11 indexOfObject:self->_appLayout]);
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
  }

  else
  {
    v28.receiver = self;
    v28.super_class = SBFullScreenToHomeSlideOverSwitcherModifier;
    [(SBFullScreenToHomeSlideOverSwitcherModifier *)&v28 adjustedSpaceAccessoryViewFrame:v10 forAppLayout:x, y, width, height];
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
    v15.super_class = SBFullScreenToHomeSlideOverSwitcherModifier;
    [(SBFullScreenToHomeSlideOverSwitcherModifier *)&v15 adjustedSpaceAccessoryViewAnchorPoint:v8 forAppLayout:x, y];
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
  v6.super_class = SBFullScreenToHomeSlideOverSwitcherModifier;
  v3 = [(SBFullScreenToHomeSlideOverSwitcherModifier *)&v6 visibleAppLayouts];
  v4 = [v3 setByAddingObject:self->_appLayout];

  return v4;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v10.receiver = self;
  v10.super_class = SBFullScreenToHomeSlideOverSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v10 animationAttributesForLayoutElement:a3];
  v5 = [v4 mutableCopy];

  v6 = [(SBFullScreenToHomeSlideOverSwitcherModifier *)self switcherSettings];
  v7 = [v6 animationSettings];
  v8 = [v7 slideOverSettings];
  [v5 setLayoutSettings:v8];

  return v5;
}

- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  v8 = a4;
  v9 = 1.0;
  if (![(SBFullScreenToHomeSlideOverSwitcherModifier *)self _isIndexSlideOverAppLayout:a5])
  {
    v12.receiver = self;
    v12.super_class = SBFullScreenToHomeSlideOverSwitcherModifier;
    [(SBFullScreenToHomeSlideOverSwitcherModifier *)&v12 opacityForLayoutRole:a3 inAppLayout:v8 atIndex:a5];
    v9 = v10;
  }

  return v9;
}

- (int64_t)homeScreenBackdropBlurType
{
  if ([(SBFullScreenToHomeSlideOverSwitcherModifier *)self hasHomeButton])
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)a3 inAppLayout:(id)a4
{
  if (self->_appLayout == a4)
  {
    return 1;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = self;
  v7.super_class = SBFullScreenToHomeSlideOverSwitcherModifier;
  return [(SBFullScreenToHomeSlideOverSwitcherModifier *)&v7 isLayoutRoleMatchMovedToScene:a3 inAppLayout:?];
}

- (BOOL)isLayoutRoleBlurred:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  if (self->_appLayout == v6 && self->_shouldBlurUnreadyScenes)
  {
    v9.receiver = self;
    v9.super_class = SBFullScreenToHomeSlideOverSwitcherModifier;
    LODWORD(a3) = [(SBFullScreenToHomeSlideOverSwitcherModifier *)&v9 isLayoutRoleContentReady:a3 inAppLayout:v6]^ 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBFullScreenToHomeSlideOverSwitcherModifier;
    LOBYTE(a3) = [(SBFullScreenToHomeSlideOverSwitcherModifier *)&v8 isLayoutRoleBlurred:a3 inAppLayout:v6];
  }

  return a3;
}

- (double)blurDelayForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v14.receiver = self;
  v14.super_class = SBFullScreenToHomeSlideOverSwitcherModifier;
  v6 = a4;
  [(SBFullScreenToHomeSlideOverSwitcherModifier *)&v14 blurDelayForLayoutRole:a3 inAppLayout:v6];
  v8 = v7;
  appLayout = self->_appLayout;

  if (appLayout == v6)
  {
    v10 = [(SBFullScreenToHomeSlideOverSwitcherModifier *)self switcherSettings:v14.receiver];
    v11 = [v10 animationSettings];
    [v11 resizeBlurDelay];
    v8 = v12;
  }

  return v8;
}

- (double)homeScreenAlpha
{
  v3 = [(SBFullScreenToHomeSlideOverSwitcherModifier *)self homeScreenBackdropBlurType];
  result = 1.0;
  if (v3 == 3)
  {
    v5.receiver = self;
    v5.super_class = SBFullScreenToHomeSlideOverSwitcherModifier;
    [(SBFullScreenToHomeSlideOverSwitcherModifier *)&v5 homeScreenAlpha];
  }

  return result;
}

- (BOOL)_shouldApplySlideOverLayoutToIndex:(unint64_t)a3
{
  v4 = [(SBFullScreenToHomeSlideOverSwitcherModifier *)self _isIndexSlideOverAppLayout:a3];
  if (v4)
  {
    if ([(SBTransitionSwitcherModifier *)self isPreparingLayout]&& !self->_direction)
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      v4 = [(SBTransitionSwitcherModifier *)self isUpdatingLayout];
      if (v4)
      {
        LOBYTE(v4) = self->_direction == 1;
      }
    }
  }

  return v4;
}

- (BOOL)_isIndexSlideOverAppLayout:(unint64_t)a3
{
  v4 = self;
  v5 = [(SBFullScreenToHomeSlideOverSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  LOBYTE(v4) = [v6 isEqual:v4->_appLayout];
  return v4;
}

@end