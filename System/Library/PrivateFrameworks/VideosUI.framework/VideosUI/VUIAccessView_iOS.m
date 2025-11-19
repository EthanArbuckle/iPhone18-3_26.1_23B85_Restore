@interface VUIAccessView_iOS
+ (BOOL)tooManyIconsWithAppCount:(unint64_t)a3;
+ (CGSize)iconSize;
- (VUIAccessView_iOS)initWithApps:(id)a3;
- (id)_buildCarousel;
- (id)_buildLogoStack;
- (id)_imageViewForIndex:(unint64_t)a3;
- (id)carouselView:(id)a3 cellForItemAtIndex:(unint64_t)a4;
- (void)dealloc;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setBody:(id)a3;
- (void)setSecondaryBody:(id)a3;
- (void)setTitle:(id)a3;
- (void)setupView;
- (void)showNackScreen;
@end

@implementation VUIAccessView_iOS

- (VUIAccessView_iOS)initWithApps:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VUIAccessView_iOS;
  v6 = [(VUIAccessView_iOS *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_apps, a3);
    [(VUIAccessView_iOS *)v7 setupView];
  }

  return v7;
}

+ (BOOL)tooManyIconsWithAppCount:(unint64_t)a3
{
  v4 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v4 userInterfaceIdiom])
  {
    v5 = 7;
  }

  else
  {
    v5 = 5;
  }

  return v5 < a3;
}

- (void)setupView
{
  v3 = [MEMORY[0x1E69DC738] buttonWithType:1];
  allowButton = self->_allowButton;
  self->_allowButton = v3;

  [(UIButton *)self->_allowButton addObserver:self forKeyPath:@"highlighted" options:3 context:@"__VUIAccessView_iOSObservationContext"];
  v5 = [MEMORY[0x1E69DC738] buttonWithType:1];
  nackButton = self->_nackButton;
  self->_nackButton = v5;

  v7 = [MEMORY[0x1E69DC738] buttonWithType:1];
  seeAllButton = self->_seeAllButton;
  self->_seeAllButton = v7;

  [(UIButton *)self->_allowButton setVuiAccessibilityIdentifier:@"UIA.TV.Button.access.connect"];
  [(VUIAccessView_iOS *)self setVuiAccessibilityIdentifier:@"UIA.TV.View.access.connect"];
  v9 = [MEMORY[0x1E69DC888] vui_keyColor];
  [(VUIAccessView_iOS *)self setTintColor:v9];
}

- (void)dealloc
{
  [(UIButton *)self->_allowButton removeObserver:self forKeyPath:@"highlighted"];
  v3.receiver = self;
  v3.super_class = VUIAccessView_iOS;
  [(VUIAccessView_iOS *)&v3 dealloc];
}

+ (CGSize)iconSize
{
  v2 = 60.0;
  v3 = 60.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  titleLabel = self->_titleLabel;
  v6 = v4;
  if (!titleLabel)
  {
    [(VUIAccessView_iOS *)self layoutSubviews];
    v4 = v6;
    titleLabel = self->_titleLabel;
  }

  [(UILabel *)titleLabel setText:v4];
}

- (void)setBody:(id)a3
{
  v4 = a3;
  bodyLabel = self->_bodyLabel;
  v6 = v4;
  if (!bodyLabel)
  {
    [(VUIAccessView_iOS *)self layoutSubviews];
    v4 = v6;
    bodyLabel = self->_bodyLabel;
  }

  [(UILabel *)bodyLabel setText:v4];
}

- (void)setSecondaryBody:(id)a3
{
  v4 = a3;
  secondaryBodyLabel = self->_secondaryBodyLabel;
  v6 = v4;
  if (!secondaryBodyLabel)
  {
    [(VUIAccessView_iOS *)self layoutSubviews];
    v4 = v6;
    secondaryBodyLabel = self->_secondaryBodyLabel;
  }

  [(UILabel *)secondaryBodyLabel setText:v4];
  [(UILabel *)self->_secondaryBodyLabel setHidden:0];
}

