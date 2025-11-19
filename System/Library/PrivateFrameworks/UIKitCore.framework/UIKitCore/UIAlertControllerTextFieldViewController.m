@interface UIAlertControllerTextFieldViewController
@end

@implementation UIAlertControllerTextFieldViewController

void __65___UIAlertControllerTextFieldViewController_updateTextFieldStyle__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  v5 = [v12 containerView];

  if (!v5)
  {
    v6 = *(a1 + 40);
    v7 = 2;
    if (v6 - 1 == a3)
    {
      v7 = 3;
    }

    if (!a3)
    {
      v7 = 1;
    }

    if (v6 >= 2)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = [*(a1 + 32) container];
    v10 = [v12 textField];
    v11 = [v9 _textFieldContainingViewWithTextField:v10 position:v8];
    [v12 setContainerView:v11];
  }
}

@end