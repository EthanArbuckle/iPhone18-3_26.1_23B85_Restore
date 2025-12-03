@interface PNPWhatsNewController
+ (id)_controllerWithType:(int64_t)type buttonType:(int64_t)buttonType deviceType:(int64_t)deviceType delegate:(id)delegate;
- (BOOL)addScribbleBulletIfNecessary;
- (void)addDoubleTapBullet;
- (void)addDoubleTapBulletForPro;
- (void)addHoverBullet;
- (void)addQuickNoteBullet;
- (void)addScreenshotsBullet;
- (void)addScreenshotsBulletForPro;
- (void)addSmarterNotesBullet;
- (void)addSqueezeBullet;
- (void)configureFor532;
- (void)configureForType:(int64_t)type;
- (void)tempDoTheNormalThing;
- (void)viewDidLoad;
@end

@implementation PNPWhatsNewController

+ (id)_controllerWithType:(int64_t)type buttonType:(int64_t)buttonType deviceType:(int64_t)deviceType delegate:(id)delegate
{
  delegateCopy = delegate;
  v10 = [PNPWhatsNewController alloc];
  v11 = PencilPairingUIBundle();
  v12 = [v11 localizedStringForKey:@"WHATS_NEW_TITLE" value:&stru_286FDFDB8 table:0];
  v13 = PencilPairingUIBundle();
  v14 = [v13 localizedStringForKey:@"WELCOME_DETAIL_TEXT" value:&stru_286FDFDB8 table:0];
  v15 = [(PNPWelcomeController *)v10 initWithTitle:v12 detailText:v14 icon:0];

  [(PNPWelcomeController *)v15 setControllerType:type buttonType:buttonType deviceType:deviceType delegate:delegateCopy];

  return v15;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PNPWhatsNewController;
  [(OBBaseWelcomeController *)&v3 viewDidLoad];
  [(PNPWhatsNewController *)self configureForType:[(PNPWelcomeController *)self deviceType]];
}

- (void)configureForType:(int64_t)type
{
  if (type <= 1)
  {
    if (type)
    {
      if (type == 1)
      {
        [(PNPWhatsNewController *)self configureFor222];
      }
    }

    else
    {
      [(PNPWhatsNewController *)self configureForGeneric];
    }
  }

  else
  {
    switch(type)
    {
      case 2:
        [(PNPWhatsNewController *)self configureFor332];
        break;
      case 3:
        [(PNPWhatsNewController *)self configureFor482];
        break;
      case 4:
        [(PNPWhatsNewController *)self configureFor532];
        break;
    }
  }
}

- (void)addHoverBullet
{
  [(PNPWhatsNewController *)self setBulletCount:[(PNPWhatsNewController *)self bulletCount]+ 1];
  v7 = PencilPairingUIBundle();
  v3 = [v7 localizedStringForKey:@"PENCIL_HOVER_PREVIEW_TITLE" value:&stru_286FDFDB8 table:0];
  v4 = PencilPairingUIBundle();
  v5 = [v4 localizedStringForKey:@"PENCIL_HOVER_PREVIEW_DESCRIPTION" value:&stru_286FDFDB8 table:0];
  v6 = [(PNPWelcomeController *)self bundleImageNamed:@"Preview"];
  [(PNPWhatsNewController *)self addBulletedListItemWithTitle:v3 description:v5 image:v6];
}

- (void)addQuickNoteBullet
{
  [(PNPWhatsNewController *)self setBulletCount:[(PNPWhatsNewController *)self bulletCount]+ 1];
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
  [(PNPWhatsNewController *)self addBulletedListItemWithTitle:v3 description:v8 image:v9];
}

- (void)addSmarterNotesBullet
{
  [(PNPWhatsNewController *)self setBulletCount:[(PNPWhatsNewController *)self bulletCount]+ 1];
  v7 = PencilPairingUIBundle();
  v3 = [v7 localizedStringForKey:@"WELCOME_SMARTER_NOTES_TITLE" value:&stru_286FDFDB8 table:0];
  v4 = PencilPairingUIBundle();
  v5 = [v4 localizedStringForKey:@"WELCOME_SMARTER_NOTES_DESCRIPTION" value:&stru_286FDFDB8 table:0];
  v6 = [(PNPWelcomeController *)self bundleImageNamed:@"Notes"];
  [(PNPWhatsNewController *)self addBulletedListItemWithTitle:v3 description:v5 image:v6];
}

