@interface WiFiDataUsageViewController
- (WiFiDataUsageViewController)init;
- (void)loadView;
@end

@implementation WiFiDataUsageViewController

- (void)loadView
{
  v15.receiver = self;
  v15.super_class = WiFiDataUsageViewController;
  [(WiFiDataUsageViewController *)&v15 loadView];
  [(WiFiDataUsageViewController *)self addChildViewController:self->_dataUsageController];
  view = [(WiFiDataUsageViewController *)self view];
  view2 = [(CTUIWirelessUsageAndAppPolicyController *)self->_dataUsageController view];
  [view addSubview:view2];

  view3 = [(WiFiDataUsageViewController *)self view];
  [view3 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  view4 = [(CTUIWirelessUsageAndAppPolicyController *)self->_dataUsageController view];
  [view4 setFrame:{v7, v9, v11, v13}];
}

- (WiFiDataUsageViewController)init
{
  v8.receiver = self;
  v8.super_class = WiFiDataUsageViewController;
  v2 = [(WiFiDataUsageViewController *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D4D8B0]);
    dataUsageController = v2->_dataUsageController;
    v2->_dataUsageController = v3;

    v5 = v2->_dataUsageController;
    if (v5)
    {
      specifier = [(CTUIWirelessUsageAndAppPolicyController *)v5 specifier];
      [specifier setProperty:@"com.apple.wifi" forKey:*MEMORY[0x277D3FFB8]];
    }

    else
    {
      specifier = v2;
      v2 = 0;
    }
  }

  else
  {
    specifier = 0;
  }

  return v2;
}

@end