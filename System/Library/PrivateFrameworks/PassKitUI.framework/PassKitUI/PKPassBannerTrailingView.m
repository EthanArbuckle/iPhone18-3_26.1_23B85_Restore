@interface PKPassBannerTrailingView
- (CGSize)sizeThatFits:(CGSize)a3;
- (uint64_t)_initWithStyle:(void *)a3 configuration:;
- (void)_updateImage;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PKPassBannerTrailingView

- (uint64_t)_initWithStyle:(void *)a3 configuration:
{
  v6 = a3;
  if (a1)
  {
    v15.receiver = a1;
    v15.super_class = PKPassBannerTrailingView;
    v7 = objc_msgSendSuper2(&v15, sel_initWithFrame_, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24));
    a1 = v7;
    if (v7)
    {
      *(v7 + 51) = a2;
      objc_storeStrong(v7 + 52, a3);
      v8 = *(a1 + 416);
      if (!v8)
      {
LABEL_10:
        [(PKPassBannerTrailingView *)a1 _updateImage];
        goto LABEL_11;
      }

      if (*(v8 + 8))
      {
        __break(1u);
      }

      else if (v6)
      {
        v9 = v6[3];
        goto LABEL_7;
      }

      v9 = 0;
LABEL_7:
      objc_storeStrong((a1 + 432), v9);
      v10 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:0];
      v11 = *(a1 + 440);
      *(a1 + 440) = v10;

      [a1 addSubview:*(a1 + 440)];
      v12 = *(a1 + 440);
      if (*(a1 + 432))
      {
        [*(a1 + 440) setTintColor:?];
      }

      else
      {
        v13 = [MEMORY[0x1E69DC888] labelColor];
        [v12 setTintColor:v13];
      }

      goto LABEL_10;
    }
  }

LABEL_11:

  return a1;
}

- (void)_updateImage
{
  if (a1)
  {
    if (*(a1 + 408))
    {
      v11 = [a1 traitCollection];
      v2 = [MEMORY[0x1E69DCAD8] sbui_systemApertureDefaultConfiguration];
      v3 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDDB8] scale:2];
      v4 = [v2 configurationByApplyingConfiguration:v3];
    }

    else
    {
      if (*(a1 + 424))
      {
        return;
      }

      v11 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC70]];
      v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD58] compatibleWithTraitCollection:?];
      v4 = [MEMORY[0x1E69DCAD8] configurationWithFont:v3 scale:3];
    }

    if (v11 && v4)
    {
      v5 = [v4 configurationWithTraitCollection:?];

      v6 = MEMORY[0x1E69DCAB8];
      v7 = *(a1 + 416);
      if (v7)
      {
        v7 = v7[2];
      }

      v8 = v7;
      v9 = [v6 _systemImageNamed:v8 withConfiguration:v5];
      v10 = *(a1 + 424);
      *(a1 + 424) = v9;
    }

    else
    {
      v8 = *(a1 + 424);
      *(a1 + 424) = 0;
      v5 = v4;
    }

    [*(a1 + 440) setImage:*(a1 + 424)];
    [a1 setNeedsLayout];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKPassBannerTrailingView;
  [(PKPassBannerTrailingView *)&v9 traitCollectionDidChange:v4];
  v5 = [(PKPassBannerTrailingView *)self traitCollection];
  if (!v4 || ([v4 preferredContentSizeCategory], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "preferredContentSizeCategory"), v7 = objc_claimAutoreleasedReturnValue(), v8 = UIContentSizeCategoryCompareToCategory(v6, v7), v7, v6, v8))
  {
    [(PKPassBannerTrailingView *)self _updateImage];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
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

  [(UIImage *)image pkui_alignmentSize:a3.width];
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