- (void)showNackScreen
{
  if ([(NSArray *)self->_apps count]< 2)
  {
    v9 = [(NSArray *)self->_apps firstObject];
    v7 = [v9 objectForKeyedSubscript:@"appName"];

    v10 = +[VUILocalizationManager sharedInstance];
    v8 = [v10 localizedStringForKey:@"ACCESS_NACK_TITLE_FORMAT"];

    titleLabel = self->_titleLabel;
    v12 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v8 validFormatSpecifiers:@"%@" error:0, v7];
    [(UILabel *)titleLabel setText:v12];

    v13 = +[VUILocalizationManager sharedInstance];
    v14 = [v13 localizedStringForKey:@"ACCESS_NACK_BODY_IOS_FORMAT"];

    bodyLabel = self->_bodyLabel;
    v16 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v14 validFormatSpecifiers:@"%@" error:0, v7];
    [(UILabel *)bodyLabel setText:v16];
  }

  else
  {
    v3 = self->_titleLabel;
    v4 = +[VUILocalizationManager sharedInstance];
    v5 = [v4 localizedStringForKey:@"ACCESS_NACK_TITLE_PLURAL"];
    [(UILabel *)v3 setText:v5];

    v6 = self->_bodyLabel;
    v7 = +[VUILocalizationManager sharedInstance];
    v8 = [v7 localizedStringForKey:@"ACCESS_NACK_BODY_IOS_PLURAL"];
    [(UILabel *)v6 setText:v8];
  }

  [(UILabel *)self->_secondaryBodyLabel setHidden:1];
  [(UIStackView *)self->_bottomStack setHidden:1];
  [(UIButton *)self->_seeAllButton setHidden:1];
  nackButton = self->_nackButton;

  [(UIButton *)nackButton setHidden:0];
}

