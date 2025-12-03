@interface UIStandardTextCursorView
- ($2BD9DB369DDD0E9E489A8699A184AD3B)_shadowSpecForEffects;
- ($2BD9DB369DDD0E9E489A8699A184AD3B)originShadow;
- ($59ECE587B56CBF78EA342F243490147C)originShape;
- (BOOL)_trackingFloatingCursorView;
- (CGRect)_cursorShapeRectForBounds:(CGRect)bounds;
- (UIStandardTextCursorView)initWithFrame:(CGRect)frame;
- (UIView)originView;
- (_UIStandardTextCursorViewAudioLevelProvider)audioLevelProvider;
- (id)_createFloatingCursorView;
- (id)_dictationAnimation;
- (id)_fillColorForEffects;
- (void)_performBulgeAnimation;
- (void)_setNeedsInitialDictationAnimation;
- (void)_updateShadow;
- (void)assertionActivationStateChangedToState:(BOOL)state forType:(unint64_t)type;
- (void)layoutSubviews;
- (void)setAudioLevelProvider:(id)provider;
- (void)setBlinking:(BOOL)blinking;
- (void)setFloatingEffectEnabled:(BOOL)enabled;
- (void)setGlowEffectEnabled:(BOOL)enabled;
- (void)setHidden:(BOOL)hidden;
- (void)tintColorDidChange;
@end

@implementation UIStandardTextCursorView

- (void)layoutSubviews
{
  v24.receiver = self;
  v24.super_class = UIStandardTextCursorView;
  [(UIView *)&v24 layoutSubviews];
  [(UIView *)self bounds];
  [(UIStandardTextCursorView *)self _cursorShapeRectForBounds:?];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  dictationAnimation = self->_dictationAnimation;
  if (dictationAnimation)
  {
    [(_UITextCursorDictationAnimation *)dictationAnimation animatedCursorShapeBounds];
    if (!CGRectIsEmpty(v25))
    {
      [(_UITextCursorDictationAnimation *)self->_dictationAnimation animatedCursorShapeBounds];
      v4 = v12;
      v6 = v13;
      v8 = v14;
      v10 = v15;
    }
  }

  [(UIView *)self bounds];
  v17 = v16;
  v19 = v18;
  [(UIView *)self->_cursorShapeView setBounds:0.0, 0.0, v8, v10];
  [(UIView *)self->_cursorShapeView setCenter:v4 + v17 * 0.5, v6 + v19 * 0.5];
  _fillColorForEffects = [(UIStandardTextCursorView *)self _fillColorForEffects];
  [(UIView *)self->_cursorShapeView setBackgroundColor:_fillColorForEffects];

  v26.origin.x = v4;
  v26.origin.y = v6;
  v26.size.width = v8;
  v26.size.height = v10;
  v21 = CGRectGetWidth(v26) * 0.5;
  layer = [(UIView *)self->_cursorShapeView layer];
  *v23 = v21;
  *&v23[1] = v21;
  *&v23[2] = v21;
  *&v23[3] = v21;
  *&v23[4] = v21;
  *&v23[5] = v21;
  *&v23[6] = v21;
  *&v23[7] = v21;
  [layer setCornerRadii:v23];

  [(NSMutableSet *)self->_cursorAnimations makeObjectsPerformSelector:sel_cursorShapeDidChange];
}

- (id)_fillColorForEffects
{
  if (self->_ghostEffectEnabled)
  {
    [UIColor colorWithDynamicProvider:&__block_literal_global_301];
  }

  else
  {
    [(UIView *)self tintColor];
  }
  v2 = ;

  return v2;
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = UIStandardTextCursorView;
  [(UIView *)&v4 tintColorDidChange];
  tintColor = [(UIView *)self tintColor];
  [(_UITextCursorDictationAnimation *)self->_dictationAnimation setTintColor:tintColor];
}

