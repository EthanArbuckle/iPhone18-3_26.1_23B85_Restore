@interface PRAddWidgetDetailSheetWidgetDescriptionView
- (PRAddWidgetDetailSheetWidgetDescriptionView)initWithTitle:(id)a3 subtitle:(id)a4;
- (id)_descriptionLabelFont;
- (id)_titleLabelFont;
- (void)_contentSizeCategoryDidChange:(id)a3;
- (void)_createConstraints;
- (void)dealloc;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PRAddWidgetDetailSheetWidgetDescriptionView

- (PRAddWidgetDetailSheetWidgetDescriptionView)initWithTitle:(id)a3 subtitle:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v12 = [(PRAddWidgetDetailSheetWidgetDescriptionView *)v8 _titleLabelFont];
    [(UILabel *)v11 setFont:v12];

    v13 = v8->_titleLabel;
    v14 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v13 setTextColor:v14];

    [(UILabel *)v8->_titleLabel setTextAlignment:1];
    [(UILabel *)v8->_titleLabel setText:v6];
    [(UILabel *)v8->_titleLabel setNumberOfLines:0];
    [(PRAddWidgetDetailSheetWidgetDescriptionView *)v8 addSubview:v8->_titleLabel];
    v15 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    descriptionLabel = v8->_descriptionLabel;
    v8->_descriptionLabel = v15;

    [(UILabel *)v8->_descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v8->_descriptionLabel setNumberOfLines:0];
    v17 = v8->_descriptionLabel;
    v18 = [(PRAddWidgetDetailSheetWidgetDescriptionView *)v8 _descriptionLabelFont];
    [(UILabel *)v17 setFont:v18];

    v19 = v8->_descriptionLabel;
    v20 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v19 setTextColor:v20];

    [(UILabel *)v8->_descriptionLabel setTextAlignment:1];
    [(UILabel *)v8->_descriptionLabel setText:v7];
    LODWORD(v21) = 1132068864;
    [(UILabel *)v8->_descriptionLabel setContentHuggingPriority:1 forAxis:v21];
    [(PRAddWidgetDetailSheetWidgetDescriptionView *)v8 addSubview:v8->_descriptionLabel];
    [(PRAddWidgetDetailSheetWidgetDescriptionView *)v8 _createConstraints];
    v22 = [MEMORY[0x1E696AD88] defaultCenter];
    [v22 addObserver:v8 selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v8;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

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
  v26 = [(UILabel *)self->_titleLabel topAnchor];
  v25 = [(PRAddWidgetDetailSheetWidgetDescriptionView *)self topAnchor];
  v24 = [v26 constraintEqualToAnchor:v25];
  v27[0] = v24;
  v23 = [(UILabel *)self->_titleLabel leadingAnchor];
  v22 = [(PRAddWidgetDetailSheetWidgetDescriptionView *)self leadingAnchor];
  v21 = [v23 constraintEqualToAnchor:v22 constant:16.0];
  v27[1] = v21;
  v20 = [(UILabel *)self->_titleLabel trailingAnchor];
  v19 = [(PRAddWidgetDetailSheetWidgetDescriptionView *)self trailingAnchor];
  v17 = [v20 constraintEqualToAnchor:v19 constant:-16.0];
  v27[2] = v17;
  v16 = [(UILabel *)self->_descriptionLabel topAnchor];
  v15 = [(UILabel *)self->_titleLabel bottomAnchor];
  v14 = [v16 constraintEqualToAnchor:v15 constant:4.0];
  v27[3] = v14;
  v4 = [(UILabel *)self->_descriptionLabel leadingAnchor];
  v5 = [(PRAddWidgetDetailSheetWidgetDescriptionView *)self leadingAnchor];
  v6 = [v4 constraintEqualToAnchor:v5 constant:16.0];
  v27[4] = v6;
  v7 = [(UILabel *)self->_descriptionLabel trailingAnchor];
  v8 = [(PRAddWidgetDetailSheetWidgetDescriptionView *)self trailingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8 constant:-16.0];
  v27[5] = v9;
  v10 = [(UILabel *)self->_descriptionLabel bottomAnchor];
  v11 = [(PRAddWidgetDetailSheetWidgetDescriptionView *)self bottomAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v27[6] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:7];
  [v18 activateConstraints:v13];
}

- (id)_titleLabelFont
{
  v3 = [MEMORY[0x1E698E7E8] preferredFontProvider];
  v4 = *MEMORY[0x1E69DDDB8];
  v5 = [(PRAddWidgetDetailSheetWidgetDescriptionView *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v3 preferredFontForTextStyle:v4 hiFontStyle:4 contentSizeCategory:v6];

  return v7;
}

- (id)_descriptionLabelFont
{
  v3 = [MEMORY[0x1E698E7E8] preferredFontProvider];
  v4 = *MEMORY[0x1E69DDCF8];
  v5 = [(PRAddWidgetDetailSheetWidgetDescriptionView *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v3 preferredFontForTextStyle:v4 hiFontStyle:1 contentSizeCategory:v6];

  return v7;
}

- (void)_contentSizeCategoryDidChange:(id)a3
{
  v4 = [(PRAddWidgetDetailSheetWidgetDescriptionView *)self titleLabel];
  v5 = [(PRAddWidgetDetailSheetWidgetDescriptionView *)self _titleLabelFont];
  [v4 setFont:v5];

  v6 = [(PRAddWidgetDetailSheetWidgetDescriptionView *)self descriptionLabel];
  v7 = [(PRAddWidgetDetailSheetWidgetDescriptionView *)self _descriptionLabelFont];
  [v6 setFont:v7];

  [(PRAddWidgetDetailSheetWidgetDescriptionView *)self setNeedsLayout];
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = PRAddWidgetDetailSheetWidgetDescriptionView;
  v4 = a3;
  [(PRAddWidgetDetailSheetWidgetDescriptionView *)&v8 traitCollectionDidChange:v4];
  v5 = [(PRAddWidgetDetailSheetWidgetDescriptionView *)self traitCollection:v8.receiver];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  LOBYTE(v4) = [v6 isEqualToString:v7];
  if ((v4 & 1) == 0)
  {
    [(PRAddWidgetDetailSheetWidgetDescriptionView *)self _contentSizeCategoryDidChange:0];
  }
}

@end