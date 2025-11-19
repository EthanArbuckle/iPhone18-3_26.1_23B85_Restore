@interface SBFullScreenToHomeSystemApertureSwitcherModifier
- (BOOL)_isEffectivelyHome;
- (BOOL)_isIndexZoomAppLayout:(unint64_t)a3;
- (BOOL)_shouldApplyEffectsToIndex:(unint64_t)a3;
- (BOOL)systemApertureRequiresHeavyShadowForTransition;
- (CGPoint)_collapsedTransitionTargetForZoomDown:(BOOL)a3;
- (CGPoint)expandedSourcePositionForSystemApertureTransition;
- (CGRect)frameForIndex:(unint64_t)a3;
- (CGRect)rootContentViewMaskRect;
- (SBFullScreenToHomeSystemApertureSwitcherModifier)initWithTransitionID:(id)a3 zoomModifier:(id)a4 appLayout:(id)a5 direction:(unint64_t)a6 expandedCardFrame:(CGRect)a7 cardScale:(double)a8 cardVelocity:(CGPoint)a9;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (double)rootContentViewBlurRadius;
- (double)rotationAngleForIndex:(unint64_t)a3;
- (double)scaleForIndex:(unint64_t)a3;
- (id)_blurItemContainerParameters;
- (id)_collapseMeshForNormalizedXDelta:(double)a3;
- (id)_systemApertureSettings;
- (id)_tuckInAtEndMeshForNormalizedXDelta:(double)a3;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)handleRepositionProgressEvent:(id)a3;
- (id)meshTransformForIndex:(unint64_t)a3;
- (id)repositionProgressNotificationsForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (id)systemApertureTransitioningAppLayouts;
- (id)topMostLayoutElements;
- (id)transitionDidEnd;
- (id)transitionWillBegin;
- (id)visibleAppLayouts;
- (id)visibleHomeAffordanceLayoutElements;
- (void)didMoveToParentModifier:(id)a3;
@end

@implementation SBFullScreenToHomeSystemApertureSwitcherModifier

- (SBFullScreenToHomeSystemApertureSwitcherModifier)initWithTransitionID:(id)a3 zoomModifier:(id)a4 appLayout:(id)a5 direction:(unint64_t)a6 expandedCardFrame:(CGRect)a7 cardScale:(double)a8 cardVelocity:(CGPoint)a9
{
  y = a9.y;
  x = a9.x;
  height = a7.size.height;
  width = a7.size.width;
  v14 = a7.origin.y;
  v15 = a7.origin.x;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  if (!v23)
  {
    [SBFullScreenToHomeSystemApertureSwitcherModifier initWithTransitionID:a2 zoomModifier:self appLayout:? direction:? expandedCardFrame:? cardScale:? cardVelocity:?];
  }

  v36.receiver = self;
  v36.super_class = SBFullScreenToHomeSystemApertureSwitcherModifier;
  v24 = [(SBTransitionSwitcherModifier *)&v36 initWithTransitionID:v21];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_appLayout, a5);
    v25->_direction = a6;
    objc_storeStrong(&v25->_zoomModifier, a4);
    v25->_shouldClipRegionAboveSystemAperture = 1;
    zoomModifier = v25->_zoomModifier;
    if (zoomModifier)
    {
      [(SBFullScreenToHomeIconZoomSwitcherModifier *)zoomModifier setShouldUpdateIconViewVisibility:0];
      [(SBFullScreenToHomeIconZoomSwitcherModifier *)v25->_zoomModifier setShouldMatchMoveToIconView:0];
      [(SBChainableModifier *)v25 addChildModifier:v25->_zoomModifier];
    }

    v25->_expandedCardFrame.origin.x = v15;
    v25->_expandedCardFrame.origin.y = v14;
    v25->_expandedCardFrame.size.width = width;
    v25->_expandedCardFrame.size.height = height;
    UIRectGetCenter();
    v25->_expandedCardCenter.x = v27;
    v25->_expandedCardCenter.y = v28;
    v25->_liftOffCardVelocity.x = x;
    v25->_liftOffCardVelocity.y = y;
    v25->_initialCardScale = a8;
    v29 = +[SBAppSwitcherDomain rootSettings];
    v30 = [v29 systemApertureSettings];

    v37.origin.x = v15;
    v37.origin.y = v14;
    v37.size.width = width;
    v37.size.height = height;
    v31 = CGRectGetWidth(v37);
    [v30 zoomToJindoYFromScreenTopToUseAlternateSettings];
    v33 = v32;
    CGAffineTransformMakeScale(&v35, a8, a8);
    v38.origin.x = v15;
    v38.origin.y = v14;
    v38.size.width = width;
    v38.size.height = height;
    CGRectApplyAffineTransform(v38, &v35);
    UIRectCenteredAboutPoint();
    v40.origin.x = 0.0;
    v40.origin.y = 0.0;
    v40.size.width = v31;
    v40.size.height = v33;
    v25->_jindoIntersectsIntialCardFrame = CGRectIntersectsRect(v39, v40);
  }

  return v25;
}

