@interface UIActivityActionHorizontalCell
- (SHSheetContentLayoutSpec)layoutSpec;
- (double)_preferredImageSize;
- (id)_createTitleLabel;
- (id)_placeholderString;
- (id)_titleLabelFont;
- (id)createTargetedPreview;
- (void)_configureImageViewForPlaceholder:(BOOL)a3;
- (void)_installSubviewsIfNeeded;
- (void)_setLayoutSpec:(id)a3;
- (void)_updateConstraints;
- (void)_updateContentTintColor;
- (void)_updateDarkening;
- (void)_updateImageView;
- (void)_updateTitleView;
- (void)configureLayoutIfNeeded:(id)a3;
- (void)prepareForReuse;
- (void)setContentTintColor:(id)a3;
- (void)setDisabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setImage:(id)a3;
- (void)setImageSlotID:(unsigned int)a3;
- (void)setSelected:(BOOL)a3;
- (void)setTitle:(id)a3;
- (void)setTitleSlotID:(unsigned int)a3;
- (void)setupConstraints;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation UIActivityActionHorizontalCell

- (id)_placeholderString
{
  v2 = [(UIActivityActionHorizontalCell *)self traitCollection];
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
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v3 = getSFUIShareSheetActivityCellSpecClass_softClass_0;
  v20 = getSFUIShareSheetActivityCellSpecClass_softClass_0;
  if (!getSFUIShareSheetActivityCellSpecClass_softClass_0)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __getSFUIShareSheetActivityCellSpecClass_block_invoke_0;
    v16[3] = &unk_1E71F91F0;
    v16[4] = &v17;
    __getSFUIShareSheetActivityCellSpecClass_block_invoke_0(v16);
    v3 = v18[3];
  }

  v4 = v3;
  _Block_object_dispose(&v17, 8);
  v5 = [MEMORY[0x1E69DC938] currentDevice];
  v6 = [v3 titleLabelFontTextStyleForIdiom:{objc_msgSend(v5, "userInterfaceIdiom")}];

  v7 = *MEMORY[0x1E69DDC50];
  v8 = [(UIActivityActionHorizontalCell *)self traitCollection];
  v9 = [v8 preferredContentSizeCategory];
  v10 = UIContentSizeCategoryCompareToCategory(v7, v9);

  if (v10)
  {
    v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v6];
  }

  else
  {
    v12 = MEMORY[0x1E69DB880];
    v13 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC58]];
    v14 = [v12 preferredFontDescriptorWithTextStyle:v6 compatibleWithTraitCollection:v13];

    v11 = [MEMORY[0x1E69DB878] fontWithDescriptor:v14 size:0.0];
  }

  return v11;
}

- (id)_createTitleLabel
{
  v3 = [(UIActivityActionHorizontalCell *)self _placeholderString];
  v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  v5 = [(UIActivityActionHorizontalCell *)self _titleLabelFont];
  [v4 setFont:v5];

  v6 = [(UIActivityActionHorizontalCell *)self traitCollection];
  v7 = [v6 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v7);

  if (IsAccessibilityCategory)
  {
    v9 = 4;
  }

  else
  {
    v9 = 1;
  }

  [v4 setTextAlignment:v9];
  [v4 setNumberOfLines:0];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 _setHyphenationFactor:0.0];
  [v4 setText:v3];
  [v4 setAlpha:0.0];
  [v4 setAccessibilityIdentifier:@"cellTitleLabel"];

  return v4;
}

