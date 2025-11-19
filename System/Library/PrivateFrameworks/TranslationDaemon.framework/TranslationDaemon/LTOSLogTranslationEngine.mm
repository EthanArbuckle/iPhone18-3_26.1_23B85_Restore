@interface LTOSLogTranslationEngine
@end

@implementation LTOSLogTranslationEngine

uint64_t ___LTOSLogTranslationEngine_block_invoke()
{
  _LTOSLogTranslationEngine_log = os_log_create("com.apple.Translation", "TranslationEngine");

  return MEMORY[0x2821F96F8]();
}

@end