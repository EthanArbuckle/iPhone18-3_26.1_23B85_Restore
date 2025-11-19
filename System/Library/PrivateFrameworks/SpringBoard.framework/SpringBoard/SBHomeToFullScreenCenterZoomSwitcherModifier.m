@interface SBHomeToFullScreenCenterZoomSwitcherModifier
- (BOOL)_isToAppLayoutAtIndex:(unint64_t)a3;
- (BOOL)shouldAllowGroupOpacityForAppLayout:(id)a3;
- (BOOL)shouldAsyncRenderUntilDelay:(double *)a3;
- (BOOL)shouldPinLayoutRolesToSpace:(unint64_t)a3;
- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)a3;
- (CGPoint)adjustedSpaceAccessoryViewAnchorPoint:(CGPoint)a3 forAppLayout:(id)a4;
- (CGPoint)anchorPointForIndex:(unint64_t)a3;
- (CGPoint)perspectiveAngleForIndex:(unint64_t)a3;
- (CGRect)adjustedSpaceAccessoryViewFrame:(CGRect)a3 forAppLayout:(id)a4;
- (CGRect)frameForIndex:(unint64_t)a3;
- (SBHomeToFullScreenCenterZoomSwitcherModifier)initWithTransitionID:(id)a3 toAppLayout:(id)a4;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3;
- (double)homeScreenBackdropBlurProgress;
- (double)homeScreenScale;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (double)scaleForIndex:(unint64_t)a3;
- (id)_layoutSettings;
- (id)_opacitySettings;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)handleResizeProgressEvent:(id)a3;
- (id)resizeProgressNotificationsForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (id)topMostLayoutElements;
- (id)transitionDidEnd;
- (id)transitionWillBegin;
- (id)transitionWillUpdate;
- (id)visibleAppLayouts;
- (int64_t)homeScreenBackdropBlurType;
@end

@implementation SBHomeToFullScreenCenterZoomSwitcherModifier

- (SBHomeToFullScreenCenterZoomSwitcherModifier)initWithTransitionID:(id)a3 toAppLayout:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    [SBHomeToFullScreenCenterZoomSwitcherModifier initWithTransitionID:a2 toAppLayout:self];
  }

  v12.receiver = self;
  v12.super_class = SBHomeToFullScreenCenterZoomSwitcherModifier;
  v9 = [(SBTransitionSwitcherModifier *)&v12 initWithTransitionID:v7];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_toAppLayout, a4);
  }

  return v10;
}

- (BOOL)shouldAsyncRenderUntilDelay:(double *)a3
{
  v5 = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self switcherSettings];
  v6 = [v5 animationSettings];
  [v6 disableAsyncRenderingTransitionPercentage];
  v8 = v7;

  v9 = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self _layoutSettings];
  [v9 settlingDuration];
  v11 = v8 * v10;
  UIAnimationDragCoefficient();
  *a3 = v11 * v12;

  return 1;
}

- (id)transitionWillBegin
{
  v20.receiver = self;
  v20.super_class = SBHomeToFullScreenCenterZoomSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v20 transitionWillBegin];
  v4 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:30 updateMode:2];
  v5 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v4 toResponse:v3];

  v6 = +[SBBlurItemContainerParameters defaultCrossblurBlurParameters];
  v7 = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self switcherSettings];
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
  v20.receiver = self;
  v20.super_class = SBHomeToFullScreenCenterZoomSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v20 transitionWillUpdate];
  v4 = +[SBBlurItemContainerParameters defaultCrossblurBlurParameters];
  v5 = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self switcherSettings];
  v6 = [v5 animationSettings];

  [v6 homeScreenCenterZoomInitialBlur];
  v8 = v7;
  [v6 homeScreenCenterZoomTargetScaleWhenUnblurringIsComplete];
  v10 = v8 * (v9 + -1.0) / v9;
  v11 = [SBBlurItemContainerParameters alloc];
  v12 = [v4 shouldRasterize];
  [v4 rasterizationScale];
  v14 = v13;
  v15 = [v4 blurAnimationSettings];
  v16 = [(SBBlurItemContainerParameters *)v11 initWithBlurRadius:v12 shouldRasterize:1 rasterizationScale:1 inputQuality:v15 inputIntermediateBitDepth:v10 blurAnimationSettings:v14];

  v17 = [[SBBlurItemContainerSwitcherEventResponse alloc] initWithAppLayout:self->_toAppLayout shouldBlur:1 blurParameters:v16 animationUpdateMode:3];
  v18 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v17 toResponse:v3];

  return v18;
}

- (id)transitionDidEnd
{
  v7.receiver = self;
  v7.super_class = SBHomeToFullScreenCenterZoomSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v7 transitionDidEnd];
  v4 = [[SBBlurItemContainerSwitcherEventResponse alloc] initWithAppLayout:self->_toAppLayout shouldBlur:0 animationUpdateMode:2];
  v5 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v4 toResponse:v3];

  return v5;
}