- (UIStandardTextCursorView)initWithFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = UIStandardTextCursorView;
  v3 = [(UIView *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor insertionPointColor];
    [(UIView *)v3 setTintColor:v4];

    v3->_shapeScale = 1.0;
    v5 = [UIView alloc];
    v6 = [(UIView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    cursorShapeView = v3->_cursorShapeView;
    v3->_cursorShapeView = v6;

    [(UIView *)v3 addSubview:v3->_cursorShapeView];
    v8 = [[_UIAssertionController alloc] initWithAssertionSubject:v3];
    assertionController = v3->_assertionController;
    v3->_assertionController = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    cursorAnimations = v3->_cursorAnimations;
    v3->_cursorAnimations = v10;
  }

  return v3;
}

- (void)setBlinking:(BOOL)blinking
{
  blinkingCopy = blinking;
  self->_blinking = blinking;
  if (blinking && !self->_blinkAnimation)
  {
    v5 = [[_UITextCursorBlinkAnimation alloc] initWithCursorShapeView:self->_cursorShapeView];
    blinkAnimation = self->_blinkAnimation;
    self->_blinkAnimation = v5;

    [(NSMutableSet *)self->_cursorAnimations addObject:self->_blinkAnimation];
  }

  v7 = self->_blinkAnimation;

  [(_UITextCursorBlinkAnimation *)v7 setEnabled:blinkingCopy];
}

- (void)setHidden:(BOOL)hidden
{
  v3.receiver = self;
  v3.super_class = UIStandardTextCursorView;
  [(UIView *)&v3 setHidden:hidden];
}

id __48__UIStandardTextCursorView__fillColorForEffects__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 userInterfaceStyle];
  v3 = 0.0;
  if (v2 == 2)
  {
    v3 = 1.0;
  }

  v4 = [UIColor colorWithWhite:v3 alpha:0.3];

  return v4;
}

- (CGRect)_cursorShapeRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v8 = *(MEMORY[0x1E695EFF8] + 8);
  v19 = *MEMORY[0x1E695EFF8];
  v9 = CGRectGetWidth(bounds);
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v10 = CGRectGetHeight(v20);
  if (v9 >= v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = self->_shapeScale + self->_shapeScale;
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v13 = CGRectGetWidth(v21);
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v14 = CGRectGetHeight(v22);
  if (v13 <= v14)
  {
    v15 = v12;
  }

  else
  {
    v15 = v11;
  }

  if (v13 <= v14)
  {
    v16 = v11;
  }

  else
  {
    v16 = v12;
  }

  v17 = v19;
  v18 = v8;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- ($2BD9DB369DDD0E9E489A8699A184AD3B)_shadowSpecForEffects
{
  if (BYTE3(self[11].var2) == 1)
  {
    self = [UIColor colorWithRed:0.274509804 green:0.431372549 blue:0.725490196 alpha:1.0];
    retstr->var0 = self;
    *&retstr->var1 = xmmword_18A67BCF0;
    retstr->var3 = xmmword_18A67BD00;
  }

  else
  {
    retstr->var3.height = 0.0;
    *&retstr->var0 = 0u;
    *&retstr->var2 = 0u;
  }

  return self;
}

- (void)_updateShadow
{
  [(UIStandardTextCursorView *)self _shadowSpecForEffects];
  cGColor = [0 CGColor];
  layer = [(UIView *)self->_cursorShapeView layer];
  [layer setShadowColor:cGColor];

  layer2 = [(UIView *)self->_cursorShapeView layer];
  [layer2 setShadowOffset:{0.0, 0.0}];

  layer3 = [(UIView *)self->_cursorShapeView layer];
  [layer3 setShadowRadius:0.0];

  layer4 = [(UIView *)self->_cursorShapeView layer];
  *&v8 = 0.0;
  [layer4 setShadowOpacity:v8];
}

- (void)setFloatingEffectEnabled:(BOOL)enabled
{
  self->_floatingEffectEnabled = enabled;
  [(UIStandardTextCursorView *)self _updateShadow];

  [(UIView *)self setNeedsLayout];
}

- (id)_createFloatingCursorView
{
  v3 = objc_alloc(objc_opt_class());
  [(UIView *)self frame];
  v4 = [v3 initWithFrame:?];
  [v4 setFloatingEffectEnabled:1];
  [(UIStandardTextCursorView *)self _shapeScale];
  [v4 _setShapeScale:?];
  tintColor = [(UIView *)self tintColor];
  [v4 setTintColor:tintColor];

  objc_storeWeak(&self->_trackedFloatingCursorView, v4);

  return v4;
}

- (void)_performBulgeAnimation
{
  if (!self->_dictationAnimation)
  {
    v8[5] = v5;
    v8[6] = v4;
    v8[11] = v2;
    v8[12] = v3;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __50__UIStandardTextCursorView__performBulgeAnimation__block_invoke;
    v8[3] = &unk_1E70F3590;
    v8[4] = self;
    [UIView animateWithSpringDuration:0 bounce:v8 initialSpringVelocity:0 delay:0.18 options:0.8 animations:0.0 completion:0.0];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50__UIStandardTextCursorView__performBulgeAnimation__block_invoke_2;
    v7[3] = &unk_1E70F3590;
    v7[4] = self;
    [UIView animateWithSpringDuration:0 bounce:v7 initialSpringVelocity:0 delay:0.18 options:0.0 animations:0.0 completion:0.13];
  }
}

uint64_t __50__UIStandardTextCursorView__performBulgeAnimation__block_invoke(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, 1.1, 1.1);
  v2 = *(a1 + 32);
  v4 = v5;
  return [v2 setTransform:&v4];
}

