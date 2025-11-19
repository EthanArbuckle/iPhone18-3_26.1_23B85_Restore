@interface WiFiAccessoryDeviceViewController
- (WiFiAccessoryDeviceViewController)initWithDADevice:(id)a3;
- (void)loadView;
@end

@implementation WiFiAccessoryDeviceViewController

- (WiFiAccessoryDeviceViewController)initWithDADevice:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = WiFiAccessoryDeviceViewController;
  v5 = [(WiFiAccessoryDeviceViewController *)&v9 init];
  if (!v5 || ([MEMORY[0x277CB8900] infoViewControllerFromDevice:v4], v6 = objc_claimAutoreleasedReturnValue(), accessoryDeviceController = v5->_accessoryDeviceController, v5->_accessoryDeviceController = v6, accessoryDeviceController, !v5->_accessoryDeviceController))
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
  v3 = [(WiFiAccessoryDeviceViewController *)self view];
  v4 = [(UIViewController *)self->_accessoryDeviceController view];
  [v3 addSubview:v4];

  v5 = [(WiFiAccessoryDeviceViewController *)self view];
  [v5 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(UIViewController *)self->_accessoryDeviceController view];
  [v14 setFrame:{v7, v9, v11, v13}];
}

@end