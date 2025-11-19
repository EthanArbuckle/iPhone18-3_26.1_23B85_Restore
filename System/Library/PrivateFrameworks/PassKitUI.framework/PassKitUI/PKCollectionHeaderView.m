@interface PKCollectionHeaderView
- (CGSize)_layoutWithBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (double)heightOfHeaderWithoutText;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBottomPadding:(double)a3;
- (void)setImage:(id)a3;
- (void)setPrimaryText:(id)a3;
- (void)setSecondaryText:(id)a3;
- (void)setTertiaryText:(id)a3;
- (void)setTopPadding:(double)a3;
@end

@implementation PKCollectionHeaderView

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKCollectionHeaderView;
  [(PKCollectionHeaderView *)&v4 layoutSubviews];
  v3 = [(PKCollectionHeaderView *)self contentView];
  [v3 bounds];
  [(PKCollectionHeaderView *)self _layoutWithBounds:0 isTemplateLayout:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PKCollectionHeaderView *)self _layoutWithBounds:1 isTemplateLayout:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4
{
  width = a3.size.width;
  v19 = 0;
  v20 = &v19;
  v6 = self->_topPadding + 0.0;
  v21 = 0x2020000000;
  v22 = v6;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __61__PKCollectionHeaderView__layoutWithBounds_isTemplateLayout___block_invoke;
  v17[3] = &unk_1E8012118;
  v17[4] = &v19;
  *&v17[5] = a3.origin.x + 12.0;
  *&v17[6] = a3.origin.y + 0.0;
  *&v17[7] = a3.size.width + -24.0;
  v17[8] = *&a3.size.height;
  v18 = a4;
  v7 = _Block_copy(v17);
  v7[2](v7, self->_imageView, 90.0, 0.0);
  if (self->_imageView)
  {
    v8.n128_f64[0] = 10.0;
  }

  else
  {
    v8.n128_f64[0] = 0.0;
  }

  (v7[2])(v7, self->_primaryLabel, 0.0, v8);
  v10 = 4.0;
  v11.n128_u64[0] = 0;
  if (self->_primaryLabel)
  {
    v9.n128_f64[0] = 4.0;
  }

  else
  {
    v9.n128_f64[0] = 0.0;
  }

  (v7[2])(v7, self->_secondaryLabel, v11, v9);
  if (!self->_secondaryLabel)
  {
    if (self->_primaryLabel)
    {
      v10 = 4.0;
    }

    else
    {
      v10 = 0.0;
    }
  }

  v7[2](v7, self->_tertiaryLabel, 0.0, v10);
  v12 = v20;
  v13 = v20[3] + 0.0;
  v20[3] = v13;
  v14 = v13 + self->_bottomPadding;
  v12[3] = v14;

  _Block_object_dispose(&v19, 8);
  v15 = width;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

void __61__PKCollectionHeaderView__layoutWithBounds_isTemplateLayout___block_invoke(uint64_t a1, void *a2, double a3, double a4)
{
  v7 = a2;
  if (v7)
  {
    v9 = v7;
    [v7 frame];
    *(*(*(a1 + 32) + 8) + 24) = *(*(*(a1 + 32) + 8) + 24) + a4;
    if (a3 <= 0.0)
    {
      [v9 sizeThatFits:{*(a1 + 56), *(a1 + 64)}];
    }

    PKRectCenteredXInRect();
    *(*(*(a1 + 32) + 8) + 24) = v8 + *(*(*(a1 + 32) + 8) + 24);
    v7 = v9;
    if ((*(a1 + 72) & 1) == 0)
    {
      [v9 setFrame:?];
      v7 = v9;
    }
  }
}

- (double)heightOfHeaderWithoutText
{
  [(UIImageView *)self->_imageView frame];

  return CGRectGetMaxY(*&v2);
}

- (void)setPrimaryText:(id)a3
{
  v5 = a3;
  primaryText = self->_primaryText;
  v18 = v5;
  v7 = primaryText;
  if (v7 == v18)
  {

LABEL_13:
    v9 = v18;
    goto LABEL_14;
  }

  if (!v18 || !v7)
  {

    goto LABEL_8;
  }

  v8 = [(NSString *)v18 isEqualToString:v7];

  v9 = v18;
  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_primaryText, a3);
    v10 = [(NSString *)self->_primaryText length];
    primaryLabel = self->_primaryLabel;
    if (v10)
    {
      if (!primaryLabel)
      {
        v12 = objc_alloc(MEMORY[0x1E69DCC10]);
        v13 = [v12 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
        v14 = self->_primaryLabel;
        self->_primaryLabel = v13;

        v15 = self->_primaryLabel;
        v16 = PKFontForDefaultDesign(*MEMORY[0x1E69DDDB8], *MEMORY[0x1E69DDC30], 2, 0);
        [(UILabel *)v15 setFont:v16];

        [(UILabel *)self->_primaryLabel setNumberOfLines:0];
        [(UILabel *)self->_primaryLabel setTextAlignment:1];
        [(PKCollectionHeaderView *)self addSubview:self->_primaryLabel];
      }
    }

    else
    {
      [(UILabel *)primaryLabel removeFromSuperview];
      v17 = self->_primaryLabel;
      self->_primaryLabel = 0;
    }

    [(UILabel *)self->_primaryLabel setText:self->_primaryText];
    [(PKCollectionHeaderView *)self setNeedsLayout];
    goto LABEL_13;
  }

LABEL_14:
}

