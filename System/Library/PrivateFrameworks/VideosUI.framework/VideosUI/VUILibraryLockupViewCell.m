@interface VUILibraryLockupViewCell
+ (void)configureImageViewArtworkForLockupCell:(id)a3 withMedia:(id)a4 width:(double)a5;
+ (void)configureLockupCell:(id)a3 withMedia:(id)a4 width:(double)a5 forMetrics:(BOOL)a6;
- (CGSize)sizeThatFits:(CGSize)a3;
- (VUILibraryLockupViewCell)initWithFrame:(CGRect)a3;
- (double)bottomMarginWithBaselineMargin:(double)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setExpirationLabel:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setImageView:(id)a3;
- (void)setTitleLabel:(id)a3;
@end

@implementation VUILibraryLockupViewCell

+ (void)configureLockupCell:(id)a3 withMedia:(id)a4 width:(double)a5 forMetrics:(BOOL)a6
{
  v20 = a3;
  v9 = a4;
  [v20 setImageAspectRatio:0.5625];
  if (!a6)
  {
    [VUILibraryLockupViewCell configureImageViewArtworkForLockupCell:v20 withMedia:v9 width:a5];
  }

  v10 = objc_alloc_init(VUITextLayout);
  [(VUITextLayout *)v10 setTextStyle:21];
  [(VUITextLayout *)v10 setFontWeight:0];
  v11 = [MEMORY[0x1E69DC888] vui_primaryTextColor];
  [(VUITextLayout *)v10 setColor:v11];

  [(VUITextLayout *)v10 setNumberOfLines:1];
  v12 = [v9 title];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = &stru_1F5DB25C0;
  }

  v15 = [v20 titleLabel];
  v16 = [VUILabel labelWithString:v14 textLayout:v10 existingLabel:v15];
  [v20 setTitleLabel:v16];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = [v9 rentalExpirationDate];

    if (v17)
    {
      v18 = [v9 rentalExpirationDate];
      v19 = [VUIRentalExpirationLabel labelWithExpirationDate:v18 textLayout:0 existingLabel:0 locStringPrefix:@"EXPIRATION_LEFT"];
      [v20 setExpirationLabel:v19];
    }
  }

  [v20 setExclusiveTouch:1];
  [v20 setHideTitleLabel:0];
}

+ (void)configureImageViewArtworkForLockupCell:(id)a3 withMedia:(id)a4 width:(double)a5
{
  v31 = a3;
  v7 = a4;
  v8 = [v31 imageView];
  if (v8)
  {
    v9 = [v31 imageView];
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E69DF740]);
  }

  v10 = v9;

  [VUIUtilities imageCornerRadiusWithStyle:1];
  v12 = v11;
  v13 = [v31 contentView];
  v14 = [v13 traitCollection];
  v15 = +[VUIUtilities placeholderImageResourceName:](VUIUtilities, "placeholderImageResourceName:", [v14 userInterfaceStyle]);
  v16 = [VUIImageResourceMap imageForResourceName:v15];

  v17 = [VUIMediaEntityImageLoadParamsFactory imageLoadParamsWithMediaEntity:v7 imageType:0];
  [v31 imageAspectRatio];
  v19 = ceil(v18 * a5);
  [v10 setUserInteractionEnabled:0];
  v20 = [MEMORY[0x1E69DC888] vui_imageHighlightColor];
  [v10 _setFocusedColor:v20];

  [v10 setPlaceholderImage:v16];
  v21 = NSSelectorFromString(&cfstr_Artworkurl.isa);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (!v17)
    {
      goto LABEL_11;
    }

    v27 = MEMORY[0x1E69DF728];
    v28 = [MEMORY[0x1E69DC888] vui_imageBorderColor];
    v22 = [v27 decoratorWithOutlineColor:v28 outlineWidths:{1.0, 1.0, 1.0, 1.0}];

    v29 = objc_alloc(MEMORY[0x1E69DF730]);
    v30 = [v7 mediaLibrary];
    v23 = [v29 initWithObject:v17 imageLoader:v30 groupType:0];

    [v22 setScaleToSize:{a5, v19}];
    [MEMORY[0x1E69DF6D0] radiiFromRadius:v12];
    [v22 setCornerRadii:?];
    [v23 setDecorator:v22];
    [v10 setImageProxy:v23];
    [v10 setCornerRadius:v12];
    goto LABEL_9;
  }

  v22 = ([v7 methodForSelector:v21])(v7, v21);
  if ([v22 length])
  {
    v23 = [objc_alloc(MEMORY[0x1E69DF770]) initWithSrc:v22 size:{a5, v19}];
    v24 = [VUIUtilities placeholderImageResourceName:0];
    [v23 setPlaceholderSrc:v24];

    [MEMORY[0x1E69DF6D0] radiiFromRadius:v12];
    [v23 setBorderRadii:?];
    [v23 setExtension:@"jpeg"];
    v25 = [MEMORY[0x1E69DC888] vui_imageBorderColor];
    [v23 setBackgroundColor:v25];

    v26 = [MEMORY[0x1E69DF720] makeImageViewWithDescriptor:v23 existingView:v10];

    v10 = v26;
LABEL_9:
  }

LABEL_11:
  [v31 setImageView:v10];
}

