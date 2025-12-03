@interface SearchUICompactCardSectionView
+ (BOOL)hasLeadingImageForCardSection:(id)section;
- (id)richTextForSearchUIText:(id)text withMaxLines:(unint64_t)lines;
- (id)setupContentView;
- (void)updateWithRowModel:(id)model;
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
  font = [v3 font];
  [v7 setSymbolFont:font];

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
  font2 = [v3 font];
  [v15 scaledValueForValue:font2 withFont:self view:19.0];
  [v14 setRowSpacing:?];

  [v14 setColumnSpacing:8.0];
  [v14 setBaselineRelativeArrangement:1];
  [v14 setBaselineRelativeLayoutMarginsForArrangement:1];
  v17 = MEMORY[0x1E69D91A8];
  font3 = [v3 font];
  [v17 scaledValueForValue:font3 withFont:self view:25.0];
  v20 = v19;
  [MEMORY[0x1E69D9240] standardTableCellContentInset];
  v22 = v21;
  v23 = MEMORY[0x1E69D91A8];
  font4 = [v5 font];
  [v23 scaledValueForValue:font4 withFont:self view:13.0];
  v26 = v25;
  [MEMORY[0x1E69D9240] standardTableCellContentInset];
  [v14 setLayoutMargins:{v20, v22, v26, v27}];

  return v14;
}

- (id)richTextForSearchUIText:(id)text withMaxLines:(unint64_t)lines
{
  v5 = [SearchUITLKMultilineTextConverter richTextForSearchUIText:text];
  [v5 setMaxLines:lines];

  return v5;
}

- (void)updateWithRowModel:(id)model
{
  v18.receiver = self;
  v18.super_class = SearchUICompactCardSectionView;
  modelCopy = model;
  [(SearchUICardSectionView *)&v18 updateWithRowModel:modelCopy];
  cardSection = [modelCopy cardSection];

  imageView = [(SearchUICompactCardSectionView *)self imageView];
  image = [cardSection image];
  [imageView updateWithImage:image];

  image2 = [cardSection image];
  contentView = [(SearchUICardSectionView *)self contentView];
  v10 = [contentView columnAtIndex:0];
  [v10 setHidden:image2 == 0];

  if ([MEMORY[0x1E69D91A8] isSuperLargeAccessibilitySize])
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  title = [cardSection title];
  v13 = [(SearchUICompactCardSectionView *)self richTextForSearchUIText:title withMaxLines:v11];
  titleLabel = [(SearchUICompactCardSectionView *)self titleLabel];
  [titleLabel setRichText:v13];

  subtitle = [cardSection subtitle];
  v16 = [(SearchUICompactCardSectionView *)self richTextForSearchUIText:subtitle withMaxLines:v11];
  subtitleLabel = [(SearchUICompactCardSectionView *)self subtitleLabel];
  [subtitleLabel setRichText:v16];
}

+ (BOOL)hasLeadingImageForCardSection:(id)section
{
  image = [section image];
  v4 = image != 0;

  return v4;
}

@end