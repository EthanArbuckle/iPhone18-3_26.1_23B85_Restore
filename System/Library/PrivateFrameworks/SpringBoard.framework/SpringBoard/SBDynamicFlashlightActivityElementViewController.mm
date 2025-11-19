@interface SBDynamicFlashlightActivityElementViewController
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)isBeamOn;
- (CGPoint)_beamStateForState:(id)a3 currentBeamState:(CGPoint)a4;
- (CGRect)preferredContentRect;
- (SBDynamicFlashlightActivityElementView)elementView;
- (SBDynamicFlashlightActivityElementViewController)initWithOptionsProvider:(id)a3 state:(id)a4 fixedWidth:(BOOL)a5;
- (SBDynamicFlashlightActivityElementViewControllerDelegate)delegate;
- (double)_overshootForNormalized:(double)a3;
- (double)currentWidth;
- (void)_accessibilitySetTorchState:(CGPoint)a3;
- (void)_dismissalTimerDidFire:(id)a3;
- (void)_invalidateDismissalTimer;
- (void)_invalidatePersistenceTimer;
- (void)_panGestureHandler;
- (void)_saveTorchState;
- (void)_startDismissalTimer;
- (void)_startPersistenceTimer;
- (void)_tapGestureHandler;
- (void)_toggleBeamState;
- (void)_updateDelegateStateAnimated:(BOOL)a3;
- (void)_updatePreferredContentRectForUnconstrainedPoint:(CGPoint)a3;
- (void)dealloc;
- (void)loadView;
- (void)setElementOrientation:(int64_t)a3;
- (void)setExpanded:(BOOL)a3;
- (void)setState:(id)a3;
- (void)updateOrientation;
- (void)viewIsAppearing:(BOOL)a3;
@end

@implementation SBDynamicFlashlightActivityElementViewController

- (void)dealloc
{
  [(NSTimer *)self->_persistenceTimer invalidate];
  [(NSTimer *)self->_dismissalTimer invalidate];
  v3.receiver = self;
  v3.super_class = SBDynamicFlashlightActivityElementViewController;
  [(SBDynamicFlashlightActivityElementViewController *)&v3 dealloc];
}

- (SBDynamicFlashlightActivityElementViewController)initWithOptionsProvider:(id)a3 state:(id)a4 fixedWidth:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v20.receiver = self;
  v20.super_class = SBDynamicFlashlightActivityElementViewController;
  v11 = [(SBDynamicFlashlightActivityElementViewController *)&v20 init];
  v12 = v11;
  if (v11)
  {
    v11->_fixedWidth = a5;
    objc_storeStrong(&v11->_optionsProvider, a3);
    v13 = [v9 springAnimationSettings];
    v14 = [v13 copy];
    fluidBehaviorSettings = v12->_fluidBehaviorSettings;
    v12->_fluidBehaviorSettings = v14;

    [(SBFFluidBehaviorSettings *)v12->_fluidBehaviorSettings setName:@"Dynamic Flashlight"];
    v16 = SBLogFlashlightHUD();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [SBDynamicFlashlightActivityElementViewController initWithOptionsProvider:state:fixedWidth:];
    }

    [(SBDynamicFlashlightActivityElementViewController *)v12 _beamStateForState:v10 currentBeamState:1.0, 1.0];
    v12->_torchState.x = v17;
    v12->_torchState.y = v18;
    v12->_persistedState = v12->_torchState;
  }

  return v12;
}

- (SBDynamicFlashlightActivityElementView)elementView
{
  elementView = self->_elementView;
  if (!elementView)
  {
    v4 = [[SBDynamicFlashlightActivityElementView alloc] initWithBeamState:self->_optionsProvider optionsProvider:self->_torchState.x, self->_torchState.y];
    v5 = self->_elementView;
    self->_elementView = v4;

    elementView = self->_elementView;
  }

  return elementView;
}

- (void)updateOrientation
{
  v3 = ([(SBDynamicFlashlightActivityElementViewController *)self elementOrientation]- 3) < 2;
  elementView = self->_elementView;

  [(SBDynamicFlashlightActivityElementView *)elementView setSensorShadowHidden:v3];
}

