@interface UITextField
@end

@implementation UITextField

void __72__UITextField_PKUIUtilities__pkui_attachDoneToolbarWithAdditionalItems___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained resignFirstResponder];
    WeakRetained = v2;
  }
}

@end