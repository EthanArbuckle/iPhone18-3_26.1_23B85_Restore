@interface ICQDaemonAlertMemoryInitOnce
@end

@implementation ICQDaemonAlertMemoryInitOnce

uint64_t ___ICQDaemonAlertMemoryInitOnce_block_invoke()
{
  v0 = objc_opt_new();
  v1 = _ICQDaemonAlertMemoryLock;
  _ICQDaemonAlertMemoryLock = v0;

  v2 = objc_opt_new();
  v3 = _ICQDaemonAlertMemoryDict;
  _ICQDaemonAlertMemoryDict = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

@end