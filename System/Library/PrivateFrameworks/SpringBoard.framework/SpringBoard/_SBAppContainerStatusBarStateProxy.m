@interface _SBAppContainerStatusBarStateProxy
- (SBAppContainerViewController)appVCBackReference;
- (double)_statusBarAlpha;
- (int64_t)_fallbackInterfaceOrientation;
- (int64_t)_statusBarOrientationGivenFallbackOrientation:(int64_t)a3;
- (int64_t)_statusBarStyle;
- (int64_t)_statusBarStyleForPartWithIdentifier:(id)a3 suppressingInherited:(BOOL)a4;
- (int64_t)overrideStatusBarStyle;
@end

@implementation _SBAppContainerStatusBarStateProxy

- (int64_t)_statusBarStyle
{
  v3 = [(_SBAppContainerStatusBarStateProxy *)self overrideStatusBarStyle];
  if (v3 == -1)
  {
    v5.receiver = self;
    v5.super_class = _SBAppContainerStatusBarStateProxy;
    return [(SBDeviceApplicationSceneStatusBarStateProxy *)&v5 _statusBarStyle];
  }

  else
  {

    return _SBStatusBarStyleFromLegacyStyle(v3);
  }
}

- (int64_t)_statusBarStyleForPartWithIdentifier:(id)a3 suppressingInherited:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(_SBAppContainerStatusBarStateProxy *)self overrideStatusBarStyle];
  if (v7 == -1)
  {
    v11.receiver = self;
    v11.super_class = _SBAppContainerStatusBarStateProxy;
    v8 = [(SBDeviceApplicationSceneStatusBarStateProxy *)&v11 _statusBarStyleForPartWithIdentifier:v6 suppressingInherited:v4];
  }

  else
  {
    v8 = _SBStatusBarStyleFromLegacyStyle(v7);
  }

  v9 = v8;

  return v9;
}

- (double)_statusBarAlpha
{
  WeakRetained = objc_loadWeakRetained(&self->_appVCBackReference);
  v4 = [WeakRetained _applicationSceneViewController];

  if (v4)
  {
    [v4 statusBarAlpha];
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
  v3 = [WeakRetained _applicationSceneViewController];

  if (v3)
  {
    v4 = [v3 overrideStatusBarStyle];
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (int64_t)_statusBarOrientationGivenFallbackOrientation:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_appVCBackReference);
  v6 = [WeakRetained _overrideStatusBarOrientationGivenFallbackOrientation:a3];

  if (!v6)
  {
    v8.receiver = self;
    v8.super_class = _SBAppContainerStatusBarStateProxy;
    return [(SBDeviceApplicationSceneStatusBarStateProxy *)&v8 _statusBarOrientationGivenFallbackOrientation:a3];
  }

  return v6;
}

- (int64_t)_fallbackInterfaceOrientation
{
  WeakRetained = objc_loadWeakRetained(&self->_appVCBackReference);
  v3 = [WeakRetained contentOrientation];

  return v3;
}

- (SBAppContainerViewController)appVCBackReference
{
  WeakRetained = objc_loadWeakRetained(&self->_appVCBackReference);

  return WeakRetained;
}

@end