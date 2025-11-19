@interface DKIntentMetadataKeyClass
@end

@implementation DKIntentMetadataKeyClass

Class __get_DKIntentMetadataKeyClass_block_invoke(uint64_t a1)
{
  CoreDuetLibrary_0();
  result = objc_getClass("_DKIntentMetadataKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_DKIntentMetadataKeyClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __get_DKIntentMetadataKeyClass_block_invoke_cold_1();
    return __get_DKRelevantShortcutMetadataKeyClass_block_invoke(v3);
  }

  return result;
}

Class __get_DKIntentMetadataKeyClass_block_invoke_0(uint64_t a1)
{
  CoreDuetLibrary_1();
  result = objc_getClass("_DKIntentMetadataKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_DKIntentMetadataKeyClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __get_DKIntentMetadataKeyClass_block_invoke_cold_1();
    return __get_DKApplicationActivityMetadataKeyClass_block_invoke(v3);
  }

  return result;
}

void __get_DKIntentMetadataKeyClass_block_invoke_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{
  CoreDuetLibrary_2();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("_DKIntentMetadataKey");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_DKIntentMetadataKeyClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v10 = __get_DKIntentMetadataKeyClass_block_invoke_cold_1();
    OUTLINED_FUNCTION_1_6(v10, v11, v12, v13, v14, v15, v16, v17, a9);
  }
}

@end