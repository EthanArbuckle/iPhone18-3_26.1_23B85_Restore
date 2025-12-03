@interface SBFullScreenToPeekSwitcherModifier
- (BOOL)_isPeekingAppLayout:(id)layout;
- (BOOL)isContainerStatusBarVisible;
- (BOOL)isLayoutRoleBlurred:(int64_t)blurred inAppLayout:(id)layout;
- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)scene inAppLayout:(id)layout;
- (CGRect)_firstStageFrameForPeekingAppLayoutWithInitialFrame:(CGRect)frame;
- (CGRect)frameForIndex:(unint64_t)index;
- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds;
- (SBFullScreenToPeekSwitcherModifier)initWithTransitionID:(id)d fromAppLayout:(id)layout toAppLayout:(id)appLayout fromFloatingAppLayout:(id)floatingAppLayout toFloatingAppLayout:(id)toFloatingAppLayout peekConfiguration:(int64_t)configuration;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index;
- (double)blurDelayForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (double)homeScreenAlpha;
- (double)homeScreenBackdropBlurProgress;
- (double)homeScreenDimmingAlpha;
- (double)homeScreenScale;
- (double)scaleForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (double)wallpaperScale;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)handleResizeProgressEvent:(id)event;
- (id)handleSceneReadyEvent:(id)event;
- (id)handleTimerEvent:(id)event;
- (id)keyboardSuppressionMode;
- (id)resizeProgressNotificationsForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (id)transitionDidEnd;
- (id)transitionWillBegin;
- (id)transitionWillUpdate;
- (void)didMoveToParentModifier:(id)modifier;
@end

@implementation SBFullScreenToPeekSwitcherModifier

- (SBFullScreenToPeekSwitcherModifier)initWithTransitionID:(id)d fromAppLayout:(id)layout toAppLayout:(id)appLayout fromFloatingAppLayout:(id)floatingAppLayout toFloatingAppLayout:(id)toFloatingAppLayout peekConfiguration:(int64_t)configuration
{
  v21 = a2;
  dCopy = d;
  layoutCopy = layout;
  appLayoutCopy = appLayout;
  floatingAppLayoutCopy = floatingAppLayout;
  toFloatingAppLayoutCopy = toFloatingAppLayout;
  if (appLayoutCopy | toFloatingAppLayoutCopy)
  {
    if (!layoutCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    [SBFullScreenToPeekSwitcherModifier initWithTransitionID:v21 fromAppLayout:self toAppLayout:? fromFloatingAppLayout:? toFloatingAppLayout:? peekConfiguration:?];
    if (!layoutCopy)
    {
      goto LABEL_5;
    }
  }

  if ([layoutCopy configuration] != 1)
  {
    [SBFullScreenToPeekSwitcherModifier initWithTransitionID:v21 fromAppLayout:self toAppLayout:? fromFloatingAppLayout:? toFloatingAppLayout:? peekConfiguration:?];
  }

LABEL_5:
  v23.receiver = self;
  v23.super_class = SBFullScreenToPeekSwitcherModifier;
  v18 = [(SBTransitionSwitcherModifier *)&v23 initWithTransitionID:dCopy, v21];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_fromAppLayout, layout);
    objc_storeStrong(&v19->_toAppLayout, appLayout);
    objc_storeStrong(&v19->_fromFloatingAppLayout, floatingAppLayout);
    objc_storeStrong(&v19->_toFloatingAppLayout, toFloatingAppLayout);
    v19->_peekConfiguration = configuration;
    v19->_animationPhase = 0;
  }

  return v19;
}

- (void)didMoveToParentModifier:(id)modifier
{
  v8.receiver = self;
  v8.super_class = SBFullScreenToPeekSwitcherModifier;
  [(SBChainableModifier *)&v8 didMoveToParentModifier:?];
  if (modifier)
  {
    switcherSettings = [(SBFullScreenToPeekSwitcherModifier *)self switcherSettings];
    animationSettings = [switcherSettings animationSettings];
    performTwoPhaseFullScreenToPeekTransition = [animationSettings performTwoPhaseFullScreenToPeekTransition];

    if ((performTwoPhaseFullScreenToPeekTransition & 1) == 0)
    {
      self->_animationPhase = 1;
    }
  }
}

