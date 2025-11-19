@interface UICAPackageViewClass
@end

@implementation UICAPackageViewClass

Class __get_UICAPackageViewClass_block_invoke(uint64_t a1)
{
  UIKitLibrary();
  result = objc_getClass("_UICAPackageView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_UICAPackageViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __get_UICAPackageViewClass_block_invoke_cold_1();
    return __getUIImageClass_block_invoke(v3);
  }

  return result;
}

@end