@interface SBXXAcquireFocusPreventingFullScreenPresentationAssertion
@end

@implementation SBXXAcquireFocusPreventingFullScreenPresentationAssertion

void ___SBXXAcquireFocusPreventingFullScreenPresentationAssertion_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = SBLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v14 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "Disabling certain system gestures for assertion with reason=%@", buf, 0xCu);
  }

  v4 = [MEMORY[0x277CBEB98] setWithArray:&unk_28336DE00];
  v5 = +[SBSystemGestureManager mainDisplayManager];
  v6 = [v5 acquireSystemGestureDisableAssertionForReason:*(a1 + 32) forSystemGestureTypes:v4];

  v7 = [objc_alloc(MEMORY[0x277CF0C60]) initWithPort:*(a1 + 40)];
  v8 = MEMORY[0x277CF0CB8];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___SBXXAcquireFocusPreventingFullScreenPresentationAssertion_block_invoke_186;
  v10[3] = &unk_2783A92D8;
  v11 = *(a1 + 32);
  v12 = v6;
  v9 = v6;
  [v8 monitorSendRight:v7 withHandler:v10];
}

void ___SBXXAcquireFocusPreventingFullScreenPresentationAssertion_block_invoke_186(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = ___SBXXAcquireFocusPreventingFullScreenPresentationAssertion_block_invoke_2;
  v2[3] = &unk_2783A92D8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

uint64_t ___SBXXAcquireFocusPreventingFullScreenPresentationAssertion_block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = SBLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "Re-enabling certain system gestures for assertion with reason=%@", &v5, 0xCu);
  }

  return [*(a1 + 40) invalidate];
}

@end