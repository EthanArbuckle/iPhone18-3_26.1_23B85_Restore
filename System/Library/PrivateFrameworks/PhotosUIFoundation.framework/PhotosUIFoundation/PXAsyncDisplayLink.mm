@interface PXAsyncDisplayLink
- (NSString)description;
- (PXAsyncDisplayLink)initWithWeakTarget:(id)target selector:(SEL)selector preferredFramesPerSecond:(int64_t)second screen:(id)screen queue:(id)queue;
- (PXAsyncDisplayLink)initWithWeakTarget:(id)target selector:(SEL)selector queue:(id)queue;
- (PXAsyncDisplayLink)initWithWeakTarget:(id)target selector:(SEL)selector screen:(id)screen queue:(id)queue;
- (UIScreen)screen;
- (double)currentMediaTime;
- (id)target;
- (void)_mainQueue_tick;
- (void)_modifyDisplayLink:(id)link;
- (void)_queue_tickTimestamp:(double)timestamp duration:(double)duration targetTimestamp:(double)targetTimestamp preferredFramesPerSecond:(int64_t)second;
- (void)setFrameRateRangeType:(unint64_t)type;
- (void)setHighFrameRateReason:(unsigned int)reason;
- (void)setPaused:(BOOL)paused;
@end

@implementation PXAsyncDisplayLink

- (UIScreen)screen
{
  WeakRetained = objc_loadWeakRetained(&self->_screen);

  return WeakRetained;
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (void)_modifyDisplayLink:(id)link
{
  linkCopy = link;
  v5 = self->_mainQueue_displayLink;
  queue = [(PXDisplayLink *)self->_mainQueue_displayLink queue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __41__PXAsyncDisplayLink__modifyDisplayLink___block_invoke;
  v9[3] = &unk_1E7BB7DA8;
  v10 = v5;
  v11 = linkCopy;
  v7 = v5;
  v8 = linkCopy;
  dispatch_async(queue, v9);
}

- (void)_mainQueue_tick
{
  v3 = self->_mainQueue_displayLink;
  [(PXDisplayLink *)v3 timestamp];
  v5 = v4;
  [(PXDisplayLink *)v3 duration];
  v7 = v6;
  [(PXDisplayLink *)v3 targetTimestamp];
  v9 = v8;
  preferredFramesPerSecond = [(PXDisplayLink *)v3 preferredFramesPerSecond];
  objc_initWeak(&location, self);
  queue = self->_queue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __37__PXAsyncDisplayLink__mainQueue_tick__block_invoke;
  v12[3] = &unk_1E7BB5598;
  objc_copyWeak(v13, &location);
  v13[1] = v5;
  v13[2] = v7;
  v13[3] = v9;
  v13[4] = preferredFramesPerSecond;
  dispatch_async(queue, v12);

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

void __37__PXAsyncDisplayLink__mainQueue_tick__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_tickTimestamp:*(a1 + 64) duration:*(a1 + 40) targetTimestamp:*(a1 + 48) preferredFramesPerSecond:*(a1 + 56)];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  paused = [(PXAsyncDisplayLink *)self paused];
  v7 = @"NO";
  if (paused)
  {
    v7 = @"YES";
  }

  v8 = v7;
  [(PXAsyncDisplayLink *)self targetTimestamp];
  v10 = v9;
  [(PXAsyncDisplayLink *)self timestamp];
  v12 = [v3 stringWithFormat:@"<%@: %p paused = %@; targetTimestamp = %.3f timestamp = %.3f mainQueue_displayLink = %@>", v5, self, v8, v10, v11, self->_mainQueue_displayLink];;

  return v12;
}

- (void)_queue_tickTimestamp:(double)timestamp duration:(double)duration targetTimestamp:(double)targetTimestamp preferredFramesPerSecond:(int64_t)second
{
  dispatch_assert_queue_V2(self->_queue);
  self->_timestamp = timestamp;
  self->_duration = duration;
  durationCopy = targetTimestamp - timestamp;
  if (second <= 0)
  {
    durationCopy = duration;
  }

  self->_resolvedDuration = durationCopy;
  self->_targetTimestamp = targetTimestamp;
  self->_preferredFramesPerSecond = second;
  if (![(PXAsyncDisplayLink *)self paused])
  {
    target = [(PXAsyncDisplayLink *)self target];
    if (target)
    {
      [target performSelector:-[PXAsyncDisplayLink selector](self withObject:{"selector"), self}];
    }

    else
    {
      [(PXAsyncDisplayLink *)self invalidate];
    }
  }
}

- (void)setPaused:(BOOL)paused
{
  pausedCopy = paused;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_paused != pausedCopy)
  {
    self->_paused = pausedCopy;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __32__PXAsyncDisplayLink_setPaused___block_invoke;
    v5[3] = &__block_descriptor_33_e23_v16__0__PXDisplayLink_8l;
    v6 = pausedCopy;
    [(PXAsyncDisplayLink *)self _modifyDisplayLink:v5];
  }
}

