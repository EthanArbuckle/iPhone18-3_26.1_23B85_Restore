@interface UISceneHostingViewController
@end

@implementation UISceneHostingViewController

void __59___UISceneHostingViewController_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) style];
  v3 = [v2 verbosity];

  if (v3 == 2)
  {
    v4 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 992));
    v9 = WeakRetained;
    if (WeakRetained)
    {
      v6 = *(WeakRetained + 5);
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    v8 = [v7 identifier];
    [v4 appendString:v8 withName:0];
  }
}

uint64_t __59___UISceneHostingViewController_appendDescriptionToStream___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __59___UISceneHostingViewController_appendDescriptionToStream___block_invoke_3;
  v2[3] = &unk_1E70F35B8;
  return [*(a1 + 32) appendBodySectionWithName:0 block:v2];
}

void __59___UISceneHostingViewController_appendDescriptionToStream___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 992));
  v2 = [v1 appendObject:WeakRetained withName:@"controller"];
}

@end