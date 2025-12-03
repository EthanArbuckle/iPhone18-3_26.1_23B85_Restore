@interface SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier
- (BOOL)shouldInterruptForActivity:(id)activity;
- (CGPoint)perspectiveAngleForIndex:(unint64_t)index;
- (CGPoint)perspectiveAngleForLayoutRole:(int64_t)role inAppLayout:(id)layout withPerspectiveAngle:(CGPoint)angle;
- (SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier)initWithFromAppLayout:(id)layout toAppLayout:(id)appLayout;
- (SBWindowingItemCorners)cornersForItem:(SEL)item;
- (SBWindowingItemFrame)frameForItem:(SEL)item;
- (SBWindowingItemTitleStyle)titleStyleForItem:(SEL)item;
- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index;
- (id)adjustedAppLayoutsForAppLayouts:(id)layouts;
- (id)animationAttributesForItem:(id)item;
- (void)didComplete;
- (void)timerFired:(id)fired;
- (void)transitionDidUpdate:(id)update;
- (void)transitionWillBegin:(id)begin;
- (void)willBegin;
@end

@implementation SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier

- (SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier)initWithFromAppLayout:(id)layout toAppLayout:(id)appLayout
{
  layoutCopy = layout;
  appLayoutCopy = appLayout;
  v17.receiver = self;
  v17.super_class = SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier;
  v10 = [(SBWindowingModifier *)&v17 init];
  if (v10)
  {
    if (layoutCopy)
    {
      if (appLayoutCopy)
      {
LABEL_4:
        objc_storeStrong(&v10->_fromAppLayout, layout);
        objc_storeStrong(&v10->_toAppLayout, appLayout);
        v10->_animationPhase = 0;
        v11 = MEMORY[0x277CCACA8];
        uUID = [MEMORY[0x277CCAD78] UUID];
        uUIDString = [uUID UUIDString];
        v14 = [v11 stringWithFormat:@"%@:%@", @"SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifierTimerEventReason", uUIDString];
        timerReason = v10->_timerReason;
        v10->_timerReason = v14;

        goto LABEL_5;
      }
    }

    else
    {
      [SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier initWithFromAppLayout:a2 toAppLayout:v10];
      if (appLayoutCopy)
      {
        goto LABEL_4;
      }
    }

    [SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier initWithFromAppLayout:a2 toAppLayout:v10];
    goto LABEL_4;
  }

LABEL_5:

  return v10;
}

- (void)willBegin
{
  displayItemInSlideOver = [(SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier *)self displayItemInSlideOver];
  v4 = displayItemInSlideOver;
  toAppLayout = self->_toAppLayout;
  if (displayItemInSlideOver)
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __70__SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier_willBegin__block_invoke;
    v26[3] = &unk_2783A8C90;
    v6 = displayItemInSlideOver;
    v27 = v6;
    v7 = [(SBAppLayout *)toAppLayout appLayoutWithItemsPassingTest:v26];
    adjustedToAppLayout = self->_adjustedToAppLayout;
    self->_adjustedToAppLayout = v7;

    fromAppLayout = self->_fromAppLayout;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __70__SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier_willBegin__block_invoke_2;
    v24[3] = &unk_2783A8C90;
    v25 = v6;
    v10 = [(SBAppLayout *)fromAppLayout appLayoutWithItemsPassingTest:v24];
    adjustedFromAppLayout = self->_adjustedFromAppLayout;
    self->_adjustedFromAppLayout = v10;
  }

  else
  {
    objc_storeStrong(&self->_adjustedToAppLayout, self->_toAppLayout);
    objc_storeStrong(&self->_adjustedFromAppLayout, self->_fromAppLayout);
  }

  v22 = 0;
  v23 = 0u;
  v20 = 0;
  v21 = 0u;
  v18 = 0;
  v19 = 0;
  v12 = self->_adjustedToAppLayout;
  v17.receiver = self;
  v17.super_class = SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier;
  [(SBWindowingModifier *)&v17 frameForItem:v12];
  v13 = v19;
  self->_toAppLayoutInitialBounds.origin = v18;
  self->_toAppLayoutInitialBounds.size = v13;
  self->_toAppLayoutInitialPosition = v20;
  self->_toAppLayoutInitialScale = v22;
  v14 = self->_adjustedToAppLayout;
  v16.receiver = self;
  v16.super_class = SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier;
  [(SBWindowingModifier *)&v16 cornersForItem:v14];
  self->_toAppLayoutInitialCornerRadius = v15;
}

