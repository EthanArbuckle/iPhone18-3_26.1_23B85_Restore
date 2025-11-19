@interface WFLoggerBase
- (unsigned)WFIsInternalInstall;
@end

@implementation WFLoggerBase

- (unsigned)WFIsInternalInstall
{
  self->_internalInstall = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__WFLoggerBase_WFIsInternalInstall__block_invoke;
  block[3] = &unk_2789C6808;
  block[4] = self;
  if (WFIsInternalInstall___internalInstallOnceToken != -1)
  {
    dispatch_once(&WFIsInternalInstall___internalInstallOnceToken, block);
  }

  return self->_internalInstall;
}

uint64_t __35__WFLoggerBase_WFIsInternalInstall__block_invoke(uint64_t a1)
{
  result = MGGetBoolAnswer();
  *(*(a1 + 32) + 16) = result;
  return result;
}

@end