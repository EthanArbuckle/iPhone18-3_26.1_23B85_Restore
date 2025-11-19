@interface NETRBClientSetGlobalServiceStateSymbolLoc
@end

@implementation NETRBClientSetGlobalServiceStateSymbolLoc

void *__get_NETRBClientSetGlobalServiceStateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NetrbLibrary();
  result = dlsym(v2, "_NETRBClientSetGlobalServiceState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_NETRBClientSetGlobalServiceStateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end