- (id)handleResizeProgressEvent:(id)a3
{
  v11.receiver = self;
  v11.super_class = SBHomeToFullScreenCenterZoomSwitcherModifier;
  v4 = a3;
  v5 = [(SBSwitcherModifier *)&v11 handleResizeProgressEvent:v4];
  [v4 progress];

  v6 = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self switcherSettings];
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
  if (![(SBHomeToFullScreenCenterZoomSwitcherModifier *)self _isToAppLayoutAtIndex:?])
  {
    v26.receiver = self;
    v26.super_class = SBHomeToFullScreenCenterZoomSwitcherModifier;
    [(SBHomeToFullScreenCenterZoomSwitcherModifier *)&v26 frameForIndex:a3];
LABEL_6:
    v11 = v18;
    v13 = v19;
    v15 = v20;
    v17 = v21;
    goto LABEL_7;
  }

  v5 = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self windowManagementContext];
  v6 = [v5 isFlexibleWindowingEnabled];

  if (!v6)
  {
    [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self containerViewBounds];
    goto LABEL_6;
  }

  v7 = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self appLayouts];
  v8 = [v7 objectAtIndex:a3];

  v9 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:v8];
  [v9 boundingBox];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

LABEL_7:
  v22 = v11;
  v23 = v13;
  v24 = v15;
  v25 = v17;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (double)scaleForIndex:(unint64_t)a3
{
  v5 = [(SBTransitionSwitcherModifier *)self transitionPhase];
  v6 = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self switcherSettings];
  v7 = [v6 animationSettings];

  if (![(SBHomeToFullScreenCenterZoomSwitcherModifier *)self _isToAppLayoutAtIndex:a3])
  {
    v11.receiver = self;
    v11.super_class = SBHomeToFullScreenCenterZoomSwitcherModifier;
    [(SBHomeToFullScreenCenterZoomSwitcherModifier *)&v11 scaleForIndex:a3];
    goto LABEL_5;
  }

  v8 = 1.0;
  if (v5 <= 1)
  {
    [v7 homeScreenCenterZoomInitialScale];
LABEL_5:
    v8 = v9;
  }

  return v8;
}

- (CGPoint)anchorPointForIndex:(unint64_t)a3
{
  if (!self->_shouldForceDefaultAnchorPointForTransition || (v7 = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self _isToAppLayoutAtIndex:a3], v3 = 0.5, v4 = 0.5, !v7))
  {
    v8.receiver = self;
    v8.super_class = SBHomeToFullScreenCenterZoomSwitcherModifier;
    [(SBHomeToFullScreenCenterZoomSwitcherModifier *)&v8 anchorPointForIndex:a3, v3, v4];
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (BOOL)shouldPinLayoutRolesToSpace:(unint64_t)a3
{
  if (self->_shouldForceDefaultAnchorPointForTransition && [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self _isToAppLayoutAtIndex:a3])
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = SBHomeToFullScreenCenterZoomSwitcherModifier;
  return [(SBHomeToFullScreenCenterZoomSwitcherModifier *)&v6 shouldPinLayoutRolesToSpace:a3];
}

- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)a3
{
  if (self->_shouldForceDefaultAnchorPointForTransition && [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self _isToAppLayoutAtIndex:a3])
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = SBHomeToFullScreenCenterZoomSwitcherModifier;
  return [(SBHomeToFullScreenCenterZoomSwitcherModifier *)&v6 shouldUseAnchorPointToPinLayoutRolesToSpace:a3];
}

- (CGPoint)perspectiveAngleForIndex:(unint64_t)a3
{
  v5 = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if (self->_shouldForceDefaultAnchorPointForTransition && [v6 isEqual:self->_toAppLayout])
  {
    v7 = *MEMORY[0x277CBF348];
    v8 = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBHomeToFullScreenCenterZoomSwitcherModifier;
    [(SBHomeToFullScreenCenterZoomSwitcherModifier *)&v13 perspectiveAngleForIndex:a3];
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
  if (self->_shouldForceDefaultAnchorPointForTransition && [v9 isEqual:self->_toAppLayout])
  {
    v11 = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self appLayouts];
    -[SBHomeToFullScreenCenterZoomSwitcherModifier frameForIndex:](self, "frameForIndex:", [v11 indexOfObject:self->_toAppLayout]);
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
  }

  else
  {
    v28.receiver = self;
    v28.super_class = SBHomeToFullScreenCenterZoomSwitcherModifier;
    [(SBHomeToFullScreenCenterZoomSwitcherModifier *)&v28 adjustedSpaceAccessoryViewFrame:v10 forAppLayout:x, y, width, height];
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
  if (!self->_shouldForceDefaultAnchorPointForTransition || (v9 = 0.5, v10 = 0.5, ([v7 isEqual:self->_toAppLayout] & 1) == 0))
  {
    v15.receiver = self;
    v15.super_class = SBHomeToFullScreenCenterZoomSwitcherModifier;
    [(SBHomeToFullScreenCenterZoomSwitcherModifier *)&v15 adjustedSpaceAccessoryViewAnchorPoint:v8 forAppLayout:x, y];
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
  v6.super_class = SBHomeToFullScreenCenterZoomSwitcherModifier;
  v3 = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)&v6 visibleAppLayouts];
  v4 = [v3 setByAddingObject:self->_toAppLayout];

  return v4;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v9.receiver = self;
  v9.super_class = SBHomeToFullScreenCenterZoomSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v9 animationAttributesForLayoutElement:a3];
  v5 = [v4 mutableCopy];

  v6 = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self _layoutSettings];
  [v5 setLayoutSettings:v6];

  v7 = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self _opacitySettings];
  [v5 setOpacitySettings:v7];

  return v5;
}

