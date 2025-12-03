@interface SiriSharedUIAssistantActivityAssertion
- (void)beginActivityWithReason:(id)reason;
- (void)endActivityWithReason:(id)reason;
@end

@implementation SiriSharedUIAssistantActivityAssertion

- (void)beginActivityWithReason:(id)reason
{
  reasonCopy = reason;
  v3 = reasonCopy;
  SRUIFInvokeOnMainQueue();
}

void __66__SiriSharedUIAssistantActivityAssertion_beginActivityWithReason___block_invoke(uint64_t a1)
{
  v2 = soft_SBUIGetUserAgent();
  v3 = [v2 isScreenOn];

  if ((v3 & 1) == 0)
  {
    v4 = soft_SBUIGetUserAgent();
    [v4 undimScreen];
  }

  v5 = soft_SBUIGetUserAgent();
  [v5 setIdleTimerDisabled:1 forReason:*(a1 + 32)];
}

- (void)endActivityWithReason:(id)reason
{
  reasonCopy = reason;
  v3 = reasonCopy;
  SRUIFInvokeOnMainQueue();
}

void __64__SiriSharedUIAssistantActivityAssertion_endActivityWithReason___block_invoke(uint64_t a1)
{
  v2 = soft_SBUIGetUserAgent();
  [v2 setIdleTimerDisabled:0 forReason:*(a1 + 32)];
}

@end