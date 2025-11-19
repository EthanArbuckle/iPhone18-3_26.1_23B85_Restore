@interface ISDisplayLink
- (ISDisplayLink)initWithUpdateHandler:(id)a3 completionHandler:(id)a4;
- (void)_callUpdateHandler;
- (void)start;
- (void)stop;
@end

@implementation ISDisplayLink

- (void)_callUpdateHandler
{
  v3 = [(ISDisplayLink *)self updateHandler];
  v4 = v3;
  if (v3)
  {
    v5 = 0;
    (*(v3 + 16))(v3, &v5);
    if (v5 == 1)
    {
      [(ISDisplayLink *)self stop];
    }
  }
}

- (void)stop
{
  v4 = [(ISDisplayLink *)self completionHandler];
  if (v4)
  {
    v4[2]();
  }

  v3 = [(ISDisplayLink *)self displayLink];
  [v3 invalidate];

  [(ISDisplayLink *)self setDisplayLink:0];
  [(ISDisplayLink *)self setUpdateHandler:0];
  [(ISDisplayLink *)self setCompletionHandler:0];
}

- (void)start
{
  v3 = [(ISDisplayLink *)self displayLink];
  v2 = [MEMORY[0x277CBEB88] currentRunLoop];
  [v3 addToRunLoop:v2 forMode:*MEMORY[0x277CBE738]];
}

- (ISDisplayLink)initWithUpdateHandler:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = ISDisplayLink;
  v8 = [(ISDisplayLink *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(ISDisplayLink *)v8 setUpdateHandler:v6];
    [(ISDisplayLink *)v9 setCompletionHandler:v7];
    v10 = [MEMORY[0x277CD9E48] displayLinkWithTarget:v9 selector:sel__update_];
    [(ISDisplayLink *)v9 setDisplayLink:v10];
  }

  return v9;
}

@end