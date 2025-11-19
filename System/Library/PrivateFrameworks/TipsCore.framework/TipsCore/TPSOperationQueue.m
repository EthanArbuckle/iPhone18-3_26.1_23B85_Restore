@interface TPSOperationQueue
- (void)addOperationWithAsyncBlock:(id)a3;
- (void)setCompletionBlock:(id)a3;
@end

@implementation TPSOperationQueue

- (void)setCompletionBlock:(id)a3
{
  v8 = a3;
  v4 = [(TPSOperationQueueCountObserver *)self->_observer completionBlock];

  if (v4)
  {
    [(TPSOperationQueue *)self removeObserver:self->_observer forKeyPath:@"operationCount"];
  }

  if (v8)
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

  [(TPSOperationQueueCountObserver *)self->_observer setCompletionBlock:v8];
}

- (void)addOperationWithAsyncBlock:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[TPSAsyncBlockOperation alloc] initWithAsyncBlock:v4];

    [(TPSOperationQueue *)self addOperation:v5];
  }
}

@end