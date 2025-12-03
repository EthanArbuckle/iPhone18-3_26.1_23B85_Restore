@interface ISOperationQueue
+ (id)mainQueue;
- (ISOperationQueue)init;
- (void)addOperation:(id)operation;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation ISOperationQueue

+ (id)mainQueue
{
  pthread_once(&mainQueue_sInstanceGuard, __CreateMainQueue);
  v2 = __MainQueue;

  return v2;
}

- (ISOperationQueue)init
{
  __ISRecordSPIClassUsage(self);
  v7.receiver = self;
  v7.super_class = ISOperationQueue;
  v3 = [(ISOperationQueue *)&v7 init];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCABD8]);
    queue = v3->_queue;
    v3->_queue = v4;

    [(NSOperationQueue *)v3->_queue setMaxConcurrentOperationCount:3];
    [(NSOperationQueue *)v3->_queue addObserver:v3 forKeyPath:@"operationCount" options:0 context:0];
  }

  return v3;
}

- (void)dealloc
{
  [(NSOperationQueue *)self->_queue removeObserver:self forKeyPath:@"operationCount" context:0];
  [(NSOperationQueue *)self->_queue cancelAllOperations];
  v3.receiver = self;
  v3.super_class = ISOperationQueue;
  [(ISOperationQueue *)&v3 dealloc];
}

- (void)addOperation:(id)operation
{
  operationCopy = operation;
  v4 = +[ISUniqueOperationManager sharedInstance];
  [v4 checkInOperation:operationCopy];

  [(NSOperationQueue *)self->_queue addOperation:operationCopy];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"ISOperationQueueOperationCountChangedNotification" object:self];
}

@end