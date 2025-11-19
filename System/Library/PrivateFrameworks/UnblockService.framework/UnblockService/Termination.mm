@interface Termination
@end

@implementation Termination

void __64__UBUnblockReactiveRecovery_Termination__doTermination_options___block_invoke(uint64_t a1)
{
  [*(a1 + 32) writeDiagnostics:*(a1 + 40) terminatedProcBundleID:*(a1 + 48) options:*(a1 + 64)];
  v2 = *(*(a1 + 56) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

@end