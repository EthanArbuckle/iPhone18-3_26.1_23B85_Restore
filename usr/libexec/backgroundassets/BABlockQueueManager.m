@interface BABlockQueueManager
- (BABlockQueueManager)init;
- (id)blockQueueWithIdentifier:(id)a3;
- (void)invalidateBlockQueue:(id)a3;
@end

@implementation BABlockQueueManager

- (BABlockQueueManager)init
{
  v6.receiver = self;
  v6.super_class = BABlockQueueManager;
  v2 = [(BABlockQueueManager *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    identifiersToBlockQueues = v2->_identifiersToBlockQueues;
    v2->_identifiersToBlockQueues = v3;
  }

  return v2;
}

- (id)blockQueueWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = self->_identifiersToBlockQueues;
  objc_sync_enter(v5);
  v6 = [(BABlockQueueManager *)self identifiersToBlockQueues];
  v7 = [v6 objectForKey:v4];

  if (v7)
  {
    [v7 _increment];
    v8 = v7;
  }

  else
  {
    v8 = [[BABlockQueue alloc] initWithIdentifier:v4];
    [(BABlockQueue *)v8 _increment];
    v9 = [(BABlockQueueManager *)self identifiersToBlockQueues];
    [v9 setObject:v8 forKey:v4];
  }

  objc_sync_exit(v5);

  return v8;
}

- (void)invalidateBlockQueue:(id)a3
{
  v8 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"Caller invoked invalidateBlockQueue on BABlockQueueManager with an object that was not a BABlockQueue." userInfo:0];
    objc_exception_throw(v7);
  }

  v4 = self->_identifiersToBlockQueues;
  objc_sync_enter(v4);
  [v8 _decrement];
  if (![v8 queueRetainCount])
  {
    v5 = [(BABlockQueueManager *)self identifiersToBlockQueues];
    v6 = [v8 identifier];
    [v5 removeObjectForKey:v6];

    [v8 drain];
  }

  objc_sync_exit(v4);
}

@end