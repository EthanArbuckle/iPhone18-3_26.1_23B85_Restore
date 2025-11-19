@interface PXAsyncDisplayLink
- (NSString)description;
- (PXAsyncDisplayLink)initWithWeakTarget:(id)a3 selector:(SEL)a4 preferredFramesPerSecond:(int64_t)a5 screen:(id)a6 queue:(id)a7;
- (PXAsyncDisplayLink)initWithWeakTarget:(id)a3 selector:(SEL)a4 queue:(id)a5;
- (PXAsyncDisplayLink)initWithWeakTarget:(id)a3 selector:(SEL)a4 screen:(id)a5 queue:(id)a6;
- (UIScreen)screen;
- (double)currentMediaTime;
- (id)target;
- (void)_mainQueue_tick;
- (void)_modifyDisplayLink:(id)a3;
- (void)_queue_tickTimestamp:(double)a3 duration:(double)a4 targetTimestamp:(double)a5 preferredFramesPerSecond:(int64_t)a6;
- (void)setFrameRateRangeType:(unint64_t)a3;
- (void)setHighFrameRateReason:(unsigned int)a3;
- (void)setPaused:(BOOL)a3;
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

- (void)_modifyDisplayLink:(id)a3
{
  v4 = a3;
  v5 = self->_mainQueue_displayLink;
  v6 = [(PXDisplayLink *)self->_mainQueue_displayLink queue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __41__PXAsyncDisplayLink__modifyDisplayLink___block_invoke;
  v9[3] = &unk_1E7BB7DA8;
  v10 = v5;
  v11 = v4;
  v7 = v5;
  v8 = v4;
  dispatch_async(v6, v9);
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
  v10 = [(PXDisplayLink *)v3 preferredFramesPerSecond];
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
  v13[4] = v10;
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
  v6 = [(PXAsyncDisplayLink *)self paused];
  v7 = @"NO";
  if (v6)
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

- (void)_queue_tickTimestamp:(double)a3 duration:(double)a4 targetTimestamp:(double)a5 preferredFramesPerSecond:(int64_t)a6
{
  dispatch_assert_queue_V2(self->_queue);
  self->_timestamp = a3;
  self->_duration = a4;
  v11 = a5 - a3;
  if (a6 <= 0)
  {
    v11 = a4;
  }

  self->_resolvedDuration = v11;
  self->_targetTimestamp = a5;
  self->_preferredFramesPerSecond = a6;
  if (![(PXAsyncDisplayLink *)self paused])
  {
    v12 = [(PXAsyncDisplayLink *)self target];
    if (v12)
    {
      [v12 performSelector:-[PXAsyncDisplayLink selector](self withObject:{"selector"), self}];
    }

    else
    {
      [(PXAsyncDisplayLink *)self invalidate];
    }
  }
}

- (void)setPaused:(BOOL)a3
{
  v3 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_paused != v3)
  {
    self->_paused = v3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __32__PXAsyncDisplayLink_setPaused___block_invoke;
    v5[3] = &__block_descriptor_33_e23_v16__0__PXDisplayLink_8l;
    v6 = v3;
    [(PXAsyncDisplayLink *)self _modifyDisplayLink:v5];
  }
}

- (void)setFrameRateRangeType:(unint64_t)a3
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_frameRateRangeType != a3)
  {
    self->_frameRateRangeType = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __44__PXAsyncDisplayLink_setFrameRateRangeType___block_invoke;
    v5[3] = &__block_descriptor_40_e23_v16__0__PXDisplayLink_8l;
    v5[4] = a3;
    [(PXAsyncDisplayLink *)self _modifyDisplayLink:v5];
  }
}

- (void)setHighFrameRateReason:(unsigned int)a3
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_highFrameRateReason != a3)
  {
    self->_highFrameRateReason = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __45__PXAsyncDisplayLink_setHighFrameRateReason___block_invoke;
    v5[3] = &__block_descriptor_36_e23_v16__0__PXDisplayLink_8l;
    v6 = a3;
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

- (PXAsyncDisplayLink)initWithWeakTarget:(id)a3 selector:(SEL)a4 preferredFramesPerSecond:(int64_t)a5 screen:(id)a6 queue:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v27.receiver = self;
  v27.super_class = PXAsyncDisplayLink;
  v15 = [(PXAsyncDisplayLink *)&v27 init];
  v16 = v15;
  if (v15)
  {
    objc_storeWeak(&v15->_target, v12);
    v16->_selector = a4;
    objc_storeStrong(&v16->_queue, a7);
    v17 = [PXDisplayLink alloc];
    v18 = [(PXDisplayLink *)v17 initWithWeakTarget:v16 selector:sel__mainQueue_tick deferredStart:0 runloopModes:*MEMORY[0x1E695DA28] preferredFramesPerSecond:a5 screen:v13 queue:MEMORY[0x1E69E96A0]];
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
    v16->_preferredFramesPerSecond = a5;
  }

  return v16;
}

- (PXAsyncDisplayLink)initWithWeakTarget:(id)a3 selector:(SEL)a4 screen:(id)a5 queue:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [(PXAsyncDisplayLink *)self initWithWeakTarget:v12 selector:a4 preferredFramesPerSecond:PXDisplayLinkDefaultPreferredFramesPerSecond() screen:v11 queue:v10];

  return v13;
}

- (PXAsyncDisplayLink)initWithWeakTarget:(id)a3 selector:(SEL)a4 queue:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(PXAsyncDisplayLink *)self initWithWeakTarget:v9 selector:a4 preferredFramesPerSecond:PXDisplayLinkDefaultPreferredFramesPerSecond() screen:0 queue:v8];

  return v10;
}

@end