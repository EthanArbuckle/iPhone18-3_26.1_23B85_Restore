@interface PKSelectActionHeader
- (PKSelectActionHeader)initWithTitle:(id)a3 subtitle:(id)a4;
- (void)layoutSubviews;
@end

@implementation PKSelectActionHeader

- (PKSelectActionHeader)initWithTitle:(id)a3 subtitle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v25.receiver = self;
  v25.super_class = PKSelectActionHeader;
  v8 = [(PKSelectActionHeader *)&v25 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v8->_titleLabel;
    v8->_titleLabel = v9;

    v11 = v8->_titleLabel;
    v12 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v11 setTextColor:v12];

    [(UILabel *)v8->_titleLabel setText:v6];
    v13 = PKUIGetMinScreenWidthType();
    v14 = 28.0;
    if (!v13)
    {
      v14 = 24.0;
    }

    v15 = PKScaledValueForValueWithMaximumContentSizeCategory(*MEMORY[0x1E69DDC28], v14);
    v16 = v8->_titleLabel;
    v17 = PKRoundedSystemFontOfSizeAndWeight(v15, *MEMORY[0x1E69DB958]);
    [(UILabel *)v16 setFont:v17];

    [(UILabel *)v8->_titleLabel sizeToFit];
    [(UILabel *)v8->_titleLabel setNeedsLayout];
    [(PKSelectActionHeader *)v8 addSubview:v8->_titleLabel];
    v18 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    subtitleLabel = v8->_subtitleLabel;
    v8->_subtitleLabel = v18;

    [(UILabel *)v8->_subtitleLabel setText:v7];
    v20 = v8->_subtitleLabel;
    v21 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v20 setTextColor:v21];

    v22 = v8->_subtitleLabel;
    v23 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC38]);
    [(UILabel *)v22 setFont:v23];

    [(UILabel *)v8->_subtitleLabel sizeToFit];
    [(UILabel *)v8->_subtitleLabel setNeedsLayout];
    [(PKSelectActionHeader *)v8 addSubview:v8->_subtitleLabel];
  }

  return v8;
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = PKSelectActionHeader;
  [(PKSelectActionHeader *)&v9 layoutSubviews];
  [(PKSelectActionHeader *)self bounds];
  v4 = v3;
  [(UILabel *)self->_titleLabel frame];
  v6 = v5;
  [(UILabel *)self->_titleLabel setFrame:(v4 - v7) * 0.5, 20.0];
  [(UILabel *)self->_subtitleLabel frame];
  [(UILabel *)self->_subtitleLabel setFrame:(v4 - v8) * 0.5, v6 + 40.0];
}

@end