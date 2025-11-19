@interface SearchUIScoreSummaryCardSectionView
+ (id)titleForScoreBoard:(id)a3 forDisplay:(BOOL)a4;
- (BOOL)hasCommandForButtonItem:(id)a3;
- (CGSize)containerView:(id)a3 systemLayoutSizeFittingSize:(CGSize)a4 forArrangedSubview:(id)a5;
- (id)commandForButtonItem:(id)a3;
- (id)setupContentView;
- (void)containerView:(id)a3 willMeasureArrangedSubviewsFittingSize:(CGSize)a4 forReason:(int64_t)a5;
- (void)didPressLeadingButtonForSplitHeader:(id)a3;
- (void)didPressTrailingButtonForSplitHeader:(id)a3;
- (void)performCommandForButtonItem:(id)a3;
- (void)updateChevronVisible:(BOOL)a3 leaveSpaceForChevron:(BOOL)a4;
- (void)updateWithRowModel:(id)a3;
@end

@implementation SearchUIScoreSummaryCardSectionView

- (id)setupContentView
{
  v3 = objc_opt_new();
  [v3 disableUnbatchedUpdates];
  [(SearchUIScoreSummaryCardSectionView *)self setSplitHeaderView:v3];
  v4 = [(SearchUIScoreSummaryCardSectionView *)self splitHeaderView];
  [v4 setDelegate:self];

  v5 = objc_opt_new();
  [v5 setHorizontalAlignment:3];
  [v5 setDelegate:self];
  [v5 setLayoutMarginsRelativeArrangement:1];
  [v5 setLayoutMargins:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  [v5 addArrangedSubview:v3];

  return v5;
}

- (void)updateWithRowModel:(id)a3
{
  v13.receiver = self;
  v13.super_class = SearchUIScoreSummaryCardSectionView;
  v4 = a3;
  [(SearchUICardSectionView *)&v13 updateWithRowModel:v4];
  v5 = [v4 cardSection];

  v6 = [(SearchUIScoreSummaryCardSectionView *)self splitHeaderView];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__SearchUIScoreSummaryCardSectionView_updateWithRowModel___block_invoke;
  v9[3] = &unk_1E85B26A8;
  v10 = v5;
  v11 = v6;
  v12 = self;
  v7 = v6;
  v8 = v5;
  [v7 performBatchUpdates:v9];
}

void __58__SearchUIScoreSummaryCardSectionView_updateWithRowModel___block_invoke(uint64_t a1)
{
  v49 = [*(a1 + 32) title];
  v2 = [*(a1 + 32) team1];
  v3 = [v2 score];
  if (!v3)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v4 = [*(a1 + 32) team2];
  v5 = [v4 score];

  if (v5)
  {

    v6 = [*(a1 + 32) team1];
    v7 = [v6 score];
    v3 = [SearchUITLKMultilineTextConverter textForSearchUIString:v7];

    v2 = [*(a1 + 32) team2];
    v8 = [v2 score];
    v9 = [SearchUITLKMultilineTextConverter textForSearchUIString:v8];

    v49 = @"–";
LABEL_5:

    goto LABEL_7;
  }

  v9 = 0;
  v3 = 0;
LABEL_7:
  v10 = [SearchUITLKMultilineTextConverter textForSearchUIString:v49];
  [*(a1 + 40) setTitle:v10];

  [*(a1 + 40) setCenterLeadingTitle:v3];
  [*(a1 + 40) setCenterTrailingTitle:v9];
  v11 = [*(a1 + 32) team1];
  v12 = [v11 score];
  if (v12)
  {
    v13 = [*(a1 + 32) team2];
    v14 = [v13 score];
    [*(a1 + 40) setUseLargeTitle:v14 != 0];
  }

  else
  {
    [*(a1 + 40) setUseLargeTitle:0];
  }

  v15 = [*(a1 + 32) subtitle];
  v16 = [SearchUITLKMultilineTextConverter textForSearchUIString:v15];
  [*(a1 + 40) setSubtitle1:v16];

  v17 = [*(a1 + 32) eventStatus];
  v18 = [SearchUITLKMultilineTextConverter textForSearchUIString:v17];
  [*(a1 + 40) setSubtitle2:v18];

  v19 = [*(a1 + 32) eventStatus];
  v20 = [*(a1 + 40) subtitle1];
  [v20 setMaxLines:v19 != 0];

  [*(a1 + 40) setShouldBadgeSubtitle:1];
  v21 = [*(a1 + 32) team1];
  v22 = [v21 logo];
  v23 = [SearchUITLKImageConverter imageForSFImage:v22];
  [*(a1 + 40) setLeadingImage:v23];

  v24 = *(a1 + 48);
  v25 = [*(a1 + 32) team1];
  v26 = [v25 button];
  [*(a1 + 40) setIsLeadingButtonEnabled:{objc_msgSend(v24, "hasCommandForButtonItem:", v26)}];

  v27 = [*(a1 + 32) team2];
  v28 = [v27 logo];
  v29 = [SearchUITLKImageConverter imageForSFImage:v28];
  [*(a1 + 40) setTrailingImage:v29];

  v30 = *(a1 + 48);
  v31 = [*(a1 + 32) team2];
  v32 = [v31 button];
  [*(a1 + 40) setIsTrailingButtonEnabled:{objc_msgSend(v30, "hasCommandForButtonItem:", v32)}];

  v33 = [*(a1 + 32) team1];
  v34 = [v33 name];
  v35 = [SearchUITLKMultilineTextConverter textForSearchUIString:v34];
  [*(a1 + 40) setLeadingTitle:v35];

  v36 = [*(a1 + 32) team2];
  v37 = [v36 name];
  v38 = [SearchUITLKMultilineTextConverter textForSearchUIString:v37];
  [*(a1 + 40) setTrailingTitle:v38];

  v39 = [*(a1 + 32) team1];
  v40 = [v39 record];
  if ([v40 isEqualToString:@" "])
  {
    v41 = 0;
  }

  else
  {
    v42 = [*(a1 + 32) team1];
    v41 = [v42 record];
  }

  v43 = [*(a1 + 32) team2];
  v44 = [v43 record];
  if ([v44 isEqualToString:@" "])
  {
    v45 = 0;
  }

  else
  {
    v46 = [*(a1 + 32) team2];
    v45 = [v46 record];
  }

  v47 = [SearchUITLKMultilineTextConverter textForSearchUIString:v41];
  [*(a1 + 40) setLeadingSubtitle:v47];

  v48 = [SearchUITLKMultilineTextConverter textForSearchUIString:v45];
  [*(a1 + 40) setTrailingSubtitle:v48];
}

- (void)containerView:(id)a3 willMeasureArrangedSubviewsFittingSize:(CGSize)a4 forReason:(int64_t)a5
{
  v8.receiver = self;
  v8.super_class = SearchUIScoreSummaryCardSectionView;
  [(SearchUICardSectionView *)&v8 containerView:a3 willMeasureArrangedSubviewsFittingSize:a5 forReason:a4.width, a4.height];
  v6 = [(SearchUICardSectionView *)self isCompactWidth];
  v7 = [(SearchUIScoreSummaryCardSectionView *)self splitHeaderView];
  [v7 setUseCompactWidth:v6];
}

- (CGSize)containerView:(id)a3 systemLayoutSizeFittingSize:(CGSize)a4 forArrangedSubview:(id)a5
{
  height = a4.height;
  width = a4.width;
  v8 = a5;
  v9 = [(SearchUIScoreSummaryCardSectionView *)self splitHeaderView];

  if (v9 == v8)
  {
    v12 = +[SearchUIUtilities isLargeIpad];
    v13 = 406.0;
    if (width <= 406.0)
    {
      v13 = width;
    }

    if (v12 && width > 474.0)
    {
      v11 = 474.0;
    }

    else
    {
      v11 = v13;
    }

    [v8 effectiveLayoutSizeFittingSize:{v11, height}];
    v10 = v14;
  }

  else
  {
    v11 = *MEMORY[0x1E698B708];
    v10 = *(MEMORY[0x1E698B708] + 8);
  }

  v15 = v11;
  v16 = v10;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)updateChevronVisible:(BOOL)a3 leaveSpaceForChevron:(BOOL)a4
{
  v4.receiver = self;
  v4.super_class = SearchUIScoreSummaryCardSectionView;
  [(SearchUICardSectionView *)&v4 updateChevronVisible:0 leaveSpaceForChevron:0];
}

+ (id)titleForScoreBoard:(id)a3 forDisplay:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [v5 team1];
  v7 = [v5 team2];
  v8 = [v6 score];
  if (v8)
  {
    v9 = [v7 score];
    v10 = v9 != 0;
  }

  else
  {
    v10 = 0;
  }

  v11 = [v6 record];
  if (v11)
  {
    v12 = [v7 record];
    v13 = v12 != 0;
  }

  else
  {
    v13 = 0;
  }

  if (!v4)
  {
    v20 = MEMORY[0x1E696AEC0];
    v18 = [v6 name];
    if (v10)
    {
      v19 = [v6 score];
      v21 = [v7 name];
      v22 = [v7 score];
      v23 = [v5 subtitle];
      v24 = [v20 stringWithFormat:@"%@, %@ – %@, %@\n %@", v18, v19, v21, v22, v23];
    }

    else
    {
      if (!v13)
      {
        v19 = [v7 name];
        [v20 stringWithFormat:@"%@ – %@", v18, v19];
        v24 = LABEL_20:;
LABEL_21:

        if (v24)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      v19 = [v6 record];
      v21 = [v7 name];
      v22 = [v7 record];
      v24 = [v20 stringWithFormat:@"%@, %@ – %@, %@", v18, v19, v21, v22];
    }

    goto LABEL_21;
  }

  if (v10)
  {
    v14 = [v6 score];
    v15 = @"%@–%@";
    if ([v14 length] <= 2)
    {
      v16 = [v7 score];
      if ([v16 length] <= 2)
      {
        v15 = @"%@ – %@";
      }
    }

    v17 = MEMORY[0x1E696AEC0];
    v18 = [v6 score];
    v19 = [v7 score];
    [v17 stringWithFormat:v15, v18, v19];
    goto LABEL_20;
  }

LABEL_22:
  v24 = [v5 title];
LABEL_23:

  return v24;
}

- (void)didPressLeadingButtonForSplitHeader:(id)a3
{
  v4 = [(SearchUICardSectionView *)self rowModel];
  v7 = [v4 cardSection];

  v5 = [v7 team1];
  v6 = [v5 button];
  [(SearchUIScoreSummaryCardSectionView *)self performCommandForButtonItem:v6];
}

- (void)didPressTrailingButtonForSplitHeader:(id)a3
{
  v4 = [(SearchUICardSectionView *)self rowModel];
  v7 = [v4 cardSection];

  v5 = [v7 team2];
  v6 = [v5 button];
  [(SearchUIScoreSummaryCardSectionView *)self performCommandForButtonItem:v6];
}

- (BOOL)hasCommandForButtonItem:(id)a3
{
  v3 = [(SearchUIScoreSummaryCardSectionView *)self commandForButtonItem:a3];
  v4 = v3 != 0;

  return v4;
}

- (void)performCommandForButtonItem:(id)a3
{
  v3 = [(SearchUIScoreSummaryCardSectionView *)self commandForButtonItem:a3];
  if (v3)
  {
    v5 = v3;
    if ([MEMORY[0x1E69D9240] isMacOS])
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }

    [v5 executeWithTriggerEvent:v4];
    v3 = v5;
  }
}

- (id)commandForButtonItem:(id)a3
{
  v4 = a3;
  v5 = [(SearchUICardSectionView *)self rowModel];
  v6 = [(SearchUICardSectionView *)self feedbackDelegate];
  v7 = [SearchUIUtilities environmentForDelegate:v6];
  v8 = [SearchUICommandHandler handlerForButton:v4 rowModel:v5 environment:v7];

  return v8;
}

@end