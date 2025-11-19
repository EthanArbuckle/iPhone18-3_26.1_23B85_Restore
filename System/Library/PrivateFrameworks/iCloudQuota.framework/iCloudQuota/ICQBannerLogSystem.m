@interface ICQBannerLogSystem
@end

@implementation ICQBannerLogSystem

uint64_t ___ICQBannerLogSystem_block_invoke()
{
  _ICQBannerLogSystem_log = os_log_create("com.apple.iCloudQuota", "banner");

  return MEMORY[0x2821F96F8]();
}

@end