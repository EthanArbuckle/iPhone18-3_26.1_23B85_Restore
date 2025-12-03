@interface PKPassBannerTrailingView
- (CGSize)sizeThatFits:(CGSize)fits;
- (uint64_t)_initWithStyle:(void *)style configuration:;
- (void)_updateImage;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PKPassBannerTrailingView

- (uint64_t)_initWithStyle:(void *)style configuration:
{
  styleCopy = style;
  if (self)
  {
    v15.receiver = self;
    v15.super_class = PKPassBannerTrailingView;
    v7 = objc_msgSendSuper2(&v15, sel_initWithFrame_, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24));
    self = v7;
    if (v7)
    {
      *(v7 + 51) = a2;
      objc_storeStrong(v7 + 52, style);
      v8 = *(self + 416);
      if (!v8)
      {
LABEL_10:
        [(PKPassBannerTrailingView *)self _updateImage];
        goto LABEL_11;
      }

      if (*(v8 + 8))
      {
        __break(1u);
      }

      else if (styleCopy)
      {
        v9 = styleCopy[3];
        goto LABEL_7;
      }

      v9 = 0;
LABEL_7:
      objc_storeStrong((self + 432), v9);
      v10 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:0];
      v11 = *(self + 440);
      *(self + 440) = v10;

      [self addSubview:*(self + 440)];
      v12 = *(self + 440);
      if (*(self + 432))
      {
        [*(self + 440) setTintColor:?];
      }

      else
      {
        labelColor = [MEMORY[0x1E69DC888] labelColor];
        [v12 setTintColor:labelColor];
      }

      goto LABEL_10;
    }
  }

LABEL_11:

  return self;
}

- (void)_updateImage
{
  if (self)
  {
    if (*(self + 408))
    {
      traitCollection = [self traitCollection];
      sbui_systemApertureDefaultConfiguration = [MEMORY[0x1E69DCAD8] sbui_systemApertureDefaultConfiguration];
      v3 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDDB8] scale:2];
      v4 = [sbui_systemApertureDefaultConfiguration configurationByApplyingConfiguration:v3];
    }

    else
    {
      if (*(self + 424))
      {
        return;
      }

      traitCollection = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC70]];
      v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD58] compatibleWithTraitCollection:?];
      v4 = [MEMORY[0x1E69DCAD8] configurationWithFont:v3 scale:3];
    }

    if (traitCollection && v4)
    {
      v5 = [v4 configurationWithTraitCollection:?];

      v6 = MEMORY[0x1E69DCAB8];
      v7 = *(self + 416);
      if (v7)
      {
        v7 = v7[2];
      }

      v8 = v7;
      v9 = [v6 _systemImageNamed:v8 withConfiguration:v5];
      v10 = *(self + 424);
      *(self + 424) = v9;
    }

    else
    {
      v8 = *(self + 424);
      *(self + 424) = 0;
      v5 = v4;
    }

    [*(self + 440) setImage:*(self + 424)];
    [self setNeedsLayout];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = PKPassBannerTrailingView;
  [(PKPassBannerTrailingView *)&v9 traitCollectionDidChange:changeCopy];
  traitCollection = [(PKPassBannerTrailingView *)self traitCollection];
  if (!changeCopy || ([changeCopy preferredContentSizeCategory], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(traitCollection, "preferredContentSizeCategory"), v7 = objc_claimAutoreleasedReturnValue(), v8 = UIContentSizeCategoryCompareToCategory(v6, v7), v7, v6, v8))
  {
    [(PKPassBannerTrailingView *)self _updateImage];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  style = self->_style;
  image = self->_image;
  if (style == 1)
  {
    if (!image)
    {
      v5 = 1.0;
      v6 = 1.0;
      goto LABEL_8;
    }
  }

  else if (!image)
  {
    v5 = *MEMORY[0x1E695F060];
    v6 = *(MEMORY[0x1E695F060] + 8);
    goto LABEL_8;
  }

  [(UIImage *)image pkui_alignmentSize:fits.width];
  PKSizeRoundToPixel();
LABEL_8:
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = PKPassBannerTrailingView;
  [(PKPassBannerTrailingView *)&v13 layoutSubviews];
  if (self->_image)
  {
    [(PKPassBannerTrailingView *)self bounds];
    v7 = v11.n128_f64[0];
    v8 = v3.n128_f64[0];
    v9 = v4.n128_f64[0];
    v10 = v5.n128_f64[0];
    v11.n128_u64[1] = 0;
    image = self->_image;
    if (image)
    {
      [(UIImage *)image pkui_alignmentSizeThatFits:v4.n128_f64[0], v5.n128_f64[0]];
    }

    v11.n128_f64[0] = v7 + (v9 - 0.0) * 0.5 + 0.0;
    v3.n128_f64[0] = v8 + (v10 - 0.0) * 0.5 + 0.0;
    v4.n128_f64[0] = 0.0 - (0.0 + 0.0);
    v6.n128_f64[0] = 0.0 + 0.0;
    v5.n128_f64[0] = v4.n128_f64[0];
    PKRectRoundToPixel(v11, v3, v4, v5, v6);
    [(UIImageView *)self->_imageView setFrame:?];
  }
}

@end