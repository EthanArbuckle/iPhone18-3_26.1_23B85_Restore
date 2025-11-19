@interface PKBarcodeStickerView
+ (PKBarcodeQuietZone)_quietZoneForBarcode:(id)a3;
+ (int64_t)validityStateForPass:(id)a3;
- (CGSize)desiredBarcodeSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKBarcodeStickerView)initWithBarcode:(id)a3 validityState:(int64_t)a4 passStyle:(int64_t)a5;
- (id)barcodeImage;
- (void)_generateMatteRect:(CGRect *)a3 barcodeRect:(CGRect *)a4 altContentRect:(CGRect *)a5 boundingSize:(CGSize)a6;
- (void)_setupAltImageView;
- (void)_setupAltTextLabel;
- (void)_updateDrawBarcode;
- (void)_updateMatteViewHiding;
- (void)_updateValidity;
- (void)layoutSubviews;
- (void)setAltImage:(id)a3;
- (void)setAltTextFont:(id)a3;
- (void)setAltTextInset:(double)a3;
- (void)setDesiredBarcodeSize:(CGSize)a3;
- (void)setMatteCornerRadius:(double)a3;
- (void)setValidity:(int64_t)a3;
@end

@implementation PKBarcodeStickerView

+ (int64_t)validityStateForPass:(id)a3
{
  v3 = a3;
  if ([v3 isRevoked])
  {
    v4 = 3;
  }

  else if ([v3 isVoided])
  {
    v4 = 2;
  }

  else
  {
    v4 = [v3 isExpired];
  }

  return v4;
}

+ (PKBarcodeQuietZone)_quietZoneForBarcode:(id)a3
{
  v3 = [a3 format];
  v4 = 5.0;
  v5 = 9.0;
  if (v3 == 2)
  {
    v4 = 9.0;
  }

  v6 = 6.0;
  if (v3 == 2)
  {
    v6 = 9.0;
  }

  v7 = 7.0;
  if (v3 == 2)
  {
    v7 = 9.0;
  }

  else
  {
    v5 = 0.0;
  }

  result.var3 = v5;
  result.var2 = v7;
  result.var1 = v6;
  result.var0 = v4;
  return result;
}

- (PKBarcodeStickerView)initWithBarcode:(id)a3 validityState:(int64_t)a4 passStyle:(int64_t)a5
{
  v9 = a3;
  v23.receiver = self;
  v23.super_class = PKBarcodeStickerView;
  v10 = [(PKBarcodeStickerView *)&v23 initWithFrame:0.0, 0.0, 100.0, 100.0];
  v11 = v10;
  if (v10)
  {
    *(v10 + 872) = *MEMORY[0x1E695F060];
    v10[841] = 1;
    objc_storeStrong(v10 + 93, a3);
    v11->_passStyle = a5;
    v12 = objc_alloc(MEMORY[0x1E69DD250]);
    v13 = [v12 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    matteView = v11->_matteView;
    v11->_matteView = v13;

    v15 = v11->_matteView;
    v16 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIView *)v15 setBackgroundColor:v16];

    [(UIView *)v11->_matteView setUserInteractionEnabled:1];
    v17 = [(UIView *)v11->_matteView layer];
    [v17 setMaskedCorners:15];

    v18 = [(UIView *)v11->_matteView layer];
    [v18 setCornerCurve:*MEMORY[0x1E69796E8]];

    v19 = [(UIView *)v11->_matteView layer];
    [v19 setCornerRadius:4.5];

    v20 = [(UIView *)v11->_matteView layer];
    [v20 setMasksToBounds:1];

    [(PKBarcodeStickerView *)v11 addSubview:v11->_matteView];
    v21 = [v9 altText];
    if (v21)
    {

      if (a5 != 10)
      {
        [(PKBarcodeStickerView *)v11 _setupAltTextLabel];
      }
    }

    [(PKBarcodeStickerView *)v11 setValidity:a4];
    [(PKBarcodeStickerView *)v11 setAccessibilityIdentifier:*MEMORY[0x1E69B9510]];
  }

  return v11;
}

