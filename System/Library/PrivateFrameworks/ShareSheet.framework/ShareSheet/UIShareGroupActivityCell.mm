@interface UIShareGroupActivityCell
+ (double)maximumLabelHeightForTitle:(id)a3 width:(double)a4 traitCollection:(id)a5;
- (SHSheetContentLayoutSpec)layoutSpec;
- (id)_createTitleLabel;
- (id)_placeholderString;
- (id)_titleLabelFont;
- (id)createTargetedPreview;
- (void)_configureImageViewForPlaceholder:(BOOL)a3;
- (void)_installSubviewsIfNeeded;
- (void)_setLayoutSpec:(id)a3;
- (void)_updateBadgeSlotView;
- (void)_updateConstraints;
- (void)_updateDarkening;
- (void)_updateImageView;
- (void)_updateTitleView;
- (void)configureLayoutIfNeeded:(id)a3;
- (void)prepareForReuse;
- (void)setBadgeSlotID:(unsigned int)a3;
- (void)setDisabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setImage:(id)a3;
- (void)setImageSlotID:(unsigned int)a3;
- (void)setSelected:(BOOL)a3;
- (void)setTitle:(id)a3;
- (void)setTitleSlotID:(unsigned int)a3;
- (void)setupConstraints;
- (void)startPulsing;
- (void)stopPulsing;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation UIShareGroupActivityCell

+ (double)maximumLabelHeightForTitle:(id)a3 width:(double)a4 traitCollection:(id)a5
{
  v7 = a5;
  v8 = a3;
  SFUIShareSheetActivityCellSpecClass_0 = getSFUIShareSheetActivityCellSpecClass_0();
  v10 = [MEMORY[0x1E69DC938] currentDevice];
  v11 = [SFUIShareSheetActivityCellSpecClass_0 titleLabelFontTextStyleForIdiom:{objc_msgSend(v10, "userInterfaceIdiom")}];

  v12 = *MEMORY[0x1E69DDC50];
  v13 = [v7 preferredContentSizeCategory];
  v14 = UIContentSizeCategoryCompareToCategory(v12, v13);

  if (v14)
  {
    v15 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v11];
  }

  else
  {
    v16 = MEMORY[0x1E69DB880];
    v17 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC58]];
    v18 = [v16 preferredFontDescriptorWithTextStyle:v11 compatibleWithTraitCollection:v17];

    v15 = [MEMORY[0x1E69DB878] fontWithDescriptor:v18 size:0.0];
  }

  v19 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v19 setFont:v15];
  [v19 setNumberOfLines:0];
  [v19 _setHyphenationFactor:0.0];
  v20 = [v7 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v20);

  if (IsAccessibilityCategory)
  {
    v22 = 4;
  }

  else
  {
    v22 = 1;
  }

  [v19 setTextAlignment:v22];
  [v19 setText:v8];

  [v19 sizeThatFits:{a4, 1.79769313e308}];
  v24 = ceil(v23);

  return v24;
}

- (id)_placeholderString
{
  v2 = [(UIShareGroupActivityCell *)self traitCollection];
  v3 = [v2 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v3);

  if (IsAccessibilityCategory)
  {
    v5 = @"Apple\nInc\n";
  }

  else
  {
    v5 = @"Apple\nInc";
  }

  return v5;
}

- (id)_titleLabelFont
{
  SFUIShareSheetActivityCellSpecClass_0 = getSFUIShareSheetActivityCellSpecClass_0();
  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = [SFUIShareSheetActivityCellSpecClass_0 titleLabelFontTextStyleForIdiom:{objc_msgSend(v4, "userInterfaceIdiom")}];

  v6 = *MEMORY[0x1E69DDC50];
  v7 = [(UIShareGroupActivityCell *)self traitCollection];
  v8 = [v7 preferredContentSizeCategory];
  v9 = UIContentSizeCategoryCompareToCategory(v6, v8);

  if (v9)
  {
    v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v5];
  }

  else
  {
    v11 = MEMORY[0x1E69DB880];
    v12 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC58]];
    v13 = [v11 preferredFontDescriptorWithTextStyle:v5 compatibleWithTraitCollection:v12];

    v10 = [MEMORY[0x1E69DB878] fontWithDescriptor:v13 size:0.0];
  }

  return v10;
}

- (id)_createTitleLabel
{
  v3 = [(UIShareGroupActivityCell *)self _placeholderString];
  SFUIShareSheetActivityCellSpecClass_0 = getSFUIShareSheetActivityCellSpecClass_0();
  v5 = [MEMORY[0x1E69DC938] currentDevice];
  v6 = [SFUIShareSheetActivityCellSpecClass_0 titleLabelFontTextStyleForIdiom:{objc_msgSend(v5, "userInterfaceIdiom")}];

  v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  v8 = [(UIShareGroupActivityCell *)self _titleLabelFont];
  [v7 setFont:v8];

  v9 = [(UIShareGroupActivityCell *)self traitCollection];
  v10 = [v9 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v10);

  if (IsAccessibilityCategory)
  {
    v12 = 4;
  }

  else
  {
    v12 = 1;
  }

  [v7 setTextAlignment:v12];
  [v7 setNumberOfLines:0];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 _setHyphenationFactor:0.0];
  [v7 setText:v3];
  [v7 setAlpha:0.0];
  [v7 setAccessibilityIdentifier:@"cellTitleLabel"];

  return v7;
}

