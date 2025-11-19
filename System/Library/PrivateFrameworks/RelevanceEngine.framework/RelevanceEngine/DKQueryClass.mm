@interface DKQueryClass
@end

@implementation DKQueryClass

Class __get_DKQueryClass_block_invoke(uint64_t a1)
{
  CoreDuetLibrary_0();
  result = objc_getClass("_DKQuery");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_DKQueryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __get_DKQueryClass_block_invoke_cold_1();
    return __get_DKApplicationMetadataKeyClass_block_invoke(v3);
  }

  return result;
}

@end