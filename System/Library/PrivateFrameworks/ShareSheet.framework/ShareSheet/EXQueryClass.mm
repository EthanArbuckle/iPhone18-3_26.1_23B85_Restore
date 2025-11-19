@interface EXQueryClass
@end

@implementation EXQueryClass

void __get_EXQueryClass_block_invoke(uint64_t a1)
{
  ExtensionKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("_EXQuery");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_EXQueryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __get_EXQueryClass_block_invoke_cold_1();
    ExtensionKitLibrary();
  }
}

@end