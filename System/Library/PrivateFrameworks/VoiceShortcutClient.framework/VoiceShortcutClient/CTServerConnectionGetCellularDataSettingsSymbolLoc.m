@interface CTServerConnectionGetCellularDataSettingsSymbolLoc
@end

@implementation CTServerConnectionGetCellularDataSettingsSymbolLoc

void *__get_CTServerConnectionGetCellularDataSettingsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTelephonyLibrary();
  result = dlsym(v2, "_CTServerConnectionGetCellularDataSettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_CTServerConnectionGetCellularDataSettingsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end