- (void)_installSubviewsIfNeeded
{
  if (![(UIShareGroupActivityCell *)self didInstallSubviews])
  {
    [(UIShareGroupActivityCell *)self setDidInstallSubviews:1];
    v93 = [MEMORY[0x1E69DC730] effectWithStyle:9];
    v3 = [MEMORY[0x1E69DD248] effectForBlurEffect:? style:?];
    v4 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v3];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIShareGroupActivityCell *)self setVibrantLabelView:v4];
    v5 = [(UIShareGroupActivityCell *)self contentView];
    v6 = [(UIShareGroupActivityCell *)self vibrantLabelView];
    [v5 addSubview:v6];

    v7 = [(UIShareGroupActivityCell *)self _createTitleLabel];
    [(UIShareGroupActivityCell *)self setTitleLabel:v7];

    v8 = [(UIShareGroupActivityCell *)self vibrantLabelView];
    v9 = [v8 contentView];
    v10 = [(UIShareGroupActivityCell *)self titleLabel];
    [v9 addSubview:v10];

    v11 = [(UIShareGroupActivityCell *)self _createTitleLabel];
    [(UIShareGroupActivityCell *)self setLabelForPositioning:v11];

    v12 = [(UIShareGroupActivityCell *)self vibrantLabelView];
    v13 = [v12 contentView];
    v14 = [(UIShareGroupActivityCell *)self labelForPositioning];
    [v13 addSubview:v14];

    v15 = [MEMORY[0x1E69A8A30] imageDescriptorNamed:*MEMORY[0x1E69A8A78]];
    v16 = [MEMORY[0x1E69DC938] currentDevice];
    v17 = [v16 userInterfaceIdiom];

    v18 = 13.5;
    if ((v17 & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      [v15 continuousCornerRadius];
      v18 = v19;
    }

    v20 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(UIShareGroupActivityCell *)self setImageSlotView:v20];

    v21 = [(UIShareGroupActivityCell *)self imageSlotView];
    [v21 setAlpha:0.0];

    v22 = [(UIShareGroupActivityCell *)self imageSlotView];
    [v22 setClipsToBounds:1];

    v23 = [(UIShareGroupActivityCell *)self imageSlotView];
    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

    v24 = [(UIShareGroupActivityCell *)self imageSlotView];
    v25 = [v24 layer];
    [v25 setCornerRadius:v18];

    v26 = *MEMORY[0x1E69796E8];
    v27 = [(UIShareGroupActivityCell *)self imageSlotView];
    v28 = [v27 layer];
    [v28 setCornerCurve:v26];

    v29 = [MEMORY[0x1E69DC888] blackColor];
    v30 = [v29 CGColor];
    v31 = [(UIShareGroupActivityCell *)self imageSlotView];
    v32 = [v31 layer];
    [v32 setShadowColor:v30];

    v33 = [(UIShareGroupActivityCell *)self imageSlotView];
    v34 = [v33 layer];
    LODWORD(v35) = 1032805417;
    [v34 setShadowOpacity:v35];

    v36 = *MEMORY[0x1E695F060];
    v37 = *(MEMORY[0x1E695F060] + 8);
    v38 = [(UIShareGroupActivityCell *)self imageSlotView];
    v39 = [v38 layer];
    [v39 setShadowOffset:{v36, v37}];

    v40 = [(UIShareGroupActivityCell *)self imageSlotView];
    v41 = [v40 layer];
    [v41 setShadowRadius:10.0];

    v42 = [(UIShareGroupActivityCell *)self imageSlotView];
    v43 = [v42 layer];
    [v43 setShadowPathIsBounds:1];

    v44 = [(UIShareGroupActivityCell *)self imageSlotView];
    v45 = [v44 layer];
    [v45 setShouldRasterize:0];

    v46 = [(UIShareGroupActivityCell *)self imageSlotView];
    v47 = [v46 layer];
    [v47 setMasksToBounds:0];

    v48 = [(UIShareGroupActivityCell *)self contentView];
    v49 = [(UIShareGroupActivityCell *)self imageSlotView];
    [v48 addSubview:v49];

    v50 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    [(UIShareGroupActivityCell *)self setActivityImageView:v50];

    v51 = [(UIShareGroupActivityCell *)self traitCollection];
    v52 = SHSheetUISpecPlaceholderColor([v51 userInterfaceStyle]);
    v53 = [(UIShareGroupActivityCell *)self activityImageView];
    [v53 setBackgroundColor:v52];

    v54 = [(UIShareGroupActivityCell *)self activityImageView];
    [v54 setClipsToBounds:1];

    v55 = [(UIShareGroupActivityCell *)self activityImageView];
    [v55 setTranslatesAutoresizingMaskIntoConstraints:0];

    v56 = [(UIShareGroupActivityCell *)self activityImageView];
    [v56 setContentMode:2];

    v57 = [(UIShareGroupActivityCell *)self activityImageView];
    v58 = [v57 layer];
    [v58 setCornerRadius:v18];

    v59 = [(UIShareGroupActivityCell *)self activityImageView];
    v60 = [v59 layer];
    [v60 setCornerCurve:v26];

    v61 = [(UIShareGroupActivityCell *)self activityImageView];
    v62 = [v61 layer];
    [v62 setShadowOffset:{v36, v37}];

    v63 = [(UIShareGroupActivityCell *)self activityImageView];
    v64 = [v63 layer];
    [v64 setShadowRadius:10.0];

    v65 = [(UIShareGroupActivityCell *)self activityImageView];
    v66 = [v65 layer];
    [v66 setShadowPathIsBounds:1];

    v67 = [(UIShareGroupActivityCell *)self activityImageView];
    v68 = [v67 layer];
    [v68 setShouldRasterize:0];

    v69 = [(UIShareGroupActivityCell *)self activityImageView];
    v70 = [v69 layer];
    [v70 setMasksToBounds:0];

    v71 = [(UIShareGroupActivityCell *)self activityImageView];
    [v71 setAccessibilityIdentifier:@"activityImageView"];

    v72 = [(UIShareGroupActivityCell *)self contentView];
    v73 = [(UIShareGroupActivityCell *)self activityImageView];
    [v72 addSubview:v73];

    v74 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(UIShareGroupActivityCell *)self setTitleSlotView:v74];

    v75 = [(UIShareGroupActivityCell *)self titleSlotView];
    [v75 setAlpha:0.0];

    v76 = [(UIShareGroupActivityCell *)self titleSlotView];
    [v76 setTranslatesAutoresizingMaskIntoConstraints:0];

    v77 = [(UIShareGroupActivityCell *)self vibrantLabelView];
    v78 = [v77 contentView];
    v79 = [(UIShareGroupActivityCell *)self titleSlotView];
    [v78 addSubview:v79];

    v80 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(UIShareGroupActivityCell *)self setBadgeSlotView:v80];

    v81 = [(UIShareGroupActivityCell *)self badgeSlotView];
    [v81 setAlpha:0.0];

    v82 = [(UIShareGroupActivityCell *)self badgeSlotView];
    [v82 setTranslatesAutoresizingMaskIntoConstraints:0];

    v83 = [MEMORY[0x1E69DC888] systemRedColor];
    v84 = [(UIShareGroupActivityCell *)self badgeSlotView];
    [v84 setBackgroundColor:v83];

    SFUIShareSheetActivityCellSpecClass_0 = getSFUIShareSheetActivityCellSpecClass_0();
    v86 = [MEMORY[0x1E69DC938] currentDevice];
    [SFUIShareSheetActivityCellSpecClass_0 nearbyAirDropBadgeSizeForIdiom:{objc_msgSend(v86, "userInterfaceIdiom")}];
    v88 = v87 * 0.5;
    v89 = [(UIShareGroupActivityCell *)self badgeSlotView];
    v90 = [v89 layer];
    [v90 setCornerRadius:v88];

    v91 = [(UIShareGroupActivityCell *)self contentView];
    v92 = [(UIShareGroupActivityCell *)self badgeSlotView];
    [v91 addSubview:v92];

    [(UIShareGroupActivityCell *)self _configureImageViewForPlaceholder:1];
    [(UIShareGroupActivityCell *)self setupConstraints];
  }
}

