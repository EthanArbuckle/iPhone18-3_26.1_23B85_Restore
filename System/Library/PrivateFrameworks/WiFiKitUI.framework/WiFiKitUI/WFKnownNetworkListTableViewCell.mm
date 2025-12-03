@interface WFKnownNetworkListTableViewCell
- (WFKnownNetworkListTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setHasLeadingPadding:(BOOL)padding;
- (void)setNetworkName:(id)name;
@end

@implementation WFKnownNetworkListTableViewCell

- (WFKnownNetworkListTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v56.receiver = self;
  v56.super_class = WFKnownNetworkListTableViewCell;
  v4 = [(WFKnownNetworkListTableViewCell *)&v56 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D755E8]);
    lockImageView = v4->_lockImageView;
    v4->_lockImageView = v5;

    v7 = +[WFImageCache sharedImageCache];
    v8 = [v7 imageNamed:@"Lock"];
    v9 = [v8 imageWithRenderingMode:2];
    [(UIImageView *)v4->_lockImageView setImage:v9];

    v10 = v4->_lockImageView;
    defaultTextColor = [MEMORY[0x277D75348] defaultTextColor];
    [(UIImageView *)v10 setTintColor:defaultTextColor];

    [(UIImageView *)v4->_lockImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(WFKnownNetworkListTableViewCell *)v4 contentView];
    [contentView addSubview:v4->_lockImageView];

    trailingAnchor = [(UIImageView *)v4->_lockImageView trailingAnchor];
    contentView2 = [(WFKnownNetworkListTableViewCell *)v4 contentView];
    trailingAnchor2 = [contentView2 trailingAnchor];
    v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

    [v16 setConstant:-8.0];
    [v16 setActive:1];
    v17 = objc_alloc_init(MEMORY[0x277D756B8]);
    networkNameLabel = v4->_networkNameLabel;
    v4->_networkNameLabel = v17;

    [(UILabel *)v4->_networkNameLabel setNumberOfLines:0];
    v19 = v4->_networkNameLabel;
    defaultTextColor2 = [MEMORY[0x277D75348] defaultTextColor];
    [(UILabel *)v19 setTintColor:defaultTextColor2];

    [(UILabel *)v4->_networkNameLabel setAdjustsFontForContentSizeCategory:1];
    v21 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v4->_networkNameLabel setFont:v21];

    [(UILabel *)v4->_networkNameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView3 = [(WFKnownNetworkListTableViewCell *)v4 contentView];
    [contentView3 addSubview:v4->_networkNameLabel];

    centerYAnchor = [(UIImageView *)v4->_lockImageView centerYAnchor];
    contentView4 = [(WFKnownNetworkListTableViewCell *)v4 contentView];
    centerYAnchor2 = [contentView4 centerYAnchor];
    v26 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v26 setActive:1];

    centerYAnchor3 = [(UILabel *)v4->_networkNameLabel centerYAnchor];
    contentView5 = [(WFKnownNetworkListTableViewCell *)v4 contentView];
    centerYAnchor4 = [contentView5 centerYAnchor];
    v30 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    [v30 setActive:1];

    trailingAnchor3 = [(UILabel *)v4->_networkNameLabel trailingAnchor];
    leadingAnchor = [(UIImageView *)v4->_lockImageView leadingAnchor];
    v33 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor];
    [v33 setActive:1];

    font = [(UILabel *)v4->_networkNameLabel font];
    [font _bodyLeading];
    v36 = v35 + -8.0;

    topAnchor = [(UILabel *)v4->_networkNameLabel topAnchor];
    contentView6 = [(WFKnownNetworkListTableViewCell *)v4 contentView];
    topAnchor2 = [contentView6 topAnchor];
    v40 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v36];
    [v40 setActive:1];

    bottomAnchor = [(UILabel *)v4->_networkNameLabel bottomAnchor];
    contentView7 = [(WFKnownNetworkListTableViewCell *)v4 contentView];
    bottomAnchor2 = [contentView7 bottomAnchor];
    v44 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v36];
    [v44 setActive:1];

    leadingAnchor2 = [(UILabel *)v4->_networkNameLabel leadingAnchor];
    contentView8 = [(WFKnownNetworkListTableViewCell *)v4 contentView];
    leadingAnchor3 = [contentView8 leadingAnchor];
    v48 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3 constant:10.0];
    normalLeadingConstraints = v4->_normalLeadingConstraints;
    v4->_normalLeadingConstraints = v48;

    [(NSLayoutConstraint *)v4->_normalLeadingConstraints setActive:1];
    v4->_showLock = 1;
    leadingAnchor4 = [(UILabel *)v4->_networkNameLabel leadingAnchor];
    contentView9 = [(WFKnownNetworkListTableViewCell *)v4 contentView];
    leadingAnchor5 = [contentView9 leadingAnchor];
    v53 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5 constant:50.0];
    extraLeadingConstraints = v4->_extraLeadingConstraints;
    v4->_extraLeadingConstraints = v53;
  }

  return v4;
}

- (void)setNetworkName:(id)name
{
  nameCopy = name;
  networkNameLabel = [(WFKnownNetworkListTableViewCell *)self networkNameLabel];
  [networkNameLabel setText:nameCopy];
}

- (void)setHasLeadingPadding:(BOOL)padding
{
  paddingCopy = padding;
  [(NSLayoutConstraint *)self->_extraLeadingConstraints setActive:?];
  [(NSLayoutConstraint *)self->_normalLeadingConstraints setActive:!paddingCopy];

  [(WFKnownNetworkListTableViewCell *)self setNeedsLayout];
}

@end