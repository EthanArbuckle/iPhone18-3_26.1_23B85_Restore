@interface PKPaymentSetupTableViewCell
+ (CGSize)defaultImageViewSize;
- (PKPaymentSetupTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setShowBetaBadge:(BOOL)a3;
- (void)setThumbnail:(id)a3 type:(int64_t)a4 animated:(BOOL)a5;
@end

@implementation PKPaymentSetupTableViewCell

- (PKPaymentSetupTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v27.receiver = self;
  v27.super_class = PKPaymentSetupTableViewCell;
  v4 = [(PKPaymentSetupTableViewCell *)&v27 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(PKPaymentSetupTableViewCell *)v4 contentView];
    v7 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v8 = *MEMORY[0x1E695F058];
    v9 = *(MEMORY[0x1E695F058] + 8);
    v10 = *(MEMORY[0x1E695F058] + 16);
    v11 = *(MEMORY[0x1E695F058] + 24);
    v12 = [v7 initWithFrame:{*MEMORY[0x1E695F058], v9, v10, v11}];
    cardImageView = v5->_cardImageView;
    v5->_cardImageView = v12;

    [(UIImageView *)v5->_cardImageView setAccessibilityIgnoresInvertColors:1];
    [v6 addSubview:v5->_cardImageView];
    v14 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v8, v9, v10, v11}];
    iconImageView = v5->_iconImageView;
    v5->_iconImageView = v14;

    [(UIImageView *)v5->_iconImageView setAccessibilityIgnoresInvertColors:1];
    [(UIImageView *)v5->_iconImageView setContentMode:1];
    [v6 addSubview:v5->_iconImageView];
    v16 = [(UIImageView *)v5->_cardImageView layer];
    PKUIPixelLength();
    v17 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.21];
    [v17 CGColor];
    PKPaymentStyleApplyCorners();

    [v16 setShouldRasterize:1];
    [v16 setRasterizationScale:PKUIScreenScale()];
    v18 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0];
    v19 = [MEMORY[0x1E69DC888] colorWithRed:0.909803922 green:0.364705882 blue:0.0 alpha:1.0];
    v20 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    betaLabel = v5->_betaLabel;
    v5->_betaLabel = v20;

    v22 = v5->_betaLabel;
    v23 = PKLocalizedPaymentString(&cfstr_CardTypeBetaBa.isa);
    [(UILabel *)v22 setText:v23];

    v24 = [(UILabel *)v5->_betaLabel layer];

    [v24 setBorderWidth:1.0];
    [v24 setCornerRadius:3.0];
    [v24 setBorderColor:{objc_msgSend(v19, "CGColor")}];
    [(UILabel *)v5->_betaLabel setTextColor:v19];
    [(UILabel *)v5->_betaLabel setFont:v18];
    [(UILabel *)v5->_betaLabel setTextAlignment:1];
    v25 = [(PKPaymentSetupTableViewCell *)v5 textLabel];
    [v25 setNumberOfLines:2];
  }

  return v5;
}

- (void)setShowBetaBadge:(BOOL)a3
{
  if (self->_showBetaBadge != a3)
  {
    if (a3)
    {
      v5 = [(PKPaymentSetupTableViewCell *)self contentView];
      [v5 addSubview:self->_betaLabel];
    }

    else
    {
      [(UILabel *)self->_betaLabel removeFromSuperview];
    }
  }

  self->_showBetaBadge = a3;
}

- (void)setThumbnail:(id)a3 type:(int64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  if (self->_thumbnail != v9 || self->_thumbnailType != a4)
  {
    objc_storeStrong(&self->_thumbnail, a3);
    self->_thumbnailType = a4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__PKPaymentSetupTableViewCell_setThumbnail_type_animated___block_invoke;
    aBlock[3] = &unk_1E8013D60;
    aBlock[4] = self;
    v13 = v9;
    v14 = v5;
    v10 = _Block_copy(aBlock);
    v11 = v10;
    if (v5)
    {
      [MEMORY[0x1E69DD250] transitionWithView:self duration:5242880 options:v10 animations:0 completion:0.3];
    }

    else
    {
      (*(v10 + 2))(v10);
    }
  }
}

uint64_t __58__PKPaymentSetupTableViewCell_setThumbnail_type_animated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = &OBJC_IVAR___PKPaymentSetupTableViewCell__cardImageView;
  v4 = v2[136];
  if (v4)
  {
    if (v4 != 1)
    {
      goto LABEL_6;
    }

    v5 = &OBJC_IVAR___PKPaymentSetupTableViewCell__cardImageView;
    v3 = &OBJC_IVAR___PKPaymentSetupTableViewCell__iconImageView;
  }

  else
  {
    v5 = &OBJC_IVAR___PKPaymentSetupTableViewCell__iconImageView;
  }

  v6 = *v3;
  [*(v2 + v6) setImage:*(a1 + 40)];
  [*(*(a1 + 32) + v6) setAlpha:1.0];
  v7 = *v5;
  [*(*(a1 + 32) + v7) setImage:0];
  [*(*(a1 + 32) + v7) setAlpha:0.0];
  v2 = *(a1 + 32);
