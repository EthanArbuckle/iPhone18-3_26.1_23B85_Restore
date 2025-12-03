@interface _UISEInitialEdgesFailGestureFeature
- (_UISEInitialEdgesFailGestureFeature)initWithSettings:(id)settings useEdgeRegionSize:(BOOL)size;
- (void)_incorporateSample:(const _UISEGestureFeatureSample *)sample;
@end

@implementation _UISEInitialEdgesFailGestureFeature

- (_UISEInitialEdgesFailGestureFeature)initWithSettings:(id)settings useEdgeRegionSize:(BOOL)size
{
  v9.receiver = self;
  v9.super_class = _UISEInitialEdgesFailGestureFeature;
  v6 = [(_UISEInitialEdgesFailGestureFeature *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settings, settings);
    v7->_useEdgeRegionSize = size;
  }

  return v7;
}

- (void)_incorporateSample:(const _UISEGestureFeatureSample *)sample
{
  useEdgeRegionSize = self->_useEdgeRegionSize;
  settings = self->_settings;
  if (useEdgeRegionSize)
  {
    [(_UISEGestureFeatureSettings *)settings edgeRegionSize];
    v8 = v7 + 20.0;
  }

  else
  {
    [(_UISEGestureFeatureSettings *)settings bounds];
    v9 = CGRectGetWidth(v17) * 0.5;
    [(_UISEGestureFeatureSettings *)self->_settings bounds];
    v10 = CGRectGetHeight(v18) * 0.5;
    if (v9 >= v10)
    {
      v8 = v10;
    }

    else
    {
      v8 = v9;
    }
  }

  if (!sample->var0)
  {
    [(_UISEGestureFeatureSettings *)self->_settings bounds];
    v15 = UIRectEdgeRegionForLocation(v11, v12, v13, v14, sample->var5.x, sample->var5.y, v8);
    if (([(_UISEGestureFeatureSettings *)self->_settings targetEdges]& v15) == 0)
    {

      [(_UISEGestureFeature *)self _setState:2];
    }
  }
}

@end