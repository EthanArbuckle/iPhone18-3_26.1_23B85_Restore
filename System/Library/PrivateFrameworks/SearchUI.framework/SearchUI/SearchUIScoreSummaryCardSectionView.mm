@interface SearchUIScoreSummaryCardSectionView
+ (id)titleForScoreBoard:(id)board forDisplay:(BOOL)display;
- (BOOL)hasCommandForButtonItem:(id)item;
- (CGSize)containerView:(id)view systemLayoutSizeFittingSize:(CGSize)size forArrangedSubview:(id)subview;
- (id)commandForButtonItem:(id)item;
- (id)setupContentView;
- (void)containerView:(id)view willMeasureArrangedSubviewsFittingSize:(CGSize)size forReason:(int64_t)reason;
- (void)didPressLeadingButtonForSplitHeader:(id)header;
- (void)didPressTrailingButtonForSplitHeader:(id)header;
- (void)performCommandForButtonItem:(id)item;
- (void)updateChevronVisible:(BOOL)visible leaveSpaceForChevron:(BOOL)chevron;
- (void)updateWithRowModel:(id)model;
@end

@implementation SearchUIScoreSummaryCardSectionView

- (id)setupContentView
{
  v3 = objc_opt_new();
  [v3 disableUnbatchedUpdates];
  [(SearchUIScoreSummaryCardSectionView *)self setSplitHeaderView:v3];
  splitHeaderView = [(SearchUIScoreSummaryCardSectionView *)self splitHeaderView];
  [splitHeaderView setDelegate:self];

  v5 = objc_opt_new();
  [v5 setHorizontalAlignment:3];
  [v5 setDelegate:self];
  [v5 setLayoutMarginsRelativeArrangement:1];
  [v5 setLayoutMargins:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  [v5 addArrangedSubview:v3];

  return v5;
}

- (void)updateWithRowModel:(id)model
{
  v13.receiver = self;
  v13.super_class = SearchUIScoreSummaryCardSectionView;
  modelCopy = model;
  [(SearchUICardSectionView *)&v13 updateWithRowModel:modelCopy];
  cardSection = [modelCopy cardSection];

  splitHeaderView = [(SearchUIScoreSummaryCardSectionView *)self splitHeaderView];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__SearchUIScoreSummaryCardSectionView_updateWithRowModel___block_invoke;
  v9[3] = &unk_1E85B26A8;
  v10 = cardSection;
  v11 = splitHeaderView;
  selfCopy = self;
  v7 = splitHeaderView;
  v8 = cardSection;
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

- (void)containerView:(id)view willMeasureArrangedSubviewsFittingSize:(CGSize)size forReason:(int64_t)reason
{
  v8.receiver = self;
  v8.super_class = SearchUIScoreSummaryCardSectionView;
  [(SearchUICardSectionView *)&v8 containerView:view willMeasureArrangedSubviewsFittingSize:reason forReason:size.width, size.height];
  isCompactWidth = [(SearchUICardSectionView *)self isCompactWidth];
  splitHeaderView = [(SearchUIScoreSummaryCardSectionView *)self splitHeaderView];
  [splitHeaderView setUseCompactWidth:isCompactWidth];
}

- (CGSize)containerView:(id)view systemLayoutSizeFittingSize:(CGSize)size forArrangedSubview:(id)subview
{
  height = size.height;
  width = size.width;
  subviewCopy = subview;
  splitHeaderView = [(SearchUIScoreSummaryCardSectionView *)self splitHeaderView];

  if (splitHeaderView == subviewCopy)
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

    [subviewCopy effectiveLayoutSizeFittingSize:{v11, height}];
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

- (void)updateChevronVisible:(BOOL)visible leaveSpaceForChevron:(BOOL)chevron
{
  v4.receiver = self;
  v4.super_class = SearchUIScoreSummaryCardSectionView;
  [(SearchUICardSectionView *)&v4 updateChevronVisible:0 leaveSpaceForChevron:0];
}

+ (id)titleForScoreBoard:(id)board forDisplay:(BOOL)display
{
  displayCopy = display;
  boardCopy = board;
  team1 = [boardCopy team1];
  team2 = [boardCopy team2];
  score = [team1 score];
  if (score)
  {
    score2 = [team2 score];
    v10 = score2 != 0;
  }

  else
  {
    v10 = 0;
  }

  record = [team1 record];
  if (record)
  {
    record2 = [team2 record];
    v13 = record2 != 0;
  }

  else
  {
    v13 = 0;
  }

  if (!displayCopy)
  {
    v20 = MEMORY[0x1E696AEC0];
    name = [team1 name];
    if (v10)
    {
      score3 = [team1 score];
      name2 = [team2 name];
      score4 = [team2 score];
      subtitle = [boardCopy subtitle];
      title = [v20 stringWithFormat:@"%@, %@ – %@, %@\n %@", name, score3, name2, score4, subtitle];
    }

    else
    {
      if (!v13)
      {
        score3 = [team2 name];
        [v20 stringWithFormat:@"%@ – %@", name, score3];
        title = LABEL_20:;
LABEL_21:

        if (title)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      score3 = [team1 record];
      name2 = [team2 name];
      score4 = [team2 record];
      title = [v20 stringWithFormat:@"%@, %@ – %@, %@", name, score3, name2, score4];
    }

    goto LABEL_21;
  }

  if (v10)
  {
    score5 = [team1 score];
    v15 = @"%@–%@";
    if ([score5 length] <= 2)
    {
      score6 = [team2 score];
      if ([score6 length] <= 2)
      {
        v15 = @"%@ – %@";
      }
    }

    v17 = MEMORY[0x1E696AEC0];
    name = [team1 score];
    score3 = [team2 score];
    [v17 stringWithFormat:v15, name, score3];
    goto LABEL_20;
  }

LABEL_22:
  title = [boardCopy title];
LABEL_23:

  return title;
}

- (void)didPressLeadingButtonForSplitHeader:(id)header
{
  rowModel = [(SearchUICardSectionView *)self rowModel];
  cardSection = [rowModel cardSection];

  team1 = [cardSection team1];
  button = [team1 button];
  [(SearchUIScoreSummaryCardSectionView *)self performCommandForButtonItem:button];
}

- (void)didPressTrailingButtonForSplitHeader:(id)header
{
  rowModel = [(SearchUICardSectionView *)self rowModel];
  cardSection = [rowModel cardSection];

  team2 = [cardSection team2];
  button = [team2 button];
  [(SearchUIScoreSummaryCardSectionView *)self performCommandForButtonItem:button];
}

- (BOOL)hasCommandForButtonItem:(id)item
{
  v3 = [(SearchUIScoreSummaryCardSectionView *)self commandForButtonItem:item];
  v4 = v3 != 0;

  return v4;
}

- (void)performCommandForButtonItem:(id)item
{
  v3 = [(SearchUIScoreSummaryCardSectionView *)self commandForButtonItem:item];
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

- (id)commandForButtonItem:(id)item
{
  itemCopy = item;
  rowModel = [(SearchUICardSectionView *)self rowModel];
  feedbackDelegate = [(SearchUICardSectionView *)self feedbackDelegate];
  v7 = [SearchUIUtilities environmentForDelegate:feedbackDelegate];
  v8 = [SearchUICommandHandler handlerForButton:itemCopy rowModel:rowModel environment:v7];

  return v8;
}

@end