- (void)layoutSubviews
{
  v196[4] = *MEMORY[0x1E69E9840];
  v194.receiver = self;
  v194.super_class = VUIAccessView_iOS;
  [(VUIAccessView_iOS *)&v194 layoutSubviews];
  if (!self->_didLayout)
  {
    v3 = [MEMORY[0x1E69DC888] vui_primaryDynamicBackgroundColor];
    [(VUIAccessView_iOS *)self setBackgroundColor:v3];

    v4 = [MEMORY[0x1E69DC938] currentDevice];
    v5 = [v4 userInterfaceIdiom];

    v6 = 20.0;
    if ((v5 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v6 = 74.0;
    }

    [(VUIAccessView_iOS *)self setLayoutMargins:20.0, v6, 0.0, v6];
    v7 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    titlePlacementGuide = self->_titlePlacementGuide;
    self->_titlePlacementGuide = v7;

    [(VUIAccessView_iOS *)self addLayoutGuide:self->_titlePlacementGuide];
    v9 = [(UILayoutGuide *)self->_titlePlacementGuide centerXAnchor];
    v10 = [(VUIAccessView_iOS *)self centerXAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    [v11 setActive:1];

    v12 = [(UILayoutGuide *)self->_titlePlacementGuide heightAnchor];
    v13 = [(VUIAccessView_iOS *)self heightAnchor];
    v14 = [v12 constraintEqualToAnchor:v13 multiplier:0.25];
    [v14 setActive:1];

    v15 = [(UILayoutGuide *)self->_titlePlacementGuide widthAnchor];
    v16 = [(VUIAccessView_iOS *)self widthAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    [v17 setActive:1];

    v18 = [(UILayoutGuide *)self->_titlePlacementGuide topAnchor];
    v19 = [(VUIAccessView_iOS *)self topAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    [v20 setActive:1];

    v21 = objc_alloc(MEMORY[0x1E69DCC10]);
    v22 = *MEMORY[0x1E695F058];
    v23 = *(MEMORY[0x1E695F058] + 8);
    v24 = *(MEMORY[0x1E695F058] + 16);
    v25 = *(MEMORY[0x1E695F058] + 24);
    v26 = [v21 initWithFrame:{*MEMORY[0x1E695F058], v23, v24, v25}];
    titleLabel = self->_titleLabel;
    self->_titleLabel = v26;

    [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)self->_titleLabel setNumberOfLines:0];
    v28 = *MEMORY[0x1E69DDC60];
    v29 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDDB8] maximumContentSizeCategory:*MEMORY[0x1E69DDC60]];
    [(UILabel *)self->_titleLabel setFont:v29];
    [(UILabel *)self->_titleLabel setTextAlignment:1];
    v30 = self->_titleLabel;
    v31 = [MEMORY[0x1E69DC888] vui_primaryTextColor];
    [(UILabel *)v30 setTextColor:v31];

    [(UILabel *)self->_titleLabel setVuiAccessibilityIdentifier:@"UIA.TV.Label.access.connect"];
    v189 = *MEMORY[0x1E69DDCF8];
    v190 = v28;
    v32 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:? maximumContentSizeCategory:?];
    v33 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v22, v23, v24, v25}];
    bodyLabel = self->_bodyLabel;
    self->_bodyLabel = v33;

    [(UILabel *)self->_bodyLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)self->_bodyLabel setFont:v32];
    [(UILabel *)self->_bodyLabel setNumberOfLines:0];
    [(UILabel *)self->_bodyLabel setTextAlignment:1];
    [(UILabel *)self->_bodyLabel setVuiAccessibilityIdentifier:@"UIA.TV.Label.access.body"];
    v35 = self->_bodyLabel;
    v36 = [MEMORY[0x1E69DC888] vui_primaryTextColor];
    [(UILabel *)v35 setTextColor:v36];

    v37 = v32;
    v38 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v22, v23, v24, v25}];
    secondaryBodyLabel = self->_secondaryBodyLabel;
    self->_secondaryBodyLabel = v38;

    [(UILabel *)self->_secondaryBodyLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)self->_secondaryBodyLabel setFont:v37];
    [(UILabel *)self->_secondaryBodyLabel setNumberOfLines:0];
    [(UILabel *)self->_secondaryBodyLabel setTextAlignment:1];
    v40 = self->_secondaryBodyLabel;
    v41 = [MEMORY[0x1E69DC888] vui_primaryTextColor];
    [(UILabel *)v40 setTextColor:v41];

    v42 = objc_alloc(MEMORY[0x1E69DCF90]);
    v43 = self->_bodyLabel;
    v196[0] = self->_titleLabel;
    v196[1] = v43;
    seeAllButton = self->_seeAllButton;
    v196[2] = self->_secondaryBodyLabel;
    v196[3] = seeAllButton;
    v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v196 count:4];
    v46 = [v42 initWithArrangedSubviews:v45];
    scrollStack = self->_scrollStack;
    self->_scrollStack = v46;

    [(UIStackView *)self->_scrollStack setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)self->_scrollStack setAxis:1];
    [(UIStackView *)self->_scrollStack setAlignment:3];
    v48 = [[VUILabel alloc] initWithFrame:v22, v23, v24, v25];
    v192 = v29;
    [(VUILabel *)v48 setFont:v29];
    v49 = [[VUILabel alloc] initWithFrame:v22, v23, v24, v25];
    v193 = v37;
    [(VUILabel *)v49 setFont:v37];
    [(VUILabel *)v49 topMarginWithBaselineMargin:5 maximumContentSizeCategory:32.0];
    v51 = v50;
    [(VUILabel *)v48 bottomMarginWithBaselineMargin:5 maximumContentSizeCategory:0.0];
    [(UIStackView *)self->_scrollStack setCustomSpacing:self->_titleLabel afterView:v51 + v52];
    [(VUILabel *)v49 topMarginWithBaselineMargin:5 maximumContentSizeCategory:32.0];
    v54 = v53;
    v191 = v49;
    [(VUILabel *)v49 bottomMarginWithBaselineMargin:5 maximumContentSizeCategory:0.0];
    [(UIStackView *)self->_scrollStack setCustomSpacing:self->_bodyLabel afterView:v54 + v55];
    [(UIStackView *)self->_scrollStack setCustomSpacing:self->_secondaryBodyLabel afterView:19.0];
    v56 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
    bodyScroll = self->_bodyScroll;
    self->_bodyScroll = v56;

    [(UIScrollView *)self->_bodyScroll setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIScrollView *)self->_bodyScroll addSubview:self->_scrollStack];
    [(VUIAccessView_iOS *)self addSubview:self->_bodyScroll];
    v58 = [VUIAccessView_iOS tooManyIconsWithAppCount:[(NSArray *)self->_apps count]];
    if (v58)
    {
      v59 = [(VUIAccessView_iOS *)self _buildCarousel];
      carouselView = self->_carouselView;
      self->_carouselView = v59;

      [(VUIAccessView_iOS *)self addSubview:self->_carouselView];
      [(_TVCarouselView *)self->_carouselView setTranslatesAutoresizingMaskIntoConstraints:0];
      v61 = [(_TVCarouselView *)self->_carouselView centerXAnchor];
      v62 = [(VUIAccessView_iOS *)self centerXAnchor];
      v63 = [v61 constraintEqualToAnchor:v62];
      [v63 setActive:1];

      v64 = [(_TVCarouselView *)self->_carouselView widthAnchor];
      v65 = [(VUIAccessView_iOS *)self widthAnchor];
      v66 = [v64 constraintEqualToAnchor:v65];
      [v66 setActive:1];

      v67 = [(_TVCarouselView *)self->_carouselView heightAnchor];
      +[VUIAccessView_iOS iconSize];
      v69 = [v67 constraintEqualToConstant:v68];
      [v69 setActive:1];

      v70 = [(_TVCarouselView *)self->_carouselView topAnchor];
      v71 = [(VUIAccessView_iOS *)self topAnchor];
      v72 = [v70 constraintGreaterThanOrEqualToAnchor:v71 constant:8.0];
      [v72 setActive:1];

      v73 = [(_TVCarouselView *)self->_carouselView bottomAnchor];
      v74 = [(UIScrollView *)self->_bodyScroll firstBaselineAnchor];
      v75 = [v73 constraintEqualToAnchor:v74 constant:-16.0];
      [v75 setActive:1];

      v76 = self->_seeAllButton;
      v77 = +[VUILocalizationManager sharedInstance];
      v78 = [v77 localizedStringForKey:@"ACCESS_SEE_ALL_BUTTON"];
      [(UIButton *)v76 setTitle:v78 forState:0];

      v79 = [(UIButton *)self->_seeAllButton titleLabel];
      [v79 setLineBreakMode:0];

      [(UIButton *)self->_seeAllButton setTranslatesAutoresizingMaskIntoConstraints:0];
      v80 = v193;
      [(UIButton *)self->_seeAllButton _setFont:v193];
    }

    else
    {
      v81 = [(VUIAccessView_iOS *)self _buildLogoStack];
      logoStack = self->_logoStack;
      self->_logoStack = v81;

      [(VUIAccessView_iOS *)self addSubview:self->_logoStack];
      v83 = [(UIStackView *)self->_logoStack centerXAnchor];
      v84 = [(VUIAccessView_iOS *)self centerXAnchor];
      v85 = [v83 constraintEqualToAnchor:v84];
      [v85 setActive:1];

      v86 = [(UIStackView *)self->_logoStack topAnchor];
      v87 = [(VUIAccessView_iOS *)self topAnchor];
      v88 = [v86 constraintGreaterThanOrEqualToAnchor:v87 constant:8.0];
      [v88 setActive:1];

      v89 = [(UIStackView *)self->_logoStack bottomAnchor];
      v90 = [(UIScrollView *)self->_bodyScroll firstBaselineAnchor];
      v91 = [v89 constraintEqualToAnchor:v90 constant:-16.0];
      [v91 setActive:1];

      v80 = v193;
    }

    [(UIButton *)self->_seeAllButton setHidden:!v58];
    v92 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:v189 variant:1024 maximumContentSizeCategory:v190];
    allowButton = self->_allowButton;
    v94 = +[VUILocalizationManager sharedInstance];
    v95 = [v94 localizedStringForKey:@"ACCESS_ALLOW"];
    [(UIButton *)allowButton setTitle:v95 forState:0];

    v96 = self->_allowButton;
    v97 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIButton *)v96 setTitleColor:v97 forState:0];

    v98 = MEMORY[0x1E6913230]([(UIButton *)self->_allowButton _setFont:v92]);
    v99 = self->_allowButton;
    if (v98)
    {
      v100 = [(UIButton *)v99 vuiLayer];
      [v100 setCornerRadius:25.0];

      v101 = self->_allowButton;
      v102 = [(VUIAccessView_iOS *)self tintColor];
      [(UIButton *)v101 vuiEnableGlassBackgroundWithIsEnabled:1 tint:v102 type:4 flexible:0];
    }

    else
    {
      v103 = [(VUIAccessView_iOS *)self tintColor];
      [(UIButton *)v99 setBackgroundColor:v103];

      [(UIButton *)self->_allowButton _setContinuousCornerRadius:8.0];
    }

    [(UIButton *)self->_nackButton setTranslatesAutoresizingMaskIntoConstraints:0];
    nackButton = self->_nackButton;
    v105 = +[VUILocalizationManager sharedInstance];
    v106 = [v105 localizedStringForKey:@"ACCESS_NACK_BUTTON"];
    [(UIButton *)nackButton setTitle:v106 forState:0];

    v107 = self->_nackButton;
    v108 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIButton *)v107 setTitleColor:v108 forState:0];

    v109 = MEMORY[0x1E6913230]([(UIButton *)self->_nackButton _setFont:v80]);
    v110 = self->_nackButton;
    if (v109)
    {
      v111 = [(UIButton *)self->_nackButton vuiLayer];
      [v111 setCornerRadius:25.0];

      v112 = self->_nackButton;
      v113 = [(VUIAccessView_iOS *)self tintColor];
      [(UIButton *)v112 vuiEnableGlassBackgroundWithIsEnabled:1 tint:v113 type:4 flexible:0];
    }

    else
    {
      v114 = [(VUIAccessView_iOS *)self tintColor];
      [(UIButton *)v110 setBackgroundColor:v114];

      [(UIButton *)self->_nackButton _setContinuousCornerRadius:8.0];
    }

    [(VUIAccessView_iOS *)self addSubview:self->_nackButton];
    [(UIButton *)self->_nackButton setHidden:1];
    v115 = objc_alloc(MEMORY[0x1E69DCF90]);
    v195 = self->_allowButton;
    v116 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v195 count:1];
    v117 = [v115 initWithArrangedSubviews:v116];
    bottomStack = self->_bottomStack;
    self->_bottomStack = v117;

    [(UIStackView *)self->_bottomStack setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)self->_bottomStack setAxis:1];
    [(UIStackView *)self->_bottomStack setAlignment:3];
    [(UIStackView *)self->_bottomStack setDistribution:3];
    [(UIStackView *)self->_bottomStack setSpacing:0.0];
    [(VUIAccessView_iOS *)self addSubview:self->_bottomStack];
    v119 = [(UIScrollView *)self->_bodyScroll leadingAnchor];
    v120 = [(VUIAccessView_iOS *)self readableContentGuide];
    v121 = [v120 leadingAnchor];
    v122 = [v119 constraintEqualToAnchor:v121];
    [v122 setActive:1];

    v123 = [(UIScrollView *)self->_bodyScroll trailingAnchor];
    v124 = [(VUIAccessView_iOS *)self readableContentGuide];
    v125 = [v124 trailingAnchor];
    v126 = [v123 constraintEqualToAnchor:v125];
    [v126 setActive:1];

    v127 = [(UIScrollView *)self->_bodyScroll topAnchor];
    v128 = [(UILayoutGuide *)self->_titlePlacementGuide bottomAnchor];
    v129 = [v127 constraintEqualToAnchor:v128];
    [v129 setActive:1];

    v130 = [(UIScrollView *)self->_bodyScroll bottomAnchor];
    v131 = [(UIStackView *)self->_bottomStack topAnchor];
    v132 = [v130 constraintEqualToAnchor:v131 constant:-22.0];
    [v132 setActive:1];

    v133 = [(UIStackView *)self->_scrollStack leadingAnchor];
    v134 = [(UIScrollView *)self->_bodyScroll leadingAnchor];
    v135 = [v133 constraintEqualToAnchor:v134];
    [v135 setActive:1];

    v136 = [(UIStackView *)self->_scrollStack trailingAnchor];
    v137 = [(UIScrollView *)self->_bodyScroll trailingAnchor];
    v138 = [v136 constraintEqualToAnchor:v137];
    [v138 setActive:1];

    v139 = [(UIStackView *)self->_scrollStack topAnchor];
    v140 = [(UIScrollView *)self->_bodyScroll topAnchor];
    v141 = [v139 constraintEqualToAnchor:v140];
    [v141 setActive:1];

    v142 = [(UIStackView *)self->_scrollStack bottomAnchor];
    v143 = [(UIScrollView *)self->_bodyScroll bottomAnchor];
    v144 = [v142 constraintEqualToAnchor:v143];
    [v144 setActive:1];

    v145 = [(UIStackView *)self->_scrollStack widthAnchor];
    v146 = [(VUIAccessView_iOS *)self readableContentGuide];
    v147 = [v146 widthAnchor];
    v148 = [v145 constraintEqualToAnchor:v147];
    [v148 setActive:1];

    v149 = [(UIStackView *)self->_bottomStack widthAnchor];
    v150 = [(VUIAccessView_iOS *)self readableContentGuide];
    v151 = [v150 widthAnchor];
    v152 = [v149 constraintEqualToAnchor:v151];
    [v152 setActive:1];

    v153 = [(UIButton *)self->_seeAllButton widthAnchor];
    v154 = [v153 constraintEqualToConstant:288.0];
    [v154 setActive:1];

    v155 = [(UIButton *)self->_allowButton centerXAnchor];
    v156 = [(VUIAccessView_iOS *)self centerXAnchor];
    v157 = [v155 constraintEqualToAnchor:v156];
    [v157 setActive:1];

    v158 = [(UIButton *)self->_allowButton widthAnchor];
    v159 = [v158 constraintEqualToConstant:288.0];
    [v159 setActive:1];

    v160 = [(UIButton *)self->_allowButton heightAnchor];
    v161 = [v160 constraintEqualToConstant:50.0];
    [v161 setActive:1];

    v162 = [(UIStackView *)self->_bottomStack centerXAnchor];
    v163 = [(VUIAccessView_iOS *)self centerXAnchor];
    v164 = [v162 constraintEqualToAnchor:v163];
    [v164 setActive:1];

    v165 = [(UIStackView *)self->_bottomStack bottomAnchor];
    v166 = [(VUIAccessView_iOS *)self readableContentGuide];
    v167 = [v166 bottomAnchor];
    v168 = [v165 constraintEqualToAnchor:v167 constant:-22.0];
    [v168 setActive:1];

    v169 = [MEMORY[0x1E69DC938] currentDevice];
    v170 = [v169 userInterfaceIdiom];

    v171 = v170 & 0xFFFFFFFFFFFFFFFBLL;
    v172 = [(UIButton *)self->_nackButton bottomAnchor];
    v173 = [(VUIAccessView_iOS *)self readableContentGuide];
    v174 = [v173 bottomAnchor];
    v175 = -44.0;
    if (v171 == 1)
    {
      v175 = -60.0;
    }

    v176 = [v172 constraintEqualToAnchor:v174 constant:v175];
    [v176 setActive:1];

    v177 = [(UIButton *)self->_nackButton topAnchor];
    v178 = [(UIScrollView *)self->_bodyScroll bottomAnchor];
    v179 = [v177 constraintGreaterThanOrEqualToAnchor:v178 constant:22.0];
    [v179 setActive:1];

    v180 = [(UIButton *)self->_nackButton centerXAnchor];
    v181 = [(VUIAccessView_iOS *)self centerXAnchor];
    v182 = [v180 constraintEqualToAnchor:v181];
    [v182 setActive:1];

    v183 = [(UIButton *)self->_nackButton widthAnchor];
    v184 = [(UIButton *)self->_allowButton widthAnchor];
    v185 = [v183 constraintEqualToAnchor:v184];
    [v185 setActive:1];

    v186 = [(UIButton *)self->_nackButton heightAnchor];
    v187 = [(UIButton *)self->_allowButton heightAnchor];
    v188 = [v186 constraintEqualToAnchor:v187];
    [v188 setActive:1];

    self->_didLayout = 1;
  }
}

