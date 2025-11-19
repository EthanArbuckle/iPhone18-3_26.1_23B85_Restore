@interface SBFullScreenToPeekSwitcherModifier
- (BOOL)_isPeekingAppLayout:(id)a3;
- (BOOL)isContainerStatusBarVisible;
- (BOOL)isLayoutRoleBlurred:(int64_t)a3 inAppLayout:(id)a4;
- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)a3 inAppLayout:(id)a4;
- (CGRect)_firstStageFrameForPeekingAppLayoutWithInitialFrame:(CGRect)a3;
- (CGRect)frameForIndex:(unint64_t)a3;
- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5;
- (SBFullScreenToPeekSwitcherModifier)initWithTransitionID:(id)a3 fromAppLayout:(id)a4 toAppLayout:(id)a5 fromFloatingAppLayout:(id)a6 toFloatingAppLayout:(id)a7 peekConfiguration:(int64_t)a8;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3;
- (double)blurDelayForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (double)homeScreenAlpha;
- (double)homeScreenBackdropBlurProgress;
- (double)homeScreenDimmingAlpha;
- (double)homeScreenScale;
- (double)scaleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (double)wallpaperScale;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)handleResizeProgressEvent:(id)a3;
- (id)handleSceneReadyEvent:(id)a3;
- (id)handleTimerEvent:(id)a3;
- (id)keyboardSuppressionMode;
- (id)resizeProgressNotificationsForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (id)transitionDidEnd;
- (id)transitionWillBegin;
- (id)transitionWillUpdate;
- (void)didMoveToParentModifier:(id)a3;
@end

@implementation SBFullScreenToPeekSwitcherModifier

- (SBFullScreenToPeekSwitcherModifier)initWithTransitionID:(id)a3 fromAppLayout:(id)a4 toAppLayout:(id)a5 fromFloatingAppLayout:(id)a6 toFloatingAppLayout:(id)a7 peekConfiguration:(int64_t)a8
{
  v21 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (v15 | v17)
  {
    if (!v14)
    {
      goto LABEL_5;
    }
  }

  else
  {
    [SBFullScreenToPeekSwitcherModifier initWithTransitionID:v21 fromAppLayout:self toAppLayout:? fromFloatingAppLayout:? toFloatingAppLayout:? peekConfiguration:?];
    if (!v14)
    {
      goto LABEL_5;
    }
  }

  if ([v14 configuration] != 1)
  {
    [SBFullScreenToPeekSwitcherModifier initWithTransitionID:v21 fromAppLayout:self toAppLayout:? fromFloatingAppLayout:? toFloatingAppLayout:? peekConfiguration:?];
  }

LABEL_5:
  v23.receiver = self;
  v23.super_class = SBFullScreenToPeekSwitcherModifier;
  v18 = [(SBTransitionSwitcherModifier *)&v23 initWithTransitionID:v13, v21];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_fromAppLayout, a4);
    objc_storeStrong(&v19->_toAppLayout, a5);
    objc_storeStrong(&v19->_fromFloatingAppLayout, a6);
    objc_storeStrong(&v19->_toFloatingAppLayout, a7);
    v19->_peekConfiguration = a8;
    v19->_animationPhase = 0;
  }

  return v19;
}

- (void)didMoveToParentModifier:(id)a3
{
  v8.receiver = self;
  v8.super_class = SBFullScreenToPeekSwitcherModifier;
  [(SBChainableModifier *)&v8 didMoveToParentModifier:?];
  if (a3)
  {
    v5 = [(SBFullScreenToPeekSwitcherModifier *)self switcherSettings];
    v6 = [v5 animationSettings];
    v7 = [v6 performTwoPhaseFullScreenToPeekTransition];

    if ((v7 & 1) == 0)
    {
      self->_animationPhase = 1;
    }
  }
}

- (id)transitionWillBegin
{
  v6.receiver = self;
  v6.super_class = SBFullScreenToPeekSwitcherModifier;
  v2 = [(SBTransitionSwitcherModifier *)&v6 transitionWillBegin];
  v3 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:4 updateMode:4];
  v4 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v3 toResponse:v2];

  return v4;
}

