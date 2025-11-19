@interface NCDigestOnboardingIntroductionViewController
+ (id)introductionViewControllerWithDeferButtonText:(id)a3;
- (NCDigestOnboardingIntroductionViewController)initWithDeferButtonText:(id)a3;
- (id)customContentView;
- (id)secondaryCustomContentView;
- (void)_deferButtonPressed:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation NCDigestOnboardingIntroductionViewController

+ (id)introductionViewControllerWithDeferButtonText:(id)a3
{
  v3 = a3;
  v4 = [[NCDigestOnboardingIntroductionViewController alloc] initWithDeferButtonText:v3];

  return v4;
}

- (NCDigestOnboardingIntroductionViewController)initWithDeferButtonText:(id)a3
{
  v5 = a3;
  v6 = NCUserNotificationsUIKitFrameworkBundle();
  v7 = [v6 localizedStringForKey:@"NOTIFICATION_DIGEST_ONBOARDING_INTRODUCTION_TITLE" value:&stru_282FE84F8 table:0];
  v8 = NCUserNotificationsUIKitFrameworkBundle();
  v9 = [v8 localizedStringForKey:@"NOTIFICATION_DIGEST_ONBOARDING_INTRODUCTION_DESCRIPTION" value:&stru_282FE84F8 table:0];
  v12.receiver = self;
  v12.super_class = NCDigestOnboardingIntroductionViewController;
  v10 = [(NCOnboardingViewController *)&v12 initWithTitle:v7 detailText:v9 contentLayout:4];

  if (v10)
  {
    objc_storeStrong(&v10->_deferButtonText, a3);
  }

  return v10;
}

