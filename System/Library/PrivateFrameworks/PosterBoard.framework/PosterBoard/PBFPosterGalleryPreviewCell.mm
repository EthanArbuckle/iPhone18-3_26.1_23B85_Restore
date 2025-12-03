@interface PBFPosterGalleryPreviewCell
+ (CGSize)contentSizeForCellWithTitle:(BOOL)title interfaceOrientation:(int64_t)orientation spec:(id)spec;
+ (CGSize)contentSizeForCellWithTitleSize:(CGSize)size interfaceOrientation:(int64_t)orientation spec:(id)spec;
+ (CGSize)contentSizeForSmartAlbumCellWithTitle:(BOOL)title interfaceOrientation:(int64_t)orientation spec:(id)spec;
+ (CGSize)contentSizeForSmartAlbumCellWithTitleSize:(CGSize)size interfaceOrientation:(int64_t)orientation spec:(id)spec;
+ (CGSize)heroContentSizeForCellWithTitle:(BOOL)title interfaceOrientation:(int64_t)orientation spec:(id)spec;
+ (CGSize)heroContentSizeForCellWithTitleSize:(CGSize)size interfaceOrientation:(int64_t)orientation spec:(id)spec;
+ (double)maximumTitleHeightForFont:(id)font;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (NSAttributedString)attributedPosterTitle;
- (NSString)posterTitle;
- (PBFPosterGalleryPreviewView)posterPreviewView;
- (id)pbf_displayContext;
- (id)titleLabel;
- (void)_setMutableAttributedPosterTitle:(id)title;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAttributedPosterTitle:(id)title;
- (void)setPosterTitle:(id)title;
- (void)updatePreview:(id)preview posterPreviewView:(id)view layoutOrientation:(int64_t)orientation index:(unint64_t)index;
@end

@implementation PBFPosterGalleryPreviewCell

+ (CGSize)contentSizeForCellWithTitle:(BOOL)title interfaceOrientation:(int64_t)orientation spec:(id)spec
{
  titleCopy = title;
  specCopy = spec;
  [specCopy posterContentSizeForOrientation:orientation];
  v10 = v9;
  v12 = v11;
  if (titleCopy)
  {
    [self maximumTitleHeightForFont:0];
    v14 = v13;
    [specCopy previewCellLabelToImageVerticalSpacing];
    v12 = v12 + v14 + v15;
  }

  v16 = v10;
  v17 = v12;
  result.height = v17;
  result.width = v16;
  return result;
}

+ (CGSize)contentSizeForCellWithTitleSize:(CGSize)size interfaceOrientation:(int64_t)orientation spec:(id)spec
{
  height = size.height;
  specCopy = spec;
  [specCopy posterContentSizeForOrientation:orientation];
  v9 = v8;
  v11 = v10;
  if (height > 0.0)
  {
    [specCopy previewCellLabelToImageVerticalSpacing];
    v11 = v11 + height + v12;
  }

  v13 = v9;
  v14 = v11;
  result.height = v14;
  result.width = v13;
  return result;
}

+ (CGSize)contentSizeForSmartAlbumCellWithTitle:(BOOL)title interfaceOrientation:(int64_t)orientation spec:(id)spec
{
  titleCopy = title;
  specCopy = spec;
  [self contentSizeForCellWithTitle:titleCopy interfaceOrientation:orientation spec:specCopy];
  v10 = v9;
  v12 = v11;
  [specCopy previewSmartAlbumCellAdditionalTopMargin];
  v14 = v13;

  v15 = v12 + v14;
  v16 = v10;
  result.height = v15;
  result.width = v16;
  return result;
}

+ (CGSize)contentSizeForSmartAlbumCellWithTitleSize:(CGSize)size interfaceOrientation:(int64_t)orientation spec:(id)spec
{
  height = size.height;
  width = size.width;
  specCopy = spec;
  [self contentSizeForCellWithTitleSize:orientation interfaceOrientation:specCopy spec:{width, height}];
  v11 = v10;
  v13 = v12;
  [specCopy previewSmartAlbumCellAdditionalTopMargin];
  v15 = v14;

  v16 = v13 + v15;
  v17 = v11;
  result.height = v16;
  result.width = v17;
  return result;
}