- (void)didMoveToParentModifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = SBFullScreenToHomeSystemApertureSwitcherModifier;
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

- (id)handleRepositionProgressEvent:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = SBFullScreenToHomeSystemApertureSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v24 handleRepositionProgressEvent:v4];
  v6 = [(SBFullScreenToHomeSystemApertureSwitcherModifier *)self _systemApertureSettings];
  if (self->_direction == 1 && ([v4 progress], objc_msgSend(v6, "zoomToJindoBeginShowingShadowThreshold"), BSFloatGreaterThanOrEqualToFloat()) && (objc_msgSend(v4, "progress"), objc_msgSend(v6, "zoomToJindoEndShowingShadowThreshold"), BSFloatLessThanFloat()))
  {
    if (self->_showShadow)
    {
      goto LABEL_9;
    }

    self->_showShadow = 1;
  }

  else
  {
    if (!self->_showShadow)
    {
      goto LABEL_9;
    }

    self->_showShadow = 0;
  }

  v7 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:8 updateMode:3];
  v8 = SBAppendSwitcherModifierResponse(v7, v5);

  v5 = v8;
LABEL_9:
  direction = self->_direction;
  if (!direction)
  {
    [v4 progress];
    [v6 zoomFromJindoBeginUnblurringProgressThreshold];
    v10 = BSFloatGreaterThanOrEqualToFloat();
    if (v10 && !self->_unblurred)
    {
      self->_unblurred = v10;
      v11 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:64 updateMode:3];
      v12 = SBAppendSwitcherModifierResponse(v11, v5);

      v5 = v12;
    }

    direction = self->_direction;
  }

  if (direction == 1)
  {
    [v4 progress];
    [v6 zoomToJindoTuckInThreshold];
    v13 = BSFloatGreaterThanOrEqualToFloat();
    if (v13)
    {
      if (!self->_tucked)
      {
        self->_tucked = v13;
        v14 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:64 updateMode:3];
        v15 = SBAppendSwitcherModifierResponse(v14, v5);

        v5 = v15;
      }
    }
  }

  v16 = self->_direction;
  if (v16 == 1)
  {
    [v4 progress];
    [v6 zoomToJindoBounceThreshold];
    v17 = BSFloatGreaterThanOrEqualToFloat();
    if (v17 && !self->_bounced)
    {
      self->_bounced = v17;
      v18 = [[SBInitiateSystemApertureBounceSwitcherEventResponse alloc] initWithAppLayout:self->_appLayout suppressionIdentifierToInvalidate:self->_suppressionIdentifier];
      suppressionIdentifier = self->_suppressionIdentifier;
      self->_suppressionIdentifier = 0;

      v20 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v18 toResponse:v5];

      v5 = v20;
    }

    v16 = self->_direction;
  }

  if (!v16 && ![(SBTransitionSwitcherModifier *)self isPreparingLayout])
  {
    [v4 progress];
    [v6 zoomFromJindoUnmaskThreshold];
    if (BSFloatGreaterThanOrEqualToFloat())
    {
      self->_shouldClipRegionAboveSystemAperture = 0;
      v21 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:64 updateMode:3];
      v22 = SBAppendSwitcherModifierResponse(v21, v5);

      v5 = v22;
    }
  }

  return v5;
}

- (id)transitionWillBegin
{
  v14.receiver = self;
  v14.super_class = SBFullScreenToHomeSystemApertureSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v14 transitionWillBegin];
  if (*&self->_direction == 1)
  {
    v4 = [MEMORY[0x277CCAD78] UUID];
    suppressionIdentifier = self->_suppressionIdentifier;
    self->_suppressionIdentifier = v4;

    v6 = [[SBRequestSystemApertureElementSuppressionEventResponse alloc] initWithAppLayout:self->_appLayout wantsGlobalSuppression:1 wantsKeyLineEnabled:1 invalidationIdentifier:self->_suppressionIdentifier];
    v7 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v6 toResponse:v3];

    v3 = v7;
  }

  direction = self->_direction;
  if (direction == 1)
  {
    v9 = objc_alloc_init(SBInvalidateRootContentViewClippingAndBlurEventResponse);
    v10 = SBAppendSwitcherModifierResponse(v9, v3);

    direction = self->_direction;
    v3 = v10;
  }

  if (!direction && ([(SBFullScreenToHomeSystemApertureSwitcherModifier *)self switcherInterfaceOrientation]- 3) >= 2)
  {
    v11 = objc_alloc_init(SBInitiateSystemApertureStretchEventResponse);
    v12 = SBAppendSwitcherModifierResponse(v11, v3);

    v3 = v12;
  }

  return v3;
}

