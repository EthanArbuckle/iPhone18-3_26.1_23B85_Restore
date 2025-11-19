@interface SS
@end

@implementation SS

uint64_t __SS_SendStatusBarTapToScreenSharingServer_block_invoke(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_275BBF000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "helperToolConnection invalidated xpc connection", v3, 2u);
  }

  return [*(a1 + 32) setInvalidationHandler:0];
}

void __SS_SendStatusBarTapToScreenSharingServer_block_invoke_51(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = [v2 domain];
  v3 = [v2 code];

  NSLog(&cfstr_ConnectFailedD.isa, v4, v3);
}

@end