@interface TSKThreadDispatcher
+ (id)sharedInstance;
- (void)dispatch:(id)dispatch;
- (void)dispatchSelector:(SEL)selector target:(id)target argument:(id)argument;
@end

@implementation TSKThreadDispatcher

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__TSKThreadDispatcher_sharedInstance__block_invoke;
  block[3] = &unk_279D46770;
  block[4] = self;
  if (sharedInstance_once != -1)
  {
    dispatch_once(&sharedInstance_once, block);
  }

  return sharedInstance_sInstance;
}

id __37__TSKThreadDispatcher_sharedInstance__block_invoke(uint64_t a1)
{
  result = objc_alloc_init(*(a1 + 32));
  sharedInstance_sInstance = result;
  return result;
}

- (void)dispatch:(id)dispatch
{
  p_dispatchQueue = [(TSKThreadDispatcher *)self p_dispatchQueue];

  dispatch_async(p_dispatchQueue, dispatch);
}

- (void)dispatchSelector:(SEL)selector target:(id)target argument:(id)argument
{
  p_dispatchQueue = [(TSKThreadDispatcher *)self p_dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__TSKThreadDispatcher_dispatchSelector_target_argument___block_invoke;
  block[3] = &unk_279D47668;
  block[5] = argument;
  block[6] = selector;
  block[4] = target;
  dispatch_async(p_dispatchQueue, block);
}

@end