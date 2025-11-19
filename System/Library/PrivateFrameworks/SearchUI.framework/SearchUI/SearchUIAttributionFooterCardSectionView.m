@interface SearchUIAttributionFooterCardSectionView
+ (void)removeIconsFromRichText:(id)a3;
- (id)setupContentView;
- (id)setupTextButtonThatIsLeadingAttribution:(BOOL)a3;
- (void)configureMenuForTrailingFootnoteButton;
- (void)didPressLeadingTextButton;
- (void)didPressTrailingTextButton:(id)a3;
- (void)updateAttributionThatIsLeading:(BOOL)a3 withSection:(id)a4 isRTL:(BOOL)a5;
- (void)updateWithRowModel:(id)a3;
@end

@implementation SearchUIAttributionFooterCardSectionView

+ (void)removeIconsFromRichText:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v3 formattedTextItems];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
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
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [v3 setFormattedTextItems:v4];
}

- (id)setupTextButtonThatIsLeadingAttribution:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_new();
  [v5 setProminence:3];
  v6 = [MEMORY[0x1E69D9138] cachedFontForTextStyle:*MEMORY[0x1E69DDD10] isShort:0 isBold:0];
  [v5 setFont:v6];

  [v5 setMatchesHeightForAlignmentRectWithIntrinsicContentSize:1];
  v7 = &selRef_didPressLeadingTextButton;
  if (v3)
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
  v6 = [(SearchUIAttributionFooterCardSectionView *)self leadingTextButton];
  v23[0] = v6;
  v7 = [(SearchUIAttributionFooterCardSectionView *)self trailingTextButton];
  v23[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v9 = [v5 initWithArrangedSubviews:v8];
  [(SearchUIAttributionFooterCardSectionView *)self setStackView:v9];

  v10 = *MEMORY[0x1E69D9260];
  v11 = [(SearchUIAttributionFooterCardSectionView *)self stackView];
  [v11 setSpacing:v10];

  [MEMORY[0x1E69D9248] defaultLayoutMargins];
  v13 = v12;
  [MEMORY[0x1E69D9248] defaultLayoutMargins];
  v15 = v14;
  v16 = [(SearchUIAttributionFooterCardSectionView *)self stackView];
  [v16 setLayoutMargins:{-3.0, v13, 13.0, v15}];

  v17 = [(SearchUIAttributionFooterCardSectionView *)self stackView];
  [v17 setLayoutMarginsRelativeArrangement:1];

  v18 = [(SearchUIAttributionFooterCardSectionView *)self stackView];
  [v18 setAlignment:4];

  v19 = [(SearchUIAttributionFooterCardSectionView *)self stackView];
  [v19 setDistribution:5];

  v20 = [(SearchUIAttributionFooterCardSectionView *)self stackView];
  [v20 setFlipsToVerticalAxisForAccessibilityContentSizes:1];

  v21 = [(SearchUIAttributionFooterCardSectionView *)self stackView];

  return v21;
}

- (void)updateAttributionThatIsLeading:(BOOL)a3 withSection:(id)a4 isRTL:(BOOL)a5
{
  v5 = a5;
  v6 = a3;
  v27 = a4;
  v8 = [v27 userReportRequest];
  v9 = [v8 affordanceText];

  if (v9)
  {
    [MEMORY[0x1E69CA3A0] textWithString:v9];
  }

  else
  {
    [v27 trailingAttribution];
  }
  v10 = ;
  v25 = v10;
  if (v6)
  {
    v11 = [v27 leadingAttribution];
    [(SearchUIAttributionFooterCardSectionView *)self leadingTextButton];
  }

  else
  {
    v11 = v10;
    [(SearchUIAttributionFooterCardSectionView *)self trailingTextButton];
  }
  v12 = ;
  v13 = [SearchUITLKMultilineTextConverter richTextForSearchUIText:v11];
  if (v6)
  {
    [v27 leadingAttributionPunchout];
  }

  else
  {
    [v27 trailingAttributionPunchout];
  }
  v14 = ;
  v15 = [v11 icons];
  v16 = [v15 firstObject];

  if (v6 != v5)
  {
    v17 = 0;
  }

  else
  {
    v17 = 2;
  }

  v26 = v9;
  v18 = v6 ^ 1;
  if (!v9)
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

  if (!v19 && (v6 & 1) == 0)
  {
    v20 = [(SearchUIAttributionFooterCardSectionView *)self cardSection];
    v21 = [v20 trailingAttributionCommand];
    v19 = v21 != 0;
  }

  [objc_opt_class() removeIconsFromRichText:v13];
  [v12 setAlignment:v17];
  [v12 setRichTitle:v13];
  if (v19)
  {
    v22 = [v13 hasContent];
    if (v16)
    {
      v23 = 1;
    }

    else
    {
      v23 = v22;
    }
  }

  else
  {
    v23 = 0;
  }

  [(SearchUIAttributionFooterCardSectionView *)self setUserInteractionEnabled:v23 forButton:v12];
  v24 = [SearchUITLKImageConverter imageForSFImage:v16];
  [v12 setTlkImage:v24];
}

