@interface PKPeerPaymentActionTransferToBankCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKPeerPaymentActionTransferToBankCell)initWithReuseIdentifier:(id)a3;
- (void)layoutSubviews;
- (void)setFeeText:(id)a3;
- (void)setShowCheckmark:(BOOL)a3;
- (void)setSubtitleText:(id)a3;
- (void)setTitleText:(id)a3;
@end

@implementation PKPeerPaymentActionTransferToBankCell

- (PKPeerPaymentActionTransferToBankCell)initWithReuseIdentifier:(id)a3
{
  v36.receiver = self;
  v36.super_class = PKPeerPaymentActionTransferToBankCell;
  v3 = [(PKPeerPaymentActionTransferToBankCell *)&v36 initWithStyle:3 reuseIdentifier:a3];
  v4 = v3;
  if (v3)
  {
    v3->_isRTL = [(PKPeerPaymentActionTransferToBankCell *)v3 _shouldReverseLayoutDirection];
    v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    textLabel = v4->_textLabel;
    v4->_textLabel = v5;

    v7 = v4->_textLabel;
    v8 = *MEMORY[0x1E69DDCF8];
    v9 = *MEMORY[0x1E69DDC38];
    v10 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC38]);
    [(UILabel *)v7 setFont:v10];

    [(UILabel *)v4->_textLabel setTextAlignment:4];
    v11 = v4->_textLabel;
    v12 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v11 setTextColor:v12];

    [(UILabel *)v4->_textLabel setNumberOfLines:1];
    [(UILabel *)v4->_textLabel setLineBreakMode:4];
    [(UILabel *)v4->_textLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
    v13 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    detailTextLabel = v4->_detailTextLabel;
    v4->_detailTextLabel = v13;

    v15 = v4->_detailTextLabel;
    v16 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], v9);
    [(UILabel *)v15 setFont:v16];

    [(UILabel *)v4->_detailTextLabel setTextAlignment:4];
    v17 = v4->_detailTextLabel;
    v18 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v17 setTextColor:v18];

    [(UILabel *)v4->_detailTextLabel setNumberOfLines:3];
    [(UILabel *)v4->_detailTextLabel setLineBreakMode:4];
    [(UILabel *)v4->_detailTextLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9CC8]];
    v19 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    feeLabel = v4->_feeLabel;
    v4->_feeLabel = v19;

    v21 = v4->_feeLabel;
    v22 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v21 setTextColor:v22];

    v23 = v4->_feeLabel;
    v24 = PKFontForDefaultDesign(v8, v9);
    [(UILabel *)v23 setFont:v24];

    if (v4->_isRTL)
    {
      v25 = 0;
    }

    else
    {
      v25 = 2;
    }

    [(UILabel *)v4->_feeLabel setTextAlignment:v25];
    [(UILabel *)v4->_feeLabel setLineBreakMode:4];
    [(UILabel *)v4->_feeLabel setNumberOfLines:2];
    [(UILabel *)v4->_feeLabel setAccessibilityIdentifier:*MEMORY[0x1E69B96F8]];
    [(PKPeerPaymentActionTransferToBankCell *)v4 addSubview:v4->_textLabel];
    [(PKPeerPaymentActionTransferToBankCell *)v4 addSubview:v4->_detailTextLabel];
    [(PKPeerPaymentActionTransferToBankCell *)v4 addSubview:v4->_feeLabel];
    v26 = PKPassKitUIBundle();
    v27 = [v26 URLForResource:@"Cell_Checkmark" withExtension:@"pdf"];

    v28 = PKUIScreenScale();
    v29 = PKUIImageFromPDF(v27, 15.0, 19.5, v28);
    v30 = [v29 imageWithRenderingMode:2];

    v31 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v30];
    checkmarkImageView = v4->_checkmarkImageView;
    v4->_checkmarkImageView = v31;

    v33 = v4->_checkmarkImageView;
    v34 = [MEMORY[0x1E69DC888] systemBlueColor];
    [(UIImageView *)v33 setTintColor:v34];

    [(PKPeerPaymentActionTransferToBankCell *)v4 setAccessibilityIdentifier:*MEMORY[0x1E69B9D70]];
  }

  return v4;
}

