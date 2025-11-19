@interface CDContextualKeyPathClass
@end

@implementation CDContextualKeyPathClass

REHTMLTagElement *__get_CDContextualKeyPathClass_block_invoke(uint64_t a1)
{
  CoreDuetContextLibrary();
  result = objc_getClass("_CDContextualKeyPath");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_CDContextualKeyPathClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __get_CDContextualKeyPathClass_block_invoke_cold_1();
    return [(REHTMLTagElement *)v3 initWithTag:v4 content:v5, v6];
  }

  return result;
}

@end