@interface CTDataDelegate
+ (id)sharedInstance;
- (CTDataDelegate)init;
- (id)getCTClient;
- (id)getPreferredDataSubscriptionContext;
- (void)_initCTClient;
- (void)preferredDataSimChanged:(id)changed;
@end

@implementation CTDataDelegate

- (CTDataDelegate)init
{
  v6.receiver = self;
  v6.super_class = CTDataDelegate;
  v2 = [(CTDataDelegate *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.SoftwareUpdateServices.CTDataDelegate", 0);
    initiationQueue = v2->_initiationQueue;
    v2->_initiationQueue = v3;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance___once_2 != -1)
  {
    +[CTDataDelegate sharedInstance];
  }

  v3 = sharedInstance___instance_8;

  return v3;
}

uint64_t __32__CTDataDelegate_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CTDataDelegate);
  v1 = sharedInstance___instance_8;
  sharedInstance___instance_8 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)_initCTClient
{
  dispatch_assert_queue_V2(self->_initiationQueue);
  if (!self->_client)
  {
    v3 = [objc_alloc(MEMORY[0x277CC37B0]) initWithQueue:0];
    client = self->_client;
    self->_client = v3;

    MEMORY[0x2821F96F8](v3, client);
  }
}

- (id)getCTClient
{
  initiationQueue = self->_initiationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__CTDataDelegate_getCTClient__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_sync(initiationQueue, block);
  return self->_client;
}

- (id)getPreferredDataSubscriptionContext
{
  initiationQueue = self->_initiationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__CTDataDelegate_getPreferredDataSubscriptionContext__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_sync(initiationQueue, block);
  return self->_subscriptionContext;
}

void __53__CTDataDelegate_getPreferredDataSubscriptionContext__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[2])
  {
    [v2 _initCTClient];
    v3 = *(*(a1 + 32) + 24);
    v19 = 0;
    v4 = [v3 getPreferredDataSubscriptionContextSync:&v19];
    v5 = v19;
    v6 = *(a1 + 32);
    v7 = *(v6 + 16);
    *(v6 + 16) = v4;

    v8 = *(a1 + 32);
    if (v5)
    {
      v9 = *(v8 + 16);
      *(v8 + 16) = 0;

      SULogDebug(@"%s: %@\n", v10, v11, v12, v13, v14, v15, v16, "[CTDataDelegate getPreferredDataSubscriptionContext]_block_invoke");
    }

    else
    {
      v17 = *(v8 + 24);
      v18 = +[CTDataDelegate sharedInstance];
      [v17 setDelegate:v18];
    }
  }
}

- (void)preferredDataSimChanged:(id)changed
{
  changedCopy = changed;
  initiationQueue = self->_initiationQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__CTDataDelegate_preferredDataSimChanged___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = changedCopy;
  v6 = changedCopy;
  dispatch_sync(initiationQueue, v7);
}

@end