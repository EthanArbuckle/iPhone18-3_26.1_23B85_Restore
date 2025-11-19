@interface _SBDashBoardHostedAppStatusBarStateProxy
- (BOOL)_suppressInheritedPartStyles;
- (SBDashBoardHostedAppViewController)hostedAppVCBackReference;
- (double)_statusBarAlpha;
- (int64_t)_fallbackInterfaceOrientation;
@end

@implementation _SBDashBoardHostedAppStatusBarStateProxy

- (int64_t)_fallbackInterfaceOrientation
{
  WeakRetained = objc_loadWeakRetained(&self->_hostedAppVCBackReference);
  v3 = [WeakRetained contentInterfaceOrientation];

  return v3;
}

- (double)_statusBarAlpha
{
  WeakRetained = objc_loadWeakRetained(&self->_hostedAppVCBackReference);
  v4 = [WeakRetained _appViewController];

  if (v4)
  {
    [v4 statusBarAlpha];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = _SBDashBoardHostedAppStatusBarStateProxy;
    [(SBDeviceApplicationSceneStatusBarStateProxy *)&v8 _statusBarAlpha];
  }

  v6 = v5;

  return v6;
}

- (BOOL)_suppressInheritedPartStyles
{
  if (_suppressInheritedPartStyles_onceToken != -1)
  {
    [_SBDashBoardHostedAppStatusBarStateProxy _suppressInheritedPartStyles];
  }

  return _suppressInheritedPartStyles_sAllowSplitView;
}

- (SBDashBoardHostedAppViewController)hostedAppVCBackReference
{
  WeakRetained = objc_loadWeakRetained(&self->_hostedAppVCBackReference);

  return WeakRetained;
}

@end