- (void)_installSubviewsIfNeeded
{
  v93[1] = *MEMORY[0x1E69E9840];
  if (![(UIActivityActionHorizontalCell *)self didInstallSubviews])
  {
    [(UIActivityActionHorizontalCell *)self setDidInstallSubviews:1];
    v3 = [MEMORY[0x1E69DC730] effectWithStyle:8];
    v92 = v3;
    if (_ShareSheetSolariumEnabled())
    {
      v4 = [MEMORY[0x1E69DD248] effectForBlurEffect:v3 style:6];
      v5 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v4];
      if (v4)
      {
        v93[0] = v4;
        v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v93 count:1];
        [v5 setBackgroundEffects:v6];
      }
    }

    else
    {
      v5 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v3];
    }

    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 setClipsToBounds:1];
    [(UIActivityActionHorizontalCell *)self setImageEffectView:v5];
    v7 = [(UIActivityActionHorizontalCell *)self layoutSpec];
    [v7 peopleIconWidth];
    v9 = v8 * 0.5;
    v10 = [(UIActivityActionHorizontalCell *)self imageEffectView];
    v11 = [v10 layer];
    [v11 setCornerRadius:v9];

    v12 = [(UIActivityActionHorizontalCell *)self contentView];
    v13 = [(UIActivityActionHorizontalCell *)self imageEffectView];
    [v12 addSubview:v13];

    v91 = [MEMORY[0x1E69DC730] effectWithStyle:9];
    v14 = [MEMORY[0x1E69DD248] effectForBlurEffect:? style:?];
    v15 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v14];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIActivityActionHorizontalCell *)self setVibrantLabelView:v15];
    v16 = [(UIActivityActionHorizontalCell *)self contentView];
    v17 = [(UIActivityActionHorizontalCell *)self vibrantLabelView];
    [v16 addSubview:v17];

    v18 = [(UIActivityActionHorizontalCell *)self _createTitleLabel];
    [(UIActivityActionHorizontalCell *)self setTitleLabel:v18];

    v19 = [(UIActivityActionHorizontalCell *)self vibrantLabelView];
    v20 = [v19 contentView];
    v21 = [(UIActivityActionHorizontalCell *)self titleLabel];
    [v20 addSubview:v21];

    v22 = [(UIActivityActionHorizontalCell *)self _createTitleLabel];
    [(UIActivityActionHorizontalCell *)self setLabelForPositioning:v22];

    v23 = [(UIActivityActionHorizontalCell *)self vibrantLabelView];
    v24 = [v23 contentView];
    v25 = [(UIActivityActionHorizontalCell *)self labelForPositioning];
    [v24 addSubview:v25];

    v26 = [MEMORY[0x1E69A8A30] imageDescriptorNamed:*MEMORY[0x1E69A8A78]];
    v27 = [MEMORY[0x1E69DC938] currentDevice];
    v28 = [v27 userInterfaceIdiom];

    v29 = 13.5;
    if ((v28 & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      [v26 continuousCornerRadius];
      v29 = v30;
    }

    v31 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(UIActivityActionHorizontalCell *)self setImageSlotView:v31];

    v32 = [(UIActivityActionHorizontalCell *)self imageSlotView];
    [v32 setAlpha:0.0];

    v33 = [(UIActivityActionHorizontalCell *)self imageSlotView];
    [v33 setClipsToBounds:1];

    v34 = [(UIActivityActionHorizontalCell *)self imageSlotView];
    [v34 setTranslatesAutoresizingMaskIntoConstraints:0];

    v35 = [(UIActivityActionHorizontalCell *)self imageSlotView];
    v36 = [v35 layer];
    [v36 setCornerRadius:v29];

    v37 = *MEMORY[0x1E69796E8];
    v38 = [(UIActivityActionHorizontalCell *)self imageSlotView];
    v39 = [v38 layer];
    [v39 setCornerCurve:v37];

    v40 = [MEMORY[0x1E69DC888] blackColor];
    v41 = [v40 CGColor];
    v42 = [(UIActivityActionHorizontalCell *)self imageSlotView];
    v43 = [v42 layer];
    [v43 setShadowColor:v41];

    v44 = [(UIActivityActionHorizontalCell *)self imageSlotView];
    v45 = [v44 layer];
    LODWORD(v46) = 1032805417;
    [v45 setShadowOpacity:v46];

    v47 = *MEMORY[0x1E695F060];
    v48 = *(MEMORY[0x1E695F060] + 8);
    v49 = [(UIActivityActionHorizontalCell *)self imageSlotView];
    v50 = [v49 layer];
    [v50 setShadowOffset:{v47, v48}];

    v51 = [(UIActivityActionHorizontalCell *)self imageSlotView];
    v52 = [v51 layer];
    [v52 setShadowRadius:10.0];

    v53 = [(UIActivityActionHorizontalCell *)self imageSlotView];
    v54 = [v53 layer];
    [v54 setShadowPathIsBounds:1];

    v55 = [(UIActivityActionHorizontalCell *)self imageSlotView];
    v56 = [v55 layer];
    [v56 setShouldRasterize:0];

    v57 = [(UIActivityActionHorizontalCell *)self imageSlotView];
    v58 = [v57 layer];
    [v58 setMasksToBounds:0];

    v59 = [(UIActivityActionHorizontalCell *)self contentView];
    v60 = [(UIActivityActionHorizontalCell *)self imageSlotView];
    [v59 addSubview:v60];

    v61 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    [(UIActivityActionHorizontalCell *)self setActivityImageView:v61];

    v62 = [(UIActivityActionHorizontalCell *)self traitCollection];
    v63 = SHSheetUISpecPlaceholderColor([v62 userInterfaceStyle]);
    v64 = [(UIActivityActionHorizontalCell *)self activityImageView];
    [v64 setBackgroundColor:v63];

    v65 = [(UIActivityActionHorizontalCell *)self activityImageView];
    [v65 setClipsToBounds:1];

    v66 = [(UIActivityActionHorizontalCell *)self activityImageView];
    [v66 setTranslatesAutoresizingMaskIntoConstraints:0];

    v67 = [(UIActivityActionHorizontalCell *)self activityImageView];
    [v67 setContentMode:2];

    v68 = [(UIActivityActionHorizontalCell *)self activityImageView];
    v69 = [v68 layer];
    [v69 setCornerRadius:v29];

    v70 = [(UIActivityActionHorizontalCell *)self activityImageView];
    v71 = [v70 layer];
    [v71 setCornerCurve:v37];

    v72 = [(UIActivityActionHorizontalCell *)self activityImageView];
    v73 = [v72 layer];
    [v73 setShadowOffset:{v47, v48}];

    v74 = [(UIActivityActionHorizontalCell *)self activityImageView];
    v75 = [v74 layer];
    [v75 setShadowRadius:10.0];

    v76 = [(UIActivityActionHorizontalCell *)self activityImageView];
    v77 = [v76 layer];
    [v77 setShadowPathIsBounds:1];

    v78 = [(UIActivityActionHorizontalCell *)self activityImageView];
    v79 = [v78 layer];
    [v79 setShouldRasterize:0];

    v80 = [(UIActivityActionHorizontalCell *)self activityImageView];
    v81 = [v80 layer];
    [v81 setMasksToBounds:0];

    v82 = [(UIActivityActionHorizontalCell *)self activityImageView];
    [v82 setAccessibilityIdentifier:@"activityImageView"];

    v83 = [(UIActivityActionHorizontalCell *)self contentView];
    v84 = [(UIActivityActionHorizontalCell *)self activityImageView];
    [v83 addSubview:v84];

    v85 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(UIActivityActionHorizontalCell *)self setTitleSlotView:v85];

    v86 = [(UIActivityActionHorizontalCell *)self titleSlotView];
    [v86 setAlpha:0.0];

    v87 = [(UIActivityActionHorizontalCell *)self titleSlotView];
    [v87 setTranslatesAutoresizingMaskIntoConstraints:0];

    v88 = [(UIActivityActionHorizontalCell *)self vibrantLabelView];
    v89 = [v88 contentView];
    v90 = [(UIActivityActionHorizontalCell *)self titleSlotView];
    [v89 addSubview:v90];

    [(UIActivityActionHorizontalCell *)self _configureImageViewForPlaceholder:1];
    [(UIActivityActionHorizontalCell *)self setupConstraints];
  }
}

