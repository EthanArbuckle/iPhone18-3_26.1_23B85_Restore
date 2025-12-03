@interface _TVRUIUpNextHorizontalCell
- (BOOL)hasURLForProductPageKind:(int64_t)kind;
- (_TVRUIUpNextHorizontalCell)initWithFrame:(CGRect)frame;
- (_TVRUIUpNextViewControllerActionDelegate)delegate;
- (id)_actionButton;
- (id)_actionMenu;
- (id)_seasonEpisodeFormatString;
- (id)_secondaryTextForUpNextInfo:(id)info;
- (id)urlForProductPageKind:(int64_t)kind;
- (void)_configureHierarchy;
- (void)_updateForUpNextInfo:(id)info;
- (void)actionButtonTapped;
- (void)layoutSubviews;
- (void)openProductPageForKind:(int64_t)kind;
- (void)openURL:(id)l;
- (void)prepareForReuse;
- (void)setUpNextInfo:(id)info;
@end

@implementation _TVRUIUpNextHorizontalCell

- (_TVRUIUpNextHorizontalCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _TVRUIUpNextHorizontalCell;
  v3 = [(_TVRUIUpNextHorizontalCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_TVRUIUpNextHorizontalCell *)v3 _configureHierarchy];
  }

  return v4;
}

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = _TVRUIUpNextHorizontalCell;
  [(_TVRUIUpNextHorizontalCell *)&v6 prepareForReuse];
  imageView = [(_TVRUIUpNextHorizontalCell *)self imageView];
  [imageView setImage:0];

  titleLabel = [(_TVRUIUpNextHorizontalCell *)self titleLabel];
  [titleLabel setText:0];

  secondaryLabel = [(_TVRUIUpNextHorizontalCell *)self secondaryLabel];
  [secondaryLabel setText:0];
}

- (void)setUpNextInfo:(id)info
{
  objc_storeStrong(&self->_upNextInfo, info);
  infoCopy = info;
  [(_TVRUIUpNextHorizontalCell *)self _updateForUpNextInfo:infoCopy];
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = _TVRUIUpNextHorizontalCell;
  [(_TVRUIUpNextHorizontalCell *)&v13 layoutSubviews];
  gradientView = [(_TVRUIUpNextHorizontalCell *)self gradientView];
  [gradientView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  gradientLayer = [(_TVRUIUpNextHorizontalCell *)self gradientLayer];
  [gradientLayer setFrame:{v5, v7, v9, v11}];
}

- (id)_actionMenu
{
  v25[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D755B8] systemImageNamed:@"arrow.up.right.square"];
  v4 = [MEMORY[0x277D755B8] systemImageNamed:@"square.and.arrow.up"];
  contentView = [(_TVRUIUpNextHorizontalCell *)self contentView];
  objc_initWeak(&location, self);
  v6 = MEMORY[0x277D753F0];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __41___TVRUIUpNextHorizontalCell__actionMenu__block_invoke;
  v18 = &unk_279D88590;
  selfCopy = self;
  v7 = v3;
  v20 = v7;
  objc_copyWeak(&v23, &location);
  v8 = v4;
  v21 = v8;
  v9 = contentView;
  v22 = v9;
  v10 = [v6 elementWithUncachedProvider:&v15];
  v11 = MEMORY[0x277D75710];
  v25[0] = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:{1, v15, v16, v17, v18, selfCopy}];
  v13 = [v11 menuWithChildren:v12];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);

  return v13;
}

- (BOOL)hasURLForProductPageKind:(int64_t)kind
{
  v3 = [(_TVRUIUpNextHorizontalCell *)self urlForProductPageKind:kind];
  v4 = v3 != 0;

  return v4;
}

- (void)openProductPageForKind:(int64_t)kind
{
  v4 = [(_TVRUIUpNextHorizontalCell *)self urlForProductPageKind:kind];
  if (v4)
  {
    [(_TVRUIUpNextHorizontalCell *)self openURL:v4];
  }

  MEMORY[0x2821F96F8]();
}

