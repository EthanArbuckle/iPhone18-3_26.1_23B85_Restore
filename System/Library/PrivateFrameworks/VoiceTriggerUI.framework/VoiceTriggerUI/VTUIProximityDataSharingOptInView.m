@interface VTUIProximityDataSharingOptInView
- (VTUIProximityDataSharingOptInView)initWithFrame:(CGRect)a3;
- (void)_setupContent;
- (void)_setupPortraitConstraints;
@end

@implementation VTUIProximityDataSharingOptInView

- (VTUIProximityDataSharingOptInView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = VTUIProximityDataSharingOptInView;
  v3 = [(VTUIProximityDataSharingOptInView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(VTUIProximityDataSharingOptInView *)v3 _setupContent];
    [(VTUIProximityDataSharingOptInView *)v4 _setupPortraitConstraints];
  }

  return v4;
}

- (void)_setupContent
{
  v63 = *MEMORY[0x277D85DE8];
  v3 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    v61 = 136315138;
    v62 = "[VTUIProximityDataSharingOptInView _setupContent]";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s Setup content", &v61, 0xCu);
  }

  v4 = +[VTUIStyle sharedStyle];
  v5 = objc_alloc_init(VTUIProximityContainerView);
  containerView = self->_containerView;
  self->_containerView = v5;

  [(VTUIProximityContainerView *)self->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(VTUIProximityDataSharingOptInView *)self addSubview:self->_containerView];
  v7 = objc_alloc_init(MEMORY[0x277D759D8]);
  scrollView = self->_scrollView;
  self->_scrollView = v7;

  [(UIScrollView *)self->_scrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = objc_alloc_init(MEMORY[0x277D756B8]);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v9;

  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = self->_titleLabel;
  v12 = [v4 proxHeaderFont];
  [(UILabel *)v11 setFont:v12];

  v13 = self->_titleLabel;
  v14 = [v4 proxHeaderColor];
  [(UILabel *)v13 setTextColor:v14];

  [(UILabel *)self->_titleLabel setTextAlignment:1];
  [(UILabel *)self->_titleLabel setAdjustsFontSizeToFitWidth:1];
  v15 = self->_titleLabel;
  v16 = +[VTUIStringsHelper sharedStringsHelper];
  v17 = [v16 uiLocalizedStringForKey:@"DATA_SHARING_TITLE_SIRI"];
  [(UILabel *)v15 setText:v17];

  [(UIScrollView *)self->_scrollView addSubview:self->_titleLabel];
  v18 = +[VTUIButton _vtuiProximityDismissButton];
  dismissButton = self->_dismissButton;
  self->_dismissButton = v18;

  [(UIButton *)self->_dismissButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(VTUIProximityContainerView *)self->_containerView addSubview:self->_dismissButton];
  v20 = objc_alloc_init(MEMORY[0x277D756B8]);
  subtitleLabel = self->_subtitleLabel;
  self->_subtitleLabel = v20;

  [(UILabel *)self->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = self->_subtitleLabel;
  v23 = [v4 proxSubtitleFont];
  [(UILabel *)v22 setFont:v23];

  [(UILabel *)self->_subtitleLabel setTextAlignment:1];
  [(UILabel *)self->_subtitleLabel setNumberOfLines:0];
  v24 = self->_subtitleLabel;
  v25 = [v4 VTUIDeviceSpecificString:@"DATA_SHARING_DETAIL"];
  [(UILabel *)v24 setText:v25];

  v26 = self->_subtitleLabel;
  v27 = [v4 proxSubtitleColor];
  [(UILabel *)v26 setTextColor:v27];

  [(UILabel *)self->_subtitleLabel setAdjustsFontSizeToFitWidth:1];
  [(UIScrollView *)self->_scrollView addSubview:self->_subtitleLabel];
  [(VTUIProximityContainerView *)self->_containerView addSubview:self->_scrollView];
  v28 = [objc_alloc(MEMORY[0x277D76220]) initWithScrollView:self->_scrollView edge:4 style:0];
  [v4 proxViewHeight];
  v30 = v29;
  [v4 proxPrimaryButtonHeight];
  v32 = v30 + v31 * -3.0;
  [v4 proxPageFirstBaselineBottom];
  v34 = v32 - v33;
  [v4 proxTrainingNotNowButtonVerticalPaddingTop];
  v36 = v34 - v35;
  [v4 proxViewMaxWidth];
  v38 = v37;
  [v4 proxPrimaryButtonHeight];
  [v28 _setRect:{0.0, v36, v38, v39}];
  [(VTUIProximityContainerView *)self->_containerView addInteraction:v28];
  v40 = [VTUIButton _vtuiProximityButtonWithSecondaryStyle:1];
  aboutLink = self->_aboutLink;
  self->_aboutLink = v40;

  [(UIButton *)self->_aboutLink setTranslatesAutoresizingMaskIntoConstraints:0];
  v42 = [(UIButton *)self->_aboutLink titleLabel];
  v43 = [v4 proxSubtitleFont];
  [v42 setFont:v43];

  v44 = self->_aboutLink;
  v45 = +[VTUIStringsHelper sharedStringsHelper];
  v46 = [v45 uiLocalizedStringForKey:@"DATA_SHARING_DETAIL_LINK"];
  [(UIButton *)v44 setTitle:v46 forState:0];

  v47 = [(UIButton *)self->_aboutLink titleLabel];
  [v47 setNumberOfLines:0];

  [(VTUIProximityContainerView *)self->_containerView addSubview:self->_aboutLink];
  v48 = +[VTUIButton _vtuiProximityButtonWithPrimaryStyle];
  shareButton = self->_shareButton;
  self->_shareButton = v48;

  [(VTUIButton *)self->_shareButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v50 = self->_shareButton;
  v51 = +[VTUIStringsHelper sharedStringsHelper];
  v52 = [v51 uiLocalizedStringForKey:@"DATA_SHARING_CONFIRMATION_BUTTON_TITLE"];
  [(VTUIButton *)v50 setTitle:v52 forState:0];

  v53 = [(VTUIButton *)self->_shareButton titleLabel];
  [v53 setNumberOfLines:0];

  [(VTUIProximityContainerView *)self->_containerView addSubview:self->_shareButton];
  v54 = +[VTUIButton _vtuiProximityButtonWithSecondaryStyle];
  notNowButton = self->_notNowButton;
  self->_notNowButton = v54;

  [(VTUIButton *)self->_notNowButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v56 = self->_notNowButton;
  v57 = +[VTUIStringsHelper sharedStringsHelper];
  v58 = [v57 uiLocalizedStringForKey:@"DATA_SHARING_DECLINE_BUTTON_TITLE"];
  [(VTUIButton *)v56 setTitle:v58 forState:0];

  v59 = [(VTUIButton *)self->_notNowButton titleLabel];
  [v59 setNumberOfLines:0];

  [(VTUIProximityContainerView *)self->_containerView addSubview:self->_notNowButton];
  v60 = *MEMORY[0x277D85DE8];
}

- (void)_setupPortraitConstraints
{
  v168[5] = *MEMORY[0x277D85DE8];
  v3 = [(VTUIProximityDataSharingOptInView *)self safeAreaLayoutGuide];
  v156 = [(VTUIProximityContainerView *)self->_containerView safeAreaLayoutGuide];
  v157 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = +[VTUIStyle sharedStyle];
  v5 = [(VTUIProximityContainerView *)self->_containerView bottomAnchor];
  v6 = [(VTUIProximityDataSharingOptInView *)self bottomAnchor];
  [v4 proxContainerHorizontalVerticalPadding];
  v8 = [v5 constraintEqualToAnchor:v6 constant:-v7];

  v9 = [(VTUIProximityContainerView *)self->_containerView leadingAnchor];
  v10 = [v3 leadingAnchor];
  [v4 proxContainerHorizontalVerticalPadding];
  v11 = [v9 constraintEqualToAnchor:v10 constant:?];

  v12 = [(VTUIProximityContainerView *)self->_containerView trailingAnchor];
  v13 = [v3 trailingAnchor];
  [v4 proxContainerHorizontalVerticalPadding];
  v15 = [v12 constraintEqualToAnchor:v13 constant:-v14];

  v16 = [(VTUIProximityContainerView *)self->_containerView heightAnchor];
  [v4 proxViewHeight];
  v17 = [v16 constraintGreaterThanOrEqualToConstant:?];

  v18 = [(VTUIProximityContainerView *)self->_containerView heightAnchor];
  v155 = v3;
  v19 = [v3 heightAnchor];
  v20 = [v18 constraintLessThanOrEqualToAnchor:v19 constant:0.0];

  v154 = v8;
  v168[0] = v8;
  v168[1] = v11;
  v152 = v17;
  v153 = v15;
  v168[2] = v15;
  v168[3] = v17;
  v151 = v20;
  v168[4] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v168 count:5];
  [v157 addObjectsFromArray:v21];

  v22 = [(UIScrollView *)self->_scrollView topAnchor];
  v23 = [v156 topAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:0.0];

  v25 = [(UIScrollView *)self->_scrollView leadingAnchor];
  v26 = [v156 leadingAnchor];
  [v4 proxLeading];
  v27 = [v25 constraintEqualToAnchor:v26 constant:?];

  v28 = [(UIScrollView *)self->_scrollView trailingAnchor];
  v29 = [v156 trailingAnchor];
  [v4 proxTrailing];
  v31 = [v28 constraintEqualToAnchor:v29 constant:-v30];

  v32 = [(UIScrollView *)self->_scrollView bottomAnchor];
  v33 = [(UIButton *)self->_aboutLink bottomAnchor];
  v34 = [v32 constraintEqualToAnchor:v33 constant:0.0];

  v149 = v27;
  v150 = v24;
  v167[0] = v24;
  v167[1] = v27;
  v147 = v34;
  v148 = v31;
  v167[2] = v31;
  v167[3] = v34;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v167 count:4];
  [v157 addObjectsFromArray:v35];

  v36 = [(UILabel *)self->_titleLabel firstBaselineAnchor];
  v37 = [(UIScrollView *)self->_scrollView topAnchor];
  [v4 proxTitleFirstBaselineFromTop];
  v39 = v38;
  [v4 proxAboutLinkFirstBaselineFromTop];
  v41 = [v36 constraintEqualToAnchor:v37 constant:v39 - v40];

  v42 = [(UILabel *)self->_titleLabel leadingAnchor];
  v43 = [v156 leadingAnchor];
  [v4 proxLeading];
  v44 = [v42 constraintEqualToAnchor:v43 constant:?];

  v45 = [(UILabel *)self->_titleLabel trailingAnchor];
  v46 = [v156 trailingAnchor];
  [v4 proxTrailing];
  v48 = [v45 constraintEqualToAnchor:v46 constant:-v47];

  v145 = v44;
  v146 = v41;
  v166[0] = v41;
  v166[1] = v44;
  v144 = v48;
  v166[2] = v48;
  v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v166 count:3];
  [v157 addObjectsFromArray:v49];

  v50 = [(UIButton *)self->_dismissButton centerYAnchor];
  v51 = [v156 topAnchor];
  [v4 proxTrainingDismissButtonVerticalPaddingTop];
  v52 = [v50 constraintEqualToAnchor:v51 constant:?];

  v53 = [(UIButton *)self->_dismissButton centerXAnchor];
  v54 = [v156 trailingAnchor];
  [v4 proxTrainingDismissButtonHorizontalPadding];
  v55 = [v53 constraintEqualToAnchor:v54 constant:?];

  v56 = [(UIButton *)self->_dismissButton widthAnchor];
  [v4 proxTrainingDismissButtonWidthOrHeight];
  v57 = [v56 constraintEqualToConstant:?];

  v58 = [(UIButton *)self->_dismissButton heightAnchor];
  [v4 proxTrainingDismissButtonWidthOrHeight];
  v59 = [v58 constraintEqualToConstant:?];

  v142 = v55;
  v143 = v52;
  v165[0] = v52;
  v165[1] = v55;
  v140 = v59;
  v141 = v57;
  v165[2] = v57;
  v165[3] = v59;
  v60 = [MEMORY[0x277CBEA60] arrayWithObjects:v165 count:4];
  [v157 addObjectsFromArray:v60];

  v61 = [(UILabel *)self->_subtitleLabel topAnchor];
  v62 = [(UILabel *)self->_titleLabel bottomAnchor];
  [v4 proxPaddingDataSharingSubtitle];
  v63 = [v61 constraintEqualToAnchor:v62 constant:?];

  v64 = [(UILabel *)self->_subtitleLabel leadingAnchor];
  v65 = [v156 leadingAnchor];
  [v4 proxLeading];
  v66 = [v64 constraintEqualToAnchor:v65 constant:?];

  v67 = [(UILabel *)self->_subtitleLabel trailingAnchor];
  v68 = [v156 trailingAnchor];
  [v4 proxTrailing];
  v70 = [v67 constraintEqualToAnchor:v68 constant:-v69];

  v71 = [(UILabel *)self->_subtitleLabel bottomAnchor];
  v72 = [(UIScrollView *)self->_scrollView bottomAnchor];
  [v4 proxPrimaryButtonHeight];
  v74 = [v71 constraintEqualToAnchor:v72 constant:-v73];

  v138 = v66;
  v139 = v63;
  v164[0] = v63;
  v164[1] = v66;
  v136 = v74;
  v137 = v70;
  v164[2] = v70;
  v164[3] = v74;
  v75 = [MEMORY[0x277CBEA60] arrayWithObjects:v164 count:4];
  [v157 addObjectsFromArray:v75];

  v76 = [(UIButton *)self->_aboutLink leadingAnchor];
  v77 = [v156 leadingAnchor];
  [v4 proxLeading];
  v78 = [v76 constraintEqualToAnchor:v77 constant:?];

  v79 = [(UIButton *)self->_aboutLink trailingAnchor];
  v80 = [v156 trailingAnchor];
  [v4 proxTrailing];
  v82 = [v79 constraintEqualToAnchor:v80 constant:-v81];

  v83 = [(UIButton *)self->_aboutLink bottomAnchor];
  v84 = [(VTUIButton *)self->_shareButton topAnchor];
  v85 = [v83 constraintEqualToAnchor:v84 constant:0.0];

  if (+[VTUIFeatureFlags isNaturalUIEnabled])
  {
    v86 = [(UIButton *)self->_aboutLink heightAnchor];
    [v4 proxPrimaryButtonHeight];
    v87 = [v86 constraintEqualToConstant:?];

    v163[0] = v78;
    v163[1] = v82;
    v163[2] = v85;
    v163[3] = v87;
    v88 = [MEMORY[0x277CBEA60] arrayWithObjects:v163 count:4];
    [v157 addObjectsFromArray:v88];
  }

  else
  {
    v162[0] = v78;
    v162[1] = v82;
    v162[2] = v85;
    v87 = [MEMORY[0x277CBEA60] arrayWithObjects:v162 count:3];
    [v157 addObjectsFromArray:v87];
  }

  v134 = v78;

  v89 = [(VTUIButton *)self->_notNowButton leadingAnchor];
  v90 = [v156 leadingAnchor];
  [v4 proxLeading];
  v91 = [v89 constraintEqualToAnchor:v90 constant:?];

  v92 = [(VTUIButton *)self->_notNowButton trailingAnchor];
  v93 = [v156 trailingAnchor];
  [v4 proxTrailing];
  v95 = [v92 constraintEqualToAnchor:v93 constant:-v94];

  v96 = +[VTUIFeatureFlags isNaturalUIEnabled];
  notNowButton = self->_notNowButton;
  if (v96)
  {
    v98 = [(VTUIButton *)notNowButton bottomAnchor:v91];
    v99 = [(VTUIProximityContainerView *)self->_containerView bottomAnchor];
    [v4 proxTrainingDismissButtonVerticalPaddingBottom];
    v101 = [v98 constraintEqualToAnchor:v99 constant:-v100];

    v102 = [(VTUIButton *)self->_notNowButton heightAnchor];
    [v4 proxPrimaryButtonHeight];
    v103 = [v102 constraintEqualToConstant:?];

    v161[0] = v91;
    v161[1] = v95;
    v104 = v95;
    v161[2] = v101;
    v161[3] = v103;
    v105 = [MEMORY[0x277CBEA60] arrayWithObjects:v161 count:4];
    [v157 addObjectsFromArray:v105];
  }

  else
  {
    v106 = [(VTUIButton *)notNowButton firstBaselineAnchor:v91];
    v107 = [(VTUIProximityContainerView *)self->_containerView bottomAnchor];
    [v4 proxTrainingDismissButtonVerticalPaddingBottom];
    v101 = [v106 constraintEqualToAnchor:v107 constant:-v108];

    v160[0] = v91;
    v160[1] = v95;
    v104 = v95;
    v160[2] = v101;
    v103 = [MEMORY[0x277CBEA60] arrayWithObjects:v160 count:3];
    [v157 addObjectsFromArray:v103];
  }

  v109 = [(VTUIButton *)self->_shareButton leadingAnchor];
  v110 = [v156 leadingAnchor];
  [v4 proxLeading];
  v111 = [v109 constraintEqualToAnchor:v110 constant:?];

  v112 = [(VTUIButton *)self->_shareButton trailingAnchor];
  v113 = [v156 trailingAnchor];
  [v4 proxTrailing];
  v115 = [v112 constraintEqualToAnchor:v113 constant:-v114];

  v116 = +[VTUIFeatureFlags isNaturalUIEnabled];
  shareButton = self->_shareButton;
  if (v116)
  {
    v118 = [(VTUIButton *)shareButton bottomAnchor];
    v119 = [(VTUIButton *)self->_notNowButton topAnchor];
    [v4 proxTrainingNotNowButtonVerticalPaddingTop];
    v121 = [v118 constraintEqualToAnchor:v119 constant:-v120];

    v122 = [(VTUIButton *)self->_shareButton heightAnchor];
    [v4 proxPrimaryButtonHeight];
    v123 = [v122 constraintEqualToConstant:?];

    v159 = v111;
    v124 = &v159;
  }

  else
  {
    v125 = [(VTUIButton *)shareButton firstBaselineAnchor];
    v126 = [(VTUIButton *)self->_notNowButton topAnchor];
    [v4 proxTrainingDismissButtonVerticalPaddingTop];
    v121 = [v125 constraintEqualToAnchor:v126 constant:-v127];

    v128 = [(VTUIButton *)self->_shareButton heightAnchor];
    [v4 proxPrimaryButtonHeight];
    v123 = [v128 constraintEqualToConstant:?];

    v158 = v111;
    v124 = &v158;
  }

  v124[1] = v115;
  v124[2] = v121;
  v124[3] = v123;
  v129 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  [v157 addObjectsFromArray:v129];

  [MEMORY[0x277CCAAD0] activateConstraints:v157];
  [(VTUIProximityDataSharingOptInView *)self addConstraints:v157];

  v130 = *MEMORY[0x277D85DE8];
}

@end