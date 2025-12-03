@interface _UIScrollViewGestureSimulator
+ (id)sharedInstance;
- (_UIScrollViewGestureSimulator)init;
- (void)_signalMainThreadIfNecessary;
- (void)_threadMain;
- (void)_update;
- (void)dealloc;
- (void)simulateGestureWithDuration:(double)duration begin:(id)begin update:(id)update end:(id)end;
@end

@implementation _UIScrollViewGestureSimulator

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47___UIScrollViewGestureSimulator_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED4A2C10 != -1)
  {
    dispatch_once(&qword_1ED4A2C10, block);
  }

  v2 = qword_1ED4A2C08;

  return v2;
}

- (_UIScrollViewGestureSimulator)init
{
  v9.receiver = self;
  v9.super_class = _UIScrollViewGestureSimulator;
  v2 = [(_UIScrollViewGestureSimulator *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v8.version = 0;
    memset(&v8.retain, 0, 56);
    v8.info = v2;
    v8.perform = _updateSimulation;
    v2->_mainThreadRunLoopSource = CFRunLoopSourceCreate(0, -1, &v8);
    Main = CFRunLoopGetMain();
    CFRunLoopAddSource(Main, v3->_mainThreadRunLoopSource, *MEMORY[0x1E695E8D0]);
    CFRelease(v3->_mainThreadRunLoopSource);
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    simulatedGestures = v3->_simulatedGestures;
    v3->_simulatedGestures = v5;
  }

  return v3;
}

- (void)dealloc
{
  CFRunLoopSourceInvalidate(self->_mainThreadRunLoopSource);
  self->_mainThreadRunLoopSource = 0;
  v3.receiver = self;
  v3.super_class = _UIScrollViewGestureSimulator;
  [(_UIScrollViewGestureSimulator *)&v3 dealloc];
}

- (void)simulateGestureWithDuration:(double)duration begin:(id)begin update:(id)update end:(id)end
{
  endCopy = end;
  updateCopy = update;
  beginCopy = begin;
  v15 = [[_UIScrollViewSimulatedGesture alloc] initWithDuration:beginCopy begin:updateCopy update:endCopy end:duration];

  [(NSMutableArray *)self->_simulatedGestures addObject:v15];
  if (self->_workThread)
  {
    if ([(NSMutableArray *)self->_simulatedGestures count]== 1)
    {
      [(_UIScrollViewGestureSimulator *)self performSelector:sel__setHasSimulatedGestures_ onThread:self->_workThread withObject:MEMORY[0x1E695E118] waitUntilDone:0];
    }
  }

  else
  {
    self->_hasSimulatedGestures = 1;
    v13 = [objc_alloc(MEMORY[0x1E696AF00]) initWithTarget:self selector:sel__threadMain object:0];
    workThread = self->_workThread;
    self->_workThread = v13;

    [(NSThread *)self->_workThread setQualityOfService:33];
    [(NSThread *)self->_workThread setName:@"com.apple.uikit.simulated-scrollview-gesture-thread"];
    [(NSThread *)self->_workThread start];
  }
}

- (void)_threadMain
{
  currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
  if (qword_1ED4A2C28 != -1)
  {
    dispatch_once(&qword_1ED4A2C28, &__block_literal_global_188_3);
  }

  if (_MergedGlobals_1388 == 1)
  {
    v4 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel__displayLinkDidFire_];
    displayLink = self->_displayLink;
    self->_displayLink = v4;

    [(CADisplayLink *)self->_displayLink maximumRefreshRate];
    if (llround(1.0 / v6) >= 61)
    {
      v7 = self->_displayLink;
      [(CADisplayLink *)v7 maximumRefreshRate];
      if (v8 != 0.0)
      {
        [(CADisplayLink *)v7 setPreferredFramesPerSecond:llround(1.0 / v8)];
      }
    }

    [(CADisplayLink *)self->_displayLink addToRunLoop:currentRunLoop forMode:*MEMORY[0x1E695DA28]];
  }

  else
  {
    v9 = objc_alloc(MEMORY[0x1E695DFF0]);
    date = [MEMORY[0x1E695DF00] date];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __44___UIScrollViewGestureSimulator__threadMain__block_invoke;
    v19[3] = &unk_1E7106478;
    v19[4] = self;
    v11 = [v9 initWithFireDate:date interval:1 repeats:v19 block:0.0166666667];
    timer = self->_timer;
    self->_timer = v11;

    [currentRunLoop addTimer:self->_timer forMode:*MEMORY[0x1E695DA28]];
  }

  self->_lastWakeUpTime = CACurrentMediaTime();
  do
  {
    do
    {
      v13 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:0.5];
      [currentRunLoop runUntilDate:v13];
    }

    while (self->_hasSimulatedGestures);
  }

  while (CACurrentMediaTime() - self->_lastWakeUpTime < 5.0);
  v14 = self->_displayLink;
  if (v14)
  {
    [(CADisplayLink *)v14 invalidate];
    v15 = self->_displayLink;
    self->_displayLink = 0;
  }

  v16 = self->_timer;
  if (v16)
  {
    [(NSTimer *)v16 invalidate];
    v17 = self->_timer;
    self->_timer = 0;
  }

  workThread = self->_workThread;
  self->_workThread = 0;
}

- (void)_signalMainThreadIfNecessary
{
  if (self->_hasSimulatedGestures)
  {
    CFRunLoopSourceSignal(self->_mainThreadRunLoopSource);
    Main = CFRunLoopGetMain();
    CFRunLoopWakeUp(Main);
    self->_lastWakeUpTime = CACurrentMediaTime();
  }
}

- (void)_update
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->_simulatedGestures count])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = [(NSMutableArray *)self->_simulatedGestures copy];
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v9 + 1) + 8 * i);
          if ([v8 updateSimulation])
          {
            [(NSMutableArray *)self->_simulatedGestures removeObjectIdenticalTo:v8];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }

    if (self->_workThread)
    {
      if (![(NSMutableArray *)self->_simulatedGestures count])
      {
        [(_UIScrollViewGestureSimulator *)self performSelector:sel__setHasSimulatedGestures_ onThread:self->_workThread withObject:MEMORY[0x1E695E110] waitUntilDone:0];
      }
    }
  }
}

@end