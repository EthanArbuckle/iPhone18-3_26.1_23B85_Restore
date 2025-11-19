@interface SBCrossfadeDosidoSwitcherModifier
- (BOOL)_isFromAppLayoutAtIndex:(unint64_t)a3;
- (BOOL)_isToAppLayoutAtIndex:(unint64_t)a3;
- (BOOL)_isToOrFromAppLayoutAtIndex:(unint64_t)a3;
- (BOOL)isHomeScreenContentRequired;
- (BOOL)isWallpaperRequiredForSwitcher;
- (CGRect)frameForIndex:(unint64_t)a3;
- (SBCrossfadeDosidoSwitcherModifier)initWithTransitionID:(id)a3 fromAppLayout:(id)a4 toAppLayout:(id)a5;
- (double)homeScreenAlpha;
- (double)homeScreenBackdropBlurProgress;
- (double)homeScreenDimmingAlpha;
- (double)homeScreenScale;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (double)scaleForIndex:(unint64_t)a3;
- (double)wallpaperScale;
- (id)_opacitySettings;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)topMostLayoutElements;
- (id)transitionWillBegin;
- (id)visibleAppLayouts;
- (int64_t)homeScreenBackdropBlurType;
- (int64_t)wallpaperStyle;
@end

@implementation SBCrossfadeDosidoSwitcherModifier

- (SBCrossfadeDosidoSwitcherModifier)initWithTransitionID:(id)a3 fromAppLayout:(id)a4 toAppLayout:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = SBCrossfadeDosidoSwitcherModifier;
  v11 = [(SBTransitionSwitcherModifier *)&v14 initWithTransitionID:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_fromAppLayout, a4);
    objc_storeStrong(&v12->_toAppLayout, a5);
  }

  return v12;
}

- (id)transitionWillBegin
{
  v6.receiver = self;
  v6.super_class = SBCrossfadeDosidoSwitcherModifier;
  v2 = [(SBTransitionSwitcherModifier *)&v6 transitionWillBegin];
  v3 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:30 updateMode:2];
  v4 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v3 toResponse:v2];

  return v4;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  if ([(SBCrossfadeDosidoSwitcherModifier *)self isFullScreenTransition]&& [(SBCrossfadeDosidoSwitcherModifier *)self _isToOrFromAppLayoutAtIndex:a3])
  {
    [(SBCrossfadeDosidoSwitcherModifier *)self containerViewBounds];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBCrossfadeDosidoSwitcherModifier;
    [(SBCrossfadeDosidoSwitcherModifier *)&v9 frameForIndex:a3];
  }

  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (double)scaleForIndex:(unint64_t)a3
{
  if (![(SBCrossfadeDosidoSwitcherModifier *)self isFullScreenTransition]|| (v6 = [(SBCrossfadeDosidoSwitcherModifier *)self _isToOrFromAppLayoutAtIndex:a3], result = 1.0, !v6))
  {
    v7.receiver = self;
    v7.super_class = SBCrossfadeDosidoSwitcherModifier;
    [(SBCrossfadeDosidoSwitcherModifier *)&v7 scaleForIndex:a3, result];
  }

  return result;
}

- (id)visibleAppLayouts
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v4 = v3;
  if (self->_fromAppLayout)
  {
    [v3 addObject:?];
  }

  if (self->_toAppLayout)
  {
    [v4 addObject:?];
  }

  return v4;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v8.receiver = self;
  v8.super_class = SBCrossfadeDosidoSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v8 animationAttributesForLayoutElement:a3];
  v5 = [v4 mutableCopy];

  v6 = [(SBCrossfadeDosidoSwitcherModifier *)self _opacitySettings];
  [v5 setOpacitySettings:v6];

  [v5 setUpdateMode:3];

  return v5;
}

- (id)_opacitySettings
{
  v2 = [(SBCrossfadeDosidoSwitcherModifier *)self switcherSettings];
  v3 = [v2 animationSettings];
  v4 = [v3 crossfadeDosidoSettings];

  return v4;
}

- (double)homeScreenAlpha
{
  if ([(SBCrossfadeDosidoSwitcherModifier *)self _shouldEnsureHomeScreenVisible])
  {
    v3 = [(SBCrossfadeDosidoSwitcherModifier *)self switcherSettings];
    v4 = [v3 animationSettings];
    [v4 homeScreenAlphaForMode:1];
    v6 = v5;

    return v6;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBCrossfadeDosidoSwitcherModifier;
    [(SBCrossfadeDosidoSwitcherModifier *)&v8 homeScreenAlpha];
  }

  return result;
}

- (double)homeScreenScale
{
  if ([(SBCrossfadeDosidoSwitcherModifier *)self _shouldEnsureHomeScreenVisible])
  {
    v3 = [(SBCrossfadeDosidoSwitcherModifier *)self switcherSettings];
    v4 = [v3 animationSettings];
    [v4 homeScreenScaleForMode:1];
    v6 = v5;

    return v6;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBCrossfadeDosidoSwitcherModifier;
    [(SBCrossfadeDosidoSwitcherModifier *)&v8 homeScreenScale];
  }

  return result;
}

- (double)wallpaperScale
{
  if ([(SBCrossfadeDosidoSwitcherModifier *)self _shouldEnsureHomeScreenVisible])
  {
    v3 = [(SBCrossfadeDosidoSwitcherModifier *)self switcherSettings];
    v4 = [v3 animationSettings];
    [v4 wallpaperScaleForMode:1];
    v6 = v5;

    return v6;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBCrossfadeDosidoSwitcherModifier;
    [(SBCrossfadeDosidoSwitcherModifier *)&v8 wallpaperScale];
  }

  return result;
}

