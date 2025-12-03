@interface _UISEEdgeTypeForceRecognizeGestureFeature
- (void)_incorporateSample:(const _UISEGestureFeatureSample *)sample;
@end

@implementation _UISEEdgeTypeForceRecognizeGestureFeature

- (void)_incorporateSample:(const _UISEGestureFeatureSample *)sample
{
  if (sample->var0 == 1 && sample->var3 == 1 && sample->var2)
  {
    [(_UISEGestureFeature *)self _setState:1];
  }
}

@end