- (void)setValidity:(int64_t)a3
{
  self->_validity = a3;
  [(PKBarcodeStickerView *)self _updateValidity];

  [(PKBarcodeStickerView *)self setNeedsLayout];
}

- (void)setMatteCornerRadius:(double)a3
{
  v5 = [(UIView *)self->_matteView layer];
  [v5 cornerRadius];
  v7 = v6;

  if (v7 != a3)
  {
    v8 = [(UIView *)self->_matteView layer];
    [v8 setCornerRadius:a3];

    [(PKBarcodeStickerView *)self setNeedsLayout];
  }
}

- (void)setAltTextFont:(id)a3
{
  [(UILabel *)self->_altTextLabel setFont:a3];
  self->_barcodeViewInvalidated = 1;

  [(PKBarcodeStickerView *)self setNeedsLayout];
}

- (void)setAltTextInset:(double)a3
{
  self->_altContentInset = a3;
  self->_barcodeViewInvalidated = 1;
  [(PKBarcodeStickerView *)self setNeedsLayout];
}

- (void)setAltImage:(id)a3
{
  v5 = a3;
  if (self->_altImage != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_altImage, a3);
    [(PKBarcodeStickerView *)self _setupAltImageView];
    [(PKBarcodeStickerView *)self setNeedsLayout];
    v5 = v6;
  }
}

- (void)_setupAltImageView
{
  altImage = self->_altImage;
  altImageView = self->_altImageView;
  if (altImage)
  {
    if (!altImageView)
    {
      v5 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
      v6 = self->_altImageView;
      self->_altImageView = v5;

      [(UIImageView *)self->_altImageView setContentMode:1];
      [(UIImageView *)self->_altImageView setClipsToBounds:1];
      [(UIView *)self->_matteView addSubview:self->_altImageView];
    }

    self->_altContentInset = 11.0;
    [(UIImageView *)self->_altImageView setImage:self->_altImage];
    [(UILabel *)self->_altTextLabel removeFromSuperview];
  }

  else
  {
    [(UIImageView *)altImageView removeFromSuperview];
    [(PKBarcodeStickerView *)self _setupAltTextLabel];
  }

  [(PKBarcodeStickerView *)self setNeedsLayout];
}

- (void)_setupAltTextLabel
{
  if (!self->_altTextLabel && !self->_altImage)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    altTextLabel = self->_altTextLabel;
    self->_altTextLabel = v3;

    v5 = self->_altTextLabel;
    v6 = [MEMORY[0x1E69DB878] systemFontOfSize:14.0];
    [(UILabel *)v5 setFont:v6];

    self->_altContentInset = 11.0;
    [(UILabel *)self->_altTextLabel setTextAlignment:1];
    v7 = self->_altTextLabel;
    v8 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v7 setBackgroundColor:v8];

    [(UILabel *)self->_altTextLabel sizeToFit];
    [(UILabel *)self->_altTextLabel setUserInteractionEnabled:1];
    [(UILabel *)self->_altTextLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9440]];
    matteView = self->_matteView;
    v10 = self->_altTextLabel;

    [(UIView *)matteView addSubview:v10];
  }
}

- (void)_updateValidity
{
  if (self->_validity)
  {
    [(PKBarcodeStickerView *)self _updateMatteViewHiding];
    [(UIImageView *)self->_barcodeView setAlpha:0.1];
    altTextLabel = self->_altTextLabel;
    if (self->_validity == 3)
    {
      v4 = [MEMORY[0x1E69DC888] redColor];
      [(UILabel *)altTextLabel setTextColor:v4];

      v5 = self->_altTextLabel;
      v6 = @"PASS_REVOKED";
    }

    else
    {
      v10 = [MEMORY[0x1E69DC888] colorWithWhite:0.5 alpha:1.0];
      [(UILabel *)altTextLabel setTextColor:v10];

      v5 = self->_altTextLabel;
      v6 = @"PASS_EXPIRED";
    }

    v11 = PKLocalizedString(&v6->isa);
    [(UILabel *)v5 setText:?];
  }

  else
  {
    [(UIImageView *)self->_barcodeView setAlpha:1.0];
    v7 = self->_altTextLabel;
    v8 = [(PKBarcode *)self->_barcode altText];
    [(UILabel *)v7 setText:v8];

    [(PKBarcodeStickerView *)self _updateMatteViewHiding];
    v9 = self->_altTextLabel;
    v11 = [MEMORY[0x1E69DC888] blackColor];
    [(UILabel *)v9 setTextColor:?];
  }
}

