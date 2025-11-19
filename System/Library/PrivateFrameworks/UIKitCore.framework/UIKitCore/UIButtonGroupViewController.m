@interface UIButtonGroupViewController
@end

@implementation UIButtonGroupViewController

void __78___UIButtonGroupViewController_initWithBarButtonItemGroups_overLightKeyboard___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v12 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = [v12 barButtonItem];
    v9 = [v8 buttonGroup];
    v10 = [v9 _sendActionsBeforeDismiss];

    v11 = v6;
    if (v10)
    {
      v6[2](v6);
      v11 = 0;
    }

    [WeakRetained dismissViewControllerAnimated:1 completion:v11];
  }
}

@end