- (void)setElementOrientation:(int64_t)a3
{
  if (self->_elementOrientation != a3)
  {
    self->_elementOrientation = a3;
    [(SBDynamicFlashlightActivityElementViewController *)self updateOrientation];
  }
}

- (void)loadView
{
  v3 = [(SBDynamicFlashlightActivityElementViewController *)self elementView];
  [(SBDynamicFlashlightActivityElementViewController *)self setView:v3];

  [(SBDynamicFlashlightActivityElementView *)self->_elementView sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  self->_preferredContentRect.origin.x = 0.0;
  self->_preferredContentRect.origin.y = 0.0;
  self->_preferredContentRect.size.width = v4;
  self->_preferredContentRect.size.height = v5;
  v6 = [[_SBDynamicFlashlightZeroDelayPanGestureRecognizer alloc] initWithTarget:self action:sel__panGestureHandler];
  panGestureRecognizer = self->_panGestureRecognizer;
  self->_panGestureRecognizer = v6;

  [(_SBDynamicFlashlightZeroDelayPanGestureRecognizer *)self->_panGestureRecognizer setName:@"dynamicFlashlightPan"];
  [(_SBDynamicFlashlightZeroDelayPanGestureRecognizer *)self->_panGestureRecognizer _setHysteresis:0.0];
  [(_SBDynamicFlashlightZeroDelayPanGestureRecognizer *)self->_panGestureRecognizer setDelegate:self];
  [(_SBDynamicFlashlightZeroDelayPanGestureRecognizer *)self->_panGestureRecognizer _setCanPanHorizontally:!self->_fixedWidth];
  [(SBDynamicFlashlightActivityElementView *)self->_elementView addGestureRecognizer:self->_panGestureRecognizer];
  [(SBDynamicFlashlightOptionsProvider *)self->_optionsProvider gestureScaling];
  self->_gestureScaling.x = v8;
  self->_gestureScaling.y = v9;
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBDynamicFlashlightActivityElementViewController;
  [(SBDynamicFlashlightActivityElementViewController *)&v4 viewIsAppearing:a3];
  [(SBDynamicFlashlightActivityElementViewController *)self updateOrientation];
}

- (CGPoint)_beamStateForState:(id)a3 currentBeamState:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = 0.0;
  if ([v7 isOn])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v7;
      [v9 initialIntensity];
      v11 = v10;
      v12 = self->_optionsProvider;
      [(SBDynamicFlashlightOptionsProvider *)v12 minimumHWIntensity];
      v14 = v13;
      [(SBDynamicFlashlightOptionsProvider *)v12 minimumIntensity];
      v16 = v15 + (v11 - v14) * (1.0 - v15) / (1.0 - v14);
      [(SBDynamicFlashlightOptionsProvider *)v12 minimumIntensity];
      v18 = v17;

      v19 = fmax(v18, fmin(v16, 1.0));
      v20 = SBLogFlashlightHUD();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [(SBDynamicFlashlightActivityElementViewController *)v9 _beamStateForState:v20 currentBeamState:v19];
      }

      if (self->_fixedWidth)
      {
        v21 = 0.95;
      }

      else
      {
        [v9 initialWidth];
      }

      x = fmax(fmin(v21, 1.0), 0.0);
      v8 = fmax(fmin(v19, 1.0), 0.0);
    }

    else
    {
      v8 = y;
    }
  }

  v22 = x;
  v23 = v8;
  result.y = v23;
  result.x = v22;
  return result;
}

- (void)setState:(id)a3
{
  v4 = a3;
  if (![(SBDynamicFlashlightActivityElementViewController *)self _hasActiveTouches])
  {
    v5 = SBLogFlashlightHUD();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [SBDynamicFlashlightActivityElementViewController setState:];
    }

    p_torchState = &self->_torchState;
    [(SBDynamicFlashlightActivityElementViewController *)self _beamStateForState:v4 currentBeamState:self->_torchState.x, self->_torchState.y];
    v8 = v7;
    v10 = v9;
    [(SBDynamicFlashlightOptionsProvider *)self->_optionsProvider minimumIntensity];
    if (v10 >= v11)
    {
      p_torchState->x = v8;
      self->_torchState.y = v10;
      [(SBDynamicFlashlightActivityElementViewController *)self _invalidateDismissalTimer];
    }

    else if ([(SBDynamicFlashlightActivityElementViewController *)self isBeamOn])
    {
      [(SBDynamicFlashlightActivityElementViewController *)self _saveTorchState];
      p_torchState->x = v8;
      self->_torchState.y = 0.0;
      [(SBDynamicFlashlightActivityElementViewController *)self _startDismissalTimer];
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __61__SBDynamicFlashlightActivityElementViewController_setState___block_invoke;
    v12[3] = &unk_2783A8C18;
    v12[4] = self;
    [(SBDynamicFlashlightActivityElementViewController *)self _animateUntracked:v12 completion:0];
  }
}