- (id)transitionWillBegin
{
  v6.receiver = self;
  v6.super_class = SBFullScreenToPeekSwitcherModifier;
  transitionWillBegin = [(SBTransitionSwitcherModifier *)&v6 transitionWillBegin];
  v3 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:4 updateMode:4];
  v4 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v3 toResponse:transitionWillBegin];

  return v4;
}

- (id)transitionWillUpdate
{
  v13.receiver = self;
  v13.super_class = SBFullScreenToPeekSwitcherModifier;
  transitionWillUpdate = [(SBTransitionSwitcherModifier *)&v13 transitionWillUpdate];
  if (!self->_animationPhase)
  {
    switcherSettings = [(SBFullScreenToPeekSwitcherModifier *)self switcherSettings];
    animationSettings = [switcherSettings animationSettings];
    [animationSettings fullScreenToPeekSecondPhaseAnimationDelay];
    v7 = v6;
    UIAnimationDragCoefficient();
    v9 = v7 * v8;

    v10 = [[SBTimerEventSwitcherEventResponse alloc] initWithDelay:0 validator:@"SBFullScreenToPeekSwitcherModifierTimerEventReason" reason:v9];
    v11 = SBAppendSwitcherModifierResponse(v10, transitionWillUpdate);

    transitionWillUpdate = v11;
  }

  return transitionWillUpdate;
}

- (id)transitionDidEnd
{
  v9.receiver = self;
  v9.super_class = SBFullScreenToPeekSwitcherModifier;
  transitionDidEnd = [(SBTransitionSwitcherModifier *)&v9 transitionDidEnd];
  if (!self->_toFloatingAppLayout)
  {
    v4 = [SBAddModifierSwitcherEventResponse alloc];
    v5 = objc_alloc_init(SBSlideOverAppsInFullScreenSwitcherSwitcherModifier);
    v6 = [(SBAddModifierSwitcherEventResponse *)v4 initWithModifier:v5 level:3];

    v7 = SBAppendSwitcherModifierResponse(v6, transitionDidEnd);

    transitionDidEnd = v7;
  }

  return transitionDidEnd;
}

- (id)handleTimerEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = SBFullScreenToPeekSwitcherModifier;
  eventCopy = event;
  v5 = [(SBTransitionSwitcherModifier *)&v10 handleTimerEvent:eventCopy];
  reason = [eventCopy reason];

  LODWORD(eventCopy) = [reason isEqualToString:@"SBFullScreenToPeekSwitcherModifierTimerEventReason"];
  if (eventCopy)
  {
    self->_animationPhase = 1;
    v7 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:30 updateMode:3];
    v8 = SBAppendSwitcherModifierResponse(v7, v5);

    v5 = v8;
  }

  return v5;
}

- (id)handleSceneReadyEvent:(id)event
{
  selfCopy = self;
  v10.receiver = self;
  v10.super_class = SBFullScreenToPeekSwitcherModifier;
  eventCopy = event;
  v5 = [(SBSwitcherModifier *)&v10 handleSceneReadyEvent:eventCopy];
  appLayout = [eventCopy appLayout];

  LODWORD(selfCopy) = [(SBFullScreenToPeekSwitcherModifier *)selfCopy _isPeekingAppLayout:appLayout];
  if (selfCopy)
  {
    v7 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:64 updateMode:2];
    v8 = SBAppendSwitcherModifierResponse(v7, v5);

    v5 = v8;
  }

  return v5;
}