- (void)_setLayoutSpec:(id)a3
{
  v4 = a3;
  [(UIShareGroupActivityCell *)self setLayoutSpec:v4];
  v5 = [v4 deviceClass];

  v6 = &regularHeight5_8Rounded_2;
  v7 = &visionLarge_1;
  v8 = &regularHeight_2;
  if (v5 == 9)
  {
    v8 = &visionCompact_1;
  }

  if (v5 != 10)
  {
    v7 = v8;
  }

  if (v5 != 3)
  {
    v6 = v7;
  }

  layout_2 = v6;
  if (_ShareSheetSolariumEnabled())
  {
    layout_2 = &solariumLayout_1;
  }
}

- (void)configureLayoutIfNeeded:(id)a3
{
  v8 = a3;
  v4 = [(UIShareGroupActivityCell *)self layoutSpec];

  [(UIShareGroupActivityCell *)self _setLayoutSpec:v8];
  if ([(UIShareGroupActivityCell *)self didInstallSubviews])
  {
    v5 = v8;
    if (v4 == v8)
    {
      goto LABEL_6;
    }

    v6 = MEMORY[0x1E696ACD8];
    v7 = [(UIShareGroupActivityCell *)self allConstraints];
    [v6 deactivateConstraints:v7];

    [(UIShareGroupActivityCell *)self setupConstraints];
  }

  else
  {
    [(UIShareGroupActivityCell *)self _installSubviewsIfNeeded];
  }

  v5 = v8;
LABEL_6:
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = UIShareGroupActivityCell;
  [(UIShareGroupActivityCell *)&v3 prepareForReuse];
  [(UIShareGroupActivityCell *)self setImage:0];
  [(UIShareGroupActivityCell *)self setImageSlotID:0];
  [(UIShareGroupActivityCell *)self _configureImageViewForPlaceholder:1];
  [(UIShareGroupActivityCell *)self stopPulsing];
}

