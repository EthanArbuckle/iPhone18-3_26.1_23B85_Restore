@interface UIAirDropGroupActivityCell
+ (double)maximumLabelHeightForNode:(id)a3 width:(double)a4 traitCollection:(id)a5;
+ (id)_createLabelForSingleLine:(BOOL)a3 isAccessibilityContentSize:(BOOL)a4;
+ (id)_formattedDisplayName:(id)a3 ignoreNameWrapping:(BOOL)a4 isAccessibilityContentSize:(BOOL)a5 nameLabel:(id)a6;
+ (id)_labelFont;
+ (id)_placeholderStringForSingleLine:(BOOL)a3 isAccessibilityContentSize:(BOOL)a4;
- (SHSheetContentLayoutSpec)layoutSpec;
- (id)createTargetedPreview;
- (void)_configureImageViewForPlaceholder:(BOOL)a3;
- (void)_configurePlaceholderViews;
- (void)_didCompleteAirDropProgress:(double)a3 animated:(BOOL)a4;
- (void)_installSubviewsIfNeeded;
- (void)_invalidateDisplayName;
- (void)_invalidateSubtitle;
- (void)_setLayoutSpec:(id)a3;
- (void)_updateConstraints;
- (void)_updateDarkening;
- (void)_updateFormattedDisplayName;
- (void)_updateImageView;
- (void)_updateProgress:(double)a3 animated:(BOOL)a4;
- (void)_updateSubtitleView;
- (void)_updateTextView;
- (void)_updateTitleView;
- (void)_updateTransportView;
- (void)configureLayoutIfNeeded:(id)a3;
- (void)prepareForReuse;
- (void)setDisabled:(BOOL)a3;
- (void)setDisplayName:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setImage:(id)a3;
- (void)setImageSlotID:(unsigned int)a3;
- (void)setIsGroup:(BOOL)a3;
- (void)setProgress:(double)a3 animated:(BOOL)a4;
- (void)setSelected:(BOOL)a3;
- (void)setSquareImage:(BOOL)a3;
- (void)setSubtitle:(id)a3;
- (void)setSubtitleSlotID:(unsigned int)a3;
- (void)setSubtitleTextColor:(id)a3;
- (void)setTextSlotID:(unsigned int)a3;
- (void)setTransportIconHidden:(BOOL)a3 animated:(BOOL)a4 useDelay:(BOOL)a5;
- (void)setTransportImage:(id)a3;
- (void)setTransportSlotID:(unsigned int)a3;
- (void)setupConstraints;
- (void)startPulsing;
- (void)stopPulsing;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation UIAirDropGroupActivityCell

+ (double)maximumLabelHeightForNode:(id)a3 width:(double)a4 traitCollection:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v7 displayName];
  v10 = [v9 text];

  v11 = [v7 subtitle];
  v12 = [v11 text];

  if (v12)
  {
    v13 = 1;
  }

  else
  {
    v14 = [v7 peopleSuggestion];
    v13 = [v14 isGroup];
  }

  v15 = [v8 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v15);

  v17 = [objc_opt_class() _createLabelForSingleLine:v12 != 0 isAccessibilityContentSize:IsAccessibilityCategory];
  v18 = [objc_opt_class() _formattedDisplayName:v10 ignoreNameWrapping:v13 isAccessibilityContentSize:IsAccessibilityCategory nameLabel:v17];
  [v17 setText:v18];
  [v17 sizeThatFits:{a4, 1.79769313e308}];
  v20 = ceil(v19);

  return v20;
}

