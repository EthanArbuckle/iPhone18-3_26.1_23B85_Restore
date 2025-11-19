@interface _SBProximityTouchHandlingView
- (double)statusBarHeight;
- (id)delegate;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)setDelegate:(id *)result;
- (uint64_t)setStatusBarHeight:(uint64_t)result;
@end

@implementation _SBProximityTouchHandlingView

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v24 = *MEMORY[0x277D85DE8];
  BSFloatLessThanOrEqualToFloat();
  if (BSFloatGreaterThanOrEqualToFloat() && BSFloatLessThanFloat() && (-[_SBProximityTouchHandlingView window](self, "window"), v7 = objc_claimAutoreleasedReturnValue(), [v7 screen], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "bounds"), v9 = BSFloatLessThanFloat(), v8, v7, v9))
  {
    v15 = [(_SBProximityTouchHandlingView *)&self->super.super.super.isa delegate];
    [v15 didHitAllowedRegion:{x, y}];

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = SBLogProximitySensor();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    statusBarHeight = self->_statusBarHeight;
    v16 = 134218752;
    v17 = x;
    v18 = 2048;
    v19 = y;
    v20 = 1024;
    v21 = v10;
    v22 = 2048;
    v23 = statusBarHeight;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Prox hit test (%g,%g) - hitStatusBar:%{BOOL}u (statusBarHeight:%g)", &v16, 0x26u);
  }

  if (v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = self;
  }

  return v13;
}

- (id)delegate
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 51);
    v1 = vars8;
  }

  return WeakRetained;
}

- (id)setDelegate:(id *)result
{
  if (result)
  {
    return objc_storeWeak(result + 51, a2);
  }

  return result;
}

- (double)statusBarHeight
{
  if (a1)
  {
    return *(a1 + 416);
  }

  else
  {
    return 0.0;
  }
}

- (uint64_t)setStatusBarHeight:(uint64_t)result
{
  if (result)
  {
    *(result + 416) = a2;
  }

  return result;
}

@end