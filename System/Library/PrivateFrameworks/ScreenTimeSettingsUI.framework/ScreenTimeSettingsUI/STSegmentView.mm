@interface STSegmentView
- (CGSize)sizeThatFits:(CGSize)fits;
- (STSegmentView)initWithItem:(id)item useVibrancy:(BOOL)vibrancy truncateLabels:(BOOL)labels;
- (void)setItem:(id)item;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation STSegmentView

- (STSegmentView)initWithItem:(id)item useVibrancy:(BOOL)vibrancy truncateLabels:(BOOL)labels
{
  labelsCopy = labels;
  vibrancyCopy = vibrancy;
  itemCopy = item;
  v82.receiver = self;
  v82.super_class = STSegmentView;
  v10 = [(STSegmentView *)&v82 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_item, item);
    v11->_useVibrancy = vibrancyCopy;
    v12 = objc_opt_new();
    titleLabel = v11->_titleLabel;
    v11->_titleLabel = v12;

    v14 = *MEMORY[0x277D769D0];
    v15 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [(UILabel *)v11->_titleLabel setFont:v15];

    titleText = [itemCopy titleText];
    [(UILabel *)v11->_titleLabel setText:titleText];

    titleColor = [itemCopy titleColor];
    [(UILabel *)v11->_titleLabel setTextColor:titleColor];
    v18 = labelsCopy;
    [(UILabel *)v11->_titleLabel setNumberOfLines:labelsCopy];
    if (labelsCopy)
    {
      v19 = 4;
    }

    else
    {
      v19 = 0;
    }

    [(UILabel *)v11->_titleLabel setLineBreakMode:v19];
    [(UILabel *)v11->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v20) = 1144750080;
    [(UILabel *)v11->_titleLabel setContentHuggingPriority:1 forAxis:v20];
    [(STSegmentView *)v11 addSubview:v11->_titleLabel];
    v21 = objc_opt_new();
    detailLabel = v11->_detailLabel;
    v11->_detailLabel = v21;

    v23 = [MEMORY[0x277D74300] preferredFontForTextStyle:v14];
    [(UILabel *)v11->_detailLabel setFont:v23];

    detailText = [itemCopy detailText];
    [(UILabel *)v11->_detailLabel setText:detailText];

    accessibilityText = [itemCopy accessibilityText];
    [(UILabel *)v11->_detailLabel setAccessibilityLabel:accessibilityText];

    [(UILabel *)v11->_detailLabel setNumberOfLines:v18];
    [(UILabel *)v11->_detailLabel setLineBreakMode:v19];
    [(UILabel *)v11->_detailLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v26) = 1144750080;
    [(UILabel *)v11->_detailLabel setContentHuggingPriority:1 forAxis:v26];
    v27 = objc_opt_new();
    if (vibrancyCopy)
    {
      [STUsageColors updateVibrancyStylingForView:v11->_titleLabel withUsageColor:titleColor];
      v28 = [MEMORY[0x277D75D00] widgetEffectForVibrancyStyle:101];
      v29 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v28];
      [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(STSegmentView *)v11 addSubview:v29];
      contentView = [v29 contentView];
      [contentView addSubview:v11->_detailLabel];
      v31 = [MEMORY[0x277CCAAD0] st_constraintsForView:contentView equalToView:v11->_detailLabel];
      [v27 addObjectsFromArray:v31];

      v32 = 0.0;
    }

    else
    {
      [(STSegmentView *)v11 addSubview:v11->_detailLabel];
      v32 = 2.0;
    }

    topAnchor = [(UILabel *)v11->_titleLabel topAnchor];
    topAnchor2 = [(STSegmentView *)v11 topAnchor];
    v35 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v27 addObject:v35];

    leadingAnchor = [(UILabel *)v11->_titleLabel leadingAnchor];
    leadingAnchor2 = [(STSegmentView *)v11 leadingAnchor];
    v38 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v27 addObject:v38];

    trailingAnchor = [(UILabel *)v11->_titleLabel trailingAnchor];
    trailingAnchor2 = [(STSegmentView *)v11 trailingAnchor];
    v41 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v27 addObject:v41];

    heightAnchor = [(UILabel *)v11->_titleLabel heightAnchor];
    heightAnchor2 = [(UILabel *)v11->_detailLabel heightAnchor];
    v44 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    [v27 addObject:v44];

    v45 = objc_alloc(MEMORY[0x277D755E8]);
    detailImage = [itemCopy detailImage];
    v47 = [v45 initWithImage:detailImage];
    detailImageView = v11->_detailImageView;
    v11->_detailImageView = v47;

    [(UIImageView *)v11->_detailImageView setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
    detailImageTintColor = [itemCopy detailImageTintColor];
    [(UIImageView *)v11->_detailImageView setTintColor:detailImageTintColor];

    [(UIImageView *)v11->_detailImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(STSegmentView *)v11 addSubview:v11->_detailImageView];
    leadingAnchor3 = [(UIImageView *)v11->_detailImageView leadingAnchor];
    leadingAnchor4 = [(STSegmentView *)v11 leadingAnchor];
    v52 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [v27 addObject:v52];

    bottomAnchor = [(UIImageView *)v11->_detailImageView bottomAnchor];
    lastBaselineAnchor = [(UILabel *)v11->_detailLabel lastBaselineAnchor];
    v55 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor];
    [v27 addObject:v55];

    [(UIImageView *)v11->_detailImageView sizeThatFits:1.79769313e308, 1.79769313e308];
    v57 = v56;
    v59 = v58;
    leadingAnchor5 = [(UILabel *)v11->_detailLabel leadingAnchor];
    trailingAnchor3 = [(UIImageView *)v11->_detailImageView trailingAnchor];
    v62 = v59 == *(MEMORY[0x277CBF3A8] + 8) && v57 == *MEMORY[0x277CBF3A8];
    v63 = 2.0;
    if (v62)
    {
      v63 = 0.0;
    }

    v64 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor3 constant:v63];
    detailLabelLeadingConstraint = v11->_detailLabelLeadingConstraint;
    v11->_detailLabelLeadingConstraint = v64;

    [v27 addObject:v11->_detailLabelLeadingConstraint];
    widthAnchor = [(UIImageView *)v11->_detailImageView widthAnchor];
    v67 = [widthAnchor constraintEqualToConstant:v57];
    detailImageWidthConstraint = v11->_detailImageWidthConstraint;
    v11->_detailImageWidthConstraint = v67;

    [v27 addObject:v11->_detailImageWidthConstraint];
    heightAnchor3 = [(UIImageView *)v11->_detailImageView heightAnchor];
    v70 = [heightAnchor3 constraintEqualToConstant:v59];
    detailImageHeightConstraint = v11->_detailImageHeightConstraint;
    v11->_detailImageHeightConstraint = v70;

    [v27 addObject:v11->_detailImageHeightConstraint];
    topAnchor3 = [(UILabel *)v11->_detailLabel topAnchor];
    bottomAnchor2 = [(UILabel *)v11->_titleLabel bottomAnchor];
    v74 = [topAnchor3 constraintEqualToAnchor:bottomAnchor2 constant:v32];
    [v27 addObject:v74];

    bottomAnchor3 = [(UILabel *)v11->_detailLabel bottomAnchor];
    bottomAnchor4 = [(STSegmentView *)v11 bottomAnchor];
    v77 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    [v27 addObject:v77];

    trailingAnchor4 = [(UILabel *)v11->_detailLabel trailingAnchor];
    trailingAnchor5 = [(STSegmentView *)v11 trailingAnchor];
    v80 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
    [v27 addObject:v80];

    [MEMORY[0x277CCAAD0] activateConstraints:v27];
  }

  return v11;
}

