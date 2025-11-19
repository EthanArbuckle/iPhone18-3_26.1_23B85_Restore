@interface STTableViewHeaderFooterView
- (STTableViewHeaderFooterView)initWithReuseIdentifier:(id)a3 useLayoutMarginsGuide:(BOOL)a4;
- (void)layoutSubviews;
@end

@implementation STTableViewHeaderFooterView

- (STTableViewHeaderFooterView)initWithReuseIdentifier:(id)a3 useLayoutMarginsGuide:(BOOL)a4
{
  v4 = a4;
  v63[12] = *MEMORY[0x277D85DE8];
  v62.receiver = self;
  v62.super_class = STTableViewHeaderFooterView;
  v5 = [(STTableViewHeaderFooterView *)&v62 initWithReuseIdentifier:a3];
  v6 = v5;
  if (v5)
  {
    [(STTableViewHeaderFooterView *)v5 setTableViewStyle:1];
    v7 = [(STTableViewHeaderFooterView *)v6 textLabel];
    [v7 setText:@" "];
    [v7 setHidden:1];
    v61.receiver = v6;
    v61.super_class = STTableViewHeaderFooterView;
    [(STTableViewHeaderFooterView *)&v61 setNeedsLayout];
    v60.receiver = v6;
    v60.super_class = STTableViewHeaderFooterView;
    [(STTableViewHeaderFooterView *)&v60 layoutIfNeeded];
    if (v4)
    {
      v8 = [(STTableViewHeaderFooterView *)v6 layoutMarginsGuide];
      contentLayoutGuide = v6->_contentLayoutGuide;
      v6->_contentLayoutGuide = v8;

      rtlContentLayoutGuideConstraints = v6->_rtlContentLayoutGuideConstraints;
      v6->_rtlContentLayoutGuideConstraints = 0;
    }

    else
    {
      v11 = [(STTableViewHeaderFooterView *)v6 contentView];
      v12 = objc_opt_new();
      [(NSArray *)v11 addLayoutGuide:v12];
      v13 = objc_opt_new();
      [(NSArray *)v11 addLayoutGuide:v13];
      v14 = objc_opt_new();
      v15 = v6->_contentLayoutGuide;
      v6->_contentLayoutGuide = v14;

      [(NSArray *)v11 addLayoutGuide:v6->_contentLayoutGuide];
      v55 = [(UILayoutGuide *)v6->_contentLayoutGuide topAnchor];
      v54 = [(NSArray *)v11 topAnchor];
      v53 = [v55 constraintEqualToAnchor:v54];
      v63[0] = v53;
      v52 = [(UILayoutGuide *)v6->_contentLayoutGuide bottomAnchor];
      v51 = [(NSArray *)v11 bottomAnchor];
      v50 = [v52 constraintEqualToAnchor:v51];
      v63[1] = v50;
      v49 = [v12 topAnchor];
      v48 = [(UILayoutGuide *)v6->_contentLayoutGuide topAnchor];
      v47 = [v49 constraintEqualToAnchor:v48];
      v63[2] = v47;
      v46 = [v12 bottomAnchor];
      v45 = [(UILayoutGuide *)v6->_contentLayoutGuide bottomAnchor];
      v44 = [v46 constraintEqualToAnchor:v45];
      v63[3] = v44;
      v43 = [v12 leadingAnchor];
      v42 = [(NSArray *)v11 leadingAnchor];
      v41 = [v43 constraintEqualToAnchor:v42];
      v63[4] = v41;
      v40 = [v12 trailingAnchor];
      v39 = [(UILayoutGuide *)v6->_contentLayoutGuide leadingAnchor];
      v38 = [v40 constraintEqualToAnchor:v39];
      v63[5] = v38;
      v37 = [v13 topAnchor];
      v36 = [(UILayoutGuide *)v6->_contentLayoutGuide topAnchor];
      v35 = [v37 constraintEqualToAnchor:v36];
      v63[6] = v35;
      v34 = [v13 bottomAnchor];
      v33 = [(UILayoutGuide *)v6->_contentLayoutGuide bottomAnchor];
      v32 = [v34 constraintEqualToAnchor:v33];
      v63[7] = v32;
      v31 = [v13 leadingAnchor];
      v30 = [(UILayoutGuide *)v6->_contentLayoutGuide trailingAnchor];
      v29 = [v31 constraintEqualToAnchor:v30];
      v63[8] = v29;
      v28 = [v13 trailingAnchor];
      v58 = v11;
      v16 = [(NSArray *)v11 trailingAnchor];
      v17 = [v28 constraintEqualToAnchor:v16];
      v63[9] = v17;
      v18 = [v12 trailingAnchor];
      v59 = v7;
      v19 = [v7 leadingAnchor];
      v20 = [v18 constraintEqualToAnchor:v19];
      v63[10] = v20;
      v57 = v12;
      v21 = [v12 widthAnchor];
      v56 = v13;
      v22 = [v13 widthAnchor];
      v23 = [v21 constraintEqualToAnchor:v22];
      v63[11] = v23;
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:12];

      if ([(STTableViewHeaderFooterView *)v6 effectiveUserInterfaceLayoutDirection])
      {
        v25 = v24;
        v26 = v6->_rtlContentLayoutGuideConstraints;
        v6->_rtlContentLayoutGuideConstraints = v25;
      }

      else
      {
        [MEMORY[0x277CCAAD0] activateConstraints:v24];
        v26 = v6->_rtlContentLayoutGuideConstraints;
        v6->_rtlContentLayoutGuideConstraints = 0;
      }

      rtlContentLayoutGuideConstraints = v58;
      v7 = v59;
    }
  }

  return v6;
}

- (void)layoutSubviews
{
  v3 = [(STTableViewHeaderFooterView *)self rtlContentLayoutGuideConstraints];
  if (v3)
  {
    if ([(STTableViewHeaderFooterView *)self effectiveUserInterfaceLayoutDirection]== 1)
    {
      v4 = [(STTableViewHeaderFooterView *)self superview];

      if (v4)
      {
        [MEMORY[0x277CCAAD0] activateConstraints:v3];
        [(STTableViewHeaderFooterView *)self setRtlContentLayoutGuideConstraints:0];
      }
    }
  }

  v5.receiver = self;
  v5.super_class = STTableViewHeaderFooterView;
  [(STTableViewHeaderFooterView *)&v5 layoutSubviews];
}

@end