- (BOOL)addScribbleBulletIfNecessary
{
  mEMORY[0x277CD9698] = [MEMORY[0x277CD9698] sharedSettings];
  supportedKeyboardLocaleExists = [mEMORY[0x277CD9698] supportedKeyboardLocaleExists];

  if (supportedKeyboardLocaleExists)
  {
    [(PNPWhatsNewController *)self setBulletCount:[(PNPWhatsNewController *)self bulletCount]+ 1];
    v5 = PencilPairingUIBundle();
    v6 = [v5 localizedStringForKey:@"WELCOME_SCRIBBLE_TITLE" value:&stru_286FDFDB8 table:0];
    v7 = PencilPairingUIBundle();
    v8 = [v7 localizedStringForKey:@"WELCOME_SCRIBBLE_DESCRIPTION" value:&stru_286FDFDB8 table:0];
    v9 = [(PNPWelcomeController *)self bundleImageNamed:@"welcome_scribble"];
    [(PNPWhatsNewController *)self addBulletedListItemWithTitle:v6 description:v8 image:v9];
  }

  return supportedKeyboardLocaleExists;
}

- (void)addDoubleTapBullet
{
  [(PNPWhatsNewController *)self setBulletCount:[(PNPWhatsNewController *)self bulletCount]+ 1];
  v7 = PencilPairingUIBundle();
  v3 = [v7 localizedStringForKey:@"WELCOME_SWITCH_TOOLS_TITLE" value:&stru_286FDFDB8 table:0];
  v4 = PencilPairingUIBundle();
  v5 = [v4 localizedStringForKey:@"WELCOME_SWITCH_TOOLS_DESCRIPTION" value:&stru_286FDFDB8 table:0];
  v6 = [(PNPWelcomeController *)self bundleImageNamed:@"welcome_double_tap"];
  [(PNPWhatsNewController *)self addBulletedListItemWithTitle:v3 description:v5 image:v6];
}

- (void)addScreenshotsBullet
{
  [(PNPWhatsNewController *)self setBulletCount:[(PNPWhatsNewController *)self bulletCount]+ 1];
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
  [(PNPWhatsNewController *)self addBulletedListItemWithTitle:v3 description:v8 image:v9];
}

- (void)addSqueezeBullet
{
  [(PNPWhatsNewController *)self setBulletCount:[(PNPWhatsNewController *)self bulletCount]+ 1];
  v7 = PencilPairingUIBundle();
  v3 = [v7 localizedStringForKey:@"WELCOME_SQUEEZE_TITLE" value:&stru_286FDFDB8 table:@"PencilPairingSqueeze-B532"];
  v4 = PencilPairingUIBundle();
  v5 = [v4 localizedStringForKey:@"WELCOME_SQUEEZE_DESCRIPTION" value:&stru_286FDFDB8 table:@"PencilPairingSqueeze-B532"];
  v6 = [(PNPWelcomeController *)self bundleImageNamed:@"welcome_squeeze"];
  [(PNPWhatsNewController *)self addBulletedListItemWithTitle:v3 description:v5 image:v6];
}

- (void)addDoubleTapBulletForPro
{
  [(PNPWhatsNewController *)self setBulletCount:[(PNPWhatsNewController *)self bulletCount]+ 1];
  v7 = PencilPairingUIBundle();
  v3 = [v7 localizedStringForKey:@"WELCOME_SWITCH_TOOLS_TITLE" value:&stru_286FDFDB8 table:0];
  v4 = PencilPairingUIBundle();
  v5 = [v4 localizedStringForKey:@"WELCOME_SWITCH_TOOLS_DESCRIPTION_PRO" value:&stru_286FDFDB8 table:@"PencilPairingSqueeze-B532"];
  v6 = [(PNPWelcomeController *)self bundleImageNamed:@"welcome_double_tap"];
  [(PNPWhatsNewController *)self addBulletedListItemWithTitle:v3 description:v5 image:v6];
}

- (void)addScreenshotsBulletForPro
{
  [(PNPWhatsNewController *)self setBulletCount:[(PNPWhatsNewController *)self bulletCount]+ 1];
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
  [(PNPWhatsNewController *)self addBulletedListItemWithTitle:v3 description:v8 image:v9];
}

- (void)configureFor532
{
  [(PNPWhatsNewController *)self addScribbleBulletIfNecessary];
  [(PNPWhatsNewController *)self addSqueezeBullet];
  [(PNPWhatsNewController *)self addDoubleTapBulletForPro];

  [(PNPWhatsNewController *)self addScreenshotsBulletForPro];
}

- (void)tempDoTheNormalThing
{
  if ([MEMORY[0x277CD9628] isHoverActive])
  {
    [(PNPWhatsNewController *)self addHoverBullet];
  }

  [(PNPWhatsNewController *)self addScribbleBulletIfNecessary];
  [(PNPWhatsNewController *)self addSmarterNotesBullet];
  if ([(PNPWelcomeController *)self deviceType]== 2 || [(PNPWelcomeController *)self deviceType]== 4)
  {

    [(PNPWhatsNewController *)self addDoubleTapBullet];
  }
}

@end