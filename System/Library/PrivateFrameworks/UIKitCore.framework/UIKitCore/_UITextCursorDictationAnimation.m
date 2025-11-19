@interface _UITextCursorDictationAnimation
- (CGRect)animatedCursorShapeBounds;
- (UIStandardTextCursorView)cursorView;
- (UIView)cursorShapeView;
- (_UIStandardTextCursorViewAudioLevelProvider)audioLevelProvider;
- (_UITextCursorDictationAnimation)initWithCursorShapeView:(id)a3;
- (void)_displayLinkFired:(id)a3;
- (void)_setCursorGlowEffectEnabled:(BOOL)a3;
- (void)_setSoundReactiveCursorEnabled:(BOOL)a3;
- (void)cursorShapeDidChange;
- (void)setEnabled:(BOOL)a3;
@end

@implementation _UITextCursorDictationAnimation

- (_UITextCursorDictationAnimation)initWithCursorShapeView:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = _UITextCursorDictationAnimation;
  v5 = [(_UITextCursorDictationAnimation *)&v24 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_cursorShapeView, v4);
    v7 = [UIView alloc];
    v8 = *MEMORY[0x1E695F058];
    v9 = *(MEMORY[0x1E695F058] + 8);
    v10 = *(MEMORY[0x1E695F058] + 16);
    v11 = *(MEMORY[0x1E695F058] + 24);
    v12 = [(UIView *)v7 initWithFrame:*MEMORY[0x1E695F058], v9, v10, v11];
    glowShapeView = v6->_glowShapeView;
    v6->_glowShapeView = v12;

    v14 = [[UIView alloc] initWithFrame:v8, v9, v10, v11];
    glowContainerView = v6->_glowContainerView;
    v6->_glowContainerView = v14;

    [(UIView *)v6->_glowContainerView addSubview:v6->_glowShapeView];
    v16 = [[UIDictationGlowEffect alloc] initWithView:v6->_glowShapeView];
    glowEffect = v6->_glowEffect;
    v6->_glowEffect = v16;

    v18 = +[_UIDictationSettingsDomain rootSettings];
    [v18 cursorGlowBlurRadius];
    [(UIDictationGlowEffect *)v6->_glowEffect setBlurRadius:?];

    [(UIView *)v6->_glowContainerView setHidden:1];
    WeakRetained = objc_loadWeakRetained(&v6->_cursorShapeView);
    v20 = [WeakRetained tintColor];
    v21 = +[_UIDictationSettingsDomain rootSettings];
    [v21 cursorGlowAlphaMin];
    v22 = [v20 colorWithAlphaComponent:?];
    [(UIDictationGlowEffect *)v6->_glowEffect setTintColor:v22];

    [(_UITextCursorDictationAnimation *)v6 setAnimatedCursorShapeBounds:v8, v9, v10, v11];
    [(_UITextCursorDictationAnimation *)v6 cursorShapeDidChange];
  }

  return v6;
}

- (void)cursorShapeDidChange
{
  WeakRetained = objc_loadWeakRetained(&self->_cursorShapeView);
  [WeakRetained frame];
  [(UIView *)self->_glowShapeView setFrame:?];

  v4 = +[_UIDictationSettingsDomain rootSettings];
  [v4 cursorGlowBorderPadding];
  v6 = v5;

  if (v6 > 0.0)
  {
    v7 = objc_loadWeakRetained(&self->_cursorShapeView);
    [v7 frame];
    v20 = CGRectInset(v19, v6 * -0.5, v6 * -0.5);
    [(UIView *)self->_glowShapeView setFrame:v20.origin.x, v20.origin.y, v20.size.width, v20.size.height];
  }

  v8 = objc_loadWeakRetained(&self->_cursorShapeView);
  v9 = [v8 backgroundColor];
  [(UIView *)self->_glowShapeView setBackgroundColor:v9];

  v10 = objc_loadWeakRetained(&self->_cursorShapeView);
  v11 = [v10 layer];
  v12 = v11;
  if (v11)
  {
    [v11 cornerRadii];
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
  }

  v13 = [(UIView *)self->_glowShapeView layer];
  v14[0] = v15;
  v14[1] = v16;
  v14[2] = v17;
  v14[3] = v18;
  [v13 setCornerRadii:v14];
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = +[_UIDictationSettingsDomain rootSettings];
  v6 = [v5 pulseAnimationEnabled];

  if (v6 && self->_enabled != v3)
  {
    self->_enabled = v3;
    [(_UITextCursorDictationAnimation *)self _setCursorGlowEffectEnabled:v3];
    if (v3)
    {
      if (self->_needsInitialDictationAnimation)
      {
        v7 = objc_loadWeakRetained(&self->_cursorView);
        [v7 bounds];
        [v7 _cursorShapeRectForBounds:?];
        v9 = v8;
        v11 = v10;
        v13 = v12;
        v15 = v14;

        memset(&v22, 0, sizeof(v22));
        CGAffineTransformMakeScale(&v22, (v13 + 2.0) / v13, (v15 + 7.0) / v15);
        v21 = v22;
        v24.origin.x = v9;
        v24.origin.y = v11;
        v24.size.width = v13;
        v24.size.height = v15;
        v25 = CGRectApplyAffineTransform(v24, &v21);
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __46___UITextCursorDictationAnimation_setEnabled___block_invoke;
        v19[3] = &unk_1E70F3B20;
        v20 = v25;
        v19[4] = self;
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __46___UITextCursorDictationAnimation_setEnabled___block_invoke_2;
        v18[3] = &unk_1E70F5AC0;
        v18[4] = self;
        [UIView animateWithDuration:0x20000 delay:v19 options:v18 animations:0.175 completion:0.0];
        return;
      }

      v16 = self;
      v17 = 1;
    }

    else
    {
      v16 = self;
      v17 = 0;
    }

    [(_UITextCursorDictationAnimation *)v16 _setSoundReactiveCursorEnabled:v17];
  }
}

