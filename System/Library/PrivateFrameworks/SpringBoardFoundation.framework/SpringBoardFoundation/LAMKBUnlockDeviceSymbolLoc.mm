@interface LAMKBUnlockDeviceSymbolLoc
@end

@implementation LAMKBUnlockDeviceSymbolLoc

void *__get_LAMKBUnlockDeviceSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = LocalAuthenticationLibrary();
  result = dlsym(v2, "_LAMKBUnlockDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_LAMKBUnlockDeviceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end