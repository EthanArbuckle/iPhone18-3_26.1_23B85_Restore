@interface PFOSTransactionQueue
+ (id)sharedTransactionQueueForName:(id)name;
- (PFOSTransactionQueue)initWithTransactionName:(id)name;
- (id)description;
@end

@implementation PFOSTransactionQueue

+ (id)sharedTransactionQueueForName:(id)name
{
  nameCopy = name;
  if (sharedTransactionQueueForName__onceToken != -1)
  {
    +[PFOSTransactionQueue sharedTransactionQueueForName:];
  }

  if (![(__CFString *)nameCopy length])
  {

    nameCopy = @"DEFAULT_TX_QUEUE";
  }

  v4 = sharedTransactionQueueForName__nameToQueueWeakMap;
  objc_sync_enter(v4);
  v5 = [sharedTransactionQueueForName__nameToQueueWeakMap objectForKey:nameCopy];
  if (!v5)
  {
    v5 = [objc_alloc(objc_opt_class()) initWithTransactionName:nameCopy];
    [sharedTransactionQueueForName__nameToQueueWeakMap setObject:v5 forKey:nameCopy];
  }

  objc_sync_exit(v4);

  return v5;
}

uint64_t __54__PFOSTransactionQueue_sharedTransactionQueueForName___block_invoke()
{
  sharedTransactionQueueForName__nameToQueueWeakMap = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];

  return MEMORY[0x1EEE66BB8]();
}

- (PFOSTransactionQueue)initWithTransactionName:(id)name
{
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = PFOSTransactionQueue;
  v5 = [(PFOSTransactionQueue *)&v12 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    transactionName = v5->_transactionName;
    v5->_transactionName = v6;

    v8 = [@"PFOSTransaction-" stringByAppendingString:nameCopy];
    v9 = objc_opt_new();
    txOperationQueue = v5->_txOperationQueue;
    v5->_txOperationQueue = v9;

    [(NSOperationQueue *)v5->_txOperationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v5->_txOperationQueue setName:v8];
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v3 appendString:self->_transactionName withName:@"transactionName"];
  progress = [(NSOperationQueue *)self->_txOperationQueue progress];
  v5 = [v3 appendObject:progress withName:@"progress"];

  build = [v3 build];

  return build;
}

void __56__PFOSTransactionQueue__dispatchWork_waitUntilFinished___block_invoke(uint64_t a1)
{
  [*(a1 + 32) UTF8String];
  v2 = os_transaction_create();
  (*(*(a1 + 40) + 16))();
}

@end