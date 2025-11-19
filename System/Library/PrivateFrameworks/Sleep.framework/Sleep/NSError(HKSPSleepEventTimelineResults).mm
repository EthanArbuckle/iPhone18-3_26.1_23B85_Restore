@interface NSError(HKSPSleepEventTimelineResults)
+ (id)hksp_validationErrorWithReason:()HKSPSleepEventTimelineResults;
@end

@implementation NSError(HKSPSleepEventTimelineResults)

+ (id)hksp_validationErrorWithReason:()HKSPSleepEventTimelineResults
{
  v12[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA9B8];
  v11[0] = @"HKSPSleepScheduleValidationErrorReason";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v12[0] = v5;
  v11[1] = @"HKSPSleepScheduleValidationErrorReasonDescription";
  if ((a3 - 1) > 2)
  {
    v6 = @"None";
  }

  else
  {
    v6 = off_279C76300[a3 - 1];
  }

  v12[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v8 = [v4 errorWithDomain:@"com.apple.sleep" code:2 userInfo:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

@end