@interface _UISEEdgeTypeForceRecognizeGestureFeature
- (void)_incorporateSample:(const _UISEGestureFeatureSample *)a3;
@end

@implementation _UISEEdgeTypeForceRecognizeGestureFeature

- (void)_incorporateSample:(const _UISEGestureFeatureSample *)a3
{
  if (a3->var0 == 1 && a3->var3 == 1 && a3->var2)
  {
    [(_UISEGestureFeature *)self _setState:1];
  }
}

@end