@interface ISDeferredDealloc
+ (id)sharedInstance;
- (ISDeferredDealloc)init;
- (void)_performDeferredDealloc:(id)dealloc;
- (void)_performDeferredDealloc:(id)dealloc withDelay:(double)delay;
- (void)dealloc;
@end

@implementation ISDeferredDealloc

- (void)dealloc
{
  dispatch_release(self->_deferredDeallocQueue);
  self->_deferredDeallocQueue = 0;
  v3.receiver = self;
  v3.super_class = ISDeferredDealloc;
  [(ISDeferredDealloc *)&v3 dealloc];
}

- (void)_performDeferredDealloc:(id)dealloc
{
  if (dealloc)
  {
    deallocCopy = dealloc;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __45__ISDeferredDealloc__performDeferredDealloc___block_invoke;
    v6[3] = &unk_279A2A348;
    v6[4] = self;
    v6[5] = dealloc;
    dispatch_async(MEMORY[0x277D85CD0], v6);
  }
}

void __45__ISDeferredDealloc__performDeferredDealloc___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__ISDeferredDealloc__performDeferredDealloc___block_invoke_2;
  block[3] = &unk_279A2A180;
  block[4] = *(a1 + 40);
  dispatch_async(v1, block);
}

- (void)_performDeferredDealloc:(id)dealloc withDelay:(double)delay
{
  if (dealloc)
  {
    deallocCopy = dealloc;
    v8 = dispatch_time(0, (delay * 1000000000.0));
    deferredDeallocQueue = self->_deferredDeallocQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__ISDeferredDealloc__performDeferredDealloc_withDelay___block_invoke;
    block[3] = &unk_279A2A180;
    block[4] = dealloc;
    dispatch_after(v8, deferredDeallocQueue, block);
  }
}

- (ISDeferredDealloc)init
{
  v5.receiver = self;
  v5.super_class = ISDeferredDealloc;
  v2 = [(ISDeferredDealloc *)&v5 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v2->_deferredDeallocQueue = dispatch_queue_create("com.apple.photos.deferred-dealloc", v3);
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global_492);
  }

  return sharedInstance__sharedInstance;
}

ISDeferredDealloc *__35__ISDeferredDealloc_sharedInstance__block_invoke()
{
  result = objc_alloc_init(ISDeferredDealloc);
  sharedInstance__sharedInstance = result;
  return result;
}

@end