+ (CGSize)heroContentSizeForCellWithTitle:(BOOL)title interfaceOrientation:(int64_t)orientation spec:(id)spec
{
  titleCopy = title;
  specCopy = spec;
  [specCopy posterHeroContentSize];
  v9 = v8;
  v11 = v10;
  if (titleCopy)
  {
    [self maximumTitleHeightForFont:0];
    v13 = v12;
    [specCopy previewCellLabelToImageVerticalSpacing];
    v11 = v11 + v13 + v14;
  }

  v15 = v9;
  v16 = v11;
  result.height = v16;
  result.width = v15;
  return result;
}

+ (CGSize)heroContentSizeForCellWithTitleSize:(CGSize)size interfaceOrientation:(int64_t)orientation spec:(id)spec
{
  height = size.height;
  specCopy = spec;
  [specCopy posterHeroContentSize];
  v8 = v7;
  v10 = v9;
  if (height > 0.0)
  {
    [specCopy previewCellLabelToImageVerticalSpacing];
    v10 = v10 + height + v11;
  }

  v12 = v8;
  v13 = v10;
  result.height = v13;
  result.width = v12;
  return result;
}

+ (double)maximumTitleHeightForFont:(id)font
{
  fontCopy = font;
  if (!fontCopy)
  {
    v4 = [PBFPosterGalleryViewSpec specForScreen:0];
    fontCopy = [v4 previewCellLabelFont];
  }

  [fontCopy lineHeight];
  v6 = v5;

  return v6;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = PBFPosterGalleryPreviewCell;
  [(PBFPosterGalleryPreviewCell *)&v4 prepareForReuse];
  [(PBFPosterGalleryPreviewCell *)self setPosterTitle:0];
  [(PBFPosterGalleryPreviewCell *)self setAttributedPosterTitle:0];
  posterPreviewView = [(PBFPosterGalleryPreviewCell *)self posterPreviewView];
  [posterPreviewView prepareForReuse];

  self->_index = 0x7FFFFFFFFFFFFFFFLL;
}

- (id)pbf_displayContext
{
  v6.receiver = self;
  v6.super_class = PBFPosterGalleryPreviewCell;
  pbf_displayContext = [(UIView *)&v6 pbf_displayContext];
  v4 = [pbf_displayContext displayContextWithUpdatedInterfaceOrientation:self->_layoutOrientation];

  return v4;
}

- (void)updatePreview:(id)preview posterPreviewView:(id)view layoutOrientation:(int64_t)orientation index:(unint64_t)index
{
  previewCopy = preview;
  viewCopy = view;
  if (self->_posterPreview != previewCopy || !BSEqualObjects() || self->_layoutOrientation != orientation || self->_index != index)
  {
    self->_index = index;
    posterPreviewView = [(PBFPosterGalleryPreviewCell *)self posterPreviewView];
    [posterPreviewView updatePreview:previewCopy posterPreviewView:viewCopy layoutOrientation:orientation index:index];

    self->_layoutOrientation = orientation;
    type = [(PBFPosterPreview *)previewCopy type];
    previewType = self->_previewType;
    self->_previewType = type;

    [(PBFPosterGalleryPreviewCell *)self invalidateIntrinsicContentSize];
    [(PBFPosterGalleryPreviewCell *)self setNeedsLayout];
  }
}

- (NSString)posterTitle
{
  titleLabel = [(PBFPosterGalleryPreviewCell *)self titleLabel];
  text = [titleLabel text];

  return text;
}

- (void)setPosterTitle:(id)title
{
  titleCopy = title;
  posterTitle = [(PBFPosterGalleryPreviewCell *)self posterTitle];
  v5 = BSEqualStrings();

  if ((v5 & 1) == 0)
  {
    if (titleCopy)
    {
      v6 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:titleCopy];
    }

    else
    {
      v6 = 0;
    }

    [(PBFPosterGalleryPreviewCell *)self _setMutableAttributedPosterTitle:v6];
  }
}

- (NSAttributedString)attributedPosterTitle
{
  titleLabel = [(PBFPosterGalleryPreviewCell *)self titleLabel];
  attributedText = [titleLabel attributedText];

  return attributedText;
}

