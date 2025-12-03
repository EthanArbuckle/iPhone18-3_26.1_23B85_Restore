@interface ICSDataclassWithSubtitleTableViewCell
- (ICSDataclassWithSubtitleTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (int64_t)_trailingTextAlignment;
- (void)_setupViews;
@end

@implementation ICSDataclassWithSubtitleTableViewCell

- (ICSDataclassWithSubtitleTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v8.receiver = self;
  v8.super_class = ICSDataclassWithSubtitleTableViewCell;
  v5 = [(PSTableCell *)&v8 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  v6 = v5;
  if (v5)
  {
    [(ICSDataclassWithSubtitleTableViewCell *)v5 setSelectionStyle:0];
    [(ICSDataclassWithSubtitleTableViewCell *)v6 _setupViews];
  }

  return v6;
}

- (void)_setupViews
{
  v94[2] = *MEMORY[0x277D85DE8];
  textLabel = [(ICSDataclassWithSubtitleTableViewCell *)self textLabel];
  [textLabel setHidden:1];

  detailTextLabel = [(ICSDataclassWithSubtitleTableViewCell *)self detailTextLabel];
  [detailTextLabel setHidden:1];

  v5 = objc_alloc(MEMORY[0x277D755E8]);
  v6 = *MEMORY[0x277CBF3A0];
  v7 = *(MEMORY[0x277CBF3A0] + 8);
  v8 = *(MEMORY[0x277CBF3A0] + 16);
  v9 = *(MEMORY[0x277CBF3A0] + 24);
  v10 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], v7, v8, v9}];
  [(ICSDataclassWithSubtitleTableViewCell *)self setIconView:v10];

  iconView = [(ICSDataclassWithSubtitleTableViewCell *)self iconView];
  [iconView setContentMode:1];

  iconView2 = [(ICSDataclassWithSubtitleTableViewCell *)self iconView];
  [iconView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  iconView3 = [(ICSDataclassWithSubtitleTableViewCell *)self iconView];
  LODWORD(v14) = 1148846080;
  [iconView3 setContentHuggingPriority:0 forAxis:v14];

  iconView4 = [(ICSDataclassWithSubtitleTableViewCell *)self iconView];
  LODWORD(v16) = 1148846080;
  [iconView4 setContentCompressionResistancePriority:0 forAxis:v16];

  iconView5 = [(ICSDataclassWithSubtitleTableViewCell *)self iconView];
  layer = [iconView5 layer];
  [layer setOpacity:0.0];

  v88 = MEMORY[0x277CCAAD0];
  iconView6 = [(ICSDataclassWithSubtitleTableViewCell *)self iconView];
  heightAnchor = [iconView6 heightAnchor];
  v21 = [heightAnchor constraintEqualToConstant:29.0];
  v94[0] = v21;
  iconView7 = [(ICSDataclassWithSubtitleTableViewCell *)self iconView];
  heightAnchor2 = [iconView7 heightAnchor];
  iconView8 = [(ICSDataclassWithSubtitleTableViewCell *)self iconView];
  widthAnchor = [iconView8 widthAnchor];
  v26 = [heightAnchor2 constraintEqualToAnchor:widthAnchor];
  v94[1] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:2];
  [v88 activateConstraints:v27];

  v28 = objc_alloc(MEMORY[0x277D75A68]);
  v29 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v6, v7, v8, v9}];
  v93[0] = v29;
  iconView9 = [(ICSDataclassWithSubtitleTableViewCell *)self iconView];
  v93[1] = iconView9;
  v31 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v6, v7, v8, v9}];
  v93[2] = v31;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:3];
  v33 = [v28 initWithArrangedSubviews:v32];

  [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v33 setAxis:1];
  [v33 setDistribution:3];
  v34 = v33;
  v89 = v33;
  [v33 setSpacing:0.0];
  v35 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v6, v7, v8, v9}];
  [(ICSDataclassWithSubtitleTableViewCell *)self setPrimaryLabel:v35];

  primaryLabel = [(ICSDataclassWithSubtitleTableViewCell *)self primaryLabel];
  [primaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  v37 = *MEMORY[0x277D76918];
  v38 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  primaryLabel2 = [(ICSDataclassWithSubtitleTableViewCell *)self primaryLabel];
  [primaryLabel2 setFont:v38];

  primaryLabel3 = [(ICSDataclassWithSubtitleTableViewCell *)self primaryLabel];
  [primaryLabel3 setNumberOfLines:0];

  v41 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v6, v7, v8, v9}];
  [(ICSDataclassWithSubtitleTableViewCell *)self setSecondaryLabel:v41];

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  secondaryLabel = [(ICSDataclassWithSubtitleTableViewCell *)self secondaryLabel];
  [secondaryLabel setTextColor:secondaryLabelColor];

  v44 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  secondaryLabel2 = [(ICSDataclassWithSubtitleTableViewCell *)self secondaryLabel];
  [secondaryLabel2 setFont:v44];

  secondaryLabel3 = [(ICSDataclassWithSubtitleTableViewCell *)self secondaryLabel];
  [secondaryLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

  secondaryLabel4 = [(ICSDataclassWithSubtitleTableViewCell *)self secondaryLabel];
  [secondaryLabel4 setNumberOfLines:0];

  v48 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v6, v7, v8, v9}];
  [(ICSDataclassWithSubtitleTableViewCell *)self setTertiaryLabel:v48];

  secondaryLabelColor2 = [MEMORY[0x277D75348] secondaryLabelColor];
  tertiaryLabel = [(ICSDataclassWithSubtitleTableViewCell *)self tertiaryLabel];
  [tertiaryLabel setTextColor:secondaryLabelColor2];

  _trailingTextAlignment = [(ICSDataclassWithSubtitleTableViewCell *)self _trailingTextAlignment];
  tertiaryLabel2 = [(ICSDataclassWithSubtitleTableViewCell *)self tertiaryLabel];
  [tertiaryLabel2 setTextAlignment:_trailingTextAlignment];

  tertiaryLabel3 = [(ICSDataclassWithSubtitleTableViewCell *)self tertiaryLabel];
  [tertiaryLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v54 = [MEMORY[0x277D74300] preferredFontForTextStyle:v37];
  tertiaryLabel4 = [(ICSDataclassWithSubtitleTableViewCell *)self tertiaryLabel];
  [tertiaryLabel4 setFont:v54];

  v56 = objc_alloc(MEMORY[0x277D75A68]);
  primaryLabel4 = [(ICSDataclassWithSubtitleTableViewCell *)self primaryLabel];
  v92[0] = primaryLabel4;
  secondaryLabel5 = [(ICSDataclassWithSubtitleTableViewCell *)self secondaryLabel];
  v92[1] = secondaryLabel5;
  v59 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:2];
  v60 = [v56 initWithArrangedSubviews:v59];

  [v60 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v60 setAxis:1];
  [v60 setDistribution:0];
  v61 = v60;
  v87 = v60;
  [v60 setSpacing:2.0];
  v62 = objc_alloc(MEMORY[0x277D75A68]);
  v91[0] = v34;
  v91[1] = v61;
  tertiaryLabel5 = [(ICSDataclassWithSubtitleTableViewCell *)self tertiaryLabel];
  v91[2] = tertiaryLabel5;
  v64 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:3];
  v65 = [v62 initWithArrangedSubviews:v64];

  [v65 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v65 setAxis:0];
  [v65 setDistribution:0];
  [v65 setSpacing:16.0];
  contentView = [(ICSDataclassWithSubtitleTableViewCell *)self contentView];
  [contentView addSubview:v65];

  trailingAnchor = [v65 trailingAnchor];
  contentView2 = [(ICSDataclassWithSubtitleTableViewCell *)self contentView];
  trailingAnchor2 = [contentView2 trailingAnchor];
  v70 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-8.0];
  [(ICSDataclassWithSubtitleTableViewCell *)self setTrailingConstraint:v70];

  v82 = MEMORY[0x277CCAAD0];
  topAnchor = [v65 topAnchor];
  contentView3 = [(ICSDataclassWithSubtitleTableViewCell *)self contentView];
  topAnchor2 = [contentView3 topAnchor];
  v83 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
  v90[0] = v83;
  bottomAnchor = [v65 bottomAnchor];
  contentView4 = [(ICSDataclassWithSubtitleTableViewCell *)self contentView];
  bottomAnchor2 = [contentView4 bottomAnchor];
  v73 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-10.0];
  v90[1] = v73;
  leadingAnchor = [v65 leadingAnchor];
  contentView5 = [(ICSDataclassWithSubtitleTableViewCell *)self contentView];
  leadingAnchor2 = [contentView5 leadingAnchor];
  v77 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v90[2] = v77;
  trailingConstraint = [(ICSDataclassWithSubtitleTableViewCell *)self trailingConstraint];
  v90[3] = trailingConstraint;
  v79 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:4];
  [v82 activateConstraints:v79];

  v80 = *MEMORY[0x277D85DE8];
}

- (int64_t)_trailingTextAlignment
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v3 = [mEMORY[0x277D75128] userInterfaceLayoutDirection] == 0;

  return 2 * v3;
}

@end