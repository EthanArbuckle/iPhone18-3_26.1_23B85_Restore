@interface TLKSplitTitleContainer
+ (double)widthForString:(id)string font:(id)font;
- (BOOL)titleLabelsFitInWidth:(double)width pointSize:(double)size;
- (CGSize)effectiveLayoutSizeFittingSize:(CGSize)size;
- (TLKSplitTitleContainer)init;
- (id)titleFont;
- (void)layoutSubviews;
- (void)setFrame:(CGRect)frame;
@end

@implementation TLKSplitTitleContainer

- (TLKSplitTitleContainer)init
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = TLKSplitTitleContainer;
  v2 = [(TLKSplitTitleContainer *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [v3 setTextAlignment:1];
    LODWORD(v4) = 1132068864;
    [v3 setContentCompressionResistancePriority:0 forAxis:v4];
    [(TLKSplitTitleContainer *)v2 setTitleLabel:v3];
    v5 = objc_opt_new();
    [(TLKSplitTitleContainer *)v2 setCenterLeadingTitleLabel:v5];
    v6 = objc_opt_new();
    [(TLKSplitTitleContainer *)v2 setCenterTrailingTitleLabel:v6];
    v7 = [TLKStackView alloc];
    v13[0] = v5;
    v13[1] = v3;
    v13[2] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];
    v9 = [(NUIContainerStackView *)v7 initWithArrangedSubviews:v8];

    [(TLKStackView *)v9 setAlignment:4 forView:v5 inAxis:0];
    [(TLKStackView *)v9 setAlignment:1 forView:v6 inAxis:0];
    [(TLKSplitTitleContainer *)v2 setTitleStackView:v9];
    titleStackView = [(TLKSplitTitleContainer *)v2 titleStackView];
    [(TLKSplitTitleContainer *)v2 addSubview:titleStackView];
  }

  return v2;
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = TLKSplitTitleContainer;
  [(TLKSplitTitleContainer *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(TLKSplitTitleContainer *)self setNeedsLayout];
}

- (CGSize)effectiveLayoutSizeFittingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  titleFont = [(TLKSplitTitleContainer *)self titleFont];
  titleLabel = [(TLKSplitTitleContainer *)self titleLabel];
  [titleLabel setFont:titleFont];

  centerLeadingTitleLabel = [(TLKSplitTitleContainer *)self centerLeadingTitleLabel];
  [centerLeadingTitleLabel setFont:titleFont];

  centerTrailingTitleLabel = [(TLKSplitTitleContainer *)self centerTrailingTitleLabel];
  [centerTrailingTitleLabel setFont:titleFont];

  titleLabel2 = [(TLKSplitTitleContainer *)self titleLabel];
  isHidden = [titleLabel2 isHidden];

  if ((isHidden & 1) == 0)
  {
    titleStackView = [(TLKSplitTitleContainer *)self titleStackView];
    [titleStackView spacing];
    v14 = v13;
    titleStackView2 = [(TLKSplitTitleContainer *)self titleStackView];
    arrangedSubviews = [titleStackView2 arrangedSubviews];
    v17 = width - v14 * ([arrangedSubviews count] - 1);

    titleFont2 = [(TLKSplitTitleContainer *)self titleFont];
    [titleFont2 pointSize];
    v20 = v19;

    if (![(TLKSplitTitleContainer *)self titleLabelsFitInWidth:v17 pointSize:v20])
    {
      v21 = 10.0;
      if (v20 > 10.0 && v20 + -10.0 > 1.0)
      {
        do
        {
          if ([(TLKSplitTitleContainer *)self titleLabelsFitInWidth:v17 pointSize:(v20 + v21) * 0.5])
          {
            v21 = (v20 + v21) * 0.5 + 1.0;
          }

          else
          {
            v20 = (v20 + v21) * 0.5;
          }
        }

        while (v21 < v20 && v20 - v21 > 1.0);
      }

      v23 = [titleFont fontWithSize:v21];
      titleLabel3 = [(TLKSplitTitleContainer *)self titleLabel];
      [titleLabel3 setFont:v23];

      v25 = [titleFont fontWithSize:v21];
      centerLeadingTitleLabel2 = [(TLKSplitTitleContainer *)self centerLeadingTitleLabel];
      [centerLeadingTitleLabel2 setFont:v25];

      v27 = [titleFont fontWithSize:v21];
      centerTrailingTitleLabel2 = [(TLKSplitTitleContainer *)self centerTrailingTitleLabel];
      [centerTrailingTitleLabel2 setFont:v27];
    }
  }

  titleStackView3 = [(TLKSplitTitleContainer *)self titleStackView];
  [titleStackView3 effectiveLayoutSizeFittingSize:{width, height}];
  v31 = v30;
  v33 = v32;

  v34 = v31;
  v35 = v33;
  result.height = v35;
  result.width = v34;
  return result;
}

