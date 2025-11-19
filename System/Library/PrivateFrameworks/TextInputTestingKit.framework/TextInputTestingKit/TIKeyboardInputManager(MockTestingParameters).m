@interface TIKeyboardInputManager(MockTestingParameters)
+ (void)swizzleTestingParameters;
- (id)mockTestingParameters;
@end

@implementation TIKeyboardInputManager(MockTestingParameters)

- (id)mockTestingParameters
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2[0] = @"trialExperimentId";
  v2[1] = @"trialTreatmentId";
  v3[0] = @"mockMockTrialExperimentIdValue";
  v3[1] = @"mockMockTrialTreatmentIdValue";
  v2[2] = @"trialSubjectId";
  v2[3] = @"trialTrackingId";
  v3[2] = @"mockTtrialSubjectIdValue";
  v3[3] = @"mockMockTrialTrackingIdValue";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:4];

  return v0;
}

+ (void)swizzleTestingParameters
{
  if (swizzleTestingParameters_onceToken != -1)
  {
    dispatch_once(&swizzleTestingParameters_onceToken, &__block_literal_global_6238);
  }
}

@end