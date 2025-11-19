@interface SRUIFAssetUtilities
+ (id)sharedInstance;
- (SRUIFAssetUtilities)init;
@end

@implementation SRUIFAssetUtilities

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__SRUIFAssetUtilities_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_1 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_1, block);
  }

  v2 = sharedInstance_sSharedInstance;

  return v2;
}

uint64_t __37__SRUIFAssetUtilities_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sSharedInstance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (SRUIFAssetUtilities)init
{
  v6.receiver = self;
  v6.super_class = SRUIFAssetUtilities;
  v2 = [(SRUIFAssetUtilities *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D77A10]);
    assetUtilities = v2->_assetUtilities;
    v2->_assetUtilities = v3;
  }

  return v2;
}

@end