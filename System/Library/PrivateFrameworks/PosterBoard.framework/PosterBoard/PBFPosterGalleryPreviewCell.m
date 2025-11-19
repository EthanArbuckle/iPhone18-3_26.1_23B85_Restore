@interface PBFPosterGalleryPreviewCell
+ (CGSize)contentSizeForCellWithTitle:(BOOL)a3 interfaceOrientation:(int64_t)a4 spec:(id)a5;
+ (CGSize)contentSizeForCellWithTitleSize:(CGSize)a3 interfaceOrientation:(int64_t)a4 spec:(id)a5;
+ (CGSize)contentSizeForSmartAlbumCellWithTitle:(BOOL)a3 interfaceOrientation:(int64_t)a4 spec:(id)a5;
+ (CGSize)contentSizeForSmartAlbumCellWithTitleSize:(CGSize)a3 interfaceOrientation:(int64_t)a4 spec:(id)a5;
+ (CGSize)heroContentSizeForCellWithTitle:(BOOL)a3 interfaceOrientation:(int64_t)a4 spec:(id)a5;
+ (CGSize)heroContentSizeForCellWithTitleSize:(CGSize)a3 interfaceOrientation:(int64_t)a4 spec:(id)a5;
+ (double)maximumTitleHeightForFont:(id)a3;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (NSAttributedString)attributedPosterTitle;
- (NSString)posterTitle;
- (PBFPosterGalleryPreviewView)posterPreviewView;
- (id)pbf_displayContext;
- (id)titleLabel;
- (void)_setMutableAttributedPosterTitle:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAttributedPosterTitle:(id)a3;
- (void)setPosterTitle:(id)a3;
- (void)updatePreview:(id)a3 posterPreviewView:(id)a4 layoutOrientation:(int64_t)a5 index:(unint64_t)a6;
@end

@implementation PBFPosterGalleryPreviewCell

+ (CGSize)contentSizeForCellWithTitle:(BOOL)a3 interfaceOrientation:(int64_t)a4 spec:(id)a5
{
  v6 = a3;
  v8 = a5;
  [v8 posterContentSizeForOrientation:a4];
  v10 = v9;
  v12 = v11;
  if (v6)
  {
    [a1 maximumTitleHeightForFont:0];
    v14 = v13;
    [v8 previewCellLabelToImageVerticalSpacing];
    v12 = v12 + v14 + v15;
  }

  v16 = v10;
  v17 = v12;
  result.height = v17;
  result.width = v16;
  return result;
}

+ (CGSize)contentSizeForCellWithTitleSize:(CGSize)a3 interfaceOrientation:(int64_t)a4 spec:(id)a5
{
  height = a3.height;
  v7 = a5;
  [v7 posterContentSizeForOrientation:a4];
  v9 = v8;
  v11 = v10;
  if (height > 0.0)
  {
    [v7 previewCellLabelToImageVerticalSpacing];
    v11 = v11 + height + v12;
  }

  v13 = v9;
  v14 = v11;
  result.height = v14;
  result.width = v13;
  return result;
}

+ (CGSize)contentSizeForSmartAlbumCellWithTitle:(BOOL)a3 interfaceOrientation:(int64_t)a4 spec:(id)a5
{
  v6 = a3;
  v8 = a5;
  [a1 contentSizeForCellWithTitle:v6 interfaceOrientation:a4 spec:v8];
  v10 = v9;
  v12 = v11;
  [v8 previewSmartAlbumCellAdditionalTopMargin];
  v14 = v13;

  v15 = v12 + v14;
  v16 = v10;
  result.height = v15;
  result.width = v16;
  return result;
}

+ (CGSize)contentSizeForSmartAlbumCellWithTitleSize:(CGSize)a3 interfaceOrientation:(int64_t)a4 spec:(id)a5
{
  height = a3.height;
  width = a3.width;
  v9 = a5;
  [a1 contentSizeForCellWithTitleSize:a4 interfaceOrientation:v9 spec:{width, height}];
  v11 = v10;
  v13 = v12;
  [v9 previewSmartAlbumCellAdditionalTopMargin];
  v15 = v14;

  v16 = v13 + v15;
  v17 = v11;
  result.height = v16;
  result.width = v17;
  return result;
}