- (id)transitionWillUpdate
{
  v13.receiver = self;
  v13.super_class = SBFullScreenToPeekSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v13 transitionWillUpdate];
  if (!self->_animationPhase)
  {
    v4 = [(SBFullScreenToPeekSwitcherModifier *)self switcherSettings];
    v5 = [v4 animationSettings];
    [v5 fullScreenToPeekSecondPhaseAnimationDelay];
    v7 = v6;
    UIAnimationDragCoefficient();
    v9 = v7 * v8;

    v10 = [[SBTimerEventSwitcherEventResponse alloc] initWithDelay:0 validator:@"SBFullScreenToPeekSwitcherModifierTimerEventReason" reason:v9];
    v11 = SBAppendSwitcherModifierResponse(v10, v3);

    v3 = v11;
  }

  return v3;
}

- (id)transitionDidEnd
{
  v9.receiver = self;
  v9.super_class = SBFullScreenToPeekSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v9 transitionDidEnd];
  if (!self->_toFloatingAppLayout)
  {
    v4 = [SBAddModifierSwitcherEventResponse alloc];
    v5 = objc_alloc_init(SBSlideOverAppsInFullScreenSwitcherSwitcherModifier);
    v6 = [(SBAddModifierSwitcherEventResponse *)v4 initWithModifier:v5 level:3];

    v7 = SBAppendSwitcherModifierResponse(v6, v3);

    v3 = v7;
  }

  return v3;
}

- (id)handleTimerEvent:(id)a3
{
  v10.receiver = self;
  v10.super_class = SBFullScreenToPeekSwitcherModifier;
  v4 = a3;
  v5 = [(SBTransitionSwitcherModifier *)&v10 handleTimerEvent:v4];
  v6 = [v4 reason];

  LODWORD(v4) = [v6 isEqualToString:@"SBFullScreenToPeekSwitcherModifierTimerEventReason"];
  if (v4)
  {
    self->_animationPhase = 1;
    v7 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:30 updateMode:3];
    v8 = SBAppendSwitcherModifierResponse(v7, v5);

    v5 = v8;
  }

  return v5;
}

- (id)handleSceneReadyEvent:(id)a3
{
  v3 = self;
  v10.receiver = self;
  v10.super_class = SBFullScreenToPeekSwitcherModifier;
  v4 = a3;
  v5 = [(SBSwitcherModifier *)&v10 handleSceneReadyEvent:v4];
  v6 = [v4 appLayout];

  LODWORD(v3) = [(SBFullScreenToPeekSwitcherModifier *)v3 _isPeekingAppLayout:v6];
  if (v3)
  {
    v7 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:64 updateMode:2];
    v8 = SBAppendSwitcherModifierResponse(v7, v5);

    v5 = v8;
  }

  return v5;
}