- (void)_installSubviewsIfNeeded
{
  if (![(UIAirDropGroupActivityCell *)self didInstallSubviews])
  {
    [(UIAirDropGroupActivityCell *)self setDidInstallSubviews:1];
    v142 = [MEMORY[0x1E69DC730] effectWithStyle:9];
    v3 = [MEMORY[0x1E69DD248] effectForBlurEffect:v142 style:0];
    v4 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v3];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIAirDropGroupActivityCell *)self setVibrantTitleView:v4];
    v5 = [(UIAirDropGroupActivityCell *)self contentView];
    v6 = [(UIAirDropGroupActivityCell *)self vibrantTitleView];
    [v5 addSubview:v6];

    v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(UIAirDropGroupActivityCell *)self setPlaceholderTitleView:v7];

    v8 = [(UIAirDropGroupActivityCell *)self placeholderTitleView];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

    v9 = [(UIAirDropGroupActivityCell *)self placeholderTitleView];
    [v9 setAlpha:0.0];

    v10 = [(UIAirDropGroupActivityCell *)self traitCollection];
    v11 = SHSheetUISpecPlaceholderColor([v10 userInterfaceStyle]);
    v12 = [(UIAirDropGroupActivityCell *)self placeholderTitleView];
    [v12 setBackgroundColor:v11];

    v13 = [(UIAirDropGroupActivityCell *)self placeholderTitleView];
    v14 = [v13 layer];
    [v14 setCornerRadius:2.0];

    v15 = [(UIAirDropGroupActivityCell *)self contentView];
    v16 = [(UIAirDropGroupActivityCell *)self placeholderTitleView];
    [v15 addSubview:v16];

    v17 = [(UIAirDropGroupActivityCell *)self traitCollection];
    v18 = [v17 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v18);

    v20 = [objc_opt_class() _createLabelForSingleLine:0 isAccessibilityContentSize:IsAccessibilityCategory];
    [(UIAirDropGroupActivityCell *)self setTextLabel:v20];

    v21 = [(UIAirDropGroupActivityCell *)self textLabel];
    [v21 setAlpha:0.0];

    v22 = [(UIAirDropGroupActivityCell *)self textLabel];
    [v22 setAccessibilityIdentifier:@"textLabel"];

    v23 = [(UIAirDropGroupActivityCell *)self contentView];
    v24 = [(UIAirDropGroupActivityCell *)self textLabel];
    [v23 addSubview:v24];

    v25 = [objc_opt_class() _createLabelForSingleLine:1 isAccessibilityContentSize:IsAccessibilityCategory];
    [(UIAirDropGroupActivityCell *)self setTitleLabel:v25];

    v26 = [(UIAirDropGroupActivityCell *)self titleLabel];
    [v26 setAlpha:0.0];

    v27 = [(UIAirDropGroupActivityCell *)self titleLabel];
    [v27 setAccessibilityIdentifier:@"titleLabel"];

    v28 = [(UIAirDropGroupActivityCell *)self contentView];
    v29 = [(UIAirDropGroupActivityCell *)self titleLabel];
    [v28 addSubview:v29];

    v30 = [objc_opt_class() _createLabelForSingleLine:1 isAccessibilityContentSize:IsAccessibilityCategory];
    [(UIAirDropGroupActivityCell *)self setSubtitleLabel:v30];

    v31 = [(UIAirDropGroupActivityCell *)self subtitleLabel];
    [v31 setAlpha:0.0];

    SFUIShareSheetActivityCellSpecClass = getSFUIShareSheetActivityCellSpecClass();
    v33 = [MEMORY[0x1E69DC938] currentDevice];
    v34 = [SFUIShareSheetActivityCellSpecClass subtitleLabelColorForIdiom:{objc_msgSend(v33, "userInterfaceIdiom")}];
    v35 = [(UIAirDropGroupActivityCell *)self subtitleLabel];
    [v35 setTextColor:v34];

    v36 = [(UIAirDropGroupActivityCell *)self subtitleLabel];
    [v36 setAccessibilityIdentifier:@"subtitleLabel"];

    v37 = [(UIAirDropGroupActivityCell *)self contentView];
    v38 = [(UIAirDropGroupActivityCell *)self subtitleLabel];
    [v37 addSubview:v38];

    v39 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(UIAirDropGroupActivityCell *)self setTextSlotView:v39];

    v40 = [(UIAirDropGroupActivityCell *)self textSlotView];
    [v40 setAlpha:0.0];

    v41 = [(UIAirDropGroupActivityCell *)self textSlotView];
    [v41 setTranslatesAutoresizingMaskIntoConstraints:0];

    v42 = [(UIAirDropGroupActivityCell *)self vibrantTitleView];
    v43 = [v42 contentView];
    v44 = [(UIAirDropGroupActivityCell *)self textSlotView];
    [v43 addSubview:v44];

    v45 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(UIAirDropGroupActivityCell *)self setTitleSlotView:v45];

    v46 = [(UIAirDropGroupActivityCell *)self titleSlotView];
    [v46 setAlpha:0.0];

    v47 = [(UIAirDropGroupActivityCell *)self titleSlotView];
    [v47 setTranslatesAutoresizingMaskIntoConstraints:0];

    v48 = [(UIAirDropGroupActivityCell *)self vibrantTitleView];
    v49 = [v48 contentView];
    v50 = [(UIAirDropGroupActivityCell *)self titleSlotView];
    [v49 addSubview:v50];

    v51 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(UIAirDropGroupActivityCell *)self setSubtitleSlotView:v51];

    v52 = [(UIAirDropGroupActivityCell *)self subtitleSlotView];
    [v52 setAlpha:0.0];

    v53 = [(UIAirDropGroupActivityCell *)self subtitleSlotView];
    [v53 setTranslatesAutoresizingMaskIntoConstraints:0];

    v54 = [(UIAirDropGroupActivityCell *)self vibrantTitleView];
    v55 = [v54 contentView];
    v56 = [(UIAirDropGroupActivityCell *)self subtitleSlotView];
    [v55 addSubview:v56];

    v57 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    [(UIAirDropGroupActivityCell *)self setImageView:v57];

    v58 = [(UIAirDropGroupActivityCell *)self imageView];
    [v58 setTranslatesAutoresizingMaskIntoConstraints:0];

    v59 = [(UIAirDropGroupActivityCell *)self imageView];
    [v59 setClipsToBounds:1];

    [(UIAirDropGroupActivityCell *)self circleWidth];
    v61 = v60 * 0.5;
    v62 = [(UIAirDropGroupActivityCell *)self imageView];
    v63 = [v62 layer];
    [v63 setCornerRadius:v61];

    v64 = *MEMORY[0x1E695F060];
    v65 = *(MEMORY[0x1E695F060] + 8);
    v66 = [(UIAirDropGroupActivityCell *)self imageView];
    v67 = [v66 layer];
    [v67 setShadowOffset:{v64, v65}];

    v68 = [(UIAirDropGroupActivityCell *)self imageView];
    v69 = [v68 layer];
    [v69 setShadowRadius:10.0];

    v70 = [(UIAirDropGroupActivityCell *)self imageView];
    v71 = [v70 layer];
    [v71 setShadowPathIsBounds:1];

    v72 = [(UIAirDropGroupActivityCell *)self imageView];
    [v72 setAccessibilityIdentifier:@"imageView"];

    v73 = [(UIAirDropGroupActivityCell *)self contentView];
    v74 = [(UIAirDropGroupActivityCell *)self imageView];
    [v73 addSubview:v74];

    v75 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(UIAirDropGroupActivityCell *)self setImageSlotView:v75];

    v76 = [(UIAirDropGroupActivityCell *)self imageSlotView];
    [v76 setTranslatesAutoresizingMaskIntoConstraints:0];

    v77 = [(UIAirDropGroupActivityCell *)self imageSlotView];
    [v77 setAlpha:0.0];

    v78 = [MEMORY[0x1E69DC888] blackColor];
    v79 = [v78 CGColor];
    v80 = [(UIAirDropGroupActivityCell *)self imageSlotView];
    v81 = [v80 layer];
    [v81 setShadowColor:v79];

    v82 = [(UIAirDropGroupActivityCell *)self imageSlotView];
    v83 = [v82 layer];
    LODWORD(v84) = 1032805417;
    [v83 setShadowOpacity:v84];

    v85 = [(UIAirDropGroupActivityCell *)self imageSlotView];
    v86 = [v85 layer];
    [v86 setShadowOffset:{v64, v65}];

    v87 = [(UIAirDropGroupActivityCell *)self imageSlotView];
    v88 = [v87 layer];
    [v88 setShadowRadius:10.0];

    v89 = [(UIAirDropGroupActivityCell *)self imageSlotView];
    v90 = [v89 layer];
    [v90 setShadowPathIsBounds:1];

    v91 = [(UIAirDropGroupActivityCell *)self imageSlotView];
    v92 = [v91 layer];
    [v92 size];
    v94 = v93 * 0.5;
    v95 = [(UIAirDropGroupActivityCell *)self imageSlotView];
    v96 = [v95 layer];
    [v96 setCornerRadius:v94];

    v97 = [(UIAirDropGroupActivityCell *)self contentView];
    v98 = [(UIAirDropGroupActivityCell *)self imageSlotView];
    [v97 addSubview:v98];

    v99 = [_UIAirDropProgressView alloc];
    v100 = [(_UIAirDropProgressView *)v99 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(_UIAirDropProgressView *)v100 setProgressLineWidth:2.0];
    [(_UIAirDropProgressView *)v100 setShowProgressTray:1];
    [(_UIAirDropProgressView *)v100 setAlpha:1.0];
    v101 = [MEMORY[0x1E69DC888] clearColor];
    [(_UIAirDropProgressView *)v100 setBackgroundColor:v101];

    [(_UIAirDropProgressView *)v100 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_UIAirDropProgressView *)v100 setAccessibilityIdentifier:@"circleProgressView"];
    [(UIAirDropGroupActivityCell *)self setCircleProgressView:v100];
    v102 = [(UIAirDropGroupActivityCell *)self contentView];
    [v102 addSubview:v100];

    v103 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    [(UIAirDropGroupActivityCell *)self setTransportImageView:v103];

    v104 = [(UIAirDropGroupActivityCell *)self transportImageView];
    [v104 setAlpha:0.0];

    v105 = [(UIAirDropGroupActivityCell *)self transportImageView];
    [v105 setTranslatesAutoresizingMaskIntoConstraints:0];

    v106 = [MEMORY[0x1E69DC888] blackColor];
    v107 = [v106 CGColor];
    v108 = [(UIAirDropGroupActivityCell *)self transportImageView];
    v109 = [v108 layer];
    [v109 setShadowColor:v107];

    v110 = [(UIAirDropGroupActivityCell *)self transportImageView];
    v111 = [v110 layer];
    LODWORD(v112) = 1032805417;
    [v111 setShadowOpacity:v112];

    v113 = [(UIAirDropGroupActivityCell *)self transportImageView];
    v114 = [v113 layer];
    [v114 setShadowOffset:{v64, v65}];

    v115 = [(UIAirDropGroupActivityCell *)self transportImageView];
    v116 = [v115 layer];
    [v116 setShadowRadius:5.0];

    v117 = [(UIAirDropGroupActivityCell *)self transportImageView];
    v118 = [v117 layer];
    [v118 setShadowPathIsBounds:1];

    v119 = [(UIAirDropGroupActivityCell *)self transportImageView];
    [v119 setAccessibilityIdentifier:@"transportImageView"];

    v120 = [(UIAirDropGroupActivityCell *)self contentView];
    v121 = [(UIAirDropGroupActivityCell *)self transportImageView];
    v122 = [(UIAirDropGroupActivityCell *)self circleProgressView];
    [v120 insertSubview:v121 above:v122];

    v123 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(UIAirDropGroupActivityCell *)self setTransportSlotView:v123];

    v124 = [(UIAirDropGroupActivityCell *)self transportSlotView];
    [v124 setAlpha:0.0];

    v125 = [(UIAirDropGroupActivityCell *)self transportSlotView];
    [v125 setTranslatesAutoresizingMaskIntoConstraints:0];

    v126 = [MEMORY[0x1E69DC888] blackColor];
    v127 = [v126 CGColor];
    v128 = [(UIAirDropGroupActivityCell *)self transportSlotView];
    v129 = [v128 layer];
    [v129 setShadowColor:v127];

    v130 = [(UIAirDropGroupActivityCell *)self transportSlotView];
    v131 = [v130 layer];
    LODWORD(v132) = 1032805417;
    [v131 setShadowOpacity:v132];

    v133 = [(UIAirDropGroupActivityCell *)self transportSlotView];
    v134 = [v133 layer];
    [v134 setShadowOffset:{v64, v65}];

    v135 = [(UIAirDropGroupActivityCell *)self transportSlotView];
    v136 = [v135 layer];
    [v136 setShadowRadius:5.0];

    v137 = [(UIAirDropGroupActivityCell *)self transportSlotView];
    v138 = [v137 layer];
    [v138 setShadowPathIsBounds:1];

    v139 = [(UIAirDropGroupActivityCell *)self contentView];
    v140 = [(UIAirDropGroupActivityCell *)self transportSlotView];
    v141 = [(UIAirDropGroupActivityCell *)self circleProgressView];
    [v139 insertSubview:v140 above:v141];

    [(UIAirDropGroupActivityCell *)self _configurePlaceholderViews];
    [(UIAirDropGroupActivityCell *)self setupConstraints];
  }
}

- (void)_setLayoutSpec:(id)a3
{
  v4 = a3;
  [(UIAirDropGroupActivityCell *)self setLayoutSpec:v4];
  v5 = [v4 deviceClass];
  v6 = &regularHeight5_8Rounded;
  v7 = &visionLarge;
  v8 = &regularHeight;
  if (v5 == 9)
  {
    v8 = &visionCompact;
  }

  if (v5 != 10)
  {
    v7 = v8;
  }

  if (v5 != 3)
  {
    v6 = v7;
  }

  layout = v6;
  [v4 peopleIconWidth];
  v10 = v9;

  self->_circleWidth = v10;
  [getSFUIShareSheetActivityCellSpecClass() transportIconWidth];
  self->_transportIconWidth = v11;
  if (_ShareSheetSolariumEnabled())
  {
    self->_transportIconWidth = 22.0;
    layout = &solariumLayout;
  }
}

- (void)configureLayoutIfNeeded:(id)a3
{
  v12 = a3;
  v4 = [(UIAirDropGroupActivityCell *)self layoutSpec];

  [(UIAirDropGroupActivityCell *)self _setLayoutSpec:v12];
  if ([(UIAirDropGroupActivityCell *)self didInstallSubviews])
  {
    v5 = v12;
    if (v4 == v12)
    {
      goto LABEL_6;
    }

    v6 = MEMORY[0x1E696ACD8];
    v7 = [(UIAirDropGroupActivityCell *)self allConstraints];
    [v6 deactivateConstraints:v7];

    [(UIAirDropGroupActivityCell *)self circleWidth];
    v9 = v8 * 0.5;
    v10 = [(UIAirDropGroupActivityCell *)self imageView];
    v11 = [v10 layer];
    [v11 setCornerRadius:v9];

    [(UIAirDropGroupActivityCell *)self setupConstraints];
  }

  else
  {
    [(UIAirDropGroupActivityCell *)self _installSubviewsIfNeeded];
  }

  v5 = v12;
LABEL_6:
}

