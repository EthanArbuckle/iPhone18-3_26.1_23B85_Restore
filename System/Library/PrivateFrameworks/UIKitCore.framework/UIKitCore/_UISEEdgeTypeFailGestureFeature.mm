@interface _UISEEdgeTypeFailGestureFeature
- (void)_incorporateSample:(const _UISEGestureFeatureSample *)sample;
@end

@implementation _UISEEdgeTypeFailGestureFeature

- (void)_incorporateSample:(const _UISEGestureFeatureSample *)sample
{
  var3 = sample->var3;
  if (sample->var0)
  {
    if (var3)
    {
      return;
    }
  }

  else
  {
    self->_initialFromEdgeTip = var3 == 1;
    if (var3)
    {
      return;
    }
  }

  if (!self->_initialFromEdgeTip)
  {
    [(_UISEGestureFeature *)self _setState:2];
  }
}

@end