- (BOOL)shouldInterruptForActivity:(id)activity
{
  activityCopy = activity;
  v5 = activityCopy;
  if (self->_transitionID && [activityCopy isTransitionEvent])
  {
    transitionID = [v5 transitionID];
    if (BSEqualObjects())
    {
      isGestureEvent = [v5 isGestureEvent];
    }

    else
    {
      isGestureEvent = 1;
    }
  }

  else
  {
    isGestureEvent = [v5 isGestureEvent];
  }

  return isGestureEvent;
}

- (void)transitionWillBegin:(id)begin
{
  transitionID = [begin transitionID];
  transitionID = self->_transitionID;
  self->_transitionID = transitionID;

  v6 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
  [(SBWindowingModifier *)self appendResponse:v6];
}

- (void)transitionDidUpdate:(id)update
{
  if (!self->_animationPhase)
  {
    v5 = [[SBTimerEventSwitcherEventResponse alloc] initWithDelay:0 validator:self->_timerReason reason:0.045];
    [(SBWindowingModifier *)self appendResponse:v5];
  }
}

- (void)didComplete
{
  v3 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
  [(SBWindowingModifier *)self appendResponse:v3];
}

- (void)timerFired:(id)fired
{
  v20[1] = *MEMORY[0x277D85DE8];
  reason = [fired reason];
  v5 = [reason isEqualToString:self->_timerReason];

  if (v5)
  {
    animationPhase = self->_animationPhase;
    if (animationPhase > 1)
    {
      if (animationPhase != 2)
      {
        if (animationPhase != 3)
        {
          return;
        }

        self->_animationPhase = 4;
        v8 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:12 updateMode:3];
        adjustedFromAppLayout = self->_adjustedFromAppLayout;
        v17[0] = self->_adjustedToAppLayout;
        v17[1] = adjustedFromAppLayout;
        v10 = MEMORY[0x277CBEA60];
        v11 = v17;
        goto LABEL_9;
      }

      self->_animationPhase = 3;
      v15 = [[SBTimerEventSwitcherEventResponse alloc] initWithDelay:0 validator:self->_timerReason reason:0.01];
      [(SBWindowingModifier *)self appendResponse:v15];

      v8 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:12 updateMode:2];
      v18 = self->_adjustedFromAppLayout;
      v10 = MEMORY[0x277CBEA60];
      v11 = &v18;
    }

    else
    {
      if (animationPhase)
      {
        if (animationPhase != 1)
        {
          return;
        }

        self->_animationPhase = 2;
        v7 = [[SBTimerEventSwitcherEventResponse alloc] initWithDelay:0 validator:self->_timerReason reason:0.25];
        [(SBWindowingModifier *)self appendResponse:v7];

        v8 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:12 updateMode:3];
        v9 = self->_adjustedFromAppLayout;
        v19[0] = self->_adjustedToAppLayout;
        v19[1] = v9;
        v10 = MEMORY[0x277CBEA60];
        v11 = v19;
LABEL_9:
        v13 = 2;
LABEL_13:
        v16 = [v10 arrayWithObjects:v11 count:v13];
        [(SBUpdateLayoutSwitcherEventResponse *)v8 setAppLayouts:v16];

        [(SBWindowingModifier *)self appendResponse:v8];
        return;
      }

      self->_animationPhase = 1;
      v14 = [[SBTimerEventSwitcherEventResponse alloc] initWithDelay:0 validator:self->_timerReason reason:0.01];
      [(SBWindowingModifier *)self appendResponse:v14];

      v8 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:12 updateMode:2];
      v20[0] = self->_adjustedToAppLayout;
      v10 = MEMORY[0x277CBEA60];
      v11 = v20;
    }

    v13 = 1;
    goto LABEL_13;
  }
}

