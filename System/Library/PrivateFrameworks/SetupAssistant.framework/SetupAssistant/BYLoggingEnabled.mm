@interface BYLoggingEnabled
@end

@implementation BYLoggingEnabled

uint64_t ___BYLoggingEnabled_block_invoke()
{
  out_token = 0;
  notify_register_dispatch("BYLoggingLevelDidChangeNotification", &out_token, MEMORY[0x1E69E96A0], &__block_literal_global_13);
  result = _checkLoggingEnabled();
  _BYLoggingEnabled_shouldLog = result;
  return result;
}

uint64_t ___BYLoggingEnabled_block_invoke_2()
{
  result = _checkLoggingEnabled();
  _BYLoggingEnabled_shouldLog = result;
  return result;
}

@end