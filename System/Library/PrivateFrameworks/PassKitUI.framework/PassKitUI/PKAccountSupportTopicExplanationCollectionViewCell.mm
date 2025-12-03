@interface PKAccountSupportTopicExplanationCollectionViewCell
- (CGSize)_layoutWithBounds:(CGRect)bounds;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setExplanationContent:(id)content;
@end

@implementation PKAccountSupportTopicExplanationCollectionViewCell

- (void)setExplanationContent:(id)content
{
  contentCopy = content;
  contentView = [(PKAccountSupportTopicExplanationCollectionViewCell *)self contentView];
  if (!self->_primaryLabel)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    primaryLabel = self->_primaryLabel;
    self->_primaryLabel = v5;

    [(UILabel *)self->_primaryLabel setNumberOfLines:0];
    v7 = self->_primaryLabel;
    v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
    [(UILabel *)v7 setFont:v8];

    v9 = self->_primaryLabel;
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v9 setTextColor:labelColor];

    [contentView addSubview:self->_primaryLabel];
  }

  if (!self->_secondaryLabel)
  {
    v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    secondaryLabel = self->_secondaryLabel;
    self->_secondaryLabel = v11;

    [(UILabel *)self->_secondaryLabel setNumberOfLines:0];
    v13 = self->_secondaryLabel;
    v14 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD00]];
    [(UILabel *)v13 setFont:v14];

    v15 = self->_secondaryLabel;
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v15 setTextColor:secondaryLabelColor];

    [contentView addSubview:self->_secondaryLabel];
  }

  if (!self->_iconImageView)
  {
    v17 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    iconImageView = self->_iconImageView;
    self->_iconImageView = v17;

    [(UIImageView *)self->_iconImageView setContentMode:1];
    v19 = self->_iconImageView;
    labelColor2 = [MEMORY[0x1E69DC888] labelColor];
    [(UIImageView *)v19 setTintColor:labelColor2];

    [contentView addSubview:self->_iconImageView];
  }

  secondarySystemGroupedBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  [contentView setBackgroundColor:secondarySystemGroupedBackgroundColor];

  v22 = self->_primaryLabel;
  title = [contentCopy title];
  [(UILabel *)v22 setText:title];

  v24 = self->_secondaryLabel;
  subtitle = [contentCopy subtitle];
  [(UILabel *)v24 setText:subtitle];

  v26 = self->_iconImageView;
  v27 = MEMORY[0x1E69DCAB8];
  systemImageName = [contentCopy systemImageName];

  v29 = [v27 systemImageNamed:systemImageName];
  [(UIImageView *)v26 setImage:v29];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PKAccountSupportTopicExplanationCollectionViewCell *)self _layoutWithBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKAccountSupportTopicExplanationCollectionViewCell;
  [(PKAccountSupportTopicExplanationCollectionViewCell *)&v4 layoutSubviews];
  contentView = [(PKAccountSupportTopicExplanationCollectionViewCell *)self contentView];
  [contentView bounds];
  [(PKAccountSupportTopicExplanationCollectionViewCell *)self _layoutWithBounds:?];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PKAccountSupportTopicExplanationCollectionViewCell;
  [(PKAccountSupportTopicExplanationCollectionViewCell *)&v3 prepareForReuse];
  [(UILabel *)self->_primaryLabel setText:0];
  [(UILabel *)self->_secondaryLabel setText:0];
  [(UIImageView *)self->_iconImageView setImage:0];
}

- (CGSize)_layoutWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if ([(PKAccountSupportTopicExplanationCollectionViewCell *)self _shouldReverseLayoutDirection])
  {
    v8 = CGRectMaxXEdge;
  }

  else
  {
    v8 = CGRectMinXEdge;
  }

  memset(&slice, 0, sizeof(slice));
  v9 = x + 16.0;
  v10 = y + 20.0;
  v11 = height + -40.0;
  remainder.origin.x = v9;
  remainder.origin.y = v10;
  remainder.size.width = width + -32.0;
  remainder.size.height = height + -40.0;
  image = [(UIImageView *)self->_iconImageView image];

  if (image)
  {
    PKContentAlignmentMake();
    v13 = [(UILabel *)self->_primaryLabel font:0];
    [v13 lineHeight];
    v15 = v14;

    v37.origin.x = v9;
    v37.origin.y = v10;
    v37.size.width = width + -32.0;
    v37.size.height = v11;
    CGRectDivide(v37, &v33, &remainder, v15, v8);
    CGRectDivide(remainder, &slice, &remainder, 4.0, v8);
    iconImageView = self->_iconImageView;
    PKSizeAlignedInRect();
    [(UIImageView *)iconImageView setFrame:?];
  }

  else
  {
    v15 = 0.0;
  }

  text = [(UILabel *)self->_primaryLabel text];
  v18 = [text length];

  if (v18)
  {
    memset(&v33, 0, sizeof(v33));
    [(UILabel *)self->_primaryLabel sizeThatFits:remainder.size.width, remainder.size.height, 0, 0, 0, 0];
    v20 = v19;
    CGRectDivide(remainder, &v33, &remainder, v19, CGRectMinYEdge);
    primaryLabel = self->_primaryLabel;
    PKContentAlignmentMake();
    PKSizeAlignedInRect();
    [(UILabel *)primaryLabel setFrame:?];
    v15 = fmax(v20, v15);
  }

  text2 = [(UILabel *)self->_secondaryLabel text];
  v23 = [text2 length];

  if (v23)
  {
    if (v15 > 0.0)
    {
      remainder.origin.x = v9;
      remainder.origin.y = v10;
      remainder.size.width = width + -32.0;
      remainder.size.height = v11;
      v38.origin.x = v9;
      v38.origin.y = v10;
      v38.size.width = width + -32.0;
      v38.size.height = v11;
      CGRectDivide(v38, &slice, &remainder, v15, CGRectMinYEdge);
      CGRectDivide(remainder, &slice, &remainder, 14.0, CGRectMinYEdge);
    }

    memset(&v33, 0, sizeof(v33));
    [(UILabel *)self->_secondaryLabel sizeThatFits:remainder.size.width, remainder.size.height, 0, 0, 0, 0];
    CGRectDivide(remainder, &v33, &remainder, v24, CGRectMinYEdge);
    secondaryLabel = self->_secondaryLabel;
    PKContentAlignmentMake();
    PKSizeAlignedInRect();
    [(UILabel *)secondaryLabel setFrame:?];
  }

  v26 = 20.0;
  if (v15 > 0.0)
  {
    v27 = v15 + 20.0;
    text3 = [(UILabel *)self->_secondaryLabel text];
    v29 = [text3 length];

    if (v29)
    {
      v26 = v27 + 14.0;
    }

    else
    {
      v26 = v27;
    }
  }

  [(UILabel *)self->_secondaryLabel frame];
  v31 = v26 + v30 + 20.0;
  v32 = width;
  result.height = v31;
  result.width = v32;
  return result;
}

@end