@interface PXCADisplayLink
+ (BOOL)highFramerateRequiresReasonAndRange;
- (PXCADisplayLink)initWithWeakTarget:(id)a3 selector:(SEL)a4 deferredStart:(BOOL)a5 runloopModes:(id)a6 preferredFramesPerSecond:(int64_t)a7 screen:(id)a8 queue:(id)a9;
- (double)resolvedDuration;
- (double)targetTimestamp;
- (double)timestamp;
- (id)description;
- (void)_addToRunLoop;
- (void)_tick:(id)a3;
- (void)_updateIsHighFrameRateActive;
- (void)dealloc;
- (void)invalidate;
- (void)setFrameRateRangeType:(unint64_t)a3;
- (void)setHighFrameRateReason:(unsigned int)a3;
- (void)setIsHighFrameRateActive:(BOOL)a3;
- (void)setPaused:(BOOL)a3;
@end

@implementation PXCADisplayLink

+ (BOOL)highFramerateRequiresReasonAndRange
{
  if (highFramerateRequiresReasonAndRange_onceToken != -1)
  {
    dispatch_once(&highFramerateRequiresReasonAndRange_onceToken, &__block_literal_global_17302);
  }

  return highFramerateRequiresReasonAndRange_highFramerateRequiresReasonAndRange;
}

void __54__PXCADisplayLink_highFramerateRequiresReasonAndRange__block_invoke()
{
  v0 = MGGetBoolAnswer();
  v1 = MGGetStringAnswer();
  v2 = [v1 isEqualToString:@"iPhone"];

  highFramerateRequiresReasonAndRange_highFramerateRequiresReasonAndRange = v0 & v2;
}

- (void)_updateIsHighFrameRateActive
{
  if (+[PXCADisplayLink highFramerateRequiresReasonAndRange]&& ![(PXCADisplayLink *)self paused]&& [(PXCADisplayLink *)self highFrameRateReason])
  {
    [(CADisplayLink *)self->_displayLink preferredFrameRateRange];
    v4 = v3 > 60.0;
  }

  else
  {
    v4 = 0;
  }

  [(PXCADisplayLink *)self setIsHighFrameRateActive:v4];
}

- (void)_addToRunLoop
{
  displayLink = self->_displayLink;
  v4 = [MEMORY[0x1E695DFD0] mainRunLoop];
  v5 = [(PXDisplayLink *)self runloopModes];
  [(CADisplayLink *)displayLink addToRunLoop:v4 forMode:v5];

  [(PXCADisplayLink *)self paused];

  kdebug_trace();
}

- (double)targetTimestamp
{
  result = self->_updateCycleTargetTimestamp;
  if (result == 0.0)
  {
    [(CADisplayLink *)self->_displayLink targetTimestamp];
  }

  return result;
}

- (double)timestamp
{
  result = self->_updateCycleTimestamp;
  if (result == 0.0)
  {
    [(CADisplayLink *)self->_displayLink timestamp];
  }

  return result;
}

- (void)setIsHighFrameRateActive:(BOOL)a3
{
  if (self->_isHighFrameRateActive != a3)
  {
    self->_isHighFrameRateActive = a3;
    [(PXCADisplayLink *)self highFrameRateReason];
    [(CADisplayLink *)self->_displayLink preferredFrameRateRange];

    kdebug_trace();
  }
}

- (void)setFrameRateRangeType:(unint64_t)a3
{
  if (+[PXCADisplayLink highFramerateRequiresReasonAndRange]&& self->_frameRateRangeType != a3)
  {
    self->_frameRateRangeType = a3;
    *&v5 = PXFrameRateRangeTypeGetCAFrameRateRange(a3);
    [(CADisplayLink *)self->_displayLink setPreferredFrameRateRange:v5];
    kdebug_trace();

    [(PXCADisplayLink *)self _updateIsHighFrameRateActive];
  }
}

- (void)setHighFrameRateReason:(unsigned int)a3
{
  v3 = *&a3;
  if (+[PXCADisplayLink highFramerateRequiresReasonAndRange])
  {
    [(CADisplayLink *)self->_displayLink setHighFrameRateReason:v3];
    kdebug_trace();

    [(PXCADisplayLink *)self _updateIsHighFrameRateActive];
  }
}

- (double)resolvedDuration
{
  v3 = [(PXCADisplayLink *)self preferredFramesPerSecond];
  displayLink = self->_displayLink;
  if (v3 < 1)
  {

    [(CADisplayLink *)displayLink duration];
  }

  else
  {
    [(CADisplayLink *)displayLink targetTimestamp];
    v6 = v5;
    [(CADisplayLink *)self->_displayLink timestamp];
    return v6 - v7;
  }

  return result;
}

