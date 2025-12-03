@interface SearchUIAttributionFooterCardSectionView
+ (void)removeIconsFromRichText:(id)text;
- (id)setupContentView;
- (id)setupTextButtonThatIsLeadingAttribution:(BOOL)attribution;
- (void)configureMenuForTrailingFootnoteButton;
- (void)didPressLeadingTextButton;
- (void)didPressTrailingTextButton:(id)button;
- (void)updateAttributionThatIsLeading:(BOOL)leading withSection:(id)section isRTL:(BOOL)l;
- (void)updateWithRowModel:(id)model;
@end

@implementation SearchUIAttributionFooterCardSectionView

+ (void)removeIconsFromRichText:(id)text
{
  v16 = *MEMORY[0x1E69E9840];
  textCopy = text;
  v4 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  formattedTextItems = [textCopy formattedTextItems];
  v6 = [formattedTextItems countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(formattedTextItems);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [v4 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [formattedTextItems countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [textCopy setFormattedTextItems:v4];
}

- (id)setupTextButtonThatIsLeadingAttribution:(BOOL)attribution
{
  attributionCopy = attribution;
  v5 = objc_opt_new();
  [v5 setProminence:3];
  v6 = [MEMORY[0x1E69D9138] cachedFontForTextStyle:*MEMORY[0x1E69DDD10] isShort:0 isBold:0];
  [v5 setFont:v6];

  [v5 setMatchesHeightForAlignmentRectWithIntrinsicContentSize:1];
  v7 = &selRef_didPressLeadingTextButton;
  if (attributionCopy)
  {
    v8 = 0;
  }

  else
  {
    v7 = &selRef_didPressTrailingTextButton_;
    v8 = 2;
  }

  [v5 addTarget:self action:*v7];
  [v5 setAlignment:v8];

  return v5;
}

- (id)setupContentView
{
  v23[2] = *MEMORY[0x1E69E9840];
  v3 = [(SearchUIAttributionFooterCardSectionView *)self setupTextButtonThatIsLeadingAttribution:1];
  [(SearchUIAttributionFooterCardSectionView *)self setLeadingTextButton:v3];

  v4 = [(SearchUIAttributionFooterCardSectionView *)self setupTextButtonThatIsLeadingAttribution:0];
  [(SearchUIAttributionFooterCardSectionView *)self setTrailingTextButton:v4];

  v5 = objc_alloc(MEMORY[0x1E69D9200]);
  leadingTextButton = [(SearchUIAttributionFooterCardSectionView *)self leadingTextButton];
  v23[0] = leadingTextButton;
  trailingTextButton = [(SearchUIAttributionFooterCardSectionView *)self trailingTextButton];
  v23[1] = trailingTextButton;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v9 = [v5 initWithArrangedSubviews:v8];
  [(SearchUIAttributionFooterCardSectionView *)self setStackView:v9];

  v10 = *MEMORY[0x1E69D9260];
  stackView = [(SearchUIAttributionFooterCardSectionView *)self stackView];
  [stackView setSpacing:v10];

  [MEMORY[0x1E69D9248] defaultLayoutMargins];
  v13 = v12;
  [MEMORY[0x1E69D9248] defaultLayoutMargins];
  v15 = v14;
  stackView2 = [(SearchUIAttributionFooterCardSectionView *)self stackView];
  [stackView2 setLayoutMargins:{-3.0, v13, 13.0, v15}];

  stackView3 = [(SearchUIAttributionFooterCardSectionView *)self stackView];
  [stackView3 setLayoutMarginsRelativeArrangement:1];

  stackView4 = [(SearchUIAttributionFooterCardSectionView *)self stackView];
  [stackView4 setAlignment:4];

  stackView5 = [(SearchUIAttributionFooterCardSectionView *)self stackView];
  [stackView5 setDistribution:5];

  stackView6 = [(SearchUIAttributionFooterCardSectionView *)self stackView];
  [stackView6 setFlipsToVerticalAxisForAccessibilityContentSizes:1];

  stackView7 = [(SearchUIAttributionFooterCardSectionView *)self stackView];

  return stackView7;
}

- (void)updateAttributionThatIsLeading:(BOOL)leading withSection:(id)section isRTL:(BOOL)l
{
  lCopy = l;
  leadingCopy = leading;
  sectionCopy = section;
  userReportRequest = [sectionCopy userReportRequest];
  affordanceText = [userReportRequest affordanceText];

  if (affordanceText)
  {
    [MEMORY[0x1E69CA3A0] textWithString:affordanceText];
  }

  else
  {
    [sectionCopy trailingAttribution];
  }
  v10 = ;
  v25 = v10;
  if (leadingCopy)
  {
    leadingAttribution = [sectionCopy leadingAttribution];
    [(SearchUIAttributionFooterCardSectionView *)self leadingTextButton];
  }

  else
  {
    leadingAttribution = v10;
    [(SearchUIAttributionFooterCardSectionView *)self trailingTextButton];
  }
  v12 = ;
  v13 = [SearchUITLKMultilineTextConverter richTextForSearchUIText:leadingAttribution];
  if (leadingCopy)
  {
    [sectionCopy leadingAttributionPunchout];
  }

  else
  {
    [sectionCopy trailingAttributionPunchout];
  }
  v14 = ;
  icons = [leadingAttribution icons];
  firstObject = [icons firstObject];

  if (leadingCopy != lCopy)
  {
    v17 = 0;
  }

  else
  {
    v17 = 2;
  }

  v26 = affordanceText;
  v18 = leadingCopy ^ 1;
  if (!affordanceText)
  {
    v18 = 0;
  }

  if (v14)
  {
    v19 = 1;
  }

  else
  {
    v19 = v18;
  }

  if (!v19 && (leadingCopy & 1) == 0)
  {
    cardSection = [(SearchUIAttributionFooterCardSectionView *)self cardSection];
    trailingAttributionCommand = [cardSection trailingAttributionCommand];
    v19 = trailingAttributionCommand != 0;
  }

  [objc_opt_class() removeIconsFromRichText:v13];
  [v12 setAlignment:v17];
  [v12 setRichTitle:v13];
  if (v19)
  {
    hasContent = [v13 hasContent];
    if (firstObject)
    {
      v23 = 1;
    }

    else
    {
      v23 = hasContent;
    }
  }

  else
  {
    v23 = 0;
  }

  [(SearchUIAttributionFooterCardSectionView *)self setUserInteractionEnabled:v23 forButton:v12];
  v24 = [SearchUITLKImageConverter imageForSFImage:firstObject];
  [v12 setTlkImage:v24];
}

- (void)updateWithRowModel:(id)model
{
  v8.receiver = self;
  v8.super_class = SearchUIAttributionFooterCardSectionView;
  modelCopy = model;
  [(SearchUICardSectionView *)&v8 updateWithRowModel:modelCopy];
  cardSection = [modelCopy cardSection];

  [(SearchUIAttributionFooterCardSectionView *)self setCardSection:cardSection];
  LODWORD(cardSection) = [MEMORY[0x1E69D91A8] isLTR];
  cardSection2 = [(SearchUIAttributionFooterCardSectionView *)self cardSection];
  [(SearchUIAttributionFooterCardSectionView *)self updateAttributionThatIsLeading:1 withSection:cardSection2 isRTL:cardSection ^ 1];

  cardSection3 = [(SearchUIAttributionFooterCardSectionView *)self cardSection];
  [(SearchUIAttributionFooterCardSectionView *)self updateAttributionThatIsLeading:0 withSection:cardSection3 isRTL:cardSection ^ 1];

  [(SearchUIAttributionFooterCardSectionView *)self configureMenuForTrailingFootnoteButton];
}

- (void)didPressLeadingTextButton
{
  cardSection = [(SearchUIAttributionFooterCardSectionView *)self cardSection];
  leadingAttributionPunchout = [cardSection leadingAttributionPunchout];
  [(SearchUICardSectionView *)self openPunchout:leadingAttributionPunchout triggerEvent:2];
}

- (void)didPressTrailingTextButton:(id)button
{
  rowModel = [(SearchUICardSectionView *)self rowModel];
  cardSection = [rowModel cardSection];
  userReportRequest = [cardSection userReportRequest];
  affordanceText = [userReportRequest affordanceText];

  if (!affordanceText)
  {
    cardSection2 = [(SearchUIAttributionFooterCardSectionView *)self cardSection];
    trailingAttributionCommand = [cardSection2 trailingAttributionCommand];

    if (trailingAttributionCommand)
    {
      cardSection5 = objc_opt_new();
      cardSection3 = [(SearchUIAttributionFooterCardSectionView *)self cardSection];
      trailingAttributionCommand2 = [cardSection3 trailingAttributionCommand];
      [cardSection5 setCommand:trailingAttributionCommand2];

      rowModel2 = [(SearchUICardSectionView *)self rowModel];
      feedbackDelegate = [(SearchUICardSectionView *)self feedbackDelegate];
      v14 = [SearchUIUtilities environmentForDelegate:feedbackDelegate];
      v15 = [SearchUICommandHandler handlerForButton:cardSection5 rowModel:rowModel2 environment:v14];
      [v15 executeWithTriggerEvent:3];
    }

    else
    {
      cardSection4 = [(SearchUIAttributionFooterCardSectionView *)self cardSection];
      trailingAttributionPunchout = [cardSection4 trailingAttributionPunchout];

      if (!trailingAttributionPunchout)
      {
        return;
      }

      cardSection5 = [(SearchUIAttributionFooterCardSectionView *)self cardSection];
      rowModel2 = [cardSection5 trailingAttributionPunchout];
      [(SearchUICardSectionView *)self openPunchout:rowModel2 triggerEvent:2];
    }
  }
}

- (void)configureMenuForTrailingFootnoteButton
{
  trailingTextButton = [(SearchUIAttributionFooterCardSectionView *)self trailingTextButton];
  rowModel = [(SearchUICardSectionView *)self rowModel];
  cardSection = [rowModel cardSection];
  userReportRequest = [cardSection userReportRequest];
  affordanceText = [userReportRequest affordanceText];

  if (affordanceText)
  {
    [(SearchUICardSectionView *)self configureUserReportButton:trailingTextButton];
  }

  else
  {
    [trailingTextButton setMenu:0];
  }

  menu = [trailingTextButton menu];
  [trailingTextButton setShowsMenuAsPrimaryAction:menu != 0];
}

@end