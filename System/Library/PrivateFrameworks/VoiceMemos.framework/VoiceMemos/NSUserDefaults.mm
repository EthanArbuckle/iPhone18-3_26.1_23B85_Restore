@interface NSUserDefaults
@end

@implementation NSUserDefaults

uint64_t __60__NSUserDefaults_VoiceMemosSettings__voiceMemosUserDefaults__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _isRunningInVoiceMemos])
  {
    v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  }

  else
  {
    v1 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.VoiceMemos"];
  }

  voiceMemosUserDefaults_voiceMemosUserDefaults = v1;

  return MEMORY[0x2821F96F8]();
}

@end