@interface _TVRUIUpNextHorizontalCell
- (BOOL)hasURLForProductPageKind:(int64_t)a3;
- (_TVRUIUpNextHorizontalCell)initWithFrame:(CGRect)a3;
- (_TVRUIUpNextViewControllerActionDelegate)delegate;
- (id)_actionButton;
- (id)_actionMenu;
- (id)_seasonEpisodeFormatString;
- (id)_secondaryTextForUpNextInfo:(id)a3;
- (id)urlForProductPageKind:(int64_t)a3;
- (void)_configureHierarchy;
- (void)_updateForUpNextInfo:(id)a3;
- (void)actionButtonTapped;
- (void)layoutSubviews;
- (void)openProductPageForKind:(int64_t)a3;
- (void)openURL:(id)a3;
- (void)prepareForReuse;
- (void)setUpNextInfo:(id)a3;
@end

@implementation _TVRUIUpNextHorizontalCell

- (_TVRUIUpNextHorizontalCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _TVRUIUpNextHorizontalCell;
  v3 = [(_TVRUIUpNextHorizontalCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v3 = [(_TVRUIUpNextHorizontalCell *)self imageView];
  [v3 setImage:0];

  v4 = [(_TVRUIUpNextHorizontalCell *)self titleLabel];
  [v4 setText:0];

  v5 = [(_TVRUIUpNextHorizontalCell *)self secondaryLabel];
  [v5 setText:0];
}

- (void)setUpNextInfo:(id)a3
{
  objc_storeStrong(&self->_upNextInfo, a3);
  v5 = a3;
  [(_TVRUIUpNextHorizontalCell *)self _updateForUpNextInfo:v5];
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = _TVRUIUpNextHorizontalCell;
  [(_TVRUIUpNextHorizontalCell *)&v13 layoutSubviews];
  v3 = [(_TVRUIUpNextHorizontalCell *)self gradientView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(_TVRUIUpNextHorizontalCell *)self gradientLayer];
  [v12 setFrame:{v5, v7, v9, v11}];
}

- (id)_actionMenu
{
  v25[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D755B8] systemImageNamed:@"arrow.up.right.square"];
  v4 = [MEMORY[0x277D755B8] systemImageNamed:@"square.and.arrow.up"];
  v5 = [(_TVRUIUpNextHorizontalCell *)self contentView];
  objc_initWeak(&location, self);
  v6 = MEMORY[0x277D753F0];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __41___TVRUIUpNextHorizontalCell__actionMenu__block_invoke;
  v18 = &unk_279D88590;
  v19 = self;
  v7 = v3;
  v20 = v7;
  objc_copyWeak(&v23, &location);
  v8 = v4;
  v21 = v8;
  v9 = v5;
  v22 = v9;
  v10 = [v6 elementWithUncachedProvider:&v15];
  v11 = MEMORY[0x277D75710];
  v25[0] = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:{1, v15, v16, v17, v18, v19}];
  v13 = [v11 menuWithChildren:v12];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);

  return v13;
}

- (BOOL)hasURLForProductPageKind:(int64_t)a3
{
  v3 = [(_TVRUIUpNextHorizontalCell *)self urlForProductPageKind:a3];
  v4 = v3 != 0;

  return v4;
}

- (void)openProductPageForKind:(int64_t)a3
{
  v4 = [(_TVRUIUpNextHorizontalCell *)self urlForProductPageKind:a3];
  if (v4)
  {
    [(_TVRUIUpNextHorizontalCell *)self openURL:v4];
  }

  MEMORY[0x2821F96F8]();
}

- (id)urlForProductPageKind:(int64_t)a3
{
  v5 = [(_TVRUIUpNextHorizontalCell *)self upNextInfo];
  v6 = [v5 shareURL];

  v7 = [(_TVRUIUpNextHorizontalCell *)self upNextInfo];
  v8 = v7;
  if (!v6)
  {
    v10 = [v7 mediaInfo];

    if (v10)
    {
      if (a3 == 1 || a3 == 3)
      {
        v11 = [v10 productURL];
        goto LABEL_16;
      }

      if (a3 == 2)
      {
        v11 = [v10 showURL];
LABEL_16:
        v12 = v11;
        goto LABEL_17;
      }
    }

    v12 = 0;
LABEL_17:
    v8 = v10;
    goto LABEL_18;
  }

  if (a3 == 1 || a3 == 3)
  {
    v9 = [v7 shareURL];
    goto LABEL_12;
  }

  if (a3 == 2)
  {
    v9 = [v7 shareShowURL];
LABEL_12:
    v12 = v9;
    goto LABEL_18;
  }

  v12 = 0;
LABEL_18:

  return v12;
}

