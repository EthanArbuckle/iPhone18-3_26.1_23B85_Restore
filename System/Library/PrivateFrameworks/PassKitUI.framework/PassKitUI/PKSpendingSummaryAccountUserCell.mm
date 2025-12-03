@interface PKSpendingSummaryAccountUserCell
- (CGSize)_layoutWithBounds:(CGRect)bounds;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKSpendingSummaryAccountUserCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setAmount:(id)amount;
- (void)setAvatar:(id)avatar;
- (void)setName:(id)name;
@end

@implementation PKSpendingSummaryAccountUserCell

- (PKSpendingSummaryAccountUserCell)initWithFrame:(CGRect)frame
{
  v40.receiver = self;
  v40.super_class = PKSpendingSummaryAccountUserCell;
  v3 = [(PKDashboardCollectionViewCell *)&v40 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v3->_identifier;
    v3->_identifier = uUIDString;

    v7 = objc_alloc(MEMORY[0x1E69DCC10]);
    v8 = *MEMORY[0x1E695F058];
    v9 = *(MEMORY[0x1E695F058] + 8);
    v10 = *(MEMORY[0x1E695F058] + 16);
    v11 = *(MEMORY[0x1E695F058] + 24);
    v12 = [v7 initWithFrame:{*MEMORY[0x1E695F058], v9, v10, v11}];
    amountLabel = v3->_amountLabel;
    v3->_amountLabel = v12;

    [(UILabel *)v3->_amountLabel setNumberOfLines:1];
    v14 = v3->_amountLabel;
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v14 setTextColor:labelColor];

    v16 = PKUIGetMinScreenWidthType();
    v17 = v3->_amountLabel;
    v18 = v16 == 0;
    if (v16)
    {
      v19 = *MEMORY[0x1E69DDCF8];
    }

    else
    {
      v19 = *MEMORY[0x1E69DDD80];
    }

    v20 = *MEMORY[0x1E69DDC90];
    if (v18)
    {
      v21 = *MEMORY[0x1E69DDD28];
    }

    else
    {
      v21 = *MEMORY[0x1E69DDD80];
    }

    v22 = PKFontForDefaultDesign(v19, *MEMORY[0x1E69DDC90], 0x8000, 0);
    [(UILabel *)v17 setFont:v22];

    contentView = [(PKSpendingSummaryAccountUserCell *)v3 contentView];
    [contentView addSubview:v3->_amountLabel];

    v24 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v8, v9, v10, v11}];
    nameLabel = v3->_nameLabel;
    v3->_nameLabel = v24;

    [(UILabel *)v3->_nameLabel setNumberOfLines:1];
    v26 = v3->_nameLabel;
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v26 setTextColor:secondaryLabelColor];

    v28 = v3->_nameLabel;
    v29 = PKFontForDefaultDesign(v21, v20, 0x8000, 0);
    [(UILabel *)v28 setFont:v29];

    contentView2 = [(PKSpendingSummaryAccountUserCell *)v3 contentView];
    [contentView2 addSubview:v3->_nameLabel];

    v31 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v8, v9, v10, v11}];
    avatarView = v3->_avatarView;
    v3->_avatarView = v31;

    layer = [(UIImageView *)v3->_avatarView layer];
    systemGray6Color = [MEMORY[0x1E69DC888] systemGray6Color];
    [layer setBorderColor:{objc_msgSend(systemGray6Color, "CGColor")}];

    layer2 = [(UIImageView *)v3->_avatarView layer];
    [layer2 setBorderWidth:1.0];

    layer3 = [(UIImageView *)v3->_avatarView layer];
    [layer3 setMasksToBounds:1];

    layer4 = [(UIImageView *)v3->_avatarView layer];
    [layer4 setCornerRadius:12.0];

    contentView3 = [(PKSpendingSummaryAccountUserCell *)v3 contentView];
    [contentView3 addSubview:v3->_avatarView];

    [(PKDashboardCollectionViewCell *)v3 setMaskType:3];
    [(UILabel *)v3->_nameLabel setText:@" "];
    [(UILabel *)v3->_amountLabel setText:@" "];
  }

  return v3;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKSpendingSummaryAccountUserCell;
  [(PKDashboardCollectionViewCell *)&v3 layoutSubviews];
  [(PKSpendingSummaryAccountUserCell *)self bounds];
  [(PKSpendingSummaryAccountUserCell *)self _layoutWithBounds:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  self->_isTemplateLayout = 1;
  [(PKSpendingSummaryAccountUserCell *)self _layoutWithBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, fits.height];
  self->_isTemplateLayout = 0;
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)bounds
{
  width = bounds.size.width;
  v5 = bounds.origin.x + 12.0;
  v6 = bounds.origin.y + 11.0;
  v7 = bounds.size.height + -18.0;
  memset(&slice, 0, sizeof(slice));
  [(PKSpendingSummaryAccountUserCell *)self _shouldReverseLayoutDirection];
  v17.origin.x = v5;
  v17.origin.y = v6;
  v17.size.width = width + -24.0;
  v17.size.height = v7;
  v20.origin.x = v5;
  v20.origin.y = v6;
  v20.size.width = width + -24.0;
  v20.size.height = v7;
  CGRectDivide(v20, &slice, &v17, 24.0, CGRectMinYEdge);
  if (!self->_isTemplateLayout)
  {
    avatarView = self->_avatarView;
    PKContentAlignmentMake();
    PKSizeAlignedInRect();
    [(UIImageView *)avatarView setFrame:?];
  }

  CGRectDivide(v17, &slice, &v17, 2.0, CGRectMinYEdge);
  [(UILabel *)self->_nameLabel sizeThatFits:v17.size.width, v17.size.height];
  v10 = v9;
  CGRectDivide(v17, &slice, &v17, v9, CGRectMinYEdge);
  if (!self->_isTemplateLayout)
  {
    nameLabel = self->_nameLabel;
    PKContentAlignmentMake();
    PKSizeAlignedInRect();
    [(UILabel *)nameLabel setFrame:?];
  }

  CGRectDivide(v17, &slice, &v17, 0.0, CGRectMinYEdge);
  [(UILabel *)self->_amountLabel sizeThatFits:v17.size.width, v17.size.height];
  v13 = v12;
  CGRectDivide(v17, &slice, &v17, v12, CGRectMinYEdge);
  if (!self->_isTemplateLayout)
  {
    amountLabel = self->_amountLabel;
    PKContentAlignmentMake();
    PKSizeAlignedInRect();
    [(UILabel *)amountLabel setFrame:?];
  }

  CGRectDivide(v17, &slice, &v17, 0.0, CGRectMinYEdge);
  v15 = v10 + 0.0 + 37.0 + v13 + 7.0;
  v16 = width;
  result.height = v15;
  result.width = v16;
  return result;
}

- (void)setAmount:(id)amount
{
  amountCopy = amount;
  text = [(UILabel *)self->_amountLabel text];
  v8 = amountCopy;
  v6 = text;
  if (v6 == v8)
  {

    goto LABEL_9;
  }

  if (!v8 || !v6)
  {

    goto LABEL_8;
  }

  v7 = [v8 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    [(UILabel *)self->_amountLabel setText:v8];
    [(PKSpendingSummaryAccountUserCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setName:(id)name
{
  nameCopy = name;
  text = [(UILabel *)self->_nameLabel text];
  v8 = nameCopy;
  v6 = text;
  if (v6 == v8)
  {

    goto LABEL_9;
  }

  if (!v8 || !v6)
  {

    goto LABEL_8;
  }

  v7 = [v8 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    [(UILabel *)self->_nameLabel setText:v8];
    [(PKSpendingSummaryAccountUserCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setAvatar:(id)avatar
{
  avatarCopy = avatar;
  image = [(UIImageView *)self->_avatarView image];
  v5 = PKEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(UIImageView *)self->_avatarView setImage:avatarCopy];
    [(PKSpendingSummaryAccountUserCell *)self setNeedsLayout];
  }
}

@end