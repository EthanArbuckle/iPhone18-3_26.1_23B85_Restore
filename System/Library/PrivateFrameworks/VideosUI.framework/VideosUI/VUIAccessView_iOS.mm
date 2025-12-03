@interface VUIAccessView_iOS
+ (BOOL)tooManyIconsWithAppCount:(unint64_t)count;
+ (CGSize)iconSize;
- (VUIAccessView_iOS)initWithApps:(id)apps;
- (id)_buildCarousel;
- (id)_buildLogoStack;
- (id)_imageViewForIndex:(unint64_t)index;
- (id)carouselView:(id)view cellForItemAtIndex:(unint64_t)index;
- (void)dealloc;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setBody:(id)body;
- (void)setSecondaryBody:(id)body;
- (void)setTitle:(id)title;
- (void)setupView;
- (void)showNackScreen;
@end

@implementation VUIAccessView_iOS

- (VUIAccessView_iOS)initWithApps:(id)apps
{
  appsCopy = apps;
  v9.receiver = self;
  v9.super_class = VUIAccessView_iOS;
  v6 = [(VUIAccessView_iOS *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_apps, apps);
    [(VUIAccessView_iOS *)v7 setupView];
  }

  return v7;
}

+ (BOOL)tooManyIconsWithAppCount:(unint64_t)count
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if ([currentDevice userInterfaceIdiom])
  {
    v5 = 7;
  }

  else
  {
    v5 = 5;
  }

  return v5 < count;
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
  vui_keyColor = [MEMORY[0x1E69DC888] vui_keyColor];
  [(VUIAccessView_iOS *)self setTintColor:vui_keyColor];
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

- (void)setTitle:(id)title
{
  titleCopy = title;
  titleLabel = self->_titleLabel;
  v6 = titleCopy;
  if (!titleLabel)
  {
    [(VUIAccessView_iOS *)self layoutSubviews];
    titleCopy = v6;
    titleLabel = self->_titleLabel;
  }

  [(UILabel *)titleLabel setText:titleCopy];
}

- (void)setBody:(id)body
{
  bodyCopy = body;
  bodyLabel = self->_bodyLabel;
  v6 = bodyCopy;
  if (!bodyLabel)
  {
    [(VUIAccessView_iOS *)self layoutSubviews];
    bodyCopy = v6;
    bodyLabel = self->_bodyLabel;
  }

  [(UILabel *)bodyLabel setText:bodyCopy];
}

- (void)setSecondaryBody:(id)body
{
  bodyCopy = body;
  secondaryBodyLabel = self->_secondaryBodyLabel;
  v6 = bodyCopy;
  if (!secondaryBodyLabel)
  {
    [(VUIAccessView_iOS *)self layoutSubviews];
    bodyCopy = v6;
    secondaryBodyLabel = self->_secondaryBodyLabel;
  }

  [(UILabel *)secondaryBodyLabel setText:bodyCopy];
  [(UILabel *)self->_secondaryBodyLabel setHidden:0];
}

