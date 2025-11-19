@interface CDContextualPredicateClass
@end

@implementation CDContextualPredicateClass

Class __get_CDContextualPredicateClass_block_invoke(uint64_t a1)
{
  CoreDuetContextLibrary();
  result = objc_getClass("_CDContextualPredicate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_CDContextualPredicateClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __get_CDContextualPredicateClass_block_invoke_cold_1();
    return __get_CDMDCSContextualPredicateClass_block_invoke(v3);
  }

  return result;
}

@end