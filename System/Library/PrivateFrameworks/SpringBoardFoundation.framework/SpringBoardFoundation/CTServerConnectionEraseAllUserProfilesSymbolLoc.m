@interface CTServerConnectionEraseAllUserProfilesSymbolLoc
@end

@implementation CTServerConnectionEraseAllUserProfilesSymbolLoc

void *__get_CTServerConnectionEraseAllUserProfilesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTelephonyLibrary();
  result = dlsym(v2, "_CTServerConnectionEraseAllUserProfiles");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_CTServerConnectionEraseAllUserProfilesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end