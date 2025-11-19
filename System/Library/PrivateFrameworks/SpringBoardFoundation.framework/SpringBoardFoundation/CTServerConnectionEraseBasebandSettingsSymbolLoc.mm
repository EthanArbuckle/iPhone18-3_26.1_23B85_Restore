@interface CTServerConnectionEraseBasebandSettingsSymbolLoc
@end

@implementation CTServerConnectionEraseBasebandSettingsSymbolLoc

void *__get_CTServerConnectionEraseBasebandSettingsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTelephonyLibrary();
  result = dlsym(v2, "_CTServerConnectionEraseBasebandSettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_CTServerConnectionEraseBasebandSettingsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end