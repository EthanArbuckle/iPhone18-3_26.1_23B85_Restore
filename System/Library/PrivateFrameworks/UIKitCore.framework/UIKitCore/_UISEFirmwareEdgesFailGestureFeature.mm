@interface _UISEFirmwareEdgesFailGestureFeature
- (_UISEFirmwareEdgesFailGestureFeature)initWithSettings:(id)settings;
- (id)debugDictionary;
- (void)_incorporateSample:(const _UISEGestureFeatureSample *)sample;
@end

@implementation _UISEFirmwareEdgesFailGestureFeature

- (_UISEFirmwareEdgesFailGestureFeature)initWithSettings:(id)settings
{
  v7.receiver = self;
  v7.super_class = _UISEFirmwareEdgesFailGestureFeature;
  v4 = [(_UISEFirmwareEdgesFailGestureFeature *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_touchedEdges = 0;
    objc_storeStrong(&v4->_settings, settings);
    v5->_hasDoneTest = 0;
  }

  return v5;
}

- (id)debugDictionary
{
  v7.receiver = self;
  v7.super_class = _UISEFirmwareEdgesFailGestureFeature;
  debugDictionary = [(_UISEGestureFeature *)&v7 debugDictionary];
  v4 = [debugDictionary mutableCopy];

  v5 = _UIRectEdgeDescription(self->_touchedEdges);
  [v4 setObject:v5 forKeyedSubscript:@"touchedEdges"];

  return v4;
}

- (void)_incorporateSample:(const _UISEGestureFeatureSample *)sample
{
  if (sample->var0 == 1 && !self->_hasDoneTest && sample->var3 == 4)
  {
    v4 = (sample->var1 >> 1) & 1 | (4 * (sample->var1 & 1)) & 0xF7 | (8 * ((sample->var1 >> 2) & 1)) | (sample->var1 >> 2) & 2;
    targetEdges = [(_UISEGestureFeatureSettings *)self->_settings targetEdges];
    self->_touchedEdges = v4 & targetEdges;
    if ((v4 & targetEdges) == 0)
    {
      [(_UISEGestureFeature *)self _setState:2];
    }

    self->_hasDoneTest = 1;
  }
}

@end