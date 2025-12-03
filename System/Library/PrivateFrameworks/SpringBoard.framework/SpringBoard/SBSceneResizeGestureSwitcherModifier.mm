@interface SBSceneResizeGestureSwitcherModifier
- (BOOL)isLayoutRoleBlurred:(int64_t)blurred inAppLayout:(id)layout;
- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)scene inAppLayout:(id)layout;
- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)space;
- (BOOL)wantsSceneResizesHostedContextForAppLayout:(id)layout;
- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds;
- (SBSceneResizeGestureSwitcherModifier)initWithGestureID:(id)d appLayout:(id)layout spaceConfiguration:(int64_t)configuration;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index;
- (double)_maxCardWidthForDismissalAction;
- (double)_minimumCardWidthForDismissalAction;
- (double)_normalizedDismissLeftProgress;
- (double)_normalizedDismissRightProgress;
- (double)_normalizedHorizontalLocationWithProjection:(BOOL)projection;
- (double)_normalizedNarrowWideProgress;
- (double)_normalizedPeekDismissLeftProgress;
- (double)_normalizedProgressBetweenNarrowWideAndHalfHalf;
- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index;
- (double)scaleForIndex:(unint64_t)index;
- (id)_appLayoutForAction:(int64_t)action;
- (id)_handleGestureEventBeganWithEvent:(id)event;
- (id)_handleGestureEventChangedWithEvent:(id)event;
- (id)_handleGestureEventEndedWithEvent:(id)event;
- (id)_responseForGestureUpdateWithPause:(BOOL)pause gestureIsEnding:(BOOL)ending;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)handleGestureEvent:(id)event;
- (id)handleTimerEvent:(id)event;
- (id)handleTransitionEvent:(id)event;
- (id)resizeGrabberLayoutAttributesForAppLayout:(id)layout;
- (int64_t)_actionForNormalizedProgress:(double)progress inOrientation:(int64_t)orientation;
- (int64_t)_configurationForFinalResizeAction:(int64_t)action;
- (int64_t)_currentActionWithProjection:(BOOL)projection;
- (int64_t)_currentPresentationAction;
- (int64_t)_presentationActionForNormalizedProgress:(double)progress;
- (void)_beginAnimatingRampingProperty;
- (void)didMoveToParentModifier:(id)modifier;
@end

@implementation SBSceneResizeGestureSwitcherModifier

- (SBSceneResizeGestureSwitcherModifier)initWithGestureID:(id)d appLayout:(id)layout spaceConfiguration:(int64_t)configuration
{
  layoutCopy = layout;
  v13.receiver = self;
  v13.super_class = SBSceneResizeGestureSwitcherModifier;
  v10 = [(SBGestureSwitcherModifier *)&v13 initWithGestureID:d];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_appLayout, layout);
    v11->_startingSpaceConfiguration = configuration;
  }

  return v11;
}

- (void)didMoveToParentModifier:(id)modifier
{
  v12.receiver = self;
  v12.super_class = SBSceneResizeGestureSwitcherModifier;
  [(SBChainableModifier *)&v12 didMoveToParentModifier:?];
  if (modifier)
  {
    appLayouts = [(SBSceneResizeGestureSwitcherModifier *)self appLayouts];
    v6 = [appLayouts indexOfObject:self->_appLayout];
    v11.receiver = self;
    v11.super_class = SBSceneResizeGestureSwitcherModifier;
    [(SBSceneResizeGestureSwitcherModifier *)&v11 frameForIndex:v6];
    self->_initialSpaceFrame.origin.x = v7;
    self->_initialSpaceFrame.origin.y = v8;
    self->_initialSpaceFrame.size.width = v9;
    self->_initialSpaceFrame.size.height = v10;
  }
}

- (id)animationAttributesForLayoutElement:(id)element
{
  v17.receiver = self;
  v17.super_class = SBSceneResizeGestureSwitcherModifier;
  v4 = [(SBGestureSwitcherModifier *)&v17 animationAttributesForLayoutElement:element];
  v5 = [v4 mutableCopy];

  medusaSettings = [(SBSceneResizeGestureSwitcherModifier *)self medusaSettings];
  medusaAnimationSettings = [medusaSettings medusaAnimationSettings];

  [v5 setScaleSettings:medusaAnimationSettings];
  [v5 setOpacitySettings:medusaAnimationSettings];
  [v5 setCornerRadiusSettings:medusaAnimationSettings];
  v8 = 1;
  [v5 setUpdateMode:1];
  [v5 setOpacityUpdateMode:3];
  [v5 setScaleUpdateMode:3];
  [v5 setCornerRadiusUpdateMode:2];
  v9 = self->_rampedLayoutSettings;
  rampingProperty = self->_rampingProperty;
  if (rampingProperty)
  {
    [(UIViewFloatAnimatableProperty *)rampingProperty presentationValue];
    if (BSFloatIsOne())
    {
      v8 = 1;
    }

    else
    {
      [(UIViewFloatAnimatableProperty *)self->_rampingProperty presentationValue];
      v12 = v11;
      [medusaAnimationSettings trackingResponse];
      v14 = v12 * (0.0 - v13);
      [medusaAnimationSettings trackingResponse];
      [(SBFFluidBehaviorSettings *)v9 setTrackingResponse:v15 + v14];
      v8 = 5;
    }
  }

  [v5 setLayoutSettings:v9];
  [v5 setPositionSettings:v9];
  [v5 setLayoutUpdateMode:v8];
  [v5 setPositionUpdateMode:v8];

  return v5;
}

