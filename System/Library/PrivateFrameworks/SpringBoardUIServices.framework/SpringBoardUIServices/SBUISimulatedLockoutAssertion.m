@interface SBUISimulatedLockoutAssertion
@end

@implementation SBUISimulatedLockoutAssertion

void __72___SBUISimulatedLockoutAssertion_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifier];
  [v2 appendString:v3 withName:@"identifier"];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) reason];
  [v4 appendString:v5 withName:@"reason"];

  v6 = *(a1 + 32);
  v7 = NSStringFromSBUIBiometricLockoutState(*(*(a1 + 40) + 48));
  [v6 appendString:v7 withName:@"lockoutState"];
}

@end