@interface SHSAnalytics
@end

@implementation SHSAnalytics

id __54__SHSAnalytics_trackingVibrateOnRingValueChanged_age___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"value";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  v7[1] = @"age";
  v8[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 32)];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

id __56__SHSAnalytics_trackingVibrateOnSilentValueChanged_age___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"value";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  v7[1] = @"age";
  v8[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 32)];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

@end