- (void)_setLayoutSpec:(id)a3
{
  v4 = a3;
  [(UIActivityActionHorizontalCell *)self setLayoutSpec:v4];
  v5 = [v4 deviceClass];

  v6 = &regularHeight5_8Rounded_1;
  v7 = &visionLarge_0;
  v8 = &regularHeight_1;
  if (v5 == 9)
  {
    v8 = &visionCompact_0;
  }

  if (v5 != 10)
  {
    v7 = v8;
  }

  if (v5 != 3)
  {
    v6 = v7;
  }

  layout_1 = v6;
  if (_ShareSheetSolariumEnabled())
  {
    layout_1 = &solariumLayout_0;
  }
}

- (void)configureLayoutIfNeeded:(id)a3
{
  v8 = a3;
  v4 = [(UIActivityActionHorizontalCell *)self layoutSpec];

  [(UIActivityActionHorizontalCell *)self _setLayoutSpec:v8];
  if ([(UIActivityActionHorizontalCell *)self didInstallSubviews])
  {
    v5 = v8;
    if (v4 == v8)
    {
      goto LABEL_6;
    }

    v6 = MEMORY[0x1E696ACD8];
    v7 = [(UIActivityActionHorizontalCell *)self allConstraints];
    [v6 deactivateConstraints:v7];

    [(UIActivityActionHorizontalCell *)self setupConstraints];
  }

  else
  {
    [(UIActivityActionHorizontalCell *)self _installSubviewsIfNeeded];
  }

  v5 = v8;
LABEL_6:
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = UIActivityActionHorizontalCell;
  [(UIActivityActionHorizontalCell *)&v3 prepareForReuse];
  [(UIActivityActionHorizontalCell *)self setImage:0];
  [(UIActivityActionHorizontalCell *)self setImageSlotID:0];
  [(UIActivityActionHorizontalCell *)self _configureImageViewForPlaceholder:1];
}

