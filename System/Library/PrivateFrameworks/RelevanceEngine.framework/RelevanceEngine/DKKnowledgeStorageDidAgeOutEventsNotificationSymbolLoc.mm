@interface DKKnowledgeStorageDidAgeOutEventsNotificationSymbolLoc
@end

@implementation DKKnowledgeStorageDidAgeOutEventsNotificationSymbolLoc

void *__get_DKKnowledgeStorageDidAgeOutEventsNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreDuetLibrary();
  result = dlsym(v2, "_DKKnowledgeStorageDidAgeOutEventsNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_DKKnowledgeStorageDidAgeOutEventsNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end