- (void)showNackScreen
{
  if ([(NSArray *)self->_apps count]< 2)
  {
    firstObject = [(NSArray *)self->_apps firstObject];
    v7 = [firstObject objectForKeyedSubscript:@"appName"];

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
    vui_primaryDynamicBackgroundColor = [MEMORY[0x1E69DC888] vui_primaryDynamicBackgroundColor];
    [(VUIAccessView_iOS *)self setBackgroundColor:vui_primaryDynamicBackgroundColor];

    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v6 = 20.0;
    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v6 = 74.0;
    }

    [(VUIAccessView_iOS *)self setLayoutMargins:20.0, v6, 0.0, v6];
    v7 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    titlePlacementGuide = self->_titlePlacementGuide;
    self->_titlePlacementGuide = v7;

    [(VUIAccessView_iOS *)self addLayoutGuide:self->_titlePlacementGuide];
    centerXAnchor = [(UILayoutGuide *)self->_titlePlacementGuide centerXAnchor];
    centerXAnchor2 = [(VUIAccessView_iOS *)self centerXAnchor];
    v11 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v11 setActive:1];

    heightAnchor = [(UILayoutGuide *)self->_titlePlacementGuide heightAnchor];
    heightAnchor2 = [(VUIAccessView_iOS *)self heightAnchor];
    v14 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:0.25];
    [v14 setActive:1];

    widthAnchor = [(UILayoutGuide *)self->_titlePlacementGuide widthAnchor];
    widthAnchor2 = [(VUIAccessView_iOS *)self widthAnchor];
    v17 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    [v17 setActive:1];

    topAnchor = [(UILayoutGuide *)self->_titlePlacementGuide topAnchor];
    topAnchor2 = [(VUIAccessView_iOS *)self topAnchor];
    v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
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
    vui_primaryTextColor = [MEMORY[0x1E69DC888] vui_primaryTextColor];
    [(UILabel *)v30 setTextColor:vui_primaryTextColor];

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
    vui_primaryTextColor2 = [MEMORY[0x1E69DC888] vui_primaryTextColor];
    [(UILabel *)v35 setTextColor:vui_primaryTextColor2];

    v37 = v32;
    v38 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v22, v23, v24, v25}];
    secondaryBodyLabel = self->_secondaryBodyLabel;
    self->_secondaryBodyLabel = v38;

    [(UILabel *)self->_secondaryBodyLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)self->_secondaryBodyLabel setFont:v37];
    [(UILabel *)self->_secondaryBodyLabel setNumberOfLines:0];
    [(UILabel *)self->_secondaryBodyLabel setTextAlignment:1];
    v40 = self->_secondaryBodyLabel;
    vui_primaryTextColor3 = [MEMORY[0x1E69DC888] vui_primaryTextColor];
    [(UILabel *)v40 setTextColor:vui_primaryTextColor3];

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
      _buildCarousel = [(VUIAccessView_iOS *)self _buildCarousel];
      carouselView = self->_carouselView;
      self->_carouselView = _buildCarousel;

      [(VUIAccessView_iOS *)self addSubview:self->_carouselView];
      [(_TVCarouselView *)self->_carouselView setTranslatesAutoresizingMaskIntoConstraints:0];
      centerXAnchor3 = [(_TVCarouselView *)self->_carouselView centerXAnchor];
      centerXAnchor4 = [(VUIAccessView_iOS *)self centerXAnchor];
      v63 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
      [v63 setActive:1];

      widthAnchor3 = [(_TVCarouselView *)self->_carouselView widthAnchor];
      widthAnchor4 = [(VUIAccessView_iOS *)self widthAnchor];
      v66 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
      [v66 setActive:1];

      heightAnchor3 = [(_TVCarouselView *)self->_carouselView heightAnchor];
      +[VUIAccessView_iOS iconSize];
      v69 = [heightAnchor3 constraintEqualToConstant:v68];
      [v69 setActive:1];

      topAnchor3 = [(_TVCarouselView *)self->_carouselView topAnchor];
      topAnchor4 = [(VUIAccessView_iOS *)self topAnchor];
      v72 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4 constant:8.0];
      [v72 setActive:1];

      bottomAnchor = [(_TVCarouselView *)self->_carouselView bottomAnchor];
      firstBaselineAnchor = [(UIScrollView *)self->_bodyScroll firstBaselineAnchor];
      v75 = [bottomAnchor constraintEqualToAnchor:firstBaselineAnchor constant:-16.0];
      [v75 setActive:1];

      v76 = self->_seeAllButton;
      v77 = +[VUILocalizationManager sharedInstance];
      v78 = [v77 localizedStringForKey:@"ACCESS_SEE_ALL_BUTTON"];
      [(UIButton *)v76 setTitle:v78 forState:0];

      titleLabel = [(UIButton *)self->_seeAllButton titleLabel];
      [titleLabel setLineBreakMode:0];

      [(UIButton *)self->_seeAllButton setTranslatesAutoresizingMaskIntoConstraints:0];
      v80 = v193;
      [(UIButton *)self->_seeAllButton _setFont:v193];
    }

    else
    {
      _buildLogoStack = [(VUIAccessView_iOS *)self _buildLogoStack];
      logoStack = self->_logoStack;
      self->_logoStack = _buildLogoStack;

      [(VUIAccessView_iOS *)self addSubview:self->_logoStack];
      centerXAnchor5 = [(UIStackView *)self->_logoStack centerXAnchor];
      centerXAnchor6 = [(VUIAccessView_iOS *)self centerXAnchor];
      v85 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
      [v85 setActive:1];

      topAnchor5 = [(UIStackView *)self->_logoStack topAnchor];
      topAnchor6 = [(VUIAccessView_iOS *)self topAnchor];
      v88 = [topAnchor5 constraintGreaterThanOrEqualToAnchor:topAnchor6 constant:8.0];
      [v88 setActive:1];

      bottomAnchor2 = [(UIStackView *)self->_logoStack bottomAnchor];
      firstBaselineAnchor2 = [(UIScrollView *)self->_bodyScroll firstBaselineAnchor];
      v91 = [bottomAnchor2 constraintEqualToAnchor:firstBaselineAnchor2 constant:-16.0];
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
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UIButton *)v96 setTitleColor:whiteColor forState:0];

    v98 = MEMORY[0x1E6913230]([(UIButton *)self->_allowButton _setFont:v92]);
    v99 = self->_allowButton;
    if (v98)
    {
      vuiLayer = [(UIButton *)v99 vuiLayer];
      [vuiLayer setCornerRadius:25.0];

      v101 = self->_allowButton;
      tintColor = [(VUIAccessView_iOS *)self tintColor];
      [(UIButton *)v101 vuiEnableGlassBackgroundWithIsEnabled:1 tint:tintColor type:4 flexible:0];
    }

    else
    {
      tintColor2 = [(VUIAccessView_iOS *)self tintColor];
      [(UIButton *)v99 setBackgroundColor:tintColor2];

      [(UIButton *)self->_allowButton _setContinuousCornerRadius:8.0];
    }

    [(UIButton *)self->_nackButton setTranslatesAutoresizingMaskIntoConstraints:0];
    nackButton = self->_nackButton;
    v105 = +[VUILocalizationManager sharedInstance];
    v106 = [v105 localizedStringForKey:@"ACCESS_NACK_BUTTON"];
    [(UIButton *)nackButton setTitle:v106 forState:0];

    v107 = self->_nackButton;
    whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIButton *)v107 setTitleColor:whiteColor2 forState:0];

    v109 = MEMORY[0x1E6913230]([(UIButton *)self->_nackButton _setFont:v80]);
    v110 = self->_nackButton;
    if (v109)
    {
      vuiLayer2 = [(UIButton *)self->_nackButton vuiLayer];
      [vuiLayer2 setCornerRadius:25.0];

      v112 = self->_nackButton;
      tintColor3 = [(VUIAccessView_iOS *)self tintColor];
      [(UIButton *)v112 vuiEnableGlassBackgroundWithIsEnabled:1 tint:tintColor3 type:4 flexible:0];
    }

    else
    {
      tintColor4 = [(VUIAccessView_iOS *)self tintColor];
      [(UIButton *)v110 setBackgroundColor:tintColor4];

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
    leadingAnchor = [(UIScrollView *)self->_bodyScroll leadingAnchor];
    readableContentGuide = [(VUIAccessView_iOS *)self readableContentGuide];
    leadingAnchor2 = [readableContentGuide leadingAnchor];
    v122 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v122 setActive:1];

    trailingAnchor = [(UIScrollView *)self->_bodyScroll trailingAnchor];
    readableContentGuide2 = [(VUIAccessView_iOS *)self readableContentGuide];
    trailingAnchor2 = [readableContentGuide2 trailingAnchor];
    v126 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v126 setActive:1];

    topAnchor7 = [(UIScrollView *)self->_bodyScroll topAnchor];
    bottomAnchor3 = [(UILayoutGuide *)self->_titlePlacementGuide bottomAnchor];
    v129 = [topAnchor7 constraintEqualToAnchor:bottomAnchor3];
    [v129 setActive:1];

    bottomAnchor4 = [(UIScrollView *)self->_bodyScroll bottomAnchor];
    topAnchor8 = [(UIStackView *)self->_bottomStack topAnchor];
    v132 = [bottomAnchor4 constraintEqualToAnchor:topAnchor8 constant:-22.0];
    [v132 setActive:1];

    leadingAnchor3 = [(UIStackView *)self->_scrollStack leadingAnchor];
    leadingAnchor4 = [(UIScrollView *)self->_bodyScroll leadingAnchor];
    v135 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [v135 setActive:1];

    trailingAnchor3 = [(UIStackView *)self->_scrollStack trailingAnchor];
    trailingAnchor4 = [(UIScrollView *)self->_bodyScroll trailingAnchor];
    v138 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    [v138 setActive:1];

    topAnchor9 = [(UIStackView *)self->_scrollStack topAnchor];
    topAnchor10 = [(UIScrollView *)self->_bodyScroll topAnchor];
    v141 = [topAnchor9 constraintEqualToAnchor:topAnchor10];
    [v141 setActive:1];

    bottomAnchor5 = [(UIStackView *)self->_scrollStack bottomAnchor];
    bottomAnchor6 = [(UIScrollView *)self->_bodyScroll bottomAnchor];
    v144 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
    [v144 setActive:1];

    widthAnchor5 = [(UIStackView *)self->_scrollStack widthAnchor];
    readableContentGuide3 = [(VUIAccessView_iOS *)self readableContentGuide];
    widthAnchor6 = [readableContentGuide3 widthAnchor];
    v148 = [widthAnchor5 constraintEqualToAnchor:widthAnchor6];
    [v148 setActive:1];

    widthAnchor7 = [(UIStackView *)self->_bottomStack widthAnchor];
    readableContentGuide4 = [(VUIAccessView_iOS *)self readableContentGuide];
    widthAnchor8 = [readableContentGuide4 widthAnchor];
    v152 = [widthAnchor7 constraintEqualToAnchor:widthAnchor8];
    [v152 setActive:1];

    widthAnchor9 = [(UIButton *)self->_seeAllButton widthAnchor];
    v154 = [widthAnchor9 constraintEqualToConstant:288.0];
    [v154 setActive:1];

    centerXAnchor7 = [(UIButton *)self->_allowButton centerXAnchor];
    centerXAnchor8 = [(VUIAccessView_iOS *)self centerXAnchor];
    v157 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
    [v157 setActive:1];

    widthAnchor10 = [(UIButton *)self->_allowButton widthAnchor];
    v159 = [widthAnchor10 constraintEqualToConstant:288.0];
    [v159 setActive:1];

    heightAnchor4 = [(UIButton *)self->_allowButton heightAnchor];
    v161 = [heightAnchor4 constraintEqualToConstant:50.0];
    [v161 setActive:1];

    centerXAnchor9 = [(UIStackView *)self->_bottomStack centerXAnchor];
    centerXAnchor10 = [(VUIAccessView_iOS *)self centerXAnchor];
    v164 = [centerXAnchor9 constraintEqualToAnchor:centerXAnchor10];
    [v164 setActive:1];

    bottomAnchor7 = [(UIStackView *)self->_bottomStack bottomAnchor];
    readableContentGuide5 = [(VUIAccessView_iOS *)self readableContentGuide];
    bottomAnchor8 = [readableContentGuide5 bottomAnchor];
    v168 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8 constant:-22.0];
    [v168 setActive:1];

    currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

    v171 = userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL;
    bottomAnchor9 = [(UIButton *)self->_nackButton bottomAnchor];
    readableContentGuide6 = [(VUIAccessView_iOS *)self readableContentGuide];
    bottomAnchor10 = [readableContentGuide6 bottomAnchor];
    v175 = -44.0;
    if (v171 == 1)
    {
      v175 = -60.0;
    }

    v176 = [bottomAnchor9 constraintEqualToAnchor:bottomAnchor10 constant:v175];
    [v176 setActive:1];

    topAnchor11 = [(UIButton *)self->_nackButton topAnchor];
    bottomAnchor11 = [(UIScrollView *)self->_bodyScroll bottomAnchor];
    v179 = [topAnchor11 constraintGreaterThanOrEqualToAnchor:bottomAnchor11 constant:22.0];
    [v179 setActive:1];

    centerXAnchor11 = [(UIButton *)self->_nackButton centerXAnchor];
    centerXAnchor12 = [(VUIAccessView_iOS *)self centerXAnchor];
    v182 = [centerXAnchor11 constraintEqualToAnchor:centerXAnchor12];
    [v182 setActive:1];

    widthAnchor11 = [(UIButton *)self->_nackButton widthAnchor];
    widthAnchor12 = [(UIButton *)self->_allowButton widthAnchor];
    v185 = [widthAnchor11 constraintEqualToAnchor:widthAnchor12];
    [v185 setActive:1];

    heightAnchor5 = [(UIButton *)self->_nackButton heightAnchor];
    heightAnchor6 = [(UIButton *)self->_allowButton heightAnchor];
    v188 = [heightAnchor5 constraintEqualToAnchor:heightAnchor6];
    [v188 setActive:1];

    self->_didLayout = 1;
  }
}

