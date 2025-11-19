@interface DKApplicationActivityMetadataKeyClass
@end

@implementation DKApplicationActivityMetadataKeyClass

_RECrossedFeature *__get_DKApplicationActivityMetadataKeyClass_block_invoke(uint64_t a1)
{
  CoreDuetLibrary_1();
  result = objc_getClass("_DKApplicationActivityMetadataKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_DKApplicationActivityMetadataKeyClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __get_DKApplicationActivityMetadataKeyClass_block_invoke_cold_1();
    return [(_RECrossedFeature *)v3 initWithFeatures:v4, v5];
  }

  return result;
}

Class __get_DKApplicationActivityMetadataKeyClass_block_invoke_0(uint64_t a1)
{
  CoreDuetLibrary_2();
  result = objc_getClass("_DKApplicationActivityMetadataKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_DKApplicationActivityMetadataKeyClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __get_DKApplicationActivityMetadataKeyClass_block_invoke_cold_1();
    return __get_DKIntentMetadataKeyClass_block_invoke_1(v3);
  }

  return result;
}

@end