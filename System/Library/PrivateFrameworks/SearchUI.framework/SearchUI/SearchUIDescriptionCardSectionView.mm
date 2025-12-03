@interface SearchUIDescriptionCardSectionView
+ (id)dragSubtitleForCardSection:(id)section;
- (id)setupContentView;
- (void)didPressFootnoteButton;
- (void)didPressMoreButton;
- (void)updateWithRowModel:(id)model;
@end

@implementation SearchUIDescriptionCardSectionView

- (id)setupContentView
{
  v3 = objc_opt_new();
  [v3 setDelegate:self];

  return v3;
}

- (void)updateWithRowModel:(id)model
{
  modelCopy = model;
  cardSection = [modelCopy cardSection];
  section = [(SearchUICardSectionView *)self section];
  v7 = section == cardSection && [(SearchUIDescriptionCardSectionView *)self expanded];
  [(SearchUIDescriptionCardSectionView *)self setExpanded:v7];

  v15.receiver = self;
  v15.super_class = SearchUIDescriptionCardSectionView;
  [(SearchUICardSectionView *)&v15 updateWithRowModel:modelCopy];

  contentView = [(SearchUICardSectionView *)self contentView];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__SearchUIDescriptionCardSectionView_updateWithRowModel___block_invoke;
  v11[3] = &unk_1E85B26A8;
  v12 = contentView;
  v13 = cardSection;
  selfCopy = self;
  v9 = cardSection;
  v10 = contentView;
  [v10 performBatchUpdates:v11];
}

void __57__SearchUIDescriptionCardSectionView_updateWithRowModel___block_invoke(id *a1)
{
  v4 = [a1[5] image];
  v5 = [SearchUITLKImageConverter imageForSFImage:v4];
  [a1[4] setImage:v5];

  v6 = [a1[5] title];
  v7 = [SearchUITLKMultilineTextConverter textForSearchUIString:v6];
  [a1[4] setTitle:v7];

  v8 = [a1[5] richDescriptions];
  v9 = [v8 count];

  v10 = SearchUITLKMultilineTextConverter;
  v11 = a1[5];
  if (v9)
  {
    v12 = [v11 richDescriptions];
    v13 = [v12 firstObject];
    v10 = [SearchUITLKMultilineTextConverter richTextForSearchUIText:v13];
    [a1[4] setText:v10];
  }

  else
  {
    v12 = [v11 descriptionText];
    v13 = [SearchUITLKMultilineTextConverter textForSearchUIText:v12];
    [a1[4] setText:v13];
  }

  v14 = [a1[6] expanded];
  if (v14)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  else
  {
    v13 = [a1[5] richDescriptions];
    v18 = [v13 firstObject];
    v15 = v18 != 0;
    v19 = a1[5];
    if (v18)
    {
      v10 = [v19 richDescriptions];
      v1 = [(__objc2_class *)v10 firstObject];
      v2 = v18;
    }

    else
    {
      v1 = [v19 descriptionText];
      v2 = 0;
    }

    v16 = v18 == 0;
    v17 = [v1 maxLines];
  }

  v20 = [a1[4] text];
  [v20 setMaxLines:v17];

  if (v16)
  {

    if (!v15)
    {
LABEL_12:
      if (v14)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if (!v15)
  {
    goto LABEL_12;
  }

  if ((v14 & 1) == 0)
  {
LABEL_13:
  }

LABEL_14:
  v21 = [a1[5] expandText];
  [a1[4] setMoreButtonText:v21];

  v22 = [a1[5] attributionText];
  [a1[4] setFootnoteButtonText:v22];

  v24 = [a1[5] userReportRequest];
  v23 = [v24 affordanceText];
  [a1[4] setTrailingFootnoteButtonText:v23];
}

+ (id)dragSubtitleForCardSection:(id)section
{
  descriptionText = [section descriptionText];
  text = [descriptionText text];

  return text;
}

- (void)didPressMoreButton
{
  v8 = objc_opt_new();
  v3 = objc_opt_new();
  [v8 setCommand:v3];

  rowModel = [(SearchUICardSectionView *)self rowModel];
  feedbackDelegate = [(SearchUICardSectionView *)self feedbackDelegate];
  v6 = [SearchUIUtilities environmentForDelegate:feedbackDelegate];
  v7 = [SearchUICommandHandler handlerForButton:v8 rowModel:rowModel environment:v6];
  [v7 wasPerformedWithTriggerEvent:2];

  [(SearchUICardSectionView *)self didInvalidateSizeAnimate:1];
  [(SearchUIDescriptionCardSectionView *)self setExpanded:1];
}

- (void)didPressFootnoteButton
{
  rowModel = [(SearchUICardSectionView *)self rowModel];
  cardSection = [rowModel cardSection];

  v4 = MEMORY[0x1E69CA320];
  attributionURL = [cardSection attributionURL];
  v6 = [v4 punchoutWithURL:attributionURL];
  [(SearchUICardSectionView *)self openPunchout:v6 triggerEvent:2];
}

@end