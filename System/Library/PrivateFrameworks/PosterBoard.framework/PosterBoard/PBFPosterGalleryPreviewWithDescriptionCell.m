@interface PBFPosterGalleryPreviewWithDescriptionCell
- ($91384402D6A983DE6D4FF1F0AF3B9FB7)metrics;
- (CGSize)intrinsicContentSize;
- (NSString)posterDescription;
- (PBFPosterGalleryPreviewView)posterPreviewView;
- (id)pbf_displayContext;
- (id)posterDescriptionLabel;
- (id)spec;
- (void)didMoveToWindow;
- (void)invalidateIntrinsicContentSize;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setPosterDescription:(id)a3;
- (void)updatePreview:(id)a3 posterPreviewView:(id)a4 layoutOrientation:(int64_t)a5 index:(unint64_t)a6;
@end

@implementation PBFPosterGalleryPreviewWithDescriptionCell

- (void)prepareForReuse
{
  v7.receiver = self;
  v7.super_class = PBFPosterGalleryPreviewWithDescriptionCell;
  [(PBFPosterGalleryPreviewWithDescriptionCell *)&v7 prepareForReuse];
  v4 = *MEMORY[0x277CBF3A0];
  v3 = *(MEMORY[0x277CBF3A0] + 16);
  v5 = *MEMORY[0x277CBF3A8];
  self->_metrics.posterDescriptionLabelFrame.size = v3;
  self->_metrics.intrinsicContentSize = v5;
  self->_metrics.posterViewFrame.size = v3;
  self->_metrics.posterDescriptionLabelFrame.origin = v4;
  self->_metrics.posterViewFrame.origin = v4;
  v6 = [(PBFPosterGalleryPreviewWithDescriptionCell *)self posterPreviewView];
  [v6 prepareForReuse];

  self->_index = 0x7FFFFFFFFFFFFFFFLL;
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = PBFPosterGalleryPreviewWithDescriptionCell;
  [(PBFPosterGalleryPreviewWithDescriptionCell *)&v4 didMoveToWindow];
  spec = self->_spec;
  self->_spec = 0;
}

- (void)updatePreview:(id)a3 posterPreviewView:(id)a4 layoutOrientation:(int64_t)a5 index:(unint64_t)a6
{
  v14 = a3;
  v10 = a4;
  if (self->_posterPreview != v14 || !BSEqualObjects() || self->_layoutOrientation != a5)
  {
    v11 = [(PBFPosterPreview *)v14 type];
    previewType = self->_previewType;
    self->_previewType = v11;

    v13 = [(PBFPosterGalleryPreviewWithDescriptionCell *)self posterPreviewView];
    [v13 updatePreview:v14 posterPreviewView:v10 layoutOrientation:a5 index:a6];

    self->_index = a6;
    self->_layoutOrientation = a5;
    [(PBFPosterGalleryPreviewWithDescriptionCell *)self invalidateIntrinsicContentSize];
    [(PBFPosterGalleryPreviewWithDescriptionCell *)self setNeedsLayout];
  }
}

