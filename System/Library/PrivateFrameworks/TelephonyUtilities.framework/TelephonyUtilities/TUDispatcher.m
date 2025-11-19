@interface TUDispatcher
+ (id)dispatcherWithIdentifier:(id)a3;
+ (id)dispatcherWithQueue:(id)a3;
- (TUDispatcher)init;
- (TUDispatcher)initWithIdentifier:(id)a3;
- (TUDispatcher)initWithQueue:(id)a3;
- (id)qosUserInteractiveDispatchBlockForBlock:(id)a3;
- (void)boostQualityOfService;
- (void)dispatchAsynchronousBlock:(id)a3;
- (void)dispatchSynchronousBlock:(id)a3;
@end

@implementation TUDispatcher

+ (id)dispatcherWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithIdentifier:v3];

  return v4;
}

+ (id)dispatcherWithQueue:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithQueue:v3];

  return v4;
}

- (TUDispatcher)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is not available for use. To create an object instance use the designated initializer.", "-[TUDispatcher init]"];
  NSLog(&cfstr_TuassertionFai.isa, v4);

  if (_TUAssertShouldCrashApplication())
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"TUDispatcher.m" lineNumber:49 description:{@"%s is not available for use. To create an object instance use the designated initializer.", "-[TUDispatcher init]"}];
  }

  return 0;
}

- (void)dispatchSynchronousBlock:(id)a3
{
  v4 = a3;
  v5 = [(TUDispatcher *)self dispatchQueue];
  dispatch_sync(v5, v4);
}

- (void)dispatchAsynchronousBlock:(id)a3
{
  v4 = a3;
  v5 = [(TUDispatcher *)self dispatchQueue];
  dispatch_async(v5, v4);
}

- (void)boostQualityOfService
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __37__TUDispatcher_boostQualityOfService__block_invoke;
  aBlock[3] = &unk_1E7424950;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = [(TUDispatcher *)self dispatchQueue];
  v5 = [(TUDispatcher *)self qosUserInteractiveDispatchBlockForBlock:v3];
  dispatch_async(v4, v5);
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

- (TUDispatcher)initWithIdentifier:(id)a3
{
  v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v6 = dispatch_queue_create([a3 UTF8String], v5);
  v7 = [(TUDispatcher *)self initWithQueue:v6];

  return v7;
}

- (TUDispatcher)initWithQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TUDispatcher;
  v6 = [(TUDispatcher *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dispatchQueue, a3);
  }

  return v7;
}

- (id)qosUserInteractiveDispatchBlockForBlock:(id)a3
{
  v3 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, a3);

  return v3;
}

@end