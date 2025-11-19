@interface SearchUICollectionView
- (SearchUICollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4;
- (void)layoutSubviews;
- (void)setContentSize:(CGSize)a3;
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
  v4 = [(SearchUICollectionView *)self subviews];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
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
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v6);
  }
}

- (SearchUICollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4
{
  v7.receiver = self;
  v7.super_class = SearchUICollectionView;
  v4 = [(SearchUICollectionView *)&v7 initWithFrame:a4 collectionViewLayout:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v4)
  {
    v5 = objc_opt_new();
    [(SearchUICollectionView *)v4 setCalculatedSizes:v5];
  }

  return v4;
}

- (void)setContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v16 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = SearchUICollectionView;
  [(SearchUICollectionView *)&v13 setContentSize:?];
  v6 = [MEMORY[0x1E696B098] valueWithSize:{width, height}];
  if ([MEMORY[0x1E69D9240] isSiri])
  {
    v7 = [(SearchUICollectionView *)self calculatedSizes];
    v8 = [v7 containsObject:v6];

    if ((v8 & 1) == 0)
    {
      v9 = SearchUIGeneralLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v15 = v6;
        _os_log_impl(&dword_1DA169000, v9, OS_LOG_TYPE_DEFAULT, "SearchUICollectionView setContentSize: %@", buf, 0xCu);
      }

      v10 = [(SearchUICollectionView *)self calculatedSizes];
      [v10 addObject:v6];

      v11 = [(SearchUICollectionView *)self collectionViewLayout];
      v12 = [v11 sizingDelegate];
      [v12 contentSizeDidChange:{width, height}];
    }
  }
}

@end