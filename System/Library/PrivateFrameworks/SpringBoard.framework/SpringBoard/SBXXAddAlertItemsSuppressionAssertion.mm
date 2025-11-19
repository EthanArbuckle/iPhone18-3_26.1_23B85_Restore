@interface SBXXAddAlertItemsSuppressionAssertion
@end

@implementation SBXXAddAlertItemsSuppressionAssertion

void ___SBXXAddAlertItemsSuppressionAssertion_block_invoke(uint64_t a1)
{
  v2 = +[SBAlertItemsController sharedInstance];
  [v2 captureSuppressionAssertion:*(a1 + 32) reason:*(a1 + 40)];
}

@end