- (void)updateWithRowModel:(id)a3
{
  v8.receiver = self;
  v8.super_class = SearchUIAttributionFooterCardSectionView;
  v4 = a3;
  [(SearchUICardSectionView *)&v8 updateWithRowModel:v4];
  v5 = [v4 cardSection];

  [(SearchUIAttributionFooterCardSectionView *)self setCardSection:v5];
  LODWORD(v5) = [MEMORY[0x1E69D91A8] isLTR];
  v6 = [(SearchUIAttributionFooterCardSectionView *)self cardSection];
  [(SearchUIAttributionFooterCardSectionView *)self updateAttributionThatIsLeading:1 withSection:v6 isRTL:v5 ^ 1];

  v7 = [(SearchUIAttributionFooterCardSectionView *)self cardSection];
  [(SearchUIAttributionFooterCardSectionView *)self updateAttributionThatIsLeading:0 withSection:v7 isRTL:v5 ^ 1];

  [(SearchUIAttributionFooterCardSectionView *)self configureMenuForTrailingFootnoteButton];
}

- (void)didPressLeadingTextButton
{
  v4 = [(SearchUIAttributionFooterCardSectionView *)self cardSection];
  v3 = [v4 leadingAttributionPunchout];
  [(SearchUICardSectionView *)self openPunchout:v3 triggerEvent:2];
}

- (void)didPressTrailingTextButton:(id)a3
{
  v4 = [(SearchUICardSectionView *)self rowModel];
  v5 = [v4 cardSection];
  v6 = [v5 userReportRequest];
  v7 = [v6 affordanceText];

  if (!v7)
  {
    v8 = [(SearchUIAttributionFooterCardSectionView *)self cardSection];
    v9 = [v8 trailingAttributionCommand];

    if (v9)
    {
      v18 = objc_opt_new();
      v10 = [(SearchUIAttributionFooterCardSectionView *)self cardSection];
      v11 = [v10 trailingAttributionCommand];
      [v18 setCommand:v11];

      v12 = [(SearchUICardSectionView *)self rowModel];
      v13 = [(SearchUICardSectionView *)self feedbackDelegate];
      v14 = [SearchUIUtilities environmentForDelegate:v13];
      v15 = [SearchUICommandHandler handlerForButton:v18 rowModel:v12 environment:v14];
      [v15 executeWithTriggerEvent:3];
    }

    else
    {
      v16 = [(SearchUIAttributionFooterCardSectionView *)self cardSection];
      v17 = [v16 trailingAttributionPunchout];

      if (!v17)
      {
        return;
      }

      v18 = [(SearchUIAttributionFooterCardSectionView *)self cardSection];
      v12 = [v18 trailingAttributionPunchout];
      [(SearchUICardSectionView *)self openPunchout:v12 triggerEvent:2];
    }
  }
}

- (void)configureMenuForTrailingFootnoteButton
{
  v8 = [(SearchUIAttributionFooterCardSectionView *)self trailingTextButton];
  v3 = [(SearchUICardSectionView *)self rowModel];
  v4 = [v3 cardSection];
  v5 = [v4 userReportRequest];
  v6 = [v5 affordanceText];

  if (v6)
  {
    [(SearchUICardSectionView *)self configureUserReportButton:v8];
  }

  else
  {
    [v8 setMenu:0];
  }

  v7 = [v8 menu];
  [v8 setShowsMenuAsPrimaryAction:v7 != 0];
}

@end