- (void)viewDidLoad
{
  v38.receiver = self;
  v38.super_class = NCDigestOnboardingIntroductionViewController;
  [(NCOnboardingViewController *)&v38 viewDidLoad];
  v3 = [MEMORY[0x277D37650] linkButton];
  [v3 setTitle:self->_deferButtonText forState:0];
  [v3 addTarget:self action:sel__deferButtonPressed_ forControlEvents:64];
  v4 = [(NCDigestOnboardingIntroductionViewController *)self buttonTray];
  [v4 addButton:v3];

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [(NCDigestOnboardingIntroductionViewController *)self customContentView];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [(NCDigestOnboardingIntroductionViewController *)self contentView];
  [v7 addSubview:v6];

  v8 = [v6 leadingAnchor];
  v9 = [(NCDigestOnboardingIntroductionViewController *)self contentView];
  v10 = [v9 leadingAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  [v5 addObject:v11];

  v12 = [(NCDigestOnboardingIntroductionViewController *)self contentView];
  v13 = [v12 trailingAnchor];
  v14 = [v6 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  [v5 addObject:v15];

  v16 = [v6 topAnchor];
  v17 = [(NCDigestOnboardingIntroductionViewController *)self contentView];
  v18 = [v17 topAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];
  [v5 addObject:v19];

  v20 = [v6 bottomAnchor];
  v21 = [(NCDigestOnboardingIntroductionViewController *)self contentView];
  v22 = [v21 bottomAnchor];
  v23 = [v20 constraintEqualToAnchor:v22];
  [v5 addObject:v23];

  v24 = [(NCDigestOnboardingIntroductionViewController *)self secondaryCustomContentView];
  v25 = [(NCDigestOnboardingIntroductionViewController *)self secondaryContentView];
  [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v25 addSubview:v24];
  v26 = [v24 leadingAnchor];
  v27 = [v25 leadingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];
  [v5 addObject:v28];

  v29 = [v25 trailingAnchor];
  v30 = [v24 trailingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];
  [v5 addObject:v31];

  v32 = [v24 topAnchor];
  v33 = [v25 topAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];
  [v5 addObject:v34];

  v35 = [v24 bottomAnchor];
  v36 = [v25 bottomAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];
  [v5 addObject:v37];

  [MEMORY[0x277CCAAD0] activateConstraints:v5];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = NCDigestOnboardingIntroductionViewController;
  [(NCDigestOnboardingIntroductionViewController *)&v6 viewWillAppear:?];
  v5 = [(NCDigestOnboardingIntroductionViewController *)self navigationController];
  [v5 setNavigationBarHidden:1 animated:v3];
}

- (id)customContentView
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v8 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], v5, v6, v7}];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v126 = [MEMORY[0x277D75348] colorWithRed:0.258823529 green:0.537254902 blue:0.82745098 alpha:1.0];
  v125 = [MEMORY[0x277D75348] colorWithRed:0.749019608 green:0.980392157 blue:0.423529412 alpha:1.0];
  v123 = [[NCGradientView alloc] initWithVerticalStartColor:v126 verticalEndColor:v125];
  [(NCGradientView *)v123 setTranslatesAutoresizingMaskIntoConstraints:0];
  v127 = v8;
  [v8 addSubview:v123];
  v9 = [(NCDigestOnboardingIntroductionViewController *)self traitCollection];
  v10 = [v9 userInterfaceStyle];
  v11 = @"DigestOnboardingIntroduction-Dark-Foreground";
  if (v10 == 1)
  {
    v11 = @"DigestOnboardingIntroduction-Light-Foreground";
  }

  v12 = v11;

  v13 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v4, v5, v6, v7}];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [v13 layer];
  [v14 setAllowsGroupBlending:0];

  [v8 addSubview:v13];
  v15 = objc_alloc_init(MEMORY[0x277D755E8]);
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = MEMORY[0x277D755B8];
  v17 = NCUserNotificationsUIKitFrameworkBundle();
  v18 = [v16 imageNamed:@"DigestOnboardingIntroduction-Background" inBundle:v17];
  v124 = [v18 imageWithRenderingMode:2];

  [v15 setImage:v124];
  v19 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.15];
  [v15 setTintColor:v19];

  [v15 setContentMode:2];
  [v15 setClipsToBounds:0];
  v20 = [v15 layer];
  [v20 setCompositingFilter:*MEMORY[0x277CDA5D8]];

  [v13 addSubview:v15];
  v21 = objc_alloc_init(MEMORY[0x277D755E8]);
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = MEMORY[0x277D755B8];
  v23 = NCUserNotificationsUIKitFrameworkBundle();
  v24 = [v22 imageNamed:v12 inBundle:v23];

  [v21 setImage:v24];
  [v21 setContentMode:2];
  [v21 setClipsToBounds:0];
  CGAffineTransformMakeScale(&v128, 0.6, 0.6);
  [v21 setTransform:&v128];
  [v13 addSubview:v21];
  v25 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v4, v5, v6, v7}];
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v13 addSubview:v25];
  v26 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v4, v5, v6, v7}];
  clockLabel = self->_clockLabel;
  self->_clockLabel = v26;

  [(UILabel *)self->_clockLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v28 = MEMORY[0x277CCA968];
  v29 = [MEMORY[0x277CBEAF8] currentLocale];
  v30 = [v28 dateFormatFromTemplate:@"j" options:0 locale:v29];
  v31 = [v30 containsString:@"a"];

  v32 = self->_clockLabel;
  v33 = NCUserNotificationsUIKitFrameworkBundle();
  v34 = v33;
  if (v31)
  {
    v35 = @"NOTIFICATION_DIGEST_ONBOARDING_INTRODUCTION_CLOCK_TIME_12_HOUR";
  }

  else
  {
    v35 = @"NOTIFICATION_DIGEST_ONBOARDING_INTRODUCTION_CLOCK_TIME_24_HOUR";
  }

  v36 = [v33 localizedStringForKey:v35 value:&stru_282FE84F8 table:0];
  [(UILabel *)v32 setText:v36];

  [(UILabel *)self->_clockLabel setTextAlignment:1];
  [(UILabel *)self->_clockLabel setClipsToBounds:0];
  v37 = [MEMORY[0x277D74300] systemFontOfSize:42.0];
  v38 = [v37 fontDescriptor];
  v122 = [v38 fontDescriptorWithDesign:*MEMORY[0x277D74368]];

  v39 = self->_clockLabel;
  v40 = [MEMORY[0x277D74300] fontWithDescriptor:v122 size:42.0];
  [(UILabel *)v39 setFont:v40];

  [(UILabel *)self->_clockLabel setMinimumScaleFactor:0.25];
  [(UILabel *)self->_clockLabel setAdjustsFontSizeToFitWidth:1];
  LODWORD(v41) = 1132068864;
  [(UILabel *)self->_clockLabel setContentCompressionResistancePriority:0 forAxis:v41];
  v42 = self->_clockLabel;
  v43 = [MEMORY[0x277D75348] whiteColor];
  v44 = [v43 colorWithAlphaComponent:0.4];
  [(UILabel *)v42 setTextColor:v44];

  v45 = [(UILabel *)self->_clockLabel superview];
  v46 = [v45 layer];
  [v46 setAllowsGroupBlending:0];

  v47 = [(UILabel *)self->_clockLabel layer];
  [v47 setCompositingFilter:*MEMORY[0x277CDA5E8]];

  [v25 addSubview:self->_clockLabel];
  v48 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v49 = [v13 topAnchor];
  v50 = [v8 topAnchor];
  v51 = [v49 constraintEqualToAnchor:v50 constant:44.0];
  [v48 addObject:v51];

  v52 = [v127 bottomAnchor];
  v53 = [v13 bottomAnchor];
  v54 = [v52 constraintEqualToAnchor:v53];
  [v48 addObject:v54];

  v55 = [v13 widthAnchor];
  v56 = [v13 heightAnchor];
  v57 = [v55 constraintEqualToAnchor:v56 multiplier:0.656];
  [v48 addObject:v57];

  v58 = [v13 centerXAnchor];
  v59 = [v127 centerXAnchor];
  v60 = [v58 constraintEqualToAnchor:v59];
  [v48 addObject:v60];

  v61 = [v15 leadingAnchor];
  v62 = [v13 leadingAnchor];
  v63 = [v61 constraintEqualToAnchor:v62 constant:0.0];
  [v48 addObject:v63];

  v64 = [v13 trailingAnchor];
  v65 = [v15 trailingAnchor];
  v66 = [v64 constraintEqualToAnchor:v65 constant:0.0];
  [v48 addObject:v66];

  v67 = [v15 topAnchor];
  v68 = [v13 topAnchor];
  v69 = [v67 constraintEqualToAnchor:v68 constant:0.0];
  [v48 addObject:v69];

  v70 = [v13 bottomAnchor];
  v71 = [v15 bottomAnchor];
  v72 = [v70 constraintEqualToAnchor:v71 constant:0.0];
  [v48 addObject:v72];

  v73 = [v21 leadingAnchor];
  v74 = [v13 leadingAnchor];
  v75 = [v73 constraintEqualToAnchor:v74 constant:0.0];
  [v48 addObject:v75];

  v76 = [v13 trailingAnchor];
  v77 = [v21 trailingAnchor];
  v78 = [v76 constraintEqualToAnchor:v77 constant:0.0];
  [v48 addObject:v78];

  v79 = [v21 topAnchor];
  v80 = [v13 topAnchor];
  v81 = [v79 constraintEqualToAnchor:v80 constant:30.0];
  [v48 addObject:v81];

  v82 = [v13 bottomAnchor];
  v83 = [v21 bottomAnchor];
  v84 = [v82 constraintEqualToAnchor:v83 constant:0.0];
  [v48 addObject:v84];

  v85 = [v25 heightAnchor];
  v86 = [v21 heightAnchor];
  v87 = [v85 constraintEqualToAnchor:v86 multiplier:0.319];
  [v48 addObject:v87];

  v88 = [v25 topAnchor];
  v89 = [v15 topAnchor];
  v90 = [v88 constraintEqualToAnchor:v89];
  [v48 addObject:v90];

  v91 = [v25 leadingAnchor];
  v92 = [v15 leadingAnchor];
  v93 = [v91 constraintEqualToAnchor:v92];
  [v48 addObject:v93];

  v94 = [v15 trailingAnchor];
  v95 = [v25 trailingAnchor];
  v96 = [v94 constraintEqualToAnchor:v95];
  [v48 addObject:v96];

  v97 = [(UILabel *)self->_clockLabel heightAnchor];
  v98 = [v15 heightAnchor];
  v99 = [v97 constraintEqualToAnchor:v98 multiplier:0.15];
  [v48 addObject:v99];

  v100 = [(UILabel *)self->_clockLabel bottomAnchor];
  v101 = [v25 bottomAnchor];
  v102 = [v100 constraintEqualToAnchor:v101];
  [v48 addObject:v102];

  v103 = [(UILabel *)self->_clockLabel leadingAnchor];
  v104 = [v25 leadingAnchor];
  v105 = [v103 constraintEqualToAnchor:v104];
  [v48 addObject:v105];

  v106 = [(UILabel *)self->_clockLabel trailingAnchor];
  v107 = [v25 trailingAnchor];
  v108 = [v106 constraintEqualToAnchor:v107];
  [v48 addObject:v108];

  v109 = [(NCGradientView *)v123 leadingAnchor];
  v110 = [v127 leadingAnchor];
  v111 = [v109 constraintEqualToAnchor:v110 constant:0.0];
  [v48 addObject:v111];

  v112 = [v127 trailingAnchor];
  v113 = [(NCGradientView *)v123 trailingAnchor];
  v114 = [v112 constraintEqualToAnchor:v113 constant:0.0];
  [v48 addObject:v114];

  v115 = [(NCGradientView *)v123 topAnchor];
  v116 = [v127 topAnchor];
  v117 = [v115 constraintEqualToAnchor:v116 constant:0.0];
  [v48 addObject:v117];

  v118 = [v127 bottomAnchor];
  v119 = [(NCGradientView *)v123 bottomAnchor];
  v120 = [v118 constraintEqualToAnchor:v119 constant:0.0];
  [v48 addObject:v120];

  [MEMORY[0x277CCAAD0] activateConstraints:v48];

  return v127;
}