- (void)setupConstraints
{
  v173[18] = *MEMORY[0x1E69E9840];
  v170 = [(UIShareGroupActivityCell *)self contentView];
  v3 = [(UIShareGroupActivityCell *)self layoutSpec];
  [v3 sharingAppIconWidth];
  v5 = v4;

  SFUIShareSheetActivityCellSpecClass_0 = getSFUIShareSheetActivityCellSpecClass_0();
  v7 = [MEMORY[0x1E69DC938] currentDevice];
  [SFUIShareSheetActivityCellSpecClass_0 nearbyAirDropBadgeSizeForIdiom:{objc_msgSend(v7, "userInterfaceIdiom")}];
  v9 = v8;

  v10 = [(UIShareGroupActivityCell *)self traitCollection];
  v11 = [v10 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v11);

  v168 = IsAccessibilityCategory;
  if (IsAccessibilityCategory)
  {
    [(UIShareGroupActivityCell *)self labelForPositioning];
  }

  else
  {
    [(UIShareGroupActivityCell *)self titleLabel];
  }
  v13 = ;
  v14 = MEMORY[0x1E695DF70];
  v165 = [(UIShareGroupActivityCell *)self imageSlotView];
  v162 = [v165 widthAnchor];
  v159 = [v162 constraintEqualToConstant:v5];
  v173[0] = v159;
  v156 = [(UIShareGroupActivityCell *)self imageSlotView];
  v153 = [v156 heightAnchor];
  v150 = [v153 constraintEqualToConstant:v5];
  v173[1] = v150;
  v147 = [(UIShareGroupActivityCell *)self activityImageView];
  v141 = [v147 widthAnchor];
  v144 = [(UIShareGroupActivityCell *)self imageSlotView];
  v138 = [v144 widthAnchor];
  v135 = [v141 constraintEqualToAnchor:v138];
  v173[2] = v135;
  v132 = [(UIShareGroupActivityCell *)self activityImageView];
  v126 = [v132 heightAnchor];
  v129 = [(UIShareGroupActivityCell *)self imageSlotView];
  v123 = [v129 heightAnchor];
  v120 = [v126 constraintEqualToAnchor:v123];
  v173[3] = v120;
  v117 = [(UIShareGroupActivityCell *)self activityImageView];
  v112 = [v117 centerXAnchor];
  v114 = [(UIShareGroupActivityCell *)self imageSlotView];
  v110 = [v114 centerXAnchor];
  v108 = [v112 constraintEqualToAnchor:v110];
  v173[4] = v108;
  v106 = [(UIShareGroupActivityCell *)self activityImageView];
  v102 = [v106 centerYAnchor];
  v104 = [(UIShareGroupActivityCell *)self imageSlotView];
  v100 = [v104 centerYAnchor];
  v98 = [v102 constraintEqualToAnchor:v100];
  v173[5] = v98;
  v96 = [(UIShareGroupActivityCell *)self titleSlotView];
  v94 = [v96 centerXAnchor];
  v92 = [v13 centerXAnchor];
  v90 = [v94 constraintEqualToAnchor:v92];
  v173[6] = v90;
  v88 = [(UIShareGroupActivityCell *)self titleSlotView];
  v86 = [v88 centerYAnchor];
  v84 = [v13 centerYAnchor];
  v82 = [v86 constraintEqualToAnchor:v84];
  v173[7] = v82;
  v80 = [(UIShareGroupActivityCell *)self titleSlotView];
  v78 = [v80 heightAnchor];
  v76 = [v13 heightAnchor];
  v75 = [v78 constraintEqualToAnchor:v76];
  v173[8] = v75;
  v74 = [(UIShareGroupActivityCell *)self titleSlotView];
  v73 = [v74 widthAnchor];
  v72 = [v13 widthAnchor];
  v71 = [v73 constraintEqualToAnchor:v72];
  v173[9] = v71;
  v70 = [(UIShareGroupActivityCell *)self vibrantLabelView];
  v69 = [v70 centerXAnchor];
  v68 = [v13 centerXAnchor];
  v67 = [v69 constraintEqualToAnchor:v68];
  v173[10] = v67;
  v66 = [(UIShareGroupActivityCell *)self vibrantLabelView];
  v65 = [v66 centerYAnchor];
  v64 = [v13 centerYAnchor];
  v63 = [v65 constraintEqualToAnchor:v64];
  v173[11] = v63;
  v62 = [(UIShareGroupActivityCell *)self vibrantLabelView];
  v61 = [v62 heightAnchor];
  v60 = [v13 heightAnchor];
  v59 = [v61 constraintEqualToAnchor:v60];
  v173[12] = v59;
  v58 = [(UIShareGroupActivityCell *)self vibrantLabelView];
  v57 = [v58 widthAnchor];
  v169 = v13;
  v56 = [v13 widthAnchor];
  v55 = [v57 constraintEqualToAnchor:v56];
  v173[13] = v55;
  v54 = [(UIShareGroupActivityCell *)self badgeSlotView];
  v52 = [v54 trailingAnchor];
  v53 = [(UIShareGroupActivityCell *)self imageSlotView];
  v51 = [v53 trailingAnchor];
  v50 = [v52 constraintEqualToAnchor:v51 constant:*(layout_2 + 32)];
  v173[14] = v50;
  v49 = [(UIShareGroupActivityCell *)self badgeSlotView];
  v47 = [v49 topAnchor];
  v48 = [(UIShareGroupActivityCell *)self imageSlotView];
  v46 = [v48 topAnchor];
  v15 = [v47 constraintEqualToAnchor:v46 constant:*(layout_2 + 24)];
  v173[15] = v15;
  v16 = [(UIShareGroupActivityCell *)self badgeSlotView];
  v17 = [v16 widthAnchor];
  v18 = [v17 constraintEqualToConstant:v9];
  v173[16] = v18;
  v19 = [(UIShareGroupActivityCell *)self badgeSlotView];
  v20 = [v19 heightAnchor];
  v21 = [v20 constraintEqualToConstant:v9];
  v173[17] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v173 count:18];
  v23 = [v14 arrayWithArray:v22];
  [(UIShareGroupActivityCell *)self setAllConstraints:v23];

  v166 = [(UIShareGroupActivityCell *)self labelForPositioning];
  v163 = [v166 topAnchor];
  v160 = [v170 topAnchor];
  v157 = [v163 constraintGreaterThanOrEqualToAnchor:v160 constant:8.0];
  v172[0] = v157;
  v151 = [v170 bottomAnchor];
  v154 = [(UIShareGroupActivityCell *)self labelForPositioning];
  v148 = [v154 bottomAnchor];
  v145 = [v151 constraintGreaterThanOrEqualToAnchor:v148 constant:8.0];
  v172[1] = v145;
  v142 = [(UIShareGroupActivityCell *)self labelForPositioning];
  v136 = [v142 centerYAnchor];
  v139 = [(UIShareGroupActivityCell *)self activityImageView];
  v133 = [v139 centerYAnchor];
  v130 = [v136 constraintEqualToAnchor:v133];
  v172[2] = v130;
  v127 = [(UIShareGroupActivityCell *)self imageSlotView];
  v124 = [v127 leadingAnchor];
  v121 = [v170 leadingAnchor];
  v118 = [v124 constraintEqualToAnchor:v121 constant:0.0];
  v172[3] = v118;
  v115 = [(UIShareGroupActivityCell *)self imageSlotView];
  v113 = [v115 centerYAnchor];
  v111 = [v170 centerYAnchor];
  v109 = [v113 constraintEqualToAnchor:v111];
  v172[4] = v109;
  v107 = [(UIShareGroupActivityCell *)self labelForPositioning];
  v105 = [v107 trailingAnchor];
  v103 = [v170 trailingAnchor];
  v101 = [v105 constraintEqualToAnchor:v103];
  v172[5] = v101;
  v99 = [(UIShareGroupActivityCell *)self labelForPositioning];
  v95 = [v99 leadingAnchor];
  v97 = [(UIShareGroupActivityCell *)self imageSlotView];
  v93 = [v97 trailingAnchor];
  v91 = [v95 constraintEqualToAnchor:v93 constant:14.0];
  v172[6] = v91;
  v89 = [(UIShareGroupActivityCell *)self labelForPositioning];
  v85 = [v89 leadingAnchor];
  v87 = [(UIShareGroupActivityCell *)self titleLabel];
  v83 = [v87 leadingAnchor];
  v81 = [v85 constraintEqualToAnchor:v83];
  v172[7] = v81;
  v79 = [(UIShareGroupActivityCell *)self labelForPositioning];
  v77 = [v79 trailingAnchor];
  v24 = [(UIShareGroupActivityCell *)self titleLabel];
  v25 = [v24 trailingAnchor];
  v26 = [v77 constraintEqualToAnchor:v25];
  v172[8] = v26;
  v27 = [(UIShareGroupActivityCell *)self labelForPositioning];
  v28 = [v27 centerYAnchor];
  v29 = [(UIShareGroupActivityCell *)self titleLabel];
  v30 = [v29 centerYAnchor];
  v31 = [v28 constraintEqualToAnchor:v30];
  v172[9] = v31;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v172 count:10];
  [(UIShareGroupActivityCell *)self setLargeTextConstraints:v32];

  v167 = [(UIShareGroupActivityCell *)self imageSlotView];
  v164 = [v167 centerXAnchor];
  v161 = [v170 centerXAnchor];
  v158 = [v164 constraintEqualToAnchor:v161];
  v171[0] = v158;
  v155 = [(UIShareGroupActivityCell *)self imageSlotView];
  v149 = [v155 centerXAnchor];
  v152 = [(UIShareGroupActivityCell *)self titleLabel];
  v146 = [v152 centerXAnchor];
  v143 = [v149 constraintEqualToAnchor:v146];
  v171[1] = v143;
  v140 = [(UIShareGroupActivityCell *)self imageSlotView];
  v137 = [v140 topAnchor];
  v134 = [v170 topAnchor];
  v131 = [v137 constraintEqualToAnchor:v134 constant:*layout_2];
  v171[2] = v131;
  v128 = [(UIShareGroupActivityCell *)self titleLabel];
  v125 = [v128 widthAnchor];
  v122 = [v170 widthAnchor];
  v119 = [v125 constraintEqualToAnchor:v122 constant:*(layout_2 + 40)];
  v171[3] = v119;
  v116 = [(UIShareGroupActivityCell *)self titleLabel];
  v33 = [v116 topAnchor];
  v34 = [(UIShareGroupActivityCell *)self imageSlotView];
  v35 = [v34 bottomAnchor];
  v36 = [v33 constraintEqualToAnchor:v35 constant:*(layout_2 + 8)];
  v171[4] = v36;
  v37 = [(UIShareGroupActivityCell *)self titleLabel];
  v38 = [v37 bottomAnchor];
  v39 = [v170 bottomAnchor];
  v40 = [v38 constraintEqualToAnchor:v39 constant:*(layout_2 + 16)];
  v171[5] = v40;
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v171 count:6];
  [(UIShareGroupActivityCell *)self setRegularConstraints:v41];

  v42 = [(UIShareGroupActivityCell *)self allConstraints];
  if (v168)
  {
    [(UIShareGroupActivityCell *)self largeTextConstraints];
  }

  else
  {
    [(UIShareGroupActivityCell *)self regularConstraints];
  }
  v43 = ;
  [v42 addObjectsFromArray:v43];

  v44 = MEMORY[0x1E696ACD8];
  v45 = [(UIShareGroupActivityCell *)self allConstraints];
  [v44 activateConstraints:v45];
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = UIShareGroupActivityCell;
  v4 = a3;
  [(UIShareGroupActivityCell *)&v8 traitCollectionDidChange:v4];
  v5 = [(UIShareGroupActivityCell *)self traitCollection:v8.receiver];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  if (v6 != v7)
  {
    [(UIShareGroupActivityCell *)self _updateConstraints];
  }
}

