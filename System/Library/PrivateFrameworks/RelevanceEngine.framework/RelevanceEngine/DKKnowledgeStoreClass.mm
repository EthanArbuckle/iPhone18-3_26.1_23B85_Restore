@interface DKKnowledgeStoreClass
@end

@implementation DKKnowledgeStoreClass

void __get_DKKnowledgeStoreClass_block_invoke(uint64_t a1)
{
  CoreDuetLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("_DKKnowledgeStore");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_DKKnowledgeStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __get_DKKnowledgeStoreClass_block_invoke_cold_1();
    CoreDuetLibrary_0();
  }
}

@end