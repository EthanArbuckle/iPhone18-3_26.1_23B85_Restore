@interface SBCrossblurDosidoSwitcherModifier
- (BOOL)isWallpaperRequiredForSwitcher;
- (BOOL)shouldAsyncRenderUntilDelay:(double *)delay;
- (CGPoint)perspectiveAngleForIndex:(unint64_t)index;
- (CGRect)frameForIndex:(unint64_t)index;
- (SBCrossblurDosidoSwitcherModifier)initWithTransitionID:(id)d fromAppLayout:(id)layout toAppLayout:(id)appLayout direction:(unint64_t)direction;
- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index;
- (double)scaleForIndex:(unint64_t)index;
- (double)scaleForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (id)_layoutSettings;
- (id)_opacitySettings;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)handleResizeProgressEvent:(id)event;
- (id)resizeProgressNotificationsForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (id)topMostLayoutElements;
- (id)transitionDidEnd;
- (id)transitionWillBegin;
- (id)transitionWillUpdate;
- (int64_t)wallpaperStyle;
@end

@implementation SBCrossblurDosidoSwitcherModifier

- (SBCrossblurDosidoSwitcherModifier)initWithTransitionID:(id)d fromAppLayout:(id)layout toAppLayout:(id)appLayout direction:(unint64_t)direction
{
  layoutCopy = layout;
  appLayoutCopy = appLayout;
  v16.receiver = self;
  v16.super_class = SBCrossblurDosidoSwitcherModifier;
  v14 = [(SBTransitionSwitcherModifier *)&v16 initWithTransitionID:d];
  if (v14)
  {
    if (layoutCopy)
    {
      if (appLayoutCopy)
      {
LABEL_4:
        objc_storeStrong(&v14->_fromAppLayout, layout);
        objc_storeStrong(&v14->_toAppLayout, appLayout);
        v14->_direction = direction;
        goto LABEL_5;
      }
    }

    else
    {
      [SBCrossblurDosidoSwitcherModifier initWithTransitionID:a2 fromAppLayout:v14 toAppLayout:? direction:?];
      if (appLayoutCopy)
      {
        goto LABEL_4;
      }
    }

    [SBCrossblurDosidoSwitcherModifier initWithTransitionID:a2 fromAppLayout:v14 toAppLayout:? direction:?];
    goto LABEL_4;
  }

LABEL_5:

  return v14;
}

- (BOOL)shouldAsyncRenderUntilDelay:(double *)delay
{
  switcherSettings = [(SBCrossblurDosidoSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];
  [animationSettings disableAsyncRenderingTransitionPercentage];
  v8 = v7;

  _layoutSettings = [(SBCrossblurDosidoSwitcherModifier *)self _layoutSettings];
  [_layoutSettings settlingDuration];
  v11 = v8 * v10;
  UIAnimationDragCoefficient();
  *delay = v11 * v12;

  return 1;
}

- (id)transitionWillBegin
{
  v20.receiver = self;
  v20.super_class = SBCrossblurDosidoSwitcherModifier;
  transitionWillBegin = [(SBTransitionSwitcherModifier *)&v20 transitionWillBegin];
  v4 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:2 updateMode:2];
  v5 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v4 toResponse:transitionWillBegin];

  v6 = +[SBBlurItemContainerParameters defaultCrossblurBlurParameters];
  switcherSettings = [(SBCrossblurDosidoSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];

  v9 = [SBBlurItemContainerParameters alloc];
  [animationSettings homeScreenCenterZoomInitialBlur];
  v11 = v10;
  shouldRasterize = [v6 shouldRasterize];
  [v6 rasterizationScale];
  v14 = v13;
  blurAnimationSettings = [v6 blurAnimationSettings];
  v16 = [(SBBlurItemContainerParameters *)v9 initWithBlurRadius:shouldRasterize shouldRasterize:1 rasterizationScale:1 inputQuality:blurAnimationSettings inputIntermediateBitDepth:v11 blurAnimationSettings:v14];

  v17 = [[SBBlurItemContainerSwitcherEventResponse alloc] initWithAppLayout:self->_toAppLayout shouldBlur:1 blurParameters:v16 animationUpdateMode:2];
  v18 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v17 toResponse:v5];

  return v18;
}

