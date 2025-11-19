@interface ICQSignpostLogSystem
@end

@implementation ICQSignpostLogSystem

uint64_t ___ICQSignpostLogSystem_block_invoke()
{
  v0 = os_log_create("com.apple.iCloudQuota", "core.signpost");
  v1 = _ICQSignpostLogSystem_log;
  _ICQSignpostLogSystem_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end