- (void)_beginAnimatingRampingProperty
{
  medusaSettings = [(SBSceneResizeGestureSwitcherModifier *)self medusaSettings];
  medusaAnimationSettings = [medusaSettings medusaAnimationSettings];

  v5 = [medusaAnimationSettings copy];
  rampedLayoutSettings = self->_rampedLayoutSettings;
  self->_rampedLayoutSettings = v5;

  rampingProperty = self->_rampingProperty;
  if (rampingProperty)
  {
    [(UIViewFloatAnimatableProperty *)rampingProperty invalidate];
    v8 = self->_rampingProperty;
    self->_rampingProperty = 0;
  }

  v9 = objc_alloc_init(MEMORY[0x277D75D38]);
  v10 = self->_rampingProperty;
  self->_rampingProperty = v9;

  [(UIViewFloatAnimatableProperty *)self->_rampingProperty setValue:0.0];
  objc_initWeak(&location, self);
  v11 = self->_rampingProperty;
  v12 = MEMORY[0x277D75D18];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __70__SBSceneResizeGestureSwitcherModifier__beginAnimatingRampingProperty__block_invoke;
  v17[3] = &unk_2783A8C18;
  v17[4] = self;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __70__SBSceneResizeGestureSwitcherModifier__beginAnimatingRampingProperty__block_invoke_2;
  v14[3] = &unk_2783AF0A0;
  objc_copyWeak(&v16, &location);
  v13 = v11;
  v15 = v13;
  [v12 sb_animateWithSettings:medusaAnimationSettings mode:3 animations:v17 completion:v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __70__SBSceneResizeGestureSwitcherModifier__beginAnimatingRampingProperty__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = WeakRetained[27];
    v4 = v3;
    if (v3 && v3 == *(a1 + 32))
    {
      v5 = v6[27];
      v6[27] = 0;
    }

    WeakRetained = v6;
  }
}

