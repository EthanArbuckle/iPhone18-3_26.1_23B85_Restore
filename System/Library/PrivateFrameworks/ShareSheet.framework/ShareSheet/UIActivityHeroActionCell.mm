@interface UIActivityHeroActionCell
+ (double)heightForNumberOfLines:(double)lines;
+ (int64_t)numberOfLinesForTitle:(id)title itemWidth:(double)width;
- (UIActivityHeroActionCell)initWithFrame:(CGRect)frame;
- (void)applyLayoutAttributes:(id)attributes;
- (void)prepareForReuse;
- (void)setDisabled:(BOOL)disabled;
- (void)updateConstraints;
@end

@implementation UIActivityHeroActionCell

- (UIActivityHeroActionCell)initWithFrame:(CGRect)frame
{
  v49[2] = *MEMORY[0x1E69E9840];
  v48.receiver = self;
  v48.super_class = UIActivityHeroActionCell;
  v3 = [(UIActivityActionCell *)&v48 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    [v4 setFont:v5];

    [v4 setAdjustsFontForContentSizeCategory:1];
    [v4 setTextAlignment:1];
    [v4 setNumberOfLines:2];
    LODWORD(v6) = 1036831949;
    [v4 _setHyphenationFactor:v6];
    [v4 setAccessibilityIdentifier:@"titleLabel"];
    LODWORD(v7) = 1144766464;
    [v4 setContentCompressionResistancePriority:1 forAxis:v7];
    [(UIActivityHeroActionCell *)v3 setTitleLabel:v4];
    v8 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    v9 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:3];
    [v8 setPreferredSymbolConfiguration:v9];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [v8 setTintColor:labelColor];

    [v8 setContentMode:4];
    [v8 setAccessibilityIdentifier:@"imageView"];
    LODWORD(v11) = 1144766464;
    [v8 setContentHuggingPriority:1 forAxis:v11];
    [(UIActivityHeroActionCell *)v3 setActivityImageView:v8];
    v12 = objc_alloc(MEMORY[0x1E69DCF90]);
    activityImageView = [(UIActivityHeroActionCell *)v3 activityImageView];
    v49[0] = activityImageView;
    titleLabel = [(UIActivityHeroActionCell *)v3 titleLabel];
    v49[1] = titleLabel;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
    v16 = [v12 initWithArrangedSubviews:v15];

    [v16 setAxis:1];
    [v16 setAlignment:0];
    [v16 setDistribution:0];
    [v16 setSpacing:10.0];
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v16 setAccessibilityIdentifier:@"stackView"];
    [(UIActivityHeroActionCell *)v3 setStackView:v16];
    contentView = [(UIActivityHeroActionCell *)v3 contentView];
    stackView = [(UIActivityHeroActionCell *)v3 stackView];
    [contentView addSubview:stackView];

    array = [MEMORY[0x1E695DF70] array];
    stackView2 = [(UIActivityHeroActionCell *)v3 stackView];
    topAnchor = [stackView2 topAnchor];
    topAnchor2 = [contentView topAnchor];
    v23 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:18.0];
    [array addObject:v23];

    stackView3 = [(UIActivityHeroActionCell *)v3 stackView];
    leadingAnchor = [stackView3 leadingAnchor];
    leadingAnchor2 = [contentView leadingAnchor];
    v27 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:4.0];
    [array addObject:v27];

    trailingAnchor = [contentView trailingAnchor];
    stackView4 = [(UIActivityHeroActionCell *)v3 stackView];
    trailingAnchor2 = [stackView4 trailingAnchor];
    v31 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:4.0];
    [array addObject:v31];

    bottomAnchor = [contentView bottomAnchor];
    stackView5 = [(UIActivityHeroActionCell *)v3 stackView];
    lastBaselineAnchor = [stackView5 lastBaselineAnchor];
    v35 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:lastBaselineAnchor constant:14.0];
    [array addObject:v35];

    heightAnchor = [contentView heightAnchor];
    v37 = [heightAnchor constraintGreaterThanOrEqualToConstant:80.0];
    [array addObject:v37];

    [MEMORY[0x1E696ACD8] activateConstraints:array];
    bottomAnchor2 = [contentView bottomAnchor];
    stackView6 = [(UIActivityHeroActionCell *)v3 stackView];
    lastBaselineAnchor2 = [stackView6 lastBaselineAnchor];
    v41 = [bottomAnchor2 constraintEqualToAnchor:lastBaselineAnchor2 constant:18.0];
    [(UIActivityHeroActionCell *)v3 setBottomInsetConstraint:v41];

    bottomAnchor3 = [contentView bottomAnchor];
    stackView7 = [(UIActivityHeroActionCell *)v3 stackView];
    lastBaselineAnchor3 = [stackView7 lastBaselineAnchor];
    v45 = [bottomAnchor3 constraintEqualToAnchor:lastBaselineAnchor3 constant:14.0];
    [(UIActivityHeroActionCell *)v3 setTallBottomInsetConstraint:v45];

    listGroupedCellConfiguration = [MEMORY[0x1E69DC6E8] listGroupedCellConfiguration];
    [(UIActivityHeroActionCell *)v3 setBackgroundConfiguration:listGroupedCellConfiguration];
  }

  return v3;
}

