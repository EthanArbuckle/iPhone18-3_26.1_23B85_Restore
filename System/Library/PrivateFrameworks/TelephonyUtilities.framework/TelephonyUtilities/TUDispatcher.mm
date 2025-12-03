@interface TUDispatcher
+ (id)dispatcherWithIdentifier:(id)identifier;
+ (id)dispatcherWithQueue:(id)queue;
- (TUDispatcher)init;
- (TUDispatcher)initWithIdentifier:(id)identifier;
- (TUDispatcher)initWithQueue:(id)queue;
- (id)qosUserInteractiveDispatchBlockForBlock:(id)block;
- (void)boostQualityOfService;
- (void)dispatchAsynchronousBlock:(id)block;
- (void)dispatchSynchronousBlock:(id)block;
@end

@implementation TUDispatcher

+ (id)dispatcherWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [objc_alloc(objc_opt_class()) initWithIdentifier:identifierCopy];

  return v4;
}

+ (id)dispatcherWithQueue:(id)queue
{
  queueCopy = queue;
  v4 = [objc_alloc(objc_opt_class()) initWithQueue:queueCopy];

  return v4;
}

- (TUDispatcher)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is not available for use. To create an object instance use the designated initializer.", "-[TUDispatcher init]"];
  NSLog(&cfstr_TuassertionFai.isa, v4);

  if (_TUAssertShouldCrashApplication())
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TUDispatcher.m" lineNumber:49 description:{@"%s is not available for use. To create an object instance use the designated initializer.", "-[TUDispatcher init]"}];
  }

  return 0;
}

- (void)dispatchSynchronousBlock:(id)block
{
  blockCopy = block;
  dispatchQueue = [(TUDispatcher *)self dispatchQueue];
  dispatch_sync(dispatchQueue, blockCopy);
}

- (void)dispatchAsynchronousBlock:(id)block
{
  blockCopy = block;
  dispatchQueue = [(TUDispatcher *)self dispatchQueue];
  dispatch_async(dispatchQueue, blockCopy);
}

- (void)boostQualityOfService
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __37__TUDispatcher_boostQualityOfService__block_invoke;
  aBlock[3] = &unk_1E7424950;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  dispatchQueue = [(TUDispatcher *)self dispatchQueue];
  v5 = [(TUDispatcher *)self qosUserInteractiveDispatchBlockForBlock:v3];
  dispatch_async(dispatchQueue, v5);
}

void __37__TUDispatcher_boostQualityOfService__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__TUDispatcher_boostQualityOfService__block_invoke_2;
  block[3] = &unk_1E7424950;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __37__TUDispatcher_boostQualityOfService__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"TUDispatcherDidFinishBoostQualityOfServiceNotification" object:*(a1 + 32)];
}

- (TUDispatcher)initWithIdentifier:(id)identifier
{
  v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v6 = dispatch_queue_create([identifier UTF8String], v5);
  v7 = [(TUDispatcher *)self initWithQueue:v6];

  return v7;
}

- (TUDispatcher)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = TUDispatcher;
  v6 = [(TUDispatcher *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dispatchQueue, queue);
  }

  return v7;
}

- (id)qosUserInteractiveDispatchBlockForBlock:(id)block
{
  v3 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, block);

  return v3;
}

@end