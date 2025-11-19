@interface _UISEVelocityDirectionEdgesGestureFeature
- (_UISEVelocityDirectionEdgesGestureFeature)initWithSettings:(id)a3 touchedEdgesProvider:(id)a4 exactMatchEdges:(BOOL)a5;
- (id)debugDictionary;
- (void)_incorporateSample:(const _UISEGestureFeatureSample *)a3;
@end

@implementation _UISEVelocityDirectionEdgesGestureFeature

- (_UISEVelocityDirectionEdgesGestureFeature)initWithSettings:(id)a3 touchedEdgesProvider:(id)a4 exactMatchEdges:(BOOL)a5
{
  v11.receiver = self;
  v11.super_class = _UISEVelocityDirectionEdgesGestureFeature;
  v8 = [(_UISEVelocityDirectionEdgesGestureFeature *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_touchedEdges = 0;
    objc_storeWeak(&v8->_provider, a4);
    objc_storeStrong(&v9->_settings, a3);
    v9->_exactMatchEdges = a5;
    v9->_initialLocation = vdupq_n_s64(0x7FF8000000000000uLL);
  }

  return v9;
}

- (void)_incorporateSample:(const _UISEGestureFeatureSample *)a3
{
  if (a3->var0 != 1)
  {
    if (!a3->var0)
    {
      self->_initialLocation = a3->var5;
    }

    return;
  }

  WeakRetained = objc_loadWeakRetained(&self->_provider);
  v6 = [WeakRetained touchedEdges];

  v7 = atan2(a3->var5.y - self->_initialLocation.y, a3->var5.x - self->_initialLocation.x);
  v8 = 0.0;
  if ((v6 - 1) <= 0xB)
  {
    v8 = dbl_18A67B970[v6 - 1];
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
    v13 = [(_UISEGestureFeatureSettings *)settings interfaceBottomEdge];
    v14 = self->_settings;
    if (v6 == v13)
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
    v17 = v6;
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

    v17 = v20 & v6;
  }

  exactMatchEdges = self->_exactMatchEdges;
  v22 = [(_UISEGestureFeatureSettings *)self->_settings targetEdges];
  if (exactMatchEdges)
  {
    if (v17 != v22)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v17 &= v22;
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
  v3 = [(_UISEGestureFeature *)&v7 debugDictionary];
  v4 = [v3 mutableCopy];

  v5 = _UIRectEdgeDescription(self->_touchedEdges);
  [v4 setObject:v5 forKeyedSubscript:@"touchedEdges"];

  return v4;
}

@end