- (id)transitionDidEnd
{
  v8.receiver = self;
  v8.super_class = SBFullScreenToHomeSystemApertureSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v8 transitionDidEnd];
  if (self->_suppressionIdentifier)
  {
    v4 = [[SBRelinquishSystemApertureElementSuppressionEventResponse alloc] initWithInvalidationIdentifier:self->_suppressionIdentifier];
    v5 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v4 toResponse:v3];

    suppressionIdentifier = self->_suppressionIdentifier;
    self->_suppressionIdentifier = 0;

    v3 = v5;
  }

  return v3;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  if ([(SBTransitionSwitcherModifier *)self isPreparingLayout])
  {
    v5 = self->_direction == 0;
  }

  else
  {
    v5 = 0;
  }

  if ([(SBTransitionSwitcherModifier *)self isUpdatingLayout])
  {
    v6 = self->_direction == 1;
  }

  else
  {
    v6 = 0;
  }

  if ([(SBFullScreenToHomeSystemApertureSwitcherModifier *)self _isIndexZoomAppLayout:a3]&& (v5 || v6))
  {
    [(SBFullScreenToHomeSystemApertureSwitcherModifier *)self containerViewBounds];
    SBRectWithSize();
    [(SBFullScreenToHomeSystemApertureSwitcherModifier *)self _collapsedTransitionTargetForZoomDown:v6];
    SBUnintegralizedRectCenteredAboutPoint();
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SBFullScreenToHomeSystemApertureSwitcherModifier;
    [(SBFullScreenToHomeSystemApertureSwitcherModifier *)&v11 frameForIndex:a3];
  }

  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (double)scaleForIndex:(unint64_t)a3
{
  if ([(SBFullScreenToHomeSystemApertureSwitcherModifier *)self _shouldApplyEffectsToIndex:?])
  {
    v5 = [(SBFullScreenToHomeSystemApertureSwitcherModifier *)self _systemApertureSettings];
    [(SBFullScreenToHomeSystemApertureSwitcherModifier *)self containerViewBounds];
    x = v25.origin.x;
    y = v25.origin.y;
    width = v25.size.width;
    height = v25.size.height;
    v10 = self->_expandedCardCenter.x;
    v11 = CGRectGetMidX(v25) - v10;
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    v12 = v11 / CGRectGetWidth(v26) * 1.5;
    v13 = tanh(v12 + v12);
    v14 = -v13;
    if (v12 > 0.0)
    {
      v14 = v13;
    }

    v15 = v13 * v14;
    if (self->_jindoIntersectsIntialCardFrame)
    {
      [v5 zoomToJindoStraightSwipeAlternateScale];
    }

    else
    {
      [v5 zoomToJindoStraightSwipeScale];
    }

    v19 = v16;
    v20 = fabs(v15);
    if (v15 >= 1.0)
    {
      v20 = 1.0;
    }

    if (v15 > -1.0)
    {
      v21 = v20;
    }

    else
    {
      v21 = 1.0;
    }

    [v5 zoomToJindoArcSwipeScale];
    v18 = v19 + v21 * (v22 - v19);
  }

  else
  {
    v24.receiver = self;
    v24.super_class = SBFullScreenToHomeSystemApertureSwitcherModifier;
    [(SBFullScreenToHomeSystemApertureSwitcherModifier *)&v24 scaleForIndex:a3];
    return v17;
  }

  return v18;
}

- (id)visibleAppLayouts
{
  v6.receiver = self;
  v6.super_class = SBFullScreenToHomeSystemApertureSwitcherModifier;
  v3 = [(SBFullScreenToHomeSystemApertureSwitcherModifier *)&v6 visibleAppLayouts];
  v4 = [v3 setByAddingObject:self->_appLayout];

  return v4;
}

- (id)visibleHomeAffordanceLayoutElements
{
  if (self->_direction)
  {
    [MEMORY[0x277CBEB98] set];
  }

  else
  {
    [(SBFullScreenToHomeSystemApertureSwitcherModifier *)self visibleAppLayouts];
  }
  v2 = ;

  return v2;
}

