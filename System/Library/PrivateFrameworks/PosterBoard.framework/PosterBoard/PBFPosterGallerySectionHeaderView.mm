@interface PBFPosterGallerySectionHeaderView
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (PBFPosterGallerySectionHeaderView)initWithFrame:(CGRect)frame;
- (UILabel)label;
- (UILabel)subtitleLabel;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setSubtitle:(id)subtitle;
- (void)setText:(id)text;
@end

@implementation PBFPosterGallerySectionHeaderView

- (PBFPosterGallerySectionHeaderView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PBFPosterGallerySectionHeaderView;
  v3 = [(PBFPosterGallerySectionHeaderView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PBFPosterGallerySectionHeaderView *)v3 setLayoutMargins:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
  }

  return v4;
}

- (void)setText:(id)text
{
  textCopy = text;
  label = [(PBFPosterGallerySectionHeaderView *)self label];
  text = [label text];
  v6 = [text isEqual:textCopy];

  if ((v6 & 1) == 0)
  {
    [(UILabel *)self->_label setText:textCopy];
    [(PBFPosterGallerySectionHeaderView *)self setNeedsLayout];
  }
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  subtitleLabel = [(PBFPosterGallerySectionHeaderView *)self subtitleLabel];
  text = [subtitleLabel text];
  v6 = [text isEqual:subtitleCopy];

  if ((v6 & 1) == 0)
  {
    [(UILabel *)self->_subtitleLabel setText:subtitleCopy];
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

    window = [(PBFPosterGallerySectionHeaderView *)self window];
    screen = [window screen];
    v9 = [PBFPosterGalleryViewSpec specForScreen:screen];

    [(UILabel *)self->_label setNumberOfLines:0];
    v10 = self->_label;
    sectionHeaderTitleFont = [v9 sectionHeaderTitleFont];
    [(UILabel *)v10 setFont:sectionHeaderTitleFont];

    v12 = self->_label;
    sectionHeaderTitleColor = [v9 sectionHeaderTitleColor];
    [(UILabel *)v12 setTextColor:sectionHeaderTitleColor];

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
    window = [(PBFPosterGallerySectionHeaderView *)self window];
    screen = [window screen];
    v7 = [PBFPosterGalleryViewSpec specForScreen:screen];

    v8 = objc_opt_new();
    v9 = self->_subtitleLabel;
    self->_subtitleLabel = v8;

    [(UILabel *)self->_subtitleLabel setNumberOfLines:0];
    v10 = self->_subtitleLabel;
    sectionHeaderSubtitleFont = [v7 sectionHeaderSubtitleFont];
    [(UILabel *)v10 setFont:sectionHeaderSubtitleFont];

    v12 = self->_subtitleLabel;
    sectionHeaderSubtitleColor = [v7 sectionHeaderSubtitleColor];
    [(UILabel *)v12 setTextColor:sectionHeaderSubtitleColor];

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
  window = [(PBFPosterGallerySectionHeaderView *)self window];
  screen = [window screen];
  v5 = [PBFPosterGalleryViewSpec specForScreen:screen];

  effectiveUserInterfaceLayoutDirection = [(PBFPosterGallerySectionHeaderView *)self effectiveUserInterfaceLayoutDirection];
  [(PBFPosterGallerySectionHeaderView *)self bounds];
  v8 = v7;
  v10 = v9;
  label = [(PBFPosterGallerySectionHeaderView *)self label];
  [label systemLayoutSizeFittingSize:{v8, v10}];
  v13 = v12;
  v15 = v14;

  if (effectiveUserInterfaceLayoutDirection)
  {
    v16 = v8 - v13;
  }

  else
  {
    v16 = 0.0;
  }

  [v5 sectionHeaderTopSpacing];
  v18 = v17;
  label2 = [(PBFPosterGallerySectionHeaderView *)self label];
  [label2 setFrame:{v16, v18, v13, v15}];

  v20 = MEMORY[0x277CCACA8];
  label3 = [(PBFPosterGallerySectionHeaderView *)self label];
  text = [label3 text];
  v23 = [v20 stringWithFormat:@"header-%@", text];

  label4 = [(PBFPosterGallerySectionHeaderView *)self label];
  [label4 setAccessibilityIdentifier:v23];

  subtitleLabel = [(PBFPosterGallerySectionHeaderView *)self subtitleLabel];
  text2 = [subtitleLabel text];
  v27 = [text2 length];

  if (v27)
  {
    subtitleLabel2 = [(PBFPosterGallerySectionHeaderView *)self subtitleLabel];
    [subtitleLabel2 systemLayoutSizeFittingSize:{v8, v10}];
    v30 = v29;
    v32 = v31;

    if (effectiveUserInterfaceLayoutDirection)
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
    subtitleLabel3 = [(PBFPosterGallerySectionHeaderView *)self subtitleLabel];
    [subtitleLabel3 setFrame:{v33, v36, v30, v32}];

    v38 = MEMORY[0x277CCACA8];
    subtitleLabel4 = [(PBFPosterGallerySectionHeaderView *)self subtitleLabel];
    text3 = [subtitleLabel4 text];
    v41 = [v38 stringWithFormat:@"subtitle-%@", text3];

    subtitleLabel5 = [(PBFPosterGallerySectionHeaderView *)self subtitleLabel];
    [subtitleLabel5 setAccessibilityIdentifier:v41];
  }
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  window = [(PBFPosterGallerySectionHeaderView *)self window];
  screen = [window screen];
  v12 = [PBFPosterGalleryViewSpec specForScreen:screen];

  [v12 sectionHeaderTopSpacing];
  v14 = v13;
  [v12 sectionHeaderBottomSpacing];
  v16 = v14 + v15;
  label = [(PBFPosterGallerySectionHeaderView *)self label];
  *&v18 = priority;
  *&v19 = fittingPriority;
  [label systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:{v18, v19}];
  v21 = v20;

  v22 = v16 + v21;
  text = [(UILabel *)self->_subtitleLabel text];
  v24 = [text length];

  if (v24)
  {
    subtitleLabel = [(PBFPosterGallerySectionHeaderView *)self subtitleLabel];
    *&v26 = priority;
    *&v27 = fittingPriority;
    [subtitleLabel systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:{v26, v27}];
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