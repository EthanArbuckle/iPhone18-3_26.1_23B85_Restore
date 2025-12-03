@interface CloudLibraryConcurrentOperation
- (void)finish;
- (void)start;
@end

@implementation CloudLibraryConcurrentOperation

- (void)finish
{
  v3 = NSStringFromSelector("isExecuting");
  [(CloudLibraryConcurrentOperation *)self willChangeValueForKey:v3];

  self->_executing = 0;
  v4 = NSStringFromSelector("isExecuting");
  [(CloudLibraryConcurrentOperation *)self didChangeValueForKey:v4];

  v5 = NSStringFromSelector("isFinished");
  [(CloudLibraryConcurrentOperation *)self willChangeValueForKey:v5];

  self->_finished = 1;
  v6 = NSStringFromSelector("isFinished");
  [(CloudLibraryConcurrentOperation *)self didChangeValueForKey:v6];
}

- (void)start
{
  isCancelled = [(CloudLibraryConcurrentOperation *)self isCancelled];
  if (isCancelled)
  {
    v4 = &OBJC_IVAR___CloudLibraryConcurrentOperation__finished;
  }

  else
  {
    v4 = &OBJC_IVAR___CloudLibraryConcurrentOperation__executing;
  }

  v5 = &selRef_isFinished;
  if (!isCancelled)
  {
    v5 = &selRef_isExecuting;
  }

  v6 = *v5;
  v7 = NSStringFromSelector(*v5);
  [(CloudLibraryConcurrentOperation *)self willChangeValueForKey:v7];

  *(&self->super.super.super.isa + *v4) = 1;
  v8 = NSStringFromSelector(v6);
  [(CloudLibraryConcurrentOperation *)self didChangeValueForKey:v8];
}

@end