- (double)rotationAngleForIndex:(unint64_t)a3
{
  if ([(SBTransitionSwitcherModifier *)self isUpdatingLayout])
  {
    direction = self->_direction;
    v6 = 0.0;
    if ([(SBFullScreenToHomeSystemApertureSwitcherModifier *)self _isIndexZoomAppLayout:a3]&& direction == 1)
    {
      v7 = [(SBFullScreenToHomeSystemApertureSwitcherModifier *)self _systemApertureSettings];
      [(SBFullScreenToHomeSystemApertureSwitcherModifier *)self containerViewBounds];
      x = v20.origin.x;
      y = v20.origin.y;
      width = v20.size.width;
      height = v20.size.height;
      v12 = self->_expandedCardCenter.x;
      v13 = CGRectGetMidX(v20) - v12;
      v21.origin.x = x;
      v21.origin.y = y;
      v21.size.width = width;
      v21.size.height = height;
      v14 = v13 / CGRectGetWidth(v21) * 1.5;
      v15 = tanh(v14 + v14);
      v16 = -v15;
      if (v14 > 0.0)
      {
        v16 = v15;
      }

      v17 = fmin(fmax(v15 * v16, -1.0), 1.0);
      [v7 xDeltaToRotationMappingFactor];
      v6 = v18 * v17 + 0.0;
    }
  }

  else
  {
    [(SBFullScreenToHomeSystemApertureSwitcherModifier *)self _isIndexZoomAppLayout:a3];
    return 0.0;
  }

  return v6;
}

- (id)meshTransformForIndex:(unint64_t)a3
{
  if ([(SBFullScreenToHomeSystemApertureSwitcherModifier *)self _isIndexZoomAppLayout:?])
  {
    if ([(SBTransitionSwitcherModifier *)self isUpdatingLayout]&& self->_direction == 1)
    {
      [(SBFullScreenToHomeSystemApertureSwitcherModifier *)self containerViewBounds];
      x = v19.origin.x;
      y = v19.origin.y;
      width = v19.size.width;
      height = v19.size.height;
      v9 = self->_expandedCardCenter.x;
      v10 = CGRectGetMidX(v19) - v9;
      v20.origin.x = x;
      v20.origin.y = y;
      v20.size.width = width;
      v20.size.height = height;
      v11 = v10 / CGRectGetWidth(v20) * 1.5;
      v12 = tanh(v11 + v11);
      v13 = -v12;
      if (v11 > 0.0)
      {
        v13 = v12;
      }

      v14 = fmin(fmax(v12 * v13, -1.0), 1.0);
      if (self->_tucked)
      {
        [(SBFullScreenToHomeSystemApertureSwitcherModifier *)self _tuckInAtEndMeshForNormalizedXDelta:v14];
      }

      else
      {
        [(SBFullScreenToHomeSystemApertureSwitcherModifier *)self _collapseMeshForNormalizedXDelta:v14];
      }
      v15 = ;
    }

    else
    {
      v15 = [(SBFullScreenToHomeSystemApertureSwitcherModifier *)self _expandMeshForIndex:a3];
    }
  }

  else
  {
    v17.receiver = self;
    v17.super_class = SBFullScreenToHomeSystemApertureSwitcherModifier;
    v15 = [(SBFullScreenToHomeSystemApertureSwitcherModifier *)&v17 meshTransformForIndex:a3];
  }

  return v15;
}