- (id)carouselView:(id)a3 cellForItemAtIndex:(unint64_t)a4
{
  v6 = [a3 dequeueReusableCellWithReuseIdentifier:@"cell" forIndex:?];
  v7 = [v6 contentView];
  v8 = [v7 subviews];
  v9 = [v8 firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    apps = self->_apps;
    v11 = v9;
    v12 = [(NSArray *)apps objectAtIndexedSubscript:a4];
    v13 = [v12 objectForKeyedSubscript:@"appIcon"];
    [v11 setImage:v13];
  }

  else
  {
    v12 = [(VUIAccessView_iOS *)self _imageViewForIndex:a4];
    [v12 setAutoresizingMask:18];
    [v9 removeFromSuperview];
    [v7 addSubview:v12];
  }

  return v6;
}

- (id)_buildCarousel
{
  v3 = objc_alloc(MEMORY[0x1E69D6108]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v4 setDataSource:self];
  [v4 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"cell"];
  +[VUIAccessView_iOS iconSize];
  [v4 setItemSize:?];
  [v4 setScrollMode:1];
  [v4 setUnitScrollDuration:4.0];
  [v4 setUserInteractionEnabled:0];
  [v4 setInteritemSpacing:15.0];

  return v4;
}

- (id)_buildLogoStack
{
  v3 = [MEMORY[0x1E695DF70] array];
  if ([(NSArray *)self->_apps count])
  {
    v4 = 0;
    do
    {
      v5 = [(VUIAccessView_iOS *)self _imageViewForIndex:v4];
      [v3 addObject:v5];

      ++v4;
    }

    while (v4 < [(NSArray *)self->_apps count]);
  }

  v6 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:v3];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setAxis:0];
  [v6 setAlignment:3];
  [v6 setDistribution:3];
  [v6 setSpacing:15.0];
  [v6 setVuiAccessibilityIdentifier:@"UIA.TV.Image.access.connect"];

  return v6;
}