- (id)urlForProductPageKind:(int64_t)kind
{
  upNextInfo = [(_TVRUIUpNextHorizontalCell *)self upNextInfo];
  shareURL = [upNextInfo shareURL];

  upNextInfo2 = [(_TVRUIUpNextHorizontalCell *)self upNextInfo];
  v8 = upNextInfo2;
  if (!shareURL)
  {
    mediaInfo = [upNextInfo2 mediaInfo];

    if (mediaInfo)
    {
      if (kind == 1 || kind == 3)
      {
        productURL = [mediaInfo productURL];
        goto LABEL_16;
      }

      if (kind == 2)
      {
        productURL = [mediaInfo showURL];
LABEL_16:
        v12 = productURL;
        goto LABEL_17;
      }
    }

    v12 = 0;
LABEL_17:
    v8 = mediaInfo;
    goto LABEL_18;
  }

  if (kind == 1 || kind == 3)
  {
    shareURL2 = [upNextInfo2 shareURL];
    goto LABEL_12;
  }

  if (kind == 2)
  {
    shareURL2 = [upNextInfo2 shareShowURL];
LABEL_12:
    v12 = shareURL2;
    goto LABEL_18;
  }

  v12 = 0;
LABEL_18:

  return v12;
}

- (void)openURL:(id)l
{
  lCopy = l;
  delegate = [(_TVRUIUpNextHorizontalCell *)self delegate];
  [delegate openURL:lCopy];
}

