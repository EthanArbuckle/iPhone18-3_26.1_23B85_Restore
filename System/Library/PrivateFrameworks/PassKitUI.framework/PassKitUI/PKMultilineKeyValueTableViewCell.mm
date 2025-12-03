@interface PKMultilineKeyValueTableViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKMultilineKeyValueTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
@end

@implementation PKMultilineKeyValueTableViewCell

- (PKMultilineKeyValueTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v19.receiver = self;
  v19.super_class = PKMultilineKeyValueTableViewCell;
  v4 = [(PKMultilineKeyValueTableViewCell *)&v19 initWithStyle:1 reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    _shouldReverseLayoutDirection = [(PKMultilineKeyValueTableViewCell *)v4 _shouldReverseLayoutDirection];
    v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    keyLabel = v5->_keyLabel;
    v5->_keyLabel = v8;

    [(UILabel *)v5->_keyLabel setNumberOfLines:1];
    v10 = v5->_keyLabel;
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v10 setTextColor:labelColor];

    if (_shouldReverseLayoutDirection)
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }

    if (_shouldReverseLayoutDirection)
    {
      v13 = 0;
    }

    else
    {
      v13 = 2;
    }

    [(UILabel *)v5->_keyLabel setTextAlignment:v12];
    [(UILabel *)v5->_keyLabel setFont:v7];
    [(PKMultilineKeyValueTableViewCell *)v5 addSubview:v5->_keyLabel];
    v14 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    valueLabel = v5->_valueLabel;
    v5->_valueLabel = v14;

    [(UILabel *)v5->_valueLabel setNumberOfLines:0];
    v16 = v5->_valueLabel;
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v16 setTextColor:secondaryLabelColor];

    [(UILabel *)v5->_valueLabel setTextAlignment:v13];
    [(UILabel *)v5->_valueLabel setFont:v7];
    [(PKMultilineKeyValueTableViewCell *)v5 addSubview:v5->_valueLabel];
  }

  return v5;
}

- (void)layoutSubviews
{
  v24.receiver = self;
  v24.super_class = PKMultilineKeyValueTableViewCell;
  [(PKMultilineKeyValueTableViewCell *)&v24 layoutSubviews];
  contentView = [(PKMultilineKeyValueTableViewCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(PKMultilineKeyValueTableViewCell *)self layoutMargins];
  v13 = v5 + v12;
  v14 = v7 + 12.0;
  v16 = v9 - (v12 + v15);
  remainder.origin.x = v13;
  remainder.origin.y = v14;
  v17 = v11 + -24.0;
  remainder.size.width = v16;
  remainder.size.height = v17;
  if ([(PKMultilineKeyValueTableViewCell *)self _shouldReverseLayoutDirection])
  {
    v18 = CGRectMaxXEdge;
  }

  else
  {
    v18 = CGRectMinXEdge;
  }

  [(UILabel *)self->_keyLabel systemLayoutSizeFittingSize:v16, 0.0];
  v20 = v19;
  memset(&slice, 0, sizeof(slice));
  v25.origin.x = v13;
  v25.origin.y = v14;
  v25.size.width = v16;
  v25.size.height = v17;
  CGRectDivide(v25, &slice, &remainder, v20, v18);
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  [(UILabel *)self->_keyLabel setFrame:?];
  memset(&v21, 0, sizeof(v21));
  CGRectDivide(remainder, &v21, &remainder, 10.0, v18);
  [(UILabel *)self->_valueLabel setFrame:remainder.origin.x, remainder.origin.y, remainder.size.width, remainder.size.height];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(PKMultilineKeyValueTableViewCell *)self layoutMargins:fits.width];
  v7 = width - v5 - v6;
  [(UILabel *)self->_keyLabel systemLayoutSizeFittingSize:v7, 0.0];
  v9 = v8;
  LODWORD(v11) = 1148846080;
  LODWORD(v12) = 1112014848;
  [(UILabel *)self->_valueLabel systemLayoutSizeFittingSize:v7 + -10.0 - v10 withHorizontalFittingPriority:0.0 verticalFittingPriority:v11, v12];
  if (v9 <= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v9;
  }

  v15 = v14 + 12.0 + 12.0 + 1.0;
  v16 = width;
  result.height = v15;
  result.width = v16;
  return result;
}

@end