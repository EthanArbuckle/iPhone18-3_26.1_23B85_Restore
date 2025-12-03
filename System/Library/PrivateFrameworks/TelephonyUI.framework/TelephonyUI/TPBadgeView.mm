@interface TPBadgeView
- (CGSize)_layoutSizeThatFits:(CGSize)fits fixedAxes:(unint64_t)axes;
- (NSString)title;
- (TPBadgeView)initWithTitle:(id)title theme:(unint64_t)theme;
- (double)scaledLayoutValueForBaseValue:(double)value shouldLowerBound:(BOOL)bound;
- (double)suggestedHeight;
- (void)commonInit;
- (void)loadConstraints;
- (void)setSizeCategory:(unint64_t)category;
- (void)setTheme:(unint64_t)theme;
- (void)setTitle:(id)title;
- (void)unloadConstraints;
- (void)updateActiveHorizontalConstraints;
- (void)updateConstraintsConstants;
- (void)updateFonts;
- (void)updateSizeCategory;
- (void)updateTheme;
@end

@implementation TPBadgeView

- (TPBadgeView)initWithTitle:(id)title theme:(unint64_t)theme
{
  titleCopy = title;
  v10.receiver = self;
  v10.super_class = TPBadgeView;
  v7 = [(TPView *)&v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v8 = v7;
  if (v7)
  {
    v7->_theme = theme;
    [(UILabel *)v7->_titleLabel setText:titleCopy];
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
  layer = [(TPBadgeView *)self layer];
  [layer setCornerRadius:v4];

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
  titleLabel = [(TPBadgeView *)self titleLabel];
  centerXAnchor = [titleLabel centerXAnchor];
  centerXAnchor2 = [(TPBadgeView *)self centerXAnchor];
  v6 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

  [v6 setActive:1];
  widthAnchor = [(TPBadgeView *)self widthAnchor];
  heightAnchor = [(TPBadgeView *)self heightAnchor];
  v9 = [widthAnchor constraintEqualToAnchor:heightAnchor];

  v10 = NSStringFromSelector(sel_widthAnchorLayoutConstraint);
  [v9 setIdentifier:v10];

  [(TPBadgeView *)self setWidthAnchorLayoutConstraint:v9];
  titleLabel2 = [(TPBadgeView *)self titleLabel];
  leadingAnchor = [titleLabel2 leadingAnchor];
  leadingAnchor2 = [(TPBadgeView *)self leadingAnchor];
  [(TPBadgeView *)self titleLabelLeadingAnchorLayoutConstraintConstant];
  [(TPBadgeView *)self scaledLayoutValueForBaseValue:1 shouldLowerBound:?];
  v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];

  v15 = NSStringFromSelector(sel_titleLabelLeadingAnchorLayoutConstraint);
  [v14 setIdentifier:v15];

  [(TPBadgeView *)self setTitleLabelLeadingAnchorLayoutConstraint:v14];
  trailingAnchor = [(TPBadgeView *)self trailingAnchor];
  titleLabel3 = [(TPBadgeView *)self titleLabel];
  trailingAnchor2 = [titleLabel3 trailingAnchor];
  [(TPBadgeView *)self titleLabelTrailingAnchorLayoutConstraintConstant];
  [(TPBadgeView *)self scaledLayoutValueForBaseValue:1 shouldLowerBound:?];
  v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:?];

  v20 = NSStringFromSelector(sel_titleLabelTrailingAnchorLayoutConstraint);
  [v19 setIdentifier:v20];

  [(TPBadgeView *)self setTitleLabelTrailingAnchorLayoutConstraint:v19];
  [(TPBadgeView *)self updateActiveHorizontalConstraints];
  titleLabel4 = [(TPBadgeView *)self titleLabel];
  centerYAnchor = [titleLabel4 centerYAnchor];
  centerYAnchor2 = [(TPBadgeView *)self centerYAnchor];
  v24 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

  [v24 setActive:1];
  heightAnchor2 = [(TPBadgeView *)self heightAnchor];
  [(TPBadgeView *)self suggestedHeight];
  v26 = [heightAnchor2 constraintEqualToConstant:?];

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
  layer = [(TPBadgeView *)self layer];
  [layer setCornerRadius:v4];

  titleLabel = [(TPBadgeView *)self titleLabel];
  font = [titleLabel font];
  [font pointSize];
  v9 = v8;
  [(TPBadgeView *)self heightAnchorLayoutConstraintConstantFontMultiplier];
  v11 = v9 * v10;
  heightAnchorLayoutConstraint = [(TPBadgeView *)self heightAnchorLayoutConstraint];
  [heightAnchorLayoutConstraint setConstant:v11];

  [(TPBadgeView *)self titleLabelLeadingAnchorLayoutConstraintConstant];
  [(TPBadgeView *)self scaledLayoutValueForBaseValue:1 shouldLowerBound:?];
  v14 = v13;
  titleLabelLeadingAnchorLayoutConstraint = [(TPBadgeView *)self titleLabelLeadingAnchorLayoutConstraint];
  [titleLabelLeadingAnchorLayoutConstraint setConstant:v14];

  [(TPBadgeView *)self titleLabelTrailingAnchorLayoutConstraintConstant];
  [(TPBadgeView *)self scaledLayoutValueForBaseValue:1 shouldLowerBound:?];
  v17 = v16;
  titleLabelTrailingAnchorLayoutConstraint = [(TPBadgeView *)self titleLabelTrailingAnchorLayoutConstraint];
  [titleLabelTrailingAnchorLayoutConstraint setConstant:v17];
}

