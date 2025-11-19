@interface SBDaemonRequest
+ (id)requestWithEnabler:(id)a3 disabler:(id)a4;
- (void)dispatchDisablerOnQueue:(id)a3;
- (void)dispatchEnablerOnQueue:(id)a3;
@end

@implementation SBDaemonRequest

+ (id)requestWithEnabler:(id)a3 disabler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(SBDaemonRequest);
  [(SBDaemonRequest *)v7 setEnabler:v6];

  [(SBDaemonRequest *)v7 setDisabler:v5];

  return v7;
}

- (void)dispatchEnablerOnQueue:(id)a3
{
  queue = a3;
  v4 = MEMORY[0x223D6F7F0](self->_enabler);
  if (v4)
  {
    dispatch_async(queue, v4);
  }
}

- (void)dispatchDisablerOnQueue:(id)a3
{
  if (self->_disabler)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__SBDaemonRequest_dispatchDisablerOnQueue___block_invoke;
    block[3] = &unk_2783A8C18;
    block[4] = self;
    dispatch_async(a3, block);
  }
}

void __43__SBDaemonRequest_dispatchDisablerOnQueue___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(*(a1 + 32) + 16) + 16))();

  objc_autoreleasePoolPop(v2);
}

@end