- (void)setSecondaryText:(id)a3
{
  v5 = a3;
  secondaryText = self->_secondaryText;
  v20 = v5;
  v7 = secondaryText;
  if (v7 == v20)
  {

LABEL_13:
    v9 = v20;
    goto LABEL_14;
  }

  if (!v20 || !v7)
  {

    goto LABEL_8;
  }

  v8 = [(NSString *)v20 isEqualToString:v7];

  v9 = v20;
  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_secondaryText, a3);
    v10 = [(NSString *)self->_secondaryText length];
    secondaryLabel = self->_secondaryLabel;
    if (v10)
    {
      if (!secondaryLabel)
      {
        v12 = objc_alloc(MEMORY[0x1E69DCC10]);
        v13 = [v12 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
        v14 = self->_secondaryLabel;
        self->_secondaryLabel = v13;

        v15 = self->_secondaryLabel;
        v16 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], *MEMORY[0x1E69DDC38]);
        [(UILabel *)v15 setFont:v16];

        [(UILabel *)self->_secondaryLabel setNumberOfLines:0];
        [(UILabel *)self->_secondaryLabel setTextAlignment:1];
        v17 = self->_secondaryLabel;
        v18 = [MEMORY[0x1E69DC888] secondaryLabelColor];
        [(UILabel *)v17 setTextColor:v18];

        [(PKCollectionHeaderView *)self addSubview:self->_secondaryLabel];
      }
    }

    else
    {
      [(UILabel *)secondaryLabel removeFromSuperview];
      v19 = self->_secondaryLabel;
      self->_secondaryLabel = 0;
    }

    [(UILabel *)self->_secondaryLabel setText:self->_secondaryText];
    [(PKCollectionHeaderView *)self setNeedsLayout];
    goto LABEL_13;
  }

LABEL_14:
}

