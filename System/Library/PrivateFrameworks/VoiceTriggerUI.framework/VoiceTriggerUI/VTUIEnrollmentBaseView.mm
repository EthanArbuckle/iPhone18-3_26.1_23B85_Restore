@interface VTUIEnrollmentBaseView
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (VTUIEnrollmentBaseView)initWithFrame:(CGRect)frame;
- (VTUIEnrollmentDelegate)enrollmentDelegate;
- (double)imageOffsetFromTop;
- (id)_createPrivacyTextView;
- (int64_t)_backdropStyle;
- (void)_setupUI;
- (void)fadeInSubviews;
- (void)layoutSubviews;
- (void)safeAreaInsetsDidChange;
- (void)setContentView:(id)view;
- (void)traitCollectionDidChange:(id)change;
- (void)updateConstraints;
@end

@implementation VTUIEnrollmentBaseView

- (VTUIEnrollmentBaseView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = VTUIEnrollmentBaseView;
  v3 = [(VTUIEnrollmentBaseView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(VTUIEnrollmentBaseView *)v3 _setupUI];
  }

  return v4;
}

- (void)_setupUI
{
  v205 = *MEMORY[0x277D85DE8];
  v3 = +[VTUIStyle sharedStyle];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  windows = [mEMORY[0x277D75128] windows];
  lastObject = [windows lastObject];
  windowScene = [lastObject windowScene];
  v8 = [windowScene interfaceOrientation] - 3;

  if (v8 > 1)
  {
    [v3 horizontalPaddingPortrait];
  }

  else
  {
    [v3 horizontalPaddingLandscape];
  }

  v10 = v9;
  readableContentGuide = [(VTUIEnrollmentBaseView *)self readableContentGuide];
  leftAnchor = [readableContentGuide leftAnchor];
  leftAnchor2 = [(VTUIEnrollmentBaseView *)self leftAnchor];
  v14 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:v10];
  readableLeftAnchorConstraint = self->_readableLeftAnchorConstraint;
  self->_readableLeftAnchorConstraint = v14;

  v188 = readableContentGuide;
  rightAnchor = [readableContentGuide rightAnchor];
  rightAnchor2 = [(VTUIEnrollmentBaseView *)self rightAnchor];
  v18 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-v10];
  readableRightAnchorConstraint = self->_readableRightAnchorConstraint;
  self->_readableRightAnchorConstraint = v18;

  [(NSLayoutConstraint *)self->_readableLeftAnchorConstraint setActive:1];
  [(NSLayoutConstraint *)self->_readableRightAnchorConstraint setActive:1];
  v20 = objc_alloc_init(MEMORY[0x277D759D8]);
  scrollView = self->_scrollView;
  self->_scrollView = v20;

  [(UIScrollView *)self->_scrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIScrollView *)self->_scrollView setAutoresizesSubviews:0];
  [(VTUIEnrollmentBaseView *)self addSubview:self->_scrollView];
  v22 = objc_alloc_init(MEMORY[0x277D75D18]);
  scrollContainerView = self->_scrollContainerView;
  self->_scrollContainerView = v22;

  [(UIView *)self->_scrollContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_scrollContainerView setClipsToBounds:1];
  [(UIScrollView *)self->_scrollView addSubview:self->_scrollContainerView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  isOptedIn = 0;
  if (objc_opt_isKindOfClass())
  {
    v26 = objc_alloc_init(MEMORY[0x277CFB468]);
    isOptedIn = [v26 isOptedIn];
  }

  v27 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v200 = "[VTUIEnrollmentBaseView _setupUI]";
    v201 = 1024;
    v202 = isKindOfClass & 1;
    v203 = 1024;
    v204 = isOptedIn;
    _os_log_impl(&dword_2728BC000, v27, OS_LOG_TYPE_DEFAULT, "%s Showing EnrollmentView. useWaveform: %d, useNewSiriIcon: %d", buf, 0x18u);
  }

  if (isKindOfClass)
  {
    siriIconImage = [MEMORY[0x277D755B8] systemImageNamed:@"waveform"];
    isOptedIn = 1;
  }

  else
  {
    siriIconImage = [v3 siriIconImage];
  }

  v186 = siriIconImage;
  v29 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:siriIconImage];
  if (isOptedIn)
  {
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    [v29 setTintColor:systemBlueColor];
  }

  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
  objc_storeStrong(&self->_iconImageView, v29);
  p_iconImageView = &self->_iconImageView;
  [(UIView *)self->_scrollContainerView addSubview:self->_iconImageView];
  v31 = objc_alloc_init(MEMORY[0x277D756B8]);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v31;

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  if (+[VTUIFeatureFlags isNaturalUIEnabled])
  {
    v33 = 4;
  }

  else
  {
    v33 = 1;
  }

  [(UILabel *)self->_titleLabel setTextAlignment:v33];
  instructionLabelFont = [v3 instructionLabelFont];
  [(UILabel *)self->_titleLabel setFont:instructionLabelFont];

  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  [(UIView *)self->_scrollContainerView addSubview:self->_titleLabel];
  v35 = objc_alloc_init(MEMORY[0x277D756B8]);
  subtitleLabel = self->_subtitleLabel;
  self->_subtitleLabel = v35;

  [(UILabel *)self->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  if (+[VTUIFeatureFlags isNaturalUIEnabled])
  {
    v37 = 4;
  }

  else
  {
    v37 = 1;
  }

  [(UILabel *)self->_subtitleLabel setTextAlignment:v37];
  subtitleFont = [v3 subtitleFont];
  [(UILabel *)self->_subtitleLabel setFont:subtitleFont];

  [(UILabel *)self->_subtitleLabel setNumberOfLines:0];
  if (+[VTUIFeatureFlags isNaturalUIEnabled])
  {
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)self->_subtitleLabel setTextColor:secondaryLabelColor];
  }

  v185 = v29;
  [(UIView *)self->_scrollContainerView addSubview:self->_subtitleLabel];
  v40 = objc_alloc_init(MEMORY[0x277D756B8]);
  instructionLabel = self->_instructionLabel;
  self->_instructionLabel = v40;

  [(UILabel *)self->_instructionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  if (+[VTUIFeatureFlags isNaturalUIEnabled])
  {
    v42 = 4;
  }

  else
  {
    v42 = 1;
  }

  [(UILabel *)self->_instructionLabel setTextAlignment:v42];
  v189 = v3;
  subtitleFont2 = [v3 subtitleFont];
  [(UILabel *)self->_instructionLabel setFont:subtitleFont2];

  [(UILabel *)self->_instructionLabel setNumberOfLines:0];
  if (+[VTUIFeatureFlags isNaturalUIEnabled])
  {
    secondaryLabelColor2 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)self->_instructionLabel setTextColor:secondaryLabelColor2];
  }

  [(UIView *)self->_scrollContainerView addSubview:self->_instructionLabel];
  v140 = MEMORY[0x277CCAAD0];
  topAnchor = [(UIScrollView *)self->_scrollView topAnchor];
  topAnchor2 = [(VTUIEnrollmentBaseView *)self topAnchor];
  v155 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v198[0] = v155;
  leftAnchor3 = [(UIScrollView *)self->_scrollView leftAnchor];
  leftAnchor4 = [(VTUIEnrollmentBaseView *)self leftAnchor];
  v148 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
  v198[1] = v148;
  rightAnchor3 = [(UIScrollView *)self->_scrollView rightAnchor];
  rightAnchor4 = [(VTUIEnrollmentBaseView *)self rightAnchor];
  v143 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
  v198[2] = v143;
  bottomAnchor = [(UIScrollView *)self->_scrollView bottomAnchor];
  bottomAnchor2 = [(VTUIEnrollmentBaseView *)self bottomAnchor];
  v139 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v198[3] = v139;
  topAnchor3 = [(UIView *)self->_scrollContainerView topAnchor];
  topAnchor4 = [(UIScrollView *)self->_scrollView topAnchor];
  v136 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v198[4] = v136;
  leftAnchor5 = [(UIView *)self->_scrollContainerView leftAnchor];
  leftAnchor6 = [(UIScrollView *)self->_scrollView leftAnchor];
  v133 = [leftAnchor5 constraintEqualToAnchor:leftAnchor6];
  v198[5] = v133;
  rightAnchor5 = [(UIView *)self->_scrollContainerView rightAnchor];
  rightAnchor6 = [(UIScrollView *)self->_scrollView rightAnchor];
  v46 = [rightAnchor5 constraintEqualToAnchor:rightAnchor6];
  v198[6] = v46;
  widthAnchor = [(UIView *)self->_scrollContainerView widthAnchor];
  widthAnchor2 = [(UIScrollView *)self->_scrollView widthAnchor];
  v49 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v198[7] = v49;
  bottomAnchor3 = [(UIView *)self->_scrollContainerView bottomAnchor];
  bottomAnchor4 = [(UIScrollView *)self->_scrollView bottomAnchor];
  v52 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v198[8] = v52;
  v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v198 count:9];
  [v140 activateConstraints:v53];

  v153 = MEMORY[0x277CCAAD0];
  topAnchor5 = [(UIImageView *)*p_iconImageView topAnchor];
  topAnchor6 = [(UIView *)self->_scrollContainerView topAnchor];
  [(VTUIEnrollmentBaseView *)self imageOffsetFromTop];
  v156 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:?];
  v197[0] = v156;
  centerXAnchor = [(UIImageView *)*p_iconImageView centerXAnchor];
  centerXAnchor2 = [(UIView *)self->_scrollContainerView centerXAnchor];
  v56 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v197[1] = v56;
  widthAnchor3 = [(UIImageView *)*p_iconImageView widthAnchor];
  [v189 orbImageLength];
  v58 = [widthAnchor3 constraintEqualToConstant:?];
  v197[2] = v58;
  heightAnchor = [(UIImageView *)*p_iconImageView heightAnchor];
  [v189 orbImageLength];
  v60 = [heightAnchor constraintEqualToConstant:?];
  v197[3] = v60;
  v61 = [MEMORY[0x277CBEA60] arrayWithObjects:v197 count:4];
  [v153 activateConstraints:v61];

  v161 = MEMORY[0x277CCAAD0];
  topAnchor7 = [(UILabel *)self->_titleLabel topAnchor];
  bottomAnchor5 = [(UIImageView *)*p_iconImageView bottomAnchor];
  [v189 titleOffsetFromOrbImage];
  v62 = [topAnchor7 constraintEqualToAnchor:bottomAnchor5 constant:?];
  v196[0] = v62;
  widthAnchor4 = [(UILabel *)self->_titleLabel widthAnchor];
  widthAnchor5 = [v188 widthAnchor];
  v65 = [widthAnchor4 constraintEqualToAnchor:widthAnchor5];
  v196[1] = v65;
  centerXAnchor3 = [(UILabel *)self->_titleLabel centerXAnchor];
  centerXAnchor4 = [(UIView *)self->_scrollContainerView centerXAnchor];
  v68 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v196[2] = v68;
  v69 = [MEMORY[0x277CBEA60] arrayWithObjects:v196 count:3];
  [v161 activateConstraints:v69];

  v168 = MEMORY[0x277CCAAD0];
  topAnchor8 = [(UILabel *)self->_subtitleLabel topAnchor];
  bottomAnchor6 = [(UILabel *)self->_titleLabel bottomAnchor];
  [v189 subtitle1BaselineOffset];
  v70 = [topAnchor8 constraintEqualToAnchor:bottomAnchor6 constant:?];
  v195[0] = v70;
  widthAnchor6 = [(UILabel *)self->_subtitleLabel widthAnchor];
  widthAnchor7 = [v188 widthAnchor];
  v73 = [widthAnchor6 constraintEqualToAnchor:widthAnchor7];
  v195[1] = v73;
  centerXAnchor5 = [(UILabel *)self->_subtitleLabel centerXAnchor];
  centerXAnchor6 = [(UIView *)self->_scrollContainerView centerXAnchor];
  v76 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  v195[2] = v76;
  v77 = [MEMORY[0x277CBEA60] arrayWithObjects:v195 count:3];
  [v168 activateConstraints:v77];

  v162 = MEMORY[0x277CCAAD0];
  topAnchor9 = [(UILabel *)self->_instructionLabel topAnchor];
  bottomAnchor7 = [(UILabel *)self->_subtitleLabel bottomAnchor];
  [v189 subtitle2BaselineOffset];
  v177 = [topAnchor9 constraintEqualToAnchor:bottomAnchor7 constant:?];
  v194[0] = v177;
  widthAnchor8 = [(UILabel *)self->_instructionLabel widthAnchor];
  widthAnchor9 = [v188 widthAnchor];
  v79 = [widthAnchor8 constraintEqualToAnchor:widthAnchor9];
  v194[1] = v79;
  centerXAnchor7 = [(UILabel *)self->_instructionLabel centerXAnchor];
  centerXAnchor8 = [(UIView *)self->_scrollContainerView centerXAnchor];
  v82 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
  v194[2] = v82;
  bottomAnchor8 = [(UILabel *)self->_instructionLabel bottomAnchor];
  bottomAnchor9 = [(UIView *)self->_scrollContainerView bottomAnchor];
  [v189 subtitle2BaselineOffset];
  v86 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9 constant:-v85];
  v194[3] = v86;
  v87 = [MEMORY[0x277CBEA60] arrayWithObjects:v194 count:4];
  [v162 activateConstraints:v87];

  footerView = [(VTUIEnrollmentBaseView *)self footerView];
  if ([(VTUIEnrollmentBaseView *)self showPrivacyTextView]|| footerView)
  {
    v89 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:{-[VTUIEnrollmentBaseView _backdropStyle](self, "_backdropStyle")}];
    backdropView = self->_backdropView;
    self->_backdropView = v89;

    [(_UIBackdropView *)self->_backdropView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(VTUIEnrollmentBaseView *)self addSubview:self->_backdropView];
    if ([(VTUIEnrollmentBaseView *)self showPrivacyTextView])
    {
      _createPrivacyTextView = [(VTUIEnrollmentBaseView *)self _createPrivacyTextView];
      privacyTextView = self->_privacyTextView;
      self->_privacyTextView = _createPrivacyTextView;

      [(VTUIEnrollmentBaseView *)self addSubview:self->_privacyTextView];
    }

    if (footerView)
    {
      [(UITextView *)footerView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(VTUIEnrollmentBaseView *)self addSubview:footerView];
    }

    v93 = self->_privacyTextView;
    if (!v93)
    {
      v93 = footerView;
    }

    v94 = v93;
    v157 = MEMORY[0x277CCAAD0];
    v184 = v94;
    topAnchor10 = [(UITextView *)v94 topAnchor];
    topAnchor11 = [(_UIBackdropView *)self->_backdropView topAnchor];
    v170 = [topAnchor10 constraintEqualToSystemSpacingBelowAnchor:topAnchor11 multiplier:1.0];
    v193[0] = v170;
    leftAnchor7 = [(_UIBackdropView *)self->_backdropView leftAnchor];
    leftAnchor8 = [(VTUIEnrollmentBaseView *)self leftAnchor];
    v96 = [leftAnchor7 constraintEqualToAnchor:leftAnchor8];
    v193[1] = v96;
    rightAnchor7 = [(_UIBackdropView *)self->_backdropView rightAnchor];
    rightAnchor8 = [(VTUIEnrollmentBaseView *)self rightAnchor];
    [rightAnchor7 constraintEqualToAnchor:rightAnchor8];
    v99 = v187 = footerView;
    v193[2] = v99;
    bottomAnchor10 = [(_UIBackdropView *)self->_backdropView bottomAnchor];
    bottomAnchor11 = [(VTUIEnrollmentBaseView *)self bottomAnchor];
    v102 = [bottomAnchor10 constraintEqualToAnchor:bottomAnchor11];
    v193[3] = v102;
    v103 = [MEMORY[0x277CBEA60] arrayWithObjects:v193 count:4];
    [v157 activateConstraints:v103];

    footerView = v187;
    v104 = self->_privacyTextView;
    v105 = MEMORY[0x277CCAAD0];
    if (v104 && v187)
    {
      leftAnchor9 = [(UITextView *)v104 leftAnchor];
      leftAnchor10 = [v188 leftAnchor];
      v171 = [leftAnchor9 constraintEqualToAnchor:leftAnchor10];
      v192[0] = v171;
      rightAnchor9 = [(UITextView *)self->_privacyTextView rightAnchor];
      rightAnchor10 = [v188 rightAnchor];
      v147 = [rightAnchor9 constraintEqualToAnchor:rightAnchor10];
      v192[1] = v147;
      bottomAnchor12 = [(UITextView *)self->_privacyTextView bottomAnchor];
      topAnchor12 = [(UITextView *)v187 topAnchor];
      bottomAnchor15 = [bottomAnchor12 constraintEqualToAnchor:?];
      v192[2] = bottomAnchor15;
      leftAnchor11 = [(UITextView *)v187 leftAnchor];
      leftAnchor12 = [v188 leftAnchor];
      v173 = leftAnchor11;
      v145 = [leftAnchor11 constraintEqualToAnchor:leftAnchor12];
      v192[3] = v145;
      rightAnchor11 = [(UITextView *)v187 rightAnchor];
      rightAnchor12 = [v188 rightAnchor];
      v110 = [rightAnchor11 constraintEqualToAnchor:rightAnchor12];
      v192[4] = v110;
      bottomAnchor13 = [(UITextView *)v187 bottomAnchor];
      safeAreaLayoutGuide = [(VTUIEnrollmentBaseView *)self safeAreaLayoutGuide];
      [safeAreaLayoutGuide bottomAnchor];
      v114 = v113 = v105;
      v115 = [bottomAnchor13 constraintEqualToAnchor:v114];
      v192[5] = v115;
      v116 = [MEMORY[0x277CBEA60] arrayWithObjects:v192 count:6];
      v117 = v113;
      v118 = v147;
      [v117 activateConstraints:v116];

      leftAnchor14 = leftAnchor10;
      leftAnchor13 = leftAnchor9;

      v121 = bottomAnchor12;
      footerView = v187;

      rightAnchor13 = rightAnchor9;
      rightAnchor14 = rightAnchor10;

      v124 = v171;
    }

    else
    {
      if (v104)
      {
        leftAnchor13 = [(UITextView *)v104 leftAnchor];
        leftAnchor14 = [v188 leftAnchor];
        v124 = [leftAnchor13 constraintEqualToAnchor:leftAnchor14];
        v191[0] = v124;
        rightAnchor13 = [(UITextView *)self->_privacyTextView rightAnchor];
        rightAnchor14 = [v188 rightAnchor];
        v118 = [rightAnchor13 constraintEqualToAnchor:rightAnchor14];
        v191[1] = v118;
        bottomAnchor14 = [(UITextView *)self->_privacyTextView bottomAnchor];
        selfCopy = self;
        v121 = bottomAnchor14;
        topAnchor12 = [(VTUIEnrollmentBaseView *)selfCopy safeAreaLayoutGuide];
        bottomAnchor15 = [topAnchor12 bottomAnchor];
        v173 = [v121 constraintEqualToAnchor:?];
        v191[2] = v173;
        v127 = MEMORY[0x277CBEA60];
        v128 = v191;
      }

      else
      {
        leftAnchor13 = [(UITextView *)v187 leftAnchor];
        leftAnchor14 = [v188 leftAnchor];
        v124 = [leftAnchor13 constraintEqualToAnchor:leftAnchor14];
        v190[0] = v124;
        rightAnchor13 = [(UITextView *)v187 rightAnchor];
        rightAnchor14 = [v188 rightAnchor];
        v118 = [rightAnchor13 constraintEqualToAnchor:rightAnchor14];
        v190[1] = v118;
        bottomAnchor16 = [(UITextView *)v187 bottomAnchor];
        selfCopy2 = self;
        v121 = bottomAnchor16;
        topAnchor12 = [(VTUIEnrollmentBaseView *)selfCopy2 safeAreaLayoutGuide];
        bottomAnchor15 = [topAnchor12 bottomAnchor];
        v173 = [v121 constraintEqualToAnchor:?];
        v190[2] = v173;
        v127 = MEMORY[0x277CBEA60];
        v128 = v190;
      }

      leftAnchor12 = [v127 arrayWithObjects:v128 count:3];
      [v105 activateConstraints:leftAnchor12];
    }
  }

  v131 = *MEMORY[0x277D85DE8];
}