- (void)setFrameRateRangeType:(unint64_t)type
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_frameRateRangeType != type)
  {
    self->_frameRateRangeType = type;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __44__PXAsyncDisplayLink_setFrameRateRangeType___block_invoke;
    v5[3] = &__block_descriptor_40_e23_v16__0__PXDisplayLink_8l;
    v5[4] = type;
    [(PXAsyncDisplayLink *)self _modifyDisplayLink:v5];
  }
}

- (void)setHighFrameRateReason:(unsigned int)reason
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_highFrameRateReason != reason)
  {
    self->_highFrameRateReason = reason;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __45__PXAsyncDisplayLink_setHighFrameRateReason___block_invoke;
    v5[3] = &__block_descriptor_36_e23_v16__0__PXDisplayLink_8l;
    reasonCopy = reason;
    [(PXAsyncDisplayLink *)self _modifyDisplayLink:v5];
  }
}

- (double)currentMediaTime
{
  dispatch_assert_queue_V2(self->_queue);
  mainQueue_displayLink = self->_mainQueue_displayLink;

  [(PXDisplayLink *)mainQueue_displayLink currentMediaTime];
  return result;
}

- (PXAsyncDisplayLink)initWithWeakTarget:(id)target selector:(SEL)selector preferredFramesPerSecond:(int64_t)second screen:(id)screen queue:(id)queue
{
  targetCopy = target;
  screenCopy = screen;
  queueCopy = queue;
  v27.receiver = self;
  v27.super_class = PXAsyncDisplayLink;
  v15 = [(PXAsyncDisplayLink *)&v27 init];
  v16 = v15;
  if (v15)
  {
    objc_storeWeak(&v15->_target, targetCopy);
    v16->_selector = selector;
    objc_storeStrong(&v16->_queue, queue);
    v17 = [PXDisplayLink alloc];
    v18 = [(PXDisplayLink *)v17 initWithWeakTarget:v16 selector:sel__mainQueue_tick deferredStart:0 runloopModes:*MEMORY[0x1E695DA28] preferredFramesPerSecond:second screen:screenCopy queue:MEMORY[0x1E69E96A0]];
    mainQueue_displayLink = v16->_mainQueue_displayLink;
    v16->_mainQueue_displayLink = v18;
    v20 = v18;

    v16->_highFrameRateReason = [(PXDisplayLink *)v20 highFrameRateReason];
    v16->_frameRateRangeType = [(PXDisplayLink *)v20 frameRateRangeType];
    v16->_paused = [(PXDisplayLink *)v20 paused];
    [(PXDisplayLink *)v20 timestamp];
    v16->_timestamp = v21;
    [(PXDisplayLink *)v20 duration];
    v16->_duration = v22;
    [(PXDisplayLink *)v20 duration];
    v16->_resolvedDuration = v23;
    [(PXDisplayLink *)v20 targetTimestamp];
    v25 = v24;

    v16->_targetTimestamp = v25;
    v16->_preferredFramesPerSecond = second;
  }

  return v16;
}

- (PXAsyncDisplayLink)initWithWeakTarget:(id)target selector:(SEL)selector screen:(id)screen queue:(id)queue
{
  queueCopy = queue;
  screenCopy = screen;
  targetCopy = target;
  v13 = [(PXAsyncDisplayLink *)self initWithWeakTarget:targetCopy selector:selector preferredFramesPerSecond:PXDisplayLinkDefaultPreferredFramesPerSecond() screen:screenCopy queue:queueCopy];

  return v13;
}

- (PXAsyncDisplayLink)initWithWeakTarget:(id)target selector:(SEL)selector queue:(id)queue
{
  queueCopy = queue;
  targetCopy = target;
  v10 = [(PXAsyncDisplayLink *)self initWithWeakTarget:targetCopy selector:selector preferredFramesPerSecond:PXDisplayLinkDefaultPreferredFramesPerSecond() screen:0 queue:queueCopy];

  return v10;
}

@end