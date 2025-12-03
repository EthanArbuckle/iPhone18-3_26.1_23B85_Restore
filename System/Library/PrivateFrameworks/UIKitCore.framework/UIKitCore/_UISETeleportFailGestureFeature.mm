@interface _UISETeleportFailGestureFeature
- (_UISETeleportFailGestureFeature)init;
- (void)_incorporateSample:(const _UISEGestureFeatureSample *)sample;
@end

@implementation _UISETeleportFailGestureFeature

- (_UISETeleportFailGestureFeature)init
{
  v3.receiver = self;
  v3.super_class = _UISETeleportFailGestureFeature;
  result = [(_UISETeleportFailGestureFeature *)&v3 init];
  if (result)
  {
    result->_lastLocation = vdupq_n_s64(0x7FF8000000000000uLL);
  }

  return result;
}

- (void)_incorporateSample:(const _UISEGestureFeatureSample *)sample
{
  if (sample->var0 == 1)
  {
    v5 = vsubq_f64(self->_lastLocation, sample->var5);
    if (sqrt(vaddvq_f64(vmulq_f64(v5, v5))) > 100.0)
    {
      [(_UISEGestureFeature *)self _setState:2];
    }
  }

  else if (sample->var0)
  {
    return;
  }

  self->_lastLocation = sample->var5;
}

@end