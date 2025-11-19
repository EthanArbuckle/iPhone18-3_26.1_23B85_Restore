@interface LAMKBDeviceLockAssertionSymbolLoc
@end

@implementation LAMKBDeviceLockAssertionSymbolLoc

void *__get_LAMKBDeviceLockAssertionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = LocalAuthenticationLibrary();
  result = dlsym(v2, "_LAMKBDeviceLockAssertion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_LAMKBDeviceLockAssertionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end