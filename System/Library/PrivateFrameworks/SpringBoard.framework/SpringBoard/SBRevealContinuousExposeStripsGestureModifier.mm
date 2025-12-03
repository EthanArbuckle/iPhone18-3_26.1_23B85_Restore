@interface SBRevealContinuousExposeStripsGestureModifier
- (SBRevealContinuousExposeStripsGestureModifier)initWithGestureID:(id)d initialAppLayout:(id)layout;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index;
- (double)shadowOpacityForLayoutRole:(int64_t)role atIndex:(unint64_t)index;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)handleGestureEvent:(id)event;
- (id)handleTransitionEvent:(id)event;
@end

@implementation SBRevealContinuousExposeStripsGestureModifier

- (SBRevealContinuousExposeStripsGestureModifier)initWithGestureID:(id)d initialAppLayout:(id)layout
{
  layoutCopy = layout;
  v11.receiver = self;
  v11.super_class = SBRevealContinuousExposeStripsGestureModifier;
  v9 = [(SBGestureSwitcherModifier *)&v11 initWithGestureID:d];
  if (v9)
  {
    if (!layoutCopy)
    {
      [SBRevealContinuousExposeStripsGestureModifier initWithGestureID:a2 initialAppLayout:v9];
    }

    objc_storeStrong(&v9->_initialAppLayout, layout);
  }

  return v9;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index
{
  appLayouts = [(SBRevealContinuousExposeStripsGestureModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if ([v6 isEqual:self->_initialAppLayout] && (-[SBRevealContinuousExposeStripsGestureModifier windowManagementContext](self, "windowManagementContext"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isFlexibleWindowingEnabled"), v7, (v8 & 1) == 0))
  {
    [(SBRevealContinuousExposeStripsGestureModifier *)self bestSupportedDefaultCornerRadiusForAppLayout:v6];
    [(SBRevealContinuousExposeStripsGestureModifier *)self scaleForIndex:index];
    SBRectCornerRadiiForRadius();
  }

  else
  {
    v21.receiver = self;
    v21.super_class = SBRevealContinuousExposeStripsGestureModifier;
    [(SBRevealContinuousExposeStripsGestureModifier *)&v21 cornerRadiiForIndex:index];
  }

  v13 = v9;
  v14 = v10;
  v15 = v11;
  v16 = v12;

  v17 = v13;
  v18 = v14;
  v19 = v15;
  v20 = v16;
  result.topRight = v20;
  result.bottomRight = v19;
  result.bottomLeft = v18;
  result.topLeft = v17;
  return result;
}

- (double)shadowOpacityForLayoutRole:(int64_t)role atIndex:(unint64_t)index
{
  v23.receiver = self;
  v23.super_class = SBRevealContinuousExposeStripsGestureModifier;
  [(SBRevealContinuousExposeStripsGestureModifier *)&v23 shadowOpacityForLayoutRole:role atIndex:?];
  v7 = v6;
  appLayouts = [(SBRevealContinuousExposeStripsGestureModifier *)self appLayouts];
  v9 = [appLayouts objectAtIndex:index];

  if ([v9 isEqual:self->_initialAppLayout])
  {
    windowManagementContext = [(SBRevealContinuousExposeStripsGestureModifier *)self windowManagementContext];
    isFlexibleWindowingEnabled = [windowManagementContext isFlexibleWindowingEnabled];

    if ((isFlexibleWindowingEnabled & 1) == 0)
    {
      v22.receiver = self;
      v22.super_class = SBRevealContinuousExposeStripsGestureModifier;
      [(SBRevealContinuousExposeStripsGestureModifier *)&v22 frameForIndex:index];
      v13 = v12;
      v15 = v14;
      [(SBRevealContinuousExposeStripsGestureModifier *)self containerViewBounds];
      if (v13 == v17 && v15 == v16)
      {
        v19 = v7 * self->_progress;
        if (v19 <= 0.0)
        {
          v20 = 0.0;
        }

        else
        {
          v20 = v19 + 0.0;
        }

        v7 = fmin(v20, 1.0);
      }
    }
  }

  return v7;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  v9.receiver = self;
  v9.super_class = SBRevealContinuousExposeStripsGestureModifier;
  elementCopy = element;
  v4 = [(SBGestureSwitcherModifier *)&v9 animationAttributesForLayoutElement:elementCopy];
  v5 = [v4 mutableCopy];

  switcherLayoutElementType = [elementCopy switcherLayoutElementType];
  if (!switcherLayoutElementType)
  {
    initWithDefaultValues = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
    [initWithDefaultValues setTrackingResponse:0.15];
    [initWithDefaultValues setTrackingDampingRatio:0.85];
    v11 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
    [initWithDefaultValues setFrameRateRange:1114113 highFrameRateReason:{*&v11.minimum, *&v11.maximum, *&v11.preferred}];
    [v5 setLayoutSettings:initWithDefaultValues];
    [v5 setPositionSettings:initWithDefaultValues];
    [v5 setOpacitySettings:initWithDefaultValues];
    [v5 setUpdateMode:5];
    if ([v5 layoutUpdateMode])
    {
      [v5 setLayoutUpdateMode:5];
    }

    if ([v5 positionUpdateMode])
    {
      [v5 setPositionUpdateMode:5];
    }

    if ([v5 scaleUpdateMode])
    {
      [v5 setScaleUpdateMode:5];
    }
  }

  return v5;
}

- (id)handleGestureEvent:(id)event
{
  eventCopy = event;
  v20.receiver = self;
  v20.super_class = SBRevealContinuousExposeStripsGestureModifier;
  v5 = [(SBGestureSwitcherModifier *)&v20 handleGestureEvent:eventCopy];
  isIndirectPanGestureEvent = [eventCopy isIndirectPanGestureEvent];
  [(SBRevealContinuousExposeStripsGestureModifier *)self isRTLEnabled];
  [eventCopy translationInContainerView];
  windowingConfiguration = [(SBSwitcherModifier *)self windowingConfiguration];
  [windowingConfiguration stripWidth];

  v19 = 0u;
  BYTE8(v19) = 1;
  BSUIConstrainValueToIntervalWithRubberBand();
  self->_progress = v8;
  if ([eventCopy phase] == 3)
  {
    if (isIndirectPanGestureEvent)
    {
      indirectPanEndReason = [eventCopy indirectPanEndReason];
      if ([eventCopy isCanceled])
      {
        if (indirectPanEndReason != 6)
        {
LABEL_13:
          v11 = [[SBUpdateContinuousExposeStripsPresentationResponse alloc] initWithPresentationOptions:0 dismissalOptions:1];
          goto LABEL_14;
        }
      }

      else if (indirectPanEndReason != 4 && (BSFloatGreaterThanOrEqualToFloat() & 1) == 0)
      {
        goto LABEL_13;
      }

      v10 = 2;
    }

    else
    {
      if (([eventCopy isCanceled] & 1) != 0 || !BSFloatGreaterThanOrEqualToFloat())
      {
        goto LABEL_13;
      }

      v10 = 1;
    }

    v11 = [[SBUpdateContinuousExposeStripsPresentationResponse alloc] initWithPresentationOptions:1 dismissalOptions:0 touchType:v10];
LABEL_14:
    v12 = v11;
    v13 = SBAppendSwitcherModifierResponse(v11, v5);

    v14 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:12 updateMode:3];
    v15 = SBAppendSwitcherModifierResponse(v14, v13);

    v16 = [SBSwitcherTransitionRequest requestForActivatingAppLayout:self->_initialAppLayout];
    v17 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v16 gestureInitiated:1];
    v5 = SBAppendSwitcherModifierResponse(v17, v15);
  }

  return v5;
}

- (id)handleTransitionEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = SBRevealContinuousExposeStripsGestureModifier;
  eventCopy = event;
  v5 = [(SBGestureSwitcherModifier *)&v8 handleTransitionEvent:eventCopy];
  phase = [eventCopy phase];

  if (phase >= 2)
  {
    [(SBChainableModifier *)self setState:1];
  }

  return v5;
}

- (void)initWithGestureID:(uint64_t)a1 initialAppLayout:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBRevealContinuousExposeStripsGestureModifier.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"initialAppLayout"}];
}

@end