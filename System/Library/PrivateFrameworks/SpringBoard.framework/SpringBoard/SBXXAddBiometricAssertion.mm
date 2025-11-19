@interface SBXXAddBiometricAssertion
@end

@implementation SBXXAddBiometricAssertion

void ___SBXXAddBiometricAssertion_block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v5 = +[SBWalletPreArmController sharedInstance];
    v2 = [v5 acquireSuppressPreArmAssertionOfType:2 forReason:*(a1 + 32)];
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  else
  {
    if (*(a1 + 48))
    {
      return;
    }

    v5 = +[SBLockScreenManager sharedInstance];
    [v5 _setMesaUnlockingDisabled:1 forReason:*(a1 + 32)];
  }
}

void ___SBXXAddBiometricAssertion_block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___SBXXAddBiometricAssertion_block_invoke_3;
  block[3] = &unk_2783AD078;
  v7 = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = v2;
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void ___SBXXAddBiometricAssertion_block_invoke_3(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = *(*(*(a1 + 40) + 8) + 40);

    [v2 invalidate];
  }

  else if (!*(a1 + 48))
  {
    v3 = +[SBLockScreenManager sharedInstance];
    [v3 _setMesaUnlockingDisabled:0 forReason:*(a1 + 32)];
  }
}

@end