- (void)_toggleBeamState
{
  v3 = [(SBDynamicFlashlightActivityElementViewController *)self isBeamOn];
  v4 = SBLogFlashlightHUD();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [SBDynamicFlashlightActivityElementViewController _toggleBeamState];
  }

  if (v3)
  {
    [(SBDynamicFlashlightActivityElementViewController *)self _saveTorchState];
    self->_torchState.y = 0.0;
    [(SBDynamicFlashlightActivityElementViewController *)self _startDismissalTimer];
  }

  else
  {
    self->_torchState = self->_persistedState;
    [(SBDynamicFlashlightActivityElementViewController *)self _invalidateDismissalTimer];
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__SBDynamicFlashlightActivityElementViewController__toggleBeamState__block_invoke;
  v5[3] = &unk_2783A8C18;
  v5[4] = self;
  [(SBDynamicFlashlightActivityElementViewController *)self _animateUntracked:v5 completion:0];
}

uint64_t __68__SBDynamicFlashlightActivityElementViewController__toggleBeamState__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1136) setTouching:0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 142);
  v2 += 124;
  v4 = *v2;
  v5 = v2[1];

  return [v3 setBeamState:{v4, v5}];
}

- (double)currentWidth
{
  if (self->_fixedWidth)
  {
    return 0.95;
  }

  else
  {
    return self->_torchState.x;
  }
}

- (void)setExpanded:(BOOL)a3
{
  if (self->_expanded != a3)
  {
    v4 = a3;
    self->_expanded = a3;
    v9 = [(SBDynamicFlashlightActivityElementViewController *)self elementView];
    [(SBDynamicFlashlightActivityElementViewController *)self currentIntensity];
    v7 = v6;
    [(SBDynamicFlashlightActivityElementViewController *)self currentWidth];
    [v9 setExpanded:v4 intensity:v7 width:v8];
  }
}

- (BOOL)isBeamOn
{
  y = self->_torchState.y;
  [(SBDynamicFlashlightOptionsProvider *)self->_optionsProvider minimumIntensity];
  return y >= v3;
}

- (void)_saveTorchState
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = NSStringFromCGPoint(*a1);
  v5 = 138412290;
  v6 = v4;
  _os_log_debug_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_DEBUG, "_saveTorchState: %@", &v5, 0xCu);
}

- (void)_startPersistenceTimer
{
  y = self->_torchState.y;
  [(SBDynamicFlashlightOptionsProvider *)self->_optionsProvider minimumIntensity];
  if (y >= v4)
  {
    objc_initWeak(&location, self);
    [(NSTimer *)self->_persistenceTimer invalidate];
    v5 = MEMORY[0x277CBEBB8];
    [(SBDynamicFlashlightOptionsProvider *)self->_optionsProvider persistenceDelay];
    v7 = v6;
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __74__SBDynamicFlashlightActivityElementViewController__startPersistenceTimer__block_invoke;
    v15 = &unk_2783AA438;
    objc_copyWeak(&v16, &location);
    v8 = [v5 scheduledTimerWithTimeInterval:0 repeats:&v12 block:v7];
    persistenceTimer = self->_persistenceTimer;
    self->_persistenceTimer = v8;

    v10 = self->_persistenceTimer;
    [(SBDynamicFlashlightOptionsProvider *)self->_optionsProvider persistenceDelay:v12];
    [(NSTimer *)v10 setTolerance:v11 * 0.05];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void __74__SBDynamicFlashlightActivityElementViewController__startPersistenceTimer__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained && WeakRetained[139] == v5)
  {
    [WeakRetained _saveTorchState];
  }
}

