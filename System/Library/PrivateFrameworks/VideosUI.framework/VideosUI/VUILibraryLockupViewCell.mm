@interface VUILibraryLockupViewCell
+ (void)configureImageViewArtworkForLockupCell:(id)cell withMedia:(id)media width:(double)width;
+ (void)configureLockupCell:(id)cell withMedia:(id)media width:(double)width forMetrics:(BOOL)metrics;
- (CGSize)sizeThatFits:(CGSize)fits;
- (VUILibraryLockupViewCell)initWithFrame:(CGRect)frame;
- (double)bottomMarginWithBaselineMargin:(double)margin;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setExpirationLabel:(id)label;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setImageView:(id)view;
- (void)setTitleLabel:(id)label;
@end

@implementation VUILibraryLockupViewCell

+ (void)configureLockupCell:(id)cell withMedia:(id)media width:(double)width forMetrics:(BOOL)metrics
{
  cellCopy = cell;
  mediaCopy = media;
  [cellCopy setImageAspectRatio:0.5625];
  if (!metrics)
  {
    [VUILibraryLockupViewCell configureImageViewArtworkForLockupCell:cellCopy withMedia:mediaCopy width:width];
  }

  v10 = objc_alloc_init(VUITextLayout);
  [(VUITextLayout *)v10 setTextStyle:21];
  [(VUITextLayout *)v10 setFontWeight:0];
  vui_primaryTextColor = [MEMORY[0x1E69DC888] vui_primaryTextColor];
  [(VUITextLayout *)v10 setColor:vui_primaryTextColor];

  [(VUITextLayout *)v10 setNumberOfLines:1];
  title = [mediaCopy title];
  v13 = title;
  if (title)
  {
    v14 = title;
  }

  else
  {
    v14 = &stru_1F5DB25C0;
  }

  titleLabel = [cellCopy titleLabel];
  v16 = [VUILabel labelWithString:v14 textLayout:v10 existingLabel:titleLabel];
  [cellCopy setTitleLabel:v16];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    rentalExpirationDate = [mediaCopy rentalExpirationDate];

    if (rentalExpirationDate)
    {
      rentalExpirationDate2 = [mediaCopy rentalExpirationDate];
      v19 = [VUIRentalExpirationLabel labelWithExpirationDate:rentalExpirationDate2 textLayout:0 existingLabel:0 locStringPrefix:@"EXPIRATION_LEFT"];
      [cellCopy setExpirationLabel:v19];
    }
  }

  [cellCopy setExclusiveTouch:1];
  [cellCopy setHideTitleLabel:0];
}

+ (void)configureImageViewArtworkForLockupCell:(id)cell withMedia:(id)media width:(double)width
{
  cellCopy = cell;
  mediaCopy = media;
  imageView = [cellCopy imageView];
  if (imageView)
  {
    imageView2 = [cellCopy imageView];
  }

  else
  {
    imageView2 = objc_alloc_init(MEMORY[0x1E69DF740]);
  }

  v10 = imageView2;

  [VUIUtilities imageCornerRadiusWithStyle:1];
  v12 = v11;
  contentView = [cellCopy contentView];
  traitCollection = [contentView traitCollection];
  v15 = +[VUIUtilities placeholderImageResourceName:](VUIUtilities, "placeholderImageResourceName:", [traitCollection userInterfaceStyle]);
  v16 = [VUIImageResourceMap imageForResourceName:v15];

  v17 = [VUIMediaEntityImageLoadParamsFactory imageLoadParamsWithMediaEntity:mediaCopy imageType:0];
  [cellCopy imageAspectRatio];
  v19 = ceil(v18 * width);
  [v10 setUserInteractionEnabled:0];
  vui_imageHighlightColor = [MEMORY[0x1E69DC888] vui_imageHighlightColor];
  [v10 _setFocusedColor:vui_imageHighlightColor];

  [v10 setPlaceholderImage:v16];
  v21 = NSSelectorFromString(&cfstr_Artworkurl.isa);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (!v17)
    {
      goto LABEL_11;
    }

    v27 = MEMORY[0x1E69DF728];
    vui_imageBorderColor = [MEMORY[0x1E69DC888] vui_imageBorderColor];
    v22 = [v27 decoratorWithOutlineColor:vui_imageBorderColor outlineWidths:{1.0, 1.0, 1.0, 1.0}];

    v29 = objc_alloc(MEMORY[0x1E69DF730]);
    mediaLibrary = [mediaCopy mediaLibrary];
    v23 = [v29 initWithObject:v17 imageLoader:mediaLibrary groupType:0];

    [v22 setScaleToSize:{width, v19}];
    [MEMORY[0x1E69DF6D0] radiiFromRadius:v12];
    [v22 setCornerRadii:?];
    [v23 setDecorator:v22];
    [v10 setImageProxy:v23];
    [v10 setCornerRadius:v12];
    goto LABEL_9;
  }

  v22 = ([mediaCopy methodForSelector:v21])(mediaCopy, v21);
  if ([v22 length])
  {
    v23 = [objc_alloc(MEMORY[0x1E69DF770]) initWithSrc:v22 size:{width, v19}];
    v24 = [VUIUtilities placeholderImageResourceName:0];
    [v23 setPlaceholderSrc:v24];

    [MEMORY[0x1E69DF6D0] radiiFromRadius:v12];
    [v23 setBorderRadii:?];
    [v23 setExtension:@"jpeg"];
    vui_imageBorderColor2 = [MEMORY[0x1E69DC888] vui_imageBorderColor];
    [v23 setBackgroundColor:vui_imageBorderColor2];

    v26 = [MEMORY[0x1E69DF720] makeImageViewWithDescriptor:v23 existingView:v10];

    v10 = v26;
LABEL_9:
  }