- (id)transitionWillUpdate
{
  v22.receiver = self;
  v22.super_class = SBCrossblurDosidoSwitcherModifier;
  transitionWillUpdate = [(SBTransitionSwitcherModifier *)&v22 transitionWillUpdate];
  v4 = [[SBBlurItemContainerSwitcherEventResponse alloc] initWithAppLayout:self->_fromAppLayout shouldBlur:1 animationUpdateMode:3];
  v5 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v4 toResponse:transitionWillUpdate];

  v6 = +[SBBlurItemContainerParameters defaultCrossblurBlurParameters];
  switcherSettings = [(SBCrossblurDosidoSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];

  [animationSettings homeScreenCenterZoomInitialBlur];
  v10 = v9;
  [animationSettings homeScreenCenterZoomTargetScaleWhenUnblurringIsComplete];
  v12 = v10 * (v11 + -1.0) / v11;
  v13 = [SBBlurItemContainerParameters alloc];
  shouldRasterize = [v6 shouldRasterize];
  [v6 rasterizationScale];
  v16 = v15;
  blurAnimationSettings = [v6 blurAnimationSettings];
  v18 = [(SBBlurItemContainerParameters *)v13 initWithBlurRadius:shouldRasterize shouldRasterize:1 rasterizationScale:1 inputQuality:blurAnimationSettings inputIntermediateBitDepth:v12 blurAnimationSettings:v16];

  v19 = [[SBBlurItemContainerSwitcherEventResponse alloc] initWithAppLayout:self->_toAppLayout shouldBlur:1 blurParameters:v18 animationUpdateMode:3];
  v20 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v19 toResponse:v5];

  return v20;
}

- (id)transitionDidEnd
{
  v9.receiver = self;
  v9.super_class = SBCrossblurDosidoSwitcherModifier;
  transitionDidEnd = [(SBTransitionSwitcherModifier *)&v9 transitionDidEnd];
  v4 = [[SBBlurItemContainerSwitcherEventResponse alloc] initWithAppLayout:self->_fromAppLayout shouldBlur:0 animationUpdateMode:2];
  v5 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v4 toResponse:transitionDidEnd];

  v6 = [[SBBlurItemContainerSwitcherEventResponse alloc] initWithAppLayout:self->_toAppLayout shouldBlur:0 animationUpdateMode:2];
  v7 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v6 toResponse:v5];

  return v7;
}

- (id)handleResizeProgressEvent:(id)event
{
  v11.receiver = self;
  v11.super_class = SBCrossblurDosidoSwitcherModifier;
  eventCopy = event;
  v5 = [(SBSwitcherModifier *)&v11 handleResizeProgressEvent:eventCopy];
  [eventCopy progress];

  switcherSettings = [(SBCrossblurDosidoSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];

  [animationSettings homeScreenCenterZoomTargetScaleWhenUnblurringIsComplete];
  if (BSFloatGreaterThanOrEqualToFloat())
  {
    v8 = [[SBBlurItemContainerSwitcherEventResponse alloc] initWithAppLayout:self->_toAppLayout shouldBlur:0 animationUpdateMode:2];
    v9 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v8 toResponse:v5];

    v5 = v9;
  }

  return v5;
}

