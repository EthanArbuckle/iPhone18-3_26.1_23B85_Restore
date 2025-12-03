@interface ICQUsageDetailHeader
+ (double)usageDetailHeaderHeight;
- (ICQUsageDetailHeader)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setLabelTextAndIconWithSpecifier:(id)specifier;
@end

@implementation ICQUsageDetailHeader

+ (double)usageDetailHeaderHeight
{
  v2 = PSIsiPad();
  result = 88.0;
  if (v2)
  {
    return 118.0;
  }

  return result;
}

- (ICQUsageDetailHeader)initWithFrame:(CGRect)frame
{
  v52[1] = *MEMORY[0x277D85DE8];
  v50.receiver = self;
  v50.super_class = ICQUsageDetailHeader;
  v3 = [(ICQUsageDetailHeader *)&v50 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    horizontalStack = v3->_horizontalStack;
    v3->_horizontalStack = v4;

    [(UIStackView *)v3->_horizontalStack setAlignment:3];
    v6 = objc_opt_new();
    verticalStack = v3->_verticalStack;
    v3->_verticalStack = v6;

    [(UIStackView *)v3->_verticalStack setAxis:1];
    LODWORD(v8) = 1148846080;
    [(UIStackView *)v3->_verticalStack setContentHuggingPriority:1 forAxis:v8];
    [(UIStackView *)v3->_verticalStack setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v3->_horizontalStack setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = objc_alloc(MEMORY[0x277D756B8]);
    v10 = *MEMORY[0x277CBF3A0];
    v11 = *(MEMORY[0x277CBF3A0] + 8);
    v12 = *(MEMORY[0x277CBF3A0] + 16);
    v13 = *(MEMORY[0x277CBF3A0] + 24);
    v14 = [v9 initWithFrame:{*MEMORY[0x277CBF3A0], v11, v12, v13}];
    nameLabel = v3->_nameLabel;
    v3->_nameLabel = v14;

    [(UILabel *)v3->_nameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = PreferencesTableViewHeaderFont();
    [(UILabel *)v3->_nameLabel setFont:v16];

    v17 = PreferencesTableViewHeaderColor();
    [(UILabel *)v3->_nameLabel setTextColor:v17];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v3->_nameLabel setBackgroundColor:clearColor];

    [(UIStackView *)v3->_verticalStack addArrangedSubview:v3->_nameLabel];
    v19 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v10, v11, v12, v13}];
    versionLabel = v3->_versionLabel;
    v3->_versionLabel = v19;

    [(UILabel *)v3->_versionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v21 = PreferencesTableViewHeaderFont();
    [(UILabel *)v3->_versionLabel setFont:v21];

    v22 = PreferencesTableViewHeaderColor();
    [(UILabel *)v3->_versionLabel setTextColor:v22];

    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v3->_versionLabel setBackgroundColor:clearColor2];

    [(UIStackView *)v3->_verticalStack addArrangedSubview:v3->_versionLabel];
    v24 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v10, v11, v12, v13}];
    sizeLabel = v3->_sizeLabel;
    v3->_sizeLabel = v24;

    [(UILabel *)v3->_sizeLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v26 = PreferencesTableViewHeaderFont();
    [(UILabel *)v3->_sizeLabel setFont:v26];

    v27 = PreferencesTableViewHeaderColor();
    [(UILabel *)v3->_sizeLabel setTextColor:v27];

    clearColor3 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v3->_sizeLabel setBackgroundColor:clearColor3];

    [(UIStackView *)v3->_verticalStack addArrangedSubview:v3->_sizeLabel];
    v29 = objc_opt_new();
    appIcon = v3->_appIcon;
    v3->_appIcon = v29;

    [(UIImageView *)v3->_appIcon setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v31) = 1148846080;
    [(UIImageView *)v3->_appIcon setContentHuggingPriority:1 forAxis:v31];
    LODWORD(v32) = 1148846080;
    [(UIImageView *)v3->_appIcon setContentHuggingPriority:0 forAxis:v32];
    [(UIStackView *)v3->_horizontalStack addArrangedSubview:v3->_appIcon];
    [(UIStackView *)v3->_horizontalStack addArrangedSubview:v3->_verticalStack];
    [(UIStackView *)v3->_horizontalStack setSpacing:15.0];
    [(ICQUsageDetailHeader *)v3 addSubview:v3->_horizontalStack];
    v33 = _NSDictionaryOfVariableBindings(&cfstr_VerticalstackH.isa, v3->_verticalStack, v3->_horizontalStack, 0);
    leadingAnchor = [(UIStackView *)v3->_horizontalStack leadingAnchor];
    leadingAnchor2 = [(ICQUsageDetailHeader *)v3 leadingAnchor];
    v36 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    leadingMargin = v3->_leadingMargin;
    v3->_leadingMargin = v36;

    [(NSLayoutConstraint *)v3->_leadingMargin setActive:1];
    v38 = MEMORY[0x277CCAAD0];
    v39 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:[_horizontalStack]-|" options:0 metrics:0 views:v33];
    [v38 activateConstraints:v39];

    v40 = MEMORY[0x277CCAAD0];
    v51 = @"topPadding";
    v41 = MEMORY[0x277CCABB0];
    v42 = PSIsiPad();
    v43 = 19.0;
    if (v42)
    {
      v43 = 29.0;
    }

    v44 = [v41 numberWithDouble:v43];
    v52[0] = v44;
    v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:&v51 count:1];
    v46 = [v40 constraintsWithVisualFormat:@"V:|-(topPadding)-[_horizontalStack]-|" options:0 metrics:v45 views:v33];
    [v40 activateConstraints:v46];

    heightAnchor = [(ICQUsageDetailHeader *)v3 heightAnchor];
    [objc_opt_class() usageDetailHeaderHeight];
    v48 = [heightAnchor constraintEqualToConstant:?];
    [v48 setActive:1];
  }

  return v3;
}

