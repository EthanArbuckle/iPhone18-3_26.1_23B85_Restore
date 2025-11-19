@interface CKCloudKitPreShareTypeSymbolLoc
@end

@implementation CKCloudKitPreShareTypeSymbolLoc

void *__get_CKCloudKitPreShareTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CloudKitLibrary_0();
  result = dlsym(v2, "_CKCloudKitPreShareType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_CKCloudKitPreShareTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end