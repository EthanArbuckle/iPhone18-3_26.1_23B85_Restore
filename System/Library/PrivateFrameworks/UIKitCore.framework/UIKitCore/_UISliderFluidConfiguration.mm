@interface _UISliderFluidConfiguration
- (BOOL)isEqual:(id)equal;
- (UIBlurEffect)maximumTrackBlurEffect;
- (UIBlurEffect)minimumTrackBlurEffect;
- (_UISliderFluidConfiguration)init;
- (_UISliderFluidInteractionDelegate)delegate;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_setMaximumTrackBlurEffect:(id)effect;
- (void)_setMinimumTrackBlurEffect:(id)effect;
@end

@implementation _UISliderFluidConfiguration

- (_UISliderFluidConfiguration)init
{
  v3.receiver = self;
  v3.super_class = _UISliderFluidConfiguration;
  result = [(_UISliderFluidConfiguration *)&v3 init];
  if (result)
  {
    *&result->_expansionFactor = xmmword_18A679B20;
    result->_stretchLimit = -1.0;
  }

  return result;
}

- (_UISliderFluidInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  objc_storeWeak(v5 + 2, WeakRetained);

  v5[3] = *&self->_expansionFactor;
  v5[4] = *&self->_horizontalExpansionFactor;
  v5[5] = *&self->_stretchLimit;
  objc_storeStrong(v5 + 6, self->_minimumValueView);
  objc_storeStrong(v5 + 7, self->_maximumValueView);
  v7 = [(UIVisualEffect *)self->_minimumTrackEffect copyWithZone:zone];
  v8 = v5[8];
  v5[8] = v7;

  v9 = [(UIVisualEffect *)self->_maximumTrackEffect copyWithZone:zone];
  v10 = v5[9];
  v5[9] = v9;

  *(v5 + 8) = self->_disableAllSliderVisuals;
  *(v5 + 9) = self->_disableSliderRubberbandTransform;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = _UISliderFluidConfiguration;
    if ([(_UISliderFluidConfiguration *)&v10 isEqual:equalCopy])
    {
      v5 = equalCopy;
      WeakRetained = objc_loadWeakRetained(&v5->_delegate);
      v7 = objc_loadWeakRetained(&self->_delegate);
      v8 = WeakRetained == v7 && vabdd_f64(v5->_expansionFactor, self->_expansionFactor) <= 2.22044605e-16 && vabdd_f64(v5->_horizontalExpansionFactor, self->_horizontalExpansionFactor) <= 2.22044605e-16 && vabdd_f64(v5->_stretchLimit, self->_stretchLimit) <= 2.22044605e-16 && v5->_minimumValueView == self->_minimumValueView && v5->_maximumValueView == self->_maximumValueView && [(UIVisualEffect *)v5->_minimumTrackEffect isEqual:self->_minimumTrackEffect]&& [(UIVisualEffect *)v5->_maximumTrackEffect isEqual:self->_maximumTrackEffect]&& v5->_disableAllSliderVisuals == self->_disableAllSliderVisuals && v5->_disableSliderRubberbandTransform == self->_disableSliderRubberbandTransform;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)_setMinimumTrackBlurEffect:(id)effect
{
  effectCopy = effect;
  maximumTrackEffect = self->_maximumTrackEffect;
  p_maximumTrackEffect = &self->_maximumTrackEffect;
  if (maximumTrackEffect != effectCopy)
  {
    v8 = effectCopy;
    objc_storeStrong(p_maximumTrackEffect, effect);
    effectCopy = v8;
  }
}

- (UIBlurEffect)minimumTrackBlurEffect
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self->_maximumTrackEffect;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setMaximumTrackBlurEffect:(id)effect
{
  effectCopy = effect;
  minimumTrackEffect = self->_minimumTrackEffect;
  p_minimumTrackEffect = &self->_minimumTrackEffect;
  if (minimumTrackEffect != effectCopy)
  {
    v8 = effectCopy;
    objc_storeStrong(p_minimumTrackEffect, effect);
    effectCopy = v8;
  }
}

- (UIBlurEffect)maximumTrackBlurEffect
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self->_minimumTrackEffect;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end