- (void)_invalidatePersistenceTimer
{
  [(NSTimer *)self->_persistenceTimer invalidate];
  persistenceTimer = self->_persistenceTimer;
  self->_persistenceTimer = 0;
}

- (void)_startDismissalTimer
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __72__SBDynamicFlashlightActivityElementViewController__startDismissalTimer__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dismissalTimerDidFire:v3];
}

- (void)_dismissalTimerDidFire:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogFlashlightHUD();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SBDynamicFlashlightActivityElementViewController _dismissalTimerDidFire:];
  }

  if (self->_dismissalTimer == v4 && ![(SBDynamicFlashlightActivityElementViewController *)self isBeamOn])
  {
    self->_shouldDismissWhenOff = 1;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained dynamicFlashlightViewControllerShouldDismiss];

    p_super = &self->_dismissalTimer->super;
    self->_dismissalTimer = 0;
  }

  else
  {
    p_super = SBLogFlashlightHUD();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG))
    {
      v8 = self->_dismissalTimer == v4;
      v9[0] = 67109376;
      v9[1] = v8;
      v10 = 1024;
      v11 = ![(SBDynamicFlashlightActivityElementViewController *)self isBeamOn];
      _os_log_debug_impl(&dword_21ED4E000, p_super, OS_LOG_TYPE_DEBUG, "Ignoring dismissal timer! Right timer? %{BOOL}i, Beam off? %{BOOL}i", v9, 0xEu);
    }
  }
}

- (void)_invalidateDismissalTimer
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __89__SBDynamicFlashlightActivityElementViewController_gestureRecognizer_shouldReceiveTouch___block_invoke;
  v5[3] = &unk_2783A8C18;
  v5[4] = self;
  [(SBDynamicFlashlightActivityElementViewController *)self _animateTracked:v5 completion:0];
  return 1;
}

uint64_t __89__SBDynamicFlashlightActivityElementViewController_gestureRecognizer_shouldReceiveTouch___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1136) setTouching:1];
  v2 = *(a1 + 32);
  v3 = *(v2 + 142);
  v2 += 124;
  v4 = *v2;
  v5 = v2[1];

  return [v3 setBeamState:{v4, v5}];
}

- (void)_panGestureHandler
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t __70__SBDynamicFlashlightActivityElementViewController__panGestureHandler__block_invoke(double *a1)
{
  [*(*(a1 + 4) + 1136) setTouching:1];
  v2 = *(*(a1 + 4) + 1136);
  v3 = a1[5];
  v4 = a1[6];

  return [v2 setBeamState:{v3, v4}];
}

uint64_t __70__SBDynamicFlashlightActivityElementViewController__panGestureHandler__block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 1136) setTouching:0];
  [*(*(a1 + 32) + 1136) setBeamState:{*(a1 + 40), *(a1 + 48)}];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 _updatePreferredContentRectForUnconstrainedPoint:{v3, v4}];
}

- (void)_updateDelegateStateAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = 0.0;
  if ([(SBDynamicFlashlightActivityElementViewController *)self isBeamOn])
  {
    y = self->_torchState.y;
    v7 = self->_optionsProvider;
    [(SBDynamicFlashlightOptionsProvider *)v7 minimumIntensity];
    v9 = v8;
    [(SBDynamicFlashlightOptionsProvider *)v7 minimumHWIntensity];
    v11 = v10 + (y - v9) * (1.0 - v10) / (1.0 - v9);
    [(SBDynamicFlashlightOptionsProvider *)v7 minimumHWIntensity];
    v13 = v12;

    v5 = fmax(v13, fmin(v11, 1.0));
  }

  x = 1.0;
  if (!self->_fixedWidth)
  {
    x = self->_torchState.x;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained dynamicFlashlightViewControllerDidChangeIntensity:v3 width:v5 animated:x];
}

- (void)_tapGestureHandler
{
  [(SBDynamicFlashlightActivityElementViewController *)self _toggleBeamState];
  v3 = [(SBDynamicFlashlightActivityElementViewController *)self delegate];
  [v3 dynamicFlashlightViewControllerDidToggleFlashlight];
}