- (void)_setCursorGlowEffectEnabled:(BOOL)a3
{
  if (a3)
  {
    v4 = [(_UITextCursorDictationAnimation *)self cursorView];
    [v4 addSubview:self->_glowContainerView];

    [(UIView *)self->_glowContainerView setHidden:0];
    WeakRetained = objc_loadWeakRetained(&self->_cursorShapeView);
    v6 = [WeakRetained tintColor];
    v7 = +[_UIDictationSettingsDomain rootSettings];
    [v7 cursorGlowAlphaMin];
    v8 = [v6 colorWithAlphaComponent:?];
    [(UIDictationGlowEffect *)self->_glowEffect setTintColor:v8];

    v9 = objc_loadWeakRetained(&self->_cursorShapeView);
    v10 = [v9 tintColor];
    v11 = +[_UIDictationSettingsDomain rootSettings];
    [v11 cursorGlowAlphaMax];
    v18 = [v10 colorWithAlphaComponent:?];

    glowEffect = self->_glowEffect;
    v13 = +[_UIDictationSettingsDomain rootSettings];
    [v13 pulseDuration];
    [(UIDictationGlowEffect *)glowEffect setTintColor:v18 animated:1 duration:1 autoreverses:v14 * 0.5 repeatCount:3.40282347e38];
  }

  else
  {
    v15 = objc_loadWeakRetained(&self->_cursorShapeView);
    v16 = [v15 tintColor];
    [(UIDictationGlowEffect *)self->_glowEffect setTintColor:v16];

    glowContainerView = self->_glowContainerView;

    [(UIView *)glowContainerView removeFromSuperview];
  }
}

- (void)_setSoundReactiveCursorEnabled:(BOOL)a3
{
  v3 = a3;
  v24 = *MEMORY[0x1E69E9840];
  v5 = +[_UIDictationSettingsDomain rootSettings];
  v6 = [v5 soundReactiveCursorEnabled];

  if (v6 && self->_soundReactiveCursorEnabled != v3)
  {
    self->_soundReactiveCursorEnabled = v3;
    v7 = _UIDictationControllerLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v23[0] = 67109120;
      v23[1] = v3;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "Dictation sound reactive cursor is enabled(%d)", v23, 8u);
    }

    if (v3)
    {
      if (!self->_levelSmoother)
      {
        v8 = [_UIDictationAudioLevelSmoother alloc];
        LODWORD(v9) = -1032847360;
        LODWORD(v10) = 1051931443;
        LODWORD(v11) = 1063675494;
        LODWORD(v12) = -10.0;
        v13 = [(_UIDictationAudioLevelSmoother *)v8 initWithMinimumPower:5 maximumPower:v9 historyLength:v12 attackSpeed:v10 decaySpeed:v11];
        levelSmoother = self->_levelSmoother;
        self->_levelSmoother = v13;
      }

      v15 = [objc_opt_self() mainScreen];
      v16 = [v15 displayLinkWithTarget:self selector:sel__displayLinkFired_];
      soundReactiveCursorDisplayLink = self->_soundReactiveCursorDisplayLink;
      self->_soundReactiveCursorDisplayLink = v16;

      v18 = +[_UIDictationSettingsDomain rootSettings];
      [v18 audioPollingRate];
      [(CADisplayLink *)self->_soundReactiveCursorDisplayLink setPreferredFramesPerSecond:v19];

      v20 = self->_soundReactiveCursorDisplayLink;
      v21 = [MEMORY[0x1E695DFD0] mainRunLoop];
      [(CADisplayLink *)v20 addToRunLoop:v21 forMode:*MEMORY[0x1E695DA28]];

      self->_animationStartTime = CACurrentMediaTime();
    }

    else
    {
      [(CADisplayLink *)self->_soundReactiveCursorDisplayLink invalidate];
      v22 = self->_soundReactiveCursorDisplayLink;
      self->_soundReactiveCursorDisplayLink = 0;

      [(_UITextCursorDictationAnimation *)self setAnimatedCursorShapeBounds:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    }
  }
}

