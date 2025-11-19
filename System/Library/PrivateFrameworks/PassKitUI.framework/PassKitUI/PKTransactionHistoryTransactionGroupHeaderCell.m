@interface PKTransactionHistoryTransactionGroupHeaderCell
- (CGSize)_layoutWithBounds:(CGRect)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKTransactionHistoryTransactionGroupHeaderCell)initWithFrame:(CGRect)a3;
- (void)_setupImageView;
- (void)_updateImageViewDynamicColors;
- (void)layoutSubviews;
- (void)setImage:(id)a3 animated:(BOOL)a4;
- (void)setStrokeImage:(BOOL)a3;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
- (void)setUseShadows:(BOOL)a3;
@end

@implementation PKTransactionHistoryTransactionGroupHeaderCell

- (PKTransactionHistoryTransactionGroupHeaderCell)initWithFrame:(CGRect)a3
{
  v23.receiver = self;
  v23.super_class = PKTransactionHistoryTransactionGroupHeaderCell;
  v3 = [(PKDashboardCollectionViewCell *)&v23 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PKDashboardCollectionViewCell *)v3 setWantsCustomAppearance:1];
    v5 = [(PKTransactionHistoryTransactionGroupHeaderCell *)v4 contentView];
    v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
    imageBackgroundView = v4->_imageBackgroundView;
    v4->_imageBackgroundView = v6;

    [v5 addSubview:v4->_imageBackgroundView];
    v8 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v4->_imageView;
    v4->_imageView = v8;

    [(PKTransactionHistoryTransactionGroupHeaderCell *)v4 _setupImageView];
    [v5 addSubview:v4->_imageView];
    v10 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v10;

    [(UILabel *)v4->_titleLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v4->_titleLabel setNumberOfLines:2];
    [(UILabel *)v4->_titleLabel setTextAlignment:1];
    v12 = v4->_titleLabel;
    v13 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v12 setTextColor:v13];

    [v5 addSubview:v4->_titleLabel];
    v14 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    subtitleLabel = v4->_subtitleLabel;
    v4->_subtitleLabel = v14;

    [(UILabel *)v4->_subtitleLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v4->_subtitleLabel setNumberOfLines:1];
    v16 = v4->_subtitleLabel;
    v17 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], *MEMORY[0x1E69DDC58]);
    [(UILabel *)v16 setFont:v17];

    v18 = v4->_subtitleLabel;
    v19 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v18 setTextColor:v19];

    [v5 addSubview:v4->_subtitleLabel];
    v20 = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
    v21 = [(PKTransactionHistoryTransactionGroupHeaderCell *)v4 registerForTraitChanges:v20 withHandler:&__block_literal_global_100];
  }

  return v4;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKTransactionHistoryTransactionGroupHeaderCell;
  [(PKDashboardCollectionViewCell *)&v4 layoutSubviews];
  v3 = [(PKTransactionHistoryTransactionGroupHeaderCell *)self contentView];
  [v3 bounds];
  [(PKTransactionHistoryTransactionGroupHeaderCell *)self _layoutWithBounds:?];
}

