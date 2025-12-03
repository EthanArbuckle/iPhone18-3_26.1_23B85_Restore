@interface _UISlideriOSFluidVisualElement
- (BOOL)driver:(id)driver shouldAdjustValueForProposedValue:(double)value adjustedValue:(double *)adjustedValue startValue:(double *)startValue endValue:(double *)endValue;
- (BOOL)driver:(id)driver shouldBeginAtPoint:(CGPoint)point;
- (CGRect)_modifiedTrackRect:(CGRect)rect;
- (_UISlideriOSFluidVisualElement)initWithFrame:(CGRect)frame;
- (id)_updatedConfigurationForTrackSize:(CGSize)size;
- (void)_setValue:(float)value minimum:(float)minimum maximum:(float)maximum animated:(BOOL)animated;
- (void)_setupInteraction;
- (void)_updateConfigurationForFrameChange:(BOOL)change;
- (void)_updateModelValue:(double)value sendAction:(BOOL)action;
- (void)didSetEnabled;
- (void)didSetFluidTrackHidden;
- (void)didSetSpeedMultiplier;
- (void)didSetUserInteractionEnabled;
- (void)didSetValues;
- (void)setBounds:(CGRect)bounds;
- (void)setChangeWithVolumeButtons:(BOOL)buttons;
- (void)setFrame:(CGRect)frame;
- (void)setSlider:(id)slider;
- (void)setValue:(float)value animated:(BOOL)animated;
@end

@implementation _UISlideriOSFluidVisualElement

