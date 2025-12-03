@interface BABlockQueueManager
- (BABlockQueueManager)init;
- (id)blockQueueWithIdentifier:(id)identifier;
- (void)invalidateBlockQueue:(id)queue;
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

- (id)blockQueueWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = self->_identifiersToBlockQueues;
  objc_sync_enter(v5);
  identifiersToBlockQueues = [(BABlockQueueManager *)self identifiersToBlockQueues];
  v7 = [identifiersToBlockQueues objectForKey:identifierCopy];

  if (v7)
  {
    [v7 _increment];
    v8 = v7;
  }

  else
  {
    v8 = [[BABlockQueue alloc] initWithIdentifier:identifierCopy];
    [(BABlockQueue *)v8 _increment];
    identifiersToBlockQueues2 = [(BABlockQueueManager *)self identifiersToBlockQueues];
    [identifiersToBlockQueues2 setObject:v8 forKey:identifierCopy];
  }

  objc_sync_exit(v5);

  return v8;
}

- (void)invalidateBlockQueue:(id)queue
{
  queueCopy = queue;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"Caller invoked invalidateBlockQueue on BABlockQueueManager with an object that was not a BABlockQueue." userInfo:0];
    objc_exception_throw(v7);
  }

  v4 = self->_identifiersToBlockQueues;
  objc_sync_enter(v4);
  [queueCopy _decrement];
  if (![queueCopy queueRetainCount])
  {
    identifiersToBlockQueues = [(BABlockQueueManager *)self identifiersToBlockQueues];
    identifier = [queueCopy identifier];
    [identifiersToBlockQueues removeObjectForKey:identifier];

    [queueCopy drain];
  }

  objc_sync_exit(v4);
}

@end