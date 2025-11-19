@interface TPBadgeView
- (CGSize)_layoutSizeThatFits:(CGSize)a3 fixedAxes:(unint64_t)a4;
- (NSString)title;
- (TPBadgeView)initWithTitle:(id)a3 theme:(unint64_t)a4;
- (double)scaledLayoutValueForBaseValue:(double)a3 shouldLowerBound:(BOOL)a4;
- (double)suggestedHeight;
- (void)commonInit;
- (void)loadConstraints;
- (void)setSizeCategory:(unint64_t)a3;
- (void)setTheme:(unint64_t)a3;
- (void)setTitle:(id)a3;
- (void)unloadConstraints;
- (void)updateActiveHorizontalConstraints;
- (void)updateConstraintsConstants;
- (void)updateFonts;
- (void)updateSizeCategory;
- (void)updateTheme;
@end

@implementation TPBadgeView

- (TPBadgeView)initWithTitle:(id)a3 theme:(unint64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = TPBadgeView;
  v7 = [(TPView *)&v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v8 = v7;
  if (v7)
  {
    v7->_theme = a4;
    [(UILabel *)v7->_titleLabel setText:v6];
    [(TPBadgeView *)v8 updateTheme];
  }

  return v8;
}

- (void)commonInit
{
  v12.receiver = self;
  v12.super_class = TPBadgeView;
  [(TPView *)&v12 commonInit];
  [(TPBadgeView *)self _setHostsLayoutEngine:1];
  self->_sizeCategory = 0;
  [(TPBadgeView *)self updateSizeCategory];
  [(TPBadgeView *)self layerCornerRadius];
  [(TPBadgeView *)self scaledLayoutValueForBaseValue:?];
  v4 = v3;
  v5 = [(TPBadgeView *)self layer];
  [v5 setCornerRadius:v4];

  v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v6;

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v8) = 1148846080;
  [(UILabel *)self->_titleLabel setContentCompressionResistancePriority:0 forAxis:v8];
  LODWORD(v9) = 1148846080;
  [(UILabel *)self->_titleLabel setContentCompressionResistancePriority:1 forAxis:v9];
  LODWORD(v10) = 1148846080;
  [(UILabel *)self->_titleLabel setContentHuggingPriority:0 forAxis:v10];
  LODWORD(v11) = 1148846080;
  [(UILabel *)self->_titleLabel setContentHuggingPriority:1 forAxis:v11];
  [(TPBadgeView *)self addSubview:self->_titleLabel];
}

