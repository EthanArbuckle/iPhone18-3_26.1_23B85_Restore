@interface UISheetSize
@end

@implementation UISheetSize

void ___UISheetSize_block_invoke()
{
  v0 = _UIFallbackSheetMetrics();
  v1 = [_UISheetLayoutInfoProvider makeLayoutInfoWithMetrics:v0];
  v2 = qword_1ED49D798;
  qword_1ED49D798 = v1;

  v3 = objc_alloc_init(UIViewController);
  [qword_1ED49D798 _setPresentedViewController:v3];
}

@end