- (id)_createPrivacyTextView
{
  v30[2] = *MEMORY[0x277D85DE8];
  v3 = +[VTUIStyle sharedStyle];
  v4 = objc_alloc_init(MEMORY[0x277D75C40]);
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setTextContainerInset:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  textContainer = [v4 textContainer];
  [textContainer setLineFragmentPadding:0.0];

  [v4 setDelegate:self];
  if ([v3 isGreenTeaCapableDevice])
  {
    v6 = @"TEXT_FOOTER_CONS_REGULATORY_DISCLOSURE";
  }

  else
  {
    v6 = @"TEXT_FOOTER_CONS";
  }

  v7 = [v3 VTUIDeviceSpecificString:v6];
  v8 = [v3 VTUIDeviceSpecificString:@"BUTTON_CONS_ABOUT_SIRI"];
  defaultParagraphStyle = [MEMORY[0x277D74240] defaultParagraphStyle];
  v10 = [defaultParagraphStyle mutableCopy];

  [v10 setAlignment:1];
  v11 = objc_alloc(MEMORY[0x277CCAB48]);
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v7, v8];
  v13 = *MEMORY[0x277D74118];
  v30[0] = v10;
  v14 = *MEMORY[0x277D740A8];
  v29[0] = v13;
  v29[1] = v14;
  footerLabelFont = [v3 footerLabelFont];
  v30[1] = footerLabelFont;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
  v17 = [v11 initWithString:v12 attributes:v16];

  if ([v8 length])
  {
    v18 = [v7 length];
    v19 = [v8 length];
    v20 = *MEMORY[0x277D740C0];
    footerTextColor = [v3 footerTextColor];
    [v17 addAttribute:v20 value:footerTextColor range:{0, v18 + 1}];

    buttonTextColor = [v3 buttonTextColor];
    [v17 addAttribute:v20 value:buttonTextColor range:{v18 + 1, v19}];

    v23 = *MEMORY[0x277D740E8];
    v24 = [MEMORY[0x277CBEBC0] URLWithString:&stru_2881E5778];
    [v17 addAttribute:v23 value:v24 range:{v18 + 1, v19}];

    footerLabelFont2 = [v3 footerLabelFont];
    [v4 setFont:footerLabelFont2];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [v4 setBackgroundColor:clearColor];

    [v4 setAttributedText:v17];
    [v4 setEditable:0];
    [v4 setScrollEnabled:0];
    [v4 setDataDetectorTypes:2];
    [v4 _setInteractiveTextSelectionDisabled:1];
  }

  v27 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = VTUIEnrollmentBaseView;
  [(VTUIEnrollmentBaseView *)&v4 traitCollectionDidChange:change];
  [(_UIBackdropView *)self->_backdropView transitionToPrivateStyle:[(VTUIEnrollmentBaseView *)self _backdropStyle]];
}

