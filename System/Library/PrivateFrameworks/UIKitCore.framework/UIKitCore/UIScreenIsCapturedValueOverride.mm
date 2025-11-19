@interface UIScreenIsCapturedValueOverride
@end

@implementation UIScreenIsCapturedValueOverride

void ___UIScreenIsCapturedValueOverride_block_invoke()
{
  v0 = _UIKitUserDefaults();
  obj = [v0 objectForKey:@"UIScreenIsCapturedValue"];

  if (objc_opt_respondsToSelector())
  {
    objc_storeStrong(&qword_1ED49ABE8, obj);
  }
}

@end