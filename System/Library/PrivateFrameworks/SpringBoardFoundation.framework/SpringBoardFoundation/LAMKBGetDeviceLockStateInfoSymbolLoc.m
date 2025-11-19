@interface LAMKBGetDeviceLockStateInfoSymbolLoc
@end

@implementation LAMKBGetDeviceLockStateInfoSymbolLoc

void *__get_LAMKBGetDeviceLockStateInfoSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = LocalAuthenticationLibrary();
  result = dlsym(v2, "_LAMKBGetDeviceLockStateInfo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_LAMKBGetDeviceLockStateInfoSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end