- (void)layoutSubviews
{
  v35.receiver = self;
  v35.super_class = TLKSplitTitleContainer;
  [(TLKSplitTitleContainer *)&v35 layoutSubviews];
  titleStackView = [(TLKSplitTitleContainer *)self titleStackView];
  [(TLKSplitTitleContainer *)self bounds];
  [titleStackView effectiveLayoutSizeFittingSize:{v4, v5}];
  v7 = v6;
  v9 = v8;

  [(TLKSplitTitleContainer *)self bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  titleStackView2 = [(TLKSplitTitleContainer *)self titleStackView];
  [titleStackView2 setFrame:{v11, v13, v15, v17}];

  [(TLKSplitTitleContainer *)self bounds];
  MidX = CGRectGetMidX(v36);
  [(TLKSplitTitleContainer *)self bounds];
  v20 = CGRectGetHeight(v37) - v9;
  titleLabel = [(TLKSplitTitleContainer *)self titleLabel];
  font = [titleLabel font];
  [font descender];
  v24 = v20 - v23;

  if ([(TLKSplitTitleContainer *)self useLargeTitle])
  {
    v25 = v24 + -9.0;
  }

  else
  {
    v25 = v24;
  }

  [TLKLayoutUtilities deviceScaledRoundedRect:self forView:MidX + v7 * -0.5, v25, v7, v9];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  titleStackView3 = [(TLKSplitTitleContainer *)self titleStackView];
  [titleStackView3 setFrame:{v27, v29, v31, v33}];
}

- (BOOL)titleLabelsFitInWidth:(double)width pointSize:(double)size
{
  titleFont = [(TLKSplitTitleContainer *)self titleFont];
  v8 = [titleFont fontWithSize:size];

  v9 = objc_opt_class();
  centerLeadingTitleLabel = [(TLKSplitTitleContainer *)self centerLeadingTitleLabel];
  text = [centerLeadingTitleLabel text];
  [v9 widthForString:text font:v8];
  v13 = v12;
  v14 = objc_opt_class();
  titleLabel = [(TLKSplitTitleContainer *)self titleLabel];
  text2 = [titleLabel text];
  [v14 widthForString:text2 font:v8];
  v18 = v13 + v17;
  v19 = objc_opt_class();
  centerTrailingTitleLabel = [(TLKSplitTitleContainer *)self centerTrailingTitleLabel];
  text3 = [centerTrailingTitleLabel text];
  [v19 widthForString:text3 font:v8];
  v23 = v18 + v22;

  return v23 < width;
}

+ (double)widthForString:(id)string font:(id)font
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12 = *MEMORY[0x1E69DB648];
  v13[0] = font;
  v5 = MEMORY[0x1E695DF20];
  fontCopy = font;
  stringCopy = string;
  v8 = [v5 dictionaryWithObjects:v13 forKeys:&v12 count:1];

  [stringCopy boundingRectWithSize:1 options:v8 attributes:0 context:{1.79769313e308, 1.79769313e308}];
  v10 = v9;

  return v10;
}

- (id)titleFont
{
  useLargeTitle = [(TLKSplitTitleContainer *)self useLargeTitle];
  v3 = MEMORY[0x1E69DDD58];
  if (!useLargeTitle)
  {
    v3 = MEMORY[0x1E69DDDC0];
  }

  v4 = *v3;
  v5 = *MEMORY[0x1E69DB970];

  return [TLKFontUtilities cachedFontForTextStyle:v4 isShort:0 fontWeight:v5];
}

@end