- (void)setDesiredBarcodeSize:(CGSize)a3
{
  self->_desiredBarcodeSize = a3;
  self->_barcodeViewInvalidated = 1;
  [(PKBarcodeStickerView *)self setNeedsLayout];
}

- (void)_generateMatteRect:(CGRect *)a3 barcodeRect:(CGRect *)a4 altContentRect:(CGRect *)a5 boundingSize:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  [(PKBarcode *)self->_barcode sizeForPassStyle:self->_passStyle];
  v13 = v12;
  v15 = v14;
  if (*MEMORY[0x1E695F060] != self->_desiredBarcodeSize.width || *(MEMORY[0x1E695F060] + 8) != self->_desiredBarcodeSize.height)
  {
    PKSizeScaleAspectFit();
    v13 = v17;
    v15 = v18;
  }

  if (self->_drawBarcode)
  {
    if (self->_barcodeViewInvalidated)
    {
      barcodeView = self->_barcodeView;
      if (barcodeView)
      {
        [(UIImageView *)barcodeView removeFromSuperview];
        v20 = self->_barcodeView;
        self->_barcodeView = 0;
      }

      self->_barcodeViewInvalidated = 0;
    }

    if (!self->_barcodeView)
    {
      v21 = [(PKBarcode *)self->_barcode imageWithSize:v13, v15];
      v22 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v21];
      v23 = self->_barcodeView;
      self->_barcodeView = v22;

      [(UIImageView *)self->_barcodeView setUserInteractionEnabled:1];
      [(UIView *)self->_matteView addSubview:self->_barcodeView];
    }

    [(PKBarcode *)self->_barcode variance];
    v26 = v25;
    if (v24 > 0.0 && (v27 = v24, -[UIImageView image](self->_barcodeView, "image"), v28 = objc_claimAutoreleasedReturnValue(), [v28 size], v30 = vabdd_f64(v13, v29), v28, v30 < v27) || v26 > 0.0 && (-[UIImageView image](self->_barcodeView, "image"), v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v31, "size"), v33 = vabdd_f64(v15, v32), v31, v33 < v26))
    {
      [(UIImageView *)self->_barcodeView frame];
      v13 = v34;
      v15 = v35;
    }
  }

  if ([(PKBarcode *)self->_barcode format]== 4 && v15 <= self->_desiredBarcodeSize.height)
  {
    v15 = self->_desiredBarcodeSize.height;
  }

  rect = v15;
  if (self->_shouldMatteCode)
  {
    [PKBarcodeStickerView _quietZoneForBarcode:self->_barcode];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v64 = v42;
  }

  else
  {
    v37 = 0.0;
    v39 = 0.0;
    v41 = 0.0;
    v64 = 0.0;
  }

  altImageView = self->_altImageView;
  if (altImageView)
  {
    v63 = 3.0;
LABEL_27:
    [altImageView sizeThatFits:{width, height}];
    v46 = v45;
    goto LABEL_28;
  }

  altImageView = self->_altTextLabel;
  v63 = 0.0;
  if (altImageView)
  {
    goto LABEL_27;
  }

  v44 = *(MEMORY[0x1E695F058] + 16);
  v46 = *(MEMORY[0x1E695F058] + 24);
