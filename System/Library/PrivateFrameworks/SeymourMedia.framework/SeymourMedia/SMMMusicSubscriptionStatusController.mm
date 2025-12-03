@interface SMMMusicSubscriptionStatusController
+ (void)requestSubscriptionCapabilitiesWithCompletion:(id)completion;
@end

@implementation SMMMusicSubscriptionStatusController

+ (void)requestSubscriptionCapabilitiesWithCompletion:(id)completion
{
  completionCopy = completion;
  mEMORY[0x277D7FB78] = [MEMORY[0x277D7FB78] sharedStatusController];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __86__SMMMusicSubscriptionStatusController_requestSubscriptionCapabilitiesWithCompletion___block_invoke;
  v6[3] = &unk_277DA2B28;
  v7 = completionCopy;
  v5 = completionCopy;
  [mEMORY[0x277D7FB78] getSubscriptionStatusWithCompletionHandler:v6];
}

uint64_t __86__SMMMusicSubscriptionStatusController_requestSubscriptionCapabilitiesWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2 && !a3)
  {
    v4 = a2;
    [v4 capabilities];
    [v4 capabilities];
  }

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

@end