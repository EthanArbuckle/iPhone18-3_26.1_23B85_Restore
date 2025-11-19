@interface UIFloatingTabBarCollectionViewLayout
@end

@implementation UIFloatingTabBarCollectionViewLayout

id __64___UIFloatingTabBarCollectionViewLayout_initWithFloatingTabBar___block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [off_1E70ECB18 estimatedDimension:80.0];
  v4 = [off_1E70ECB18 fractionalHeightDimension:1.0];
  v5 = [off_1E70ECB40 sizeWithWidthDimension:v3 heightDimension:v4];

  v6 = [off_1E70ECB30 itemWithLayoutSize:v5];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v8 = [off_1E70ECB28 verticalGroupWithLayoutSize:v5 subitems:v7];

  v9 = [off_1E70ECB38 sectionWithGroup:v8];
  [v9 setContentInsetsReference:1];
  [v9 setContentInsets:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];

  return v9;
}

@end