- (id)createTargetedPreview
{
  v3 = [(UIShareGroupActivityCell *)self image];

  if (v3)
  {
    [(UIShareGroupActivityCell *)self activityImageView];
  }

  else
  {
    [(UIShareGroupActivityCell *)self imageSlotView];
  }
  v4 = ;
  [v4 frame];
  v5 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:0.0 cornerRadius:0.0];
  v6 = objc_alloc_init(MEMORY[0x1E69DCE28]);
  [v6 setVisiblePath:v5];
  v7 = _ShareSheetSolariumEnabled();
  v8 = objc_alloc(MEMORY[0x1E69DD070]);
  if (v7)
  {
    v9 = [v8 initWithView:v4];
  }

  else
  {
    v9 = [v8 initWithView:v4 parameters:v6];
  }

  v10 = v9;

  return v10;
}

- (void)_configureImageViewForPlaceholder:(BOOL)a3
{
  v4 = a3;
  if (a3)
  {
    v6 = 1.0;
  }

  else
  {
    v3 = [(UIShareGroupActivityCell *)self activityImageView];
    [v3 alpha];
    v6 = v7;
  }

  v8 = [(UIShareGroupActivityCell *)self activityImageView];
  [v8 setAlpha:v6];

  if (v4)
  {
    v9 = [(UIShareGroupActivityCell *)self activityImageView];
    v10 = [v9 layer];
    [v10 setShadowOpacity:0.0];

    v11 = [(UIShareGroupActivityCell *)self traitCollection];
    SHSheetUISpecPlaceholderColor([v11 userInterfaceStyle]);
  }

  else
  {

    v11 = [(UIShareGroupActivityCell *)self activityImageView];
    v12 = [v11 layer];
    LODWORD(v13) = 1032805417;
    [v12 setShadowOpacity:v13];

    [MEMORY[0x1E69DC888] clearColor];
  }
  v15 = ;
  v14 = [(UIShareGroupActivityCell *)self activityImageView];
  [v14 setBackgroundColor:v15];

  if (v4)
  {

    v15 = v11;
  }
}

