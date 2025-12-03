@interface SearchUIRichTitleCardSectionView
- (id)setupContentView;
- (void)containerView:(id)view willMeasureArrangedSubviewsFittingSize:(CGSize)size forReason:(int64_t)reason;
- (void)updateWithRowModel:(id)model;
@end

@implementation SearchUIRichTitleCardSectionView

- (id)setupContentView
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [(SearchUIRichTitleCardSectionView *)self setHeaderView:v3];
  v4 = MEMORY[0x1E698B730];
  v8[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v6 = [v4 horizontalContainerStackViewWithArrangedSubviews:v5];

  [v6 setAlignment:3];
  [v6 setLayoutMarginsRelativeArrangement:1];

  return v6;
}

- (void)updateWithRowModel:(id)model
{
  modelCopy = model;
  cardSection = [modelCopy cardSection];
  v35.receiver = self;
  v35.super_class = SearchUIRichTitleCardSectionView;
  [(SearchUICardSectionView *)&v35 updateWithRowModel:modelCopy];
  isCentered = [cardSection isCentered];
  headerView = [(SearchUIRichTitleCardSectionView *)self headerView];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __55__SearchUIRichTitleCardSectionView_updateWithRowModel___block_invoke;
  v31[3] = &unk_1E85B2900;
  v8 = cardSection;
  v32 = v8;
  v9 = headerView;
  v33 = v9;
  v34 = isCentered;
  [v9 performBatchUpdates:v31];
  buttonItems = [v8 buttonItems];
  if (buttonItems)
  {
    buttonStackView = [(SearchUIRichTitleCardSectionView *)self buttonStackView];

    if (!buttonStackView)
    {
      v12 = objc_opt_new();
      [(SearchUIRichTitleCardSectionView *)self setButtonStackView:v12];

      buttonStackView2 = [(SearchUIRichTitleCardSectionView *)self buttonStackView];
      [buttonStackView2 setShouldReverseButtonOrder:1];

      buttonStackView3 = [(SearchUIRichTitleCardSectionView *)self buttonStackView];
      [SearchUIAutoLayout requireIntrinsicSizeForView:buttonStackView3];

      contentView = [(SearchUICardSectionView *)self contentView];
      buttonStackView4 = [(SearchUIRichTitleCardSectionView *)self buttonStackView];
      [contentView addArrangedSubview:buttonStackView4];
    }

    buttonStackView5 = [(SearchUIRichTitleCardSectionView *)self buttonStackView];
    feedbackDelegate = [(SearchUICardSectionView *)self feedbackDelegate];
    [buttonStackView5 updateWithButtonItems:buttonItems maxButtonItems:0 buttonItemViewType:1 rowModel:modelCopy feedbackDelegate:feedbackDelegate];
  }

  v19 = [buttonItems count];
  buttonStackView6 = [(SearchUIRichTitleCardSectionView *)self buttonStackView];
  [buttonStackView6 setHidden:v19 == 0];

  v21 = 0.0;
  v22 = 0.0;
  if (([v8 isCentered] & 1) == 0)
  {
    if ([MEMORY[0x1E69D9240] isMacOS])
    {
      v23 = 14.0;
    }

    else
    {
      v23 = 18.0;
    }

    [v9 effectiveLayoutMargins];
    v25 = v24;
    v26 = 0.0;
    if (!v19)
    {
      [v9 effectiveLayoutMargins];
    }

    v22 = v23 - v25;
    v21 = v23 - v26;
  }

  [v9 effectiveLayoutMargins];
  v28 = 8.0 - v27;
  contentView2 = [(SearchUICardSectionView *)self contentView];
  [contentView2 setSpacing:v28];

  contentView3 = [(SearchUICardSectionView *)self contentView];
  [contentView3 setDirectionalLayoutMargins:{0.0, v22, 0.0, v21}];
}

void __55__SearchUIRichTitleCardSectionView_updateWithRowModel___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) title];
  v22 = [SearchUITLKMultilineTextConverter textForSearchUIString:v2];

  [v22 setMaxLines:2];
  if ([*(a1 + 32) isCentered])
  {
    v3 = 6;
  }

  else
  {
    v3 = 4;
  }

  v4 = [*(a1 + 32) titleImage];
  v5 = [SearchUIImage imageWithSFImage:v4 variantForAppIcon:v3];

  v6 = [SearchUITLKImageConverter imageForSFImage:v5];
  [*(a1 + 40) setImage:v6];

  [*(a1 + 40) setTitle:v22];
  v7 = [*(a1 + 32) richSubtitle];

  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = [v8 richSubtitle];
    [SearchUITLKMultilineTextConverter richTextForSearchUIText:v9];
  }

  else
  {
    v10 = MEMORY[0x1E69D91D0];
    v9 = [v8 subtitle];
    [v10 textWithString:v9];
  }
  v11 = ;
  [*(a1 + 40) setSubtitle:v11];

  v12 = [*(a1 + 32) reviewGlyph];
  v13 = [SearchUIImage imageWithSFImage:v12 variantForAppIcon:1];
  v14 = [SearchUITLKImageConverter imageForSFImage:v13];
  [*(a1 + 40) setSubtitleImage:v14];

  v15 = MEMORY[0x1E69D91B8];
  v16 = [*(a1 + 32) footnote];
  v17 = [v15 textWithString:v16];
  [*(a1 + 40) setFootnote:v17];

  [*(a1 + 40) setSubtitleIsEmphasized:{objc_msgSend(*(a1 + 32), "subtitleIsEmphasized")}];
  [*(a1 + 40) setTitleIsEquation:{objc_msgSend(*(a1 + 32), "subtitleIsEmphasized")}];
  v18 = [*(a1 + 32) contentAdvisory];
  [*(a1 + 40) setRoundedBorderText:v18];

  v19 = MEMORY[0x1E69D91B8];
  v20 = [*(a1 + 32) auxiliaryMiddleText];
  v21 = [v19 textWithString:v20];
  [*(a1 + 40) setTrailingText:v21];

  [*(a1 + 40) setAxis:*(a1 + 48)];
}

- (void)containerView:(id)view willMeasureArrangedSubviewsFittingSize:(CGSize)size forReason:(int64_t)reason
{
  v8.receiver = self;
  v8.super_class = SearchUIRichTitleCardSectionView;
  [(SearchUICardSectionView *)&v8 containerView:view willMeasureArrangedSubviewsFittingSize:reason forReason:size.width, size.height];
  isCompactWidth = [(SearchUICardSectionView *)self isCompactWidth];
  headerView = [(SearchUIRichTitleCardSectionView *)self headerView];
  [headerView setUseCompactWidth:isCompactWidth];
}

@end