- (BOOL)isLayoutRoleBlurred:(int64_t)blurred inAppLayout:(id)layout
{
  layoutCopy = layout;
  v11.receiver = self;
  v11.super_class = SBSceneResizeGestureSwitcherModifier;
  v7 = [(SBSceneResizeGestureSwitcherModifier *)&v11 isLayoutRoleBlurred:blurred inAppLayout:layoutCopy];
  windowManagementContext = [(SBSceneResizeGestureSwitcherModifier *)self windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  if ((isChamoisOrFlexibleWindowing & 1) == 0)
  {
    v7 |= [layoutCopy isOrContainsAppLayout:self->_appLayout];
  }

  return v7 & 1;
}

- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index
{
  appLayout = self->_appLayout;
  layoutCopy = layout;
  if (![(SBAppLayout *)appLayout isOrContainsAppLayout:layoutCopy])
  {
    v18.receiver = self;
    v18.super_class = SBSceneResizeGestureSwitcherModifier;
    [(SBSceneResizeGestureSwitcherModifier *)&v18 opacityForLayoutRole:role inAppLayout:layoutCopy atIndex:index];
LABEL_10:
    v14 = v15;

    return v14;
  }

  v17.receiver = self;
  v17.super_class = SBSceneResizeGestureSwitcherModifier;
  [(SBSceneResizeGestureSwitcherModifier *)&v17 opacityForLayoutRole:role inAppLayout:layoutCopy atIndex:index];

  userInterfaceLayoutDirection = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
  v11 = &SBLayoutRolePrimary;
  if (userInterfaceLayoutDirection == 1)
  {
    v11 = &SBLayoutRoleSide;
  }

  v12 = *v11;
  _currentPresentationAction = [(SBSceneResizeGestureSwitcherModifier *)self _currentPresentationAction];
  v14 = 1.0;
  if (v12 == role)
  {
    if (_currentPresentationAction != 1)
    {
      return v14;
    }

    goto LABEL_9;
  }

  if (_currentPresentationAction == 7)
  {
LABEL_9:
    layoutCopy = [(SBSceneResizeGestureSwitcherModifier *)self medusaSettings];
    [layoutCopy resizeAnimationDismissItemOpacity];
    goto LABEL_10;
  }

  return v14;
}

- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  appLayout = self->_appLayout;
  layoutCopy = layout;
  if ([(SBAppLayout *)appLayout isOrContainsAppLayout:layoutCopy])
  {
    v64.receiver = self;
    v64.super_class = SBSceneResizeGestureSwitcherModifier;
    [(SBSceneResizeGestureSwitcherModifier *)&v64 frameForLayoutRole:role inAppLayout:layoutCopy withBounds:x, y, width, height];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    [(SBSceneResizeGestureSwitcherModifier *)self _switcherWidth];
    v62 = v22;
    isRTLEnabled = [(SBSceneResizeGestureSwitcherModifier *)self isRTLEnabled];
    _currentPresentationAction = [(SBSceneResizeGestureSwitcherModifier *)self _currentPresentationAction];
    v25 = self->_location.x;
    [(SBSceneResizeGestureSwitcherModifier *)self separatorViewWidth];
    v63 = v26 * 0.5;
    [(SBSceneResizeGestureSwitcherModifier *)self _rubberbandingRange];
    [(SBSceneResizeGestureSwitcherModifier *)self _minimumCardWidthForDismissalAction];
    v28 = v27;
    [(SBSceneResizeGestureSwitcherModifier *)self _maxCardWidthForDismissalAction];
    windowManagementContext = [(SBSceneResizeGestureSwitcherModifier *)self windowManagementContext];
    isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

    if (isChamoisOrFlexibleWindowing)
    {
      if (_currentPresentationAction <= 7)
      {
        if (((1 << _currentPresentationAction) & 0x38) != 0)
        {
          v44 = &OBJC_IVAR___SBSceneResizeGestureSwitcherModifier__startingFrameForPrimaryItem;
          if (isRTLEnabled)
          {
            v45 = &OBJC_IVAR___SBSceneResizeGestureSwitcherModifier__startingFrameForSideItem;
          }

          else
          {
            v45 = &OBJC_IVAR___SBSceneResizeGestureSwitcherModifier__startingFrameForPrimaryItem;
          }

          v46 = (self + *v45);
          v47 = v46[2];
          if (!isRTLEnabled)
          {
            v44 = &OBJC_IVAR___SBSceneResizeGestureSwitcherModifier__startingFrameForSideItem;
          }

          v48 = (self + *v44);
          if (v25 - v47 >= 0.0)
          {
            v15 = v25 - v47;
          }

          else
          {
            v15 = 0.0;
          }

          if (v25 - v47 >= 0.0)
          {
            v19 = v46[2];
          }

          else
          {
            v19 = v47 + v25 - v47;
          }

          if (v25 + v48[2] <= v62)
          {
            v28 = v48[2];
          }

          else
          {
            v28 = v62 - v25;
          }

          goto LABEL_38;
        }

        if (((1 << _currentPresentationAction) & 6) != 0)
        {
          BSUIConstrainValueToIntervalWithRubberBand();
          v15 = v25 - v28;
          v19 = v28;
          v25 = v62 - v49;
          v28 = v49;
LABEL_38:
          v39 = v63;
          v53 = isRTLEnabled ^ (role == 1);
          v54 = v63 + v25;
          v55 = v53 == 0;
          if (!v53)
          {
            v19 = v28;
          }

          goto LABEL_48;
        }

        if (((1 << _currentPresentationAction) & 0xC0) != 0)
        {
          BSUIConstrainValueToIntervalWithRubberBand();
          v19 = v31;
          v15 = 0.0;
          goto LABEL_38;
        }
      }

      if (!_currentPresentationAction)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"SBSceneResizeGestureSwitcherModifier.m" lineNumber:239 description:@"Should get a valid presentation action"];
      }

      v25 = v15;
      v28 = v19;
      goto LABEL_38;
    }

    if (_currentPresentationAction > 3)
    {
      v42 = 0.0;
      if ((_currentPresentationAction - 6) < 2)
      {
        BSUIConstrainValueToIntervalWithRubberBand();
        v42 = 0.0;
      }

      else
      {
        if (_currentPresentationAction != 4)
        {
          v43 = v25;
          v37 = v15;
          v38 = v19;
          v39 = v63;
          if (_currentPresentationAction != 5)
          {
            goto LABEL_45;
          }

          goto LABEL_44;
        }

        v28 = v62 - v25;
        v43 = v25;
      }
    }

    else
    {
      if ((_currentPresentationAction - 1) >= 2)
      {
        if (_currentPresentationAction)
        {
          v37 = v15;
          v38 = v19;
          v39 = v63;
          if (_currentPresentationAction == 3)
          {
            [(SBSceneResizeGestureSwitcherModifier *)self _switcherWidth];
            v41 = v40;
            v42 = v25 - v28;
            v43 = v28;
            v28 = v41 - v25;
            v25 = v62 - (v41 - v25);
LABEL_44:
            v15 = v42;
            v19 = v43;
            v37 = v25;
            v38 = v28;
          }
        }

        else
        {
          currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler2 handleFailureInMethod:a2 object:self file:@"SBSceneResizeGestureSwitcherModifier.m" lineNumber:303 description:@"Should get a valid presentation action"];

          v37 = v15;
          v38 = v19;
          v39 = v63;
        }

LABEL_45:
        if (!((role != 1) | isRTLEnabled & 1))
        {
LABEL_51:
          v35 = v19 - v39;
          goto LABEL_52;
        }

        v57 = role == 2;
        v54 = v39 + v37;
        v55 = (v57 & isRTLEnabled) == 0;
        if ((v57 & isRTLEnabled) == 0)
        {
          v19 = v38;
        }

LABEL_48:
        if (v55)
        {
          v15 = v54;
        }

        goto LABEL_51;
      }

      [(SBSceneResizeGestureSwitcherModifier *)self _switcherWidth];
      BSUIConstrainValueToIntervalWithRubberBand();
      v51 = v50;
      v42 = v25 - v28;
      v43 = v28;
      v25 = v62 - v51;
      v28 = v51;
    }

    v39 = v63;
    goto LABEL_44;
  }

  v65.receiver = self;
  v65.super_class = SBSceneResizeGestureSwitcherModifier;
  [(SBSceneResizeGestureSwitcherModifier *)&v65 frameForLayoutRole:role inAppLayout:layoutCopy withBounds:x, y, width, height];
  v15 = v32;
  v17 = v33;
  v35 = v34;
  v21 = v36;