- (id)_imageViewForIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_apps objectAtIndexedSubscript:a3];
  v4 = [v3 objectForKeyedSubscript:@"appIcon"];
  v5 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  +[VUIAccessView_iOS iconSize];
  v7 = v6;
  v9 = v8;
  v10 = [v5 heightAnchor];
  v11 = [v10 constraintEqualToConstant:v9];
  [v11 setActive:1];

  v12 = [v5 widthAnchor];
  v13 = [v12 constraintEqualToConstant:v7];
  [v13 setActive:1];

  [v5 setImage:v4];

  return v5;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a6 == @"__VUIAccessView_iOSObservationContext" && self->_allowButton == v11)
  {
    v13 = [(VUIAccessView_iOS *)self tintColor];
    v14 = [(UIButton *)self->_allowButton isHighlighted];
    v15 = MEMORY[0x1E69DD250];
    if (v14)
    {
      v16 = v21;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v17 = __68__VUIAccessView_iOS_observeValueForKeyPath_ofObject_change_context___block_invoke;
    }

    else
    {
      v16 = v20;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v17 = __68__VUIAccessView_iOS_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
    }

    v16[2] = v17;
    v16[3] = &unk_1E872D990;
    v16[4] = self;
    v16[5] = v13;
    v18 = v13;
    [v15 animateWithDuration:v16 animations:0.25];
  }

  else
  {
    v19.receiver = self;
    v19.super_class = VUIAccessView_iOS;
    [(VUIAccessView_iOS *)&v19 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

@end