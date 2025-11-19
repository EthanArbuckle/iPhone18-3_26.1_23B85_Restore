@interface SBBannerUnfurlToFullScreenSwitcherModifier
- (BOOL)_isAppLayout:(id)a3 atIndex:(unint64_t)a4;
- (BOOL)shouldScaleOverlayToFillBoundsAtIndex:(unint64_t)a3;
- (CGRect)frameForIndex:(unint64_t)a3;
- (SBBannerUnfurlToFullScreenSwitcherModifier)initWithTransitionID:(id)a3 fromAppLayout:(id)a4 toAppLayout:(id)a5 bannerUnfurlSourceContext:(id)a6;
- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)a3;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)handleTimerEvent:(id)a3;
- (id)transitionWillBegin;
- (id)transitionWillUpdate;
- (id)visibleAppLayouts;
- (int64_t)backdropBlurType;
@end

@implementation SBBannerUnfurlToFullScreenSwitcherModifier

- (SBBannerUnfurlToFullScreenSwitcherModifier)initWithTransitionID:(id)a3 fromAppLayout:(id)a4 toAppLayout:(id)a5 bannerUnfurlSourceContext:(id)a6
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v17.receiver = self;
  v17.super_class = SBBannerUnfurlToFullScreenSwitcherModifier;
  v15 = [(SBTransitionSwitcherModifier *)&v17 initWithTransitionID:a3];
  if (v15)
  {
    if (!v13)
    {
      [SBBannerUnfurlToFullScreenSwitcherModifier initWithTransitionID:a2 fromAppLayout:v15 toAppLayout:? bannerUnfurlSourceContext:?];
    }

    objc_storeStrong(&v15->_fromAppLayout, a4);
    objc_storeStrong(&v15->_toAppLayout, a5);
    objc_storeStrong(&v15->_bannerUnfurlSourceContext, a6);
  }

  return v15;
}

- (id)transitionWillBegin
{
  v22.receiver = self;
  v22.super_class = SBBannerUnfurlToFullScreenSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v22 transitionWillBegin];
  v4 = objc_alloc_init(SBSwitcherModifierEventResponse);
  v5 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:6 updateMode:2];
  [(SBChainableModifierEventResponse *)v4 addChildResponse:v5];

  [(SBBannerUnfurlSourceContext *)self->_bannerUnfurlSourceContext referenceVelocity];
  v7 = v6;
  v9 = v8;
  v10 = [(SBBannerUnfurlToFullScreenSwitcherModifier *)self switcherInterfaceOrientation];
  v11 = -v9;
  v12 = -v7;
  if (v10 == 2)
  {
    v13 = -v9;
  }

  else
  {
    v13 = v9;
  }

  if (v10 == 2)
  {
    v14 = -v7;
  }

  else
  {
    v14 = v7;
  }

  if (v10 == 3)
  {
    v15 = v9;
  }

  else
  {
    v12 = v13;
    v15 = v14;
  }

  if (v10 != 4)
  {
    v7 = v12;
    v11 = v15;
  }

  if (v11 != *MEMORY[0x277CBF348] || v7 != *(MEMORY[0x277CBF348] + 8))
  {
    v17 = [SBInjectVelocitySwitcherEventResponse alloc];
    v18 = [MEMORY[0x277CCAE60] valueWithCGPoint:{0.0, v7}];
    v19 = [(SBInjectVelocitySwitcherEventResponse *)v17 initWithVelocity:v18 forKey:@"position" appLayout:self->_toAppLayout];
    [(SBChainableModifierEventResponse *)v4 addChildResponse:v19];
  }

  v20 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v4 toResponse:v3];

  return v20;
}

- (id)transitionWillUpdate
{
  v18.receiver = self;
  v18.super_class = SBBannerUnfurlToFullScreenSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v18 transitionWillUpdate];
  if (self->_fromAppLayout && !self->_isScalingDown)
  {
    self->_isScalingDown = 1;
    v4 = [(SBBannerUnfurlToFullScreenSwitcherModifier *)self switcherSettings];
    v5 = [v4 animationSettings];

    objc_initWeak(&location, self);
    v6 = [SBTimerEventSwitcherEventResponse alloc];
    [v5 dosidoScaleUpDelay];
    v8 = v7;
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __66__SBBannerUnfurlToFullScreenSwitcherModifier_transitionWillUpdate__block_invoke;
    v15 = &unk_2783AD4A0;
    objc_copyWeak(&v16, &location);
    v9 = [(SBTimerEventSwitcherEventResponse *)v6 initWithDelay:&v12 validator:@"_SBBannerUnfurlToFullScreenSwitcherModifierTimerReasonScaleUp" reason:v8];
    v10 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v9 toResponse:v3, v12, v13, v14, v15];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);

    v3 = v10;
  }

  return v3;
}

BOOL __66__SBBannerUnfurlToFullScreenSwitcherModifier_transitionWillUpdate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained parentModifier];
  v3 = v2 != 0;

  return v3;
}

