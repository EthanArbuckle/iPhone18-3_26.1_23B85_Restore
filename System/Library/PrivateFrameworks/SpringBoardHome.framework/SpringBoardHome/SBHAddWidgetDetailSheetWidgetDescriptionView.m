@interface SBHAddWidgetDetailSheetWidgetDescriptionView
- (SBHAddWidgetDetailSheetWidgetDescriptionView)initWithTitle:(id)a3 subtitle:(id)a4;
- (id)_descriptionLabelFont;
- (id)_titleLabelFont;
- (void)_contentSizeCategoryDidChange;
- (void)_createConstraints;
- (void)dealloc;
@end

@implementation SBHAddWidgetDetailSheetWidgetDescriptionView

- (SBHAddWidgetDetailSheetWidgetDescriptionView)initWithTitle:(id)a3 subtitle:(id)a4
{
  v27[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
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
    v12 = [(SBHAddWidgetDetailSheetWidgetDescriptionView *)v8 _titleLabelFont];
    [(UILabel *)v11 setFont:v12];

    v13 = v8->_titleLabel;
    v14 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v13 setTextColor:v14];

    [(UILabel *)v8->_titleLabel setTextAlignment:1];
    [(UILabel *)v8->_titleLabel setText:v6];
    [(UILabel *)v8->_titleLabel setNumberOfLines:0];
    [(SBHAddWidgetDetailSheetWidgetDescriptionView *)v8 addSubview:v8->_titleLabel];
    v15 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    descriptionLabel = v8->_descriptionLabel;
    v8->_descriptionLabel = v15;

    [(UILabel *)v8->_descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v8->_descriptionLabel setNumberOfLines:0];
    v17 = v8->_descriptionLabel;
    v18 = [(SBHAddWidgetDetailSheetWidgetDescriptionView *)v8 _descriptionLabelFont];
    [(UILabel *)v17 setFont:v18];

    v19 = v8->_descriptionLabel;
    v20 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v19 setTextColor:v20];

    [(UILabel *)v8->_descriptionLabel setTextAlignment:1];
    [(UILabel *)v8->_descriptionLabel setText:v7];
    [(SBHAddWidgetDetailSheetWidgetDescriptionView *)v8 addSubview:v8->_descriptionLabel];
    [(SBHAddWidgetDetailSheetWidgetDescriptionView *)v8 _createConstraints];
    v21 = [MEMORY[0x1E696AD88] defaultCenter];
    [v21 addObserver:v8 selector:sel__contentSizeCategoryDidChange name:*MEMORY[0x1E69DDC48] object:0];

    v22 = objc_opt_self();
    v27[0] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
    v24 = [(SBHAddWidgetDetailSheetWidgetDescriptionView *)v8 registerForTraitChanges:v23 withAction:sel__contentSizeCategoryDidChange];
  }

  return v8;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  v4.receiver = self;
  v4.super_class = SBHAddWidgetDetailSheetWidgetDescriptionView;
  [(SBHAddWidgetDetailSheetWidgetDescriptionView *)&v4 dealloc];
}

- (void)_createConstraints
{
  v26[7] = *MEMORY[0x1E69E9840];
  v17 = MEMORY[0x1E696ACD8];
  v25 = [(UILabel *)self->_titleLabel topAnchor];
  v24 = [(SBHAddWidgetDetailSheetWidgetDescriptionView *)self topAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v26[0] = v23;
  v22 = [(UILabel *)self->_titleLabel leadingAnchor];
  v21 = [(SBHAddWidgetDetailSheetWidgetDescriptionView *)self leadingAnchor];
  v20 = [v22 constraintEqualToAnchor:v21 constant:16.0];
  v26[1] = v20;
  v19 = [(UILabel *)self->_titleLabel trailingAnchor];
  v18 = [(SBHAddWidgetDetailSheetWidgetDescriptionView *)self trailingAnchor];
  v16 = [v19 constraintEqualToAnchor:v18 constant:-16.0];
  v26[2] = v16;
  v15 = [(UILabel *)self->_descriptionLabel topAnchor];
  v14 = [(UILabel *)self->_titleLabel bottomAnchor];
  v13 = [v15 constraintEqualToAnchor:v14 constant:4.0];
  v26[3] = v13;
  v3 = [(UILabel *)self->_descriptionLabel leadingAnchor];
  v4 = [(SBHAddWidgetDetailSheetWidgetDescriptionView *)self leadingAnchor];
  v5 = [v3 constraintEqualToAnchor:v4 constant:16.0];
  v26[4] = v5;
  v6 = [(UILabel *)self->_descriptionLabel trailingAnchor];
  v7 = [(SBHAddWidgetDetailSheetWidgetDescriptionView *)self trailingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:-16.0];
  v26[5] = v8;
  v9 = [(UILabel *)self->_descriptionLabel bottomAnchor];
  v10 = [(SBHAddWidgetDetailSheetWidgetDescriptionView *)self bottomAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v26[6] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:7];
  [v17 activateConstraints:v12];
}

- (id)_titleLabelFont
{
  v3 = [MEMORY[0x1E698E7E8] preferredFontProvider];
  v4 = *MEMORY[0x1E69DDDB8];
  v5 = [(SBHAddWidgetDetailSheetWidgetDescriptionView *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v3 preferredFontForTextStyle:v4 hiFontStyle:4 contentSizeCategory:v6];

  return v7;
}

- (id)_descriptionLabelFont
{
  v3 = [MEMORY[0x1E698E7E8] preferredFontProvider];
  v4 = *MEMORY[0x1E69DDCF8];
  v5 = [(SBHAddWidgetDetailSheetWidgetDescriptionView *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v3 preferredFontForTextStyle:v4 hiFontStyle:1 contentSizeCategory:v6];

  return v7;
}

- (void)_contentSizeCategoryDidChange
{
  v3 = [(SBHAddWidgetDetailSheetWidgetDescriptionView *)self titleLabel];
  v4 = [(SBHAddWidgetDetailSheetWidgetDescriptionView *)self _titleLabelFont];
  [v3 setFont:v4];

  v5 = [(SBHAddWidgetDetailSheetWidgetDescriptionView *)self descriptionLabel];
  v6 = [(SBHAddWidgetDetailSheetWidgetDescriptionView *)self _descriptionLabelFont];
  [v5 setFont:v6];

  [(SBHAddWidgetDetailSheetWidgetDescriptionView *)self setNeedsLayout];
}

@end