- (void)setupConstraints
{
  v317[36] = *MEMORY[0x1E69E9840];
  v3 = [(UIAirDropGroupActivityCell *)self circleProgressView];
  v314 = [(UIAirDropGroupActivityCell *)self contentView];
  [(UIAirDropGroupActivityCell *)self circleWidth];
  v5 = v4;
  if (_ShareSheetSolariumEnabled())
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 2.0;
  }

  v7 = MEMORY[0x1E695DF70];
  v312 = [(UIAirDropGroupActivityCell *)self imageView];
  v309 = [v312 widthAnchor];
  v306 = [v309 constraintEqualToConstant:v5];
  v317[0] = v306;
  v303 = [(UIAirDropGroupActivityCell *)self imageView];
  v300 = [v303 heightAnchor];
  v297 = [v300 constraintEqualToConstant:v5];
  v317[1] = v297;
  v294 = [(UIAirDropGroupActivityCell *)self imageSlotView];
  v291 = [v294 widthAnchor];
  v288 = [v291 constraintEqualToConstant:v5];
  v317[2] = v288;
  v285 = [(UIAirDropGroupActivityCell *)self imageSlotView];
  v282 = [v285 heightAnchor];
  v279 = [v282 constraintEqualToConstant:v5];
  v317[3] = v279;
  v276 = [(UIAirDropGroupActivityCell *)self vibrantTitleView];
  v270 = [v276 centerXAnchor];
  v273 = [(UIAirDropGroupActivityCell *)self textLabel];
  v267 = [v273 centerXAnchor];
  v264 = [v270 constraintEqualToAnchor:v267];
  v317[4] = v264;
  v261 = [(UIAirDropGroupActivityCell *)self vibrantTitleView];
  v255 = [v261 centerYAnchor];
  v258 = [(UIAirDropGroupActivityCell *)self textLabel];
  v252 = [v258 centerYAnchor];
  v249 = [v255 constraintEqualToAnchor:v252];
  v317[5] = v249;
  v246 = [(UIAirDropGroupActivityCell *)self vibrantTitleView];
  v240 = [v246 heightAnchor];
  v243 = [(UIAirDropGroupActivityCell *)self textLabel];
  v237 = [v243 heightAnchor];
  v234 = [v240 constraintEqualToAnchor:v237];
  v317[6] = v234;
  v231 = [(UIAirDropGroupActivityCell *)self vibrantTitleView];
  v225 = [v231 widthAnchor];
  v228 = [(UIAirDropGroupActivityCell *)self textLabel];
  v222 = [v228 widthAnchor];
  v219 = [v225 constraintEqualToAnchor:v222];
  v317[7] = v219;
  v213 = [v3 widthAnchor];
  v216 = [(UIAirDropGroupActivityCell *)self imageSlotView];
  v210 = [v216 widthAnchor];
  v207 = [v213 constraintEqualToAnchor:v210 constant:10.0];
  v317[8] = v207;
  v201 = [v3 heightAnchor];
  v204 = [(UIAirDropGroupActivityCell *)self imageSlotView];
  v198 = [v204 heightAnchor];
  v195 = [v201 constraintEqualToAnchor:v198 constant:10.0];
  v317[9] = v195;
  v189 = [v3 centerXAnchor];
  v192 = [(UIAirDropGroupActivityCell *)self imageSlotView];
  v186 = [v192 centerXAnchor];
  v183 = [v189 constraintEqualToAnchor:v186];
  v317[10] = v183;
  v313 = v3;
  v177 = [v3 centerYAnchor];
  v180 = [(UIAirDropGroupActivityCell *)self imageSlotView];
  v174 = [v180 centerYAnchor];
  v171 = [v177 constraintEqualToAnchor:v174];
  v317[11] = v171;
  v168 = [(UIAirDropGroupActivityCell *)self textSlotView];
  v162 = [v168 centerXAnchor];
  v165 = [(UIAirDropGroupActivityCell *)self textLabel];
  v159 = [v165 centerXAnchor];
  v156 = [v162 constraintEqualToAnchor:v159];
  v317[12] = v156;
  v153 = [(UIAirDropGroupActivityCell *)self textSlotView];
  v149 = [v153 centerYAnchor];
  v151 = [(UIAirDropGroupActivityCell *)self textLabel];
  v147 = [v151 centerYAnchor];
  v145 = [v149 constraintEqualToAnchor:v147];
  v317[13] = v145;
  v143 = [(UIAirDropGroupActivityCell *)self textSlotView];
  v139 = [v143 heightAnchor];
  v141 = [(UIAirDropGroupActivityCell *)self textLabel];
  v137 = [v141 heightAnchor];
  v135 = [v139 constraintEqualToAnchor:v137];
  v317[14] = v135;
  v133 = [(UIAirDropGroupActivityCell *)self textSlotView];
  v129 = [v133 widthAnchor];
  v131 = [(UIAirDropGroupActivityCell *)self textLabel];
  v127 = [v131 widthAnchor];
  v125 = [v129 constraintEqualToAnchor:v127];
  v317[15] = v125;
  v123 = [(UIAirDropGroupActivityCell *)self titleSlotView];
  v119 = [v123 centerXAnchor];
  v121 = [(UIAirDropGroupActivityCell *)self titleLabel];
  v118 = [v121 centerXAnchor];
  v117 = [v119 constraintEqualToAnchor:v118];
  v317[16] = v117;
  v116 = [(UIAirDropGroupActivityCell *)self titleSlotView];
  v114 = [v116 centerYAnchor];
  v115 = [(UIAirDropGroupActivityCell *)self titleLabel];
  v113 = [v115 centerYAnchor];
  v112 = [v114 constraintEqualToAnchor:v113];
  v317[17] = v112;
  v111 = [(UIAirDropGroupActivityCell *)self titleSlotView];
  v109 = [v111 heightAnchor];
  v110 = [(UIAirDropGroupActivityCell *)self titleLabel];
  v108 = [v110 heightAnchor];
  v107 = [v109 constraintEqualToAnchor:v108];
  v317[18] = v107;
  v106 = [(UIAirDropGroupActivityCell *)self titleSlotView];
  v104 = [v106 widthAnchor];
  v105 = [(UIAirDropGroupActivityCell *)self titleLabel];
  v103 = [v105 widthAnchor];
  v102 = [v104 constraintEqualToAnchor:v103];
  v317[19] = v102;
  v101 = [(UIAirDropGroupActivityCell *)self subtitleSlotView];
  v99 = [v101 centerXAnchor];
  v100 = [(UIAirDropGroupActivityCell *)self subtitleLabel];
  v98 = [v100 centerXAnchor];
  v97 = [v99 constraintEqualToAnchor:v98];
  v317[20] = v97;
  v96 = [(UIAirDropGroupActivityCell *)self subtitleSlotView];
  v94 = [v96 centerYAnchor];
  v95 = [(UIAirDropGroupActivityCell *)self subtitleLabel];
  v93 = [v95 centerYAnchor];
  v92 = [v94 constraintEqualToAnchor:v93];
  v317[21] = v92;
  v91 = [(UIAirDropGroupActivityCell *)self subtitleSlotView];
  v89 = [v91 heightAnchor];
  v90 = [(UIAirDropGroupActivityCell *)self subtitleLabel];
  v88 = [v90 heightAnchor];
  v87 = [v89 constraintEqualToAnchor:v88];
  v317[22] = v87;
  v86 = [(UIAirDropGroupActivityCell *)self subtitleSlotView];
  v84 = [v86 widthAnchor];
  v85 = [(UIAirDropGroupActivityCell *)self subtitleLabel];
  v83 = [v85 widthAnchor];
  v82 = [v84 constraintEqualToAnchor:v83];
  v317[23] = v82;
  v81 = [(UIAirDropGroupActivityCell *)self transportSlotView];
  v79 = [v81 trailingAnchor];
  v80 = [(UIAirDropGroupActivityCell *)self imageSlotView];
  v78 = [v80 trailingAnchor];
  v77 = [v79 constraintEqualToAnchor:v78 constant:v6];
  v317[24] = v77;
  v76 = [(UIAirDropGroupActivityCell *)self transportSlotView];
  v74 = [v76 bottomAnchor];
  v75 = [(UIAirDropGroupActivityCell *)self imageSlotView];
  v73 = [v75 bottomAnchor];
  v72 = [v74 constraintEqualToAnchor:v73 constant:v6];
  v317[25] = v72;
  v71 = [(UIAirDropGroupActivityCell *)self transportSlotView];
  v70 = [v71 widthAnchor];
  [(UIAirDropGroupActivityCell *)self transportIconWidth];
  v69 = [v70 constraintEqualToConstant:?];
  v317[26] = v69;
  v68 = [(UIAirDropGroupActivityCell *)self transportSlotView];
  v67 = [v68 heightAnchor];
  [(UIAirDropGroupActivityCell *)self transportIconWidth];
  v66 = [v67 constraintEqualToConstant:?];
  v317[27] = v66;
  v65 = [(UIAirDropGroupActivityCell *)self transportImageView];
  v63 = [v65 trailingAnchor];
  v64 = [(UIAirDropGroupActivityCell *)self imageSlotView];
  v62 = [v64 trailingAnchor];
  v61 = [v63 constraintEqualToAnchor:v62 constant:v6];
  v317[28] = v61;
  v60 = [(UIAirDropGroupActivityCell *)self transportImageView];
  v58 = [v60 bottomAnchor];
  v59 = [(UIAirDropGroupActivityCell *)self imageSlotView];
  v57 = [v59 bottomAnchor];
  v56 = [v58 constraintEqualToAnchor:v57 constant:v6];
  v317[29] = v56;
  v55 = [(UIAirDropGroupActivityCell *)self transportImageView];
  v54 = [v55 widthAnchor];
  [(UIAirDropGroupActivityCell *)self transportIconWidth];
  v53 = [v54 constraintEqualToConstant:?];
  v317[30] = v53;
  v52 = [(UIAirDropGroupActivityCell *)self transportImageView];
  v51 = [v52 heightAnchor];
  [(UIAirDropGroupActivityCell *)self transportIconWidth];
  v50 = [v51 constraintEqualToConstant:?];
  v317[31] = v50;
  v49 = [(UIAirDropGroupActivityCell *)self placeholderTitleView];
  v47 = [v49 centerXAnchor];
  v48 = [(UIAirDropGroupActivityCell *)self titleLabel];
  v46 = [v48 centerXAnchor];
  v45 = [v47 constraintEqualToAnchor:v46];
  v317[32] = v45;
  v44 = [(UIAirDropGroupActivityCell *)self placeholderTitleView];
  v42 = [v44 centerYAnchor];
  v43 = [(UIAirDropGroupActivityCell *)self titleLabel];
  v41 = [v43 centerYAnchor];
  v8 = [v42 constraintEqualToAnchor:v41];
  v317[33] = v8;
  v9 = [(UIAirDropGroupActivityCell *)self placeholderTitleView];
  v10 = [v9 widthAnchor];
  v11 = [v10 constraintEqualToConstant:58.0];
  v317[34] = v11;
  v12 = [(UIAirDropGroupActivityCell *)self placeholderTitleView];
  v13 = [v12 heightAnchor];
  v14 = [v13 constraintEqualToConstant:9.0];
  v317[35] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v317 count:36];
  v16 = [v7 arrayWithArray:v15];
  [(UIAirDropGroupActivityCell *)self setAllConstraints:v16];

  v17 = [(UIAirDropGroupActivityCell *)self traitCollection];
  v18 = [v17 preferredContentSizeCategory];
  LODWORD(v312) = UIContentSizeCategoryIsAccessibilityCategory(v18);

  v310 = [(UIAirDropGroupActivityCell *)self imageView];
  v307 = [v310 centerYAnchor];
  v304 = [v314 centerYAnchor];
  v301 = [v307 constraintEqualToAnchor:v304];
  v316[0] = v301;
  v298 = [(UIAirDropGroupActivityCell *)self imageView];
  v295 = [v298 leadingAnchor];
  v292 = [v314 leadingAnchor];
  v289 = [v295 constraintEqualToAnchor:v292 constant:0.0];
  v316[1] = v289;
  v286 = [(UIAirDropGroupActivityCell *)self imageSlotView];
  v283 = [v286 centerYAnchor];
  v280 = [v314 centerYAnchor];
  v277 = [v283 constraintEqualToAnchor:v280];
  v316[2] = v277;
  v274 = [(UIAirDropGroupActivityCell *)self imageSlotView];
  v271 = [v274 leadingAnchor];
  v268 = [v314 leadingAnchor];
  v265 = [v271 constraintEqualToAnchor:v268 constant:0.0];
  v316[3] = v265;
  v262 = [(UIAirDropGroupActivityCell *)self textLabel];
  v259 = [v262 topAnchor];
  v256 = [v314 topAnchor];
  v253 = [v259 constraintGreaterThanOrEqualToAnchor:v256 constant:8.0];
  v316[4] = v253;
  v247 = [v314 bottomAnchor];
  v250 = [(UIAirDropGroupActivityCell *)self textLabel];
  v244 = [v250 bottomAnchor];
  v241 = [v247 constraintGreaterThanOrEqualToAnchor:v244 constant:8.0];
  v316[5] = v241;
  v238 = [(UIAirDropGroupActivityCell *)self textLabel];
  v235 = [v238 trailingAnchor];
  v232 = [v314 trailingAnchor];
  v229 = [v235 constraintEqualToAnchor:v232];
  v316[6] = v229;
  v226 = [(UIAirDropGroupActivityCell *)self textLabel];
  v220 = [v226 leadingAnchor];
  v223 = [(UIAirDropGroupActivityCell *)self imageSlotView];
  v217 = [v223 trailingAnchor];
  v214 = [v220 constraintEqualToAnchor:v217 constant:13.0];
  v316[7] = v214;
  v211 = [(UIAirDropGroupActivityCell *)self textLabel];
  v205 = [v211 centerYAnchor];
  v208 = [(UIAirDropGroupActivityCell *)self imageView];
  v202 = [v208 centerYAnchor];
  v199 = [v205 constraintEqualToAnchor:v202];
  v316[8] = v199;
  v196 = [(UIAirDropGroupActivityCell *)self titleLabel];
  v190 = [v196 topAnchor];
  v193 = [(UIAirDropGroupActivityCell *)self textLabel];
  v187 = [v193 topAnchor];
  v184 = [v190 constraintEqualToAnchor:v187];
  v316[9] = v184;
  v181 = [(UIAirDropGroupActivityCell *)self titleLabel];
  v175 = [v181 bottomAnchor];
  v178 = [(UIAirDropGroupActivityCell *)self textLabel];
  v172 = [v178 centerYAnchor];
  v169 = [v175 constraintEqualToAnchor:v172];
  v316[10] = v169;
  v166 = [(UIAirDropGroupActivityCell *)self titleLabel];
  v160 = [v166 leadingAnchor];
  v163 = [(UIAirDropGroupActivityCell *)self textLabel];
  v157 = [v163 leadingAnchor];
  v154 = [v160 constraintEqualToAnchor:v157];
  v316[11] = v154;
  v152 = [(UIAirDropGroupActivityCell *)self titleLabel];
  v148 = [v152 trailingAnchor];
  v150 = [(UIAirDropGroupActivityCell *)self textLabel];
  v146 = [v150 trailingAnchor];
  v144 = [v148 constraintEqualToAnchor:v146];
  v316[12] = v144;
  v142 = [(UIAirDropGroupActivityCell *)self subtitleLabel];
  v138 = [v142 topAnchor];
  v140 = [(UIAirDropGroupActivityCell *)self textLabel];
  v136 = [v140 centerYAnchor];
  v134 = [v138 constraintEqualToAnchor:v136];
  v316[13] = v134;
  v132 = [(UIAirDropGroupActivityCell *)self subtitleLabel];
  v128 = [v132 bottomAnchor];
  v130 = [(UIAirDropGroupActivityCell *)self textLabel];
  v126 = [v130 bottomAnchor];
  v124 = [v128 constraintEqualToAnchor:v126];
  v316[14] = v124;
  v122 = [(UIAirDropGroupActivityCell *)self subtitleLabel];
  v120 = [v122 leadingAnchor];
  v19 = [(UIAirDropGroupActivityCell *)self textLabel];
  v20 = [v19 leadingAnchor];
  v21 = [v120 constraintEqualToAnchor:v20];
  v316[15] = v21;
  v22 = [(UIAirDropGroupActivityCell *)self subtitleLabel];
  v23 = [v22 trailingAnchor];
  v24 = [(UIAirDropGroupActivityCell *)self textLabel];
  v25 = [v24 trailingAnchor];
  v26 = [v23 constraintEqualToAnchor:v25];
  v316[16] = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v316 count:17];
  [(UIAirDropGroupActivityCell *)self setLargeTextConstraints:v27];

  v311 = [(UIAirDropGroupActivityCell *)self imageView];
  v308 = [v311 topAnchor];
  v305 = [v314 topAnchor];
  v302 = [v308 constraintEqualToAnchor:v305 constant:*layout];
  v315[0] = v302;
  v299 = [(UIAirDropGroupActivityCell *)self imageView];
  v296 = [v299 centerXAnchor];
  v293 = [v314 centerXAnchor];
  v290 = [v296 constraintEqualToAnchor:v293];
  v315[1] = v290;
  v287 = [(UIAirDropGroupActivityCell *)self imageSlotView];
  v281 = [v287 topAnchor];
  v284 = [(UIAirDropGroupActivityCell *)self imageView];
  v278 = [v284 topAnchor];
  v275 = [v281 constraintEqualToAnchor:v278];
  v315[2] = v275;
  v272 = [(UIAirDropGroupActivityCell *)self imageSlotView];
  v266 = [v272 centerXAnchor];
  v269 = [(UIAirDropGroupActivityCell *)self imageView];
  v263 = [v269 centerXAnchor];
  v260 = [v266 constraintEqualToAnchor:v263];
  v315[3] = v260;
  v257 = [(UIAirDropGroupActivityCell *)self textLabel];
  v251 = [v257 topAnchor];
  v254 = [(UIAirDropGroupActivityCell *)self imageSlotView];
  v248 = [v254 bottomAnchor];
  v245 = [v251 constraintEqualToAnchor:v248 constant:*(layout + 8)];
  v315[4] = v245;
  v242 = [(UIAirDropGroupActivityCell *)self textLabel];
  v239 = [v242 bottomAnchor];
  v236 = [v314 bottomAnchor];
  v233 = [v239 constraintLessThanOrEqualToAnchor:v236 constant:*(layout + 16)];
  v315[5] = v233;
  v230 = [(UIAirDropGroupActivityCell *)self textLabel];
  v227 = [v230 widthAnchor];
  v224 = [v314 widthAnchor];
  v221 = [v227 constraintEqualToAnchor:v224 constant:*(layout + 24)];
  v315[6] = v221;
  v218 = [(UIAirDropGroupActivityCell *)self textLabel];
  v215 = [v218 centerXAnchor];
  v212 = [v314 centerXAnchor];
  v209 = [v215 constraintEqualToAnchor:v212];
  v315[7] = v209;
  v206 = [(UIAirDropGroupActivityCell *)self titleLabel];
  v200 = [v206 topAnchor];
  v203 = [(UIAirDropGroupActivityCell *)self imageSlotView];
  v197 = [v203 bottomAnchor];
  v194 = [v200 constraintEqualToAnchor:v197 constant:*(layout + 8)];
  v315[8] = v194;
  v191 = [(UIAirDropGroupActivityCell *)self titleLabel];
  v188 = [v191 widthAnchor];
  v185 = [v314 widthAnchor];
  v182 = [v188 constraintEqualToAnchor:v185 constant:*(layout + 24)];
  v315[9] = v182;
  v179 = [(UIAirDropGroupActivityCell *)self titleLabel];
  v176 = [v179 centerXAnchor];
  v173 = [v314 centerXAnchor];
  v170 = [v176 constraintEqualToAnchor:v173];
  v315[10] = v170;
  v167 = [(UIAirDropGroupActivityCell *)self subtitleLabel];
  v161 = [v167 topAnchor];
  v164 = [(UIAirDropGroupActivityCell *)self titleLabel];
  v158 = [v164 bottomAnchor];
  v155 = [v161 constraintEqualToAnchor:v158];
  v315[11] = v155;
  v28 = [(UIAirDropGroupActivityCell *)self subtitleLabel];
  v29 = [v28 widthAnchor];
  v30 = [v314 widthAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:*(layout + 24)];
  v315[12] = v31;
  v32 = [(UIAirDropGroupActivityCell *)self subtitleLabel];
  v33 = [v32 centerXAnchor];
  v34 = [v314 centerXAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];
  v315[13] = v35;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v315 count:14];
  [(UIAirDropGroupActivityCell *)self setRegularConstraints:v36];

  v37 = [(UIAirDropGroupActivityCell *)self allConstraints];
  if (v312)
  {
    [(UIAirDropGroupActivityCell *)self largeTextConstraints];
  }

  else
  {
    [(UIAirDropGroupActivityCell *)self regularConstraints];
  }
  v38 = ;
  [v37 addObjectsFromArray:v38];

  v39 = MEMORY[0x1E696ACD8];
  v40 = [(UIAirDropGroupActivityCell *)self allConstraints];
  [v39 activateConstraints:v40];
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = UIAirDropGroupActivityCell;
  v4 = a3;
  [(UIAirDropGroupActivityCell *)&v8 traitCollectionDidChange:v4];
  v5 = [(UIAirDropGroupActivityCell *)self traitCollection:v8.receiver];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  if (v6 != v7)
  {
    [(UIAirDropGroupActivityCell *)self _updateConstraints];
  }
}

