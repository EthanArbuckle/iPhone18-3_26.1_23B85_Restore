@interface NCLayoutLoopDetector
- (BOOL)layoutInProgressContainsNotificationRequest:(id)request;
- (NCLayoutLoopDetector)init;
- (id)_savedNotificationLayoutsInProgress;
- (void)_saveNotificationLayoutsInProgress;
- (void)addNotificationRequestToLayoutsInProgress:(id)progress;
- (void)removeNotificationRequestFromLayoutsInProgress:(id)progress;
@end

@implementation NCLayoutLoopDetector

- (NCLayoutLoopDetector)init
{
  v12.receiver = self;
  v12.super_class = NCLayoutLoopDetector;
  v2 = [(NCLayoutLoopDetector *)&v12 init];
  v3 = v2;
  if (v2)
  {
    _savedNotificationLayoutsInProgress = [(NCLayoutLoopDetector *)v2 _savedNotificationLayoutsInProgress];
    if (_savedNotificationLayoutsInProgress)
    {
      v5 = _savedNotificationLayoutsInProgress;
    }

    else
    {
      v5 = MEMORY[0x277CBEBF8];
    }

    v6 = [v5 mutableCopy];
    notificationLayoutsInProgress = v3->_notificationLayoutsInProgress;
    v3->_notificationLayoutsInProgress = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.UserNotificationsKit.NCLayoutLoopDetector", v8);
    queue = v3->_queue;
    v3->_queue = v9;
  }

  return v3;
}

- (BOOL)layoutInProgressContainsNotificationRequest:(id)request
{
  notificationLayoutsInProgress = self->_notificationLayoutsInProgress;
  notificationIdentifier = [request notificationIdentifier];
  LOBYTE(notificationLayoutsInProgress) = [(NSMutableArray *)notificationLayoutsInProgress containsObject:notificationIdentifier];

  return notificationLayoutsInProgress;
}

- (void)addNotificationRequestToLayoutsInProgress:(id)progress
{
  progressCopy = progress;
  notificationLayoutsInProgress = self->_notificationLayoutsInProgress;
  v9 = progressCopy;
  notificationIdentifier = [progressCopy notificationIdentifier];
  LOBYTE(notificationLayoutsInProgress) = [(NSMutableArray *)notificationLayoutsInProgress containsObject:notificationIdentifier];

  if ((notificationLayoutsInProgress & 1) == 0)
  {
    v7 = self->_notificationLayoutsInProgress;
    notificationIdentifier2 = [v9 notificationIdentifier];
    [(NSMutableArray *)v7 addObject:notificationIdentifier2];

    [(NCLayoutLoopDetector *)self _saveNotificationLayoutsInProgress];
  }
}

- (void)removeNotificationRequestFromLayoutsInProgress:(id)progress
{
  progressCopy = progress;
  notificationLayoutsInProgress = self->_notificationLayoutsInProgress;
  v9 = progressCopy;
  notificationIdentifier = [progressCopy notificationIdentifier];
  LODWORD(notificationLayoutsInProgress) = [(NSMutableArray *)notificationLayoutsInProgress containsObject:notificationIdentifier];

  if (notificationLayoutsInProgress)
  {
    v7 = self->_notificationLayoutsInProgress;
    notificationIdentifier2 = [v9 notificationIdentifier];
    [(NSMutableArray *)v7 removeObject:notificationIdentifier2];

    [(NCLayoutLoopDetector *)self _saveNotificationLayoutsInProgress];
  }
}

- (id)_savedNotificationLayoutsInProgress
{
  objc_opt_class();
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"NCNotificationLayoutsInProgress"];
  v4 = UNSafeCast();

  return v4;
}

- (void)_saveNotificationLayoutsInProgress
{
  if ([(NSMutableArray *)self->_notificationLayoutsInProgress count])
  {
    v3 = [(NSMutableArray *)self->_notificationLayoutsInProgress copy];
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__NCLayoutLoopDetector__saveNotificationLayoutsInProgress__block_invoke;
    block[3] = &unk_279E0D9C8;
    v8 = v3;
    v5 = v3;
    dispatch_async(queue, block);
  }

  else
  {
    v6 = self->_queue;

    dispatch_async(v6, &__block_literal_global_1);
  }
}

void __58__NCLayoutLoopDetector__saveNotificationLayoutsInProgress__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v2 setObject:*(a1 + 32) forKey:@"NCNotificationLayoutsInProgress"];
}

void __58__NCLayoutLoopDetector__saveNotificationLayoutsInProgress__block_invoke_2()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v0 removeObjectForKey:@"NCNotificationLayoutsInProgress"];
}

@end