@interface CACOnboardingIntroViewController
+ (id)defaultControllerWithStyle:(unint64_t)a3;
- (CACOnboardingIntroViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 style:(unint64_t)a6;
- (void)configureDownloadCaption;
- (void)configureLanguageButton;
- (void)dealloc;
- (void)enableVoiceControlAndMoveToCommandsOverview;
- (void)languageDidChange;
- (void)presentLanguageSelection;
- (void)viewDidLoad;
@end

@implementation CACOnboardingIntroViewController

+ (id)defaultControllerWithStyle:(unint64_t)a3
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
  v7 = [[CACOnboardingIntroViewController alloc] initWithTitle:v4 detailText:v6 icon:0 style:a3];

  return v7;
}

- (CACOnboardingIntroViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 style:(unint64_t)a6
{
  v30.receiver = self;
  v30.super_class = CACOnboardingIntroViewController;
  v7 = [(CACOnboardingIntroViewController *)&v30 initWithTitle:a3 detailText:a4 icon:0];
  v8 = v7;
  if (v7)
  {
    v7->_style = a6;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v8, _languageChanged_0, @"CACNotificationLanguageChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v10 = [MEMORY[0x277D75418] currentDevice];
    if ([v10 userInterfaceIdiom] == 1)
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

    v24 = [MEMORY[0x277D37618] boldButton];
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = [CACLocaleUtilities localizedUIStringForKey:@"CommonStrings.Continue"];
    [v24 setTitle:v25 forState:0];

    [v24 addTarget:v8 action:sel_enableVoiceControlAndMoveToCommandsOverview forControlEvents:64];
    [(CACOnboardingIntroViewController *)v8 setMainButton:v24];
    v26 = [(CACOnboardingIntroViewController *)v8 buttonTray];
    [v26 addButton:v24];

    if (![(CACOnboardingIntroViewController *)v8 style])
    {
      v27 = [MEMORY[0x277D37650] linkButton];
      [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v27 addTarget:v8 action:sel_presentLanguageSelection forControlEvents:64];
      [(CACOnboardingIntroViewController *)v8 setLinkButton:v27];
      [(CACOnboardingIntroViewController *)v8 configureLanguageButton];
      v28 = [(CACOnboardingIntroViewController *)v8 buttonTray];
      [v28 addButton:v27];
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
    v5 = [v4 bestLocaleIdentifier];
    v6 = [v3 containsObject:v5];

    if (v6)
    {
      v11 = [(CACOnboardingIntroViewController *)self buttonTray];
      [v11 setCaptionText:&stru_287BD8610];
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
      v11 = [(CACOnboardingIntroViewController *)self buttonTray];
      v10 = [CACLocaleUtilities localizedUIStringForKey:v9];

      [v11 setCaptionText:v10];
    }
  }
}

- (void)configureLanguageButton
{
  v3 = +[CACPreferences sharedPreferences];
  v4 = [v3 bestLocaleIdentifier];
  v15 = [CACLocaleUtilities localizedDisplayStringForLocaleIdentifier:v4];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ ", v15];
  v6 = [MEMORY[0x277D755B8] systemImageNamed:@"arrowtriangle.right.circle.fill"];
  v7 = [(CACOnboardingIntroViewController *)self linkButton];
  v8 = [v7 tintColor];
  v9 = [v6 imageWithTintColor:v8 renderingMode:2];

  v10 = [(CACOnboardingIntroViewController *)self linkButton];
  [v10 setTitle:v5 forState:0];

  v11 = [(CACOnboardingIntroViewController *)self linkButton];
  [v11 setImage:v9 forState:0];

  v12 = [(CACOnboardingIntroViewController *)self linkButton];
  v13 = [v12 configuration];

  [v13 setImagePlacement:8];
  v14 = [(CACOnboardingIntroViewController *)self linkButton];
  [v14 setConfiguration:v13];
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

  v12 = [(CACOnboardingIntroViewController *)self navigationController];
  [v12 pushViewController:v9 animated:1];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CACOnboardingIntroViewController;
  [(OBBaseWelcomeController *)&v5 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_dismissWelcomeController];
  v4 = [(OBBaseWelcomeController *)self navigationItem];
  [v4 setLeftBarButtonItem:v3];
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