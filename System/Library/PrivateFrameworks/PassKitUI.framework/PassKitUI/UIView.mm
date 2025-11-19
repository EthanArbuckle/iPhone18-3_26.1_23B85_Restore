@interface UIView
@end

@implementation UIView

uint64_t __91__UIView_PKUIAnimationUtilities__pkui_setTransform_withAdditiveAnimationFactory_animation___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 120);
  v7[4] = *(a1 + 104);
  v7[5] = v2;
  v3 = *(a1 + 152);
  v7[6] = *(a1 + 136);
  v7[7] = v3;
  v4 = *(a1 + 56);
  v7[0] = *(a1 + 40);
  v7[1] = v4;
  v5 = *(a1 + 88);
  v7[2] = *(a1 + 72);
  v7[3] = v5;
  return [v1 setTransform3D:v7];
}

void __89__UIView_PKUIAnimationUtilities__pkui_setBackgroundColor_withAnimationFactory_animation___block_invoke_2(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v2)
  {
    [v3 setFromValue:{objc_msgSend(v2, "backgroundColor")}];
  }

  else
  {
    v4 = a1[6];
    v5 = v4;
    if (!v4)
    {
      v5 = [MEMORY[0x1E69DC888] clearColor];
    }

    [v3 setFromValue:{objc_msgSend(v5, "CGColor")}];
    if (!v4)
    {
    }
  }

  v6 = a1[4];
  v7 = a1[7];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x1E69DC888] clearColor];
  }

  v9 = v8;
  [v6 setToValue:{objc_msgSend(v9, "CGColor")}];
  if (!v7)
  {
  }
}

@end