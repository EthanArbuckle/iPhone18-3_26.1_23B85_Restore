@interface _UIPointerEffectTintView
- (_UIPointerEffectTintView)initWithTintColorMatrixProvider:(id)provider;
- (void)_updateAlpha;
- (void)_updateBackgroundEffects;
- (void)backgroundLumaView:(id)view didTransitionToLevel:(unint64_t)level;
- (void)setDisabled:(BOOL)disabled;
- (void)setPressed:(BOOL)pressed;
@end

@implementation _UIPointerEffectTintView

- (_UIPointerEffectTintView)initWithTintColorMatrixProvider:(id)provider
{
  providerCopy = provider;
  v10.receiver = self;
  v10.super_class = _UIPointerEffectTintView;
  v5 = [(UIVisualEffectView *)&v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v5)
  {
    v6 = [providerCopy copy];
    tintColorMatrixProvider = v5->_tintColorMatrixProvider;
    v5->_tintColorMatrixProvider = v6;

    [(_UIPointerEffectTintView *)v5 _updateBackgroundEffects];
    [(_UIPointerEffectTintView *)v5 _updateAlpha];
    [(UIView *)v5 setUserInteractionEnabled:0];
    layer = [(UIView *)v5 layer];
    [layer setAllowsHitTesting:0];
  }

  return v5;
}

- (void)_updateAlpha
{
  isDisabled = [(_UIPointerEffectTintView *)self isDisabled];
  v4 = 0.0;
  if (!isDisabled)
  {
    [(_UIPointerEffectTintView *)self isPressed];
    PSContentOverlayIntensityForLuminanceAndUsage();
  }

  [(UIView *)self setAlpha:v4];
}

- (void)_updateBackgroundEffects
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = (*(self->_tintColorMatrixProvider + 2))();
  v4 = v3;
  if (v3)
  {
    [v3 CAColorMatrixValue];
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  v5 = [UIColorEffect _colorEffectCAMatrix:v7];
  v8[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [(UIVisualEffectView *)self setBackgroundEffects:v6];
}

- (void)setDisabled:(BOOL)disabled
{
  if (self->_disabled != disabled)
  {
    self->_disabled = disabled;
    [(_UIPointerEffectTintView *)self _updateAlpha];
  }
}

- (void)setPressed:(BOOL)pressed
{
  if (self->_pressed != pressed)
  {
    self->_pressed = pressed;
    [(_UIPointerEffectTintView *)self _updateAlpha];
  }
}

- (void)backgroundLumaView:(id)view didTransitionToLevel:(unint64_t)level
{
  self->_luminance = level;
  [(_UIPointerEffectTintView *)self _updateBackgroundEffects];

  [(_UIPointerEffectTintView *)self _updateAlpha];
}

@end