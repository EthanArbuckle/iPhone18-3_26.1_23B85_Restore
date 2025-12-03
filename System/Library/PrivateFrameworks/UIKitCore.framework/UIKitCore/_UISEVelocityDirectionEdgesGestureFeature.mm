@interface _UISEVelocityDirectionEdgesGestureFeature
- (_UISEVelocityDirectionEdgesGestureFeature)initWithSettings:(id)settings touchedEdgesProvider:(id)provider exactMatchEdges:(BOOL)edges;
- (id)debugDictionary;
- (void)_incorporateSample:(const _UISEGestureFeatureSample *)sample;
@end

@implementation _UISEVelocityDirectionEdgesGestureFeature

- (_UISEVelocityDirectionEdgesGestureFeature)initWithSettings:(id)settings touchedEdgesProvider:(id)provider exactMatchEdges:(BOOL)edges
{
  v11.receiver = self;
  v11.super_class = _UISEVelocityDirectionEdgesGestureFeature;
  v8 = [(_UISEVelocityDirectionEdgesGestureFeature *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_touchedEdges = 0;
    objc_storeWeak(&v8->_provider, provider);
    objc_storeStrong(&v9->_settings, settings);
    v9->_exactMatchEdges = edges;
    v9->_initialLocation = vdupq_n_s64(0x7FF8000000000000uLL);
  }

  return v9;
}

- (void)_incorporateSample:(const _UISEGestureFeatureSample *)sample
{
  if (sample->var0 != 1)
  {
    if (!sample->var0)
    {
      self->_initialLocation = sample->var5;
    }

    return;
  }

  WeakRetained = objc_loadWeakRetained(&self->_provider);
  touchedEdges = [WeakRetained touchedEdges];

  v7 = atan2(sample->var5.y - self->_initialLocation.y, sample->var5.x - self->_initialLocation.x);
  v8 = 0.0;
  if ((touchedEdges - 1) <= 0xB)
  {
    v8 = dbl_18A67B970[touchedEdges - 1];
  }

  v9 = ~LODWORD(self->_touchedEdges);
  v10 = ((v9 & 3) == 0) | (2 * ((v9 & 9) == 0)) | (4 * ((v9 & 6) == 0)) | (8 * ((v9 & 0xC) == 0));
  settings = self->_settings;
  if (v10)
  {
    [(_UISEGestureFeatureSettings *)settings cornerAngleWindow];
  }

  else
  {
    interfaceBottomEdge = [(_UISEGestureFeatureSettings *)settings interfaceBottomEdge];
    v14 = self->_settings;
    if (touchedEdges == interfaceBottomEdge)
    {
      [(_UISEGestureFeatureSettings *)v14 bottomEdgeAngleWindow];
    }

    else
    {
      [(_UISEGestureFeatureSettings *)v14 edgeAngleWindow];
    }
  }

  v15 = v12;
  v16 = fabs(remainder(v7 - v8, 6.28318531));
  if (v16 >= v15 * 0.5)
  {
    v17 = 0;
  }

  else
  {
    v17 = touchedEdges;
  }

  if (v10)
  {
    v18 = v16 < v15 * 0.5;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    if ((v7 / 1.57079633) <= 0)
    {
      v19 = -(-(v7 / 1.57079633) & 3);
    }

    else
    {
      v19 = (v7 / 1.57079633) & 3;
    }

    if (v19 > 3)
    {
      v20 = 0;
    }

    else
    {
      v20 = qword_18A67B9D0[v19];
    }

    v17 = v20 & touchedEdges;
  }

  exactMatchEdges = self->_exactMatchEdges;
  targetEdges = [(_UISEGestureFeatureSettings *)self->_settings targetEdges];
  if (exactMatchEdges)
  {
    if (v17 != targetEdges)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v17 &= targetEdges;
  if (v17)
  {
LABEL_30:
    self->_touchedEdges = v17;
  }

LABEL_31:
  if (self->_touchedEdges)
  {
    v23 = 1;
  }

  else
  {
    v23 = 2;
  }

  [(_UISEGestureFeature *)self _setState:v23];
}

- (id)debugDictionary
{
  v7.receiver = self;
  v7.super_class = _UISEVelocityDirectionEdgesGestureFeature;
  debugDictionary = [(_UISEGestureFeature *)&v7 debugDictionary];
  v4 = [debugDictionary mutableCopy];

  v5 = _UIRectEdgeDescription(self->_touchedEdges);
  [v4 setObject:v5 forKeyedSubscript:@"touchedEdges"];

  return v4;
}

@end