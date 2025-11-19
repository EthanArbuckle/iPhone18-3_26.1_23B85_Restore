@interface STSegmentView
- (CGSize)sizeThatFits:(CGSize)a3;
- (STSegmentView)initWithItem:(id)a3 useVibrancy:(BOOL)a4 truncateLabels:(BOOL)a5;
- (void)setItem:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation STSegmentView

- (STSegmentView)initWithItem:(id)a3 useVibrancy:(BOOL)a4 truncateLabels:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = a3;
  v82.receiver = self;
  v82.super_class = STSegmentView;
  v10 = [(STSegmentView *)&v82 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_item, a3);
    v11->_useVibrancy = v6;
    v12 = objc_opt_new();
    titleLabel = v11->_titleLabel;
    v11->_titleLabel = v12;

    v14 = *MEMORY[0x277D769D0];
    v15 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [(UILabel *)v11->_titleLabel setFont:v15];

    v16 = [v9 titleText];
    [(UILabel *)v11->_titleLabel setText:v16];

    v17 = [v9 titleColor];
    [(UILabel *)v11->_titleLabel setTextColor:v17];
    v18 = v5;
    [(UILabel *)v11->_titleLabel setNumberOfLines:v5];
    if (v5)
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

    v24 = [v9 detailText];
    [(UILabel *)v11->_detailLabel setText:v24];

    v25 = [v9 accessibilityText];
    [(UILabel *)v11->_detailLabel setAccessibilityLabel:v25];

    [(UILabel *)v11->_detailLabel setNumberOfLines:v18];
    [(UILabel *)v11->_detailLabel setLineBreakMode:v19];
    [(UILabel *)v11->_detailLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v26) = 1144750080;
    [(UILabel *)v11->_detailLabel setContentHuggingPriority:1 forAxis:v26];
    v27 = objc_opt_new();
    if (v6)
    {
      [STUsageColors updateVibrancyStylingForView:v11->_titleLabel withUsageColor:v17];
      v28 = [MEMORY[0x277D75D00] widgetEffectForVibrancyStyle:101];
      v29 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v28];
      [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(STSegmentView *)v11 addSubview:v29];
      v30 = [v29 contentView];
      [v30 addSubview:v11->_detailLabel];
      v31 = [MEMORY[0x277CCAAD0] st_constraintsForView:v30 equalToView:v11->_detailLabel];
      [v27 addObjectsFromArray:v31];

      v32 = 0.0;
    }

    else
    {
      [(STSegmentView *)v11 addSubview:v11->_detailLabel];
      v32 = 2.0;
    }

    v33 = [(UILabel *)v11->_titleLabel topAnchor];
    v34 = [(STSegmentView *)v11 topAnchor];
    v35 = [v33 constraintEqualToAnchor:v34];
    [v27 addObject:v35];

    v36 = [(UILabel *)v11->_titleLabel leadingAnchor];
    v37 = [(STSegmentView *)v11 leadingAnchor];
    v38 = [v36 constraintEqualToAnchor:v37];
    [v27 addObject:v38];

    v39 = [(UILabel *)v11->_titleLabel trailingAnchor];
    v40 = [(STSegmentView *)v11 trailingAnchor];
    v41 = [v39 constraintEqualToAnchor:v40];
    [v27 addObject:v41];

    v42 = [(UILabel *)v11->_titleLabel heightAnchor];
    v43 = [(UILabel *)v11->_detailLabel heightAnchor];
    v44 = [v42 constraintEqualToAnchor:v43];
    [v27 addObject:v44];

    v45 = objc_alloc(MEMORY[0x277D755E8]);
    v46 = [v9 detailImage];
    v47 = [v45 initWithImage:v46];
    detailImageView = v11->_detailImageView;
    v11->_detailImageView = v47;

    [(UIImageView *)v11->_detailImageView setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
    v49 = [v9 detailImageTintColor];
    [(UIImageView *)v11->_detailImageView setTintColor:v49];

    [(UIImageView *)v11->_detailImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(STSegmentView *)v11 addSubview:v11->_detailImageView];
    v50 = [(UIImageView *)v11->_detailImageView leadingAnchor];
    v51 = [(STSegmentView *)v11 leadingAnchor];
    v52 = [v50 constraintEqualToAnchor:v51];
    [v27 addObject:v52];

    v53 = [(UIImageView *)v11->_detailImageView bottomAnchor];
    v54 = [(UILabel *)v11->_detailLabel lastBaselineAnchor];
    v55 = [v53 constraintEqualToAnchor:v54];
    [v27 addObject:v55];

    [(UIImageView *)v11->_detailImageView sizeThatFits:1.79769313e308, 1.79769313e308];
    v57 = v56;
    v59 = v58;
    v60 = [(UILabel *)v11->_detailLabel leadingAnchor];
    v61 = [(UIImageView *)v11->_detailImageView trailingAnchor];
    v62 = v59 == *(MEMORY[0x277CBF3A8] + 8) && v57 == *MEMORY[0x277CBF3A8];
    v63 = 2.0;
    if (v62)
    {
      v63 = 0.0;
    }

    v64 = [v60 constraintEqualToAnchor:v61 constant:v63];
    detailLabelLeadingConstraint = v11->_detailLabelLeadingConstraint;
    v11->_detailLabelLeadingConstraint = v64;

    [v27 addObject:v11->_detailLabelLeadingConstraint];
    v66 = [(UIImageView *)v11->_detailImageView widthAnchor];
    v67 = [v66 constraintEqualToConstant:v57];
    detailImageWidthConstraint = v11->_detailImageWidthConstraint;
    v11->_detailImageWidthConstraint = v67;

    [v27 addObject:v11->_detailImageWidthConstraint];
    v69 = [(UIImageView *)v11->_detailImageView heightAnchor];
    v70 = [v69 constraintEqualToConstant:v59];
    detailImageHeightConstraint = v11->_detailImageHeightConstraint;
    v11->_detailImageHeightConstraint = v70;

    [v27 addObject:v11->_detailImageHeightConstraint];
    v72 = [(UILabel *)v11->_detailLabel topAnchor];
    v73 = [(UILabel *)v11->_titleLabel bottomAnchor];
    v74 = [v72 constraintEqualToAnchor:v73 constant:v32];
    [v27 addObject:v74];

    v75 = [(UILabel *)v11->_detailLabel bottomAnchor];
    v76 = [(STSegmentView *)v11 bottomAnchor];
    v77 = [v75 constraintEqualToAnchor:v76];
    [v27 addObject:v77];

    v78 = [(UILabel *)v11->_detailLabel trailingAnchor];
    v79 = [(STSegmentView *)v11 trailingAnchor];
    v80 = [v78 constraintEqualToAnchor:v79];
    [v27 addObject:v80];

    [MEMORY[0x277CCAAD0] activateConstraints:v27];
  }

  return v11;
}