- (void)unloadConstraints
{
  widthAnchorLayoutConstraint = [(TPBadgeView *)self widthAnchorLayoutConstraint];
  [widthAnchorLayoutConstraint setActive:0];

  [(TPBadgeView *)self setWidthAnchorLayoutConstraint:0];
  titleLabelLeadingAnchorLayoutConstraint = [(TPBadgeView *)self titleLabelLeadingAnchorLayoutConstraint];
  [titleLabelLeadingAnchorLayoutConstraint setActive:0];

  [(TPBadgeView *)self setTitleLabelLeadingAnchorLayoutConstraint:0];
  titleLabelTrailingAnchorLayoutConstraint = [(TPBadgeView *)self titleLabelTrailingAnchorLayoutConstraint];
  [titleLabelTrailingAnchorLayoutConstraint setActive:0];

  [(TPBadgeView *)self setTitleLabelTrailingAnchorLayoutConstraint:0];
  heightAnchorLayoutConstraint = [(TPBadgeView *)self heightAnchorLayoutConstraint];
  [heightAnchorLayoutConstraint setActive:0];

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
    titleLabel2 = [v3 scaledFontForFont:v6 maximumPointSize:22.3125];

    titleLabel = [(TPBadgeView *)self titleLabel];
    [titleLabel setFont:titleLabel2];
  }

  else
  {
    v9 = MEMORY[0x1E69DB878];
    [(TPBadgeView *)self titleLabelFontSize];
    [(TPBadgeView *)self scaledLayoutValueForBaseValue:?];
    v10 = *MEMORY[0x1E69DB958];
    v3 = [v9 systemFontOfSize:? weight:?];
    titleLabel2 = [(TPBadgeView *)self titleLabel];
    [titleLabel2 setFont:v3];
  }
}

