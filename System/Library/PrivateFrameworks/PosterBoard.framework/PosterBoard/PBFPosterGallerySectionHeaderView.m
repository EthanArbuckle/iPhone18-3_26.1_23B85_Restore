@interface PBFPosterGallerySectionHeaderView
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (PBFPosterGallerySectionHeaderView)initWithFrame:(CGRect)a3;
- (UILabel)label;
- (UILabel)subtitleLabel;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setSubtitle:(id)a3;
- (void)setText:(id)a3;
@end

@implementation PBFPosterGallerySectionHeaderView

- (PBFPosterGallerySectionHeaderView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PBFPosterGallerySectionHeaderView;
  v3 = [(PBFPosterGallerySectionHeaderView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PBFPosterGallerySectionHeaderView *)v3 setLayoutMargins:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
  }

  return v4;
}

- (void)setText:(id)a3
{
  v7 = a3;
  v4 = [(PBFPosterGallerySectionHeaderView *)self label];
  v5 = [v4 text];
  v6 = [v5 isEqual:v7];

  if ((v6 & 1) == 0)
  {
    [(UILabel *)self->_label setText:v7];
    [(PBFPosterGallerySectionHeaderView *)self setNeedsLayout];
  }
}

- (void)setSubtitle:(id)a3
{
  v7 = a3;
  v4 = [(PBFPosterGallerySectionHeaderView *)self subtitleLabel];
  v5 = [v4 text];
  v6 = [v5 isEqual:v7];

  if ((v6 & 1) == 0)
  {
    [(UILabel *)self->_subtitleLabel setText:v7];
    [(PBFPosterGallerySectionHeaderView *)self setNeedsLayout];
  }
}

- (UILabel)label
{
  label = self->_label;
  if (label)
  {
    v3 = label;
  }

  else
  {
    v5 = objc_opt_new();
    v6 = self->_label;
    self->_label = v5;

    v7 = [(PBFPosterGallerySectionHeaderView *)self window];
    v8 = [v7 screen];
    v9 = [PBFPosterGalleryViewSpec specForScreen:v8];

    [(UILabel *)self->_label setNumberOfLines:0];
    v10 = self->_label;
    v11 = [v9 sectionHeaderTitleFont];
    [(UILabel *)v10 setFont:v11];

    v12 = self->_label;
    v13 = [v9 sectionHeaderTitleColor];
    [(UILabel *)v12 setTextColor:v13];

    [(PBFPosterGallerySectionHeaderView *)self addSubview:self->_label];
    v3 = self->_label;
  }

  return v3;
}

- (UILabel)subtitleLabel
{
  subtitleLabel = self->_subtitleLabel;
  if (subtitleLabel)
  {
    v3 = subtitleLabel;
  }

  else
  {
    v5 = [(PBFPosterGallerySectionHeaderView *)self window];
    v6 = [v5 screen];
    v7 = [PBFPosterGalleryViewSpec specForScreen:v6];

    v8 = objc_opt_new();
    v9 = self->_subtitleLabel;
    self->_subtitleLabel = v8;

    [(UILabel *)self->_subtitleLabel setNumberOfLines:0];
    v10 = self->_subtitleLabel;
    v11 = [v7 sectionHeaderSubtitleFont];
    [(UILabel *)v10 setFont:v11];

    v12 = self->_subtitleLabel;
    v13 = [v7 sectionHeaderSubtitleColor];
    [(UILabel *)v12 setTextColor:v13];

    [(PBFPosterGallerySectionHeaderView *)self addSubview:self->_subtitleLabel];
    v3 = self->_subtitleLabel;
  }

  return v3;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PBFPosterGallerySectionHeaderView;
  [(PBFPosterGallerySectionHeaderView *)&v3 prepareForReuse];
  [(UILabel *)self->_label setText:0];
  [(UILabel *)self->_subtitleLabel setText:0];
}

