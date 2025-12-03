@interface PNPFeatureListController
+ (id)_controllerWithType:(int64_t)type buttonType:(int64_t)buttonType deviceType:(int64_t)deviceType delegate:(id)delegate;
- (BOOL)addScribbleBulletIfNecessary;
- (void)addDoubleTapBullet;
- (void)addDoubleTapBulletForPro;
- (void)addHoverBullet;
- (void)addQuickNoteBullet;
- (void)addScreenshotsBullet;
- (void)addScreenshotsBulletForPro;
- (void)addSqueezeBullet;
- (void)configureFor532;
- (void)configureForType:(int64_t)type;
- (void)tempDoTheNormalThing;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PNPFeatureListController

+ (id)_controllerWithType:(int64_t)type buttonType:(int64_t)buttonType deviceType:(int64_t)deviceType delegate:(id)delegate
{
  delegateCopy = delegate;
  v10 = PencilPairingUIBundle();
  v11 = [v10 localizedStringForKey:@"WELCOME_TITLE" value:&stru_286FDFDB8 table:0];

  v12 = [PNPFeatureListController alloc];
  v13 = PencilPairingUIBundle();
  v14 = [v13 localizedStringForKey:@"WELCOME_DETAIL_TEXT" value:&stru_286FDFDB8 table:0];
  v15 = [(PNPWelcomeController *)v12 initWithTitle:v11 detailText:v14 icon:0];

  if (deviceType == 4)
  {
    v16 = PencilPairingUIBundle();
    buttonTypeCopy = buttonType;
    v17 = [v16 localizedStringForKey:@"WELCOME_TITLE_PRO" value:&stru_286FDFDB8 table:@"PencilPairingSqueeze-B532"];

    v18 = [PNPFeatureListController alloc];
    v19 = PencilPairingUIBundle();
    v20 = [v19 localizedStringForKey:@"WELCOME_DETAIL_TEXT_PRO" value:&stru_286FDFDB8 table:@"PencilPairingSqueeze-B532"];
    v21 = [(PNPWelcomeController *)v18 initWithTitle:v17 detailText:v20 icon:0];

    v11 = v17;
    v15 = v21;
    buttonType = buttonTypeCopy;
  }

  [(PNPWelcomeController *)v15 setControllerType:type buttonType:buttonType deviceType:deviceType delegate:delegateCopy];

  return v15;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PNPFeatureListController;
  [(OBBaseWelcomeController *)&v3 viewDidLoad];
  [(PNPFeatureListController *)self configureForType:[(PNPWelcomeController *)self deviceType]];
}

