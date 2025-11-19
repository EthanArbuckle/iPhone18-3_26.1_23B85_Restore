@interface TLKSplitTitleContainer
+ (double)widthForString:(id)a3 font:(id)a4;
- (BOOL)titleLabelsFitInWidth:(double)a3 pointSize:(double)a4;
- (CGSize)effectiveLayoutSizeFittingSize:(CGSize)a3;
- (TLKSplitTitleContainer)init;
- (id)titleFont;
- (void)layoutSubviews;
- (void)setFrame:(CGRect)a3;
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
    v10 = [(TLKSplitTitleContainer *)v2 titleStackView];
    [(TLKSplitTitleContainer *)v2 addSubview:v10];
  }

  return v2;
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = TLKSplitTitleContainer;
  [(TLKSplitTitleContainer *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(TLKSplitTitleContainer *)self setNeedsLayout];
}

- (CGSize)effectiveLayoutSizeFittingSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(TLKSplitTitleContainer *)self titleFont];
  v7 = [(TLKSplitTitleContainer *)self titleLabel];
  [v7 setFont:v6];

  v8 = [(TLKSplitTitleContainer *)self centerLeadingTitleLabel];
  [v8 setFont:v6];

  v9 = [(TLKSplitTitleContainer *)self centerTrailingTitleLabel];
  [v9 setFont:v6];

  v10 = [(TLKSplitTitleContainer *)self titleLabel];
  v11 = [v10 isHidden];

  if ((v11 & 1) == 0)
  {
    v12 = [(TLKSplitTitleContainer *)self titleStackView];
    [v12 spacing];
    v14 = v13;
    v15 = [(TLKSplitTitleContainer *)self titleStackView];
    v16 = [v15 arrangedSubviews];
    v17 = width - v14 * ([v16 count] - 1);

    v18 = [(TLKSplitTitleContainer *)self titleFont];
    [v18 pointSize];
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

      v23 = [v6 fontWithSize:v21];
      v24 = [(TLKSplitTitleContainer *)self titleLabel];
      [v24 setFont:v23];

      v25 = [v6 fontWithSize:v21];
      v26 = [(TLKSplitTitleContainer *)self centerLeadingTitleLabel];
      [v26 setFont:v25];

      v27 = [v6 fontWithSize:v21];
      v28 = [(TLKSplitTitleContainer *)self centerTrailingTitleLabel];
      [v28 setFont:v27];
    }
  }

  v29 = [(TLKSplitTitleContainer *)self titleStackView];
  [v29 effectiveLayoutSizeFittingSize:{width, height}];
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
  v3 = [(TLKSplitTitleContainer *)self titleStackView];
  [(TLKSplitTitleContainer *)self bounds];
  [v3 effectiveLayoutSizeFittingSize:{v4, v5}];
  v7 = v6;
  v9 = v8;

  [(TLKSplitTitleContainer *)self bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(TLKSplitTitleContainer *)self titleStackView];
  [v18 setFrame:{v11, v13, v15, v17}];

  [(TLKSplitTitleContainer *)self bounds];
  MidX = CGRectGetMidX(v36);
  [(TLKSplitTitleContainer *)self bounds];
  v20 = CGRectGetHeight(v37) - v9;
  v21 = [(TLKSplitTitleContainer *)self titleLabel];
  v22 = [v21 font];
  [v22 descender];
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
  v34 = [(TLKSplitTitleContainer *)self titleStackView];
  [v34 setFrame:{v27, v29, v31, v33}];
}

- (BOOL)titleLabelsFitInWidth:(double)a3 pointSize:(double)a4
{
  v7 = [(TLKSplitTitleContainer *)self titleFont];
  v8 = [v7 fontWithSize:a4];

  v9 = objc_opt_class();
  v10 = [(TLKSplitTitleContainer *)self centerLeadingTitleLabel];
  v11 = [v10 text];
  [v9 widthForString:v11 font:v8];
  v13 = v12;
  v14 = objc_opt_class();
  v15 = [(TLKSplitTitleContainer *)self titleLabel];
  v16 = [v15 text];
  [v14 widthForString:v16 font:v8];
  v18 = v13 + v17;
  v19 = objc_opt_class();
  v20 = [(TLKSplitTitleContainer *)self centerTrailingTitleLabel];
  v21 = [v20 text];
  [v19 widthForString:v21 font:v8];
  v23 = v18 + v22;

  return v23 < a3;
}

+ (double)widthForString:(id)a3 font:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12 = *MEMORY[0x1E69DB648];
  v13[0] = a4;
  v5 = MEMORY[0x1E695DF20];
  v6 = a4;
  v7 = a3;
  v8 = [v5 dictionaryWithObjects:v13 forKeys:&v12 count:1];

  [v7 boundingRectWithSize:1 options:v8 attributes:0 context:{1.79769313e308, 1.79769313e308}];
  v10 = v9;

  return v10;
}

- (id)titleFont
{
  v2 = [(TLKSplitTitleContainer *)self useLargeTitle];
  v3 = MEMORY[0x1E69DDD58];
  if (!v2)
  {
    v3 = MEMORY[0x1E69DDDC0];
  }

  v4 = *v3;
  v5 = *MEMORY[0x1E69DB970];

  return [TLKFontUtilities cachedFontForTextStyle:v4 isShort:0 fontWeight:v5];
}

@end