- (_UISlideriOSFluidVisualElement)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _UISlideriOSFluidVisualElement;
  result = [(_UISlideriOSVisualElement *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)setSlider:(id)slider
{
  sliderCopy = slider;
  if (self->_fluidInteraction)
  {
    slider = [(_UISlideriOSVisualElement *)self slider];
    [slider removeInteraction:self->_fluidInteraction];

    fluidInteraction = self->_fluidInteraction;
    self->_fluidInteraction = 0;
  }

  v7.receiver = self;
  v7.super_class = _UISlideriOSFluidVisualElement;
  [(_UISlideriOSVisualElement *)&v7 setSlider:sliderCopy];
  if (sliderCopy)
  {
    [(_UISlideriOSFluidVisualElement *)self _setupInteraction];
  }
}

- (id)_updatedConfigurationForTrackSize:(CGSize)size
{
  v4 = [_UIFluidSliderInteractionConfiguration configurationWithTrackSize:size.width, size.height];
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
  data = [(_UISlideriOSVisualElement *)self data];
  [data sliderSpeedMultiplier];
  [v5 setVelocityMultiplier:v8];

  return v5;
}

- (void)_setupInteraction
{
  if (self->_fluidInteraction)
  {
    slider = [(_UISlideriOSVisualElement *)self slider];
    [slider removeInteraction:self->_fluidInteraction];

    fluidInteraction = self->_fluidInteraction;
    self->_fluidInteraction = 0;
  }

  slider2 = [(_UISlideriOSVisualElement *)self slider];
  [(UIView *)self bounds];
  [slider2 trackRectForBounds:?];
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
  slider3 = [(_UISlideriOSVisualElement *)self slider];
  [slider3 addInteraction:self->_fluidInteraction];
}

- (CGRect)_modifiedTrackRect:(CGRect)rect
{
  v3 = self->_trackBounds.size.width - rect.size.width;
  v4 = self->_trackBounds.size.height - rect.size.height;
  v7.origin.x = rect.origin.x - v3 * 0.5;
  v7.size.width = rect.size.width + v3;
  v7.origin.y = rect.origin.y - v4 * 0.5;
  v7.size.height = rect.size.height + v4;
  v5 = *&self->_trackTransform.c;
  *&v6.a = *&self->_trackTransform.a;
  *&v6.c = v5;
  *&v6.tx = *&self->_trackTransform.tx;
  return CGRectApplyAffineTransform(v7, &v6);
}

- (void)_updateConfigurationForFrameChange:(BOOL)change
{
  slider = [(_UISlideriOSVisualElement *)self slider];
  [(UIView *)self bounds];
  [slider trackRectForBounds:?];
  v7 = v6;
  v9 = v8;

  configuration = [(_UIFluidSliderInteraction *)self->_fluidInteraction configuration];
  [configuration trackSize];
  v12 = v11;
  v14 = v13;

  if (v7 != v12 || v9 != v14)
  {
    v16 = [(_UISlideriOSFluidVisualElement *)self _updatedConfigurationForTrackSize:v7, v9];
    v17 = v16;
    if (change)
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

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = _UISlideriOSFluidVisualElement;
  [(_UISlideriOSVisualElement *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(_UISlideriOSFluidVisualElement *)self _updateConfigurationForFrameChange:+[UIView _isInAnimationBlockWithAnimationsEnabled]];
}

- (void)setBounds:(CGRect)bounds
{
  v4.receiver = self;
  v4.super_class = _UISlideriOSFluidVisualElement;
  [(_UISlideriOSVisualElement *)&v4 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  [(_UISlideriOSFluidVisualElement *)self _updateConfigurationForFrameChange:+[UIView _isInAnimationBlockWithAnimationsEnabled]];
}

- (void)setChangeWithVolumeButtons:(BOOL)buttons
{
  if (self->_changeWithVolumeButtons != buttons)
  {
    self->_changeWithVolumeButtons = buttons;
    slider = [(_UISlideriOSVisualElement *)self slider];
    if (slider)
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
  data = [(_UISlideriOSVisualElement *)self data];
  if ([data isEnabled])
  {
    data2 = [(_UISlideriOSVisualElement *)self data];
    -[_UIFluidSliderInteraction setUserInteractionEnabled:](self->_fluidInteraction, "setUserInteractionEnabled:", [data2 isUserInteractionEnabled]);
  }

  else
  {
    [(_UIFluidSliderInteraction *)self->_fluidInteraction setUserInteractionEnabled:0];
  }
}

- (void)didSetUserInteractionEnabled
{
  data = [(_UISlideriOSVisualElement *)self data];
  if ([data isEnabled])
  {
    data2 = [(_UISlideriOSVisualElement *)self data];
    -[_UIFluidSliderInteraction setUserInteractionEnabled:](self->_fluidInteraction, "setUserInteractionEnabled:", [data2 isUserInteractionEnabled]);
  }

  else
  {
    [(_UIFluidSliderInteraction *)self->_fluidInteraction setUserInteractionEnabled:0];
  }
}

- (BOOL)driver:(id)driver shouldBeginAtPoint:(CGPoint)point
{
  x = point.x;
  v6 = [(_UISlideriOSVisualElement *)self data:driver];
  isFluidTrackHidden = [v6 isFluidTrackHidden];

  if (!isFluidTrackHidden)
  {
    return 1;
  }

  slider = [(_UISlideriOSVisualElement *)self slider];
  [(UIView *)self bounds];
  [slider trackRectForBounds:?];
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

- (BOOL)driver:(id)driver shouldAdjustValueForProposedValue:(double)value adjustedValue:(double *)adjustedValue startValue:(double *)startValue endValue:(double *)endValue
{
  if (self && (*&self->super._sliderFlags & 8) != 0)
  {
    slider = [(_UISlideriOSVisualElement *)self slider];
    _sliderConfiguration = [slider _sliderConfiguration];

    v17 = 0;
    *&v14 = value;
    v16 = 0.0;
    v7 = [_sliderConfiguration adjustPositionForTargetPosition:&v17 + 4 adjustedPosition:&v17 startPosition:&v16 endPosition:v14];
    if (v7)
    {
      if (adjustedValue)
      {
        *adjustedValue = *(&v17 + 1);
      }

      if (startValue)
      {
        *startValue = *&v17;
      }

      if (endValue)
      {
        *endValue = v16;
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
  data = [(_UISlideriOSVisualElement *)self data];
  if (data && (v4 = data, -[_UISlideriOSVisualElement data](self, "data"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isFluidTrackHidden], v5, v4, (v6 & 1) != 0))
  {
    v7 = 0;
    v8 = 0.0;
  }

  else
  {
    v8 = 1.0;
    v7 = 1;
  }

  _minTrackClipView = [(_UISlideriOSVisualElement *)self _minTrackClipView];
  [_minTrackClipView setAlpha:v8];

  _maxTrackClipView = [(_UISlideriOSVisualElement *)self _maxTrackClipView];
  [_maxTrackClipView setAlpha:v8];

  slider = [(_UISlideriOSVisualElement *)self slider];
  if ([slider _isThumbEnabled])
  {
    data2 = [(_UISlideriOSVisualElement *)self data];
    isMinimumTrackVisible = [data2 isMinimumTrackVisible];
  }

  else
  {
    isMinimumTrackVisible = 0;
  }

  if ((v7 & isMinimumTrackVisible) != 0)
  {
    v14 = 1.0;
  }

  else
  {
    v14 = 0.0;
  }

  thumbView = [(_UISlideriOSVisualElement *)self thumbView];
  [thumbView setAlpha:v14];
}

- (void)didSetSpeedMultiplier
{
  configuration = [(_UIFluidSliderInteraction *)self->_fluidInteraction configuration];
  data = [(_UISlideriOSVisualElement *)self data];
  [data sliderSpeedMultiplier];
  v5 = [configuration copyWithVelocityMultiplier:v4];
  [(_UIFluidSliderInteraction *)self->_fluidInteraction setConfiguration:v5];
}

- (void)_setValue:(float)value minimum:(float)minimum maximum:(float)maximum animated:(BOOL)animated
{
  v8 = ((value - minimum) / (maximum - minimum));
  if (animated)
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

- (void)_updateModelValue:(double)value sendAction:(BOOL)action
{
  actionCopy = action;
  data = [(_UISlideriOSVisualElement *)self data];
  [data minimumValue];
  v9 = v8;

  data2 = [(_UISlideriOSVisualElement *)self data];
  [data2 maximumValue];
  v12 = v11 - v9;

  v13 = v12 * value + v9;
  data3 = [(_UISlideriOSVisualElement *)self data];
  [data3 value];
  v16 = v15;

  if (v16 != v13)
  {
    data4 = [(_UISlideriOSVisualElement *)self data];
    *&v18 = v13;
    [data4 setValue:v18];

    if ((self->_fluidUpdateSource & 7) != 0)
    {
      [(_UISlideriOSVisualElement *)self _bounceMinMaxValueImageViewsIfNeeded];
    }

    if (actionCopy)
    {
      slider = [(_UISlideriOSVisualElement *)self slider];
      [slider sendActionsForControlEvents:4096];
    }
  }
}

- (void)setValue:(float)value animated:(BOOL)animated
{
  animatedCopy = animated;
  data = [(_UISlideriOSVisualElement *)self data];
  [data minimumValue];
  v8 = v7;
  data2 = [(_UISlideriOSVisualElement *)self data];
  [data2 maximumValue];
  LODWORD(v11) = v10;
  *&v12 = value;
  LODWORD(v13) = v8;
  [(_UISlideriOSFluidVisualElement *)self _setValue:animatedCopy minimum:v12 maximum:v13 animated:v11];
}

- (void)didSetValues
{
  data = [(_UISlideriOSVisualElement *)self data];
  [data value];
  v4 = v3;
  data2 = [(_UISlideriOSVisualElement *)self data];
  [data2 value];
  v7 = v6;
  data3 = [(_UISlideriOSVisualElement *)self data];
  [data3 value];
  LODWORD(v10) = v9;
  LODWORD(v11) = v4;
  LODWORD(v12) = v7;
  [(_UISlideriOSFluidVisualElement *)self _setValue:0 minimum:v11 maximum:v12 animated:v10];
}

@end