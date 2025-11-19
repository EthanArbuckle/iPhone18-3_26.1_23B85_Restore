@interface SBDisplayConnectionDonationTimer
@end

@implementation SBDisplayConnectionDonationTimer

void __57___SBDisplayConnectionDonationTimer_resetTimerOnConnect___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57___SBDisplayConnectionDonationTimer_resetTimerOnConnect___block_invoke_2;
  v5[3] = &unk_2783AD1F0;
  v5[4] = *(a1 + 32);
  v2 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:0 repeats:v5 block:0.5];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;
}

uint64_t __57___SBDisplayConnectionDonationTimer_resetTimerOnConnect___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) stateChanged];
  if (result)
  {
    *(*(a1 + 32) + 48) = 0;
    v3 = *(*(*(a1 + 32) + 56) + 16);

    return v3();
  }

  return result;
}

@end