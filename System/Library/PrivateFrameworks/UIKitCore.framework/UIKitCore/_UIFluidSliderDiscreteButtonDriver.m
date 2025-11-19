@interface _UIFluidSliderDiscreteButtonDriver
- ($F24F406B2B787EFB06265DBA3D28CBD5)_range;
- (NSString)name;
- (UIView)view;
- (double)_minimumPressDuration;
- (double)_overflowAmount;
- (double)_repeatCadence;
- (double)_repeatDelay;
- (double)_trackLength;
- (id)drivable;
- (void)_clearReleaseTimer;
- (void)_clearRepeatTimer;
- (void)_handleButton:(unint64_t)a3 state:(unint64_t)a4;
- (void)_incrementValue;
- (void)_issueUpdateWithValue:(double)a3;
- (void)_releaseCurrentlyPressedButton;
- (void)dealloc;
- (void)pressDown;
- (void)pressUp;
- (void)releaseDown;
- (void)releaseUp;
- (void)stop;
@end

@implementation _UIFluidSliderDiscreteButtonDriver

- (void)stop
{
  [(_UIFluidSliderDiscreteButtonDriver *)self _clearRepeatTimer];

  [(_UIFluidSliderDiscreteButtonDriver *)self _clearReleaseTimer];
}

- (void)dealloc
{
  [(_UIFluidSliderDiscreteButtonDriver *)self _clearRepeatTimer];
  [(_UIFluidSliderDiscreteButtonDriver *)self _clearReleaseTimer];
  v3.receiver = self;
  v3.super_class = _UIFluidSliderDiscreteButtonDriver;
  [(_UIFluidSliderDiscreteButtonDriver *)&v3 dealloc];
}

- (void)pressUp
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(__UILogGetCategoryCachedImpl("FluidSliderInteraction", &pressUp___s_category) + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(_UIFluidSliderDiscreteButtonDriver *)self name];
    v6 = 138412546;
    v7 = v5;
    v8 = 2080;
    v9 = "[_UIFluidSliderDiscreteButtonDriver pressUp]";
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "[FluidSlider Physical Button Update] %@: %s", &v6, 0x16u);
  }

  [(_UIFluidSliderDiscreteButtonDriver *)self _handleButton:1 state:0];
}

- (void)releaseUp
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(__UILogGetCategoryCachedImpl("FluidSliderInteraction", &releaseUp___s_category) + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(_UIFluidSliderDiscreteButtonDriver *)self name];
    v6 = 138412546;
    v7 = v5;
    v8 = 2080;
    v9 = "[_UIFluidSliderDiscreteButtonDriver releaseUp]";
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "[FluidSlider Physical Button Update] %@: %s", &v6, 0x16u);
  }

  [(_UIFluidSliderDiscreteButtonDriver *)self _handleButton:1 state:2];
}

- (void)pressDown
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(__UILogGetCategoryCachedImpl("FluidSliderInteraction", &pressDown___s_category) + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(_UIFluidSliderDiscreteButtonDriver *)self name];
    v6 = 138412546;
    v7 = v5;
    v8 = 2080;
    v9 = "[_UIFluidSliderDiscreteButtonDriver pressDown]";
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "[FluidSlider Physical Button Update] %@: %s", &v6, 0x16u);
  }

  [(_UIFluidSliderDiscreteButtonDriver *)self _handleButton:2 state:0];
}

- (void)releaseDown
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(__UILogGetCategoryCachedImpl("FluidSliderInteraction", &releaseDown___s_category) + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(_UIFluidSliderDiscreteButtonDriver *)self name];
    v6 = 138412546;
    v7 = v5;
    v8 = 2080;
    v9 = "[_UIFluidSliderDiscreteButtonDriver releaseDown]";
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "[FluidSlider Physical Button Update] %@: %s", &v6, 0x16u);
  }

  [(_UIFluidSliderDiscreteButtonDriver *)self _handleButton:2 state:2];
}

