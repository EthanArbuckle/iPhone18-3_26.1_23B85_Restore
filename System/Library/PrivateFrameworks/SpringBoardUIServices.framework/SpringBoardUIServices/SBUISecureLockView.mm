@interface SBUISecureLockView
- (BOOL)transitionToState:(int64_t)state;
- (SBUISecureLockView)initWithDesiredState:(int64_t)state;
- (id)_flipBookType;
- (id)_secureFlipBookLayerStateFromIconViewState:(int64_t)state;
- (int64_t)_startingPointForDesiredState:(int64_t)state;
- (void)_tick:(id)_tick;
- (void)dealloc;
- (void)layoutSubviews;
@end

@implementation SBUISecureLockView

- (SBUISecureLockView)initWithDesiredState:(int64_t)state
{
  v16.receiver = self;
  v16.super_class = SBUISecureLockView;
  v4 = [(SBUISecureLockView *)&v16 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x1E6979498];
    _flipBookType = [(SBUISecureLockView *)v4 _flipBookType];
    v8 = [v6 secureFlipBookWithType:_flipBookType];
    secureFlipBookLayer = v5->_secureFlipBookLayer;
    v5->_secureFlipBookLayer = v8;

    [(SBUISecureLockView *)v5 transitionToState:[(SBUISecureLockView *)v5 _startingPointForDesiredState:state]];
    layer = [(SBUISecureLockView *)v5 layer];
    [layer addSublayer:v5->_secureFlipBookLayer];

    v11 = [MEMORY[0x1E6979330] displayLinkWithTarget:v5 selector:sel__tick_];
    displayLink = v5->_displayLink;
    v5->_displayLink = v11;

    v13 = v5->_displayLink;
    currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
    [(CADisplayLink *)v13 addToRunLoop:currentRunLoop forMode:*MEMORY[0x1E695DA28]];
  }

  return v5;
}

- (void)dealloc
{
  [(CADisplayLink *)self->_displayLink invalidate];
  v3.receiver = self;
  v3.super_class = SBUISecureLockView;
  [(SBUISecureLockView *)&v3 dealloc];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBUISecureLockView;
  [(SBUISecureLockView *)&v3 layoutSubviews];
  [(SBUISecureLockView *)self bounds];
  [(CASecureFlipBookLayer *)self->_secureFlipBookLayer setFrame:?];
}

- (BOOL)transitionToState:(int64_t)state
{
  if (self->_state != state)
  {
    self->_state = state;
    currentState = [(CASecureFlipBookLayer *)self->_secureFlipBookLayer currentState];
    v7 = [(SBUISecureLockView *)self _secureFlipBookLayerStateFromIconViewState:state];
    if (v7)
    {
      if ([(CASecureFlipBookLayer *)self->_secureFlipBookLayer canTransitionToState:v7])
      {
        if (([(CASecureFlipBookLayer *)self->_secureFlipBookLayer transitionToState:v7]& 1) != 0)
        {
          v3 = 1;
LABEL_13:

          return v3;
        }

        v8 = SBLogLockScreenBiometricFaceIDCoaching();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [(SBUISecureLockView *)v7 transitionToState:v8];
        }
      }

      else
      {
        v8 = SBLogLockScreenBiometricFaceIDCoaching();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [(SBUISecureLockView *)currentState transitionToState:v7, v8];
        }
      }
    }

    v3 = 0;
    goto LABEL_13;
  }

  return 0;
}

- (void)_tick:(id)_tick
{
  secureFlipBookLayer = self->_secureFlipBookLayer;
  [(CADisplayLink *)self->_displayLink targetTimestamp];
  v6 = v5;
  [(CADisplayLink *)self->_displayLink timestamp];
  v8 = v6 - v7;

  [(CASecureFlipBookLayer *)secureFlipBookLayer tick:v8];
}

- (id)_flipBookType
{
  if (SBSIsSystemApertureAvailable())
  {
    v2 = @"lock-aperture";
  }

  else
  {
    v2 = @"lock-2x";
  }

  return v2;
}

- (id)_secureFlipBookLayerStateFromIconViewState:(int64_t)state
{
  if ((state - 1) > 6)
  {
    return @"Sleep State";
  }

  else
  {
    return off_1E789F7A8[state - 1];
  }
}

- (int64_t)_startingPointForDesiredState:(int64_t)state
{
  if ((state & 0xFFFFFFFFFFFFFFFELL) == 6)
  {
    return 5;
  }

  else
  {
    return 1;
  }
}

- (void)transitionToState:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1A9A79000, log, OS_LOG_TYPE_ERROR, "[Secure Lock Indicator] Cannot transition from state: %@ to state: %@", &v3, 0x16u);
}

- (void)transitionToState:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A9A79000, a2, OS_LOG_TYPE_ERROR, "[Secure Lock Indicator] Couldn't transition to state: %@", &v2, 0xCu);
}

@end