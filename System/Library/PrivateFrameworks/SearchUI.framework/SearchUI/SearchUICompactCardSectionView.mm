@interface SearchUICompactCardSectionView
+ (BOOL)hasLeadingImageForCardSection:(id)a3;
- (id)richTextForSearchUIText:(id)a3 withMaxLines:(unint64_t)a4;
- (id)setupContentView;
- (void)updateWithRowModel:(id)a3;
@end

@implementation SearchUICompactCardSectionView

- (id)setupContentView
{
  v31[2] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [MEMORY[0x1E69D9138] cachedFontForTextStyle:*MEMORY[0x1E69DDCF8] isShort:0 fontWeight:*MEMORY[0x1E69DB970]];
  [v3 setFont:v4];

  [v3 setLineBreakMode:4];
  [(SearchUICompactCardSectionView *)self setTitleLabel:v3];
  v5 = +[(TLKLabel *)SearchUILabel];
  v6 = [MEMORY[0x1E69D9138] cachedFontForTextStyle:*MEMORY[0x1E69DDD08]];
  [v5 setFont:v6];

  [v5 setLineBreakMode:5];
  [(SearchUICompactCardSectionView *)self setSubtitleLabel:v5];
  v7 = objc_opt_new();
  [v7 setDisableCornerRounding:1];
  [v7 setProminence:0];
  v8 = [v3 font];
  [v7 setSymbolFont:v8];

  [v7 setSymbolScale:0];
  LODWORD(v9) = 1148846080;
  [v7 setLayoutSize:24.0 withContentPriority:{24.0, v9}];
  [(SearchUICompactCardSectionView *)self setImageView:v7];
  v10 = objc_alloc(MEMORY[0x1E698B728]);
  v30[0] = v7;
  v30[1] = v3;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v31[0] = v11;
  v29[0] = v7;
  v29[1] = v5;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v31[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
  v14 = [v10 initWithArrangedSubviewRows:v13];

  [v14 setVerticalAlignment:3];
  v15 = MEMORY[0x1E69D91A8];
  v16 = [v3 font];
  [v15 scaledValueForValue:v16 withFont:self view:19.0];
  [v14 setRowSpacing:?];

  [v14 setColumnSpacing:8.0];
  [v14 setBaselineRelativeArrangement:1];
  [v14 setBaselineRelativeLayoutMarginsForArrangement:1];
  v17 = MEMORY[0x1E69D91A8];
  v18 = [v3 font];
  [v17 scaledValueForValue:v18 withFont:self view:25.0];
  v20 = v19;
  [MEMORY[0x1E69D9240] standardTableCellContentInset];
  v22 = v21;
  v23 = MEMORY[0x1E69D91A8];
  v24 = [v5 font];
  [v23 scaledValueForValue:v24 withFont:self view:13.0];
  v26 = v25;
  [MEMORY[0x1E69D9240] standardTableCellContentInset];
  [v14 setLayoutMargins:{v20, v22, v26, v27}];

  return v14;
}

- (id)richTextForSearchUIText:(id)a3 withMaxLines:(unint64_t)a4
{
  v5 = [SearchUITLKMultilineTextConverter richTextForSearchUIText:a3];
  [v5 setMaxLines:a4];

  return v5;
}

- (void)updateWithRowModel:(id)a3
{
  v18.receiver = self;
  v18.super_class = SearchUICompactCardSectionView;
  v4 = a3;
  [(SearchUICardSectionView *)&v18 updateWithRowModel:v4];
  v5 = [v4 cardSection];

  v6 = [(SearchUICompactCardSectionView *)self imageView];
  v7 = [v5 image];
  [v6 updateWithImage:v7];

  v8 = [v5 image];
  v9 = [(SearchUICardSectionView *)self contentView];
  v10 = [v9 columnAtIndex:0];
  [v10 setHidden:v8 == 0];

  if ([MEMORY[0x1E69D91A8] isSuperLargeAccessibilitySize])
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  v12 = [v5 title];
  v13 = [(SearchUICompactCardSectionView *)self richTextForSearchUIText:v12 withMaxLines:v11];
  v14 = [(SearchUICompactCardSectionView *)self titleLabel];
  [v14 setRichText:v13];

  v15 = [v5 subtitle];
  v16 = [(SearchUICompactCardSectionView *)self richTextForSearchUIText:v15 withMaxLines:v11];
  v17 = [(SearchUICompactCardSectionView *)self subtitleLabel];
  [v17 setRichText:v16];
}

+ (BOOL)hasLeadingImageForCardSection:(id)a3
{
  v3 = [a3 image];
  v4 = v3 != 0;

  return v4;
}

@end