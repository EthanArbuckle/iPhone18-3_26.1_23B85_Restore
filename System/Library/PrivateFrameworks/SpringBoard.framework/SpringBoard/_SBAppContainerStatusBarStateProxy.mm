@interface _SBAppContainerStatusBarStateProxy
- (SBAppContainerViewController)appVCBackReference;
- (double)_statusBarAlpha;
- (int64_t)_fallbackInterfaceOrientation;
- (int64_t)_statusBarOrientationGivenFallbackOrientation:(int64_t)orientation;
- (int64_t)_statusBarStyle;
- (int64_t)_statusBarStyleForPartWithIdentifier:(id)identifier suppressingInherited:(BOOL)inherited;
- (int64_t)overrideStatusBarStyle;
@end

@implementation _SBAppContainerStatusBarStateProxy

- (int64_t)_statusBarStyle
{
  overrideStatusBarStyle = [(_SBAppContainerStatusBarStateProxy *)self overrideStatusBarStyle];
  if (overrideStatusBarStyle == -1)
  {
    v5.receiver = self;
    v5.super_class = _SBAppContainerStatusBarStateProxy;
    return [(SBDeviceApplicationSceneStatusBarStateProxy *)&v5 _statusBarStyle];
  }

  else
  {

    return _SBStatusBarStyleFromLegacyStyle(overrideStatusBarStyle);
  }
}

- (int64_t)_statusBarStyleForPartWithIdentifier:(id)identifier suppressingInherited:(BOOL)inherited
{
  inheritedCopy = inherited;
  identifierCopy = identifier;
  overrideStatusBarStyle = [(_SBAppContainerStatusBarStateProxy *)self overrideStatusBarStyle];
  if (overrideStatusBarStyle == -1)
  {
    v11.receiver = self;
    v11.super_class = _SBAppContainerStatusBarStateProxy;
    v8 = [(SBDeviceApplicationSceneStatusBarStateProxy *)&v11 _statusBarStyleForPartWithIdentifier:identifierCopy suppressingInherited:inheritedCopy];
  }

  else
  {
    v8 = _SBStatusBarStyleFromLegacyStyle(overrideStatusBarStyle);
  }

  v9 = v8;

  return v9;
}

- (double)_statusBarAlpha
{
  WeakRetained = objc_loadWeakRetained(&self->_appVCBackReference);
  _applicationSceneViewController = [WeakRetained _applicationSceneViewController];

  if (_applicationSceneViewController)
  {
    [_applicationSceneViewController statusBarAlpha];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = _SBAppContainerStatusBarStateProxy;
    [(SBDeviceApplicationSceneStatusBarStateProxy *)&v8 _statusBarAlpha];
  }

  v6 = v5;

  return v6;
}

- (int64_t)overrideStatusBarStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_appVCBackReference);
  _applicationSceneViewController = [WeakRetained _applicationSceneViewController];

  if (_applicationSceneViewController)
  {
    overrideStatusBarStyle = [_applicationSceneViewController overrideStatusBarStyle];
  }

  else
  {
    overrideStatusBarStyle = -1;
  }

  return overrideStatusBarStyle;
}

- (int64_t)_statusBarOrientationGivenFallbackOrientation:(int64_t)orientation
{
  WeakRetained = objc_loadWeakRetained(&self->_appVCBackReference);
  v6 = [WeakRetained _overrideStatusBarOrientationGivenFallbackOrientation:orientation];

  if (!v6)
  {
    v8.receiver = self;
    v8.super_class = _SBAppContainerStatusBarStateProxy;
    return [(SBDeviceApplicationSceneStatusBarStateProxy *)&v8 _statusBarOrientationGivenFallbackOrientation:orientation];
  }

  return v6;
}

- (int64_t)_fallbackInterfaceOrientation
{
  WeakRetained = objc_loadWeakRetained(&self->_appVCBackReference);
  contentOrientation = [WeakRetained contentOrientation];

  return contentOrientation;
}

- (SBAppContainerViewController)appVCBackReference
{
  WeakRetained = objc_loadWeakRetained(&self->_appVCBackReference);

  return WeakRetained;
}

@end