- (void)_displayLinkFired:(id)a3
{
  v4 = a3;
  if (self->_soundReactiveCursorDisplayLink)
  {
    WeakRetained = objc_loadWeakRetained(&self->_cursorShapeView);
    [WeakRetained bounds];
    v7 = v6;

    v8 = objc_loadWeakRetained(&self->_cursorShapeView);
    [v8 bounds];
    v10 = v9;

    if (v7 > 0.0 && v10 > 0.0)
    {
      v11 = CACurrentMediaTime();
      v12 = v11 - self->_animationStartTime;
      v13 = +[_UIDictationSettingsDomain rootSettings];
      [v13 pulseDuration];
      v15 = v14;

      if (v12 <= v15)
      {
        v18 = v15 - v12;
        if (v12 < v15 * 0.5)
        {
          v18 = v12;
        }

        v19 = -((v18 / (v15 * 0.5) + -2.0) * (v18 / (v15 * 0.5)));
        v20 = +[_UIDictationSettingsDomain rootSettings];
        [v20 pulseWidthMaxBump];
        v17 = v19 * v21 / v10;

        v22 = +[_UIDictationSettingsDomain rootSettings];
        [v22 pulseHeightMaxBump];
        v16 = v19 * v23 / v7;
      }

      else
      {
        self->_animationStartTime = v11;
        v16 = 0.0;
        v17 = 0.0;
      }

      v24 = objc_loadWeakRetained(&self->_audioLevelProvider);
      [v24 audioLevel];
      v26 = v25;

      LODWORD(v27) = v26;
      [(_UIDictationAudioLevelSmoother *)self->_levelSmoother smoothedLevelForMicPower:v27];
      v29 = v28 * 0.95 + 0.05;
      v30 = +[_UIDictationSettingsDomain rootSettings];
      [v30 audioHeightMaxBump];
      v32 = (v7 + v31) / v7;

      v33 = v29;
      v34 = v16 + (v32 + -1.0) * v33 + 1.0;
      v35 = +[_UIDictationSettingsDomain rootSettings];
      [v35 audioWidthMaxBump];
      v37 = (v10 + v36) / v10;

      v38 = v17 + (v37 + -1.0) * v33 + 1.0;
      if (v37 < v38)
      {
        v38 = v37;
      }

      if (v32 >= v34)
      {
        v39 = v34;
      }

      else
      {
        v39 = v32;
      }

      if (v38 > 0.0 && v39 > 0.0)
      {
        memset(&v48, 0, sizeof(v48));
        CGAffineTransformMakeScale(&v48, v38, v39);
        v40 = +[_UIDictationSettingsDomain rootSettings];
        [v40 audioScaleAnimationDampingRatio];
        v42 = v41;
        v43 = +[_UIDictationSettingsDomain rootSettings];
        [v43 audioScaleAnimationResponse];
        v45 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:v42 response:v44];

        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v47 = v48;
        v46[2] = __53___UITextCursorDictationAnimation__displayLinkFired___block_invoke;
        v46[3] = &unk_1E70F3DC8;
        v46[4] = self;
        [UIView _animateUsingSpringBehavior:v45 tracking:0 animations:v46 completion:0];
      }
    }
  }
}

- (UIView)cursorShapeView
{
  WeakRetained = objc_loadWeakRetained(&self->_cursorShapeView);

  return WeakRetained;
}

- (UIStandardTextCursorView)cursorView
{
  WeakRetained = objc_loadWeakRetained(&self->_cursorView);

  return WeakRetained;
}

- (_UIStandardTextCursorViewAudioLevelProvider)audioLevelProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_audioLevelProvider);

  return WeakRetained;
}

- (CGRect)animatedCursorShapeBounds
{
  x = self->_animatedCursorShapeBounds.origin.x;
  y = self->_animatedCursorShapeBounds.origin.y;
  width = self->_animatedCursorShapeBounds.size.width;
  height = self->_animatedCursorShapeBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end