- (int64_t)_backdropStyle
{
  traitCollection = [(VTUIEnrollmentBaseView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
  {
    return 2030;
  }

  else
  {
    return 2020;
  }
}

- (void)setContentView:(id)view
{
  v26[4] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  [(UIView *)self->_contentView removeFromSuperview];
  [(UILabel *)self->_instructionLabel removeFromSuperview];
  instructionLabel = self->_instructionLabel;
  self->_instructionLabel = 0;

  readableContentGuide = [(VTUIEnrollmentBaseView *)self readableContentGuide];
  v6 = +[VTUIStyle sharedStyle];
  contentView = self->_contentView;
  self->_contentView = viewCopy;
  v22 = viewCopy;

  [(UIView *)self->_scrollContainerView addSubview:self->_contentView];
  [(UIView *)self->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = MEMORY[0x277CCAAD0];
  topAnchor = [(UIView *)self->_contentView topAnchor];
  bottomAnchor = [(UILabel *)self->_subtitleLabel bottomAnchor];
  [v6 subtitle2BaselineOffset];
  v21 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:?];
  v26[0] = v21;
  widthAnchor = [(UIView *)self->_contentView widthAnchor];
  widthAnchor2 = [readableContentGuide widthAnchor];
  v9 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v26[1] = v9;
  centerXAnchor = [(UIView *)self->_contentView centerXAnchor];
  centerXAnchor2 = [(UIView *)self->_scrollContainerView centerXAnchor];
  v12 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v26[2] = v12;
  bottomAnchor2 = [(UIView *)self->_contentView bottomAnchor];
  bottomAnchor3 = [(UIView *)self->_scrollContainerView bottomAnchor];
  [v6 subtitle2BaselineOffset];
  v16 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-v15];
  v26[3] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];
  [v19 activateConstraints:v17];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)updateConstraints
{
  v11.receiver = self;
  v11.super_class = VTUIEnrollmentBaseView;
  [(VTUIEnrollmentBaseView *)&v11 updateConstraints];
  v3 = +[VTUIStyle sharedStyle];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  windows = [mEMORY[0x277D75128] windows];
  lastObject = [windows lastObject];
  windowScene = [lastObject windowScene];
  v8 = [windowScene interfaceOrientation] - 3;

  if (v8 > 1)
  {
    [v3 horizontalPaddingPortrait];
  }

  else
  {
    [v3 horizontalPaddingLandscape];
  }

  v10 = v9;
  [(NSLayoutConstraint *)self->_readableLeftAnchorConstraint setConstant:?];
  [(NSLayoutConstraint *)self->_readableRightAnchorConstraint setConstant:-v10];
}

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = VTUIEnrollmentBaseView;
  [(VTUIEnrollmentBaseView *)&v3 safeAreaInsetsDidChange];
  [(VTUIEnrollmentBaseView *)self layoutIfNeeded];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = VTUIEnrollmentBaseView;
  [(VTUIEnrollmentBaseView *)&v4 layoutSubviews];
  backdropView = self->_backdropView;
  if (backdropView)
  {
    [(_UIBackdropView *)backdropView frame];
    [(VTUIEnrollmentBaseView *)self layoutMargins];
    [(UIScrollView *)self->_scrollView setContentInset:?];
    [(UIScrollView *)self->_scrollView verticalScrollIndicatorInsets];
    [(UIScrollView *)self->_scrollView setScrollIndicatorInsets:?];
  }
}