- (CGRect)rootContentViewMaskRect
{
  if ([(SBTransitionSwitcherModifier *)self isPreparingLayout])
  {
    v3 = self->_direction == 1;
  }

  else
  {
    v3 = 0;
  }

  if (self->_shouldClipRegionAboveSystemAperture)
  {
    v17.receiver = self;
    v17.super_class = SBFullScreenToHomeSystemApertureSwitcherModifier;
    [(SBFullScreenToHomeSystemApertureSwitcherModifier *)&v17 rootContentViewMaskRect];
    [(SBFullScreenToHomeSystemApertureSwitcherModifier *)self containerViewBounds];
    v8 = v4;
    v9 = v5;
    v10 = v6;
    v11 = v7;
    if (!v3)
    {
      [(SBFullScreenToHomeSystemApertureSwitcherModifier *)self systemApertureDefaultFrame];
      CGRectGetMidY(v18);
      v4 = v8;
      v5 = v9;
      v6 = v10;
      v7 = v11;
    }

    CGRectGetWidth(*&v4);
    UIRectInset();
  }

  else
  {
    v16.receiver = self;
    v16.super_class = SBFullScreenToHomeSystemApertureSwitcherModifier;
    [(SBFullScreenToHomeSystemApertureSwitcherModifier *)&v16 rootContentViewMaskRect];
  }

  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (double)rootContentViewBlurRadius
{
  if ([(SBTransitionSwitcherModifier *)self isPreparingLayout])
  {
    v3 = self->_direction == 0;
  }

  else
  {
    v3 = 0;
  }

  if ([(SBTransitionSwitcherModifier *)self isUpdatingLayout])
  {
    v4 = self->_direction == 1;
  }

  else
  {
    v4 = 0;
  }

  if (![(SBTransitionSwitcherModifier *)self isUpdatingLayout])
  {
    if (!v3 && !v4)
    {
      goto LABEL_15;
    }

LABEL_14:
    v9 = [(SBFullScreenToHomeSystemApertureSwitcherModifier *)self _systemApertureSettings];
    [v9 zoomToFromJindoMaxBlurRadius];
    v7 = v10;

    return v7;
  }

  if (v3 || v4)
  {
    goto LABEL_14;
  }

  if (self->_direction)
  {
LABEL_15:
    v13.receiver = self;
    v13.super_class = SBFullScreenToHomeSystemApertureSwitcherModifier;
    [(SBFullScreenToHomeSystemApertureSwitcherModifier *)&v13 rootContentViewBlurRadius];
    return v11;
  }

  v5 = [(SBFullScreenToHomeSystemApertureSwitcherModifier *)self _systemApertureSettings];
  v6 = v5;
  v7 = 0.0;
  if (!self->_unblurred)
  {
    [v5 zoomToFromJindoMaxBlurRadius];
    v7 = v8;
  }

  return v7;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = SBFullScreenToHomeSystemApertureSwitcherModifier;
  v5 = [(SBTransitionSwitcherModifier *)&v33 animationAttributesForLayoutElement:v4];
  v6 = [v5 mutableCopy];

  if ([(SBTransitionSwitcherModifier *)self isUpdatingLayout])
  {
    v7 = self->_direction == 1;
  }

  else
  {
    v7 = 0;
  }

  if ([(SBTransitionSwitcherModifier *)self isPreparingLayout])
  {
    v8 = self->_direction == 0;
  }

  else
  {
    v8 = 0;
  }

  if ([(SBTransitionSwitcherModifier *)self isUpdatingLayout])
  {
    v9 = self->_direction == 0;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(SBFullScreenToHomeSystemApertureSwitcherModifier *)self _systemApertureSettings];
  v11 = v10;
  if (self->_appLayout == v4)
  {
    if (v7)
    {
      if (self->_jindoIntersectsIntialCardFrame)
      {
        v16 = [v10 zoomToJindoLayoutAlternateSettings];
        [v6 setLayoutSettings:v16];

        v17 = [v11 zoomToJindoPositionAlternateSettings];
        [v6 setPositionSettings:v17];

        [v11 zoomToJindoScaleAndRotateAlternateSettings];
      }

      else
      {
        v21 = [v10 zoomToJindoLayoutSettings];
        [v6 setLayoutSettings:v21];

        v22 = [v11 zoomToJindoPositionSettings];
        [v6 setPositionSettings:v22];

        [v11 zoomToJindoScaleAndRotateSettings];
      }
      v23 = ;
      [v6 setScaleSettings:v23];

      v24 = [v11 zoomToAndFromJindoMeshSettings];
      [v6 setMeshSettings:v24];

      v25 = [v11 zoomToJindoCornerRadiusSettings];
    }

    else
    {
      if (v8)
      {
        [v6 setLayoutUpdateMode:2];
        [v6 setPositionUpdateMode:2];
        [v6 setScaleUpdateMode:2];
        [v6 setMeshUpdateMode:2];
        [v6 setCornerRadiusUpdateMode:2];
        [v6 setUpdateMode:2];
        goto LABEL_30;
      }

      v26 = [v10 zoomFromJindoLayoutSettings];
      [v6 setLayoutSettings:v26];

      v27 = [v11 zoomFromJindoPositionSettings];
      [v6 setPositionSettings:v27];

      v28 = [v11 zoomFromJindoScaleAndRotateSettings];
      [v6 setScaleSettings:v28];

      v29 = [v11 zoomToAndFromJindoMeshSettings];
      [v6 setMeshSettings:v29];

      v25 = [v11 zoomFromJindoCornerRadiusSettings];
    }

    v30 = v25;
    [v6 setCornerRadiusSettings:v25];
  }

  else if ([(SBAppLayout *)v4 switcherLayoutElementType]== 5)
  {
    if (v7)
    {
      v12 = [v11 zoomToJindoBlurAnimationSettings];
      [v6 setLayoutSettings:v12];

      [v6 setLayoutUpdateMode:3];
      v13 = [v11 zoomToJindoTopClippingSettings];
      [v6 setClippingSettings:v13];

      v14 = v6;
      v15 = 3;
    }

    else
    {
      if (v8 || v9 && !self->_unblurred)
      {
        v18 = [v11 zoomFromJindoBlurAnimationSettings];
        [v6 setLayoutSettings:v18];

        v19 = v6;
        v20 = 1;
      }

      else
      {
        v31 = [v11 zoomFromJindoBlurAnimationSettings];
        [v6 setLayoutSettings:v31];

        v19 = v6;
        v20 = 3;
      }

      [v19 setLayoutUpdateMode:v20];
      v14 = v6;
      v15 = 2;
    }

    [v14 setClippingUpdateMode:v15];
  }

LABEL_30:

  return v6;
}

- (CGPoint)expandedSourcePositionForSystemApertureTransition
{
  v5.receiver = self;
  v5.super_class = SBFullScreenToHomeSystemApertureSwitcherModifier;
  [(SBFullScreenToHomeSystemApertureSwitcherModifier *)&v5 expandedSourcePositionForSystemApertureTransition];
  [(SBFullScreenToHomeSystemApertureSwitcherModifier *)self switcherViewBounds];
  if ([(SBTransitionSwitcherModifier *)self isUpdatingLayout]&& self->_direction == 1)
  {
    x = self->_expandedCardCenter.x;
    y = self->_expandedCardCenter.y;
  }

  else
  {
    UIRectGetCenter();
  }

  result.y = y;
  result.x = x;
  return result;
}

- (id)repositionProgressNotificationsForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v28[4] = *MEMORY[0x277D85DE8];
  v26.receiver = self;
  v26.super_class = SBFullScreenToHomeSystemApertureSwitcherModifier;
  v6 = a4;
  v7 = [(SBFullScreenToHomeSystemApertureSwitcherModifier *)&v26 repositionProgressNotificationsForLayoutRole:a3 inAppLayout:v6];
  if ([(SBTransitionSwitcherModifier *)self isUpdatingLayout])
  {
    v8 = self->_direction == 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(SBFullScreenToHomeSystemApertureSwitcherModifier *)self _systemApertureSettings];
  v10 = [(SBAppLayout *)self->_appLayout isEqual:v6];

  if (v10)
  {
    if (v8)
    {
      [v9 zoomToJindoBeginShowingShadowThreshold];
      v12 = v11;
      [v9 zoomToJindoEndShowingShadowThreshold];
      v14 = v13;
      [v9 zoomToJindoBounceThreshold];
      v16 = v15;
      [v9 zoomToJindoTuckInThreshold];
      v17 = [MEMORY[0x277CCABB0] numberWithDouble:?];
      v28[0] = v17;
      v18 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
      v28[1] = v18;
      v19 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
      v28[2] = v19;
      v20 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
      v28[3] = v20;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
      v22 = [v7 setByAddingObjectsFromArray:v21];

      v7 = v20;
    }

    else
    {
      [v9 zoomToJindoBounceThreshold];
      v24 = v23;
      [v9 zoomFromJindoBeginUnblurringProgressThreshold];
      v17 = [MEMORY[0x277CCABB0] numberWithDouble:?];
      v27[0] = v17;
      v18 = [MEMORY[0x277CCABB0] numberWithDouble:v24];
      v27[1] = v18;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
      v22 = [v7 setByAddingObjectsFromArray:v19];
    }

    v7 = v22;
  }

  return v7;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3
{
  if ([(SBTransitionSwitcherModifier *)self isPreparingLayout])
  {
    v5 = self->_direction == 0;
  }

  else
  {
    v5 = 0;
  }

  if ([(SBTransitionSwitcherModifier *)self isUpdatingLayout])
  {
    v6 = self->_direction == 1;
  }

  else
  {
    v6 = 0;
  }

  if ([(SBFullScreenToHomeSystemApertureSwitcherModifier *)self _isIndexZoomAppLayout:a3]&& (v5 || v6))
  {
    v7 = [(SBFullScreenToHomeSystemApertureSwitcherModifier *)self _systemApertureSettings];
    [v7 zoomToFromJindoMaxCornerRadius];
    SBRectCornerRadiiForRadius();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = v9;
    v17 = v11;
    v18 = v13;
    v19 = v15;
  }

  else
  {
    [(SBFullScreenToHomeSystemApertureSwitcherModifier *)self displayCornerRadius];

    SBRectCornerRadiiForRadius();
  }

  result.topRight = v19;
  result.bottomRight = v18;
  result.bottomLeft = v17;
  result.topLeft = v16;
  return result;
}

- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  v8 = a4;
  v9 = 1.0;
  if (![(SBFullScreenToHomeSystemApertureSwitcherModifier *)self _shouldApplyEffectsToIndex:a5])
  {
    v12.receiver = self;
    v12.super_class = SBFullScreenToHomeSystemApertureSwitcherModifier;
    [(SBFullScreenToHomeSystemApertureSwitcherModifier *)&v12 opacityForLayoutRole:a3 inAppLayout:v8 atIndex:a5];
    v9 = v10;
  }

  return v9;
}

