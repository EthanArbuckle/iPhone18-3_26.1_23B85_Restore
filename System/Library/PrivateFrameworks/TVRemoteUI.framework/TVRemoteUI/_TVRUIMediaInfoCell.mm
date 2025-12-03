@interface _TVRUIMediaInfoCell
+ (CGSize)preferredImageSize;
- (TVRUIUpNextProviding)upNextProvider;
- (_TVRUIMediaInfoCell)initWithFrame:(CGRect)frame;
- (_TVRUITemplateImageProviding)imageProvider;
- (void)_configureHierarchy;
- (void)prepareForReuse;
- (void)setMediaInfo:(id)info;
@end

@implementation _TVRUIMediaInfoCell

- (_TVRUIMediaInfoCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _TVRUIMediaInfoCell;
  v3 = [(_TVRUIMediaInfoCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_TVRUIMediaInfoCell *)v3 _configureHierarchy];
  }

  return v4;
}

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = _TVRUIMediaInfoCell;
  [(_TVRUIMediaInfoCell *)&v6 prepareForReuse];
  imageView = [(_TVRUIMediaInfoCell *)self imageView];
  [imageView setImage:0];

  titleLabel = [(_TVRUIMediaInfoCell *)self titleLabel];
  [titleLabel setText:0];

  showTitleLabel = [(_TVRUIMediaInfoCell *)self showTitleLabel];
  [showTitleLabel setText:0];
}