- (void)fadeInSubviews
{
  [(UILabel *)self->_titleLabel setAlpha:0.0];
  [(UILabel *)self->_subtitleLabel setAlpha:0.0];
  [(UILabel *)self->_instructionLabel setAlpha:0.0];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__VTUIEnrollmentBaseView_fadeInSubviews__block_invoke;
  v5[3] = &unk_279E54220;
  v5[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:0 delay:v5 options:0 animations:0.400000006 completion:0.0];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__VTUIEnrollmentBaseView_fadeInSubviews__block_invoke_2;
  v4[3] = &unk_279E54220;
  v4[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:0 delay:v4 options:0 animations:0.400000006 completion:0.300000012];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __40__VTUIEnrollmentBaseView_fadeInSubviews__block_invoke_3;
  v3[3] = &unk_279E54220;
  v3[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:0 delay:v3 options:0 animations:0.400000006 completion:0.600000024];
}

- (double)imageOffsetFromTop
{
  v2 = +[VTUIStyle sharedStyle];
  [v2 orbImageOffsetFromTopEnrollment];
  v4 = v3;

  return v4;
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  WeakRetained = objc_loadWeakRetained(&self->_enrollmentDelegate);
  [WeakRetained aboutTapped:self];

  return 0;
}

- (VTUIEnrollmentDelegate)enrollmentDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_enrollmentDelegate);

  return WeakRetained;
}

@end