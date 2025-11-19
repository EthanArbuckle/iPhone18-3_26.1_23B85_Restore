@interface SBXXAppSwitcherServiceRegister
@end

@implementation SBXXAppSwitcherServiceRegister

void ___SBXXAppSwitcherServiceRegister_block_invoke(uint64_t a1)
{
  v2 = +[SBAppSwitcherServiceManager sharedInstance];
  [v2 registerService:*(a1 + 32)];
}

void ___SBXXAppSwitcherServiceRegister_block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___SBXXAppSwitcherServiceRegister_block_invoke_3;
  block[3] = &unk_2783A8C18;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void ___SBXXAppSwitcherServiceRegister_block_invoke_3(uint64_t a1)
{
  v2 = +[SBAppSwitcherServiceManager sharedInstance];
  [v2 unregisterService:*(a1 + 32)];
}

@end