- (void)setPaused:(BOOL)a3
{
  v3 = a3;
  kdebug_trace();
  [(CADisplayLink *)self->_displayLink setPaused:v3];

  [(PXCADisplayLink *)self _updateIsHighFrameRateActive];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PXCADisplayLink *)self paused];
  v7 = @"NO";
  if (v6)
  {
    v7 = @"YES";
  }

  v8 = v7;
  [(PXCADisplayLink *)self targetTimestamp];
  v10 = v9;
  [(PXCADisplayLink *)self timestamp];
  v12 = [v3 stringWithFormat:@"<%@: %p paused = %@; targetTimestamp = %.3f timestamp = %.3f>", v5, self, v8, v10, v11];;

  return v12;
}

- (void)_tick:(id)a3
{
  if (self->_displayLink == a3)
  {
    if (_UIUpdateCycleEnabled())
    {
      if (_UIUpdateCurrentTiming())
      {
        _UIMediaTimeForMachTime();
        v5 = v4;
        self->_updateCycleTargetTimestamp = v4;
        [(CADisplayLink *)self->_displayLink duration];
        v7 = v5 - v6;
      }

      else
      {
        self->_updateCycleTargetTimestamp = 0.0;
        v7 = 0.0;
      }

      self->_updateCycleTimestamp = v7;
    }

    v8 = [(PXDisplayLink *)self target];
    if (v8)
    {
      [v8 performSelector:-[PXDisplayLink selector](self withObject:{"selector"), self}];
    }

    else
    {
      [(PXCADisplayLink *)self invalidate];
    }
  }
}

- (void)invalidate
{
  v3 = self->_displayLink;
  if (v3)
  {
    displayLink = self->_displayLink;
    self->_displayLink = 0;

    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __29__PXCADisplayLink_invalidate__block_invoke;
    v5[3] = &unk_1E7BB8880;
    v6 = v3;
    px_dispatch_on_main_queue(v5);
  }
}

- (void)dealloc
{
  [(PXCADisplayLink *)self invalidate];
  v3.receiver = self;
  v3.super_class = PXCADisplayLink;
  [(PXCADisplayLink *)&v3 dealloc];
}

- (PXCADisplayLink)initWithWeakTarget:(id)a3 selector:(SEL)a4 deferredStart:(BOOL)a5 runloopModes:(id)a6 preferredFramesPerSecond:(int64_t)a7 screen:(id)a8 queue:(id)a9
{
  v12 = a5;
  v16 = a3;
  v17 = a6;
  v18 = a8;
  v19 = a9;
  if (v19 != MEMORY[0x1E69E96A0])
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"PXCADisplayLink.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"queue == dispatch_get_main_queue()"}];
  }

  v32.receiver = self;
  v32.super_class = PXCADisplayLink;
  v20 = [(PXDisplayLink *)&v32 initInternalWithWeakTarget:v16 selector:a4 deferredStart:v12 runloopModes:v17 preferredFramesPerSecond:a7 screen:v18 queue:v19];
  if (v20)
  {
    v21 = [MEMORY[0x1E6979330] displayLinkWithTarget:v20 selector:sel__tick_];
    displayLink = v20->_displayLink;
    v20->_displayLink = v21;

    v23 = +[PXCADisplayLink highFramerateRequiresReasonAndRange];
    if (a7 >= 1 && !v23)
    {
      v35 = CAFrameRateRangeMake(a7, a7, a7);
      [(CADisplayLink *)v20->_displayLink setPreferredFrameRateRange:*&v35.minimum, *&v35.maximum, *&v35.preferred];
    }

    if (v12)
    {
      objc_initWeak(&location, v20);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __112__PXCADisplayLink_initWithWeakTarget_selector_deferredStart_runloopModes_preferredFramesPerSecond_screen_queue___block_invoke;
      aBlock[3] = &unk_1E7BB8858;
      objc_copyWeak(&v30, &location);
      context.version = 0;
      context.info = _Block_copy(aBlock);
      memset(&context.retain, 0, 24);
      v24 = CFRunLoopObserverCreate(0, 0x20uLL, 0, 2000001, _PXRunLoopObserverTrampoline, &context);
      if (v24)
      {
        Current = CFRunLoopGetCurrent();
        CFRunLoopAddObserver(Current, v24, *MEMORY[0x1E695E8D0]);
        CFRelease(v24);
      }

      else
      {
        v26 = PFUIGetLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1B3F73000, v26, OS_LOG_TYPE_ERROR, "Failed to create an observer", buf, 2u);
        }

        CFRelease(context.info);
      }

      objc_destroyWeak(&v30);
      objc_destroyWeak(&location);
    }

    else
    {
      [(PXCADisplayLink *)v20 _addToRunLoop];
    }
  }

  return v20;
}

void __112__PXCADisplayLink_initWithWeakTarget_selector_deferredStart_runloopModes_preferredFramesPerSecond_screen_queue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _addToRunLoop];
}

@end