- (void)_updateConstraints
{
  v3 = [(UIShareGroupActivityCell *)self _titleLabelFont];
  v4 = [(UIShareGroupActivityCell *)self titleLabel];
  [v4 setFont:v3];

  v5 = [(UIShareGroupActivityCell *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v6);

  if (IsAccessibilityCategory)
  {
    v8 = 4;
  }

  else
  {
    v8 = 1;
  }

  v9 = [(UIShareGroupActivityCell *)self titleLabel];
  [v9 setTextAlignment:v8];

  v10 = MEMORY[0x1E696ACD8];
  if (IsAccessibilityCategory)
  {
    v11 = [(UIShareGroupActivityCell *)self regularConstraints];
    [v10 deactivateConstraints:v11];

    v12 = MEMORY[0x1E696ACD8];
    [(UIShareGroupActivityCell *)self largeTextConstraints];
  }

  else
  {
    v13 = [(UIShareGroupActivityCell *)self largeTextConstraints];
    [v10 deactivateConstraints:v13];

    v12 = MEMORY[0x1E696ACD8];
    [(UIShareGroupActivityCell *)self regularConstraints];
  }
  v14 = ;
  [v12 activateConstraints:v14];

  [(UIShareGroupActivityCell *)self setNeedsLayout];
}

- (void)setDisabled:(BOOL)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_disabled != a3)
  {
    v3 = a3;
    v5 = share_sheet_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(UIShareGroupActivityCell *)self identifier];
      v7 = v6;
      v8 = "no";
      if (v3)
      {
        v8 = "yes";
      }

      v9 = 138412546;
      v10 = v6;
      v11 = 2080;
      v12 = v8;
      _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Updating Activity Cell with identifier:%@ to disabled:%s", &v9, 0x16u);
    }

    self->_disabled = v3;
    [(UIShareGroupActivityCell *)self _updateDarkening];
  }
}

- (void)_updateDarkening
{
  v27[1] = *MEMORY[0x1E69E9840];
  v3 = [(UIShareGroupActivityCell *)self imageSlotView];
  v4 = [v3 layer];
  v5 = [v4 contents];

  v6 = [(UIShareGroupActivityCell *)self titleSlotView];
  v7 = [v6 layer];
  v8 = [v7 contents];

  v9 = [(UIShareGroupActivityCell *)self badgeSlotView];
  v10 = [v9 layer];
  v11 = [v10 contents];

  v12 = [(UIShareGroupActivityCell *)self imageSlotView];
  v13 = [v12 layer];
  [v13 setContents:v5];

  v14 = [(UIShareGroupActivityCell *)self titleSlotView];
  v15 = [v14 layer];
  [v15 setContents:v8];

  v16 = [(UIShareGroupActivityCell *)self badgeSlotView];
  v17 = [v16 layer];
  [v17 setContents:v11];

  if (([(UIShareGroupActivityCell *)self isHighlighted]& 1) != 0 || [(UIShareGroupActivityCell *)self isDisabled])
  {
    v16 = [MEMORY[0x1E69DC888] grayColor];
    v18 = [v16 CGColor];
    v19 = 1;
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

  v20 = [(UIShareGroupActivityCell *)self imageSlotView];
  v21 = [v20 layer];
  [v21 setContentsMultiplyColor:v18];

  if (v19)
  {
  }

  if (([(UIShareGroupActivityCell *)self isHighlighted]& 1) != 0 || [(UIShareGroupActivityCell *)self isDisabled])
  {
    v22 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CB0]];
    v23 = [MEMORY[0x1E69DC888] colorWithWhite:0.5 alpha:1.0];
    [v22 setValue:objc_msgSend(v23 forKey:{"CGColor"), @"inputColor"}];

    v27[0] = v22;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  }

  else
  {
    v24 = 0;
  }

  v25 = [(UIShareGroupActivityCell *)self activityImageView];
  v26 = [v25 layer];
  [v26 setFilters:v24];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  if ([(UIShareGroupActivityCell *)self isHighlighted]!= a3)
  {
    v5.receiver = self;
    v5.super_class = UIShareGroupActivityCell;
    [(UIShareGroupActivityCell *)&v5 setHighlighted:v3];
    [(UIShareGroupActivityCell *)self _updateDarkening];
  }
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIShareGroupActivityCell *)self imageSlotView];
  v6 = [v5 layer];
  v7 = [v6 contents];

  v8 = [(UIShareGroupActivityCell *)self titleSlotView];
  v9 = [v8 layer];
  v10 = [v9 contents];

  v11 = [(UIShareGroupActivityCell *)self badgeSlotView];
  v12 = [v11 layer];
  v13 = [v12 contents];

  v20.receiver = self;
  v20.super_class = UIShareGroupActivityCell;
  [(UIShareGroupActivityCell *)&v20 setSelected:v3];
  v14 = [(UIShareGroupActivityCell *)self imageSlotView];
  v15 = [v14 layer];
  [v15 setContents:v7];

  v16 = [(UIShareGroupActivityCell *)self titleSlotView];
  v17 = [v16 layer];
  [v17 setContents:v10];

  v18 = [(UIShareGroupActivityCell *)self badgeSlotView];
  v19 = [v18 layer];
  [v19 setContents:v13];
}