LABEL_6:
  result = [v2 setNeedsLayout];
  if (*(a1 + 48) == 1)
  {
    v9 = *(a1 + 32);

    return [v9 layoutIfNeeded];
  }

  return result;
}

- (void)layoutSubviews
{
  v58[1] = *MEMORY[0x1E69E9840];
  v56.receiver = self;
  v56.super_class = PKPaymentSetupTableViewCell;
  [(PKPaymentSetupTableViewCell *)&v56 layoutSubviews];
  v3 = [(PKPaymentSetupTableViewCell *)self _shouldReverseLayoutDirection];
  v4 = [(PKPaymentSetupTableViewCell *)self contentView];
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v59.origin.x = v6;
  v59.origin.y = v8;
  v59.size.width = v10;
  v59.size.height = v12;
  Width = CGRectGetWidth(v59);
  v60.origin.x = v6;
  v60.origin.y = v8;
  v60.size.width = v10;
  v60.size.height = v12;
  Height = CGRectGetHeight(v60);
  thumbnail = self->_thumbnail;
  v16 = *MEMORY[0x1E695F058];
  v17 = *(MEMORY[0x1E695F058] + 8);
  v54 = Height;
  if (thumbnail)
  {
    PKFloatRoundToPixel();
    v19 = v18;
    if (v3)
    {
      v20 = Width + -53.0 + -15.0;
    }

    else
    {
      v20 = 15.0;
    }

    v21 = 53.0;
    v22 = 32.0;
  }

  else
  {
    v21 = *(MEMORY[0x1E695F058] + 16);
    v22 = *(MEMORY[0x1E695F058] + 24);
    v19 = *(MEMORY[0x1E695F058] + 8);
    v20 = *MEMORY[0x1E695F058];
  }

  [(UIImageView *)self->_cardImageView setFrame:v20, v19, v21, v22, *&v54];
  iconImageView = self->_iconImageView;
  PKSizeAlignedInRect();
  [(UIImageView *)iconImageView setFrame:?];
  if (thumbnail)
  {
    if ([(PKPaymentSetupTableViewCell *)self accessoryType])
    {
      v24 = 0.0;
    }

    else
    {
      v24 = 40.0;
    }

    v61.origin.x = v20;
    v61.origin.y = v19;
    v61.size.width = v21;
    v61.size.height = v22;
    v25 = Width - CGRectGetWidth(v61) + -30.0 - v24;
    v26 = [(PKPaymentSetupTableViewCell *)self textLabel];
    [v26 sizeToFit];
    [v26 sizeThatFits:{v25, 1.79769313e308}];
    v29 = v28;
    if (v25 >= v27)
    {
      v25 = v27;
    }

    v62.origin.x = v16;
    v62.origin.y = v17;
    v62.size.width = v25;
    v62.size.height = v29;
    v30 = (v55 - CGRectGetHeight(v62)) * 0.5;
    v31 = v20;
    v32 = v19;
    v33 = v21;
    v34 = v22;
    if (v3)
    {
      v35 = CGRectGetMinX(*&v31) + -15.0 - v25;
    }

    else
    {
      v35 = CGRectGetMaxX(*&v31) + 15.0;
    }

    [v26 setFrame:{v35, v30, v25, v29}];
  }

  if (self->_showBetaBadge)
  {
    [(UILabel *)self->_betaLabel frame];
    if (v36 >= 40.0)
    {
      v38 = v36;
    }

    else
    {
      v38 = 40.0;
    }

    if (v37 >= 19.0)
    {
      v39 = v37;
    }

    else
    {
      v39 = 19.0;
    }

    v40 = [(UILabel *)self->_betaLabel text];
    v57 = *MEMORY[0x1E69DB648];
    v41 = [(UILabel *)self->_betaLabel font];
    v58[0] = v41;
    v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:&v57 count:1];
    [v40 sizeWithAttributes:v42];
    v44 = v43;

    if (v38 >= v44 + 20.0)
    {
      v45 = v38;
    }

    else
    {
      v45 = v44 + 20.0;
    }

    v46 = [(PKPaymentSetupTableViewCell *)self textLabel];
    [v46 frame];
    v48 = v47;
    v50 = v49;

    PKFloatRoundToPixel();
    v52 = v51;
    v53 = v48 - v45 + -11.0;
    if (!v3)
    {
      v53 = v48 + v50 + 11.0;
    }

    [(UILabel *)self->_betaLabel setFrame:v53, v52, v45, v39];
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
  v4.super_class = PKPaymentSetupTableViewCell;
  [(PKTableViewCell *)&v4 prepareForReuse];
  v3 = [(PKPaymentSetupTableViewCell *)self textLabel];
  [v3 setText:0];

  [(PKPaymentSetupTableViewCell *)self setThumbnail:0 type:0 animated:0];
  [(PKPaymentSetupTableViewCell *)self setShowBetaBadge:0];
}

@end