- (id)_layoutSettings
{
  v2 = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self switcherSettings];
  v3 = [v2 animationSettings];
  v4 = [v3 crossblurDosidoSettings];

  return v4;
}

- (id)_opacitySettings
{
  v2 = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self switcherSettings];
  v3 = [v2 animationSettings];
  v4 = [v3 crossblurDosidoSettings];

  return v4;
}

- (id)resizeProgressNotificationsForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v16[3] = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = SBHomeToFullScreenCenterZoomSwitcherModifier;
  v5 = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)&v15 resizeProgressNotificationsForLayoutRole:a3 inAppLayout:a4];
  v6 = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self switcherSettings];
  v7 = [v6 animationSettings];

  [v7 homeScreenCenterZoomTargetScaleWhenUnblurringIsComplete];
  v9 = v8;
  [v7 homeScreenCenterZoomInitialScale];
  v16[0] = &unk_28336F1E0;
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:(v9 - v10) / (1.0 - v10)];
  v16[1] = v11;
  v16[2] = &unk_28336F1F0;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
  v13 = [v5 setByAddingObjectsFromArray:v12];

  return v13;
}

- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  v8 = a4;
  v9 = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self switcherSettings];
  v10 = [v9 animationSettings];

  v11 = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self appLayouts];
  if ([v11 indexOfObject:self->_toAppLayout] != a5)
  {
    v15.receiver = self;
    v15.super_class = SBHomeToFullScreenCenterZoomSwitcherModifier;
    [(SBHomeToFullScreenCenterZoomSwitcherModifier *)&v15 opacityForLayoutRole:a3 inAppLayout:v8 atIndex:a5];
    goto LABEL_5;
  }

  v12 = 1.0;
  if ([(SBTransitionSwitcherModifier *)self transitionPhase]<= 1)
  {
    [v10 homeScreenCenterZoomInitialOpacity];
LABEL_5:
    v12 = v13;
  }

  return v12;
}

- (BOOL)shouldAllowGroupOpacityForAppLayout:(id)a3
{
  v4 = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self isShowingSpotlightOrTodayView];
  if (v4)
  {
    LOBYTE(v4) = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self isDevicePad]^ 1;
  }

  return v4;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3
{
  [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self displayCornerRadius];

  SBRectCornerRadiiForRadius();
  result.topRight = v6;
  result.bottomRight = v5;
  result.bottomLeft = v4;
  result.topLeft = v3;
  return result;
}

- (int64_t)homeScreenBackdropBlurType
{
  if (![(SBHomeToFullScreenCenterZoomSwitcherModifier *)self hasHomeButton])
  {
    return 3;
  }

  if ([(SBHomeToFullScreenCenterZoomSwitcherModifier *)self isDevicePad])
  {
    return 1;
  }

  return 3;
}

- (double)homeScreenBackdropBlurProgress
{
  if ([(SBTransitionSwitcherModifier *)self transitionPhase]<= 1 && ![(SBHomeToFullScreenCenterZoomSwitcherModifier *)self isDevicePad])
  {
    return 0.0;
  }

  v3 = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self switcherSettings];
  v4 = [v3 animationSettings];
  [v4 homeScreenBlurProgressForMode:3];
  v6 = v5;

  return v6;
}

- (double)homeScreenScale
{
  v3 = [(SBTransitionSwitcherModifier *)self transitionPhase];
  v4 = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self switcherSettings];
  v5 = [v4 animationSettings];

  v6 = 1.0;
  if (v3 >= 2)
  {
    [v5 crossblurDosidoSmallScale];
    v6 = v7;
  }

  return v6;
}

- (id)topMostLayoutElements
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = self->_toAppLayout;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (BOOL)_isToAppLayoutAtIndex:(unint64_t)a3
{
  v4 = self;
  v5 = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  LOBYTE(v4) = [v6 isEqual:v4->_toAppLayout];
  return v4;
}

- (void)initWithTransitionID:(uint64_t)a1 toAppLayout:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBHomeToFullScreenCenterZoomSwitcherModifier.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"toAppLayout"}];
}

@end