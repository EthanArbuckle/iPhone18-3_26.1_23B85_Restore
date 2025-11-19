@interface STSCategorySectionHeader
- (STSCategorySectionHeader)init;
- (void)layoutSubviews;
- (void)setTitle:(id)a3;
@end

@implementation STSCategorySectionHeader

- (STSCategorySectionHeader)init
{
  v18.receiver = self;
  v18.super_class = STSCategorySectionHeader;
  v2 = [(STSCategorySectionHeader *)&v18 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D756B8]);
    v4 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A08]];
    v5 = [v4 fontDescriptor];
    v6 = [v5 fontDescriptorWithSymbolicTraits:2];

    v7 = [MEMORY[0x277D74300] fontWithDescriptor:v6 size:0.0];
    [(UILabel *)v3 setFont:v7];

    titleLabel = v2->_titleLabel;
    v2->_titleLabel = v3;
    v9 = v3;

    v10 = [MEMORY[0x277D75220] buttonWithType:1];
    v11 = STSLocalizedString(@"CLEAR");
    [(UIButton *)v10 setTitle:v11 forState:0];
    v12 = [(UIButton *)v10 titleLabel];
    v13 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A20]];
    [v12 setFont:v13];

    v14 = [MEMORY[0x277D75348] systemPinkColor];
    [(UIButton *)v10 setTintColor:v14];

    [(UIButton *)v10 setHidden:0];
    clearButton = v2->_clearButton;
    v2->_clearButton = v10;
    v16 = v10;

    [(STSCategorySectionHeader *)v2 addSubview:v2->_titleLabel];
    [(STSCategorySectionHeader *)v2 addSubview:v2->_clearButton];
  }

  return v2;
}

- (void)setTitle:(id)a3
{
  objc_storeStrong(&self->_title, a3);
  v5 = a3;
  [(UILabel *)self->_titleLabel setText:self->_title];
}

- (void)layoutSubviews
{
  v31.receiver = self;
  v31.super_class = STSCategorySectionHeader;
  [(STSCategorySectionHeader *)&v31 layoutSubviews];
  [(UILabel *)self->_titleLabel sizeToFit];
  v3 = [(STSCategorySectionHeader *)self traitCollection];
  v4 = [v3 horizontalSizeClass];

  v5 = 20.0;
  if (v4 == 2)
  {
    v6 = [(STSCategorySectionHeader *)self readableContentGuide];
    [v6 layoutFrame];
    v5 = v7;
  }

  titleLabel = self->_titleLabel;
  [(STSCategorySectionHeader *)self bounds];
  v10 = v9;
  [(UILabel *)self->_titleLabel bounds];
  v12 = v10 - v11 + -15.0;
  [(UILabel *)self->_titleLabel bounds];
  v14 = v13;
  [(UILabel *)self->_titleLabel bounds];
  [(UILabel *)titleLabel setFrame:v5, v12, v14];
  [(UIButton *)self->_clearButton sizeToFit];
  v15 = [(STSCategorySectionHeader *)self readableContentGuide];
  [v15 layoutFrame];
  v17 = v16;
  v19 = v18;

  if (v4 == 2)
  {
    v20 = v17 + v19;
  }

  else
  {
    [(STSCategorySectionHeader *)self bounds];
    v20 = v21;
  }

  [(UIButton *)self->_clearButton bounds];
  v23 = v20 - v22 + -20.0;
  clearButton = self->_clearButton;
  [(STSCategorySectionHeader *)self bounds];
  v26 = v25;
  [(UIButton *)self->_clearButton bounds];
  v28 = v26 - v27 + -15.0 + 5.0;
  [(UIButton *)self->_clearButton bounds];
  v30 = v29;
  [(UIButton *)self->_clearButton bounds];
  [(UIButton *)clearButton setFrame:v23, v28, v30];
}

@end