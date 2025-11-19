@interface PUDisplayLink
- (PUDisplayLink)initWithUpdateHandler:(id)a3 completionHandler:(id)a4;
- (void)_update:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation PUDisplayLink

- (void)_update:(id)a3
{
  v6 = 0;
  v4 = [(PUDisplayLink *)self updateHandler];

  if (v4)
  {
    v5 = [(PUDisplayLink *)self updateHandler];
    (v5)[2](v5, &v6);

    if (v6)
    {
      [(PUDisplayLink *)self stop];
    }
  }
}

- (void)stop
{
  v3 = [(PUDisplayLink *)self completionHandler];

  if (v3)
  {
    v4 = [(PUDisplayLink *)self completionHandler];
    v4[2]();
  }

  v5 = [(PUDisplayLink *)self displayLink];
  [v5 invalidate];

  [(PUDisplayLink *)self setDisplayLink:0];
  [(PUDisplayLink *)self setUpdateHandler:0];

  [(PUDisplayLink *)self setCompletionHandler:0];
}

- (void)start
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"PUDisplayLinkStartedNotification" object:self];

  v5 = [(PUDisplayLink *)self displayLink];
  v4 = [MEMORY[0x1E695DFD0] currentRunLoop];
  [v5 addToRunLoop:v4 forMode:*MEMORY[0x1E695DA28]];
}

- (PUDisplayLink)initWithUpdateHandler:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PUDisplayLink;
  v8 = [(PUDisplayLink *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(PUDisplayLink *)v8 setUpdateHandler:v6];
    [(PUDisplayLink *)v9 setCompletionHandler:v7];
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