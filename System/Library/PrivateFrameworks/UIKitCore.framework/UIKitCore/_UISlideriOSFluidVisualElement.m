@interface _UISlideriOSFluidVisualElement
- (BOOL)driver:(id)a3 shouldAdjustValueForProposedValue:(double)a4 adjustedValue:(double *)a5 startValue:(double *)a6 endValue:(double *)a7;
- (BOOL)driver:(id)a3 shouldBeginAtPoint:(CGPoint)a4;
- (CGRect)_modifiedTrackRect:(CGRect)a3;
- (_UISlideriOSFluidVisualElement)initWithFrame:(CGRect)a3;
- (id)_updatedConfigurationForTrackSize:(CGSize)a3;
- (void)_setValue:(float)a3 minimum:(float)a4 maximum:(float)a5 animated:(BOOL)a6;
- (void)_setupInteraction;
- (void)_updateConfigurationForFrameChange:(BOOL)a3;
- (void)_updateModelValue:(double)a3 sendAction:(BOOL)a4;
- (void)didSetEnabled;
- (void)didSetFluidTrackHidden;
- (void)didSetSpeedMultiplier;
- (void)didSetUserInteractionEnabled;
- (void)didSetValues;
- (void)setBounds:(CGRect)a3;
- (void)setChangeWithVolumeButtons:(BOOL)a3;
- (void)setFrame:(CGRect)a3;
- (void)setSlider:(id)a3;
- (void)setValue:(float)a3 animated:(BOOL)a4;
@end

@implementation _UISlideriOSFluidVisualElement

- (_UISlideriOSFluidVisualElement)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _UISlideriOSFluidVisualElement;
  result = [(_UISlideriOSVisualElement *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    v4 = MEMORY[0x1E695EFD0];
    v5 = *(MEMORY[0x1E695EFD0] + 16);
    *&result->_trackTransform.a = *MEMORY[0x1E695EFD0];
    *&result->_trackTransform.c = v5;
    *&result->_trackTransform.tx = *(v4 + 32);
  }

  return result;
}

- (void)setSlider:(id)a3
{
  v4 = a3;
  if (self->_fluidInteraction)
  {
    v5 = [(_UISlideriOSVisualElement *)self slider];
    [v5 removeInteraction:self->_fluidInteraction];

    fluidInteraction = self->_fluidInteraction;
    self->_fluidInteraction = 0;
  }

  v7.receiver = self;
  v7.super_class = _UISlideriOSFluidVisualElement;
  [(_UISlideriOSVisualElement *)&v7 setSlider:v4];
  if (v4)
  {
    [(_UISlideriOSFluidVisualElement *)self _setupInteraction];
  }
}

- (id)_updatedConfigurationForTrackSize:(CGSize)a3
{
  v4 = [_UIFluidSliderInteractionConfiguration configurationWithTrackSize:a3.width, a3.height];
  v5 = v4;
  if (self->_changeWithVolumeButtons)
  {
    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  [v4 setPreferredInputMethods:v6];
  v7 = [(_UISlideriOSVisualElement *)self data];
  [v7 sliderSpeedMultiplier];
  [v5 setVelocityMultiplier:v8];

  return v5;
}

- (void)_setupInteraction
{
  if (self->_fluidInteraction)
  {
    v3 = [(_UISlideriOSVisualElement *)self slider];
    [v3 removeInteraction:self->_fluidInteraction];

    fluidInteraction = self->_fluidInteraction;
    self->_fluidInteraction = 0;
  }

  v5 = [(_UISlideriOSVisualElement *)self slider];
  [(UIView *)self bounds];
  [v5 trackRectForBounds:?];
  v7 = v6;
  v9 = v8;

  v10 = [(_UISlideriOSFluidVisualElement *)self _updatedConfigurationForTrackSize:v7, v9];
  v11 = [_UIFluidSliderInteraction alloc];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __51___UISlideriOSFluidVisualElement__setupInteraction__block_invoke;
  v15[3] = &unk_1E7118F20;
  v15[4] = self;
  v12 = [(_UIFluidSliderInteraction *)v11 initWithConfiguration:v10 handler:v15];
  v13 = self->_fluidInteraction;
  self->_fluidInteraction = v12;

  [(_UIFluidSliderInteraction *)self->_fluidInteraction _setDirectDrivingDelegate:self];
  v14 = [(_UISlideriOSVisualElement *)self slider];
  [v14 addInteraction:self->_fluidInteraction];
}

- (CGRect)_modifiedTrackRect:(CGRect)a3
{
  v3 = self->_trackBounds.size.width - a3.size.width;
  v4 = self->_trackBounds.size.height - a3.size.height;
  v7.origin.x = a3.origin.x - v3 * 0.5;
  v7.size.width = a3.size.width + v3;
  v7.origin.y = a3.origin.y - v4 * 0.5;
  v7.size.height = a3.size.height + v4;
  v5 = *&self->_trackTransform.c;
  *&v6.a = *&self->_trackTransform.a;
  *&v6.c = v5;
  *&v6.tx = *&self->_trackTransform.tx;
  return CGRectApplyAffineTransform(v7, &v6);
}

- (void)_updateConfigurationForFrameChange:(BOOL)a3
{
  v5 = [(_UISlideriOSVisualElement *)self slider];
  [(UIView *)self bounds];
  [v5 trackRectForBounds:?];
  v7 = v6;
  v9 = v8;

  v10 = [(_UIFluidSliderInteraction *)self->_fluidInteraction configuration];
  [v10 trackSize];
  v12 = v11;
  v14 = v13;

  if (v7 != v12 || v9 != v14)
  {
    v16 = [(_UISlideriOSFluidVisualElement *)self _updatedConfigurationForTrackSize:v7, v9];
    v17 = v16;
    if (a3)
    {
      [(_UIFluidSliderInteraction *)self->_fluidInteraction setConfiguration:v16];
    }

    else
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __69___UISlideriOSFluidVisualElement__updateConfigurationForFrameChange___block_invoke;
      v18[3] = &unk_1E70F35B8;
      v18[4] = self;
      v19 = v16;
      [UIView performWithoutAnimation:v18];
    }
  }
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = _UISlideriOSFluidVisualElement;
  [(_UISlideriOSVisualElement *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(_UISlideriOSFluidVisualElement *)self _updateConfigurationForFrameChange:+[UIView _isInAnimationBlockWithAnimationsEnabled]];
}

- (void)setBounds:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = _UISlideriOSFluidVisualElement;
  [(_UISlideriOSVisualElement *)&v4 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(_UISlideriOSFluidVisualElement *)self _updateConfigurationForFrameChange:+[UIView _isInAnimationBlockWithAnimationsEnabled]];
}

