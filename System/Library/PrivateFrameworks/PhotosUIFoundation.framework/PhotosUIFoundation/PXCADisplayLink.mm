@interface PXCADisplayLink
+ (BOOL)highFramerateRequiresReasonAndRange;
- (PXCADisplayLink)initWithWeakTarget:(id)target selector:(SEL)selector deferredStart:(BOOL)start runloopModes:(id)modes preferredFramesPerSecond:(int64_t)second screen:(id)screen queue:(id)queue;
- (double)resolvedDuration;
- (double)targetTimestamp;
- (double)timestamp;
- (id)description;
- (void)_addToRunLoop;
- (void)_tick:(id)_tick;
- (void)_updateIsHighFrameRateActive;
- (void)dealloc;
- (void)invalidate;
- (void)setFrameRateRangeType:(unint64_t)type;
- (void)setHighFrameRateReason:(unsigned int)reason;
- (void)setIsHighFrameRateActive:(BOOL)active;
- (void)setPaused:(BOOL)paused;
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
  mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
  runloopModes = [(PXDisplayLink *)self runloopModes];
  [(CADisplayLink *)displayLink addToRunLoop:mainRunLoop forMode:runloopModes];

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

- (void)setIsHighFrameRateActive:(BOOL)active
{
  if (self->_isHighFrameRateActive != active)
  {
    self->_isHighFrameRateActive = active;
    [(PXCADisplayLink *)self highFrameRateReason];
    [(CADisplayLink *)self->_displayLink preferredFrameRateRange];

    kdebug_trace();
  }
}

- (void)setFrameRateRangeType:(unint64_t)type
{
  if (+[PXCADisplayLink highFramerateRequiresReasonAndRange]&& self->_frameRateRangeType != type)
  {
    self->_frameRateRangeType = type;
    *&v5 = PXFrameRateRangeTypeGetCAFrameRateRange(type);
    [(CADisplayLink *)self->_displayLink setPreferredFrameRateRange:v5];
    kdebug_trace();

    [(PXCADisplayLink *)self _updateIsHighFrameRateActive];
  }
}

- (void)setHighFrameRateReason:(unsigned int)reason
{
  v3 = *&reason;
  if (+[PXCADisplayLink highFramerateRequiresReasonAndRange])
  {
    [(CADisplayLink *)self->_displayLink setHighFrameRateReason:v3];
    kdebug_trace();

    [(PXCADisplayLink *)self _updateIsHighFrameRateActive];
  }
}

- (double)resolvedDuration
{
  preferredFramesPerSecond = [(PXCADisplayLink *)self preferredFramesPerSecond];
  displayLink = self->_displayLink;
  if (preferredFramesPerSecond < 1)
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

- (void)setPaused:(BOOL)paused
{
  pausedCopy = paused;
  kdebug_trace();
  [(CADisplayLink *)self->_displayLink setPaused:pausedCopy];

  [(PXCADisplayLink *)self _updateIsHighFrameRateActive];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  paused = [(PXCADisplayLink *)self paused];
  v7 = @"NO";
  if (paused)
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

- (void)_tick:(id)_tick
{
  if (self->_displayLink == _tick)
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

    target = [(PXDisplayLink *)self target];
    if (target)
    {
      [target performSelector:-[PXDisplayLink selector](self withObject:{"selector"), self}];
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

- (PXCADisplayLink)initWithWeakTarget:(id)target selector:(SEL)selector deferredStart:(BOOL)start runloopModes:(id)modes preferredFramesPerSecond:(int64_t)second screen:(id)screen queue:(id)queue
{
  startCopy = start;
  targetCopy = target;
  modesCopy = modes;
  screenCopy = screen;
  queueCopy = queue;
  if (queueCopy != MEMORY[0x1E69E96A0])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCADisplayLink.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"queue == dispatch_get_main_queue()"}];
  }

  v32.receiver = self;
  v32.super_class = PXCADisplayLink;
  v20 = [(PXDisplayLink *)&v32 initInternalWithWeakTarget:targetCopy selector:selector deferredStart:startCopy runloopModes:modesCopy preferredFramesPerSecond:second screen:screenCopy queue:queueCopy];
  if (v20)
  {
    v21 = [MEMORY[0x1E6979330] displayLinkWithTarget:v20 selector:sel__tick_];
    displayLink = v20->_displayLink;
    v20->_displayLink = v21;

    v23 = +[PXCADisplayLink highFramerateRequiresReasonAndRange];
    if (second >= 1 && !v23)
    {
      v35 = CAFrameRateRangeMake(second, second, second);
      [(CADisplayLink *)v20->_displayLink setPreferredFrameRateRange:*&v35.minimum, *&v35.maximum, *&v35.preferred];
    }

    if (startCopy)
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