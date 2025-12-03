@interface PRAddWidgetDetailSheetWidgetDescriptionView
- (PRAddWidgetDetailSheetWidgetDescriptionView)initWithTitle:(id)title subtitle:(id)subtitle;
- (id)_descriptionLabelFont;
- (id)_titleLabelFont;
- (void)_contentSizeCategoryDidChange:(id)change;
- (void)_createConstraints;
- (void)dealloc;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PRAddWidgetDetailSheetWidgetDescriptionView

- (PRAddWidgetDetailSheetWidgetDescriptionView)initWithTitle:(id)title subtitle:(id)subtitle
{
  titleCopy = title;
  subtitleCopy = subtitle;
  v24.receiver = self;
  v24.super_class = PRAddWidgetDetailSheetWidgetDescriptionView;
  v8 = [(PRAddWidgetDetailSheetWidgetDescriptionView *)&v24 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v8->_titleLabel;
    v8->_titleLabel = v9;

    [(UILabel *)v8->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = v8->_titleLabel;
    _titleLabelFont = [(PRAddWidgetDetailSheetWidgetDescriptionView *)v8 _titleLabelFont];
    [(UILabel *)v11 setFont:_titleLabelFont];

    v13 = v8->_titleLabel;
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v13 setTextColor:labelColor];

    [(UILabel *)v8->_titleLabel setTextAlignment:1];
    [(UILabel *)v8->_titleLabel setText:titleCopy];
    [(UILabel *)v8->_titleLabel setNumberOfLines:0];
    [(PRAddWidgetDetailSheetWidgetDescriptionView *)v8 addSubview:v8->_titleLabel];
    v15 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    descriptionLabel = v8->_descriptionLabel;
    v8->_descriptionLabel = v15;

    [(UILabel *)v8->_descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v8->_descriptionLabel setNumberOfLines:0];
    v17 = v8->_descriptionLabel;
    _descriptionLabelFont = [(PRAddWidgetDetailSheetWidgetDescriptionView *)v8 _descriptionLabelFont];
    [(UILabel *)v17 setFont:_descriptionLabelFont];

    v19 = v8->_descriptionLabel;
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v19 setTextColor:secondaryLabelColor];

    [(UILabel *)v8->_descriptionLabel setTextAlignment:1];
    [(UILabel *)v8->_descriptionLabel setText:subtitleCopy];
    LODWORD(v21) = 1132068864;
    [(UILabel *)v8->_descriptionLabel setContentHuggingPriority:1 forAxis:v21];
    [(PRAddWidgetDetailSheetWidgetDescriptionView *)v8 addSubview:v8->_descriptionLabel];
    [(PRAddWidgetDetailSheetWidgetDescriptionView *)v8 _createConstraints];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v8;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  v4.receiver = self;
  v4.super_class = PRAddWidgetDetailSheetWidgetDescriptionView;
  [(PRAddWidgetDetailSheetWidgetDescriptionView *)&v4 dealloc];
}

- (void)_createConstraints
{
  v27[7] = *MEMORY[0x1E69E9840];
  LODWORD(v2) = 1148846080;
  [(UILabel *)self->_titleLabel setContentHuggingPriority:1 forAxis:v2];
  v18 = MEMORY[0x1E696ACD8];
  topAnchor = [(UILabel *)self->_titleLabel topAnchor];
  topAnchor2 = [(PRAddWidgetDetailSheetWidgetDescriptionView *)self topAnchor];
  v24 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v27[0] = v24;
  leadingAnchor = [(UILabel *)self->_titleLabel leadingAnchor];
  leadingAnchor2 = [(PRAddWidgetDetailSheetWidgetDescriptionView *)self leadingAnchor];
  v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v27[1] = v21;
  trailingAnchor = [(UILabel *)self->_titleLabel trailingAnchor];
  trailingAnchor2 = [(PRAddWidgetDetailSheetWidgetDescriptionView *)self trailingAnchor];
  v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  v27[2] = v17;
  topAnchor3 = [(UILabel *)self->_descriptionLabel topAnchor];
  bottomAnchor = [(UILabel *)self->_titleLabel bottomAnchor];
  v14 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:4.0];
  v27[3] = v14;
  leadingAnchor3 = [(UILabel *)self->_descriptionLabel leadingAnchor];
  leadingAnchor4 = [(PRAddWidgetDetailSheetWidgetDescriptionView *)self leadingAnchor];
  v6 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
  v27[4] = v6;
  trailingAnchor3 = [(UILabel *)self->_descriptionLabel trailingAnchor];
  trailingAnchor4 = [(PRAddWidgetDetailSheetWidgetDescriptionView *)self trailingAnchor];
  v9 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-16.0];
  v27[5] = v9;
  bottomAnchor2 = [(UILabel *)self->_descriptionLabel bottomAnchor];
  bottomAnchor3 = [(PRAddWidgetDetailSheetWidgetDescriptionView *)self bottomAnchor];
  v12 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v27[6] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:7];
  [v18 activateConstraints:v13];
}

- (id)_titleLabelFont
{
  preferredFontProvider = [MEMORY[0x1E698E7E8] preferredFontProvider];
  v4 = *MEMORY[0x1E69DDDB8];
  traitCollection = [(PRAddWidgetDetailSheetWidgetDescriptionView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v7 = [preferredFontProvider preferredFontForTextStyle:v4 hiFontStyle:4 contentSizeCategory:preferredContentSizeCategory];

  return v7;
}

- (id)_descriptionLabelFont
{
  preferredFontProvider = [MEMORY[0x1E698E7E8] preferredFontProvider];
  v4 = *MEMORY[0x1E69DDCF8];
  traitCollection = [(PRAddWidgetDetailSheetWidgetDescriptionView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v7 = [preferredFontProvider preferredFontForTextStyle:v4 hiFontStyle:1 contentSizeCategory:preferredContentSizeCategory];

  return v7;
}

- (void)_contentSizeCategoryDidChange:(id)change
{
  titleLabel = [(PRAddWidgetDetailSheetWidgetDescriptionView *)self titleLabel];
  _titleLabelFont = [(PRAddWidgetDetailSheetWidgetDescriptionView *)self _titleLabelFont];
  [titleLabel setFont:_titleLabelFont];

  descriptionLabel = [(PRAddWidgetDetailSheetWidgetDescriptionView *)self descriptionLabel];
  _descriptionLabelFont = [(PRAddWidgetDetailSheetWidgetDescriptionView *)self _descriptionLabelFont];
  [descriptionLabel setFont:_descriptionLabelFont];

  [(PRAddWidgetDetailSheetWidgetDescriptionView *)self setNeedsLayout];
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = PRAddWidgetDetailSheetWidgetDescriptionView;
  changeCopy = change;
  [(PRAddWidgetDetailSheetWidgetDescriptionView *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(PRAddWidgetDetailSheetWidgetDescriptionView *)self traitCollection:v8.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  LOBYTE(changeCopy) = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];
  if ((changeCopy & 1) == 0)
  {
    [(PRAddWidgetDetailSheetWidgetDescriptionView *)self _contentSizeCategoryDidChange:0];
  }
}

@end