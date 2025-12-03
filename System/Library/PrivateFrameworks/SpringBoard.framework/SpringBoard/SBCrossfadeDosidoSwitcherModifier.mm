@interface SBCrossfadeDosidoSwitcherModifier
- (BOOL)_isFromAppLayoutAtIndex:(unint64_t)index;
- (BOOL)_isToAppLayoutAtIndex:(unint64_t)index;
- (BOOL)_isToOrFromAppLayoutAtIndex:(unint64_t)index;
- (BOOL)isHomeScreenContentRequired;
- (BOOL)isWallpaperRequiredForSwitcher;
- (CGRect)frameForIndex:(unint64_t)index;
- (SBCrossfadeDosidoSwitcherModifier)initWithTransitionID:(id)d fromAppLayout:(id)layout toAppLayout:(id)appLayout;
- (double)homeScreenAlpha;
- (double)homeScreenBackdropBlurProgress;
- (double)homeScreenDimmingAlpha;
- (double)homeScreenScale;
- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index;
- (double)scaleForIndex:(unint64_t)index;
- (double)wallpaperScale;
- (id)_opacitySettings;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)topMostLayoutElements;
- (id)transitionWillBegin;
- (id)visibleAppLayouts;
- (int64_t)homeScreenBackdropBlurType;
- (int64_t)wallpaperStyle;
@end

@implementation SBCrossfadeDosidoSwitcherModifier

- (SBCrossfadeDosidoSwitcherModifier)initWithTransitionID:(id)d fromAppLayout:(id)layout toAppLayout:(id)appLayout
{
  layoutCopy = layout;
  appLayoutCopy = appLayout;
  v14.receiver = self;
  v14.super_class = SBCrossfadeDosidoSwitcherModifier;
  v11 = [(SBTransitionSwitcherModifier *)&v14 initWithTransitionID:d];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_fromAppLayout, layout);
    objc_storeStrong(&v12->_toAppLayout, appLayout);
  }

  return v12;
}

- (id)transitionWillBegin
{
  v6.receiver = self;
  v6.super_class = SBCrossfadeDosidoSwitcherModifier;
  transitionWillBegin = [(SBTransitionSwitcherModifier *)&v6 transitionWillBegin];
  v3 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:30 updateMode:2];
  v4 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v3 toResponse:transitionWillBegin];

  return v4;
}