- (id)systemApertureTransitioningAppLayouts
{
  v6.receiver = self;
  v6.super_class = SBFullScreenToHomeSystemApertureSwitcherModifier;
  v3 = [(SBFullScreenToHomeSystemApertureSwitcherModifier *)&v6 systemApertureTransitioningAppLayouts];
  v4 = [v3 setByAddingObject:self->_appLayout];

  return v4;
}

- (BOOL)systemApertureRequiresHeavyShadowForTransition
{
  v5.receiver = self;
  v5.super_class = SBFullScreenToHomeSystemApertureSwitcherModifier;
  return [(SBFullScreenToHomeSystemApertureSwitcherModifier *)&v5 systemApertureRequiresHeavyShadowForTransition]|| self->_showShadow;
}

- (id)topMostLayoutElements
{
  v6.receiver = self;
  v6.super_class = SBFullScreenToHomeSystemApertureSwitcherModifier;
  v3 = [(SBFullScreenToHomeSystemApertureSwitcherModifier *)&v6 topMostLayoutElements];
  v4 = [v3 sb_arrayByInsertingOrMovingObject:self->_appLayout toIndex:0];

  return v4;
}

- (id)_systemApertureSettings
{
  v2 = [(SBFullScreenToHomeSystemApertureSwitcherModifier *)self switcherSettings];
  v3 = [v2 systemApertureSettings];

  return v3;
}

