@interface UIHorizontalIndexTitleBar
@end

@implementation UIHorizontalIndexTitleBar

id __40___UIHorizontalIndexTitleBar_commonInit__block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = [off_1E70ECB18 estimatedDimension:200.0];
  v3 = [off_1E70ECB18 absoluteDimension:66.0];
  v4 = [off_1E70ECB40 sizeWithWidthDimension:v2 heightDimension:v3];

  v5 = [off_1E70ECB30 itemWithLayoutSize:v4];
  v12[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v7 = [off_1E70ECB28 horizontalGroupWithLayoutSize:v4 subitems:v6];

  v8 = [off_1E70ECB38 sectionWithGroup:v7];
  [*(a1 + 32) _combinedSectionInset];
  [v8 setContentInsets:?];
  v9 = _UISolariumEnabled();
  v10 = 20.0;
  if (v9)
  {
    v10 = 8.0;
  }

  [v8 setInterGroupSpacing:v10];

  return v8;
}

@end