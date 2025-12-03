@interface NCDigestOnboardingIntroductionViewController
+ (id)introductionViewControllerWithDeferButtonText:(id)text;
- (NCDigestOnboardingIntroductionViewController)initWithDeferButtonText:(id)text;
- (id)customContentView;
- (id)secondaryCustomContentView;
- (void)_deferButtonPressed:(id)pressed;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation NCDigestOnboardingIntroductionViewController

+ (id)introductionViewControllerWithDeferButtonText:(id)text
{
  textCopy = text;
  v4 = [[NCDigestOnboardingIntroductionViewController alloc] initWithDeferButtonText:textCopy];

  return v4;
}

- (NCDigestOnboardingIntroductionViewController)initWithDeferButtonText:(id)text
{
  textCopy = text;
  v6 = NCUserNotificationsUIKitFrameworkBundle();
  v7 = [v6 localizedStringForKey:@"NOTIFICATION_DIGEST_ONBOARDING_INTRODUCTION_TITLE" value:&stru_282FE84F8 table:0];
  v8 = NCUserNotificationsUIKitFrameworkBundle();
  v9 = [v8 localizedStringForKey:@"NOTIFICATION_DIGEST_ONBOARDING_INTRODUCTION_DESCRIPTION" value:&stru_282FE84F8 table:0];
  v12.receiver = self;
  v12.super_class = NCDigestOnboardingIntroductionViewController;
  v10 = [(NCOnboardingViewController *)&v12 initWithTitle:v7 detailText:v9 contentLayout:4];

  if (v10)
  {
    objc_storeStrong(&v10->_deferButtonText, text);
  }

  return v10;
}

