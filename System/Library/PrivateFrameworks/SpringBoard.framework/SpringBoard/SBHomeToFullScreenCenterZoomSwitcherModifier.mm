@interface SBHomeToFullScreenCenterZoomSwitcherModifier
- (BOOL)_isToAppLayoutAtIndex:(unint64_t)index;
- (BOOL)shouldAllowGroupOpacityForAppLayout:(id)layout;
- (BOOL)shouldAsyncRenderUntilDelay:(double *)delay;
- (BOOL)shouldPinLayoutRolesToSpace:(unint64_t)space;
- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)space;
- (CGPoint)adjustedSpaceAccessoryViewAnchorPoint:(CGPoint)point forAppLayout:(id)layout;
- (CGPoint)anchorPointForIndex:(unint64_t)index;
- (CGPoint)perspectiveAngleForIndex:(unint64_t)index;
- (CGRect)adjustedSpaceAccessoryViewFrame:(CGRect)frame forAppLayout:(id)layout;
- (CGRect)frameForIndex:(unint64_t)index;
- (SBHomeToFullScreenCenterZoomSwitcherModifier)initWithTransitionID:(id)d toAppLayout:(id)layout;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index;
- (double)homeScreenBackdropBlurProgress;
- (double)homeScreenScale;
- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index;
- (double)scaleForIndex:(unint64_t)index;
- (id)_layoutSettings;
- (id)_opacitySettings;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)handleResizeProgressEvent:(id)event;
- (id)resizeProgressNotificationsForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (id)topMostLayoutElements;
- (id)transitionDidEnd;
- (id)transitionWillBegin;
- (id)transitionWillUpdate;
- (id)visibleAppLayouts;
- (int64_t)homeScreenBackdropBlurType;
@end

@implementation SBHomeToFullScreenCenterZoomSwitcherModifier

- (SBHomeToFullScreenCenterZoomSwitcherModifier)initWithTransitionID:(id)d toAppLayout:(id)layout
{
  dCopy = d;
  layoutCopy = layout;
  if (!layoutCopy)
  {
    [SBHomeToFullScreenCenterZoomSwitcherModifier initWithTransitionID:a2 toAppLayout:self];
  }

  v12.receiver = self;
  v12.super_class = SBHomeToFullScreenCenterZoomSwitcherModifier;
  v9 = [(SBTransitionSwitcherModifier *)&v12 initWithTransitionID:dCopy];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_toAppLayout, layout);
  }

  return v10;
}

- (BOOL)shouldAsyncRenderUntilDelay:(double *)delay
{
  switcherSettings = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];
  [animationSettings disableAsyncRenderingTransitionPercentage];
  v8 = v7;

  _layoutSettings = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self _layoutSettings];
  [_layoutSettings settlingDuration];
  v11 = v8 * v10;
  UIAnimationDragCoefficient();
  *delay = v11 * v12;

  return 1;
}

- (id)transitionWillBegin
{
  v20.receiver = self;
  v20.super_class = SBHomeToFullScreenCenterZoomSwitcherModifier;
  transitionWillBegin = [(SBTransitionSwitcherModifier *)&v20 transitionWillBegin];
  v4 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:30 updateMode:2];
  v5 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v4 toResponse:transitionWillBegin];

  v6 = +[SBBlurItemContainerParameters defaultCrossblurBlurParameters];
  switcherSettings = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self switcherSettings];
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
  v20.receiver = self;
  v20.super_class = SBHomeToFullScreenCenterZoomSwitcherModifier;
  transitionWillUpdate = [(SBTransitionSwitcherModifier *)&v20 transitionWillUpdate];
  v4 = +[SBBlurItemContainerParameters defaultCrossblurBlurParameters];
  switcherSettings = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];

  [animationSettings homeScreenCenterZoomInitialBlur];
  v8 = v7;
  [animationSettings homeScreenCenterZoomTargetScaleWhenUnblurringIsComplete];
  v10 = v8 * (v9 + -1.0) / v9;
  v11 = [SBBlurItemContainerParameters alloc];
  shouldRasterize = [v4 shouldRasterize];
  [v4 rasterizationScale];
  v14 = v13;
  blurAnimationSettings = [v4 blurAnimationSettings];
  v16 = [(SBBlurItemContainerParameters *)v11 initWithBlurRadius:shouldRasterize shouldRasterize:1 rasterizationScale:1 inputQuality:blurAnimationSettings inputIntermediateBitDepth:v10 blurAnimationSettings:v14];

  v17 = [[SBBlurItemContainerSwitcherEventResponse alloc] initWithAppLayout:self->_toAppLayout shouldBlur:1 blurParameters:v16 animationUpdateMode:3];
  v18 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v17 toResponse:transitionWillUpdate];

  return v18;
}

