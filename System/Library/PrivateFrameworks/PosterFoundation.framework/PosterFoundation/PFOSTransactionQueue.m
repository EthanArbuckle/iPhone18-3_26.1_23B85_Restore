@interface PFOSTransactionQueue
+ (id)sharedTransactionQueueForName:(id)a3;
- (PFOSTransactionQueue)initWithTransactionName:(id)a3;
- (id)description;
@end

@implementation PFOSTransactionQueue

+ (id)sharedTransactionQueueForName:(id)a3
{
  v3 = a3;
  if (sharedTransactionQueueForName__onceToken != -1)
  {
    +[PFOSTransactionQueue sharedTransactionQueueForName:];
  }

  if (![(__CFString *)v3 length])
  {

    v3 = @"DEFAULT_TX_QUEUE";
  }

  v4 = sharedTransactionQueueForName__nameToQueueWeakMap;
  objc_sync_enter(v4);
  v5 = [sharedTransactionQueueForName__nameToQueueWeakMap objectForKey:v3];
  if (!v5)
  {
    v5 = [objc_alloc(objc_opt_class()) initWithTransactionName:v3];
    [sharedTransactionQueueForName__nameToQueueWeakMap setObject:v5 forKey:v3];
  }

  objc_sync_exit(v4);

  return v5;
}

uint64_t __54__PFOSTransactionQueue_sharedTransactionQueueForName___block_invoke()
{
  sharedTransactionQueueForName__nameToQueueWeakMap = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];

  return MEMORY[0x1EEE66BB8]();
}

- (PFOSTransactionQueue)initWithTransactionName:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PFOSTransactionQueue;
  v5 = [(PFOSTransactionQueue *)&v12 init];
  if (v5)
  {
    v6 = [v4 copy];
    transactionName = v5->_transactionName;
    v5->_transactionName = v6;

    v8 = [@"PFOSTransaction-" stringByAppendingString:v4];
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
  v4 = [(NSOperationQueue *)self->_txOperationQueue progress];
  v5 = [v3 appendObject:v4 withName:@"progress"];

  v6 = [v3 build];

  return v6;
}

void __56__PFOSTransactionQueue__dispatchWork_waitUntilFinished___block_invoke(uint64_t a1)
{
  [*(a1 + 32) UTF8String];
  v2 = os_transaction_create();
  (*(*(a1 + 40) + 16))();
}

@end