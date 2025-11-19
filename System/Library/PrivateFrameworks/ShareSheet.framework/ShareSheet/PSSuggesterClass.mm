@interface PSSuggesterClass
@end

@implementation PSSuggesterClass

Class __get_PSSuggesterClass_block_invoke(uint64_t a1)
{
  PeopleSuggesterLibrary();
  result = objc_getClass("_PSSuggester");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_PSSuggesterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __get_PSSuggesterClass_block_invoke_cold_1();
    return OUTLINED_FUNCTION_0_4(v3, v4);
  }

  return result;
}

@end