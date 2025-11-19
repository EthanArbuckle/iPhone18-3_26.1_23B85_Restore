@interface RTProximityEvent
@end

@implementation RTProximityEvent

void __72__RTProximityEvent_RTCoreDataTransformable__createWithProximityEventMO___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D01278]);
  v14 = [*(a1 + 32) eventID];
  v3 = [*(a1 + 32) startDate];
  v4 = [*(a1 + 32) endDate];
  v5 = [*(a1 + 32) relationship];
  [*(a1 + 32) socialScore];
  v7 = v6;
  v8 = [*(a1 + 32) frequencyTransformable];
  v9 = [*(a1 + 32) recencyTransformable];
  v10 = [*(a1 + 32) significanceTransformable];
  v11 = [v2 initWithEventID:v14 startDate:v3 endDate:v4 relationship:v5 socialScore:v8 combinedFrequencyScores:v9 combinedRecencyScores:v7 combinedSignificanceScores:v10];
  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;
}

@end