- (void)updateConstraints
{
  v8.receiver = self;
  v8.super_class = UIActivityHeroActionCell;
  [(UIActivityHeroActionCell *)&v8 updateConstraints];
  [(UIActivityHeroActionCell *)self bounds];
  Height = CGRectGetHeight(v9);
  v4 = Height > 80.0;
  v5 = Height <= 80.0;
  bottomInsetConstraint = [(UIActivityHeroActionCell *)self bottomInsetConstraint];
  [bottomInsetConstraint setActive:v5];

  tallBottomInsetConstraint = [(UIActivityHeroActionCell *)self tallBottomInsetConstraint];
  [tallBottomInsetConstraint setActive:v4];
}

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = UIActivityHeroActionCell;
  [(UIActivityActionCell *)&v6 prepareForReuse];
  titleLabel = [(UIActivityHeroActionCell *)self titleLabel];
  [titleLabel setText:0];

  activityImageView = [(UIActivityHeroActionCell *)self activityImageView];
  [activityImageView setImage:0];

  stackView = [(UIActivityHeroActionCell *)self stackView];
  [stackView setNeedsLayout];
}

- (void)applyLayoutAttributes:(id)attributes
{
  v4.receiver = self;
  v4.super_class = UIActivityHeroActionCell;
  [(UIActivityHeroActionCell *)&v4 applyLayoutAttributes:attributes];
  [(UIActivityHeroActionCell *)self setClipsToBounds:1];
  [(UIActivityHeroActionCell *)self _setContinuousCornerRadius:12.0];
}

- (void)setDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  v7.receiver = self;
  v7.super_class = UIActivityHeroActionCell;
  [(UIActivityActionCell *)&v7 setDisabled:?];
  if (disabledCopy)
  {
    v5 = 0.4;
  }

  else
  {
    v5 = 1.0;
  }

  stackView = [(UIActivityHeroActionCell *)self stackView];
  [stackView setAlpha:v5];
}

+ (int64_t)numberOfLinesForTitle:(id)title itemWidth:(double)width
{
  v21[2] = *MEMORY[0x1E69E9840];
  v4 = width + -8.0;
  v5 = MEMORY[0x1E69DB7C8];
  titleCopy = title;
  v7 = objc_alloc_init(v5);
  LODWORD(v8) = 1036831949;
  [v7 setHyphenationFactor:v8];
  v9 = objc_alloc(MEMORY[0x1E696AAB0]);
  v20[0] = *MEMORY[0x1E69DB648];
  v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v20[1] = *MEMORY[0x1E69DB688];
  v21[0] = v10;
  v21[1] = v7;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v12 = [v9 initWithString:titleCopy attributes:v11];

  v13 = CTLineCreateWithAttributedString(v12);
  v14 = [titleCopy length];

  OffsetForStringIndex = CTLineGetOffsetForStringIndex(v13, v14, 0);
  CFRelease(v13);
  if (OffsetForStringIndex >= v4)
  {
    v17 = objc_alloc_init(MEMORY[0x1E69DD5A0]);
    [v17 setAttributedText:v12];
    [v17 setBounds:{0.0, 0.0, v4, 1.79769313e308}];
    v18 = [MEMORY[0x1E69DD5A8] metricsWithConfiguration:v17];
    numberOfLines = [v18 numberOfLines];
  }

  else
  {
    numberOfLines = 1;
  }

  return numberOfLines;
}

+ (double)heightForNumberOfLines:(double)lines
{
  v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  [v4 lineHeight];
  v6 = v5 + 64.0;
  if (lines > 1.0)
  {
    [v4 lineHeight];
    v8 = v7;
    [v4 leading];
    v6 = v6 + v8 + v9;
  }

  return ceil(v6);
}

@end