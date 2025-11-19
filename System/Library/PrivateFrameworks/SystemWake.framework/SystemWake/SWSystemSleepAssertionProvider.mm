@interface SWSystemSleepAssertionProvider
+ (id)sharedProvider;
- (id)acquirePreventSystemSleepAssertionWithIdentifier:(id)a3;
- (id)acquireSystemActivityAssertionWithIdentifier:(id)a3;
@end

@implementation SWSystemSleepAssertionProvider

+ (id)sharedProvider
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__SWSystemSleepAssertionProvider_sharedProvider__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_280D3F918 != -1)
  {
    dispatch_once(&qword_280D3F918, block);
  }

  v2 = _MergedGlobals_1;

  return v2;
}

uint64_t __48__SWSystemSleepAssertionProvider_sharedProvider__block_invoke(uint64_t a1)
{
  _MergedGlobals_1 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (id)acquirePreventSystemSleepAssertionWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[SWPreventSystemSleepAssertion alloc] initWithIdentifier:v3];
  [(SWPreventSystemSleepAssertion *)v4 acquireWithTimeout:0 handler:0.0];

  return v4;
}

- (id)acquireSystemActivityAssertionWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[SWSystemActivityAssertion alloc] initWithIdentifier:v3];
  [(SWSystemActivityAssertion *)v4 acquireWithTimeout:0 handler:0.0];

  return v4;
}

@end