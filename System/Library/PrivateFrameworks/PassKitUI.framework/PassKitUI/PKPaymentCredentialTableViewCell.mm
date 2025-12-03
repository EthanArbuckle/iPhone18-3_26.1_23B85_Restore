@interface PKPaymentCredentialTableViewCell
+ (CGSize)defaultImageViewSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKPaymentCredentialTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)pk_applyAppearance:(id)appearance;
- (void)prepareForReuse;
- (void)setSnapshotImageHasBorder:(BOOL)border;
@end

@implementation PKPaymentCredentialTableViewCell

- (void)pk_applyAppearance:(id)appearance
{
  v6.receiver = self;
  v6.super_class = PKPaymentCredentialTableViewCell;
  [(PKTableViewCell *)&v6 pk_applyAppearance:appearance];
  detailTextLabel = [(PKPaymentCredentialTableViewCell *)self detailTextLabel];
  detailTextLabelColor = [(PKPaymentCredentialTableViewCell *)self detailTextLabelColor];
  [detailTextLabel setTextColor:detailTextLabelColor];
}

- (PKPaymentCredentialTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v21.receiver = self;
  v21.super_class = PKPaymentCredentialTableViewCell;
  v4 = [(PKPaymentCredentialTableViewCell *)&v21 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    contentView = [(PKPaymentCredentialTableViewCell *)v4 contentView];
    v7 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC50]);
    textLabel = [(PKPaymentCredentialTableViewCell *)v5 textLabel];
    [textLabel setNumberOfLines:1];
    [textLabel setFont:v7];
    v9 = objc_alloc(MEMORY[0x1E69DCC10]);
    v10 = *MEMORY[0x1E695F058];
    v11 = *(MEMORY[0x1E695F058] + 8);
    v12 = *(MEMORY[0x1E695F058] + 16);
    v13 = *(MEMORY[0x1E695F058] + 24);
    v14 = [v9 initWithFrame:{*MEMORY[0x1E695F058], v11, v12, v13}];
    credentialDetailLabel = v5->_credentialDetailLabel;
    v5->_credentialDetailLabel = v14;

    [(UILabel *)v5->_credentialDetailLabel setFont:v7];
    [(UILabel *)v5->_credentialDetailLabel setNumberOfLines:2];
    [contentView addSubview:v5->_credentialDetailLabel];
    v16 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v10, v11, v12, v13}];
    snapshotImageView = v5->_snapshotImageView;
    v5->_snapshotImageView = v16;

    [(UIImageView *)v5->_snapshotImageView setAccessibilityIgnoresInvertColors:1];
    [contentView addSubview:v5->_snapshotImageView];
    layer = [(UIImageView *)v5->_snapshotImageView layer];
    PKPaymentStyleApplyCorners();
    [layer setShouldRasterize:1];
    [layer setRasterizationScale:PKUIScreenScale()];
    [(PKPaymentCredentialTableViewCell *)v5 setSelectionStyle:0];
    v19 = PKProvisioningBackgroundColor();
    [(PKPaymentCredentialTableViewCell *)v5 setBackgroundColor:v19];
  }

  return v5;
}