- (id)handleResizeProgressEvent:(id)a3
{
  v11.receiver = self;
  v11.super_class = SBFullScreenToPeekSwitcherModifier;
  v4 = a3;
  v5 = [(SBSwitcherModifier *)&v11 handleResizeProgressEvent:v4];
  [v4 progress];

  v6 = [(SBFullScreenToPeekSwitcherModifier *)self medusaSettings];
  [v6 dropAnimationUnblurThresholdPercentage];
  v7 = BSFloatGreaterThanOrEqualToFloat();

  if (v7)
  {
    self->_resizedEnoughToUnblur = 1;
    v8 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:64 updateMode:2];
    v9 = SBAppendSwitcherModifierResponse(v8, v5);

    v5 = v9;
  }

  return v5;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  v5 = [(SBFullScreenToPeekSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if (-[SBTransitionSwitcherModifier isUpdatingLayout](self, "isUpdatingLayout") && -[SBFullScreenToPeekSwitcherModifier _isPeekingAppLayout:](self, "_isPeekingAppLayout:", v6) && [v6 environment] == 2 && !self->_animationPhase)
  {
    v20.receiver = self;
    v20.super_class = SBFullScreenToPeekSwitcherModifier;
    [(SBFullScreenToPeekSwitcherModifier *)&v20 frameForIndex:a3];
    [(SBFullScreenToPeekSwitcherModifier *)self _firstStageFrameForPeekingAppLayoutWithInitialFrame:?];
  }

  else
  {
    v19.receiver = self;
    v19.super_class = SBFullScreenToPeekSwitcherModifier;
    [(SBFullScreenToPeekSwitcherModifier *)&v19 frameForIndex:a3];
  }

  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;

  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a4;
  if (-[SBTransitionSwitcherModifier isUpdatingLayout](self, "isUpdatingLayout") && -[SBFullScreenToPeekSwitcherModifier _isPeekingAppLayout:](self, "_isPeekingAppLayout:", v11) && [v11 environment] != 2 && !self->_animationPhase)
  {
    v25.receiver = self;
    v25.super_class = SBFullScreenToPeekSwitcherModifier;
    [(SBFullScreenToPeekSwitcherModifier *)&v25 frameForLayoutRole:a3 inAppLayout:v11 withBounds:x, y, width, height];
    [(SBFullScreenToPeekSwitcherModifier *)self _firstStageFrameForPeekingAppLayoutWithInitialFrame:?];
  }

  else
  {
    v24.receiver = self;
    v24.super_class = SBFullScreenToPeekSwitcherModifier;
    [(SBFullScreenToPeekSwitcherModifier *)&v24 frameForLayoutRole:a3 inAppLayout:v11 withBounds:x, y, width, height];
  }

  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = v15;

  v20 = v16;
  v21 = v17;
  v22 = v18;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CGRect)_firstStageFrameForPeekingAppLayoutWithInitialFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  peekConfiguration = self->_peekConfiguration;
  v8 = [(SBFullScreenToPeekSwitcherModifier *)self isRTLEnabled];
  v9 = 2;
  if (v8)
  {
    v9 = 3;
  }

  if (peekConfiguration == v9)
  {
    v10 = 0.0;
    v11 = -1.0;
  }

  else
  {
    v18.receiver = self;
    v18.super_class = SBFullScreenToPeekSwitcherModifier;
    [(SBFullScreenToPeekSwitcherModifier *)&v18 switcherViewBounds];
    v10 = v12 - width;
    v11 = 1.0;
  }

  [(SBFullScreenToPeekSwitcherModifier *)self _firstPhaseScale];
  v14 = v10 + (width * (1.0 - v13) * 0.5 + -12.0) * v11;
  v15 = y;
  v16 = width;
  v17 = height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (double)scaleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  if ([(SBTransitionSwitcherModifier *)self isUpdatingLayout]&& [(SBFullScreenToPeekSwitcherModifier *)self _isPeekingAppLayout:v6]&& !self->_animationPhase)
  {
    [(SBFullScreenToPeekSwitcherModifier *)self _firstPhaseScale];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBFullScreenToPeekSwitcherModifier;
    [(SBFullScreenToPeekSwitcherModifier *)&v10 scaleForLayoutRole:a3 inAppLayout:v6];
  }

  v8 = v7;

  return v8;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3
{
  if (self->_animationPhase)
  {
    v7.receiver = self;
    v7.super_class = SBFullScreenToPeekSwitcherModifier;
    [(SBFullScreenToPeekSwitcherModifier *)&v7 cornerRadiiForIndex:a3];
  }

  else
  {
    [(SBFullScreenToPeekSwitcherModifier *)self displayCornerRadius];

    SBRectCornerRadiiForRadius();
  }

  result.topRight = v6;
  result.bottomRight = v5;
  result.bottomLeft = v4;
  result.topLeft = v3;
  return result;
}

- (double)homeScreenAlpha
{
  if (self->_animationPhase)
  {
    v7.receiver = self;
    v7.super_class = SBFullScreenToPeekSwitcherModifier;
    [(SBFullScreenToPeekSwitcherModifier *)&v7 homeScreenAlpha];
  }

  else
  {
    v3 = [(SBFullScreenToPeekSwitcherModifier *)self switcherSettings];
    v4 = [v3 animationSettings];
    [v4 homeScreenOpacityInApplication];
    v6 = v5;

    return v6;
  }

  return result;
}

- (double)homeScreenScale
{
  if (self->_animationPhase)
  {
    v7.receiver = self;
    v7.super_class = SBFullScreenToPeekSwitcherModifier;
    [(SBFullScreenToPeekSwitcherModifier *)&v7 homeScreenScale];
  }

  else
  {
    v3 = [(SBFullScreenToPeekSwitcherModifier *)self switcherSettings];
    v4 = [v3 animationSettings];
    [v4 homeScreenScaleInApplication];
    v6 = v5;

    return v6;
  }

  return result;
}

- (double)homeScreenDimmingAlpha
{
  if (self->_animationPhase)
  {
    v8.receiver = self;
    v8.super_class = SBFullScreenToPeekSwitcherModifier;
    [(SBFullScreenToPeekSwitcherModifier *)&v8 homeScreenDimmingAlpha];
    return v2;
  }

  else
  {
    v4 = [(SBFullScreenToPeekSwitcherModifier *)self switcherSettings];
    v5 = [v4 animationSettings];
    [v5 dimmingAlphaInApplication];
    v3 = v6 * 0.5;
  }

  return v3;
}

- (double)homeScreenBackdropBlurProgress
{
  if (self->_animationPhase)
  {
    v7.receiver = self;
    v7.super_class = SBFullScreenToPeekSwitcherModifier;
    [(SBFullScreenToPeekSwitcherModifier *)&v7 homeScreenBackdropBlurProgress];
  }

  else
  {
    v3 = [(SBFullScreenToPeekSwitcherModifier *)self switcherSettings];
    v4 = [v3 animationSettings];
    [v4 homeScreenBlurInApplication];
    v6 = v5;

    return v6;
  }

  return result;
}

- (double)wallpaperScale
{
  if (self->_animationPhase)
  {
    v7.receiver = self;
    v7.super_class = SBFullScreenToPeekSwitcherModifier;
    [(SBFullScreenToPeekSwitcherModifier *)&v7 wallpaperScale];
  }

  else
  {
    v3 = [(SBFullScreenToPeekSwitcherModifier *)self switcherSettings];
    v4 = [v3 animationSettings];
    [v4 wallpaperScaleInApplication];
    v6 = v5;

    return v6;
  }

  return result;
}

- (BOOL)isContainerStatusBarVisible
{
  if (!self->_animationPhase)
  {
    return 0;
  }

  v3.receiver = self;
  v3.super_class = SBFullScreenToPeekSwitcherModifier;
  return [(SBFullScreenToPeekSwitcherModifier *)&v3 isContainerStatusBarVisible];
}

- (id)keyboardSuppressionMode
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(SBFullScreenToPeekSwitcherModifier *)self appLayouts];
  v4 = [v2 setWithArray:v3];
  v5 = [SBSwitcherKeyboardSuppressionMode newSuppressionModeForSwitcherScenesFromAppLayouts:v4];

  [v5 setApplyAssertionEvenIfAppIsHostingTheKeyboard:1];

  return v5;
}

