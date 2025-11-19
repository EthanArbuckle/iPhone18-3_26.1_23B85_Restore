@interface SBCrossblurDosidoSwitcherModifier
- (BOOL)isWallpaperRequiredForSwitcher;
- (BOOL)shouldAsyncRenderUntilDelay:(double *)a3;
- (CGPoint)perspectiveAngleForIndex:(unint64_t)a3;
- (CGRect)frameForIndex:(unint64_t)a3;
- (SBCrossblurDosidoSwitcherModifier)initWithTransitionID:(id)a3 fromAppLayout:(id)a4 toAppLayout:(id)a5 direction:(unint64_t)a6;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (double)scaleForIndex:(unint64_t)a3;
- (double)scaleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (id)_layoutSettings;
- (id)_opacitySettings;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)handleResizeProgressEvent:(id)a3;
- (id)resizeProgressNotificationsForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (id)topMostLayoutElements;
- (id)transitionDidEnd;
- (id)transitionWillBegin;
- (id)transitionWillUpdate;
- (int64_t)wallpaperStyle;
@end

@implementation SBCrossblurDosidoSwitcherModifier

- (SBCrossblurDosidoSwitcherModifier)initWithTransitionID:(id)a3 fromAppLayout:(id)a4 toAppLayout:(id)a5 direction:(unint64_t)a6
{
  v12 = a4;
  v13 = a5;
  v16.receiver = self;
  v16.super_class = SBCrossblurDosidoSwitcherModifier;
  v14 = [(SBTransitionSwitcherModifier *)&v16 initWithTransitionID:a3];
  if (v14)
  {
    if (v12)
    {
      if (v13)
      {
LABEL_4:
        objc_storeStrong(&v14->_fromAppLayout, a4);
        objc_storeStrong(&v14->_toAppLayout, a5);
        v14->_direction = a6;
        goto LABEL_5;
      }
    }

    else
    {
      [SBCrossblurDosidoSwitcherModifier initWithTransitionID:a2 fromAppLayout:v14 toAppLayout:? direction:?];
      if (v13)
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

- (BOOL)shouldAsyncRenderUntilDelay:(double *)a3
{
  v5 = [(SBCrossblurDosidoSwitcherModifier *)self switcherSettings];
  v6 = [v5 animationSettings];
  [v6 disableAsyncRenderingTransitionPercentage];
  v8 = v7;

  v9 = [(SBCrossblurDosidoSwitcherModifier *)self _layoutSettings];
  [v9 settlingDuration];
  v11 = v8 * v10;
  UIAnimationDragCoefficient();
  *a3 = v11 * v12;

  return 1;
}

- (id)transitionWillBegin
{
  v20.receiver = self;
  v20.super_class = SBCrossblurDosidoSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v20 transitionWillBegin];
  v4 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:2 updateMode:2];
  v5 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v4 toResponse:v3];

  v6 = +[SBBlurItemContainerParameters defaultCrossblurBlurParameters];
  v7 = [(SBCrossblurDosidoSwitcherModifier *)self switcherSettings];
  v8 = [v7 animationSettings];

  v9 = [SBBlurItemContainerParameters alloc];
  [v8 homeScreenCenterZoomInitialBlur];
  v11 = v10;
  v12 = [v6 shouldRasterize];
  [v6 rasterizationScale];
  v14 = v13;
  v15 = [v6 blurAnimationSettings];
  v16 = [(SBBlurItemContainerParameters *)v9 initWithBlurRadius:v12 shouldRasterize:1 rasterizationScale:1 inputQuality:v15 inputIntermediateBitDepth:v11 blurAnimationSettings:v14];

  v17 = [[SBBlurItemContainerSwitcherEventResponse alloc] initWithAppLayout:self->_toAppLayout shouldBlur:1 blurParameters:v16 animationUpdateMode:2];
  v18 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v17 toResponse:v5];

  return v18;
}

- (id)transitionWillUpdate
{
  v22.receiver = self;
  v22.super_class = SBCrossblurDosidoSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v22 transitionWillUpdate];
  v4 = [[SBBlurItemContainerSwitcherEventResponse alloc] initWithAppLayout:self->_fromAppLayout shouldBlur:1 animationUpdateMode:3];
  v5 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v4 toResponse:v3];

  v6 = +[SBBlurItemContainerParameters defaultCrossblurBlurParameters];
  v7 = [(SBCrossblurDosidoSwitcherModifier *)self switcherSettings];
  v8 = [v7 animationSettings];

  [v8 homeScreenCenterZoomInitialBlur];
  v10 = v9;
  [v8 homeScreenCenterZoomTargetScaleWhenUnblurringIsComplete];
  v12 = v10 * (v11 + -1.0) / v11;
  v13 = [SBBlurItemContainerParameters alloc];
  v14 = [v6 shouldRasterize];
  [v6 rasterizationScale];
  v16 = v15;
  v17 = [v6 blurAnimationSettings];
  v18 = [(SBBlurItemContainerParameters *)v13 initWithBlurRadius:v14 shouldRasterize:1 rasterizationScale:1 inputQuality:v17 inputIntermediateBitDepth:v12 blurAnimationSettings:v16];

  v19 = [[SBBlurItemContainerSwitcherEventResponse alloc] initWithAppLayout:self->_toAppLayout shouldBlur:1 blurParameters:v18 animationUpdateMode:3];
  v20 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v19 toResponse:v5];

  return v20;
}

