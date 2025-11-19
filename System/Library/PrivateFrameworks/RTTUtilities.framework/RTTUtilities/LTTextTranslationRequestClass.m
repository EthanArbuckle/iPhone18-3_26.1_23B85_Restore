@interface LTTextTranslationRequestClass
@end

@implementation LTTextTranslationRequestClass

Class __get_LTTextTranslationRequestClass_block_invoke(uint64_t a1)
{
  TranslationLibrary();
  result = objc_getClass("_LTTextTranslationRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_LTTextTranslationRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __get_LTTextTranslationRequestClass_block_invoke_cold_1();
    return __getAXSpringBoardServerClass_block_invoke(v3);
  }

  return result;
}

@end