@interface SRDRemoteIFClientWakeStore
+ (id)sharedInstance;
- (SRDRemoteIFClientWakeStore)init;
@end

@implementation SRDRemoteIFClientWakeStore

- (SRDRemoteIFClientWakeStore)init
{
  v3.receiver = self;
  v3.super_class = SRDRemoteIFClientWakeStore;
  return [(SRDRemoteIFClientWakeStore *)&v3 init];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken[0] != -1)
  {
    +[SRDRemoteIFClientWakeStore sharedInstance];
  }

  v3 = sharedInstance_sSharedInstance;

  return v3;
}

uint64_t __44__SRDRemoteIFClientWakeStore_sharedInstance__block_invoke()
{
  sharedInstance_sSharedInstance = objc_alloc_init(SRDRemoteIFClientWakeStore);

  return MEMORY[0x2821F96F8]();
}

@end