- (id)resizeProgressNotificationsForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v17[3] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = SBFullScreenToPeekSwitcherModifier;
  v6 = a4;
  v7 = [(SBFullScreenToPeekSwitcherModifier *)&v16 resizeProgressNotificationsForLayoutRole:a3 inAppLayout:v6];
  v8 = [(SBFullScreenToPeekSwitcherModifier *)self _isPeekingAppLayout:v6, v16.receiver, v16.super_class];

  if (v8)
  {
    v9 = [(SBFullScreenToPeekSwitcherModifier *)self medusaSettings];
    [v9 dropAnimationUnblurThresholdPercentage];
    v11 = v10;

    v17[0] = &unk_28336F630;
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
    v17[1] = v12;
    v17[2] = &unk_28336F640;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
    v14 = [v7 setByAddingObjectsFromArray:v13];

    v7 = v14;
  }

  return v7;
}

- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)a3 inAppLayout:(id)a4
{
  v5 = self;
  v8.receiver = self;
  v8.super_class = SBFullScreenToPeekSwitcherModifier;
  v6 = a4;
  LOBYTE(a3) = [(SBFullScreenToPeekSwitcherModifier *)&v8 isLayoutRoleMatchMovedToScene:a3 inAppLayout:v6];
  LOBYTE(v5) = [(SBFullScreenToPeekSwitcherModifier *)v5 _isPeekingAppLayout:v6, v8.receiver, v8.super_class];

  return (v5 | a3) & 1;
}