- (void)loadConstraints
{
  v28.receiver = self;
  v28.super_class = TPBadgeView;
  [(TPView *)&v28 loadConstraints];
  v3 = [(TPBadgeView *)self titleLabel];
  v4 = [v3 centerXAnchor];
  v5 = [(TPBadgeView *)self centerXAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];

  [v6 setActive:1];
  v7 = [(TPBadgeView *)self widthAnchor];
  v8 = [(TPBadgeView *)self heightAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  v10 = NSStringFromSelector(sel_widthAnchorLayoutConstraint);
  [v9 setIdentifier:v10];

  [(TPBadgeView *)self setWidthAnchorLayoutConstraint:v9];
  v11 = [(TPBadgeView *)self titleLabel];
  v12 = [v11 leadingAnchor];
  v13 = [(TPBadgeView *)self leadingAnchor];
  [(TPBadgeView *)self titleLabelLeadingAnchorLayoutConstraintConstant];
  [(TPBadgeView *)self scaledLayoutValueForBaseValue:1 shouldLowerBound:?];
  v14 = [v12 constraintEqualToAnchor:v13 constant:?];

  v15 = NSStringFromSelector(sel_titleLabelLeadingAnchorLayoutConstraint);
  [v14 setIdentifier:v15];

  [(TPBadgeView *)self setTitleLabelLeadingAnchorLayoutConstraint:v14];
  v16 = [(TPBadgeView *)self trailingAnchor];
  v17 = [(TPBadgeView *)self titleLabel];
  v18 = [v17 trailingAnchor];
  [(TPBadgeView *)self titleLabelTrailingAnchorLayoutConstraintConstant];
  [(TPBadgeView *)self scaledLayoutValueForBaseValue:1 shouldLowerBound:?];
  v19 = [v16 constraintEqualToAnchor:v18 constant:?];

  v20 = NSStringFromSelector(sel_titleLabelTrailingAnchorLayoutConstraint);
  [v19 setIdentifier:v20];

  [(TPBadgeView *)self setTitleLabelTrailingAnchorLayoutConstraint:v19];
  [(TPBadgeView *)self updateActiveHorizontalConstraints];
  v21 = [(TPBadgeView *)self titleLabel];
  v22 = [v21 centerYAnchor];
  v23 = [(TPBadgeView *)self centerYAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];

  [v24 setActive:1];
  v25 = [(TPBadgeView *)self heightAnchor];
  [(TPBadgeView *)self suggestedHeight];
  v26 = [v25 constraintEqualToConstant:?];

  v27 = NSStringFromSelector(sel_heightAnchorLayoutConstraint);
  [v26 setIdentifier:v27];

  [v26 setActive:1];
  [(TPBadgeView *)self setHeightAnchorLayoutConstraint:v26];
}

- (void)updateConstraintsConstants
{
  v19.receiver = self;
  v19.super_class = TPBadgeView;
  [(TPView *)&v19 updateConstraintsConstants];
  [(TPBadgeView *)self layerCornerRadius];
  [(TPBadgeView *)self scaledLayoutValueForBaseValue:?];
  v4 = v3;
  v5 = [(TPBadgeView *)self layer];
  [v5 setCornerRadius:v4];

  v6 = [(TPBadgeView *)self titleLabel];
  v7 = [v6 font];
  [v7 pointSize];
  v9 = v8;
  [(TPBadgeView *)self heightAnchorLayoutConstraintConstantFontMultiplier];
  v11 = v9 * v10;
  v12 = [(TPBadgeView *)self heightAnchorLayoutConstraint];
  [v12 setConstant:v11];

  [(TPBadgeView *)self titleLabelLeadingAnchorLayoutConstraintConstant];
  [(TPBadgeView *)self scaledLayoutValueForBaseValue:1 shouldLowerBound:?];
  v14 = v13;
  v15 = [(TPBadgeView *)self titleLabelLeadingAnchorLayoutConstraint];
  [v15 setConstant:v14];

  [(TPBadgeView *)self titleLabelTrailingAnchorLayoutConstraintConstant];
  [(TPBadgeView *)self scaledLayoutValueForBaseValue:1 shouldLowerBound:?];
  v17 = v16;
  v18 = [(TPBadgeView *)self titleLabelTrailingAnchorLayoutConstraint];
  [v18 setConstant:v17];
}

- (void)unloadConstraints
{
  v3 = [(TPBadgeView *)self widthAnchorLayoutConstraint];
  [v3 setActive:0];

  [(TPBadgeView *)self setWidthAnchorLayoutConstraint:0];
  v4 = [(TPBadgeView *)self titleLabelLeadingAnchorLayoutConstraint];
  [v4 setActive:0];

  [(TPBadgeView *)self setTitleLabelLeadingAnchorLayoutConstraint:0];
  v5 = [(TPBadgeView *)self titleLabelTrailingAnchorLayoutConstraint];
  [v5 setActive:0];

  [(TPBadgeView *)self setTitleLabelTrailingAnchorLayoutConstraint:0];
  v6 = [(TPBadgeView *)self heightAnchorLayoutConstraint];
  [v6 setActive:0];

  [(TPBadgeView *)self setHeightAnchorLayoutConstraint:0];
  v7.receiver = self;
  v7.super_class = TPBadgeView;
  [(TPView *)&v7 unloadConstraints];
}

- (void)updateFonts
{
  v11.receiver = self;
  v11.super_class = TPBadgeView;
  [(TPView *)&v11 updateFonts];
  if ([(TPBadgeView *)self sizeCategory]== 3)
  {
    v3 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*MEMORY[0x1E69DDD08]];
    v4 = MEMORY[0x1E69DB878];
    [(TPBadgeView *)self titleLabelFontSize];
    v5 = *MEMORY[0x1E69DB958];
    v6 = [v4 systemFontOfSize:? weight:?];
    v7 = [v3 scaledFontForFont:v6 maximumPointSize:22.3125];

    v8 = [(TPBadgeView *)self titleLabel];
    [v8 setFont:v7];
  }

  else
  {
    v9 = MEMORY[0x1E69DB878];
    [(TPBadgeView *)self titleLabelFontSize];
    [(TPBadgeView *)self scaledLayoutValueForBaseValue:?];
    v10 = *MEMORY[0x1E69DB958];
    v3 = [v9 systemFontOfSize:? weight:?];
    v7 = [(TPBadgeView *)self titleLabel];
    [v7 setFont:v3];
  }
}

