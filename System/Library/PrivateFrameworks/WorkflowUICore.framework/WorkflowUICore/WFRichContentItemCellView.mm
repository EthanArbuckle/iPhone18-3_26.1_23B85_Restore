@interface WFRichContentItemCellView
- (UIImage)image;
- (UIImageView)imageView;
- (UILabel)altLabel;
- (UILabel)subtitleLabel;
- (WFRichContentItemCellView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setAttributedAlertButton:(id)button;
- (void)setContentAlertButton:(id)button;
- (void)setImage:(id)image;
- (void)setImage:(id)image options:(id)options;
- (void)setSelectableAlertButton:(id)button;
- (void)setSubtitle:(id)subtitle;
- (void)tintColorDidChange;
- (void)updateConstraints;
- (void)updateImageCornerRadius;
@end

@implementation WFRichContentItemCellView

- (UIImageView)imageView
{
  WeakRetained = objc_loadWeakRetained(&self->_imageView);

  return WeakRetained;
}

- (UILabel)altLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_altLabel);

  return WeakRetained;
}

- (UILabel)subtitleLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_subtitleLabel);

  return WeakRetained;
}

- (void)setContentAlertButton:(id)button
{
  buttonCopy = button;
  contentItem = [buttonCopy contentItem];
  if (contentItem != self->_item)
  {
    objc_initWeak(&location, self);
    objc_initWeak(&from, contentItem);
    objc_storeStrong(&self->_item, contentItem);
    richListTitle = [(WFContentItem *)contentItem richListTitle];
    titleLabel = [(WFRichContentItemCellView *)self titleLabel];
    [titleLabel setText:richListTitle];

    subtitleLabel = [(WFRichContentItemCellView *)self subtitleLabel];
    [subtitleLabel setText:0];

    altLabel = [(WFRichContentItemCellView *)self altLabel];
    [altLabel setText:0];

    [(WFRichContentItemCellView *)self setImage:0 options:0];
    hideSubtitle = [buttonCopy hideSubtitle];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __51__WFRichContentItemCellView_setContentAlertButton___block_invoke;
    v26[3] = &unk_279EF4EE8;
    objc_copyWeak(&v27, &location);
    objc_copyWeak(&v28, &from);
    [buttonCopy getSubtitle:v26];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __51__WFRichContentItemCellView_setContentAlertButton___block_invoke_2;
    v23[3] = &unk_279EF4EE8;
    objc_copyWeak(&v24, &location);
    objc_copyWeak(&v25, &from);
    LOBYTE(titleLabel) = [(WFContentItem *)contentItem getListAltText:v23];
    [(WFRichContentItemCellView *)self imageDimension];
    v12 = v11;
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __51__WFRichContentItemCellView_setContentAlertButton___block_invoke_3;
    v20 = &unk_279EF4F10;
    objc_copyWeak(&v21, &location);
    objc_copyWeak(&v22, &from);
    v13 = [(WFContentItem *)contentItem getListThumbnail:&v17 forSize:v12, v12];
    [(WFRichContentItemCellView *)self setHasImage:v13, v17, v18, v19, v20];
    v14 = self->_hasImage | titleLabel;
    v15 = 4;
    if ((v14 & 1) == 0 && ((hideSubtitle ^ 1) & 1) == 0)
    {
      if (self->_alwaysLeftAlign)
      {
        v15 = 4;
      }

      else
      {
        v15 = 1;
      }
    }

    titleLabel2 = [(WFRichContentItemCellView *)self titleLabel];
    [titleLabel2 setTextAlignment:v15];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&v27);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

void __51__WFRichContentItemCellView_setContentAlertButton___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained item];

  if (v6 && v4 == v5)
  {
    [WeakRetained setSubtitle:v6];
  }
}

void __51__WFRichContentItemCellView_setContentAlertButton___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained item];

  if (v7 && v4 == v5)
  {
    v6 = [WeakRetained altLabel];
    [v6 setText:v7];
  }
}

void __51__WFRichContentItemCellView_setContentAlertButton___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained item];

  if (v10 && v7 == v8)
  {
    v9 = [v10 UIImage];
    [WeakRetained setImage:v9 options:v5];
  }
}