- (void)_updatePreferredContentRectForUnconstrainedPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(SBDynamicFlashlightActivityElementViewController *)self elementView];
  [v6 sizeThatFits:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];

  [(SBDynamicFlashlightOptionsProvider *)self->_optionsProvider overshootClampFactor];
  v8 = v7;
  if (x >= 0.0)
  {
    if (x > 1.0)
    {
      x = (v7 + 1.0 + -1.0) * tanh((x + -1.0) * 0.55 / (v7 + 1.0 + -1.0) + 0.0) + 1.0;
    }
  }

  else
  {
    x = 0.0 - v7 + (0.0 - (0.0 - v7)) * (tanh((x - (0.0 - v7)) * 0.55 / (0.0 - (0.0 - v7)) + -0.55) + 1.0);
  }

  if (y >= 0.0)
  {
    if (y > 1.0)
    {
      y = (v8 + 1.0 + -1.0) * tanh((y + -1.0) * 0.55 / (v8 + 1.0 + -1.0) + 0.0) + 1.0;
    }
  }

  else
  {
    y = 0.0 - v8 + (0.0 - (0.0 - v8)) * (tanh((y - (0.0 - v8)) * 0.55 / (0.0 - (0.0 - v8)) + -0.55) + 1.0);
  }

  [(SBDynamicFlashlightActivityElementViewController *)self _overshootForNormalized:y];
  v10 = v9;
  [(SBDynamicFlashlightActivityElementViewController *)self _overshootForNormalized:x];
  if (v10 == 0.0 && v11 == 0.0)
  {
    SBRectWithSize();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
  }

  else
  {
    [(SBDynamicFlashlightOptionsProvider *)self->_optionsProvider heightStretchFactor];
    [(SBDynamicFlashlightOptionsProvider *)self->_optionsProvider widthStretchFactor];
    v20 = [(SBDynamicFlashlightActivityElementViewController *)self traitCollection];
    [v20 displayScale];
    UIRectRoundToScale();
    v13 = v21;
    v15 = v22;
    v17 = v23;
    v19 = v24;
  }

  v27.origin.x = v13;
  v27.origin.y = v15;
  v27.size.width = v17;
  v27.size.height = v19;
  if (!CGRectEqualToRect(self->_preferredContentRect, v27))
  {
    self->_preferredContentRect.origin.x = v13;
    self->_preferredContentRect.origin.y = v15;
    self->_preferredContentRect.size.width = v17;
    self->_preferredContentRect.size.height = v19;
    v25 = [(SBDynamicFlashlightActivityElementViewController *)self delegate];
    [v25 dynamicFlashlightViewControllerDidChangePreferredContentRect];
  }
}

- (double)_overshootForNormalized:(double)a3
{
  if (a3 < 0.0)
  {
    return a3;
  }

  v3 = 0.0;
  if (a3 > 1.0)
  {
    return a3 + -1.0;
  }

  return v3;
}

- (void)_accessibilitySetTorchState:(CGPoint)a3
{
  y = a3.y;
  __asm { FMOV            V1.2D, #1.0 }

  self->_torchState = vmaxnmq_f64(vminnmq_f64(a3, _Q1), 0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __80__SBDynamicFlashlightActivityElementViewController__accessibilitySetTorchState___block_invoke;
  v10[3] = &unk_2783A8C18;
  v10[4] = self;
  [(SBDynamicFlashlightActivityElementViewController *)self _animateUntracked:v10 completion:0];
  [(SBDynamicFlashlightActivityElementViewController *)self _updateDelegateStateAnimated:1];
}

- (SBDynamicFlashlightActivityElementViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)preferredContentRect
{
  x = self->_preferredContentRect.origin.x;
  y = self->_preferredContentRect.origin.y;
  width = self->_preferredContentRect.size.width;
  height = self->_preferredContentRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)_beamStateForState:(double)a3 currentBeamState:.cold.1(void *a1, NSObject *a2, double a3)
{
  v10 = *MEMORY[0x277D85DE8];
  [a1 initialIntensity];
  v6 = 134218240;
  v7 = v5;
  v8 = 2048;
  v9 = a3;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "VC: Converted Intensity from HW %0.3f -> View %0.3f", &v6, 0x16u);
}

- (void)_dismissalTimerDidFire:.cold.1()
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end