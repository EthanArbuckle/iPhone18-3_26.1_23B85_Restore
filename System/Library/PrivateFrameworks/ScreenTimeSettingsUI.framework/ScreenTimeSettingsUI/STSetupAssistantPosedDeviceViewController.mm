@interface STSetupAssistantPosedDeviceViewController
- (BOOL)_isRTL;
- (STSetupAssistantPosedDeviceViewController)initWithCoder:(id)a3;
- (STSetupAssistantPosedDeviceViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)_deviceWithScreenImage;
- (id)_setupGenericImage;
- (void)_stSetupAssistantPosedDeviceViewControllerCommonInit;
- (void)viewDidLoad;
@end

@implementation STSetupAssistantPosedDeviceViewController

- (STSetupAssistantPosedDeviceViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6.receiver = self;
  v6.super_class = STSetupAssistantPosedDeviceViewController;
  v4 = [(STSetupAssistantPosedDeviceViewController *)&v6 initWithNibName:a3 bundle:a4];
  [(STSetupAssistantPosedDeviceViewController *)v4 _stSetupAssistantPosedDeviceViewControllerCommonInit];
  return v4;
}

- (STSetupAssistantPosedDeviceViewController)initWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STSetupAssistantPosedDeviceViewController;
  v3 = [(STSetupAssistantPosedDeviceViewController *)&v5 initWithCoder:a3];
  [(STSetupAssistantPosedDeviceViewController *)v3 _stSetupAssistantPosedDeviceViewControllerCommonInit];
  return v3;
}

- (void)_stSetupAssistantPosedDeviceViewControllerCommonInit
{
  v3 = MGGetStringAnswer();
  self->_isiPad = CFStringCompare(v3, @"iPad", 0) == kCFCompareEqualTo;
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = MGGetSInt32Answer();
  self->_deviceSize = 0;
  if (v4 > 17)
  {
    switch(v4)
    {
      case 18:
        v5 = 4;
        break;
      case 19:
        v5 = 5;
        break;
      case 20:
        v5 = 6;
        break;
      default:
        goto LABEL_17;
    }
  }

  else
  {
    switch(v4)
    {
      case 5:
        v5 = 2;
        break;
      case 9:
        v5 = 1;
        break;
      case 15:
        v5 = 3;
        break;
      default:
        goto LABEL_17;
    }
  }

  self->_deviceSize = v5;
LABEL_17:
  v6 = 6;
  v7 = MGGetProductType();
  if (v7 > 2080700390)
  {
    if (v7 > 3599094682)
    {
      if (v7 == 3599094683 || v7 == 3801472101)
      {
        goto LABEL_33;
      }

      v8 = 3863625342;
      goto LABEL_27;
    }

    if (v7 == 2080700391)
    {
      v6 = 7;
      goto LABEL_33;
    }

    if (v7 != 2722529672)
    {
      return;
    }

LABEL_31:
    v6 = 8;
    goto LABEL_33;
  }

  if (v7 > 1371389548)
  {
    if (v7 != 1371389549)
    {
      v8 = 2001966017;
      goto LABEL_27;
    }

    goto LABEL_31;
  }

  if (v7 == 341800273)
  {
LABEL_33:
    self->_deviceSize = v6;
    return;
  }

  v8 = 1353145733;
LABEL_27:
  if (v7 == v8)
  {
    goto LABEL_33;
  }
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = STSetupAssistantPosedDeviceViewController;
  [(STSetupAssistantPosedDeviceViewController *)&v6 viewDidLoad];
  v3 = [(STSetupAssistantPosedDeviceViewController *)self _deviceWithScreenImage];
  v4 = [(STSetupAssistantPosedDeviceViewController *)self deviceWithScreenImageView];
  [v4 setImage:v3];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STSetupAssistantPosedDeviceViewController.viewDidLoad", v5, 2u);
  }
}

- (id)_deviceWithScreenImage
{
  v2 = MEMORY[0x277D755B8];
  v3 = [(STSetupAssistantPosedDeviceViewController *)self _setupGenericImage];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v2 imageNamed:v3 inBundle:v4];

  return v5;
}

- (id)_setupGenericImage
{
  v3 = [(STSetupAssistantPosedDeviceViewController *)self isiPad];
  v4 = [(STSetupAssistantPosedDeviceViewController *)self deviceSize];
  if (v3)
  {
    if (v4 == 6)
    {
      return @"Setup Image Ipad Pro";
    }

    else
    {
      return @"Setup Image Ipad";
    }
  }

  else if ((v4 - 1) > 7)
  {
    return @"Setup Image Iphone 7";
  }

  else
  {
    return off_279B7E178[v4 - 1];
  }
}

- (BOOL)_isRTL
{
  v2 = MEMORY[0x277D75D18];
  v3 = [(STSetupAssistantPosedDeviceViewController *)self view];
  LOBYTE(v2) = [v2 userInterfaceLayoutDirectionForSemanticContentAttribute:{objc_msgSend(v3, "semanticContentAttribute")}] == 1;

  return v2;
}

@end