- (void)setAttributedPosterTitle:(id)title
{
  titleCopy = title;
  attributedPosterTitle = [(PBFPosterGalleryPreviewCell *)self attributedPosterTitle];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    v6 = [titleCopy mutableCopy];
    [(PBFPosterGalleryPreviewCell *)self _setMutableAttributedPosterTitle:v6];
  }
}

- (void)_setMutableAttributedPosterTitle:(id)title
{
  titleCopy = title;
  if (titleCopy)
  {
    v4 = objc_opt_new();
    LODWORD(v5) = 1036831949;
    [v4 setHyphenationFactor:v5];
    [v4 setAllowsDefaultTighteningForTruncation:1];
    [v4 setLineBreakMode:4];
    [v4 setAlignment:1];
    [titleCopy addAttribute:*MEMORY[0x277D74118] value:v4 range:{0, objc_msgSend(titleCopy, "length")}];
  }

  titleLabel = [(PBFPosterGalleryPreviewCell *)self titleLabel];
  [titleLabel setAttributedText:titleCopy];

  self->_titleLabelSize = *MEMORY[0x277CBF3A8];
  [(PBFPosterGalleryPreviewCell *)self setNeedsLayout];
}

- (id)titleLabel
{
  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    v3 = titleLabel;
  }

  else
  {
    window = [(PBFPosterGalleryPreviewCell *)self window];
    screen = [window screen];
    v7 = [PBFPosterGalleryViewSpec specForScreen:screen];

    v8 = objc_opt_new();
    v9 = self->_titleLabel;
    self->_titleLabel = v8;

    v10 = self->_titleLabel;
    previewCellLabelFont = [v7 previewCellLabelFont];
    [(UILabel *)v10 setFont:previewCellLabelFont];

    v12 = self->_titleLabel;
    previewCellLabelColor = [v7 previewCellLabelColor];
    [(UILabel *)v12 setTextColor:previewCellLabelColor];

    [(UILabel *)self->_titleLabel setTextAlignment:1];
    [(UILabel *)self->_titleLabel setLineBreakMode:4];
    [(UILabel *)self->_titleLabel setNumberOfLines:2];
    [(UILabel *)self->_titleLabel setMaximumContentSizeCategory:*MEMORY[0x277D76808]];
    [(UILabel *)self->_titleLabel setAdjustsFontForContentSizeCategory:1];
    contentView = [(PBFPosterGalleryPreviewCell *)self contentView];
    [contentView addSubview:self->_titleLabel];

    [(PBFPosterGalleryPreviewCell *)self setNeedsLayout];
    v3 = self->_titleLabel;
  }

  return v3;
}

- (PBFPosterGalleryPreviewView)posterPreviewView
{
  posterPreviewView = self->_posterPreviewView;
  if (!posterPreviewView)
  {
    v4 = objc_opt_new();
    v5 = self->_posterPreviewView;
    self->_posterPreviewView = v4;

    [(PBFPosterGalleryPreviewView *)self->_posterPreviewView sizeToFit];
    contentView = [(PBFPosterGalleryPreviewCell *)self contentView];
    [contentView addSubview:self->_posterPreviewView];

    contentView2 = [(PBFPosterGalleryPreviewCell *)self contentView];
    [contentView2 sendSubviewToBack:self->_posterPreviewView];

    posterPreviewView = self->_posterPreviewView;
  }

  v8 = posterPreviewView;

  return v8;
}

