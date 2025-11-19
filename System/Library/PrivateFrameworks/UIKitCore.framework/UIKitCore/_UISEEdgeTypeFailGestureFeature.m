@interface _UISEEdgeTypeFailGestureFeature
- (void)_incorporateSample:(const _UISEGestureFeatureSample *)a3;
@end

@implementation _UISEEdgeTypeFailGestureFeature

- (void)_incorporateSample:(const _UISEGestureFeatureSample *)a3
{
  var3 = a3->var3;
  if (a3->var0)
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