LABEL_11:
  [cellCopy setImageView:v10];
}

- (VUILibraryLockupViewCell)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = VUILibraryLockupViewCell;
  return [(VUILibraryLockupViewCell *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

- (void)setImageView:(id)view
{
  viewCopy = view;
  if (self->_imageView != viewCopy)
  {
    v7 = viewCopy;
    [(VUIImageView *)viewCopy removeFromSuperview];
    objc_storeStrong(&self->_imageView, view);
    if (self->_imageView)
    {
      contentView = [(VUILibraryLockupViewCell *)self contentView];
      [contentView addSubview:self->_imageView];
    }

    [(VUILibraryLockupViewCell *)self setNeedsLayout];
    viewCopy = v7;
  }
}

- (void)setTitleLabel:(id)label
{
  labelCopy = label;
  titleLabel = self->_titleLabel;
  if (titleLabel != labelCopy)
  {
    v8 = labelCopy;
    [(VUILabel *)titleLabel removeFromSuperview];
    objc_storeStrong(&self->_titleLabel, label);
    if (self->_titleLabel)
    {
      contentView = [(VUILibraryLockupViewCell *)self contentView];
      [contentView addSubview:self->_titleLabel];
    }

    [(VUILibraryLockupViewCell *)self setNeedsLayout];
    labelCopy = v8;
  }
}

- (void)setExpirationLabel:(id)label
{
  labelCopy = label;
  expirationLabel = self->_expirationLabel;
  if (expirationLabel != labelCopy)
  {
    v9 = labelCopy;
    [(VUIRentalExpirationLabel *)expirationLabel removeFromSuperview];
    [(VUIRentalExpirationLabel *)self->_expirationLabel setDelegate:0];
    objc_storeStrong(&self->_expirationLabel, label);
    v7 = self->_expirationLabel;
    if (v7)
    {
      [(VUIRentalExpirationLabel *)v7 setDelegate:self];
      contentView = [(VUILibraryLockupViewCell *)self contentView];
      [contentView addSubview:self->_expirationLabel];
    }

    [(VUILibraryLockupViewCell *)self setNeedsLayout];
    labelCopy = v9;
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v5 = ceil(fits.width * self->_imageAspectRatio);
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

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v18 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = VUILibraryLockupViewCell;
  [(VUILibraryLockupViewCell *)&v16 setHighlighted:?];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  contentView = [(VUILibraryLockupViewCell *)self contentView];
  subviews = [contentView subviews];

  v7 = [subviews countByEnumeratingWithState:&v12 objects:v17 count:16];
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
          objc_enumerationMutation(subviews);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 setHighlighted:highlightedCopy];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [subviews countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v8);
  }
}

- (double)bottomMarginWithBaselineMargin:(double)margin
{
  expirationLabel = self->_expirationLabel;
  if (expirationLabel)
  {
    traitCollection = expirationLabel;
  }

  else
  {
    traitCollection = self->_titleLabel;
    if (!traitCollection)
    {
      traitCollection = [(VUILibraryLockupViewCell *)self traitCollection];
      [VUIUtilities scaleContentSizeValue:traitCollection forTraitCollection:margin];
      goto LABEL_5;
    }
  }

  [(VUILabel *)traitCollection bottomMarginWithBaselineMargin:margin];
LABEL_5:
  v8 = v7;

  return v8;
}

@end