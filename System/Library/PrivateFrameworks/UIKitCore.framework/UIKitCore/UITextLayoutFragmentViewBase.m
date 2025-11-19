@interface UITextLayoutFragmentViewBase
@end

@implementation UITextLayoutFragmentViewBase

uint64_t __48___UITextLayoutFragmentViewBase__updateGeometry__block_invoke(uint64_t a1)
{
  [*(a1 + 32) frame];
  if (!CGRectEqualToRect(v9, *(a1 + 40)))
  {
    [*(a1 + 32) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  }

  [*(a1 + 32) bounds];
  result = CGRectEqualToRect(v10, *(a1 + 72));
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 72);
    v4 = *(a1 + 80);
    v5 = *(a1 + 88);
    v6 = *(a1 + 96);
    v7 = *(a1 + 32);

    return [v7 setBounds:{v3, v4, v5, v6}];
  }

  return result;
}

void __62___UITextLayoutFragmentViewBase__updateTextAttachmentGeometry__block_invoke(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v13 = a2;
  [v13 setFrame:{a3, a4, a5, a6}];
  v11 = [v13 superview];
  v12 = *(a1 + 32);

  if (v11 != v12)
  {
    [*(a1 + 32) addSubview:v13];
  }
}

void __72___UITextLayoutFragmentViewBase_enumerateTextAttachmentViewsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [v14 view];
  if (v3)
  {
    v4 = *(*(a1 + 32) + 416);
    v5 = [v14 location];
    [v4 frameForTextAttachmentAtLocation:v5];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    (*(*(a1 + 40) + 16))(v7, v9, v11, v13);
  }
}

@end