+ (CGSize)heroContentSizeForCellWithTitle:(BOOL)a3 interfaceOrientation:(int64_t)a4 spec:(id)a5
{
  v5 = a3;
  v7 = a5;
  [v7 posterHeroContentSize];
  v9 = v8;
  v11 = v10;
  if (v5)
  {
    [a1 maximumTitleHeightForFont:0];
    v13 = v12;
    [v7 previewCellLabelToImageVerticalSpacing];
    v11 = v11 + v13 + v14;
  }

  v15 = v9;
  v16 = v11;
  result.height = v16;
  result.width = v15;
  return result;
}

+ (CGSize)heroContentSizeForCellWithTitleSize:(CGSize)a3 interfaceOrientation:(int64_t)a4 spec:(id)a5
{
  height = a3.height;
  v6 = a5;
  [v6 posterHeroContentSize];
  v8 = v7;
  v10 = v9;
  if (height > 0.0)
  {
    [v6 previewCellLabelToImageVerticalSpacing];
    v10 = v10 + height + v11;
  }

  v12 = v8;
  v13 = v10;
  result.height = v13;
  result.width = v12;
  return result;
}

+ (double)maximumTitleHeightForFont:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v4 = [PBFPosterGalleryViewSpec specForScreen:0];
    v3 = [v4 previewCellLabelFont];
  }

  [v3 lineHeight];
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
  v3 = [(PBFPosterGalleryPreviewCell *)self posterPreviewView];
  [v3 prepareForReuse];

  self->_index = 0x7FFFFFFFFFFFFFFFLL;
}

- (id)pbf_displayContext
{
  v6.receiver = self;
  v6.super_class = PBFPosterGalleryPreviewCell;
  v3 = [(UIView *)&v6 pbf_displayContext];
  v4 = [v3 displayContextWithUpdatedInterfaceOrientation:self->_layoutOrientation];

  return v4;
}

- (void)updatePreview:(id)a3 posterPreviewView:(id)a4 layoutOrientation:(int64_t)a5 index:(unint64_t)a6
{
  v14 = a3;
  v10 = a4;
  if (self->_posterPreview != v14 || !BSEqualObjects() || self->_layoutOrientation != a5 || self->_index != a6)
  {
    self->_index = a6;
    v11 = [(PBFPosterGalleryPreviewCell *)self posterPreviewView];
    [v11 updatePreview:v14 posterPreviewView:v10 layoutOrientation:a5 index:a6];

    self->_layoutOrientation = a5;
    v12 = [(PBFPosterPreview *)v14 type];
    previewType = self->_previewType;
    self->_previewType = v12;

    [(PBFPosterGalleryPreviewCell *)self invalidateIntrinsicContentSize];
    [(PBFPosterGalleryPreviewCell *)self setNeedsLayout];
  }
}

