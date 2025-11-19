@interface SearchUICommandCardSectionView
- (SearchUICommandCardSectionView)initWithRowModel:(id)a3 feedbackDelegate:(id)a4;
- (id)setupContentView;
- (void)fetchStateForNewRowModel:(id)a3;
- (void)updateWithRowModel:(id)a3;
@end

@implementation SearchUICommandCardSectionView

- (SearchUICommandCardSectionView)initWithRowModel:(id)a3 feedbackDelegate:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = SearchUICommandCardSectionView;
  v7 = [(SearchUICardSectionView *)&v10 initWithRowModel:v6 feedbackDelegate:a4];
  v8 = v7;
  if (v7)
  {
    [(SearchUICommandCardSectionView *)v7 fetchStateForNewRowModel:v6];
  }

  return v8;
}

- (id)setupContentView
{
  v24[3] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [(SearchUICommandCardSectionView *)self setRowView:v3];

  v4 = *MEMORY[0x1E69DDCE0];
  v5 = *(MEMORY[0x1E69DDCE0] + 8);
  v6 = *(MEMORY[0x1E69DDCE0] + 16);
  v7 = *(MEMORY[0x1E69DDCE0] + 24);
  v8 = [(SearchUICommandCardSectionView *)self rowView];
  [v8 setLayoutMargins:{v4, v5, v6, v7}];

  v9 = objc_opt_new();
  [v9 setSymbolName:@"clock.badge.fill"];
  [v9 setIsTemplate:1];
  [SearchUIAppIconImage sizeForVariant:2];
  [v9 setSize:?];
  v10 = objc_opt_new();
  [v10 setProminence:0];
  v11 = [SearchUITLKImageConverter imageForSFImage:v9];
  [v10 setTlkImage:v11];

  [SearchUIAutoLayout requireIntrinsicSizeForView:v10];
  v12 = objc_opt_new();
  [v12 setSymbolName:@"checkmark"];
  [v12 setIsTemplate:1];
  v13 = objc_opt_new();
  [v13 setProminence:0];
  v14 = [SearchUITLKImageConverter imageForSFImage:v12];
  [v13 setTlkImage:v14];

  v15 = [MEMORY[0x1E69D9138] cachedFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v13 setSymbolFont:v15];

  [v13 setSymbolWeight:6];
  [SearchUIAutoLayout requireIntrinsicSizeForView:v13];
  [(SearchUICommandCardSectionView *)self setCheckmarkImageView:v13];
  v16 = objc_alloc(MEMORY[0x1E698B730]);
  v17 = [(SearchUICommandCardSectionView *)self rowView];
  v24[1] = v17;
  v24[2] = v13;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:3];
  v19 = [v16 initWithArrangedSubviews:v18];

  [v19 setAlignment:3];
  [v19 setSpacing:10.0];
  [v19 setLayoutMarginsRelativeArrangement:1];
  [MEMORY[0x1E69D9248] defaultLayoutMargins];
  v21 = v20;
  [MEMORY[0x1E69D9248] defaultLayoutMargins];
  [v19 setDirectionalLayoutMargins:{0.0, v21, 0.0}];
  v22 = [(SearchUICommandCardSectionView *)self layer];
  [v22 setAllowsGroupOpacity:0];

  return v19;
}

- (void)updateWithRowModel:(id)a3
{
  v4 = a3;
  v5 = [(SearchUICardSectionView *)self rowModel];

  v11.receiver = self;
  v11.super_class = SearchUICommandCardSectionView;
  [(SearchUICardSectionView *)&v11 updateWithRowModel:v4];
  v6 = [v4 title];
  v7 = [(SearchUICommandCardSectionView *)self rowView];
  [v7 setLeadingTitle:v6];

  v8 = [v4 subtitle];
  v9 = [(SearchUICommandCardSectionView *)self rowView];
  [v9 setLeadingSubtitle:v8];

  LODWORD(v8) = [v4 toggled];
  v10 = [(SearchUICommandCardSectionView *)self checkmarkImageView];
  [v10 setHidden:v8 ^ 1];

  if (v5 != v4)
  {
    [(SearchUICommandCardSectionView *)self fetchStateForNewRowModel:v4];
  }
}

- (void)fetchStateForNewRowModel:(id)a3
{
  v4 = a3;
  [(SearchUICommandCardSectionView *)self setAlpha:0.0];
  v5 = [MEMORY[0x1E695DFD0] currentRunLoop];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__SearchUICommandCardSectionView_fetchStateForNewRowModel___block_invoke;
  v7[3] = &unk_1E85B2540;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v5 performBlock:v7];
}

void __59__SearchUICommandCardSectionView_fetchStateForNewRowModel___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__SearchUICommandCardSectionView_fetchStateForNewRowModel___block_invoke_2;
  v5[3] = &unk_1E85B2518;
  v3 = v2;
  v4 = *(a1 + 40);
  v6 = v3;
  v7 = v4;
  [v3 checkIfCommandIsValidWithCompletionHandler:v5];
}

void __59__SearchUICommandCardSectionView_fetchStateForNewRowModel___block_invoke_2(uint64_t a1, char a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__SearchUICommandCardSectionView_fetchStateForNewRowModel___block_invoke_3;
  v6[3] = &unk_1E85B24F0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  v9 = a2;
  [SearchUIUtilities dispatchMainIfNecessary:v6];
}

void __59__SearchUICommandCardSectionView_fetchStateForNewRowModel___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) rowModel];

  if (v2 == v3)
  {
    if (*(a1 + 48) == 1)
    {
      [*(a1 + 32) updateStateWithCommandCardSectionView:*(a1 + 40)];
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __59__SearchUICommandCardSectionView_fetchStateForNewRowModel___block_invoke_4;
      v5[3] = &unk_1E85B24C8;
      v5[4] = *(a1 + 40);
      [MEMORY[0x1E69D9240] performAnimatableChanges:v5];
    }

    else
    {
      v4 = *(a1 + 40);

      [v4 requestRemovalFromEnclosingView];
    }
  }
}

@end