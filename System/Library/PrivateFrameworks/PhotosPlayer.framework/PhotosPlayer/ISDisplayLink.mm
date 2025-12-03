@interface ISDisplayLink
- (ISDisplayLink)initWithUpdateHandler:(id)handler completionHandler:(id)completionHandler;
- (void)_callUpdateHandler;
- (void)start;
- (void)stop;
@end

@implementation ISDisplayLink

- (void)_callUpdateHandler
{
  updateHandler = [(ISDisplayLink *)self updateHandler];
  v4 = updateHandler;
  if (updateHandler)
  {
    v5 = 0;
    (*(updateHandler + 16))(updateHandler, &v5);
    if (v5 == 1)
    {
      [(ISDisplayLink *)self stop];
    }
  }
}

- (void)stop
{
  completionHandler = [(ISDisplayLink *)self completionHandler];
  if (completionHandler)
  {
    completionHandler[2]();
  }

  displayLink = [(ISDisplayLink *)self displayLink];
  [displayLink invalidate];

  [(ISDisplayLink *)self setDisplayLink:0];
  [(ISDisplayLink *)self setUpdateHandler:0];
  [(ISDisplayLink *)self setCompletionHandler:0];
}

- (void)start
{
  displayLink = [(ISDisplayLink *)self displayLink];
  currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
  [displayLink addToRunLoop:currentRunLoop forMode:*MEMORY[0x277CBE738]];
}

- (ISDisplayLink)initWithUpdateHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v12.receiver = self;
  v12.super_class = ISDisplayLink;
  v8 = [(ISDisplayLink *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(ISDisplayLink *)v8 setUpdateHandler:handlerCopy];
    [(ISDisplayLink *)v9 setCompletionHandler:completionHandlerCopy];
    v10 = [MEMORY[0x277CD9E48] displayLinkWithTarget:v9 selector:sel__update_];
    [(ISDisplayLink *)v9 setDisplayLink:v10];
  }

  return v9;
}

@end