- (id)transitionDidEnd
{
  v9.receiver = self;
  v9.super_class = SBCrossblurDosidoSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v9 transitionDidEnd];
  v4 = [[SBBlurItemContainerSwitcherEventResponse alloc] initWithAppLayout:self->_fromAppLayout shouldBlur:0 animationUpdateMode:2];
  v5 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v4 toResponse:v3];

  v6 = [[SBBlurItemContainerSwitcherEventResponse alloc] initWithAppLayout:self->_toAppLayout shouldBlur:0 animationUpdateMode:2];
  v7 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v6 toResponse:v5];

  return v7;
}

- (id)handleResizeProgressEvent:(id)a3
{
  v11.receiver = self;
  v11.super_class = SBCrossblurDosidoSwitcherModifier;
  v4 = a3;
  v5 = [(SBSwitcherModifier *)&v11 handleResizeProgressEvent:v4];
  [v4 progress];

  v6 = [(SBCrossblurDosidoSwitcherModifier *)self switcherSettings];
  v7 = [v6 animationSettings];

  [v7 homeScreenCenterZoomTargetScaleWhenUnblurringIsComplete];
  if (BSFloatGreaterThanOrEqualToFloat())
  {
    v8 = [[SBBlurItemContainerSwitcherEventResponse alloc] initWithAppLayout:self->_toAppLayout shouldBlur:0 animationUpdateMode:2];
    v9 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v8 toResponse:v5];

    v5 = v9;
  }

  return v5;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  v5 = [(SBCrossblurDosidoSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

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
      v34 = self;
      v35 = SBCrossblurDosidoSwitcherModifier;
      v12 = &v34;
LABEL_27:
      objc_msgSendSuper2(v12, sel_frameForIndex_, a3, v28, v29, v30, v31, v32.receiver, v32.super_class, v33.receiver, v33.super_class, v34, v35);
      goto LABEL_28;
    }

    fromAppLayout = self->_fromAppLayout;
  }

  if (v6 == fromAppLayout && [(SBTransitionSwitcherModifier *)self transitionPhase]>= 2)
  {
    v13 = [(SBCrossblurDosidoSwitcherModifier *)self appLayouts];
    v14 = [v13 indexOfObject:self->_toAppLayout];

    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = a3;
    }

    else
    {
      v15 = v14;
    }

    [(SBCrossblurDosidoSwitcherModifier *)&v33 frameForIndex:v15, v28, v29, v30, v31, v32.receiver, v32.super_class, self, SBCrossblurDosidoSwitcherModifier, v34, v35];
    goto LABEL_28;
  }

  toAppLayout = self->_toAppLayout;
  if (v6 != toAppLayout)
  {
LABEL_23:
    if (v6 == toAppLayout && [(SBTransitionSwitcherModifier *)self transitionPhase]>= 2)
    {
      v30 = self;
      v31 = SBCrossblurDosidoSwitcherModifier;
      v12 = &v30;
    }

    else
    {
      v28 = self;
      v29 = SBCrossblurDosidoSwitcherModifier;
      v12 = &v28;
    }

    goto LABEL_27;
  }

  if ([(SBTransitionSwitcherModifier *)self transitionPhase]!= 1)
  {
    toAppLayout = self->_toAppLayout;
    goto LABEL_23;
  }

  v17 = [(SBCrossblurDosidoSwitcherModifier *)self appLayouts];
  v18 = [v17 indexOfObject:self->_fromAppLayout];

  if (v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = a3;
  }

  else
  {
    v19 = v18;
  }

  [(SBCrossblurDosidoSwitcherModifier *)&v32 frameForIndex:v19, v28, v29, v30, v31, self, SBCrossblurDosidoSwitcherModifier, v33.receiver, v33.super_class, v34, v35];
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