- (void)updateSizeCategory
{
  sizeCategory = [(TPBadgeView *)self sizeCategory];
  if (sizeCategory <= 5)
  {
    v4 = dbl_1B48EB7B0[sizeCategory];
    v5 = dbl_1B48EB7E0[sizeCategory];
    v6 = dbl_1B48EB810[sizeCategory];
    [(TPBadgeView *)self setLayerCornerRadius:dbl_1B48EB780[sizeCategory]];
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
        blackColor = [MEMORY[0x1E69DC888] blackColor];
        [(TPBadgeView *)self setBackgroundColor:blackColor];

        blackColor2 = [MEMORY[0x1E69DC888] blackColor];
LABEL_23:
        v29 = blackColor2;
        titleLabel = [(TPBadgeView *)self titleLabel];
        [titleLabel setBackgroundColor:v29];

        whiteColor = [MEMORY[0x1E69DC888] whiteColor];
        goto LABEL_24;
      }

      whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
      [(TPBadgeView *)self setBackgroundColor:whiteColor2];

      whiteColor3 = [MEMORY[0x1E69DC888] whiteColor];
      titleLabel2 = [(TPBadgeView *)self titleLabel];
      [titleLabel2 setBackgroundColor:whiteColor3];

      whiteColor = [MEMORY[0x1E69DC888] _tp_bluePillColor];
    }

    else if (theme)
    {
      if (theme != 1)
      {
        return;
      }

      whiteColor4 = [MEMORY[0x1E69DC888] whiteColor];
      [(TPBadgeView *)self setBackgroundColor:whiteColor4];

      whiteColor5 = [MEMORY[0x1E69DC888] whiteColor];
      titleLabel3 = [(TPBadgeView *)self titleLabel];
      [titleLabel3 setBackgroundColor:whiteColor5];

      whiteColor = [MEMORY[0x1E69DC888] blackColor];
    }

    else
    {
      dynamicTertiaryLabelColor = [MEMORY[0x1E69DC888] dynamicTertiaryLabelColor];
      [(TPBadgeView *)self setBackgroundColor:dynamicTertiaryLabelColor];

      clearColor = [MEMORY[0x1E69DC888] clearColor];
      titleLabel4 = [(TPBadgeView *)self titleLabel];
      [titleLabel4 setBackgroundColor:clearColor];

      whiteColor = [MEMORY[0x1E69DC888] dynamicBackgroundColor];
    }
  }

  else
  {
    if (theme <= 5)
    {
      if (theme == 4)
      {
        whiteColor6 = [MEMORY[0x1E69DC888] whiteColor];
        [(TPBadgeView *)self setBackgroundColor:whiteColor6];

        whiteColor7 = [MEMORY[0x1E69DC888] whiteColor];
        titleLabel5 = [(TPBadgeView *)self titleLabel];
        [titleLabel5 setBackgroundColor:whiteColor7];

        whiteColor = [MEMORY[0x1E69DC888] _tp_greenPillColor];
        goto LABEL_24;
      }
    }

    else
    {
      if (theme != 6)
      {
        if (theme == 7)
        {
          systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
        }

        else
        {
          if (theme != 8)
          {
            return;
          }

          systemGrayColor = [MEMORY[0x1E69DC888] systemBlueColor];
        }

        v28 = systemGrayColor;
        [(TPBadgeView *)self setBackgroundColor:systemGrayColor];

        blackColor2 = [MEMORY[0x1E69DC888] clearColor];
        goto LABEL_23;
      }

      labelColor = [MEMORY[0x1E69DC888] labelColor];
      [(TPBadgeView *)self setBackgroundColor:labelColor];

      clearColor2 = [MEMORY[0x1E69DC888] clearColor];
      titleLabel6 = [(TPBadgeView *)self titleLabel];
      [titleLabel6 setBackgroundColor:clearColor2];

      tableBackgroundColor = [MEMORY[0x1E69DC888] tableBackgroundColor];
      titleLabel7 = [(TPBadgeView *)self titleLabel];
      [titleLabel7 setTextColor:tableBackgroundColor];
    }

    dynamicCarSecondaryColor = [MEMORY[0x1E69DC888] dynamicCarSecondaryColor];
    [(TPBadgeView *)self setBackgroundColor:dynamicCarSecondaryColor];

    clearColor3 = [MEMORY[0x1E69DC888] clearColor];
    titleLabel8 = [(TPBadgeView *)self titleLabel];
    [titleLabel8 setBackgroundColor:clearColor3];

    whiteColor = [MEMORY[0x1E69DC888] tableBackgroundColor];
  }

