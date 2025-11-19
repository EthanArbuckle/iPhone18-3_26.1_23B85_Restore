@interface UIFindNavigatorViewLayout
@end

@implementation UIFindNavigatorViewLayout

void __66___UIFindNavigatorViewLayout_commonButtonConfigWithTitle_isGlass___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTitle:*(a1 + 32)];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66___UIFindNavigatorViewLayout_commonButtonConfigWithTitle_isGlass___block_invoke_2;
  v4[3] = &unk_1E70F34C8;
  objc_copyWeak(&v5, (a1 + 40));
  [v3 setTitleTextAttributesTransformer:v4];
  objc_destroyWeak(&v5);
}

id __66___UIFindNavigatorViewLayout_commonButtonConfigWithTitle_isGlass___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained traitCollection];

  v6 = [v5 preferredContentSizeCategory];
  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v7 preferredMaximumContentSizeCategory];
  v9 = UIContentSizeCategoryCompareToCategory(v6, v8);

  if (v9 == NSOrderedDescending)
  {
    v10 = objc_loadWeakRetained((a1 + 32));
    v11 = [v10 preferredMaximumContentSizeCategory];
    v12 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:v11];

    v5 = v12;
  }

  v13 = [off_1E70ECC20 preferredFontDescriptorWithTextStyle:@"UICTFontTextStyleSubhead" compatibleWithTraitCollection:v5];
  v14 = [v3 mutableCopy];

  [v13 pointSize];
  v15 = [off_1E70ECC18 boldSystemFontOfSize:?];
  [v14 setObject:v15 forKeyedSubscript:*off_1E70EC918];

  return v14;
}

void __74___UIFindNavigatorViewLayout_commonButtonConfigWithImageName_isAccessory___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [UIImage _systemImageNamed:v2 withConfiguration:0];
  [v3 setImage:v4];
}

@end