- (void)_configureHierarchy
{
  v130[3] = *MEMORY[0x277D85DE8];
  _useCellAsMenu = [(_TVRUIUpNextHorizontalCell *)self _useCellAsMenu];
  v3 = objc_alloc(MEMORY[0x277D755E8]);
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v8 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], v5, v6, v7}];
  v9 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v4, v5, v6, v7}];
  v10 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v4, v5, v6, v7}];
  _actionButton = [(_TVRUIUpNextHorizontalCell *)self _actionButton];
  LODWORD(v11) = 1148846080;
  [(UIButton *)_actionButton setContentHuggingPriority:0 forAxis:v11];
  [(UIImageView *)v8 setUserInteractionEnabled:1];
  selfCopy = self;
  contentView = [(_TVRUIUpNextHorizontalCell *)self contentView];
  [contentView addSubview:v8];
  v12 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  [(UILabel *)v9 setFont:v12];

  [(UILabel *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  labelColor = [MEMORY[0x277D75348] labelColor];
  [(UILabel *)v9 setTextColor:labelColor];

  [(UILabel *)v9 setNumberOfLines:0];
  [(UILabel *)v9 setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)v9 setAdjustsFontSizeToFitWidth:1];
  LODWORD(v14) = 1148846080;
  [(UILabel *)v9 setContentHuggingPriority:1 forAxis:v14];
  v15 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
  v120 = v10;
  [(UILabel *)v10 setFont:v15];

  [(UILabel *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [(UILabel *)v10 setTextColor:secondaryLabelColor];

  [(UILabel *)v10 setNumberOfLines:0];
  [(UILabel *)v10 setAdjustsFontForContentSizeCategory:1];
  LODWORD(v17) = 1148846080;
  [(UILabel *)v10 setContentHuggingPriority:1 forAxis:v17];
  [(UIImageView *)v8 _setContinuousCornerRadius:12.0];
  [(UIImageView *)v8 setClipsToBounds:1];
  [(UIImageView *)v8 setContentMode:2];
  v18 = objc_alloc_init(MEMORY[0x277D75D18]);
  [(UIView *)v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  layer = [MEMORY[0x277CD9EB0] layer];
  [(CAGradientLayer *)layer setStartPoint:0.5, 0.0];
  [(CAGradientLayer *)layer setEndPoint:0.5, 1.0];
  [(CAGradientLayer *)layer setLocations:&unk_287E84B10];
  blackColor = [MEMORY[0x277D75348] blackColor];
  v20 = [blackColor colorWithAlphaComponent:0.0];
  v130[0] = [v20 CGColor];
  blackColor2 = [MEMORY[0x277D75348] blackColor];
  v22 = [blackColor2 colorWithAlphaComponent:0.5];
  v130[1] = [v22 CGColor];
  blackColor3 = [MEMORY[0x277D75348] blackColor];
  v24 = [blackColor3 colorWithAlphaComponent:1.0];
  v130[2] = [v24 CGColor];
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v130 count:3];
  [(CAGradientLayer *)layer setColors:v25];

  layer2 = [(UIView *)v18 layer];
  v113 = layer;
  [layer2 insertSublayer:layer atIndex:0];

  v115 = v18;
  [(UIImageView *)v8 addSubview:v18];
  [(UIImageView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v117 = v9;
  v128[0] = v9;
  v128[1] = v120;
  v128[2] = _actionButton;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v128 count:3];
  v28 = [v27 countByEnumeratingWithState:&v121 objects:v129 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v122;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v122 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v121 + 1) + 8 * i);
        [v32 setTranslatesAutoresizingMaskIntoConstraints:0];
        [(UIImageView *)v8 addSubview:v32];
      }

      v29 = [v27 countByEnumeratingWithState:&v121 objects:v129 count:16];
    }

    while (v29);
  }

  topAnchor = [(UIImageView *)v8 topAnchor];
  topAnchor2 = [contentView topAnchor];
  v105 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v127[0] = v105;
  leadingAnchor = [(UIImageView *)v8 leadingAnchor];
  leadingAnchor2 = [contentView leadingAnchor];
  v100 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v127[1] = v100;
  trailingAnchor = [(UIImageView *)v8 trailingAnchor];
  trailingAnchor2 = [contentView trailingAnchor];
  v96 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v127[2] = v96;
  bottomAnchor = [(UIImageView *)v8 bottomAnchor];
  bottomAnchor2 = [contentView bottomAnchor];
  v93 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v127[3] = v93;
  leadingAnchor3 = [(UILabel *)v9 leadingAnchor];
  leadingAnchor4 = [(UIImageView *)v8 leadingAnchor];
  v90 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:5.0];
  v127[4] = v90;
  trailingAnchor3 = [(UILabel *)v9 trailingAnchor];
  trailingAnchor4 = [(UIImageView *)v8 trailingAnchor];
  v87 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v127[5] = v87;
  topAnchor3 = [(UILabel *)v120 topAnchor];
  bottomAnchor3 = [(UILabel *)v9 bottomAnchor];
  v84 = [topAnchor3 constraintEqualToAnchor:bottomAnchor3 constant:0.0];
  v127[6] = v84;
  leadingAnchor5 = [(UILabel *)v120 leadingAnchor];
  leadingAnchor6 = [(UIImageView *)v8 leadingAnchor];
  v81 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:5.0];
  v127[7] = v81;
  trailingAnchor5 = [(UILabel *)v120 trailingAnchor];
  trailingAnchor6 = [(UIImageView *)v8 trailingAnchor];
  v78 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v127[8] = v78;
  bottomAnchor4 = [(UILabel *)v120 bottomAnchor];
  bottomAnchor5 = [(UIImageView *)v8 bottomAnchor];
  v75 = [bottomAnchor4 constraintLessThanOrEqualToAnchor:bottomAnchor5 constant:-5.0];
  v127[9] = v75;
  topAnchor4 = [(UIView *)v115 topAnchor];
  topAnchor5 = [(UILabel *)v9 topAnchor];
  v72 = [topAnchor4 constraintEqualToAnchor:topAnchor5 constant:-5.0];
  v127[10] = v72;
  leadingAnchor7 = [(UIView *)v115 leadingAnchor];
  leadingAnchor8 = [(UIImageView *)v8 leadingAnchor];
  v35 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  v127[11] = v35;
  trailingAnchor7 = [(UIView *)v115 trailingAnchor];
  trailingAnchor8 = [(UIImageView *)v8 trailingAnchor];
  v38 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  v127[12] = v38;
  bottomAnchor6 = [(UIView *)v115 bottomAnchor];
  bottomAnchor7 = [(UIImageView *)v8 bottomAnchor];
  v41 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
  v127[13] = v41;
  v97 = [MEMORY[0x277CBEA60] arrayWithObjects:v127 count:14];

  v42 = _actionButton;
  topAnchor6 = [(UIButton *)_actionButton topAnchor];
  topAnchor7 = [(UIImageView *)v8 topAnchor];
  if (_useCellAsMenu)
  {
    v104 = [topAnchor6 constraintEqualToAnchor:topAnchor7];
    v126[0] = v104;
    bottomAnchor8 = [(UIButton *)_actionButton bottomAnchor];
    bottomAnchor9 = [(UIImageView *)v8 bottomAnchor];
    v112 = bottomAnchor8;
    v46 = [bottomAnchor8 constraintEqualToAnchor:?];
    v126[1] = v46;
    leadingAnchor9 = [(UIButton *)_actionButton leadingAnchor];
    leadingAnchor10 = [(UIImageView *)v8 leadingAnchor];
    [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
    v48 = v108 = topAnchor6;
    v126[2] = v48;
    [(UIButton *)_actionButton trailingAnchor];
    v49 = v106 = topAnchor7;
    trailingAnchor9 = [(UIImageView *)v8 trailingAnchor];
    v51 = [v49 constraintEqualToAnchor:trailingAnchor9];
    v126[3] = v51;
    v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v126 count:4];
    v53 = [v97 arrayByAddingObjectsFromArray:v52];

    v42 = _actionButton;
    v54 = v104;

    topAnchor7 = v106;
    topAnchor6 = v108;
    v55 = leadingAnchor10;
  }

  else
  {
    v54 = [topAnchor6 constraintEqualToAnchor:topAnchor7 constant:2.0];
    v125[0] = v54;
    trailingAnchor10 = [(UIButton *)_actionButton trailingAnchor];
    bottomAnchor9 = [(UIImageView *)v8 trailingAnchor];
    v112 = trailingAnchor10;
    v46 = [trailingAnchor10 constraintEqualToAnchor:-2.0 constant:?];
    v125[1] = v46;
    leadingAnchor9 = [MEMORY[0x277CBEA60] arrayWithObjects:v125 count:2];
    v55 = v97;
    v53 = [v97 arrayByAddingObjectsFromArray:leadingAnchor9];
  }

  [MEMORY[0x277CCAAD0] activateConstraints:v53];
  imageView = selfCopy->_imageView;
  selfCopy->_imageView = v8;
  v58 = v8;

  titleLabel = selfCopy->_titleLabel;
  selfCopy->_titleLabel = v117;
  v60 = v117;

  secondaryLabel = selfCopy->_secondaryLabel;
  selfCopy->_secondaryLabel = v120;
  v62 = v120;

  gradientView = selfCopy->_gradientView;
  selfCopy->_gradientView = v115;
  v64 = v115;

  gradientLayer = selfCopy->_gradientLayer;
  selfCopy->_gradientLayer = v113;
  v66 = v113;

  actionButton = selfCopy->_actionButton;
  selfCopy->_actionButton = v42;
  v68 = v42;

  [(_TVRUIUpNextHorizontalCell *)selfCopy setOverrideUserInterfaceStyle:2];
  contentView2 = [(_TVRUIUpNextHorizontalCell *)selfCopy contentView];
  [contentView2 setNeedsLayout];

  contentView3 = [(_TVRUIUpNextHorizontalCell *)selfCopy contentView];
  [contentView3 layoutIfNeeded];

  v71 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:selfCopy action:sel_actionButtonTapped];
  [v71 setMinimumPressDuration:0.75];
  [(_TVRUIUpNextHorizontalCell *)selfCopy addGestureRecognizer:v71];
}

