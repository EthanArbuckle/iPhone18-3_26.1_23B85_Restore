@interface DataPlanActivateFailed
@end

@implementation DataPlanActivateFailed

uint64_t ___DataPlanActivateFailed_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 application];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  result = [*(*(*(a1 + 32) + 8) + 40) dataUsage];
  if (result)
  {
    return [*(*(*(a1 + 32) + 8) + 40) hasShownDataPlanAlertSinceLock] ^ 1;
  }

  return result;
}

@end