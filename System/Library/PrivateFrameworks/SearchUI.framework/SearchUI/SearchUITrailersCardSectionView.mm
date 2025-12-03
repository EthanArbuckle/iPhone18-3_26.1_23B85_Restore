@interface SearchUITrailersCardSectionView
- (SearchUITrailersCardSectionView)initWithRowModel:(id)model feedbackDelegate:(id)delegate;
- (id)setupContentView;
@end

@implementation SearchUITrailersCardSectionView

- (SearchUITrailersCardSectionView)initWithRowModel:(id)model feedbackDelegate:(id)delegate
{
  v32 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  v30.receiver = self;
  v30.super_class = SearchUITrailersCardSectionView;
  v7 = [(SearchUICardSectionView *)&v30 initWithRowModel:modelCopy feedbackDelegate:delegate];
  if (v7)
  {
    cardSection = [modelCopy cardSection];
    v9 = objc_opt_new();
    title = [cardSection title];
    [v9 setText:title];

    boldBodyFont = [MEMORY[0x1E69D9138] boldBodyFont];
    [v9 setFont:boldBodyFont];

    contentView = [(SearchUICardSectionView *)v7 contentView];
    [contentView addArrangedSubview:v9];

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
    contentView2 = [(SearchUICardSectionView *)v7 contentView];
    [contentView2 addArrangedSubview:v16];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = cardSection;
    mediaItems = [cardSection mediaItems];
    v19 = [mediaItems countByEnumeratingWithState:&v26 objects:v31 count:16];
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
            objc_enumerationMutation(mediaItems);
          }

          v23 = [[SearchUITrailerView alloc] initWithMediaItem:*(*(&v26 + 1) + 8 * i) cardSectionView:v7];
          [v13 addArrangedSubview:v23];
        }

        v20 = [mediaItems countByEnumeratingWithState:&v26 objects:v31 count:16];
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
  layer = [v2 layer];
  [layer setMasksToBounds:1];

  [v2 setAxis:1];
  [v2 setLayoutMarginsRelativeArrangement:1];
  [v2 setSpacing:10.0];
  [v2 setBaselineRelativeArrangement:1];
  [MEMORY[0x1E69D9248] defaultLayoutMargins];
  [v2 setLayoutMargins:?];

  return v2;
}

@end