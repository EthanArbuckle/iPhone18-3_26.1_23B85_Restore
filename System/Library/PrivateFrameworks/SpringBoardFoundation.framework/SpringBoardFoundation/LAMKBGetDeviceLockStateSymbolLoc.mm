@interface LAMKBGetDeviceLockStateSymbolLoc
@end

@implementation LAMKBGetDeviceLockStateSymbolLoc

void *__get_LAMKBGetDeviceLockStateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = LocalAuthenticationLibrary();
  result = dlsym(v2, "_LAMKBGetDeviceLockState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_LAMKBGetDeviceLockStateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end