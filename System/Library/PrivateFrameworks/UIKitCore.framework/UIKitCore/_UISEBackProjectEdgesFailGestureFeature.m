@interface _UISEBackProjectEdgesFailGestureFeature
- (_UISEBackProjectEdgesFailGestureFeature)initWithSettings:(id)a3;
- (id)debugDictionary;
- (void)_incorporateSample:(const _UISEGestureFeatureSample *)a3;
@end

@implementation _UISEBackProjectEdgesFailGestureFeature

- (_UISEBackProjectEdgesFailGestureFeature)initWithSettings:(id)a3
{
  v7.receiver = self;
  v7.super_class = _UISEBackProjectEdgesFailGestureFeature;
  v4 = [(_UISEBackProjectEdgesFailGestureFeature *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_touchedEdges = 0;
    objc_storeStrong(&v4->_settings, a3);
    v5->_hasDoneTest = 0;
    v5->_initialLocation = vdupq_n_s64(0x7FF8000000000000uLL);
    v5->_initialTimestamp = NAN;
  }

  return v5;
}

- (id)debugDictionary
{
  v7.receiver = self;
  v7.super_class = _UISEBackProjectEdgesFailGestureFeature;
  v3 = [(_UISEGestureFeature *)&v7 debugDictionary];
  v4 = [v3 mutableCopy];

  v5 = _UIRectEdgeDescription(self->_touchedEdges);
  [v4 setObject:v5 forKeyedSubscript:@"touchedEdges"];

  return v4;
}

- (void)_incorporateSample:(const _UISEGestureFeatureSample *)a3
{
  if (a3->var0 == 1)
  {
    if (!self->_hasDoneTest)
    {
      p_initialLocation = &self->_initialLocation;
      v6 = a3->var5.x - self->_initialLocation.x;
      v7 = a3->var5.y - self->_initialLocation.y;
      [(_UISEGestureFeatureSettings *)self->_settings maximumBackProjectTimeFactor];
      if (v8 > 1.0)
      {
        v9 = v8;
        v10 = a3->var6 - self->_initialTimestamp;
        [(_UISEGestureFeatureSettings *)self->_settings backProjectTime];
        v12 = v11 / v10;
        if (v12 < 1.0)
        {
          v12 = 1.0;
        }

        if (v12 >= v9)
        {
          v12 = v9;
        }

        v6 = v6 * v12;
        v7 = v7 * v12;
      }

      v13 = p_initialLocation->x - v6;
      v14 = self->_initialLocation.y - v7;
      v15 = [(_UISEGestureFeatureSettings *)self->_settings targetEdges];
      v16 = [(_UISEGestureFeatureSettings *)self->_settings interfaceBottomEdge];
      settings = self->_settings;
      if (v15 == v16)
      {
        [(_UISEGestureFeatureSettings *)settings bottomEdgeRegionSize];
      }

      else
      {
        [(_UISEGestureFeatureSettings *)settings edgeRegionSize];
      }

      v19 = v18;
      [(_UISEGestureFeatureSettings *)self->_settings bounds];
      v24 = UIRectEdgeRegionForLocation(v20, v21, v22, v23, v13, v14, v19);
      v25 = [(_UISEGestureFeatureSettings *)self->_settings targetEdges];
      self->_touchedEdges = v25 & v24;
      if ((v25 & v24) == 0)
      {
        [(_UISEGestureFeature *)self _setState:2];
      }

      self->_hasDoneTest = 1;
    }
  }

  else if (!a3->var0)
  {
    self->_initialLocation = a3->var5;
    self->_initialTimestamp = a3->var6;
  }
}

@end