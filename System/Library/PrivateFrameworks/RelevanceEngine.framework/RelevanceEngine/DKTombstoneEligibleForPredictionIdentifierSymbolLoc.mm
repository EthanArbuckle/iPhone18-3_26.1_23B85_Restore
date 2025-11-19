@interface DKTombstoneEligibleForPredictionIdentifierSymbolLoc
@end

@implementation DKTombstoneEligibleForPredictionIdentifierSymbolLoc

void *__get_DKTombstoneEligibleForPredictionIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreDuetLibrary();
  result = dlsym(v2, "_DKTombstoneEligibleForPredictionIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_DKTombstoneEligibleForPredictionIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end