- (void)setLabelTextAndIconWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  name = [specifierCopy name];
  uppercaseString = [name uppercaseString];
  [(UILabel *)self->_nameLabel setText:uppercaseString];

  v6 = [specifierCopy propertyForKey:@"SIZE_VALUE"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = specifierCopy;
  if (isKindOfClass)
  {
    v9 = [specifierCopy propertyForKey:@"SIZE_TITLE"];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v11 = [v12 localizedStringForKey:@"SIZE" value:&stru_28844FC60 table:@"Usage Statistics"];
    }

    v13 = MEMORY[0x277CCACA8];
    v14 = [MEMORY[0x277CCA8E8] stringFromByteCount:objc_msgSend(v6 countStyle:{"longLongValue"), 2}];
    v15 = [v13 stringWithFormat:@"%@ %@", v11, v14];
    [(UILabel *)self->_sizeLabel setText:v15];

    v8 = specifierCopy;
  }

  v16 = [v8 propertyForKey:@"VERSION"];
  v17 = [v16 length];
  if (v17)
  {
    v18 = MEMORY[0x277CCACA8];
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"VERSION" value:&stru_28844FC60 table:@"Usage Statistics"];
    v21 = [v18 stringWithFormat:@"%@ %@", v20, v16];
    p_versionLabel = &self->_versionLabel;
    [(UILabel *)self->_versionLabel setText:v21];
  }

  else
  {
    p_versionLabel = &self->_versionLabel;
    [(UILabel *)self->_versionLabel setText:0];
  }

  [(UILabel *)*p_versionLabel setHidden:v17 == 0];
  v23 = MEMORY[0x277D755B8];
  identifier = [specifierCopy identifier];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v26 = [v23 _applicationIconImageForBundleIdentifier:identifier format:2 scale:?];
  [(UIImageView *)self->_appIcon setImage:v26];
}

- (void)layoutSubviews
{
  superview = [(ICQUsageDetailHeader *)self superview];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [ICQUsageDetailHeader layoutSubviews];
  }

  superview2 = [(ICQUsageDetailHeader *)self superview];
  readableContentGuide = [superview2 readableContentGuide];
  [readableContentGuide layoutFrame];
  v7 = v6;

  v8 = PSIsiPad();
  v9 = v7 + 13.0;
  if (!v8)
  {
    v9 = v7;
  }

  leadingMargin = self->_leadingMargin;

  [(NSLayoutConstraint *)leadingMargin setConstant:v9];
}

@end