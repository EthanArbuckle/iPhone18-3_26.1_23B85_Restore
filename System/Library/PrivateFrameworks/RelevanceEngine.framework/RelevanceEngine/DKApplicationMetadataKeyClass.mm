@interface DKApplicationMetadataKeyClass
@end

@implementation DKApplicationMetadataKeyClass

Class __get_DKApplicationMetadataKeyClass_block_invoke(uint64_t a1)
{
  CoreDuetLibrary_0();
  result = objc_getClass("_DKApplicationMetadataKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_DKApplicationMetadataKeyClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __get_DKApplicationMetadataKeyClass_block_invoke_cold_1();
    return __get_DKPredictionQueryClass_block_invoke(v3);
  }

  return result;
}

@end