- (void)setItem:(id)item
{
  itemCopy = item;
  v6 = itemCopy;
  if (self->_item != itemCopy)
  {
    v24 = itemCopy;
    itemCopy = [(STSegmentItem *)itemCopy isEqual:?];
    v6 = v24;
    if ((itemCopy & 1) == 0)
    {
      objc_storeStrong(&self->_item, item);
      detailText = [(STSegmentItem *)v24 detailText];
      detailLabel = [(STSegmentView *)self detailLabel];
      [detailLabel setText:detailText];

      titleLabel = [(STSegmentView *)self titleLabel];
      titleText = [(STSegmentItem *)v24 titleText];
      [titleLabel setText:titleText];

      titleColor = [(STSegmentItem *)v24 titleColor];
      [titleLabel setTextColor:titleColor];

      detailImageView = [(STSegmentView *)self detailImageView];
      detailImage = [(STSegmentItem *)v24 detailImage];
      [detailImageView setImage:detailImage];

      detailImageTintColor = [(STSegmentItem *)v24 detailImageTintColor];
      [detailImageView setTintColor:detailImageTintColor];

      [detailImageView sizeThatFits:{1.79769313e308, 1.79769313e308}];
      v16 = v15;
      v18 = v17;
      if (v17 == *(MEMORY[0x277CBF3A8] + 8) && v15 == *MEMORY[0x277CBF3A8])
      {
        v20 = 0.0;
      }

      else
      {
        v20 = 2.0;
      }

      detailLabelLeadingConstraint = [(STSegmentView *)self detailLabelLeadingConstraint];
      [detailLabelLeadingConstraint setConstant:v20];

      detailImageWidthConstraint = [(STSegmentView *)self detailImageWidthConstraint];
      [detailImageWidthConstraint setConstant:v16];

      detailImageHeightConstraint = [(STSegmentView *)self detailImageHeightConstraint];
      [detailImageHeightConstraint setConstant:v18];

      v6 = v24;
    }
  }

  MEMORY[0x2821F96F8](itemCopy, v6);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  titleLabel = [(STSegmentView *)self titleLabel];
  [titleLabel sizeThatFits:{width, height}];
  v8 = v7;
  v10 = v9;

  detailLabel = [(STSegmentView *)self detailLabel];
  [detailLabel sizeThatFits:{width, height}];
  v13 = v12;
  v15 = v14;

  detailImageView = [(STSegmentView *)self detailImageView];
  [detailImageView sizeThatFits:{width, height}];
  v18 = v17;

  useVibrancy = [(STSegmentView *)self useVibrancy];
  v20 = v10 + v15 + 2.0;
  if (useVibrancy)
  {
    v20 = v10 + v15;
  }

  v21 = v13 + v18 + 2.0;
  if (v8 >= v21)
  {
    v21 = v8;
  }

  result.height = v20;
  result.width = v21;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v11.receiver = self;
  v11.super_class = STSegmentView;
  [(STSegmentView *)&v11 traitCollectionDidChange:changeCopy];
  if ([(STSegmentView *)self useVibrancy])
  {
    if (!changeCopy || (v5 = [changeCopy userInterfaceStyle], -[STSegmentView traitCollection](self, "traitCollection"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "userInterfaceStyle"), v6, v5 != v7))
    {
      titleLabel = [(STSegmentView *)self titleLabel];
      item = [(STSegmentView *)self item];
      titleColor = [item titleColor];
      [STUsageColors updateVibrancyStylingForView:titleLabel withUsageColor:titleColor];
    }
  }
}

@end