LABEL_28:
  altContentInset = self->_altContentInset;
  if (v44 >= width + altContentInset * -2.0)
  {
    v48 = width + altContentInset * -2.0;
  }

  else
  {
    v48 = v44;
  }

  v49 = v48 + altContentInset * 2.0;
  if (v49 <= v13 + v39 * 2.0)
  {
    v50 = v13 + v39 * 2.0;
  }

  else
  {
    v50 = v49;
  }

  v51 = rect;
  v52 = v41 + rect + v37;
  if (v46 > 0.0)
  {
    v52 = v52 + v46 + -2.0;
  }

  v53 = v13;
  if (v52 >= 50.0)
  {
    v54 = v52;
  }

  else
  {
    v54 = 50.0;
  }

  v55 = 0.5;
  v56 = floor((v50 - v53) * 0.5);
  if (!self->_drawBarcode)
  {
    v58 = v37;
    v60 = v53;
    v62 = floor((v54 - v46) * 0.5);
    if (!a3)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  v57 = v56;
  v58 = v37;
  v59 = v37;
  v60 = v53;
  MaxY = CGRectGetMaxY(*(&v51 - 3));
  v55 = 0.5;
  v62 = v64 + v63 + MaxY + -2.0;
  if (a3)
  {
LABEL_43:
    a3->origin = *MEMORY[0x1E695EFF8];
    a3->size.width = v50;
    a3->size.height = v54;
  }

LABEL_44:
  if (a4)
  {
    a4->origin.x = v56;
    a4->origin.y = v58;
    a4->size.width = v60;
    a4->size.height = rect;
  }

  if (a5)
  {
    a5->origin.x = floor((v50 - v48) * v55);
    a5->origin.y = v62;
    a5->size.width = v48;
    a5->size.height = v46;
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(PKBarcodeStickerView *)self _updateDrawBarcode];
  v8 = 0u;
  v9 = 0u;
  [(PKBarcodeStickerView *)self _generateMatteRect:&v8 barcodeRect:0 altContentRect:0 boundingSize:width, height];
  v7 = *(&v9 + 1);
  v6 = *&v9;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)layoutSubviews
{
  [(PKBarcodeStickerView *)self _updateDrawBarcode];
  if (self->_drawBarcode && ([(PKBarcodeStickerView *)self _updateMatteViewHiding], self->_drawBarcode))
  {
    [(PKBarcodeStickerView *)self bounds];
    v4 = v3;
    v6 = v5;
  }

  else
  {
    v4 = self->_altContentInset * 2.0 + 240.0;
    v6 = 100.0;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  [(PKBarcodeStickerView *)self _generateMatteRect:&v12 barcodeRect:&v10 altContentRect:&v8 boundingSize:v4, v6];
  [(UILabel *)self->_altTextLabel setFrame:v8, v9];
  [(UIImageView *)self->_altImageView setFrame:v8, v9];
  [(UIView *)self->_matteView setFrame:v12, v13];
  [(PKBarcodeStickerView *)self _updateMatteViewHiding];
  [(UIImageView *)self->_barcodeView setFrame:v10, v11];
  [(PKBarcodeStickerView *)self _updateValidity];
  v7.receiver = self;
  v7.super_class = PKBarcodeStickerView;
  [(PKBarcodeStickerView *)&v7 layoutSubviews];
}

- (void)_updateDrawBarcode
{
  if ([(PKBarcode *)self->_barcode format])
  {
    v3 = [(PKBarcodeStickerView *)self barcodeImage];
    self->_drawBarcode = v3 != 0;
  }

  else
  {
    self->_drawBarcode = 0;
  }
}

- (void)_updateMatteViewHiding
{
  matteView = self->_matteView;
  v4 = !self->_shouldMatteCode && !self->_drawBarcode;
  [(UIView *)matteView setHidden:v4];
}

- (id)barcodeImage
{
  barcodeImage = self->_barcodeImage;
  if (!barcodeImage)
  {
    v4 = [(PKBarcode *)self->_barcode image];
    v5 = self->_barcodeImage;
    self->_barcodeImage = v4;

    barcodeImage = self->_barcodeImage;
  }

  return barcodeImage;
}

- (CGSize)desiredBarcodeSize
{
  width = self->_desiredBarcodeSize.width;
  height = self->_desiredBarcodeSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end