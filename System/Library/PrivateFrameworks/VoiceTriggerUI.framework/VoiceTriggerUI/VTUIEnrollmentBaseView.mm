@interface VTUIEnrollmentBaseView
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (VTUIEnrollmentBaseView)initWithFrame:(CGRect)a3;
- (VTUIEnrollmentDelegate)enrollmentDelegate;
- (double)imageOffsetFromTop;
- (id)_createPrivacyTextView;
- (int64_t)_backdropStyle;
- (void)_setupUI;
- (void)fadeInSubviews;
- (void)layoutSubviews;
- (void)safeAreaInsetsDidChange;
- (void)setContentView:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateConstraints;
@end

@implementation VTUIEnrollmentBaseView

- (VTUIEnrollmentBaseView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = VTUIEnrollmentBaseView;
  v3 = [(VTUIEnrollmentBaseView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v4 = [MEMORY[0x277D75128] sharedApplication];
  v5 = [v4 windows];
  v6 = [v5 lastObject];
  v7 = [v6 windowScene];
  v8 = [v7 interfaceOrientation] - 3;

  if (v8 > 1)
  {
    [v3 horizontalPaddingPortrait];
  }

  else
  {
    [v3 horizontalPaddingLandscape];
  }

  v10 = v9;
  v11 = [(VTUIEnrollmentBaseView *)self readableContentGuide];
  v12 = [v11 leftAnchor];
  v13 = [(VTUIEnrollmentBaseView *)self leftAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:v10];
  readableLeftAnchorConstraint = self->_readableLeftAnchorConstraint;
  self->_readableLeftAnchorConstraint = v14;

  v188 = v11;
  v16 = [v11 rightAnchor];
  v17 = [(VTUIEnrollmentBaseView *)self rightAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:-v10];
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
  v25 = 0;
  if (objc_opt_isKindOfClass())
  {
    v26 = objc_alloc_init(MEMORY[0x277CFB468]);
    v25 = [v26 isOptedIn];
  }

  v27 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v200 = "[VTUIEnrollmentBaseView _setupUI]";
    v201 = 1024;
    v202 = isKindOfClass & 1;
    v203 = 1024;
    v204 = v25;
    _os_log_impl(&dword_2728BC000, v27, OS_LOG_TYPE_DEFAULT, "%s Showing EnrollmentView. useWaveform: %d, useNewSiriIcon: %d", buf, 0x18u);
  }

  if (isKindOfClass)
  {
    v28 = [MEMORY[0x277D755B8] systemImageNamed:@"waveform"];
    v25 = 1;
  }

  else
  {
    v28 = [v3 siriIconImage];
  }

  v186 = v28;
  v29 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v28];
  if (v25)
  {
    v30 = [MEMORY[0x277D75348] systemBlueColor];
    [v29 setTintColor:v30];
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
  v34 = [v3 instructionLabelFont];
  [(UILabel *)self->_titleLabel setFont:v34];

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
  v38 = [v3 subtitleFont];
  [(UILabel *)self->_subtitleLabel setFont:v38];

  [(UILabel *)self->_subtitleLabel setNumberOfLines:0];
  if (+[VTUIFeatureFlags isNaturalUIEnabled])
  {
    v39 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)self->_subtitleLabel setTextColor:v39];
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
  v43 = [v3 subtitleFont];
  [(UILabel *)self->_instructionLabel setFont:v43];

  [(UILabel *)self->_instructionLabel setNumberOfLines:0];
  if (+[VTUIFeatureFlags isNaturalUIEnabled])
  {
    v44 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)self->_instructionLabel setTextColor:v44];
  }

  [(UIView *)self->_scrollContainerView addSubview:self->_instructionLabel];
  v140 = MEMORY[0x277CCAAD0];
  v165 = [(UIScrollView *)self->_scrollView topAnchor];
  v159 = [(VTUIEnrollmentBaseView *)self topAnchor];
  v155 = [v165 constraintEqualToAnchor:v159];
  v198[0] = v155;
  v152 = [(UIScrollView *)self->_scrollView leftAnchor];
  v150 = [(VTUIEnrollmentBaseView *)self leftAnchor];
  v148 = [v152 constraintEqualToAnchor:v150];
  v198[1] = v148;
  v146 = [(UIScrollView *)self->_scrollView rightAnchor];
  v144 = [(VTUIEnrollmentBaseView *)self rightAnchor];
  v143 = [v146 constraintEqualToAnchor:v144];
  v198[2] = v143;
  v142 = [(UIScrollView *)self->_scrollView bottomAnchor];
  v141 = [(VTUIEnrollmentBaseView *)self bottomAnchor];
  v139 = [v142 constraintEqualToAnchor:v141];
  v198[3] = v139;
  v138 = [(UIView *)self->_scrollContainerView topAnchor];
  v137 = [(UIScrollView *)self->_scrollView topAnchor];
  v136 = [v138 constraintEqualToAnchor:v137];
  v198[4] = v136;
  v135 = [(UIView *)self->_scrollContainerView leftAnchor];
  v134 = [(UIScrollView *)self->_scrollView leftAnchor];
  v133 = [v135 constraintEqualToAnchor:v134];
  v198[5] = v133;
  v132 = [(UIView *)self->_scrollContainerView rightAnchor];
  v45 = [(UIScrollView *)self->_scrollView rightAnchor];
  v46 = [v132 constraintEqualToAnchor:v45];
  v198[6] = v46;
  v47 = [(UIView *)self->_scrollContainerView widthAnchor];
  v48 = [(UIScrollView *)self->_scrollView widthAnchor];
  v49 = [v47 constraintEqualToAnchor:v48];
  v198[7] = v49;
  v50 = [(UIView *)self->_scrollContainerView bottomAnchor];
  v51 = [(UIScrollView *)self->_scrollView bottomAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];
  v198[8] = v52;
  v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v198 count:9];
  [v140 activateConstraints:v53];

  v153 = MEMORY[0x277CCAAD0];
  v166 = [(UIImageView *)*p_iconImageView topAnchor];
  v160 = [(UIView *)self->_scrollContainerView topAnchor];
  [(VTUIEnrollmentBaseView *)self imageOffsetFromTop];
  v156 = [v166 constraintEqualToAnchor:v160 constant:?];
  v197[0] = v156;
  v54 = [(UIImageView *)*p_iconImageView centerXAnchor];
  v55 = [(UIView *)self->_scrollContainerView centerXAnchor];
  v56 = [v54 constraintEqualToAnchor:v55];
  v197[1] = v56;
  v57 = [(UIImageView *)*p_iconImageView widthAnchor];
  [v189 orbImageLength];
  v58 = [v57 constraintEqualToConstant:?];
  v197[2] = v58;
  v59 = [(UIImageView *)*p_iconImageView heightAnchor];
  [v189 orbImageLength];
  v60 = [v59 constraintEqualToConstant:?];
  v197[3] = v60;
  v61 = [MEMORY[0x277CBEA60] arrayWithObjects:v197 count:4];
  [v153 activateConstraints:v61];

  v161 = MEMORY[0x277CCAAD0];
  v167 = [(UILabel *)self->_titleLabel topAnchor];
  v175 = [(UIImageView *)*p_iconImageView bottomAnchor];
  [v189 titleOffsetFromOrbImage];
  v62 = [v167 constraintEqualToAnchor:v175 constant:?];
  v196[0] = v62;
  v63 = [(UILabel *)self->_titleLabel widthAnchor];
  v64 = [v188 widthAnchor];
  v65 = [v63 constraintEqualToAnchor:v64];
  v196[1] = v65;
  v66 = [(UILabel *)self->_titleLabel centerXAnchor];
  v67 = [(UIView *)self->_scrollContainerView centerXAnchor];
  v68 = [v66 constraintEqualToAnchor:v67];
  v196[2] = v68;
  v69 = [MEMORY[0x277CBEA60] arrayWithObjects:v196 count:3];
  [v161 activateConstraints:v69];

  v168 = MEMORY[0x277CCAAD0];
  v176 = [(UILabel *)self->_subtitleLabel topAnchor];
  v180 = [(UILabel *)self->_titleLabel bottomAnchor];
  [v189 subtitle1BaselineOffset];
  v70 = [v176 constraintEqualToAnchor:v180 constant:?];
  v195[0] = v70;
  v71 = [(UILabel *)self->_subtitleLabel widthAnchor];
  v72 = [v188 widthAnchor];
  v73 = [v71 constraintEqualToAnchor:v72];
  v195[1] = v73;
  v74 = [(UILabel *)self->_subtitleLabel centerXAnchor];
  v75 = [(UIView *)self->_scrollContainerView centerXAnchor];
  v76 = [v74 constraintEqualToAnchor:v75];
  v195[2] = v76;
  v77 = [MEMORY[0x277CBEA60] arrayWithObjects:v195 count:3];
  [v168 activateConstraints:v77];

  v162 = MEMORY[0x277CCAAD0];
  v181 = [(UILabel *)self->_instructionLabel topAnchor];
  v183 = [(UILabel *)self->_subtitleLabel bottomAnchor];
  [v189 subtitle2BaselineOffset];
  v177 = [v181 constraintEqualToAnchor:v183 constant:?];
  v194[0] = v177;
  v169 = [(UILabel *)self->_instructionLabel widthAnchor];
  v78 = [v188 widthAnchor];
  v79 = [v169 constraintEqualToAnchor:v78];
  v194[1] = v79;
  v80 = [(UILabel *)self->_instructionLabel centerXAnchor];
  v81 = [(UIView *)self->_scrollContainerView centerXAnchor];
  v82 = [v80 constraintEqualToAnchor:v81];
  v194[2] = v82;
  v83 = [(UILabel *)self->_instructionLabel bottomAnchor];
  v84 = [(UIView *)self->_scrollContainerView bottomAnchor];
  [v189 subtitle2BaselineOffset];
  v86 = [v83 constraintEqualToAnchor:v84 constant:-v85];
  v194[3] = v86;
  v87 = [MEMORY[0x277CBEA60] arrayWithObjects:v194 count:4];
  [v162 activateConstraints:v87];

  v88 = [(VTUIEnrollmentBaseView *)self footerView];
  if ([(VTUIEnrollmentBaseView *)self showPrivacyTextView]|| v88)
  {
    v89 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:{-[VTUIEnrollmentBaseView _backdropStyle](self, "_backdropStyle")}];
    backdropView = self->_backdropView;
    self->_backdropView = v89;

    [(_UIBackdropView *)self->_backdropView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(VTUIEnrollmentBaseView *)self addSubview:self->_backdropView];
    if ([(VTUIEnrollmentBaseView *)self showPrivacyTextView])
    {
      v91 = [(VTUIEnrollmentBaseView *)self _createPrivacyTextView];
      privacyTextView = self->_privacyTextView;
      self->_privacyTextView = v91;

      [(VTUIEnrollmentBaseView *)self addSubview:self->_privacyTextView];
    }

    if (v88)
    {
      [(UITextView *)v88 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(VTUIEnrollmentBaseView *)self addSubview:v88];
    }

    v93 = self->_privacyTextView;
    if (!v93)
    {
      v93 = v88;
    }

    v94 = v93;
    v157 = MEMORY[0x277CCAAD0];
    v184 = v94;
    v178 = [(UITextView *)v94 topAnchor];
    v172 = [(_UIBackdropView *)self->_backdropView topAnchor];
    v170 = [v178 constraintEqualToSystemSpacingBelowAnchor:v172 multiplier:1.0];
    v193[0] = v170;
    v163 = [(_UIBackdropView *)self->_backdropView leftAnchor];
    v95 = [(VTUIEnrollmentBaseView *)self leftAnchor];
    v96 = [v163 constraintEqualToAnchor:v95];
    v193[1] = v96;
    v97 = [(_UIBackdropView *)self->_backdropView rightAnchor];
    v98 = [(VTUIEnrollmentBaseView *)self rightAnchor];
    [v97 constraintEqualToAnchor:v98];
    v99 = v187 = v88;
    v193[2] = v99;
    v100 = [(_UIBackdropView *)self->_backdropView bottomAnchor];
    v101 = [(VTUIEnrollmentBaseView *)self bottomAnchor];
    v102 = [v100 constraintEqualToAnchor:v101];
    v193[3] = v102;
    v103 = [MEMORY[0x277CBEA60] arrayWithObjects:v193 count:4];
    [v157 activateConstraints:v103];

    v88 = v187;
    v104 = self->_privacyTextView;
    v105 = MEMORY[0x277CCAAD0];
    if (v104 && v187)
    {
      v164 = [(UITextView *)v104 leftAnchor];
      v151 = [v188 leftAnchor];
      v171 = [v164 constraintEqualToAnchor:v151];
      v192[0] = v171;
      v154 = [(UITextView *)self->_privacyTextView rightAnchor];
      v158 = [v188 rightAnchor];
      v147 = [v154 constraintEqualToAnchor:v158];
      v192[1] = v147;
      v149 = [(UITextView *)self->_privacyTextView bottomAnchor];
      v182 = [(UITextView *)v187 topAnchor];
      v179 = [v149 constraintEqualToAnchor:?];
      v192[2] = v179;
      v106 = [(UITextView *)v187 leftAnchor];
      v107 = [v188 leftAnchor];
      v173 = v106;
      v145 = [v106 constraintEqualToAnchor:v107];
      v192[3] = v145;
      v108 = [(UITextView *)v187 rightAnchor];
      v109 = [v188 rightAnchor];
      v110 = [v108 constraintEqualToAnchor:v109];
      v192[4] = v110;
      v111 = [(UITextView *)v187 bottomAnchor];
      v112 = [(VTUIEnrollmentBaseView *)self safeAreaLayoutGuide];
      [v112 bottomAnchor];
      v114 = v113 = v105;
      v115 = [v111 constraintEqualToAnchor:v114];
      v192[5] = v115;
      v116 = [MEMORY[0x277CBEA60] arrayWithObjects:v192 count:6];
      v117 = v113;
      v118 = v147;
      [v117 activateConstraints:v116];

      v119 = v151;
      v120 = v164;

      v121 = v149;
      v88 = v187;

      v122 = v154;
      v123 = v158;

      v124 = v171;
    }

    else
    {
      if (v104)
      {
        v120 = [(UITextView *)v104 leftAnchor];
        v119 = [v188 leftAnchor];
        v124 = [v120 constraintEqualToAnchor:v119];
        v191[0] = v124;
        v122 = [(UITextView *)self->_privacyTextView rightAnchor];
        v123 = [v188 rightAnchor];
        v118 = [v122 constraintEqualToAnchor:v123];
        v191[1] = v118;
        v125 = [(UITextView *)self->_privacyTextView bottomAnchor];
        v126 = self;
        v121 = v125;
        v182 = [(VTUIEnrollmentBaseView *)v126 safeAreaLayoutGuide];
        v179 = [v182 bottomAnchor];
        v173 = [v121 constraintEqualToAnchor:?];
        v191[2] = v173;
        v127 = MEMORY[0x277CBEA60];
        v128 = v191;
      }

      else
      {
        v120 = [(UITextView *)v187 leftAnchor];
        v119 = [v188 leftAnchor];
        v124 = [v120 constraintEqualToAnchor:v119];
        v190[0] = v124;
        v122 = [(UITextView *)v187 rightAnchor];
        v123 = [v188 rightAnchor];
        v118 = [v122 constraintEqualToAnchor:v123];
        v190[1] = v118;
        v129 = [(UITextView *)v187 bottomAnchor];
        v130 = self;
        v121 = v129;
        v182 = [(VTUIEnrollmentBaseView *)v130 safeAreaLayoutGuide];
        v179 = [v182 bottomAnchor];
        v173 = [v121 constraintEqualToAnchor:?];
        v190[2] = v173;
        v127 = MEMORY[0x277CBEA60];
        v128 = v190;
      }

      v107 = [v127 arrayWithObjects:v128 count:3];
      [v105 activateConstraints:v107];
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
  v5 = [v4 textContainer];
  [v5 setLineFragmentPadding:0.0];

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
  v9 = [MEMORY[0x277D74240] defaultParagraphStyle];
  v10 = [v9 mutableCopy];

  [v10 setAlignment:1];
  v11 = objc_alloc(MEMORY[0x277CCAB48]);
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v7, v8];
  v13 = *MEMORY[0x277D74118];
  v30[0] = v10;
  v14 = *MEMORY[0x277D740A8];
  v29[0] = v13;
  v29[1] = v14;
  v15 = [v3 footerLabelFont];
  v30[1] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
  v17 = [v11 initWithString:v12 attributes:v16];

  if ([v8 length])
  {
    v18 = [v7 length];
    v19 = [v8 length];
    v20 = *MEMORY[0x277D740C0];
    v21 = [v3 footerTextColor];
    [v17 addAttribute:v20 value:v21 range:{0, v18 + 1}];

    v22 = [v3 buttonTextColor];
    [v17 addAttribute:v20 value:v22 range:{v18 + 1, v19}];

    v23 = *MEMORY[0x277D740E8];
    v24 = [MEMORY[0x277CBEBC0] URLWithString:&stru_2881E5778];
    [v17 addAttribute:v23 value:v24 range:{v18 + 1, v19}];

    v25 = [v3 footerLabelFont];
    [v4 setFont:v25];

    v26 = [MEMORY[0x277D75348] clearColor];
    [v4 setBackgroundColor:v26];

    [v4 setAttributedText:v17];
    [v4 setEditable:0];
    [v4 setScrollEnabled:0];
    [v4 setDataDetectorTypes:2];
    [v4 _setInteractiveTextSelectionDisabled:1];
  }

  v27 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = VTUIEnrollmentBaseView;
  [(VTUIEnrollmentBaseView *)&v4 traitCollectionDidChange:a3];
  [(_UIBackdropView *)self->_backdropView transitionToPrivateStyle:[(VTUIEnrollmentBaseView *)self _backdropStyle]];
}

