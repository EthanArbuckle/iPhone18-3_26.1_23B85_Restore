@interface _SBProximityTouchHandlingViewController
- (double)statusBarHeight;
- (id)delegate;
- (uint64_t)proximitySettings;
- (void)loadView;
- (void)setDelegate:(void *)a1;
- (void)setProximitySettings:(uint64_t)a1;
- (void)setStatusBarHeight:(double *)a1;
@end

@implementation _SBProximityTouchHandlingViewController

- (id)delegate
{
  if (a1)
  {
    v1 = [a1 _view];
    v2 = [(_SBProximityTouchHandlingView *)v1 delegate];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setDelegate:(void *)a1
{
  obj = a2;
  if (a1)
  {
    v3 = [a1 _view];
    v4 = v3;
    if (v3)
    {
      objc_storeWeak((v3 + 408), obj);
    }
  }
}

- (void)setStatusBarHeight:(double *)a1
{
  if (a1 && a1[124] != a2)
  {
    a1[124] = a2;
    v3 = [a1 _view];
    if (v3)
    {
      v3[52] = a2;
    }
  }
}

- (void)loadView
{
  v3 = [_SBProximityTouchHandlingView alloc];
  v8 = [(_SBProximityTouchHandlingView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [v8 setOpaque:0];
  v4 = [v8 layer];
  [v4 setHitTestsAsOpaque:1];

  if ([(SBProximitySettings *)self->_proximitySettings colorScreenEdgeWhenObjectInProximity])
  {
    v5 = [v8 layer];
    v6 = [MEMORY[0x277D75348] systemMintColor];
    [v5 setBorderColor:{objc_msgSend(v6, "CGColor")}];

    v7 = [v8 layer];
    [v7 setBorderWidth:3.0];
  }

  if (v8)
  {
    v8[52] = self->_statusBarHeight;
  }

  [(_SBProximityTouchHandlingViewController *)self setView:v8];
}

- (double)statusBarHeight
{
  if (a1)
  {
    return *(a1 + 992);
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

- (void)setProximitySettings:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 1000), a2);
  }
}

@end