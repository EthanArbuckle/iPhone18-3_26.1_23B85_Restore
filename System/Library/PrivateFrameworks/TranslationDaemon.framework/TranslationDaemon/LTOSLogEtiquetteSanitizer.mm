@interface LTOSLogEtiquetteSanitizer
@end

@implementation LTOSLogEtiquetteSanitizer

uint64_t ___LTOSLogEtiquetteSanitizer_block_invoke()
{
  _LTOSLogEtiquetteSanitizer_log = os_log_create("com.apple.Translation", "EtiquetteSanitizer");

  return MEMORY[0x2821F96F8]();
}

@end