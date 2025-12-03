@interface WiFiAccessoryDeviceViewController
- (WiFiAccessoryDeviceViewController)initWithDADevice:(id)device;
- (void)loadView;
@end

@implementation WiFiAccessoryDeviceViewController

- (WiFiAccessoryDeviceViewController)initWithDADevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = WiFiAccessoryDeviceViewController;
  v5 = [(WiFiAccessoryDeviceViewController *)&v9 init];
  if (!v5 || ([MEMORY[0x277CB8900] infoViewControllerFromDevice:deviceCopy], v6 = objc_claimAutoreleasedReturnValue(), accessoryDeviceController = v5->_accessoryDeviceController, v5->_accessoryDeviceController = v6, accessoryDeviceController, !v5->_accessoryDeviceController))
  {

    v5 = 0;
  }

  return v5;
}

- (void)loadView
{
  v15.receiver = self;
  v15.super_class = WiFiAccessoryDeviceViewController;
  [(WiFiAccessoryDeviceViewController *)&v15 loadView];
  [(WiFiAccessoryDeviceViewController *)self addChildViewController:self->_accessoryDeviceController];
  view = [(WiFiAccessoryDeviceViewController *)self view];
  view2 = [(UIViewController *)self->_accessoryDeviceController view];
  [view addSubview:view2];

  view3 = [(WiFiAccessoryDeviceViewController *)self view];
  [view3 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  view4 = [(UIViewController *)self->_accessoryDeviceController view];
  [view4 setFrame:{v7, v9, v11, v13}];
}

@end