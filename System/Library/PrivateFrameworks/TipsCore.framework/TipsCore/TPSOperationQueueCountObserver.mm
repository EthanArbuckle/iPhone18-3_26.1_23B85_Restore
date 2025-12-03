@interface TPSOperationQueueCountObserver
- (TPSOperationQueue)operationQueue;
- (TPSOperationQueueCountObserver)initWithQueue:(id)queue;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation TPSOperationQueueCountObserver

- (void)dealloc
{
  if (self->_completionBlock)
  {
    WeakRetained = objc_loadWeakRetained(&self->_operationQueue);
    [WeakRetained removeObserver:self forKeyPath:@"operationCount"];

    completionBlock = self->_completionBlock;
    self->_completionBlock = 0;
  }

  v5.receiver = self;
  v5.super_class = TPSOperationQueueCountObserver;
  [(TPSOperationQueueCountObserver *)&v5 dealloc];
}

- (TPSOperationQueueCountObserver)initWithQueue:(id)queue
{
  queueCopy = queue;
  v8.receiver = self;
  v8.super_class = TPSOperationQueueCountObserver;
  v5 = [(TPSOperationQueueCountObserver *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_operationQueue, queueCopy);
  }

  return v6;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"operationCount"])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __81__TPSOperationQueueCountObserver_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_1E8101390;
    v15 = changeCopy;
    selfCopy = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = TPSOperationQueueCountObserver;
    [(TPSOperationQueueCountObserver *)&v13 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

uint64_t __81__TPSOperationQueueCountObserver_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
  v3 = [v2 unsignedIntegerValue];

  if (!v3)
  {
    if ([*(a1 + 40) lastOperationCount])
    {
      v6 = [*(a1 + 40) completionBlock];

      if (v6)
      {
        v7 = [*(a1 + 40) completionBlock];
        v7[2]();
      }
    }
  }

  v4 = *(a1 + 40);

  return [v4 setLastOperationCount:v3];
}

- (TPSOperationQueue)operationQueue
{
  WeakRetained = objc_loadWeakRetained(&self->_operationQueue);

  return WeakRetained;
}

@end