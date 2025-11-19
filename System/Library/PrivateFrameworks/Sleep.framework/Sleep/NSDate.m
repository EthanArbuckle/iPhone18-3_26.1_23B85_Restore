@interface NSDate
@end

@implementation NSDate

void __42__NSDate_HKSPSleep__hksp_latestFromDates___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 hksp_isAfterDate:*(*(*(a1 + 32) + 8) + 40)])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

void __44__NSDate_HKSPSleep__hksp_earliestFromDates___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 hksp_isBeforeDate:*(*(*(a1 + 32) + 8) + 40)])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

void __50__NSDate_HKSPSleep__hksp_closestFromDates_toDate___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  [*(a1 + 32) timeIntervalSinceDate:?];
  v5 = fabs(v4);
  if (v5 < *(*(*(a1 + 40) + 8) + 24))
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    *(*(*(a1 + 40) + 8) + 24) = v5;
  }
}

@end