LABEL_24:
  v32 = whiteColor;
  titleLabel9 = [(TPBadgeView *)self titleLabel];
  [titleLabel9 setTextColor:v32];
}

- (void)updateActiveHorizontalConstraints
{
  titleLabel = [(TPBadgeView *)self titleLabel];
  text = [titleLabel text];
  v5 = [text length];

  if (v5 < 2)
  {
    titleLabelLeadingAnchorLayoutConstraint = [(TPBadgeView *)self titleLabelLeadingAnchorLayoutConstraint];
    [titleLabelLeadingAnchorLayoutConstraint setActive:0];

    titleLabelTrailingAnchorLayoutConstraint = [(TPBadgeView *)self titleLabelTrailingAnchorLayoutConstraint];
    [titleLabelTrailingAnchorLayoutConstraint setActive:0];

    [(TPBadgeView *)self widthAnchorLayoutConstraint];
  }

  else
  {
    widthAnchorLayoutConstraint = [(TPBadgeView *)self widthAnchorLayoutConstraint];
    [widthAnchorLayoutConstraint setActive:0];

    titleLabelLeadingAnchorLayoutConstraint2 = [(TPBadgeView *)self titleLabelLeadingAnchorLayoutConstraint];
    [titleLabelLeadingAnchorLayoutConstraint2 setActive:1];

    [(TPBadgeView *)self titleLabelTrailingAnchorLayoutConstraint];
  }
  v10 = ;
  [v10 setActive:1];
}

- (void)setSizeCategory:(unint64_t)category
{
  if (self->_sizeCategory != category)
  {
    self->_sizeCategory = category;
    [(TPBadgeView *)self updateSizeCategory];
  }
}

- (void)setTheme:(unint64_t)theme
{
  if (self->_theme != theme)
  {
    self->_theme = theme;
    [(TPBadgeView *)self updateTheme];
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  titleLabel = [(TPBadgeView *)self titleLabel];
  text = [titleLabel text];

  if (([text isEqualToString:titleCopy] & 1) == 0)
  {
    [(UILabel *)self->_titleLabel setText:titleCopy];
    [(UILabel *)self->_titleLabel sizeToFit];
    v6 = [text length];
    if (v6 != [titleCopy length])
    {
      [(TPBadgeView *)self updateActiveHorizontalConstraints];
    }
  }
}

- (NSString)title
{
  titleLabel = [(TPBadgeView *)self titleLabel];
  text = [titleLabel text];

  return text;
}

- (double)suggestedHeight
{
  [(TPBadgeView *)self heightAnchorLayoutConstraintConstantFontMultiplier];
  v4 = v3;
  titleLabel = [(TPBadgeView *)self titleLabel];
  font = [titleLabel font];
  [font pointSize];
  v8 = v4 * v7;

  return v8;
}

- (double)scaledLayoutValueForBaseValue:(double)value shouldLowerBound:(BOOL)bound
{
  boundCopy = bound;
  v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD08]];
  [v7 _scaledValueForValue:value];
  v9 = v8;

  if ([(TPBadgeView *)self sizeCategory]== 3)
  {
    titleLabel = [(TPBadgeView *)self titleLabel];
    font = [titleLabel font];
    [font _scaledValueForValue:value];
    v9 = v12;
  }

  result = fmax(v9, value);
  if (!boundCopy)
  {
    return v9;
  }

  return result;
}

- (CGSize)_layoutSizeThatFits:(CGSize)fits fixedAxes:(unint64_t)axes
{
  LODWORD(v5) = 1148846080;
  if (axes)
  {
    *&v4 = 1000.0;
  }

  else
  {
    *&v4 = 50.0;
  }

  if ((axes & 2) == 0)
  {
    *&v5 = 50.0;
  }

  [(TPBadgeView *)self systemLayoutSizeFittingSize:fits.width withHorizontalFittingPriority:fits.height verticalFittingPriority:v4, v5];
  result.height = v7;
  result.width = v6;
  return result;
}

@end