@interface UIPDFPageRenderOperation
- (UIPDFPageRenderOperation)initWithJob:(id)a3;
- (void)completeOperation;
- (void)dealloc;
- (void)main;
- (void)start;
@end

@implementation UIPDFPageRenderOperation

- (UIPDFPageRenderOperation)initWithJob:(id)a3
{
  v7.receiver = self;
  v7.super_class = UIPDFPageRenderOperation;
  v4 = [(UIPDFPageRenderOperation *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(UIPDFPageRenderOperation *)v4 setJob:a3];
  }

  return v5;
}

- (void)dealloc
{
  [(UIPDFPageRenderOperation *)self setJob:0];
  v3.receiver = self;
  v3.super_class = UIPDFPageRenderOperation;
  [(UIPDFPageRenderOperation *)&v3 dealloc];
}

- (void)start
{
  if ([(UIPDFPageRenderOperation *)self isCancelled])
  {
    v3 = @"isFinished";
    [(UIPDFPageRenderOperation *)self willChangeValueForKey:@"isFinished"];
    v4 = &OBJC_IVAR___UIPDFPageRenderOperation_finished;
  }

  else
  {
    v3 = @"isExecuting";
    [(UIPDFPageRenderOperation *)self willChangeValueForKey:@"isExecuting"];
    [MEMORY[0x1E696AF00] detachNewThreadSelector:sel_main toTarget:self withObject:0];
    v4 = &OBJC_IVAR___UIPDFPageRenderOperation_executing;
  }

  *(&self->super.super.isa + *v4) = 1;

  [(UIPDFPageRenderOperation *)self didChangeValueForKey:v3];
}

- (void)main
{
  v3 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if (([(UIPDFPageRenderOperation *)self isCancelled]& 1) == 0)
  {
    [(UIPDFPageRenderJob *)[(UIPDFPageRenderOperation *)self job] renderImage];
  }

  if (([(UIPDFPageRenderOperation *)self isCancelled]& 1) == 0)
  {
    [(UIPDFPageRenderJob *)[(UIPDFPageRenderOperation *)self job] sendImage];
  }

  [(UIPDFPageRenderOperation *)self completeOperation];
}

- (void)completeOperation
{
  [(UIPDFPageRenderOperation *)self willChangeValueForKey:@"isFinished"];
  [(UIPDFPageRenderOperation *)self willChangeValueForKey:@"isExecuting"];
  self->executing = 0;
  self->finished = 1;
  [(UIPDFPageRenderOperation *)self didChangeValueForKey:@"isExecuting"];

  [(UIPDFPageRenderOperation *)self didChangeValueForKey:@"isFinished"];
}

@end