- (void)viewDidLoad
{
  v38.receiver = self;
  v38.super_class = NCDigestOnboardingIntroductionViewController;
  [(NCOnboardingViewController *)&v38 viewDidLoad];
  linkButton = [MEMORY[0x277D37650] linkButton];
  [linkButton setTitle:self->_deferButtonText forState:0];
  [linkButton addTarget:self action:sel__deferButtonPressed_ forControlEvents:64];
  buttonTray = [(NCDigestOnboardingIntroductionViewController *)self buttonTray];
  [buttonTray addButton:linkButton];

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  customContentView = [(NCDigestOnboardingIntroductionViewController *)self customContentView];
  [customContentView setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(NCDigestOnboardingIntroductionViewController *)self contentView];
  [contentView addSubview:customContentView];

  leadingAnchor = [customContentView leadingAnchor];
  contentView2 = [(NCDigestOnboardingIntroductionViewController *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v5 addObject:v11];

  contentView3 = [(NCDigestOnboardingIntroductionViewController *)self contentView];
  trailingAnchor = [contentView3 trailingAnchor];
  trailingAnchor2 = [customContentView trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v5 addObject:v15];

  topAnchor = [customContentView topAnchor];
  contentView4 = [(NCDigestOnboardingIntroductionViewController *)self contentView];
  topAnchor2 = [contentView4 topAnchor];
  v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v5 addObject:v19];

  bottomAnchor = [customContentView bottomAnchor];
  contentView5 = [(NCDigestOnboardingIntroductionViewController *)self contentView];
  bottomAnchor2 = [contentView5 bottomAnchor];
  v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v5 addObject:v23];

  secondaryCustomContentView = [(NCDigestOnboardingIntroductionViewController *)self secondaryCustomContentView];
  secondaryContentView = [(NCDigestOnboardingIntroductionViewController *)self secondaryContentView];
  [secondaryCustomContentView setTranslatesAutoresizingMaskIntoConstraints:0];
  [secondaryContentView addSubview:secondaryCustomContentView];
  leadingAnchor3 = [secondaryCustomContentView leadingAnchor];
  leadingAnchor4 = [secondaryContentView leadingAnchor];
  v28 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v5 addObject:v28];

  trailingAnchor3 = [secondaryContentView trailingAnchor];
  trailingAnchor4 = [secondaryCustomContentView trailingAnchor];
  v31 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v5 addObject:v31];

  topAnchor3 = [secondaryCustomContentView topAnchor];
  topAnchor4 = [secondaryContentView topAnchor];
  v34 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  [v5 addObject:v34];

  bottomAnchor3 = [secondaryCustomContentView bottomAnchor];
  bottomAnchor4 = [secondaryContentView bottomAnchor];
  v37 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  [v5 addObject:v37];

  [MEMORY[0x277CCAAD0] activateConstraints:v5];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = NCDigestOnboardingIntroductionViewController;
  [(NCDigestOnboardingIntroductionViewController *)&v6 viewWillAppear:?];
  navigationController = [(NCDigestOnboardingIntroductionViewController *)self navigationController];
  [navigationController setNavigationBarHidden:1 animated:appearCopy];
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
  traitCollection = [(NCDigestOnboardingIntroductionViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  v11 = @"DigestOnboardingIntroduction-Dark-Foreground";
  if (userInterfaceStyle == 1)
  {
    v11 = @"DigestOnboardingIntroduction-Light-Foreground";
  }

  v12 = v11;

  v13 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v4, v5, v6, v7}];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  layer = [v13 layer];
  [layer setAllowsGroupBlending:0];

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
  layer2 = [v15 layer];
  [layer2 setCompositingFilter:*MEMORY[0x277CDA5D8]];

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
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v30 = [v28 dateFormatFromTemplate:@"j" options:0 locale:currentLocale];
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
  fontDescriptor = [v37 fontDescriptor];
  v122 = [fontDescriptor fontDescriptorWithDesign:*MEMORY[0x277D74368]];

  v39 = self->_clockLabel;
  v40 = [MEMORY[0x277D74300] fontWithDescriptor:v122 size:42.0];
  [(UILabel *)v39 setFont:v40];

  [(UILabel *)self->_clockLabel setMinimumScaleFactor:0.25];
  [(UILabel *)self->_clockLabel setAdjustsFontSizeToFitWidth:1];
  LODWORD(v41) = 1132068864;
  [(UILabel *)self->_clockLabel setContentCompressionResistancePriority:0 forAxis:v41];
  v42 = self->_clockLabel;
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  v44 = [whiteColor colorWithAlphaComponent:0.4];
  [(UILabel *)v42 setTextColor:v44];

  superview = [(UILabel *)self->_clockLabel superview];
  layer3 = [superview layer];
  [layer3 setAllowsGroupBlending:0];

  layer4 = [(UILabel *)self->_clockLabel layer];
  [layer4 setCompositingFilter:*MEMORY[0x277CDA5E8]];

  [v25 addSubview:self->_clockLabel];
  v48 = objc_alloc_init(MEMORY[0x277CBEB18]);
  topAnchor = [v13 topAnchor];
  topAnchor2 = [v8 topAnchor];
  v51 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:44.0];
  [v48 addObject:v51];

  bottomAnchor = [v127 bottomAnchor];
  bottomAnchor2 = [v13 bottomAnchor];
  v54 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v48 addObject:v54];

  widthAnchor = [v13 widthAnchor];
  heightAnchor = [v13 heightAnchor];
  v57 = [widthAnchor constraintEqualToAnchor:heightAnchor multiplier:0.656];
  [v48 addObject:v57];

  centerXAnchor = [v13 centerXAnchor];
  centerXAnchor2 = [v127 centerXAnchor];
  v60 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v48 addObject:v60];

  leadingAnchor = [v15 leadingAnchor];
  leadingAnchor2 = [v13 leadingAnchor];
  v63 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
  [v48 addObject:v63];

  trailingAnchor = [v13 trailingAnchor];
  trailingAnchor2 = [v15 trailingAnchor];
  v66 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:0.0];
  [v48 addObject:v66];

  topAnchor3 = [v15 topAnchor];
  topAnchor4 = [v13 topAnchor];
  v69 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:0.0];
  [v48 addObject:v69];

  bottomAnchor3 = [v13 bottomAnchor];
  bottomAnchor4 = [v15 bottomAnchor];
  v72 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:0.0];
  [v48 addObject:v72];

  leadingAnchor3 = [v21 leadingAnchor];
  leadingAnchor4 = [v13 leadingAnchor];
  v75 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:0.0];
  [v48 addObject:v75];

  trailingAnchor3 = [v13 trailingAnchor];
  trailingAnchor4 = [v21 trailingAnchor];
  v78 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:0.0];
  [v48 addObject:v78];

  topAnchor5 = [v21 topAnchor];
  topAnchor6 = [v13 topAnchor];
  v81 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:30.0];
  [v48 addObject:v81];

  bottomAnchor5 = [v13 bottomAnchor];
  bottomAnchor6 = [v21 bottomAnchor];
  v84 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:0.0];
  [v48 addObject:v84];

  heightAnchor2 = [v25 heightAnchor];
  heightAnchor3 = [v21 heightAnchor];
  v87 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3 multiplier:0.319];
  [v48 addObject:v87];

  topAnchor7 = [v25 topAnchor];
  topAnchor8 = [v15 topAnchor];
  v90 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
  [v48 addObject:v90];

  leadingAnchor5 = [v25 leadingAnchor];
  leadingAnchor6 = [v15 leadingAnchor];
  v93 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  [v48 addObject:v93];

  trailingAnchor5 = [v15 trailingAnchor];
  trailingAnchor6 = [v25 trailingAnchor];
  v96 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  [v48 addObject:v96];

  heightAnchor4 = [(UILabel *)self->_clockLabel heightAnchor];
  heightAnchor5 = [v15 heightAnchor];
  v99 = [heightAnchor4 constraintEqualToAnchor:heightAnchor5 multiplier:0.15];
  [v48 addObject:v99];

  bottomAnchor7 = [(UILabel *)self->_clockLabel bottomAnchor];
  bottomAnchor8 = [v25 bottomAnchor];
  v102 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
  [v48 addObject:v102];

  leadingAnchor7 = [(UILabel *)self->_clockLabel leadingAnchor];
  leadingAnchor8 = [v25 leadingAnchor];
  v105 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  [v48 addObject:v105];

  trailingAnchor7 = [(UILabel *)self->_clockLabel trailingAnchor];
  trailingAnchor8 = [v25 trailingAnchor];
  v108 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  [v48 addObject:v108];

  leadingAnchor9 = [(NCGradientView *)v123 leadingAnchor];
  leadingAnchor10 = [v127 leadingAnchor];
  v111 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10 constant:0.0];
  [v48 addObject:v111];

  trailingAnchor9 = [v127 trailingAnchor];
  trailingAnchor10 = [(NCGradientView *)v123 trailingAnchor];
  v114 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10 constant:0.0];
  [v48 addObject:v114];

  topAnchor9 = [(NCGradientView *)v123 topAnchor];
  topAnchor10 = [v127 topAnchor];
  v117 = [topAnchor9 constraintEqualToAnchor:topAnchor10 constant:0.0];
  [v48 addObject:v117];

  bottomAnchor9 = [v127 bottomAnchor];
  bottomAnchor10 = [(NCGradientView *)v123 bottomAnchor];
  v120 = [bottomAnchor9 constraintEqualToAnchor:bottomAnchor10 constant:0.0];
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
  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  v11 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v4, v5, v6, v7}];
  explainer1Container = self->_explainer1Container;
  self->_explainer1Container = v11;

  [(UIView *)self->_explainer1Container setTranslatesAutoresizingMaskIntoConstraints:0];
  [v121 addSubview:self->_explainer1Container];
  v117 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v4, v5, v6, v7}];
  [v117 setTranslatesAutoresizingMaskIntoConstraints:0];
  v116 = [MEMORY[0x277D755B8] systemImageNamed:@"deskclock" withConfiguration:v120];
  [v117 setImage:v116];
  systemRedColor = [MEMORY[0x277D75348] systemRedColor];
  [v117 setTintColor:systemRedColor];

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
  [(UILabel *)self->_explainer1Label setTextColor:secondaryLabelColor];
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
  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  [v114 setTintColor:systemBlueColor];

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
  [(UILabel *)self->_explainer2Label setTextColor:secondaryLabelColor];
  [(UIView *)self->_explainer2Container addSubview:self->_explainer2Label];
  v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
  topAnchor = [(UIView *)self->_explainer1Container topAnchor];
  topAnchor2 = [v121 topAnchor];
  v40 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v9];
  [v37 addObject:v40];

  leadingAnchor = [(UIView *)self->_explainer1Container leadingAnchor];
  leadingAnchor2 = [v121 leadingAnchor];
  v43 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v37 addObject:v43];

  trailingAnchor = [v121 trailingAnchor];
  trailingAnchor2 = [(UIView *)self->_explainer1Container trailingAnchor];
  v46 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v37 addObject:v46];

  topAnchor3 = [v117 topAnchor];
  topAnchor4 = [(UILabel *)self->_explainer1Title topAnchor];
  v49 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:12.0];
  [v37 addObject:v49];

  leadingAnchor3 = [v117 leadingAnchor];
  leadingAnchor4 = [(UIView *)self->_explainer1Container leadingAnchor];
  v52 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:12.0];
  [v37 addObject:v52];

  leadingAnchor5 = [(UILabel *)self->_explainer1Title leadingAnchor];
  leadingAnchor6 = [(UIView *)self->_explainer1Container leadingAnchor];
  v55 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:64.0];
  [v37 addObject:v55];

  trailingAnchor3 = [(UIView *)self->_explainer1Container trailingAnchor];
  trailingAnchor4 = [(UILabel *)self->_explainer1Title trailingAnchor];
  v58 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v37 addObject:v58];

  topAnchor5 = [(UILabel *)self->_explainer1Title topAnchor];
  topAnchor6 = [(UIView *)self->_explainer1Container topAnchor];
  v61 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  [v37 addObject:v61];

  topAnchor7 = [(UILabel *)self->_explainer1Label topAnchor];
  bottomAnchor = [(UILabel *)self->_explainer1Title bottomAnchor];
  v64 = [topAnchor7 constraintEqualToAnchor:bottomAnchor constant:0.0];
  [v37 addObject:v64];

  leadingAnchor7 = [(UILabel *)self->_explainer1Label leadingAnchor];
  leadingAnchor8 = [(UILabel *)self->_explainer1Title leadingAnchor];
  v67 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  [v37 addObject:v67];

  trailingAnchor5 = [(UIView *)self->_explainer1Container trailingAnchor];
  trailingAnchor6 = [(UILabel *)self->_explainer1Label trailingAnchor];
  v70 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  [v37 addObject:v70];

  bottomAnchor2 = [(UIView *)self->_explainer1Container bottomAnchor];
  bottomAnchor3 = [(UILabel *)self->_explainer1Label bottomAnchor];
  v73 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:0.0];
  [v37 addObject:v73];

  leadingAnchor9 = [(UIView *)self->_explainer2Container leadingAnchor];
  leadingAnchor10 = [v121 leadingAnchor];
  v76 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
  [v37 addObject:v76];

  trailingAnchor7 = [v121 trailingAnchor];
  trailingAnchor8 = [(UIView *)self->_explainer2Container trailingAnchor];
  v79 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  [v37 addObject:v79];

  topAnchor8 = [(UIView *)self->_explainer2Container topAnchor];
  bottomAnchor4 = [(UIView *)self->_explainer1Container bottomAnchor];
  v82 = [topAnchor8 constraintEqualToAnchor:bottomAnchor4 constant:v9 * 2.0 + -5.0];
  [v37 addObject:v82];

  bottomAnchor5 = [(UIView *)self->_explainer2Container bottomAnchor];
  bottomAnchor6 = [v121 bottomAnchor];
  v85 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  [v37 addObject:v85];

  topAnchor9 = [v114 topAnchor];
  topAnchor10 = [(UILabel *)self->_explainer2Title topAnchor];
  v88 = [topAnchor9 constraintEqualToAnchor:topAnchor10 constant:11.0];
  [v37 addObject:v88];

  leadingAnchor11 = [v114 leadingAnchor];
  leadingAnchor12 = [(UIView *)self->_explainer2Container leadingAnchor];
  v91 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12 constant:9.0];
  [v37 addObject:v91];

  leadingAnchor13 = [(UILabel *)self->_explainer2Title leadingAnchor];
  leadingAnchor14 = [(UIView *)self->_explainer2Container leadingAnchor];
  v94 = [leadingAnchor13 constraintEqualToAnchor:leadingAnchor14 constant:64.0];
  [v37 addObject:v94];

  trailingAnchor9 = [(UIView *)self->_explainer2Container trailingAnchor];
  trailingAnchor10 = [(UILabel *)self->_explainer2Title trailingAnchor];
  v97 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
  [v37 addObject:v97];

  topAnchor11 = [(UILabel *)self->_explainer2Title topAnchor];
  topAnchor12 = [(UIView *)self->_explainer2Container topAnchor];
  v100 = [topAnchor11 constraintEqualToAnchor:topAnchor12];
  [v37 addObject:v100];

  topAnchor13 = [(UILabel *)self->_explainer2Label topAnchor];
  bottomAnchor7 = [(UILabel *)self->_explainer2Title bottomAnchor];
  v103 = [topAnchor13 constraintEqualToAnchor:bottomAnchor7 constant:0.0];
  [v37 addObject:v103];

  leadingAnchor15 = [(UILabel *)self->_explainer2Label leadingAnchor];
  leadingAnchor16 = [(UILabel *)self->_explainer2Title leadingAnchor];
  v106 = [leadingAnchor15 constraintEqualToAnchor:leadingAnchor16];
  [v37 addObject:v106];

  trailingAnchor11 = [(UIView *)self->_explainer2Container trailingAnchor];
  trailingAnchor12 = [(UILabel *)self->_explainer2Label trailingAnchor];
  v109 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12];
  [v37 addObject:v109];

  bottomAnchor8 = [(UIView *)self->_explainer2Container bottomAnchor];
  bottomAnchor9 = [(UILabel *)self->_explainer2Label bottomAnchor];
  v112 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9 constant:0.0];
  [v37 addObject:v112];

  [MEMORY[0x277CCAAD0] activateConstraints:v37];

  return v121;
}

- (void)_deferButtonPressed:(id)pressed
{
  navigationController = [(NCDigestOnboardingIntroductionViewController *)self navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];

  delegate = [(NCOnboardingViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate onboardingViewControllerDidDeferSetup:self];
  }
}

@end