- (void)setProgress:(double)a3 animated:(BOOL)a4
{
  self->_progress = a3;
  objc_initWeak(&location, self);
  v6 = *MEMORY[0x1E69DDA98];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__UIAirDropGroupActivityCell_setProgress_animated___block_invoke;
  v7[3] = &unk_1E71F9580;
  objc_copyWeak(v8, &location);
  v8[1] = *&a3;
  v9 = a4;
  [v6 _performBlockAfterCATransactionCommits:v7];
  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
}

void __51__UIAirDropGroupActivityCell_setProgress_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateProgress:*(a1 + 48) animated:*(a1 + 40)];
}

- (void)_updateProgress:(double)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = [(UIAirDropGroupActivityCell *)self stateBeingRestored];
  objc_initWeak(&location, self);
  v8 = [(UIAirDropGroupActivityCell *)self circleProgressView];
  v9 = v4 & ~v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__UIAirDropGroupActivityCell__updateProgress_animated___block_invoke;
  v10[3] = &unk_1E71F9580;
  objc_copyWeak(v11, &location);
  v11[1] = *&a3;
  v12 = v9;
  [v8 setProgress:v9 animated:v10 completion:a3];

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __55__UIAirDropGroupActivityCell__updateProgress_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didCompleteAirDropProgress:*(a1 + 48) animated:*(a1 + 40)];
}

