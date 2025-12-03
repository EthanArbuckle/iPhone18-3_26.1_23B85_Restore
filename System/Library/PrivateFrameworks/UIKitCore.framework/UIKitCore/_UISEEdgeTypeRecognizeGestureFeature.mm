@interface _UISEEdgeTypeRecognizeGestureFeature
- (void)_incorporateSample:(const _UISEGestureFeatureSample *)sample;
@end

@implementation _UISEEdgeTypeRecognizeGestureFeature

- (void)_incorporateSample:(const _UISEGestureFeatureSample *)sample
{
  if (sample->var0 == 1)
  {
    var3 = sample->var3;
    v4 = var3 == 1 || var3 == 4;
    if (v4 || self->_initialFromEdgeTip)
    {
      [(_UISEGestureFeature *)self _setState:1];
    }
  }

  else if (!sample->var0)
  {
    self->_initialFromEdgeTip = sample->var3 == 1;
  }
}

@end