- (void)setupConstraints
{
  v192[2] = *MEMORY[0x1E69E9840];
  v188 = [(UIActivityActionHorizontalCell *)self contentView];
  [(UIActivityActionHorizontalCell *)self _preferredImageSize];
  v4 = v3;
  v5 = [(UIActivityActionHorizontalCell *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v6);

  v186 = IsAccessibilityCategory;
  if (IsAccessibilityCategory)
  {
    [(UIActivityActionHorizontalCell *)self labelForPositioning];
  }

  else
  {
    [(UIActivityActionHorizontalCell *)self titleLabel];
  }
  v8 = ;
  v9 = MEMORY[0x1E695DF70];
  v10 = [(UIActivityActionHorizontalCell *)self imageSlotView];
  v11 = [v10 widthAnchor];
  v12 = [v11 constraintEqualToConstant:v4];
  v192[0] = v12;
  v13 = [(UIActivityActionHorizontalCell *)self imageSlotView];
  v14 = [v13 heightAnchor];
  v15 = [v14 constraintEqualToConstant:v4];
  v192[1] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v192 count:2];
  v17 = [v9 arrayWithArray:v16];
  [(UIActivityActionHorizontalCell *)self setImageDimensionConstantConstraints:v17];

  v102 = MEMORY[0x1E695DF70];
  v183 = [(UIActivityActionHorizontalCell *)self imageDimensionConstantConstraints];
  v180 = [v183 objectAtIndexedSubscript:0];
  v191[0] = v180;
  v177 = [(UIActivityActionHorizontalCell *)self imageDimensionConstantConstraints];
  v174 = [v177 objectAtIndexedSubscript:1];
  v191[1] = v174;
  v171 = [(UIActivityActionHorizontalCell *)self imageEffectView];
  v165 = [v171 widthAnchor];
  v168 = [(UIActivityActionHorizontalCell *)self layoutSpec];
  [v168 peopleIconWidth];
  v162 = [v165 constraintEqualToConstant:?];
  v191[2] = v162;
  v159 = [(UIActivityActionHorizontalCell *)self imageEffectView];
  v153 = [v159 heightAnchor];
  v156 = [(UIActivityActionHorizontalCell *)self layoutSpec];
  [v156 peopleIconWidth];
  v150 = [v153 constraintEqualToConstant:?];
  v191[3] = v150;
  v147 = [(UIActivityActionHorizontalCell *)self activityImageView];
  v141 = [v147 widthAnchor];
  v144 = [(UIActivityActionHorizontalCell *)self imageSlotView];
  v138 = [v144 widthAnchor];
  v135 = [v141 constraintEqualToAnchor:v138];
  v191[4] = v135;
  v132 = [(UIActivityActionHorizontalCell *)self activityImageView];
  v126 = [v132 heightAnchor];
  v129 = [(UIActivityActionHorizontalCell *)self imageSlotView];
  v123 = [v129 heightAnchor];
  v120 = [v126 constraintEqualToAnchor:v123];
  v191[5] = v120;
  v117 = [(UIActivityActionHorizontalCell *)self activityImageView];
  v111 = [v117 centerXAnchor];
  v114 = [(UIActivityActionHorizontalCell *)self imageSlotView];
  v108 = [v114 centerXAnchor];
  v105 = [v111 constraintEqualToAnchor:v108];
  v191[6] = v105;
  v99 = [(UIActivityActionHorizontalCell *)self activityImageView];
  v93 = [v99 centerYAnchor];
  v96 = [(UIActivityActionHorizontalCell *)self imageSlotView];
  v90 = [v96 centerYAnchor];
  v88 = [v93 constraintEqualToAnchor:v90];
  v191[7] = v88;
  v86 = [(UIActivityActionHorizontalCell *)self titleSlotView];
  v84 = [v86 centerXAnchor];
  v82 = [v8 centerXAnchor];
  v80 = [v84 constraintEqualToAnchor:v82];
  v191[8] = v80;
  v78 = [(UIActivityActionHorizontalCell *)self titleSlotView];
  v76 = [v78 centerYAnchor];
  v74 = [v8 centerYAnchor];
  v72 = [v76 constraintEqualToAnchor:v74];
  v191[9] = v72;
  v70 = [(UIActivityActionHorizontalCell *)self titleSlotView];
  v68 = [v70 heightAnchor];
  v66 = [v8 heightAnchor];
  v64 = [v68 constraintEqualToAnchor:v66];
  v191[10] = v64;
  v62 = [(UIActivityActionHorizontalCell *)self titleSlotView];
  v60 = [v62 widthAnchor];
  v59 = [v8 widthAnchor];
  v58 = [v60 constraintEqualToAnchor:v59];
  v191[11] = v58;
  v57 = [(UIActivityActionHorizontalCell *)self vibrantLabelView];
  v56 = [v57 centerXAnchor];
  v55 = [v8 centerXAnchor];
  v54 = [v56 constraintEqualToAnchor:v55];
  v191[12] = v54;
  v53 = [(UIActivityActionHorizontalCell *)self vibrantLabelView];
  v52 = [v53 centerYAnchor];
  v51 = [v8 centerYAnchor];
  v50 = [v52 constraintEqualToAnchor:v51];
  v191[13] = v50;
  v49 = [(UIActivityActionHorizontalCell *)self vibrantLabelView];
  v18 = [v49 heightAnchor];
  v19 = [v8 heightAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];
  v191[14] = v20;
  v21 = [(UIActivityActionHorizontalCell *)self vibrantLabelView];
  v22 = [v21 widthAnchor];
  v187 = v8;
  v23 = [v8 widthAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];
  v191[15] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v191 count:16];
  v26 = [v102 arrayWithArray:v25];
  [(UIActivityActionHorizontalCell *)self setAllConstraints:v26];

  v184 = [(UIActivityActionHorizontalCell *)self labelForPositioning];
  v181 = [v184 topAnchor];
  v178 = [v188 topAnchor];
  v175 = [v181 constraintGreaterThanOrEqualToAnchor:v178 constant:8.0];
  v190[0] = v175;
  v169 = [v188 bottomAnchor];
  v172 = [(UIActivityActionHorizontalCell *)self labelForPositioning];
  v166 = [v172 bottomAnchor];
  v163 = [v169 constraintGreaterThanOrEqualToAnchor:v166 constant:8.0];
  v190[1] = v163;
  v160 = [(UIActivityActionHorizontalCell *)self labelForPositioning];
  v154 = [v160 centerYAnchor];
  v157 = [(UIActivityActionHorizontalCell *)self activityImageView];
  v151 = [v157 centerYAnchor];
  v148 = [v154 constraintEqualToAnchor:v151];
  v190[2] = v148;
  v145 = [(UIActivityActionHorizontalCell *)self imageEffectView];
  v142 = [v145 leadingAnchor];
  v139 = [v188 leadingAnchor];
  v136 = [v142 constraintEqualToAnchor:v139 constant:0.0];
  v190[3] = v136;
  v133 = [(UIActivityActionHorizontalCell *)self imageEffectView];
  v130 = [v133 centerYAnchor];
  v127 = [v188 centerYAnchor];
  v124 = [v130 constraintEqualToAnchor:v127];
  v190[4] = v124;
  v121 = [(UIActivityActionHorizontalCell *)self imageSlotView];
  v115 = [v121 centerXAnchor];
  v118 = [(UIActivityActionHorizontalCell *)self imageEffectView];
  v112 = [v118 centerXAnchor];
  v109 = [v115 constraintEqualToAnchor:v112];
  v190[5] = v109;
  v106 = [(UIActivityActionHorizontalCell *)self imageSlotView];
  v100 = [v106 centerYAnchor];
  v103 = [(UIActivityActionHorizontalCell *)self imageEffectView];
  v97 = [v103 centerYAnchor];
  v94 = [v100 constraintEqualToAnchor:v97];
  v190[6] = v94;
  v91 = [(UIActivityActionHorizontalCell *)self labelForPositioning];
  v89 = [v91 trailingAnchor];
  v87 = [v188 trailingAnchor];
  v85 = [v89 constraintEqualToAnchor:v87];
  v190[7] = v85;
  v83 = [(UIActivityActionHorizontalCell *)self labelForPositioning];
  v79 = [v83 leadingAnchor];
  v81 = [(UIActivityActionHorizontalCell *)self imageEffectView];
  v77 = [v81 trailingAnchor];
  v75 = [v79 constraintEqualToAnchor:v77 constant:14.0];
  v190[8] = v75;
  v73 = [(UIActivityActionHorizontalCell *)self labelForPositioning];
  v69 = [v73 leadingAnchor];
  v71 = [(UIActivityActionHorizontalCell *)self titleLabel];
  v67 = [v71 leadingAnchor];
  v65 = [v69 constraintEqualToAnchor:v67];
  v190[9] = v65;
  v63 = [(UIActivityActionHorizontalCell *)self labelForPositioning];
  v61 = [v63 trailingAnchor];
  v27 = [(UIActivityActionHorizontalCell *)self titleLabel];
  v28 = [v27 trailingAnchor];
  v29 = [v61 constraintEqualToAnchor:v28];
  v190[10] = v29;
  v30 = [(UIActivityActionHorizontalCell *)self labelForPositioning];
  v31 = [v30 centerYAnchor];
  v32 = [(UIActivityActionHorizontalCell *)self titleLabel];
  v33 = [v32 centerYAnchor];
  v34 = [v31 constraintEqualToAnchor:v33];
  v190[11] = v34;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v190 count:12];
  [(UIActivityActionHorizontalCell *)self setLargeTextConstraints:v35];

  v185 = [(UIActivityActionHorizontalCell *)self imageEffectView];
  v182 = [v185 centerXAnchor];
  v179 = [v188 centerXAnchor];
  v176 = [v182 constraintEqualToAnchor:v179];
  v189[0] = v176;
  v173 = [(UIActivityActionHorizontalCell *)self imageEffectView];
  v170 = [v173 topAnchor];
  v167 = [v188 topAnchor];
  v164 = [v170 constraintEqualToAnchor:v167 constant:*layout_1];
  v189[1] = v164;
  v161 = [(UIActivityActionHorizontalCell *)self imageSlotView];
  v158 = [v161 centerXAnchor];
  v155 = [v188 centerXAnchor];
  v152 = [v158 constraintEqualToAnchor:v155];
  v189[2] = v152;
  v149 = [(UIActivityActionHorizontalCell *)self imageSlotView];
  v143 = [v149 centerYAnchor];
  v146 = [(UIActivityActionHorizontalCell *)self imageEffectView];
  v140 = [v146 centerYAnchor];
  v137 = [v143 constraintEqualToAnchor:v140];
  v189[3] = v137;
  v134 = [(UIActivityActionHorizontalCell *)self titleLabel];
  v131 = [v134 widthAnchor];
  v128 = [v188 widthAnchor];
  v125 = [v131 constraintEqualToAnchor:v128 constant:*(layout_1 + 24)];
  v189[4] = v125;
  v122 = [(UIActivityActionHorizontalCell *)self labelForPositioning];
  v116 = [v122 topAnchor];
  v119 = [(UIActivityActionHorizontalCell *)self imageEffectView];
  v113 = [v119 bottomAnchor];
  v110 = [v116 constraintEqualToAnchor:v113 constant:*(layout_1 + 8)];
  v189[5] = v110;
  v107 = [(UIActivityActionHorizontalCell *)self labelForPositioning];
  v104 = [v107 bottomAnchor];
  v101 = [v188 bottomAnchor];
  v98 = [v104 constraintEqualToAnchor:v101 constant:*(layout_1 + 16)];
  v189[6] = v98;
  v95 = [(UIActivityActionHorizontalCell *)self titleLabel];
  v92 = [v95 topAnchor];
  v36 = [(UIActivityActionHorizontalCell *)self labelForPositioning];
  v37 = [v36 topAnchor];
  v38 = [v92 constraintEqualToAnchor:v37];
  v189[7] = v38;
  v39 = [(UIActivityActionHorizontalCell *)self titleLabel];
  v40 = [v39 bottomAnchor];
  v41 = [(UIActivityActionHorizontalCell *)self labelForPositioning];
  v42 = [v41 bottomAnchor];
  v43 = [v40 constraintLessThanOrEqualToAnchor:v42];
  v189[8] = v43;
  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v189 count:9];
  [(UIActivityActionHorizontalCell *)self setRegularConstraints:v44];

  v45 = [(UIActivityActionHorizontalCell *)self allConstraints];
  if (v186)
  {
    [(UIActivityActionHorizontalCell *)self largeTextConstraints];
  }

  else
  {
    [(UIActivityActionHorizontalCell *)self regularConstraints];
  }
  v46 = ;
  [v45 addObjectsFromArray:v46];

  v47 = MEMORY[0x1E696ACD8];
  v48 = [(UIActivityActionHorizontalCell *)self allConstraints];
  [v47 activateConstraints:v48];
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = UIActivityActionHorizontalCell;
  v4 = a3;
  [(UIActivityActionHorizontalCell *)&v8 traitCollectionDidChange:v4];
  v5 = [(UIActivityActionHorizontalCell *)self traitCollection:v8.receiver];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  if (v6 != v7)
  {
    [(UIActivityActionHorizontalCell *)self _updateConstraints];
  }
}