- (NSString)posterTitle
{
  v2 = [(PBFPosterGalleryPreviewCell *)self titleLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setPosterTitle:(id)a3
{
  v7 = a3;
  v4 = [(PBFPosterGalleryPreviewCell *)self posterTitle];
  v5 = BSEqualStrings();

  if ((v5 & 1) == 0)
  {
    if (v7)
    {
      v6 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v7];
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
  v2 = [(PBFPosterGalleryPreviewCell *)self titleLabel];
  v3 = [v2 attributedText];

  return v3;
}

- (void)setAttributedPosterTitle:(id)a3
{
  v7 = a3;
  v4 = [(PBFPosterGalleryPreviewCell *)self attributedPosterTitle];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    v6 = [v7 mutableCopy];
    [(PBFPosterGalleryPreviewCell *)self _setMutableAttributedPosterTitle:v6];
  }
}

- (void)_setMutableAttributedPosterTitle:(id)a3
{
  v7 = a3;
  if (v7)
  {
    v4 = objc_opt_new();
    LODWORD(v5) = 1036831949;
    [v4 setHyphenationFactor:v5];
    [v4 setAllowsDefaultTighteningForTruncation:1];
    [v4 setLineBreakMode:4];
    [v4 setAlignment:1];
    [v7 addAttribute:*MEMORY[0x277D74118] value:v4 range:{0, objc_msgSend(v7, "length")}];
  }

  v6 = [(PBFPosterGalleryPreviewCell *)self titleLabel];
  [v6 setAttributedText:v7];

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
    v5 = [(PBFPosterGalleryPreviewCell *)self window];
    v6 = [v5 screen];
    v7 = [PBFPosterGalleryViewSpec specForScreen:v6];

    v8 = objc_opt_new();
    v9 = self->_titleLabel;
    self->_titleLabel = v8;

    v10 = self->_titleLabel;
    v11 = [v7 previewCellLabelFont];
    [(UILabel *)v10 setFont:v11];

    v12 = self->_titleLabel;
    v13 = [v7 previewCellLabelColor];
    [(UILabel *)v12 setTextColor:v13];

    [(UILabel *)self->_titleLabel setTextAlignment:1];
    [(UILabel *)self->_titleLabel setLineBreakMode:4];
    [(UILabel *)self->_titleLabel setNumberOfLines:2];
    [(UILabel *)self->_titleLabel setMaximumContentSizeCategory:*MEMORY[0x277D76808]];
    [(UILabel *)self->_titleLabel setAdjustsFontForContentSizeCategory:1];
    v14 = [(PBFPosterGalleryPreviewCell *)self contentView];
    [v14 addSubview:self->_titleLabel];

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
    v6 = [(PBFPosterGalleryPreviewCell *)self contentView];
    [v6 addSubview:self->_posterPreviewView];

    v7 = [(PBFPosterGalleryPreviewCell *)self contentView];
    [v7 sendSubviewToBack:self->_posterPreviewView];

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
  v3 = [(PBFPosterGalleryPreviewCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  v8 = [(PBFPosterGalleryPreviewCell *)self titleLabel];
  v9 = [(PBFPosterGalleryPreviewCell *)self posterPreviewView];
  v10 = [(PBFPosterGalleryPreviewCell *)self window];
  v11 = [v10 screen];
  v12 = [PBFPosterGalleryViewSpec specForScreen:v11];

  [v9 bounds];
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
    v23 = [v8 text];
    if ([v23 length])
    {
      [v8 sizeThatFits:{v22, v7}];
    }

    else
    {
      v24 = 0.0;
      v25 = 0.0;
    }

    self->_titleLabelSize.width = v24;
    self->_titleLabelSize.height = v25;
  }

  [v8 frame];
  v41.origin.x = v20;
  v41.origin.y = v14;
  v41.size.width = v17;
  v41.size.height = v18;
  CGRectGetMaxY(v41);
  [v12 previewCellLabelToImageVerticalSpacing];
  v26 = objc_opt_class();
  v27 = [v8 font];
  [v26 maximumTitleHeightForFont:v27];

  v28 = [(PBFPosterGalleryPreviewCell *)self traitCollection];
  [v28 displayScale];
  v39 = v29;
  v30 = v17;
  UIRectCenteredXInRectScale();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

  [v9 frame];
  v44.origin.x = v20;
  v44.origin.y = v14;
  v44.size.width = v30;
  v44.size.height = v18;
  if (!CGRectEqualToRect(v42, v44))
  {
    [v9 setFrame:{v20, v14, v30, v18}];
  }

  [v8 frame];
  v45.origin.x = v32;
  v45.origin.y = v34;
  v45.size.width = v36;
  v45.size.height = v38;
  if (!CGRectEqualToRect(v43, v45))
  {
    [v8 setFrame:{v32, v34, v36, v38}];
  }
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v10 = [(PBFPosterGalleryPreviewCell *)self titleLabel];
  v11 = [v10 text];
  v12 = [v11 length];

  if (v12)
  {
    *&v13 = a4;
    *&v14 = a5;
    [v10 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:{v13, v14}];
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
    v23 = [(PBFPosterGalleryPreviewCell *)self pbf_displayContext];
    v24 = [PBFPosterGalleryViewSpec specForDisplayContext:v23];
    [v27 heroContentSizeForCellWithTitleSize:layoutOrientation interfaceOrientation:v24 spec:{v16, v18}];
  }

  else
  {
    v20 = PBFPreviewTypeSmartAlbum;
    v21 = objc_opt_class();
    v22 = self->_layoutOrientation;
    v23 = [(PBFPosterGalleryPreviewCell *)self pbf_displayContext];
    v24 = [PBFPosterGalleryViewSpec specForDisplayContext:v23];
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