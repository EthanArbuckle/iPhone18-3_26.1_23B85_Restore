@interface _TVRUIMediaInfoCell
+ (CGSize)preferredImageSize;
- (TVRUIUpNextProviding)upNextProvider;
- (_TVRUIMediaInfoCell)initWithFrame:(CGRect)a3;
- (_TVRUITemplateImageProviding)imageProvider;
- (void)_configureHierarchy;
- (void)prepareForReuse;
- (void)setMediaInfo:(id)a3;
@end

@implementation _TVRUIMediaInfoCell

- (_TVRUIMediaInfoCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _TVRUIMediaInfoCell;
  v3 = [(_TVRUIMediaInfoCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v3 = [(_TVRUIMediaInfoCell *)self imageView];
  [v3 setImage:0];

  v4 = [(_TVRUIMediaInfoCell *)self titleLabel];
  [v4 setText:0];

  v5 = [(_TVRUIMediaInfoCell *)self showTitleLabel];
  [v5 setText:0];
}

+ (CGSize)preferredImageSize
{
  v2 = 102.0;
  v3 = 60.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setMediaInfo:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_mediaInfo, a3);
  if (v5)
  {
    v6 = [v5 title];
    v7 = [(_TVRUIMediaInfoCell *)self titleLabel];
    [v7 setText:v6];

    v8 = [v5 showTitle];
    v9 = [(_TVRUIMediaInfoCell *)self showTitleLabel];
    [v9 setText:v8];

    v10 = [v5 tvrui_formattedSummary];
    v11 = [(_TVRUIMediaInfoCell *)self factoidsLabel];
    [v11 setText:v10];

    objc_initWeak(&location, self);
    v12 = [(_TVRUIMediaInfoCell *)self imageProvider];
    v13 = [v5 imageURLTemplate];
    [objc_opt_class() preferredImageSize];
    v15 = v14;
    v17 = v16;
    v18 = [v5 identifier];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __36___TVRUIMediaInfoCell_setMediaInfo___block_invoke;
    v19[3] = &unk_279D87EC8;
    objc_copyWeak(&v20, &location);
    [v12 requestImageForTemplate:v13 size:v18 identifier:v19 completion:{v15, v17}];

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

  v13 = [(_TVRUIMediaInfoCell *)self contentView];
  v14 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  [(UILabel *)v113 setFont:v14];

  [(UILabel *)v113 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = [MEMORY[0x277D75348] labelColor];
  [(UILabel *)v113 setTextColor:v15];

  [(UILabel *)v113 setNumberOfLines:2];
  [(UILabel *)v113 setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)v113 setAdjustsFontSizeToFitWidth:1];
  LODWORD(v16) = 1148846080;
  [(UILabel *)v113 setContentHuggingPriority:1 forAxis:v16];
  v17 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
  [(UILabel *)v114 setFont:v17];

  [(UILabel *)v114 setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = [MEMORY[0x277D75348] secondaryLabelColor];
  [(UILabel *)v114 setTextColor:v18];

  [(UILabel *)v114 setNumberOfLines:1];
  [(UILabel *)v114 setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)v114 setAdjustsFontSizeToFitWidth:1];
  v19 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76940]];
  [(UILabel *)v115 setFont:v19];

  v20 = [MEMORY[0x277D75348] lightGrayColor];
  [(UILabel *)v115 setTextColor:v20];

  [(UILabel *)v115 setNumberOfLines:0];
  [(UILabel *)v115 setAdjustsFontForContentSizeCategory:1];
  [(UIImageView *)v3 _setContinuousCornerRadius:8.0];
  [(UIImageView *)v3 setClipsToBounds:1];
  [(UIImageView *)v3 setContentMode:2];
  v21 = [MEMORY[0x277D75348] grayColor];
  v22 = [v21 CGColor];
  v23 = [(UIImageView *)v3 layer];
  [v23 setBorderColor:v22];

  v24 = [(UIImageView *)v3 layer];
  [v24 setBorderWidth:0.5];

  v25 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.right"];
  [v5 setImage:v25];

  v26 = [MEMORY[0x277D75348] lightGrayColor];
  [v5 setTintColor:v26];

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
        [v13 addSubview:v33];
      }

      v30 = [v28 countByEnumeratingWithState:&v116 objects:v126 count:16];
    }

    while (v30);
  }

  [objc_opt_class() preferredImageSize];
  v35 = v34;
  v37 = v36;
  v88 = MEMORY[0x277CCAAD0];
  v112 = [(UIImageView *)v3 leadingAnchor];
  v111 = [v13 leadingAnchor];
  v110 = [v112 constraintEqualToAnchor:v111 constant:15.0];
  v124[0] = v110;
  v109 = [(UIImageView *)v3 centerYAnchor];
  v108 = [v13 centerYAnchor];
  v107 = [v109 constraintEqualToAnchor:v108];
  v124[1] = v107;
  v106 = [(UIImageView *)v3 widthAnchor];
  v105 = [v106 constraintEqualToConstant:v35];
  v124[2] = v105;
  v104 = [(UIImageView *)v3 heightAnchor];
  v103 = [v104 constraintEqualToConstant:v37];
  v124[3] = v103;
  v102 = [(UIImageView *)v3 topAnchor];
  v101 = [v13 topAnchor];
  v100 = [v102 constraintGreaterThanOrEqualToAnchor:v101 constant:8.0];
  v124[4] = v100;
  v99 = [(UIImageView *)v3 bottomAnchor];
  v98 = [v13 topAnchor];
  v97 = [v99 constraintLessThanOrEqualToAnchor:v98 constant:-8.0];
  v124[5] = v97;
  v96 = [v6 centerYAnchor];
  v95 = [v13 centerYAnchor];
  v94 = [v96 constraintEqualToAnchor:v95];
  v124[6] = v94;
  v93 = [v6 leadingAnchor];
  v92 = [(UIImageView *)v3 trailingAnchor];
  v91 = [v93 constraintEqualToAnchor:v92 constant:15.0];
  v124[7] = v91;
  v90 = [v6 trailingAnchor];
  v89 = [v5 leadingAnchor];
  v86 = [v90 constraintEqualToAnchor:v89 constant:-15.0];
  v124[8] = v86;
  v85 = [v5 centerYAnchor];
  v84 = [v13 centerYAnchor];
  v83 = [v85 constraintEqualToAnchor:v84];
  v124[9] = v83;
  v82 = [v5 trailingAnchor];
  v81 = [v13 trailingAnchor];
  v78 = [v82 constraintEqualToAnchor:v81 constant:-15.0];
  v124[10] = v78;
  v77 = [(UILabel *)v113 topAnchor];
  v76 = [v6 topAnchor];
  v75 = [v77 constraintEqualToAnchor:v76];
  v124[11] = v75;
  v74 = [(UILabel *)v113 leadingAnchor];
  v73 = [v6 leadingAnchor];
  v72 = [v74 constraintEqualToAnchor:v73];
  v124[12] = v72;
  v71 = [(UILabel *)v113 trailingAnchor];
  v70 = [v6 trailingAnchor];
  v69 = [v71 constraintEqualToAnchor:v70];
  v124[13] = v69;
  v68 = [(UILabel *)v114 topAnchor];
  v67 = [(UILabel *)v113 bottomAnchor];
  v66 = [v68 constraintEqualToAnchor:v67 constant:1.0];
  v124[14] = v66;
  v65 = [(UILabel *)v114 leadingAnchor];
  v64 = [v6 leadingAnchor];
  v63 = [v65 constraintEqualToAnchor:v64];
  v124[15] = v63;
  v62 = [(UILabel *)v114 trailingAnchor];
  v61 = [v6 trailingAnchor];
  v60 = [v62 constraintEqualToAnchor:v61];
  v124[16] = v60;
  v59 = [(UILabel *)v115 topAnchor];
  v58 = [(UILabel *)v114 bottomAnchor];
  v57 = [v59 constraintEqualToAnchor:v58 constant:1.0];
  v124[17] = v57;
  v56 = [(UILabel *)v115 leadingAnchor];
  v55 = [v6 leadingAnchor];
  v38 = [v56 constraintEqualToAnchor:v55];
  v124[18] = v38;
  [(UILabel *)v115 trailingAnchor];
  v39 = v79 = self;
  [v6 trailingAnchor];
  v40 = v80 = v3;
  v41 = [v39 constraintEqualToAnchor:v40];
  v124[19] = v41;
  v42 = [(UILabel *)v115 bottomAnchor];
  [v6 bottomAnchor];
  v43 = v87 = v5;
  v44 = [v42 constraintEqualToAnchor:v43];
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