- (id)createTargetedPreview
{
  v3 = [(UIActivityActionHorizontalCell *)self image];

  if (v3)
  {
    [(UIActivityActionHorizontalCell *)self activityImageView];
  }

  else
  {
    [(UIActivityActionHorizontalCell *)self imageSlotView];
  }
  v4 = ;
  [v4 frame];
  v5 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:0.0 cornerRadius:0.0];
  v6 = objc_alloc_init(MEMORY[0x1E69DCE28]);
  [v6 setVisiblePath:v5];
  v7 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:v4 parameters:v6];

  return v7;
}

- (double)_preferredImageSize
{
  v3 = [(UIActivityActionHorizontalCell *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  [(UIActivityActionHorizontalCell *)self _legacyIconSizeForContentSizeCategory:v4];
  v6 = v5;

  v7 = [(UIActivityActionHorizontalCell *)self image];
  if (![v7 isSymbolImage])
  {
    v6 = v6 * 1.35;
  }

  return v6;
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
    v3 = [(UIActivityActionHorizontalCell *)self activityImageView];
    [v3 alpha];
    v6 = v7;
  }

  v8 = [(UIActivityActionHorizontalCell *)self activityImageView];
  [v8 setAlpha:v6];

  if (v4)
  {
    v9 = [(UIActivityActionHorizontalCell *)self activityImageView];
    v10 = [v9 layer];
    [v10 setShadowOpacity:0.0];

    v11 = [(UIActivityActionHorizontalCell *)self traitCollection];
    SHSheetUISpecPlaceholderColor([v11 userInterfaceStyle]);
  }

  else
  {

    v11 = [(UIActivityActionHorizontalCell *)self activityImageView];
    v12 = [v11 layer];
    LODWORD(v13) = 1032805417;
    [v12 setShadowOpacity:v13];

    [MEMORY[0x1E69DC888] clearColor];
  }
  v15 = ;
  v14 = [(UIActivityActionHorizontalCell *)self activityImageView];
  [v14 setBackgroundColor:v15];

  if (v4)
  {

    v15 = v11;
  }
}

- (void)_updateConstraints
{
  v3 = [(UIActivityActionHorizontalCell *)self _titleLabelFont];
  v4 = [(UIActivityActionHorizontalCell *)self titleLabel];
  [v4 setFont:v3];

  v5 = [(UIActivityActionHorizontalCell *)self traitCollection];
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

  v9 = [(UIActivityActionHorizontalCell *)self titleLabel];
  [v9 setTextAlignment:v8];

  v10 = MEMORY[0x1E696ACD8];
  if (IsAccessibilityCategory)
  {
    v11 = [(UIActivityActionHorizontalCell *)self regularConstraints];
    [v10 deactivateConstraints:v11];

    v12 = MEMORY[0x1E696ACD8];
    [(UIActivityActionHorizontalCell *)self largeTextConstraints];
  }

  else
  {
    v13 = [(UIActivityActionHorizontalCell *)self largeTextConstraints];
    [v10 deactivateConstraints:v13];

    v12 = MEMORY[0x1E696ACD8];
    [(UIActivityActionHorizontalCell *)self regularConstraints];
  }
  v14 = ;
  [v12 activateConstraints:v14];

  [(UIActivityActionHorizontalCell *)self setNeedsLayout];
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
      v6 = [(UIActivityActionHorizontalCell *)self identifier];
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
    [(UIActivityActionHorizontalCell *)self _updateDarkening];
  }
}

