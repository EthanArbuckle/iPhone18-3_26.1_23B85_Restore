@interface UIActivityHeroActionCell
+ (double)heightForNumberOfLines:(double)a3;
+ (int64_t)numberOfLinesForTitle:(id)a3 itemWidth:(double)a4;
- (UIActivityHeroActionCell)initWithFrame:(CGRect)a3;
- (void)applyLayoutAttributes:(id)a3;
- (void)prepareForReuse;
- (void)setDisabled:(BOOL)a3;
- (void)updateConstraints;
@end

@implementation UIActivityHeroActionCell

- (UIActivityHeroActionCell)initWithFrame:(CGRect)a3
{
  v49[2] = *MEMORY[0x1E69E9840];
  v48.receiver = self;
  v48.super_class = UIActivityHeroActionCell;
  v3 = [(UIActivityActionCell *)&v48 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

    v10 = [MEMORY[0x1E69DC888] labelColor];
    [v8 setTintColor:v10];

    [v8 setContentMode:4];
    [v8 setAccessibilityIdentifier:@"imageView"];
    LODWORD(v11) = 1144766464;
    [v8 setContentHuggingPriority:1 forAxis:v11];
    [(UIActivityHeroActionCell *)v3 setActivityImageView:v8];
    v12 = objc_alloc(MEMORY[0x1E69DCF90]);
    v13 = [(UIActivityHeroActionCell *)v3 activityImageView];
    v49[0] = v13;
    v14 = [(UIActivityHeroActionCell *)v3 titleLabel];
    v49[1] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
    v16 = [v12 initWithArrangedSubviews:v15];

    [v16 setAxis:1];
    [v16 setAlignment:0];
    [v16 setDistribution:0];
    [v16 setSpacing:10.0];
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v16 setAccessibilityIdentifier:@"stackView"];
    [(UIActivityHeroActionCell *)v3 setStackView:v16];
    v17 = [(UIActivityHeroActionCell *)v3 contentView];
    v18 = [(UIActivityHeroActionCell *)v3 stackView];
    [v17 addSubview:v18];

    v19 = [MEMORY[0x1E695DF70] array];
    v20 = [(UIActivityHeroActionCell *)v3 stackView];
    v21 = [v20 topAnchor];
    v22 = [v17 topAnchor];
    v23 = [v21 constraintEqualToAnchor:v22 constant:18.0];
    [v19 addObject:v23];

    v24 = [(UIActivityHeroActionCell *)v3 stackView];
    v25 = [v24 leadingAnchor];
    v26 = [v17 leadingAnchor];
    v27 = [v25 constraintEqualToAnchor:v26 constant:4.0];
    [v19 addObject:v27];

    v28 = [v17 trailingAnchor];
    v29 = [(UIActivityHeroActionCell *)v3 stackView];
    v30 = [v29 trailingAnchor];
    v31 = [v28 constraintEqualToAnchor:v30 constant:4.0];
    [v19 addObject:v31];

    v32 = [v17 bottomAnchor];
    v33 = [(UIActivityHeroActionCell *)v3 stackView];
    v34 = [v33 lastBaselineAnchor];
    v35 = [v32 constraintGreaterThanOrEqualToAnchor:v34 constant:14.0];
    [v19 addObject:v35];

    v36 = [v17 heightAnchor];
    v37 = [v36 constraintGreaterThanOrEqualToConstant:80.0];
    [v19 addObject:v37];

    [MEMORY[0x1E696ACD8] activateConstraints:v19];
    v38 = [v17 bottomAnchor];
    v39 = [(UIActivityHeroActionCell *)v3 stackView];
    v40 = [v39 lastBaselineAnchor];
    v41 = [v38 constraintEqualToAnchor:v40 constant:18.0];
    [(UIActivityHeroActionCell *)v3 setBottomInsetConstraint:v41];

    v42 = [v17 bottomAnchor];
    v43 = [(UIActivityHeroActionCell *)v3 stackView];
    v44 = [v43 lastBaselineAnchor];
    v45 = [v42 constraintEqualToAnchor:v44 constant:14.0];
    [(UIActivityHeroActionCell *)v3 setTallBottomInsetConstraint:v45];

    v46 = [MEMORY[0x1E69DC6E8] listGroupedCellConfiguration];
    [(UIActivityHeroActionCell *)v3 setBackgroundConfiguration:v46];
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
  v6 = [(UIActivityHeroActionCell *)self bottomInsetConstraint];
  [v6 setActive:v5];

  v7 = [(UIActivityHeroActionCell *)self tallBottomInsetConstraint];
  [v7 setActive:v4];
}

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = UIActivityHeroActionCell;
  [(UIActivityActionCell *)&v6 prepareForReuse];
  v3 = [(UIActivityHeroActionCell *)self titleLabel];
  [v3 setText:0];

  v4 = [(UIActivityHeroActionCell *)self activityImageView];
  [v4 setImage:0];

  v5 = [(UIActivityHeroActionCell *)self stackView];
  [v5 setNeedsLayout];
}

- (void)applyLayoutAttributes:(id)a3
{
  v4.receiver = self;
  v4.super_class = UIActivityHeroActionCell;
  [(UIActivityHeroActionCell *)&v4 applyLayoutAttributes:a3];
  [(UIActivityHeroActionCell *)self setClipsToBounds:1];
  [(UIActivityHeroActionCell *)self _setContinuousCornerRadius:12.0];
}

- (void)setDisabled:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = UIActivityHeroActionCell;
  [(UIActivityActionCell *)&v7 setDisabled:?];
  if (v3)
  {
    v5 = 0.4;
  }

  else
  {
    v5 = 1.0;
  }

  v6 = [(UIActivityHeroActionCell *)self stackView];
  [v6 setAlpha:v5];
}

+ (int64_t)numberOfLinesForTitle:(id)a3 itemWidth:(double)a4
{
  v21[2] = *MEMORY[0x1E69E9840];
  v4 = a4 + -8.0;
  v5 = MEMORY[0x1E69DB7C8];
  v6 = a3;
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
  v12 = [v9 initWithString:v6 attributes:v11];

  v13 = CTLineCreateWithAttributedString(v12);
  v14 = [v6 length];

  OffsetForStringIndex = CTLineGetOffsetForStringIndex(v13, v14, 0);
  CFRelease(v13);
  if (OffsetForStringIndex >= v4)
  {
    v17 = objc_alloc_init(MEMORY[0x1E69DD5A0]);
    [v17 setAttributedText:v12];
    [v17 setBounds:{0.0, 0.0, v4, 1.79769313e308}];
    v18 = [MEMORY[0x1E69DD5A8] metricsWithConfiguration:v17];
    v16 = [v18 numberOfLines];
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

+ (double)heightForNumberOfLines:(double)a3
{
  v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  [v4 lineHeight];
  v6 = v5 + 64.0;
  if (a3 > 1.0)
  {
    [v4 lineHeight];
    v8 = v7;
    [v4 leading];
    v6 = v6 + v8 + v9;
  }

  return ceil(v6);
}

@end