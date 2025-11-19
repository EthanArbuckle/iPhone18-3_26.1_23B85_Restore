@interface UIBarCustomizationChiclet
@end

@implementation UIBarCustomizationChiclet

void __43___UIBarCustomizationChiclet_initWithItem___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = _itemViewFromItem(a2, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  [v2 addObject:v3];
}

void __46___UIBarCustomizationChiclet_setLabelVisible___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 label];
  [v2 addSubview:v3];

  v4 = [*(a1 + 32) label];
  [v4 setAlpha:0.0];

  v5 = [*(a1 + 32) platterView];
  v6 = [*(a1 + 32) platterView];
  [v6 bounds];
  [v5 convertRect:*(a1 + 32) toView:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v19.origin.x = v8;
  v19.origin.y = v10;
  v19.size.width = v12;
  v19.size.height = v14;
  MidX = CGRectGetMidX(v19);
  v20.origin.x = v8;
  v20.origin.y = v10;
  v20.size.width = v12;
  v20.size.height = v14;
  v16 = CGRectGetMaxY(v20) + 10.0;
  v17 = [*(a1 + 32) label];
  [v17 setCenter:{MidX, v16}];
}

@end