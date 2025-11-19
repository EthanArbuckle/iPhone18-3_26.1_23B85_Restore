@interface OS
@end

@implementation OS

void __46__OS_remote_service_proxySocketOverRemoteXPC___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 72);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v1 removeObject:WeakRetained];
}

@end