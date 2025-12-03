@interface _UISEIdleTimerFailGestureFeature
- (_UISEIdleTimerFailGestureFeature)initWithSettings:(id)settings;
- (void)_incorporateSample:(const _UISEGestureFeatureSample *)sample;
@end

@implementation _UISEIdleTimerFailGestureFeature

- (_UISEIdleTimerFailGestureFeature)initWithSettings:(id)settings
{
  v7.receiver = self;
  v7.super_class = _UISEIdleTimerFailGestureFeature;
  v4 = [(_UISEIdleTimerFailGestureFeature *)&v7 init];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_settings, settings);
  }

  return v5;
}

- (void)_incorporateSample:(const _UISEGestureFeatureSample *)sample
{
  objc_initWeak(&location, self);
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __55___UISEIdleTimerFailGestureFeature__incorporateSample___block_invoke;
  v11 = &unk_1E70F5A28;
  objc_copyWeak(&v12, &location);
  v5 = _Block_copy(&v8);
  if (!sample->var0)
  {
    [(_UISEGestureFeatureSettings *)self->_settings maximumSwipeDuration:v8];
    v7 = dispatch_time(0, (v6 * 1000000000.0));
    dispatch_after(v7, MEMORY[0x1E69E96A0], v5);
  }

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

@end