- (CGRect)frameForIndex:(unint64_t)index
{
  appLayouts = [(SBCrossblurDosidoSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  fromAppLayout = self->_fromAppLayout;
  if (v6 == fromAppLayout || v6 == self->_toAppLayout)
  {
    if ([(SBAppLayout *)v6 environment]== 2)
    {
      [(SBCrossblurDosidoSwitcherModifier *)self containerViewBounds];
      goto LABEL_28;
    }

    fromAppLayout = self->_fromAppLayout;
  }

  if (v6 == fromAppLayout)
  {
    if ([(SBTransitionSwitcherModifier *)self transitionPhase]== 1)
    {
      selfCopy = self;
      v35 = SBCrossblurDosidoSwitcherModifier;
      v12 = &selfCopy;
LABEL_27:
      objc_msgSendSuper2(v12, sel_frameForIndex_, index, selfCopy3, v29, selfCopy2, v31, v32.receiver, v32.super_class, v33.receiver, v33.super_class, selfCopy, v35);
      goto LABEL_28;
    }

    fromAppLayout = self->_fromAppLayout;
  }

  if (v6 == fromAppLayout && [(SBTransitionSwitcherModifier *)self transitionPhase]>= 2)
  {
    appLayouts2 = [(SBCrossblurDosidoSwitcherModifier *)self appLayouts];
    v14 = [appLayouts2 indexOfObject:self->_toAppLayout];

    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      indexCopy = index;
    }

    else
    {
      indexCopy = v14;
    }

    [(SBCrossblurDosidoSwitcherModifier *)&v33 frameForIndex:indexCopy, selfCopy3, v29, selfCopy2, v31, v32.receiver, v32.super_class, self, SBCrossblurDosidoSwitcherModifier, selfCopy, v35];
    goto LABEL_28;
  }

  toAppLayout = self->_toAppLayout;
  if (v6 != toAppLayout)
  {
LABEL_23:
    if (v6 == toAppLayout && [(SBTransitionSwitcherModifier *)self transitionPhase]>= 2)
    {
      selfCopy2 = self;
      v31 = SBCrossblurDosidoSwitcherModifier;
      v12 = &selfCopy2;
    }

    else
    {
      selfCopy3 = self;
      v29 = SBCrossblurDosidoSwitcherModifier;
      v12 = &selfCopy3;
    }

    goto LABEL_27;
  }

  if ([(SBTransitionSwitcherModifier *)self transitionPhase]!= 1)
  {
    toAppLayout = self->_toAppLayout;
    goto LABEL_23;
  }

  appLayouts3 = [(SBCrossblurDosidoSwitcherModifier *)self appLayouts];
  v18 = [appLayouts3 indexOfObject:self->_fromAppLayout];

  if (v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    indexCopy2 = index;
  }

  else
  {
    indexCopy2 = v18;
  }

  [(SBCrossblurDosidoSwitcherModifier *)&v32 frameForIndex:indexCopy2, selfCopy3, v29, selfCopy2, v31, self, SBCrossblurDosidoSwitcherModifier, v33.receiver, v33.super_class, selfCopy, v35];
LABEL_28:
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v23 = v11;

  v24 = v20;
  v25 = v21;
  v26 = v22;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (double)scaleForIndex:(unint64_t)index
{
  appLayouts = [(SBCrossblurDosidoSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  v7 = 1.0;
  if (v6 != self->_fromAppLayout && v6 != self->_toAppLayout)
  {
    v10.receiver = self;
    v10.super_class = SBCrossblurDosidoSwitcherModifier;
    [(SBCrossblurDosidoSwitcherModifier *)&v10 scaleForIndex:index];
    v7 = v8;
  }

  return v7;
}

- (double)scaleForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  transitionPhase = [(SBTransitionSwitcherModifier *)self transitionPhase];
  switcherSettings = [(SBCrossblurDosidoSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];

  if (self->_fromAppLayout == layoutCopy)
  {
    v11 = 1.0;
    if (transitionPhase >= 2)
    {
      if (self->_direction == 1)
      {
        [animationSettings crossblurDosidoSmallScale];
        goto LABEL_11;
      }

LABEL_9:
      [animationSettings crossblurDosidoLargeScale];
      goto LABEL_11;
    }
  }

  else
  {
    if (self->_toAppLayout != layoutCopy)
    {
      v13.receiver = self;
      v13.super_class = SBCrossblurDosidoSwitcherModifier;
      [(SBCrossblurDosidoSwitcherModifier *)&v13 scaleForLayoutRole:role inAppLayout:layoutCopy];
LABEL_11:
      v11 = v10;
      goto LABEL_12;
    }

    v11 = 1.0;
    if (transitionPhase <= 1)
    {
      if (self->_direction != 1)
      {
        [animationSettings crossblurDosidoCenterZoomUpSmallScale];
        goto LABEL_11;
      }

      goto LABEL_9;
    }
  }

LABEL_12:

  return v11;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  v9.receiver = self;
  v9.super_class = SBCrossblurDosidoSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v9 animationAttributesForLayoutElement:element];
  v5 = [v4 mutableCopy];

  _layoutSettings = [(SBCrossblurDosidoSwitcherModifier *)self _layoutSettings];
  [v5 setLayoutSettings:_layoutSettings];

  _opacitySettings = [(SBCrossblurDosidoSwitcherModifier *)self _opacitySettings];
  [v5 setOpacitySettings:_opacitySettings];

  return v5;
}

- (id)_layoutSettings
{
  switcherSettings = [(SBCrossblurDosidoSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];
  crossblurDosidoSettings = [animationSettings crossblurDosidoSettings];

  return crossblurDosidoSettings;
}

- (id)_opacitySettings
{
  switcherSettings = [(SBCrossblurDosidoSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];
  crossblurDosidoSettings = [animationSettings crossblurDosidoSettings];

  return crossblurDosidoSettings;
}

- (id)resizeProgressNotificationsForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  v17[3] = *MEMORY[0x277D85DE8];
  if (self->_toAppLayout == layout)
  {
    v16.receiver = self;
    v16.super_class = SBCrossblurDosidoSwitcherModifier;
    v6 = [(SBCrossblurDosidoSwitcherModifier *)&v16 resizeProgressNotificationsForLayoutRole:role inAppLayout:?];
    switcherSettings = [(SBCrossblurDosidoSwitcherModifier *)self switcherSettings];
    animationSettings = [switcherSettings animationSettings];

    [animationSettings homeScreenCenterZoomTargetScaleWhenUnblurringIsComplete];
    v10 = v9;
    [animationSettings homeScreenCenterZoomInitialScale];
    v17[0] = &unk_28336F300;
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:(v10 - v11) / (1.0 - v11)];
    v17[1] = v12;
    v17[2] = &unk_28336F310;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
    v5 = [v6 setByAddingObjectsFromArray:v13];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = SBCrossblurDosidoSwitcherModifier;
    v5 = [(SBCrossblurDosidoSwitcherModifier *)&v15 resizeProgressNotificationsForLayoutRole:role inAppLayout:?];
  }

  return v5;
}

- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index
{
  layoutCopy = layout;
  appLayouts = [(SBCrossblurDosidoSwitcherModifier *)self appLayouts];
  v10 = [appLayouts indexOfObject:self->_fromAppLayout];
  v11 = [appLayouts indexOfObject:self->_toAppLayout];
  if (v10 == index)
  {
    if ([(SBTransitionSwitcherModifier *)self transitionPhase]>= 2)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = 1.0;
    }
  }

  else if (v11 == index)
  {
    v12 = 1.0;
    if ([(SBTransitionSwitcherModifier *)self transitionPhase]<= 1)
    {
      switcherSettings = [(SBCrossblurDosidoSwitcherModifier *)self switcherSettings];
      animationSettings = [switcherSettings animationSettings];
      [animationSettings homeScreenCenterZoomInitialOpacity];
      v12 = v15;
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = SBCrossblurDosidoSwitcherModifier;
    [(SBCrossblurDosidoSwitcherModifier *)&v18 opacityForLayoutRole:role inAppLayout:layoutCopy atIndex:index];
    v12 = v16;
  }

  return v12;
}

- (BOOL)isWallpaperRequiredForSwitcher
{
  windowManagementContext = [(SBCrossblurDosidoSwitcherModifier *)self windowManagementContext];
  if ([windowManagementContext isChamoisOrFlexibleWindowing])
  {
    v6.receiver = self;
    v6.super_class = SBCrossblurDosidoSwitcherModifier;
    isWallpaperRequiredForSwitcher = [(SBCrossblurDosidoSwitcherModifier *)&v6 isWallpaperRequiredForSwitcher];
  }

  else
  {
    isWallpaperRequiredForSwitcher = 1;
  }

  return isWallpaperRequiredForSwitcher;
}

- (int64_t)wallpaperStyle
{
  windowManagementContext = [(SBCrossblurDosidoSwitcherModifier *)self windowManagementContext];
  if ([windowManagementContext isChamoisOrFlexibleWindowing])
  {
    v6.receiver = self;
    v6.super_class = SBCrossblurDosidoSwitcherModifier;
    wallpaperStyle = [(SBCrossblurDosidoSwitcherModifier *)&v6 wallpaperStyle];
  }

  else
  {
    wallpaperStyle = 2;
  }

  return wallpaperStyle;
}

- (CGPoint)perspectiveAngleForIndex:(unint64_t)index
{
  appLayouts = [(SBCrossblurDosidoSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if (([v6 isEqual:self->_fromAppLayout] & 1) != 0 || objc_msgSend(v6, "isEqual:", self->_toAppLayout))
  {
    v7 = *MEMORY[0x277CBF348];
    v8 = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBCrossblurDosidoSwitcherModifier;
    [(SBCrossblurDosidoSwitcherModifier *)&v13 perspectiveAngleForIndex:index];
    v7 = v9;
    v8 = v10;
  }

  v11 = v7;
  v12 = v8;
  result.y = v12;
  result.x = v11;
  return result;
}

- (id)topMostLayoutElements
{
  v6.receiver = self;
  v6.super_class = SBCrossblurDosidoSwitcherModifier;
  topMostLayoutElements = [(SBCrossblurDosidoSwitcherModifier *)&v6 topMostLayoutElements];
  v4 = [topMostLayoutElements sb_arrayByInsertingOrMovingObject:self->_toAppLayout toIndex:0];

  return v4;
}

- (void)initWithTransitionID:(uint64_t)a1 fromAppLayout:(uint64_t)a2 toAppLayout:direction:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBCrossblurDosidoSwitcherModifier.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"fromAppLayout"}];
}

- (void)initWithTransitionID:(uint64_t)a1 fromAppLayout:(uint64_t)a2 toAppLayout:direction:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBCrossblurDosidoSwitcherModifier.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"toAppLayout"}];
}

@end