- (void)layoutSubviews
{
  v46.receiver = self;
  v46.super_class = PKPeerPaymentActionTransferToBankCell;
  [(PKPeerPaymentActionTransferToBankCell *)&v46 layoutSubviews];
  [(PKPeerPaymentActionTransferToBankCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v9 + -22.0;
  v12 = (v7 - PKTableViewCellTextInset() * 2.0) * 0.3;
  [(UIImageView *)self->_checkmarkImageView frame];
  v14 = v13;
  [(UILabel *)self->_feeLabel frame];
  [(UILabel *)self->_feeLabel sizeThatFits:v12, v11];
  if (v12 >= v15)
  {
    v12 = v15;
  }

  [(UILabel *)self->_textLabel frame];
  [(UILabel *)self->_detailTextLabel frame];
  if (self->_isRTL)
  {
    v16 = CGRectMinXEdge;
  }

  else
  {
    v16 = CGRectMaxXEdge;
  }

  if (self->_isRTL)
  {
    v17 = CGRectMaxXEdge;
  }

  else
  {
    v17 = CGRectMinXEdge;
  }

  memset(&slice, 0, sizeof(slice));
  remainder.origin.x = v4;
  remainder.origin.y = v6;
  remainder.size.width = v8;
  remainder.size.height = v10;
  v47.origin.x = v4;
  v47.origin.y = v6;
  v47.size.width = v8;
  v47.size.height = v10;
  CGRectDivide(v47, &slice, &remainder, 16.0, v16);
  v18 = PKTableViewCellTextInset();
  CGRectDivide(remainder, &slice, &remainder, v18, v17);
  CGRectDivide(remainder, &slice, &remainder, v14, v16);
  PKRectCenteredYInRect();
  v42 = v20;
  v43 = v19;
  v40 = v22;
  v41 = v21;
  [(UIImageView *)self->_checkmarkImageView setFrame:?];
  CGRectDivide(remainder, &slice, &remainder, 16.0, v16);
  CGRectDivide(remainder, &slice, &remainder, v12, v16);
  PKRectCenteredYInRect();
  v38 = v24;
  v39 = v23;
  v37 = v25;
  v27 = v26;
  [(UILabel *)self->_feeLabel setFrame:?];
  CGRectDivide(remainder, &slice, &remainder, 16.0, v16);
  [(UILabel *)self->_textLabel sizeThatFits:remainder.size.width, v11];
  v29 = v28;
  x = remainder.origin.x;
  width = remainder.size.width;
  [(UILabel *)self->_textLabel setFrame:remainder.origin.x, 11.0, remainder.size.width, v28];
  [(UILabel *)self->_detailTextLabel sizeThatFits:remainder.size.width, v11];
  v33 = v32;
  v34 = remainder.origin.x;
  v48.origin.y = 11.0;
  v48.origin.x = x;
  v48.size.width = width;
  v48.size.height = v29;
  v35 = CGRectGetMaxY(v48) + 2.0;
  v36 = remainder.size.width;
  [(UILabel *)self->_detailTextLabel setFrame:v34, v35, remainder.size.width, v33];
  [(UILabel *)self->_feeLabel setFrame:v39, v38, v37, v27];
  [(UILabel *)self->_textLabel setFrame:x, 11.0, width, v29];
  [(UILabel *)self->_detailTextLabel setFrame:v34, v35, v36, v33];
  [(UIImageView *)self->_checkmarkImageView setFrame:v43, v42, v41, v40];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v5 = a3.width - PKTableViewCellTextInset() * 2.0;
  [(UILabel *)self->_feeLabel sizeThatFits:v5 * 0.3, 3.40282347e38];
  v8 = v7;
  if (v6 >= v5 * 0.3)
  {
    v6 = v5 * 0.3;
  }

  v9 = v5 + -48.0 - v6;
  [(UILabel *)self->_detailTextLabel sizeThatFits:v9, 3.40282347e38];
  v11 = v10;
  [(UILabel *)self->_textLabel sizeThatFits:v9, 3.40282347e38];
  v13 = v11 + v12 + 2.0;
  if (v8 > v13)
  {
    v13 = v8;
  }

  v14 = v13 + 22.0;
  v15 = width;
  result.height = v14;
  result.width = v15;
  return result;
}

- (void)setFeeText:(id)a3
{
  v5 = a3;
  v6 = self->_feeText;
  v7 = v5;
  v9 = v7;
  if (v6 == v7)
  {

    goto LABEL_9;
  }

  if (!v7 || !v6)
  {

    goto LABEL_8;
  }

  v8 = [(NSString *)v6 isEqualToString:v7];

  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_feeText, a3);
    [(UILabel *)self->_feeLabel setText:self->_feeText];
    [(UILabel *)self->_feeLabel sizeToFit];
    [(PKPeerPaymentActionTransferToBankCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setTitleText:(id)a3
{
  v5 = a3;
  v6 = self->_titleText;
  v7 = v5;
  v9 = v7;
  if (v6 == v7)
  {

    goto LABEL_9;
  }

  if (!v7 || !v6)
  {

    goto LABEL_8;
  }

  v8 = [(NSString *)v6 isEqualToString:v7];

  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_titleText, a3);
    [(UILabel *)self->_textLabel setText:self->_titleText];
    [(UILabel *)self->_textLabel sizeToFit];
    [(PKPeerPaymentActionTransferToBankCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setSubtitleText:(id)a3
{
  v5 = a3;
  v6 = self->_subtitleText;
  v7 = v5;
  v9 = v7;
  if (v6 == v7)
  {

    goto LABEL_9;
  }

  if (!v7 || !v6)
  {

    goto LABEL_8;
  }

  v8 = [(NSString *)v6 isEqualToString:v7];

  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_subtitleText, a3);
    [(UILabel *)self->_detailTextLabel setText:self->_subtitleText];
    [(UILabel *)self->_detailTextLabel sizeToFit];
    [(PKPeerPaymentActionTransferToBankCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setShowCheckmark:(BOOL)a3
{
  if (self->_showCheckmark != a3)
  {
    self->_showCheckmark = a3;
    if (a3)
    {
      [(PKPeerPaymentActionTransferToBankCell *)self addSubview:self->_checkmarkImageView];
    }

    else
    {
      [(UIImageView *)self->_checkmarkImageView removeFromSuperview];
    }

    [(PKPeerPaymentActionTransferToBankCell *)self setNeedsLayout];
  }
}

@end