- (void)openURL:(id)a3
{
  v4 = a3;
  v5 = [(_TVRUIUpNextHorizontalCell *)self delegate];
  [v5 openURL:v4];
}

- (void)_configureHierarchy
{
  v130[3] = *MEMORY[0x277D85DE8];
  v111 = [(_TVRUIUpNextHorizontalCell *)self _useCellAsMenu];
  v3 = objc_alloc(MEMORY[0x277D755E8]);
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v8 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], v5, v6, v7}];
  v9 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v4, v5, v6, v7}];
  v10 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v4, v5, v6, v7}];
  v119 = [(_TVRUIUpNextHorizontalCell *)self _actionButton];
  LODWORD(v11) = 1148846080;
  [(UIButton *)v119 setContentHuggingPriority:0 forAxis:v11];
  [(UIImageView *)v8 setUserInteractionEnabled:1];
  v114 = self;
  v118 = [(_TVRUIUpNextHorizontalCell *)self contentView];
  [v118 addSubview:v8];
  v12 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  [(UILabel *)v9 setFont:v12];

  [(UILabel *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = [MEMORY[0x277D75348] labelColor];
  [(UILabel *)v9 setTextColor:v13];

  [(UILabel *)v9 setNumberOfLines:0];
  [(UILabel *)v9 setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)v9 setAdjustsFontSizeToFitWidth:1];
  LODWORD(v14) = 1148846080;
  [(UILabel *)v9 setContentHuggingPriority:1 forAxis:v14];
  v15 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
  v120 = v10;
  [(UILabel *)v10 setFont:v15];

  [(UILabel *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = [MEMORY[0x277D75348] secondaryLabelColor];
  [(UILabel *)v10 setTextColor:v16];

  [(UILabel *)v10 setNumberOfLines:0];
  [(UILabel *)v10 setAdjustsFontForContentSizeCategory:1];
  LODWORD(v17) = 1148846080;
  [(UILabel *)v10 setContentHuggingPriority:1 forAxis:v17];
  [(UIImageView *)v8 _setContinuousCornerRadius:12.0];
  [(UIImageView *)v8 setClipsToBounds:1];
  [(UIImageView *)v8 setContentMode:2];
  v18 = objc_alloc_init(MEMORY[0x277D75D18]);
  [(UIView *)v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = [MEMORY[0x277CD9EB0] layer];
  [(CAGradientLayer *)v19 setStartPoint:0.5, 0.0];
  [(CAGradientLayer *)v19 setEndPoint:0.5, 1.0];
  [(CAGradientLayer *)v19 setLocations:&unk_287E84B10];
  v116 = [MEMORY[0x277D75348] blackColor];
  v20 = [v116 colorWithAlphaComponent:0.0];
  v130[0] = [v20 CGColor];
  v21 = [MEMORY[0x277D75348] blackColor];
  v22 = [v21 colorWithAlphaComponent:0.5];
  v130[1] = [v22 CGColor];
  v23 = [MEMORY[0x277D75348] blackColor];
  v24 = [v23 colorWithAlphaComponent:1.0];
  v130[2] = [v24 CGColor];
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v130 count:3];
  [(CAGradientLayer *)v19 setColors:v25];

  v26 = [(UIView *)v18 layer];
  v113 = v19;
  [v26 insertSublayer:v19 atIndex:0];

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
  v128[2] = v119;
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

  v109 = [(UIImageView *)v8 topAnchor];
  v107 = [v118 topAnchor];
  v105 = [v109 constraintEqualToAnchor:v107];
  v127[0] = v105;
  v103 = [(UIImageView *)v8 leadingAnchor];
  v101 = [v118 leadingAnchor];
  v100 = [v103 constraintEqualToAnchor:v101];
  v127[1] = v100;
  v99 = [(UIImageView *)v8 trailingAnchor];
  v98 = [v118 trailingAnchor];
  v96 = [v99 constraintEqualToAnchor:v98];
  v127[2] = v96;
  v95 = [(UIImageView *)v8 bottomAnchor];
  v94 = [v118 bottomAnchor];
  v93 = [v95 constraintEqualToAnchor:v94];
  v127[3] = v93;
  v92 = [(UILabel *)v9 leadingAnchor];
  v91 = [(UIImageView *)v8 leadingAnchor];
  v90 = [v92 constraintEqualToAnchor:v91 constant:5.0];
  v127[4] = v90;
  v89 = [(UILabel *)v9 trailingAnchor];
  v88 = [(UIImageView *)v8 trailingAnchor];
  v87 = [v89 constraintEqualToAnchor:v88];
  v127[5] = v87;
  v86 = [(UILabel *)v120 topAnchor];
  v85 = [(UILabel *)v9 bottomAnchor];
  v84 = [v86 constraintEqualToAnchor:v85 constant:0.0];
  v127[6] = v84;
  v83 = [(UILabel *)v120 leadingAnchor];
  v82 = [(UIImageView *)v8 leadingAnchor];
  v81 = [v83 constraintEqualToAnchor:v82 constant:5.0];
  v127[7] = v81;
  v80 = [(UILabel *)v120 trailingAnchor];
  v79 = [(UIImageView *)v8 trailingAnchor];
  v78 = [v80 constraintEqualToAnchor:v79];
  v127[8] = v78;
  v77 = [(UILabel *)v120 bottomAnchor];
  v76 = [(UIImageView *)v8 bottomAnchor];
  v75 = [v77 constraintLessThanOrEqualToAnchor:v76 constant:-5.0];
  v127[9] = v75;
  v74 = [(UIView *)v115 topAnchor];
  v73 = [(UILabel *)v9 topAnchor];
  v72 = [v74 constraintEqualToAnchor:v73 constant:-5.0];
  v127[10] = v72;
  v33 = [(UIView *)v115 leadingAnchor];
  v34 = [(UIImageView *)v8 leadingAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];
  v127[11] = v35;
  v36 = [(UIView *)v115 trailingAnchor];
  v37 = [(UIImageView *)v8 trailingAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];
  v127[12] = v38;
  v39 = [(UIView *)v115 bottomAnchor];
  v40 = [(UIImageView *)v8 bottomAnchor];
  v41 = [v39 constraintEqualToAnchor:v40];
  v127[13] = v41;
  v97 = [MEMORY[0x277CBEA60] arrayWithObjects:v127 count:14];

  v42 = v119;
  v43 = [(UIButton *)v119 topAnchor];
  v44 = [(UIImageView *)v8 topAnchor];
  if (v111)
  {
    v104 = [v43 constraintEqualToAnchor:v44];
    v126[0] = v104;
    v45 = [(UIButton *)v119 bottomAnchor];
    v110 = [(UIImageView *)v8 bottomAnchor];
    v112 = v45;
    v46 = [v45 constraintEqualToAnchor:?];
    v126[1] = v46;
    v47 = [(UIButton *)v119 leadingAnchor];
    v102 = [(UIImageView *)v8 leadingAnchor];
    [v47 constraintEqualToAnchor:v102];
    v48 = v108 = v43;
    v126[2] = v48;
    [(UIButton *)v119 trailingAnchor];
    v49 = v106 = v44;
    v50 = [(UIImageView *)v8 trailingAnchor];
    v51 = [v49 constraintEqualToAnchor:v50];
    v126[3] = v51;
    v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v126 count:4];
    v53 = [v97 arrayByAddingObjectsFromArray:v52];

    v42 = v119;
    v54 = v104;

    v44 = v106;
    v43 = v108;
    v55 = v102;
  }

  else
  {
    v54 = [v43 constraintEqualToAnchor:v44 constant:2.0];
    v125[0] = v54;
    v56 = [(UIButton *)v119 trailingAnchor];
    v110 = [(UIImageView *)v8 trailingAnchor];
    v112 = v56;
    v46 = [v56 constraintEqualToAnchor:-2.0 constant:?];
    v125[1] = v46;
    v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v125 count:2];
    v55 = v97;
    v53 = [v97 arrayByAddingObjectsFromArray:v47];
  }

  [MEMORY[0x277CCAAD0] activateConstraints:v53];
  imageView = v114->_imageView;
  v114->_imageView = v8;
  v58 = v8;

  titleLabel = v114->_titleLabel;
  v114->_titleLabel = v117;
  v60 = v117;

  secondaryLabel = v114->_secondaryLabel;
  v114->_secondaryLabel = v120;
  v62 = v120;

  gradientView = v114->_gradientView;
  v114->_gradientView = v115;
  v64 = v115;

  gradientLayer = v114->_gradientLayer;
  v114->_gradientLayer = v113;
  v66 = v113;

  actionButton = v114->_actionButton;
  v114->_actionButton = v42;
  v68 = v42;

  [(_TVRUIUpNextHorizontalCell *)v114 setOverrideUserInterfaceStyle:2];
  v69 = [(_TVRUIUpNextHorizontalCell *)v114 contentView];
  [v69 setNeedsLayout];

  v70 = [(_TVRUIUpNextHorizontalCell *)v114 contentView];
  [v70 layoutIfNeeded];

  v71 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:v114 action:sel_actionButtonTapped];
  [v71 setMinimumPressDuration:0.75];
  [(_TVRUIUpNextHorizontalCell *)v114 addGestureRecognizer:v71];
}