- (void)_didCompleteAirDropProgress:(double)a3 animated:(BOOL)a4
{
  if (a3 >= 1.0 || a3 == 0.0)
  {
    if (a4)
    {
      objc_initWeak(&location, self);
      v9 = MEMORY[0x1E69DD250];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __67__UIAirDropGroupActivityCell__didCompleteAirDropProgress_animated___block_invoke;
      v11[3] = &unk_1E71F95A8;
      objc_copyWeak(&v12, &location);
      [v9 animateWithDuration:v11 animations:0.5];
      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
      return;
    }

    v7 = [(UIAirDropGroupActivityCell *)self circleProgressView];
    v10 = v7;
    goto LABEL_8;
  }

  [(UIAirDropGroupActivityCell *)self progress];
  v6 = v5;
  v7 = [(UIAirDropGroupActivityCell *)self circleProgressView];
  v10 = v7;
  if (v6 <= 0.0)
  {
LABEL_8:
    v8 = 0.0;
    goto LABEL_9;
  }

  v8 = 1.0;
LABEL_9:
  [v7 setAlpha:v8];
}

void __67__UIAirDropGroupActivityCell__didCompleteAirDropProgress_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained circleProgressView];
  [v1 setAlpha:0.0];
}

- (void)startPulsing
{
  if (![(UIAirDropGroupActivityCell *)self isPulsing])
  {
    [(UIAirDropGroupActivityCell *)self setIsPulsing:1];
    v3 = [(UIAirDropGroupActivityCell *)self subtitle];
    if ([v3 length])
    {
      [(UIAirDropGroupActivityCell *)self subtitleLabel];
    }

    else
    {
      [(UIAirDropGroupActivityCell *)self subtitleSlotView];
    }
    v4 = ;

    [v4 setAlpha:1.0];
    v5 = MEMORY[0x1E69DD250];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __42__UIAirDropGroupActivityCell_startPulsing__block_invoke;
    v7[3] = &unk_1E71F9510;
    v8 = v4;
    v6 = v4;
    [v5 animateWithDuration:24 delay:v7 options:0 animations:0.75 completion:0.0];
  }
}

- (void)stopPulsing
{
  if ([(UIAirDropGroupActivityCell *)self isPulsing])
  {
    [(UIAirDropGroupActivityCell *)self setIsPulsing:0];
    v3 = [(UIAirDropGroupActivityCell *)self subtitleLabel];
    [v3 _removeAllAnimations:1];

    v4 = [(UIAirDropGroupActivityCell *)self subtitleLabel];
    [v4 alpha];
    v6 = v5;

    if (v6 > 0.0)
    {
      v7 = [(UIAirDropGroupActivityCell *)self subtitleLabel];
      [v7 setAlpha:1.0];
    }

    v8 = [(UIAirDropGroupActivityCell *)self subtitleSlotView];
    v9 = [v8 layer];
    [v9 removeAllAnimations];

    v10 = [(UIAirDropGroupActivityCell *)self subtitleSlotView];
    [v10 alpha];
    v12 = v11;

    if (v12 > 0.0)
    {
      v13 = [(UIAirDropGroupActivityCell *)self subtitleSlotView];
      [v13 setAlpha:1.0];
    }
  }
}

- (id)createTargetedPreview
{
  if ([(UIAirDropGroupActivityCell *)self imageSlotID])
  {
    [(UIAirDropGroupActivityCell *)self imageSlotView];
  }

  else
  {
    [(UIAirDropGroupActivityCell *)self imageView];
  }
  v3 = ;
  [v3 frame];
  v4 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:0.0 cornerRadius:0.0];
  v5 = objc_alloc_init(MEMORY[0x1E69DCE28]);
  [v5 setVisiblePath:v4];
  v6 = _ShareSheetSolariumEnabled();
  v7 = objc_alloc(MEMORY[0x1E69DD070]);
  if (v6)
  {
    v8 = [v7 initWithView:v3];
  }

  else
  {
    v8 = [v7 initWithView:v3 parameters:v5];
  }

  v9 = v8;

  return v9;
}

- (void)prepareForReuse
{
  v7.receiver = self;
  v7.super_class = UIAirDropGroupActivityCell;
  [(UIAirDropGroupActivityCell *)&v7 prepareForReuse];
  [(UIAirDropGroupActivityCell *)self setDisplayName:0];
  [(UIAirDropGroupActivityCell *)self setTextSlotID:0];
  [(UIAirDropGroupActivityCell *)self setSubtitle:0];
  [(UIAirDropGroupActivityCell *)self setSubtitleSlotID:0];
  [(UIAirDropGroupActivityCell *)self setImage:0];
  [(UIAirDropGroupActivityCell *)self setImageSlotID:0];
  [(UIAirDropGroupActivityCell *)self setTransportImage:0];
  [(UIAirDropGroupActivityCell *)self setTransportSlotID:0];
  [(UIAirDropGroupActivityCell *)self setSquareImage:0];
  [(UIAirDropGroupActivityCell *)self setDisabled:0];
  [(UIAirDropGroupActivityCell *)self setIsGroup:0];
  [(UIAirDropGroupActivityCell *)self _configurePlaceholderViews];
  SFUIShareSheetActivityCellSpecClass = getSFUIShareSheetActivityCellSpecClass();
  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = [SFUIShareSheetActivityCellSpecClass subtitleLabelColorForIdiom:{objc_msgSend(v4, "userInterfaceIdiom")}];
  v6 = [(UIAirDropGroupActivityCell *)self subtitleLabel];
  [v6 setTextColor:v5];

  [(UIAirDropGroupActivityCell *)self stopPulsing];
}

+ (id)_placeholderStringForSingleLine:(BOOL)a3 isAccessibilityContentSize:(BOOL)a4
{
  if (a3)
  {
    v5 = @"Apple";
  }

  else
  {
    v7 = @"Apple\nInc";
    if (a4)
    {
      v7 = @"Apple\nInc\n";
    }

    v5 = v7;
  }

  return v5;
}

+ (id)_labelFont
{
  v2 = MEMORY[0x1E69DB878];
  SFUIShareSheetActivityCellSpecClass = getSFUIShareSheetActivityCellSpecClass();
  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = [SFUIShareSheetActivityCellSpecClass titleLabelFontTextStyleForIdiom:{objc_msgSend(v4, "userInterfaceIdiom")}];
  v6 = [v2 preferredFontForTextStyle:v5];

  return v6;
}

+ (id)_createLabelForSingleLine:(BOOL)a3 isAccessibilityContentSize:(BOOL)a4
{
  v4 = a3;
  v5 = [objc_opt_class() _placeholderStringForSingleLine:a3 isAccessibilityContentSize:a4];
  v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  v7 = [objc_opt_class() _labelFont];
  [v6 setFont:v7];

  v8 = [MEMORY[0x1E69DC888] clearColor];
  [v6 setBackgroundColor:v8];

  [v6 setTextAlignment:1];
  if (v4)
  {
    v9 = 1;
  }

  else
  {
    v9 = 3;
  }

  [v6 setNumberOfLines:v9];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setText:v5];
  [v6 setAlpha:0.0];

  return v6;
}

- (void)_updateConstraints
{
  v14 = [objc_opt_class() _labelFont];
  v3 = [(UIAirDropGroupActivityCell *)self titleLabel];
  [v3 setFont:v14];

  v4 = [(UIAirDropGroupActivityCell *)self subtitleLabel];
  [v4 setFont:v14];

  v5 = [(UIAirDropGroupActivityCell *)self textLabel];
  [v5 setFont:v14];

  [(UIAirDropGroupActivityCell *)self _invalidateDisplayName];
  v6 = [(UIAirDropGroupActivityCell *)self traitCollection];
  v7 = [v6 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v7);

  v9 = MEMORY[0x1E696ACD8];
  if (IsAccessibilityCategory)
  {
    v10 = [(UIAirDropGroupActivityCell *)self regularConstraints];
    [v9 deactivateConstraints:v10];

    v11 = MEMORY[0x1E696ACD8];
    [(UIAirDropGroupActivityCell *)self largeTextConstraints];
  }

  else
  {
    v12 = [(UIAirDropGroupActivityCell *)self largeTextConstraints];
    [v9 deactivateConstraints:v12];

    v11 = MEMORY[0x1E696ACD8];
    [(UIAirDropGroupActivityCell *)self regularConstraints];
  }
  v13 = ;
  [v11 activateConstraints:v13];

  [(UIAirDropGroupActivityCell *)self setNeedsLayout];
}

