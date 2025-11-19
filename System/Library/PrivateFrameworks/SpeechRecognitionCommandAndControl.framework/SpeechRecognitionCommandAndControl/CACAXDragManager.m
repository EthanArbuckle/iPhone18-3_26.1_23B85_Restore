@interface CACAXDragManager
+ (id)sharedManager;
@end

@implementation CACAXDragManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__CACAXDragManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedManager_onceToken_3 != -1)
  {
    dispatch_once(&sharedManager_onceToken_3, block);
  }

  v2 = sharedManager_SharedManager;

  return v2;
}

uint64_t __33__CACAXDragManager_sharedManager__block_invoke(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  sharedManager_SharedManager = [v1 initWithMachServiceName:*MEMORY[0x277CE7BE0]];

  return MEMORY[0x2821F96F8]();
}

@end