@interface WFRichContentItemCellView
- (UIImage)image;
- (UIImageView)imageView;
- (UILabel)altLabel;
- (UILabel)subtitleLabel;
- (WFRichContentItemCellView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setAttributedAlertButton:(id)a3;
- (void)setContentAlertButton:(id)a3;
- (void)setImage:(id)a3;
- (void)setImage:(id)a3 options:(id)a4;
- (void)setSelectableAlertButton:(id)a3;
- (void)setSubtitle:(id)a3;
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

- (void)setContentAlertButton:(id)a3
{
  v4 = a3;
  v5 = [v4 contentItem];
  if (v5 != self->_item)
  {
    objc_initWeak(&location, self);
    objc_initWeak(&from, v5);
    objc_storeStrong(&self->_item, v5);
    v6 = [(WFContentItem *)v5 richListTitle];
    v7 = [(WFRichContentItemCellView *)self titleLabel];
    [v7 setText:v6];

    v8 = [(WFRichContentItemCellView *)self subtitleLabel];
    [v8 setText:0];

    v9 = [(WFRichContentItemCellView *)self altLabel];
    [v9 setText:0];

    [(WFRichContentItemCellView *)self setImage:0 options:0];
    v10 = [v4 hideSubtitle];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __51__WFRichContentItemCellView_setContentAlertButton___block_invoke;
    v26[3] = &unk_279EF4EE8;
    objc_copyWeak(&v27, &location);
    objc_copyWeak(&v28, &from);
    [v4 getSubtitle:v26];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __51__WFRichContentItemCellView_setContentAlertButton___block_invoke_2;
    v23[3] = &unk_279EF4EE8;
    objc_copyWeak(&v24, &location);
    objc_copyWeak(&v25, &from);
    LOBYTE(v7) = [(WFContentItem *)v5 getListAltText:v23];
    [(WFRichContentItemCellView *)self imageDimension];
    v12 = v11;
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __51__WFRichContentItemCellView_setContentAlertButton___block_invoke_3;
    v20 = &unk_279EF4F10;
    objc_copyWeak(&v21, &location);
    objc_copyWeak(&v22, &from);
    v13 = [(WFContentItem *)v5 getListThumbnail:&v17 forSize:v12, v12];
    [(WFRichContentItemCellView *)self setHasImage:v13, v17, v18, v19, v20];
    v14 = self->_hasImage | v7;
    v15 = 4;
    if ((v14 & 1) == 0 && ((v10 ^ 1) & 1) == 0)
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

    v16 = [(WFRichContentItemCellView *)self titleLabel];
    [v16 setTextAlignment:v15];

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

- (void)setAttributedAlertButton:(id)a3
{
  v4 = a3;
  v5 = [v4 attributedTitle];
  v6 = [(WFRichContentItemCellView *)self titleLabel];
  [v6 setAttributedText:v5];

  v7 = [(WFRichContentItemCellView *)self titleLabel];
  [v7 setTextAlignment:1];

  v8 = [(WFRichContentItemCellView *)self subtitleLabel];
  [v8 setText:0];

  v9 = [(WFRichContentItemCellView *)self altLabel];
  [v9 setText:0];

  [(WFRichContentItemCellView *)self setImage:0 options:0];
  item = self->_item;
  self->_item = 0;

  v11 = [v4 label];

  [(WFRichContentItemCellView *)self setAccessibilityLabel:v11];
}

- (void)setSelectableAlertButton:(id)a3
{
  v17 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(WFRichContentItemCellView *)self setContentAlertButton:v17];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(WFRichContentItemCellView *)self setAttributedAlertButton:v17];
    }

    else
    {
      v4 = [v17 image];
      v5 = [v4 UIImage];

      v6 = [v17 title];
      v7 = [(WFRichContentItemCellView *)self titleLabel];
      [v7 setText:v6];

      v8 = [(WFRichContentItemCellView *)self alwaysLeftAlign];
      if (v8)
      {
        v9 = 4;
      }

      else
      {
        v7 = [v17 subtitle];
        v10 = [v7 length];
        v11 = 4;
        if (!v5)
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

      v12 = [(WFRichContentItemCellView *)self titleLabel];
      [v12 setTextAlignment:v9];

      if (!v8)
      {
      }

      v13 = [v17 subtitle];
      v14 = [(WFRichContentItemCellView *)self subtitleLabel];
      [v14 setText:v13];

      v15 = [(WFRichContentItemCellView *)self altLabel];
      [v15 setText:0];

      [(WFRichContentItemCellView *)self setImage:v5 options:0];
      item = self->_item;
      self->_item = 0;
    }
  }
}

- (void)setSubtitle:(id)a3
{
  v4 = a3;
  v5 = [(WFRichContentItemCellView *)self subtitleLabel];
  [v5 setText:v4];

  [(WFRichContentItemCellView *)self setNeedsUpdateConstraints];
}