- (id)_actionButton
{
  _useCellAsMenu = [(_TVRUIUpNextHorizontalCell *)self _useCellAsMenu];
  if (_useCellAsMenu)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x277D755D0];
    v6 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76920] variant:1024];
    v7 = [v5 configurationWithFont:v6];

    v4 = [MEMORY[0x277D755B8] systemImageNamed:@"ellipsis" withConfiguration:v7];
  }

  objc_initWeak(&location, self);
  v8 = MEMORY[0x277D750C8];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __43___TVRUIUpNextHorizontalCell__actionButton__block_invoke;
  v16[3] = &unk_279D885B8;
  objc_copyWeak(&v17, &location);
  v18 = _useCellAsMenu;
  v9 = [v8 actionWithTitle:&stru_287E6AEF8 image:v4 identifier:0 handler:v16];
  if (_useCellAsMenu)
  {
    borderlessButtonConfiguration = [MEMORY[0x277D75230] borderlessButtonConfiguration];
  }

  else
  {
    borderlessButtonConfiguration = [MEMORY[0x277D75230] borderedProminentButtonConfiguration];
    [borderlessButtonConfiguration setCornerStyle:4];
    [borderlessButtonConfiguration setButtonSize:2];
  }

  v11 = [MEMORY[0x277D75220] buttonWithConfiguration:borderlessButtonConfiguration primaryAction:v9];
  if (_useCellAsMenu)
  {
    v12 = 0;
  }

  else
  {
    v12 = [MEMORY[0x277D75348] colorWithWhite:0.5 alpha:0.7];
  }

  [v11 setTintColor:v12];
  if (!_useCellAsMenu)
  {
  }

  [v11 setOverrideUserInterfaceStyle:2];
  v13 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_actionButtonTapped];
  [v11 addGestureRecognizer:v13];
  _actionMenu = [(_TVRUIUpNextHorizontalCell *)self _actionMenu];
  [v11 setMenu:_actionMenu];
  [v11 setShowsMenuAsPrimaryAction:!_useCellAsMenu];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v11;
}

- (void)actionButtonTapped
{
  actionButton = [(_TVRUIUpNextHorizontalCell *)self actionButton];
  [actionButton sendActionsForControlEvents:0x2000];
}