- (BOOL)isLayoutRoleBlurred:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  v9.receiver = self;
  v9.super_class = SBFullScreenToPeekSwitcherModifier;
  v7 = [(SBFullScreenToPeekSwitcherModifier *)&v9 isLayoutRoleBlurred:a3 inAppLayout:v6];
  if ([(SBFullScreenToPeekSwitcherModifier *)self _isPeekingAppLayout:v6])
  {
    if ([(SBFullScreenToPeekSwitcherModifier *)self isLayoutRoleContentReady:a3 inAppLayout:v6])
    {
      v7 = !self->_resizedEnoughToUnblur;
    }

    else
    {
      v7 = 1;
    }
  }

  return v7;
}

- (double)blurDelayForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v13.receiver = self;
  v13.super_class = SBFullScreenToPeekSwitcherModifier;
  v6 = a4;
  [(SBFullScreenToPeekSwitcherModifier *)&v13 blurDelayForLayoutRole:a3 inAppLayout:v6];
  v8 = v7;
  LODWORD(a3) = [(SBFullScreenToPeekSwitcherModifier *)self _isPeekingAppLayout:v6, v13.receiver, v13.super_class];

  if (a3)
  {
    v9 = [(SBFullScreenToPeekSwitcherModifier *)self switcherSettings];
    v10 = [v9 animationSettings];
    [v10 resizeBlurDelay];
    v8 = v11;
  }

  return v8;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v11.receiver = self;
  v11.super_class = SBFullScreenToPeekSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v11 animationAttributesForLayoutElement:a3];
  v5 = [v4 mutableCopy];

  v6 = [(SBFullScreenToPeekSwitcherModifier *)self switcherSettings];
  v7 = [v6 animationSettings];

  if ([v7 performTwoPhaseFullScreenToPeekTransition])
  {
    if (self->_animationPhase)
    {
      [v7 fullScreenToPeekSecondPhaseAnimationSettings];
    }

    else
    {
      [v7 fullScreenToPeekFirstPhaseAnimationSettings];
    }
    v8 = ;
  }

  else
  {
    v8 = [v7 zoomUpSettings];
  }

  v9 = v8;
  [v5 setLayoutSettings:v8];

  return v5;
}

- (BOOL)_isPeekingAppLayout:(id)a3
{
  v4 = a3;
  toAppLayout = self->_toAppLayout;
  if (toAppLayout && self->_toFloatingAppLayout)
  {
    v6 = toAppLayout == v4;
  }

  else
  {
    if (toAppLayout == v4)
    {
      v7 = 1;
      goto LABEL_10;
    }

    v6 = self->_toFloatingAppLayout == v4;
  }

  v7 = v6;
LABEL_10:

  return v7;
}

- (void)initWithTransitionID:(uint64_t)a1 fromAppLayout:(uint64_t)a2 toAppLayout:fromFloatingAppLayout:toFloatingAppLayout:peekConfiguration:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFullScreenToPeekSwitcherModifier.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"toAppLayout || toFloatingAppLayout"}];
}

- (void)initWithTransitionID:(uint64_t)a1 fromAppLayout:(uint64_t)a2 toAppLayout:fromFloatingAppLayout:toFloatingAppLayout:peekConfiguration:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFullScreenToPeekSwitcherModifier.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"[fromAppLayout configuration] == SBAppLayoutConfigurationFull"}];
}

@end