@interface UIAXCCFindAncestorContentModuleContainerViewController
@end

@implementation UIAXCCFindAncestorContentModuleContainerViewController

uint64_t ___UIAXCCFindAncestorContentModuleContainerViewController_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end