- (VUILibraryLockupViewCell)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = VUILibraryLockupViewCell;
  return [(VUILibraryLockupViewCell *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

- (void)setImageView:(id)a3
{
  v5 = a3;
  if (self->_imageView != v5)
  {
    v7 = v5;
    [(VUIImageView *)v5 removeFromSuperview];
    objc_storeStrong(&self->_imageView, a3);
    if (self->_imageView)
    {
      v6 = [(VUILibraryLockupViewCell *)self contentView];
      [v6 addSubview:self->_imageView];
    }

    [(VUILibraryLockupViewCell *)self setNeedsLayout];
    v5 = v7;
  }
}

- (void)setTitleLabel:(id)a3
{
  v5 = a3;
  titleLabel = self->_titleLabel;
  if (titleLabel != v5)
  {
    v8 = v5;
    [(VUILabel *)titleLabel removeFromSuperview];
    objc_storeStrong(&self->_titleLabel, a3);
    if (self->_titleLabel)
    {
      v7 = [(VUILibraryLockupViewCell *)self contentView];
      [v7 addSubview:self->_titleLabel];
    }

    [(VUILibraryLockupViewCell *)self setNeedsLayout];
    v5 = v8;
  }
}

- (void)setExpirationLabel:(id)a3
{
  v5 = a3;
  expirationLabel = self->_expirationLabel;
  if (expirationLabel != v5)
  {
    v9 = v5;
    [(VUIRentalExpirationLabel *)expirationLabel removeFromSuperview];
    [(VUIRentalExpirationLabel *)self->_expirationLabel setDelegate:0];
    objc_storeStrong(&self->_expirationLabel, a3);
    v7 = self->_expirationLabel;
    if (v7)
    {
      [(VUIRentalExpirationLabel *)v7 setDelegate:self];
      v8 = [(VUILibraryLockupViewCell *)self contentView];
      [v8 addSubview:self->_expirationLabel];
    }

    [(VUILibraryLockupViewCell *)self setNeedsLayout];
    v5 = v9;
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = VUILibraryLockupViewCell;
  [(VUILibraryLockupViewCell *)&v3 prepareForReuse];
  [(VUIRentalExpirationLabel *)self->_expirationLabel invalidateTimer];
  [(VUIImageView *)self->_imageView setImage:0];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v5 = ceil(a3.width * self->_imageAspectRatio);
  if (![(VUILibraryLockupViewCell *)self hideTitleLabel])
  {
    [(VUILabel *)self->_titleLabel sizeThatFits:width, 1.79769313e308];
    v7 = v6;
    [(VUILabel *)self->_titleLabel topMarginWithBaselineMargin:20.0];
    v5 = v5 + v7 + v8;
  }

  expirationLabel = self->_expirationLabel;
  if (expirationLabel)
  {
    [(VUILabel *)expirationLabel sizeThatFits:width, 1.79769313e308];
    v11 = v10;
    [(VUILabel *)self->_expirationLabel topMarginToLabel:self->_titleLabel withBaselineMargin:20.0];
    v13 = v12;
    if ([(VUILibraryLockupViewCell *)self hideTitleLabel])
    {
      [(VUILabel *)self->_expirationLabel topMarginWithBaselineMargin:20.0];
      v13 = v14;
    }

    v5 = v5 + v11 + v13;
  }

  v15 = width;
  v16 = v5;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = VUILibraryLockupViewCell;
  [(VUILibraryLockupViewCell *)&v16 layoutSubviews];
  [(VUILibraryLockupViewCell *)self bounds];
  Width = CGRectGetWidth(v17);
  v4 = ceil(Width * self->_imageAspectRatio);
  [(VUIImageView *)self->_imageView setFrame:0.0, 0.0, Width, v4];
  [(VUILabel *)self->_expirationLabel topMarginToLabel:self->_titleLabel withBaselineMargin:20.0];
  v6 = v5;
  [(VUILabel *)self->_expirationLabel topMarginWithBaselineMargin:20.0];
  v8 = v7;
  if ([(VUILibraryLockupViewCell *)self hideTitleLabel])
  {
    v9 = v4 + v8;
  }

  else
  {
    [(VUILabel *)self->_titleLabel sizeThatFits:Width, 1.79769313e308];
    v11 = v10;
    [(VUILabel *)self->_titleLabel topMarginWithBaselineMargin:20.0];
    v13 = v4 + v12;
    [(VUILabel *)self->_titleLabel setFrame:0.0, v13, Width, v11];
    v9 = v6 + v11 + v13;
  }

  expirationLabel = self->_expirationLabel;
  if (expirationLabel)
  {
    [(VUILabel *)expirationLabel sizeThatFits:Width, 1.79769313e308];
    [(VUIRentalExpirationLabel *)self->_expirationLabel setFrame:0.0, v9, Width, v15];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = VUILibraryLockupViewCell;
  [(VUILibraryLockupViewCell *)&v16 setHighlighted:?];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(VUILibraryLockupViewCell *)self contentView];
  v6 = [v5 subviews];

  v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 setHighlighted:v3];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v8);
  }
}

- (double)bottomMarginWithBaselineMargin:(double)a3
{
  expirationLabel = self->_expirationLabel;
  if (expirationLabel)
  {
    v5 = expirationLabel;
  }

  else
  {
    v5 = self->_titleLabel;
    if (!v5)
    {
      v5 = [(VUILibraryLockupViewCell *)self traitCollection];
      [VUIUtilities scaleContentSizeValue:v5 forTraitCollection:a3];
      goto LABEL_5;
    }
  }

  [(VUILabel *)v5 bottomMarginWithBaselineMargin:a3];
LABEL_5:
  v8 = v7;

  return v8;
}

@end