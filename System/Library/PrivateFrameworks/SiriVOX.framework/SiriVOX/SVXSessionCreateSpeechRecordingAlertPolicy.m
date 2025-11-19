@interface SVXSessionCreateSpeechRecordingAlertPolicy
@end

@implementation SVXSessionCreateSpeechRecordingAlertPolicy

void ___SVXSessionCreateSpeechRecordingAlertPolicy_block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CEF488];
  v3 = a2;
  v4 = [v2 newWithBuilder:&__block_literal_global_771];
  [v3 setStartingAlertBehavior:v4];
}

@end