- (id)_actionButton
{
  v3 = [(_TVRUIUpNextHorizontalCell *)self _useCellAsMenu];
  if (v3)
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
  v18 = v3;
  v9 = [v8 actionWithTitle:&stru_287E6AEF8 image:v4 identifier:0 handler:v16];
  if (v3)
  {
    v10 = [MEMORY[0x277D75230] borderlessButtonConfiguration];
  }

  else
  {
    v10 = [MEMORY[0x277D75230] borderedProminentButtonConfiguration];
    [v10 setCornerStyle:4];
    [v10 setButtonSize:2];
  }

  v11 = [MEMORY[0x277D75220] buttonWithConfiguration:v10 primaryAction:v9];
  if (v3)
  {
    v12 = 0;
  }

  else
  {
    v12 = [MEMORY[0x277D75348] colorWithWhite:0.5 alpha:0.7];
  }

  [v11 setTintColor:v12];
  if (!v3)
  {
  }

  [v11 setOverrideUserInterfaceStyle:2];
  v13 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_actionButtonTapped];
  [v11 addGestureRecognizer:v13];
  v14 = [(_TVRUIUpNextHorizontalCell *)self _actionMenu];
  [v11 setMenu:v14];
  [v11 setShowsMenuAsPrimaryAction:!v3];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v11;
}

