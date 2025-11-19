@interface PXDisplayLink
- (PXDisplayLink)init;
- (PXDisplayLink)initWithWeakTarget:(id)a3 selector:(SEL)a4 deferredStart:(BOOL)a5;
- (PXDisplayLink)initWithWeakTarget:(id)a3 selector:(SEL)a4 deferredStart:(BOOL)a5 runloopModes:(id)a6 preferredFramesPerSecond:(int64_t)a7 screen:(id)a8 queue:(id)a9;
- (PXDisplayLink)initWithWeakTarget:(id)a3 selector:(SEL)a4 queue:(id)a5;
- (PXDisplayLink)initWithWeakTarget:(id)a3 selector:(SEL)a4 screen:(id)a5 queue:(id)a6;
- (UIScreen)screen;
- (double)currentMediaTime;
- (double)duration;
- (double)resolvedDuration;
- (double)targetTimestamp;
- (double)timestamp;
- (id)initInternalWithWeakTarget:(id)a3 selector:(SEL)a4 deferredStart:(BOOL)a5 runloopModes:(id)a6 preferredFramesPerSecond:(int64_t)a7 screen:(id)a8 queue:(id)a9;
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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXDisplayLink.m" lineNumber:138 description:{@"Method %s is a responsibility of subclass %@", "-[PXDisplayLink timestamp]", v6}];

  abort();
}

- (double)targetTimestamp
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXDisplayLink.m" lineNumber:134 description:{@"Method %s is a responsibility of subclass %@", "-[PXDisplayLink targetTimestamp]", v6}];

  abort();
}

- (double)duration
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXDisplayLink.m" lineNumber:130 description:{@"Method %s is a responsibility of subclass %@", "-[PXDisplayLink duration]", v6}];

  abort();
}

- (double)resolvedDuration
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXDisplayLink.m" lineNumber:118 description:{@"Method %s is a responsibility of subclass %@", "-[PXDisplayLink resolvedDuration]", v6}];

  abort();
}

- (double)currentMediaTime
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXDisplayLink.m" lineNumber:114 description:{@"Method %s is a responsibility of subclass %@", "-[PXDisplayLink currentMediaTime]", v6}];

  abort();
}

- (void)invalidate
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXDisplayLink.m" lineNumber:110 description:{@"Method %s is a responsibility of subclass %@", "-[PXDisplayLink invalidate]", v6}];

  abort();
}

- (PXDisplayLink)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXDisplayLink.m" lineNumber:104 description:{@"%s is not available as initializer", "-[PXDisplayLink init]"}];

  abort();
}

- (id)initInternalWithWeakTarget:(id)a3 selector:(SEL)a4 deferredStart:(BOOL)a5 runloopModes:(id)a6 preferredFramesPerSecond:(int64_t)a7 screen:(id)a8 queue:(id)a9
{
  v14 = a3;
  v15 = a6;
  v16 = a8;
  v17 = a9;
  v21.receiver = self;
  v21.super_class = PXDisplayLink;
  v18 = [(PXDisplayLink *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeWeak(&v18->_target, v14);
    v19->_selector = a4;
    objc_storeStrong(&v19->_queue, a9);
    objc_storeStrong(&v19->_runloopModes, a6);
    v19->_preferredFramesPerSecond = a7;
    objc_storeWeak(&v19->_screen, v16);
  }

  return v19;
}

- (PXDisplayLink)initWithWeakTarget:(id)a3 selector:(SEL)a4 deferredStart:(BOOL)a5 runloopModes:(id)a6 preferredFramesPerSecond:(int64_t)a7 screen:(id)a8 queue:(id)a9
{
  v12 = a5;
  v16 = MEMORY[0x1E69E96A0];
  v17 = a9;
  v18 = a8;
  v19 = a6;
  v20 = a3;
  if (a9 != v16)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"PXDisplayLink.m" lineNumber:84 description:@"Only main queue supported"];
  }

  v21 = [[PXCADisplayLink alloc] initWithWeakTarget:v20 selector:a4 deferredStart:v12 runloopModes:v19 preferredFramesPerSecond:a7 screen:v18 queue:v17];

  return &v21->super;
}

- (PXDisplayLink)initWithWeakTarget:(id)a3 selector:(SEL)a4 deferredStart:(BOOL)a5
{
  v5 = a5;
  v8 = *MEMORY[0x1E695DA28];
  v9 = a3;
  v10 = [(PXDisplayLink *)self initWithWeakTarget:v9 selector:a4 deferredStart:v5 runloopModes:v8 preferredFramesPerSecond:PXDisplayLinkDefaultPreferredFramesPerSecond() queue:MEMORY[0x1E69E96A0]];

  return v10;
}

- (PXDisplayLink)initWithWeakTarget:(id)a3 selector:(SEL)a4 screen:(id)a5 queue:(id)a6
{
  v10 = *MEMORY[0x1E695DA28];
  v11 = a6;
  v12 = a5;
  v13 = a3;
  v14 = [(PXDisplayLink *)self initWithWeakTarget:v13 selector:a4 deferredStart:0 runloopModes:v10 preferredFramesPerSecond:PXDisplayLinkDefaultPreferredFramesPerSecond() screen:v12 queue:v11];

  return v14;
}

- (PXDisplayLink)initWithWeakTarget:(id)a3 selector:(SEL)a4 queue:(id)a5
{
  v8 = *MEMORY[0x1E695DA28];
  v9 = a5;
  v10 = a3;
  v11 = [(PXDisplayLink *)self initWithWeakTarget:v10 selector:a4 deferredStart:0 runloopModes:v8 preferredFramesPerSecond:PXDisplayLinkDefaultPreferredFramesPerSecond() queue:v9];

  return v11;
}

@end