LABEL_52:
  v58 = v15;
  v59 = v17;
  v60 = v35;
  v61 = v21;
  result.size.height = v61;
  result.size.width = v60;
  result.origin.y = v59;
  result.origin.x = v58;
  return result;
}

- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)scene inAppLayout:(id)layout
{
  selfCopy = self;
  v8.receiver = self;
  v8.super_class = SBSceneResizeGestureSwitcherModifier;
  layoutCopy = layout;
  LOBYTE(scene) = [(SBSceneResizeGestureSwitcherModifier *)&v8 isLayoutRoleMatchMovedToScene:scene inAppLayout:layoutCopy];
  LOBYTE(selfCopy) = [layoutCopy isOrContainsAppLayout:{selfCopy->_appLayout, v8.receiver, v8.super_class}];

  return (selfCopy | scene) & 1;
}

- (double)scaleForIndex:(unint64_t)index
{
  v10.receiver = self;
  v10.super_class = SBSceneResizeGestureSwitcherModifier;
  [(SBSceneResizeGestureSwitcherModifier *)&v10 scaleForIndex:?];
  v6 = v5;
  appLayouts = [(SBSceneResizeGestureSwitcherModifier *)self appLayouts];
  v8 = [appLayouts objectAtIndex:index];

  if ([v8 isOrContainsAppLayout:self->_appLayout])
  {
    if (SBReduceMotion())
    {
      v6 = 1.0;
    }

    else
    {
      v6 = 0.98;
    }
  }

  return v6;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index
{
  appLayout = self->_appLayout;
  appLayouts = [(SBSceneResizeGestureSwitcherModifier *)self appLayouts];
  v7 = [appLayouts objectAtIndex:index];
  LOBYTE(appLayout) = [(SBAppLayout *)appLayout isOrContainsAppLayout:v7];

  if (appLayout)
  {
    [(SBSceneResizeGestureSwitcherModifier *)self displayCornerRadius];

    SBRectCornerRadiiForRadius();
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SBSceneResizeGestureSwitcherModifier;
    [(SBSceneResizeGestureSwitcherModifier *)&v12 cornerRadiiForIndex:index];
  }

  result.topRight = v11;
  result.bottomRight = v10;
  result.bottomLeft = v9;
  result.topLeft = v8;
  return result;
}

- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)space
{
  appLayouts = [(SBSceneResizeGestureSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:space];

  if (v6 == self->_appLayout)
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBSceneResizeGestureSwitcherModifier;
    v7 = [(SBSceneResizeGestureSwitcherModifier *)&v9 shouldUseAnchorPointToPinLayoutRolesToSpace:space];
  }

  return v7;
}

- (id)resizeGrabberLayoutAttributesForAppLayout:(id)layout
{
  v12.receiver = self;
  v12.super_class = SBSceneResizeGestureSwitcherModifier;
  v4 = [(SBSceneResizeGestureSwitcherModifier *)&v12 resizeGrabberLayoutAttributesForAppLayout:layout];
  _currentPresentationAction = [(SBSceneResizeGestureSwitcherModifier *)self _currentPresentationAction];
  if ((_currentPresentationAction - 1) < 2)
  {
    v6 = &SBLayoutRolePrimary;
    v7 = &SBLayoutRoleSide;
    v8 = 8;
LABEL_5:
    if ([(SBSceneResizeGestureSwitcherModifier *)self isRTLEnabled])
    {
      v9 = v7;
    }

    else
    {
      v9 = v6;
    }

    v10 = [(SBAppLayout *)self->_appLayout leafAppLayoutForRole:*v9];
    [v4 setLeafAppLayout:v10];

    [v4 setEdge:v8];
    goto LABEL_9;
  }

  if ((_currentPresentationAction & 0xFFFFFFFFFFFFFFFELL) == 6)
  {
    v6 = &SBLayoutRoleSide;
    v7 = &SBLayoutRolePrimary;
    v8 = 2;
    goto LABEL_5;
  }

LABEL_9:

  return v4;
}

