@interface _SBProximityTouchHandlingViewController
- (double)statusBarHeight;
- (id)delegate;
- (uint64_t)proximitySettings;
- (void)loadView;
- (void)setDelegate:(void *)delegate;
- (void)setProximitySettings:(uint64_t)settings;
- (void)setStatusBarHeight:(double *)height;
@end

@implementation _SBProximityTouchHandlingViewController

- (id)delegate
{
  if (self)
  {
    _view = [self _view];
    delegate = [(_SBProximityTouchHandlingView *)_view delegate];
  }

  else
  {
    delegate = 0;
  }

  return delegate;
}

- (void)setDelegate:(void *)delegate
{
  obj = a2;
  if (delegate)
  {
    _view = [delegate _view];
    v4 = _view;
    if (_view)
    {
      objc_storeWeak((_view + 408), obj);
    }
  }
}

- (void)setStatusBarHeight:(double *)height
{
  if (height && height[124] != a2)
  {
    height[124] = a2;
    _view = [height _view];
    if (_view)
    {
      _view[52] = a2;
    }
  }
}

- (void)loadView
{
  v3 = [_SBProximityTouchHandlingView alloc];
  v8 = [(_SBProximityTouchHandlingView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [v8 setOpaque:0];
  layer = [v8 layer];
  [layer setHitTestsAsOpaque:1];

  if ([(SBProximitySettings *)self->_proximitySettings colorScreenEdgeWhenObjectInProximity])
  {
    layer2 = [v8 layer];
    systemMintColor = [MEMORY[0x277D75348] systemMintColor];
    [layer2 setBorderColor:{objc_msgSend(systemMintColor, "CGColor")}];

    layer3 = [v8 layer];
    [layer3 setBorderWidth:3.0];
  }

  if (v8)
  {
    v8[52] = self->_statusBarHeight;
  }

  [(_SBProximityTouchHandlingViewController *)self setView:v8];
}

- (double)statusBarHeight
{
  if (self)
  {
    return *(self + 992);
  }

  else
  {
    return 0.0;
  }
}

- (uint64_t)proximitySettings
{
  if (result)
  {
    return *(result + 1000);
  }

  return result;
}

- (void)setProximitySettings:(uint64_t)settings
{
  if (settings)
  {
    objc_storeStrong((settings + 1000), a2);
  }
}

@end