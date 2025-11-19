@interface DKRelevantShortcutMetadataKeyClass
@end

@implementation DKRelevantShortcutMetadataKeyClass

Class __get_DKRelevantShortcutMetadataKeyClass_block_invoke(uint64_t a1)
{
  CoreDuetLibrary_0();
  result = objc_getClass("_DKRelevantShortcutMetadataKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_DKRelevantShortcutMetadataKeyClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __get_DKRelevantShortcutMetadataKeyClass_block_invoke_cold_1();
    return RERelevanceEqualToRelevance(v3, v4);
  }

  return result;
}

@end