- (BOOL)wantsSceneResizesHostedContextForAppLayout:(id)layout
{
  layoutCopy = layout;
  windowManagementContext = [(SBSceneResizeGestureSwitcherModifier *)self windowManagementContext];
  if ([windowManagementContext isChamoisOrFlexibleWindowing])
  {
    v6 = [layoutCopy isOrContainsAppLayout:self->_appLayout];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)handleTransitionEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = SBSceneResizeGestureSwitcherModifier;
  eventCopy = event;
  v5 = [(SBGestureSwitcherModifier *)&v8 handleTransitionEvent:eventCopy];
  phase = [eventCopy phase];

  if (phase == 2)
  {
    [(SBChainableModifier *)self setState:1];
  }

  return v5;
}

- (id)handleGestureEvent:(id)event
{
  eventCopy = event;
  v18.receiver = self;
  v18.super_class = SBSceneResizeGestureSwitcherModifier;
  v6 = [(SBGestureSwitcherModifier *)&v18 handleGestureEvent:eventCopy];
  [eventCopy locationInContainerView];
  v8.f64[1] = v7;
  self->_location = vsubq_f64(v8, self->_initialSpaceFrame.origin);
  [eventCopy translationInContainerView];
  self->_translation.x = v9;
  self->_translation.y = v10;
  [eventCopy velocityInContainerView];
  self->_velocity.x = v11;
  self->_velocity.y = v12;
  phase = [eventCopy phase];
  v14 = 0;
  if (phase > 1)
  {
    if (phase == 2)
    {
      v15 = [(SBSceneResizeGestureSwitcherModifier *)self _handleGestureEventChangedWithEvent:eventCopy];
    }

    else
    {
      if (phase != 3)
      {
        goto LABEL_13;
      }

      v15 = [(SBSceneResizeGestureSwitcherModifier *)self _handleGestureEventEndedWithEvent:eventCopy];
    }

    goto LABEL_12;
  }

  if (phase)
  {
    if (phase != 1)
    {
      goto LABEL_13;
    }

    v15 = [(SBSceneResizeGestureSwitcherModifier *)self _handleGestureEventBeganWithEvent:eventCopy];
LABEL_12:
    v14 = v15;
    goto LABEL_13;
  }

  if (![eventCopy phase])
  {
    [(SBSceneResizeGestureSwitcherModifier *)a2 handleGestureEvent:?];
  }

  v14 = 0;
LABEL_13:
  v16 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v14 toResponse:v6];

  return v16;
}