- (CGPoint)_collapsedTransitionTargetForZoomDown:(BOOL)a3
{
  v3 = a3;
  [(SBFullScreenToHomeSystemApertureSwitcherModifier *)self containerViewBounds];
  SBRectWithSize();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  UIRectGetCenter();
  v14 = v13;
  v16 = v15;
  if (v3)
  {
    v17 = [(SBFullScreenToHomeSystemApertureSwitcherModifier *)self _systemApertureSettings];
    v37.origin.x = v6;
    v37.origin.y = v8;
    v37.size.width = v10;
    v37.size.height = v12;
    Height = CGRectGetHeight(v37);
    [v17 zoomToJindoTargetYDisplacement];
    v34 = v16 - Height * v19;
    [(SBFullScreenToHomeSystemApertureSwitcherModifier *)self containerViewBounds];
    x = v38.origin.x;
    y = v38.origin.y;
    width = v38.size.width;
    v35 = v14;
    v23 = v38.size.height;
    v32 = self->_expandedCardCenter.x;
    v33 = CGRectGetMidX(v38) - v32;
    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = v23;
    v24 = v33 / CGRectGetWidth(v39) * 1.5;
    v25 = tanh(v24 + v24);
    v26 = -v25;
    if (v24 > 0.0)
    {
      v26 = v25;
    }

    v27 = fmin(fmax(v25 * v26, -1.0), 1.0);
    v40.origin.x = v6;
    v40.origin.y = v8;
    v40.size.width = v10;
    v40.size.height = v12;
    v28 = CGRectGetWidth(v40);
    [v17 zoomToJindoTargetXDisplacement];
    v14 = v35 + v28 * v29 * v27;

    v30 = v34;
  }

  else
  {
    v41.origin.x = v6;
    v41.origin.y = v8;
    v41.size.width = v10;
    v41.size.height = v12;
    v30 = v16 + CGRectGetHeight(v41) * -0.5;
  }

  v31 = v14;
  result.y = v30;
  result.x = v31;
  return result;
}

- (BOOL)_shouldApplyEffectsToIndex:(unint64_t)a3
{
  v5 = [(SBFullScreenToHomeSystemApertureSwitcherModifier *)self _isEffectivelyHome];
  if (v5)
  {

    LOBYTE(v5) = [(SBFullScreenToHomeSystemApertureSwitcherModifier *)self _isIndexZoomAppLayout:a3];
  }

  return v5;
}

