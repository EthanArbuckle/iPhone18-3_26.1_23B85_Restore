@interface TPSOperationQueue
- (void)addOperationWithAsyncBlock:(id)block;
- (void)setCompletionBlock:(id)block;
@end

@implementation TPSOperationQueue

- (void)setCompletionBlock:(id)block
{
  blockCopy = block;
  completionBlock = [(TPSOperationQueueCountObserver *)self->_observer completionBlock];

  if (completionBlock)
  {
    [(TPSOperationQueue *)self removeObserver:self->_observer forKeyPath:@"operationCount"];
  }

  if (blockCopy)
  {
    observer = self->_observer;
    if (!observer)
    {
      v6 = [[TPSOperationQueueCountObserver alloc] initWithQueue:self];
      v7 = self->_observer;
      self->_observer = v6;

      observer = self->_observer;
    }

    [(TPSOperationQueue *)self addObserver:observer forKeyPath:@"operationCount" options:1 context:0];
  }

  [(TPSOperationQueueCountObserver *)self->_observer setCompletionBlock:blockCopy];
}

- (void)addOperationWithAsyncBlock:(id)block
{
  if (block)
  {
    blockCopy = block;
    v5 = [[TPSAsyncBlockOperation alloc] initWithAsyncBlock:blockCopy];

    [(TPSOperationQueue *)self addOperation:v5];
  }
}

@end