- (id)adjustedAppLayoutsForAppLayouts:(id)layouts
{
  layoutsCopy = layouts;
  v16.receiver = self;
  v16.super_class = SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier;
  v5 = [(SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier *)&v16 adjustedAppLayoutsForAppLayouts:layoutsCopy];
  displayItemInSlideOver = [(SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier *)self displayItemInSlideOver];
  if (displayItemInSlideOver)
  {
    v7 = [v5 mutableCopy];
    v8 = [v5 indexOfObject:self->_fromAppLayout];
    if (([v7 containsObject:self->_adjustedFromAppLayout] & 1) == 0 && v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v7 replaceObjectAtIndex:v8 withObject:self->_adjustedFromAppLayout];
    }

    v9 = [v5 indexOfObject:self->_toAppLayout];
    v10 = [v7 indexOfObject:self->_adjustedToAppLayout];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL && v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v7 replaceObjectAtIndex:v9 withObject:self->_adjustedToAppLayout];
      v10 = v9;
    }

    v12 = [(SBAppLayout *)self->_toAppLayout leafAppLayoutForItem:displayItemInSlideOver];
    slideOverAppLayout = self->_slideOverAppLayout;
    self->_slideOverAppLayout = v12;

    if (([v7 containsObject:self->_slideOverAppLayout] & 1) == 0 && v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v7 insertObject:self->_slideOverAppLayout atIndex:v10];
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier;
    v7 = [(SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier *)&v15 adjustedAppLayoutsForAppLayouts:layoutsCopy];
  }

  return v7;
}

