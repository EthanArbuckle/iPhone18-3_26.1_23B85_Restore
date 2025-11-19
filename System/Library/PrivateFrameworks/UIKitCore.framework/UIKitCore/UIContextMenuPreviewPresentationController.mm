@interface UIContextMenuPreviewPresentationController
@end

@implementation UIContextMenuPreviewPresentationController

void __83___UIContextMenuPreviewPresentationController__traitCollectionForChildEnvironment___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  if (*(a1 + 32))
  {
    v6 = v16[2]();
    v7 = [v6 horizontalSizeClass];
    v8 = *(a1 + 32);

    if (v7 != v8)
    {
      v9 = *(a1 + 32);
      v10 = v5[2](v5);
      [v10 setHorizontalSizeClass:v9];
    }
  }

  if (*(a1 + 40))
  {
    v11 = v16[2]();
    v12 = [v11 verticalSizeClass];
    v13 = *(a1 + 40);

    if (v12 != v13)
    {
      v14 = *(a1 + 40);
      v15 = v5[2](v5);
      [v15 setVerticalSizeClass:v14];
    }
  }
}

@end