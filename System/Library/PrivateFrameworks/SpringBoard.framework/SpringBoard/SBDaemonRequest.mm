@interface SBDaemonRequest
+ (id)requestWithEnabler:(id)enabler disabler:(id)disabler;
- (void)dispatchDisablerOnQueue:(id)queue;
- (void)dispatchEnablerOnQueue:(id)queue;
@end

@implementation SBDaemonRequest

+ (id)requestWithEnabler:(id)enabler disabler:(id)disabler
{
  disablerCopy = disabler;
  enablerCopy = enabler;
  v7 = objc_alloc_init(SBDaemonRequest);
  [(SBDaemonRequest *)v7 setEnabler:enablerCopy];

  [(SBDaemonRequest *)v7 setDisabler:disablerCopy];

  return v7;
}

- (void)dispatchEnablerOnQueue:(id)queue
{
  queue = queue;
  v4 = MEMORY[0x223D6F7F0](self->_enabler);
  if (v4)
  {
    dispatch_async(queue, v4);
  }
}

- (void)dispatchDisablerOnQueue:(id)queue
{
  if (self->_disabler)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__SBDaemonRequest_dispatchDisablerOnQueue___block_invoke;
    block[3] = &unk_2783A8C18;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

void __43__SBDaemonRequest_dispatchDisablerOnQueue___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(*(a1 + 32) + 16) + 16))();

  objc_autoreleasePoolPop(v2);
}

@end