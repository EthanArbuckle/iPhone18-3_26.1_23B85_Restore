@interface EXQueryControllerClass
@end

@implementation EXQueryControllerClass

Class __get_EXQueryControllerClass_block_invoke(uint64_t a1)
{
  ExtensionKitLibrary();
  result = objc_getClass("_EXQueryController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_EXQueryControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __get_EXQueryControllerClass_block_invoke_cold_1();
    return +[(UIMessageActivity *)v3];
  }

  return result;
}

@end