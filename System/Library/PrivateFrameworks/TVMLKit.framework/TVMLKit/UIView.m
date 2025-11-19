@interface UIView
@end

@implementation UIView

void __60__UIView_TVMLKitAdditions__tv_disableAnimation_forProperty___block_invoke()
{
  v0 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v0, sel__shouldAnimatePropertyWithKey_);
  v2 = class_getInstanceMethod(v0, sel_tv_shouldAnimatePropertyWithKey_);

  method_exchangeImplementations(InstanceMethod, v2);
}

@end