- (void)setTitle:(id)a3
{
  v5 = a3;
  title = self->_title;
  v9 = v5;
  v7 = title;
  if (v7 == v9)
  {

    goto LABEL_8;
  }

  if ((v9 != 0) == (v7 == 0))
  {

    goto LABEL_7;
  }

  v8 = [(NSString *)v9 isEqual:v7];

  if ((v8 & 1) == 0)
  {
LABEL_7:
    objc_storeStrong(&self->_title, a3);
    [(UIShareGroupActivityCell *)self _updateTitleView];
  }

LABEL_8:
}

- (void)setImage:(id)a3
{
  v5 = a3;
  if (self->_image != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_image, a3);
    [(UIShareGroupActivityCell *)self _updateImageView];
    v5 = v6;
  }
}

- (void)setImageSlotID:(unsigned int)a3
{
  if (self->_imageSlotID != a3)
  {
    self->_imageSlotID = a3;
    [(UIShareGroupActivityCell *)self _updateImageView];
  }
}

- (void)setTitleSlotID:(unsigned int)a3
{
  if (self->_titleSlotID != a3)
  {
    self->_titleSlotID = a3;
    [(UIShareGroupActivityCell *)self _updateTitleView];
  }
}

- (void)setBadgeSlotID:(unsigned int)a3
{
  if (self->_badgeSlotID != a3)
  {
    self->_badgeSlotID = a3;
    [(UIShareGroupActivityCell *)self _updateBadgeSlotView];
  }
}

- (void)startPulsing
{
  if (![(UIShareGroupActivityCell *)self isPulsing])
  {
    [(UIShareGroupActivityCell *)self setIsPulsing:1];
    v3 = [(UIShareGroupActivityCell *)self title];
    if ([v3 length])
    {
      [(UIShareGroupActivityCell *)self titleLabel];
    }

    else
    {
      [(UIShareGroupActivityCell *)self titleSlotView];
    }
    v4 = ;

    [v4 setAlpha:1.0];
    v5 = MEMORY[0x1E69DD250];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __40__UIShareGroupActivityCell_startPulsing__block_invoke;
    v7[3] = &unk_1E71F9510;
    v8 = v4;
    v6 = v4;
    [v5 animateWithDuration:24 delay:v7 options:0 animations:0.75 completion:0.0];
  }
}

- (void)stopPulsing
{
  if ([(UIShareGroupActivityCell *)self isPulsing])
  {
    [(UIShareGroupActivityCell *)self setIsPulsing:0];
    v3 = [(UIShareGroupActivityCell *)self titleLabel];
    v4 = [v3 layer];
    [v4 removeAllAnimations];

    v5 = [(UIShareGroupActivityCell *)self titleLabel];
    [v5 alpha];
    v7 = v6;

    if (v7 > 0.0)
    {
      v8 = [(UIShareGroupActivityCell *)self titleLabel];
      [v8 setAlpha:1.0];
    }

    v9 = [(UIShareGroupActivityCell *)self titleSlotView];
    v10 = [v9 layer];
    [v10 removeAllAnimations];

    v11 = [(UIShareGroupActivityCell *)self titleSlotView];
    [v11 alpha];
    v13 = v12;

    if (v13 > 0.0)
    {
      v14 = [(UIShareGroupActivityCell *)self titleSlotView];
      [v14 setAlpha:1.0];
    }
  }
}