- (void)layoutSubviews
{
  v31.receiver = self;
  v31.super_class = PKPaymentCredentialTableViewCell;
  [(PKPaymentCredentialTableViewCell *)&v31 layoutSubviews];
  _shouldReverseLayoutDirection = [(PKPaymentCredentialTableViewCell *)self _shouldReverseLayoutDirection];
  contentView = [(PKPaymentCredentialTableViewCell *)self contentView];
  [contentView frame];
  Width = CGRectGetWidth(v32);

  snapshotImageView = [(PKPaymentCredentialTableViewCell *)self snapshotImageView];
  v7 = snapshotImageView;
  if (_shouldReverseLayoutDirection)
  {
    v8 = Width + -53.0 + -15.0;
  }

  else
  {
    v8 = 15.0;
  }

  [snapshotImageView setFrame:{v8, 15.0, 53.0, 32.0}];
  if ([(PKPaymentCredentialTableViewCell *)self accessoryType])
  {
    v9 = 0.0;
  }

  else
  {
    v9 = 40.0;
  }

  v33.origin.y = 15.0;
  v33.origin.x = v8;
  v33.size.width = 53.0;
  v33.size.height = 32.0;
  v10 = Width - CGRectGetWidth(v33) + -30.0 - v9;
  textLabel = [(PKPaymentCredentialTableViewCell *)self textLabel];
  [textLabel sizeToFit];
  [textLabel frame];
  v14 = v13;
  if (v10 >= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = v10;
  }

  v16 = 15.0;
  v17 = v8;
  v18 = 0x404A800000000000;
  v19 = 0x4040000000000000;
  if (_shouldReverseLayoutDirection)
  {
    v20 = CGRectGetMinX(*&v17) + -15.0 - v15;
  }

  else
  {
    v20 = CGRectGetMaxX(*&v17) + 15.0;
  }

  [textLabel setFrame:{v20, 10.0, v15, v14}];
  v21 = self->_credentialDetailLabel;
  [(UILabel *)v21 sizeThatFits:v10, 1.79769313e308];
  v24 = v23;
  if (v10 >= v22)
  {
    v10 = v22;
  }

  v34.origin.y = 10.0;
  v34.origin.x = v20;
  v34.size.width = v15;
  v34.size.height = v14;
  MaxY = CGRectGetMaxY(v34);
  v26 = 15.0;
  v27 = v8;
  v28 = 0x404A800000000000;
  v29 = 0x4040000000000000;
  if (_shouldReverseLayoutDirection)
  {
    v30 = CGRectGetMinX(*&v27) + -15.0 - v10;
  }

  else
  {
    v30 = CGRectGetMaxX(*&v27) + 15.0;
  }

  [(UILabel *)v21 setFrame:v30, MaxY, v10, v24];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v5 = [(PKPaymentCredentialTableViewCell *)self textLabel:fits.width];
  font = [v5 font];
  [font lineHeight];
  v8 = v7 + 20.0;

  if ([(PKPaymentCredentialTableViewCell *)self _shouldReverseLayoutDirection])
  {
    v9 = width + -53.0 + -15.0;
  }

  else
  {
    v9 = 15.0;
  }

  if ([(PKPaymentCredentialTableViewCell *)self accessoryType])
  {
    v10 = 0.0;
  }

  else
  {
    v10 = 40.0;
  }

  v16.size.width = 53.0;
  v16.size.height = 32.0;
  v16.origin.y = 15.0;
  v16.origin.x = v9;
  [(UILabel *)self->_credentialDetailLabel sizeThatFits:width - CGRectGetWidth(v16) + -30.0 - v10, 1.79769313e308];
  v12 = v8 + v11;
  v13 = 60.0;
  if (v12 >= 60.0)
  {
    v13 = v12;
  }

  v14 = width;
  result.height = v13;
  result.width = v14;
  return result;
}

- (void)setSnapshotImageHasBorder:(BOOL)border
{
  if (self->_snapshotImageHasBorder != border)
  {
    self->_snapshotImageHasBorder = border;
    layer = [(UIImageView *)self->_snapshotImageView layer];
    if (self->_snapshotImageHasBorder)
    {
      +[PKTransactionDataOverlayCardFaceView borderWidth];
      if (v4 > 0.0)
      {
        v4 = PKUIPixelLength();
      }

      v5 = +[PKTransactionDataOverlayCardFaceView borderColor];
      [v5 CGColor];
      PKPaymentStyleApplyCorners();
    }

    else
    {
      PKPaymentStyleApplyCorners();
    }
  }
}

+ (CGSize)defaultImageViewSize
{
  v2 = 53.0;
  v3 = 32.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = PKPaymentCredentialTableViewCell;
  [(PKTableViewCell *)&v4 prepareForReuse];
  textLabel = [(PKPaymentCredentialTableViewCell *)self textLabel];
  [textLabel setText:0];

  [(UILabel *)self->_credentialDetailLabel setText:0];
  [(PKPaymentCredentialTableViewCell *)self setAccessoryType:0];
}

@end