- (NSString)name
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)_handleButton:(unint64_t)a3 state:(unint64_t)a4
{
  if (a4)
  {
    if (a4 == 1)
    {
      v33 = [MEMORY[0x1E696AAA8] currentHandler];
      [v33 handleFailureInMethod:a2 object:self file:@"_UIFluidSliderDiscreteButtonDriver.m" lineNumber:115 description:{@"Received a button update in the changed state. This is a discrete driver, so this shouldn't be possible."}];
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    [(_UIFluidSliderDiscreteButtonDriver *)self set_lastReleaseTimestamp:?];
    v5 = [(_UIFluidSliderDiscreteButtonDriver *)self _isRepeating];
    [(_UIFluidSliderDiscreteButtonDriver *)self _clearRepeatTimer];
    if (v5)
    {

      [(_UIFluidSliderDiscreteButtonDriver *)self _releaseCurrentlyPressedButton];
      return;
    }

    v27 = [objc_alloc(MEMORY[0x1E698E5E8]) initWithIdentifier:@"com.apple.UIKit.DiscreteButtonDriverReleaseTimer"];
    [(_UIFluidSliderDiscreteButtonDriver *)self set_releaseTimer:v27];

    objc_initWeak(&location, self);
    v21 = [(_UIFluidSliderDiscreteButtonDriver *)self _releaseTimer];
    [(_UIFluidSliderDiscreteButtonDriver *)self _minimumPressDuration];
    v29 = v28;
    v30 = MEMORY[0x1E69E96A0];
    v31 = MEMORY[0x1E69E96A0];
    v26 = v34;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __58___UIFluidSliderDiscreteButtonDriver__handleButton_state___block_invoke_2;
    v34[3] = &unk_1E710D988;
    objc_copyWeak(&v35, &location);
    [v21 scheduleWithFireInterval:v30 leewayInterval:v34 queue:v29 handler:0.0];
LABEL_17:

    objc_destroyWeak(v26 + 4);
    objc_destroyWeak(&location);
    return;
  }

  v7 = [(_UIFluidSliderDiscreteButtonDriver *)self _releaseTimer];

  if (v7)
  {
    [(_UIFluidSliderDiscreteButtonDriver *)self _clearReleaseTimer];
    [(_UIFluidSliderDiscreteButtonDriver *)self _releaseCurrentlyPressedButton];
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v9 = v8;
  [(_UIFluidSliderDiscreteButtonDriver *)self _lastReleaseTimestamp];
  v11 = v10;
  [(_UIFluidSliderDiscreteButtonDriver *)self _minimumPressDuration];
  v13 = v12;
  [(_UIFluidSliderDiscreteButtonDriver *)self set_lastReleaseTimestamp:0.0];
  [(_UIFluidSliderDiscreteButtonDriver *)self set_pressedButton:a3];
  v14 = [(_UIFluidSliderDiscreteButtonDriver *)self drivable];
  [v14 value];
  [(_UIFluidSliderDiscreteButtonDriver *)self set_value:?];

  v15 = [(_UIFluidSliderDiscreteButtonDriver *)self _repeatTimer];

  if (!v15)
  {
    [(_UIFluidSliderDiscreteButtonDriver *)self _incrementValue];
    v16 = [objc_alloc(MEMORY[0x1E698E5E8]) initWithIdentifier:@"com.apple.UIKit.DiscreteButtonDriverRepeatTimer"];
    [(_UIFluidSliderDiscreteButtonDriver *)self set_repeatTimer:v16];

    objc_initWeak(&location, self);
    [(_UIFluidSliderDiscreteButtonDriver *)self _repeatDelay];
    v18 = v17;
    v19 = v9 - v11;
    if (v9 - v11 < v13 || ([(_UIFluidSliderDiscreteButtonDriver *)self _value], v19 <= 0.0) || ([(_UIFluidSliderDiscreteButtonDriver *)self _value], v19 >= 1.0))
    {
      [(_UIFluidSliderDiscreteButtonDriver *)self _repeatCadence];
      v18 = v20;
    }

    v21 = [(_UIFluidSliderDiscreteButtonDriver *)self _repeatTimer];
    [(_UIFluidSliderDiscreteButtonDriver *)self _repeatCadence];
    v23 = v22;
    v24 = MEMORY[0x1E69E96A0];
    v25 = MEMORY[0x1E69E96A0];
    v26 = v36;
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __58___UIFluidSliderDiscreteButtonDriver__handleButton_state___block_invoke;
    v36[3] = &unk_1E710D988;
    objc_copyWeak(&v37, &location);
    [v21 scheduleRepeatingWithFireInterval:v24 repeatInterval:v36 leewayInterval:v18 queue:v23 handler:0.0];
    goto LABEL_17;
  }
}

- (void)_clearRepeatTimer
{
  [(BSAbsoluteMachTimer *)self->_repeatTimer invalidate];
  repeatTimer = self->_repeatTimer;
  self->_repeatTimer = 0;

  [(_UIFluidSliderDiscreteButtonDriver *)self set_isRepeating:0];
}

- (void)_clearReleaseTimer
{
  [(BSAbsoluteMachTimer *)self->_releaseTimer invalidate];
  releaseTimer = self->_releaseTimer;
  self->_releaseTimer = 0;
}

- (void)_incrementValue
{
  if ([(_UIFluidSliderDiscreteButtonDriver *)self _pressedButton])
  {
    v3 = [(_UIFluidSliderDiscreteButtonDriver *)self _pressedButton];
    v4 = [(_UIFluidSliderDiscreteButtonDriver *)self drivable];
    v5 = 1.0 / [v4 stepCount];

    [(_UIFluidSliderDiscreteButtonDriver *)self _value];
    if (v3 != 1)
    {
      v5 = -v5;
    }

    [(_UIFluidSliderDiscreteButtonDriver *)self velocityMultiplier];
    v7 = v5 * v6;
    [(_UIFluidSliderDiscreteButtonDriver *)self _value];
    [(_UIFluidSliderDiscreteButtonDriver *)self set_value:v8 + v7];
    [(_UIFluidSliderDiscreteButtonDriver *)self _value];

    [(_UIFluidSliderDiscreteButtonDriver *)self _issueUpdateWithValue:?];
  }
}

- (void)_releaseCurrentlyPressedButton
{
  [(_UIFluidSliderDiscreteButtonDriver *)self set_pressedButton:0];
  v3 = [(_UIFluidSliderDiscreteButtonDriver *)self drivable];
  [v3 value];
  v5 = v4;

  v6 = fmax(fmin(v5, 1.0), 0.0);

  [(_UIFluidSliderDiscreteButtonDriver *)self _issueUpdateWithValue:v6];
}

- (void)_issueUpdateWithValue:(double)a3
{
  v5 = [(_UIFluidSliderDiscreteButtonDriver *)self _pressedButton];
  [(_UIFluidSliderDiscreteButtonDriver *)self stretchAmount];
  v7 = v6;
  v8 = [(_UIFluidSliderDiscreteButtonDriver *)self drivable];
  [v8 currentTrackLength];
  v10 = v7 / v9;

  [(_UIFluidSliderDiscreteButtonDriver *)self _range];
  v13 = fmax(v11, fmin(a3, v12));
  if (v10 != 0.0)
  {
    if (v11 <= a3)
    {
      v14 = v10;
    }

    else
    {
      v14 = -v10;
    }

    v13 = v13 + v14 * (1.0 - 1.0 / ((a3 - v13) / v14 * 0.55 + 1.0));
  }

  v15 = +[_UIFluidSliderSettingsDomain rootSettings];
  v16 = [v15 discreteButtonDriverSettings];

  if (v5)
  {
    v17 = [(_UIFluidSliderDiscreteButtonDriver *)self _pressedButton];
    v18 = [(_UIFluidSliderDiscreteButtonDriver *)self trackAxis];
    if (v17 == 1)
    {
      if (v18 == 1)
      {
        [v16 horizontalVolumeUpScale];
      }

      else
      {
        [v16 verticalVolumeUpScale];
      }
    }

    else if (v18 == 1)
    {
      [v16 horizontalVolumeDownScale];
    }

    else
    {
      [v16 verticalVolumeDownScale];
    }

    v22 = v19;
    v20 = [(_UIFluidSliderDiscreteButtonDriver *)self _isRepeating];
    v21 = [v16 update];
  }

  else
  {
    v20 = [(_UIFluidSliderDiscreteButtonDriver *)self _isRepeating];
    v21 = [v16 settle];
    v22 = 1.0;
  }

  v23 = v5 != 0;
  v24 = [v21 springAnimationBehavior];

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __60___UIFluidSliderDiscreteButtonDriver__issueUpdateWithValue___block_invoke;
  v26[3] = &unk_1E7116870;
  v25 = 2;
  if (v20)
  {
    v25 = 3;
  }

  v26[4] = self;
  *&v26[5] = v13;
  *&v26[6] = v22;
  v26[7] = v23;
  v26[8] = v25;
  v26[9] = 0xBFF0000000000000;
  [UIView _animateUsingSpringBehavior:v24 tracking:0 animations:v26 completion:0];
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_range
{
  v3 = [(_UIFluidSliderDiscreteButtonDriver *)self drivable];
  v4 = [v3 isLocked];

  if (v4)
  {
    v5 = [(_UIFluidSliderDiscreteButtonDriver *)self drivable];
    [v5 value];
    v7 = v6;

    v8 = v7;
  }

  else
  {
    v8 = 1.0;
    v7 = 0.0;
  }

  v9 = v7;
  result.var1 = v8;
  result.var0 = v9;
  return result;
}

- (double)_trackLength
{
  v2 = [(_UIFluidSliderDiscreteButtonDriver *)self drivable];
  [v2 currentTrackLength];
  v4 = v3;

  return v4;
}

- (double)_overflowAmount
{
  [(_UIFluidSliderDiscreteButtonDriver *)self stretchAmount];
  v4 = v3;
  [(_UIFluidSliderDiscreteButtonDriver *)self _trackLength];
  return v4 / v5 * 0.5;
}

- (double)_repeatDelay
{
  v2 = +[_UIFluidSliderSettingsDomain rootSettings];
  v3 = [v2 discreteButtonDriverSettings];
  [v3 repeatDelay];
  v5 = v4;

  return v5;
}

- (double)_repeatCadence
{
  v2 = +[_UIFluidSliderSettingsDomain rootSettings];
  v3 = [v2 discreteButtonDriverSettings];
  [v3 repeatCadence];
  v5 = v4;

  return v5;
}

- (double)_minimumPressDuration
{
  v2 = +[_UIFluidSliderSettingsDomain rootSettings];
  v3 = [v2 discreteButtonDriverSettings];
  [v3 minimumPressDuration];
  v5 = v4;

  return v5;
}

- (id)drivable
{
  WeakRetained = objc_loadWeakRetained(&self->_drivable);

  return WeakRetained;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

@end