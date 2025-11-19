@interface WFSoundRecognitionTrigger
@end

@implementation WFSoundRecognitionTrigger

id __100__WFSoundRecognitionTrigger_BiomeContext__shouldFireInResponseToEvent_triggerIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D7C088];
  v4 = a2;
  if ([v3 isApplianceSoundDetectionType:v4])
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  v5 = [MEMORY[0x277D7C088] bmTypeForAXSDSoundDetectionType:v4];

  return v5;
}

@end