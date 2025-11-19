@interface SBMigGetScreenLockStatus
@end

@implementation SBMigGetScreenLockStatus

uint64_t ___SBMigGetScreenLockStatus_block_invoke(uint64_t a1)
{
  result = (*(a1 + 40))(*(a1 + 64), *(a1 + 48), *(a1 + 56));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end