- (double)homeScreenDimmingAlpha
{
  if ([(SBCrossfadeDosidoSwitcherModifier *)self _shouldEnsureHomeScreenVisible])
  {
    v3 = [(SBCrossfadeDosidoSwitcherModifier *)self switcherSettings];
    v4 = [v3 animationSettings];
    [v4 homeScreenDimmingAlphaForMode:1];
    v6 = v5;

    return v6;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBCrossfadeDosidoSwitcherModifier;
    [(SBCrossfadeDosidoSwitcherModifier *)&v8 homeScreenDimmingAlpha];
  }

  return result;
}

- (int64_t)homeScreenBackdropBlurType
{
  if ([(SBCrossfadeDosidoSwitcherModifier *)self _shouldEnsureHomeScreenVisible])
  {
    return 2;
  }

  v4.receiver = self;
  v4.super_class = SBCrossfadeDosidoSwitcherModifier;
  return [(SBCrossfadeDosidoSwitcherModifier *)&v4 homeScreenBackdropBlurType];
}

- (double)homeScreenBackdropBlurProgress
{
  if ([(SBCrossfadeDosidoSwitcherModifier *)self _shouldEnsureHomeScreenVisible])
  {
    v3 = [(SBCrossfadeDosidoSwitcherModifier *)self switcherSettings];
    v4 = [v3 animationSettings];
    [v4 homeScreenBlurProgressForMode:1];
    v6 = v5;

    return v6;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBCrossfadeDosidoSwitcherModifier;
    [(SBCrossfadeDosidoSwitcherModifier *)&v8 homeScreenBackdropBlurProgress];
  }

  return result;
}

- (BOOL)isWallpaperRequiredForSwitcher
{
  if ([(SBCrossfadeDosidoSwitcherModifier *)self _shouldEnsureHomeScreenVisible])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = SBCrossfadeDosidoSwitcherModifier;
  return [(SBCrossfadeDosidoSwitcherModifier *)&v4 isWallpaperRequiredForSwitcher];
}

- (BOOL)isHomeScreenContentRequired
{
  if ([(SBCrossfadeDosidoSwitcherModifier *)self _shouldEnsureHomeScreenVisible])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = SBCrossfadeDosidoSwitcherModifier;
  return [(SBCrossfadeDosidoSwitcherModifier *)&v4 isHomeScreenContentRequired];
}

- (int64_t)wallpaperStyle
{
  if ([(SBCrossfadeDosidoSwitcherModifier *)self _shouldEnsureHomeScreenVisible])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = SBCrossfadeDosidoSwitcherModifier;
  return [(SBCrossfadeDosidoSwitcherModifier *)&v4 wallpaperStyle];
}

- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  v8 = a4;
  v9 = [(SBTransitionSwitcherModifier *)self transitionPhase];
  v10 = [(SBCrossfadeDosidoSwitcherModifier *)self _isFromAppLayoutAtIndex:a5];
  if (v9 > 1)
  {
    v11 = 0.0;
    if (!v10)
    {
      v11 = 1.0;
      if (![(SBCrossfadeDosidoSwitcherModifier *)self _isToAppLayoutAtIndex:a5])
      {
        v15 = self;
        v12 = &v15;
        goto LABEL_8;
      }
    }
  }

  else
  {
    v11 = 1.0;
    if (!v10)
    {
      v11 = 0.0;
      if (![(SBCrossfadeDosidoSwitcherModifier *)self _isToAppLayoutAtIndex:a5])
      {
        v16 = self;
        v12 = &v16;
LABEL_8:
        v12[1] = SBCrossfadeDosidoSwitcherModifier;
        objc_msgSendSuper2(v12, sel_opacityForLayoutRole_inAppLayout_atIndex_, a3, v8, a5, v15);
        v11 = v13;
      }
    }
  }

  return v11;
}

- (id)topMostLayoutElements
{
  v5[1] = *MEMORY[0x277D85DE8];
  if (self->_toAppLayout)
  {
    v5[0] = self->_toAppLayout;
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = SBCrossfadeDosidoSwitcherModifier;
    v2 = [(SBCrossfadeDosidoSwitcherModifier *)&v4 topMostLayoutElements];
  }

  return v2;
}

- (BOOL)_isFromAppLayoutAtIndex:(unint64_t)a3
{
  if (!self->_fromAppLayout)
  {
    return 0;
  }

  v4 = self;
  v5 = [(SBCrossfadeDosidoSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  LOBYTE(v4) = [v6 isEqual:v4->_fromAppLayout];
  return v4;
}

- (BOOL)_isToAppLayoutAtIndex:(unint64_t)a3
{
  if (!self->_toAppLayout)
  {
    return 0;
  }

  v4 = self;
  v5 = [(SBCrossfadeDosidoSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  LOBYTE(v4) = [v6 isEqual:v4->_toAppLayout];
  return v4;
}

- (BOOL)_isToOrFromAppLayoutAtIndex:(unint64_t)a3
{
  if ([(SBCrossfadeDosidoSwitcherModifier *)self _isFromAppLayoutAtIndex:?])
  {
    return 1;
  }

  return [(SBCrossfadeDosidoSwitcherModifier *)self _isToAppLayoutAtIndex:a3];
}

@end