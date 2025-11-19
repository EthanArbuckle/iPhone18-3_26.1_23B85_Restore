@interface LAMKBEventsUnregisterSymbolLoc
@end

@implementation LAMKBEventsUnregisterSymbolLoc

void *__get_LAMKBEventsUnregisterSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = LocalAuthenticationLibrary();
  result = dlsym(v2, "_LAMKBEventsUnregister");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_LAMKBEventsUnregisterSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end