- (id)_handleGestureEventBeganWithEvent:(id)event
{
  [(SBSceneResizeGestureSwitcherModifier *)self _beginAnimatingRampingProperty];
  windowManagementContext = [(SBSceneResizeGestureSwitcherModifier *)self windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  if (isChamoisOrFlexibleWindowing)
  {
    appLayout = self->_appLayout;
    [(SBSceneResizeGestureSwitcherModifier *)self containerViewBounds];
    v18.receiver = self;
    v18.super_class = SBSceneResizeGestureSwitcherModifier;
    [(SBSceneResizeGestureSwitcherModifier *)&v18 frameForLayoutRole:1 inAppLayout:appLayout withBounds:?];
    self->_startingFrameForPrimaryItem.origin.x = v7;
    self->_startingFrameForPrimaryItem.origin.y = v8;
    self->_startingFrameForPrimaryItem.size.width = v9;
    self->_startingFrameForPrimaryItem.size.height = v10;
    v11 = self->_appLayout;
    [(SBSceneResizeGestureSwitcherModifier *)self containerViewBounds];
    v17.receiver = self;
    v17.super_class = SBSceneResizeGestureSwitcherModifier;
    [(SBSceneResizeGestureSwitcherModifier *)&v17 frameForLayoutRole:2 inAppLayout:v11 withBounds:?];
    self->_startingFrameForSideItem.origin.x = v12;
    self->_startingFrameForSideItem.origin.y = v13;
    self->_startingFrameForSideItem.size.width = v14;
    self->_startingFrameForSideItem.size.height = v15;
  }

  return 0;
}

- (id)_handleGestureEventChangedWithEvent:(id)event
{
  eventCopy = event;
  windowManagementContext = [(SBSceneResizeGestureSwitcherModifier *)self windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  if (isChamoisOrFlexibleWindowing)
  {
    [eventCopy translationInContainerView];
    self->_translation.x = v7;
    self->_translation.y = v8;
    if ([eventCopy phase] == 1)
    {
      self->_lastTranslationThatUpdatedScene = SBInvalidPoint;
    }

    v9 = -[SBSceneResizeGestureSwitcherModifier _responseForGestureUpdateWithPause:gestureIsEnding:](self, "_responseForGestureUpdateWithPause:gestureIsEnding:", 0, [eventCopy phase] == 3);
    v10 = SBAppendSwitcherModifierResponse(v9, 0);

    v11 = (self->_timerGenCount + 1);
    self->_timerGenCount = v11;
    objc_initWeak(&location, self);
    switcherSettings = [(SBSceneResizeGestureSwitcherModifier *)self switcherSettings];
    [switcherSettings liveResizeSceneUpdateTimeThresholdSeconds];
    v14 = v13;

    v15 = [SBTimerEventSwitcherEventResponse alloc];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __76__SBSceneResizeGestureSwitcherModifier__handleGestureEventChangedWithEvent___block_invoke;
    v19[3] = &unk_2783C4628;
    objc_copyWeak(v20, &location);
    v20[1] = v11;
    v16 = [(SBTimerEventSwitcherEventResponse *)v15 initWithDelay:v19 validator:@"kSBLiveSceneResizeTimerReason" reason:v14];
    v17 = SBAppendSwitcherModifierResponse(v16, v10);

    objc_destroyWeak(v20);
    objc_destroyWeak(&location);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

BOOL __76__SBSceneResizeGestureSwitcherModifier__handleGestureEventChangedWithEvent___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained parentModifier];
    if (v4)
    {
      v5 = v3[41] == *(a1 + 40);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)handleTimerEvent:(id)event
{
  v11.receiver = self;
  v11.super_class = SBSceneResizeGestureSwitcherModifier;
  eventCopy = event;
  v5 = [(SBSwitcherModifier *)&v11 handleTimerEvent:eventCopy];
  reason = [eventCopy reason];

  LODWORD(eventCopy) = [reason isEqual:@"kSBLiveSceneResizeTimerReason"];
  if (eventCopy)
  {
    v7 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:64 updateMode:2];
    v8 = SBAppendSwitcherModifierResponse(v7, v5);

    v9 = [(SBSceneResizeGestureSwitcherModifier *)self _responseForGestureUpdateWithPause:1 gestureIsEnding:0];
    v5 = SBAppendSwitcherModifierResponse(v9, v8);
  }

  return v5;
}

- (id)_handleGestureEventEndedWithEvent:(id)event
{
  v4 = [(SBSceneResizeGestureSwitcherModifier *)self _appLayoutForAction:[(SBSceneResizeGestureSwitcherModifier *)self _currentActionWithProjection:1]];
  v5 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
  [(SBSwitcherTransitionRequest *)v5 setAppLayout:v4];
  [(SBSwitcherTransitionRequest *)v5 setUnlockedEnvironmentMode:3];
  [(SBSwitcherTransitionRequest *)v5 setPreferredInterfaceOrientation:[(SBSceneResizeGestureSwitcherModifier *)self switcherInterfaceOrientation]];
  v6 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v5 gestureInitiated:1];

  return v6;
}

- (id)_appLayoutForAction:(int64_t)action
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  isRTLEnabled = [(SBSceneResizeGestureSwitcherModifier *)self isRTLEnabled];
  v7 = 1;
  if (isRTLEnabled)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  if (isRTLEnabled)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  v10 = [(SBAppLayout *)self->_appLayout itemForLayoutRole:v8];
  v11 = [(SBAppLayout *)self->_appLayout itemForLayoutRole:v9];
  v27 = v11;
  if ((action - 2) >= 3)
  {
    if (action == 1)
    {
      v14 = v11;
    }

    else
    {
      if (action != 5)
      {
        goto LABEL_14;
      }

      v14 = v10;
    }
  }

  else
  {
    v12 = v11;
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
    [v5 setObject:v10 forKey:v13];

    v7 = v9;
    v14 = v12;
  }

  v15 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
  [v5 setObject:v14 forKey:v15];

LABEL_14:
  v28 = v10;
  v26 = [(SBSceneResizeGestureSwitcherModifier *)self _configurationForFinalResizeAction:action];
  v16 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  allValues = [v5 allValues];
  v18 = [allValues countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v30;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v30 != v20)
        {
          objc_enumerationMutation(allValues);
        }

        v22 = *(*(&v29 + 1) + 8 * i);
        v23 = [(SBSceneResizeGestureSwitcherModifier *)self layoutAttributesForDisplayItem:v22 inAppLayout:self->_appLayout];
        [v16 setObject:v23 forKey:v22];
      }

      v19 = [allValues countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v19);
  }

  v24 = [[SBAppLayout alloc] initWithItemsForLayoutRoles:v5 configuration:v26 centerConfiguration:0 environment:1 hidden:0 preferredDisplayOrdinal:[(SBSceneResizeGestureSwitcherModifier *)self displayOrdinal]];
  [(SBSceneResizeGestureSwitcherModifier *)self updateLayoutAttributesMap:v16 forAppLayout:v24];

  return v24;
}

