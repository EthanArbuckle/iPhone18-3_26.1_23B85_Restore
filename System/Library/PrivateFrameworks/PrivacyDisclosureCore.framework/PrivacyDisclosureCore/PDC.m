@interface PDC
@end

@implementation PDC

uint64_t __PDC_LOG_CHANNEL_PREFIXPrivacyDisclosureCore_block_invoke()
{
  PDC_LOG_CHANNEL_PREFIXPrivacyDisclosureCore_log = os_log_create("com.apple.PrivacyDisclosureCore", "PrivacyDisclosureCore");

  return MEMORY[0x2821F96F8]();
}

@end