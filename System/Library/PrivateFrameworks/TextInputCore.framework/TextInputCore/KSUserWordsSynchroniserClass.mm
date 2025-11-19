@interface KSUserWordsSynchroniserClass
@end

@implementation KSUserWordsSynchroniserClass

Class __get_KSUserWordsSynchroniserClass_block_invoke(uint64_t a1)
{
  KeyboardServicesLibrary();
  result = objc_getClass("_KSUserWordsSynchroniser");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_KSUserWordsSynchroniserClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    return KeyboardServicesLibrary();
  }

  return result;
}

@end