- (CGSize)_layoutWithBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(PKTransactionHistoryTransactionGroupHeaderCell *)self _shouldReverseLayoutDirection];
  v8 = [(UILabel *)self->_subtitleLabel text];
  if ([v8 length])
  {

    memset(&v39, 0, sizeof(v39));
    v9 = 1;
    v10 = -18.0;
    v11 = 18.0;
  }

  else
  {
    v12 = [(UIImageView *)self->_imageView image];

    memset(&v39, 0, sizeof(v39));
    v10 = -18.0;
    v11 = 18.0;
    if (!v12)
    {
      v11 = 5.0;
      v10 = -5.0;
    }

    v9 = v12 != 0;
  }

  v13 = y + v11;
  v14 = height + v10;
  remainder.origin.x = x + 18.0;
  remainder.origin.y = y + v11;
  remainder.size.width = width + -36.0;
  remainder.size.height = height + v10;
  v15 = [(UIImageView *)self->_imageView image:*&v39.origin];

  if (v15)
  {
    v42.origin.x = x + 18.0;
    v42.origin.y = v13;
    v42.size.width = width + -36.0;
    v42.size.height = v14;
    CGRectDivide(v42, &v39, &remainder, 100.0, CGRectMinYEdge);
    if (!self->_isTemplateLayout)
    {
      PKSizeAlignedInRect();
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      [(UIImageView *)self->_imageView setFrame:?];
      [(UIView *)self->_imageBackgroundView setFrame:v17, v19, v21, v23];
    }

    CGRectDivide(remainder, &v39, &remainder, 18.0, CGRectMinYEdge);
  }

  titleLabel = self->_titleLabel;
  v25 = MEMORY[0x1E69DDDB0];
  if (v9)
  {
    v25 = MEMORY[0x1E69DDDB8];
  }

  v26 = PKFontForDefaultDesign(*v25, *MEMORY[0x1E69DDC58], 2, 0);
  [(UILabel *)titleLabel setFont:v26];

  [(UILabel *)self->_titleLabel sizeThatFits:remainder.size.width, remainder.size.height];
  CGRectDivide(remainder, &v39, &remainder, v27, CGRectMinYEdge);
  if (!self->_isTemplateLayout)
  {
    v28 = self->_titleLabel;
    if (!v9)
    {
      PKContentAlignmentMake();
    }

    PKSizeAlignedInRect();
    [(UILabel *)v28 setFrame:?];
  }

  [(UILabel *)self->_subtitleLabel sizeThatFits:remainder.size.width, remainder.size.height];
  v30 = remainder.size.width;
  if (v29 > 0.0)
  {
    v31 = v29;
    v32 = remainder.origin.x;
    v33 = remainder.origin.y;
    v34 = remainder.size.height;
    CGRectDivide(*(&v30 - 2), &v39, &remainder, 3.0, CGRectMinYEdge);
    CGRectDivide(remainder, &v39, &remainder, v31, CGRectMinYEdge);
    if (!self->_isTemplateLayout)
    {
      subtitleLabel = self->_subtitleLabel;
      PKSizeAlignedInRect();
      [(UILabel *)subtitleLabel setFrame:?];
    }
  }

  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  v36 = CGRectGetWidth(v43);
  MaxY = CGRectGetMaxY(v39);
  v38 = v36;
  result.height = MaxY;
  result.width = v38;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  self->_isTemplateLayout = 1;
  [(PKTransactionHistoryTransactionGroupHeaderCell *)self _layoutWithBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), a3.width, 3.40282347e38];
  self->_isTemplateLayout = 0;
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)_updateImageViewDynamicColors
{
  v3 = [(PKTransactionHistoryTransactionGroupHeaderCell *)self traitCollection];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __79__PKTransactionHistoryTransactionGroupHeaderCell__updateImageViewDynamicColors__block_invoke;
  v4[3] = &unk_1E8010970;
  v4[4] = self;
  PKUIPerformWithEffectiveTraitCollection(v3, v4);
}

void __79__PKTransactionHistoryTransactionGroupHeaderCell__updateImageViewDynamicColors__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 800) layer];
  v1 = [MEMORY[0x1E69DC888] systemGrayColor];
  [v2 setBorderColor:{objc_msgSend(v1, "CGColor")}];
}

- (void)setTitle:(id)a3
{
  [(UILabel *)self->_titleLabel setText:a3];

  [(PKTransactionHistoryTransactionGroupHeaderCell *)self setNeedsLayout];
}

- (void)setSubtitle:(id)a3
{
  [(UILabel *)self->_subtitleLabel setText:a3];

  [(PKTransactionHistoryTransactionGroupHeaderCell *)self setNeedsLayout];
}

- (void)setUseShadows:(BOOL)a3
{
  if (self->_useShadows == !a3)
  {
    v4 = a3;
    self->_useShadows = a3;
    v5 = [(UIView *)self->_imageBackgroundView layer];
    v9 = v5;
    v6 = 0.0;
    if (v4)
    {
      v6 = 20.0;
      v7 = 0.15;
    }

    else
    {
      v7 = 0.0;
    }

    [v5 setShadowRadius:v6];
    *&v8 = v7;
    [v9 setShadowOpacity:v8];
  }
}

