@interface SCROD
@end

@implementation SCROD

uint64_t ___SCROD_LOG_block_invoke()
{
  v0 = os_log_create("com.apple.Accessibility", "ScreenReaderOutput");
  _SCROD_LOG_log = v0;

  return MEMORY[0x2821F96F8](v0);
}

uint64_t ___SCROD_BRAILLE_LOG_block_invoke()
{
  v0 = os_log_create("com.apple.Accessibility", "ScreenReaderOutput.Braille");
  _SCROD_BRAILLE_LOG_log = v0;

  return MEMORY[0x2821F96F8](v0);
}

@end