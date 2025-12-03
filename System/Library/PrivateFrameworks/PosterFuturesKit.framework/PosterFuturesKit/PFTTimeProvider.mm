@interface PFTTimeProvider
+ (PFTTimeProvider)defaultProvider;
@end

@implementation PFTTimeProvider

+ (PFTTimeProvider)defaultProvider
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__PFTTimeProvider_defaultProvider__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultProvider_pft_once_token_0 != -1)
  {
    dispatch_once(&defaultProvider_pft_once_token_0, block);
  }

  v2 = defaultProvider_pft_once_object_0;

  return v2;
}

uint64_t __34__PFTTimeProvider_defaultProvider__block_invoke(uint64_t a1)
{
  defaultProvider_pft_once_object_0 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

@end