- (void)actionButtonTapped
{
  v2 = [(_TVRUIUpNextHorizontalCell *)self actionButton];
  [v2 sendActionsForControlEvents:0x2000];
}

- (void)_updateForUpNextInfo:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 mediaInfo];
  v6 = [v5 title];
  v7 = [(_TVRUIUpNextHorizontalCell *)self titleLabel];
  [v7 setText:v6];

  v8 = [(_TVRUIUpNextHorizontalCell *)self _secondaryTextForUpNextInfo:v4];
  v9 = [(_TVRUIUpNextHorizontalCell *)self secondaryLabel];
  [v9 setText:v8];

  v10 = [v5 imageURLTemplate];
  if ([v10 length])
  {
    objc_initWeak(location, self);
    v11 = [(_TVRUIUpNextHorizontalCell *)self delegate];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __51___TVRUIUpNextHorizontalCell__updateForUpNextInfo___block_invoke;
    v17[3] = &unk_279D87EC8;
    objc_copyWeak(&v18, location);
    [v11 requestImageForInfo:v4 completion:v17];

    objc_destroyWeak(&v18);
    objc_destroyWeak(location);
  }

  else
  {
    v12 = _TVRUINowPlayingLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [v5 identifier];
      *location = 134218242;
      *&location[4] = self;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_26CFEB000, v12, OS_LOG_TYPE_INFO, "UpNext cell %p for %@ has no imageURLTemplare, blanking image...", location, 0x16u);
    }

    v14 = [(_TVRUIUpNextHorizontalCell *)self imageView];
    [v14 setImage:0];
  }

  v15 = [(_TVRUIUpNextHorizontalCell *)self contentView];
  [v15 setNeedsLayout];

  v16 = [(_TVRUIUpNextHorizontalCell *)self contentView];
  [v16 layoutIfNeeded];
}

- (id)_secondaryTextForUpNextInfo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v8 = 0;
    goto LABEL_17;
  }

  v6 = [v4 mediaInfo];
  v7 = [v5 reason];
  v8 = __48___TVRUIUpNextCell__secondaryTextForUpNextInfo___block_invoke(v7, &stru_287E6AEF8, v7);

  if ([v6 kind] == 1)
  {
    v9 = [v6 seasonNumber];
    if (v9)
    {
      v10 = v9;
      v11 = [v6 episodeNumber];

      if (v11)
      {
        v12 = [(_TVRUIUpNextHorizontalCell *)self _seasonEpisodeFormatString];
        v13 = MEMORY[0x277CCACA8];
        v14 = [v6 seasonNumber];
        v15 = [v6 episodeNumber];
        v16 = [v13 stringWithFormat:v12, v14, v15];
        v17 = __48___TVRUIUpNextCell__secondaryTextForUpNextInfo___block_invoke(v16, v8, v16);

        v8 = v17;
      }
    }
  }

  v18 = [v5 timeRemaining];
  [v18 floatValue];
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

  v24 = [v5 service];
  v25 = [v24 length];
  if (v25)
  {
    v26 = __48___TVRUIUpNextCell__secondaryTextForUpNextInfo___block_invoke(v25, v8, v24);
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