- (void)_updateDarkening
{
  v24[1] = *MEMORY[0x1E69E9840];
  v3 = [(UIActivityActionHorizontalCell *)self imageSlotView];
  v4 = [v3 layer];
  v5 = [v4 contents];

  v6 = [(UIActivityActionHorizontalCell *)self titleSlotView];
  v7 = [v6 layer];
  v8 = [v7 contents];

  v9 = [(UIActivityActionHorizontalCell *)self imageSlotView];
  v10 = [v9 layer];
  [v10 setContents:v5];

  v11 = [(UIActivityActionHorizontalCell *)self titleSlotView];
  v12 = [v11 layer];
  [v12 setContents:v8];

  if (([(UIActivityActionHorizontalCell *)self isHighlighted]& 1) != 0 || [(UIActivityActionHorizontalCell *)self isDisabled])
  {
    v13 = [MEMORY[0x1E69DC888] grayColor];
    v14 = 0;
    v15 = 1;
  }

  else
  {
    v13 = [(UIActivityActionHorizontalCell *)self contentTintColor];
    v15 = 0;
    v14 = 1;
  }

  v16 = [v13 CGColor];
  v17 = [(UIActivityActionHorizontalCell *)self imageSlotView];
  v18 = [v17 layer];
  [v18 setContentsMultiplyColor:v16];

  if (v14)
  {
  }

  if (v15)
  {
  }

  if (([(UIActivityActionHorizontalCell *)self isHighlighted]& 1) != 0 || [(UIActivityActionHorizontalCell *)self isDisabled])
  {
    v19 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CB0]];
    v20 = [MEMORY[0x1E69DC888] colorWithWhite:0.5 alpha:1.0];
    [v19 setValue:objc_msgSend(v20 forKey:{"CGColor"), @"inputColor"}];

    v24[0] = v19;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  }

  else
  {
    v21 = 0;
  }

  v22 = [(UIActivityActionHorizontalCell *)self activityImageView];
  v23 = [v22 layer];
  [v23 setFilters:v21];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  if ([(UIActivityActionHorizontalCell *)self isHighlighted]!= a3)
  {
    v5.receiver = self;
    v5.super_class = UIActivityActionHorizontalCell;
    [(UIActivityActionHorizontalCell *)&v5 setHighlighted:v3];
    [(UIActivityActionHorizontalCell *)self _updateDarkening];
  }
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIActivityActionHorizontalCell *)self imageSlotView];
  v6 = [v5 layer];
  v7 = [v6 contents];

  v8 = [(UIActivityActionHorizontalCell *)self titleSlotView];
  v9 = [v8 layer];
  v10 = [v9 contents];

  v15.receiver = self;
  v15.super_class = UIActivityActionHorizontalCell;
  [(UIActivityActionHorizontalCell *)&v15 setSelected:v3];
  v11 = [(UIActivityActionHorizontalCell *)self imageSlotView];
  v12 = [v11 layer];
  [v12 setContents:v7];

  v13 = [(UIActivityActionHorizontalCell *)self titleSlotView];
  v14 = [v13 layer];
  [v14 setContents:v10];
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
    [(UIActivityActionHorizontalCell *)self _updateTitleView];
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
    [(UIActivityActionHorizontalCell *)self _updateImageView];
    v5 = v6;
  }
}

