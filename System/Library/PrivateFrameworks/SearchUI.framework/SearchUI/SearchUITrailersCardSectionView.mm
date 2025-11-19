@interface SearchUITrailersCardSectionView
- (SearchUITrailersCardSectionView)initWithRowModel:(id)a3 feedbackDelegate:(id)a4;
- (id)setupContentView;
@end

@implementation SearchUITrailersCardSectionView

- (SearchUITrailersCardSectionView)initWithRowModel:(id)a3 feedbackDelegate:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v30.receiver = self;
  v30.super_class = SearchUITrailersCardSectionView;
  v7 = [(SearchUICardSectionView *)&v30 initWithRowModel:v6 feedbackDelegate:a4];
  if (v7)
  {
    v8 = [v6 cardSection];
    v9 = objc_opt_new();
    v10 = [v8 title];
    [v9 setText:v10];

    v11 = [MEMORY[0x1E69D9138] boldBodyFont];
    [v9 setFont:v11];

    v12 = [(SearchUICardSectionView *)v7 contentView];
    [v12 addArrangedSubview:v9];

    v13 = objc_opt_new();
    [v13 setSpacing:14.0];
    LODWORD(v14) = 1148846080;
    [v13 setContentCompressionResistancePriority:0 forAxis:v14];
    LODWORD(v15) = 1148846080;
    [v13 setContentHuggingPriority:0 forAxis:v15];
    [MEMORY[0x1E69D9248] makeContainerShadowCompatible:v13];
    v16 = [objc_alloc(MEMORY[0x1E69D91C0]) initWithDocumentView:v13];
    [v16 setShowsHorizontalScrollIndicator:0];
    [v16 setCanScrollDocumentViewVertically:0];
    [v16 setHorizontalAlignment:1];
    [MEMORY[0x1E69D9248] makeContainerShadowCompatible:v16];
    v17 = [(SearchUICardSectionView *)v7 contentView];
    [v17 addArrangedSubview:v16];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = v8;
    v18 = [v8 mediaItems];
    v19 = [v18 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v27;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v27 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [[SearchUITrailerView alloc] initWithMediaItem:*(*(&v26 + 1) + 8 * i) cardSectionView:v7];
          [v13 addArrangedSubview:v23];
        }

        v20 = [v18 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v20);
    }

    [(SearchUITrailersCardSectionView *)v7 setClipsToBounds:1];
  }

  return v7;
}

- (id)setupContentView
{
  v2 = objc_opt_new();
  v3 = [v2 layer];
  [v3 setMasksToBounds:1];

  [v2 setAxis:1];
  [v2 setLayoutMarginsRelativeArrangement:1];
  [v2 setSpacing:10.0];
  [v2 setBaselineRelativeArrangement:1];
  [MEMORY[0x1E69D9248] defaultLayoutMargins];
  [v2 setLayoutMargins:?];

  return v2;
}

@end