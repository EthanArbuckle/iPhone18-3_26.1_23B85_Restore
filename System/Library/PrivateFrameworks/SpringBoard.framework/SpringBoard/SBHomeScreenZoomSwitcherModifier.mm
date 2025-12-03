@interface SBHomeScreenZoomSwitcherModifier
- (BOOL)_isEffectivelyHome;
- (SBHomeScreenZoomSwitcherModifier)initWithTransitionID:(id)d direction:(int64_t)direction;
- (double)homeScreenAlpha;
- (double)homeScreenBackdropBlurProgress;
- (double)homeScreenDimmingAlpha;
- (double)homeScreenScale;
- (double)wallpaperScale;
- (id)animationAttributesForLayoutElement:(id)element;
- (int64_t)homeScreenBackdropBlurType;
@end

@implementation SBHomeScreenZoomSwitcherModifier

- (SBHomeScreenZoomSwitcherModifier)initWithTransitionID:(id)d direction:(int64_t)direction
{
  v6.receiver = self;
  v6.super_class = SBHomeScreenZoomSwitcherModifier;
  result = [(SBTransitionSwitcherModifier *)&v6 initWithTransitionID:d];
  if (result)
  {
    result->_direction = direction;
  }

  return result;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  v12.receiver = self;
  v12.super_class = SBHomeScreenZoomSwitcherModifier;
  elementCopy = element;
  v5 = [(SBTransitionSwitcherModifier *)&v12 animationAttributesForLayoutElement:elementCopy];
  switcherLayoutElementType = [elementCopy switcherLayoutElementType];

  if (switcherLayoutElementType == 1)
  {
    switcherSettings = [(SBHomeScreenZoomSwitcherModifier *)self switcherSettings];
    animationSettings = [switcherSettings animationSettings];

    if ([(SBHomeScreenZoomSwitcherModifier *)self _isEffectivelyHome])
    {
      [animationSettings zoomUpSettings];
    }

    else
    {
      [animationSettings iconZoomDownSettings];
    }
    v9 = ;
    v10 = [v5 mutableCopy];
    [v10 setLayoutSettings:v9];

    v5 = v10;
  }

  return v5;
}

- (double)homeScreenAlpha
{
  if ([(SBHomeScreenZoomSwitcherModifier *)self _isEffectivelyHome])
  {
    v8.receiver = self;
    v8.super_class = SBHomeScreenZoomSwitcherModifier;
    [(SBHomeScreenZoomSwitcherModifier *)&v8 homeScreenAlpha];
  }

  else
  {
    switcherSettings = [(SBHomeScreenZoomSwitcherModifier *)self switcherSettings];
    animationSettings = [switcherSettings animationSettings];
    [animationSettings homeScreenOpacityInApplication];
    v7 = v6;

    return v7;
  }

  return result;
}

- (double)homeScreenBackdropBlurProgress
{
  if ([(SBHomeScreenZoomSwitcherModifier *)self _isEffectivelyHome])
  {
    v8.receiver = self;
    v8.super_class = SBHomeScreenZoomSwitcherModifier;
    [(SBHomeScreenZoomSwitcherModifier *)&v8 homeScreenBackdropBlurProgress];
  }

  else
  {
    switcherSettings = [(SBHomeScreenZoomSwitcherModifier *)self switcherSettings];
    animationSettings = [switcherSettings animationSettings];
    [animationSettings homeScreenBlurInApplication];
    v7 = v6;

    return v7;
  }

  return result;
}

- (int64_t)homeScreenBackdropBlurType
{
  if ([(SBHomeScreenZoomSwitcherModifier *)self hasHomeButton])
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

- (double)homeScreenDimmingAlpha
{
  if ([(SBHomeScreenZoomSwitcherModifier *)self _isEffectivelyHome])
  {
    v8.receiver = self;
    v8.super_class = SBHomeScreenZoomSwitcherModifier;
    [(SBHomeScreenZoomSwitcherModifier *)&v8 homeScreenDimmingAlpha];
  }

  else
  {
    switcherSettings = [(SBHomeScreenZoomSwitcherModifier *)self switcherSettings];
    animationSettings = [switcherSettings animationSettings];
    [animationSettings dimmingAlphaInApplication];
    v7 = v6;

    return v7;
  }

  return result;
}

- (double)homeScreenScale
{
  if ([(SBHomeScreenZoomSwitcherModifier *)self _isEffectivelyHome])
  {
    v8.receiver = self;
    v8.super_class = SBHomeScreenZoomSwitcherModifier;
    [(SBHomeScreenZoomSwitcherModifier *)&v8 homeScreenScale];
  }

  else
  {
    switcherSettings = [(SBHomeScreenZoomSwitcherModifier *)self switcherSettings];
    animationSettings = [switcherSettings animationSettings];
    [animationSettings homeScreenScaleInApplication];
    v7 = v6;

    return v7;
  }

  return result;
}

- (double)wallpaperScale
{
  if ([(SBHomeScreenZoomSwitcherModifier *)self _isEffectivelyHome])
  {
    v8.receiver = self;
    v8.super_class = SBHomeScreenZoomSwitcherModifier;
    [(SBHomeScreenZoomSwitcherModifier *)&v8 wallpaperScale];
  }

  else
  {
    switcherSettings = [(SBHomeScreenZoomSwitcherModifier *)self switcherSettings];
    animationSettings = [switcherSettings animationSettings];
    [animationSettings wallpaperScaleInApplication];
    v7 = v6;

    return v7;
  }

  return result;
}

- (BOOL)_isEffectivelyHome
{
  if ([(SBTransitionSwitcherModifier *)self isPreparingLayout]&& self->_direction == 2)
  {
    LOBYTE(isUpdatingLayout) = 1;
  }

  else
  {
    isUpdatingLayout = [(SBTransitionSwitcherModifier *)self isUpdatingLayout];
    if (isUpdatingLayout)
    {
      LOBYTE(isUpdatingLayout) = self->_direction == 1;
    }
  }

  return isUpdatingLayout;
}

@end