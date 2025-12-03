@interface PUDisplayLink
- (PUDisplayLink)initWithUpdateHandler:(id)handler completionHandler:(id)completionHandler;
- (void)_update:(id)_update;
- (void)start;
- (void)stop;
@end

@implementation PUDisplayLink

- (void)_update:(id)_update
{
  v6 = 0;
  updateHandler = [(PUDisplayLink *)self updateHandler];

  if (updateHandler)
  {
    updateHandler2 = [(PUDisplayLink *)self updateHandler];
    (updateHandler2)[2](updateHandler2, &v6);

    if (v6)
    {
      [(PUDisplayLink *)self stop];
    }
  }
}

- (void)stop
{
  completionHandler = [(PUDisplayLink *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(PUDisplayLink *)self completionHandler];
    completionHandler2[2]();
  }

  displayLink = [(PUDisplayLink *)self displayLink];
  [displayLink invalidate];

  [(PUDisplayLink *)self setDisplayLink:0];
  [(PUDisplayLink *)self setUpdateHandler:0];

  [(PUDisplayLink *)self setCompletionHandler:0];
}

- (void)start
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"PUDisplayLinkStartedNotification" object:self];

  displayLink = [(PUDisplayLink *)self displayLink];
  currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
  [displayLink addToRunLoop:currentRunLoop forMode:*MEMORY[0x1E695DA28]];
}

- (PUDisplayLink)initWithUpdateHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v12.receiver = self;
  v12.super_class = PUDisplayLink;
  v8 = [(PUDisplayLink *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(PUDisplayLink *)v8 setUpdateHandler:handlerCopy];
    [(PUDisplayLink *)v9 setCompletionHandler:completionHandlerCopy];
    v10 = [MEMORY[0x1E6979330] displayLinkWithTarget:v9 selector:sel__update_];
    if ([MEMORY[0x1E69C44C8] highFramerateRequiresReasonAndRange])
    {
      [v10 setHighFrameRateReason:2228228];
      PXFrameRateRangeTypeGetCAFrameRateRange();
      [v10 setPreferredFrameRateRange:?];
    }

    [(PUDisplayLink *)v9 setDisplayLink:v10];
  }

  return v9;
}

@end