- (void)updateImageCornerRadius
{
  v10 = [(WFRichContentItemCellView *)self imageView];
  v3 = [(WFRichContentItemCellView *)self imageRoundingStyle];
  [v10 bounds];
  WFContentItemListThumbnailCornerRadiusForRoundingStyle();
  v5 = v4;
  v6 = [v10 layer];
  [v6 setCornerRadius:v5];

  v7 = MEMORY[0x277CDA130];
  if (v3 != 3)
  {
    v7 = MEMORY[0x277CDA138];
  }

  v8 = *v7;
  v9 = [v10 layer];
  [v9 setCornerCurve:v8];
}

- (void)setImage:(id)a3 options:(id)a4
{
  v6 = a4;
  [(WFRichContentItemCellView *)self setImage:a3];
  v8 = [v6 objectForKey:*MEMORY[0x277D7A398]];

  if (v8)
  {
    v7 = [v8 unsignedIntegerValue];
  }

  else
  {
    v7 = 0;
  }

  [(WFRichContentItemCellView *)self setImageRoundingStyle:v7];
  [(WFRichContentItemCellView *)self updateImageCornerRadius];
}

- (void)setImage:(id)a3
{
  v4 = a3;
  [v4 size];
  v6 = v5;
  v8 = v7;
  [(WFRichContentItemCellView *)self imageDimension];
  v10 = v9;
  v11 = [(WFRichContentItemCellView *)self imageView];
  v12 = v11;
  if (fmax(v6, v8) > v10)
  {
    v13 = 1;
  }

  else
  {
    v13 = 4;
  }

  [v11 setContentMode:v13];

  v14 = [(WFRichContentItemCellView *)self imageView];
  [v14 setImage:v4];

  [(WFRichContentItemCellView *)self setHasImage:v4 != 0];
}

- (UIImage)image
{
  v2 = [(WFRichContentItemCellView *)self imageView];
  v3 = [v2 image];

  return v3;
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
  v3 = [(WFRichContentItemCellView *)self tintColor];
  v4 = [(WFRichContentItemCellView *)self titleLabel];
  [v4 setTextColor:v3];
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
  v6 = [(WFRichContentItemCellView *)self altLabel];
  v7 = [v6 text];
  v8 = [v7 length];

  v9 = MEMORY[0x277CCAAD0];
  if (v8)
  {
    v10 = [(WFRichContentItemCellView *)self firstRowConstraintsWithoutAltText];
    [v9 deactivateConstraints:v10];

    v11 = MEMORY[0x277CCAAD0];
    [(WFRichContentItemCellView *)self firstRowConstraintsWithAltText];
  }

  else
  {
    v12 = [(WFRichContentItemCellView *)self firstRowConstraintsWithAltText];
    [v9 deactivateConstraints:v12];

    v11 = MEMORY[0x277CCAAD0];
    [(WFRichContentItemCellView *)self firstRowConstraintsWithoutAltText];
  }
  v13 = ;
  [v11 activateConstraints:v13];

  v14 = [(WFRichContentItemCellView *)self subtitleLabel];
  v15 = [v14 text];
  v16 = [v15 length];

  v17 = MEMORY[0x277CCAAD0];
  if (v16)
  {
    v18 = [(WFRichContentItemCellView *)self verticalConstraintsWithoutSubtitle];
    [v17 deactivateConstraints:v18];

    v19 = MEMORY[0x277CCAAD0];
    [(WFRichContentItemCellView *)self verticalConstraintsWithSubtitle];
  }

  else
  {
    v20 = [(WFRichContentItemCellView *)self verticalConstraintsWithSubtitle];
    [v17 deactivateConstraints:v20];

    v19 = MEMORY[0x277CCAAD0];
    [(WFRichContentItemCellView *)self verticalConstraintsWithoutSubtitle];
  }
  v21 = ;
  [v19 activateConstraints:v21];
}

- (WFRichContentItemCellView)initWithFrame:(CGRect)a3
{
  v42[3] = *MEMORY[0x277D85DE8];
  v41.receiver = self;
  v41.super_class = WFRichContentItemCellView;
  v3 = [(WFRichContentItemCellView *)&v41 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    v5 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76918]];
    v6 = [MEMORY[0x277D74300] systemFontOfSize:20.0];
    v7 = [v5 scaledFontForFont:v6 maximumPointSize:36.0];
    [(UILabel *)v4 setFont:v7];

    v8 = [(WFRichContentItemCellView *)v3 tintColor];
    [(UILabel *)v4 setTextColor:v8];

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

    v35 = [(WFRichContentItemCellView *)v3 firstRowConstraintsWithoutAltText];
    [v29 addObjectsFromArray:v35];

    v36 = [(WFRichContentItemCellView *)v3 verticalConstraintsWithSubtitle];
    [v29 addObjectsFromArray:v36];

    v37 = [MEMORY[0x277CCAAD0] constraintWithItem:v10 attribute:10 relatedBy:0 toItem:v13 attribute:10 multiplier:1.0 constant:0.0];
    [v29 addObject:v37];

    [MEMORY[0x277CCAAD0] activateConstraints:v29];
    v38 = v3;
  }

  return v3;
}

@end