@interface AccessSuppressionSetForMutation
@end

@implementation AccessSuppressionSetForMutation

void ___AccessSuppressionSetForMutation_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.passkit.passview", 0);
  v1 = qword_1EBD683D0;
  qword_1EBD683D0 = v0;

  v2 = [objc_alloc(MEMORY[0x1E696AB50]) initWithCapacity:2];
  v3 = qword_1EBD683D8;
  qword_1EBD683D8 = v2;
}

void ___AccessSuppressionSetForMutation_block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v1 = [qword_1EBD683D8 copy];
  SBSSetAlertSuppressionContexts();
}

@end