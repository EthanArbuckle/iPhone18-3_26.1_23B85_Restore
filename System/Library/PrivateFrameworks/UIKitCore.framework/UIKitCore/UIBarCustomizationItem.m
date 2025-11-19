@interface UIBarCustomizationItem
@end

@implementation UIBarCustomizationItem

void __51___UIBarCustomizationItem__sourceFrameInContainer___block_invoke(uint64_t a1, void *a2)
{
  v20 = a2;
  v3 = [v20 sourceViewProvider];

  v4 = v20;
  if (v3)
  {
    v5 = [v20 sourceViewProvider];
    v6 = (v5)[2](v5, v20);

    v7 = [v6 window];
    if (v7)
    {
      v8 = v7;
      v9 = [v6 superview];
      v10 = +[_UIBarCustomizationCustomViewPortalSourceContainer sharedContainer];

      if (v9 != v10)
      {
        v11 = [v6 superview];
        [v6 frame];
        [v11 convertRect:*(a1 + 32) toView:?];
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v19 = v18;

        v22.origin.x = v13;
        v22.origin.y = v15;
        v22.size.width = v17;
        v22.size.height = v19;
        *(*(*(a1 + 40) + 8) + 32) = CGRectUnion(*(*(*(a1 + 40) + 8) + 32), v22);
      }
    }

    v4 = v20;
  }
}

@end