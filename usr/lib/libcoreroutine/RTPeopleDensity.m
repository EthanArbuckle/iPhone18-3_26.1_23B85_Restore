@interface RTPeopleDensity
@end

@implementation RTPeopleDensity

void __70__RTPeopleDensity_RTCoreDataTransformable__createWithPeopleDensityMO___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D011C8]);
  v13 = [*(a1 + 32) identifier];
  v3 = [*(a1 + 32) startDate];
  v4 = [*(a1 + 32) endDate];
  [*(a1 + 32) densityScore];
  v6 = v5;
  [*(a1 + 32) scanDuration];
  v8 = v7;
  v9 = [*(a1 + 32) rssiHistogram];
  v10 = [v2 initWithBundleUUID:v13 startDate:v3 endDate:v4 densityScore:v9 scanDuration:v6 rssiHistogram:v8];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

@end