- (void)_updateForUpNextInfo:(id)info
{
  v22 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  mediaInfo = [infoCopy mediaInfo];
  title = [mediaInfo title];
  titleLabel = [(_TVRUIUpNextHorizontalCell *)self titleLabel];
  [titleLabel setText:title];

  v8 = [(_TVRUIUpNextHorizontalCell *)self _secondaryTextForUpNextInfo:infoCopy];
  secondaryLabel = [(_TVRUIUpNextHorizontalCell *)self secondaryLabel];
  [secondaryLabel setText:v8];

  imageURLTemplate = [mediaInfo imageURLTemplate];
  if ([imageURLTemplate length])
  {
    objc_initWeak(location, self);
    delegate = [(_TVRUIUpNextHorizontalCell *)self delegate];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __51___TVRUIUpNextHorizontalCell__updateForUpNextInfo___block_invoke;
    v17[3] = &unk_279D87EC8;
    objc_copyWeak(&v18, location);
    [delegate requestImageForInfo:infoCopy completion:v17];

    objc_destroyWeak(&v18);
    objc_destroyWeak(location);
  }

  else
  {
    v12 = _TVRUINowPlayingLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      identifier = [mediaInfo identifier];
      *location = 134218242;
      *&location[4] = self;
      v20 = 2112;
      v21 = identifier;
      _os_log_impl(&dword_26CFEB000, v12, OS_LOG_TYPE_INFO, "UpNext cell %p for %@ has no imageURLTemplare, blanking image...", location, 0x16u);
    }

    imageView = [(_TVRUIUpNextHorizontalCell *)self imageView];
    [imageView setImage:0];
  }

  contentView = [(_TVRUIUpNextHorizontalCell *)self contentView];
  [contentView setNeedsLayout];

  contentView2 = [(_TVRUIUpNextHorizontalCell *)self contentView];
  [contentView2 layoutIfNeeded];
}

- (id)_secondaryTextForUpNextInfo:(id)info
{
  infoCopy = info;
  v5 = infoCopy;
  if (!infoCopy)
  {
    v8 = 0;
    goto LABEL_17;
  }

  mediaInfo = [infoCopy mediaInfo];
  reason = [v5 reason];
  v8 = __48___TVRUIUpNextCell__secondaryTextForUpNextInfo___block_invoke(reason, &stru_287E6AEF8, reason);

  if ([mediaInfo kind] == 1)
  {
    seasonNumber = [mediaInfo seasonNumber];
    if (seasonNumber)
    {
      v10 = seasonNumber;
      episodeNumber = [mediaInfo episodeNumber];

      if (episodeNumber)
      {
        _seasonEpisodeFormatString = [(_TVRUIUpNextHorizontalCell *)self _seasonEpisodeFormatString];
        v13 = MEMORY[0x277CCACA8];
        seasonNumber2 = [mediaInfo seasonNumber];
        episodeNumber2 = [mediaInfo episodeNumber];
        v16 = [v13 stringWithFormat:_seasonEpisodeFormatString, seasonNumber2, episodeNumber2];
        v17 = __48___TVRUIUpNextCell__secondaryTextForUpNextInfo___block_invoke(v16, v8, v16);

        v8 = v17;
      }
    }
  }

  timeRemaining = [v5 timeRemaining];
  [timeRemaining floatValue];
  v20 = v19;

  if (v20 > 0.0)
  {
    v21 = [TVRUIDateUtilities localizedPlaybackTimeForInterval:v20];
    v22 = [v21 length];
    if (v22)
    {
      v23 = __48___TVRUIUpNextCell__secondaryTextForUpNextInfo___block_invoke(v22, v8, v21);

      v8 = v23;
    }
  }

  service = [v5 service];
  v25 = [service length];
  if (v25)
  {
    v26 = __48___TVRUIUpNextCell__secondaryTextForUpNextInfo___block_invoke(v25, v8, service);
LABEL_15:

    v8 = v26;
    goto LABEL_16;
  }

  if ([v5 isAppleOriginal])
  {
    v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v28 = [v27 localizedStringForKey:@"AppleTVOriginal" value:&stru_287E6AEF8 table:@"Localizable"];
    v26 = __48___TVRUIUpNextCell__secondaryTextForUpNextInfo___block_invoke(v28, v8, v28);

    v8 = v27;
    goto LABEL_15;
  }

LABEL_16:

LABEL_17:

  return v8;
}

- (id)_seasonEpisodeFormatString
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"TVRUISeasonEpisodeBrief" value:&stru_287E6AEF8 table:@"Localizable"];

  v4 = [v3 componentsSeparatedByString:@"%@"];
  if ([v4 count] < 3)
  {
    v5 = @"S%@, E%@";
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

- (_TVRUIUpNextViewControllerActionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end