- (void)layoutSubviews
{
  v40.receiver = self;
  v40.super_class = PBFPosterGalleryPreviewCell;
  [(PBFPosterGalleryPreviewCell *)&v40 layoutSubviews];
  contentView = [(PBFPosterGalleryPreviewCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;

  titleLabel = [(PBFPosterGalleryPreviewCell *)self titleLabel];
  posterPreviewView = [(PBFPosterGalleryPreviewCell *)self posterPreviewView];
  window = [(PBFPosterGalleryPreviewCell *)self window];
  screen = [window screen];
  v12 = [PBFPosterGalleryViewSpec specForScreen:screen];

  [posterPreviewView bounds];
  v14 = v13;
  if (self->_previewType == PBFPreviewTypeHero)
  {
    [v12 posterHeroContentSize];
  }

  else
  {
    [v12 posterContentSizeForOrientation:self->_layoutOrientation];
  }

  if (v15 <= v5)
  {
    v17 = v15;
  }

  else
  {
    v17 = v5;
  }

  if (v16 <= v7)
  {
    v18 = v16;
  }

  else
  {
    v18 = v7;
  }

  UIFloorToViewScale();
  v20 = v19;
  if (self->_previewType == PBFPreviewTypeSmartAlbum && (PUIFeatureEnabled() & 1) == 0)
  {
    [v12 previewSmartAlbumCellAdditionalTopMargin];
    v14 = v14 + v21;
  }

  if (self->_previewType == PBFPreviewTypeHero)
  {
    v22 = v5 + 14.0;
  }

  else
  {
    v22 = v5;
  }

  if (self->_titleLabelSize.width == *MEMORY[0x277CBF3A8] && self->_titleLabelSize.height == *(MEMORY[0x277CBF3A8] + 8))
  {
    text = [titleLabel text];
    if ([text length])
    {
      [titleLabel sizeThatFits:{v22, v7}];
    }

    else
    {
      v24 = 0.0;
      v25 = 0.0;
    }

    self->_titleLabelSize.width = v24;
    self->_titleLabelSize.height = v25;
  }

  [titleLabel frame];
  v41.origin.x = v20;
  v41.origin.y = v14;
  v41.size.width = v17;
  v41.size.height = v18;
  CGRectGetMaxY(v41);
  [v12 previewCellLabelToImageVerticalSpacing];
  v26 = objc_opt_class();
  font = [titleLabel font];
  [v26 maximumTitleHeightForFont:font];

  traitCollection = [(PBFPosterGalleryPreviewCell *)self traitCollection];
  [traitCollection displayScale];
  v39 = v29;
  v30 = v17;
  UIRectCenteredXInRectScale();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

  [posterPreviewView frame];
  v44.origin.x = v20;
  v44.origin.y = v14;
  v44.size.width = v30;
  v44.size.height = v18;
  if (!CGRectEqualToRect(v42, v44))
  {
    [posterPreviewView setFrame:{v20, v14, v30, v18}];
  }

  [titleLabel frame];
  v45.origin.x = v32;
  v45.origin.y = v34;
  v45.size.width = v36;
  v45.size.height = v38;
  if (!CGRectEqualToRect(v43, v45))
  {
    [titleLabel setFrame:{v32, v34, v36, v38}];
  }
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  titleLabel = [(PBFPosterGalleryPreviewCell *)self titleLabel];
  text = [titleLabel text];
  v12 = [text length];

  if (v12)
  {
    *&v13 = priority;
    *&v14 = fittingPriority;
    [titleLabel systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:{v13, v14}];
    v16 = v15;
    v18 = v17;
  }

  else
  {
    v16 = *MEMORY[0x277CBF3A8];
    v18 = *(MEMORY[0x277CBF3A8] + 8);
  }

  previewType = self->_previewType;
  if (previewType == PBFPreviewTypeHero)
  {
    v27 = objc_opt_class();
    layoutOrientation = self->_layoutOrientation;
    pbf_displayContext = [(PBFPosterGalleryPreviewCell *)self pbf_displayContext];
    v24 = [PBFPosterGalleryViewSpec specForDisplayContext:pbf_displayContext];
    [v27 heroContentSizeForCellWithTitleSize:layoutOrientation interfaceOrientation:v24 spec:{v16, v18}];
  }

  else
  {
    v20 = PBFPreviewTypeSmartAlbum;
    v21 = objc_opt_class();
    v22 = self->_layoutOrientation;
    pbf_displayContext = [(PBFPosterGalleryPreviewCell *)self pbf_displayContext];
    v24 = [PBFPosterGalleryViewSpec specForDisplayContext:pbf_displayContext];
    if (previewType == v20)
    {
      [v21 contentSizeForSmartAlbumCellWithTitleSize:v22 interfaceOrientation:v24 spec:{v16, v18}];
    }

    else
    {
      [v21 contentSizeForCellWithTitleSize:v22 interfaceOrientation:v24 spec:{v16, v18}];
    }
  }

  v29 = v25;
  v30 = v26;

  v31 = v29;
  v32 = v30;
  result.height = v32;
  result.width = v31;
  return result;
}

@end