- (void)setItem:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_item != v5)
  {
    v24 = v5;
    v5 = [(STSegmentItem *)v5 isEqual:?];
    v6 = v24;
    if ((v5 & 1) == 0)
    {
      objc_storeStrong(&self->_item, a3);
      v7 = [(STSegmentItem *)v24 detailText];
      v8 = [(STSegmentView *)self detailLabel];
      [v8 setText:v7];

      v9 = [(STSegmentView *)self titleLabel];
      v10 = [(STSegmentItem *)v24 titleText];
      [v9 setText:v10];

      v11 = [(STSegmentItem *)v24 titleColor];
      [v9 setTextColor:v11];

      v12 = [(STSegmentView *)self detailImageView];
      v13 = [(STSegmentItem *)v24 detailImage];
      [v12 setImage:v13];

      v14 = [(STSegmentItem *)v24 detailImageTintColor];
      [v12 setTintColor:v14];

      [v12 sizeThatFits:{1.79769313e308, 1.79769313e308}];
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

      v21 = [(STSegmentView *)self detailLabelLeadingConstraint];
      [v21 setConstant:v20];

      v22 = [(STSegmentView *)self detailImageWidthConstraint];
      [v22 setConstant:v16];

      v23 = [(STSegmentView *)self detailImageHeightConstraint];
      [v23 setConstant:v18];

      v6 = v24;
    }
  }

  MEMORY[0x2821F96F8](v5, v6);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(STSegmentView *)self titleLabel];
  [v6 sizeThatFits:{width, height}];
  v8 = v7;
  v10 = v9;

  v11 = [(STSegmentView *)self detailLabel];
  [v11 sizeThatFits:{width, height}];
  v13 = v12;
  v15 = v14;

  v16 = [(STSegmentView *)self detailImageView];
  [v16 sizeThatFits:{width, height}];
  v18 = v17;

  v19 = [(STSegmentView *)self useVibrancy];
  v20 = v10 + v15 + 2.0;
  if (v19)
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

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = STSegmentView;
  [(STSegmentView *)&v11 traitCollectionDidChange:v4];
  if ([(STSegmentView *)self useVibrancy])
  {
    if (!v4 || (v5 = [v4 userInterfaceStyle], -[STSegmentView traitCollection](self, "traitCollection"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "userInterfaceStyle"), v6, v5 != v7))
    {
      v8 = [(STSegmentView *)self titleLabel];
      v9 = [(STSegmentView *)self item];
      v10 = [v9 titleColor];
      [STUsageColors updateVibrancyStylingForView:v8 withUsageColor:v10];
    }
  }
}

@end