- (SBWindowingItemFrame)frameForItem:(SEL)item
{
  v6 = a4;
  if ([v6 isAppLayout])
  {
    retstr->scale = 0u;
    retstr->translation = 0u;
    retstr->position = 0u;
    retstr->anchorPoint = 0u;
    retstr->bounds.origin = 0u;
    retstr->bounds.size = 0u;
    v36.receiver = self;
    v36.super_class = SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier;
    [(SBWindowingItemFrame *)&v36 frameForItem:v6];
    appLayout = [v6 appLayout];
    if ([appLayout isEqual:self->_adjustedFromAppLayout])
    {
      animationPhase = self->_animationPhase;
      if (animationPhase > 2)
      {
        if (animationPhase == 3)
        {
          retstr->scale = vaddq_f64(retstr->scale, vdupq_n_s64(0xBF947AE147AE147BLL));
        }
      }

      else
      {
        v9 = [(SBWindowingModifier *)self flexibleAutoLayoutSpaceForAppLayout:appLayout];
        [v9 boundingBox];

        switcherSettings = [(SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier *)self switcherSettings];
        animationSettings = [switcherSettings animationSettings];
        [animationSettings crossblurDosidoLargeScale];
        v13 = v12;

        SBRectWithSize();
        retstr->bounds.origin.x = v14;
        retstr->bounds.origin.y = v15;
        retstr->bounds.size.width = v16;
        retstr->bounds.size.height = v17;
        UIRectGetCenter();
        retstr->position.x = v18;
        retstr->position.y = v19;
        __asm { FMOV            V0.2D, #0.5 }

        retstr->anchorPoint = _Q0;
        retstr->scale.x = v13;
        retstr->scale.y = v13;
      }
    }

    else if ([appLayout isEqual:self->_adjustedToAppLayout])
    {
      v25 = self->_animationPhase;
      if (v25 == 1)
      {
        switcherSettings2 = [(SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier *)self switcherSettings];
        animationSettings2 = [switcherSettings2 animationSettings];
        [animationSettings2 crossblurDosidoSmallScale];
        v34 = v33;

        retstr->scale.x = v34;
        retstr->scale.y = v34;
      }

      else if (!v25)
      {
        retstr->scale = self->_toAppLayoutInitialScale;
        SBRectWithSize();
        retstr->bounds.origin.x = v26;
        retstr->bounds.origin.y = v27;
        retstr->bounds.size.width = v28;
        retstr->bounds.size.height = v29;
        retstr->position = self->_toAppLayoutInitialPosition;
        if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
        {
          v30 = xmmword_21F8A6570;
        }

        else
        {
          v30 = xmmword_21F8A6540;
        }

        retstr->anchorPoint = v30;
      }
    }
  }

  else
  {
    v37.receiver = self;
    v37.super_class = SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier;
    [(SBWindowingItemFrame *)&v37 frameForItem:v6];
  }

  return result;
}

- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index
{
  layoutCopy = layout;
  v9 = [layoutCopy itemForLayoutRole:role];
  displayItemInSlideOver = [(SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier *)self displayItemInSlideOver];
  v11 = BSEqualObjects();

  v12 = 1.0;
  if ((v11 & 1) == 0)
  {
    if (![(SBAppLayout *)self->_adjustedFromAppLayout containsItem:v9]|| (v12 = 0.0, self->_animationPhase >= 4))
    {
      if (![(SBAppLayout *)self->_adjustedToAppLayout containsItem:v9])
      {
        goto LABEL_8;
      }

      animationPhase = self->_animationPhase;
      if (!animationPhase)
      {
        v12 = 0.0;
        goto LABEL_9;
      }

      if (animationPhase == 1)
      {
        v12 = 0.1;
      }

      else
      {
LABEL_8:
        v16.receiver = self;
        v16.super_class = SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier;
        [(SBWindowingModifier *)&v16 opacityForLayoutRole:role inAppLayout:layoutCopy atIndex:index];
        v12 = v14;
      }
    }
  }

LABEL_9:

  return v12;
}

- (CGPoint)perspectiveAngleForIndex:(unint64_t)index
{
  appLayouts = [(SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if ([v6 isEqual:self->_adjustedFromAppLayout] && self->_animationPhase <= 2)
  {
    v8 = *MEMORY[0x277CBF348];
    v7 = *(MEMORY[0x277CBF348] + 8);
  }

  else if ((-[SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier prefersStripHiddenAndDisabled](self, "prefersStripHiddenAndDisabled") & 1) != 0 || ![v6 isEqual:self->_adjustedToAppLayout] || self->_animationPhase)
  {
    v16.receiver = self;
    v16.super_class = SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier;
    [(SBWindowingModifier *)&v16 perspectiveAngleForIndex:index];
    v8 = v9;
    v7 = v10;
  }

  else
  {
    userInterfaceLayoutDirection = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
    windowingConfiguration = [(SBWindowingModifier *)self windowingConfiguration];
    [windowingConfiguration stripTiltAngle];
    v7 = v15;
    if (userInterfaceLayoutDirection == 1)
    {
      v7 = -v15;
    }

    v8 = 0.0;
  }

  v11 = v8;
  v12 = v7;
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGPoint)perspectiveAngleForLayoutRole:(int64_t)role inAppLayout:(id)layout withPerspectiveAngle:(CGPoint)angle
{
  y = angle.y;
  x = angle.x;
  layoutCopy = layout;
  v10 = [layoutCopy itemForLayoutRole:role];
  displayItemInSlideOver = [(SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier *)self displayItemInSlideOver];
  if (BSEqualObjects())
  {

LABEL_3:
    v13 = *MEMORY[0x277CBF348];
    v12 = *(MEMORY[0x277CBF348] + 8);
    goto LABEL_11;
  }

  if ([(SBAppLayout *)self->_adjustedFromAppLayout containsItem:v10])
  {
    animationPhase = self->_animationPhase;

    if (animationPhase < 3)
    {
      goto LABEL_3;
    }
  }

  else
  {
  }

  if ([(SBAppLayout *)self->_adjustedToAppLayout containsItem:v10]&& !self->_animationPhase)
  {
    userInterfaceLayoutDirection = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
    windowingConfiguration = [(SBWindowingModifier *)self windowingConfiguration];
    [windowingConfiguration stripTiltAngle];
    v12 = v21;
    if (userInterfaceLayoutDirection == 1)
    {
      v12 = -v21;
    }

    v13 = 0.0;
  }

  else
  {
    v22.receiver = self;
    v22.super_class = SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier;
    [(SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier *)&v22 perspectiveAngleForLayoutRole:role inAppLayout:layoutCopy withPerspectiveAngle:x, y];
    v13 = v15;
    v12 = v16;
  }

LABEL_11:

  v17 = v13;
  v18 = v12;
  result.y = v18;
  result.x = v17;
  return result;
}

- (SBWindowingItemCorners)cornersForItem:(SEL)item
{
  v6 = a4;
  *&retstr->cornerRadii.topLeft = 0u;
  *&retstr->cornerRadii.bottomRight = 0u;
  retstr->cornerMask = 0;
  v13.receiver = self;
  v13.super_class = SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier;
  [(SBWindowingItemCorners *)&v13 cornersForItem:v6];
  if ([v6 isAppLayout])
  {
    appLayout = [v6 appLayout];
    if ([appLayout isEqual:self->_adjustedFromAppLayout])
    {
      if (self->_animationPhase > 2)
      {
        if (![appLayout isEqual:self->_adjustedToAppLayout] || self->_animationPhase)
        {
          goto LABEL_8;
        }
      }

      else
      {
        [(SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier *)self bestSupportedDefaultCornerRadiusForAppLayout:appLayout];
        [(SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier *)self frameForItem:v6];
      }

      SBRectCornerRadiiForRadius();
      retstr->cornerRadii.topLeft = v8;
      retstr->cornerRadii.bottomLeft = v9;
      retstr->cornerRadii.bottomRight = v10;
      retstr->cornerRadii.topRight = v11;
    }

LABEL_8:
  }

  return result;
}

- (SBWindowingItemTitleStyle)titleStyleForItem:(SEL)item
{
  v6 = a4;
  *&retstr->titleAndIconOpacity = 0u;
  *&retstr->iconOpacity = 0u;
  retstr->footerViewIconAlignment = 0;
  v9.receiver = self;
  v9.super_class = SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier;
  [(SBWindowingItemTitleStyle *)&v9 titleStyleForItem:v6];
  if ([v6 isAppLayout])
  {
    appLayout = [v6 appLayout];
    if ([appLayout isEqual:self->_adjustedFromAppLayout] && self->_animationPhase < 3 || objc_msgSend(appLayout, "isEqual:", self->_adjustedToAppLayout) && self->_animationPhase <= 1)
    {
      retstr->titleAndIconOpacity = 0.0;
    }
  }

  return result;
}

- (id)animationAttributesForItem:(id)item
{
  v11.receiver = self;
  v11.super_class = SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier;
  v4 = [(SBWindowingModifier *)&v11 animationAttributesForItem:item];
  v5 = [v4 mutableCopy];

  switcherSettings = [(SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];
  crossblurDosidoSettings = [animationSettings crossblurDosidoSettings];
  v9 = [crossblurDosidoSettings copy];

  [v9 setResponse:0.45];
  [v9 setDampingRatio:0.92];
  [v5 setLayoutUpdateMode:3];
  [v5 setLayoutSettings:v9];
  [v5 setOpacitySettings:v9];

  return v5;
}

- (void)initWithFromAppLayout:(uint64_t)a1 toAppLayout:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"fromAppLayout"}];
}

- (void)initWithFromAppLayout:(uint64_t)a1 toAppLayout:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"toAppLayout"}];
}

@end