- (void)setTertiaryText:(id)a3
{
  v5 = a3;
  tertiaryText = self->_tertiaryText;
  v20 = v5;
  v7 = tertiaryText;
  if (v7 == v20)
  {

LABEL_13:
    v9 = v20;
    goto LABEL_14;
  }

  if (!v20 || !v7)
  {

    goto LABEL_8;
  }

  v8 = [(NSString *)v20 isEqualToString:v7];

  v9 = v20;
  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_tertiaryText, a3);
    v10 = [(NSString *)self->_tertiaryText length];
    tertiaryLabel = self->_tertiaryLabel;
    if (v10)
    {
      if (!tertiaryLabel)
      {
        v12 = objc_alloc(MEMORY[0x1E69DCC10]);
        v13 = [v12 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
        v14 = self->_tertiaryLabel;
        self->_tertiaryLabel = v13;

        v15 = self->_tertiaryLabel;
        v16 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], *MEMORY[0x1E69DDC38]);
        [(UILabel *)v15 setFont:v16];

        [(UILabel *)self->_tertiaryLabel setNumberOfLines:0];
        [(UILabel *)self->_tertiaryLabel setTextAlignment:1];
        v17 = self->_tertiaryLabel;
        v18 = [MEMORY[0x1E69DC888] secondaryLabelColor];
        [(UILabel *)v17 setTextColor:v18];

        [(PKCollectionHeaderView *)self addSubview:self->_tertiaryLabel];
      }
    }

    else
    {
      [(UILabel *)tertiaryLabel removeFromSuperview];
      v19 = self->_tertiaryLabel;
      self->_tertiaryLabel = 0;
    }

    [(UILabel *)self->_tertiaryLabel setText:self->_tertiaryText];
    [(PKCollectionHeaderView *)self setNeedsLayout];
    goto LABEL_13;
  }

LABEL_14:
}

- (void)setTopPadding:(double)a3
{
  if (self->_topPadding != a3)
  {
    self->_topPadding = a3;
    [(PKCollectionHeaderView *)self setNeedsLayout];
  }
}

- (void)setBottomPadding:(double)a3
{
  if (self->_bottomPadding != a3)
  {
    self->_bottomPadding = a3;
    [(PKCollectionHeaderView *)self setNeedsLayout];
  }
}

- (void)setImage:(id)a3
{
  v5 = a3;
  if (self->_image != v5)
  {
    v11 = v5;
    objc_storeStrong(&self->_image, a3);
    imageView = self->_imageView;
    if (self->_image)
    {
      if (!imageView)
      {
        v7 = objc_alloc(MEMORY[0x1E69DCAE0]);
        v8 = [v7 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
        v9 = self->_imageView;
        self->_imageView = v8;

        [(UIImageView *)self->_imageView setContentMode:1];
        [(UIImageView *)self->_imageView setClipsToBounds:1];
        [(UIImageView *)self->_imageView _setContinuousCornerRadius:12.0];
        [(PKCollectionHeaderView *)self addSubview:self->_imageView];
      }
    }

    else
    {
      [(UIImageView *)imageView removeFromSuperview];
      v10 = self->_imageView;
      self->_imageView = 0;
    }

    [(UIImageView *)self->_imageView setImage:self->_image];
    [(PKCollectionHeaderView *)self setNeedsLayout];
    v5 = v11;
  }
}

- (void)prepareForReuse
{
  v11.receiver = self;
  v11.super_class = PKCollectionHeaderView;
  [(PKCollectionHeaderView *)&v11 prepareForReuse];
  [(UILabel *)self->_primaryLabel removeFromSuperview];
  primaryLabel = self->_primaryLabel;
  self->_primaryLabel = 0;

  primaryText = self->_primaryText;
  self->_primaryText = 0;

  [(UILabel *)self->_secondaryLabel removeFromSuperview];
  secondaryLabel = self->_secondaryLabel;
  self->_secondaryLabel = 0;

  secondaryText = self->_secondaryText;
  self->_secondaryText = 0;

  [(UILabel *)self->_tertiaryLabel removeFromSuperview];
  tertiaryLabel = self->_tertiaryLabel;
  self->_tertiaryLabel = 0;

  tertiaryText = self->_tertiaryText;
  self->_tertiaryText = 0;

  self->_topPadding = 0.0;
  self->_bottomPadding = 0.0;
  image = self->_image;
  self->_image = 0;

  [(UIImageView *)self->_imageView removeFromSuperview];
  imageView = self->_imageView;
  self->_imageView = 0;
}

@end