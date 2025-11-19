@interface _UIPointerEffectTintView
- (_UIPointerEffectTintView)initWithTintColorMatrixProvider:(id)a3;
- (void)_updateAlpha;
- (void)_updateBackgroundEffects;
- (void)backgroundLumaView:(id)a3 didTransitionToLevel:(unint64_t)a4;
- (void)setDisabled:(BOOL)a3;
- (void)setPressed:(BOOL)a3;
@end

@implementation _UIPointerEffectTintView

- (_UIPointerEffectTintView)initWithTintColorMatrixProvider:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _UIPointerEffectTintView;
  v5 = [(UIVisualEffectView *)&v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v5)
  {
    v6 = [v4 copy];
    tintColorMatrixProvider = v5->_tintColorMatrixProvider;
    v5->_tintColorMatrixProvider = v6;

    [(_UIPointerEffectTintView *)v5 _updateBackgroundEffects];
    [(_UIPointerEffectTintView *)v5 _updateAlpha];
    [(UIView *)v5 setUserInteractionEnabled:0];
    v8 = [(UIView *)v5 layer];
    [v8 setAllowsHitTesting:0];
  }

  return v5;
}

- (void)_updateAlpha
{
  v3 = [(_UIPointerEffectTintView *)self isDisabled];
  v4 = 0.0;
  if (!v3)
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

- (void)setDisabled:(BOOL)a3
{
  if (self->_disabled != a3)
  {
    self->_disabled = a3;
    [(_UIPointerEffectTintView *)self _updateAlpha];
  }
}

- (void)setPressed:(BOOL)a3
{
  if (self->_pressed != a3)
  {
    self->_pressed = a3;
    [(_UIPointerEffectTintView *)self _updateAlpha];
  }
}

- (void)backgroundLumaView:(id)a3 didTransitionToLevel:(unint64_t)a4
{
  self->_luminance = a4;
  [(_UIPointerEffectTintView *)self _updateBackgroundEffects];

  [(_UIPointerEffectTintView *)self _updateAlpha];
}

@end