- (id)handleResizeProgressEvent:(id)event
{
  v11.receiver = self;
  v11.super_class = SBFullScreenToPeekSwitcherModifier;
  eventCopy = event;
  v5 = [(SBSwitcherModifier *)&v11 handleResizeProgressEvent:eventCopy];
  [eventCopy progress];

  medusaSettings = [(SBFullScreenToPeekSwitcherModifier *)self medusaSettings];
  [medusaSettings dropAnimationUnblurThresholdPercentage];
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

- (CGRect)frameForIndex:(unint64_t)index
{
  appLayouts = [(SBFullScreenToPeekSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if (-[SBTransitionSwitcherModifier isUpdatingLayout](self, "isUpdatingLayout") && -[SBFullScreenToPeekSwitcherModifier _isPeekingAppLayout:](self, "_isPeekingAppLayout:", v6) && [v6 environment] == 2 && !self->_animationPhase)
  {
    v20.receiver = self;
    v20.super_class = SBFullScreenToPeekSwitcherModifier;
    [(SBFullScreenToPeekSwitcherModifier *)&v20 frameForIndex:index];
    [(SBFullScreenToPeekSwitcherModifier *)self _firstStageFrameForPeekingAppLayoutWithInitialFrame:?];
  }

  else
  {
    v19.receiver = self;
    v19.super_class = SBFullScreenToPeekSwitcherModifier;
    [(SBFullScreenToPeekSwitcherModifier *)&v19 frameForIndex:index];
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

- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  layoutCopy = layout;
  if (-[SBTransitionSwitcherModifier isUpdatingLayout](self, "isUpdatingLayout") && -[SBFullScreenToPeekSwitcherModifier _isPeekingAppLayout:](self, "_isPeekingAppLayout:", layoutCopy) && [layoutCopy environment] != 2 && !self->_animationPhase)
  {
    v25.receiver = self;
    v25.super_class = SBFullScreenToPeekSwitcherModifier;
    [(SBFullScreenToPeekSwitcherModifier *)&v25 frameForLayoutRole:role inAppLayout:layoutCopy withBounds:x, y, width, height];
    [(SBFullScreenToPeekSwitcherModifier *)self _firstStageFrameForPeekingAppLayoutWithInitialFrame:?];
  }

  else
  {
    v24.receiver = self;
    v24.super_class = SBFullScreenToPeekSwitcherModifier;
    [(SBFullScreenToPeekSwitcherModifier *)&v24 frameForLayoutRole:role inAppLayout:layoutCopy withBounds:x, y, width, height];
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

- (CGRect)_firstStageFrameForPeekingAppLayoutWithInitialFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  peekConfiguration = self->_peekConfiguration;
  isRTLEnabled = [(SBFullScreenToPeekSwitcherModifier *)self isRTLEnabled];
  v9 = 2;
  if (isRTLEnabled)
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

- (double)scaleForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  if ([(SBTransitionSwitcherModifier *)self isUpdatingLayout]&& [(SBFullScreenToPeekSwitcherModifier *)self _isPeekingAppLayout:layoutCopy]&& !self->_animationPhase)
  {
    [(SBFullScreenToPeekSwitcherModifier *)self _firstPhaseScale];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBFullScreenToPeekSwitcherModifier;
    [(SBFullScreenToPeekSwitcherModifier *)&v10 scaleForLayoutRole:role inAppLayout:layoutCopy];
  }

  v8 = v7;

  return v8;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index
{
  if (self->_animationPhase)
  {
    v7.receiver = self;
    v7.super_class = SBFullScreenToPeekSwitcherModifier;
    [(SBFullScreenToPeekSwitcherModifier *)&v7 cornerRadiiForIndex:index];
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
    switcherSettings = [(SBFullScreenToPeekSwitcherModifier *)self switcherSettings];
    animationSettings = [switcherSettings animationSettings];
    [animationSettings homeScreenOpacityInApplication];
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
    switcherSettings = [(SBFullScreenToPeekSwitcherModifier *)self switcherSettings];
    animationSettings = [switcherSettings animationSettings];
    [animationSettings homeScreenScaleInApplication];
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
    switcherSettings = [(SBFullScreenToPeekSwitcherModifier *)self switcherSettings];
    animationSettings = [switcherSettings animationSettings];
    [animationSettings dimmingAlphaInApplication];
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
    switcherSettings = [(SBFullScreenToPeekSwitcherModifier *)self switcherSettings];
    animationSettings = [switcherSettings animationSettings];
    [animationSettings homeScreenBlurInApplication];
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
    switcherSettings = [(SBFullScreenToPeekSwitcherModifier *)self switcherSettings];
    animationSettings = [switcherSettings animationSettings];
    [animationSettings wallpaperScaleInApplication];
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
  appLayouts = [(SBFullScreenToPeekSwitcherModifier *)self appLayouts];
  v4 = [v2 setWithArray:appLayouts];
  v5 = [SBSwitcherKeyboardSuppressionMode newSuppressionModeForSwitcherScenesFromAppLayouts:v4];

  [v5 setApplyAssertionEvenIfAppIsHostingTheKeyboard:1];

  return v5;
}

- (id)resizeProgressNotificationsForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  v17[3] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = SBFullScreenToPeekSwitcherModifier;
  layoutCopy = layout;
  v7 = [(SBFullScreenToPeekSwitcherModifier *)&v16 resizeProgressNotificationsForLayoutRole:role inAppLayout:layoutCopy];
  v8 = [(SBFullScreenToPeekSwitcherModifier *)self _isPeekingAppLayout:layoutCopy, v16.receiver, v16.super_class];

  if (v8)
  {
    medusaSettings = [(SBFullScreenToPeekSwitcherModifier *)self medusaSettings];
    [medusaSettings dropAnimationUnblurThresholdPercentage];
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

- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)scene inAppLayout:(id)layout
{
  selfCopy = self;
  v8.receiver = self;
  v8.super_class = SBFullScreenToPeekSwitcherModifier;
  layoutCopy = layout;
  LOBYTE(scene) = [(SBFullScreenToPeekSwitcherModifier *)&v8 isLayoutRoleMatchMovedToScene:scene inAppLayout:layoutCopy];
  LOBYTE(selfCopy) = [(SBFullScreenToPeekSwitcherModifier *)selfCopy _isPeekingAppLayout:layoutCopy, v8.receiver, v8.super_class];

  return (selfCopy | scene) & 1;
}

- (BOOL)isLayoutRoleBlurred:(int64_t)blurred inAppLayout:(id)layout
{
  layoutCopy = layout;
  v9.receiver = self;
  v9.super_class = SBFullScreenToPeekSwitcherModifier;
  v7 = [(SBFullScreenToPeekSwitcherModifier *)&v9 isLayoutRoleBlurred:blurred inAppLayout:layoutCopy];
  if ([(SBFullScreenToPeekSwitcherModifier *)self _isPeekingAppLayout:layoutCopy])
  {
    if ([(SBFullScreenToPeekSwitcherModifier *)self isLayoutRoleContentReady:blurred inAppLayout:layoutCopy])
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

- (double)blurDelayForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  v13.receiver = self;
  v13.super_class = SBFullScreenToPeekSwitcherModifier;
  layoutCopy = layout;
  [(SBFullScreenToPeekSwitcherModifier *)&v13 blurDelayForLayoutRole:role inAppLayout:layoutCopy];
  v8 = v7;
  LODWORD(role) = [(SBFullScreenToPeekSwitcherModifier *)self _isPeekingAppLayout:layoutCopy, v13.receiver, v13.super_class];

  if (role)
  {
    switcherSettings = [(SBFullScreenToPeekSwitcherModifier *)self switcherSettings];
    animationSettings = [switcherSettings animationSettings];
    [animationSettings resizeBlurDelay];
    v8 = v11;
  }

  return v8;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  v11.receiver = self;
  v11.super_class = SBFullScreenToPeekSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v11 animationAttributesForLayoutElement:element];
  v5 = [v4 mutableCopy];

  switcherSettings = [(SBFullScreenToPeekSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];

  if ([animationSettings performTwoPhaseFullScreenToPeekTransition])
  {
    if (self->_animationPhase)
    {
      [animationSettings fullScreenToPeekSecondPhaseAnimationSettings];
    }

    else
    {
      [animationSettings fullScreenToPeekFirstPhaseAnimationSettings];
    }
    zoomUpSettings = ;
  }

  else
  {
    zoomUpSettings = [animationSettings zoomUpSettings];
  }

  v9 = zoomUpSettings;
  [v5 setLayoutSettings:zoomUpSettings];

  return v5;
}

- (BOOL)_isPeekingAppLayout:(id)layout
{
  layoutCopy = layout;
  toAppLayout = self->_toAppLayout;
  if (toAppLayout && self->_toFloatingAppLayout)
  {
    v6 = toAppLayout == layoutCopy;
  }

  else
  {
    if (toAppLayout == layoutCopy)
    {
      v7 = 1;
      goto LABEL_10;
    }

    v6 = self->_toFloatingAppLayout == layoutCopy;
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