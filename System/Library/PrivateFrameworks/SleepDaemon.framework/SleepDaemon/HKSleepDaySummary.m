@interface HKSleepDaySummary
@end

@implementation HKSleepDaySummary

void __92__HKSleepDaySummary_Analytics__hdsp_enumerateFirstPartyWatchSleepTrackingSegmentsWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 containsSegmentsWithAppleSleepTrackingData])
  {
    v4 = [v3 segments];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __92__HKSleepDaySummary_Analytics__hdsp_enumerateFirstPartyWatchSleepTrackingSegmentsWithBlock___block_invoke_2;
    v5[3] = &unk_279C7BAB0;
    v6 = *(a1 + 32);
    [v4 enumerateObjectsUsingBlock:v5];
  }
}

void __92__HKSleepDaySummary_Analytics__hdsp_enumerateFirstPartyWatchSleepTrackingSegmentsWithBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 containsAppleSleepTrackingData])
  {
    (*(*(a1 + 32) + 16))();
  }
}

@end