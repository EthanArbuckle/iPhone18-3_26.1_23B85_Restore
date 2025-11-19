@interface CDMDCSContextualPredicateClass
@end

@implementation CDMDCSContextualPredicateClass

Class __get_CDMDCSContextualPredicateClass_block_invoke(uint64_t a1)
{
  CoreDuetContextLibrary();
  result = objc_getClass("_CDMDCSContextualPredicate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_CDMDCSContextualPredicateClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __get_CDMDCSContextualPredicateClass_block_invoke_cold_1();
    return __get_CDContextualChangeRegistrationClass_block_invoke(v3);
  }

  return result;
}

@end