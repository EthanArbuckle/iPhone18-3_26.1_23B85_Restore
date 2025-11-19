@interface PSSuggesterConfigurationClass
@end

@implementation PSSuggesterConfigurationClass

void __get_PSSuggesterConfigurationClass_block_invoke(uint64_t a1)
{
  PeopleSuggesterLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("_PSSuggesterConfiguration");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_PSSuggesterConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __get_PSSuggesterConfigurationClass_block_invoke_cold_1();
    PeopleSuggesterLibrary();
  }
}

@end