- (BOOL)_isIndexZoomAppLayout:(unint64_t)a3
{
  v4 = self;
  v5 = [(SBFullScreenToHomeSystemApertureSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  LOBYTE(v4) = [v6 isEqual:v4->_appLayout];
  return v4;
}

- (BOOL)_isEffectivelyHome
{
  if ([(SBTransitionSwitcherModifier *)self isPreparingLayout])
  {
    v3 = self->_direction == 0;
  }

  else
  {
    v3 = 0;
  }

  if ([(SBTransitionSwitcherModifier *)self isUpdatingLayout])
  {
    v4 = self->_direction == 1;
  }

  else
  {
    v4 = 0;
  }

  return v3 || v4;
}

- (id)_collapseMeshForNormalizedXDelta:(double)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v12[0] = 0;
  v12[1] = 0;
  if (a3 <= 0.0)
  {
    v13 = a3 * 0.9 + 0.0 + 0.1;
    v14 = a3 * -0.2 + 0.0;
    v15 = xmmword_21F8A6540;
    v16 = 0;
    v17 = a3 + 0.5;
    v18 = 0;
    v3 = 1.2;
  }

  else
  {
    v13 = a3 * 1.2 + 0.0 + 0.1;
    v14 = a3 * -0.2 + 0.0;
    v15 = xmmword_21F8A6540;
    v16 = 0;
    v17 = a3 + 0.5;
    v18 = 0;
    v3 = 0.9;
  }

  v19 = xmmword_21F8A6550;
  v20 = 0;
  v21 = a3 * v3 + 1.0 + -0.1;
  v22 = a3 * 0.2 + 0.0;
  v23 = 0;
  v24 = 0;
  v25 = xmmword_21F8A6560;
  v26 = xmmword_21F8A6570;
  __asm { FMOV            V1.2D, #0.5 }

  v27 = _Q1;
  v28 = _Q1;
  v29 = xmmword_21F8A6580;
  v30 = xmmword_21F8A6590;
  v32 = 0;
  v33 = 0;
  v31 = 0x3FE0000000000000;
  v34 = xmmword_21F8A65A0;
  v35 = a3 * 0.1 + 1.1;
  v36 = xmmword_21F8A6540;
  v37 = xmmword_21F8A65B0;
  __asm { FMOV            V2.2D, #1.0 }

  v38 = xmmword_21F8A65C0;
  v39 = _Q2;
  v40 = 0x3FF0000000000000;
  v41 = v35;
  v42 = 0;
  v43 = xmmword_21F8A65D0;
  v44 = 0;
  v45 = 0;
  v46 = xmmword_21F8A65E0;
  v47 = 0;
  v48 = 0;
  v49 = xmmword_21F8A65F0;
  v50 = 0;
  v51 = 0;
  v52 = xmmword_21F8A6600;
  v53 = 0;
  v54 = 0;
  v10 = [MEMORY[0x277CD9F00] meshTransformWithVertexCount:9 vertices:v12 faceCount:4 faces:&v43 depthNormalization:*MEMORY[0x277CDA150]];

  return v10;
}

- (id)_tuckInAtEndMeshForNormalizedXDelta:(double)a3
{
  v4 = [(SBFullScreenToHomeSystemApertureSwitcherModifier *)self _collapseMeshForNormalizedXDelta:?];
  v5 = [v4 mutableCopy];
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  if (v4)
  {
    [v4 vertexAtIndex:6];
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    [v4 vertexAtIndex:8];
  }

  else
  {
    v12 = 0;
    v10 = 0uLL;
    v11 = 0uLL;
  }

  *&v14 = 0.06 - a3 * 0.2;
  *&v11 = 0.94 - a3 * 0.2;
  v7 = v13;
  v8 = v14;
  v9 = v15;
  [v5 replaceVertexAtIndex:6 withVertex:&v7];
  v7 = v10;
  v8 = v11;
  v9 = v12;
  [v5 replaceVertexAtIndex:8 withVertex:&v7];

  return v5;
}

- (id)_blurItemContainerParameters
{
  v3 = [(SBFullScreenToHomeSystemApertureSwitcherModifier *)self _systemApertureSettings];
  direction = self->_direction;
  v5 = [SBBlurItemContainerParameters alloc];
  [v3 zoomToFromJindoMaxBlurRadius];
  v7 = v6;
  [(SBFullScreenToHomeSystemApertureSwitcherModifier *)self screenScale];
  v9 = v8;
  if (direction == 1)
  {
    [v3 zoomToJindoBlurAnimationSettings];
  }

  else
  {
    [v3 zoomFromJindoBlurAnimationSettings];
  }
  v10 = ;
  v11 = [(SBBlurItemContainerParameters *)v5 initWithBlurRadius:1 shouldRasterize:1 rasterizationScale:1 inputQuality:v10 inputIntermediateBitDepth:v7 blurAnimationSettings:v9];

  return v11;
}

- (void)initWithTransitionID:(uint64_t)a1 zoomModifier:(uint64_t)a2 appLayout:direction:expandedCardFrame:cardScale:cardVelocity:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFullScreenToHomeSystemApertureSwitcherModifier.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"appLayout != nil"}];
}

@end