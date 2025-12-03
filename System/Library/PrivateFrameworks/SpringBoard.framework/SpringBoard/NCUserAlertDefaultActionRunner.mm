@interface NCUserAlertDefaultActionRunner
- (void)executeAction:(id)action fromOrigin:(id)origin endpoint:(id)endpoint withParameters:(id)parameters completion:(id)completion;
@end

@implementation NCUserAlertDefaultActionRunner

- (void)executeAction:(id)action fromOrigin:(id)origin endpoint:(id)endpoint withParameters:(id)parameters completion:(id)completion
{
  completionCopy = completion;
  alertItem = [(NCUserAlertActionRunner *)self alertItem];
  if (alertItem)
  {
    v10 = objc_alloc_init(SBLockScreenUnlockRequest);
    [(SBLockScreenUnlockRequest *)v10 setSource:10];
    [(SBLockScreenUnlockRequest *)v10 setIntent:3];
    [(SBLockScreenUnlockRequest *)v10 setName:@"NCUserAlertDefaultActionRunner"];
    v11 = +[SBLockScreenManager sharedInstance];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __94__NCUserAlertDefaultActionRunner_executeAction_fromOrigin_endpoint_withParameters_completion___block_invoke;
    v12[3] = &unk_2783A9C98;
    v13 = alertItem;
    v14 = completionCopy;
    [v11 unlockWithRequest:v10 completion:v12];
  }
}

uint64_t __94__NCUserAlertDefaultActionRunner_executeAction_fromOrigin_endpoint_withParameters_completion___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) performUnlockAction];
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

@end