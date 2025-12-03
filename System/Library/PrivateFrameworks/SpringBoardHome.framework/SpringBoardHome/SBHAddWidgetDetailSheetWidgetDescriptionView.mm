@interface SBHAddWidgetDetailSheetWidgetDescriptionView
- (SBHAddWidgetDetailSheetWidgetDescriptionView)initWithTitle:(id)title subtitle:(id)subtitle;
- (id)_descriptionLabelFont;
- (id)_titleLabelFont;
- (void)_contentSizeCategoryDidChange;
- (void)_createConstraints;
- (void)dealloc;
@end

@implementation SBHAddWidgetDetailSheetWidgetDescriptionView

- (SBHAddWidgetDetailSheetWidgetDescriptionView)initWithTitle:(id)title subtitle:(id)subtitle
{
  v27[1] = *MEMORY[0x1E69E9840];
  titleCopy = title;
  subtitleCopy = subtitle;
  v26.receiver = self;
  v26.super_class = SBHAddWidgetDetailSheetWidgetDescriptionView;
  v8 = [(SBHAddWidgetDetailSheetWidgetDescriptionView *)&v26 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v8->_titleLabel;
    v8->_titleLabel = v9;

    [(UILabel *)v8->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = v8->_titleLabel;
    _titleLabelFont = [(SBHAddWidgetDetailSheetWidgetDescriptionView *)v8 _titleLabelFont];
    [(UILabel *)v11 setFont:_titleLabelFont];

    v13 = v8->_titleLabel;
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v13 setTextColor:labelColor];

    [(UILabel *)v8->_titleLabel setTextAlignment:1];
    [(UILabel *)v8->_titleLabel setText:titleCopy];
    [(UILabel *)v8->_titleLabel setNumberOfLines:0];
    [(SBHAddWidgetDetailSheetWidgetDescriptionView *)v8 addSubview:v8->_titleLabel];
    v15 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    descriptionLabel = v8->_descriptionLabel;
    v8->_descriptionLabel = v15;

    [(UILabel *)v8->_descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v8->_descriptionLabel setNumberOfLines:0];
    v17 = v8->_descriptionLabel;
    _descriptionLabelFont = [(SBHAddWidgetDetailSheetWidgetDescriptionView *)v8 _descriptionLabelFont];
    [(UILabel *)v17 setFont:_descriptionLabelFont];

    v19 = v8->_descriptionLabel;
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v19 setTextColor:secondaryLabelColor];

    [(UILabel *)v8->_descriptionLabel setTextAlignment:1];
    [(UILabel *)v8->_descriptionLabel setText:subtitleCopy];
    [(SBHAddWidgetDetailSheetWidgetDescriptionView *)v8 addSubview:v8->_descriptionLabel];
    [(SBHAddWidgetDetailSheetWidgetDescriptionView *)v8 _createConstraints];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel__contentSizeCategoryDidChange name:*MEMORY[0x1E69DDC48] object:0];

    v22 = objc_opt_self();
    v27[0] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
    v24 = [(SBHAddWidgetDetailSheetWidgetDescriptionView *)v8 registerForTraitChanges:v23 withAction:sel__contentSizeCategoryDidChange];
  }

  return v8;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  v4.receiver = self;
  v4.super_class = SBHAddWidgetDetailSheetWidgetDescriptionView;
  [(SBHAddWidgetDetailSheetWidgetDescriptionView *)&v4 dealloc];
}

- (void)_createConstraints
{
  v26[7] = *MEMORY[0x1E69E9840];
  v17 = MEMORY[0x1E696ACD8];
  topAnchor = [(UILabel *)self->_titleLabel topAnchor];
  topAnchor2 = [(SBHAddWidgetDetailSheetWidgetDescriptionView *)self topAnchor];
  v23 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v26[0] = v23;
  leadingAnchor = [(UILabel *)self->_titleLabel leadingAnchor];
  leadingAnchor2 = [(SBHAddWidgetDetailSheetWidgetDescriptionView *)self leadingAnchor];
  v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v26[1] = v20;
  trailingAnchor = [(UILabel *)self->_titleLabel trailingAnchor];
  trailingAnchor2 = [(SBHAddWidgetDetailSheetWidgetDescriptionView *)self trailingAnchor];
  v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  v26[2] = v16;
  topAnchor3 = [(UILabel *)self->_descriptionLabel topAnchor];
  bottomAnchor = [(UILabel *)self->_titleLabel bottomAnchor];
  v13 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:4.0];
  v26[3] = v13;
  leadingAnchor3 = [(UILabel *)self->_descriptionLabel leadingAnchor];
  leadingAnchor4 = [(SBHAddWidgetDetailSheetWidgetDescriptionView *)self leadingAnchor];
  v5 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
  v26[4] = v5;
  trailingAnchor3 = [(UILabel *)self->_descriptionLabel trailingAnchor];
  trailingAnchor4 = [(SBHAddWidgetDetailSheetWidgetDescriptionView *)self trailingAnchor];
  v8 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-16.0];
  v26[5] = v8;
  bottomAnchor2 = [(UILabel *)self->_descriptionLabel bottomAnchor];
  bottomAnchor3 = [(SBHAddWidgetDetailSheetWidgetDescriptionView *)self bottomAnchor];
  v11 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v26[6] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:7];
  [v17 activateConstraints:v12];
}

- (id)_titleLabelFont
{
  preferredFontProvider = [MEMORY[0x1E698E7E8] preferredFontProvider];
  v4 = *MEMORY[0x1E69DDDB8];
  traitCollection = [(SBHAddWidgetDetailSheetWidgetDescriptionView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v7 = [preferredFontProvider preferredFontForTextStyle:v4 hiFontStyle:4 contentSizeCategory:preferredContentSizeCategory];

  return v7;
}

- (id)_descriptionLabelFont
{
  preferredFontProvider = [MEMORY[0x1E698E7E8] preferredFontProvider];
  v4 = *MEMORY[0x1E69DDCF8];
  traitCollection = [(SBHAddWidgetDetailSheetWidgetDescriptionView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v7 = [preferredFontProvider preferredFontForTextStyle:v4 hiFontStyle:1 contentSizeCategory:preferredContentSizeCategory];

  return v7;
}

- (void)_contentSizeCategoryDidChange
{
  titleLabel = [(SBHAddWidgetDetailSheetWidgetDescriptionView *)self titleLabel];
  _titleLabelFont = [(SBHAddWidgetDetailSheetWidgetDescriptionView *)self _titleLabelFont];
  [titleLabel setFont:_titleLabelFont];

  descriptionLabel = [(SBHAddWidgetDetailSheetWidgetDescriptionView *)self descriptionLabel];
  _descriptionLabelFont = [(SBHAddWidgetDetailSheetWidgetDescriptionView *)self _descriptionLabelFont];
  [descriptionLabel setFont:_descriptionLabelFont];

  [(SBHAddWidgetDetailSheetWidgetDescriptionView *)self setNeedsLayout];
}

@end