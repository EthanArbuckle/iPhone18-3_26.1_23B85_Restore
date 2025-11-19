@interface LAMKBLockDeviceSymbolLoc
@end

@implementation LAMKBLockDeviceSymbolLoc

void *__get_LAMKBLockDeviceSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = LocalAuthenticationLibrary();
  result = dlsym(v2, "_LAMKBLockDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_LAMKBLockDeviceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end