@interface SearchUIMovieCardSectionView
+ (id)dragTitleForCardSection:(id)a3;
- (SearchUIMovieCardSectionView)initWithRowModel:(id)a3 feedbackDelegate:(id)a4;
- (id)setupContentView;
@end

@implementation SearchUIMovieCardSectionView

- (SearchUIMovieCardSectionView)initWithRowModel:(id)a3 feedbackDelegate:(id)a4
{
  v6 = a3;
  v32.receiver = self;
  v32.super_class = SearchUIMovieCardSectionView;
  v7 = [(SearchUICardSectionView *)&v32 initWithRowModel:v6 feedbackDelegate:a4];
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = [v6 cardSection];
  v9 = [v8 mediaItem];
  v10 = [v9 thumbnail];
  if (v10)
  {

LABEL_5:
    v12 = objc_opt_new();
    LODWORD(v13) = 1148846080;
    [v12 setContentCompressionResistancePriority:1 forAxis:v13];
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __66__SearchUIMovieCardSectionView_initWithRowModel_feedbackDelegate___block_invoke;
    v29 = &unk_1E85B2540;
    v30 = v8;
    v31 = v12;
    v14 = v12;
    [v14 performBatchUpdates:&v26];
    v15 = [(SearchUICardSectionView *)v7 contentView:v26];
    [v15 addArrangedSubview:v14];

    goto LABEL_6;
  }

  v11 = [v8 details];

  if (v11)
  {
    goto LABEL_5;
  }

LABEL_6:
  v16 = [v8 watchListIdentifier];
  v17 = [v16 length];

  if (v17)
  {
    v18 = [[SearchUIButtonsView alloc] initWithCardSectionView:v7];
    [(SearchUIButtonsView *)v18 setLayoutMarginsRelativeArrangement:1];
    +[SearchUIUtilities standardTableCellContentInset];
    v20 = v19;
    [MEMORY[0x1E69D91A8] deviceScaledRoundedValue:v7 forView:11.5];
    v22 = v21;
    +[SearchUIUtilities standardTableCellContentInset];
    [(SearchUIButtonsView *)v18 setLayoutMargins:0.0, v20, v22, v23];
    v24 = [(SearchUICardSectionView *)v7 contentView];
    [v24 addArrangedSubview:v18];
  }

LABEL_9:
  return v7;
}

void __66__SearchUIMovieCardSectionView_initWithRowModel_feedbackDelegate___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) mediaItem];
  v3 = [v2 thumbnail];

  if (v3)
  {
    v4 = [*(a1 + 32) mediaItem];
    v5 = [v4 thumbnail];
    v6 = [SearchUITLKImageConverter imageForSFImage:v5];
    [*(a1 + 40) setImage:v6];
  }

  v7 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [*(a1 + 32) details];
  v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = objc_opt_new();
        v14 = [v12 title];
        v15 = [SearchUITLKMultilineTextConverter textForSearchUIString:v14];
        [v13 setTitle:v15];

        v16 = MEMORY[0x1E695DEC8];
        v17 = [v12 content];
        v18 = [SearchUITLKMultilineTextConverter textForSearchUIText:v17];
        v19 = [v16 arrayWithObject:v18];
        [v13 setDetails:v19];

        [v7 addObject:v13];
      }

      v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  [*(a1 + 40) setContents:v7];
}

- (id)setupContentView
{
  v2 = objc_opt_new();
  [v2 setAxis:1];
  [v2 setSpacing:4.0];

  return v2;
}

+ (id)dragTitleForCardSection:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AD60] string];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v3 details];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 title];
        v12 = [v10 content];
        v13 = [v12 text];
        [v4 appendFormat:@"%@\n%@\n\n", v11, v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v4;
}

@end