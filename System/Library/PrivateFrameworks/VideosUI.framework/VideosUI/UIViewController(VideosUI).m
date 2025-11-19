@interface UIViewController(VideosUI)
+ (id)_vui_TVLoadingViewControllerClass;
- (BOOL)vui_ppt_isLoading;
- (void)vui_presentViewController:()VideosUI animated:completion:;
@end

@implementation UIViewController(VideosUI)

- (BOOL)vui_ppt_isLoading
{
  v1 = [a1 view];
  v2 = [v1 subviews];

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__11;
  v12 = __Block_byref_object_dispose__11;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__UIViewController_VideosUI__vui_ppt_isLoading__block_invoke;
  v7[3] = &unk_1E8732150;
  v7[4] = &v8;
  [v2 enumerateObjectsUsingBlock:v7];
  v3 = v9[5];
  v5 = 0;
  if (v3)
  {
    [v3 alpha];
    if (v4 > 0.0)
    {
      v5 = 1;
    }
  }

  _Block_object_dispose(&v8, 8);

  return v5;
}

+ (id)_vui_TVLoadingViewControllerClass
{
  if (_vui_TVLoadingViewControllerClass___onceToken != -1)
  {
    +[UIViewController(VideosUI) _vui_TVLoadingViewControllerClass];
  }

  v1 = _vui_TVLoadingViewControllerClass___loadingViewClass;

  return v1;
}

- (void)vui_presentViewController:()VideosUI animated:completion:
{
  v8 = a3;
  v9 = a5;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __76__UIViewController_VideosUI__vui_presentViewController_animated_completion___block_invoke;
  v18 = &unk_1E8732178;
  v19 = a1;
  v20 = v8;
  v22 = a4;
  v21 = v9;
  v10 = v9;
  v11 = v8;
  v12 = _Block_copy(&v15);
  v13 = [a1 presentedViewController];
  v14 = v13;
  if (v13)
  {
    [v13 dismissViewControllerAnimated:a4 completion:v12];
  }

  else
  {
    v12[2](v12);
  }
}

@end