- (void)layoutSubviews
{
  v43.receiver = self;
  v43.super_class = PBFPosterGallerySectionHeaderView;
  [(PBFPosterGallerySectionHeaderView *)&v43 layoutSubviews];
  v3 = [(PBFPosterGallerySectionHeaderView *)self window];
  v4 = [v3 screen];
  v5 = [PBFPosterGalleryViewSpec specForScreen:v4];

  v6 = [(PBFPosterGallerySectionHeaderView *)self effectiveUserInterfaceLayoutDirection];
  [(PBFPosterGallerySectionHeaderView *)self bounds];
  v8 = v7;
  v10 = v9;
  v11 = [(PBFPosterGallerySectionHeaderView *)self label];
  [v11 systemLayoutSizeFittingSize:{v8, v10}];
  v13 = v12;
  v15 = v14;

  if (v6)
  {
    v16 = v8 - v13;
  }

  else
  {
    v16 = 0.0;
  }

  [v5 sectionHeaderTopSpacing];
  v18 = v17;
  v19 = [(PBFPosterGallerySectionHeaderView *)self label];
  [v19 setFrame:{v16, v18, v13, v15}];

  v20 = MEMORY[0x277CCACA8];
  v21 = [(PBFPosterGallerySectionHeaderView *)self label];
  v22 = [v21 text];
  v23 = [v20 stringWithFormat:@"header-%@", v22];

  v24 = [(PBFPosterGallerySectionHeaderView *)self label];
  [v24 setAccessibilityIdentifier:v23];

  v25 = [(PBFPosterGallerySectionHeaderView *)self subtitleLabel];
  v26 = [v25 text];
  v27 = [v26 length];

  if (v27)
  {
    v28 = [(PBFPosterGallerySectionHeaderView *)self subtitleLabel];
    [v28 systemLayoutSizeFittingSize:{v8, v10}];
    v30 = v29;
    v32 = v31;

    if (v6)
    {
      v33 = v8 - v30;
    }

    else
    {
      v33 = 0.0;
    }

    v44.origin.x = v16;
    v44.origin.y = v18;
    v44.size.width = v13;
    v44.size.height = v15;
    MaxY = CGRectGetMaxY(v44);
    [v5 sectionHeaderSubtitleTopMargin];
    v36 = MaxY + v35;
    v37 = [(PBFPosterGallerySectionHeaderView *)self subtitleLabel];
    [v37 setFrame:{v33, v36, v30, v32}];

    v38 = MEMORY[0x277CCACA8];
    v39 = [(PBFPosterGallerySectionHeaderView *)self subtitleLabel];
    v40 = [v39 text];
    v41 = [v38 stringWithFormat:@"subtitle-%@", v40];

    v42 = [(PBFPosterGallerySectionHeaderView *)self subtitleLabel];
    [v42 setAccessibilityIdentifier:v41];
  }
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v10 = [(PBFPosterGallerySectionHeaderView *)self window];
  v11 = [v10 screen];
  v12 = [PBFPosterGalleryViewSpec specForScreen:v11];

  [v12 sectionHeaderTopSpacing];
  v14 = v13;
  [v12 sectionHeaderBottomSpacing];
  v16 = v14 + v15;
  v17 = [(PBFPosterGallerySectionHeaderView *)self label];
  *&v18 = a4;
  *&v19 = a5;
  [v17 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:{v18, v19}];
  v21 = v20;

  v22 = v16 + v21;
  v23 = [(UILabel *)self->_subtitleLabel text];
  v24 = [v23 length];

  if (v24)
  {
    v25 = [(PBFPosterGallerySectionHeaderView *)self subtitleLabel];
    *&v26 = a4;
    *&v27 = a5;
    [v25 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:{v26, v27}];
    v29 = v28;

    [v12 sectionHeaderSubtitleTopMargin];
    v22 = v29 + v22 + v30;
  }

  v31 = width;
  v32 = v22;
  result.height = v32;
  result.width = v31;
  return result;
}

@end