- (int64_t)_backdropStyle
{
  v2 = [(VTUIEnrollmentBaseView *)self traitCollection];
  v3 = [v2 userInterfaceStyle];

  if (v3 == 2)
  {
    return 2030;
  }

  else
  {
    return 2020;
  }
}

- (void)setContentView:(id)a3
{
  v26[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(UIView *)self->_contentView removeFromSuperview];
  [(UILabel *)self->_instructionLabel removeFromSuperview];
  instructionLabel = self->_instructionLabel;
  self->_instructionLabel = 0;

  v23 = [(VTUIEnrollmentBaseView *)self readableContentGuide];
  v6 = +[VTUIStyle sharedStyle];
  contentView = self->_contentView;
  self->_contentView = v4;
  v22 = v4;

  [(UIView *)self->_scrollContainerView addSubview:self->_contentView];
  [(UIView *)self->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = MEMORY[0x277CCAAD0];
  v25 = [(UIView *)self->_contentView topAnchor];
  v24 = [(UILabel *)self->_subtitleLabel bottomAnchor];
  [v6 subtitle2BaselineOffset];
  v21 = [v25 constraintEqualToAnchor:v24 constant:?];
  v26[0] = v21;
  v20 = [(UIView *)self->_contentView widthAnchor];
  v8 = [v23 widthAnchor];
  v9 = [v20 constraintEqualToAnchor:v8];
  v26[1] = v9;
  v10 = [(UIView *)self->_contentView centerXAnchor];
  v11 = [(UIView *)self->_scrollContainerView centerXAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v26[2] = v12;
  v13 = [(UIView *)self->_contentView bottomAnchor];
  v14 = [(UIView *)self->_scrollContainerView bottomAnchor];
  [v6 subtitle2BaselineOffset];
  v16 = [v13 constraintEqualToAnchor:v14 constant:-v15];
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
  v4 = [MEMORY[0x277D75128] sharedApplication];
  v5 = [v4 windows];
  v6 = [v5 lastObject];
  v7 = [v6 windowScene];
  v8 = [v7 interfaceOrientation] - 3;

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

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
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