- (void)setAttributedAlertButton:(id)button
{
  buttonCopy = button;
  attributedTitle = [buttonCopy attributedTitle];
  titleLabel = [(WFRichContentItemCellView *)self titleLabel];
  [titleLabel setAttributedText:attributedTitle];

  titleLabel2 = [(WFRichContentItemCellView *)self titleLabel];
  [titleLabel2 setTextAlignment:1];

  subtitleLabel = [(WFRichContentItemCellView *)self subtitleLabel];
  [subtitleLabel setText:0];

  altLabel = [(WFRichContentItemCellView *)self altLabel];
  [altLabel setText:0];

  [(WFRichContentItemCellView *)self setImage:0 options:0];
  item = self->_item;
  self->_item = 0;

  label = [buttonCopy label];

  [(WFRichContentItemCellView *)self setAccessibilityLabel:label];
}

- (void)setSelectableAlertButton:(id)button
{
  buttonCopy = button;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(WFRichContentItemCellView *)self setContentAlertButton:buttonCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(WFRichContentItemCellView *)self setAttributedAlertButton:buttonCopy];
    }

    else
    {
      image = [buttonCopy image];
      uIImage = [image UIImage];

      title = [buttonCopy title];
      titleLabel = [(WFRichContentItemCellView *)self titleLabel];
      [titleLabel setText:title];

      alwaysLeftAlign = [(WFRichContentItemCellView *)self alwaysLeftAlign];
      if (alwaysLeftAlign)
      {
        v9 = 4;
      }

      else
      {
        titleLabel = [buttonCopy subtitle];
        v10 = [titleLabel length];
        v11 = 4;
        if (!uIImage)
        {
          v11 = 1;
        }

        if (v10)
        {
          v9 = 4;
        }

        else
        {
          v9 = v11;
        }
      }

      titleLabel2 = [(WFRichContentItemCellView *)self titleLabel];
      [titleLabel2 setTextAlignment:v9];

      if (!alwaysLeftAlign)
      {
      }

      subtitle = [buttonCopy subtitle];
      subtitleLabel = [(WFRichContentItemCellView *)self subtitleLabel];
      [subtitleLabel setText:subtitle];

      altLabel = [(WFRichContentItemCellView *)self altLabel];
      [altLabel setText:0];

      [(WFRichContentItemCellView *)self setImage:uIImage options:0];
      item = self->_item;
      self->_item = 0;
    }
  }
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  subtitleLabel = [(WFRichContentItemCellView *)self subtitleLabel];
  [subtitleLabel setText:subtitleCopy];

  [(WFRichContentItemCellView *)self setNeedsUpdateConstraints];
}

- (void)updateImageCornerRadius
{
  imageView = [(WFRichContentItemCellView *)self imageView];
  imageRoundingStyle = [(WFRichContentItemCellView *)self imageRoundingStyle];
  [imageView bounds];
  WFContentItemListThumbnailCornerRadiusForRoundingStyle();
  v5 = v4;
  layer = [imageView layer];
  [layer setCornerRadius:v5];

  v7 = MEMORY[0x277CDA130];
  if (imageRoundingStyle != 3)
  {
    v7 = MEMORY[0x277CDA138];
  }

  v8 = *v7;
  layer2 = [imageView layer];
  [layer2 setCornerCurve:v8];
}