- (void)setChangeWithVolumeButtons:(BOOL)a3
{
  if (self->_changeWithVolumeButtons != a3)
  {
    self->_changeWithVolumeButtons = a3;
    v4 = [(_UISlideriOSVisualElement *)self slider];
    if (v4)
    {
      fluidInteraction = self->_fluidInteraction;

      if (fluidInteraction)
      {

        [(_UISlideriOSFluidVisualElement *)self _setupInteraction];
      }
    }
  }
}

- (void)didSetEnabled
{
  v5.receiver = self;
  v5.super_class = _UISlideriOSFluidVisualElement;
  [(_UISlideriOSVisualElement *)&v5 didSetEnabled];
  v3 = [(_UISlideriOSVisualElement *)self data];
  if ([v3 isEnabled])
  {
    v4 = [(_UISlideriOSVisualElement *)self data];
    -[_UIFluidSliderInteraction setUserInteractionEnabled:](self->_fluidInteraction, "setUserInteractionEnabled:", [v4 isUserInteractionEnabled]);
  }

  else
  {
    [(_UIFluidSliderInteraction *)self->_fluidInteraction setUserInteractionEnabled:0];
  }
}

- (void)didSetUserInteractionEnabled
{
  v4 = [(_UISlideriOSVisualElement *)self data];
  if ([v4 isEnabled])
  {
    v3 = [(_UISlideriOSVisualElement *)self data];
    -[_UIFluidSliderInteraction setUserInteractionEnabled:](self->_fluidInteraction, "setUserInteractionEnabled:", [v3 isUserInteractionEnabled]);
  }

  else
  {
    [(_UIFluidSliderInteraction *)self->_fluidInteraction setUserInteractionEnabled:0];
  }
}

- (BOOL)driver:(id)a3 shouldBeginAtPoint:(CGPoint)a4
{
  x = a4.x;
  v6 = [(_UISlideriOSVisualElement *)self data:a3];
  v7 = [v6 isFluidTrackHidden];

  if (!v7)
  {
    return 1;
  }

  v8 = [(_UISlideriOSVisualElement *)self slider];
  [(UIView *)self bounds];
  [v8 trackRectForBounds:?];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v18.origin.x = v10;
  v18.origin.y = v12;
  v18.size.width = v14;
  v18.size.height = v16;
  if (x < CGRectGetMinX(v18))
  {
    return 1;
  }

  v19.origin.x = v10;
  v19.origin.y = v12;
  v19.size.width = v14;
  v19.size.height = v16;
  return x < CGRectGetMinX(v19);
}