- (id)carouselView:(id)view cellForItemAtIndex:(unint64_t)index
{
  v6 = [view dequeueReusableCellWithReuseIdentifier:@"cell" forIndex:?];
  contentView = [v6 contentView];
  subviews = [contentView subviews];
  firstObject = [subviews firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    apps = self->_apps;
    v11 = firstObject;
    v12 = [(NSArray *)apps objectAtIndexedSubscript:index];
    v13 = [v12 objectForKeyedSubscript:@"appIcon"];
    [v11 setImage:v13];
  }

  else
  {
    v12 = [(VUIAccessView_iOS *)self _imageViewForIndex:index];
    [v12 setAutoresizingMask:18];
    [firstObject removeFromSuperview];
    [contentView addSubview:v12];
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
  array = [MEMORY[0x1E695DF70] array];
  if ([(NSArray *)self->_apps count])
  {
    v4 = 0;
    do
    {
      v5 = [(VUIAccessView_iOS *)self _imageViewForIndex:v4];
      [array addObject:v5];

      ++v4;
    }

    while (v4 < [(NSArray *)self->_apps count]);
  }

  v6 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:array];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setAxis:0];
  [v6 setAlignment:3];
  [v6 setDistribution:3];
  [v6 setSpacing:15.0];
  [v6 setVuiAccessibilityIdentifier:@"UIA.TV.Image.access.connect"];

  return v6;
}

- (id)_imageViewForIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_apps objectAtIndexedSubscript:index];
  v4 = [v3 objectForKeyedSubscript:@"appIcon"];
  v5 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  +[VUIAccessView_iOS iconSize];
  v7 = v6;
  v9 = v8;
  heightAnchor = [v5 heightAnchor];
  v11 = [heightAnchor constraintEqualToConstant:v9];
  [v11 setActive:1];

  widthAnchor = [v5 widthAnchor];
  v13 = [widthAnchor constraintEqualToConstant:v7];
  [v13 setActive:1];

  [v5 setImage:v4];

  return v5;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (context == @"__VUIAccessView_iOSObservationContext" && self->_allowButton == objectCopy)
  {
    tintColor = [(VUIAccessView_iOS *)self tintColor];
    isHighlighted = [(UIButton *)self->_allowButton isHighlighted];
    v15 = MEMORY[0x1E69DD250];
    if (isHighlighted)
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
    v16[5] = tintColor;
    v18 = tintColor;
    [v15 animateWithDuration:v16 animations:0.25];
  }

  else
  {
    v19.receiver = self;
    v19.super_class = VUIAccessView_iOS;
    [(VUIAccessView_iOS *)&v19 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

@end