uint64_t __50__UIStandardTextCursorView__performBulgeAnimation__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  v4[0] = *MEMORY[0x1E695EFD0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x1E695EFD0] + 32);
  return [v1 setTransform:v4];
}

- (id)_dictationAnimation
{
  dictationAnimation = self->_dictationAnimation;
  if (!dictationAnimation)
  {
    v4 = [[_UITextCursorDictationAnimation alloc] initWithCursorShapeView:self->_cursorShapeView];
    v5 = self->_dictationAnimation;
    self->_dictationAnimation = v4;

    [(_UITextCursorDictationAnimation *)self->_dictationAnimation setCursorView:self];
    [(NSMutableSet *)self->_cursorAnimations addObject:self->_dictationAnimation];
    WeakRetained = objc_loadWeakRetained(&self->_audioLevelProvider);

    dictationAnimation = self->_dictationAnimation;
    if (WeakRetained)
    {
      v7 = objc_loadWeakRetained(&self->_audioLevelProvider);
      [(_UITextCursorDictationAnimation *)dictationAnimation setAudioLevelProvider:v7];

      dictationAnimation = self->_dictationAnimation;
    }
  }

  return dictationAnimation;
}

- (void)setGlowEffectEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  self->_glowEffectEnabled = enabled;
  _dictationAnimation = [(UIStandardTextCursorView *)self _dictationAnimation];
  [_dictationAnimation setEnabled:enabledCopy];

  if (!enabledCopy && self->_dictationAnimation)
  {
    [(NSMutableSet *)self->_cursorAnimations removeObject:?];
    dictationAnimation = self->_dictationAnimation;
    self->_dictationAnimation = 0;
  }
}

- (void)_setNeedsInitialDictationAnimation
{
  _dictationAnimation = [(UIStandardTextCursorView *)self _dictationAnimation];
  [_dictationAnimation setNeedsInitialDictationAnimation];
}

- (void)setAudioLevelProvider:(id)provider
{
  providerCopy = provider;
  objc_storeWeak(&self->_audioLevelProvider, providerCopy);
  _dictationAnimation = [(UIStandardTextCursorView *)self _dictationAnimation];
  [_dictationAnimation setAudioLevelProvider:providerCopy];
}

- (BOOL)_trackingFloatingCursorView
{
  WeakRetained = objc_loadWeakRetained(&self->_trackedFloatingCursorView);
  window = [WeakRetained window];
  v4 = window != 0;

  return v4;
}

- (UIView)originView
{
  if ([(UIStandardTextCursorView *)self _trackingFloatingCursorView])
  {
    WeakRetained = objc_loadWeakRetained(&self->_trackedFloatingCursorView);
  }

  else
  {
    WeakRetained = self;
  }

  return WeakRetained;
}

- ($59ECE587B56CBF78EA342F243490147C)originShape
{
  [(UIView *)self bounds];
  [(UIStandardTextCursorView *)self _cursorShapeRectForBounds:?];
  v6 = v5;
  v8 = v7;
  [(UIView *)self bounds];
  retstr->var0.x = v10 + v9 * 0.5;
  retstr->var0.y = v12 + v11 * 0.5;
  retstr->var1.origin = *MEMORY[0x1E695EFF8];
  retstr->var1.size.width = v6;
  retstr->var1.size.height = v8;
  retstr->var2 = v6 * 0.5;
  result = [(UIView *)self tintColor];
  retstr->var3 = result;
  return result;
}

- ($2BD9DB369DDD0E9E489A8699A184AD3B)originShadow
{
  retstr->var3.height = 0.0;
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  return self;
}

- (void)assertionActivationStateChangedToState:(BOOL)state forType:(unint64_t)type
{
  if (type == 231)
  {
    [(UIStandardTextCursorView *)self setBlinking:state];
  }
}

- (_UIStandardTextCursorViewAudioLevelProvider)audioLevelProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_audioLevelProvider);

  return WeakRetained;
}

@end