- (id)transitionDidEnd
{
  v7.receiver = self;
  v7.super_class = SBHomeToFullScreenCenterZoomSwitcherModifier;
  transitionDidEnd = [(SBTransitionSwitcherModifier *)&v7 transitionDidEnd];
  v4 = [[SBBlurItemContainerSwitcherEventResponse alloc] initWithAppLayout:self->_toAppLayout shouldBlur:0 animationUpdateMode:2];
  v5 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v4 toResponse:transitionDidEnd];

  return v5;
}

- (id)handleResizeProgressEvent:(id)event
{
  v11.receiver = self;
  v11.super_class = SBHomeToFullScreenCenterZoomSwitcherModifier;
  eventCopy = event;
  v5 = [(SBSwitcherModifier *)&v11 handleResizeProgressEvent:eventCopy];
  [eventCopy progress];

  switcherSettings = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self switcherSettings];
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
  if (![(SBHomeToFullScreenCenterZoomSwitcherModifier *)self _isToAppLayoutAtIndex:?])
  {
    v26.receiver = self;
    v26.super_class = SBHomeToFullScreenCenterZoomSwitcherModifier;
    [(SBHomeToFullScreenCenterZoomSwitcherModifier *)&v26 frameForIndex:index];
LABEL_6:
    v11 = v18;
    v13 = v19;
    v15 = v20;
    v17 = v21;
    goto LABEL_7;
  }

  windowManagementContext = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self windowManagementContext];
  isFlexibleWindowingEnabled = [windowManagementContext isFlexibleWindowingEnabled];

  if (!isFlexibleWindowingEnabled)
  {
    [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self containerViewBounds];
    goto LABEL_6;
  }

  appLayouts = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self appLayouts];
  v8 = [appLayouts objectAtIndex:index];

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

- (double)scaleForIndex:(unint64_t)index
{
  transitionPhase = [(SBTransitionSwitcherModifier *)self transitionPhase];
  switcherSettings = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];

  if (![(SBHomeToFullScreenCenterZoomSwitcherModifier *)self _isToAppLayoutAtIndex:index])
  {
    v11.receiver = self;
    v11.super_class = SBHomeToFullScreenCenterZoomSwitcherModifier;
    [(SBHomeToFullScreenCenterZoomSwitcherModifier *)&v11 scaleForIndex:index];
    goto LABEL_5;
  }

  v8 = 1.0;
  if (transitionPhase <= 1)
  {
    [animationSettings homeScreenCenterZoomInitialScale];
LABEL_5:
    v8 = v9;
  }

  return v8;
}

- (CGPoint)anchorPointForIndex:(unint64_t)index
{
  if (!self->_shouldForceDefaultAnchorPointForTransition || (v7 = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self _isToAppLayoutAtIndex:index], v3 = 0.5, v4 = 0.5, !v7))
  {
    v8.receiver = self;
    v8.super_class = SBHomeToFullScreenCenterZoomSwitcherModifier;
    [(SBHomeToFullScreenCenterZoomSwitcherModifier *)&v8 anchorPointForIndex:index, v3, v4];
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (BOOL)shouldPinLayoutRolesToSpace:(unint64_t)space
{
  if (self->_shouldForceDefaultAnchorPointForTransition && [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self _isToAppLayoutAtIndex:space])
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = SBHomeToFullScreenCenterZoomSwitcherModifier;
  return [(SBHomeToFullScreenCenterZoomSwitcherModifier *)&v6 shouldPinLayoutRolesToSpace:space];
}

- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)space
{
  if (self->_shouldForceDefaultAnchorPointForTransition && [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self _isToAppLayoutAtIndex:space])
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = SBHomeToFullScreenCenterZoomSwitcherModifier;
  return [(SBHomeToFullScreenCenterZoomSwitcherModifier *)&v6 shouldUseAnchorPointToPinLayoutRolesToSpace:space];
}

- (CGPoint)perspectiveAngleForIndex:(unint64_t)index
{
  appLayouts = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if (self->_shouldForceDefaultAnchorPointForTransition && [v6 isEqual:self->_toAppLayout])
  {
    v7 = *MEMORY[0x277CBF348];
    v8 = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBHomeToFullScreenCenterZoomSwitcherModifier;
    [(SBHomeToFullScreenCenterZoomSwitcherModifier *)&v13 perspectiveAngleForIndex:index];
    v7 = v9;
    v8 = v10;
  }

  v11 = v7;
  v12 = v8;
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGRect)adjustedSpaceAccessoryViewFrame:(CGRect)frame forAppLayout:(id)layout
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  layoutCopy = layout;
  v10 = layoutCopy;
  if (self->_shouldForceDefaultAnchorPointForTransition && [layoutCopy isEqual:self->_toAppLayout])
  {
    appLayouts = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self appLayouts];
    -[SBHomeToFullScreenCenterZoomSwitcherModifier frameForIndex:](self, "frameForIndex:", [appLayouts indexOfObject:self->_toAppLayout]);
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