- (int64_t)_configurationForFinalResizeAction:(int64_t)action
{
  result = 0;
  if (action <= 2)
  {
    if (!action)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"SBSceneResizeGestureSwitcherModifier.m" lineNumber:622 description:@"Shouldn't receive a final resize action of None"];

      return 0;
    }

    if (action != 1)
    {
      if (action != 2)
      {
        return result;
      }

      v5 = [(SBSceneResizeGestureSwitcherModifier *)self isRTLEnabled]== 0;
      v6 = 2;
      v7 = 4;
      goto LABEL_13;
    }

    return 1;
  }

  if (action == 3)
  {
    return 3;
  }

  if (action != 4)
  {
    if (action != 5)
    {
      return result;
    }

    return 1;
  }

  v5 = [(SBSceneResizeGestureSwitcherModifier *)self isRTLEnabled]== 0;
  v6 = 4;
  v7 = 2;
LABEL_13:
  if (v5)
  {
    return v6;
  }

  else
  {
    return v7;
  }
}

- (int64_t)_currentActionWithProjection:(BOOL)projection
{
  [(SBSceneResizeGestureSwitcherModifier *)self _normalizedHorizontalLocationWithProjection:projection];
  v5 = v4;
  switcherInterfaceOrientation = [(SBSceneResizeGestureSwitcherModifier *)self switcherInterfaceOrientation];

  return [(SBSceneResizeGestureSwitcherModifier *)self _actionForNormalizedProgress:switcherInterfaceOrientation inOrientation:v5];
}

- (int64_t)_currentPresentationAction
{
  [(SBSceneResizeGestureSwitcherModifier *)self _normalizedHorizontalLocationWithProjection:0];

  return [(SBSceneResizeGestureSwitcherModifier *)self _presentationActionForNormalizedProgress:?];
}

- (int64_t)_presentationActionForNormalizedProgress:(double)progress
{
  [(SBSceneResizeGestureSwitcherModifier *)self _normalizedDismissLeftProgress];
  v6 = v5;
  [(SBSceneResizeGestureSwitcherModifier *)self _normalizedDismissRightProgress];
  v8 = v7;
  [(SBSceneResizeGestureSwitcherModifier *)self _normalizedPeekDismissLeftProgress];
  v10 = v9;
  [(SBSceneResizeGestureSwitcherModifier *)self _normalizedPeekDismissRightProgress];
  v12 = v11;
  [(SBSceneResizeGestureSwitcherModifier *)self _normalizedNarrowWideProgress];
  v14 = v13;
  [(SBSceneResizeGestureSwitcherModifier *)self _normalizedWideNarrowProgress];
  if (v6 >= progress)
  {
    return 1;
  }

  if (v10 >= progress)
  {
    return 2;
  }

  v16 = 4;
  v17 = 5;
  v18 = 6;
  if (v8 < progress)
  {
    v18 = 7;
  }

  if (v12 < progress)
  {
    v17 = v18;
  }

  if (v15 < progress)
  {
    v16 = v17;
  }

  if (v14 < progress)
  {
    return v16;
  }

  else
  {
    return 3;
  }
}

