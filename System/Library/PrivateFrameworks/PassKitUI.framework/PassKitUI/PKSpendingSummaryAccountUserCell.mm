@interface PKSpendingSummaryAccountUserCell
- (CGSize)_layoutWithBounds:(CGRect)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKSpendingSummaryAccountUserCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setAmount:(id)a3;
- (void)setAvatar:(id)a3;
- (void)setName:(id)a3;
@end

@implementation PKSpendingSummaryAccountUserCell

- (PKSpendingSummaryAccountUserCell)initWithFrame:(CGRect)a3
{
  v40.receiver = self;
  v40.super_class = PKSpendingSummaryAccountUserCell;
  v3 = [(PKDashboardCollectionViewCell *)&v40 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AFB0] UUID];
    v5 = [v4 UUIDString];
    identifier = v3->_identifier;
    v3->_identifier = v5;

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
    v15 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v14 setTextColor:v15];

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

    v23 = [(PKSpendingSummaryAccountUserCell *)v3 contentView];
    [v23 addSubview:v3->_amountLabel];

    v24 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v8, v9, v10, v11}];
    nameLabel = v3->_nameLabel;
    v3->_nameLabel = v24;

    [(UILabel *)v3->_nameLabel setNumberOfLines:1];
    v26 = v3->_nameLabel;
    v27 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v26 setTextColor:v27];

    v28 = v3->_nameLabel;
    v29 = PKFontForDefaultDesign(v21, v20, 0x8000, 0);
    [(UILabel *)v28 setFont:v29];

    v30 = [(PKSpendingSummaryAccountUserCell *)v3 contentView];
    [v30 addSubview:v3->_nameLabel];

    v31 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v8, v9, v10, v11}];
    avatarView = v3->_avatarView;
    v3->_avatarView = v31;

    v33 = [(UIImageView *)v3->_avatarView layer];
    v34 = [MEMORY[0x1E69DC888] systemGray6Color];
    [v33 setBorderColor:{objc_msgSend(v34, "CGColor")}];

    v35 = [(UIImageView *)v3->_avatarView layer];
    [v35 setBorderWidth:1.0];

    v36 = [(UIImageView *)v3->_avatarView layer];
    [v36 setMasksToBounds:1];

    v37 = [(UIImageView *)v3->_avatarView layer];
    [v37 setCornerRadius:12.0];

    v38 = [(PKSpendingSummaryAccountUserCell *)v3 contentView];
    [v38 addSubview:v3->_avatarView];

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

- (CGSize)sizeThatFits:(CGSize)a3
{
  self->_isTemplateLayout = 1;
  [(PKSpendingSummaryAccountUserCell *)self _layoutWithBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), a3.width, a3.height];
  self->_isTemplateLayout = 0;
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)a3
{
  width = a3.size.width;
  v5 = a3.origin.x + 12.0;
  v6 = a3.origin.y + 11.0;
  v7 = a3.size.height + -18.0;
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

- (void)setAmount:(id)a3
{
  v4 = a3;
  v5 = [(UILabel *)self->_amountLabel text];
  v8 = v4;
  v6 = v5;
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

- (void)setName:(id)a3
{
  v4 = a3;
  v5 = [(UILabel *)self->_nameLabel text];
  v8 = v4;
  v6 = v5;
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

- (void)setAvatar:(id)a3
{
  v6 = a3;
  v4 = [(UIImageView *)self->_avatarView image];
  v5 = PKEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(UIImageView *)self->_avatarView setImage:v6];
    [(PKSpendingSummaryAccountUserCell *)self setNeedsLayout];
  }
}

@end