- (CGRect)frameForIndex:(unint64_t)index
{
  if ([(SBCrossfadeDosidoSwitcherModifier *)self isFullScreenTransition]&& [(SBCrossfadeDosidoSwitcherModifier *)self _isToOrFromAppLayoutAtIndex:index])
  {
    [(SBCrossfadeDosidoSwitcherModifier *)self containerViewBounds];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBCrossfadeDosidoSwitcherModifier;
    [(SBCrossfadeDosidoSwitcherModifier *)&v9 frameForIndex:index];
  }

  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (double)scaleForIndex:(unint64_t)index
{
  if (![(SBCrossfadeDosidoSwitcherModifier *)self isFullScreenTransition]|| (v6 = [(SBCrossfadeDosidoSwitcherModifier *)self _isToOrFromAppLayoutAtIndex:index], result = 1.0, !v6))
  {
    v7.receiver = self;
    v7.super_class = SBCrossfadeDosidoSwitcherModifier;
    [(SBCrossfadeDosidoSwitcherModifier *)&v7 scaleForIndex:index, result];
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

- (id)animationAttributesForLayoutElement:(id)element
{
  v8.receiver = self;
  v8.super_class = SBCrossfadeDosidoSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v8 animationAttributesForLayoutElement:element];
  v5 = [v4 mutableCopy];

  _opacitySettings = [(SBCrossfadeDosidoSwitcherModifier *)self _opacitySettings];
  [v5 setOpacitySettings:_opacitySettings];

  [v5 setUpdateMode:3];

  return v5;
}

- (id)_opacitySettings
{
  switcherSettings = [(SBCrossfadeDosidoSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];
  crossfadeDosidoSettings = [animationSettings crossfadeDosidoSettings];

  return crossfadeDosidoSettings;
}

- (double)homeScreenAlpha
{
  if ([(SBCrossfadeDosidoSwitcherModifier *)self _shouldEnsureHomeScreenVisible])
  {
    switcherSettings = [(SBCrossfadeDosidoSwitcherModifier *)self switcherSettings];
    animationSettings = [switcherSettings animationSettings];
    [animationSettings homeScreenAlphaForMode:1];
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
    switcherSettings = [(SBCrossfadeDosidoSwitcherModifier *)self switcherSettings];
    animationSettings = [switcherSettings animationSettings];
    [animationSettings homeScreenScaleForMode:1];
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
    switcherSettings = [(SBCrossfadeDosidoSwitcherModifier *)self switcherSettings];
    animationSettings = [switcherSettings animationSettings];
    [animationSettings wallpaperScaleForMode:1];
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
    switcherSettings = [(SBCrossfadeDosidoSwitcherModifier *)self switcherSettings];
    animationSettings = [switcherSettings animationSettings];
    [animationSettings homeScreenDimmingAlphaForMode:1];
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
    switcherSettings = [(SBCrossfadeDosidoSwitcherModifier *)self switcherSettings];
    animationSettings = [switcherSettings animationSettings];
    [animationSettings homeScreenBlurProgressForMode:1];
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

- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index
{
  layoutCopy = layout;
  transitionPhase = [(SBTransitionSwitcherModifier *)self transitionPhase];
  v10 = [(SBCrossfadeDosidoSwitcherModifier *)self _isFromAppLayoutAtIndex:index];
  if (transitionPhase > 1)
  {
    v11 = 0.0;
    if (!v10)
    {
      v11 = 1.0;
      if (![(SBCrossfadeDosidoSwitcherModifier *)self _isToAppLayoutAtIndex:index])
      {
        selfCopy = self;
        v12 = &selfCopy;
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
      if (![(SBCrossfadeDosidoSwitcherModifier *)self _isToAppLayoutAtIndex:index])
      {
        selfCopy2 = self;
        v12 = &selfCopy2;
LABEL_8:
        v12[1] = SBCrossfadeDosidoSwitcherModifier;
        objc_msgSendSuper2(v12, sel_opacityForLayoutRole_inAppLayout_atIndex_, role, layoutCopy, index, selfCopy);
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
    topMostLayoutElements = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = SBCrossfadeDosidoSwitcherModifier;
    topMostLayoutElements = [(SBCrossfadeDosidoSwitcherModifier *)&v4 topMostLayoutElements];
  }

  return topMostLayoutElements;
}

- (BOOL)_isFromAppLayoutAtIndex:(unint64_t)index
{
  if (!self->_fromAppLayout)
  {
    return 0;
  }

  selfCopy = self;
  appLayouts = [(SBCrossfadeDosidoSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  LOBYTE(selfCopy) = [v6 isEqual:selfCopy->_fromAppLayout];
  return selfCopy;
}

- (BOOL)_isToAppLayoutAtIndex:(unint64_t)index
{
  if (!self->_toAppLayout)
  {
    return 0;
  }

  selfCopy = self;
  appLayouts = [(SBCrossfadeDosidoSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  LOBYTE(selfCopy) = [v6 isEqual:selfCopy->_toAppLayout];
  return selfCopy;
}

- (BOOL)_isToOrFromAppLayoutAtIndex:(unint64_t)index
{
  if ([(SBCrossfadeDosidoSwitcherModifier *)self _isFromAppLayoutAtIndex:?])
  {
    return 1;
  }

  return [(SBCrossfadeDosidoSwitcherModifier *)self _isToAppLayoutAtIndex:index];
}

@end