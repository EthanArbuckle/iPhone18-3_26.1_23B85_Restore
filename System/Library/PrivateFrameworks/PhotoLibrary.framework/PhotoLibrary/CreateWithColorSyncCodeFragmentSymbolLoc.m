@interface CreateWithColorSyncCodeFragmentSymbolLoc
@end

@implementation CreateWithColorSyncCodeFragmentSymbolLoc

void *__getvImageConverter_CreateWithColorSyncCodeFragmentSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccelerateLibrary();
  result = dlsym(v2, "vImageConverter_CreateWithColorSyncCodeFragment");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getvImageConverter_CreateWithColorSyncCodeFragmentSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end