+ (CGSize)preferredImageSize
{
  v2 = 102.0;
  v3 = 60.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setMediaInfo:(id)info
{
  infoCopy = info;
  objc_storeStrong(&self->_mediaInfo, info);
  if (infoCopy)
  {
    title = [infoCopy title];
    titleLabel = [(_TVRUIMediaInfoCell *)self titleLabel];
    [titleLabel setText:title];

    showTitle = [infoCopy showTitle];
    showTitleLabel = [(_TVRUIMediaInfoCell *)self showTitleLabel];
    [showTitleLabel setText:showTitle];

    tvrui_formattedSummary = [infoCopy tvrui_formattedSummary];
    factoidsLabel = [(_TVRUIMediaInfoCell *)self factoidsLabel];
    [factoidsLabel setText:tvrui_formattedSummary];

    objc_initWeak(&location, self);
    imageProvider = [(_TVRUIMediaInfoCell *)self imageProvider];
    imageURLTemplate = [infoCopy imageURLTemplate];
    [objc_opt_class() preferredImageSize];
    v15 = v14;
    v17 = v16;
    identifier = [infoCopy identifier];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __36___TVRUIMediaInfoCell_setMediaInfo___block_invoke;
    v19[3] = &unk_279D87EC8;
    objc_copyWeak(&v20, &location);
    [imageProvider requestImageForTemplate:imageURLTemplate size:identifier identifier:v19 completion:{v15, v17}];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

- (void)_configureHierarchy
{
  v129 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D755E8]);
  v4 = objc_alloc(MEMORY[0x277D755E8]);
  v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  v6 = objc_alloc_init(MEMORY[0x277D75D18]);
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v113 = objc_alloc_init(MEMORY[0x277D756B8]);
  v114 = objc_alloc_init(MEMORY[0x277D756B8]);
  v127[0] = v113;
  v127[1] = v114;
  v115 = objc_alloc_init(MEMORY[0x277D756B8]);
  v127[2] = v115;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v127 count:3];
  v8 = [v7 countByEnumeratingWithState:&v120 objects:v128 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v121;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v121 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v120 + 1) + 8 * i);
        [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v6 addSubview:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v120 objects:v128 count:16];
    }

    while (v9);
  }

  contentView = [(_TVRUIMediaInfoCell *)self contentView];
  v14 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  [(UILabel *)v113 setFont:v14];

  [(UILabel *)v113 setTranslatesAutoresizingMaskIntoConstraints:0];
  labelColor = [MEMORY[0x277D75348] labelColor];
  [(UILabel *)v113 setTextColor:labelColor];

  [(UILabel *)v113 setNumberOfLines:2];
  [(UILabel *)v113 setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)v113 setAdjustsFontSizeToFitWidth:1];
  LODWORD(v16) = 1148846080;
  [(UILabel *)v113 setContentHuggingPriority:1 forAxis:v16];
  v17 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
  [(UILabel *)v114 setFont:v17];

  [(UILabel *)v114 setTranslatesAutoresizingMaskIntoConstraints:0];
  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [(UILabel *)v114 setTextColor:secondaryLabelColor];

  [(UILabel *)v114 setNumberOfLines:1];
  [(UILabel *)v114 setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)v114 setAdjustsFontSizeToFitWidth:1];
  v19 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76940]];
  [(UILabel *)v115 setFont:v19];

  lightGrayColor = [MEMORY[0x277D75348] lightGrayColor];
  [(UILabel *)v115 setTextColor:lightGrayColor];

  [(UILabel *)v115 setNumberOfLines:0];
  [(UILabel *)v115 setAdjustsFontForContentSizeCategory:1];
  [(UIImageView *)v3 _setContinuousCornerRadius:8.0];
  [(UIImageView *)v3 setClipsToBounds:1];
  [(UIImageView *)v3 setContentMode:2];
  grayColor = [MEMORY[0x277D75348] grayColor];
  cGColor = [grayColor CGColor];
  layer = [(UIImageView *)v3 layer];
  [layer setBorderColor:cGColor];

  layer2 = [(UIImageView *)v3 layer];
  [layer2 setBorderWidth:0.5];

  v25 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.right"];
  [v5 setImage:v25];

  lightGrayColor2 = [MEMORY[0x277D75348] lightGrayColor];
  [v5 setTintColor:lightGrayColor2];

  LODWORD(v27) = 1148846080;
  [v5 setContentHuggingPriority:0 forAxis:v27];
  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v125[0] = v3;
  v125[1] = v6;
  v125[2] = v5;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v125 count:3];
  v29 = [v28 countByEnumeratingWithState:&v116 objects:v126 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v117;
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v117 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v116 + 1) + 8 * j);
        [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
        [contentView addSubview:v33];
      }

      v30 = [v28 countByEnumeratingWithState:&v116 objects:v126 count:16];
    }

    while (v30);
  }

  [objc_opt_class() preferredImageSize];
  v35 = v34;
  v37 = v36;
  v88 = MEMORY[0x277CCAAD0];
  leadingAnchor = [(UIImageView *)v3 leadingAnchor];
  leadingAnchor2 = [contentView leadingAnchor];
  v110 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:15.0];
  v124[0] = v110;
  centerYAnchor = [(UIImageView *)v3 centerYAnchor];
  centerYAnchor2 = [contentView centerYAnchor];
  v107 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v124[1] = v107;
  widthAnchor = [(UIImageView *)v3 widthAnchor];
  v105 = [widthAnchor constraintEqualToConstant:v35];
  v124[2] = v105;
  heightAnchor = [(UIImageView *)v3 heightAnchor];
  v103 = [heightAnchor constraintEqualToConstant:v37];
  v124[3] = v103;
  topAnchor = [(UIImageView *)v3 topAnchor];
  topAnchor2 = [contentView topAnchor];
  v100 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:8.0];
  v124[4] = v100;
  bottomAnchor = [(UIImageView *)v3 bottomAnchor];
  topAnchor3 = [contentView topAnchor];
  v97 = [bottomAnchor constraintLessThanOrEqualToAnchor:topAnchor3 constant:-8.0];
  v124[5] = v97;
  centerYAnchor3 = [v6 centerYAnchor];
  centerYAnchor4 = [contentView centerYAnchor];
  v94 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v124[6] = v94;
  leadingAnchor3 = [v6 leadingAnchor];
  trailingAnchor = [(UIImageView *)v3 trailingAnchor];
  v91 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:15.0];
  v124[7] = v91;
  trailingAnchor2 = [v6 trailingAnchor];
  leadingAnchor4 = [v5 leadingAnchor];
  v86 = [trailingAnchor2 constraintEqualToAnchor:leadingAnchor4 constant:-15.0];
  v124[8] = v86;
  centerYAnchor5 = [v5 centerYAnchor];
  centerYAnchor6 = [contentView centerYAnchor];
  v83 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
  v124[9] = v83;
  trailingAnchor3 = [v5 trailingAnchor];
  trailingAnchor4 = [contentView trailingAnchor];
  v78 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-15.0];
  v124[10] = v78;
  topAnchor4 = [(UILabel *)v113 topAnchor];
  topAnchor5 = [v6 topAnchor];
  v75 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
  v124[11] = v75;
  leadingAnchor5 = [(UILabel *)v113 leadingAnchor];
  leadingAnchor6 = [v6 leadingAnchor];
  v72 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v124[12] = v72;
  trailingAnchor5 = [(UILabel *)v113 trailingAnchor];
  trailingAnchor6 = [v6 trailingAnchor];
  v69 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v124[13] = v69;
  topAnchor6 = [(UILabel *)v114 topAnchor];
  bottomAnchor2 = [(UILabel *)v113 bottomAnchor];
  v66 = [topAnchor6 constraintEqualToAnchor:bottomAnchor2 constant:1.0];
  v124[14] = v66;
  leadingAnchor7 = [(UILabel *)v114 leadingAnchor];
  leadingAnchor8 = [v6 leadingAnchor];
  v63 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  v124[15] = v63;
  trailingAnchor7 = [(UILabel *)v114 trailingAnchor];
  trailingAnchor8 = [v6 trailingAnchor];
  v60 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  v124[16] = v60;
  topAnchor7 = [(UILabel *)v115 topAnchor];
  bottomAnchor3 = [(UILabel *)v114 bottomAnchor];
  v57 = [topAnchor7 constraintEqualToAnchor:bottomAnchor3 constant:1.0];
  v124[17] = v57;
  leadingAnchor9 = [(UILabel *)v115 leadingAnchor];
  leadingAnchor10 = [v6 leadingAnchor];
  v38 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
  v124[18] = v38;
  [(UILabel *)v115 trailingAnchor];
  v39 = v79 = self;
  [v6 trailingAnchor];
  v40 = v80 = v3;
  v41 = [v39 constraintEqualToAnchor:v40];
  v124[19] = v41;
  bottomAnchor4 = [(UILabel *)v115 bottomAnchor];
  [v6 bottomAnchor];
  v43 = v87 = v5;
  v44 = [bottomAnchor4 constraintEqualToAnchor:v43];
  v124[20] = v44;
  v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v124 count:21];
  [v88 activateConstraints:v45];

  v46 = objc_alloc_init(MEMORY[0x277D75D18]);
  v47 = [MEMORY[0x277D75348] colorWithWhite:0.25 alpha:1.0];
  [v46 setBackgroundColor:v47];

  [(_TVRUIMediaInfoCell *)v79 setSelectedBackgroundView:v46];
  imageView = v79->_imageView;
  v79->_imageView = v80;
  v49 = v80;

  titleLabel = v79->_titleLabel;
  v79->_titleLabel = v113;
  v51 = v113;

  showTitleLabel = v79->_showTitleLabel;
  v79->_showTitleLabel = v114;
  v53 = v114;

  factoidsLabel = v79->_factoidsLabel;
  v79->_factoidsLabel = v115;

  [(_TVRUIMediaInfoCell *)v79 setOverrideUserInterfaceStyle:2];
}

- (_TVRUITemplateImageProviding)imageProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_imageProvider);

  return WeakRetained;
}

- (TVRUIUpNextProviding)upNextProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_upNextProvider);

  return WeakRetained;
}

@end