- (void)updateSizeCategory
{
  v3 = [(TPBadgeView *)self sizeCategory];
  if (v3 <= 5)
  {
    v4 = dbl_1B48EB7B0[v3];
    v5 = dbl_1B48EB7E0[v3];
    v6 = dbl_1B48EB810[v3];
    [(TPBadgeView *)self setLayerCornerRadius:dbl_1B48EB780[v3]];
    [(TPBadgeView *)self setTitleLabelFontSize:v4];
    [(TPBadgeView *)self setHeightAnchorLayoutConstraintConstantFontMultiplier:v5];
    [(TPBadgeView *)self setTitleLabelLeadingAnchorLayoutConstraintConstant:v6];
    [(TPBadgeView *)self setTitleLabelTrailingAnchorLayoutConstraintConstant:v6];
  }

  [(TPBadgeView *)self updateConstraintsConstants];
}

- (void)updateTheme
{
  theme = self->_theme;
  if (theme <= 3)
  {
    if (theme > 1)
    {
      if (theme == 2)
      {
        v15 = [MEMORY[0x1E69DC888] blackColor];
        [(TPBadgeView *)self setBackgroundColor:v15];

        v16 = [MEMORY[0x1E69DC888] blackColor];
LABEL_23:
        v29 = v16;
        v30 = [(TPBadgeView *)self titleLabel];
        [v30 setBackgroundColor:v29];

        v8 = [MEMORY[0x1E69DC888] whiteColor];
        goto LABEL_24;
      }

      v9 = [MEMORY[0x1E69DC888] whiteColor];
      [(TPBadgeView *)self setBackgroundColor:v9];

      v10 = [MEMORY[0x1E69DC888] whiteColor];
      v11 = [(TPBadgeView *)self titleLabel];
      [v11 setBackgroundColor:v10];

      v8 = [MEMORY[0x1E69DC888] _tp_bluePillColor];
    }

    else if (theme)
    {
      if (theme != 1)
      {
        return;
      }

      v5 = [MEMORY[0x1E69DC888] whiteColor];
      [(TPBadgeView *)self setBackgroundColor:v5];

      v6 = [MEMORY[0x1E69DC888] whiteColor];
      v7 = [(TPBadgeView *)self titleLabel];
      [v7 setBackgroundColor:v6];

      v8 = [MEMORY[0x1E69DC888] blackColor];
    }

    else
    {
      v12 = [MEMORY[0x1E69DC888] dynamicTertiaryLabelColor];
      [(TPBadgeView *)self setBackgroundColor:v12];

      v13 = [MEMORY[0x1E69DC888] clearColor];
      v14 = [(TPBadgeView *)self titleLabel];
      [v14 setBackgroundColor:v13];

      v8 = [MEMORY[0x1E69DC888] dynamicBackgroundColor];
    }
  }

  else
  {
    if (theme <= 5)
    {
      if (theme == 4)
      {
        v25 = [MEMORY[0x1E69DC888] whiteColor];
        [(TPBadgeView *)self setBackgroundColor:v25];

        v26 = [MEMORY[0x1E69DC888] whiteColor];
        v27 = [(TPBadgeView *)self titleLabel];
        [v27 setBackgroundColor:v26];

        v8 = [MEMORY[0x1E69DC888] _tp_greenPillColor];
        goto LABEL_24;
      }
    }

    else
    {
      if (theme != 6)
      {
        if (theme == 7)
        {
          v4 = [MEMORY[0x1E69DC888] systemGrayColor];
        }

        else
        {
          if (theme != 8)
          {
            return;
          }

          v4 = [MEMORY[0x1E69DC888] systemBlueColor];
        }

        v28 = v4;
        [(TPBadgeView *)self setBackgroundColor:v4];

        v16 = [MEMORY[0x1E69DC888] clearColor];
        goto LABEL_23;
      }

      v17 = [MEMORY[0x1E69DC888] labelColor];
      [(TPBadgeView *)self setBackgroundColor:v17];

      v18 = [MEMORY[0x1E69DC888] clearColor];
      v19 = [(TPBadgeView *)self titleLabel];
      [v19 setBackgroundColor:v18];

      v20 = [MEMORY[0x1E69DC888] tableBackgroundColor];
      v21 = [(TPBadgeView *)self titleLabel];
      [v21 setTextColor:v20];
    }

    v22 = [MEMORY[0x1E69DC888] dynamicCarSecondaryColor];
    [(TPBadgeView *)self setBackgroundColor:v22];

    v23 = [MEMORY[0x1E69DC888] clearColor];
    v24 = [(TPBadgeView *)self titleLabel];
    [v24 setBackgroundColor:v23];

    v8 = [MEMORY[0x1E69DC888] tableBackgroundColor];
  }

LABEL_24:
  v32 = v8;
  v31 = [(TPBadgeView *)self titleLabel];
  [v31 setTextColor:v32];
}