- (void)setImageSlotID:(unsigned int)a3
{
  if (self->_imageSlotID != a3)
  {
    self->_imageSlotID = a3;
    [(UIActivityActionHorizontalCell *)self _updateImageView];
  }
}

- (void)setTitleSlotID:(unsigned int)a3
{
  if (self->_titleSlotID != a3)
  {
    self->_titleSlotID = a3;
    [(UIActivityActionHorizontalCell *)self _updateTitleView];
  }
}

- (void)setContentTintColor:(id)a3
{
  v5 = a3;
  if (self->_contentTintColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_contentTintColor, a3);
    [(UIActivityActionHorizontalCell *)self _updateContentTintColor];
    v5 = v6;
  }
}

- (void)_updateContentTintColor
{
  v3 = [(UIActivityActionHorizontalCell *)self contentTintColor];
  v4 = [(UIActivityActionHorizontalCell *)self titleLabel];
  [v4 setTextColor:v3];

  v5 = [(UIActivityActionHorizontalCell *)self contentTintColor];
  v6 = [(UIActivityActionHorizontalCell *)self activityImageView];
  [v6 setTintColor:v5];

  v11 = [(UIActivityActionHorizontalCell *)self contentTintColor];
  v7 = v11;
  v8 = [v11 CGColor];
  v9 = [(UIActivityActionHorizontalCell *)self imageSlotView];
  v10 = [v9 layer];
  [v10 setContentsMultiplyColor:v8];
}

