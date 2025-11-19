@interface ICQGetLogSystem
@end

@implementation ICQGetLogSystem

uint64_t ___ICQGetLogSystem_block_invoke()
{
  _ICQGetLogSystem_log = os_log_create("com.apple.iCloudQuota", "core");

  return MEMORY[0x2821F96F8]();
}

@end