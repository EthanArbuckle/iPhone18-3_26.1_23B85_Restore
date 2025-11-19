@interface DKKnowledgeStoreClass
@end

@implementation DKKnowledgeStoreClass

void __get_DKKnowledgeStoreClass_block_invoke(uint64_t a1)
{
  CoreDuetLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("_DKKnowledgeStore");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_DKKnowledgeStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = abort_report_np();
    [(TPSDiscoverabilitySignal *)v2 donateSignalWithCompletion:v3, v4];
  }
}

@end