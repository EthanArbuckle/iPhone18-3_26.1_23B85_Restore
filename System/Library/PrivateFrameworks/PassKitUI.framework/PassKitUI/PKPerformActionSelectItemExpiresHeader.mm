@interface PKPerformActionSelectItemExpiresHeader
- (PKPerformActionSelectItemExpiresHeader)init;
- (void)layoutSubviews;
- (void)setLeadingString:(id)string;
- (void)setTrailingString:(id)string;
@end

@implementation PKPerformActionSelectItemExpiresHeader

- (PKPerformActionSelectItemExpiresHeader)init
{
  v17.receiver = self;
  v17.super_class = PKPerformActionSelectItemExpiresHeader;
  v2 = [(PKPerformActionSelectItemExpiresHeader *)&v17 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    leadingLabel = v2->_leadingLabel;
    v2->_leadingLabel = v3;

    v5 = v2->_leadingLabel;
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v5 setTextColor:secondaryLabelColor];

    v7 = v2->_leadingLabel;
    v8 = *MEMORY[0x1E69DDD28];
    v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    [(UILabel *)v7 setFont:v9];

    [(PKPerformActionSelectItemExpiresHeader *)v2 addSubview:v2->_leadingLabel];
    v10 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    trailingLabel = v2->_trailingLabel;
    v2->_trailingLabel = v10;

    v12 = v2->_trailingLabel;
    secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v12 setTextColor:secondaryLabelColor2];

    v14 = v2->_trailingLabel;
    v15 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v8];
    [(UILabel *)v14 setFont:v15];

    [(PKPerformActionSelectItemExpiresHeader *)v2 addSubview:v2->_trailingLabel];
  }

  return v2;
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = PKPerformActionSelectItemExpiresHeader;
  [(PKPerformActionSelectItemExpiresHeader *)&v9 layoutSubviews];
  v3 = PKTableViewCellTextInset();
  [(UILabel *)self->_leadingLabel sizeToFit];
  [(UILabel *)self->_leadingLabel frame];
  [(UILabel *)self->_leadingLabel setFrame:v3, 22.0];
  [(UILabel *)self->_trailingLabel sizeToFit];
  [(UILabel *)self->_trailingLabel frame];
  v5 = v4;
  [(PKPerformActionSelectItemExpiresHeader *)self bounds];
  v7 = v6 - v3;
  [(UILabel *)self->_trailingLabel frame];
  [(UILabel *)self->_trailingLabel setFrame:v7 - v8, 22.0, v5, 22.0];
}

- (void)setLeadingString:(id)string
{
  pk_uppercaseStringForPreferredLocale = [string pk_uppercaseStringForPreferredLocale];
  text = [(UILabel *)self->_leadingLabel text];
  v6 = pk_uppercaseStringForPreferredLocale;
  v7 = text;
  v8 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    if (v6 && v7)
    {
      v9 = [v6 isEqualToString:v7];

      if (v9)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    v10 = MEMORY[0x1E69DD250];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __59__PKPerformActionSelectItemExpiresHeader_setLeadingString___block_invoke;
    v11[3] = &unk_1E8010A10;
    v11[4] = self;
    v12 = v6;
    [v10 animateWithDuration:v11 animations:0.0];
  }

LABEL_9:
}

- (void)setTrailingString:(id)string
{
  pk_uppercaseStringForPreferredLocale = [string pk_uppercaseStringForPreferredLocale];
  text = [(UILabel *)self->_trailingLabel text];
  v6 = pk_uppercaseStringForPreferredLocale;
  v7 = text;
  v8 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    if (v6 && v7)
    {
      v9 = [v6 isEqualToString:v7];

      if (v9)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    v10 = MEMORY[0x1E69DD250];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __60__PKPerformActionSelectItemExpiresHeader_setTrailingString___block_invoke;
    v11[3] = &unk_1E8010A10;
    v11[4] = self;
    v12 = v6;
    [v10 animateWithDuration:v11 animations:0.0];
  }

LABEL_9:
}

@end