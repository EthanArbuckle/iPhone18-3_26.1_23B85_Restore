@interface DKKnowledgeStorageDidTombstoneEventsNotificationSymbolLoc
@end

@implementation DKKnowledgeStorageDidTombstoneEventsNotificationSymbolLoc

void *__get_DKKnowledgeStorageDidTombstoneEventsNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreDuetLibrary();
  result = dlsym(v2, "_DKKnowledgeStorageDidTombstoneEventsNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_DKKnowledgeStorageDidTombstoneEventsNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end