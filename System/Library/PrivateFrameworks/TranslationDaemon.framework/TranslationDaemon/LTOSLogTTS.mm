@interface LTOSLogTTS
@end

@implementation LTOSLogTTS

uint64_t ___LTOSLogTTS_block_invoke()
{
  _LTOSLogTTS_log = os_log_create("com.apple.Translation", "TTS");

  return MEMORY[0x2821F96F8]();
}

@end