@interface UIActionWhenIdleClass
@end

@implementation UIActionWhenIdleClass

void __get_UIActionWhenIdleClass_block_invoke(uint64_t a1)
{
  UIKitLibrary_2872();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("_UIActionWhenIdle");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_UIActionWhenIdleClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    UIKitLibrary_2872();
  }
}

@end