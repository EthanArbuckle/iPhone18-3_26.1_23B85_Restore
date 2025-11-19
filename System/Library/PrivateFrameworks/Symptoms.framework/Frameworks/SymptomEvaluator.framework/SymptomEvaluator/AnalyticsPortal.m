@interface AnalyticsPortal
+ (id)sharedInstance;
+ (void)clientTransactionsRelease;
+ (void)shutdown;
- (void)clientTransactionsRelease;
- (void)shutdown;
@end

@implementation AnalyticsPortal

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__AnalyticsPortal_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_pred_2 != -1)
  {
    dispatch_once(&sharedInstance_pred_2, block);
  }

  v2 = sharedInstance_sharedInstance_2;

  return v2;
}

uint64_t __33__AnalyticsPortal_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedInstance_2 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (void)clientTransactionsRelease
{
  listener = self->listener;
  if (listener)
  {
    [(NSXPCListener *)listener invalidate];
    si = self->si;

    [(ServiceImpl *)si clientTransactionsRelease];
  }
}

- (void)shutdown
{
  if (self->listener)
  {
    [(ServiceImpl *)self->si shutdown];
    si = self->si;
    self->si = 0;

    listener = self->listener;
    self->listener = 0;
  }
}

+ (void)clientTransactionsRelease
{
  v2 = +[AnalyticsPortal sharedInstance];
  [v2 clientTransactionsRelease];
}

+ (void)shutdown
{
  v2 = +[AnalyticsPortal sharedInstance];
  [v2 shutdown];
}

@end