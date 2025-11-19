@interface _UISEFirmwareEdgesFailGestureFeature
- (_UISEFirmwareEdgesFailGestureFeature)initWithSettings:(id)a3;
- (id)debugDictionary;
- (void)_incorporateSample:(const _UISEGestureFeatureSample *)a3;
@end

@implementation _UISEFirmwareEdgesFailGestureFeature

- (_UISEFirmwareEdgesFailGestureFeature)initWithSettings:(id)a3
{
  v7.receiver = self;
  v7.super_class = _UISEFirmwareEdgesFailGestureFeature;
  v4 = [(_UISEFirmwareEdgesFailGestureFeature *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_touchedEdges = 0;
    objc_storeStrong(&v4->_settings, a3);
    v5->_hasDoneTest = 0;
  }

  return v5;
}

- (id)debugDictionary
{
  v7.receiver = self;
  v7.super_class = _UISEFirmwareEdgesFailGestureFeature;
  v3 = [(_UISEGestureFeature *)&v7 debugDictionary];
  v4 = [v3 mutableCopy];

  v5 = _UIRectEdgeDescription(self->_touchedEdges);
  [v4 setObject:v5 forKeyedSubscript:@"touchedEdges"];

  return v4;
}

- (void)_incorporateSample:(const _UISEGestureFeatureSample *)a3
{
  if (a3->var0 == 1 && !self->_hasDoneTest && a3->var3 == 4)
  {
    v4 = (a3->var1 >> 1) & 1 | (4 * (a3->var1 & 1)) & 0xF7 | (8 * ((a3->var1 >> 2) & 1)) | (a3->var1 >> 2) & 2;
    v5 = [(_UISEGestureFeatureSettings *)self->_settings targetEdges];
    self->_touchedEdges = v4 & v5;
    if ((v4 & v5) == 0)
    {
      [(_UISEGestureFeature *)self _setState:2];
    }

    self->_hasDoneTest = 1;
  }
}

@end