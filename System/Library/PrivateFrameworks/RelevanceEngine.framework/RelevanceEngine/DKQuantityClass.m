@interface DKQuantityClass
@end

@implementation DKQuantityClass

Class __get_DKQuantityClass_block_invoke(uint64_t a1)
{
  CoreDuetLibrary_0();
  result = objc_getClass("_DKQuantity");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_DKQuantityClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __get_DKQuantityClass_block_invoke_cold_1();
    return __get_DKTombstoneMetadataKeyClass_block_invoke(v3);
  }

  return result;
}

@end