@interface PNPWelcomeController
+ (id)bundleImageNamed:(id)named;
+ (id)bundleImageNamed:(id)named renderingMode:(int64_t)mode;
+ (id)controllerWithType:(int64_t)type buttonType:(int64_t)buttonType deviceType:(int64_t)deviceType features:(unint64_t)features delegate:(id)delegate;
- (BOOL)isRTL;
- (PNPWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon;
- (PNPWelcomeControllerDelegate)delegate;
- (UIEdgeInsets)additionalSafeAreaInsets;
- (id)bundleImageNamed:(id)named;
- (id)bundleImageNamed:(id)named renderingMode:(int64_t)mode;
- (void)addButtonWithType:(int64_t)type;
- (void)buttonPressed:(id)pressed;
- (void)setControllerType:(int64_t)type buttonType:(int64_t)buttonType deviceType:(int64_t)deviceType delegate:(id)delegate;
@end

@implementation PNPWelcomeController

+ (id)controllerWithType:(int64_t)type buttonType:(int64_t)buttonType deviceType:(int64_t)deviceType features:(unint64_t)features delegate:(id)delegate
{
  delegateCopy = delegate;
  v12 = 0;
  if (type <= 3)
  {
    if (type < 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (type <= 6)
  {
    if (type == 4 || type == 6)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (type == 7)
    {
      objc_opt_class();
LABEL_13:
      v12 = objc_opt_class();
      goto LABEL_14;
    }

    if (type == 8 || type == 9)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  v13 = [v12 _controllerWithType:type buttonType:buttonType deviceType:deviceType delegate:delegateCopy];
  [v13 setFeatures:features];

  return v13;
}

- (UIEdgeInsets)additionalSafeAreaInsets
{
  v2 = 0.0;
  v3 = 22.0;
  v4 = 0.0;
  v5 = 22.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (PNPWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon
{
  titleCopy = title;
  v14.receiver = self;
  v14.super_class = PNPWelcomeController;
  v9 = [(PNPWelcomeController *)&v14 initWithTitle:titleCopy detailText:text icon:icon];
  v10 = v9;
  if (v9)
  {
    navigationItem = [(OBBaseWelcomeController *)v9 navigationItem];
    [navigationItem setBackButtonTitle:titleCopy];

    navigationItem2 = [(OBBaseWelcomeController *)v10 navigationItem];
    [navigationItem2 setBackButtonDisplayMode:2];
  }

  return v10;
}

- (void)addButtonWithType:(int64_t)type
{
  if (type == 2)
  {
    v4 = @"DONE_BUTTON";
  }

  else
  {
    if (type != 1)
    {
      return;
    }

    v4 = @"CONTINUE_BUTTON";
  }

  v5 = PencilPairingUIBundle();
  v9 = [v5 localizedStringForKey:v4 value:&stru_286FDFDB8 table:0];

  if (v9)
  {
    boldButton = [MEMORY[0x277D37618] boldButton];
    [boldButton setTitle:v9 forState:0];
    [boldButton addTarget:self action:sel_buttonPressed_ forControlEvents:64];
    buttonTray = [(PNPWelcomeController *)self buttonTray];
    [buttonTray addButton:boldButton];

    buttonTray2 = [(PNPWelcomeController *)self buttonTray];
    [buttonTray2 setHidden:0];

    [(PNPWelcomeController *)self setTrayButton:boldButton];
  }
}

- (void)buttonPressed:(id)pressed
{
  delegate = [(PNPWelcomeController *)self delegate];
  [delegate welcomeControllerButtonDidPress:self];
}

- (void)setControllerType:(int64_t)type buttonType:(int64_t)buttonType deviceType:(int64_t)deviceType delegate:(id)delegate
{
  delegateCopy = delegate;
  [(PNPWelcomeController *)self setControllerType:type];
  [(PNPWelcomeController *)self setButtonType:buttonType];
  [(PNPWelcomeController *)self setDelegate:delegateCopy];

  [(PNPWelcomeController *)self setDeviceType:deviceType];

  [(PNPWelcomeController *)self addButtonWithType:buttonType];
}

- (id)bundleImageNamed:(id)named
{
  namedCopy = named;
  v4 = [objc_opt_class() bundleImageNamed:namedCopy];

  return v4;
}

- (id)bundleImageNamed:(id)named renderingMode:(int64_t)mode
{
  namedCopy = named;
  v6 = [objc_opt_class() bundleImageNamed:namedCopy renderingMode:mode];

  return v6;
}

+ (id)bundleImageNamed:(id)named
{
  v3 = MEMORY[0x277D755B8];
  v4 = MEMORY[0x277CCA8D8];
  namedCopy = named;
  v6 = [v4 bundleForClass:objc_opt_class()];
  v7 = [v3 imageNamed:namedCopy inBundle:v6 compatibleWithTraitCollection:0];

  v8 = [v7 imageWithRenderingMode:2];

  return v8;
}

+ (id)bundleImageNamed:(id)named renderingMode:(int64_t)mode
{
  v5 = MEMORY[0x277D755B8];
  v6 = MEMORY[0x277CCA8D8];
  namedCopy = named;
  v8 = [v6 bundleForClass:objc_opt_class()];
  v9 = [v5 imageNamed:namedCopy inBundle:v8 compatibleWithTraitCollection:0];

  v10 = [v9 imageWithRenderingMode:mode];

  return v10;
}

- (BOOL)isRTL
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v3 = [mEMORY[0x277D75128] userInterfaceLayoutDirection] == 1;

  return v3;
}

- (PNPWelcomeControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end