- (BOOL)driver:(id)a3 shouldAdjustValueForProposedValue:(double)a4 adjustedValue:(double *)a5 startValue:(double *)a6 endValue:(double *)a7
{
  if (self && (*&self->super._sliderFlags & 8) != 0)
  {
    v12 = [(_UISlideriOSVisualElement *)self slider];
    v13 = [v12 _sliderConfiguration];

    v17 = 0;
    *&v14 = a4;
    v16 = 0.0;
    v7 = [v13 adjustPositionForTargetPosition:&v17 + 4 adjustedPosition:&v17 startPosition:&v16 endPosition:v14];
    if (v7)
    {
      if (a5)
      {
        *a5 = *(&v17 + 1);
      }

      if (a6)
      {
        *a6 = *&v17;
      }

      if (a7)
      {
        *a7 = v16;
      }
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)didSetFluidTrackHidden
{
  v3 = [(_UISlideriOSVisualElement *)self data];
  if (v3 && (v4 = v3, -[_UISlideriOSVisualElement data](self, "data"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isFluidTrackHidden], v5, v4, (v6 & 1) != 0))
  {
    v7 = 0;
    v8 = 0.0;
  }

  else
  {
    v8 = 1.0;
    v7 = 1;
  }

  v9 = [(_UISlideriOSVisualElement *)self _minTrackClipView];
  [v9 setAlpha:v8];

  v10 = [(_UISlideriOSVisualElement *)self _maxTrackClipView];
  [v10 setAlpha:v8];

  v11 = [(_UISlideriOSVisualElement *)self slider];
  if ([v11 _isThumbEnabled])
  {
    v12 = [(_UISlideriOSVisualElement *)self data];
    v13 = [v12 isMinimumTrackVisible];
  }

  else
  {
    v13 = 0;
  }

  if ((v7 & v13) != 0)
  {
    v14 = 1.0;
  }

  else
  {
    v14 = 0.0;
  }

  v15 = [(_UISlideriOSVisualElement *)self thumbView];
  [v15 setAlpha:v14];
}

- (void)didSetSpeedMultiplier
{
  v6 = [(_UIFluidSliderInteraction *)self->_fluidInteraction configuration];
  v3 = [(_UISlideriOSVisualElement *)self data];
  [v3 sliderSpeedMultiplier];
  v5 = [v6 copyWithVelocityMultiplier:v4];
  [(_UIFluidSliderInteraction *)self->_fluidInteraction setConfiguration:v5];
}

- (void)_setValue:(float)a3 minimum:(float)a4 maximum:(float)a5 animated:(BOOL)a6
{
  v8 = ((a3 - a4) / (a5 - a4));
  if (a6)
  {
    fluidInteraction = self->_fluidInteraction;

    [(_UIFluidSliderInteraction *)fluidInteraction setValue:v8];
  }

  else
  {
    v10[6] = v6;
    v10[7] = v7;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __69___UISlideriOSFluidVisualElement__setValue_minimum_maximum_animated___block_invoke;
    v10[3] = &unk_1E70F32F0;
    v10[4] = self;
    *&v10[5] = v8;
    [UIView performWithoutAnimation:v10];
  }
}

- (void)_updateModelValue:(double)a3 sendAction:(BOOL)a4
{
  v4 = a4;
  v7 = [(_UISlideriOSVisualElement *)self data];
  [v7 minimumValue];
  v9 = v8;

  v10 = [(_UISlideriOSVisualElement *)self data];
  [v10 maximumValue];
  v12 = v11 - v9;

  v13 = v12 * a3 + v9;
  v14 = [(_UISlideriOSVisualElement *)self data];
  [v14 value];
  v16 = v15;

  if (v16 != v13)
  {
    v17 = [(_UISlideriOSVisualElement *)self data];
    *&v18 = v13;
    [v17 setValue:v18];

    if ((self->_fluidUpdateSource & 7) != 0)
    {
      [(_UISlideriOSVisualElement *)self _bounceMinMaxValueImageViewsIfNeeded];
    }

    if (v4)
    {
      v19 = [(_UISlideriOSVisualElement *)self slider];
      [v19 sendActionsForControlEvents:4096];
    }
  }
}

- (void)setValue:(float)a3 animated:(BOOL)a4
{
  v4 = a4;
  v14 = [(_UISlideriOSVisualElement *)self data];
  [v14 minimumValue];
  v8 = v7;
  v9 = [(_UISlideriOSVisualElement *)self data];
  [v9 maximumValue];
  LODWORD(v11) = v10;
  *&v12 = a3;
  LODWORD(v13) = v8;
  [(_UISlideriOSFluidVisualElement *)self _setValue:v4 minimum:v12 maximum:v13 animated:v11];
}

- (void)didSetValues
{
  v13 = [(_UISlideriOSVisualElement *)self data];
  [v13 value];
  v4 = v3;
  v5 = [(_UISlideriOSVisualElement *)self data];
  [v5 value];
  v7 = v6;
  v8 = [(_UISlideriOSVisualElement *)self data];
  [v8 value];
  LODWORD(v10) = v9;
  LODWORD(v11) = v4;
  LODWORD(v12) = v7;
  [(_UISlideriOSFluidVisualElement *)self _setValue:0 minimum:v11 maximum:v12 animated:v10];
}

@end