- (CGPoint)adjustedSpaceAccessoryViewAnchorPoint:(CGPoint)point forAppLayout:(id)layout
{
  y = point.y;
  x = point.x;
  layoutCopy = layout;
  v8 = layoutCopy;
  if (!self->_shouldForceDefaultAnchorPointForTransition || (v9 = 0.5, v10 = 0.5, ([layoutCopy isEqual:self->_toAppLayout] & 1) == 0))
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
  visibleAppLayouts = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)&v6 visibleAppLayouts];
  v4 = [visibleAppLayouts setByAddingObject:self->_toAppLayout];

  return v4;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  v9.receiver = self;
  v9.super_class = SBHomeToFullScreenCenterZoomSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v9 animationAttributesForLayoutElement:element];
  v5 = [v4 mutableCopy];

  _layoutSettings = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self _layoutSettings];
  [v5 setLayoutSettings:_layoutSettings];

  _opacitySettings = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self _opacitySettings];
  [v5 setOpacitySettings:_opacitySettings];

  return v5;
}

- (id)_layoutSettings
{
  switcherSettings = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];
  crossblurDosidoSettings = [animationSettings crossblurDosidoSettings];

  return crossblurDosidoSettings;
}

- (id)_opacitySettings
{
  switcherSettings = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];
  crossblurDosidoSettings = [animationSettings crossblurDosidoSettings];

  return crossblurDosidoSettings;
}

- (id)resizeProgressNotificationsForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  v16[3] = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = SBHomeToFullScreenCenterZoomSwitcherModifier;
  v5 = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)&v15 resizeProgressNotificationsForLayoutRole:role inAppLayout:layout];
  switcherSettings = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];

  [animationSettings homeScreenCenterZoomTargetScaleWhenUnblurringIsComplete];
  v9 = v8;
  [animationSettings homeScreenCenterZoomInitialScale];
  v16[0] = &unk_28336F1E0;
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:(v9 - v10) / (1.0 - v10)];
  v16[1] = v11;
  v16[2] = &unk_28336F1F0;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
  v13 = [v5 setByAddingObjectsFromArray:v12];

  return v13;
}

- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index
{
  layoutCopy = layout;
  switcherSettings = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];

  appLayouts = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self appLayouts];
  if ([appLayouts indexOfObject:self->_toAppLayout] != index)
  {
    v15.receiver = self;
    v15.super_class = SBHomeToFullScreenCenterZoomSwitcherModifier;
    [(SBHomeToFullScreenCenterZoomSwitcherModifier *)&v15 opacityForLayoutRole:role inAppLayout:layoutCopy atIndex:index];
    goto LABEL_5;
  }

  v12 = 1.0;
  if ([(SBTransitionSwitcherModifier *)self transitionPhase]<= 1)
  {
    [animationSettings homeScreenCenterZoomInitialOpacity];
LABEL_5:
    v12 = v13;
  }

  return v12;
}

- (BOOL)shouldAllowGroupOpacityForAppLayout:(id)layout
{
  isShowingSpotlightOrTodayView = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self isShowingSpotlightOrTodayView];
  if (isShowingSpotlightOrTodayView)
  {
    LOBYTE(isShowingSpotlightOrTodayView) = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self isDevicePad]^ 1;
  }

  return isShowingSpotlightOrTodayView;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index
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

  switcherSettings = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];
  [animationSettings homeScreenBlurProgressForMode:3];
  v6 = v5;

  return v6;
}

- (double)homeScreenScale
{
  transitionPhase = [(SBTransitionSwitcherModifier *)self transitionPhase];
  switcherSettings = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];

  v6 = 1.0;
  if (transitionPhase >= 2)
  {
    [animationSettings crossblurDosidoSmallScale];
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

- (BOOL)_isToAppLayoutAtIndex:(unint64_t)index
{
  selfCopy = self;
  appLayouts = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  LOBYTE(selfCopy) = [v6 isEqual:selfCopy->_toAppLayout];
  return selfCopy;
}

- (void)initWithTransitionID:(uint64_t)a1 toAppLayout:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBHomeToFullScreenCenterZoomSwitcherModifier.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"toAppLayout"}];
}

@end