- (int64_t)_actionForNormalizedProgress:(double)progress inOrientation:(int64_t)orientation
{
  v8 = [(SBSceneResizeGestureSwitcherModifier *)self _presentationActionForNormalizedProgress:?];
  if (v8 <= 3)
  {
    if ((v8 - 2) >= 2)
    {
      if (!v8)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"SBSceneResizeGestureSwitcherModifier.m" lineNumber:687 description:@"Should have a valid final presentation action"];

        return 0;
      }

      v9 = v8 == 1;
      v10 = 1;
      goto LABEL_8;
    }

    return 2;
  }

  if ((v8 - 5) < 2)
  {
    return 4;
  }

  if (v8 != 4)
  {
    v9 = v8 == 7;
    v10 = 5;
LABEL_8:
    if (v9)
    {
      return v10;
    }

    else
    {
      return 0;
    }
  }

  [(SBSceneResizeGestureSwitcherModifier *)self _normalizedProgressBetweenNarrowWideAndHalfHalf];
  if (v13 >= progress)
  {
    return 2;
  }

  [(SBSceneResizeGestureSwitcherModifier *)self _normalizedProgressBetweenHalfHalfAndWideNarrow];
  if (v14 > progress)
  {
    result = 3;
  }

  else
  {
    result = 4;
  }

  if ((orientation - 3) >= 2 && v14 > progress)
  {
    [(SBSceneResizeGestureSwitcherModifier *)self _normalizedHalfHalfProgress];
    if (v15 <= progress)
    {
      return 4;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

- (id)_responseForGestureUpdateWithPause:(BOOL)pause gestureIsEnding:(BOOL)ending
{
  endingCopy = ending;
  p_lastTranslationThatUpdatedScene = &self->_lastTranslationThatUpdatedScene;
  x = self->_lastTranslationThatUpdatedScene.x;
  y = self->_lastTranslationThatUpdatedScene.y;
  v10 = x == 1.79769313e308;
  v11 = y == 1.79769313e308;
  p_translation = &self->_translation;
  v13 = x - self->_translation.x;
  v14 = y - self->_translation.y;
  if (v10 && v11)
  {
    v14 = self->_translation.y;
    v13 = self->_translation.x;
  }

  v15 = hypot(v13, v14);
  switcherSettings = [(SBSceneResizeGestureSwitcherModifier *)self switcherSettings];
  [switcherSettings liveResizeSceneUpdateDistanceThreshold];
  if (v15 > v17)
  {

    goto LABEL_5;
  }

  if (pause || endingCopy)
  {
LABEL_5:
    *p_lastTranslationThatUpdatedScene = *p_translation;
    v18 = [(SBSceneResizeGestureSwitcherModifier *)self _appLayoutForAction:[(SBSceneResizeGestureSwitcherModifier *)self _currentActionWithProjection:0]];
    v19 = [(SBSwitcherTransitionRequest *)SBMutableSwitcherTransitionRequest requestForActivatingAppLayout:v18];
    [v19 setSceneUpdatesOnly:!endingCopy];
    switcherSettings2 = [(SBSceneResizeGestureSwitcherModifier *)self switcherSettings];
    liveResizeSendsAnimatedSceneSizeUpdates = [switcherSettings2 liveResizeSendsAnimatedSceneSizeUpdates];

    if (liveResizeSendsAnimatedSceneSizeUpdates)
    {
      medusaSettings = [(SBSceneResizeGestureSwitcherModifier *)self medusaSettings];
      resizeAnimationSettings = [medusaSettings resizeAnimationSettings];
      [v19 setAnimationSettings:resizeAnimationSettings];
    }

    v24 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v19 gestureInitiated:1];
    v25 = SBAppendSwitcherModifierResponse(v24, 0);

    if (endingCopy)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v25 = 0;
  if (endingCopy)
  {
LABEL_8:
    v26 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:30 updateMode:3];
    v27 = SBAppendSwitcherModifierResponse(v26, v25);

    v25 = v27;
  }

LABEL_9:

  return v25;
}

- (double)_normalizedHorizontalLocationWithProjection:(BOOL)projection
{
  projectionCopy = projection;
  [(SBSceneResizeGestureSwitcherModifier *)self _switcherWidth];
  v6 = 0.05;
  if (!projectionCopy)
  {
    v6 = 0.0;
  }

  return (self->_location.x + self->_velocity.x * v6) / v5 + 0.0;
}

- (double)_normalizedDismissLeftProgress
{
  [(SBSceneResizeGestureSwitcherModifier *)self switcherInterfaceOrientation];
  SBLayoutDefaultSideLayoutElementWidth();
  v4 = v3 * 0.5;
  [(SBSceneResizeGestureSwitcherModifier *)self switcherViewBounds];
  return v4 / CGRectGetWidth(v6) * 0.5;
}

- (double)_normalizedDismissRightProgress
{
  [(SBSceneResizeGestureSwitcherModifier *)self switcherInterfaceOrientation];
  SBLayoutDefaultSideLayoutElementWidth();
  return v3 * 0.5 / CGRectGetWidth(self->_initialSpaceFrame) * 0.5;
}

- (double)_normalizedPeekDismissLeftProgress
{
  [(SBSceneResizeGestureSwitcherModifier *)self switcherInterfaceOrientation];
  SBLayoutDefaultSideLayoutElementWidth();
  v4 = v3;
  [(SBSceneResizeGestureSwitcherModifier *)self separatorViewWidth];
  v6 = v4 + v5 * 0.5;
  [(SBSceneResizeGestureSwitcherModifier *)self _switcherWidth];
  return v6 / v7 * 0.5;
}

- (double)_normalizedNarrowWideProgress
{
  [(SBSceneResizeGestureSwitcherModifier *)self switcherInterfaceOrientation];
  SBLayoutDefaultSideLayoutElementWidth();
  v4 = v3;
  [(SBSceneResizeGestureSwitcherModifier *)self _switcherWidth];
  return v4 / v5;
}

- (double)_normalizedProgressBetweenNarrowWideAndHalfHalf
{
  [(SBSceneResizeGestureSwitcherModifier *)self _normalizedHalfHalfProgress];
  v4 = v3;
  [(SBSceneResizeGestureSwitcherModifier *)self _normalizedPeekDismissLeftProgress];
  return v4 + (v4 - v5) * -0.5;
}

- (double)_minimumCardWidthForDismissalAction
{
  [(SBSceneResizeGestureSwitcherModifier *)self switcherInterfaceOrientation];

  SBLayoutDefaultSideLayoutElementWidth();
  return result;
}

- (double)_maxCardWidthForDismissalAction
{
  [(SBSceneResizeGestureSwitcherModifier *)self _normalizedPeekDismissLeftProgress];
  v4 = 1.0 - v3;
  [(SBSceneResizeGestureSwitcherModifier *)self _switcherWidth];
  return v4 * v5;
}

- (void)handleGestureEvent:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSceneResizeGestureSwitcherModifier.m" lineNumber:473 description:@"Should not get PhasePossible."];
}

@end