- (void)_updateImageView
{
  [(UIShareGroupActivityCell *)self _configureImageViewForPlaceholder:0];
  v3 = [(UIShareGroupActivityCell *)self image];
  v4 = [(UIShareGroupActivityCell *)self activityImageView];
  [v4 setImage:v3];

  v5 = [(UIShareGroupActivityCell *)self image];

  v6 = [(UIShareGroupActivityCell *)self activityImageView];
  v7 = v6;
  v8 = 0.0;
  if (v5)
  {
    v8 = 1.0;
    v9 = 0.07;
  }

  else
  {
    v9 = 0.0;
  }

  [v6 setAlpha:v8];

  v10 = [(UIShareGroupActivityCell *)self activityImageView];
  v11 = [v10 layer];
  *&v12 = v9;
  [v11 setShadowOpacity:v12];

  v13 = [(UIShareGroupActivityCell *)self imageSlotID];
  if (v13)
  {
    v14 = [MEMORY[0x1E6979320] objectForSlot:{-[UIShareGroupActivityCell imageSlotID](self, "imageSlotID")}];
    v15 = *MEMORY[0x1E6979DE0];
    v16 = [(UIShareGroupActivityCell *)self imageSlotView];
    v17 = [v16 layer];
    [v17 setContentsGravity:v15];

    v18 = [(UIShareGroupActivityCell *)self imageSlotView];
    v19 = [v18 layer];
    [v19 setContents:v14];

    v20 = [(UIShareGroupActivityCell *)self imageSlotView];
    [v20 setBackgroundColor:0];
LABEL_6:

    goto LABEL_11;
  }

  v21 = [(UIShareGroupActivityCell *)self imageSlotView];
  v22 = [v21 layer];
  [v22 setContents:0];

  if (v5)
  {
    v20 = [MEMORY[0x1E69DC888] clearColor];
    v14 = v20;
  }

  else
  {
    v14 = [(UIShareGroupActivityCell *)self traitCollection];
    v20 = SHSheetUISpecPlaceholderColor([v14 userInterfaceStyle]);
  }

  v23 = [(UIShareGroupActivityCell *)self activityImageView];
  [v23 setBackgroundColor:v20];

  if (!v5)
  {
    goto LABEL_6;
  }

LABEL_11:

  if (v13)
  {
    v24 = 1.0;
  }

  else
  {
    v24 = 0.0;
  }

  v25 = [(UIShareGroupActivityCell *)self imageSlotView];
  [v25 setAlpha:v24];
}

- (void)_updateTitleView
{
  v3 = [(UIShareGroupActivityCell *)self title];
  v4 = [v3 length];

  if (v4)
  {
    [(UIShareGroupActivityCell *)self title];
  }

  else
  {
    [(UIShareGroupActivityCell *)self _placeholderString];
  }
  v5 = ;
  v6 = [(UIShareGroupActivityCell *)self titleLabel];
  [v6 setText:v5];

  if (v4)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = [(UIShareGroupActivityCell *)self titleLabel];
  [v8 setAlpha:v7];

  v9 = [(UIShareGroupActivityCell *)self titleSlotID];
  if (v9)
  {
    v10 = [(UIShareGroupActivityCell *)self traitCollection];
    v11 = [v10 layoutDirection];

    v12 = [(UIShareGroupActivityCell *)self traitCollection];
    v13 = [v12 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v13);

    v15 = MEMORY[0x1E6979DF8];
    if (v11 != 1)
    {
      v15 = MEMORY[0x1E6979DD8];
    }

    v16 = MEMORY[0x1E6979320];
    v17 = *v15;
    v18 = [v16 objectForSlot:{-[UIShareGroupActivityCell titleSlotID](self, "titleSlotID")}];
    v19 = _ShareSheetDeviceScreenScale();
    v20 = [(UIShareGroupActivityCell *)self titleSlotView];
    v21 = [v20 layer];
    [v21 setContentsScale:v19];

    v22 = _ShareSheetDeviceScreenScale();
    v23 = [(UIShareGroupActivityCell *)self titleSlotView];
    v24 = [v23 layer];
    [v24 setRasterizationScale:v22];

    if (IsAccessibilityCategory)
    {
      v25 = v17;
    }

    else
    {
      v25 = *MEMORY[0x1E6979DB8];
    }

    v26 = [(UIShareGroupActivityCell *)self titleSlotView];
    v27 = [v26 layer];
    [v27 setContentsGravity:v25];

    v28 = [(UIShareGroupActivityCell *)self titleSlotView];
    v29 = [v28 layer];
    [v29 setContents:v18];
  }

  else
  {
    v18 = [(UIShareGroupActivityCell *)self titleSlotView];
    v28 = [v18 layer];
    [v28 setContents:0];
  }

  if (v9)
  {
    v30 = 1.0;
  }

  else
  {
    v30 = 0.0;
  }

  v31 = [(UIShareGroupActivityCell *)self titleSlotView];
  [v31 setAlpha:v30];
}

- (void)_updateBadgeSlotView
{
  v3 = [(UIShareGroupActivityCell *)self badgeSlotID];
  if (v3)
  {
    v4 = [MEMORY[0x1E6979320] objectForSlot:{-[UIShareGroupActivityCell badgeSlotID](self, "badgeSlotID")}];
    v5 = _ShareSheetDeviceScreenScale();
    v6 = [(UIShareGroupActivityCell *)self badgeSlotView];
    v7 = [v6 layer];
    [v7 setContentsScale:v5];

    v8 = _ShareSheetDeviceScreenScale();
    v9 = [(UIShareGroupActivityCell *)self badgeSlotView];
    v10 = [v9 layer];
    [v10 setRasterizationScale:v8];

    v11 = *MEMORY[0x1E6979DD0];
    v12 = [(UIShareGroupActivityCell *)self badgeSlotView];
    v13 = [v12 layer];
    [v13 setContentsGravity:v11];

    v14 = [(UIShareGroupActivityCell *)self badgeSlotView];
    v15 = [v14 layer];
    [v15 setContents:v4];
  }

  else
  {
    v4 = [(UIShareGroupActivityCell *)self badgeSlotView];
    v14 = [v4 layer];
    [v14 setContents:0];
  }

  if (v3)
  {
    v16 = 1.0;
  }

  else
  {
    v16 = 0.0;
  }

  v17 = [(UIShareGroupActivityCell *)self badgeSlotView];
  [v17 setAlpha:v16];
}

- (SHSheetContentLayoutSpec)layoutSpec
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutSpec);

  return WeakRetained;
}

@end