- (id)handleTimerEvent:(id)a3
{
  v10.receiver = self;
  v10.super_class = SBBannerUnfurlToFullScreenSwitcherModifier;
  v4 = a3;
  v5 = [(SBTransitionSwitcherModifier *)&v10 handleTimerEvent:v4];
  v6 = [v4 reason];

  LODWORD(v4) = [v6 isEqualToString:@"_SBBannerUnfurlToFullScreenSwitcherModifierTimerReasonScaleUp"];
  if (v4)
  {
    self->_isScalingDown = 0;
    v7 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:30 updateMode:3];
    v8 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v7 toResponse:v5];

    v5 = v8;
  }

  return v5;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  v21.receiver = self;
  v21.super_class = SBBannerUnfurlToFullScreenSwitcherModifier;
  [(SBBannerUnfurlToFullScreenSwitcherModifier *)&v21 frameForIndex:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if ([(SBBannerUnfurlToFullScreenSwitcherModifier *)self _isAppLayout:self->_toAppLayout atIndex:a3])
  {
    if ([(SBTransitionSwitcherModifier *)self isPreparingLayout])
    {
      [(SBBannerUnfurlSourceContext *)self->_bannerUnfurlSourceContext referenceFrame];
      [(SBBannerUnfurlSourceContext *)self->_bannerUnfurlSourceContext referenceCoordinateSpaceBounds];
      [(SBBannerUnfurlToFullScreenSwitcherModifier *)self switcherInterfaceOrientation];
      _UIWindowConvertRectFromOrientationToOrientation();
LABEL_6:
      v6 = v13;
      v8 = v14;
      v10 = v15;
      v12 = v16;
    }
  }

  else if ([(SBBannerUnfurlToFullScreenSwitcherModifier *)self _isAppLayout:self->_fromAppLayout atIndex:a3])
  {
    [(SBBannerUnfurlToFullScreenSwitcherModifier *)self containerViewBounds];
    goto LABEL_6;
  }

  v17 = v6;
  v18 = v8;
  v19 = v10;
  v20 = v12;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v12.receiver = self;
  v12.super_class = SBBannerUnfurlToFullScreenSwitcherModifier;
  v4 = a3;
  v5 = [(SBTransitionSwitcherModifier *)&v12 animationAttributesForLayoutElement:v4];
  v6 = [v4 switcherLayoutElementType];

  if (!v6)
  {
    v7 = [(SBBannerUnfurlToFullScreenSwitcherModifier *)self switcherSettings];
    v8 = [v7 animationSettings];

    v9 = [v5 mutableCopy];
    v10 = [v8 bannerUnfurlSettings];
    [v9 setLayoutSettings:v10];

    v5 = v9;
  }

  return v5;
}

- (int64_t)backdropBlurType
{
  if ([(SBBannerUnfurlToFullScreenSwitcherModifier *)self hasHomeButton])
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

- (id)visibleAppLayouts
{
  v6.receiver = self;
  v6.super_class = SBBannerUnfurlToFullScreenSwitcherModifier;
  v3 = [(SBBannerUnfurlToFullScreenSwitcherModifier *)&v6 visibleAppLayouts];
  v4 = [v3 mutableCopy];

  [v4 addObject:self->_toAppLayout];
  if (self->_fromAppLayout)
  {
    [v4 addObject:?];
  }

  return v4;
}

- (BOOL)shouldScaleOverlayToFillBoundsAtIndex:(unint64_t)a3
{
  if ([(SBBannerUnfurlToFullScreenSwitcherModifier *)self _isAppLayout:self->_toAppLayout atIndex:a3])
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = SBBannerUnfurlToFullScreenSwitcherModifier;
  return [(SBBannerUnfurlToFullScreenSwitcherModifier *)&v6 shouldScaleOverlayToFillBoundsAtIndex:a3];
}

- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  v12.receiver = self;
  v12.super_class = SBBannerUnfurlToFullScreenSwitcherModifier;
  [(SBBannerUnfurlToFullScreenSwitcherModifier *)&v12 opacityForLayoutRole:a3 inAppLayout:a4 atIndex:?];
  v8 = v7;
  if (![(SBBannerUnfurlToFullScreenSwitcherModifier *)self _isAppLayout:self->_toAppLayout atIndex:a5]|| (v10 = [(SBTransitionSwitcherModifier *)self isPreparingLayout], result = 1.0, !v10))
  {
    v11 = [(SBBannerUnfurlToFullScreenSwitcherModifier *)self _isAppLayout:self->_fromAppLayout atIndex:a5, result];
    result = 1.0;
    if (!v11)
    {
      return v8;
    }
  }

  return result;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3
{
  if ([(SBBannerUnfurlToFullScreenSwitcherModifier *)self _isAppLayout:self->_toAppLayout atIndex:a3]&& [(SBTransitionSwitcherModifier *)self isPreparingLayout])
  {
    [(SBBannerUnfurlSourceContext *)self->_bannerUnfurlSourceContext cornerRadius];
  }

  else
  {
    [(SBBannerUnfurlToFullScreenSwitcherModifier *)self displayCornerRadius];
  }

  SBRectCornerRadiiForRadius();
  result.topRight = v7;
  result.bottomRight = v6;
  result.bottomLeft = v5;
  result.topLeft = v4;
  return result;
}

- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)a3
{
  if (self->_toAppLayout == a3)
  {

    return SBSwitcherAsyncRenderingAttributesMake(0, 0);
  }

  else
  {
    v7 = v3;
    v8 = v4;
    v6.receiver = self;
    v6.super_class = SBBannerUnfurlToFullScreenSwitcherModifier;
    return [(SBTransitionSwitcherModifier *)&v6 asyncRenderingAttributesForAppLayout:?];
  }
}

- (BOOL)_isAppLayout:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(SBBannerUnfurlToFullScreenSwitcherModifier *)self appLayouts];
  v8 = [v7 objectAtIndex:a4];

  LOBYTE(v7) = [v8 isEqual:v6];
  return v7;
}

- (void)initWithTransitionID:(uint64_t)a1 fromAppLayout:(uint64_t)a2 toAppLayout:bannerUnfurlSourceContext:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBBannerUnfurlToFullScreenSwitcherModifier.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"toAppLayout"}];
}

@end