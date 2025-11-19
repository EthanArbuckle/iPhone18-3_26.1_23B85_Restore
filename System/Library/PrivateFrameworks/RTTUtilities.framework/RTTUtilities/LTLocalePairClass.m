@interface LTLocalePairClass
@end

@implementation LTLocalePairClass

Class __get_LTLocalePairClass_block_invoke(uint64_t a1)
{
  TranslationLibrary();
  result = objc_getClass("_LTLocalePair");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_LTLocalePairClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __get_LTLocalePairClass_block_invoke_cold_1();
    return __get_LTTextTranslationRequestClass_block_invoke(v3);
  }

  return result;
}

@end