- (NSString)posterDescription
{
  v2 = [(PBFPosterGalleryPreviewWithDescriptionCell *)self posterDescriptionLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setPosterDescription:(id)a3
{
  v10 = a3;
  v4 = [(PBFPosterGalleryPreviewWithDescriptionCell *)self posterDescriptionLabel];
  v5 = [v4 isEqual:v10];

  if ((v5 & 1) == 0)
  {
    v6 = [(PBFPosterGalleryPreviewWithDescriptionCell *)self posterDescriptionLabel];
    [v6 setText:v10];

    v8 = *MEMORY[0x277CBF3A0];
    v7 = *(MEMORY[0x277CBF3A0] + 16);
    v9 = *MEMORY[0x277CBF3A8];
    self->_metrics.posterDescriptionLabelFrame.size = v7;
    self->_metrics.intrinsicContentSize = v9;
    self->_metrics.posterViewFrame.size = v7;
    self->_metrics.posterDescriptionLabelFrame.origin = v8;
    self->_metrics.posterViewFrame.origin = v8;
    [(PBFPosterGalleryPreviewWithDescriptionCell *)self setNeedsLayout];
  }
}

- (id)posterDescriptionLabel
{
  posterDescriptionLabel = self->_posterDescriptionLabel;
  if (!posterDescriptionLabel)
  {
    v4 = objc_opt_new();
    v5 = self->_posterDescriptionLabel;
    self->_posterDescriptionLabel = v4;

    [(UILabel *)self->_posterDescriptionLabel setNumberOfLines:0];
    v6 = self->_posterDescriptionLabel;
    v7 = [(PBFPosterGalleryPreviewWithDescriptionCell *)self spec];
    v8 = [v7 previewCellDescriptionLabelFont];
    [(UILabel *)v6 setFont:v8];

    v9 = self->_posterDescriptionLabel;
    v10 = [(PBFPosterGalleryPreviewWithDescriptionCell *)self spec];
    v11 = [v10 previewCellDescriptionLabelColor];
    [(UILabel *)v9 setTextColor:v11];

    [(UILabel *)self->_posterDescriptionLabel setTextAlignment:4];
    v12 = [(PBFPosterGalleryPreviewWithDescriptionCell *)self contentView];
    [v12 addSubview:self->_posterDescriptionLabel];

    [(PBFPosterGalleryPreviewWithDescriptionCell *)self setNeedsLayout];
    posterDescriptionLabel = self->_posterDescriptionLabel;
  }

  v13 = posterDescriptionLabel;

  return v13;
}

- (id)pbf_displayContext
{
  v6.receiver = self;
  v6.super_class = PBFPosterGalleryPreviewWithDescriptionCell;
  v3 = [(UIView *)&v6 pbf_displayContext];
  v4 = [v3 displayContextWithUpdatedInterfaceOrientation:self->_layoutOrientation];

  return v4;
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
    v6 = [(PBFPosterGalleryPreviewWithDescriptionCell *)self contentView];
    [v6 addSubview:self->_posterPreviewView];

    v7 = [(PBFPosterGalleryPreviewWithDescriptionCell *)self contentView];
    [v7 sendSubviewToBack:self->_posterPreviewView];

    posterPreviewView = self->_posterPreviewView;
  }

  v8 = posterPreviewView;

  return v8;
}

- (id)spec
{
  spec = self->_spec;
  if (!spec)
  {
    v4 = [(PBFPosterGalleryPreviewWithDescriptionCell *)self window];
    v5 = [v4 screen];
    v6 = [PBFPosterGalleryViewSpec specForScreen:v5];
    v7 = self->_spec;
    self->_spec = v6;

    spec = self->_spec;
  }

  return spec;
}

- ($91384402D6A983DE6D4FF1F0AF3B9FB7)metrics
{
  p_height = &self[8].var0.size.height;
  if (self[9].var0.origin.y == *MEMORY[0x277CBF3A8] && self[9].var0.size.width == *(MEMORY[0x277CBF3A8] + 8))
  {
    v8 = self;
    v33 = [($91384402D6A983DE6D4FF1F0AF3B9FB7 *)self spec];
    [($91384402D6A983DE6D4FF1F0AF3B9FB7 *)v8 bounds];
    v10 = v9;
    v11 = [($91384402D6A983DE6D4FF1F0AF3B9FB7 *)v8 traitCollection];
    [v11 displayScale];

    v12 = [($91384402D6A983DE6D4FF1F0AF3B9FB7 *)v8 effectiveUserInterfaceLayoutDirection];
    [v33 standardSpacing];
    v14 = v13;
    [v33 posterContentSizeForOrientation:*&v8[9].var1.origin.x];
    v16 = v15;
    v18 = v17;
    v19 = v10 - v15;
    if (v12)
    {
      v20 = v10 - v15;
    }

    else
    {
      v20 = 0.0;
    }

    v32 = v20;
    [*&v8[8].var0.size.width sizeThatFits:{v10 - (v14 + v16), 1000.0}];
    v23 = v22;
    if (v21 >= v18)
    {
      v24 = v18;
    }

    else
    {
      v24 = v21;
    }

    if (v12)
    {
      v35.origin.y = 0.0;
      v35.origin.x = v19;
      v35.size.width = v16;
      v35.size.height = v18;
      v25 = CGRectGetMinX(v35) - v14 - v23;
    }

    else
    {
      v36.origin.x = 0.0;
      v36.origin.y = 0.0;
      v36.size.width = v16;
      v36.size.height = v18;
      v25 = v14 + CGRectGetMaxX(v36);
    }

    *p_height = v32;
    *(p_height + 1) = 0;
    *(p_height + 2) = v16;
    *(p_height + 3) = v18;
    *(p_height + 6) = v23;
    *(p_height + 7) = v24;
    *(p_height + 4) = v25;
    UIRectCenteredYInRectScale();
    *(p_height + 4) = v26;
    *(p_height + 5) = v27;
    *(p_height + 6) = v28;
    *(p_height + 7) = v29;
    *(p_height + 8) = v14 + v16 + v23;
    *(p_height + 9) = v18;
    v30 = *(p_height + 1);
    retstr->var0.origin = *p_height;
    retstr->var0.size = v30;
    v31 = *(p_height + 3);
    retstr->var1.origin = *(p_height + 2);
    retstr->var1.size = v31;
    retstr->var2 = *(p_height + 4);
  }

  else
  {
    v6 = *&self[8].var2.height;
    retstr->var1.origin = *&self[8].var1.size.height;
    retstr->var1.size = v6;
    retstr->var2 = *&self[9].var0.origin.y;
    v7 = *&self[8].var1.origin.y;
    retstr->var0.origin = *p_height;
    retstr->var0.size = v7;
  }

  return self;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = PBFPosterGalleryPreviewWithDescriptionCell;
  [(PBFPosterGalleryPreviewWithDescriptionCell *)&v5 layoutSubviews];
  [(PBFPosterGalleryPreviewWithDescriptionCell *)self metrics];
  v3 = [(PBFPosterGalleryPreviewWithDescriptionCell *)self posterDescriptionLabel];
  v4 = [(PBFPosterGalleryPreviewWithDescriptionCell *)self posterPreviewView];
  [v4 frame];
  v8.origin.x = 0.0;
  v8.origin.y = 0.0;
  v8.size.width = 0.0;
  v8.size.height = 0.0;
  if (!CGRectEqualToRect(v6, v8))
  {
    [v4 setFrame:{0.0, 0.0, 0.0, 0.0}];
  }

  [v3 frame];
  v9.origin = 0u;
  v9.size = 0u;
  if (!CGRectEqualToRect(v7, v9))
  {
    [v3 setFrame:{0.0, 0.0, 0.0, 0.0}];
  }
}

- (CGSize)intrinsicContentSize
{
  [(PBFPosterGalleryPreviewWithDescriptionCell *)self metrics];
  v2 = v4;
  v3 = v5;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)invalidateIntrinsicContentSize
{
  v2 = *MEMORY[0x277CBF3A0];
  v3 = *(MEMORY[0x277CBF3A0] + 16);
  v4 = *MEMORY[0x277CBF3A8];
  self->_metrics.posterDescriptionLabelFrame.size = v3;
  self->_metrics.intrinsicContentSize = v4;
  self->_metrics.posterViewFrame.size = v3;
  self->_metrics.posterDescriptionLabelFrame.origin = v2;
  self->_metrics.posterViewFrame.origin = v2;
  v5.receiver = self;
  v5.super_class = PBFPosterGalleryPreviewWithDescriptionCell;
  [(PBFPosterGalleryPreviewWithDescriptionCell *)&v5 invalidateIntrinsicContentSize];
}

@end