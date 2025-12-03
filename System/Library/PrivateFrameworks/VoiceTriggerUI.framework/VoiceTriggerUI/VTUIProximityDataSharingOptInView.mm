@interface VTUIProximityDataSharingOptInView
- (VTUIProximityDataSharingOptInView)initWithFrame:(CGRect)frame;
- (void)_setupContent;
- (void)_setupPortraitConstraints;
@end

@implementation VTUIProximityDataSharingOptInView

- (VTUIProximityDataSharingOptInView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = VTUIProximityDataSharingOptInView;
  v3 = [(VTUIProximityDataSharingOptInView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  proxHeaderFont = [v4 proxHeaderFont];
  [(UILabel *)v11 setFont:proxHeaderFont];

  v13 = self->_titleLabel;
  proxHeaderColor = [v4 proxHeaderColor];
  [(UILabel *)v13 setTextColor:proxHeaderColor];

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
  proxSubtitleFont = [v4 proxSubtitleFont];
  [(UILabel *)v22 setFont:proxSubtitleFont];

  [(UILabel *)self->_subtitleLabel setTextAlignment:1];
  [(UILabel *)self->_subtitleLabel setNumberOfLines:0];
  v24 = self->_subtitleLabel;
  v25 = [v4 VTUIDeviceSpecificString:@"DATA_SHARING_DETAIL"];
  [(UILabel *)v24 setText:v25];

  v26 = self->_subtitleLabel;
  proxSubtitleColor = [v4 proxSubtitleColor];
  [(UILabel *)v26 setTextColor:proxSubtitleColor];

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
  titleLabel = [(UIButton *)self->_aboutLink titleLabel];
  proxSubtitleFont2 = [v4 proxSubtitleFont];
  [titleLabel setFont:proxSubtitleFont2];

  v44 = self->_aboutLink;
  v45 = +[VTUIStringsHelper sharedStringsHelper];
  v46 = [v45 uiLocalizedStringForKey:@"DATA_SHARING_DETAIL_LINK"];
  [(UIButton *)v44 setTitle:v46 forState:0];

  titleLabel2 = [(UIButton *)self->_aboutLink titleLabel];
  [titleLabel2 setNumberOfLines:0];

  [(VTUIProximityContainerView *)self->_containerView addSubview:self->_aboutLink];
  v48 = +[VTUIButton _vtuiProximityButtonWithPrimaryStyle];
  shareButton = self->_shareButton;
  self->_shareButton = v48;

  [(VTUIButton *)self->_shareButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v50 = self->_shareButton;
  v51 = +[VTUIStringsHelper sharedStringsHelper];
  v52 = [v51 uiLocalizedStringForKey:@"DATA_SHARING_CONFIRMATION_BUTTON_TITLE"];
  [(VTUIButton *)v50 setTitle:v52 forState:0];

  titleLabel3 = [(VTUIButton *)self->_shareButton titleLabel];
  [titleLabel3 setNumberOfLines:0];

  [(VTUIProximityContainerView *)self->_containerView addSubview:self->_shareButton];
  v54 = +[VTUIButton _vtuiProximityButtonWithSecondaryStyle];
  notNowButton = self->_notNowButton;
  self->_notNowButton = v54;

  [(VTUIButton *)self->_notNowButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v56 = self->_notNowButton;
  v57 = +[VTUIStringsHelper sharedStringsHelper];
  v58 = [v57 uiLocalizedStringForKey:@"DATA_SHARING_DECLINE_BUTTON_TITLE"];
  [(VTUIButton *)v56 setTitle:v58 forState:0];

  titleLabel4 = [(VTUIButton *)self->_notNowButton titleLabel];
  [titleLabel4 setNumberOfLines:0];

  [(VTUIProximityContainerView *)self->_containerView addSubview:self->_notNowButton];
  v60 = *MEMORY[0x277D85DE8];
}

- (void)_setupPortraitConstraints
{
  v168[5] = *MEMORY[0x277D85DE8];
  safeAreaLayoutGuide = [(VTUIProximityDataSharingOptInView *)self safeAreaLayoutGuide];
  safeAreaLayoutGuide2 = [(VTUIProximityContainerView *)self->_containerView safeAreaLayoutGuide];
  v157 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = +[VTUIStyle sharedStyle];
  bottomAnchor = [(VTUIProximityContainerView *)self->_containerView bottomAnchor];
  bottomAnchor2 = [(VTUIProximityDataSharingOptInView *)self bottomAnchor];
  [v4 proxContainerHorizontalVerticalPadding];
  v8 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v7];

  leadingAnchor = [(VTUIProximityContainerView *)self->_containerView leadingAnchor];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  [v4 proxContainerHorizontalVerticalPadding];
  v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];

  trailingAnchor = [(VTUIProximityContainerView *)self->_containerView trailingAnchor];
  trailingAnchor2 = [safeAreaLayoutGuide trailingAnchor];
  [v4 proxContainerHorizontalVerticalPadding];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v14];

  heightAnchor = [(VTUIProximityContainerView *)self->_containerView heightAnchor];
  [v4 proxViewHeight];
  v17 = [heightAnchor constraintGreaterThanOrEqualToConstant:?];

  heightAnchor2 = [(VTUIProximityContainerView *)self->_containerView heightAnchor];
  v155 = safeAreaLayoutGuide;
  heightAnchor3 = [safeAreaLayoutGuide heightAnchor];
  v20 = [heightAnchor2 constraintLessThanOrEqualToAnchor:heightAnchor3 constant:0.0];

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

  topAnchor = [(UIScrollView *)self->_scrollView topAnchor];
  topAnchor2 = [safeAreaLayoutGuide2 topAnchor];
  v24 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];

  leadingAnchor3 = [(UIScrollView *)self->_scrollView leadingAnchor];
  leadingAnchor4 = [safeAreaLayoutGuide2 leadingAnchor];
  [v4 proxLeading];
  v27 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:?];

  trailingAnchor3 = [(UIScrollView *)self->_scrollView trailingAnchor];
  trailingAnchor4 = [safeAreaLayoutGuide2 trailingAnchor];
  [v4 proxTrailing];
  v31 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-v30];

  bottomAnchor3 = [(UIScrollView *)self->_scrollView bottomAnchor];
  bottomAnchor4 = [(UIButton *)self->_aboutLink bottomAnchor];
  v34 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:0.0];

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

  firstBaselineAnchor = [(UILabel *)self->_titleLabel firstBaselineAnchor];
  topAnchor3 = [(UIScrollView *)self->_scrollView topAnchor];
  [v4 proxTitleFirstBaselineFromTop];
  v39 = v38;
  [v4 proxAboutLinkFirstBaselineFromTop];
  v41 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor3 constant:v39 - v40];

  leadingAnchor5 = [(UILabel *)self->_titleLabel leadingAnchor];
  leadingAnchor6 = [safeAreaLayoutGuide2 leadingAnchor];
  [v4 proxLeading];
  v44 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:?];

  trailingAnchor5 = [(UILabel *)self->_titleLabel trailingAnchor];
  trailingAnchor6 = [safeAreaLayoutGuide2 trailingAnchor];
  [v4 proxTrailing];
  v48 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-v47];

  v145 = v44;
  v146 = v41;
  v166[0] = v41;
  v166[1] = v44;
  v144 = v48;
  v166[2] = v48;
  v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v166 count:3];
  [v157 addObjectsFromArray:v49];

  centerYAnchor = [(UIButton *)self->_dismissButton centerYAnchor];
  topAnchor4 = [safeAreaLayoutGuide2 topAnchor];
  [v4 proxTrainingDismissButtonVerticalPaddingTop];
  v52 = [centerYAnchor constraintEqualToAnchor:topAnchor4 constant:?];

  centerXAnchor = [(UIButton *)self->_dismissButton centerXAnchor];
  trailingAnchor7 = [safeAreaLayoutGuide2 trailingAnchor];
  [v4 proxTrainingDismissButtonHorizontalPadding];
  v55 = [centerXAnchor constraintEqualToAnchor:trailingAnchor7 constant:?];

  widthAnchor = [(UIButton *)self->_dismissButton widthAnchor];
  [v4 proxTrainingDismissButtonWidthOrHeight];
  v57 = [widthAnchor constraintEqualToConstant:?];

  heightAnchor4 = [(UIButton *)self->_dismissButton heightAnchor];
  [v4 proxTrainingDismissButtonWidthOrHeight];
  v59 = [heightAnchor4 constraintEqualToConstant:?];

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

  topAnchor5 = [(UILabel *)self->_subtitleLabel topAnchor];
  bottomAnchor5 = [(UILabel *)self->_titleLabel bottomAnchor];
  [v4 proxPaddingDataSharingSubtitle];
  v63 = [topAnchor5 constraintEqualToAnchor:bottomAnchor5 constant:?];

  leadingAnchor7 = [(UILabel *)self->_subtitleLabel leadingAnchor];
  leadingAnchor8 = [safeAreaLayoutGuide2 leadingAnchor];
  [v4 proxLeading];
  v66 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:?];

  trailingAnchor8 = [(UILabel *)self->_subtitleLabel trailingAnchor];
  trailingAnchor9 = [safeAreaLayoutGuide2 trailingAnchor];
  [v4 proxTrailing];
  v70 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9 constant:-v69];

  bottomAnchor6 = [(UILabel *)self->_subtitleLabel bottomAnchor];
  bottomAnchor7 = [(UIScrollView *)self->_scrollView bottomAnchor];
  [v4 proxPrimaryButtonHeight];
  v74 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7 constant:-v73];

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

  leadingAnchor9 = [(UIButton *)self->_aboutLink leadingAnchor];
  leadingAnchor10 = [safeAreaLayoutGuide2 leadingAnchor];
  [v4 proxLeading];
  v78 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10 constant:?];

  trailingAnchor10 = [(UIButton *)self->_aboutLink trailingAnchor];
  trailingAnchor11 = [safeAreaLayoutGuide2 trailingAnchor];
  [v4 proxTrailing];
  v82 = [trailingAnchor10 constraintEqualToAnchor:trailingAnchor11 constant:-v81];

  bottomAnchor8 = [(UIButton *)self->_aboutLink bottomAnchor];
  topAnchor6 = [(VTUIButton *)self->_shareButton topAnchor];
  v85 = [bottomAnchor8 constraintEqualToAnchor:topAnchor6 constant:0.0];

  if (+[VTUIFeatureFlags isNaturalUIEnabled])
  {
    heightAnchor5 = [(UIButton *)self->_aboutLink heightAnchor];
    [v4 proxPrimaryButtonHeight];
    v87 = [heightAnchor5 constraintEqualToConstant:?];

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

  leadingAnchor11 = [(VTUIButton *)self->_notNowButton leadingAnchor];
  leadingAnchor12 = [safeAreaLayoutGuide2 leadingAnchor];
  [v4 proxLeading];
  v91 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12 constant:?];

  trailingAnchor12 = [(VTUIButton *)self->_notNowButton trailingAnchor];
  trailingAnchor13 = [safeAreaLayoutGuide2 trailingAnchor];
  [v4 proxTrailing];
  v95 = [trailingAnchor12 constraintEqualToAnchor:trailingAnchor13 constant:-v94];

  v96 = +[VTUIFeatureFlags isNaturalUIEnabled];
  notNowButton = self->_notNowButton;
  if (v96)
  {
    v98 = [(VTUIButton *)notNowButton bottomAnchor:v91];
    bottomAnchor9 = [(VTUIProximityContainerView *)self->_containerView bottomAnchor];
    [v4 proxTrainingDismissButtonVerticalPaddingBottom];
    v101 = [v98 constraintEqualToAnchor:bottomAnchor9 constant:-v100];

    heightAnchor6 = [(VTUIButton *)self->_notNowButton heightAnchor];
    [v4 proxPrimaryButtonHeight];
    v103 = [heightAnchor6 constraintEqualToConstant:?];

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
    bottomAnchor10 = [(VTUIProximityContainerView *)self->_containerView bottomAnchor];
    [v4 proxTrainingDismissButtonVerticalPaddingBottom];
    v101 = [v106 constraintEqualToAnchor:bottomAnchor10 constant:-v108];

    v160[0] = v91;
    v160[1] = v95;
    v104 = v95;
    v160[2] = v101;
    v103 = [MEMORY[0x277CBEA60] arrayWithObjects:v160 count:3];
    [v157 addObjectsFromArray:v103];
  }

  leadingAnchor13 = [(VTUIButton *)self->_shareButton leadingAnchor];
  leadingAnchor14 = [safeAreaLayoutGuide2 leadingAnchor];
  [v4 proxLeading];
  v111 = [leadingAnchor13 constraintEqualToAnchor:leadingAnchor14 constant:?];

  trailingAnchor14 = [(VTUIButton *)self->_shareButton trailingAnchor];
  trailingAnchor15 = [safeAreaLayoutGuide2 trailingAnchor];
  [v4 proxTrailing];
  v115 = [trailingAnchor14 constraintEqualToAnchor:trailingAnchor15 constant:-v114];

  v116 = +[VTUIFeatureFlags isNaturalUIEnabled];
  shareButton = self->_shareButton;
  if (v116)
  {
    bottomAnchor11 = [(VTUIButton *)shareButton bottomAnchor];
    topAnchor7 = [(VTUIButton *)self->_notNowButton topAnchor];
    [v4 proxTrainingNotNowButtonVerticalPaddingTop];
    v121 = [bottomAnchor11 constraintEqualToAnchor:topAnchor7 constant:-v120];

    heightAnchor7 = [(VTUIButton *)self->_shareButton heightAnchor];
    [v4 proxPrimaryButtonHeight];
    v123 = [heightAnchor7 constraintEqualToConstant:?];

    v159 = v111;
    v124 = &v159;
  }

  else
  {
    firstBaselineAnchor2 = [(VTUIButton *)shareButton firstBaselineAnchor];
    topAnchor8 = [(VTUIButton *)self->_notNowButton topAnchor];
    [v4 proxTrainingDismissButtonVerticalPaddingTop];
    v121 = [firstBaselineAnchor2 constraintEqualToAnchor:topAnchor8 constant:-v127];

    heightAnchor8 = [(VTUIButton *)self->_shareButton heightAnchor];
    [v4 proxPrimaryButtonHeight];
    v123 = [heightAnchor8 constraintEqualToConstant:?];

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