- (void)_updateImageView
{
  v37 = *MEMORY[0x1E69E9840];
  [(UIActivityActionHorizontalCell *)self _configureImageViewForPlaceholder:0];
  v3 = [(UIActivityActionHorizontalCell *)self image];
  v4 = [(UIActivityActionHorizontalCell *)self activityImageView];
  [v4 setImage:v3];

  v5 = [(UIActivityActionHorizontalCell *)self image];

  v6 = [(UIActivityActionHorizontalCell *)self activityImageView];
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

  v10 = [(UIActivityActionHorizontalCell *)self activityImageView];
  v11 = [v10 layer];
  *&v12 = v9;
  [v11 setShadowOpacity:v12];

  v13 = [(UIActivityActionHorizontalCell *)self imageSlotID];
  if (v13)
  {
    v14 = [MEMORY[0x1E6979320] objectForSlot:{-[UIActivityActionHorizontalCell imageSlotID](self, "imageSlotID")}];
    v15 = *MEMORY[0x1E6979DE0];
    v16 = [(UIActivityActionHorizontalCell *)self imageSlotView];
    v17 = [v16 layer];
    [v17 setContentsGravity:v15];

    v18 = [(UIActivityActionHorizontalCell *)self imageSlotView];
    v19 = [v18 layer];
    [v19 setContents:v14];

    v20 = [(UIActivityActionHorizontalCell *)self imageSlotView];
    [v20 setBackgroundColor:0];
  }

  else
  {
    v21 = [(UIActivityActionHorizontalCell *)self imageSlotView];
    v22 = [v21 layer];
    [v22 setContents:0];

    if (v5)
    {
      [MEMORY[0x1E69DC888] clearColor];
    }

    else
    {
      v21 = [(UIActivityActionHorizontalCell *)self traitCollection];
      SHSheetUISpecPlaceholderColor([v21 userInterfaceStyle]);
    }
    v23 = ;
    v24 = [(UIActivityActionHorizontalCell *)self activityImageView];
    [v24 setBackgroundColor:v23];

    if (!v5)
    {

      v23 = v21;
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v14 = [(UIActivityActionHorizontalCell *)self imageDimensionConstantConstraints];
    v25 = [v14 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v33;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v33 != v27)
          {
            objc_enumerationMutation(v14);
          }

          v29 = *(*(&v32 + 1) + 8 * i);
          [(UIActivityActionHorizontalCell *)self _preferredImageSize];
          [v29 setConstant:?];
        }

        v26 = [v14 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v26);
    }
  }

  if (v13)
  {
    v30 = 1.0;
  }

  else
  {
    v30 = 0.0;
  }

  v31 = [(UIActivityActionHorizontalCell *)self imageSlotView];
  [v31 setAlpha:v30];
}

- (void)_updateTitleView
{
  v3 = [(UIActivityActionHorizontalCell *)self title];
  v4 = [v3 length];

  if (v4)
  {
    [(UIActivityActionHorizontalCell *)self title];
  }

  else
  {
    [(UIActivityActionHorizontalCell *)self _placeholderString];
  }
  v5 = ;
  v6 = [(UIActivityActionHorizontalCell *)self titleLabel];
  [v6 setText:v5];

  if (v4)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = [(UIActivityActionHorizontalCell *)self titleLabel];
  [v8 setAlpha:v7];

  v9 = [(UIActivityActionHorizontalCell *)self titleSlotID];
  if (v9)
  {
    v10 = [(UIActivityActionHorizontalCell *)self traitCollection];
    v11 = [v10 layoutDirection];

    v12 = [(UIActivityActionHorizontalCell *)self traitCollection];
    v13 = [v12 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v13);

    v15 = MEMORY[0x1E6979DF8];
    if (v11 != 1)
    {
      v15 = MEMORY[0x1E6979DD8];
    }

    v16 = MEMORY[0x1E6979320];
    v17 = *v15;
    v18 = [v16 objectForSlot:{-[UIActivityActionHorizontalCell titleSlotID](self, "titleSlotID")}];
    v19 = _ShareSheetDeviceScreenScale();
    v20 = [(UIActivityActionHorizontalCell *)self titleSlotView];
    v21 = [v20 layer];
    [v21 setContentsScale:v19];

    v22 = _ShareSheetDeviceScreenScale();
    v23 = [(UIActivityActionHorizontalCell *)self titleSlotView];
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

    v26 = [(UIActivityActionHorizontalCell *)self titleSlotView];
    v27 = [v26 layer];
    [v27 setContentsGravity:v25];

    v28 = [(UIActivityActionHorizontalCell *)self titleSlotView];
    v29 = [v28 layer];
    [v29 setContents:v18];
  }

  else
  {
    v18 = [(UIActivityActionHorizontalCell *)self titleSlotView];
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

  v31 = [(UIActivityActionHorizontalCell *)self titleSlotView];
  [v31 setAlpha:v30];
}

- (SHSheetContentLayoutSpec)layoutSpec
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutSpec);

  return WeakRetained;
}

@end