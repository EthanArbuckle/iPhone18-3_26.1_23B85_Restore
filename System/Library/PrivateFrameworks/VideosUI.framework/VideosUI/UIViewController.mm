@interface UIViewController
@end

@implementation UIViewController

void __47__UIViewController_VideosUI__vui_ppt_isLoading__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = [a2 subviews];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__UIViewController_VideosUI__vui_ppt_isLoading__block_invoke_2;
  v7[3] = &unk_1E8732128;
  v7[4] = *(a1 + 32);
  v7[5] = a4;
  [v6 enumerateObjectsUsingBlock:v7];
}

void __47__UIViewController_VideosUI__vui_ppt_isLoading__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    **(a1 + 40) = 1;
    *a4 = 1;
  }
}

Class __63__UIViewController_VideosUI___vui_TVLoadingViewControllerClass__block_invoke()
{
  result = NSClassFromString(&cfstr_Tvloadingviewc.isa);
  _vui_TVLoadingViewControllerClass___loadingViewClass = result;
  return result;
}

@end