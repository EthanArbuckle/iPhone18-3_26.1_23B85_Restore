@interface LogCategory
@end

@implementation LogCategory

uint64_t __LogCategory_Unspecified_block_invoke()
{
  LogCategory_Unspecified_log = os_log_create("com.apple.icloud.SPFinder", "_");

  return MEMORY[0x2821F96F8]();
}

uint64_t __LogCategory_AdvertisementCache_block_invoke()
{
  LogCategory_AdvertisementCache_log = os_log_create("com.apple.icloud.SPFinder", "advertisementCache");

  return MEMORY[0x2821F96F8]();
}

@end