- (void)_updateFormattedDisplayName
{
  v3 = [(UIAirDropGroupActivityCell *)self displayName];
  v11 = [(UIAirDropGroupActivityCell *)self textLabel];
  v4 = [(UIAirDropGroupActivityCell *)self traitCollection];
  v5 = [v4 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v5);

  v7 = [(UIAirDropGroupActivityCell *)self subtitle];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = [(UIAirDropGroupActivityCell *)self isGroup];
  }

  v9 = [objc_opt_class() _formattedDisplayName:v3 ignoreNameWrapping:v8 isAccessibilityContentSize:IsAccessibilityCategory nameLabel:v11];

  formattedDisplayName = self->_formattedDisplayName;
  self->_formattedDisplayName = v9;
}

+ (id)_formattedDisplayName:(id)a3 ignoreNameWrapping:(BOOL)a4 isAccessibilityContentSize:(BOOL)a5 nameLabel:(id)a6
{
  v7 = a5;
  v32[3] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a6;
  v11 = v9;
  if (!v10)
  {
    v10 = [objc_opt_class() _createLabelForSingleLine:0 isAccessibilityContentSize:v7];
  }

  v12 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v13 = [v11 componentsSeparatedByCharactersInSet:v12];

  v14 = v11;
  if (!v7)
  {
    if ([v13 count] != 2 || a4)
    {
      v14 = SFNonBreakingStringFromDeviceName();
    }

    else
    {
      v15 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
      [v15 setLineBreakMode:0];
      [v15 setHyphenationFactor:0.0];
      [v15 setLineBreakStrategy:0xFFFFLL];
      [v15 setAlignment:1];
      v31[0] = *MEMORY[0x1E69DB650];
      v16 = [v10 textColor];
      v32[0] = v16;
      v31[1] = *MEMORY[0x1E69DB648];
      v17 = [v10 font];
      v32[1] = v17;
      v31[2] = *MEMORY[0x1E69DB688];
      v18 = [v15 copy];
      v32[2] = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:3];

      v20 = [v13 firstObject];
      v21 = [v13 lastObject];
      v14 = v11;
      if ([v20 length])
      {
        v14 = v11;
        if ([v21 length])
        {
          v22 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v20 attributes:v19];
          [v10 frame];
          [v22 boundingRectWithSize:35 options:0 context:{v23, v24}];
          v35 = CGRectIntegral(v34);
          height = v35.size.height;
          v26 = [v10 font];
          [v26 lineHeight];
          *&v27 = v27;
          v28 = llroundf(*&v27);

          v29 = height;
          v14 = v11;
          if (llroundf(v29) / v28 == 1)
          {
            v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n%@", v20, v21];
          }
        }
      }
    }
  }

  return v14;
}

- (void)setDisplayName:(id)a3
{
  v4 = a3;
  displayName = self->_displayName;
  v10 = v4;
  v6 = displayName;
  if (v6 == v10)
  {

    goto LABEL_8;
  }

  if ((v10 != 0) == (v6 == 0))
  {

    goto LABEL_7;
  }

  v7 = [(NSString *)v10 isEqual:v6];

  if ((v7 & 1) == 0)
  {
LABEL_7:
    v8 = [(NSString *)v10 copy];
    v9 = self->_displayName;
    self->_displayName = v8;

    [(UIAirDropGroupActivityCell *)self _invalidateDisplayName];
  }

LABEL_8:
}

- (void)setTextSlotID:(unsigned int)a3
{
  if (self->_textSlotID != a3)
  {
    self->_textSlotID = a3;
    [(UIAirDropGroupActivityCell *)self _invalidateDisplayName];
  }
}

- (void)setSubtitle:(id)a3
{
  v4 = a3;
  subtitle = self->_subtitle;
  v10 = v4;
  v6 = subtitle;
  if (v6 == v10)
  {

    goto LABEL_8;
  }

  if ((v10 != 0) == (v6 == 0))
  {

    goto LABEL_7;
  }

  v7 = [(NSString *)v10 isEqual:v6];

  if ((v7 & 1) == 0)
  {
LABEL_7:
    v8 = [(NSString *)v10 copy];
    v9 = self->_subtitle;
    self->_subtitle = v8;

    [(UIAirDropGroupActivityCell *)self _invalidateSubtitle];
  }

LABEL_8:
}

- (void)setSubtitleSlotID:(unsigned int)a3
{
  if (self->_subtitleSlotID != a3)
  {
    self->_subtitleSlotID = a3;
    [(UIAirDropGroupActivityCell *)self _invalidateSubtitle];
  }
}

- (void)setImage:(id)a3
{
  v5 = a3;
  if (self->_image != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_image, a3);
    [(UIAirDropGroupActivityCell *)self _updateImageView];
    v5 = v6;
  }
}

- (void)setImageSlotID:(unsigned int)a3
{
  if (self->_imageSlotID != a3)
  {
    self->_imageSlotID = a3;
    [(UIAirDropGroupActivityCell *)self _updateImageView];
  }
}

- (void)setTransportImage:(id)a3
{
  v5 = a3;
  if (self->_transportImage != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_transportImage, a3);
    [(UIAirDropGroupActivityCell *)self _updateTransportView];
    v5 = v6;
  }
}

- (void)setTransportSlotID:(unsigned int)a3
{
  if (self->_transportSlotID != a3)
  {
    self->_transportSlotID = a3;
    [(UIAirDropGroupActivityCell *)self _updateTransportView];
  }
}

- (void)setSquareImage:(BOOL)a3
{
  if (self->_squareImage != a3)
  {
    v5 = a3;
    self->_squareImage = a3;
    if (a3)
    {
      v3 = [(UIAirDropGroupActivityCell *)self imageSlotView];
      [v3 bounds];
      v7 = CGRectGetWidth(v12) * 0.5;
    }

    else
    {
      v7 = 0.0;
    }

    v8 = [(UIAirDropGroupActivityCell *)self imageSlotView];
    v9 = [v8 layer];
    [v9 setCornerRadius:v7];

    if (v5)
    {
    }

    v11 = [(UIAirDropGroupActivityCell *)self imageSlotView];
    v10 = [v11 layer];
    [v10 setMasksToBounds:v5];
  }
}

- (void)setDisabled:(BOOL)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_disabled != a3)
  {
    v3 = a3;
    self->_disabled = a3;
    v5 = share_sheet_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(UIAirDropGroupActivityCell *)self identifier];
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
      _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Updating People Cell with identifier:%@ to disabled:%s", &v9, 0x16u);
    }

    [(UIAirDropGroupActivityCell *)self _updateDarkening];
  }
}

- (void)setSubtitleTextColor:(id)a3
{
  v5 = a3;
  v9 = v5;
  if (!v5)
  {
    SFUIShareSheetActivityCellSpecClass = getSFUIShareSheetActivityCellSpecClass();
    v3 = [MEMORY[0x1E69DC938] currentDevice];
    v5 = [SFUIShareSheetActivityCellSpecClass subtitleLabelColorForIdiom:{objc_msgSend(v3, "userInterfaceIdiom")}];
  }

  v7 = [(UIAirDropGroupActivityCell *)self subtitleLabel];
  [v7 setTextColor:v5];

  v8 = v9;
  if (!v9)
  {

    v8 = 0;
  }
}

- (void)setIsGroup:(BOOL)a3
{
  if (self->_isGroup != a3)
  {
    self->_isGroup = a3;
    [(UIAirDropGroupActivityCell *)self _invalidateDisplayName];
  }
}

- (void)_invalidateDisplayName
{
  [(UIAirDropGroupActivityCell *)self _updateFormattedDisplayName];
  v3 = [(UIAirDropGroupActivityCell *)self subtitle];
  if ([v3 length])
  {

LABEL_4:

    [(UIAirDropGroupActivityCell *)self _updateTitleView];
    return;
  }

  v4 = [(UIAirDropGroupActivityCell *)self subtitleSlotID];

  if (v4)
  {
    goto LABEL_4;
  }

  [(UIAirDropGroupActivityCell *)self _updateTextView];
}

- (void)_invalidateSubtitle
{
  [(UIAirDropGroupActivityCell *)self _invalidateDisplayName];

  [(UIAirDropGroupActivityCell *)self _updateSubtitleView];
}

- (void)_configurePlaceholderViews
{
  v3 = [(UIAirDropGroupActivityCell *)self placeholderTitleView];
  [v3 setAlpha:1.0];

  [(UIAirDropGroupActivityCell *)self _configureImageViewForPlaceholder:1];
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
    v3 = [(UIAirDropGroupActivityCell *)self imageView];
    [v3 alpha];
    v6 = v7;
  }

  v8 = [(UIAirDropGroupActivityCell *)self imageView];
  [v8 setAlpha:v6];

  if (v4)
  {
    v9 = [(UIAirDropGroupActivityCell *)self imageView];
    v10 = [v9 layer];
    [v10 setShadowOpacity:0.0];

    v11 = [(UIAirDropGroupActivityCell *)self traitCollection];
    SHSheetUISpecPlaceholderColor([v11 userInterfaceStyle]);
  }

  else
  {

    v11 = [(UIAirDropGroupActivityCell *)self imageView];
    v12 = [v11 layer];
    LODWORD(v13) = 1032805417;
    [v12 setShadowOpacity:v13];

    [MEMORY[0x1E69DC888] clearColor];
  }
  v15 = ;
  v14 = [(UIAirDropGroupActivityCell *)self imageView];
  [v14 setBackgroundColor:v15];

  if (v4)
  {

    v15 = v11;
  }
}