- (void)setImage:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (self->_image != v7)
  {
    objc_storeStrong(&self->_image, a3);
    imageView = self->_imageView;
    if (!self->_image)
    {
      v14 = [(UIImageView *)imageView superview];
      if (v14)
      {
      }

      else
      {
        v24 = [(UIView *)self->_imageBackgroundView superview];

        if (!v24)
        {
          goto LABEL_21;
        }
      }

      [(UIImageView *)self->_imageView removeFromSuperview];
      [(UIView *)self->_imageBackgroundView removeFromSuperview];
      [(PKTransactionHistoryTransactionGroupHeaderCell *)self setNeedsLayout];
      goto LABEL_21;
    }

    if (imageView)
    {
      if (v4)
      {
        v9 = imageView;
        v10 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:self->_image];
        v11 = self->_imageView;
        self->_imageView = v10;

        [(PKTransactionHistoryTransactionGroupHeaderCell *)self _setupImageView];
        [(UIImageView *)self->_imageView setImage:self->_image];
        [(UIImageView *)self->_imageView setAlpha:0.0];
        v12 = MEMORY[0x1E69DD250];
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __68__PKTransactionHistoryTransactionGroupHeaderCell_setImage_animated___block_invoke;
        v27[3] = &unk_1E8010A10;
        v27[4] = self;
        v28 = v9;
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __68__PKTransactionHistoryTransactionGroupHeaderCell_setImage_animated___block_invoke_2;
        v25[3] = &unk_1E8011D28;
        v26 = v28;
        v13 = v28;
        [v12 pkui_animateUsingOptions:4 animations:v27 completion:v25];
      }

      else
      {
        v13 = [(UIImageView *)imageView image];
        [(UIImageView *)self->_imageView setImage:self->_image];
        v17 = [(UIImageView *)self->_imageView image];

        if (v17 == v13)
        {
          [(UIImageView *)self->_imageView removeFromSuperview];
          v18 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:self->_image];
          v19 = self->_imageView;
          self->_imageView = v18;

          [(PKTransactionHistoryTransactionGroupHeaderCell *)self _setupImageView];
        }
      }
    }

    else
    {
      v15 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:self->_image];
      v16 = self->_imageView;
      self->_imageView = v15;

      [(PKTransactionHistoryTransactionGroupHeaderCell *)self _setupImageView];
    }

    v20 = [(UIImageView *)self->_imageView superview];

    if (!v20)
    {
      v21 = [(PKTransactionHistoryTransactionGroupHeaderCell *)self contentView];
      [v21 addSubview:self->_imageView];
    }

    v22 = [(UIView *)self->_imageBackgroundView superview];

    if (!v22)
    {
      v23 = [(PKTransactionHistoryTransactionGroupHeaderCell *)self contentView];
      [v23 insertSubview:self->_imageBackgroundView below:self->_imageView];

LABEL_18:
      [(PKTransactionHistoryTransactionGroupHeaderCell *)self setNeedsLayout];
      [(PKTransactionHistoryTransactionGroupHeaderCell *)self layoutIfNeeded];
      goto LABEL_21;
    }

    if (!v20)
    {
      goto LABEL_18;
    }
  }

LABEL_21:
}

uint64_t __68__PKTransactionHistoryTransactionGroupHeaderCell_setImage_animated___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 800) setAlpha:1.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:0.0];
}

- (void)_setupImageView
{
  [(UIImageView *)self->_imageView setContentMode:1];
  [(UIImageView *)self->_imageView setClipsToBounds:1];
  [(UIImageView *)self->_imageView _setContinuousCornerRadius:8.0];
  v3 = [(UIImageView *)self->_imageView layer];
  v4 = 0.0;
  if (self->_strokeImage)
  {
    v4 = PKUIPixelLength();
  }

  [v3 setBorderWidth:v4];

  [(PKTransactionHistoryTransactionGroupHeaderCell *)self _updateImageViewDynamicColors];
  imageBackgroundView = self->_imageBackgroundView;

  [(UIView *)imageBackgroundView _setContinuousCornerRadius:8.0];
}

- (void)setStrokeImage:(BOOL)a3
{
  if (self->_strokeImage == !a3)
  {
    self->_strokeImage = a3;
    imageView = self->_imageView;
    if (imageView)
    {
      v6 = [(UIImageView *)imageView layer];
      v5 = 0.0;
      if (self->_strokeImage)
      {
        v5 = PKUIPixelLength();
      }

      [v6 setBorderWidth:v5];
    }
  }
}

@end