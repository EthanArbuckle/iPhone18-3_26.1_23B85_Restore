@interface PXDisplayLink
- (PXDisplayLink)init;
- (PXDisplayLink)initWithWeakTarget:(id)target selector:(SEL)selector deferredStart:(BOOL)start;
- (PXDisplayLink)initWithWeakTarget:(id)target selector:(SEL)selector deferredStart:(BOOL)start runloopModes:(id)modes preferredFramesPerSecond:(int64_t)second screen:(id)screen queue:(id)queue;
- (PXDisplayLink)initWithWeakTarget:(id)target selector:(SEL)selector queue:(id)queue;
- (PXDisplayLink)initWithWeakTarget:(id)target selector:(SEL)selector screen:(id)screen queue:(id)queue;
- (UIScreen)screen;
- (double)currentMediaTime;
- (double)duration;
- (double)resolvedDuration;
- (double)targetTimestamp;
- (double)timestamp;
- (id)initInternalWithWeakTarget:(id)target selector:(SEL)selector deferredStart:(BOOL)start runloopModes:(id)modes preferredFramesPerSecond:(int64_t)second screen:(id)screen queue:(id)queue;
- (id)target;
- (void)invalidate;
@end

@implementation PXDisplayLink

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (UIScreen)screen
{
  WeakRetained = objc_loadWeakRetained(&self->_screen);

  return WeakRetained;
}

- (double)timestamp
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXDisplayLink.m" lineNumber:138 description:{@"Method %s is a responsibility of subclass %@", "-[PXDisplayLink timestamp]", v6}];

  abort();
}

- (double)targetTimestamp
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXDisplayLink.m" lineNumber:134 description:{@"Method %s is a responsibility of subclass %@", "-[PXDisplayLink targetTimestamp]", v6}];

  abort();
}

- (double)duration
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXDisplayLink.m" lineNumber:130 description:{@"Method %s is a responsibility of subclass %@", "-[PXDisplayLink duration]", v6}];

  abort();
}

- (double)resolvedDuration
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXDisplayLink.m" lineNumber:118 description:{@"Method %s is a responsibility of subclass %@", "-[PXDisplayLink resolvedDuration]", v6}];

  abort();
}

- (double)currentMediaTime
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXDisplayLink.m" lineNumber:114 description:{@"Method %s is a responsibility of subclass %@", "-[PXDisplayLink currentMediaTime]", v6}];

  abort();
}

- (void)invalidate
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXDisplayLink.m" lineNumber:110 description:{@"Method %s is a responsibility of subclass %@", "-[PXDisplayLink invalidate]", v6}];

  abort();
}

- (PXDisplayLink)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXDisplayLink.m" lineNumber:104 description:{@"%s is not available as initializer", "-[PXDisplayLink init]"}];

  abort();
}

- (id)initInternalWithWeakTarget:(id)target selector:(SEL)selector deferredStart:(BOOL)start runloopModes:(id)modes preferredFramesPerSecond:(int64_t)second screen:(id)screen queue:(id)queue
{
  targetCopy = target;
  modesCopy = modes;
  screenCopy = screen;
  queueCopy = queue;
  v21.receiver = self;
  v21.super_class = PXDisplayLink;
  v18 = [(PXDisplayLink *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeWeak(&v18->_target, targetCopy);
    v19->_selector = selector;
    objc_storeStrong(&v19->_queue, queue);
    objc_storeStrong(&v19->_runloopModes, modes);
    v19->_preferredFramesPerSecond = second;
    objc_storeWeak(&v19->_screen, screenCopy);
  }

  return v19;
}

- (PXDisplayLink)initWithWeakTarget:(id)target selector:(SEL)selector deferredStart:(BOOL)start runloopModes:(id)modes preferredFramesPerSecond:(int64_t)second screen:(id)screen queue:(id)queue
{
  startCopy = start;
  v16 = MEMORY[0x1E69E96A0];
  queueCopy = queue;
  screenCopy = screen;
  modesCopy = modes;
  targetCopy = target;
  if (queue != v16)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXDisplayLink.m" lineNumber:84 description:@"Only main queue supported"];
  }

  v21 = [[PXCADisplayLink alloc] initWithWeakTarget:targetCopy selector:selector deferredStart:startCopy runloopModes:modesCopy preferredFramesPerSecond:second screen:screenCopy queue:queueCopy];

  return &v21->super;
}

- (PXDisplayLink)initWithWeakTarget:(id)target selector:(SEL)selector deferredStart:(BOOL)start
{
  startCopy = start;
  v8 = *MEMORY[0x1E695DA28];
  targetCopy = target;
  v10 = [(PXDisplayLink *)self initWithWeakTarget:targetCopy selector:selector deferredStart:startCopy runloopModes:v8 preferredFramesPerSecond:PXDisplayLinkDefaultPreferredFramesPerSecond() queue:MEMORY[0x1E69E96A0]];

  return v10;
}

- (PXDisplayLink)initWithWeakTarget:(id)target selector:(SEL)selector screen:(id)screen queue:(id)queue
{
  v10 = *MEMORY[0x1E695DA28];
  queueCopy = queue;
  screenCopy = screen;
  targetCopy = target;
  v14 = [(PXDisplayLink *)self initWithWeakTarget:targetCopy selector:selector deferredStart:0 runloopModes:v10 preferredFramesPerSecond:PXDisplayLinkDefaultPreferredFramesPerSecond() screen:screenCopy queue:queueCopy];

  return v14;
}

- (PXDisplayLink)initWithWeakTarget:(id)target selector:(SEL)selector queue:(id)queue
{
  v8 = *MEMORY[0x1E695DA28];
  queueCopy = queue;
  targetCopy = target;
  v11 = [(PXDisplayLink *)self initWithWeakTarget:targetCopy selector:selector deferredStart:0 runloopModes:v8 preferredFramesPerSecond:PXDisplayLinkDefaultPreferredFramesPerSecond() queue:queueCopy];

  return v11;
}

@end