- (void)_updateTextView
{
  v3 = [(UIAirDropGroupActivityCell *)self placeholderTitleView];
  [v3 setAlpha:0.0];

  v40 = [(UIAirDropGroupActivityCell *)self formattedDisplayName];
  v4 = [v40 length];
  v5 = [(UIAirDropGroupActivityCell *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v6);

  v8 = v40;
  if (!v4)
  {
    v8 = [objc_opt_class() _placeholderStringForSingleLine:0 isAccessibilityContentSize:IsAccessibilityCategory];
  }

  v9 = [(UIAirDropGroupActivityCell *)self textLabel];
  [v9 setText:v8];

  if (v4)
  {
    v10 = 1.0;
  }

  else
  {

    v10 = 0.0;
  }

  v11 = [(UIAirDropGroupActivityCell *)self textLabel];
  [v11 setAlpha:v10];

  v12 = [(UIAirDropGroupActivityCell *)self textSlotID];
  if (v12)
  {
    v13 = [(UIAirDropGroupActivityCell *)self traitCollection];
    v14 = [v13 layoutDirection];

    v15 = [(UIAirDropGroupActivityCell *)self traitCollection];
    v16 = [v15 preferredContentSizeCategory];
    v17 = UIContentSizeCategoryIsAccessibilityCategory(v16);

    v18 = MEMORY[0x1E6979DF8];
    if (v14 != 1)
    {
      v18 = MEMORY[0x1E6979DD8];
    }

    v19 = MEMORY[0x1E6979320];
    v20 = *v18;
    v21 = [v19 objectForSlot:{-[UIAirDropGroupActivityCell textSlotID](self, "textSlotID")}];
    v22 = [(UIAirDropGroupActivityCell *)self textSlotView];
    [v22 setAlpha:1.0];

    v23 = _ShareSheetDeviceScreenScale();
    v24 = [(UIAirDropGroupActivityCell *)self textSlotView];
    v25 = [v24 layer];
    [v25 setContentsScale:v23];

    v26 = _ShareSheetDeviceScreenScale();
    v27 = [(UIAirDropGroupActivityCell *)self textSlotView];
    v28 = [v27 layer];
    [v28 setRasterizationScale:v26];

    if (v17)
    {
      v29 = v20;
    }

    else
    {
      v29 = *MEMORY[0x1E6979DB8];
    }

    v30 = [(UIAirDropGroupActivityCell *)self textSlotView];
    v31 = [v30 layer];
    [v31 setContentsGravity:v29];

    v32 = [(UIAirDropGroupActivityCell *)self textSlotView];
    v33 = [v32 layer];
    [v33 setContents:v21];
  }

  else
  {
    v21 = [(UIAirDropGroupActivityCell *)self textSlotView];
    v32 = [v21 layer];
    [v32 setContents:0];
  }

  if (v12)
  {
    v34 = 1.0;
  }

  else
  {
    v34 = 0.0;
  }

  v35 = [(UIAirDropGroupActivityCell *)self textSlotView];
  [v35 setAlpha:v34];

  if (v4 || v12)
  {
    v36 = [(UIAirDropGroupActivityCell *)self titleSlotView];
    [v36 setAlpha:0.0];

    v37 = [(UIAirDropGroupActivityCell *)self titleLabel];
    [v37 setAlpha:0.0];

    v38 = [objc_opt_class() _placeholderStringForSingleLine:1 isAccessibilityContentSize:IsAccessibilityCategory];
    v39 = [(UIAirDropGroupActivityCell *)self titleLabel];
    [v39 setText:v38];
  }
}

- (void)_updateTitleView
{
  v3 = [(UIAirDropGroupActivityCell *)self placeholderTitleView];
  [v3 setAlpha:0.0];

  v43 = [(UIAirDropGroupActivityCell *)self formattedDisplayName];
  v4 = [v43 length];
  v5 = [(UIAirDropGroupActivityCell *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v6);

  v8 = v43;
  if (!v4)
  {
    v8 = [objc_opt_class() _placeholderStringForSingleLine:1 isAccessibilityContentSize:IsAccessibilityCategory];
  }

  v9 = [(UIAirDropGroupActivityCell *)self titleLabel];
  [v9 setText:v8];

  if (v4)
  {
    v10 = 1.0;
  }

  else
  {

    v10 = 0.0;
  }

  v11 = [(UIAirDropGroupActivityCell *)self titleLabel];
  [v11 setAlpha:v10];

  if ([(UIAirDropGroupActivityCell *)self isGroup])
  {
    v12 = 0.8;
  }

  else
  {
    v12 = 0.0;
  }

  v13 = [(UIAirDropGroupActivityCell *)self titleLabel];
  [v13 setMinimumScaleFactor:v12];

  v14 = [(UIAirDropGroupActivityCell *)self isGroup];
  v15 = [(UIAirDropGroupActivityCell *)self titleLabel];
  [v15 setAdjustsFontSizeToFitWidth:v14];

  v16 = [(UIAirDropGroupActivityCell *)self textSlotID];
  if (v16)
  {
    v17 = [(UIAirDropGroupActivityCell *)self traitCollection];
    v18 = [v17 layoutDirection];

    v19 = [(UIAirDropGroupActivityCell *)self traitCollection];
    v20 = [v19 preferredContentSizeCategory];
    v21 = UIContentSizeCategoryIsAccessibilityCategory(v20);

    v22 = MEMORY[0x1E6979DF8];
    if (v18 != 1)
    {
      v22 = MEMORY[0x1E6979DD8];
    }

    v23 = MEMORY[0x1E6979320];
    v24 = *v22;
    v25 = [v23 objectForSlot:{-[UIAirDropGroupActivityCell textSlotID](self, "textSlotID")}];
    v26 = _ShareSheetDeviceScreenScale();
    v27 = [(UIAirDropGroupActivityCell *)self titleSlotView];
    v28 = [v27 layer];
    [v28 setContentsScale:v26];

    v29 = _ShareSheetDeviceScreenScale();
    v30 = [(UIAirDropGroupActivityCell *)self titleSlotView];
    v31 = [v30 layer];
    [v31 setRasterizationScale:v29];

    if (v21)
    {
      v32 = v24;
    }

    else
    {
      v32 = *MEMORY[0x1E6979DB8];
    }

    v33 = [(UIAirDropGroupActivityCell *)self titleSlotView];
    v34 = [v33 layer];
    [v34 setContentsGravity:v32];

    v35 = [(UIAirDropGroupActivityCell *)self titleSlotView];
    v36 = [v35 layer];
    [v36 setContents:v25];
  }

  else
  {
    v25 = [(UIAirDropGroupActivityCell *)self titleSlotView];
    v35 = [v25 layer];
    [v35 setContents:0];
  }

  if (v16)
  {
    v37 = 1.0;
  }

  else
  {
    v37 = 0.0;
  }

  v38 = [(UIAirDropGroupActivityCell *)self titleSlotView];
  [v38 setAlpha:v37];

  if (v4 || v16)
  {
    v39 = [(UIAirDropGroupActivityCell *)self textSlotView];
    [v39 setAlpha:0.0];

    v40 = [(UIAirDropGroupActivityCell *)self textLabel];
    [v40 setAlpha:0.0];

    v41 = [objc_opt_class() _placeholderStringForSingleLine:0 isAccessibilityContentSize:IsAccessibilityCategory];
    v42 = [(UIAirDropGroupActivityCell *)self textLabel];
    [v42 setText:v41];
  }
}

- (void)_updateSubtitleView
{
  v3 = [(UIAirDropGroupActivityCell *)self placeholderTitleView];
  [v3 setAlpha:0.0];

  v35 = [(UIAirDropGroupActivityCell *)self subtitle];
  v4 = [v35 length];
  v5 = [(UIAirDropGroupActivityCell *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v6);

  v8 = v35;
  if (!v4)
  {
    v8 = [objc_opt_class() _placeholderStringForSingleLine:1 isAccessibilityContentSize:IsAccessibilityCategory];
  }

  v9 = [(UIAirDropGroupActivityCell *)self subtitleLabel];
  [v9 setText:v8];

  if (v4)
  {
    v10 = 1.0;
  }

  else
  {

    v10 = 0.0;
  }

  v11 = [(UIAirDropGroupActivityCell *)self subtitleLabel];
  [v11 setAlpha:v10];

  v12 = [(UIAirDropGroupActivityCell *)self subtitleSlotID];
  if (v12)
  {
    v13 = [(UIAirDropGroupActivityCell *)self traitCollection];
    v14 = [v13 layoutDirection];

    v15 = [(UIAirDropGroupActivityCell *)self traitCollection];
    v16 = [v15 preferredContentSizeCategory];
    v17 = UIContentSizeCategoryIsAccessibilityCategory(v16);

    v18 = MEMORY[0x1E6979DC8];
    if (v14 != 1)
    {
      v18 = MEMORY[0x1E6979DC0];
    }

    v19 = MEMORY[0x1E6979320];
    v20 = *v18;
    v21 = [v19 objectForSlot:{-[UIAirDropGroupActivityCell subtitleSlotID](self, "subtitleSlotID")}];
    v22 = _ShareSheetDeviceScreenScale();
    v23 = [(UIAirDropGroupActivityCell *)self subtitleSlotView];
    v24 = [v23 layer];
    [v24 setContentsScale:v22];

    v25 = _ShareSheetDeviceScreenScale();
    v26 = [(UIAirDropGroupActivityCell *)self subtitleSlotView];
    v27 = [v26 layer];
    [v27 setRasterizationScale:v25];

    if (v17)
    {
      v28 = v20;
    }

    else
    {
      v28 = *MEMORY[0x1E6979DB8];
    }

    v29 = [(UIAirDropGroupActivityCell *)self subtitleSlotView];
    v30 = [v29 layer];
    [v30 setContentsGravity:v28];

    v31 = [(UIAirDropGroupActivityCell *)self subtitleSlotView];
    v32 = [v31 layer];
    [v32 setContents:v21];
  }

  else
  {
    v21 = [(UIAirDropGroupActivityCell *)self subtitleSlotView];
    v31 = [v21 layer];
    [v31 setContents:0];
  }

  if (v12)
  {
    v33 = 1.0;
  }

  else
  {
    v33 = 0.0;
  }

  v34 = [(UIAirDropGroupActivityCell *)self subtitleSlotView];
  [v34 setAlpha:v33];
}

- (void)_updateImageView
{
  [(UIAirDropGroupActivityCell *)self _configureImageViewForPlaceholder:0];
  v3 = [(UIAirDropGroupActivityCell *)self image];

  v4 = [(UIAirDropGroupActivityCell *)self image];
  v5 = [(UIAirDropGroupActivityCell *)self imageView];
  [v5 setImage:v4];

  v6 = 0.0;
  if (v3)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = [(UIAirDropGroupActivityCell *)self imageView];
  [v8 setAlpha:v7];

  v9 = [(UIAirDropGroupActivityCell *)self imageSlotID];
  if (v9)
  {
    v10 = [MEMORY[0x1E6979320] objectForSlot:{-[UIAirDropGroupActivityCell imageSlotID](self, "imageSlotID")}];
    v11 = *MEMORY[0x1E6979DE0];
    v12 = [(UIAirDropGroupActivityCell *)self imageSlotView];
    v13 = [v12 layer];
    [v13 setContentsGravity:v11];

    v14 = [(UIAirDropGroupActivityCell *)self imageSlotView];
    v15 = [v14 layer];
    [v15 setContents:v10];

    v16 = [(UIAirDropGroupActivityCell *)self isSquareImage];
    if (v16)
    {
      v15 = [(UIAirDropGroupActivityCell *)self imageSlotView];
      [v15 bounds];
      v6 = CGRectGetWidth(v25) * 0.5;
    }

    v17 = [(UIAirDropGroupActivityCell *)self imageSlotView];
    v18 = [v17 layer];
    [v18 setCornerRadius:v6];

    if (v16)
    {
    }

    v19 = [(UIAirDropGroupActivityCell *)self isSquareImage];
    v20 = [(UIAirDropGroupActivityCell *)self imageSlotView];
    v21 = [v20 layer];
    [v21 setMasksToBounds:v19];
  }

  else
  {
    v10 = [(UIAirDropGroupActivityCell *)self imageSlotView];
    v20 = [v10 layer];
    [v20 setContents:0];
  }

  if (v9)
  {
    v22 = 1.0;
  }

  else
  {
    v22 = 0.0;
  }

  v23 = [(UIAirDropGroupActivityCell *)self imageSlotView];
  [v23 setAlpha:v22];
}

- (void)_updateTransportView
{
  v3 = [(UIAirDropGroupActivityCell *)self transportImage];

  v4 = [(UIAirDropGroupActivityCell *)self transportImage];
  v5 = [(UIAirDropGroupActivityCell *)self transportImageView];
  [v5 setImage:v4];

  if (v3)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.0;
  }

  v7 = [(UIAirDropGroupActivityCell *)self transportImageView];
  [v7 setAlpha:v6];

  v8 = [(UIAirDropGroupActivityCell *)self transportSlotID];
  if (v8)
  {
    v9 = [MEMORY[0x1E6979320] objectForSlot:{-[UIAirDropGroupActivityCell transportSlotID](self, "transportSlotID")}];
    v10 = *MEMORY[0x1E6979DE0];
    v11 = [(UIAirDropGroupActivityCell *)self transportSlotView];
    v12 = [v11 layer];
    [v12 setContentsGravity:v10];

    v13 = [(UIAirDropGroupActivityCell *)self transportSlotView];
    v14 = [v13 layer];
    [v14 setContents:v9];
  }

  else
  {
    v9 = [(UIAirDropGroupActivityCell *)self transportSlotView];
    v13 = [v9 layer];
    [v13 setContents:0];
  }

  if (v8)
  {
    v15 = 1.0;
  }

  else
  {
    v15 = 0.0;
  }

  v16 = [(UIAirDropGroupActivityCell *)self transportSlotView];
  [v16 setAlpha:v15];
}

- (void)_updateDarkening
{
  v3 = [(UIAirDropGroupActivityCell *)self imageSlotView];
  v4 = [v3 layer];
  v29 = [v4 contents];

  v5 = [(UIAirDropGroupActivityCell *)self titleSlotView];
  v6 = [v5 layer];
  v7 = [v6 contents];

  v8 = [(UIAirDropGroupActivityCell *)self transportSlotView];
  v9 = [v8 layer];
  v10 = [v9 contents];

  v11 = [(UIAirDropGroupActivityCell *)self imageSlotView];
  v12 = [v11 layer];
  [v12 setContents:v29];

  v13 = [(UIAirDropGroupActivityCell *)self titleSlotView];
  v14 = [v13 layer];
  [v14 setContents:v7];

  v15 = [(UIAirDropGroupActivityCell *)self transportSlotView];
  v16 = [v15 layer];
  [v16 setContents:v10];

  if (([(UIAirDropGroupActivityCell *)self isHighlighted]& 1) != 0 || [(UIAirDropGroupActivityCell *)self isDisabled])
  {
    v15 = [MEMORY[0x1E69DC888] grayColor];
    v17 = [v15 CGColor];
    v18 = 1;
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

  v19 = [(UIAirDropGroupActivityCell *)self imageSlotView];
  v20 = [v19 layer];
  [v20 setContentsMultiplyColor:v17];

  if (v18)
  {
  }

  if (([(UIAirDropGroupActivityCell *)self isHighlighted]& 1) != 0 || [(UIAirDropGroupActivityCell *)self isDisabled])
  {
    v15 = [MEMORY[0x1E69DC888] grayColor];
    v21 = [v15 CGColor];
    v22 = 1;
  }

  else
  {
    v22 = 0;
    v21 = 0;
  }

  v23 = [(UIAirDropGroupActivityCell *)self transportSlotView];
  v24 = [v23 layer];
  [v24 setContentsMultiplyColor:v21];

  if (v22)
  {
  }

  v25 = [(UIAirDropGroupActivityCell *)self isDisabled];
  v26 = [(UIAirDropGroupActivityCell *)self textLabel];
  [v26 setEnabled:!v25];

  v27 = [(UIAirDropGroupActivityCell *)self titleLabel];
  [v27 setEnabled:!v25];

  v28 = [(UIAirDropGroupActivityCell *)self subtitleLabel];
  [v28 setEnabled:!v25];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  if ([(UIAirDropGroupActivityCell *)self isHighlighted]!= a3)
  {
    v5.receiver = self;
    v5.super_class = UIAirDropGroupActivityCell;
    [(UIAirDropGroupActivityCell *)&v5 setHighlighted:v3];
    [(UIAirDropGroupActivityCell *)self _updateDarkening];
  }
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIAirDropGroupActivityCell *)self imageSlotView];
  v6 = [v5 layer];
  v7 = [v6 contents];

  v8 = [(UIAirDropGroupActivityCell *)self titleSlotView];
  v9 = [v8 layer];
  v10 = [v9 contents];

  v11 = [(UIAirDropGroupActivityCell *)self transportSlotView];
  v12 = [v11 layer];
  v13 = [v12 contents];

  v20.receiver = self;
  v20.super_class = UIAirDropGroupActivityCell;
  [(UIAirDropGroupActivityCell *)&v20 setSelected:v3];
  v14 = [(UIAirDropGroupActivityCell *)self imageSlotView];
  v15 = [v14 layer];
  [v15 setContents:v7];

  v16 = [(UIAirDropGroupActivityCell *)self titleSlotView];
  v17 = [v16 layer];
  [v17 setContents:v10];

  v18 = [(UIAirDropGroupActivityCell *)self transportSlotView];
  v19 = [v18 layer];
  [v19 setContents:v13];
}

- (void)setTransportIconHidden:(BOOL)a3 animated:(BOOL)a4 useDelay:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = !a3;
  if ([(UIAirDropGroupActivityCell *)self transportSlotID])
  {
    [(UIAirDropGroupActivityCell *)self transportSlotView];
  }

  else
  {
    [(UIAirDropGroupActivityCell *)self transportImageView];
  }
  v9 = ;
  v10 = v9;
  if (v6)
  {
    v11 = MEMORY[0x1E69DD250];
    if (v5)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __71__UIAirDropGroupActivityCell_setTransportIconHidden_animated_useDelay___block_invoke;
      v19[3] = &unk_1E71F95D0;
      v20 = v9;
      v21 = v8;
      [v11 animateWithDuration:196608 delay:v19 options:0 animations:0.200000003 completion:0.6];
      v12 = v20;
    }

    else
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __71__UIAirDropGroupActivityCell_setTransportIconHidden_animated_useDelay___block_invoke_2;
      v16[3] = &unk_1E71F95D0;
      v17 = v9;
      v18 = v8;
      [v11 animateWithDuration:v16 animations:0.200000003];
      v12 = v17;
    }
  }

  else
  {
    v13 = *(MEMORY[0x1E695EFD0] + 16);
    *&v14.a = *MEMORY[0x1E695EFD0];
    *&v14.c = v13;
    *&v14.tx = *(MEMORY[0x1E695EFD0] + 32);
    CGAffineTransformScale(&v15, &v14, v8, v8);
    v14 = v15;
    [v10 setTransform:&v14];
  }
}

uint64_t __71__UIAirDropGroupActivityCell_setTransportIconHidden_animated_useDelay___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  *&v6.a = *MEMORY[0x1E695EFD0];
  *&v6.c = v3;
  *&v6.tx = *(MEMORY[0x1E695EFD0] + 32);
  CGAffineTransformScale(&v7, &v6, v2, v2);
  v4 = *(a1 + 32);
  v6 = v7;
  return [v4 setTransform:&v6];
}

uint64_t __71__UIAirDropGroupActivityCell_setTransportIconHidden_animated_useDelay___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  *&v6.a = *MEMORY[0x1E695EFD0];
  *&v6.c = v3;
  *&v6.tx = *(MEMORY[0x1E695EFD0] + 32);
  CGAffineTransformScale(&v7, &v6, v2, v2);
  v4 = *(a1 + 32);
  v6 = v7;
  return [v4 setTransform:&v6];
}

- (SHSheetContentLayoutSpec)layoutSpec
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutSpec);

  return WeakRetained;
}

@end