- (double)scaleForIndex:(unint64_t)a3
{
  v5 = [(SBCrossblurDosidoSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  v7 = 1.0;
  if (v6 != self->_fromAppLayout && v6 != self->_toAppLayout)
  {
    v10.receiver = self;
    v10.super_class = SBCrossblurDosidoSwitcherModifier;
    [(SBCrossblurDosidoSwitcherModifier *)&v10 scaleForIndex:a3];
    v7 = v8;
  }

  return v7;
}

- (double)scaleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  v7 = [(SBTransitionSwitcherModifier *)self transitionPhase];
  v8 = [(SBCrossblurDosidoSwitcherModifier *)self switcherSettings];
  v9 = [v8 animationSettings];

  if (self->_fromAppLayout == v6)
  {
    v11 = 1.0;
    if (v7 >= 2)
    {
      if (self->_direction == 1)
      {
        [v9 crossblurDosidoSmallScale];
        goto LABEL_11;
      }

LABEL_9:
      [v9 crossblurDosidoLargeScale];
      goto LABEL_11;
    }
  }

  else
  {
    if (self->_toAppLayout != v6)
    {
      v13.receiver = self;
      v13.super_class = SBCrossblurDosidoSwitcherModifier;
      [(SBCrossblurDosidoSwitcherModifier *)&v13 scaleForLayoutRole:a3 inAppLayout:v6];
LABEL_11:
      v11 = v10;
      goto LABEL_12;
    }

    v11 = 1.0;
    if (v7 <= 1)
    {
      if (self->_direction != 1)
      {
        [v9 crossblurDosidoCenterZoomUpSmallScale];
        goto LABEL_11;
      }

      goto LABEL_9;
    }
  }

LABEL_12:

  return v11;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v9.receiver = self;
  v9.super_class = SBCrossblurDosidoSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v9 animationAttributesForLayoutElement:a3];
  v5 = [v4 mutableCopy];

  v6 = [(SBCrossblurDosidoSwitcherModifier *)self _layoutSettings];
  [v5 setLayoutSettings:v6];

  v7 = [(SBCrossblurDosidoSwitcherModifier *)self _opacitySettings];
  [v5 setOpacitySettings:v7];

  return v5;
}

- (id)_layoutSettings
{
  v2 = [(SBCrossblurDosidoSwitcherModifier *)self switcherSettings];
  v3 = [v2 animationSettings];
  v4 = [v3 crossblurDosidoSettings];

  return v4;
}

- (id)_opacitySettings
{
  v2 = [(SBCrossblurDosidoSwitcherModifier *)self switcherSettings];
  v3 = [v2 animationSettings];
  v4 = [v3 crossblurDosidoSettings];

  return v4;
}

- (id)resizeProgressNotificationsForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v17[3] = *MEMORY[0x277D85DE8];
  if (self->_toAppLayout == a4)
  {
    v16.receiver = self;
    v16.super_class = SBCrossblurDosidoSwitcherModifier;
    v6 = [(SBCrossblurDosidoSwitcherModifier *)&v16 resizeProgressNotificationsForLayoutRole:a3 inAppLayout:?];
    v7 = [(SBCrossblurDosidoSwitcherModifier *)self switcherSettings];
    v8 = [v7 animationSettings];

    [v8 homeScreenCenterZoomTargetScaleWhenUnblurringIsComplete];
    v10 = v9;
    [v8 homeScreenCenterZoomInitialScale];
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
    v5 = [(SBCrossblurDosidoSwitcherModifier *)&v15 resizeProgressNotificationsForLayoutRole:a3 inAppLayout:?];
  }

  return v5;
}

- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  v8 = a4;
  v9 = [(SBCrossblurDosidoSwitcherModifier *)self appLayouts];
  v10 = [v9 indexOfObject:self->_fromAppLayout];
  v11 = [v9 indexOfObject:self->_toAppLayout];
  if (v10 == a5)
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

  else if (v11 == a5)
  {
    v12 = 1.0;
    if ([(SBTransitionSwitcherModifier *)self transitionPhase]<= 1)
    {
      v13 = [(SBCrossblurDosidoSwitcherModifier *)self switcherSettings];
      v14 = [v13 animationSettings];
      [v14 homeScreenCenterZoomInitialOpacity];
      v12 = v15;
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = SBCrossblurDosidoSwitcherModifier;
    [(SBCrossblurDosidoSwitcherModifier *)&v18 opacityForLayoutRole:a3 inAppLayout:v8 atIndex:a5];
    v12 = v16;
  }

  return v12;
}

- (BOOL)isWallpaperRequiredForSwitcher
{
  v3 = [(SBCrossblurDosidoSwitcherModifier *)self windowManagementContext];
  if ([v3 isChamoisOrFlexibleWindowing])
  {
    v6.receiver = self;
    v6.super_class = SBCrossblurDosidoSwitcherModifier;
    v4 = [(SBCrossblurDosidoSwitcherModifier *)&v6 isWallpaperRequiredForSwitcher];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (int64_t)wallpaperStyle
{
  v3 = [(SBCrossblurDosidoSwitcherModifier *)self windowManagementContext];
  if ([v3 isChamoisOrFlexibleWindowing])
  {
    v6.receiver = self;
    v6.super_class = SBCrossblurDosidoSwitcherModifier;
    v4 = [(SBCrossblurDosidoSwitcherModifier *)&v6 wallpaperStyle];
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (CGPoint)perspectiveAngleForIndex:(unint64_t)a3
{
  v5 = [(SBCrossblurDosidoSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if (([v6 isEqual:self->_fromAppLayout] & 1) != 0 || objc_msgSend(v6, "isEqual:", self->_toAppLayout))
  {
    v7 = *MEMORY[0x277CBF348];
    v8 = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBCrossblurDosidoSwitcherModifier;
    [(SBCrossblurDosidoSwitcherModifier *)&v13 perspectiveAngleForIndex:a3];
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
  v3 = [(SBCrossblurDosidoSwitcherModifier *)&v6 topMostLayoutElements];
  v4 = [v3 sb_arrayByInsertingOrMovingObject:self->_toAppLayout toIndex:0];

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