- (void)configureForType:(int64_t)type
{
  if (type <= 1)
  {
    if (type)
    {
      if (type == 1)
      {
        [(PNPFeatureListController *)self configureFor222];
      }
    }

    else
    {
      [(PNPFeatureListController *)self configureForGeneric];
    }
  }

  else
  {
    switch(type)
    {
      case 2:
        [(PNPFeatureListController *)self configureFor332];
        break;
      case 3:
        [(PNPFeatureListController *)self configureFor482];
        break;
      case 4:
        [(PNPFeatureListController *)self configureFor532];
        break;
    }
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PNPFeatureListController;
  [(PNPFeatureListController *)&v5 viewWillAppear:1];
  view = [(PNPFeatureListController *)self view];
  [view setHidden:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PNPFeatureListController;
  [(OBBaseWelcomeController *)&v5 viewDidDisappear:disappear];
  view = [(PNPFeatureListController *)self view];
  [view setHidden:1];
}

- (void)configureFor532
{
  [(PNPFeatureListController *)self addSqueezeBullet];
  [(PNPFeatureListController *)self addDoubleTapBulletForPro];
  [(PNPFeatureListController *)self addScribbleBulletIfNecessary];

  [(PNPFeatureListController *)self addScreenshotsBulletForPro];
}

- (void)addHoverBullet
{
  [(PNPFeatureListController *)self setBulletCount:[(PNPFeatureListController *)self bulletCount]+ 1];
  v7 = PencilPairingUIBundle();
  v3 = [v7 localizedStringForKey:@"PENCIL_HOVER_PREVIEW_TITLE" value:&stru_286FDFDB8 table:0];
  v4 = PencilPairingUIBundle();
  v5 = [v4 localizedStringForKey:@"PENCIL_HOVER_PREVIEW_DESCRIPTION" value:&stru_286FDFDB8 table:0];
  v6 = [(PNPWelcomeController *)self bundleImageNamed:@"Preview"];
  [(PNPFeatureListController *)self addBulletedListItemWithTitle:v3 description:v5 image:v6];
}

- (void)addQuickNoteBullet
{
  [(PNPFeatureListController *)self setBulletCount:[(PNPFeatureListController *)self bulletCount]+ 1];
  v10 = PencilPairingUIBundle();
  v3 = [v10 localizedStringForKey:@"WELCOME_NOTES_TITLE" value:&stru_286FDFDB8 table:0];
  isRTL = [(PNPWelcomeController *)self isRTL];
  v5 = PencilPairingUIBundle();
  v6 = v5;
  if (isRTL)
  {
    v7 = @"WELCOME_NOTES_DESCRIPTION_RTOL";
  }

  else
  {
    v7 = @"WELCOME_NOTES_DESCRIPTION";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_286FDFDB8 table:0];
  v9 = [(PNPWelcomeController *)self bundleImageNamed:@"Notes"];
  [(PNPFeatureListController *)self addBulletedListItemWithTitle:v3 description:v8 image:v9];
}

- (BOOL)addScribbleBulletIfNecessary
{
  mEMORY[0x277CD9698] = [MEMORY[0x277CD9698] sharedSettings];
  supportedKeyboardLocaleExists = [mEMORY[0x277CD9698] supportedKeyboardLocaleExists];

  if (supportedKeyboardLocaleExists)
  {
    [(PNPFeatureListController *)self setBulletCount:[(PNPFeatureListController *)self bulletCount]+ 1];
    v5 = PencilPairingUIBundle();
    v6 = [v5 localizedStringForKey:@"WELCOME_SCRIBBLE_TITLE" value:&stru_286FDFDB8 table:0];
    v7 = PencilPairingUIBundle();
    v8 = [v7 localizedStringForKey:@"WELCOME_SCRIBBLE_DESCRIPTION" value:&stru_286FDFDB8 table:0];
    v9 = [(PNPWelcomeController *)self bundleImageNamed:@"welcome_scribble"];
    [(PNPFeatureListController *)self addBulletedListItemWithTitle:v6 description:v8 image:v9];
  }

  return supportedKeyboardLocaleExists;
}

- (void)addDoubleTapBullet
{
  [(PNPFeatureListController *)self setBulletCount:[(PNPFeatureListController *)self bulletCount]+ 1];
  v7 = PencilPairingUIBundle();
  v3 = [v7 localizedStringForKey:@"WELCOME_SWITCH_TOOLS_TITLE" value:&stru_286FDFDB8 table:0];
  v4 = PencilPairingUIBundle();
  v5 = [v4 localizedStringForKey:@"WELCOME_SWITCH_TOOLS_DESCRIPTION" value:&stru_286FDFDB8 table:0];
  v6 = [(PNPWelcomeController *)self bundleImageNamed:@"welcome_double_tap"];
  [(PNPFeatureListController *)self addBulletedListItemWithTitle:v3 description:v5 image:v6];
}

- (void)addScreenshotsBullet
{
  [(PNPFeatureListController *)self setBulletCount:[(PNPFeatureListController *)self bulletCount]+ 1];
  v10 = PencilPairingUIBundle();
  v3 = [v10 localizedStringForKey:@"WELCOME_SCREENSHOT_TITLE" value:&stru_286FDFDB8 table:0];
  isRTL = [(PNPWelcomeController *)self isRTL];
  v5 = PencilPairingUIBundle();
  v6 = v5;
  if (isRTL)
  {
    v7 = @"WELCOME_SCREENSHOT_DESCRIPTION_RTOL";
  }

  else
  {
    v7 = @"WELCOME_SCREENSHOT_DESCRIPTION";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_286FDFDB8 table:0];
  v9 = [(PNPWelcomeController *)self bundleImageNamed:@"welcome_swipe"];
  [(PNPFeatureListController *)self addBulletedListItemWithTitle:v3 description:v8 image:v9];
}

- (void)addSqueezeBullet
{
  [(PNPFeatureListController *)self setBulletCount:[(PNPFeatureListController *)self bulletCount]+ 1];
  v7 = PencilPairingUIBundle();
  v3 = [v7 localizedStringForKey:@"WELCOME_SQUEEZE_TITLE" value:&stru_286FDFDB8 table:@"PencilPairingSqueeze-B532"];
  v4 = PencilPairingUIBundle();
  v5 = [v4 localizedStringForKey:@"WELCOME_SQUEEZE_DESCRIPTION" value:&stru_286FDFDB8 table:@"PencilPairingSqueeze-B532"];
  v6 = [(PNPWelcomeController *)self bundleImageNamed:@"welcome_squeeze"];
  [(PNPFeatureListController *)self addBulletedListItemWithTitle:v3 description:v5 image:v6];
}

- (void)addDoubleTapBulletForPro
{
  [(PNPFeatureListController *)self setBulletCount:[(PNPFeatureListController *)self bulletCount]+ 1];
  v7 = PencilPairingUIBundle();
  v3 = [v7 localizedStringForKey:@"WELCOME_SWITCH_TOOLS_TITLE" value:&stru_286FDFDB8 table:0];
  v4 = PencilPairingUIBundle();
  v5 = [v4 localizedStringForKey:@"WELCOME_SWITCH_TOOLS_DESCRIPTION_PRO" value:&stru_286FDFDB8 table:@"PencilPairingSqueeze-B532"];
  v6 = [(PNPWelcomeController *)self bundleImageNamed:@"welcome_double_tap"];
  [(PNPFeatureListController *)self addBulletedListItemWithTitle:v3 description:v5 image:v6];
}

- (void)addScreenshotsBulletForPro
{
  [(PNPFeatureListController *)self setBulletCount:[(PNPFeatureListController *)self bulletCount]+ 1];
  v10 = PencilPairingUIBundle();
  v3 = [v10 localizedStringForKey:@"WELCOME_SCREENSHOT_TITLE" value:&stru_286FDFDB8 table:0];
  isRTL = [(PNPWelcomeController *)self isRTL];
  v5 = PencilPairingUIBundle();
  v6 = v5;
  if (isRTL)
  {
    v7 = @"WELCOME_SCREENSHOT_DESCRIPTION_RTOL_PRO";
  }

  else
  {
    v7 = @"WELCOME_SCREENSHOT_DESCRIPTION_PRO";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_286FDFDB8 table:@"PencilPairingSqueeze-B532"];
  v9 = [(PNPWelcomeController *)self bundleImageNamed:@"welcome_swipe"];
  [(PNPFeatureListController *)self addBulletedListItemWithTitle:v3 description:v8 image:v9];
}

- (void)tempDoTheNormalThing
{
  isHoverActive = [MEMORY[0x277CD9628] isHoverActive];
  v4 = isHoverActive;
  if (isHoverActive)
  {
    [(PNPFeatureListController *)self addHoverBullet];
  }

  [(PNPFeatureListController *)self addQuickNoteBullet];
  [(PNPFeatureListController *)self addScribbleBulletIfNecessary];
  if ([(PNPWelcomeController *)self deviceType]== 2)
  {
    [(PNPFeatureListController *)self addDoubleTapBullet];
  }

  if ((v4 & 1) == 0)
  {

    [(PNPFeatureListController *)self addScreenshotsBullet];
  }
}

@end