- (id)secondaryCustomContentView
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v121 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], v5, v6, v7}];
  [v121 setTranslatesAutoresizingMaskIntoConstraints:0];
  v122 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76920]];
  [v122 pointSize];
  v9 = v8;
  v120 = [MEMORY[0x277D755D0] configurationWithPointSize:6 weight:29.0];
  v10 = MEMORY[0x277D74300];
  [v122 pointSize];
  v118 = [v10 systemFontOfSize:? weight:?];
  v119 = [MEMORY[0x277D75348] secondaryLabelColor];
  v11 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v4, v5, v6, v7}];
  explainer1Container = self->_explainer1Container;
  self->_explainer1Container = v11;

  [(UIView *)self->_explainer1Container setTranslatesAutoresizingMaskIntoConstraints:0];
  [v121 addSubview:self->_explainer1Container];
  v117 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v4, v5, v6, v7}];
  [v117 setTranslatesAutoresizingMaskIntoConstraints:0];
  v116 = [MEMORY[0x277D755B8] systemImageNamed:@"deskclock" withConfiguration:v120];
  [v117 setImage:v116];
  v13 = [MEMORY[0x277D75348] systemRedColor];
  [v117 setTintColor:v13];

  [v117 setContentMode:7];
  [(UIView *)self->_explainer1Container addSubview:v117];
  v14 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v4, v5, v6, v7}];
  explainer1Title = self->_explainer1Title;
  self->_explainer1Title = v14;

  [(UILabel *)self->_explainer1Title setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_explainer1Title setNumberOfLines:0];
  v16 = self->_explainer1Title;
  v17 = NCUserNotificationsUIKitFrameworkBundle();
  v18 = [v17 localizedStringForKey:@"NOTIFICATION_DIGEST_ONBOARDING_INTRODUCTION_EXPLAINER_1_TITLE" value:&stru_282FE84F8 table:0];
  [(UILabel *)v16 setText:v18];

  [(UILabel *)self->_explainer1Title setFont:v118];
  [(UIView *)self->_explainer1Container addSubview:self->_explainer1Title];
  v19 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v4, v5, v6, v7}];
  explainer1Label = self->_explainer1Label;
  self->_explainer1Label = v19;

  [(UILabel *)self->_explainer1Label setTranslatesAutoresizingMaskIntoConstraints:0];
  v21 = self->_explainer1Label;
  v22 = NCUserNotificationsUIKitFrameworkBundle();
  v23 = [v22 localizedStringForKey:@"NOTIFICATION_DIGEST_ONBOARDING_INTRODUCTION_EXPLAINER_1_BODY" value:&stru_282FE84F8 table:0];
  [(UILabel *)v21 setText:v23];

  [(UILabel *)self->_explainer1Label setFont:v122];
  [(UILabel *)self->_explainer1Label setNumberOfLines:0];
  [(UILabel *)self->_explainer1Label setTextColor:v119];
  [(UIView *)self->_explainer1Container addSubview:self->_explainer1Label];
  v24 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v4, v5, v6, v7}];
  explainer2Container = self->_explainer2Container;
  self->_explainer2Container = v24;

  [(UIView *)self->_explainer2Container setTranslatesAutoresizingMaskIntoConstraints:0];
  [v121 addSubview:self->_explainer2Container];
  v114 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v4, v5, v6, v7}];
  [v114 setTranslatesAutoresizingMaskIntoConstraints:0];
  v115 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.bubble" withConfiguration:v120];
  [v114 setImage:v115];
  v26 = [MEMORY[0x277D75348] systemBlueColor];
  [v114 setTintColor:v26];

  [v114 setContentMode:7];
  [(UIView *)self->_explainer2Container addSubview:v114];
  v27 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v4, v5, v6, v7}];
  explainer2Title = self->_explainer2Title;
  self->_explainer2Title = v27;

  [(UILabel *)self->_explainer2Title setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_explainer2Title setNumberOfLines:0];
  v29 = self->_explainer2Title;
  v30 = NCUserNotificationsUIKitFrameworkBundle();
  v31 = [v30 localizedStringForKey:@"NOTIFICATION_DIGEST_ONBOARDING_INTRODUCTION_EXPLAINER_2_TITLE" value:&stru_282FE84F8 table:0];
  [(UILabel *)v29 setText:v31];

  [(UILabel *)self->_explainer2Title setFont:v118];
  [(UIView *)self->_explainer2Container addSubview:self->_explainer2Title];
  v32 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v4, v5, v6, v7}];
  explainer2Label = self->_explainer2Label;
  self->_explainer2Label = v32;

  [(UILabel *)self->_explainer2Label setTranslatesAutoresizingMaskIntoConstraints:0];
  v34 = self->_explainer2Label;
  v35 = NCUserNotificationsUIKitFrameworkBundle();
  v36 = [v35 localizedStringForKey:@"NOTIFICATION_DIGEST_ONBOARDING_INTRODUCTION_EXPLAINER_2_BODY" value:&stru_282FE84F8 table:0];
  [(UILabel *)v34 setText:v36];

  [(UILabel *)self->_explainer2Label setFont:v122];
  [(UILabel *)self->_explainer2Label setNumberOfLines:0];
  [(UILabel *)self->_explainer2Label setTextColor:v119];
  [(UIView *)self->_explainer2Container addSubview:self->_explainer2Label];
  v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v38 = [(UIView *)self->_explainer1Container topAnchor];
  v39 = [v121 topAnchor];
  v40 = [v38 constraintEqualToAnchor:v39 constant:v9];
  [v37 addObject:v40];

  v41 = [(UIView *)self->_explainer1Container leadingAnchor];
  v42 = [v121 leadingAnchor];
  v43 = [v41 constraintEqualToAnchor:v42];
  [v37 addObject:v43];

  v44 = [v121 trailingAnchor];
  v45 = [(UIView *)self->_explainer1Container trailingAnchor];
  v46 = [v44 constraintEqualToAnchor:v45];
  [v37 addObject:v46];

  v47 = [v117 topAnchor];
  v48 = [(UILabel *)self->_explainer1Title topAnchor];
  v49 = [v47 constraintEqualToAnchor:v48 constant:12.0];
  [v37 addObject:v49];

  v50 = [v117 leadingAnchor];
  v51 = [(UIView *)self->_explainer1Container leadingAnchor];
  v52 = [v50 constraintEqualToAnchor:v51 constant:12.0];
  [v37 addObject:v52];

  v53 = [(UILabel *)self->_explainer1Title leadingAnchor];
  v54 = [(UIView *)self->_explainer1Container leadingAnchor];
  v55 = [v53 constraintEqualToAnchor:v54 constant:64.0];
  [v37 addObject:v55];

  v56 = [(UIView *)self->_explainer1Container trailingAnchor];
  v57 = [(UILabel *)self->_explainer1Title trailingAnchor];
  v58 = [v56 constraintEqualToAnchor:v57];
  [v37 addObject:v58];

  v59 = [(UILabel *)self->_explainer1Title topAnchor];
  v60 = [(UIView *)self->_explainer1Container topAnchor];
  v61 = [v59 constraintEqualToAnchor:v60];
  [v37 addObject:v61];

  v62 = [(UILabel *)self->_explainer1Label topAnchor];
  v63 = [(UILabel *)self->_explainer1Title bottomAnchor];
  v64 = [v62 constraintEqualToAnchor:v63 constant:0.0];
  [v37 addObject:v64];

  v65 = [(UILabel *)self->_explainer1Label leadingAnchor];
  v66 = [(UILabel *)self->_explainer1Title leadingAnchor];
  v67 = [v65 constraintEqualToAnchor:v66];
  [v37 addObject:v67];

  v68 = [(UIView *)self->_explainer1Container trailingAnchor];
  v69 = [(UILabel *)self->_explainer1Label trailingAnchor];
  v70 = [v68 constraintEqualToAnchor:v69];
  [v37 addObject:v70];

  v71 = [(UIView *)self->_explainer1Container bottomAnchor];
  v72 = [(UILabel *)self->_explainer1Label bottomAnchor];
  v73 = [v71 constraintEqualToAnchor:v72 constant:0.0];
  [v37 addObject:v73];

  v74 = [(UIView *)self->_explainer2Container leadingAnchor];
  v75 = [v121 leadingAnchor];
  v76 = [v74 constraintEqualToAnchor:v75];
  [v37 addObject:v76];

  v77 = [v121 trailingAnchor];
  v78 = [(UIView *)self->_explainer2Container trailingAnchor];
  v79 = [v77 constraintEqualToAnchor:v78];
  [v37 addObject:v79];

  v80 = [(UIView *)self->_explainer2Container topAnchor];
  v81 = [(UIView *)self->_explainer1Container bottomAnchor];
  v82 = [v80 constraintEqualToAnchor:v81 constant:v9 * 2.0 + -5.0];
  [v37 addObject:v82];

  v83 = [(UIView *)self->_explainer2Container bottomAnchor];
  v84 = [v121 bottomAnchor];
  v85 = [v83 constraintEqualToAnchor:v84];
  [v37 addObject:v85];

  v86 = [v114 topAnchor];
  v87 = [(UILabel *)self->_explainer2Title topAnchor];
  v88 = [v86 constraintEqualToAnchor:v87 constant:11.0];
  [v37 addObject:v88];

  v89 = [v114 leadingAnchor];
  v90 = [(UIView *)self->_explainer2Container leadingAnchor];
  v91 = [v89 constraintEqualToAnchor:v90 constant:9.0];
  [v37 addObject:v91];

  v92 = [(UILabel *)self->_explainer2Title leadingAnchor];
  v93 = [(UIView *)self->_explainer2Container leadingAnchor];
  v94 = [v92 constraintEqualToAnchor:v93 constant:64.0];
  [v37 addObject:v94];

  v95 = [(UIView *)self->_explainer2Container trailingAnchor];
  v96 = [(UILabel *)self->_explainer2Title trailingAnchor];
  v97 = [v95 constraintEqualToAnchor:v96];
  [v37 addObject:v97];

  v98 = [(UILabel *)self->_explainer2Title topAnchor];
  v99 = [(UIView *)self->_explainer2Container topAnchor];
  v100 = [v98 constraintEqualToAnchor:v99];
  [v37 addObject:v100];

  v101 = [(UILabel *)self->_explainer2Label topAnchor];
  v102 = [(UILabel *)self->_explainer2Title bottomAnchor];
  v103 = [v101 constraintEqualToAnchor:v102 constant:0.0];
  [v37 addObject:v103];

  v104 = [(UILabel *)self->_explainer2Label leadingAnchor];
  v105 = [(UILabel *)self->_explainer2Title leadingAnchor];
  v106 = [v104 constraintEqualToAnchor:v105];
  [v37 addObject:v106];

  v107 = [(UIView *)self->_explainer2Container trailingAnchor];
  v108 = [(UILabel *)self->_explainer2Label trailingAnchor];
  v109 = [v107 constraintEqualToAnchor:v108];
  [v37 addObject:v109];

  v110 = [(UIView *)self->_explainer2Container bottomAnchor];
  v111 = [(UILabel *)self->_explainer2Label bottomAnchor];
  v112 = [v110 constraintEqualToAnchor:v111 constant:0.0];
  [v37 addObject:v112];

  [MEMORY[0x277CCAAD0] activateConstraints:v37];

  return v121;
}

- (void)_deferButtonPressed:(id)a3
{
  v4 = [(NCDigestOnboardingIntroductionViewController *)self navigationController];
  [v4 dismissViewControllerAnimated:1 completion:0];

  v5 = [(NCOnboardingViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 onboardingViewControllerDidDeferSetup:self];
  }
}

@end