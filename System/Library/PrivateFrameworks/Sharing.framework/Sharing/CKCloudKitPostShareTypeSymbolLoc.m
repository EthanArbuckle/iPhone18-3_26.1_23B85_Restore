@interface CKCloudKitPostShareTypeSymbolLoc
@end

@implementation CKCloudKitPostShareTypeSymbolLoc

void *__get_CKCloudKitPostShareTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CloudKitLibrary_0();
  result = dlsym(v2, "_CKCloudKitPostShareType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_CKCloudKitPostShareTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end