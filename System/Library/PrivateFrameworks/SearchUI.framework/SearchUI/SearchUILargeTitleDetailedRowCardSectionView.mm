@interface SearchUILargeTitleDetailedRowCardSectionView
- (CGSize)containerView:(id)view systemLayoutSizeFittingSize:(CGSize)size forArrangedSubview:(id)subview;
- (UIEdgeInsets)layoutMargins;
- (id)setupContentView;
- (void)didSelectSubtitleItem;
- (void)updateWithRowModel:(id)model;
@end

@implementation SearchUILargeTitleDetailedRowCardSectionView

- (id)setupContentView
{
  v25[2] = *MEMORY[0x1E69E9840];
  v3 = +[(TLKLabel *)SearchUILabel];
  v4 = [MEMORY[0x1E69D9138] cachedFontForTextStyle:*MEMORY[0x1E69DDDC0]];
  [v3 setFont:v4];

  if ([MEMORY[0x1E69D9240] isMacOS])
  {
    v5 = 0.0;
    v6 = 2.0;
    v7 = 0.0;
    v8 = 0.0;
  }

  else
  {
    v6 = *MEMORY[0x1E69DDCE0];
    v5 = *(MEMORY[0x1E69DDCE0] + 8);
    v7 = *(MEMORY[0x1E69DDCE0] + 16);
    v8 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  [v3 setCustomAlignmentRectInsets:{v6, v5, v7, v8}];
  [v3 setAdjustsFontSizeToFitWidth:1];
  [v3 setMinimumScaleFactor:0.6];
  [(SearchUILargeTitleDetailedRowCardSectionView *)self setTitleLabel:v3];
  v9 = objc_opt_new();
  v10 = MEMORY[0x1E69D9138];
  isMacOS = [MEMORY[0x1E69D9240] isMacOS];
  v12 = MEMORY[0x1E69DDD00];
  if (!isMacOS)
  {
    v12 = MEMORY[0x1E69DDD28];
  }

  v13 = [v10 cachedFontForTextStyle:*v12];
  [v9 setFont:v13];

  [v9 setProminence:2];
  titleLabel = [v9 titleLabel];
  [titleLabel setNumberOfLines:2];

  titleLabel2 = [v9 titleLabel];
  [titleLabel2 setLineBreakMode:4];

  [(SearchUILargeTitleDetailedRowCardSectionView *)self setSubtitleButton:v9];
  v16 = objc_alloc(MEMORY[0x1E698B730]);
  v25[0] = v3;
  v25[1] = v9;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v18 = [v16 initWithArrangedSubviews:v17];

  [v18 setAxis:1];
  [v18 setAlignment:1];
  [v18 setDistribution:0];
  [v18 setSpacing:4.0];
  [v18 setDelegate:self];
  v19 = objc_opt_new();
  [(SearchUILargeTitleDetailedRowCardSectionView *)self setButtonStackView:v19];
  v20 = objc_alloc(MEMORY[0x1E69D9200]);
  v24[0] = v18;
  v24[1] = v19;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v22 = [v20 initWithArrangedSubviews:v21];

  [v22 setAlignment:3];
  [v22 setDistribution:3];
  [v22 setFlipsToVerticalAxisForAccessibilityContentSizes:1];
  [v22 setSpacing:*MEMORY[0x1E69D9260]];

  return v22;
}

- (void)updateWithRowModel:(id)model
{
  modelCopy = model;
  v37.receiver = self;
  v37.super_class = SearchUILargeTitleDetailedRowCardSectionView;
  [(SearchUICardSectionView *)&v37 updateWithRowModel:modelCopy];
  cardSection = [modelCopy cardSection];
  title = [cardSection title];
  titleLabel = [(SearchUILargeTitleDetailedRowCardSectionView *)self titleLabel];
  [titleLabel setSfText:title];

  subtitleButtonItem = [cardSection subtitleButtonItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    subtitleButtonItem2 = [cardSection subtitleButtonItem];
    subtitleButton = [(SearchUILargeTitleDetailedRowCardSectionView *)self subtitleButton];
    [subtitleButton setHidden:0];

    title2 = [subtitleButtonItem2 title];
    subtitleButton2 = [(SearchUILargeTitleDetailedRowCardSectionView *)self subtitleButton];
    [subtitleButton2 setTitle:title2];

    command = [subtitleButtonItem2 command];
    subtitleButton3 = [(SearchUILargeTitleDetailedRowCardSectionView *)self subtitleButton];
    [subtitleButton3 setShowsMenuAsPrimaryAction:command == 0];

    feedbackDelegate = [(SearchUICardSectionView *)self feedbackDelegate];
    v17 = [SearchUIUtilities environmentForDelegate:feedbackDelegate];

    v18 = [SearchUICommandHandler handlerForRowModel:modelCopy environment:v17];
    subtitleButtonItem3 = [cardSection subtitleButtonItem];
    v20 = [v18 menuForRowModel:modelCopy buttonItem:subtitleButtonItem3 commandEnvironment:v17];
    subtitleButton4 = [(SearchUILargeTitleDetailedRowCardSectionView *)self subtitleButton];
    [subtitleButton4 setMenu:v20];

    subtitleButton5 = [(SearchUILargeTitleDetailedRowCardSectionView *)self subtitleButton];
    [subtitleButton5 addTarget:self action:sel_didSelectSubtitleItem];
  }

  else
  {
    subtitleButtonItem2 = [(SearchUILargeTitleDetailedRowCardSectionView *)self subtitleButton];
    [subtitleButtonItem2 setHidden:1];
  }

  trailingButtonItems = [cardSection trailingButtonItems];
  if ([trailingButtonItems count] != 1)
  {
    v31 = 0;
    goto LABEL_8;
  }

  trailingButtonItems2 = [cardSection trailingButtonItems];
  v25 = [trailingButtonItems2 objectAtIndexedSubscript:0];
  objc_opt_class();
  v26 = objc_opt_isKindOfClass();

  if (v26)
  {
    trailingButtonItems3 = [cardSection trailingButtonItems];
    trailingButtonItems = [trailingButtonItems3 objectAtIndexedSubscript:0];

    person = [trailingButtonItems person];
    emailAddresses = [person emailAddresses];
    firstObject = [emailAddresses firstObject];
    v31 = [firstObject length] != 0;

LABEL_8:
    goto LABEL_10;
  }

  v31 = 0;
LABEL_10:
  buttonStackView = [(SearchUILargeTitleDetailedRowCardSectionView *)self buttonStackView];
  [buttonStackView setShouldReverseButtonOrder:v31];

  buttonStackView2 = [(SearchUILargeTitleDetailedRowCardSectionView *)self buttonStackView];
  trailingButtonItems4 = [cardSection trailingButtonItems];
  if (v31)
  {
    v35 = 2;
  }

  else
  {
    v35 = 3;
  }

  feedbackDelegate2 = [(SearchUICardSectionView *)self feedbackDelegate];
  [buttonStackView2 updateWithButtonItems:trailingButtonItems4 maxButtonItems:v35 buttonItemViewType:1 rowModel:modelCopy feedbackDelegate:feedbackDelegate2];
}

- (void)didSelectSubtitleItem
{
  rowModel = [(SearchUICardSectionView *)self rowModel];
  cardSection = [rowModel cardSection];

  subtitleButtonItem = [cardSection subtitleButtonItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = cardSection;
  if (isKindOfClass)
  {
    subtitleButtonItem2 = [cardSection subtitleButtonItem];
    feedbackDelegate = [(SearchUICardSectionView *)self feedbackDelegate];
    v9 = [SearchUIUtilities environmentForDelegate:feedbackDelegate];

    command = [subtitleButtonItem2 command];

    if (command)
    {
      rowModel2 = [(SearchUICardSectionView *)self rowModel];
      v12 = [SearchUICommandHandler handlerForButton:subtitleButtonItem2 rowModel:rowModel2 environment:v9];

      command2 = [subtitleButtonItem2 command];
      [v12 performCommand:command2 triggerEvent:3 environment:v9];
    }

    v6 = cardSection;
  }
}

- (UIEdgeInsets)layoutMargins
{
  if ([MEMORY[0x1E69D9240] isMacOS])
  {
    if (TLKSpotlightPlusUIEnabled())
    {
      rowModel = [(SearchUICardSectionView *)self rowModel];
      fillsBackgroundWithContent = [rowModel fillsBackgroundWithContent];
      if (fillsBackgroundWithContent)
      {
        v5 = 16.0;
      }

      else
      {
        v5 = 22.0;
      }

      v6 = 12.0;
      if (fillsBackgroundWithContent)
      {
        v7 = 12.0;
      }

      else
      {
        v7 = 22.0;
      }
    }

    else
    {
      v5 = 16.0;
      v6 = 12.0;
      v7 = 12.0;
    }

    v8 = 12.0;
  }

  else
  {
    v7 = 18.0;
    v6 = 16.0;
    v8 = 18.0;
    v5 = 18.0;
  }

  v9 = v6;
  v10 = v7;
  v11 = v5;
  result.right = v11;
  result.bottom = v8;
  result.left = v10;
  result.top = v9;
  return result;
}

- (CGSize)containerView:(id)view systemLayoutSizeFittingSize:(CGSize)size forArrangedSubview:(id)subview
{
  height = size.height;
  width = size.width;
  subviewCopy = subview;
  subtitleButton = [(SearchUILargeTitleDetailedRowCardSectionView *)self subtitleButton];

  if (subtitleButton == subviewCopy)
  {
    subtitleButton2 = [(SearchUILargeTitleDetailedRowCardSectionView *)self subtitleButton];
    titleLabel = [subtitleButton2 titleLabel];
    [titleLabel effectiveLayoutSizeFittingSize:{width, height}];
    v10 = v14;
    v11 = v15;
  }

  else
  {
    v10 = *MEMORY[0x1E698B708];
    v11 = *(MEMORY[0x1E698B708] + 8);
  }

  v16 = v10;
  v17 = v11;
  result.height = v17;
  result.width = v16;
  return result;
}

@end