- (void)updateActiveHorizontalConstraints
{
  v3 = [(TPBadgeView *)self titleLabel];
  v4 = [v3 text];
  v5 = [v4 length];

  if (v5 < 2)
  {
    v8 = [(TPBadgeView *)self titleLabelLeadingAnchorLayoutConstraint];
    [v8 setActive:0];

    v9 = [(TPBadgeView *)self titleLabelTrailingAnchorLayoutConstraint];
    [v9 setActive:0];

    [(TPBadgeView *)self widthAnchorLayoutConstraint];
  }

  else
  {
    v6 = [(TPBadgeView *)self widthAnchorLayoutConstraint];
    [v6 setActive:0];

    v7 = [(TPBadgeView *)self titleLabelLeadingAnchorLayoutConstraint];
    [v7 setActive:1];

    [(TPBadgeView *)self titleLabelTrailingAnchorLayoutConstraint];
  }
  v10 = ;
  [v10 setActive:1];
}

- (void)setSizeCategory:(unint64_t)a3
{
  if (self->_sizeCategory != a3)
  {
    self->_sizeCategory = a3;
    [(TPBadgeView *)self updateSizeCategory];
  }
}

- (void)setTheme:(unint64_t)a3
{
  if (self->_theme != a3)
  {
    self->_theme = a3;
    [(TPBadgeView *)self updateTheme];
  }
}

- (void)setTitle:(id)a3
{
  v7 = a3;
  v4 = [(TPBadgeView *)self titleLabel];
  v5 = [v4 text];

  if (([v5 isEqualToString:v7] & 1) == 0)
  {
    [(UILabel *)self->_titleLabel setText:v7];
    [(UILabel *)self->_titleLabel sizeToFit];
    v6 = [v5 length];
    if (v6 != [v7 length])
    {
      [(TPBadgeView *)self updateActiveHorizontalConstraints];
    }
  }
}

- (NSString)title
{
  v2 = [(TPBadgeView *)self titleLabel];
  v3 = [v2 text];

  return v3;
}

- (double)suggestedHeight
{
  [(TPBadgeView *)self heightAnchorLayoutConstraintConstantFontMultiplier];
  v4 = v3;
  v5 = [(TPBadgeView *)self titleLabel];
  v6 = [v5 font];
  [v6 pointSize];
  v8 = v4 * v7;

  return v8;
}

- (double)scaledLayoutValueForBaseValue:(double)a3 shouldLowerBound:(BOOL)a4
{
  v4 = a4;
  v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD08]];
  [v7 _scaledValueForValue:a3];
  v9 = v8;

  if ([(TPBadgeView *)self sizeCategory]== 3)
  {
    v10 = [(TPBadgeView *)self titleLabel];
    v11 = [v10 font];
    [v11 _scaledValueForValue:a3];
    v9 = v12;
  }

  result = fmax(v9, a3);
  if (!v4)
  {
    return v9;
  }

  return result;
}

- (CGSize)_layoutSizeThatFits:(CGSize)a3 fixedAxes:(unint64_t)a4
{
  LODWORD(v5) = 1148846080;
  if (a4)
  {
    *&v4 = 1000.0;
  }

  else
  {
    *&v4 = 50.0;
  }

  if ((a4 & 2) == 0)
  {
    *&v5 = 50.0;
  }

  [(TPBadgeView *)self systemLayoutSizeFittingSize:a3.width withHorizontalFittingPriority:a3.height verticalFittingPriority:v4, v5];
  result.height = v7;
  result.width = v6;
  return result;
}

@end