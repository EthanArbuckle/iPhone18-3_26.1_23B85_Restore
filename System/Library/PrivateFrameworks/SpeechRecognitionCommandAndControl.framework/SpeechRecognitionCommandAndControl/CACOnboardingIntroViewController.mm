@interface CACOnboardingIntroViewController
+ (id)defaultControllerWithStyle:(unint64_t)style;
- (CACOnboardingIntroViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon style:(unint64_t)style;
- (void)configureDownloadCaption;
- (void)configureLanguageButton;
- (void)dealloc;
- (void)enableVoiceControlAndMoveToCommandsOverview;
- (void)languageDidChange;
- (void)presentLanguageSelection;
- (void)viewDidLoad;
@end

@implementation CACOnboardingIntroViewController

+ (id)defaultControllerWithStyle:(unint64_t)style
{
  v4 = [CACLocaleUtilities localizedUIStringForKey:@"Onboarding.Title"];
  if (AXDeviceIsPhone())
  {
    v5 = @"Onboarding.Description_iPhone";
  }

  else if (AXDeviceIsPad())
  {
    v5 = @"Onboarding.Description_iPad";
  }

  else
  {
    v5 = @"Onboarding.Description_AppleVision";
  }

  v6 = [CACLocaleUtilities localizedUIStringForKey:v5];
  v7 = [[CACOnboardingIntroViewController alloc] initWithTitle:v4 detailText:v6 icon:0 style:style];

  return v7;
}

- (CACOnboardingIntroViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon style:(unint64_t)style
{
  v30.receiver = self;
  v30.super_class = CACOnboardingIntroViewController;
  v7 = [(CACOnboardingIntroViewController *)&v30 initWithTitle:title detailText:text icon:0];
  v8 = v7;
  if (v7)
  {
    v7->_style = style;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v8, _languageChanged_0, @"CACNotificationLanguageChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice userInterfaceIdiom] == 1)
    {
      v11 = 60.0;
    }

    else
    {
      v11 = 40.0;
    }

    v12 = [MEMORY[0x277D755D0] configurationWithPointSize:5 weight:2 scale:v11];
    v13 = [MEMORY[0x277D755B8] _systemImageNamed:@"appstore" withConfiguration:v12];
    v14 = [MEMORY[0x277D755B8] systemImageNamed:@"paperplane.fill"];
    v15 = [v14 imageWithSymbolConfiguration:v12];

    v16 = [MEMORY[0x277D755B8] systemImageNamed:@"doc.on.clipboard.fill"];
    v17 = [v16 imageWithSymbolConfiguration:v12];

    v18 = [CACLocaleUtilities localizedUIStringForKey:@"Onboarding.Navigating.Title"];
    v19 = [CACLocaleUtilities localizedUIStringForKey:@"Onboarding.Navigating.Description"];
    [(CACOnboardingIntroViewController *)v8 addBulletedListItemWithTitle:v18 description:v19 image:v13];

    v20 = [CACLocaleUtilities localizedUIStringForKey:@"Onboarding.Interaction.Title"];
    v21 = [CACLocaleUtilities localizedUIStringForKey:@"Onboarding.Interaction.Description"];
    [(CACOnboardingIntroViewController *)v8 addBulletedListItemWithTitle:v20 description:v21 image:v15];

    v22 = [CACLocaleUtilities localizedUIStringForKey:@"Onboarding.TextEditing.Title"];
    v23 = [CACLocaleUtilities localizedUIStringForKey:@"Onboarding.TextEditing.Description"];
    [(CACOnboardingIntroViewController *)v8 addBulletedListItemWithTitle:v22 description:v23 image:v17];

    boldButton = [MEMORY[0x277D37618] boldButton];
    [boldButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = [CACLocaleUtilities localizedUIStringForKey:@"CommonStrings.Continue"];
    [boldButton setTitle:v25 forState:0];

    [boldButton addTarget:v8 action:sel_enableVoiceControlAndMoveToCommandsOverview forControlEvents:64];
    [(CACOnboardingIntroViewController *)v8 setMainButton:boldButton];
    buttonTray = [(CACOnboardingIntroViewController *)v8 buttonTray];
    [buttonTray addButton:boldButton];

    if (![(CACOnboardingIntroViewController *)v8 style])
    {
      linkButton = [MEMORY[0x277D37650] linkButton];
      [linkButton setTranslatesAutoresizingMaskIntoConstraints:0];
      [linkButton addTarget:v8 action:sel_presentLanguageSelection forControlEvents:64];
      [(CACOnboardingIntroViewController *)v8 setLinkButton:linkButton];
      [(CACOnboardingIntroViewController *)v8 configureLanguageButton];
      buttonTray2 = [(CACOnboardingIntroViewController *)v8 buttonTray];
      [buttonTray2 addButton:linkButton];
    }

    [(CACOnboardingIntroViewController *)v8 configureDownloadCaption];
  }

  return v8;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"CACNotificationLanguageChanged", 0);
  v4.receiver = self;
  v4.super_class = CACOnboardingIntroViewController;
  [(CACOnboardingIntroViewController *)&v4 dealloc];
}

- (void)configureDownloadCaption
{
  if (![(CACOnboardingIntroViewController *)self style])
  {
    v3 = +[CACLanguageAssetManager downloadedLocaleIdentifiers];
    v4 = +[CACPreferences sharedPreferences];
    bestLocaleIdentifier = [v4 bestLocaleIdentifier];
    v6 = [v3 containsObject:bestLocaleIdentifier];

    if (v6)
    {
      buttonTray = [(CACOnboardingIntroViewController *)self buttonTray];
      [buttonTray setCaptionText:&stru_287BD8610];
    }

    else
    {
      v7 = MGGetBoolAnswer();
      v8 = @"AssetDownload.InstallConfirmationDescription_WiFi";
      if (v7)
      {
        v8 = @"AssetDownload.InstallConfirmationDescription_WLAN";
      }

      v9 = v8;
      buttonTray = [(CACOnboardingIntroViewController *)self buttonTray];
      v10 = [CACLocaleUtilities localizedUIStringForKey:v9];

      [buttonTray setCaptionText:v10];
    }
  }
}

- (void)configureLanguageButton
{
  v3 = +[CACPreferences sharedPreferences];
  bestLocaleIdentifier = [v3 bestLocaleIdentifier];
  v15 = [CACLocaleUtilities localizedDisplayStringForLocaleIdentifier:bestLocaleIdentifier];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ ", v15];
  v6 = [MEMORY[0x277D755B8] systemImageNamed:@"arrowtriangle.right.circle.fill"];
  linkButton = [(CACOnboardingIntroViewController *)self linkButton];
  tintColor = [linkButton tintColor];
  v9 = [v6 imageWithTintColor:tintColor renderingMode:2];

  linkButton2 = [(CACOnboardingIntroViewController *)self linkButton];
  [linkButton2 setTitle:v5 forState:0];

  linkButton3 = [(CACOnboardingIntroViewController *)self linkButton];
  [linkButton3 setImage:v9 forState:0];

  linkButton4 = [(CACOnboardingIntroViewController *)self linkButton];
  configuration = [linkButton4 configuration];

  [configuration setImagePlacement:8];
  linkButton5 = [(CACOnboardingIntroViewController *)self linkButton];
  [linkButton5 setConfiguration:configuration];
}

- (void)enableVoiceControlAndMoveToCommandsOverview
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [CACLocaleUtilities localizedUIStringForKey:@"Onboarding.BrowseCommands.Subtitle"];
  v5 = [CACLocaleUtilities siriLocaleUIStringForKey:@"Onboarding.HeySiriTurnOnVoiceControl"];
  v13 = [v3 stringWithValidatedFormat:v4 validFormatSpecifiers:@"%@" error:0, v5];

  v6 = [CACOnboardingCommandsDetailViewController alloc];
  v7 = [CACLocaleUtilities localizedUIStringForKey:@"Onboarding.BrowseCommands.Title"];
  v8 = +[CACOnboardingCommandGroup allCommandGroups];
  v9 = [(CACOnboardingCommandsDetailViewController *)v6 initWithTitle:v7 detailText:v13 commandGroups:v8];

  if ([(CACOnboardingIntroViewController *)self style])
  {
    if ([(CACOnboardingIntroViewController *)self style]== 1)
    {
      [(CACOnboardingCommandsDetailViewController *)v9 setSkipAnalytics:1];
    }
  }

  else
  {
    v10 = +[CACPreferences sharedPreferences];
    [v10 setDidShowOnboarding:1];

    v11 = +[CACPreferences sharedPreferences];
    [v11 setCommandAndControlEnabled:1];
  }

  navigationController = [(CACOnboardingIntroViewController *)self navigationController];
  [navigationController pushViewController:v9 animated:1];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CACOnboardingIntroViewController;
  [(OBBaseWelcomeController *)&v5 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_dismissWelcomeController];
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v3];
}

- (void)presentLanguageSelection
{
  v3 = objc_alloc(MEMORY[0x277D757A0]);
  v4 = [CACLanguageSelectionViewController defaultControllerWithStyle:0];
  v5 = [v3 initWithRootViewController:v4];

  [(CACOnboardingIntroViewController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)languageDidChange
{
  [(CACOnboardingIntroViewController *)self configureLanguageButton];

  [(CACOnboardingIntroViewController *)self configureDownloadCaption];
}

@end