@interface PNPWelcomeController
+ (id)bundleImageNamed:(id)a3;
+ (id)bundleImageNamed:(id)a3 renderingMode:(int64_t)a4;
+ (id)controllerWithType:(int64_t)a3 buttonType:(int64_t)a4 deviceType:(int64_t)a5 features:(unint64_t)a6 delegate:(id)a7;
- (BOOL)isRTL;
- (PNPWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5;
- (PNPWelcomeControllerDelegate)delegate;
- (UIEdgeInsets)additionalSafeAreaInsets;
- (id)bundleImageNamed:(id)a3;
- (id)bundleImageNamed:(id)a3 renderingMode:(int64_t)a4;
- (void)addButtonWithType:(int64_t)a3;
- (void)buttonPressed:(id)a3;
- (void)setControllerType:(int64_t)a3 buttonType:(int64_t)a4 deviceType:(int64_t)a5 delegate:(id)a6;
@end

@implementation PNPWelcomeController

+ (id)controllerWithType:(int64_t)a3 buttonType:(int64_t)a4 deviceType:(int64_t)a5 features:(unint64_t)a6 delegate:(id)a7
{
  v11 = a7;
  v12 = 0;
  if (a3 <= 3)
  {
    if (a3 < 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (a3 <= 6)
  {
    if (a3 == 4 || a3 == 6)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (a3 == 7)
    {
      objc_opt_class();
LABEL_13:
      v12 = objc_opt_class();
      goto LABEL_14;
    }

    if (a3 == 8 || a3 == 9)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  v13 = [v12 _controllerWithType:a3 buttonType:a4 deviceType:a5 delegate:v11];
  [v13 setFeatures:a6];

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

- (PNPWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5
{
  v8 = a3;
  v14.receiver = self;
  v14.super_class = PNPWelcomeController;
  v9 = [(PNPWelcomeController *)&v14 initWithTitle:v8 detailText:a4 icon:a5];
  v10 = v9;
  if (v9)
  {
    v11 = [(OBBaseWelcomeController *)v9 navigationItem];
    [v11 setBackButtonTitle:v8];

    v12 = [(OBBaseWelcomeController *)v10 navigationItem];
    [v12 setBackButtonDisplayMode:2];
  }

  return v10;
}

- (void)addButtonWithType:(int64_t)a3
{
  if (a3 == 2)
  {
    v4 = @"DONE_BUTTON";
  }

  else
  {
    if (a3 != 1)
    {
      return;
    }

    v4 = @"CONTINUE_BUTTON";
  }

  v5 = PencilPairingUIBundle();
  v9 = [v5 localizedStringForKey:v4 value:&stru_286FDFDB8 table:0];

  if (v9)
  {
    v6 = [MEMORY[0x277D37618] boldButton];
    [v6 setTitle:v9 forState:0];
    [v6 addTarget:self action:sel_buttonPressed_ forControlEvents:64];
    v7 = [(PNPWelcomeController *)self buttonTray];
    [v7 addButton:v6];

    v8 = [(PNPWelcomeController *)self buttonTray];
    [v8 setHidden:0];

    [(PNPWelcomeController *)self setTrayButton:v6];
  }
}

- (void)buttonPressed:(id)a3
{
  v4 = [(PNPWelcomeController *)self delegate];
  [v4 welcomeControllerButtonDidPress:self];
}

- (void)setControllerType:(int64_t)a3 buttonType:(int64_t)a4 deviceType:(int64_t)a5 delegate:(id)a6
{
  v10 = a6;
  [(PNPWelcomeController *)self setControllerType:a3];
  [(PNPWelcomeController *)self setButtonType:a4];
  [(PNPWelcomeController *)self setDelegate:v10];

  [(PNPWelcomeController *)self setDeviceType:a5];

  [(PNPWelcomeController *)self addButtonWithType:a4];
}

- (id)bundleImageNamed:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() bundleImageNamed:v3];

  return v4;
}

- (id)bundleImageNamed:(id)a3 renderingMode:(int64_t)a4
{
  v5 = a3;
  v6 = [objc_opt_class() bundleImageNamed:v5 renderingMode:a4];

  return v6;
}

+ (id)bundleImageNamed:(id)a3
{
  v3 = MEMORY[0x277D755B8];
  v4 = MEMORY[0x277CCA8D8];
  v5 = a3;
  v6 = [v4 bundleForClass:objc_opt_class()];
  v7 = [v3 imageNamed:v5 inBundle:v6 compatibleWithTraitCollection:0];

  v8 = [v7 imageWithRenderingMode:2];

  return v8;
}

+ (id)bundleImageNamed:(id)a3 renderingMode:(int64_t)a4
{
  v5 = MEMORY[0x277D755B8];
  v6 = MEMORY[0x277CCA8D8];
  v7 = a3;
  v8 = [v6 bundleForClass:objc_opt_class()];
  v9 = [v5 imageNamed:v7 inBundle:v8 compatibleWithTraitCollection:0];

  v10 = [v9 imageWithRenderingMode:a4];

  return v10;
}

- (BOOL)isRTL
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = [v2 userInterfaceLayoutDirection] == 1;

  return v3;
}

- (PNPWelcomeControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end