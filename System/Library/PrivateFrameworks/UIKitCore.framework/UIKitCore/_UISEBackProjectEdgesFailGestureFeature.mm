@interface _UISEBackProjectEdgesFailGestureFeature
- (_UISEBackProjectEdgesFailGestureFeature)initWithSettings:(id)settings;
- (id)debugDictionary;
- (void)_incorporateSample:(const _UISEGestureFeatureSample *)sample;
@end

@implementation _UISEBackProjectEdgesFailGestureFeature

- (_UISEBackProjectEdgesFailGestureFeature)initWithSettings:(id)settings
{
  v7.receiver = self;
  v7.super_class = _UISEBackProjectEdgesFailGestureFeature;
  v4 = [(_UISEBackProjectEdgesFailGestureFeature *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_touchedEdges = 0;
    objc_storeStrong(&v4->_settings, settings);
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
  debugDictionary = [(_UISEGestureFeature *)&v7 debugDictionary];
  v4 = [debugDictionary mutableCopy];

  v5 = _UIRectEdgeDescription(self->_touchedEdges);
  [v4 setObject:v5 forKeyedSubscript:@"touchedEdges"];

  return v4;
}

- (void)_incorporateSample:(const _UISEGestureFeatureSample *)sample
{
  if (sample->var0 == 1)
  {
    if (!self->_hasDoneTest)
    {
      p_initialLocation = &self->_initialLocation;
      v6 = sample->var5.x - self->_initialLocation.x;
      v7 = sample->var5.y - self->_initialLocation.y;
      [(_UISEGestureFeatureSettings *)self->_settings maximumBackProjectTimeFactor];
      if (v8 > 1.0)
      {
        v9 = v8;
        v10 = sample->var6 - self->_initialTimestamp;
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
      targetEdges = [(_UISEGestureFeatureSettings *)self->_settings targetEdges];
      interfaceBottomEdge = [(_UISEGestureFeatureSettings *)self->_settings interfaceBottomEdge];
      settings = self->_settings;
      if (targetEdges == interfaceBottomEdge)
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
      targetEdges2 = [(_UISEGestureFeatureSettings *)self->_settings targetEdges];
      self->_touchedEdges = targetEdges2 & v24;
      if ((targetEdges2 & v24) == 0)
      {
        [(_UISEGestureFeature *)self _setState:2];
      }

      self->_hasDoneTest = 1;
    }
  }

  else if (!sample->var0)
  {
    self->_initialLocation = sample->var5;
    self->_initialTimestamp = sample->var6;
  }
}

@end