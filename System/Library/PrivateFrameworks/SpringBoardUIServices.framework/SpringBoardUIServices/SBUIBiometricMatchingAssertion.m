@interface SBUIBiometricMatchingAssertion
@end

@implementation SBUIBiometricMatchingAssertion

void __73___SBUIBiometricMatchingAssertion_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifier];
  [v2 appendString:v3 withName:@"identifier"];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) reason];
  [v4 appendString:v5 withName:@"reason"];

  v6 = *(a1 + 32);
  v7 = NSStringFromSBUIBiometricMatchMode(*(*(a1 + 40) + 56));
  [v6 appendString:v7 withName:@"matchMode"];

  v8 = [*(a1 + 32) appendInteger:objc_msgSend(*(a1 + 40) withName:{"restartCount"), @"restartCount"}];
  v9 = *(a1 + 32);
  v11 = [*(a1 + 40) operations];
  v10 = [v11 allObjects];
  [v9 appendArraySection:v10 withName:@"operations" skipIfEmpty:0];
}

@end