@interface SBHomeScreenZoomSwitcherModifier
- (BOOL)_isEffectivelyHome;
- (SBHomeScreenZoomSwitcherModifier)initWithTransitionID:(id)a3 direction:(int64_t)a4;
- (double)homeScreenAlpha;
- (double)homeScreenBackdropBlurProgress;
- (double)homeScreenDimmingAlpha;
- (double)homeScreenScale;
- (double)wallpaperScale;
- (id)animationAttributesForLayoutElement:(id)a3;
- (int64_t)homeScreenBackdropBlurType;
@end

@implementation SBHomeScreenZoomSwitcherModifier

- (SBHomeScreenZoomSwitcherModifier)initWithTransitionID:(id)a3 direction:(int64_t)a4
{
  v6.receiver = self;
  v6.super_class = SBHomeScreenZoomSwitcherModifier;
  result = [(SBTransitionSwitcherModifier *)&v6 initWithTransitionID:a3];
  if (result)
  {
    result->_direction = a4;
  }

  return result;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v12.receiver = self;
  v12.super_class = SBHomeScreenZoomSwitcherModifier;
  v4 = a3;
  v5 = [(SBTransitionSwitcherModifier *)&v12 animationAttributesForLayoutElement:v4];
  v6 = [v4 switcherLayoutElementType];

  if (v6 == 1)
  {
    v7 = [(SBHomeScreenZoomSwitcherModifier *)self switcherSettings];
    v8 = [v7 animationSettings];

    if ([(SBHomeScreenZoomSwitcherModifier *)self _isEffectivelyHome])
    {
      [v8 zoomUpSettings];
    }

    else
    {
      [v8 iconZoomDownSettings];
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
    v4 = [(SBHomeScreenZoomSwitcherModifier *)self switcherSettings];
    v5 = [v4 animationSettings];
    [v5 homeScreenOpacityInApplication];
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
    v4 = [(SBHomeScreenZoomSwitcherModifier *)self switcherSettings];
    v5 = [v4 animationSettings];
    [v5 homeScreenBlurInApplication];
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
    v4 = [(SBHomeScreenZoomSwitcherModifier *)self switcherSettings];
    v5 = [v4 animationSettings];
    [v5 dimmingAlphaInApplication];
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
    v4 = [(SBHomeScreenZoomSwitcherModifier *)self switcherSettings];
    v5 = [v4 animationSettings];
    [v5 homeScreenScaleInApplication];
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
    v4 = [(SBHomeScreenZoomSwitcherModifier *)self switcherSettings];
    v5 = [v4 animationSettings];
    [v5 wallpaperScaleInApplication];
    v7 = v6;

    return v7;
  }

  return result;
}

- (BOOL)_isEffectivelyHome
{
  if ([(SBTransitionSwitcherModifier *)self isPreparingLayout]&& self->_direction == 2)
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = [(SBTransitionSwitcherModifier *)self isUpdatingLayout];
    if (v3)
    {
      LOBYTE(v3) = self->_direction == 1;
    }
  }

  return v3;
}

@end