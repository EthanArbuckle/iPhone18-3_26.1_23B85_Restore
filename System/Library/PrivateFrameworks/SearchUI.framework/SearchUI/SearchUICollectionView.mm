@interface SearchUICollectionView
- (SearchUICollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout;
- (void)layoutSubviews;
- (void)setContentSize:(CGSize)size;
@end

@implementation SearchUICollectionView

- (void)layoutSubviews
{
  v17 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = SearchUICollectionView;
  [(SearchUICollectionView *)&v15 layoutSubviews];
  v3 = [MEMORY[0x1E69D9108] bestAppearanceForView:self];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  subviews = [(SearchUICollectionView *)self subviews];
  v5 = [subviews countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(subviews);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        NSClassFromString(&cfstr_Uicollectionvi.isa);
        if (objc_opt_isKindOfClass())
        {
          v10 = [SearchUISeparatorView separatorColorForAppearance:v3];
          [v9 setBackgroundColor:v10];

          [v3 enableAppearanceForView:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [subviews countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v6);
  }
}

- (SearchUICollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout
{
  v7.receiver = self;
  v7.super_class = SearchUICollectionView;
  v4 = [(SearchUICollectionView *)&v7 initWithFrame:layout collectionViewLayout:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v4)
  {
    v5 = objc_opt_new();
    [(SearchUICollectionView *)v4 setCalculatedSizes:v5];
  }

  return v4;
}

- (void)setContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v16 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = SearchUICollectionView;
  [(SearchUICollectionView *)&v13 setContentSize:?];
  v6 = [MEMORY[0x1E696B098] valueWithSize:{width, height}];
  if ([MEMORY[0x1E69D9240] isSiri])
  {
    calculatedSizes = [(SearchUICollectionView *)self calculatedSizes];
    v8 = [calculatedSizes containsObject:v6];

    if ((v8 & 1) == 0)
    {
      v9 = SearchUIGeneralLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v15 = v6;
        _os_log_impl(&dword_1DA169000, v9, OS_LOG_TYPE_DEFAULT, "SearchUICollectionView setContentSize: %@", buf, 0xCu);
      }

      calculatedSizes2 = [(SearchUICollectionView *)self calculatedSizes];
      [calculatedSizes2 addObject:v6];

      collectionViewLayout = [(SearchUICollectionView *)self collectionViewLayout];
      sizingDelegate = [collectionViewLayout sizingDelegate];
      [sizingDelegate contentSizeDidChange:{width, height}];
    }
  }
}

@end