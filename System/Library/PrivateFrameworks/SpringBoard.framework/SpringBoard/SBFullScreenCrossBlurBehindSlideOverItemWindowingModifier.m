@interface SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier
- (BOOL)shouldInterruptForActivity:(id)a3;
- (CGPoint)perspectiveAngleForIndex:(unint64_t)a3;
- (CGPoint)perspectiveAngleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withPerspectiveAngle:(CGPoint)a5;
- (SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier)initWithFromAppLayout:(id)a3 toAppLayout:(id)a4;
- (SBWindowingItemCorners)cornersForItem:(SEL)a3;
- (SBWindowingItemFrame)frameForItem:(SEL)a3;
- (SBWindowingItemTitleStyle)titleStyleForItem:(SEL)a3;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (id)adjustedAppLayoutsForAppLayouts:(id)a3;
- (id)animationAttributesForItem:(id)a3;
- (void)didComplete;
- (void)timerFired:(id)a3;
- (void)transitionDidUpdate:(id)a3;
- (void)transitionWillBegin:(id)a3;
- (void)willBegin;
@end

@implementation SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier

- (SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier)initWithFromAppLayout:(id)a3 toAppLayout:(id)a4
{
  v8 = a3;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier;
  v10 = [(SBWindowingModifier *)&v17 init];
  if (v10)
  {
    if (v8)
    {
      if (v9)
      {
LABEL_4:
        objc_storeStrong(&v10->_fromAppLayout, a3);
        objc_storeStrong(&v10->_toAppLayout, a4);
        v10->_animationPhase = 0;
        v11 = MEMORY[0x277CCACA8];
        v12 = [MEMORY[0x277CCAD78] UUID];
        v13 = [v12 UUIDString];
        v14 = [v11 stringWithFormat:@"%@:%@", @"SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifierTimerEventReason", v13];
        timerReason = v10->_timerReason;
        v10->_timerReason = v14;

        goto LABEL_5;
      }
    }

    else
    {
      [SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier initWithFromAppLayout:a2 toAppLayout:v10];
      if (v9)
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
  v3 = [(SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier *)self displayItemInSlideOver];
  v4 = v3;
  toAppLayout = self->_toAppLayout;
  if (v3)
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __70__SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier_willBegin__block_invoke;
    v26[3] = &unk_2783A8C90;
    v6 = v3;
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

- (BOOL)shouldInterruptForActivity:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_transitionID && [v4 isTransitionEvent])
  {
    v6 = [v5 transitionID];
    if (BSEqualObjects())
    {
      v7 = [v5 isGestureEvent];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = [v5 isGestureEvent];
  }

  return v7;
}

- (void)transitionWillBegin:(id)a3
{
  v4 = [a3 transitionID];
  transitionID = self->_transitionID;
  self->_transitionID = v4;

  v6 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
  [(SBWindowingModifier *)self appendResponse:v6];
}

- (void)transitionDidUpdate:(id)a3
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

- (void)timerFired:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = [a3 reason];
  v5 = [v4 isEqualToString:self->_timerReason];

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

- (id)adjustedAppLayoutsForAppLayouts:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier;
  v5 = [(SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier *)&v16 adjustedAppLayoutsForAppLayouts:v4];
  v6 = [(SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier *)self displayItemInSlideOver];
  if (v6)
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

    v12 = [(SBAppLayout *)self->_toAppLayout leafAppLayoutForItem:v6];
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
    v7 = [(SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier *)&v15 adjustedAppLayoutsForAppLayouts:v4];
  }

  return v7;
}

- (SBWindowingItemFrame)frameForItem:(SEL)a3
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
    v7 = [v6 appLayout];
    if ([v7 isEqual:self->_adjustedFromAppLayout])
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
        v9 = [(SBWindowingModifier *)self flexibleAutoLayoutSpaceForAppLayout:v7];
        [v9 boundingBox];

        v10 = [(SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier *)self switcherSettings];
        v11 = [v10 animationSettings];
        [v11 crossblurDosidoLargeScale];
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

    else if ([v7 isEqual:self->_adjustedToAppLayout])
    {
      v25 = self->_animationPhase;
      if (v25 == 1)
      {
        v31 = [(SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier *)self switcherSettings];
        v32 = [v31 animationSettings];
        [v32 crossblurDosidoSmallScale];
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

- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  v8 = a4;
  v9 = [v8 itemForLayoutRole:a3];
  v10 = [(SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier *)self displayItemInSlideOver];
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
        [(SBWindowingModifier *)&v16 opacityForLayoutRole:a3 inAppLayout:v8 atIndex:a5];
        v12 = v14;
      }
    }
  }

LABEL_9:

  return v12;
}

- (CGPoint)perspectiveAngleForIndex:(unint64_t)a3
{
  v5 = [(SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if ([v6 isEqual:self->_adjustedFromAppLayout] && self->_animationPhase <= 2)
  {
    v8 = *MEMORY[0x277CBF348];
    v7 = *(MEMORY[0x277CBF348] + 8);
  }

  else if ((-[SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier prefersStripHiddenAndDisabled](self, "prefersStripHiddenAndDisabled") & 1) != 0 || ![v6 isEqual:self->_adjustedToAppLayout] || self->_animationPhase)
  {
    v16.receiver = self;
    v16.super_class = SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier;
    [(SBWindowingModifier *)&v16 perspectiveAngleForIndex:a3];
    v8 = v9;
    v7 = v10;
  }

  else
  {
    v13 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
    v14 = [(SBWindowingModifier *)self windowingConfiguration];
    [v14 stripTiltAngle];
    v7 = v15;
    if (v13 == 1)
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

- (CGPoint)perspectiveAngleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withPerspectiveAngle:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = a4;
  v10 = [v9 itemForLayoutRole:a3];
  v11 = [(SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier *)self displayItemInSlideOver];
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
    v19 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
    v20 = [(SBWindowingModifier *)self windowingConfiguration];
    [v20 stripTiltAngle];
    v12 = v21;
    if (v19 == 1)
    {
      v12 = -v21;
    }

    v13 = 0.0;
  }

  else
  {
    v22.receiver = self;
    v22.super_class = SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier;
    [(SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier *)&v22 perspectiveAngleForLayoutRole:a3 inAppLayout:v9 withPerspectiveAngle:x, y];
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

- (SBWindowingItemCorners)cornersForItem:(SEL)a3
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
    v7 = [v6 appLayout];
    if ([v7 isEqual:self->_adjustedFromAppLayout])
    {
      if (self->_animationPhase > 2)
      {
        if (![v7 isEqual:self->_adjustedToAppLayout] || self->_animationPhase)
        {
          goto LABEL_8;
        }
      }

      else
      {
        [(SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier *)self bestSupportedDefaultCornerRadiusForAppLayout:v7];
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

- (SBWindowingItemTitleStyle)titleStyleForItem:(SEL)a3
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
    v7 = [v6 appLayout];
    if ([v7 isEqual:self->_adjustedFromAppLayout] && self->_animationPhase < 3 || objc_msgSend(v7, "isEqual:", self->_adjustedToAppLayout) && self->_animationPhase <= 1)
    {
      retstr->titleAndIconOpacity = 0.0;
    }
  }

  return result;
}

- (id)animationAttributesForItem:(id)a3
{
  v11.receiver = self;
  v11.super_class = SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier;
  v4 = [(SBWindowingModifier *)&v11 animationAttributesForItem:a3];
  v5 = [v4 mutableCopy];

  v6 = [(SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier *)self switcherSettings];
  v7 = [v6 animationSettings];
  v8 = [v7 crossblurDosidoSettings];
  v9 = [v8 copy];

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