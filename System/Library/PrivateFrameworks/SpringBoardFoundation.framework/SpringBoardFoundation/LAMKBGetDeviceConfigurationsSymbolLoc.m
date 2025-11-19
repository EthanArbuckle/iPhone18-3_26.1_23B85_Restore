@interface LAMKBGetDeviceConfigurationsSymbolLoc
@end

@implementation LAMKBGetDeviceConfigurationsSymbolLoc

void *__get_LAMKBGetDeviceConfigurationsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = LocalAuthenticationLibrary();
  result = dlsym(v2, "_LAMKBGetDeviceConfigurations");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_LAMKBGetDeviceConfigurationsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end