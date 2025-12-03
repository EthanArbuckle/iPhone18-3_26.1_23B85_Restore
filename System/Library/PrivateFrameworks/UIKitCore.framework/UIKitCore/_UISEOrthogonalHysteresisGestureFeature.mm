@interface _UISEOrthogonalHysteresisGestureFeature
- (_UISEOrthogonalHysteresisGestureFeature)initWithSettings:(id)settings touchedEdgesProvider:(id)provider;
- (void)_incorporateSample:(const _UISEGestureFeatureSample *)sample;
@end

@implementation _UISEOrthogonalHysteresisGestureFeature

- (_UISEOrthogonalHysteresisGestureFeature)initWithSettings:(id)settings touchedEdgesProvider:(id)provider
{
  v9.receiver = self;
  v9.super_class = _UISEOrthogonalHysteresisGestureFeature;
  v6 = [(_UISEOrthogonalHysteresisGestureFeature *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settings, settings);
    objc_storeWeak(&v7->_provider, provider);
    v7->_initialLocation = vdupq_n_s64(0x7FF8000000000000uLL);
    v7->_initialTimestamp = NAN;
  }

  return v7;
}

- (void)_incorporateSample:(const _UISEGestureFeatureSample *)sample
{
  [(_UISEGestureFeatureSettings *)self->_settings hysteresis];
  if (sample->var0 != 1)
  {
    if (!sample->var0)
    {
      self->_initialLocation = sample->var5;
      self->_initialTimestamp = sample->var6;
    }

    return;
  }

  v6 = v5;
  if (v5 > 0.0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_provider);
    touchedEdges = [WeakRetained touchedEdges];

    if (((~touchedEdges & 3) == 0) | (2 * ((~touchedEdges & 9) == 0)) | (4 * ((~touchedEdges & 6) == 0)) | (8 * ((~touchedEdges & 0xC) == 0)))
    {
      v9 = vsubq_f64(self->_initialLocation, sample->var5);
      if (sqrt(vaddvq_f64(vmulq_f64(v9, v9))) <= v6)
      {
        [(_UISEGestureFeatureSettings *)self->_settings cornerAngleWindow];
        v11 = v10;
        v12 = 0.0;
LABEL_21:
        [(_UISEGestureFeatureSettings *)self->_settings hysteresis];
        v22 = fmin(v21, 10.0) / tan(v11 * -0.5 + 1.57079633);
        v23 = sample->var6 - self->_initialTimestamp;
        [(_UISEGestureFeatureSettings *)self->_settings edgeAngleWindowDecayTime];
        if (v12 <= fmax(v22 * (1.0 - v23 * (1.0 / v24)), 20.0))
        {
          return;
        }

        selfCopy2 = self;
        v17 = 2;
        goto LABEL_14;
      }
    }

    else
    {
      if ((touchedEdges & 0xA) != 0)
      {
        p_y = &self->_initialLocation.y;
        v14 = vabdd_f64(sample->var5.x, self->_initialLocation.x);
        p_var5 = &sample->var5.y;
      }

      else
      {
        p_var5 = &sample->var5;
        p_y = &self->_initialLocation;
        v14 = vabdd_f64(sample->var5.y, self->_initialLocation.y);
      }

      if (v14 <= v6)
      {
        v12 = vabdd_f64(p_var5->x, p_y->x);
        interfaceBottomEdge = [(_UISEGestureFeatureSettings *)self->_settings interfaceBottomEdge];
        settings = self->_settings;
        if (touchedEdges == interfaceBottomEdge)
        {
          [(_UISEGestureFeatureSettings *)settings bottomEdgeAngleWindow];
        }

        else
        {
          [(_UISEGestureFeatureSettings *)settings edgeAngleWindow];
        }

        v11 = v20;
        goto LABEL_21;
      }
    }
  }

  selfCopy2 = self;
  v17 = 1;
LABEL_14:

  [(_UISEGestureFeature *)selfCopy2 _setState:v17];
}

@end