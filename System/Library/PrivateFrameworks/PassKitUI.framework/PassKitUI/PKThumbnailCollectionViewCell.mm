@interface PKThumbnailCollectionViewCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKThumbnailCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)_resetFonts;
- (void)_setupImageView:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setImage:(id)a3 animated:(BOOL)a4;
- (void)setStrokeImage:(BOOL)a3;
- (void)setTitle:(id)a3;
- (void)showAvatarView:(BOOL)a3;
@end

@implementation PKThumbnailCollectionViewCell

- (PKThumbnailCollectionViewCell)initWithFrame:(CGRect)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = PKThumbnailCollectionViewCell;
  v3 = [(PKDashboardCollectionViewCell *)&v16 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(PKThumbnailCollectionViewCell *)v3 contentView];
    v6 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v4->_imageView;
    v4->_imageView = v6;

    [(PKThumbnailCollectionViewCell *)v4 _setupImageView:v4->_imageView];
    [v5 addSubview:v4->_imageView];
    v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    labelTitle = v4->_labelTitle;
    v4->_labelTitle = v8;

    [(UILabel *)v4->_labelTitle setNumberOfLines:2];
    [(UILabel *)v4->_labelTitle setTextAlignment:1];
    LODWORD(v10) = 1036831949;
    [(UILabel *)v4->_labelTitle _setHyphenationFactor:v10];
    [(UILabel *)v4->_labelTitle setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
    [v5 addSubview:v4->_labelTitle];
    v11 = [objc_alloc(getCNAvatarViewClass_2()) initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    avatarView = v4->_avatarView;
    v4->_avatarView = v11;

    [(CNAvatarView *)v4->_avatarView setUserInteractionEnabled:0];
    [(CNAvatarView *)v4->_avatarView setAsynchronousRendering:1];
    [(CNAvatarView *)v4->_avatarView setShowsContactOnTap:0];
    [(CNAvatarView *)v4->_avatarView setHidden:1];
    [v5 addSubview:v4->_avatarView];
    [(PKThumbnailCollectionViewCell *)v4 _resetFonts];
    v17[0] = objc_opt_class();
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    v14 = [(PKThumbnailCollectionViewCell *)v4 registerForTraitChanges:v13 withHandler:&__block_literal_global_187];

    [(PKThumbnailCollectionViewCell *)v4 setAccessibilityIdentifier:*MEMORY[0x1E69B9620]];
  }

  return v4;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = PKThumbnailCollectionViewCell;
  [(PKDashboardCollectionViewCell *)&v4 prepareForReuse];
  identifier = self->_identifier;
  self->_identifier = 0;
}

- (void)_resetFonts
{
  labelTitle = self->_labelTitle;
  v3 = PKFontForDefaultDesign(*MEMORY[0x1E6965AC0], *MEMORY[0x1E69DDC58]);
  [(UILabel *)labelTitle setFont:v3];
}

- (void)_setupImageView:(id)a3
{
  v4 = a3;
  [v4 setContentMode:1];
  v9 = [v4 layer];

  [v9 setCornerCurve:*MEMORY[0x1E69796E8]];
  v5 = _UISolariumFeatureFlagEnabled();
  v6 = 6.0;
  if (v5)
  {
    v6 = 13.0;
  }

  [v9 setCornerRadius:v6];
  [v9 setMasksToBounds:1];
  v7 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  [v9 setBorderColor:{objc_msgSend(v7, "CGColor")}];

  v8 = 0.0;
  if (self->_strokeImage)
  {
    v8 = PKUIPixelLength();
  }

  [v9 setBorderWidth:v8];
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

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = PKThumbnailCollectionViewCell;
  [(PKDashboardCollectionViewCell *)&v12 layoutSubviews];
  [(PKThumbnailCollectionViewCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIImageView *)self->_imageView setFrame:?];
  [(CNAvatarView *)self->_avatarView setFrame:v4, v6, v8, v8];
  [(UILabel *)self->_labelTitle sizeThatFits:v8, v10 - v8 + -10.0];
  [(UILabel *)self->_labelTitle setFrame:v4, v6 + v8 + 10.0, v8, v11];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(UILabel *)self->_labelTitle font];
  [v5 lineHeight];
  v7 = width + 10.0 + v6 * 2.0;

  v8 = fmin(v7, height);
  v9 = width;
  result.height = v8;
  result.width = v9;
  return result;
}

- (void)showAvatarView:(BOOL)a3
{
  v3 = a3;
  [(CNAvatarView *)self->_avatarView setHidden:!a3];
  imageView = self->_imageView;

  [(UIImageView *)imageView setHidden:v3];
}

- (void)setImage:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (self->_image != v7)
  {
    objc_storeStrong(&self->_image, a3);
    if (self->_image)
    {
      [(PKThumbnailCollectionViewCell *)self showAvatarView:0];
      imageView = self->_imageView;
      if (imageView)
      {
        if (v4)
        {
          v9 = imageView;
          v10 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:self->_image];
          v11 = self->_imageView;
          self->_imageView = v10;

          [(PKThumbnailCollectionViewCell *)self _setupImageView:self->_imageView];
          [(UIImageView *)self->_imageView setImage:self->_image];
          [(UIImageView *)self->_imageView setAlpha:0.0];
          v12 = MEMORY[0x1E69DD250];
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __51__PKThumbnailCollectionViewCell_setImage_animated___block_invoke;
          v24[3] = &unk_1E8010A10;
          v24[4] = self;
          v25 = v9;
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __51__PKThumbnailCollectionViewCell_setImage_animated___block_invoke_2;
          v22[3] = &unk_1E8011D28;
          v23 = v25;
          v13 = v25;
          [v12 pkui_animateUsingOptions:4 animations:v24 completion:v22];
        }

        else
        {
          v13 = [(UIImageView *)imageView image];
          [(UIImageView *)self->_imageView setImage:self->_image];
          v17 = [(UIImageView *)self->_imageView image];

          if (v17 == v13)
          {
            v18 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:self->_image];
            v19 = self->_imageView;
            self->_imageView = v18;

            [(PKThumbnailCollectionViewCell *)self _setupImageView:self->_imageView];
          }
        }
      }

      else
      {
        v15 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:self->_image];
        v16 = self->_imageView;
        self->_imageView = v15;

        [(PKThumbnailCollectionViewCell *)self _setupImageView:self->_imageView];
      }

      v20 = [(UIImageView *)self->_imageView superview];

      if (!v20)
      {
        v21 = [(PKThumbnailCollectionViewCell *)self contentView];
        [v21 addSubview:self->_imageView];

        goto LABEL_14;
      }
    }

    else
    {
      v14 = [(UIImageView *)self->_imageView superview];

      if (v14)
      {
        [(UIImageView *)self->_imageView removeFromSuperview];
LABEL_14:
        [(PKThumbnailCollectionViewCell *)self setNeedsLayout];
      }
    }
  }
}

uint64_t __51__PKThumbnailCollectionViewCell_setImage_animated___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 768) setAlpha:1.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:0.0];
}

- (void)setTitle:(id)a3
{
  v5 = a3;
  v6 = self->_title;
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
    objc_storeStrong(&self->_title, a3);
    [(UILabel *)self->_labelTitle setText:v9];
    [(PKThumbnailCollectionViewCell *)self setNeedsLayout];
  }

LABEL_9:
}

@end