- (void)setImage:(id)image options:(id)options
{
  optionsCopy = options;
  [(WFRichContentItemCellView *)self setImage:image];
  v8 = [optionsCopy objectForKey:*MEMORY[0x277D7A398]];

  if (v8)
  {
    unsignedIntegerValue = [v8 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  [(WFRichContentItemCellView *)self setImageRoundingStyle:unsignedIntegerValue];
  [(WFRichContentItemCellView *)self updateImageCornerRadius];
}

- (void)setImage:(id)image
{
  imageCopy = image;
  [imageCopy size];
  v6 = v5;
  v8 = v7;
  [(WFRichContentItemCellView *)self imageDimension];
  v10 = v9;
  imageView = [(WFRichContentItemCellView *)self imageView];
  v12 = imageView;
  if (fmax(v6, v8) > v10)
  {
    v13 = 1;
  }

  else
  {
    v13 = 4;
  }

  [imageView setContentMode:v13];

  imageView2 = [(WFRichContentItemCellView *)self imageView];
  [imageView2 setImage:imageCopy];

  [(WFRichContentItemCellView *)self setHasImage:imageCopy != 0];
}

- (UIImage)image
{
  imageView = [(WFRichContentItemCellView *)self imageView];
  image = [imageView image];

  return image;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = WFRichContentItemCellView;
  [(WFRichContentItemCellView *)&v3 layoutSubviews];
  [(WFRichContentItemCellView *)self updateImageCornerRadius];
}

- (void)tintColorDidChange
{
  v5.receiver = self;
  v5.super_class = WFRichContentItemCellView;
  [(WFRichContentItemCellView *)&v5 tintColorDidChange];
  tintColor = [(WFRichContentItemCellView *)self tintColor];
  titleLabel = [(WFRichContentItemCellView *)self titleLabel];
  [titleLabel setTextColor:tintColor];
}

- (void)updateConstraints
{
  v22.receiver = self;
  v22.super_class = WFRichContentItemCellView;
  [(WFRichContentItemCellView *)&v22 updateConstraints];
  v3 = 0.0;
  v4 = 0.0;
  if ([(WFRichContentItemCellView *)self hasImage])
  {
    [(WFRichContentItemCellView *)self imageDimension];
    v3 = v5;
    v4 = 14.0;
  }

  [(NSLayoutConstraint *)self->_imageWidthConstraint setConstant:v3];
  [(NSLayoutConstraint *)self->_imageHeightConstraint setConstant:v3];
  [(NSLayoutConstraint *)self->_imageLeadingConstraint setConstant:v4];
  altLabel = [(WFRichContentItemCellView *)self altLabel];
  text = [altLabel text];
  v8 = [text length];

  v9 = MEMORY[0x277CCAAD0];
  if (v8)
  {
    firstRowConstraintsWithoutAltText = [(WFRichContentItemCellView *)self firstRowConstraintsWithoutAltText];
    [v9 deactivateConstraints:firstRowConstraintsWithoutAltText];

    v11 = MEMORY[0x277CCAAD0];
    [(WFRichContentItemCellView *)self firstRowConstraintsWithAltText];
  }

  else
  {
    firstRowConstraintsWithAltText = [(WFRichContentItemCellView *)self firstRowConstraintsWithAltText];
    [v9 deactivateConstraints:firstRowConstraintsWithAltText];

    v11 = MEMORY[0x277CCAAD0];
    [(WFRichContentItemCellView *)self firstRowConstraintsWithoutAltText];
  }
  v13 = ;
  [v11 activateConstraints:v13];

  subtitleLabel = [(WFRichContentItemCellView *)self subtitleLabel];
  text2 = [subtitleLabel text];
  v16 = [text2 length];

  v17 = MEMORY[0x277CCAAD0];
  if (v16)
  {
    verticalConstraintsWithoutSubtitle = [(WFRichContentItemCellView *)self verticalConstraintsWithoutSubtitle];
    [v17 deactivateConstraints:verticalConstraintsWithoutSubtitle];

    v19 = MEMORY[0x277CCAAD0];
    [(WFRichContentItemCellView *)self verticalConstraintsWithSubtitle];
  }

  else
  {
    verticalConstraintsWithSubtitle = [(WFRichContentItemCellView *)self verticalConstraintsWithSubtitle];
    [v17 deactivateConstraints:verticalConstraintsWithSubtitle];

    v19 = MEMORY[0x277CCAAD0];
    [(WFRichContentItemCellView *)self verticalConstraintsWithoutSubtitle];
  }
  v21 = ;
  [v19 activateConstraints:v21];
}

- (WFRichContentItemCellView)initWithFrame:(CGRect)frame
{
  v42[3] = *MEMORY[0x277D85DE8];
  v41.receiver = self;
  v41.super_class = WFRichContentItemCellView;
  v3 = [(WFRichContentItemCellView *)&v41 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    v5 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76918]];
    v6 = [MEMORY[0x277D74300] systemFontOfSize:20.0];
    v7 = [v5 scaledFontForFont:v6 maximumPointSize:36.0];
    [(UILabel *)v4 setFont:v7];

    tintColor = [(WFRichContentItemCellView *)v3 tintColor];
    [(UILabel *)v4 setTextColor:tintColor];

    [(UILabel *)v4 setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v4 setMinimumScaleFactor:0.8];
    [(UILabel *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(WFRichContentItemCellView *)v3 addSubview:v4];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v4;
    v10 = v4;

    v11 = objc_opt_new();
    v12 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
    [v11 setFont:v12];

    [v11 setTextAlignment:0];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(WFRichContentItemCellView *)v3 addSubview:v11];
    objc_storeWeak(&v3->_subtitleLabel, v11);
    v13 = objc_opt_new();
    v14 = [MEMORY[0x277D74300] systemFontOfSize:13.0];
    [v13 setFont:v14];

    [v13 setTextAlignment:2];
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v15) = 1144750080;
    [v13 setContentHuggingPriority:0 forAxis:v15];
    [(WFRichContentItemCellView *)v3 addSubview:v13];
    objc_storeWeak(&v3->_altLabel, v13);
    v16 = objc_opt_new();
    [v16 setClipsToBounds:1];
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(WFRichContentItemCellView *)v3 addSubview:v16];
    objc_storeWeak(&v3->_imageView, v16);
    v40 = [MEMORY[0x277CCAAD0] constraintWithItem:v16 attribute:10 relatedBy:0 toItem:v3 attribute:10 multiplier:1.0 constant:0.0];
    v17 = [MEMORY[0x277CCAAD0] constraintWithItem:v16 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:0.0];
    imageHeightConstraint = v3->_imageHeightConstraint;
    v3->_imageHeightConstraint = v17;

    v19 = [MEMORY[0x277CCAAD0] constraintWithItem:v16 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:0.0];
    imageWidthConstraint = v3->_imageWidthConstraint;
    v3->_imageWidthConstraint = v19;

    v21 = MEMORY[0x277CCAAD0];
    v42[0] = v40;
    v42[1] = v3->_imageHeightConstraint;
    v42[2] = v3->_imageWidthConstraint;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:3];
    [v21 activateConstraints:v22];

    v23 = _NSDictionaryOfVariableBindings(&cfstr_TitlelabelSubt.isa, v10, v11, v13, 0);
    LODWORD(v24) = 1132068864;
    [(UILabel *)v10 setContentCompressionResistancePriority:0 forAxis:v24];
    v25 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:[titleLabel]-[altLabel]-elementPadding-|" options:0 metrics:&unk_2883D5D58 views:v23];
    [(WFRichContentItemCellView *)v3 setFirstRowConstraintsWithAltText:v25];

    v26 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:[titleLabel]-elementPadding-|" options:0 metrics:&unk_2883D5D58 views:v23];
    [(WFRichContentItemCellView *)v3 setFirstRowConstraintsWithoutAltText:v26];

    v27 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-[titleLabel]-2-[subtitleLabel]-(>=0)-|" options:0 metrics:0 views:v23];
    [(WFRichContentItemCellView *)v3 setVerticalConstraintsWithSubtitle:v27];

    v28 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-[titleLabel]-|" options:0 metrics:0 views:v23];
    [(WFRichContentItemCellView *)v3 setVerticalConstraintsWithoutSubtitle:v28];

    v29 = objc_opt_new();
    v30 = [MEMORY[0x277CCAAD0] constraintWithItem:v16 attribute:5 relatedBy:0 toItem:v3 attribute:5 multiplier:1.0 constant:14.0];
    imageLeadingConstraint = v3->_imageLeadingConstraint;
    v3->_imageLeadingConstraint = v30;

    [v29 addObject:v3->_imageLeadingConstraint];
    v32 = [MEMORY[0x277CCAAD0] constraintWithItem:v10 attribute:5 relatedBy:0 toItem:v16 attribute:6 multiplier:1.0 constant:14.0];
    [v29 addObject:v32];

    v33 = [MEMORY[0x277CCAAD0] constraintWithItem:v11 attribute:5 relatedBy:0 toItem:v16 attribute:6 multiplier:1.0 constant:14.0];
    [v29 addObject:v33];

    v34 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:[subtitleLabel]-elementPadding-|" options:0 metrics:&unk_2883D5D58 views:v23];
    [v29 addObjectsFromArray:v34];

    firstRowConstraintsWithoutAltText = [(WFRichContentItemCellView *)v3 firstRowConstraintsWithoutAltText];
    [v29 addObjectsFromArray:firstRowConstraintsWithoutAltText];

    verticalConstraintsWithSubtitle = [(WFRichContentItemCellView *)v3 verticalConstraintsWithSubtitle];
    [v29 addObjectsFromArray:verticalConstraintsWithSubtitle];

    v37 = [MEMORY[0x277CCAAD0] constraintWithItem:v10 attribute:10 relatedBy:0 toItem:v13 attribute:10 multiplier:1.0 constant:0.0];
    [v29 addObject:v37];

    [MEMORY[0x277CCAAD0] activateConstraints:v29];
    v38 = v3;
  }

  return v3;
}

@end