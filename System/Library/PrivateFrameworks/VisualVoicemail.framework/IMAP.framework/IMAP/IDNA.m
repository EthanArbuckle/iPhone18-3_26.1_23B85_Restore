@interface IDNA
@end

@implementation IDNA

uint64_t __vf_IDNA_log_block_invoke()
{
  vf_IDNA_log_sLog = os_log_create("com.apple.voicemail", "IDNA");

  return MEMORY[0x2821F96F8]();
}

@end