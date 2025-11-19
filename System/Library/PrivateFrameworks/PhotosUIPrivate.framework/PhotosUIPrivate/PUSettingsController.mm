@interface PUSettingsController
@end

@implementation PUSettingsController

void __35___PUSettingsController__hideToast__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTitle:@"Don’t ever show this reminder again?"];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35___PUSettingsController__hideToast__block_invoke_2;
  v4[3] = &unk_1E7B80DD0;
  v5 = *(a1 + 32);
  [v3 addActionWithTitle:@"Don‘t Show Ever Again" style:2 action:v4];
  [v3 addActionWithTitle:@"Cancel" style:1 action:0];
}

void __53___PUSettingsController_handleEllipsisBarButtonItem___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 searchNavigationController];
  [v1 presentViewController:v2 animated:1 completion:0];
}

void __53___PUSettingsController_handleEllipsisBarButtonItem___block_invoke_3(uint64_t a1)
{
  v3 = [objc_alloc(MEMORY[0x1E69C39D0]) initWithSettings:*(a1 + 32)];
  v2 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v3];
  [*(a1 + 40) presentViewController:v2 animated:1 completion:0];
}

void __63___PUSettingsController__updateNavigationItemOfViewController___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v5 = v3;
    v4 = v3[2]();
    v3 = v5;
    if (v4)
    {
      [*(a1 + 32) addObject:v4];

      v3 = v5;
    }
  }
}

@end