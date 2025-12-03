@interface STTableViewHeaderFooterView
- (STTableViewHeaderFooterView)initWithReuseIdentifier:(id)identifier useLayoutMarginsGuide:(BOOL)guide;
- (void)layoutSubviews;
@end

@implementation STTableViewHeaderFooterView

- (STTableViewHeaderFooterView)initWithReuseIdentifier:(id)identifier useLayoutMarginsGuide:(BOOL)guide
{
  guideCopy = guide;
  v63[12] = *MEMORY[0x277D85DE8];
  v62.receiver = self;
  v62.super_class = STTableViewHeaderFooterView;
  v5 = [(STTableViewHeaderFooterView *)&v62 initWithReuseIdentifier:identifier];
  v6 = v5;
  if (v5)
  {
    [(STTableViewHeaderFooterView *)v5 setTableViewStyle:1];
    textLabel = [(STTableViewHeaderFooterView *)v6 textLabel];
    [textLabel setText:@" "];
    [textLabel setHidden:1];
    v61.receiver = v6;
    v61.super_class = STTableViewHeaderFooterView;
    [(STTableViewHeaderFooterView *)&v61 setNeedsLayout];
    v60.receiver = v6;
    v60.super_class = STTableViewHeaderFooterView;
    [(STTableViewHeaderFooterView *)&v60 layoutIfNeeded];
    if (guideCopy)
    {
      layoutMarginsGuide = [(STTableViewHeaderFooterView *)v6 layoutMarginsGuide];
      contentLayoutGuide = v6->_contentLayoutGuide;
      v6->_contentLayoutGuide = layoutMarginsGuide;

      rtlContentLayoutGuideConstraints = v6->_rtlContentLayoutGuideConstraints;
      v6->_rtlContentLayoutGuideConstraints = 0;
    }

    else
    {
      contentView = [(STTableViewHeaderFooterView *)v6 contentView];
      v12 = objc_opt_new();
      [(NSArray *)contentView addLayoutGuide:v12];
      v13 = objc_opt_new();
      [(NSArray *)contentView addLayoutGuide:v13];
      v14 = objc_opt_new();
      v15 = v6->_contentLayoutGuide;
      v6->_contentLayoutGuide = v14;

      [(NSArray *)contentView addLayoutGuide:v6->_contentLayoutGuide];
      topAnchor = [(UILayoutGuide *)v6->_contentLayoutGuide topAnchor];
      topAnchor2 = [(NSArray *)contentView topAnchor];
      v53 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v63[0] = v53;
      bottomAnchor = [(UILayoutGuide *)v6->_contentLayoutGuide bottomAnchor];
      bottomAnchor2 = [(NSArray *)contentView bottomAnchor];
      v50 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v63[1] = v50;
      topAnchor3 = [v12 topAnchor];
      topAnchor4 = [(UILayoutGuide *)v6->_contentLayoutGuide topAnchor];
      v47 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
      v63[2] = v47;
      bottomAnchor3 = [v12 bottomAnchor];
      bottomAnchor4 = [(UILayoutGuide *)v6->_contentLayoutGuide bottomAnchor];
      v44 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
      v63[3] = v44;
      leadingAnchor = [v12 leadingAnchor];
      leadingAnchor2 = [(NSArray *)contentView leadingAnchor];
      v41 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v63[4] = v41;
      trailingAnchor = [v12 trailingAnchor];
      leadingAnchor3 = [(UILayoutGuide *)v6->_contentLayoutGuide leadingAnchor];
      v38 = [trailingAnchor constraintEqualToAnchor:leadingAnchor3];
      v63[5] = v38;
      topAnchor5 = [v13 topAnchor];
      topAnchor6 = [(UILayoutGuide *)v6->_contentLayoutGuide topAnchor];
      v35 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
      v63[6] = v35;
      bottomAnchor5 = [v13 bottomAnchor];
      bottomAnchor6 = [(UILayoutGuide *)v6->_contentLayoutGuide bottomAnchor];
      v32 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
      v63[7] = v32;
      leadingAnchor4 = [v13 leadingAnchor];
      trailingAnchor2 = [(UILayoutGuide *)v6->_contentLayoutGuide trailingAnchor];
      v29 = [leadingAnchor4 constraintEqualToAnchor:trailingAnchor2];
      v63[8] = v29;
      trailingAnchor3 = [v13 trailingAnchor];
      v58 = contentView;
      trailingAnchor4 = [(NSArray *)contentView trailingAnchor];
      v17 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
      v63[9] = v17;
      trailingAnchor5 = [v12 trailingAnchor];
      v59 = textLabel;
      leadingAnchor5 = [textLabel leadingAnchor];
      v20 = [trailingAnchor5 constraintEqualToAnchor:leadingAnchor5];
      v63[10] = v20;
      v57 = v12;
      widthAnchor = [v12 widthAnchor];
      v56 = v13;
      widthAnchor2 = [v13 widthAnchor];
      v23 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
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
      textLabel = v59;
    }
  }

  return v6;
}

- (void)layoutSubviews
{
  rtlContentLayoutGuideConstraints = [(STTableViewHeaderFooterView *)self rtlContentLayoutGuideConstraints];
  if (rtlContentLayoutGuideConstraints)
  {
    if ([(STTableViewHeaderFooterView *)self effectiveUserInterfaceLayoutDirection]== 1)
    {
      superview = [(STTableViewHeaderFooterView *)self superview];

      if (superview)
      {
        [MEMORY[0x277CCAAD0] activateConstraints:rtlContentLayoutGuideConstraints];
        [(STTableViewHeaderFooterView *)self setRtlContentLayoutGuideConstraints:0];
      }
    }
  }

  v5.receiver = self;
  v5.super_class = STTableViewHeaderFooterView;
  [(STTableViewHeaderFooterView *)&v5 layoutSubviews];
}

@end